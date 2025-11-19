void sub_10065BD00()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 addObserver:v0 selector:"undoManagerNotificationWithNotification:" name:NSUndoManagerDidOpenUndoGroupNotification object:0];

  v2 = *&v0[OBJC_IVAR____TtC7Journal20CanvasViewController_journalEntry];
  type metadata accessor for CanvasBarItemCoordinator(0);
  v3 = swift_allocObject();

  v4 = v0;
  v5 = sub_10067080C(v2, v4, v3);
  swift_getKeyPath();
  swift_getKeyPath();
  v6 = v4;
  static UIViewController.ViewLoading.subscript.setter();
  v7 = [v6 navigationItem];
  v8 = objc_opt_self();
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12[4] = sub_10067394C;
  v12[5] = v9;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_100657B94;
  v12[3] = &unk_100A77228;
  v10 = _Block_copy(v12);

  v11 = [v8 elementWithUncachedProvider:v10];
  _Block_release(v10);
  [v7 setAdditionalOverflowItems:v11];
}

id sub_10065BF0C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = [v0 traitCollection];
  v4 = sub_10002E3AC();

  [v1 setViewRespectsSystemMinimumLayoutMargins:{0, sub_10023DEC0(v4, v52)}];
  result = [v1 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_12;
  }

  v6 = result;
  [result setDirectionalLayoutMargins:{0.0, v53, 4.0, v54}];

  v7 = [objc_allocWithZone(UILayoutGuide) init];
  swift_getKeyPath();
  swift_getKeyPath();
  v51 = v7;
  v8 = v1;
  static UIViewController.ViewLoading.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  v9 = String._bridgeToObjectiveC()();
  [v7 setIdentifier:v9];

  result = [v8 view];
  if (!result)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v10 = result;
  v49 = ObjectType;
  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  [v10 addLayoutGuide:v51];

  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  v11 = [v51 widthAnchor];

  v12 = v55;
  v13 = v56;
  if (v56)
  {
    v12 = 0.0;
  }

  v14 = [v11 constraintEqualToConstant:{v12, v49}];

  type metadata accessor for UILayoutPriority(0);
  sub_100670674(&qword_100AF3610, type metadata accessor for UILayoutPriority);
  static _UIKitNumericRawRepresentable.- infix(_:_:)();
  LODWORD(v15) = v51;
  [v14 setPriority:v15];
  [v14 setActive:v13 ^ 1u];
  sub_1000F24EC(&unk_100AD4780);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_100941040;
  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  v17 = [v51 topAnchor];

  result = [v8 view];
  if (!result)
  {
    goto LABEL_13;
  }

  v18 = result;
  v19 = [result layoutMarginsGuide];

  v20 = [v19 topAnchor];
  v21 = [v17 constraintEqualToAnchor:v20];

  *(v16 + 32) = v21;
  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  v22 = [v51 leadingAnchor];

  result = [v8 view];
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v23 = result;
  v24 = [result layoutMarginsGuide];

  v25 = [v24 leadingAnchor];
  v26 = [v22 constraintGreaterThanOrEqualToAnchor:v25];

  *(v16 + 40) = v26;
  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  v27 = [v51 leadingAnchor];

  result = [v8 view];
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v28 = result;
  v29 = [result layoutMarginsGuide];

  v30 = [v29 leadingAnchor];
  v31 = [v27 constraintEqualToAnchor:v30];

  LODWORD(v32) = 1144750080;
  [v31 setPriority:v32];
  *(v16 + 48) = v31;
  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  v33 = [v51 bottomAnchor];

  result = [v8 view];
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v34 = result;
  v35 = [result layoutMarginsGuide];

  v36 = [v35 bottomAnchor];
  v37 = [v33 constraintEqualToAnchor:v36];

  *(v16 + 56) = v37;
  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  v38 = [v51 centerXAnchor];

  result = [v8 view];
  if (result)
  {
    v39 = result;
    v40 = objc_opt_self();
    v41 = [v39 layoutMarginsGuide];

    v42 = [v41 centerXAnchor];
    v43 = [v38 constraintEqualToAnchor:v42];

    *(v16 + 64) = v43;
    sub_1000065A8(0, &qword_100AD8000);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v40 activateConstraints:isa];

    sub_1000F24EC(&unk_100AEBEC0);
    v45 = swift_allocObject();
    *(v45 + 16) = xmmword_100940080;
    v46 = sub_10002E2A0();
    *(v45 + 32) = &type metadata for DynamicGridSizeClassTrait;
    *(v45 + 40) = v46;
    v47 = swift_allocObject();
    *(v47 + 16) = v14;
    *(v47 + 24) = v50;
    v48 = v14;
    UIViewController.registerForTraitChanges<A>(_:handler:)();

    swift_unknownObjectRelease();
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_10065C848(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v3 = [v1 traitCollection];
  v4 = [v3 userInterfaceIdiom];

  v5 = 16.0;
  v6 = 16.0;
  if (v4 != 5)
  {
    v7 = [v2 traitCollection];
    v8 = [v7 horizontalSizeClass];

    if (v8 == 2)
    {
      v6 = 20.0;
    }

    else
    {
      v6 = 16.0;
    }
  }

  v9 = [v2 traitCollection];
  v10 = [v9 userInterfaceIdiom];

  if (v10 != 5)
  {
    v11 = [v2 traitCollection];
    v12 = [v11 horizontalSizeClass];

    if (v12 == 2)
    {
      v5 = 20.0;
    }

    else
    {
      v5 = 16.0;
    }
  }

  [a1 setLayoutMargins:{0.0, v6, 0.0, v5}];
  v13 = *&v2[OBJC_IVAR____TtC7Journal20CanvasViewController_gridStackView];
  [v13 setTranslatesAutoresizingMaskIntoConstraints:0];
  v14 = *&v2[OBJC_IVAR____TtC7Journal20CanvasViewController_journalEntry];
  *&v13[OBJC_IVAR____TtC7Journal15CanvasStackView_journalEntry] = v14;
  swift_retain_n();

  sub_1005A5DFC();
  if (*(v14 + OBJC_IVAR____TtC7Journal14EntryViewModel_showPhotoMemoryBanner) == 1)
  {
    sub_1005A723C(1);
  }

  v15 = sub_100049F2C();
  if (v15)
  {
    sub_10053256C(v15);
    v17 = v16;

    if (v17)
    {

      sub_1005A6D60();
    }
  }

  v19 = [v2 isEditing];
  v13[OBJC_IVAR____TtC7Journal15CanvasStackView_isEditing] = v19;
  sub_1005A5DFC();
  [a1 addSubview:v13];
  v20 = [v13 superview];
  v21 = &selRef_setSuggestedName_;
  if (v20)
  {
    v22 = v20;
    [v13 setTranslatesAutoresizingMaskIntoConstraints:0];
    v23 = [v13 topAnchor];
    v24 = [v22 topAnchor];
    v25 = [v23 constraintEqualToAnchor:v24];

    [v25 setConstant:0.0];
    [v25 setActive:1];

    v21 = &selRef_setSuggestedName_;
  }

  [v13 setTranslatesAutoresizingMaskIntoConstraints:0];
  v26 = [v13 heightAnchor];
  v27 = [v26 constraintEqualToConstant:0.0];

  [v27 v21[263]];
  if (v27)
  {
    LODWORD(v28) = 1112014848;
    [v27 setPriority:v28];
  }

  v29 = *&v2[OBJC_IVAR____TtC7Journal20CanvasViewController_assetsGridView];
  [v29 setTranslatesAutoresizingMaskIntoConstraints:0];
  v30 = [v2 isEditing];
  v31 = OBJC_IVAR____TtC7Journal14CanvasGridView_isEditing;
  v29[OBJC_IVAR____TtC7Journal14CanvasGridView_isEditing] = v30;
  sub_1005857C4(v30);
  v29[OBJC_IVAR____TtC7Journal14CanvasGridView_shouldAnimateDifferences] = v29[v31];
  v29[OBJC_IVAR____TtC7Journal14CanvasGridView_isExpanded] = 1;
  sub_10004AD38();
  *&v29[OBJC_IVAR____TtC7Journal14CanvasGridView_journalEntry] = v14;
  swift_retain_n();

  sub_1000542E8();
  sub_100053CE0(0);

  *&v29[OBJC_IVAR____TtC7Journal14CanvasGridView_delegate + 8] = &off_100A76AA0;
  swift_unknownObjectWeakAssign();
  sub_100760EA4(v29);
  __asm { FMOV            V0.2D, #12.0 }

  v176 = _Q0;
  *&v29[OBJC_IVAR____TtC7Journal14CanvasGridView_outerCornerRadius] = _Q0;
  [a1 addSubview:v29];
  [v29 setTranslatesAutoresizingMaskIntoConstraints:0];
  v175 = v29;
  v37 = [v29 topAnchor];
  v38 = [v13 bottomAnchor];
  v39 = [v37 constraintEqualToAnchor:v38];

  v40 = v39;
  [v40 setConstant:4.0];
  [v40 v21[263]];

  v41 = OBJC_IVAR____TtC7Journal20CanvasViewController_gridTopConstraint;
  v42 = *&v2[OBJC_IVAR____TtC7Journal20CanvasViewController_gridTopConstraint];
  *&v2[OBJC_IVAR____TtC7Journal20CanvasViewController_gridTopConstraint] = v40;

  v43 = [v13 arrangedSubviews];
  sub_1000065A8(0, &qword_100ADC670);
  v44 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v44 >> 62)
  {
    v45 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v45 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v173 = v13;

  if (!v45)
  {
    [*&v2[v41] setConstant:0.0];
  }

  v46 = *&v2[OBJC_IVAR____TtC7Journal20CanvasViewController_slimAssetView];
  [v46 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v46[OBJC_IVAR____TtC7Journal13SlimAssetView_journalEntry] = v14;

  v47 = *(v14 + OBJC_IVAR____TtC7Journal14EntryViewModel_slimAsset);
  v48 = *(v14 + OBJC_IVAR____TtC7Journal14EntryViewModel_slimAsset + 8);
  v49 = &v46[OBJC_IVAR____TtC7Journal13SlimAssetView_slimAsset];
  v50 = *&v46[OBJC_IVAR____TtC7Journal13SlimAssetView_slimAsset];
  v51 = *&v46[OBJC_IVAR____TtC7Journal13SlimAssetView_slimAsset + 8];
  *v49 = v47;
  *(v49 + 1) = v48;
  v52 = v47;
  if (sub_1007FDF38(v50, v51, v47, v48))
  {
    v53 = objc_opt_self();
    v54 = swift_allocObject();
    *(v54 + 16) = v46;
    aBlock[4] = sub_100673E08;
    aBlock[5] = v54;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100006C7C;
    aBlock[3] = &unk_100A771D8;
    v55 = _Block_copy(aBlock);
    v56 = v46;

    [v53 animateWithDuration:1 delay:v55 options:0 animations:0.11 completion:0.0];
    _Block_release(v55);
    [*&v56[OBJC_IVAR____TtC7Journal13SlimAssetView_gradientView] setClipsToBounds:1];
    [*&v56[OBJC_IVAR____TtC7Journal13SlimAssetView_backgroundView] setClipsToBounds:1];
  }

  else
  {
    sub_1007FF930();
  }

  v57 = [v2 isEditing];
  v58 = OBJC_IVAR____TtC7Journal13SlimAssetView_isEditing;
  v59 = v46[OBJC_IVAR____TtC7Journal13SlimAssetView_isEditing];
  v46[OBJC_IVAR____TtC7Journal13SlimAssetView_isEditing] = v57;
  if (v57 != v59)
  {
    sub_100806D8C();
    if (v46[v58])
    {
      sub_100803CFC();
    }

    else
    {
      sub_100804220();
    }
  }

  sub_100760EA4(v46);
  [a1 addSubview:v46];
  [v46 setTranslatesAutoresizingMaskIntoConstraints:0];
  v60 = [v46 topAnchor];
  v61 = [v175 bottomAnchor];
  v62 = [v60 constraintEqualToAnchor:v61];

  v63 = v62;
  [v63 setConstant:4.0];
  [v63 setActive:1];

  v64 = *&v2[OBJC_IVAR____TtC7Journal20CanvasViewController_slimAssetViewTopConstraint];
  *&v2[OBJC_IVAR____TtC7Journal20CanvasViewController_slimAssetViewTopConstraint] = v63;

  [v46 setTranslatesAutoresizingMaskIntoConstraints:0];
  v65 = [v46 heightAnchor];
  v66 = [v65 constraintEqualToConstant:32.0];

  [v66 setActive:1];
  if (v66)
  {
    type metadata accessor for UILayoutPriority(0);
    v180 = 981668463;
    v181 = 1148846080;
    sub_100670674(&qword_100AF3610, type metadata accessor for UILayoutPriority);
    static _UIKitNumericRawRepresentable.- infix(_:_:)();
    LODWORD(v67) = aBlock[0];
    [v66 setPriority:v67];
  }

  v68 = *&v2[OBJC_IVAR____TtC7Journal20CanvasViewController_slimAssetViewHeightConstraint];
  *&v2[OBJC_IVAR____TtC7Journal20CanvasViewController_slimAssetViewHeightConstraint] = v66;

  *&v46[OBJC_IVAR____TtC7Journal13SlimAssetView_slimAssetDelegate + 8] = &off_100A76AE0;
  swift_unknownObjectWeakAssign();
  *&v46[OBJC_IVAR____TtC7Journal13SlimAssetView_outerCornerRadius] = v176;
  sub_100804680();
  if (sub_10005AAB0(128))
  {
    v69 = 1;
  }

  else
  {
    v69 = 2;
  }

  sub_100663B8C(v69);
  v70 = sub_100658670();
  [v70 setTranslatesAutoresizingMaskIntoConstraints:0];

  v71 = OBJC_IVAR____TtC7Journal20CanvasViewController____lazy_storage___bundleTitleView;
  [*&v2[OBJC_IVAR____TtC7Journal20CanvasViewController____lazy_storage___bundleTitleView] setDelegate:v2];
  *(*&v2[v71] + OBJC_IVAR____TtC7Journal22CanvasMomentsTitleView_textViewFocusDelegate + 8) = &off_100A76A60;
  swift_unknownObjectWeakAssign();
  [a1 addSubview:*&v2[v71]];
  v177 = v71;
  v72 = *&v2[v71];
  v73 = [v2 traitCollection];
  v74 = [v73 userInterfaceIdiom];

  v75 = 16.0;
  v76 = 16.0;
  if (v74 != 5)
  {
    v77 = [v2 traitCollection];
    v78 = [v77 horizontalSizeClass];

    if (v78 == 2)
    {
      v76 = 20.0;
    }

    else
    {
      v76 = 16.0;
    }
  }

  v79 = [v2 traitCollection];
  v80 = [v79 userInterfaceIdiom];

  if (v80 != 5)
  {
    v81 = [v2 traitCollection];
    v82 = [v81 horizontalSizeClass];

    if (v82 == 2)
    {
      v75 = 20.0;
    }

    else
    {
      v75 = 16.0;
    }
  }

  [v72 setTextContainerInset:{0.0, v76, 0.0, v75}];

  v83 = *&v2[v177];
  v84 = [v83 superview];
  if (v84)
  {
    v85 = v84;
    [v83 setTranslatesAutoresizingMaskIntoConstraints:0];
    v86 = [v83 leadingAnchor];
    v87 = [v85 leadingAnchor];
    v88 = [v86 constraintEqualToAnchor:v87];

    [v88 setConstant:0.0];
    [v88 setActive:1];

    v83 = v85;
  }

  v89 = *&v2[v177];
  v90 = [v89 superview];
  v174 = v46;
  if (v90)
  {
    v91 = v90;
    [v89 setTranslatesAutoresizingMaskIntoConstraints:0];
    v92 = [v89 trailingAnchor];
    v93 = [v91 trailingAnchor];
    v94 = [v92 constraintEqualToAnchor:v93];

    [v94 setConstant:0.0];
    [v94 setActive:1];

    v89 = v91;
  }

  v95 = *&v2[v177];
  [v95 setTranslatesAutoresizingMaskIntoConstraints:0];
  v96 = [v95 topAnchor];
  v97 = [v46 bottomAnchor];
  v98 = [v96 constraintEqualToAnchor:v97];

  v99 = v98;
  [v99 setConstant:4.0];
  [v99 setActive:1];

  v100 = *&v2[OBJC_IVAR____TtC7Journal20CanvasViewController_bundleTitleTopConstraint];
  *&v2[OBJC_IVAR____TtC7Journal20CanvasViewController_bundleTitleTopConstraint] = v99;

  v101 = *&v2[v177];
  [v101 setTranslatesAutoresizingMaskIntoConstraints:0];
  v102 = [v101 heightAnchor];
  v103 = [v102 constraintEqualToConstant:0.0];

  [v103 setActive:1];
  v104 = *&v2[OBJC_IVAR____TtC7Journal20CanvasViewController_bundleTitleHeightConstraint];
  *&v2[OBJC_IVAR____TtC7Journal20CanvasViewController_bundleTitleHeightConstraint] = v103;

  v105 = *&v2[v177];
  if ([v2 isEditing])
  {
    v106 = *(v14 + OBJC_IVAR____TtC7Journal14EntryViewModel_showTitle);
  }

  else
  {
    v106 = sub_10005AAB0(2);
  }

  [v105 setHidden:(v106 & 1) == 0];

  v107 = *&v2[OBJC_IVAR____TtC7Journal20CanvasViewController_titleDividerView];
  [v107 setTranslatesAutoresizingMaskIntoConstraints:0];
  [a1 addSubview:v107];
  v108 = *&v2[v177];
  [v107 setTranslatesAutoresizingMaskIntoConstraints:0];
  v109 = [v107 topAnchor];
  v110 = [v108 bottomAnchor];
  v111 = [v109 constraintEqualToAnchor:v110];

  v112 = v111;
  [v112 setConstant:0.0];
  [v112 setActive:1];

  v113 = *&v2[OBJC_IVAR____TtC7Journal20CanvasViewController_titleDividerTopConstraint];
  *&v2[OBJC_IVAR____TtC7Journal20CanvasViewController_titleDividerTopConstraint] = v112;

  v114 = sub_100028DA0(0, 1, 0.0);
  v115 = *&v2[OBJC_IVAR____TtC7Journal20CanvasViewController_bundleTitleBottomConstraint];
  *&v2[OBJC_IVAR____TtC7Journal20CanvasViewController_bundleTitleBottomConstraint] = v114;

  if ([v2 isEditing])
  {
    p_ivar_lyt = (&InsightsPlacesDetailView.ContentViewController + 16);
    if (*(v14 + OBJC_IVAR____TtC7Journal14EntryViewModel_showTitle) != 1)
    {
LABEL_51:
      v117 = 1;
      goto LABEL_54;
    }
  }

  else
  {
    p_ivar_lyt = &InsightsPlacesDetailView.ContentViewController.ivar_lyt;
    if ((sub_10005AAB0(2) & 1) == 0)
    {
      goto LABEL_51;
    }
  }

  v117 = [v2 isEditing] ^ 1;
LABEL_54:
  [v107 setHidden:v117];
  v118 = [v173 leadingAnchor];
  v119 = [a1 leadingAnchor];
  v120 = [v2 p_ivar_lyt[394]];
  v121 = [v120 horizontalSizeClass];

  if (v121 == 2)
  {
    v122 = 6.0;
  }

  else
  {
    v122 = 4.0;
  }

  v123 = [v118 constraintEqualToAnchor:v119 constant:v122];

  v124 = [v175 leadingAnchor];
  v125 = [a1 leadingAnchor];
  v126 = [v2 p_ivar_lyt[394]];
  v127 = [v126 horizontalSizeClass];

  if (v127 == 2)
  {
    v128 = 6.0;
  }

  else
  {
    v128 = 4.0;
  }

  v129 = [v124 constraintEqualToAnchor:v125 constant:v128];

  v130 = [v174 leadingAnchor];
  v131 = [a1 leadingAnchor];
  v132 = [v2 p_ivar_lyt[394]];
  v133 = [v132 horizontalSizeClass];

  if (v133 == 2)
  {
    v134 = 6.0;
  }

  else
  {
    v134 = 4.0;
  }

  v135 = [v130 constraintEqualToAnchor:v131 constant:v134];

  v168 = objc_opt_self();
  sub_1000F24EC(&unk_100AD4780);
  v136 = swift_allocObject();
  *(v136 + 16) = xmmword_100957D10;
  *(v136 + 32) = v123;
  *(v136 + 40) = v129;
  *(v136 + 48) = v135;
  v172 = v123;
  v170 = v129;
  v169 = v135;
  v137 = [v173 centerXAnchor];
  v138 = [a1 centerXAnchor];
  v139 = [v137 constraintEqualToAnchor:v138];

  *(v136 + 56) = v139;
  v140 = [v175 centerXAnchor];
  v141 = [a1 centerXAnchor];
  v142 = [v140 constraintEqualToAnchor:v141];

  *(v136 + 64) = v142;
  v143 = [v174 centerXAnchor];
  v144 = [a1 centerXAnchor];
  v145 = [v143 constraintEqualToAnchor:v144];

  *(v136 + 72) = v145;
  v146 = [v107 leadingAnchor];
  v147 = [a1 layoutMarginsGuide];
  v148 = [v147 leadingAnchor];

  v149 = [v146 constraintEqualToAnchor:v148];
  *(v136 + 80) = v149;
  v150 = [v107 trailingAnchor];
  v151 = [a1 layoutMarginsGuide];
  v152 = [v151 trailingAnchor];

  v153 = [v150 constraintEqualToAnchor:v152];
  *(v136 + 88) = v153;
  sub_1000065A8(0, &qword_100AD8000);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v168 activateConstraints:isa];

  sub_1006612C0();
  sub_1000F24EC(&unk_100AE88B0);
  v155 = swift_allocObject();
  *(v155 + 16) = xmmword_100941FE0;
  *(v155 + 56) = type metadata accessor for CanvasStackView();
  *(v155 + 32) = v173;
  *(v155 + 88) = type metadata accessor for CanvasGridView();
  *(v155 + 64) = v175;
  *(v155 + 120) = type metadata accessor for SlimAssetView();
  *(v155 + 96) = v174;
  v156 = *&v2[v177];
  *(v155 + 152) = type metadata accessor for CanvasMomentsTitleView();
  *(v155 + 128) = v156;
  v157 = v174;
  v158 = v173;
  v159 = v175;
  v160 = v156;
  v161 = Array._bridgeToObjectiveC()().super.isa;

  [a1 setAccessibilityElements:v161];

  sub_1000F24EC(&unk_100AEBEC0);
  v162 = swift_allocObject();
  *(v162 + 16) = xmmword_100940080;
  *(v162 + 32) = type metadata accessor for UITraitHorizontalSizeClass();
  *(v162 + 40) = &protocol witness table for UITraitHorizontalSizeClass;
  v163 = swift_allocObject();
  v163[2] = v172;
  v163[3] = v170;
  v163[4] = v169;
  v163[5] = ObjectType;
  v164 = v172;
  v165 = v170;
  v166 = v169;
  UIViewController.registerForTraitChanges<A>(_:handler:)();

  swift_unknownObjectRelease();
}

void sub_10065DEB0()
{
  v1 = v0;
  v2 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v2 - 8);
  v4 = &v23 - v3;
  v5 = type metadata accessor for SettingsKey();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for JournalFeatureFlags();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 104))(v13, enum case for JournalFeatureFlags.location(_:), v9, v11);
  v14 = JournalFeatureFlags.isEnabled.getter();
  (*(v10 + 8))(v13, v9);
  if (v14)
  {
    sub_1000065A8(0, &qword_100AE1A30);
    v15 = static NSUserDefaults.shared.getter();
    (*(v6 + 104))(v8, enum case for SettingsKey.addCurrentLocation(_:), v5);
    SettingsKey.rawValue.getter();
    (*(v6 + 8))(v8, v5);
    v16 = String._bridgeToObjectiveC()();

    v17 = [v15 BOOLForKey:v16];

    if (v17)
    {
      v18 = OBJC_IVAR____TtC7Journal20CanvasViewController_locationUpdatesTask;
      if (!*&v1[OBJC_IVAR____TtC7Journal20CanvasViewController_locationUpdatesTask])
      {
        v19 = type metadata accessor for TaskPriority();
        (*(*(v19 - 8) + 56))(v4, 1, 1, v19);
        type metadata accessor for MainActor();
        v20 = v1;
        v21 = static MainActor.shared.getter();
        v22 = swift_allocObject();
        v22[2] = v21;
        v22[3] = &protocol witness table for MainActor;
        v22[4] = v20;
        *&v1[v18] = sub_1003E9628(0, 0, v4, &unk_100961080, v22);
      }
    }
  }
}

void sub_10065E1F4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = UIAccessibilityLayoutChangedNotification;
    v3 = sub_100658B00();
    UIAccessibilityPostNotification(v2, v3);
  }
}

uint64_t sub_10065E270()
{
  v1 = v0;
  v2 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v2 - 8);
  v4 = &v18[-1] - v3;
  if (qword_100ACF988 != -1)
  {
    swift_once();
  }

  v5 = qword_100B2F3C0;
  v6 = sub_100027494(1);
  if ((v7 & 1) != 0 || v6)
  {
    v9 = sub_100027494(1);
    if ((v10 & 1) != 0 || v9 != 2)
    {
      v13 = type metadata accessor for TaskPriority();
      (*(*(v13 - 8) + 56))(v4, 1, 1, v13);
      type metadata accessor for MainActor();
      v14 = v1;
      v15 = static MainActor.shared.getter();
      v16 = swift_allocObject();
      v16[2] = v15;
      v16[3] = &protocol witness table for MainActor;
      v16[4] = v14;
      sub_1003E9628(0, 0, v4, &unk_100961038, v16);
    }

    else
    {
      v11 = OBJC_IVAR____TtC7Journal20CanvasViewController_mindfulnessManager;
      if (!*&v1[OBJC_IVAR____TtC7Journal20CanvasViewController_mindfulnessManager])
      {
        v18[3] = type metadata accessor for HealthManager();
        v18[4] = &off_100A5DED0;
        v18[0] = v5;
        type metadata accessor for MindfulnessManager();
        swift_allocObject();

        *&v1[v11] = sub_1005BBAF0(v18, 0);
      }

      v12 = OBJC_IVAR____TtC7Journal20CanvasViewController_canvasIdleTracker;
      if (!*&v1[OBJC_IVAR____TtC7Journal20CanvasViewController_canvasIdleTracker])
      {
        type metadata accessor for CanvasIdleTracker();
        swift_allocObject();
        *&v1[v12] = sub_1003E7A0C();
      }

      return swift_weakAssign();
    }
  }

  else
  {
    *&v1[OBJC_IVAR____TtC7Journal20CanvasViewController_mindfulnessManager] = 0;

    *&v1[OBJC_IVAR____TtC7Journal20CanvasViewController_canvasIdleTracker] = 0;
  }
}

uint64_t sub_10065E56C()
{
  v1 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v1 - 8);
  v3 = &v14 - v2;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong || (v17[0] = Strong, sub_1000065A8(0, &qword_100AD4C80), sub_1000F24EC(&unk_100AEBE70), (swift_dynamicCast() & 1) == 0))
  {
    v16 = 0;
    v14 = 0u;
    v15 = 0u;
    goto LABEL_6;
  }

  if (!*(&v15 + 1))
  {
LABEL_6:
    sub_100004F84(&v14, &unk_100AEBE60);
    goto LABEL_7;
  }

  sub_100018480(&v14, v17);
  sub_10000CA14(v17, v17[3]);
  v5 = sub_100507B94();
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
  type metadata accessor for MainActor();

  v7 = static MainActor.shared.getter();
  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = &protocol witness table for MainActor;
  v8[4] = v5;
  sub_1003E9628(0, 0, v3, &unk_100961120, v8);

  sub_10000BA7C(v17);
LABEL_7:
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v3, 1, 1, v9);
  type metadata accessor for MainActor();
  v10 = v0;
  v11 = static MainActor.shared.getter();
  v12 = swift_allocObject();
  v12[2] = v11;
  v12[3] = &protocol witness table for MainActor;
  v12[4] = v10;
  sub_1003E9628(0, 0, v3, &unk_100961110, v12);
}

uint64_t sub_10065E824()
{
  v0[2] = type metadata accessor for MainActor();
  v0[3] = static MainActor.shared.getter();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_1001F0D04;

  return sub_100664604(1);
}

uint64_t sub_10065E8D4(int a1)
{
  v7.receiver = v1;
  v7.super_class = type metadata accessor for CanvasViewController(0);
  objc_msgSendSuper2(&v7, "viewWillAppear:", a1 & 1);
  sub_100170AF4();
  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  sub_1003CABA0(a1);

  if (v1[OBJC_IVAR____TtC7Journal20CanvasViewController_isInitialAppearance] == 1)
  {
    v4 = &v1[OBJC_IVAR____TtC7Journal20CanvasViewController_delegate];
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v5 = *(v4 + 1);
      ObjectType = swift_getObjectType();
      (*(v5 + 8))(v1, ObjectType, v5);
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

void sub_10065EA44(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for JournalFeatureFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CanvasViewController(0);
  v16.receiver = v2;
  v16.super_class = v8;
  objc_msgSendSuper2(&v16, "viewIsAppearing:", a1 & 1);
  (*(v5 + 104))(v7, enum case for JournalFeatureFlags.statefulNavigation(_:), v4);
  v9 = JournalFeatureFlags.isEnabled.getter();
  (*(v5 + 8))(v7, v4);
  if (v9)
  {
    v10 = [v2 userActivity];
    if (v10)
    {
LABEL_3:

      return;
    }

    v11 = [v2 view];
    if (!v11)
    {
      __break(1u);
      return;
    }

    v12 = v11;
    v13 = [v11 window];

    if (v13)
    {
      v14 = [v13 windowScene];

      if (v14)
      {
        v15 = [v14 userActivity];

        if (v15)
        {
          [v2 setUserActivity:v15];
          v10 = v15;
          goto LABEL_3;
        }
      }
    }
  }
}

void sub_10065EC80(char a1)
{
  v2 = v1;
  v4 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v4 - 8);
  v51 = &v47 - v5;
  v52 = type metadata accessor for CanvasContentInputType();
  __chkstk_darwin(v52);
  v47 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v47 - v8;
  __chkstk_darwin(v10);
  v12 = &v47 - v11;
  v13 = sub_1000F24EC(&qword_100AD1420);
  v48 = *(v13 - 8);
  v14 = *(v48 + 64);
  __chkstk_darwin(v13 - 8);
  v49 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v50 = &v47 - v16;
  v17 = type metadata accessor for Date();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for CanvasViewController(0);
  v55.receiver = v2;
  v55.super_class = v21;
  objc_msgSendSuper2(&v55, "viewDidAppear:", a1 & 1);
  sub_100170468();
  v22 = [objc_opt_self() defaultCenter];
  if (qword_100ACF9E8 != -1)
  {
    swift_once();
  }

  [v22 addObserver:v2 selector:? name:? object:?];

  if ([v2 isEditing] && *&v2[OBJC_IVAR____TtC7Journal20CanvasViewController_mindfulnessManager] && *&v2[OBJC_IVAR____TtC7Journal20CanvasViewController_canvasIdleTracker])
  {

    static Date.now.getter();
    sub_1005BD218(v20);
    (*(v18 + 8))(v20, v17);
    sub_1003E8698();
  }

  if (v2[OBJC_IVAR____TtC7Journal20CanvasViewController_isInitialAppearance] == 1)
  {
    v2[OBJC_IVAR____TtC7Journal20CanvasViewController_isInitialAppearance] = 0;
    v23 = &v2[OBJC_IVAR____TtC7Journal20CanvasViewController_delegate];
    if (swift_unknownObjectWeakLoadStrong())
    {
      v24 = *(v23 + 1);
      ObjectType = swift_getObjectType();
      (*(v24 + 16))(v2, ObjectType, v24);
      swift_unknownObjectRelease();
    }

    v26 = UIAccessibilityLayoutChangedNotification;
    v27 = sub_100658B00();
    UIAccessibilityPostNotification(v26, v27);

    sub_100223C20();
    v28 = [v2 presentedViewController];
    if (v28)
    {
    }

    else
    {
      v29 = OBJC_IVAR____TtC7Journal20CanvasViewController_initialInputType;
      sub_1001EDC74(&v2[OBJC_IVAR____TtC7Journal20CanvasViewController_initialInputType], v12);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v30 = v50;
        sub_100024EC0(v12, v50);
        v31 = type metadata accessor for TaskPriority();
        v32 = v51;
        (*(*(v31 - 8) + 56))(v51, 1, 1, v31);
        v33 = v49;
        sub_1000082B4(v30, v49, &qword_100AD1420);
        type metadata accessor for MainActor();
        v34 = v2;
        v35 = static MainActor.shared.getter();
        v36 = (*(v48 + 80) + 40) & ~*(v48 + 80);
        v37 = swift_allocObject();
        v37[2] = v35;
        v37[3] = &protocol witness table for MainActor;
        v37[4] = v34;
        sub_100024EC0(v33, v37 + v36);
        sub_1003E9628(0, 0, v32, &unk_1009611D0, v37);

        sub_100004F84(v30, &qword_100AD1420);
        v34[OBJC_IVAR____TtC7Journal20CanvasViewController_needsDeferredTipDisplay] = 1;
      }

      else
      {
        sub_1006730B4(v12, type metadata accessor for CanvasContentInputType);
        sub_1001EDC74(&v2[v29], v9);
        if (swift_getEnumCaseMultiPayload())
        {
          sub_1006730B4(v9, type metadata accessor for CanvasContentInputType);
          v53 = 0u;
          v54 = 0u;
          sub_1003B5E4C(&v2[v29], &v53);
          sub_100004F84(&v53, &qword_100AD13D0);
          v2[OBJC_IVAR____TtC7Journal20CanvasViewController_needsDeferredTipDisplay] = 1;
        }

        else
        {
          v38 = *v9;
          if (*v9)
          {
            v39 = *&v2[OBJC_IVAR____TtC7Journal20CanvasViewController____lazy_storage___textView];
          }

          else
          {
            v39 = sub_100658670();
          }

          v40 = v39;
          v41 = [v39 endOfDocument];
          v42 = [v40 endOfDocument];
          v43 = [v40 textRangeFromPosition:v41 toPosition:v42];

          [v40 setSelectedTextRange:v43];
          v44 = v47;
          *v47 = v38;
          swift_storeEnumTagMultiPayload();
          v53 = 0u;
          v54 = 0u;
          sub_1003B5E4C(v44, &v53);
          sub_100004F84(&v53, &qword_100AD13D0);
          sub_1006730B4(v44, type metadata accessor for CanvasContentInputType);
          sub_100661550();
        }
      }
    }
  }

  v45 = [v2 navigationController];
  v46 = *&v2[OBJC_IVAR____TtC7Journal20CanvasViewController_unsupportedPreLuckDevicesDialogPresentingController];
  *&v2[OBJC_IVAR____TtC7Journal20CanvasViewController_unsupportedPreLuckDevicesDialogPresentingController] = v45;
}

uint64_t sub_10065F3E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[8] = type metadata accessor for CanvasContentInputType();
  v5[9] = swift_task_alloc();
  v5[10] = type metadata accessor for MainActor();
  v5[11] = static MainActor.shared.getter();
  type metadata accessor for AppSecureAccessManager();
  v7 = swift_task_alloc();
  v5[12] = v7;
  *v7 = v5;
  v7[1] = sub_10065F4D0;

  return sub_1001890D8(a4);
}

uint64_t sub_10065F4D0(char a1)
{
  *(*v1 + 104) = a1;

  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10065F614, v3, v2);
}

uint64_t sub_10065F614()
{
  v1 = *(v0 + 104);

  if (v1 == 1)
  {
    v2 = *(v0 + 72);
    sub_1000082B4(*(v0 + 56), v2, &qword_100AD1420);
    swift_storeEnumTagMultiPayload();
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
    sub_1003B5E4C(v2, v0 + 16);
    sub_100004F84(v0 + 16, &qword_100AD13D0);
    sub_1006730B4(v2, type metadata accessor for CanvasContentInputType);
  }

  else
  {
    v3 = *(*(v0 + 48) + OBJC_IVAR____TtC7Journal20CanvasViewController_coordinator);
    sub_1001707E8(1, 1);
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_1003BECA8(1);
      swift_unknownObjectRelease();
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = Strong;
      [Strong becomeFirstResponder];
    }

    sub_100173CA8(1, v3);
  }

  v6 = *(v0 + 8);

  return v6();
}

id sub_10065F7E4(char a1)
{
  v2 = v1;
  v4 = *&v1[OBJC_IVAR____TtC7Journal20CanvasViewController_coordinator];
  v5 = objc_opt_self();
  v6 = [v5 defaultCenter];
  [v6 removeObserver:v4];

  v7 = OBJC_IVAR____TtC7Journal20CanvasViewController_isFinalDisappearance;
  if (v2[OBJC_IVAR____TtC7Journal20CanvasViewController_isFinalDisappearance])
  {
    goto LABEL_6;
  }

  if ([v2 isMovingFromParentViewController])
  {
    v2[v7] = 1;
    [v2 setEditing:0 animated:a1 & 1];
    result = [v2 view];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v9 = result;
    [result endEditing:1];
  }

  if (v2[v7] == 1)
  {
LABEL_6:
    v10 = &v2[OBJC_IVAR____TtC7Journal20CanvasViewController_delegate];
    if (swift_unknownObjectWeakLoadStrong())
    {
      v11 = *(v10 + 1);
      ObjectType = swift_getObjectType();
      (*(v11 + 32))(v2, ObjectType, v11);
      swift_unknownObjectRelease();
    }
  }

  v13 = [v5 defaultCenter];
  if (qword_100ACF9E8 != -1)
  {
    swift_once();
  }

  [v13 removeObserver:v2 name:qword_100B2F488 object:0];

  sub_10058C4C4();
  if (*&v2[OBJC_IVAR____TtC7Journal20CanvasViewController_tipGroupTask])
  {

    sub_1000F24EC(&qword_100AD5BC0);
    Task.cancel()();
  }

  if (*&v2[OBJC_IVAR____TtC7Journal20CanvasViewController_locationUpdatesTask])
  {

    Task.cancel()();
  }

  if (*(*&v2[OBJC_IVAR____TtC7Journal20CanvasViewController_gridStackView] + OBJC_IVAR____TtC7Journal15CanvasStackView_mindfulMinuteCanvasTipTask))
  {

    sub_1000F24EC(&qword_100AD5BC0);
    Task.cancel()();
  }

  v14 = sub_100658B00();
  v17 = &OBJC_PROTOCOL____UITextFormattingResponder;
  v15 = swift_dynamicCastObjCProtocolConditional();
  if (v15)
  {
    [v15 _hideTextFormattingOptions:0];
    v14[OBJC_IVAR____TtC7Journal15JournalTextView_isShowingFormattingController] = 0;
  }

  v16.receiver = v2;
  v16.super_class = type metadata accessor for CanvasViewController(0);
  return objc_msgSendSuper2(&v16, "viewWillDisappear:", a1 & 1);
}

void sub_10065FD78()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  [v51 layoutFrame];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;

  v9 = [v0 traitCollection];
  v10 = [v9 userInterfaceIdiom];

  v11 = 16.0;
  if (v10 != 5)
  {
    v12 = [v0 traitCollection];
    v13 = [v12 horizontalSizeClass];

    if (v13 == 2)
    {
      v11 = 20.0;
    }

    else
    {
      v11 = 16.0;
    }
  }

  v14 = [v0 traitCollection];
  v15 = [v14 userInterfaceIdiom];

  if (v15 != 5)
  {
    v16 = [v0 traitCollection];
    [v16 horizontalSizeClass];
  }

  v17 = sub_10007BDE0(v2, v4, v6, v8, 0.0, v11);
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v24 = sub_100658B00();
  v25 = [v0 traitCollection];
  v26 = [v25 userInterfaceIdiom];

  v27 = 8.0;
  if (v26 != 5)
  {
    v28 = [v0 traitCollection];
    v29 = [v28 horizontalSizeClass];

    if (v29 == 2)
    {
      v27 = 18.0;
    }

    else
    {
      v27 = 14.0;
    }
  }

  v52.origin.x = v17;
  v52.origin.y = v19;
  v49 = v23;
  v50 = v21;
  v52.size.width = v21;
  v52.size.height = v23;
  MinX = CGRectGetMinX(v52);
  v30 = [v0 traitCollection];
  v31 = [v30 userInterfaceIdiom];

  v32 = 16.0;
  if (v31 != 5)
  {
    v33 = [v0 traitCollection];
    v34 = [v33 horizontalSizeClass];

    if (v34 == 2)
    {
      v32 = 20.0;
    }

    else
    {
      v32 = 16.0;
    }
  }

  v35 = v19;
  v36 = v17;
  v37 = [v0 view];
  if (v37)
  {
    v38 = v37;
    [v37 bounds];
    v40 = v39;
    v42 = v41;
    v44 = v43;
    v46 = v45;

    v53.origin.x = v40;
    v53.origin.y = v42;
    v53.size.width = v44;
    v53.size.height = v46;
    MaxX = CGRectGetMaxX(v53);
    v54.origin.x = v36;
    v54.origin.y = v35;
    v54.size.height = v49;
    v54.size.width = v50;
    [v24 setTextContainerInset:{v27, MinX, v32, MaxX - CGRectGetMaxX(v54)}];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100660134()
{
  v1 = type metadata accessor for CanvasViewController.State(0);
  __chkstk_darwin(v1 - 8);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000F24EC(&qword_100AD1420);
  __chkstk_darwin(v4 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000082B4(*(v0 + OBJC_IVAR____TtC7Journal20CanvasViewController_journalEntry) + OBJC_IVAR____TtC7Journal14EntryViewModel_uuid, v6, &qword_100AD1420);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_100004F84(v6, &qword_100AD1420);
  }

  (*(v8 + 32))(v10, v6, v7);
  (*(v8 + 16))(v3, v10, v7);
  type metadata accessor for CanvasViewController(0);
  sub_100670674(&qword_100AE9048, type metadata accessor for CanvasViewController);
  RestorableController.addRestorableState(_:to:)();
  sub_1006730B4(v3, type metadata accessor for CanvasViewController.State);
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_100660428(char a1, char a2)
{
  v5 = sub_1000F24EC(&qword_100AD5170);
  *&v6 = __chkstk_darwin(v5 - 8).n128_u64[0];
  v8 = &v15 - v7;
  if (![v2 isEditing] || (a1 & 1) != 0)
  {
    v14 = type metadata accessor for CanvasViewController(0);
    v15.receiver = v2;
    v15.super_class = v14;
    objc_msgSendSuper2(&v15, "setEditing:animated:", a1 & 1, a2 & 1);
    return sub_100660B5C(a2 & 1);
  }

  else
  {
    v9 = type metadata accessor for TaskPriority();
    (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
    type metadata accessor for MainActor();
    v10 = v2;
    v11 = static MainActor.shared.getter();
    v12 = swift_allocObject();
    v12[2] = v11;
    v12[3] = &protocol witness table for MainActor;
    v12[4] = v10;
    sub_1003E9628(0, 0, v8, &unk_1009611C0, v12);
  }
}

uint64_t sub_1006605A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = type metadata accessor for MainActor();
  v4[4] = static MainActor.shared.getter();
  v4[5] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[6] = v6;
  v4[7] = v5;

  return _swift_task_switch(sub_100660648, v6, v5);
}

uint64_t sub_100660648()
{
  if ([*(v0 + 16) isEditing])
  {
    v1 = UIViewController.forPresenting.getter();
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {

      v3 = dispatch thunk of Actor.unownedExecutor.getter();

      return _swift_task_switch(sub_1000EC728, v3, v2);
    }

    else
    {

      v5 = swift_task_alloc();
      *(v0 + 64) = v5;
      *v5 = v0;
      v5[1] = sub_100660800;

      return sub_1004F1518();
    }
  }

  else
  {

    v4 = swift_task_alloc();
    *(v0 + 72) = v4;
    *v4 = v0;
    v4[1] = sub_1006609C4;

    return sub_100664604(0);
  }
}

uint64_t sub_100660800()
{
  v1 = *v0;

  v2 = *(v1 + 56);
  v3 = *(v1 + 48);

  return _swift_task_switch(sub_100660920, v3, v2);
}

uint64_t sub_100660920()
{

  sub_10067202C();
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  *v1 = v0;
  v1[1] = sub_1006609C4;

  return sub_100664604(0);
}

uint64_t sub_1006609C4()
{

  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1002D836C, v1, v0);
}

uint64_t sub_100660B5C(char a1)
{
  v2 = v1;
  result = [v1 isViewLoaded];
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static UIViewController.ViewLoading.subscript.getter();

    sub_1003CABA0(a1 & 1);

    swift_getKeyPath();
    swift_getKeyPath();
    static UIViewController.ViewLoading.subscript.getter();

    v5 = v13[0];
    v6 = [v2 isEditing];
    v7 = *(v13[0] + 40);
    *(v13[0] + 40) = v6;
    if (v6 != v7)
    {
      if (v6)
      {
        sub_100218550();
      }

      else if (*(v5 + 24))
      {

        sub_1000F24EC(&qword_100AD5BC0);
        Task.cancel()();
      }
    }

    sub_100660DF8();
    sub_100661550();
    v8 = swift_allocObject();
    *(v8 + 16) = v2;
    if (a1)
    {
      v9 = 0.3;
    }

    else
    {
      v9 = 0.0;
    }

    v10 = objc_opt_self();
    v13[4] = sub_100673508;
    v13[5] = v8;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 1107296256;
    v13[2] = sub_100006C7C;
    v13[3] = &unk_100A76F80;
    v11 = _Block_copy(v13);
    v12 = v2;

    [v10 animateWithDuration:6 delay:v11 usingSpringWithDamping:0 initialSpringVelocity:v9 options:0.0 animations:1.0 completion:0.0];
    _Block_release(v11);

    result = [v12 isEditing];
    if (result)
    {
      return sub_100662900();
    }
  }

  return result;
}

id sub_100660DF8()
{
  v1 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v1 - 8);
  v3 = &v14 - v2;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  *&v6 = __chkstk_darwin(v4).n128_u64[0];
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (![v0 isEditing])
  {
    v10 = type metadata accessor for TaskPriority();
    (*(*(v10 - 8) + 56))(v3, 1, 1, v10);
    type metadata accessor for MainActor();
    v11 = v0;
    v12 = static MainActor.shared.getter();
    v13 = swift_allocObject();
    v13[2] = v12;
    v13[3] = &protocol witness table for MainActor;
    v13[4] = v11;
    sub_1003E9628(0, 0, v3, &unk_1009610F8, v13);
  }

  result = [v0 isEditing];
  if (result && *&v0[OBJC_IVAR____TtC7Journal20CanvasViewController_mindfulnessManager] && *&v0[OBJC_IVAR____TtC7Journal20CanvasViewController_canvasIdleTracker])
  {

    static Date.now.getter();
    sub_1005BD218(v8);
    (*(v5 + 8))(v8, v4);
    sub_1003E8698();
  }

  return result;
}

void sub_100661034(char *a1)
{
  v2 = *&a1[OBJC_IVAR____TtC7Journal20CanvasViewController_slimAssetView];
  v3 = [a1 isEditing];
  v4 = OBJC_IVAR____TtC7Journal13SlimAssetView_isEditing;
  v5 = *(v2 + OBJC_IVAR____TtC7Journal13SlimAssetView_isEditing);
  *(v2 + OBJC_IVAR____TtC7Journal13SlimAssetView_isEditing) = v3;
  if (v3 != v5)
  {
    sub_100806D8C();
    if (*(v2 + v4))
    {
      sub_100803CFC();
    }

    else
    {
      sub_100804220();
    }
  }

  v6 = *&a1[OBJC_IVAR____TtC7Journal20CanvasViewController_gridStackView];
  v7 = [a1 isEditing];
  *(v6 + OBJC_IVAR____TtC7Journal15CanvasStackView_isEditing) = v7;
  sub_1005A5DFC();
  v8 = *&a1[OBJC_IVAR____TtC7Journal20CanvasViewController_assetsGridView];
  v9 = [a1 isEditing];
  v10 = OBJC_IVAR____TtC7Journal14CanvasGridView_isEditing;
  *(v8 + OBJC_IVAR____TtC7Journal14CanvasGridView_isEditing) = v9;
  sub_1005857C4(v9);
  *(v8 + OBJC_IVAR____TtC7Journal14CanvasGridView_shouldAnimateDifferences) = *(v8 + v10);
  v11 = [a1 isEditing];
  v12 = *(v8 + OBJC_IVAR____TtC7Journal14CanvasGridView_gridCollectionView);
  if (v12)
  {
    [v12 setEditing:v11];
  }

  v13 = sub_100658670();
  [v13 setEditable:{objc_msgSend(a1, "isEditing")}];

  v14 = *&a1[OBJC_IVAR____TtC7Journal20CanvasViewController____lazy_storage___bundleTitleView];
  v15 = [a1 isEditing];
  v16 = *&a1[OBJC_IVAR____TtC7Journal20CanvasViewController_journalEntry];
  if (v15)
  {
    v17 = *(v16 + OBJC_IVAR____TtC7Journal14EntryViewModel_showTitle);
  }

  else
  {
    v17 = sub_10005AAB0(2);
  }

  [v14 setHidden:(v17 & 1) == 0];

  v18 = *&a1[OBJC_IVAR____TtC7Journal20CanvasViewController_titleDividerView];
  if ([a1 isEditing])
  {
    if (*(v16 + OBJC_IVAR____TtC7Journal14EntryViewModel_showTitle) != 1)
    {
LABEL_12:
      v19 = 1;
      goto LABEL_15;
    }
  }

  else if ((sub_10005AAB0(2) & 1) == 0)
  {
    goto LABEL_12;
  }

  v19 = [a1 isEditing] ^ 1;
LABEL_15:
  [v18 setHidden:v19];
  v20 = sub_100658B00();
  [v20 setEditable:{objc_msgSend(a1, "isEditing")}];

  sub_1006612C0();
  v21 = [a1 view];
  if (v21)
  {
    v22 = v21;
    [v21 layoutIfNeeded];
  }

  else
  {
    __break(1u);
  }
}

id sub_1006612C0()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC7Journal20CanvasViewController_bundleTitleTopConstraint];
  if (v2)
  {
    v3 = *(*&v0[OBJC_IVAR____TtC7Journal20CanvasViewController_journalEntry] + OBJC_IVAR____TtC7Journal14EntryViewModel_gridAssets);
    if (v3 >> 62)
    {
      v4 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v5 = v2;
    v6 = 20.0;
    if (!v4)
    {
      v7 = sub_100049F2C();
      if (v7)
      {
        sub_10053256C(v7);
        v9 = v8;

        v6 = 20.0;
      }

      else
      {
        v6 = 4.0;
      }
    }

    [v5 setConstant:v6];
  }

  if ([v1 isEditing])
  {
    if (*(*&v1[OBJC_IVAR____TtC7Journal20CanvasViewController_journalEntry] + OBJC_IVAR____TtC7Journal14EntryViewModel_showTitle) != 1)
    {
      goto LABEL_11;
    }
  }

  else if ((sub_10005AAB0(2) & 1) == 0)
  {
LABEL_11:
    v11 = *&v1[OBJC_IVAR____TtC7Journal20CanvasViewController_bundleTitleHeightConstraint];
    if (v11)
    {
      [v11 setActive:1];
    }

    v12 = *&v1[OBJC_IVAR____TtC7Journal20CanvasViewController_bundleTitleBottomConstraint];
    if (v12)
    {
      [v12 setConstant:0.0];
    }

    result = *&v1[OBJC_IVAR____TtC7Journal20CanvasViewController_titleDividerTopConstraint];
    if (result)
    {
      v14 = 0.0;
LABEL_24:

      return [result setConstant:v14];
    }

    return result;
  }

  v15 = *&v1[OBJC_IVAR____TtC7Journal20CanvasViewController_bundleTitleHeightConstraint];
  if (v15)
  {
    [v15 setActive:0];
  }

  v16 = *&v1[OBJC_IVAR____TtC7Journal20CanvasViewController_bundleTitleBottomConstraint];
  if (v16)
  {
    [v16 setConstant:-4.0];
  }

  result = *&v1[OBJC_IVAR____TtC7Journal20CanvasViewController_titleDividerTopConstraint];
  if (result)
  {
    v14 = 8.0;
    goto LABEL_24;
  }

  return result;
}

uint64_t sub_100661498()
{
  v3 = &type metadata for AlwaysAddLocationTip;
  v4 = sub_10023F460();
  static Tips.GroupBuilder.buildPartialBlock(first:)();
  sub_10000BA7C(v2);
  v3 = &type metadata for SuggestionsTip;
  v4 = sub_100345CF0();
  static Tips.GroupBuilder.buildPartialBlock(accumulated:next:)();

  sub_10000BA7C(v2);
  v3 = &type metadata for NewSuggestionsTip;
  v4 = sub_10051C808();
  v0 = static Tips.GroupBuilder.buildPartialBlock(accumulated:next:)();

  sub_10000BA7C(v2);
  return v0;
}

uint64_t sub_100661550()
{
  v1 = v0;
  v2 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v2 - 8);
  v4 = &v11 - v3;
  v5 = OBJC_IVAR____TtC7Journal20CanvasViewController_tipGroupTask;
  if (*&v0[OBJC_IVAR____TtC7Journal20CanvasViewController_tipGroupTask])
  {

    sub_1000F24EC(&qword_100AD5BC0);
    Task.cancel()();
  }

  v0[OBJC_IVAR____TtC7Journal20CanvasViewController_needsDeferredTipDisplay] = 0;
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  type metadata accessor for MainActor();
  v7 = v0;
  v8 = static MainActor.shared.getter();
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = &protocol witness table for MainActor;
  v9[4] = v7;
  *&v1[v5] = sub_1004EC158(0, 0, v4, &unk_100961058, v9);
}

uint64_t sub_1006616E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[26] = a4;
  sub_1000F24EC(&qword_100AEBE28);
  v4[27] = swift_task_alloc();
  v4[28] = type metadata accessor for CanvasContentInputType();
  v4[29] = swift_task_alloc();
  v4[30] = sub_1000F24EC(&unk_100AD4CB0);
  v4[31] = swift_task_alloc();
  v5 = sub_1000F24EC(&unk_100AEBE30);
  v4[32] = v5;
  v4[33] = *(v5 - 8);
  v4[34] = swift_task_alloc();
  v6 = type metadata accessor for ContinuousClock();
  v4[35] = v6;
  v4[36] = *(v6 - 8);
  v4[37] = swift_task_alloc();
  v4[38] = type metadata accessor for MainActor();
  v4[39] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[40] = v8;
  v4[41] = v7;

  return _swift_task_switch(sub_1006618EC, v8, v7);
}

uint64_t sub_1006618EC()
{
  static Clock<>.continuous.getter();
  v1 = swift_task_alloc();
  *(v0 + 336) = v1;
  *v1 = v0;
  v1[1] = sub_1006619B8;

  return sub_10003FA1C(500000000000000000, 0, 0, 0, 1);
}

uint64_t sub_1006619B8()
{
  v2 = *v1;
  v3 = *(*v1 + 296);
  v4 = *(*v1 + 288);
  v5 = *(*v1 + 280);
  *(*v1 + 344) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 328);
  v7 = *(v2 + 320);
  if (v0)
  {
    v8 = sub_100661CB0;
  }

  else
  {
    v8 = sub_100661B50;
  }

  return _swift_task_switch(v8, v7, v6);
}

uint64_t sub_100661B50()
{
  TipGroup.currentTipUpdates.getter();
  v0[44] = swift_getOpaqueTypeConformance2();
  dispatch thunk of AsyncSequence.makeAsyncIterator()();
  v0[45] = OBJC_IVAR____TtC7Journal20CanvasViewController_cachedTipToDisplay;
  v1 = static MainActor.shared.getter();
  v0[46] = v1;
  swift_getAssociatedConformanceWitness();
  v2 = swift_task_alloc();
  v0[47] = v2;
  *v2 = v0;
  v2[1] = sub_100661D60;

  return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v0 + 2, v1, &protocol witness table for MainActor);
}

uint64_t sub_100661CB0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100661D60()
{
  v2 = *v1;

  if (!v0)
  {

    v4 = *(v2 + 320);
    v5 = *(v2 + 328);

    return _swift_task_switch(sub_100661E74, v4, v5);
  }

  return result;
}

uint64_t sub_100661E74()
{
  if (*(v0 + 40))
  {
    sub_100018480((v0 + 16), v0 + 56);
    sub_100086C04(v0 + 56, v0 + 96);
    sub_1000F24EC(&qword_100AD4CC0);
    if (swift_dynamicCast())
    {
      v1 = *(v0 + 208);
      swift_storeEnumTagMultiPayload();
      sub_100086C04(v0 + 56, v0 + 136);
      v2 = swift_allocObject();
      *(v2 + 16) = v1;
      sub_100018480((v0 + 136), v2 + 24);
      v3 = v1;
      v4 = sub_1006732C0;
LABEL_12:
      v13 = *(v0 + 208);
      sub_10000BA7C(v0 + 96);
      if ([v13 isEditing])
      {
        v14 = *(v0 + 232);
        swift_getKeyPath();
        swift_getKeyPath();
        static UIViewController.ViewLoading.subscript.getter();

        v15 = sub_1003CBCAC(v14);

        v16 = *(v0 + 232);
        if (v15)
        {
          sub_100662B54(v0 + 56, v15, v4, v2);
          sub_100004DF8(v4);
          swift_unknownObjectRelease();
        }

        else
        {
          sub_100004DF8(v4);
        }

        sub_1006730B4(v16, type metadata accessor for CanvasContentInputType);
        sub_10000BA7C(v0 + 56);
      }

      else
      {
        v17 = *(v0 + 360);
        v18 = *(v0 + 232);
        v20 = *(v0 + 208);
        v19 = *(v0 + 216);
        sub_100018480((v0 + 56), v19);
        v21 = type metadata accessor for CanvasViewController.CachedTip(0);
        sub_10067304C(v18, v19 + *(v21 + 20), type metadata accessor for CanvasContentInputType);
        v22 = (v19 + *(v21 + 24));
        *v22 = v4;
        v22[1] = v2;
        (*(*(v21 - 8) + 56))(v19, 0, 1, v21);
        swift_beginAccess();
        sub_100014318(v19, v20 + v17, &qword_100AEBE28);
        swift_endAccess();
      }

      v23 = static MainActor.shared.getter();
      *(v0 + 368) = v23;
      swift_getAssociatedConformanceWitness();
      v24 = swift_task_alloc();
      *(v0 + 376) = v24;
      *v24 = v0;
      v24[1] = sub_100661D60;

      return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v0 + 16, v23, &protocol witness table for MainActor);
    }

    if (swift_dynamicCast())
    {
      v7 = *(v0 + 232);
      v8 = *(v0 + 208);
      v9 = type metadata accessor for UUID();
      (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
      swift_storeEnumTagMultiPayload();
      v2 = swift_allocObject();
      *(v2 + 16) = v8;
      v10 = v8;
      v4 = sub_1006732B8;
      goto LABEL_12;
    }

    if (swift_dynamicCast())
    {
      v11 = *(v0 + 232);
      v12 = type metadata accessor for UUID();
      (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
      swift_storeEnumTagMultiPayload();
      v4 = 0;
      v2 = 0;
      goto LABEL_12;
    }

    if (qword_100AD00C0 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_10000617C(v25, qword_100AEBAE0);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v26, v27, "Unrecognized tip type! Will not be displayed!", v28, 2u);
    }

    v30 = *(v0 + 264);
    v29 = *(v0 + 272);
    v31 = *(v0 + 256);

    sub_10000BA7C(v0 + 56);
    (*(v30 + 8))(v29, v31);
    sub_10000BA7C(v0 + 96);
  }

  else
  {
    (*(*(v0 + 264) + 8))(*(v0 + 272), *(v0 + 256));
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_100662498(uint64_t a1, void *a2)
{
  v14[1] = a1;
  v3 = type metadata accessor for Tips.InvalidationReason();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SettingsKey();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000065A8(0, &qword_100AE1A30);
  v11 = static NSUserDefaults.shared.getter();
  (*(v8 + 104))(v10, enum case for SettingsKey.addCurrentLocation(_:), v7);
  SettingsKey.rawValue.getter();
  (*(v8 + 8))(v10, v7);
  v12 = String._bridgeToObjectiveC()();

  [v11 setBool:1 forKey:v12];

  sub_10065DEB0();
  sub_10000CA14(a2, a2[3]);
  (*(v4 + 104))(v6, enum case for Tips.InvalidationReason.actionPerformed(_:), v3);
  Tip.invalidate(reason:)();
  return (*(v4 + 8))(v6, v3);
}

void sub_1006626F0(void *a1)
{
  v2 = sub_1000F24EC(&qword_100AD1420);
  __chkstk_darwin(v2 - 8);
  v4 = &v15 - v3;
  v5 = type metadata accessor for JournalFeatureFlags();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 104))(v9, enum case for JournalFeatureFlags.suggestionsAPI(_:), v5, v7);
  v10 = JournalFeatureFlags.isEnabled.getter();
  (*(v6 + 8))(v9, v5);
  if (v10)
  {
    v11 = type metadata accessor for UUID();
    (*(*(v11 - 8) + 56))(v4, 1, 1, v11);
    sub_1003B7110(v4);
    sub_100004F84(v4, &qword_100AD1420);
  }

  else
  {
    v12 = objc_allocWithZone(type metadata accessor for MOOnboardingNavigationController());
    v13 = a1;
    v14 = MOOnboardingNavigationController.init(onboardingDelegate:)();
    [v14 setModalInPresentation:1];
    [v14 setModalPresentationStyle:2];
    [v13 presentViewController:v14 animated:1 completion:0];
  }
}

uint64_t sub_100662900()
{
  v1 = sub_1000F24EC(&qword_100AEBE28);
  __chkstk_darwin(v1 - 8);
  v3 = &v11 - v2;
  v4 = type metadata accessor for CanvasViewController.CachedTip(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC7Journal20CanvasViewController_cachedTipToDisplay;
  swift_beginAccess();
  sub_1000082B4(v0 + v8, v3, &qword_100AEBE28);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    return sub_100004F84(v3, &qword_100AEBE28);
  }

  sub_10067304C(v3, v7, type metadata accessor for CanvasViewController.CachedTip);
  if ([v0 isEditing])
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static UIViewController.ViewLoading.subscript.getter();

    v10 = sub_1003CBCAC(&v7[*(v4 + 20)]);

    if (v10)
    {
      sub_100662B54(v7, v10, *&v7[*(v4 + 24)], *&v7[*(v4 + 24) + 8]);
      swift_unknownObjectRelease();
    }
  }

  return sub_1006730B4(v7, type metadata accessor for CanvasViewController.CachedTip);
}

void sub_100662B54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_1000F24EC(&qword_100AEBE28);
  __chkstk_darwin(v10 - 8);
  v12 = OBJC_IVAR____TtC7Journal20CanvasViewController_tipPopoverController;
  if (!*&v5[OBJC_IVAR____TtC7Journal20CanvasViewController_tipPopoverController])
  {
    v38 = &v34 - v11;
    v37 = type metadata accessor for TipUIPopoverViewController();
    sub_100086C04(a1, v39);
    v13 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v14 = swift_allocObject();
    v14[2] = v13;
    v14[3] = a3;
    v14[4] = a4;
    v15 = v40;
    v35 = v41;
    v16 = sub_100186174(v39, v40);
    v36 = &v34;
    v17 = __chkstk_darwin(v16);
    v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v20 + 16))(v19, v17);
    ObjectType = swift_getObjectType();

    swift_unknownObjectRetain();
    sub_100021E80(a3);
    v22 = sub_100191D64(v19, 1, a2, sub_1006731C8, v14, v37, v15, ObjectType, v35);
    sub_10000BA7C(v39);

    v23 = TipUIPopoverViewController.popoverPresentationController.getter();
    if (v23)
    {
      v24 = v23;
      [v23 _setPrefersZoomTransitions:0];
    }

    v25 = TipUIPopoverViewController.popoverPresentationController.getter();
    if (v25)
    {
      v26 = v25;
      v27 = [v22 traitCollection];
      v28 = [v27 userInterfaceIdiom];

      if (v28)
      {
        v29 = 15;
      }

      else
      {
        v29 = 2;
      }

      [v26 setPermittedArrowDirections:v29];
    }

    [v5 presentViewController:v22 animated:1 completion:0];
    v30 = *&v5[v12];
    *&v5[v12] = v22;

    v31 = type metadata accessor for CanvasViewController.CachedTip(0);
    v32 = v38;
    (*(*(v31 - 8) + 56))(v38, 1, 1, v31);
    v33 = OBJC_IVAR____TtC7Journal20CanvasViewController_cachedTipToDisplay;
    swift_beginAccess();
    sub_100014318(v32, &v5[v33], &qword_100AEBE28);
    swift_endAccess();
  }
}

void sub_100662EBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = *(Strong + OBJC_IVAR____TtC7Journal20CanvasViewController_tipPopoverController);
    v8 = Strong;
    v9 = v7;

    if (v7)
    {
      v10 = swift_allocObject();
      *(v10 + 16) = a3;
      *(v10 + 24) = a4;
      aBlock[4] = sub_1006731D4;
      aBlock[5] = v10;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100006C7C;
      aBlock[3] = &unk_100A76E18;
      v11 = _Block_copy(aBlock);
      sub_100021E80(a3);

      [v9 dismissViewControllerAnimated:1 completion:v11];
      _Block_release(v11);
    }
  }

  swift_beginAccess();
  v12 = swift_unknownObjectWeakLoadStrong();
  if (v12)
  {
    v13 = v12;
    v14 = OBJC_IVAR____TtC7Journal20CanvasViewController_tipPopoverController;
    v15 = *(v12 + OBJC_IVAR____TtC7Journal20CanvasViewController_tipPopoverController);
    if (v15)
    {
      [v15 dismissViewControllerAnimated:1 completion:0];
      v16 = *&v13[v14];
      *&v13[v14] = 0;

      v13 = v16;
    }
  }
}

uint64_t sub_100663054()
{
  v1 = type metadata accessor for CanvasContentInputType();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v25 = v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000F24EC(&unk_100AEBE10);
  __chkstk_darwin(v4);
  v6 = v23 - v5;
  v7 = sub_1000F24EC(&qword_100AD57F0);
  __chkstk_darwin(v7 - 8);
  v24 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v23 - v10;
  __chkstk_darwin(v12);
  v14 = v23 - v13;
  sub_10065E270();
  if (*(v0 + OBJC_IVAR____TtC7Journal20CanvasViewController_mindfulnessManager))
  {
    if (*(v0 + OBJC_IVAR____TtC7Journal20CanvasViewController_canvasIdleTracker))
    {

      sub_1003E8698();
      sub_1005BEA54();
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v23[1] = v0;
  static UIViewController.ViewLoading.subscript.getter();

  v15 = *&v26[0];
  swift_getKeyPath();
  *&v26[0] = v15;
  sub_100670674(&qword_100AEBE20, type metadata accessor for CanvasBarItemCoordinator);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v16 = OBJC_IVAR____TtC7Journal24CanvasBarItemCoordinator__selectedType;
  swift_beginAccess();
  sub_1000082B4(v15 + v16, v14, &qword_100AD57F0);

  swift_storeEnumTagMultiPayload();
  (*(v2 + 56))(v11, 0, 1, v1);
  v17 = *(v4 + 48);
  sub_1000082B4(v14, v6, &qword_100AD57F0);
  sub_1000082B4(v11, &v6[v17], &qword_100AD57F0);
  v18 = *(v2 + 48);
  if (v18(v6, 1, v1) != 1)
  {
    v20 = v24;
    sub_1000082B4(v6, v24, &qword_100AD57F0);
    if (v18(&v6[v17], 1, v1) != 1)
    {
      v19 = v25;
      sub_10067304C(&v6[v17], v25, type metadata accessor for CanvasContentInputType);
      v22 = sub_1001ED0B4(v20, v19);
      sub_1006730B4(v19, type metadata accessor for CanvasContentInputType);
      sub_100004F84(v11, &qword_100AD57F0);
      sub_100004F84(v14, &qword_100AD57F0);
      sub_1006730B4(v20, type metadata accessor for CanvasContentInputType);
      result = sub_100004F84(v6, &qword_100AD57F0);
      if ((v22 & 1) == 0)
      {
        return result;
      }

      goto LABEL_11;
    }

    sub_100004F84(v11, &qword_100AD57F0);
    sub_100004F84(v14, &qword_100AD57F0);
    sub_1006730B4(v20, type metadata accessor for CanvasContentInputType);
    return sub_100004F84(v6, &unk_100AEBE10);
  }

  sub_100004F84(v11, &qword_100AD57F0);
  sub_100004F84(v14, &qword_100AD57F0);
  if (v18(&v6[v17], 1, v1) != 1)
  {
    return sub_100004F84(v6, &unk_100AEBE10);
  }

  sub_100004F84(v6, &qword_100AD57F0);
  v19 = v25;
LABEL_11:
  swift_storeEnumTagMultiPayload();
  memset(v26, 0, sizeof(v26));
  sub_1003B5E4C(v19, v26);
  sub_100004F84(v26, &qword_100AD13D0);
  return sub_1006730B4(v19, type metadata accessor for CanvasContentInputType);
}

uint64_t sub_10066362C(void (*a1)(void), uint64_t a2)
{
  v5 = sub_100658670();
  v6 = [v5 isFirstResponder];

  if (v6)
  {
    *(v2 + OBJC_IVAR____TtC7Journal20CanvasViewController_focusedTextViewBeforeFullScreenAssetAppeared) = 0;
  }

  else
  {
    v7 = sub_100658B00();
    v8 = [v7 isFirstResponder];

    if (v8)
    {
      v9 = 1;
    }

    else
    {
      v9 = 2;
    }

    *(v2 + OBJC_IVAR____TtC7Journal20CanvasViewController_focusedTextViewBeforeFullScreenAssetAppeared) = v9;
  }

  sub_1001707E8(1, 1);
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_1003BECA8(1);
    swift_unknownObjectRelease();
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    [Strong becomeFirstResponder];
  }

  return sub_100173F3C(1, a1, a2);
}

void sub_100663748()
{
  v1 = type metadata accessor for CanvasContentInputType();
  __chkstk_darwin(v1);
  v3 = &aBlock - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(v0 + OBJC_IVAR____TtC7Journal20CanvasViewController_journalEntry);
  v5 = OBJC_IVAR____TtC7Journal14EntryViewModel_showTitle;
  *(v4 + OBJC_IVAR____TtC7Journal14EntryViewModel_showTitle) = (*(v4 + OBJC_IVAR____TtC7Journal14EntryViewModel_showTitle) & 1) == 0;
  v6 = *(v4 + 24);
  v7 = swift_allocObject();
  swift_weakInit();
  v13 = sub_1003A9A34;
  v14 = v7;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v12 = sub_100006C7C;
  *(&v12 + 1) = &unk_100A76D78;
  v8 = _Block_copy(&aBlock);

  [v6 performBlock:v8];
  _Block_release(v8);
  sub_100657CA4();
  if ((*(v4 + v5) & 1) == 0)
  {
    v9 = sub_100658670();
    v10 = [v9 isFirstResponder];

    if (v10)
    {
      *v3 = 1;
      swift_storeEnumTagMultiPayload();
      aBlock = 0u;
      v12 = 0u;
      sub_1003B5E4C(v3, &aBlock);
      sub_100004F84(&aBlock, &qword_100AD13D0);
      sub_1006730B4(v3, type metadata accessor for CanvasContentInputType);
    }
  }
}

uint64_t sub_1006639B0(uint64_t a1)
{
  v2 = sub_100658B00();
  sub_1000082B4(a1, v11, &qword_100AD13D0);
  v3 = v12;
  if (v12)
  {
    v4 = sub_10000CA14(v11, v12);
    v5 = *(v3 - 8);
    v6 = __chkstk_darwin(v4);
    v8 = v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v5 + 16))(v8, v6);
    v9 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v5 + 8))(v8, v3);
    sub_10000BA7C(v11);
  }

  else
  {
    v9 = 0;
  }

  [v2 find:v9];

  return swift_unknownObjectRelease();
}

id sub_100663B8C(unsigned __int8 a1)
{
  v2 = v1;
  v3 = a1;
  v4 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v4 - 8);
  v6 = aBlock - v5;
  sub_1000542E8();
  sub_100053CE0(0);
  sub_10066C904();
  v7 = *(v1 + OBJC_IVAR____TtC7Journal20CanvasViewController_journalEntry);
  v8 = sub_10005AAB0(128);
  if (v3 > 1)
  {
    if (*(v7 + OBJC_IVAR____TtC7Journal14EntryViewModel_slimAsset))
    {
      v25 = *(v7 + OBJC_IVAR____TtC7Journal14EntryViewModel_slimAsset + 8);
      ObjectType = swift_getObjectType();
      v27 = (*(v25 + 80))(ObjectType, v25);
      v28 = type metadata accessor for TaskPriority();
      (*(*(v28 - 8) + 56))(v6, 1, 1, v28);
      v29 = swift_allocObject();
      v29[2] = 0;
      v29[3] = 0;
      v29[4] = v7;
      v29[5] = v27;

      sub_1003E9628(0, 0, v6, &unk_100960FB0, v29);
    }

    v30 = *(v2 + OBJC_IVAR____TtC7Journal20CanvasViewController_slimAssetViewHeightConstraint);
    if (v30)
    {
      [v30 setConstant:0.0];
    }

    v31 = *(v2 + OBJC_IVAR____TtC7Journal20CanvasViewController_slimAssetViewTopConstraint);
    if (v31)
    {
      [v31 setConstant:0.0];
    }

    v32 = *(v2 + OBJC_IVAR____TtC7Journal20CanvasViewController_slimAssetView);
    [v32 setHidden:1];
    v33 = &v32[OBJC_IVAR____TtC7Journal13SlimAssetView_slimAsset];
    v34 = *&v32[OBJC_IVAR____TtC7Journal13SlimAssetView_slimAsset];
    v35 = *&v32[OBJC_IVAR____TtC7Journal13SlimAssetView_slimAsset + 8];
    *v33 = 0;
    *(v33 + 1) = 0;
    if (v34)
    {
      v36 = swift_getObjectType();
    }

    sub_1007FF930();

    return [v32 setAccessibilityElementsHidden:1];
  }

  else
  {
    v9 = v8;
    v10 = *(v1 + OBJC_IVAR____TtC7Journal20CanvasViewController_slimAssetViewTopConstraint);
    if (v10)
    {
      v11 = 0.0;
      if (v9)
      {
        v11 = 4.0;
      }

      [v10 setConstant:v11];
    }

    v12 = *(v1 + OBJC_IVAR____TtC7Journal20CanvasViewController_slimAssetViewHeightConstraint);
    if (v12)
    {
      v13 = 32.0;
      if ((v9 & 1) == 0)
      {
        v13 = 0.0;
      }

      [v12 setConstant:v13];
    }

    v14 = *(v1 + OBJC_IVAR____TtC7Journal20CanvasViewController_slimAssetView);
    v15 = *(v7 + OBJC_IVAR____TtC7Journal14EntryViewModel_slimAsset);
    v16 = *(v7 + OBJC_IVAR____TtC7Journal14EntryViewModel_slimAsset + 8);
    v17 = &v14[OBJC_IVAR____TtC7Journal13SlimAssetView_slimAsset];
    v18 = *&v14[OBJC_IVAR____TtC7Journal13SlimAssetView_slimAsset];
    v19 = *&v14[OBJC_IVAR____TtC7Journal13SlimAssetView_slimAsset + 8];
    *v17 = v15;
    *(v17 + 1) = v16;
    v20 = v15;
    if (sub_1007FDF38(v18, v19, v15, v16))
    {
      v21 = objc_opt_self();
      v22 = swift_allocObject();
      *(v22 + 16) = v14;
      aBlock[4] = sub_100603A58;
      aBlock[5] = v22;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100006C7C;
      aBlock[3] = &unk_100A76B70;
      v23 = _Block_copy(aBlock);
      v24 = v14;

      [v21 animateWithDuration:1 delay:v23 options:0 animations:0.11 completion:0.0];
      _Block_release(v23);
      [*&v24[OBJC_IVAR____TtC7Journal13SlimAssetView_gradientView] setClipsToBounds:1];
      [*&v24[OBJC_IVAR____TtC7Journal13SlimAssetView_backgroundView] setClipsToBounds:1];
    }

    else
    {
      sub_1007FF930();
    }

    [v14 setHidden:(v9 & 1) == 0];
    return [v14 setAccessibilityElementsHidden:(v9 & 1) == 0];
  }
}

void sub_100663FEC(uint64_t a1)
{
  v2 = type metadata accessor for Notification();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v33 - v7;
  v9 = Notification.userInfo.getter();
  if (v9)
  {
    v10 = v9;
    v34 = 0xD000000000000015;
    v35 = 0x80000001008FFFE0;
    AnyHashable.init<A>(_:)();
    if (*(v10 + 16) && (v11 = sub_100361EDC(v36), (v12 & 1) != 0))
    {
      sub_10000BA20(*(v10 + 56) + 32 * v11, &v37);
      sub_100177B94(v36);

      if (swift_dynamicCast())
      {
        v13 = v34;
        v14 = v35;
        swift_beginAccess();
        sub_100286DEC(&v37, v13, v14);
        swift_endAccess();

        return;
      }
    }

    else
    {

      sub_100177B94(v36);
    }

    if (qword_100AD00C0 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_10000617C(v15, qword_100AEBAE0);
    (*(v3 + 16))(v8, a1, v2);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v36[0] = v19;
      *v18 = 136315138;
      sub_100670674(&qword_100ADFAD8, &type metadata accessor for Notification);
      v20 = dispatch thunk of CustomStringConvertible.description.getter();
      v22 = v21;
      (*(v3 + 8))(v8, v2);
      v23 = sub_100008458(v20, v22, v36);

      *(v18 + 4) = v23;
      _os_log_impl(&_mh_execute_header, v16, v17, "(videoStartedNotification) unable to get id from notification:%s", v18, 0xCu);
      sub_10000BA7C(v19);
    }

    else
    {

      (*(v3 + 8))(v8, v2);
    }
  }

  else
  {
    if (qword_100AD00C0 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_10000617C(v24, qword_100AEBAE0);
    (*(v3 + 16))(v5, a1, v2);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v36[0] = v28;
      *v27 = 136315138;
      sub_100670674(&qword_100ADFAD8, &type metadata accessor for Notification);
      v29 = dispatch thunk of CustomStringConvertible.description.getter();
      v31 = v30;
      (*(v3 + 8))(v5, v2);
      v32 = sub_100008458(v29, v31, v36);

      *(v27 + 4) = v32;
      _os_log_impl(&_mh_execute_header, v25, v26, "(videoStartedNotification) unable to get userInfo from notification:%s", v27, 0xCu);
      sub_10000BA7C(v28);
    }

    else
    {

      (*(v3 + 8))(v5, v2);
    }
  }
}

uint64_t sub_100664604(char a1)
{
  *(v2 + 32) = v1;
  *(v2 + 112) = a1;
  v3 = type metadata accessor for Date();
  *(v2 + 40) = v3;
  *(v2 + 48) = *(v3 - 8);
  *(v2 + 56) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v2 + 64) = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v2 + 72) = v5;
  *(v2 + 80) = v4;

  return _swift_task_switch(sub_1006646FC, v5, v4);
}

uint64_t sub_1006646FC()
{
  v1 = *(v0 + 32);
  v2 = *(v1 + OBJC_IVAR____TtC7Journal20CanvasViewController_mindfulnessManager);
  *(v0 + 88) = v2;
  if (v2 && (v3 = *(v1 + OBJC_IVAR____TtC7Journal20CanvasViewController_canvasIdleTracker), (*(v0 + 96) = v3) != 0))
  {

    static Date.now.getter();
    v4 = swift_task_alloc();
    *(v0 + 104) = v4;
    *v4 = v0;
    v4[1] = sub_1006648CC;
    v5 = *(v0 + 56);

    return sub_1005BED00(v5, 0);
  }

  else
  {

    v7 = *(v0 + 32);
    if (*(v0 + 112))
    {
      *(v7 + OBJC_IVAR____TtC7Journal20CanvasViewController_isFinalDisappearance) = 1;
      v8 = v7 + OBJC_IVAR____TtC7Journal20CanvasViewController_delegate;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v9 = *(v0 + 32);
        v10 = *(v8 + 8);
        ObjectType = swift_getObjectType();
        (*(v10 + 24))(v9, ObjectType, v10);
        swift_unknownObjectRelease();
      }
    }

    else if ((*(v7 + OBJC_IVAR____TtC7Journal20CanvasViewController_isFinalDisappearance) & 1) == 0)
    {
      v12 = type metadata accessor for CanvasViewController(0);
      *(v0 + 16) = v7;
      *(v0 + 24) = v12;
      objc_msgSendSuper2((v0 + 16), "setEditing:animated:", 0, 1);
      sub_100660B5C(1);
    }

    v13 = *(v0 + 8);

    return v13();
  }
}

uint64_t sub_1006648CC()
{
  v1 = *v0;
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 40);

  (*(v3 + 8))(v2, v4);
  v5 = *(v1 + 80);
  v6 = *(v1 + 72);

  return _swift_task_switch(sub_100664A50, v6, v5);
}

uint64_t sub_100664A50()
{

  sub_1003E8B6C();

  v1 = *(v0 + 32);
  if (*(v0 + 112))
  {
    *(v1 + OBJC_IVAR____TtC7Journal20CanvasViewController_isFinalDisappearance) = 1;
    v2 = v1 + OBJC_IVAR____TtC7Journal20CanvasViewController_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v3 = *(v0 + 32);
      v4 = *(v2 + 8);
      ObjectType = swift_getObjectType();
      (*(v4 + 24))(v3, ObjectType, v4);
      swift_unknownObjectRelease();
    }
  }

  else if ((*(v1 + OBJC_IVAR____TtC7Journal20CanvasViewController_isFinalDisappearance) & 1) == 0)
  {
    v6 = type metadata accessor for CanvasViewController(0);
    *(v0 + 16) = v1;
    *(v0 + 24) = v6;
    objc_msgSendSuper2((v0 + 16), "setEditing:animated:", 0, 1);
    sub_100660B5C(1);
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_100664B7C(uint64_t a1, uint64_t a2)
{
  if (static Selector.== infix(_:_:)())
  {
    result = [v2 undoManager];
    if (result)
    {
      v6 = "canUndo";
LABEL_7:
      v7 = result;
      v8 = [result v6];

      return v8;
    }

    return result;
  }

  if ((static Selector.== infix(_:_:)() & 1) == 0)
  {
    if (static Selector.== infix(_:_:)())
    {
      if (qword_100AD0A58 != -1)
      {
        swift_once();
      }

      return sub_100771E70() & 1;
    }

    if (static Selector.== infix(_:_:)() & 1) != 0 || (static Selector.== infix(_:_:)() & 1) != 0 || (static Selector.== infix(_:_:)() & 1) != 0 || (static Selector.== infix(_:_:)() & 1) != 0 || (static Selector.== infix(_:_:)() & 1) != 0 || (static Selector.== infix(_:_:)() & 1) != 0 || (static Selector.== infix(_:_:)() & 1) != 0 || (static Selector.== infix(_:_:)() & 1) != 0 || (static Selector.== infix(_:_:)() & 1) != 0 || (static Selector.== infix(_:_:)())
    {
      return [v2 isEditing];
    }

    if ((static Selector.== infix(_:_:)() & 1) == 0)
    {
      sub_1000082B4(a2, aBlock, &qword_100AD13D0);
      v14 = v40;
      if (v40)
      {
        v15 = sub_10000CA14(aBlock, v40);
        v16 = *(v14 - 1);
        v17 = __chkstk_darwin(v15);
        v19 = &aBlock[-1] - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v16 + 16))(v19, v17);
        v20 = _bridgeAnythingToObjectiveC<A>(_:)();
        (*(v16 + 8))(v19, v14);
        sub_10000BA7C(aBlock);
      }

      else
      {
        v20 = 0;
      }

      v35 = type metadata accessor for CanvasViewController(0);
      v44.receiver = v2;
      v44.super_class = v35;
      v36 = objc_msgSendSuper2(&v44, "canPerformAction:withSender:", a1, v20);
      swift_unknownObjectRelease();
      return v36;
    }

    result = [v2 isEditing];
    if (!result)
    {
      return result;
    }

    v9 = *(*&v2[OBJC_IVAR____TtC7Journal20CanvasViewController_assetsGridView] + OBJC_IVAR____TtC7Journal14CanvasGridView_gridCollectionView);
    if (v9)
    {
      v10 = [v9 indexPathsForSelectedItems];
      if (v10)
      {
        v11 = v10;
        type metadata accessor for IndexPath();
        v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v13 = *(v12 + 16);

        if (v13)
        {
          return 1;
        }
      }
    }

    v21 = sub_100658B00();
    v43 = _swiftEmptyArrayStorage;
    __chkstk_darwin(v21);
    v37[6] = &v43;
    *&v23 = __chkstk_darwin(v22).n128_u64[0];
    v37[2] = sub_1002D8274;
    v37[3] = v24;
    v26 = [v25 textStorage];
    v27 = [v26 length];

    if ((v27 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v28 = [v21 textStorage];
      v29 = NSParagraphAttachmentAttributeName;
      v30 = swift_allocObject();
      *(v30 + 16) = sub_1002D835C;
      *(v30 + 24) = v37;
      v31 = swift_allocObject();
      *(v31 + 16) = sub_1002D8270;
      *(v31 + 24) = v30;
      v41 = sub_100673DC8;
      v42 = v31;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10007E0A4;
      v40 = &unk_100A77110;
      v32 = _Block_copy(aBlock);

      [v28 enumerateAttribute:v29 inRange:0 options:v27 usingBlock:{0, v32}];

      _Block_release(v32);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        if (!(v43 >> 62))
        {
          v34 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_36:

          return v34 != 0;
        }

LABEL_41:
        v34 = _CocoaArrayWrapper.endIndex.getter();
        goto LABEL_36;
      }
    }

    __break(1u);
    goto LABEL_41;
  }

  result = [v2 undoManager];
  if (result)
  {
    v6 = "canRedo";
    goto LABEL_7;
  }

  return result;
}

void sub_100665234(void *a1)
{
  v3 = type metadata accessor for ColorResource();
  v39 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Locale();
  __chkstk_darwin(v6 - 8);
  v40 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v8 - 8);
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v14 = __chkstk_darwin(v13).n128_u64[0];
  v16 = &v39 - v15;
  [a1 action];
  if (static Selector.== infix(_:_:)())
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static UIViewController.ViewLoading.subscript.getter();

    v17 = v41;
    swift_getKeyPath();
    v41 = v17;
    sub_100670674(&qword_100AEBE20, type metadata accessor for CanvasBarItemCoordinator);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v18 = OBJC_IVAR____TtC7Journal24CanvasBarItemCoordinator__titleDate;
    swift_beginAccess();
    (*(v10 + 16))(v16, v17 + v18, v9);

    static Date.now.getter();
    sub_10048FF40(2, 0, v12);
    v19 = *(v10 + 8);
    v19(v12, v9);
    v19(v16, v9);
    v20 = String._bridgeToObjectiveC()();

    [a1 setSubtitle:{v20, v39}];
LABEL_3:

    return;
  }

  if (static Selector.== infix(_:_:)())
  {
    if (*(*&v1[OBJC_IVAR____TtC7Journal20CanvasViewController_journalEntry] + OBJC_IVAR____TtC7Journal14EntryViewModel_bookmarked) == 1)
    {
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      String.init(localized:table:bundle:locale:comment:)();
      v21 = String._bridgeToObjectiveC()();

      [a1 setTitle:v21];

      v22 = String._bridgeToObjectiveC()();
      v23 = [objc_opt_self() systemImageNamed:v22];

      if (v23)
      {
        sub_1000065A8(0, &qword_100AD4C70);
        if (qword_100AD0CA0 != -1)
        {
          swift_once();
        }

        v24 = sub_10000617C(v3, qword_100B314F0);
        (*(v39 + 16))(v5, v24, v3);
        v25 = UIColor.init(resource:)();
        v20 = [v23 imageWithTintColor:v25 renderingMode:1];
      }

      else
      {
        v20 = 0;
      }

      [a1 setImage:{v20, v39}];
      goto LABEL_3;
    }

    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    v29 = String._bridgeToObjectiveC()();

    [a1 setTitle:v29];

    v30 = String._bridgeToObjectiveC()();
    v31 = [objc_opt_self() systemImageNamed:v30];

    [a1 setImage:{v31, v39}];
    goto LABEL_22;
  }

  if (static Selector.== infix(_:_:)())
  {
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    v26 = String._bridgeToObjectiveC()();

    [a1 setTitle:v26];

    v27 = String._bridgeToObjectiveC()();
    v28 = [objc_opt_self() systemImageNamed:v27];
LABEL_17:
    v31 = v28;

    [a1 setImage:{v31, v39}];
LABEL_22:

    return;
  }

  if (static Selector.== infix(_:_:)())
  {
    v32 = *(*&v1[OBJC_IVAR____TtC7Journal20CanvasViewController_assetsGridView] + OBJC_IVAR____TtC7Journal14CanvasGridView_gridCollectionView);
    if (v32)
    {
      v33 = [v32 indexPathsForSelectedItems];
      if (v33)
      {
        v34 = v33;
        type metadata accessor for IndexPath();
        static Array._unconditionallyBridgeFromObjectiveC(_:)();
      }
    }

    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    v31 = String._bridgeToObjectiveC()();

    [a1 setTitle:{v31, v39}];
    goto LABEL_22;
  }

  if (static Selector.== infix(_:_:)())
  {
    sub_100665DBC();
    if (v35)
    {
      v40 = String._bridgeToObjectiveC()();
    }

    else
    {
      v40 = 0;
    }

    [a1 setSubtitle:{v40, v39}];
    v37 = v40;
  }

  else
  {
    if (static Selector.== infix(_:_:)())
    {
      [v1 isEditing];
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      String.init(localized:table:bundle:locale:comment:)();
      v38 = String._bridgeToObjectiveC()();

      [a1 setTitle:v38];

      [v1 isEditing];
      v27 = String._bridgeToObjectiveC()();
      v28 = [objc_opt_self() systemImageNamed:v27];
      goto LABEL_17;
    }

    v36 = type metadata accessor for CanvasViewController(0);
    v42.receiver = v1;
    v42.super_class = v36;
    objc_msgSendSuper2(&v42, "validateCommand:", a1);
  }
}

void sub_100665DBC()
{
  v1 = type metadata accessor for Locale();
  __chkstk_darwin(v1 - 8);
  v40[1] = v40 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v3 - 8);
  v40[0] = v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin(v5 - 8);
  v7 = v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000F24EC(&qword_100AD38B8);
  v48 = *(v8 - 8);
  v49 = v8;
  __chkstk_darwin(v8);
  v45 = v40 - v9;
  v50 = sub_1000F24EC(&unk_100AEBEA0);
  v44 = *(v50 - 8);
  __chkstk_darwin(v50);
  v42 = v40 - v10;
  v11 = sub_1000F24EC(&qword_100AD38C0);
  v46 = *(v11 - 8);
  v47 = v11;
  __chkstk_darwin(v11);
  v43 = v40 - v12;
  if (qword_100AD0A58 != -1)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v13 = *(*(v0 + OBJC_IVAR____TtC7Journal20CanvasViewController_journalEntry) + 32);
    v0 = sub_1007716BC(v13, 0x7FFFFFFFFFFFFFFFLL);

    if (v0 >> 62)
    {
      break;
    }

    v14 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v41 = v7;
    if (!v14)
    {
      goto LABEL_21;
    }

LABEL_4:
    v15 = 0;
    v52 = v0 & 0xC000000000000001;
    v16 = v0 & 0xFFFFFFFFFFFFFF8;
    v17 = _swiftEmptyArrayStorage;
    v51 = v0;
    while (1)
    {
      if (v52)
      {
        v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v15 >= *(v16 + 16))
        {
          goto LABEL_18;
        }

        v19 = *&v0[v15 + 4];
      }

      v20 = v19;
      v21 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      v55 = v19;
      sub_10066B854(&v55, &v53);

      v7 = v54;
      if (v54)
      {
        v22 = v53;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v17 = sub_10009BCC8(0, *(v17 + 2) + 1, 1, v17);
        }

        v24 = *(v17 + 2);
        v23 = *(v17 + 3);
        if (v24 >= v23 >> 1)
        {
          v17 = sub_10009BCC8((v23 > 1), v24 + 1, 1, v17);
        }

        *(v17 + 2) = v24 + 1;
        v18 = &v17[16 * v24];
        *(v18 + 4) = v22;
        *(v18 + 5) = v7;
        v0 = v51;
      }

      ++v15;
      if (v21 == v14)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    swift_once();
  }

  v14 = _CocoaArrayWrapper.endIndex.getter();
  v41 = v7;
  if (v14)
  {
    goto LABEL_4;
  }

LABEL_21:
  v17 = _swiftEmptyArrayStorage;
LABEL_22:

  v25 = *(v17 + 2);
  v26 = v25 - 1;
  if ((v25 - 1) >= 2)
  {
    if (v25)
    {
      String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v34._countAndFlagsBits = 0;
      v34._object = 0xE000000000000000;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v34);
      if (*(v17 + 2))
      {
        v35 = *(v17 + 4);
        v36 = *(v17 + 5);

        v37._countAndFlagsBits = v35;
        v37._object = v36;
        String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v37);

        v38._countAndFlagsBits = 2106912;
        v38._object = 0xE300000000000000;
        String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v38);
        v53 = v26;
        String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
        v39._countAndFlagsBits = 0x65726F6D20;
        v39._object = 0xE500000000000000;
        String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v39);
        String.LocalizationValue.init(stringInterpolation:)();
        static Locale.current.getter();
        String.init(localized:table:bundle:locale:comment:)();
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
    }
  }

  else
  {
    v55 = v17;
    v27 = v44;
    v28 = v42;
    (*(v44 + 104))(v42, enum case for ListFormatStyle.ListType.and<A, B>(_:), v50);
    v30 = v48;
    v29 = v49;
    v31 = v45;
    (*(v48 + 104))(v45, enum case for ListFormatStyle.Width.narrow<A, B>(_:), v49);
    sub_1000F24EC(&qword_100AD60A0);
    sub_10000B58C(&qword_100AD38C8, &qword_100AD60A0);
    v32 = v43;
    static FormatStyle.list<A>(type:width:)();
    (*(v30 + 8))(v31, v29);
    (*(v27 + 8))(v28, v50);
    sub_10000B58C(&unk_100AEBEB0, &qword_100AD38C0);
    v33 = v47;
    Sequence.formatted<A>(_:)();
    (*(v46 + 8))(v32, v33);
  }
}

uint64_t sub_1006664F0()
{
  v1 = sub_1000F24EC(&unk_100AEBE00);
  __chkstk_darwin(v1 - 8);
  v3 = &v20 - v2;
  v4 = type metadata accessor for UserEngagement.StateSnapshot();
  v5 = *(v4 - 1);
  __chkstk_darwin(v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC7Journal20CanvasViewController_initialJournalState;
  swift_beginAccess();
  sub_1000082B4(v0 + v8, v3, &unk_100AEBE00);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_100004F84(v3, &unk_100AEBE00);
    return 0;
  }

  sub_10067304C(v3, v7, type metadata accessor for UserEngagement.StateSnapshot);
  v10 = *(v0 + OBJC_IVAR____TtC7Journal20CanvasViewController_journalEntry);
  if ((sub_10005AAB0(1) & 1) == 0 && (sub_10005AAB0(16) & 1) == 0)
  {
    sub_1006730B4(v7, type metadata accessor for UserEngagement.StateSnapshot);
    return 4;
  }

  if (v7[v4[7]] == 1)
  {
    sub_1006730B4(v7, type metadata accessor for UserEngagement.StateSnapshot);
    return 1;
  }

  v11 = &v7[v4[5]];
  v13 = *v11;
  v12 = v11[1];

  v14 = sub_100081D68();
  if (!v15)
  {

    goto LABEL_16;
  }

  if (v13 == v14 && v15 == v12)
  {

    goto LABEL_18;
  }

  v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v17 & 1) == 0)
  {
LABEL_16:
    sub_1006730B4(v7, type metadata accessor for UserEngagement.StateSnapshot);
    return 2;
  }

LABEL_18:
  v18 = sub_1001D7928(v10);
  v19 = sub_1007ED094(v18, *&v7[v4[6]]);

  sub_1006730B4(v7, type metadata accessor for UserEngagement.StateSnapshot);
  if (v19)
  {
    return 0;
  }

  else
  {
    return 2;
  }
}

uint64_t sub_100666804(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000F24EC(&qword_100AEBF10);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v17 - v5;
  v7 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v11 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  (*(v4 + 16))(v6, a2, v3);
  type metadata accessor for MainActor();

  v13 = static MainActor.shared.getter();
  v14 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v15 = swift_allocObject();
  *(v15 + 2) = v13;
  *(v15 + 3) = &protocol witness table for MainActor;
  *(v15 + 4) = v11;
  (*(v4 + 32))(&v15[v14], v6, v3);

  sub_1003E9628(0, 0, v9, &unk_100961298, v15);
}

uint64_t sub_100666A60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v6 = type metadata accessor for JournalAppVersion();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[10] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100666B54, v8, v7);
}

uint64_t sub_100666B54()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    if ([Strong isEditing])
    {
      sub_1000F24EC(&qword_100AEBF10);
      NSKeyValueObservedChange.oldValue.getter();
      if (*(v0 + 90) != 1)
      {
        v3 = *(v0 + 88);
        NSKeyValueObservedChange.newValue.getter();
        if (*(v0 + 94) != 1)
        {
          v4 = *(v0 + 92);
          if (v3 != v4 && (v2[OBJC_IVAR____TtC7Journal20CanvasViewController_hasShownUnsupportedPreLuckDevicesDialog] & 1) == 0)
          {
            v17 = OBJC_IVAR____TtC7Journal20CanvasViewController_hasShownUnsupportedPreLuckDevicesDialog;
            v6 = *(v0 + 64);
            v5 = *(v0 + 72);
            v7 = *(v0 + 56);
            v19 = enum case for JournalAppVersion.fall2025(_:);
            v18 = *(v6 + 104);
            v18(v5);
            v8 = JournalAppVersion.rawValue.getter();
            v9 = *(v6 + 8);
            v9(v5, v7);
            if (v3 < v8)
            {
              v10 = *(v0 + 72);
              v11 = *(v0 + 56);
              (v18)(v10, v19, v11);
              v12 = JournalAppVersion.rawValue.getter();
              v9(v10, v11);
              if (v4 >= v12)
              {
                v13 = *&v2[OBJC_IVAR____TtC7Journal20CanvasViewController_unsupportedPreLuckDevicesDialogPresentingController];
                if (v13)
                {
                  v14 = v13;
                  sub_100416EF4(v14);

                  v2[v17] = 1;
                }
              }
            }
          }
        }
      }
    }
  }

  v15 = *(v0 + 8);

  return v15();
}

void sub_100666DAC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_100666E10()
{
  if (!qword_100AEBC20)
  {
    sub_1000065A8(255, &qword_100AEBC28);
    v0 = type metadata accessor for UIViewController.ViewLoading();
    if (!v1)
    {
      atomic_store(v0, &qword_100AEBC20);
    }
  }
}

uint64_t sub_100666E78(void (*a1)(double *))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = sub_100666F50();

    v5 = [(objc_class *)v4 children];
    sub_1000065A8(0, &unk_100ADC630);
    v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v6 = _swiftEmptyArrayStorage;
  }

  a1(v6);
}

Class sub_100666F50()
{
  v1 = v0;
  v82 = type metadata accessor for ColorResource();
  v81 = *(v82 - 8);
  __chkstk_darwin(v82);
  v80 = &v80 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = type metadata accessor for JournalFeatureFlags();
  v97 = *(v95 - 8);
  __chkstk_darwin(v95);
  v94 = &v80 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v80 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v80 - v9;
  v11 = type metadata accessor for Locale();
  __chkstk_darwin(v11 - 8);
  v12 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v12 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v98 = String.init(localized:defaultValue:table:bundle:locale:comment:)();
  v96 = v13;
  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  v14 = v100;
  swift_getKeyPath();
  v100 = v14;
  sub_100670674(&qword_100AEBE20, type metadata accessor for CanvasBarItemCoordinator);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v15 = OBJC_IVAR____TtC7Journal24CanvasBarItemCoordinator__titleDate;
  swift_beginAccess();
  (*(v5 + 16))(v10, v14 + v15, v4);

  static Date.now.getter();
  sub_10048FF40(2, 0, v7);
  v16 = *(v5 + 8);
  v16(v7, v4);
  v16(v10, v4);
  v17 = String._bridgeToObjectiveC()();
  v18 = objc_opt_self();
  v19 = [v18 systemImageNamed:v17];

  [v1 isEditing];
  v20 = sub_1000065A8(0, &qword_100AD4420);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v96 = v20;
  v91 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v90 = sub_1000F24EC(&unk_100AD4780);
  preferredElementSize = swift_allocObject();
  v84 = xmmword_100941D50;
  *(preferredElementSize + 16) = xmmword_100941D50;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v93 = String.init(localized:defaultValue:table:bundle:locale:comment:)();
  isa = v22;
  v98 = v1;
  sub_100665DBC();
  v85 = v23;
  v24 = String._bridgeToObjectiveC()();
  v92 = v18;
  v25 = [v18 systemImageNamed:v24];

  if (qword_100AD0A58 != -1)
  {
    swift_once();
  }

  v26 = v97;
  v28 = v94;
  v27 = v95;
  v87 = *(v97 + 104);
  v88 = v97 + 104;
  v87(v94, enum case for JournalFeatureFlags.multipleJournals(_:), v95);
  v29 = JournalFeatureFlags.isEnabled.getter();
  v86 = *(v26 + 8);
  v86(v28, v27);
  v97 = v26 + 8;
  if (v29)
  {
    sub_100771E70();
  }

  v30 = sub_1000065A8(0, &unk_100AD4D00);
  swift_allocObject();
  v31 = v98;
  swift_unknownObjectWeakInit();
  *(preferredElementSize + 32) = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v32._countAndFlagsBits = 0;
  v32._object = 0xE000000000000000;
  v101.value.super.isa = 0;
  v101.is_nil = 0;
  v93 = v30;
  v33.super.super.isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v32, 0, v101, 1, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, v77).super.super.isa;
  v34 = *&v31[OBJC_IVAR____TtC7Journal20CanvasViewController_journalEntry];
  v35 = OBJC_IVAR____TtC7Journal14EntryViewModel_bookmarked;
  isa = v33.super.super.isa;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  if (*(v34 + v35) != 1)
  {
    v40 = String._bridgeToObjectiveC()();
    v42 = [v92 systemImageNamed:v40];
LABEL_11:

    goto LABEL_12;
  }

  v36 = String._bridgeToObjectiveC()();
  v37 = [v92 systemImageNamed:v36];

  if (v37)
  {
    sub_1000065A8(0, &qword_100AD4C70);
    if (qword_100AD0CA0 != -1)
    {
      swift_once();
    }

    v38 = v82;
    v39 = sub_10000617C(v82, qword_100B314F0);
    (*(v81 + 16))(v80, v39, v38);
    v40 = UIColor.init(resource:)();
    v41 = [v37 imageWithTintColor:v40 renderingMode:1];

    goto LABEL_11;
  }

LABEL_12:
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v85 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v83 = v34;
  v43 = String._bridgeToObjectiveC()();
  v44 = v92;
  v45 = [v92 systemImageNamed:v43];

  [v31 isEditing];
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v46 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v47 = String._bridgeToObjectiveC()();
  v48 = [v44 systemImageNamed:v47];

  swift_allocObject();
  swift_unknownObjectWeakInit();
  v49 = v98;
  v50 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v51 = String._bridgeToObjectiveC()();
  v52 = [v44 systemImageNamed:v51];

  swift_allocObject();
  swift_unknownObjectWeakInit();
  v53 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v54 = swift_allocObject();
  *(v54 + 16) = xmmword_100941830;
  v55 = v85;
  *(v54 + 32) = v85;
  *(v54 + 40) = v46;
  *(v54 + 48) = v50;
  *(v54 + 56) = v53;
  v96 = v55;
  v56 = v46;
  v57 = v50;
  v58 = v53;
  v59._countAndFlagsBits = 0;
  v59._object = 0xE000000000000000;
  v102.value.super.isa = 0;
  v102.is_nil = 0;
  v60.super.super.isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v59, 0, v102, 1, 0xFFFFFFFFFFFFFFFFLL, v54, v78.super.super.isa).super.super.isa;
  v61 = v94;
  v62 = v95;
  v87(v94, enum case for JournalFeatureFlags.debug(_:), v95);
  LOBYTE(v53) = JournalFeatureFlags.isEnabled.getter();
  v86(v61, v62);
  if (v53)
  {
    v63 = swift_allocObject();
    *(v63 + 16) = v84;
    *(v63 + 32) = sub_100751090(v83, _swiftEmptyArrayStorage, v49);
  }

  else
  {
    v63 = _swiftEmptyArrayStorage;
  }

  v64 = isa;
  v65 = swift_allocObject();
  *(v65 + 16) = xmmword_100941D70;
  v66 = v91;
  *(v65 + 32) = v91;
  *(v65 + 40) = v64;
  *(v65 + 48) = v60;
  if (v63 >> 62)
  {
    sub_1000065A8(0, &unk_100ADC630);
    v74 = v66;
    v75 = v64;
    v76 = v60.super.super.isa;

    v70 = _bridgeCocoaArray<A>(_:)();
  }

  else
  {
    v67 = v66;
    v68 = v64;
    v69 = v60.super.super.isa;

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    sub_1000065A8(0, &unk_100ADC630);
    v70 = v63;
  }

  v99 = v65;
  sub_1006AD920(v70);
  v71._countAndFlagsBits = 0;
  v71._object = 0xE000000000000000;
  v103.value.super.isa = 0;
  v103.is_nil = 0;
  v72 = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v71, 0, v103, 0, 0xFFFFFFFFFFFFFFFFLL, v99, v79.super.super.isa).super.super.isa;

  return v72;
}

uint64_t sub_100667FB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  type metadata accessor for MainActor();
  v5[9] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100668050, v7, v6);
}

uint64_t sub_100668050()
{

  Notification.object.getter();
  if (!*(v0 + 40))
  {
    sub_100004F84(v0 + 16, &qword_100AD13D0);
    goto LABEL_17;
  }

  sub_1000065A8(0, &qword_100AEBDF8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_17;
  }

  v1 = *(v0 + 48);
  v2 = sub_100658B00();
  v3 = [v2 undoManager];

  if (v3 && (v4 = v1, v5 = static NSObject.== infix(_:_:)(), v4, v3, (v5 & 1) != 0))
  {
  }

  else
  {
    v6 = sub_100658670();
    v7 = [v6 undoManager];

    if (!v7)
    {

      goto LABEL_16;
    }

    v8 = static NSObject.== infix(_:_:)();

    if ((v8 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  v9 = Notification.name.getter();
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;
  if (v10 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v12 == v13)
  {
  }

  else
  {
    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v14 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  v15 = *(*(*(v0 + 64) + OBJC_IVAR____TtC7Journal20CanvasViewController_journalEntry) + OBJC_IVAR____TtC7Journal14EntryViewModel_undoManager);
  if (v15)
  {
    v16 = v15;
    sub_10012AA98();

    goto LABEL_17;
  }

LABEL_16:

LABEL_17:
  v17 = *(v0 + 8);

  return v17();
}

id sub_100668518(void *a1, uint64_t a2, void *a3)
{
  v5 = [a1 traitCollection];
  v6 = sub_10002E3AC();

  result = [a1 view];
  if (result)
  {
    v8 = result;
    [result setDirectionalLayoutMargins:{0.0, v12, 4.0, v13}];

    v9 = v14;
    v10 = v15;
    if (v15)
    {
      v9 = 0.0;
    }

    [a3 setConstant:v9];

    return [a3 setActive:v10 ^ 1u];
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10066860C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[20] = a4;
  sub_1000F24EC(&qword_100AD5170);
  v4[21] = swift_task_alloc();
  v5 = type metadata accessor for AssetPlacement();
  v4[22] = v5;
  v6 = *(v5 - 8);
  v4[23] = v6;
  v4[24] = *(v6 + 64);
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  sub_1000F24EC(&unk_100AEED30);
  v4[27] = swift_task_alloc();
  sub_1000F24EC(&unk_100AD4790);
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();
  v4[30] = swift_task_alloc();
  v4[31] = swift_task_alloc();
  v4[32] = swift_task_alloc();
  v4[33] = swift_task_alloc();
  v7 = type metadata accessor for VisitAssetMetadata();
  v4[34] = v7;
  v8 = *(v7 - 8);
  v4[35] = v8;
  v4[36] = *(v8 + 64);
  v4[37] = swift_task_alloc();
  v4[38] = swift_task_alloc();
  v4[39] = swift_task_alloc();
  v9 = type metadata accessor for CLLocationUpdate();
  v4[40] = v9;
  v4[41] = *(v9 - 8);
  v4[42] = swift_task_alloc();
  sub_1000F24EC(&unk_100AEE0C0);
  v4[43] = swift_task_alloc();
  v10 = type metadata accessor for CLLocationUpdate.LiveConfiguration();
  v4[44] = v10;
  v4[45] = *(v10 - 8);
  v4[46] = swift_task_alloc();
  v11 = type metadata accessor for CLLocationUpdate.Updates();
  v4[47] = v11;
  v4[48] = *(v11 - 8);
  v4[49] = swift_task_alloc();
  v12 = type metadata accessor for CLLocationUpdate.Updates.Iterator();
  v4[50] = v12;
  v4[51] = *(v12 - 8);
  v4[52] = swift_task_alloc();
  v4[53] = type metadata accessor for MainActor();
  v4[54] = static MainActor.shared.getter();
  v14 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[55] = v14;
  v4[56] = v13;

  return _swift_task_switch(sub_100668A20, v14, v13);
}

uint64_t sub_100668A20()
{
  v2 = v0[48];
  v1 = v0[49];
  v4 = v0[46];
  v3 = v0[47];
  v5 = v0[44];
  v6 = v0[45];
  (*(v6 + 104))(v4, enum case for CLLocationUpdate.LiveConfiguration.default(_:), v5);
  static CLLocationUpdate.liveUpdates(_:)();
  (*(v6 + 8))(v4, v5);
  CLLocationUpdate.Updates.makeAsyncIterator()();
  (*(v2 + 8))(v1, v3);
  v0[57] = static MainActor.shared.getter();
  v7 = sub_100670674(&unk_100AEBE40, &type metadata accessor for CLLocationUpdate.Updates.Iterator);
  v8 = swift_task_alloc();
  v0[58] = v8;
  *v8 = v0;
  v8[1] = sub_100668BA0;
  v9 = v0[50];
  v10 = v0[43];

  return dispatch thunk of AsyncIteratorProtocol.next()(v10, v9, v7);
}

uint64_t sub_100668BA0()
{
  v2 = *v1;
  *(*v1 + 472) = v0;

  v3 = *(v2 + 456);
  if (v0)
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = dispatch thunk of Actor.unownedExecutor.getter();
      v6 = v5;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_1006695A4;
  }

  else
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = dispatch thunk of Actor.unownedExecutor.getter();
      v6 = v8;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_100668D38;
  }

  return _swift_task_switch(v7, v4, v6);
}

uint64_t sub_100668D38()
{

  v1 = *(v0 + 440);
  v2 = *(v0 + 448);

  return _swift_task_switch(sub_100668D9C, v1, v2);
}

uint64_t sub_100668D9C()
{
  v1 = v0[43];
  v2 = v0[40];
  v3 = v0[41];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(v0[51] + 8))(v0[52], v0[50]);
LABEL_3:

    v4 = v0[1];

    return v4();
  }

  (*(v3 + 32))(v0[42], v1, v2);
  v6 = CLLocationUpdate.location.getter();
  v0[60] = v6;
  if (v6)
  {
    v7 = v6;
    v8 = [objc_allocWithZone(MKReverseGeocodingRequest) initWithLocation:v6];
    v0[61] = v8;
    if (!v8)
    {
      v40 = v0[50];
      v41 = v0[52];
      v38 = v0[42];
      v39 = v0[51];
      v36 = v0[41];
      v37 = v0[40];
      v42 = v0[39];
      v35 = v0[36];
      v31 = v0[35];
      v32 = v0[38];
      v15 = v0[33];
      v17 = v0[31];
      v16 = v0[32];
      v18 = v0[27];
      v44 = v0[26];
      v45 = v0[34];
      v46 = v0[25];
      v34 = v0[24];
      v19 = v0[23];
      v43 = v0[22];
      v47 = v0[21];
      v33 = v0[20];

      static Date.now.getter();
      v20 = type metadata accessor for Date();
      v21 = *(*(v20 - 8) + 56);
      v21(v15, 0, 1, v20);
      v21(v16, 1, 1, v20);
      static Date.now.getter();
      v21(v17, 0, 1, v20);
      [v7 coordinate];
      [v7 coordinate];
      v22 = enum case for AssetSource.automatic(_:);
      v23 = type metadata accessor for AssetSource();
      v24 = *(v23 - 8);
      (*(v24 + 104))(v18, v22, v23);
      (*(v24 + 56))(v18, 0, 1, v23);
      VisitAssetMetadata.init(placeName:city:typeOfPlace:visitStartTime:visitEndTime:createdDate:latitude:longitude:styleData:mapItemData:isWork:confidenceLevel:horizontalAccuracy:assetSource:)();
      (*(v19 + 104))(v44, enum case for AssetPlacement.hidden(_:), v43);
      v25 = type metadata accessor for TaskPriority();
      (*(*(v25 - 8) + 56))(v47, 1, 1, v25);
      (*(v31 + 16))(v32, v42, v45);
      (*(v19 + 16))(v46, v44, v43);
      v26 = v33;
      v27 = static MainActor.shared.getter();
      v28 = (*(v31 + 80) + 40) & ~*(v31 + 80);
      v29 = (v35 + *(v19 + 80) + v28) & ~*(v19 + 80);
      v30 = swift_allocObject();
      *(v30 + 2) = v27;
      *(v30 + 3) = &protocol witness table for MainActor;
      *(v30 + 4) = v26;
      (*(v31 + 32))(&v30[v28], v32, v45);
      (*(v19 + 32))(&v30[v29], v46, v43);
      *&v30[v29 + v34] = 0;
      sub_1003E9628(0, 0, v47, &unk_100953068, v30);

      (*(v19 + 8))(v44, v43);
      (*(v31 + 8))(v42, v45);
      (*(v36 + 8))(v38, v37);
      (*(v39 + 8))(v41, v40);
      *&v26[OBJC_IVAR____TtC7Journal20CanvasViewController_locationUpdatesTask] = 0;
      goto LABEL_3;
    }

    v9 = v8;
    v0[2] = v0;
    v0[7] = v0 + 19;
    v0[3] = sub_1006698E4;
    v10 = swift_continuation_init();
    v0[17] = sub_1000F24EC(&unk_100AEBE50);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_10064D40C;
    v0[13] = &unk_100A76F08;
    v0[14] = v10;
    [v9 getMapItemsWithCompletionHandler:v0 + 10];

    return _swift_continuation_await(v0 + 2);
  }

  else
  {
    (*(v0[41] + 8))(v0[42], v0[40]);
    v0[57] = static MainActor.shared.getter();
    v11 = sub_100670674(&unk_100AEBE40, &type metadata accessor for CLLocationUpdate.Updates.Iterator);
    v12 = swift_task_alloc();
    v0[58] = v12;
    *v12 = v0;
    v12[1] = sub_100668BA0;
    v13 = v0[50];
    v14 = v0[43];

    return dispatch thunk of AsyncIteratorProtocol.next()(v14, v13, v11);
  }
}

uint64_t sub_1006695A4()
{
  v0[18] = v0[59];
  sub_1000F24EC(&qword_100AD5BC0);
  swift_willThrowTypedImpl();

  v1 = v0[55];
  v2 = v0[56];

  return _swift_task_switch(sub_100669640, v1, v2);
}

uint64_t sub_100669640()
{
  v2 = v0[51];
  v1 = v0[52];
  v3 = v0[50];

  (*(v2 + 8))(v1, v3);
  if (qword_100AD00C0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000617C(v4, qword_100AEBAE0);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v5, v6, "error occurred while trying to automatically add current location: %@", v7, 0xCu);
    sub_100004F84(v8, &unk_100AD4BB0);
  }

  else
  {
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_1006698E4()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 496) = v2;
  v3 = *(v1 + 448);
  v4 = *(v1 + 440);
  if (v2)
  {
    v5 = sub_10066A300;
  }

  else
  {
    v5 = sub_100669A14;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100669A14()
{

  v1 = v0[19];
  if (v1 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_3;
    }
  }

  else if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    if ((v1 & 0xC000000000000001) != 0)
    {
      v2 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_6:
      v3 = v2;

      v4 = [v3 addressRepresentations];
      v5 = [v3 name];
      if (v5)
      {
        v6 = v5;
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        if (!v4)
        {
LABEL_12:
          v9 = [v3 _firstLocalizedCategoryName];
          v62 = v4;
          if (v9 || (v9 = [v3 pointOfInterestCategory]) != 0)
          {
            v10 = v9;
            static String._unconditionallyBridgeFromObjectiveC(_:)();
          }

          v12 = v0[29];
          v11 = v0[30];
          v13 = v0[28];
          static Date.now.getter();
          v14 = type metadata accessor for Date();
          v15 = *(*(v14 - 8) + 56);
          v15(v11, 0, 1, v14);
          v15(v12, 1, 1, v14);
          static Date.now.getter();
          v15(v13, 0, 1, v14);
          [v3 _coordinate];
          [v3 _coordinate];
          v16 = [v3 _styleAttributes];
          if (v16)
          {
            v17 = v16;
            sub_1000065A8(0, &qword_100AD5A80);
            NSCoding<>.toData.getter();
          }

          v54 = v0[61];
          v55 = v0[60];
          v60 = v0[50];
          v61 = v0[52];
          v58 = v0[42];
          v59 = v0[51];
          v56 = v0[41];
          v57 = v0[40];
          v65 = v0[39];
          v63 = v0[37];
          v53 = v0[36];
          v18 = v0[34];
          v48 = v0[35];
          v19 = v0[27];
          v64 = v0[26];
          v49 = v0[25];
          v20 = v0[23];
          v52 = v0[24];
          v21 = v0[22];
          v66 = v0[21];
          v50 = v0[20];
          sub_1000065A8(0, &qword_100AD5A90);
          NSCoding<>.toData.getter();
          v22 = [v3 location];
          [v22 horizontalAccuracy];

          v23 = enum case for AssetSource.automatic(_:);
          v24 = type metadata accessor for AssetSource();
          v51 = v3;
          v25 = *(v24 - 8);
          (*(v25 + 104))(v19, v23, v24);
          (*(v25 + 56))(v19, 0, 1, v24);
          VisitAssetMetadata.init(placeName:city:typeOfPlace:visitStartTime:visitEndTime:createdDate:latitude:longitude:styleData:mapItemData:isWork:confidenceLevel:horizontalAccuracy:assetSource:)();
          (*(v20 + 104))(v64, enum case for AssetPlacement.hidden(_:), v21);
          v26 = type metadata accessor for TaskPriority();
          (*(*(v26 - 8) + 56))(v66, 1, 1, v26);
          (*(v48 + 16))(v65, v63, v18);
          v27 = v20;
          v47 = v20;
          (*(v20 + 16))(v49, v64, v21);
          v28 = v50;
          v29 = static MainActor.shared.getter();
          v30 = (*(v48 + 80) + 40) & ~*(v48 + 80);
          v31 = (v53 + *(v27 + 80) + v30) & ~*(v27 + 80);
          v32 = swift_allocObject();
          *(v32 + 2) = v29;
          *(v32 + 3) = &protocol witness table for MainActor;
          *(v32 + 4) = v28;
          (*(v48 + 32))(&v32[v30], v65, v18);
          (*(v47 + 32))(&v32[v31], v49, v21);
          *&v32[v31 + v52] = 0;
          sub_1003E9628(0, 0, v66, &unk_100961098, v32);

          (*(v47 + 8))(v64, v21);
          (*(v48 + 8))(v63, v18);
          (*(v56 + 8))(v58, v57);
          (*(v59 + 8))(v61, v60);
          *&v28[OBJC_IVAR____TtC7Journal20CanvasViewController_locationUpdatesTask] = 0;

          goto LABEL_25;
        }
      }

      else if (!v4)
      {
        goto LABEL_12;
      }

      v7 = [v4 cityName];
      if (v7)
      {
        v8 = v7;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      goto LABEL_12;
    }

    if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v2 = *(v1 + 32);
      goto LABEL_6;
    }

    __break(1u);
    goto LABEL_30;
  }

  if (qword_100AD00C0 != -1)
  {
LABEL_30:
    swift_once();
  }

  v33 = type metadata accessor for Logger();
  sub_10000617C(v33, qword_100AEBAE0);
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.error.getter();
  v36 = os_log_type_enabled(v34, v35);
  v38 = v0[60];
  v37 = v0[61];
  v40 = v0[51];
  v39 = v0[52];
  v67 = v0[50];
  v42 = v0[41];
  v41 = v0[42];
  v43 = v0[40];
  if (v36)
  {
    v44 = swift_slowAlloc();
    *v44 = 0;
    _os_log_impl(&_mh_execute_header, v34, v35, "Failed to get any map items for the reverse geocoding request!", v44, 2u);
  }

  (*(v42 + 8))(v41, v43);
  (*(v40 + 8))(v39, v67);
LABEL_25:

  v45 = v0[1];

  return v45();
}

uint64_t sub_10066A300()
{
  v1 = v0[61];
  v2 = v0[60];
  v4 = v0[51];
  v3 = v0[52];
  v5 = v0[50];
  v7 = v0[41];
  v6 = v0[42];
  v8 = v0[40];

  swift_willThrow();

  (*(v7 + 8))(v6, v8);
  (*(v4 + 8))(v3, v5);
  if (qword_100AD00C0 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_10000617C(v9, qword_100AEBAE0);
  swift_errorRetain();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    swift_errorRetain();
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 4) = v14;
    *v13 = v14;
    _os_log_impl(&_mh_execute_header, v10, v11, "error occurred while trying to automatically add current location: %@", v12, 0xCu);
    sub_100004F84(v13, &unk_100AD4BB0);
  }

  else
  {
  }

  v15 = v0[1];

  return v15();
}

id sub_10066A5D8(char *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v9 = *&a1[OBJC_IVAR____TtC7Journal20CanvasViewController_scrollContentView];
  v10 = [a1 traitCollection];
  v11 = [v10 userInterfaceIdiom];

  v12 = 16.0;
  v13 = 16.0;
  if (v11 != 5)
  {
    v14 = [a1 traitCollection];
    v15 = [v14 horizontalSizeClass];

    if (v15 == 2)
    {
      v13 = 20.0;
    }

    else
    {
      v13 = 16.0;
    }
  }

  v16 = [a1 traitCollection];
  v17 = [v16 userInterfaceIdiom];

  if (v17 != 5)
  {
    v18 = [a1 traitCollection];
    v19 = [v18 horizontalSizeClass];

    if (v19 == 2)
    {
      v12 = 20.0;
    }

    else
    {
      v12 = 16.0;
    }
  }

  [v9 setLayoutMargins:{0.0, v13, 0.0, v12}];
  v20 = sub_100658670();
  v21 = [a1 traitCollection];
  v22 = [v21 userInterfaceIdiom];

  v23 = 16.0;
  v24 = 16.0;
  if (v22 != 5)
  {
    v25 = [a1 traitCollection];
    v26 = [v25 horizontalSizeClass];

    if (v26 == 2)
    {
      v24 = 20.0;
    }

    else
    {
      v24 = 16.0;
    }
  }

  v27 = [a1 traitCollection];
  v28 = [v27 userInterfaceIdiom];

  if (v28 != 5)
  {
    v29 = [a1 traitCollection];
    v30 = [v29 horizontalSizeClass];

    if (v30 == 2)
    {
      v23 = 20.0;
    }

    else
    {
      v23 = 16.0;
    }
  }

  [v20 setTextContainerInset:{0.0, v24, 0.0, v23}];

  v31 = [a1 traitCollection];
  v32 = [v31 horizontalSizeClass];

  if (v32 == 2)
  {
    v33 = 6.0;
  }

  else
  {
    v33 = 4.0;
  }

  [a3 setConstant:v33];
  v34 = [a1 traitCollection];
  v35 = [v34 horizontalSizeClass];

  if (v35 == 2)
  {
    v36 = 6.0;
  }

  else
  {
    v36 = 4.0;
  }

  [a4 setConstant:v36];
  v37 = [a1 traitCollection];
  v38 = [v37 horizontalSizeClass];

  if (v38 == 2)
  {
    v39 = 6.0;
  }

  else
  {
    v39 = 4.0;
  }

  return [a5 setConstant:v39];
}

uint64_t sub_10066A978(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v5[4] = type metadata accessor for MainActor();
  v5[5] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[6] = v7;
  v5[7] = v6;

  return _swift_task_switch(sub_10066AA14, v7, v6);
}

uint64_t sub_10066AA14()
{
  if (sub_10005AAB0(1) & 1) != 0 || (sub_10005AAB0(16) & 1) != 0 || (sub_10005AAB0(2))
  {
    v1 = v0[3];
    v2 = v0[2];
    sub_1000F24EC(&unk_100AD4780);
    v3 = swift_allocObject();
    v0[8] = v3;
    *(v3 + 16) = xmmword_100941D50;
    *(v3 + 32) = v2;

    v4 = [v1 navigationItem];
    v0[9] = [v4 overflowPresentationSource];

    v0[10] = static MainActor.shared.getter();
    v6 = dispatch thunk of Actor.unownedExecutor.getter();
    v0[11] = v6;
    v0[12] = v5;

    return _swift_task_switch(sub_10066ABC0, v6, v5);
  }

  else
  {
    v7 = swift_task_alloc();
    v0[18] = v7;
    *v7 = v0;
    v7[1] = sub_10066B314;

    return sub_1004F7E48(0);
  }
}

uint64_t sub_10066ABC0()
{
  v1 = [objc_opt_self() standardUserDefaults];
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 BOOLForKey:v2];

  if (v3)
  {

    swift_unknownObjectRelease();

    v4 = swift_task_alloc();
    v0[16] = v4;
    *v4 = v0;
    v4[1] = sub_10066B0B0;

    return sub_1004F7E48(0);
  }

  else
  {
    v7 = v0[8];
    v6 = v0[9];
    v8 = v0[3];
    v9 = static MainActor.shared.getter();
    v0[13] = v9;
    v10 = swift_task_alloc();
    v0[14] = v10;
    v10[2] = v7;
    v10[3] = v8;
    v10[4] = 0;
    v10[5] = v6;
    v11 = swift_task_alloc();
    v0[15] = v11;
    *v11 = v0;
    v11[1] = sub_10066ADE0;

    return withCheckedContinuation<A>(isolation:function:_:)(v0 + 20, v9, &protocol witness table for MainActor, 0xD000000000000052, 0x80000001008E0D50, sub_10015CCBC, v10, &type metadata for Bool);
  }
}

uint64_t sub_10066ADE0()
{
  v1 = *v0;

  v2 = *(v1 + 96);
  v3 = *(v1 + 88);

  return _swift_task_switch(sub_10066AF64, v3, v2);
}

uint64_t sub_10066AF64()
{
  swift_unknownObjectRelease();

  *(v0 + 161) = *(v0 + 160);
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return _swift_task_switch(sub_10066AFD8, v1, v2);
}

uint64_t sub_10066AFD8()
{
  if (*(v0 + 161) == 1)
  {
    v1 = swift_task_alloc();
    *(v0 + 128) = v1;
    *v1 = v0;
    v1[1] = sub_10066B0B0;

    return sub_1004F7E48(0);
  }

  else
  {

    v3 = *(v0 + 8);

    return v3();
  }
}

uint64_t sub_10066B0B0()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 136) = v3;
  *v3 = v2;
  v3[1] = sub_10066B1F4;

  return sub_100664604(1);
}

uint64_t sub_10066B1F4()
{
  v1 = *v0;

  v2 = *(v1 + 56);
  v3 = *(v1 + 48);

  return _swift_task_switch(sub_100673E1C, v3, v2);
}

uint64_t sub_10066B314()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 152) = v3;
  *v3 = v2;
  v3[1] = sub_10066B458;

  return sub_100664604(1);
}

uint64_t sub_10066B458()
{
  v1 = *v0;

  v2 = *(v1 + 56);
  v3 = *(v1 + 48);

  return _swift_task_switch(sub_10063D208, v3, v2);
}

void sub_10066B578(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for CanvasContentInputType();
  *&v5 = __chkstk_darwin(v4).n128_u64[0];
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (([v1 isEditing] & 1) == 0)
  {
    v8 = *(*&v1[OBJC_IVAR____TtC7Journal20CanvasViewController_assetsGridView] + OBJC_IVAR____TtC7Journal14CanvasGridView_gridCollectionView);
    if (v8)
    {
      v9 = v8;
      sub_1006018C4();
    }
  }

  v10 = *&v2[OBJC_IVAR____TtC7Journal20CanvasViewController_bundleTitleHeightConstraint];
  if (v10 && ([v10 isActive] & 1) != 0 || (v11 = sub_100658670(), objc_msgSend(a1, "locationInView:", v11), v13 = v12, v11, v13 >= 0.0))
  {
    v14 = sub_100658B00();
    [a1 locationInView:v14];
    v16 = v15;

    if (v16 >= 0.0)
    {
      v18 = OBJC_IVAR____TtC7Journal20CanvasViewController____lazy_storage___textView;
      [*&v2[OBJC_IVAR____TtC7Journal20CanvasViewController____lazy_storage___textView] frame];
      if (CGRectGetHeight(v23) >= v16)
      {
        return;
      }

      v19 = [*&v2[v18] text];
      if (!v19)
      {
        __break(1u);
        return;
      }

      v20 = v19;
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v21 = String.count.getter();

      v17 = v21;
    }

    else
    {
      v17 = 0;
    }

    [*&v2[OBJC_IVAR____TtC7Journal20CanvasViewController____lazy_storage___textView] setSelectedRange:{v17, 0}];
    *v7 = 1;
  }

  else
  {
    [*&v2[OBJC_IVAR____TtC7Journal20CanvasViewController____lazy_storage___bundleTitleView] setSelectedRange:{0, 0}];
    *v7 = 0;
  }

  swift_storeEnumTagMultiPayload();
  memset(v22, 0, sizeof(v22));
  sub_1003B5E4C(v7, v22);
  sub_100004F84(v22, &qword_100AD13D0);
  sub_1006730B4(v7, type metadata accessor for CanvasContentInputType);
}

uint64_t sub_10066B854@<X0>(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v40 = a2;
  v3 = type metadata accessor for Locale();
  __chkstk_darwin(v3 - 8);
  v37 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v5 - 8);
  v36 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v35 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000F24EC(&unk_100AEEE20);
  __chkstk_darwin(v10);
  v12 = &v34 - v11;
  v13 = sub_1000F24EC(&qword_100AD1420);
  __chkstk_darwin(v13 - 8);
  v39 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v34 - v16;
  *&v19 = __chkstk_darwin(v18).n128_u64[0];
  v21 = &v34 - v20;
  v38 = *a1;
  v22 = [v38 id];
  if (v22)
  {
    v23 = v22;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v24 = *(v8 + 56);
    v24(v21, 0, 1, v7);
  }

  else
  {
    v24 = *(v8 + 56);
    v24(v21, 1, 1, v7);
  }

  type metadata accessor for JournalMO();
  static JournalMO.defaultJournalID.getter();
  v24(v17, 0, 1, v7);
  v25 = *(v10 + 48);
  sub_1000082B4(v21, v12, &qword_100AD1420);
  sub_1000082B4(v17, &v12[v25], &qword_100AD1420);
  v26 = *(v8 + 48);
  if (v26(v12, 1, v7) == 1)
  {
    sub_100004F84(v17, &qword_100AD1420);
    sub_100004F84(v21, &qword_100AD1420);
    if (v26(&v12[v25], 1, v7) == 1)
    {
      sub_100004F84(v12, &qword_100AD1420);
LABEL_12:
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      result = String.init(localized:table:bundle:locale:comment:)();
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  v27 = v39;
  sub_1000082B4(v12, v39, &qword_100AD1420);
  if (v26(&v12[v25], 1, v7) == 1)
  {
    sub_100004F84(v17, &qword_100AD1420);
    sub_100004F84(v21, &qword_100AD1420);
    (*(v8 + 8))(v27, v7);
LABEL_9:
    sub_100004F84(v12, &unk_100AEEE20);
    goto LABEL_10;
  }

  v30 = v35;
  (*(v8 + 32))(v35, &v12[v25], v7);
  sub_100670674(&qword_100AD9220, &type metadata accessor for UUID);
  v31 = dispatch thunk of static Equatable.== infix(_:_:)();
  v32 = *(v8 + 8);
  v32(v30, v7);
  sub_100004F84(v17, &qword_100AD1420);
  sub_100004F84(v21, &qword_100AD1420);
  v32(v39, v7);
  sub_100004F84(v12, &qword_100AD1420);
  if (v31)
  {
    goto LABEL_12;
  }

LABEL_10:
  result = JournalMO.title.getter();
LABEL_13:
  v33 = v40;
  *v40 = result;
  v33[1] = v29;
  return result;
}

void *sub_10066BDF0(void *a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    [result chooseCustomDate:{objc_msgSend(a1, "sender")}];

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_10066BE7C(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    [Strong changeJournal:a1];
  }
}

void sub_10066BEE0()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v1 - 8);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    [Strong toggleBookmark];
  }

  swift_beginAccess();
  v4 = swift_unknownObjectWeakLoadStrong();
  if (v4)
  {
    v5 = v4;
  }

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v6 = UIAccessibilityAnnouncementNotification;
  v7 = String._bridgeToObjectiveC()();

  UIAccessibilityPostNotification(v6, v7);
}

uint64_t sub_10066C0FC(void *a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    if ([a1 sender])
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      memset(v4, 0, sizeof(v4));
    }

    sub_100663748();

    return sub_100004F84(v4, &qword_100AD13D0);
  }

  return result;
}

uint64_t sub_10066C1A8(void *a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    if ([a1 sender])
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      memset(v4, 0, sizeof(v4));
    }

    sub_1006639B0(v4);

    return sub_100004F84(v4, &qword_100AD13D0);
  }

  return result;
}

void sub_10066C258()
{
  v0 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v0 - 8);
  v2 = &v10 - v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_10067202C();
    v5 = *&v4[OBJC_IVAR____TtC7Journal20CanvasViewController_journalEntry];
    v6 = type metadata accessor for TaskPriority();
    (*(*(v6 - 8) + 56))(v2, 1, 1, v6);
    type metadata accessor for MainActor();

    v7 = v4;
    v8 = static MainActor.shared.getter();
    v9 = swift_allocObject();
    v9[2] = v8;
    v9[3] = &protocol witness table for MainActor;
    v9[4] = v5;
    v9[5] = v7;
    sub_1003E9628(0, 0, v2, &unk_1009611E0, v9);
  }
}

uint64_t sub_10066C3CC()
{
  v27 = type metadata accessor for DispatchWorkItemFlags();
  v30 = *(v27 - 8);
  __chkstk_darwin(v27);
  v26 = &v23 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1 = type metadata accessor for DispatchQoS();
  v28 = *(v1 - 8);
  v29 = v1;
  __chkstk_darwin(v1);
  v25 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for DispatchTimeInterval();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (&v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for DispatchTime();
  v23 = v7;
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v23 - v12;
  if (sub_10005AAB0(128))
  {
    v14 = 1;
  }

  else
  {
    v14 = 2;
  }

  sub_100663B8C(v14);
  sub_1006612C0();
  sub_1000065A8(0, &qword_100AD6210);
  v24 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  *v6 = 500;
  (*(v4 + 104))(v6, enum case for DispatchTimeInterval.milliseconds(_:), v3);
  + infix(_:_:)();
  (*(v4 + 8))(v6, v3);
  v15 = *(v8 + 8);
  v15(v10, v7);
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_100672AD8;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006C7C;
  aBlock[3] = &unk_100A76BE8;
  v17 = _Block_copy(aBlock);

  v18 = v25;
  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100670674(&qword_100AD1520, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000F24EC(&unk_100AD6220);
  sub_10000B58C(&qword_100AD1530, &unk_100AD6220);
  v19 = v26;
  v20 = v27;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v21 = v24;
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v17);

  (*(v30 + 8))(v19, v20);
  (*(v28 + 8))(v18, v29);
  v15(v13, v23);
  return sub_100804680();
}

void sub_10066C8B0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_100223C20();
  }
}

id sub_10066C904()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Journal20CanvasViewController_journalEntry);
  v2 = *(v1 + OBJC_IVAR____TtC7Journal14EntryViewModel_gridAssets);
  if (v2 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_4;
    }
  }

  else if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_4:
    result = *(v0 + OBJC_IVAR____TtC7Journal20CanvasViewController_gridTopConstraint);
    if (!result)
    {
      return result;
    }

    v4 = 4.0;
    goto LABEL_6;
  }

  if (*(v1 + OBJC_IVAR____TtC7Journal14EntryViewModel_slimAsset))
  {
    goto LABEL_4;
  }

  result = *(v0 + OBJC_IVAR____TtC7Journal20CanvasViewController_gridTopConstraint);
  if (!result)
  {
    return result;
  }

  v4 = 0.0;
LABEL_6:

  return [result setConstant:v4];
}

uint64_t sub_10066C9CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[14] = a4;
  v4[15] = swift_getObjectType();
  v5 = type metadata accessor for TapToRadarUtilities.RadarClassification();
  v4[16] = v5;
  v6 = *(v5 - 8);
  v4[17] = v6;
  v4[18] = *(v6 + 64);
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  v7 = type metadata accessor for Date();
  v4[21] = v7;
  v4[22] = *(v7 - 8);
  v4[23] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[24] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[25] = v9;
  v4[26] = v8;

  return _swift_task_switch(sub_10066CB3C, v9, v8);
}

uint64_t sub_10066CB3C()
{
  v1 = v0[14];
  v2 = *(v1 + OBJC_IVAR____TtC7Journal20CanvasViewController_mindfulnessManager);
  v0[27] = v2;
  if (v2 && (v3 = *(v1 + OBJC_IVAR____TtC7Journal20CanvasViewController_canvasIdleTracker), (v0[28] = v3) != 0))
  {

    static Date.now.getter();
    v4 = swift_task_alloc();
    v0[29] = v4;
    *v4 = v0;
    v4[1] = sub_10066CC7C;
    v5 = v0[23];

    return sub_1005BED00(v5, 0);
  }

  else
  {

    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_10066CC7C()
{
  v1 = *v0;
  v2 = *(*v0 + 184);
  v3 = *(*v0 + 176);
  v4 = *(*v0 + 168);

  (*(v3 + 8))(v2, v4);
  v5 = *(v1 + 208);
  v6 = *(v1 + 200);

  return _swift_task_switch(sub_10066CE00, v6, v5);
}

uint64_t sub_10066CE00()
{

  sub_1003E8B6C();
  if ((static Runtime.isInternalBuild.getter() & 1) != 0 && (v1 = v0[27], *(v1 + OBJC_IVAR____TtC7Journal18MindfulnessManager_shouldShowTTRAlert) == 1))
  {
    v2 = *(v1 + OBJC_IVAR____TtC7Journal18MindfulnessManager_ttrErrorDescription);
    v3 = *(v1 + OBJC_IVAR____TtC7Journal18MindfulnessManager_ttrErrorDescription + 8);
    (*(v0[17] + 104))(v0[20], enum case for TapToRadarUtilities.RadarClassification.otherBug(_:), v0[16]);

    if (static Runtime.isInternalBuild.getter() & 1) == 0 || (byte_100AE9DE0)
    {
    }

    else
    {
      v4 = v0[19];
      v5 = v0[17];
      v27 = v0[18];
      v25 = v0[16];
      v26 = v0[20];
      v28 = v0[15];
      v30 = v0[14];
      type metadata accessor for JurassicAlertController();
      v6 = String._bridgeToObjectiveC()();
      v7 = String._bridgeToObjectiveC()();
      v29 = [swift_getObjCClassFromMetadata() alertControllerWithTitle:v6 message:v7 preferredStyle:1];

      (*(v5 + 16))(v4, v26, v25);
      v8 = (*(v5 + 80) + 48) & ~*(v5 + 80);
      v9 = (v27 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
      v10 = swift_allocObject();
      *(v10 + 2) = 0xD00000000000002ELL;
      *(v10 + 3) = 0x8000000100900080;
      *(v10 + 4) = v2;
      *(v10 + 5) = v3;
      (*(v5 + 32))(&v10[v8], v4, v25);
      v11 = &v10[v9];
      *v11 = 0;
      *(v11 + 1) = 0;
      *&v10[(v9 + 23) & 0xFFFFFFFFFFFFFFF8] = v28;
      v12 = String._bridgeToObjectiveC()();
      v0[6] = sub_100420C54;
      v0[7] = v10;
      v0[2] = _NSConcreteStackBlock;
      v0[3] = 1107296256;
      v0[4] = sub_10016B4D8;
      v0[5] = &unk_100A76FF8;
      v13 = _Block_copy(v0 + 2);

      v14 = objc_opt_self();
      v15 = [v14 actionWithTitle:v12 style:0 handler:v13];
      _Block_release(v13);

      v16 = [objc_opt_self() mainBundle];
      v32._object = 0x80000001008E0EF0;
      v17._countAndFlagsBits = 0x6C65636E6143;
      v32._countAndFlagsBits = 0xD00000000000001BLL;
      v17._object = 0xE600000000000000;
      v18._countAndFlagsBits = 0;
      v18._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v17, 0, v16, v18, v32);

      v19 = swift_allocObject();
      v19[2] = 0;
      v19[3] = 0;
      v19[4] = v28;
      v20 = String._bridgeToObjectiveC()();

      v0[12] = sub_100420D08;
      v0[13] = v19;
      v0[8] = _NSConcreteStackBlock;
      v0[9] = 1107296256;
      v0[10] = sub_10016B4D8;
      v0[11] = &unk_100A77048;
      v21 = _Block_copy(v0 + 8);

      v22 = [v14 actionWithTitle:v20 style:1 handler:v21];
      _Block_release(v21);

      [v29 addAction:v22];
      [v29 addAction:v15];
      byte_100AE9DE0 = 1;
      [v30 presentViewController:v29 animated:1 completion:0];
    }

    (*(v0[17] + 8))(v0[20], v0[16]);
  }

  else
  {
  }

  v23 = v0[1];

  return v23();
}

uint64_t sub_10066D360(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = type metadata accessor for Date();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[6] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[7] = v7;
  v4[8] = v6;

  return _swift_task_switch(sub_10066D454, v7, v6);
}

uint64_t sub_10066D454()
{
  v1 = v0[2];
  v2 = OBJC_IVAR____TtC7Journal20CanvasViewController_mindfulnessManager;
  v0[9] = OBJC_IVAR____TtC7Journal20CanvasViewController_mindfulnessManager;
  v3 = *(v1 + v2);
  v0[10] = v3;
  if (v3)
  {

    static Date.now.getter();
    v4 = swift_task_alloc();
    v0[11] = v4;
    *v4 = v0;
    v4[1] = sub_10066D5B8;
    v5 = v0[5];

    return sub_1005BED00(v5, 0);
  }

  else
  {

    v7 = v0[2];
    v8 = OBJC_IVAR____TtC7Journal20CanvasViewController_canvasIdleTracker;
    v9 = v7;
    if (*(v7 + OBJC_IVAR____TtC7Journal20CanvasViewController_canvasIdleTracker))
    {

      sub_1003E8B6C();

      v9 = v0[2];
    }

    *(v9 + v0[9]) = 0;

    *(v7 + v8) = 0;

    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_10066D5B8()
{
  v1 = *v0;
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 32);
  v4 = *(*v0 + 24);

  (*(v3 + 8))(v2, v4);
  v5 = *(v1 + 64);
  v6 = *(v1 + 56);

  return _swift_task_switch(sub_10066D758, v6, v5);
}

uint64_t sub_10066D758()
{

  v1 = v0[2];
  v2 = OBJC_IVAR____TtC7Journal20CanvasViewController_canvasIdleTracker;
  v3 = v1;
  if (*(v1 + OBJC_IVAR____TtC7Journal20CanvasViewController_canvasIdleTracker))
  {

    sub_1003E8B6C();

    v3 = v0[2];
  }

  *(v3 + v0[9]) = 0;

  *(v1 + v2) = 0;

  v4 = v0[1];

  return v4();
}

uint64_t sub_10066D818@<X0>(char *a1@<X8>)
{
  if (qword_100ACFED0 != -1)
  {
    swift_once();
  }

  v2 = qword_100B2FA60;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = *(v2 + 24);
    ObjectType = swift_getObjectType();
    v6 = (*(v4 + 32))(ObjectType, v4);
    result = swift_unknownObjectRelease();
  }

  else
  {
    v6 = 3;
  }

  *a1 = v6;
  return result;
}

uint64_t (*sub_10066D8C0())()
{
  swift_allocObject();
  swift_unknownObjectWeakInit();
  return sub_100672AE0;
}

uint64_t sub_10066D91C()
{
  v0 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v0 - 8);
  v2 = &v9 - v1;
  v3 = type metadata accessor for TaskPriority();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  type metadata accessor for MainActor();

  v6 = static MainActor.shared.getter();
  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = &protocol witness table for MainActor;
  v7[4] = v4;

  sub_1003E9628(0, 0, v2, &unk_100960FD0, v7);
}

uint64_t sub_10066DA98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a4;
  type metadata accessor for MainActor();
  *(v4 + 48) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10066DB30, v6, v5);
}

uint64_t sub_10066DB30()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = [Strong viewIfLoaded];
    if (v3)
    {
      v4 = v3;
      v5 = [v3 window];

      if (v5)
      {
        v6 = [v5 windowScene];

        if (v6)
        {
          if ([v6 activationState] != 2)
          {
            if (qword_100ACFED0 != -1)
            {
              swift_once();
            }

            v7 = qword_100B2FA60;
            if (swift_unknownObjectWeakLoadStrong())
            {
              v8 = *(v7 + 24);
              ObjectType = swift_getObjectType();
              LOBYTE(v8) = (*(v8 + 32))(ObjectType, v8);
              swift_unknownObjectRelease();
              v10 = *&v2[OBJC_IVAR____TtC7Journal20CanvasViewController_canvasIdleTracker];
              if (v8 == 1)
              {
                if (v10)
                {

                  sub_1003E893C();
LABEL_19:
                }
              }

              else if (v10)
              {

                sub_1003E8960();
                goto LABEL_19;
              }

              *(swift_task_alloc() + 16) = v2;
              sub_1000F24EC(&qword_100AE98A8);
              withObservationTracking<A>(_:onChange:)();

              goto LABEL_14;
            }
          }
        }
      }
    }
  }

LABEL_14:
  v11 = *(v0 + 8);

  return v11();
}

BOOL sub_10066DD6C()
{
  v1 = v0;
  sub_1000065A8(0, &unk_100AD43A0);
  v2 = sub_100658B00();
  v3 = static NSObject.== infix(_:_:)();

  result = 1;
  if ((v3 & 1) != 0 && *(*&v1[OBJC_IVAR____TtC7Journal20CanvasViewController____lazy_storage___textView] + OBJC_IVAR____TtC7Journal15JournalTextView_isShowingFormattingController) == 1)
  {
    v4 = [v1 traitCollection];
    v5 = [v4 userInterfaceIdiom];

    if (v5 == 5)
    {
      return 0;
    }
  }

  return result;
}

void sub_10066DE98()
{
  v1 = v0;
  sub_1000065A8(0, &unk_100AD43A0);
  v2 = sub_100658670();
  v3 = static NSObject.== infix(_:_:)();

  v4 = sub_100658B00();
  if (v3)
  {
    v5 = swift_dynamicCastObjCProtocolConditional();
    if (v5)
    {
      [v5 _hideTextFormattingOptions:{0, &OBJC_PROTOCOL____UITextFormattingResponder}];
      v4[OBJC_IVAR____TtC7Journal15JournalTextView_isShowingFormattingController] = 0;
    }
  }

  else
  {
    v6 = static NSObject.== infix(_:_:)();

    if ((v6 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  v7 = *(v1 + OBJC_IVAR____TtC7Journal20CanvasViewController____lazy_storage___textView);
  sub_1002B30D0(v7);

  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  v8 = sub_1003C9E58();

  [v8 setEnabled:(v3 & 1) == 0];

LABEL_7:
  if (*(v1 + OBJC_IVAR____TtC7Journal20CanvasViewController_canvasIdleTracker))
  {

    sub_1003E8698();
  }
}

void sub_10066E0A0()
{
  sub_1000065A8(0, &unk_100AD43A0);
  v0 = sub_100658B00();
  v1 = static NSObject.== infix(_:_:)();

  if (v1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static UIViewController.ViewLoading.subscript.getter();

    v2 = sub_1003C9E58();

    [v2 setEnabled:0];
  }
}

unint64_t sub_10066E1F4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, unint64_t a5)
{
  v6 = v5;
  v41 = a3;
  v42 = a5;
  v40 = a2;
  v38 = type metadata accessor for CanvasContentInputType();
  __chkstk_darwin(v38);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for CharacterSet();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000065A8(0, &unk_100AD43A0);
  v13 = sub_100658B00();
  v14 = static NSObject.== infix(_:_:)();

  if (v14)
  {
    *&v43[0] = a4;
    *(&v43[0] + 1) = v42;
    static CharacterSet.newlines.getter();
    sub_1000777B4();
    StringProtocol.rangeOfCharacter(from:options:range:)();
    v16 = v15;
    (*(v10 + 8))(v12, v9);
    if ((v16 & 1) == 0)
    {
      v17 = *(v6 + OBJC_IVAR____TtC7Journal20CanvasViewController_journalEntry);
      if (sub_10029EF80())
      {
        return 0;
      }

      v18 = *(v6 + OBJC_IVAR____TtC7Journal20CanvasViewController____lazy_storage___textView);
      sub_1007C6FC4();

      v19 = *(v17 + OBJC_IVAR____TtC7Journal14EntryViewModel_undoManager);
      if (v19)
      {
        v20 = v19;
        sub_10012B2C8();
      }
    }
  }

  v21 = OBJC_IVAR____TtC7Journal20CanvasViewController____lazy_storage___textView;
  v22 = *(v6 + OBJC_IVAR____TtC7Journal20CanvasViewController____lazy_storage___textView);
  v23 = static NSObject.== infix(_:_:)();

  if (v23)
  {
    *&v43[0] = a4;
    *(&v43[0] + 1) = v42;
    static CharacterSet.whitespaces.getter();
    sub_1000777B4();
    StringProtocol.rangeOfCharacter(from:options:range:)();
    v25 = v24;
    (*(v10 + 8))(v12, v9);
    if ((v25 & 1) == 0)
    {
      v26 = *(v6 + v21);
      v27 = sub_1007BBDA8(v40, v41);

      if (v27)
      {
        return 0;
      }
    }
  }

  v28 = sub_100658670();
  v29 = static NSObject.== infix(_:_:)();

  if ((v29 & 1) == 0)
  {
    return 1;
  }

  v30 = sub_1000961EC(a4, v42);
  if (!v31)
  {
    return 1;
  }

  v32 = v30;
  v33 = v31;
  result = sub_10057714C(v30, v31);
  if ((result & 0x100000000) == 0)
  {
    if ((result - 14) > 0xFFFFFFFB || (result - 8232) < 2 || result == 133 || v32 == 9 && v33 == 0xE100000000000000)
    {

      goto LABEL_18;
    }

    v36 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v36)
    {
LABEL_18:
      if ((sub_10029EF80() & 1) == 0)
      {
        v35 = v39;
        *v39 = 1;
        swift_storeEnumTagMultiPayload();
        memset(v43, 0, sizeof(v43));
        sub_1003B5E4C(v35, v43);
        sub_100004F84(v43, &qword_100AD13D0);
        sub_1006730B4(v35, type metadata accessor for CanvasContentInputType);
      }

      return 0;
    }

    return 1;
  }

  __break(1u);
  return result;
}

id sub_10066E67C(id a1)
{
  if (*(v1 + OBJC_IVAR____TtC7Journal20CanvasViewController_canvasIdleTracker))
  {

    sub_1003E8698();
  }

  v3 = *(*(v1 + OBJC_IVAR____TtC7Journal20CanvasViewController_assetsGridView) + OBJC_IVAR____TtC7Journal14CanvasGridView_gridCollectionView);
  if (v3)
  {
    v4 = v3;
    sub_1006018C4();
  }

  v5 = [a1 textStorage];
  result = [v5 string];
  if (result)
  {
    v7 = result;

    v8 = [a1 textStorage];
    v9 = NSParagraphAttachmentAttributeName;
    v10 = [a1 textStorage];
    v11 = [v10 length];

    v12 = swift_allocObject();
    *(v12 + 16) = v7;
    *(v12 + 24) = a1;
    v13 = swift_allocObject();
    *(v13 + 16) = sub_100672F24;
    *(v13 + 24) = v12;
    v18[4] = sub_100673DC8;
    v18[5] = v13;
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 1107296256;
    v18[2] = sub_10007E0A4;
    v18[3] = &unk_100A76D00;
    v14 = _Block_copy(v18);
    v15 = v7;
    v16 = a1;

    [v8 enumerateAttribute:v9 inRange:0 options:v11 usingBlock:{0, v14}];

    _Block_release(v14);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_10066E8E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  sub_1000082B4(a1, v21, &qword_100AD13D0);
  if (v22)
  {
    sub_1000065A8(0, &qword_100ADC5F0);
    if (swift_dynamicCast())
    {
      v10 = [v20 textAttachment];
      type metadata accessor for ResizableAssetViewTextAttachment();
      if (swift_dynamicCastClass())
      {
        v11 = [a5 paragraphRangeForRange:{a2, a3}];
        v13 = v12;
        v14 = [a5 substringWithRange:{v11, v12}];
        v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v17 = v16;

        v24.location = [a6 selectedRange];
        v24.length = v18;
        v23.location = v11;
        v23.length = v13;
        NSIntersectionRange(v23, v24);
        v19 = sub_1005764B4(v15, v17);

        if (__OFSUB__(v13, v19 & 1))
        {
          __break(1u);
        }

        else
        {
          sub_1007C8CA4();
          sub_1007C8B44();
        }
      }

      else
      {
      }
    }
  }

  else
  {
    sub_100004F84(v21, &qword_100AD13D0);
  }
}

void sub_10066EB2C(void *a1)
{
  v2 = sub_1000F24EC(&unk_100AD6240);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v37 - v4;
  v6 = sub_1000F24EC(&qword_100AE4C80);
  v38 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v37 - v7;
  v9 = type metadata accessor for JournalFeatureFlags();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for JournalTextView();
  v13 = swift_dynamicCastClass();
  if (!v13)
  {
    type metadata accessor for CanvasMomentsTitleView();
    v26 = swift_dynamicCastClass();
    v24 = v39;
    if (!v26)
    {
      goto LABEL_26;
    }

    v27 = v26;
    v28 = a1;
    v25 = [v27 textStorage];
    (*(v10 + 104))(v12, enum case for JournalFeatureFlags.enhancedSync(_:), v9);
    v29 = JournalFeatureFlags.isEnabled.getter();
    (*(v10 + 8))(v12, v9);
    if (v29)
    {
      if (v25)
      {
        sub_1000F24EC(&qword_100AEBDF0);
        v30 = swift_dynamicCastClass();
        if (v30)
        {
          v31 = *((swift_isaMask & *v30) + 0x68);
          v32 = v30;
          swift_beginAccess();
          (*(v3 + 16))(v5, &v32[v31], v2);
          v25 = v25;
          sub_10077CEFC(v5);

          (*(v3 + 8))(v5, v2);
LABEL_24:

          goto LABEL_25;
        }

        goto LABEL_22;
      }

      v34 = 0;
    }

    else
    {
      if (v25)
      {
LABEL_22:
        v34 = v25;
        goto LABEL_23;
      }

      v34 = 0;
    }

LABEL_23:
    sub_10077FB2C(v34);
    goto LABEL_24;
  }

  v14 = v13;
  v15 = a1;
  v16 = [v14 textStorage];
  (*(v10 + 104))(v12, enum case for JournalFeatureFlags.enhancedSync(_:), v9);
  v17 = JournalFeatureFlags.isEnabled.getter();
  (*(v10 + 8))(v12, v9);
  if ((v17 & 1) == 0)
  {
    v24 = v39;
    if (v16)
    {
LABEL_18:
      v25 = v15;
      v33 = v16;
      goto LABEL_19;
    }

    v33 = 0;
LABEL_14:
    v25 = v15;
LABEL_19:
    sub_100780424(v33);
    goto LABEL_20;
  }

  if (!v16)
  {
    v33 = 0;
    v24 = v39;
    goto LABEL_14;
  }

  sub_1000F24EC(&qword_100ADC5F8);
  v18 = swift_dynamicCastClass();
  if (!v18)
  {
    v24 = v39;
    goto LABEL_18;
  }

  v19 = *((swift_isaMask & *v18) + 0x68);
  v20 = v18;
  swift_beginAccess();
  v21 = v38;
  (*(v38 + 16))(v8, &v20[v19], v6);
  v22 = v39;
  v16 = v16;
  sub_10077C118(v8);

  v23 = v6;
  v24 = v22;
  (*(v21 + 8))(v8, v23);
  v25 = v15;
LABEL_20:

  sub_1007BBA50();
  (*((swift_isaMask & *v14) + 0x188))();
LABEL_25:

LABEL_26:
  if (*(v24 + OBJC_IVAR____TtC7Journal20CanvasViewController_canvasIdleTracker))
  {

    sub_1003E8698();
  }

  v35 = *(*(v24 + OBJC_IVAR____TtC7Journal20CanvasViewController_assetsGridView) + OBJC_IVAR____TtC7Journal14CanvasGridView_gridCollectionView);
  if (v35)
  {
    v36 = v35;
    sub_1006018C4();
  }
}

UIMenu sub_10066F21C(uint64_t a1, uint64_t a2, uint64_t a3, UIMenuElementSize a4)
{
  v6 = type metadata accessor for Locale();
  __chkstk_darwin(v6 - 8);
  v7 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v7 - 8);
  sub_1000065A8(0, &unk_100AD43A0);

  v8 = sub_100658670();
  v9 = static NSObject.== infix(_:_:)();

  if ((v9 & 1) != 0 || !a3)
  {
    sub_1000065A8(0, &unk_100AD4D00);
    sub_1000F24EC(&unk_100AD4780);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_100941D50;
    sub_1000065A8(0, &qword_100AE5B78);
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    v11 = String._bridgeToObjectiveC()();
    v12 = [objc_opt_self() systemImageNamed:v11];

    *(v10 + 32) = UICommand.init(title:subtitle:image:selectedImage:action:propertyList:alternates:discoverabilityTitle:attributes:state:)();
    v13._countAndFlagsBits = 0;
    v13._object = 0xE000000000000000;
    v17.value.super.isa = 0;
    v17.is_nil = 0;
    UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v13, 0, v17, 1, 0xFFFFFFFFFFFFFFFFLL, v10, v16);
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((a4 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((a4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  sub_1000065A8(0, &unk_100AD4D00);
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  v18.value.super.isa = 0;
  v18.is_nil = 0;
  return UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v14, 0, v18, 0, 0xFFFFFFFFFFFFFFFFLL, a4, v16);
}

void sub_10066F67C()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Journal20CanvasViewController_coordinator);
  sub_1001707E8(1, 1);
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_1003BECA8(1);
    swift_unknownObjectRelease();
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    [Strong becomeFirstResponder];
  }

  sub_100173CA8(1, v1);
  if (sub_10029F23C())
  {
    v4 = sub_100658B00();
    sub_1002B1FB8();
  }
}

uint64_t sub_10066F77C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v8 - 8);
  v10 = &v17 - v9;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  (*(v5 + 16))(v7, a2, v4);
  type metadata accessor for MainActor();
  v12 = v2;
  v13 = static MainActor.shared.getter();
  v14 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v15 = swift_allocObject();
  *(v15 + 2) = v13;
  *(v15 + 3) = &protocol witness table for MainActor;
  *(v15 + 4) = v12;
  (*(v5 + 32))(&v15[v14], v7, v4);
  sub_1003E9628(0, 0, v10, &unk_100960FB8, v15);
}

void sub_10066F978(char a1)
{
  v3 = type metadata accessor for ImageResource();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [v1 traitCollection];
  v9 = [v8 userInterfaceIdiom];

  swift_getKeyPath();
  swift_getKeyPath();
  if (v9 == 5)
  {
    static UIViewController.ViewLoading.subscript.getter();

    v10 = sub_1003C9F4C();

    if (a1)
    {
      sub_1000065A8(0, &qword_100AE9450);
      if (qword_100AD0D98 != -1)
      {
        swift_once();
      }

      v11 = sub_10000617C(v3, qword_100B317D8);
      (*(v4 + 16))(v7, v11, v3);
      v12 = UIImage.init(resource:)();
    }

    else
    {
      v13 = String._bridgeToObjectiveC()();
      v12 = [objc_opt_self() systemImageNamed:v13];
    }

    [(objc_class *)v10 setImage:v12];
  }

  else
  {
    static UIViewController.ViewLoading.subscript.getter();

    v12 = sub_1003C9F4C();

    [v12 setSelected:a1 & 1];
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  v14 = sub_1003C9F4C();

  v15 = [(objc_class *)v14 menuRepresentation];

  if (v15)
  {
    objc_opt_self();
    v16 = swift_dynamicCastObjCClass();
    if (v16)
    {
      [v16 setState:a1 & 1];
    }
  }
}

uint64_t sub_10066FDAC()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC7Journal20CanvasViewController_journalEntry];
  v3 = *(v2 + OBJC_IVAR____TtC7Journal14EntryViewModel_bookmarked);
  *(v2 + OBJC_IVAR____TtC7Journal14EntryViewModel_bookmarked) = v3 ^ 1;
  sub_10078333C(v3);
  result = [v1 isEditing];
  if ((result & 1) == 0)
  {
    v5 = *(v2 + 24);
    v9 = 0;
    v6 = [v5 save:&v9];
    v7 = v9;
    if (v6)
    {

      return v7;
    }

    else
    {
      v8 = v9;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }
  }

  return result;
}

void sub_10066FF78(void *a1)
{
  v2 = v1;
  sub_1000F24EC(&unk_100AD4780);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100941D50;
  *(v4 + 32) = *(v2 + OBJC_IVAR____TtC7Journal20CanvasViewController_journalEntry);
  objc_allocWithZone(type metadata accessor for JournalMembershipListViewController());

  v7 = sub_10012D520(v4, 0, 0);
  v5 = [v7 popoverPresentationController];
  if (v5)
  {
    v6 = v5;
    [v5 setSourceItem:{objc_msgSend(a1, "presentationSourceItem")}];

    swift_unknownObjectRelease();
  }

  sub_100171DA0(v7, 2, 1, *(v2 + OBJC_IVAR____TtC7Journal20CanvasViewController_coordinator));
}

void sub_100670150()
{
  v0 = sub_100658670();
  v1 = [v0 text];

  if (v1)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v2 = sub_100658B00();
    v3 = [v2 text];

    if (v3)
    {
      v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v6 = v5;

      v7._countAndFlagsBits = v4;
      v7._object = v6;
      String.append(_:)(v7);

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_100670230(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = sub_100658B00();
  sub_1002B279C(a2, a3);

  v8 = *&v4[OBJC_IVAR____TtC7Journal20CanvasViewController_coordinator];
  v9 = v4;
  sub_100176820(1, v8, v9);
}

uint64_t sub_1006702D4(void *a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  if (a3)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
    v7 = a1;
  }

  v8 = [a1 undoManager];
  [v8 *a4];

  return sub_100004F84(&v10, &qword_100AD13D0);
}

void sub_100670480()
{
  sub_10067051C();
  if (v0 <= 0x3F)
  {
    type metadata accessor for CanvasContentInputType();
    if (v1 <= 0x3F)
    {
      sub_100670580();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_10067051C()
{
  result = qword_100AEBD68;
  if (!qword_100AEBD68)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_100AEBD68);
  }

  return result;
}

void sub_100670580()
{
  if (!qword_100AEBD70[0])
  {
    sub_1000F2A18(&qword_100AD64B8);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, qword_100AEBD70);
    }
  }
}

uint64_t sub_100670674(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100670718(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;

  return static UIViewController.ViewLoading.subscript.setter();
}

uint64_t sub_100670794(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  v5 = v2;
  return static UIViewController.ViewLoading.subscript.setter();
}

const char *sub_10067080C(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = a3;
  *(a3 + 24) = 0;
  swift_unknownObjectWeakInit();
  v6 = OBJC_IVAR____TtC7Journal24CanvasBarItemCoordinator__selectedType;
  v7 = type metadata accessor for CanvasContentInputType();
  (*(*(v7 - 8) + 56))(&v3[v6], 1, 1, v7);
  *&v3[OBJC_IVAR____TtC7Journal24CanvasBarItemCoordinator__trackedBarButtonItems] = &_swiftEmptyDictionarySingleton;
  *&v3[OBJC_IVAR____TtC7Journal24CanvasBarItemCoordinator____lazy_storage___undoItem] = 0;
  *&v3[OBJC_IVAR____TtC7Journal24CanvasBarItemCoordinator____lazy_storage___redoItem] = 0;
  *&v3[OBJC_IVAR____TtC7Journal24CanvasBarItemCoordinator____lazy_storage___undoRedoItem] = 0;
  *&v3[OBJC_IVAR____TtC7Journal24CanvasBarItemCoordinator____lazy_storage___dateButton] = 0;
  *&v3[OBJC_IVAR____TtC7Journal24CanvasBarItemCoordinator____lazy_storage___pickerItemGroups] = 0;
  *&v3[OBJC_IVAR____TtC7Journal24CanvasBarItemCoordinator____lazy_storage___textFormattingItem] = 0;
  *&v3[OBJC_IVAR____TtC7Journal24CanvasBarItemCoordinator____lazy_storage___drawingItem] = 0;
  *&v3[OBJC_IVAR____TtC7Journal24CanvasBarItemCoordinator____lazy_storage___editItem] = 0;
  *&v3[OBJC_IVAR____TtC7Journal24CanvasBarItemCoordinator____lazy_storage___doneItem] = 0;
  *&v3[OBJC_IVAR____TtC7Journal24CanvasBarItemCoordinator____lazy_storage___inputAccessoryView] = 1;
  *&v3[OBJC_IVAR____TtC7Journal24CanvasBarItemCoordinator____lazy_storage___inputAssistantItemGroup] = 0;
  ObservationRegistrar.init()();
  v8 = OBJC_IVAR____TtC7Journal14EntryViewModel_date;
  swift_beginAccess();
  v9 = OBJC_IVAR____TtC7Journal24CanvasBarItemCoordinator__titleDate;
  v10 = type metadata accessor for Date();
  (*(*(v10 - 8) + 16))(&v3[v9], a1 + v8, v10);
  type metadata accessor for JournalEntryMO();
  v3[OBJC_IVAR____TtC7Journal24CanvasBarItemCoordinator__isEditingSupported] = MinimumSupportedVersion.isEditingSupported.getter() & 1;
  swift_getKeyPath();
  sub_100670674(&qword_100AEBE20, type metadata accessor for CanvasBarItemCoordinator);
  swift_unknownObjectRetain();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v13 = [Strong navigationItem];
    [v13 setStyle:2];
    [v13 setBackButtonDisplayMode:2];
    [v13 setLargeTitleDisplayMode:2];
    [v13 setLeftItemsSupplementBackButton:1];
    v14 = [v13 standardAppearance];
    if (!v14 || (v15 = v14, v16 = [v14 _titleControlHidden], v15, (v16 & 1) == 0))
    {
      v17 = [v13 standardAppearance];
      if (!v17)
      {
        v17 = [objc_allocWithZone(UINavigationBarAppearance) init];
      }

      v18 = v17;
      [v17 _setTitleControlHidden:1];
      [v13 setStandardAppearance:v18];
    }

    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v19 = swift_unknownObjectWeakLoadStrong();
    if (!v19 || (v20 = [v19 traitCollection], swift_unknownObjectRelease(), !v20))
    {
      v20 = [objc_opt_self() currentTraitCollection];
    }

    v21 = [v20 userInterfaceIdiom];

    v22 = sub_1003C9808();
    if (v21 != 5)
    {
      v27 = sub_10085C520();

      [v13 _setBottomPalette:v27];
      goto LABEL_15;
    }

    v23 = v12;
    sub_10085C358();

    v24 = [v13 leadingItemGroups];
    sub_1000065A8(0, &unk_100AEBED0);
    v25 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_30;
    }

    while (1)
    {
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v13 setLeadingItemGroups:isa];

      v12 = v23;
LABEL_15:
      sub_1000065A8(0, &unk_100AEBED0);
      sub_1000F24EC(&unk_100AD4780);
      v28 = swift_allocObject();
      *(v28 + 16) = xmmword_100941D60;
      *(v28 + 32) = sub_1003CA2BC();
      *(v28 + 40) = sub_1003CA3E0();
      v29 = static UIBarButtonItemGroup.fixedGroup(representativeItem:items:)();

      [v13 setPinnedTrailingGroup:v29];

      [v13 _setToolbarAvoidsKeyboard:1];
      sub_1003CAA28(1u);
      sub_1000065A8(0, &qword_100AD43B0);
      v30 = Array._bridgeToObjectiveC()().super.isa;

      [v12 setToolbarItems:v30];

      sub_1003CABA0(0);
      sub_1003CBF6C(*(a1 + OBJC_IVAR____TtC7Journal14EntryViewModel_multiPinMapAsset) != 0);
      v31 = objc_opt_self();
      v32 = [v31 defaultCenter];
      v23 = v3;
      v3 = "editingDidChange";
      [v32 addObserver:v23 selector:"editingDidChange" name:UIKeyboardWillShowNotification object:0];

      v46 = v31;
      v33 = [v31 defaultCenter];
      [v33 addObserver:v23 selector:"editingDidChange" name:UIKeyboardWillHideNotification object:0];

      swift_getKeyPath();
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v47 = v23;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v34 = swift_allocObject();
        *(v34 + 16) = xmmword_100941D60;
        *(v34 + 32) = sub_100658B00();
        *(v34 + 40) = sub_100658670();
        swift_unknownObjectRelease();
      }

      else
      {
        v34 = _swiftEmptyArrayStorage;
      }

      if (v34 >> 62)
      {
        v48 = _CocoaArrayWrapper.endIndex.getter();
        if (!v48)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v48 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v48)
        {
          goto LABEL_27;
        }
      }

      if (v48 >= 1)
      {
        break;
      }

      __break(1u);
LABEL_30:
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    v35 = 0;
    v36 = v34 & 0xC000000000000001;
    v37 = v34;
    do
    {
      if (v36)
      {
        v38 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v38 = *(v34 + 8 * v35 + 32);
      }

      v39 = v38;
      ++v35;
      v40 = [v46 defaultCenter];
      [v40 addObserver:v47 selector:"editingDidChange" name:UITextViewTextDidBeginEditingNotification object:v39];

      v41 = [v46 defaultCenter];
      [v41 addObserver:v47 selector:"editingDidChange" name:UITextViewTextDidEndEditingNotification object:v39];

      v34 = v37;
    }

    while (v48 != v35);
LABEL_27:

    v42 = [v46 defaultCenter];
    v3 = v47;
    [v42 addObserver:v47 selector:"updateUndoRedoItems:" name:NSUndoManagerDidUndoChangeNotification object:0];

    v43 = [v46 defaultCenter];
    [v43 addObserver:v47 selector:"updateUndoRedoItems:" name:NSUndoManagerDidRedoChangeNotification object:0];

    v44 = [v46 defaultCenter];

    [v44 addObserver:v47 selector:"updateUndoRedoItems:" name:NSUndoManagerDidCloseUndoGroupNotification object:0];
    swift_unknownObjectRelease();
  }

  else
  {
  }

  return v3;
}

unint64_t sub_100671244()
{
  result = qword_100AEBDD0;
  if (!qword_100AEBDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEBDD0);
  }

  return result;
}

id sub_100671298(char *a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  v5 = sub_1000F24EC(&unk_100AD6240);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17 - v7;
  v21 = &_s22TitleAttributeProviderVN;
  v22 = sub_1003D4D2C();
  *(a3 + *((swift_isaMask & *a3) + 0x70)) = 0;
  v9 = *((swift_isaMask & *a3) + 0x80);
  *(a3 + v9) = [objc_opt_self() currentTraitCollection];
  v10 = *((swift_isaMask & *a3) + 0x68);
  v11 = *(v6 + 16);
  v11(a3 + v10, a1, v5);
  swift_beginAccess();
  v11(v8, a3 + v10, v5);
  sub_100670674(&qword_100AE4B78, &type metadata accessor for MergeableTitleAttributeScope);
  v12 = CRAttributedString<>.nsAttributedString(traitCollection:customAttributeProvider:)();
  v13 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v12];
  [v13 fixAttributesInRange:{0, objc_msgSend(v13, "length")}];

  v14 = *(v6 + 8);
  v14(v8, v5);
  *(a3 + *((swift_isaMask & *a3) + 0x60)) = v13;
  sub_100086C04(v20, a3 + *((swift_isaMask & *a3) + 0x78));
  v19.receiver = a3;
  v19.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v19, "init");
  v14(a1, v5);
  sub_10000BA7C(v20);
  return v15;
}

id sub_100671588(void *a1, uint64_t a2, double a3, double a4)
{
  v25 = a1;
  v7 = sub_1000F24EC(&unk_100AE4C90);
  __chkstk_darwin(v7 - 8);
  v9 = &v24 - v8;
  v10 = sub_1000F24EC(&unk_100AD6240);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v24 - v15;
  v29 = &_s22TitleAttributeProviderVN;
  v30 = sub_1003D4D2C();
  v17 = [objc_allocWithZone(NSTextContainer) initWithSize:{a3, a4}];
  v18 = [objc_allocWithZone(NSTextLayoutManager) init];
  sub_1000082B4(a2, v9, &unk_100AE4C90);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_100004F84(v9, &unk_100AE4C90);
    v19 = [objc_allocWithZone(sub_1000F24EC(&qword_100AEBDF0)) init];
  }

  else
  {
    (*(v11 + 32))(v16, v9, v10);
    (*(v11 + 16))(v13, v16, v10);
    sub_100086C04(v28, v26);
    v20 = objc_allocWithZone(sub_1000F24EC(&qword_100AEBDF0));
    sub_100186174(v26, v27);
    v21 = v25;
    v19 = sub_100671298(v13, v21, v20);

    (*(v11 + 8))(v16, v10);
    sub_10000BA7C(v26);
  }

  [v18 setTextContainer:v17];
  v22 = [objc_allocWithZone(NSTextContentStorage) init];
  [v22 setTextStorage:v19];
  [v22 addTextLayoutManager:v18];

  sub_10000BA7C(v28);
  return v17;
}

id sub_1006718D4(char *a1, uint64_t a2, uint64_t a3, void *a4)
{
  ObjectType = swift_getObjectType();
  v7 = sub_1000F24EC(&qword_100AE4C80);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v19 - v9;
  v22[3] = type metadata accessor for CustomAttributeProviderConcrete();
  v22[4] = sub_100670674(&qword_100AE2470, type metadata accessor for CustomAttributeProviderConcrete);
  v22[0] = a3;
  *(a4 + *((swift_isaMask & *a4) + 0x70)) = 0;
  v11 = *((swift_isaMask & *a4) + 0x80);
  *(a4 + v11) = [objc_opt_self() currentTraitCollection];
  v12 = *((swift_isaMask & *a4) + 0x68);
  v13 = *(v8 + 16);
  v13(a4 + v12, a1, v7);
  swift_beginAccess();
  v13(v10, a4 + v12, v7);
  sub_100670674(&qword_100AE4B80, &type metadata accessor for MergeableTextAttributeScope);
  v14 = CRAttributedString<>.nsAttributedString(traitCollection:customAttributeProvider:)();
  v15 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v14];
  [v15 fixAttributesInRange:{0, objc_msgSend(v15, "length")}];

  v16 = *(v8 + 8);
  v16(v10, v7);
  *(a4 + *((swift_isaMask & *a4) + 0x60)) = v15;
  sub_100086C04(v22, a4 + *((swift_isaMask & *a4) + 0x78));
  v21.receiver = a4;
  v21.super_class = ObjectType;
  v17 = objc_msgSendSuper2(&v21, "init");
  sub_10000BA7C(v22);
  v16(a1, v7);
  return v17;
}

id sub_100671BFC(void *a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v33 = a1;
  v9 = sub_1000F24EC(&unk_100AEBE80);
  __chkstk_darwin(v9 - 8);
  v11 = &v33 - v10;
  v12 = sub_1000F24EC(&qword_100AE4C80);
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v33 - v17;
  v37[3] = type metadata accessor for CustomAttributeProviderConcrete();
  v37[4] = sub_100670674(&qword_100AE2470, type metadata accessor for CustomAttributeProviderConcrete);
  v37[0] = a2;
  v19 = objc_allocWithZone(NSTextContainer);

  v34 = [v19 initWithSize:{a4, a5}];
  v20 = [objc_allocWithZone(NSTextLayoutManager) init];
  sub_1000082B4(a3, v11, &unk_100AEBE80);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_100004F84(v11, &unk_100AEBE80);
    v21 = objc_allocWithZone(sub_1000F24EC(&qword_100ADC5F8));
    v22 = [v21 init];
  }

  else
  {
    (*(v13 + 32))(v18, v11, v12);
    (*(v13 + 16))(v16, v18, v12);
    sub_100086C04(v37, v35);
    v23 = objc_allocWithZone(sub_1000F24EC(&qword_100ADC5F8));
    v24 = sub_100186174(v35, v36);
    __chkstk_darwin(v24);
    v26 = (&v33 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v27 + 16))(v26);
    v28 = *v26;
    v29 = v33;
    v22 = sub_1006718D4(v16, v29, v28, v23);

    sub_10000BA7C(v35);
    (*(v13 + 8))(v18, v12);
  }

  v30 = v34;
  [v20 setTextContainer:{v34, v33}];
  v31 = [objc_allocWithZone(NSTextContentStorage) init];
  [v31 setTextStorage:v22];
  [v31 addTextLayoutManager:v20];

  sub_10000BA7C(v37);
  return v30;
}

void sub_10067202C()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Journal20CanvasViewController_coordinator);
  sub_1001707E8(1, 1);
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_1003BECA8(1);
    swift_unknownObjectRelease();
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    [Strong becomeFirstResponder];
  }

  sub_100173CA8(1, v1);
  v4 = sub_100658B00();
  v5 = swift_dynamicCastObjCProtocolConditional();
  if (v5)
  {
    [v5 _hideTextFormattingOptions:0];
    v4[OBJC_IVAR____TtC7Journal15JournalTextView_isShowingFormattingController] = 0;
  }
}

void sub_100672124()
{
  v1 = v0;
  v2 = type metadata accessor for TipGroup.Priority();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v0 + OBJC_IVAR____TtC7Journal20CanvasViewController_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC7Journal20CanvasViewController_isInitialAppearance) = 1;
  *(v0 + OBJC_IVAR____TtC7Journal20CanvasViewController_isFinalDisappearance) = 0;
  *(v0 + OBJC_IVAR____TtC7Journal20CanvasViewController_needsDeferredTipDisplay) = 0;
  *(v0 + OBJC_IVAR____TtC7Journal20CanvasViewController_hasShownUnsupportedPreLuckDevicesDialog) = 0;
  *(v0 + OBJC_IVAR____TtC7Journal20CanvasViewController_unsupportedPreLuckDevicesDialogPresentingController) = 0;
  v6 = OBJC_IVAR____TtC7Journal20CanvasViewController_cachedTipToDisplay;
  v7 = type metadata accessor for CanvasViewController.CachedTip(0);
  (*(*(v7 - 8) + 56))(v1 + v6, 1, 1, v7);
  type metadata accessor for CanvasBarItemCoordinator(0);
  UIViewController.ViewLoading.init()();
  v8 = OBJC_IVAR____TtC7Journal20CanvasViewController_scrollContentView;
  *(v1 + v8) = [objc_allocWithZone(UIView) init];
  v9 = OBJC_IVAR____TtC7Journal20CanvasViewController_slimAssetView;
  type metadata accessor for SlimAssetView();
  *(v1 + v9) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v10 = OBJC_IVAR____TtC7Journal20CanvasViewController_gridStackView;
  type metadata accessor for CanvasStackView();
  *(v1 + v10) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v11 = OBJC_IVAR____TtC7Journal20CanvasViewController_assetsGridView;
  type metadata accessor for CanvasGridView();
  *(v1 + v11) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v1 + OBJC_IVAR____TtC7Journal20CanvasViewController____lazy_storage___bundleTitleView) = 0;
  *(v1 + OBJC_IVAR____TtC7Journal20CanvasViewController____lazy_storage___textView) = 0;
  sub_1000065A8(0, &qword_100AEBC28);
  UIViewController.ViewLoading.init()();
  v12 = OBJC_IVAR____TtC7Journal20CanvasViewController_titleDividerView;
  type metadata accessor for JournalDividerView();
  *(v1 + v12) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v1 + OBJC_IVAR____TtC7Journal20CanvasViewController_gridTopConstraint) = 0;
  *(v1 + OBJC_IVAR____TtC7Journal20CanvasViewController_bundleTitleTopConstraint) = 0;
  *(v1 + OBJC_IVAR____TtC7Journal20CanvasViewController_bundleTitleHeightConstraint) = 0;
  *(v1 + OBJC_IVAR____TtC7Journal20CanvasViewController_bundleTitleBottomConstraint) = 0;
  *(v1 + OBJC_IVAR____TtC7Journal20CanvasViewController_slimAssetViewTopConstraint) = 0;
  *(v1 + OBJC_IVAR____TtC7Journal20CanvasViewController_slimAssetViewHeightConstraint) = 0;
  *(v1 + OBJC_IVAR____TtC7Journal20CanvasViewController_titleDividerTopConstraint) = 0;
  *(v1 + OBJC_IVAR____TtC7Journal20CanvasViewController_focusedTextViewBeforeFullScreenAssetAppeared) = 2;
  *(v1 + OBJC_IVAR____TtC7Journal20CanvasViewController_playedVideoIds) = &_swiftEmptySetSingleton;
  *(v1 + OBJC_IVAR____TtC7Journal20CanvasViewController_mindfulnessManager) = 0;
  *(v1 + OBJC_IVAR____TtC7Journal20CanvasViewController_canvasIdleTracker) = 0;
  *(v1 + OBJC_IVAR____TtC7Journal20CanvasViewController_locationUpdatesTask) = 0;
  *(v1 + OBJC_IVAR____TtC7Journal20CanvasViewController_photoPickerLatestAssetAdditions) = _swiftEmptyArrayStorage;
  *(v1 + OBJC_IVAR____TtC7Journal20CanvasViewController_photoPickerActiveFetchRequests) = &_swiftEmptyDictionarySingleton;
  v13 = OBJC_IVAR____TtC7Journal20CanvasViewController_initialJournalState;
  v14 = type metadata accessor for UserEngagement.StateSnapshot();
  (*(*(v14 - 8) + 56))(v1 + v13, 1, 1, v14);
  v15 = OBJC_IVAR____TtC7Journal20CanvasViewController_coordinator;
  type metadata accessor for CanvasLayoutCoordinator();
  swift_allocObject();
  *(v1 + v15) = sub_1001743E8();
  _s15AutosaveManagerCMa();
  UIViewController.ViewLoading.init()();
  v16 = OBJC_IVAR____TtC7Journal20CanvasViewController_tipGroup;
  (*(v3 + 104))(v5, enum case for TipGroup.Priority.firstAvailable(_:), v2);
  type metadata accessor for TipGroup();
  swift_allocObject();
  *(v1 + v16) = TipGroup.init(_:_:)();
  *(v1 + OBJC_IVAR____TtC7Journal20CanvasViewController_tipGroupTask) = 0;
  *(v1 + OBJC_IVAR____TtC7Journal20CanvasViewController_tipPopoverController) = 0;
  *(v1 + OBJC_IVAR____TtC7Journal20CanvasViewController_minimumVersionObservation) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

BOOL sub_100672590(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC7Journal20CanvasViewController_assetsGridView);
  [a1 locationInView:v2];
  v4 = v3;
  v6 = v5;
  [v2 bounds];
  v11.x = v4;
  v11.y = v6;
  v7 = CGRectContainsPoint(v12, v11);
  if (!v7)
  {
    v8 = *&v2[OBJC_IVAR____TtC7Journal14CanvasGridView_gridCollectionView];
    if (v8)
    {
      v9 = v8;
      sub_1006018C4();
    }

    if (*(v1 + OBJC_IVAR____TtC7Journal20CanvasViewController_canvasIdleTracker))
    {

      sub_1003E8698();
    }
  }

  return !v7;
}

uint64_t sub_100672658()
{
  v1 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v1 - 8);
  v3 = &v19 - v2;
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v19 - v9;
  v11 = *(*&v0[OBJC_IVAR____TtC7Journal20CanvasViewController_journalEntry] + OBJC_IVAR____TtC7Journal14EntryViewModel_gridAssetsAndSlimAsset);
  if (v11 >> 62)
  {
    v12 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  sub_1000F24EC(&unk_100AD8A90);
  result = swift_allocObject();
  *(result + 16) = xmmword_100940050;
  *(result + 32) = 0;
  if (__OFSUB__(v12, 1))
  {
    __break(1u);
  }

  else
  {
    *(result + 40) = v12 - 1;
    IndexPath.init(arrayLiteral:)();
    v14 = type metadata accessor for TaskPriority();
    (*(*(v14 - 8) + 56))(v3, 1, 1, v14);
    (*(v5 + 16))(v7, v10, v4);
    type metadata accessor for MainActor();
    v15 = v0;
    v16 = static MainActor.shared.getter();
    v17 = (*(v5 + 80) + 40) & ~*(v5 + 80);
    v18 = swift_allocObject();
    *(v18 + 2) = v16;
    *(v18 + 3) = &protocol witness table for MainActor;
    *(v18 + 4) = v15;
    (*(v5 + 32))(&v18[v17], v7, v4);
    sub_1003E9628(0, 0, v3, &unk_100957708, v18);

    return (*(v5 + 8))(v10, v4);
  }

  return result;
}

uint64_t sub_100672920(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100032ECC;

  return sub_1002467F0(a1, v4, v5, v7, v6);
}

uint64_t sub_1006729E0(uint64_t a1)
{
  v4 = *(type metadata accessor for IndexPath() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100032EC8;

  return sub_10048368C(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_100672AE8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100032EC8;

  return sub_10066DA98(a1, v4, v5, v6);
}

uint64_t (*sub_100672B9C())()
{
  swift_allocObject();
  swift_unknownObjectWeakInit();
  return sub_100672AE0;
}

void sub_100672BF8()
{
  if ([v0 isEditing])
  {
    v1 = *&v0[OBJC_IVAR____TtC7Journal20CanvasViewController_assetsGridView];
    v2 = *(v1 + OBJC_IVAR____TtC7Journal14CanvasGridView_gridCollectionView);
    if (v2)
    {
      v3 = [v2 indexPathsForSelectedItems];
      if (v3)
      {
        v4 = v3;
        type metadata accessor for IndexPath();
        v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v6 = *(v5 + 16);

        if (v6)
        {
LABEL_10:
          v21 = sub_100658B00();
          sub_1002B8F2C();

          sub_10058E07C();
          return;
        }
      }
    }

    v7 = sub_100658B00();
    v24 = _swiftEmptyArrayStorage;
    __chkstk_darwin(v7);
    v22[6] = &v24;
    *&v9 = __chkstk_darwin(v8).n128_u64[0];
    v22[2] = sub_1002D35D0;
    v22[3] = v10;
    v12 = [v11 textStorage];
    v13 = [v12 length];

    if ((v13 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v22[8] = v1;
      v14 = [v7 textStorage];
      v15 = NSParagraphAttachmentAttributeName;
      v16 = swift_allocObject();
      *(v16 + 16) = sub_1000483C0;
      *(v16 + 24) = v22;
      v17 = swift_allocObject();
      *(v17 + 16) = sub_100095B84;
      *(v17 + 24) = v16;
      aBlock[4] = sub_10007E150;
      aBlock[5] = v17;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10007E0A4;
      aBlock[3] = &unk_100A76C88;
      v18 = _Block_copy(aBlock);

      [v14 enumerateAttribute:v15 inRange:0 options:v13 usingBlock:{0, v18}];

      _Block_release(v18);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        if (!(v24 >> 62))
        {
          v20 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
          goto LABEL_9;
        }

LABEL_14:
        v20 = _CocoaArrayWrapper.endIndex.getter();
LABEL_9:

        if (!v20)
        {
          return;
        }

        goto LABEL_10;
      }
    }

    __break(1u);
    goto LABEL_14;
  }
}

uint64_t sub_100672F2C(uint64_t a1)
{
  v4 = *(type metadata accessor for Notification() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100032EC8;

  return sub_100667FB8(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_10067304C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1006730B4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100673114(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100032EC8;

  return sub_10066D360(a1, v4, v5, v6);
}

uint64_t sub_1006731D4()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1();
  }

  return result;
}

uint64_t sub_100673204(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100032ECC;

  return sub_1006616E8(a1, v4, v5, v6);
}

uint64_t sub_1006732CC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100032EC8;

  return sub_10066860C(a1, v4, v5, v6);
}

uint64_t sub_1006733AC()
{
  v1 = type metadata accessor for VisitAssetMetadata();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = type metadata accessor for AssetPlacement();
  v6 = *(v5 - 8);
  v7 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

uint64_t sub_100673510(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100032EC8;

  return sub_10066C9CC(a1, v4, v5, v6);
}

uint64_t sub_1006735C4()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_100673610()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100032EC8;

  return sub_10065E824();
}

uint64_t sub_1006736C4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100032EC8;

  return sub_1005F4274();
}

uint64_t sub_100673778(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100032EC8;

  return sub_1006605A0(a1, v4, v5, v6);
}

uint64_t sub_10067382C(uint64_t a1)
{
  v4 = *(sub_1000F24EC(&qword_100AD1420) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100032EC8;

  return sub_10065F3E4(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_10067398C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100032EC8;

  return sub_10066A978(a1, v4, v5, v7, v6);
}

uint64_t sub_100673A6C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100032EC8;

  return sub_10065A018(a1, v4, v5, v6);
}

uint64_t sub_100673B3C(uint64_t a1)
{
  v4 = *(sub_1000F24EC(&qword_100AEBF10) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100032EC8;

  return sub_100666A60(a1, v6, v7, v8, v1 + v5);
}

unint64_t sub_100673C90()
{
  result = qword_100AEBFA8;
  if (!qword_100AEBFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEBFA8);
  }

  return result;
}

unint64_t sub_100673CE8()
{
  result = qword_100AEBFB0;
  if (!qword_100AEBFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEBFB0);
  }

  return result;
}

unint64_t sub_100673D40()
{
  result = qword_100AEBFB8;
  if (!qword_100AEBFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEBFB8);
  }

  return result;
}

uint64_t sub_100673E7C()
{
  v0 = sub_1000F24EC(&qword_100AEBFC0);
  __chkstk_darwin(v0);
  v2 = &v14[-v1];
  v3 = sub_1000F24EC(&qword_100ADD520);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v14[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v8 = &v14[-v7];
  sub_10028046C();
  EnvironmentValues.subscript.getter();
  v9 = v15;
  if (v15 == 8)
  {
    EnvironmentValues.horizontalSizeClass.getter();
    v10 = *(v0 + 48);
    sub_10002E158(v8, &v2[v10]);
    v11 = type metadata accessor for UserInterfaceSizeClass();
    v12 = *(v11 - 8);
    if ((*(v12 + 48))(&v2[v10], 1, v11) != 1)
    {
      sub_10002E1C8(&v2[v10], v6);
      if ((*(v12 + 88))(v6, v11) == enum case for UserInterfaceSizeClass.compact(_:))
      {
        v9 = 1;
LABEL_7:
        sub_10002E238(&v2[v10]);
        return v9;
      }

      (*(v12 + 8))(v6, v11);
    }

    v9 = 2;
    goto LABEL_7;
  }

  return v9;
}

uint64_t sub_10067407C@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1006741BC(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1006740F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1006743D0();

  return static EnvironmentKey<>._valuesEqual(_:_:)(a1, a2, a3, a4, v8);
}

unint64_t sub_100674168()
{
  result = qword_100AEBFD0;
  if (!qword_100AEBFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEBFD0);
  }

  return result;
}

uint64_t sub_1006741BC(void *a1)
{
  v2 = sub_1000F24EC(&qword_100AEBFC0);
  __chkstk_darwin(v2);
  v4 = &v16[-v3];
  v5 = sub_1000F24EC(&qword_100ADD520);
  __chkstk_darwin(v5 - 8);
  v7 = &v16[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v10 = &v16[-v9];
  sub_10002E2A0();
  UITraitCollection.subscript.getter();
  v11 = v17;
  if (v17 == 8)
  {
    [a1 horizontalSizeClass];
    UserInterfaceSizeClass.init(_:)();
    v12 = *(v2 + 48);
    sub_10002E158(v10, &v4[v12]);
    v13 = type metadata accessor for UserInterfaceSizeClass();
    v14 = *(v13 - 8);
    if ((*(v14 + 48))(&v4[v12], 1, v13) != 1)
    {
      sub_10002E1C8(&v4[v12], v7);
      if ((*(v14 + 88))(v7, v13) == enum case for UserInterfaceSizeClass.compact(_:))
      {
        v11 = 1;
LABEL_7:
        sub_10002E238(&v4[v12]);
        return v11;
      }

      (*(v14 + 8))(v7, v13);
    }

    v11 = 2;
    goto LABEL_7;
  }

  return v11;
}

unint64_t sub_1006743D0()
{
  result = qword_100AEBFD8;
  if (!qword_100AEBFD8)
  {
    sub_1000F2A18(&qword_100AEBFE0);
    sub_10002E5C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEBFD8);
  }

  return result;
}

void *sub_100674454(uint64_t a1)
{
  v24 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = __CocoaSet.count.getter();
    result = _swiftEmptyArrayStorage;
    if (!v2)
    {
      return result;
    }

    v29 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    result = __CocoaSet.startIndex.getter();
    v26 = result;
    v27 = v4;
    v28 = 1;
    if ((v2 & 0x8000000000000000) == 0)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  v2 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (!v2)
  {
    return result;
  }

  v29 = _swiftEmptyArrayStorage;
  specialized ContiguousArray.reserveCapacity(_:)();
  result = _HashTable.startBucket.getter();
  v5 = *(a1 + 36);
  v26 = result;
  v27 = v5;
  v28 = 0;
LABEL_7:
  v6 = 0;
  while (v6 < v2)
  {
    if (__OFADD__(v6++, 1))
    {
      goto LABEL_31;
    }

    v10 = v26;
    v9 = v27;
    v11 = v28;
    sub_100611A40(v26, v27, v28, a1);
    v13 = v12;
    v14 = [v12 objectID];

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    result = specialized ContiguousArray._endMutation()();
    if (v24)
    {
      if (!v11)
      {
        goto LABEL_35;
      }

      if (__CocoaSet.Index.handleBitPattern.getter())
      {
        swift_isUniquelyReferenced_nonNull_native();
      }

      sub_1000F24EC(&qword_100ADAD60);
      v7 = Set.Index._asCocoa.modify();
      __CocoaSet.formIndex(after:isUnique:)();
      result = v7(v25, 0);
      if (v6 == v2)
      {
LABEL_28:
        sub_10000A96C(v26, v27, v28);
        return v29;
      }
    }

    else
    {
      if (v11)
      {
        goto LABEL_36;
      }

      if ((v10 & 0x8000000000000000) != 0)
      {
        goto LABEL_32;
      }

      v15 = 1 << *(a1 + 32);
      if (v10 >= v15)
      {
        goto LABEL_32;
      }

      v16 = v10 >> 6;
      v17 = *(a1 + 56 + 8 * (v10 >> 6));
      if (((v17 >> v10) & 1) == 0)
      {
        goto LABEL_33;
      }

      if (*(a1 + 36) != v9)
      {
        goto LABEL_34;
      }

      v18 = v17 & (-2 << (v10 & 0x3F));
      if (v18)
      {
        v15 = __clz(__rbit64(v18)) | v10 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v19 = v16 << 6;
        v20 = v16 + 1;
        v21 = (a1 + 64 + 8 * v16);
        while (v20 < (v15 + 63) >> 6)
        {
          v23 = *v21++;
          v22 = v23;
          v19 += 64;
          ++v20;
          if (v23)
          {
            result = sub_10000A96C(v10, v9, 0);
            v15 = __clz(__rbit64(v22)) + v19;
            goto LABEL_27;
          }
        }

        result = sub_10000A96C(v10, v9, 0);
      }

LABEL_27:
      v26 = v15;
      v27 = v9;
      v28 = 0;
      if (v6 == v2)
      {
        goto LABEL_28;
      }
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
  return result;
}

void *sub_10067476C()
{
  v1 = *(v0 + 56);
  if (v1)
  {
    v2 = *(v0 + 56);
  }

  else
  {
    v2 = sub_1006747F4();
    v3 = *(v0 + 56);
    *(v0 + 56) = v2;
    *(v0 + 64) = v4;

    sub_10067689C(v3);
  }

  sub_1006768DC(v1);
  return v2;
}

void *sub_1006747F4()
{
  v1 = v0;
  v66 = type metadata accessor for UUID();
  v2 = *(v66 - 8);
  __chkstk_darwin(v66);
  v45 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_1000F24EC(&unk_100AEEE20);
  __chkstk_darwin(v58);
  v59 = &v44 - v4;
  v5 = sub_1000F24EC(&qword_100AD1420);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v44 - v10;
  __chkstk_darwin(v9);
  v13 = (&v44 - v12);
  v69[1] = &_swiftEmptySetSingleton;
  v70 = &_swiftEmptySetSingleton;
  v14 = *(v0 + 32);
  swift_getKeyPath();
  v69[0] = v14;
  sub_10067691C(&qword_100AD43D0, type metadata accessor for CustomJournalsController);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (!*(v14 + 32))
  {
    sub_100772990();
  }

  swift_getKeyPath();
  v69[0] = v14;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v14 + 32))
  {
    v15 = *(v14 + 32);
  }

  else
  {
    v15 = _swiftEmptyArrayStorage;
  }

  if (v15 >> 62)
  {
    goto LABEL_50;
  }

  for (i = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v50 = v15;
    v61 = v11;
    v1 = *(v1 + 16);
    v51 = v8;
    v67 = v13;
    v11 = (v1 & 0xFFFFFFFFFFFFFF8);
    if (v1 >> 62)
    {
      v17 = _CocoaArrayWrapper.endIndex.getter();
      v52 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v17 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v52 = v17;
    }

    v60 = sub_1000321B0();
    v64 = type metadata accessor for JournalMO();
    v57 = v50 & 0xC000000000000001;
    v48 = v50 & 0xFFFFFFFFFFFFFF8;
    v47 = v50 + 32;
    v55 = (v2 + 48);
    v56 = (v2 + 56);
    v44 = (v2 + 32);
    v49 = (v2 + 8);
    v8 = (v1 & 0xC000000000000001);

    v15 = 0;
    v54 = xmmword_100940050;
    v46 = xmmword_100941D60;
    v13 = v66;
    v53 = i;
    while (1)
    {
      if (v57)
      {
        v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v15 >= *(v48 + 16))
        {
          goto LABEL_49;
        }

        v20 = *(v47 + 8 * v15);
      }

      v21 = v20;
      v22 = __OFADD__(v15++, 1);
      if (v22)
      {
        break;
      }

      sub_1000F24EC(&unk_100AD5B10);
      v23 = swift_allocObject();
      *(v23 + 16) = v54;
      *(v23 + 56) = &type metadata for String;
      *(v23 + 64) = sub_100031B20();
      *(v23 + 32) = 0x736C616E72756F6ALL;
      *(v23 + 40) = 0xE800000000000000;
      *(v23 + 96) = v64;
      *(v23 + 104) = sub_10067691C(&qword_100AEC130, &type metadata accessor for JournalMO);
      *(v23 + 72) = v21;
      v24 = v21;
      v68 = NSPredicate.init(format:_:)();
      v62 = v24;
      v25 = [v24 id];
      v63 = v15;
      if (v25)
      {
        v26 = v25;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v27 = 0;
      }

      else
      {
        v27 = 1;
      }

      v28 = *v56;
      v29 = v67;
      (*v56)(v67, v27, 1, v13);
      v30 = v61;
      static JournalMO.defaultJournalID.getter();
      v28(v30, 0, 1, v13);
      v15 = v59;
      v31 = *(v58 + 48);
      sub_1000082B4(v29, v59, &qword_100AD1420);
      v65 = v31;
      sub_1000082B4(v30, v15 + v31, &qword_100AD1420);
      v32 = *v55;
      if ((*v55)(v15, 1, v13) == 1)
      {
        sub_100004F84(v30, &qword_100AD1420);
        sub_100004F84(v67, &qword_100AD1420);
        if (v32(v15 + v65, 1, v66) == 1)
        {
          sub_100004F84(v15, &qword_100AD1420);
          v13 = &selRef_setRegion_;
LABEL_29:
          sub_1000F24EC(&unk_100AD4780);
          v37 = swift_allocObject();
          *(v37 + 16) = v46;
          v38 = v68;
          *(v37 + 32) = v68;
          v39 = v38;
          *(v37 + 40) = static NSPredicate.hasNoJournalRelationships.getter();
          isa = Array._bridgeToObjectiveC()().super.isa;

          v34 = [objc_opt_self() orPredicateWithSubpredicates:isa];

          goto LABEL_30;
        }

        goto LABEL_26;
      }

      v33 = v51;
      sub_1000082B4(v15, v51, &qword_100AD1420);
      if (v32(v15 + v65, 1, v66) == 1)
      {
        sub_100004F84(v61, &qword_100AD1420);
        sub_100004F84(v67, &qword_100AD1420);
        (*v49)(v33, v66);
LABEL_26:
        sub_100004F84(v15, &unk_100AEEE20);
        v13 = &selRef_setRegion_;
        goto LABEL_27;
      }

      v35 = v66;
      v36 = v45;
      (*v44)(v45, v15 + v65, v66);
      sub_10067691C(&qword_100AD9220, &type metadata accessor for UUID);
      LODWORD(v65) = dispatch thunk of static Equatable.== infix(_:_:)();
      v15 = *v49;
      (*v49)(v36, v35);
      sub_100004F84(v61, &qword_100AD1420);
      sub_100004F84(v67, &qword_100AD1420);
      (v15)(v51, v35);
      sub_100004F84(v59, &qword_100AD1420);
      v13 = &selRef_setRegion_;
      if (v65)
      {
        goto LABEL_29;
      }

LABEL_27:
      v34 = v68;
LABEL_30:
      v41 = 0;
      v2 = 0;
      while (v17 != v41)
      {
        if (v8)
        {
          v42 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          if (__OFADD__(v41, 1))
          {
            goto LABEL_45;
          }
        }

        else
        {
          if (v41 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_46;
          }

          v42 = *(v1 + 8 * v41 + 32);

          if (__OFADD__(v41, 1))
          {
LABEL_45:
            __break(1u);
LABEL_46:
            __break(1u);
LABEL_47:
            __break(1u);
            goto LABEL_48;
          }
        }

        v15 = [v34 v13[67]];

        v22 = __OFADD__(v2, v15);
        v2 += v15;
        ++v41;
        if (v22)
        {
          goto LABEL_47;
        }
      }

      if (v2 == v52 || v2)
      {
        v18 = v62;
        sub_100287BA4(v69, v18);

        v19 = v69[0];
      }

      else
      {

        v19 = v62;
      }

      v15 = v63;
      v13 = v66;
      if (v63 == v53)
      {

        return v70;
      }
    }

LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    ;
  }

  return &_swiftEmptySetSingleton;
}

void *sub_100675190(uint64_t a1)
{
  if (qword_100ACFE28 != -1)
  {
    swift_once();
  }

  v3 = *(*(qword_100B2F9E0 + 16) + OBJC_IVAR____TtC7Journal13CoreDataStack_contextMain);
  v1[3] = v3;
  v4 = qword_100AD0A58;
  v5 = v3;
  if (v4 != -1)
  {
    swift_once();
  }

  v1[4] = qword_100B30F98;
  v1[5] = &_swiftEmptySetSingleton;
  v1[7] = 0;
  v1[8] = 0;
  v1[6] = &_swiftEmptySetSingleton;
  v1[2] = a1;

  return v1;
}

uint64_t sub_100675264()
{
  v1 = sub_10067476C();

  if ((v1 & 0xC000000000000001) != 0)
  {
    v2 = __CocoaSet.count.getter();
  }

  else
  {
    v2 = *(v1 + 16);
  }

  v3 = *(v0 + 64);

  if ((v3 & 0xC000000000000001) != 0)
  {
    v4 = __CocoaSet.count.getter();
  }

  else
  {
    v4 = *(v3 + 16);
  }

  if (!__OFADD__(v2, v4))
  {
    return v2 + v4 > 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_100675310(void *a1)
{
  swift_beginAccess();
  v3 = v1[6];

  v4 = sub_1006275AC(a1, v3);

  if (v4)
  {
    return 1;
  }

  swift_beginAccess();
  v6 = v1[5];

  v7 = sub_1006275AC(a1, v6);

  if (v7)
  {
    return 0;
  }

  v8 = sub_10067476C();

  v9 = sub_1006275AC(a1, v8);

  if (v9)
  {
    return 0;
  }

  v10 = v1[8];

  v11 = sub_1006275AC(a1, v10);

  if (v11)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

void *sub_100675424(char a1, void *a2)
{
  v3 = v2;
  if (a1)
  {
    swift_beginAccess();
    v5 = a2;
    sub_100287BA4(&v36, v5);
    swift_endAccess();

    swift_beginAccess();
    v6 = sub_10044A75C(v5);
    swift_endAccess();

    v7 = sub_10067476C();
    v9 = v8;
    v36 = v7;
    v10 = v5;
    sub_100287BA4(v35, v10);

    v11 = v36;
    v12 = v3[7];
    v3[7] = v36;
    v3[8] = v9;

    sub_10067689C(v12);
    v35[0] = v9;

    v13 = v35[0];
    v14 = v3[7];
    v3[7] = v11;
    v3[8] = v13;
    sub_10067689C(v14);
    v15 = v3[4];
    swift_getKeyPath();
    v35[0] = v15;
    sub_10067691C(&qword_100AD43D0, type metadata accessor for CustomJournalsController);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (!v15[5])
    {
      sub_100772990();
    }

    swift_getKeyPath();
    v35[0] = v15;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v16 = v15[5];
    if (v16)
    {
      v17 = v3[7];
      v18 = v16;
      sub_1006768DC(v17);

      v19 = sub_1006275AC(v18, v17);

      if (v19)
      {
        swift_beginAccess();
        v20 = v18;
        sub_100287BA4(&v36, v20);
        swift_endAccess();
      }

      else
      {
      }
    }

    v34 = sub_100674454(v33);

    return v34;
  }

  else
  {
    swift_beginAccess();
    v21 = a2;
    sub_100287BA4(&v36, v21);
    swift_endAccess();

    swift_beginAccess();
    v22 = sub_10044A75C(v21);
    swift_endAccess();

    v23 = sub_10067476C();
    v25 = v24;
    v35[0] = v23;

    v26 = v35[0];
    v27 = v3[7];
    v3[7] = v35[0];
    v3[8] = v25;

    sub_10067689C(v27);
    v35[0] = v25;

    v28 = v25;
    v29 = v3[7];
    v3[7] = v26;
    v3[8] = v28;

    sub_10067689C(v29);

    v30 = sub_100674454(v26);

    sub_1000F24EC(&unk_100AD4780);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100941D50;
    *(inited + 32) = [v21 objectID];
    sub_1006AD6A0(inited);
    return v30;
  }
}

id sub_100675820()
{
  v141 = type metadata accessor for Date();
  v1 = *(v141 - 1);
  __chkstk_darwin(v141);
  v137 = &v120 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1000F24EC(&unk_100AD4790);
  v4 = __chkstk_darwin(v3 - 8);
  v127 = &v120 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v129 = &v120 - v7;
  v8 = __chkstk_darwin(v6);
  v128 = &v120 - v9;
  __chkstk_darwin(v8);
  v131 = &v120 - v10;
  v140 = type metadata accessor for UUID();
  v11 = *(v140 - 8);
  v12 = __chkstk_darwin(v140);
  v14 = &v120 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v120 - v15;
  swift_beginAccess();
  v126 = v0;
  v17 = *(v0 + 48);
  if ((v17 & 0xC000000000000001) != 0)
  {

    __CocoaSet.makeIterator()();
    type metadata accessor for JournalMO();
    sub_10067691C(&qword_100ADAA00, &type metadata accessor for JournalMO);
    Set.Iterator.init(_cocoa:)();
    v18 = v143[10];
    v19 = v143[11];
    v21 = v143[12];
    v20 = v143[13];
    v22 = v143[14];
  }

  else
  {
    v23 = -1 << *(v17 + 32);
    v19 = (v17 + 56);
    v21 = ~v23;
    v24 = -v23;
    if (v24 < 64)
    {
      v25 = ~(-1 << v24);
    }

    else
    {
      v25 = -1;
    }

    v22 = (v25 & *(v17 + 56));

    v20 = 0;
  }

  v120 = v21;
  v26 = (v21 + 64) >> 6;
  v134 = (v1 + 48);
  v130 = (v1 + 56);
  v139 = (v1 + 8);
  v138 = (v11 + 8);
  v135 = v14;
  v136 = v16;
  v123 = v18;
  v122 = v19;
  v121 = v26;
  while ((v18 & 0x8000000000000000) == 0)
  {
    v27 = v20;
    v28 = v22;
    v29 = v20;
    if (!v22)
    {
      while (1)
      {
        v29 = (v27 + 1);
        if (__OFADD__(v27, 1))
        {
          break;
        }

        if (v29 >= v26)
        {
          goto LABEL_44;
        }

        v28 = v19[v29];
        ++v27;
        if (v28)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
LABEL_93:
      __break(1u);
      goto LABEL_94;
    }

LABEL_14:
    v30 = __clz(__rbit64(v28));
    v124 = (v28 - 1) & v28;
    v31 = *(v18 + 48);
    v125 = v29;
    v32 = *(v31 + ((v29 << 9) | (8 * v30)));
    if (!v32)
    {
      goto LABEL_44;
    }

LABEL_18:
    v34 = *(v126 + 16);
    if (v34 >> 62)
    {
      v35 = _CocoaArrayWrapper.endIndex.getter();
      if (v35)
      {
LABEL_20:
        v36 = v35 - 1;
        if (v35 >= 1)
        {
          v37 = 0;
          v38 = v34 & 0xC000000000000001;
          v132 = v34 & 0xC000000000000001;
          if ((v34 & 0xC000000000000001) != 0)
          {
LABEL_22:
            v39 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            goto LABEL_24;
          }

          while (1)
          {
            v39 = *(v34 + 8 * v37 + 32);

LABEL_24:
            v40 = [v32 id];
            if (v40)
            {
              v41 = v40;
              static UUID._unconditionallyBridgeFromObjectiveC(_:)();

              v42 = sub_10077DED0();
              v44 = v43;
              v45 = type metadata accessor for MergeableEntryAttributes();
              if (!(*(*(v45 - 8) + 48))(v44, 1, v45))
              {
                MergeableEntryAttributes.removeAssociatedJournal(id:)();
              }

              (v42)(v144, 0);
              [*(v39 + 32) removeJournalsObject:v32];
              sub_1007852C0();
              v46 = *(v39 + 32);
              [v46 setIsUploadedToCloud:0];
              if ((*(v39 + 40) & 1) == 0)
              {
                v47 = OBJC_IVAR____TtC7Journal14EntryViewModel_originalUpdatedDate;
                swift_beginAccess();
                v133 = v47;
                v48 = v37;
                v49 = v32;
                v50 = v34;
                v51 = v131;
                sub_1000082B4(v39 + v47, v131, &unk_100AD4790);
                v52 = (*v134)(v51, 1, v141);
                v53 = v51;
                v34 = v50;
                v32 = v49;
                v37 = v48;
                v38 = v132;
                sub_100004F84(v53, &unk_100AD4790);
                if (v52 == 1)
                {
                  v54 = [v46 updatedDate];
                  if (v54)
                  {
                    v55 = v128;
                    v56 = v54;
                    static Date._unconditionallyBridgeFromObjectiveC(_:)();

                    v57 = v55;
                    v38 = v132;
                    v58 = 0;
                  }

                  else
                  {
                    v58 = 1;
                    v57 = v128;
                  }

                  v63 = v133;
                  (*v130)(v57, v58, 1, v141);
                  swift_beginAccess();
                  sub_100041B1C(v57, v39 + v63);
                  swift_endAccess();
                }
              }

              v64 = v137;
              static Date.now.getter();
              isa = Date._bridgeToObjectiveC()().super.isa;
              (*v139)(v64, v141);
              [v46 setUpdatedDate:isa];

              (*v138)(v136, v140);

              if (v36 == v37)
              {
                goto LABEL_8;
              }
            }

            else
            {
              if (qword_100AD0A68 != -1)
              {
                swift_once();
              }

              v59 = type metadata accessor for Logger();
              sub_10000617C(v59, qword_100AF0BF0);
              v60 = Logger.logObject.getter();
              v61 = static os_log_type_t.error.getter();
              if (os_log_type_enabled(v60, v61))
              {
                v62 = swift_slowAlloc();
                *v62 = 0;
                _os_log_impl(&_mh_execute_header, v60, v61, "Journal is missing an ID", v62, 2u);
              }

              if (v36 == v37)
              {
                goto LABEL_8;
              }
            }

            ++v37;
            if (v38)
            {
              goto LABEL_22;
            }
          }
        }

LABEL_94:
        __break(1u);
        goto LABEL_95;
      }
    }

    else
    {
      v35 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v35)
      {
        goto LABEL_20;
      }
    }

LABEL_8:

    v20 = v125;
    v22 = v124;
    v18 = v123;
    v19 = v122;
    v26 = v121;
  }

  v33 = __CocoaSet.Iterator.next()();
  if (v33)
  {
    v143[0] = v33;
    type metadata accessor for JournalMO();
    swift_dynamicCast();
    v32 = v144[0];
    v125 = v20;
    v124 = v22;
    if (v144[0])
    {
      goto LABEL_18;
    }
  }

LABEL_44:
  sub_100014FF8();
  v66 = v126;
  swift_beginAccess();
  v67 = *(v66 + 40);
  if ((v67 & 0xC000000000000001) != 0)
  {

    __CocoaSet.makeIterator()();
    type metadata accessor for JournalMO();
    sub_10067691C(&qword_100ADAA00, &type metadata accessor for JournalMO);
    Set.Iterator.init(_cocoa:)();
    v67 = v144[0];
    v68 = v144[1];
    v70 = v144[2];
    v69 = v144[3];
    v71 = v144[4];
  }

  else
  {
    v72 = -1 << *(v67 + 32);
    v68 = (v67 + 56);
    v70 = ~v72;
    v73 = -v72;
    if (v73 < 64)
    {
      v74 = ~(-1 << v73);
    }

    else
    {
      v74 = -1;
    }

    v71 = v74 & *(v67 + 56);

    v69 = 0;
  }

  v123 = v70;
  v75 = (v70 + 64) >> 6;
  v125 = v67;
  v128 = v68;
  v124 = v75;
  while (2)
  {
    if ((v67 & 0x8000000000000000) == 0)
    {
      v76 = v69;
      v77 = v71;
      for (i = v69; !v77; ++v76)
      {
        i = v76 + 1;
        if (__OFADD__(v76, 1))
        {
          goto LABEL_93;
        }

        if (i >= v75)
        {
          goto LABEL_87;
        }

        v77 = *&v68[8 * i];
      }

      v79 = __clz(__rbit64(v77));
      v131 = (v77 - 1) & v77;
      v80 = *(v67 + 48);
      v132 = i;
      v81 = *(v80 + ((i << 9) | (8 * v79)));
      if (!v81)
      {
        goto LABEL_87;
      }

LABEL_61:
      v83 = *(v126 + 16);
      if (!(v83 >> 62))
      {
        v84 = *((v83 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v84)
        {
          goto LABEL_63;
        }

        goto LABEL_51;
      }

      v84 = _CocoaArrayWrapper.endIndex.getter();
      if (!v84)
      {
LABEL_51:

        v69 = v132;
        v71 = v131;
        v67 = v125;
        v68 = v128;
        v75 = v124;
        continue;
      }

LABEL_63:
      v85 = v84 - 1;
      if (v84 >= 1)
      {
        v86 = 0;
        v87 = v83 & 0xC000000000000001;
        if ((v83 & 0xC000000000000001) != 0)
        {
LABEL_65:
          v88 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          goto LABEL_67;
        }

        while (1)
        {
          v88 = *(v83 + 8 * v86 + 32);

LABEL_67:
          v89 = [v81 id];
          if (v89)
          {
            v90 = v89;
            static UUID._unconditionallyBridgeFromObjectiveC(_:)();

            v91 = sub_10077DED0();
            v93 = v92;
            v94 = type metadata accessor for MergeableEntryAttributes();
            if (!(*(*(v94 - 8) + 48))(v93, 1, v94))
            {
              MergeableEntryAttributes.addAssociatedJournal(id:)();
            }

            (v91)(v143, 0);
            [*(v88 + 32) addJournalsObject:v81];
            sub_1007852C0();
            v95 = *(v88 + 32);
            [v95 setIsUploadedToCloud:0];
            if ((*(v88 + 40) & 1) == 0)
            {
              v96 = OBJC_IVAR____TtC7Journal14EntryViewModel_originalUpdatedDate;
              swift_beginAccess();
              v133 = v96;
              v136 = v95;
              v97 = v87;
              v98 = v81;
              v99 = v85;
              v100 = v83;
              v101 = v129;
              sub_1000082B4(v88 + v96, v129, &unk_100AD4790);
              LODWORD(v96) = (*v134)(v101, 1, v141);
              v102 = v101;
              v83 = v100;
              v85 = v99;
              v81 = v98;
              v87 = v97;
              v95 = v136;
              sub_100004F84(v102, &unk_100AD4790);
              if (v96 == 1)
              {
                v103 = [v95 updatedDate];
                if (v103)
                {
                  v104 = v127;
                  v105 = v103;
                  static Date._unconditionallyBridgeFromObjectiveC(_:)();

                  v106 = v104;
                  v107 = 0;
                }

                else
                {
                  v107 = 1;
                  v106 = v127;
                }

                v112 = v133;
                (*v130)(v106, v107, 1, v141);
                swift_beginAccess();
                sub_100041B1C(v106, v88 + v112);
                swift_endAccess();
              }
            }

            v113 = v137;
            static Date.now.getter();
            v114 = Date._bridgeToObjectiveC()().super.isa;
            (*v139)(v113, v141);
            [v95 setUpdatedDate:v114];

            (*v138)(v135, v140);

            if (v85 == v86)
            {
              goto LABEL_51;
            }
          }

          else
          {
            if (qword_100AD0A68 != -1)
            {
              swift_once();
            }

            v108 = type metadata accessor for Logger();
            sub_10000617C(v108, qword_100AF0BF0);
            v109 = Logger.logObject.getter();
            v110 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v109, v110))
            {
              v111 = swift_slowAlloc();
              *v111 = 0;
              _os_log_impl(&_mh_execute_header, v109, v110, "Journal is missing an ID", v111, 2u);
            }

            if (v85 == v86)
            {
              goto LABEL_51;
            }
          }

          ++v86;
          if (v87)
          {
            goto LABEL_65;
          }
        }
      }

LABEL_95:
      __break(1u);
    }

    break;
  }

  v82 = __CocoaSet.Iterator.next()();
  if (v82)
  {
    v142 = v82;
    type metadata accessor for JournalMO();
    swift_dynamicCast();
    v81 = v143[0];
    v132 = v69;
    v131 = v71;
    if (v143[0])
    {
      goto LABEL_61;
    }
  }

LABEL_87:
  sub_100014FF8();
  v115 = *(v126 + 24);
  v143[0] = 0;
  v116 = [v115 save:v143];
  v117 = v143[0];
  if (v116)
  {

    return v117;
  }

  else
  {
    v141 = v143[0];
    v119 = v143[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }
}

uint64_t sub_100676818()
{

  sub_10067689C(*(v0 + 56));

  return swift_deallocClassInstance();
}

uint64_t sub_10067689C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1006768DC(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10067691C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100676964(unsigned __int8 a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType);
  *(v1 + OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType) = a1;
  v3 = OBJC_IVAR____TtC7Journal16JournalAssetView_hasCalledSizeTypeUpdated;
  if (*(v1 + OBJC_IVAR____TtC7Journal16JournalAssetView_hasCalledSizeTypeUpdated) != 1 || (result = sub_10003C2FC(a1, v2), (result & 1) == 0))
  {
    result = (*((swift_isaMask & *v1) + 0x100))();
    *(v1 + v3) = 1;
  }

  return result;
}

uint64_t sub_1006769F0(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC7Journal16JournalAssetView_loadingDelegate + 8) = a2;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  v3 = *((swift_isaMask & *v2) + 0xD8);

  return v3();
}

id sub_100676A80(void *a1)
{
  v3 = OBJC_IVAR____TtC7Journal16JournalAssetView_fallbackView;
  type metadata accessor for CanvasFallbackAssetView();
  *&v1[v3] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v1[OBJC_IVAR____TtC7Journal16JournalAssetView_hasCalledSizeTypeUpdated] = 0;
  v1[OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType] = 6;
  *&v1[OBJC_IVAR____TtC7Journal16JournalAssetView_loadingDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v1[OBJC_IVAR____TtC7Journal16JournalAssetView_isAssetFinishedLoading] = 0;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for JournalAssetView();
  v4 = objc_msgSendSuper2(&v6, "initWithCoder:", a1);

  if (v4)
  {
  }

  return v4;
}

id sub_100676B74()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JournalAssetView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100676C6C()
{
  v0 = type metadata accessor for Logger();
  sub_100006118(v0, qword_100AEC188);
  sub_10000617C(v0, qword_100AEC188);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100676CEC(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  sub_1000F24EC(&unk_100AD5B30);
  v3[5] = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v5 = dispatch thunk of Actor.unownedExecutor.getter();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v3[6] = v5;
  v3[7] = v7;

  return _swift_task_switch(sub_100676DC8, v5, v7);
}

uint64_t sub_100676DC8()
{
  v1 = swift_task_alloc();
  v0[8] = v1;
  *v1 = v0;
  v1[1] = sub_100676E60;
  v2 = v0[3];
  v3 = v0[2];

  return sub_10008B5E8(v3, v2);
}

uint64_t sub_100676E60(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 72) = a1;

  v3 = *(v2 + 56);
  v4 = *(v2 + 48);

  return _swift_task_switch(sub_100676F88, v4, v3);
}

uint64_t sub_100676F88()
{
  v1 = v0[9];
  if (v1)
  {
LABEL_13:

    v16 = v0[1];

    return v16(v1);
  }

  v2 = v0[5];
  sub_1006780F0(v0[4] + qword_100B2FD78, v2);
  v3 = type metadata accessor for MultiPinMapAssetMetadata();
  v4 = *(v3 - 8);
  v5 = (*(v4 + 48))(v2, 1, v3);
  v6 = v0[5];
  if (v5 == 1)
  {
    sub_100004F84(v0[5], &unk_100AD5B30);
LABEL_8:
    if (qword_100AD00C8 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_10000617C(v12, qword_100AEC188);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "no visits data", v15, 2u);
    }

    goto LABEL_13;
  }

  v7 = MultiPinMapAssetMetadata.visitsData.getter();
  v0[10] = v7;
  (*(v4 + 8))(v6, v3);
  if (!v7)
  {
    goto LABEL_8;
  }

  v8 = swift_task_alloc();
  v0[11] = v8;
  *v8 = v0;
  v8[1] = sub_1006771F4;
  v9 = v0[3];
  v10 = v0[2];

  return sub_100677760(v10, v9, v7);
}

uint64_t sub_1006771F4(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 96) = a1;

  v3 = *(v2 + 56);
  v4 = *(v2 + 48);

  return _swift_task_switch(sub_100677340, v4, v3);
}

uint64_t sub_100677340()
{
  if (*(v0 + 96))
  {
    v1 = *(*(v0 + 32) + qword_100B302E0);
    *(v0 + 120) = v1;
    if (sub_100512604(v1))
    {
      sub_10029D254();
      v3 = v2;
      v4 = [objc_opt_self() mainScreen];
      [v4 scale];
      v6 = v5;

      v7 = swift_task_alloc();
      *(v0 + 104) = v7;
      *v7 = v0;
      v7[1] = sub_1006774A4;
      v8 = *(v0 + 16);

      return sub_10059AEC4(v8, v3 * v6);
    }

    v10 = *(v0 + 96);
  }

  else
  {
    v10 = 0;
  }

  v11 = *(v0 + 8);

  return v11(v10);
}

uint64_t sub_1006774A4(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 112) = a1;

  v3 = *(v2 + 56);
  v4 = *(v2 + 48);

  return _swift_task_switch(sub_1006775CC, v4, v3);
}

uint64_t sub_1006775CC()
{
  v1 = *(v0 + 112);
  if (v1)
  {
    if (sub_100511E4C(*(v0 + 120)))
    {
      if (qword_100ACFCB0 != -1)
      {
        swift_once();
      }

      sub_100752914(v1, *(*(v0 + 32) + qword_100AF0110), *(*(v0 + 32) + qword_100AF0110 + 8));
    }
  }

  else
  {
    if (qword_100AD00C8 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_10000617C(v2, qword_100AEC188);
    v1 = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v1, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v1, v3, "error creating thumbnail from video preview image", v4, 2u);
    }
  }

  v5 = *(v0 + 96);

  v6 = *(v0 + 8);

  return v6(v5);
}

uint64_t sub_100677760(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[19] = a3;
  v4[20] = v3;
  sub_1000F24EC(&unk_100AD5B30);
  v4[21] = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v6 = dispatch thunk of Actor.unownedExecutor.getter();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v4[22] = v6;
  v4[23] = v8;

  return _swift_task_switch(sub_100677838, v6, v8);
}

uint64_t sub_100677838()
{
  v1 = v0[20];
  v2 = sub_10032BED4(v0[19]);
  v0[24] = v2;
  v3 = *(v1 + qword_100B302F0);
  v4 = *(v1 + qword_100B302E0);
  v5 = swift_task_alloc();
  v0[25] = v5;
  *v5 = v0;
  v5[1] = sub_10067791C;

  return sub_10050728C(v2, v4, v3);
}

uint64_t sub_10067791C(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 208) = a1;

  v3 = *(v2 + 184);
  v4 = *(v2 + 176);

  return _swift_task_switch(sub_100677A68, v4, v3);
}

uint64_t sub_100677A68()
{
  v1 = *(v0 + 168);
  sub_1006780F0(*(v0 + 160) + qword_100B2FD78, v1);
  v2 = type metadata accessor for MultiPinMapAssetMetadata();
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_100004F84(*(v0 + 168), &unk_100AD5B30);
  }

  else
  {
    v4 = MultiPinMapAssetMetadata.mapCameraData.getter();
    v6 = *(v0 + 168);
    if (v5 >> 60 == 15)
    {
      (*(v3 + 8))(*(v0 + 168), v2);
    }

    else
    {
      v7 = v4;
      v8 = v5;
      sub_100678160();
      v9 = static NSCoding<>.create(from:)();
      sub_10003A5C8(v7, v8);
      (*(v3 + 8))(v6, v2);
      if (v9)
      {
        goto LABEL_7;
      }
    }
  }

  v9 = [*(v0 + 208) camera];
LABEL_7:
  v10 = *(v0 + 208);
  [v10 setCamera:v9];

  [v10 _setRendersInBackground:1];
  v11 = [objc_allocWithZone(MKMapSnapshotter) initWithOptions:v10];
  *(v0 + 216) = v11;
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 144;
  *(v0 + 24) = sub_100677D14;
  v12 = swift_continuation_init();
  *(v0 + 136) = sub_1000F24EC(&qword_100ADBE50);
  *(v0 + 80) = _NSConcreteStackBlock;
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_10039677C;
  *(v0 + 104) = &unk_100A774C0;
  *(v0 + 112) = v12;
  [v11 startWithCompletionHandler:v0 + 80];

  return _swift_continuation_await(v0 + 16);
}

uint64_t sub_100677D14()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 224) = v2;
  v3 = *(v1 + 184);
  v4 = *(v1 + 176);
  if (v2)
  {
    v5 = sub_100677EE0;
  }

  else
  {
    v5 = sub_100677E44;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100677E44()
{
  v2 = v0[26];
  v1 = v0[27];
  v3 = v0[18];
  v4 = [v3 image];

  v5 = v0[1];

  return v5(v4);
}

uint64_t sub_100677EE0()
{
  swift_willThrow();
  if (qword_100AD00C8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000617C(v1, qword_100AEC188);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[27];
  v6 = v0[26];
  if (v4)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v2, v3, "MKMapSnapshotter: Unable to create Location Preview Map Snapshot with error: %@", v7, 0xCu);
    sub_100004F84(v8, &unk_100AD4BB0);
  }

  else
  {
  }

  v10 = v0[1];

  return v10(0);
}

uint64_t sub_1006780F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F24EC(&unk_100AD5B30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100678160()
{
  result = qword_100AD91B0;
  if (!qword_100AD91B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100AD91B0);
  }

  return result;
}

uint64_t sub_1006781AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[13] = a3;
  v4[14] = v3;
  v4[11] = a1;
  v4[12] = a2;
  sub_1000F24EC(&qword_100AD8D78);
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  sub_1000F24EC(&unk_100AD4790);
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  sub_1000F24EC(&qword_100AD1420);
  v4[20] = swift_task_alloc();
  v6 = type metadata accessor for UUID();
  v4[21] = v6;
  v4[22] = *(v6 - 8);
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  if (a2)
  {
    swift_getObjectType();
    v7 = dispatch thunk of Actor.unownedExecutor.getter();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v4[25] = v7;
  v4[26] = v9;

  return _swift_task_switch(sub_100678384, v7, v9);
}

uint64_t sub_100678384()
{
  v33 = v0;
  v1 = v0[21];
  v2 = v0[22];
  v3 = v0[20];
  sub_1000082B4(v0[14] + OBJC_IVAR____TtC7Journal14EntryViewModel_uuid, v3, &qword_100AD1420);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_100004F84(v0[20], &qword_100AD1420);
    if (qword_100AD00D0 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_10000617C(v4, qword_100AEC318);

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v32 = v8;
      *v7 = 136315138;
      v9 = sub_10077E0F4();
      v11 = sub_100008458(v9, v10, &v32);

      *(v7 + 4) = v11;
      _os_log_impl(&_mh_execute_header, v5, v6, "(toEntity) unable to get entity identifier with entry: %s", v7, 0xCu);
      sub_10000BA7C(v8);
    }

    sub_1001928AC();
    swift_allocError();
    *v12 = 0;
    swift_willThrow();

    v13 = v0[1];

    return v13();
  }

  else
  {
    v15 = v0[23];
    v16 = v0[24];
    v17 = v0[21];
    v18 = v0[22];
    (*(v18 + 32))(v16, v0[20], v17);
    v19 = *(v18 + 16);
    v0[27] = v19;
    v0[28] = (v18 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v19(v15, v16, v17);
    v20 = sub_1000819F8();
    if (v20)
    {
      v21 = v20;
      v22 = [v20 string];

      v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v25 = v24;
    }

    else
    {
      v23 = 0;
      v25 = 0;
    }

    v0[29] = v23;
    v0[30] = v25;
    v26 = v0[14];
    v27 = [objc_opt_self() traitCollectionWithUserInterfaceStyle:1];
    type metadata accessor for CustomAttributeProviderConcrete();
    v28 = swift_allocObject();
    *(v28 + 16) = 0;
    Logger.init(subsystem:category:)();
    v29 = v28 + OBJC_IVAR____TtC7Journal31CustomAttributeProviderConcrete_attachmentConfigOverride;
    *(v29 + 4) = 0;
    *v29 = 2;
    v0[31] = sub_100789EB0(v27, v28, v26);

    v30 = swift_task_alloc();
    v0[32] = v30;
    *v30 = v0;
    v30[1] = sub_1006787F8;
    v31 = v0[12];

    return sub_100678E08(v31);
  }
}

uint64_t sub_1006787F8(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  *(v3 + 56) = v1;
  *(v3 + 64) = a1;

  v4 = *(v2 + 208);
  v5 = *(v2 + 200);

  return _swift_task_switch(sub_10067891C, v5, v4);
}

uint64_t sub_10067891C()
{
  v33 = *(v0 + 240);
  v35 = *(v0 + 248);
  v31 = *(v0 + 232);
  v1 = *(v0 + 216);
  v2 = *(v0 + 184);
  v3 = *(v0 + 168);
  v4 = *(v0 + 152);
  v5 = *(v0 + 112);
  v6 = *(v0 + 88);
  v7 = OBJC_IVAR____TtC7Journal14EntryViewModel_date;
  swift_beginAccess();
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  (*(v9 + 16))(v4, v5 + v7, v8);
  v10 = 1;
  (*(v9 + 56))(v4, 0, 1, v8);
  v36 = sub_10067A554();
  v11 = type metadata accessor for JournalEntity();
  v12 = v11[5];
  sub_1000F24EC(&qword_100AEC330);
  *(v6 + v12) = EntityProperty<>.init()();
  v13 = v11[6];
  sub_1000F24EC(&qword_100AEC338);
  *(v6 + v13) = EntityProperty<>.init()();
  v14 = v11[7];
  sub_1000F24EC(&qword_100AEC340);
  *(v6 + v14) = EntityProperty<>.init()();
  v15 = v11[8];
  sub_1000F24EC(&qword_100AEC348);
  *(v6 + v15) = EntityProperty<>.init()();
  v16 = v11[9];
  sub_1000F24EC(&qword_100AEC350);
  *(v6 + v16) = EntityProperty<>.init()();
  v1(v6, v2, v3);
  *(v0 + 40) = v31;
  *(v0 + 48) = v33;
  EntityProperty.wrappedValue.setter();
  if (v35)
  {
    v32 = *(v0 + 248);
    AttributedString.init(_:)();
    v10 = 0;
  }

  else
  {
    v32 = 0;
  }

  v17 = *(v0 + 64);
  v18 = *(v0 + 176);
  v29 = *(v0 + 168);
  v30 = *(v0 + 184);
  v19 = *(v0 + 152);
  v34 = *(v0 + 192);
  v21 = *(v0 + 136);
  v20 = *(v0 + 144);
  v22 = *(v0 + 120);
  v23 = *(v0 + 128);
  v24 = type metadata accessor for AttributedString();
  (*(*(v24 - 8) + 56))(v23, v10, 1, v24);
  sub_1000082B4(v23, v22, &qword_100AD8D78);
  EntityProperty.wrappedValue.setter();
  sub_100004F84(v23, &qword_100AD8D78);
  *(v0 + 72) = v17;
  EntityProperty.wrappedValue.setter();
  sub_1000082B4(v19, v20, &unk_100AD4790);
  sub_1000082B4(v20, v21, &unk_100AD4790);
  EntityProperty.wrappedValue.setter();
  sub_100004F84(v20, &unk_100AD4790);
  *(v0 + 80) = v36;
  v25 = v36;
  EntityProperty.wrappedValue.setter();

  sub_100004F84(v19, &unk_100AD4790);
  v26 = *(v18 + 8);
  v26(v30, v29);
  v26(v34, v29);

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_100678D40()
{
  v0 = type metadata accessor for Logger();
  sub_100006118(v0, qword_100AEC318);
  v1 = sub_10000617C(v0, qword_100AEC318);
  if (qword_100AD0248 != -1)
  {
    swift_once();
  }

  v2 = sub_10000617C(v0, qword_100B30178);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}