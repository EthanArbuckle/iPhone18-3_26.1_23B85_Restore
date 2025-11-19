double _s23ShelfKitCollectionViews21ModernTitleHeaderViewC19roughHeightEstimate6header5style6traits12CoreGraphics7CGFloatV0aB00G0V_AC5StyleVSo07UITraitC0CtFZ_0(uint64_t a1, uint64_t a2, void *a3)
{
  v111 = a3;
  v113 = sub_30D6F8();
  v103 = *(v113 - 8);
  __chkstk_darwin(v113);
  v110 = &v101 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_406150);
  __chkstk_darwin(v5 - 8);
  v7 = &v101 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401148);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_315430;
  v9 = type metadata accessor for ModernTitleHeaderView.Style(0);
  v10 = a2 + v9[5];
  v11 = *(v10 + 48);
  v13 = *(v10 + 16);
  v131 = *(v10 + 32);
  v12 = v131;
  v132 = v11;
  v15 = *(v10 + 96);
  v17 = *(v10 + 48);
  v16 = *(v10 + 64);
  v18 = v16;
  v134 = *(v10 + 80);
  v14 = v134;
  v135 = v15;
  v133 = v16;
  v19 = *(v10 + 16);
  v130[0] = *v10;
  v130[1] = v19;
  v136 = *(v10 + 112);
  *(inited + 32) = v130[0];
  *(inited + 48) = v13;
  *(inited + 64) = v12;
  *(inited + 80) = v17;
  v20 = *(v10 + 96);
  *(inited + 144) = *(v10 + 112);
  *(inited + 112) = v14;
  *(inited + 128) = v20;
  *(inited + 96) = v18;
  sub_9004C(v130, &v122);
  *&v122 = sub_30B0A8();
  *(&v122 + 1) = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_40AB30);
  sub_120F0();
  v22 = sub_30D398();

  if ((v22 & 1) == 0)
  {
    v23 = (a2 + v9[12]);
    v24 = v23[5];
    v126 = v23[4];
    v127 = v24;
    v128 = v23[6];
    v129 = *(v23 + 56);
    v25 = v23[1];
    v122 = *v23;
    v123 = v25;
    v26 = v23[3];
    v124 = v23[2];
    v125 = v26;
    sub_9004C(&v122, &v120);
    inited = sub_CAFC0(&dword_0 + 1, 2, 1, inited);
    *(inited + 16) = 2;
    v27 = v123;
    *(inited + 152) = v122;
    v28 = v127;
    *(inited + 216) = v126;
    *(inited + 232) = v28;
    *(inited + 248) = v128;
    *(inited + 168) = v27;
    v29 = v125;
    *(inited + 184) = v124;
    *(inited + 264) = v129;
    *(inited + 200) = v29;
  }

  sub_30B058();
  v30 = sub_30B048();
  v31 = (*(*(v30 - 8) + 48))(v7, 1, v30);
  sub_EB68(v7, &qword_406150);
  if (v31 != 1)
  {
    v32 = a2;
    v33 = v111;
    v34 = [v111 preferredContentSizeCategory];
    v35 = sub_30CAD8();

    v36 = [v33 horizontalSizeClass];
    if (v35)
    {
      a2 = v32;
      if (v36 != &dword_0 + 1)
      {
        goto LABEL_10;
      }

      v37 = (v32 + v9[12]);
      v38 = v37[5];
      v126 = v37[4];
      v127 = v38;
      v128 = v37[6];
      v129 = *(v37 + 56);
      v39 = v37[1];
      v122 = *v37;
      v123 = v39;
      v40 = v37[3];
      v124 = v37[2];
      v125 = v40;
      sub_9004C(&v122, &v120);
      v42 = *(inited + 16);
      v41 = *(inited + 24);
      if (v42 >= v41 >> 1)
      {
        inited = sub_CAFC0((v41 > 1), v42 + 1, 1, inited);
      }

      *(inited + 16) = v42 + 1;
      v43 = inited + 120 * v42;
      v44 = v122;
      v45 = v123;
      v46 = v125;
      *(v43 + 64) = v124;
      *(v43 + 80) = v46;
      *(v43 + 32) = v44;
      *(v43 + 48) = v45;
      v47 = v126;
      v48 = v127;
      v49 = v128;
      *(v43 + 144) = v129;
      *(v43 + 112) = v48;
      *(v43 + 128) = v49;
      *(v43 + 96) = v47;
    }

    a2 = v32;
  }

LABEL_10:
  v50 = (a2 + v9[13]);
  v51 = v50[5];
  v126 = v50[4];
  v127 = v51;
  v128 = v50[6];
  v129 = *(v50 + 56);
  v52 = v50[1];
  v122 = *v50;
  v123 = v52;
  v53 = v50[3];
  v124 = v50[2];
  v125 = v53;
  sub_9004C(&v122, &v120);
  v55 = *(inited + 16);
  v54 = *(inited + 24);
  v56 = v55 + 1;
  if (v55 >= v54 >> 1)
  {
    v100 = sub_CAFC0((v54 > 1), v56, 1, inited);
    v56 = v55 + 1;
    inited = v100;
  }

  *(inited + 16) = v56;
  v112 = inited;
  v57 = inited + 120 * v55;
  v58 = v122;
  v59 = v123;
  v60 = v125;
  *(v57 + 64) = v124;
  *(v57 + 80) = v60;
  *(v57 + 32) = v58;
  *(v57 + 48) = v59;
  v61 = v126;
  v62 = v127;
  v63 = v128;
  *(v57 + 144) = v129;
  *(v57 + 112) = v62;
  *(v57 + 128) = v63;
  *(v57 + 96) = v61;
  v114 = _swiftEmptyArrayStorage;
  sub_1752AC(0, v56, 0);
  v108 = (v103 + 16);
  v64 = (v103 + 88);
  v65 = v114;
  v109 = enum case for FloatingPointRoundingRule.toNearestOrAwayFromZero(_:);
  v107 = enum case for FloatingPointRoundingRule.toNearestOrEven(_:);
  v105 = enum case for FloatingPointRoundingRule.down(_:);
  v106 = enum case for FloatingPointRoundingRule.up(_:);
  v104 = enum case for FloatingPointRoundingRule.towardZero(_:);
  v102 = (v103 + 8);
  v66 = 32;
  LODWORD(v103) = enum case for FloatingPointRoundingRule.awayFromZero(_:);
  while (1)
  {
    v67 = *(v112 + v66);
    v68 = *(v112 + v66 + 16);
    v69 = *(v112 + v66 + 48);
    v121[1] = *(v112 + v66 + 32);
    v121[2] = v69;
    v120 = v67;
    v121[0] = v68;
    v70 = *(v112 + v66 + 64);
    v71 = *(v112 + v66 + 80);
    v72 = *(v112 + v66 + 96);
    LOWORD(v121[6]) = *(v112 + v66 + 112);
    v121[4] = v71;
    v121[5] = v72;
    v121[3] = v70;
    sub_9004C(&v120, &v115);
    if (qword_3FAC38 != -1)
    {
      swift_once();
    }

    v73 = __swift_project_value_buffer(v113, qword_4295D8);
    v74 = *&v120;
    if (LOBYTE(v121[0]) == 1)
    {
      v75 = *(&v120 + 1);
      sub_124C4(0, &qword_4019C0);
      sub_1728F0(v121 + 8, &v115);
      if ((sub_30C978() & 1) == 0)
      {
        v74 = v75;
      }
    }

    else
    {
      sub_9004C(&v120, &v115);
    }

    v117 = *(&v121[2] + 8);
    v118 = *(&v121[3] + 8);
    v119[0] = *(&v121[4] + 8);
    *(v119 + 10) = *(&v121[5] + 2);
    v115 = *(v121 + 8);
    v116 = *(&v121[1] + 8);
    if (qword_3FB040 != -1)
    {
      swift_once();
    }

    v76 = sub_2DBCF0(qword_42B078);
    v117 = *(&v121[2] + 8);
    v118 = *(&v121[3] + 8);
    v119[0] = *(&v121[4] + 8);
    *(v119 + 10) = *(&v121[5] + 2);
    v115 = *(v121 + 8);
    v116 = *(&v121[1] + 8);
    v77 = sub_2DBCF0(v111);
    [v76 _bodyLeading];
    v79 = v78;
    [v77 _bodyLeading];
    v81 = v80;

    sub_900A8(&v120);
    v82 = v74 / v79 * v81;
    *&v115 = v82;
    v83 = v110;
    v84 = v113;
    (*v108)(v110, v73, v113);
    v85 = (*v64)(v83, v84);
    if (v85 == v109)
    {
      sub_900A8(&v120);
      v86 = round(v82);
    }

    else if (v85 == v107)
    {
      sub_900A8(&v120);
      v86 = rint(v82);
    }

    else if (v85 == v106)
    {
      sub_900A8(&v120);
      v86 = ceil(v82);
    }

    else if (v85 == v105)
    {
      sub_900A8(&v120);
      v86 = floor(v82);
    }

    else if (v85 == v104)
    {
      sub_900A8(&v120);
      v86 = trunc(v82);
    }

    else if (v85 == v103)
    {
      sub_900A8(&v120);
      v87 = ceil(v82);
      v88 = floor(v82);
      v86 = v82 < 0.0 ? v88 : v87;
    }

    else
    {
      sub_30C4C8();
      (*v102)(v110, v113);
      sub_900A8(&v120);
      v86 = *&v115;
    }

    v114 = v65;
    v90 = v65[2];
    v89 = v65[3];
    if (v90 >= v89 >> 1)
    {
      sub_1752AC((v89 > 1), v90 + 1, 1);
      v65 = v114;
    }

    v65[2] = v90 + 1;
    *&v65[v90 + 4] = v86;
    if (!v55)
    {
      break;
    }

    --v55;
    v66 += 120;
  }

  v91 = v65[2];
  if (v91)
  {
    if (v91 > 3)
    {
      v92 = v91 & 0x7FFFFFFFFFFFFFFCLL;
      v94 = (v65 + 6);
      v93 = 0.0;
      v95 = v91 & 0x7FFFFFFFFFFFFFFCLL;
      do
      {
        v93 = v93 + *(v94 - 2) + *(v94 - 1) + *v94 + v94[1];
        v94 += 4;
        v95 -= 4;
      }

      while (v95);
      if (v91 == v92)
      {
        goto LABEL_50;
      }
    }

    else
    {
      v92 = 0;
      v93 = 0.0;
    }

    v96 = v91 - v92;
    v97 = &v65[v92 + 4];
    do
    {
      v98 = *v97++;
      v93 = v93 + v98;
      --v96;
    }

    while (v96);
LABEL_50:

    goto LABEL_51;
  }

  v93 = 0.0;
LABEL_51:

  return v93;
}

char *_s23ShelfKitCollectionViews21ModernTitleHeaderViewC5frameACSo6CGRectV_tcfc_0()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v0[OBJC_IVAR____TtC23ShelfKitCollectionViews21ModernTitleHeaderView_forceHideButton] = 0;
  *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews21ModernTitleHeaderView_artworkCancellable] = 0;
  *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews21ModernTitleHeaderView____lazy_storage___topConstraint] = 0;
  *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews21ModernTitleHeaderView_button] = 0;
  *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews21ModernTitleHeaderView____lazy_storage___bottomConstraint] = 0;
  v0[OBJC_IVAR____TtC23ShelfKitCollectionViews21ModernTitleHeaderView_accessibilityHasContextAction] = 0;
  v0[OBJC_IVAR____TtC23ShelfKitCollectionViews21ModernTitleHeaderView_shouldStackButtons] = 2;
  if (qword_3FAB78 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for ModernTitleHeaderView.Style(0);
  v3 = __swift_project_value_buffer(v2, qword_429420);
  v4 = &v0[OBJC_IVAR____TtC23ShelfKitCollectionViews21ModernTitleHeaderView_style];
  sub_170EA0(v3, &v0[OBJC_IVAR____TtC23ShelfKitCollectionViews21ModernTitleHeaderView_style], type metadata accessor for ModernTitleHeaderView.Style);
  type metadata accessor for ArtworkView();
  v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v6 = OBJC_IVAR____TtC23ShelfKitCollectionViews21ModernTitleHeaderView_artworkView;
  *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews21ModernTitleHeaderView_artworkView] = v5;
  LODWORD(v7) = 1144750080;
  [v5 setContentCompressionResistancePriority:0 forAxis:v7];
  LODWORD(v8) = 1144750080;
  [*&v0[v6] setContentCompressionResistancePriority:1 forAxis:v8];
  type metadata accessor for DynamicTypeLabel();
  swift_beginAccess();
  v9 = &v4[*(v2 + 24)];
  v10 = *(v9 + 3);
  v11 = *(v9 + 1);
  v93 = *(v9 + 2);
  v94 = v10;
  v12 = *(v9 + 3);
  v95[0] = *(v9 + 4);
  *(v95 + 10) = *(v9 + 74);
  v13 = *(v9 + 1);
  v92[0] = *v9;
  v92[1] = v13;
  v98 = v93;
  v99 = v12;
  v100[0] = *(v9 + 4);
  *(v100 + 10) = *(v9 + 74);
  v96 = v92[0];
  v97 = v11;
  sub_EB00(v92, v90, &qword_3FFD68);
  v14 = sub_235C3C(&v96, 0, 0, 1);
  v15 = OBJC_IVAR____TtC23ShelfKitCollectionViews21ModernTitleHeaderView_titleLabel;
  *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews21ModernTitleHeaderView_titleLabel] = v14;
  LODWORD(v16) = 1144750080;
  [v14 setContentCompressionResistancePriority:0 forAxis:v16];
  LODWORD(v17) = 1144750080;
  [*&v0[v15] setContentCompressionResistancePriority:1 forAxis:v17];
  v18 = &v4[*(v2 + 28)];
  v19 = v18[3];
  v20 = v18[1];
  v98 = v18[2];
  v99 = v19;
  v21 = v18[3];
  v100[0] = v18[4];
  *(v100 + 10) = *(v18 + 74);
  v22 = v18[1];
  v96 = *v18;
  v97 = v22;
  v90[2] = v98;
  v90[3] = v21;
  v91[0] = v18[4];
  *(v91 + 10) = *(v18 + 74);
  v90[0] = v96;
  v90[1] = v20;
  sub_EB00(&v96, v89, &qword_3FFD68);
  v23 = sub_235C3C(v90, 0, 0, 1);
  v24 = OBJC_IVAR____TtC23ShelfKitCollectionViews21ModernTitleHeaderView_subtitleLabel;
  *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews21ModernTitleHeaderView_subtitleLabel] = v23;
  LODWORD(v25) = 1144750080;
  [v23 setContentCompressionResistancePriority:0 forAxis:v25];
  LODWORD(v26) = 1144750080;
  [*&v1[v24] setContentCompressionResistancePriority:1 forAxis:v26];
  v27 = [objc_allocWithZone(UIStackView) init];
  v28 = OBJC_IVAR____TtC23ShelfKitCollectionViews21ModernTitleHeaderView_verticalSubStack;
  *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews21ModernTitleHeaderView_verticalSubStack] = v27;
  [v27 setAlignment:1];
  [*&v1[v28] setAxis:1];
  [*&v1[v28] setBaselineRelativeArrangement:1];
  LODWORD(v29) = 1144750080;
  [*&v1[v28] setContentCompressionResistancePriority:0 forAxis:v29];
  LODWORD(v30) = 1144750080;
  [*&v1[v28] setContentCompressionResistancePriority:1 forAxis:v30];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FFD60);
  v31 = swift_allocObject();
  v32 = *&v1[v6];
  *(v31 + 16) = xmmword_317F20;
  v33 = *&v1[v28];
  *(v31 + 32) = v32;
  *(v31 + 40) = v33;
  v34 = objc_allocWithZone(UIStackView);
  sub_124C4(0, &qword_3FBD90);
  v35 = v32;
  v36 = v33;
  isa = sub_30C358().super.isa;

  v38 = [v34 initWithArrangedSubviews:isa];

  v39 = OBJC_IVAR____TtC23ShelfKitCollectionViews21ModernTitleHeaderView_horizontalSubStack;
  *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews21ModernTitleHeaderView_horizontalSubStack] = v38;
  [v38 setTranslatesAutoresizingMaskIntoConstraints:0];
  [*&v1[v39] setAxis:0];
  [*&v1[v39] setAlignment:3];
  [*&v1[v39] setSpacing:12.0];
  LODWORD(v40) = 1144750080;
  [*&v1[v39] setContentCompressionResistancePriority:0 forAxis:v40];
  LODWORD(v41) = 1144750080;
  [*&v1[v39] setContentCompressionResistancePriority:1 forAxis:v41];
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_31BF90;
  v43 = *&v1[v39];
  *(v42 + 32) = v43;
  v44 = objc_allocWithZone(UIStackView);
  v45 = v43;
  v46 = sub_30C358().super.isa;

  v47 = [v44 initWithArrangedSubviews:v46];

  v48 = OBJC_IVAR____TtC23ShelfKitCollectionViews21ModernTitleHeaderView_horizontalParentStack;
  *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews21ModernTitleHeaderView_horizontalParentStack] = v47;
  [v47 setTranslatesAutoresizingMaskIntoConstraints:0];
  [*&v1[v48] setAxis:0];
  [*&v1[v48] setAlignment:2];
  [*&v1[v48] setDistribution:3];
  [*&v1[v48] setSpacing:10.0];
  LODWORD(v49) = 1144750080;
  [*&v1[v48] setContentCompressionResistancePriority:0 forAxis:v49];
  LODWORD(v50) = 1144750080;
  [*&v1[v48] setContentCompressionResistancePriority:1 forAxis:v50];
  v51 = [objc_opt_self() buttonWithType:0];
  v52 = OBJC_IVAR____TtC23ShelfKitCollectionViews21ModernTitleHeaderView_titleButton;
  *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews21ModernTitleHeaderView_titleButton] = v51;
  [v51 setShowsMenuFromSource:0];
  [*&v1[v52] setPreferredMenuElementOrder:2];
  [*&v1[v52] setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v53) = 1.0;
  [*&v1[v52] setContentCompressionResistancePriority:0 forAxis:v53];
  LODWORD(v54) = 1.0;
  [*&v1[v52] setContentCompressionResistancePriority:1 forAxis:v54];
  LODWORD(v55) = 1.0;
  [*&v1[v52] setContentHuggingPriority:0 forAxis:v55];
  LODWORD(v56) = 1.0;
  [*&v1[v52] setContentHuggingPriority:1 forAxis:v56];
  v88.receiver = v1;
  v88.super_class = ObjectType;
  v57 = objc_msgSendSuper2(&v88, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v58 = OBJC_IVAR____TtC23ShelfKitCollectionViews21ModernTitleHeaderView_horizontalParentStack;
  v59 = *&v57[OBJC_IVAR____TtC23ShelfKitCollectionViews21ModernTitleHeaderView_horizontalParentStack];
  v60 = v57;
  [v60 addSubview:v59];
  v61 = OBJC_IVAR____TtC23ShelfKitCollectionViews21ModernTitleHeaderView_titleButton;
  [v60 addSubview:*&v60[OBJC_IVAR____TtC23ShelfKitCollectionViews21ModernTitleHeaderView_titleButton]];
  [v60 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  [v60 setPreservesSuperviewLayoutMargins:1];
  v62 = swift_allocObject();
  *(v62 + 16) = xmmword_31D660;
  v63 = OBJC_IVAR____TtC23ShelfKitCollectionViews21ModernTitleHeaderView_artworkView;
  v64 = [*&v60[OBJC_IVAR____TtC23ShelfKitCollectionViews21ModernTitleHeaderView_artworkView] widthAnchor];
  v65 = [v64 constraintEqualToConstant:40.0];

  *(v62 + 32) = v65;
  v66 = [*&v60[v63] heightAnchor];
  v67 = [*&v60[v63] widthAnchor];
  v68 = [v66 constraintEqualToAnchor:v67];

  *(v62 + 40) = v68;
  *(v62 + 48) = sub_16FEE0();
  v69 = [*&v57[v58] leadingAnchor];
  v70 = [v60 layoutMarginsGuide];

  v71 = [v70 leadingAnchor];
  v72 = [v69 constraintEqualToAnchor:v71];

  *(v62 + 56) = v72;
  v73 = [*&v57[v58] trailingAnchor];
  v74 = [v60 layoutMarginsGuide];

  v75 = [v74 trailingAnchor];
  v76 = [v73 constraintEqualToAnchor:v75];

  *(v62 + 64) = v76;
  *(v62 + 72) = sub_16FFAC();
  *&v90[0] = v62;
  v77 = *&v60[v61];
  v78 = *&v60[OBJC_IVAR____TtC23ShelfKitCollectionViews21ModernTitleHeaderView_horizontalSubStack];
  v79 = v77;
  sub_30CB48();
  v80 = sub_30CEA8();

  sub_14A360(v80);
  v81 = [v60 traitCollection];

  sub_1707B0(v81);
  v82 = OBJC_IVAR____TtC23ShelfKitCollectionViews21ModernTitleHeaderView____lazy_storage___topConstraint;
  [*&v60[OBJC_IVAR____TtC23ShelfKitCollectionViews21ModernTitleHeaderView____lazy_storage___topConstraint] setActive:0];
  [*&v60[v82] setActive:1];
  v83 = OBJC_IVAR____TtC23ShelfKitCollectionViews21ModernTitleHeaderView____lazy_storage___bottomConstraint;
  [*&v60[OBJC_IVAR____TtC23ShelfKitCollectionViews21ModernTitleHeaderView____lazy_storage___bottomConstraint] setActive:0];
  [*&v60[v83] setActive:1];

  sub_16F540();
  v84 = objc_opt_self();
  sub_124C4(0, &qword_403000);
  v85 = sub_30C358().super.isa;

  [v84 activateConstraints:v85];

  return v60;
}

uint64_t sub_1723CC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC23ShelfKitCollectionViews21ModernTitleHeaderView_style;
  swift_beginAccess();
  return sub_170EA0(v3 + v4, a2, type metadata accessor for ModernTitleHeaderView.Style);
}

uint64_t sub_172440@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC23ShelfKitCollectionViews21ModernTitleHeaderView_forceHideButton;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_1724E8()
{
  result = type metadata accessor for ModernTitleHeaderView.Style(319);
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_1725C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_301DF8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 36));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_172698(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_301DF8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 36)) = (a2 - 1);
  }

  return result;
}

void sub_172750()
{
  sub_301DF8();
  if (v0 <= 0x3F)
  {
    sub_1592C0();
    if (v1 <= 0x3F)
    {
      sub_124C4(319, &qword_3FFD48);
      if (v2 <= 0x3F)
      {
        sub_124C4(319, &unk_406270);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_17283C()
{
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews21ModernTitleHeaderView_forceHideButton) = 0;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews21ModernTitleHeaderView_artworkCancellable) = 0;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews21ModernTitleHeaderView____lazy_storage___topConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews21ModernTitleHeaderView_button) = 0;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews21ModernTitleHeaderView____lazy_storage___bottomConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews21ModernTitleHeaderView_accessibilityHasContextAction) = 0;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews21ModernTitleHeaderView_shouldStackButtons) = 2;
  sub_30D648();
  __break(1u);
}

void sub_17296C(uint64_t a1)
{
  v2 = v1;
  v3 = &v1[OBJC_IVAR____TtC23ShelfKitCollectionViews23ShelfBackgroundFillView_background];
  v4 = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews23ShelfBackgroundFillView_background] | (v1[OBJC_IVAR____TtC23ShelfKitCollectionViews23ShelfBackgroundFillView_background + 4] << 32);
  if ((a1 & 0x10000000000) != 0)
  {
    if (v1[OBJC_IVAR____TtC23ShelfKitCollectionViews23ShelfBackgroundFillView_background + 5])
    {
      return;
    }
  }

  else
  {
    if (v1[OBJC_IVAR____TtC23ShelfKitCollectionViews23ShelfBackgroundFillView_background + 5])
    {
      goto LABEL_11;
    }

    if (sub_306F78())
    {
      return;
    }

    if (v3[5])
    {
      goto LABEL_11;
    }

    v4 = *v3 | (v3[4] << 32);
  }

  if ((v4 & 0x100000000) != 0 && v4 >= 3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FFD60);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_317F20;
    v6 = objc_opt_self();
    v7 = [v6 secondarySystemBackgroundColor];
    v8 = [v7 colorWithAlphaComponent:0.0];

    *(v5 + 32) = v8;
    *(v5 + 40) = [v6 secondarySystemBackgroundColor];
    v9 = OBJC_IVAR____TtC23ShelfKitCollectionViews23ShelfBackgroundFillView_gradientView;
    v10 = *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews23ShelfBackgroundFillView_gradientView];
    v11 = kCAGradientLayerAxial;
    if (v10)
    {
      [v10 removeFromSuperview];
    }

    v24 = &v2[OBJC_IVAR____TtC23ShelfKitCollectionViews23ShelfBackgroundFillView_gradient];
    v25 = *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews23ShelfBackgroundFillView_gradient + 16];
    v42 = *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews23ShelfBackgroundFillView_gradient];
    v43 = v25;
    v26 = *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews23ShelfBackgroundFillView_gradient + 48];
    v44 = *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews23ShelfBackgroundFillView_gradient + 32];
    v45 = v26;
    *v24 = v5;
    *(v24 + 1) = 0;
    *(v24 + 2) = 0;
    *(v24 + 24) = xmmword_317F30;
    *(v24 + 40) = xmmword_317F40;
    *(v24 + 7) = kCAGradientLayerAxial;
    sub_17302C(&v42);
    v27 = *(v24 + 1);
    v46 = *v24;
    v47 = v27;
    v28 = *(v24 + 3);
    v48 = *(v24 + 2);
    v49 = v28;
    if (v46)
    {
      type metadata accessor for GradientView();
      v29 = objc_allocWithZone(swift_getObjCClassFromMetadata());
      v38 = v46;
      v39 = v47;
      v40 = v48;
      v41 = v49;
      sub_1504BC(&v38, &v34);
      v30 = [v29 init];
      v34 = v46;
      v35 = v47;
      v36 = v48;
      v37 = v49;
      sub_1504BC(&v38, v33);
      sub_254AD8(&v34);
      v31 = v30;
      [v2 bounds];
      [v31 setFrame:?];
      [v31 setAutoresizingMask:18];

      [v2 addSubview:v31];
      sub_17302C(&v46);
      v32 = *&v2[v9];
      *&v2[v9] = v31;
    }

    [v2 setBackgroundColor:0];
    return;
  }

LABEL_11:
  v12 = OBJC_IVAR____TtC23ShelfKitCollectionViews23ShelfBackgroundFillView_gradientView;
  v13 = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews23ShelfBackgroundFillView_gradientView];
  if (v13)
  {
    [v13 removeFromSuperview];
  }

  v14 = &v1[OBJC_IVAR____TtC23ShelfKitCollectionViews23ShelfBackgroundFillView_gradient];
  v15 = *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews23ShelfBackgroundFillView_gradient + 16];
  v42 = *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews23ShelfBackgroundFillView_gradient];
  v43 = v15;
  v16 = v14[3];
  v44 = v14[2];
  v45 = v16;
  *v14 = 0u;
  v14[1] = 0u;
  v14[2] = 0u;
  v14[3] = 0u;
  sub_17302C(&v42);
  v17 = v14[1];
  v46 = *v14;
  v47 = v17;
  v18 = v14[3];
  v48 = v14[2];
  v49 = v18;
  if (v46)
  {
    type metadata accessor for GradientView();
    v19 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v38 = v46;
    v39 = v47;
    v40 = v48;
    v41 = v49;
    sub_1504BC(&v38, &v34);
    v20 = [v19 init];
    v34 = v46;
    v35 = v47;
    v36 = v48;
    v37 = v49;
    sub_1504BC(&v38, v33);
    sub_254AD8(&v34);
    v21 = v20;
    [v2 bounds];
    [v21 setFrame:?];
    [v21 setAutoresizingMask:18];

    [v2 addSubview:v21];
    sub_17302C(&v46);
    v22 = *&v2[v12];
    *&v2[v12] = v21;
  }

  if (v3[5])
  {
    v23 = 0;
  }

  else
  {
    v23 = sub_306F88();
  }

  [v2 setBackgroundColor:v23];
}

id sub_172E50(void *a1)
{
  *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews23ShelfBackgroundFillView_gradientView] = 0;
  v3 = &v1[OBJC_IVAR____TtC23ShelfKitCollectionViews23ShelfBackgroundFillView_gradient];
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 2) = 0u;
  *(v3 + 3) = 0u;
  v4 = &v1[OBJC_IVAR____TtC23ShelfKitCollectionViews23ShelfBackgroundFillView_background];
  *v4 = 0;
  *(v4 + 2) = 256;
  v7.receiver = v1;
  v7.super_class = type metadata accessor for ShelfBackgroundFillView();
  v5 = objc_msgSendSuper2(&v7, "initWithCoder:", a1);

  if (v5)
  {
  }

  return v5;
}

id sub_172F1C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ShelfBackgroundFillView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_172FD0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_17302C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_406300);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_173094()
{
  v1 = OBJC_IVAR____TtC23ShelfKitCollectionViews19ShelfBackgroundView_backgroundFill;
  v2 = *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews19ShelfBackgroundView_backgroundFill];
  if (v2 || (type metadata accessor for ShelfBackgroundFillView(), v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init], objc_msgSend(v0, "bounds"), objc_msgSend(v3, "setFrame:"), objc_msgSend(v3, "setAutoresizingMask:", 18), v3, objc_msgSend(v0, "addSubview:", v3), v4 = *&v0[v1], *&v0[v1] = v3, v4, (v2 = *&v0[v1]) != 0))
  {
    v5 = &v0[OBJC_IVAR____TtC23ShelfKitCollectionViews19ShelfBackgroundView_background];
    swift_beginAccess();
    v6 = v5[4];
    v7 = *v5;
    v8 = v5[5];
    v9 = &v2[OBJC_IVAR____TtC23ShelfKitCollectionViews23ShelfBackgroundFillView_background];
    v10 = *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews23ShelfBackgroundFillView_background] | (v2[OBJC_IVAR____TtC23ShelfKitCollectionViews23ShelfBackgroundFillView_background + 4] << 32);
    v11 = v2[OBJC_IVAR____TtC23ShelfKitCollectionViews23ShelfBackgroundFillView_background + 5];
    *v9 = v7;
    v9[4] = v6;
    v9[5] = v8;
    v12 = v2;
    sub_17296C(v10 | (v11 << 40));
  }
}

unint64_t sub_1731CC()
{
  v1 = (v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews19ShelfBackgroundView_background);
  swift_beginAccess();
  return *v1 | (*(v1 + 4) << 32) | (*(v1 + 5) << 40);
}

void sub_17322C(unint64_t a1)
{
  v2 = a1;
  v3 = (a1 >> 40) & 1;
  v4 = &v1[OBJC_IVAR____TtC23ShelfKitCollectionViews19ShelfBackgroundView_background];
  swift_beginAccess();
  v4[4] = BYTE4(v2);
  *v4 = v2;
  v4[5] = v3;
  v5 = OBJC_IVAR____TtC23ShelfKitCollectionViews19ShelfBackgroundView_backgroundFill;
  v6 = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews19ShelfBackgroundView_backgroundFill];
  if (!v6)
  {
    type metadata accessor for ShelfBackgroundFillView();
    v7 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    [v1 bounds];
    [v7 setFrame:?];
    [v7 setAutoresizingMask:18];

    [v1 addSubview:v7];
    v8 = *&v1[v5];
    *&v1[v5] = v7;

    v6 = *&v1[v5];
    if (!v6)
    {
      return;
    }

    v2 = *v4 | (v4[4] << 32);
    LOBYTE(v3) = v4[5];
  }

  v9 = &v6[OBJC_IVAR____TtC23ShelfKitCollectionViews23ShelfBackgroundFillView_background];
  v10 = *&v6[OBJC_IVAR____TtC23ShelfKitCollectionViews23ShelfBackgroundFillView_background] | (v6[OBJC_IVAR____TtC23ShelfKitCollectionViews23ShelfBackgroundFillView_background + 4] << 32);
  v11 = v6[OBJC_IVAR____TtC23ShelfKitCollectionViews23ShelfBackgroundFillView_background + 5];
  *v9 = v2;
  v9[4] = BYTE4(v2);
  v9[5] = v3;
  v12 = v6;
  sub_17296C(v10 | (v11 << 40));
}

void (*sub_17338C(uint64_t *a1))(void **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC23ShelfKitCollectionViews19ShelfBackgroundView_background;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_173414;
}

void sub_173414(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3];
    v5 = OBJC_IVAR____TtC23ShelfKitCollectionViews19ShelfBackgroundView_backgroundFill;
    v6 = *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews19ShelfBackgroundView_backgroundFill];
    if (!v6)
    {
      type metadata accessor for ShelfBackgroundFillView();
      v7 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      [v4 bounds];
      [v7 setFrame:?];
      [v7 setAutoresizingMask:18];

      [v4 addSubview:v7];
      v8 = *&v4[v5];
      *&v4[v5] = v7;

      v6 = *&v4[v5];
      if (!v6)
      {
        goto LABEL_6;
      }

      v4 = v3[3];
    }

    v9 = &v4[v3[4]];
    v10 = v9[4];
    v11 = *v9;
    LOBYTE(v9) = v9[5];
    v12 = &v6[OBJC_IVAR____TtC23ShelfKitCollectionViews23ShelfBackgroundFillView_background];
    v13 = *&v6[OBJC_IVAR____TtC23ShelfKitCollectionViews23ShelfBackgroundFillView_background] | (v6[OBJC_IVAR____TtC23ShelfKitCollectionViews23ShelfBackgroundFillView_background + 4] << 32);
    v14 = v6[OBJC_IVAR____TtC23ShelfKitCollectionViews23ShelfBackgroundFillView_background + 5];
    *v12 = v11;
    v12[4] = v10;
    v12[5] = v9;
    v15 = v6;
    sub_17296C(v13 | (v14 << 40));
  }

LABEL_6:

  free(v3);
}

void sub_173564(void *a1)
{
  v21.receiver = v1;
  v21.super_class = type metadata accessor for ShelfBackgroundView();
  objc_msgSendSuper2(&v21, "applyLayoutAttributes:", a1);
  v3 = [v1 layer];
  [v3 setZPosition:-1.0];

  v4 = [a1 representedElementKind];
  if (v4)
  {
    v5 = v4;
    v6 = sub_30C0D8();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = sub_173FF0(v6, v8);
  if ((v9 & 0x10000000000) == 0)
  {
    v10 = v9 & 0xFFFFFFFFFFLL;
    if ((sub_306F68() & 1) == 0)
    {
      v11 = &v1[OBJC_IVAR____TtC23ShelfKitCollectionViews19ShelfBackgroundView_background];
      swift_beginAccess();
      v11[4] = BYTE4(v10);
      *v11 = v10;
      v11[5] = 0;
      v12 = OBJC_IVAR____TtC23ShelfKitCollectionViews19ShelfBackgroundView_backgroundFill;
      v13 = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews19ShelfBackgroundView_backgroundFill];
      if (v13)
      {
        v14 = 0;
      }

      else
      {
        type metadata accessor for ShelfBackgroundFillView();
        v15 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
        [v1 bounds];
        [v15 setFrame:?];
        [v15 setAutoresizingMask:18];

        [v1 addSubview:v15];
        v16 = *&v1[v12];
        *&v1[v12] = v15;

        v13 = *&v1[v12];
        if (!v13)
        {
          return;
        }

        v10 = *v11 | (v11[4] << 32);
        v14 = v11[5];
      }

      v17 = &v13[OBJC_IVAR____TtC23ShelfKitCollectionViews23ShelfBackgroundFillView_background];
      v18 = *&v13[OBJC_IVAR____TtC23ShelfKitCollectionViews23ShelfBackgroundFillView_background] | (v13[OBJC_IVAR____TtC23ShelfKitCollectionViews23ShelfBackgroundFillView_background + 4] << 32);
      v19 = v13[OBJC_IVAR____TtC23ShelfKitCollectionViews23ShelfBackgroundFillView_background + 5];
      *v17 = v10;
      v17[4] = BYTE4(v10);
      v17[5] = v14;
      v20 = v13;
      sub_17296C(v18 | (v19 << 40));
    }
  }
}

id ShelfBackgroundView.init(frame:)(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews19ShelfBackgroundView_backgroundFill] = 0;
  v9 = &v4[OBJC_IVAR____TtC23ShelfKitCollectionViews19ShelfBackgroundView_background];
  *v9 = 0;
  *(v9 + 2) = 256;
  v11.receiver = v4;
  v11.super_class = type metadata accessor for ShelfBackgroundView();
  return objc_msgSendSuper2(&v11, "initWithFrame:", a1, a2, a3, a4);
}

id FlowNavigationController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder:a1];

  return v3;
}

id ShelfBackgroundView.init(coder:)(void *a1)
{
  *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews19ShelfBackgroundView_backgroundFill] = 0;
  v3 = &v1[OBJC_IVAR____TtC23ShelfKitCollectionViews19ShelfBackgroundView_background];
  *v3 = 0;
  *(v3 + 2) = 256;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for ShelfBackgroundView();
  v4 = objc_msgSendSuper2(&v6, "initWithCoder:", a1);

  if (v4)
  {
  }

  return v4;
}

id ShelfBackgroundView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ShelfBackgroundView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t static ShelfBackgroundView.register(layout:)(void *a1)
{
  v2 = sub_173D18();
  v3 = *(v2 + 16);
  if (v3)
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v5 = v2 + 40;
    do
    {

      v6 = sub_30C098();

      [a1 registerClass:ObjCClassFromMetadata forDecorationViewOfKind:v6];

      v5 += 16;
      --v3;
    }

    while (v3);
  }
}

id sub_173B98(uint64_t a1)
{
  v1 = 0xE600000000000000;
  v2 = 0x6D6574737973;
  v3 = 0xE800000000000000;
  v4 = 0x7972616974726574;
  if (a1 != 2)
  {
    v4 = 0xD000000000000010;
    v3 = 0x800000000033DFD0;
  }

  if (a1)
  {
    v2 = 0x7261646E6F636573;
    v1 = 0xE900000000000079;
  }

  if (a1 > 1)
  {
    v2 = v4;
    v1 = v3;
  }

  if ((a1 & 0x100000000) != 0)
  {
    v5 = v2;
  }

  else
  {
    v5 = 0x726F6C6F43786568;
  }

  if ((a1 & 0x100000000) != 0)
  {
    v6 = v1;
  }

  else
  {
    v6 = 0xED00006465646146;
  }

  v7 = objc_opt_self();
  type metadata accessor for ShelfBackgroundView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_406340);
  v12 = sub_30C148();
  v13 = v8;

  v14._countAndFlagsBits = v5;
  v14._object = v6;
  sub_30C238(v14);

  v9 = sub_30C098();

  v10 = [v7 backgroundDecorationItemWithElementKind:{v9, v12, v13}];

  return v10;
}

uint64_t sub_173D18()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_400FD0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_328A70;
  type metadata accessor for ShelfBackgroundView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_406340);
  v7 = sub_30C148();
  v12 = v1;

  v17._countAndFlagsBits = 0x6D6574737973;
  v17._object = 0xE600000000000000;
  sub_30C238(v17);

  *(v0 + 32) = v7;
  *(v0 + 40) = v12;
  v8 = sub_30C148();
  v13 = v2;

  v18._countAndFlagsBits = 0x7261646E6F636573;
  v18._object = 0xE900000000000079;
  sub_30C238(v18);

  *(v0 + 48) = v8;
  *(v0 + 56) = v13;
  v9 = sub_30C148();
  v14 = v3;

  v19._countAndFlagsBits = 0x7972616974726574;
  v19._object = 0xE800000000000000;
  sub_30C238(v19);

  *(v0 + 64) = v9;
  *(v0 + 72) = v14;
  v10 = sub_30C148();
  v15 = v4;

  v20._object = 0x800000000033DFD0;
  v20._countAndFlagsBits = 0xD000000000000010;
  sub_30C238(v20);

  *(v0 + 80) = v10;
  *(v0 + 88) = v15;
  sub_303E18();
  v11 = sub_30C148();
  v16 = v5;

  v21._countAndFlagsBits = 0x726F6C6F43786568;
  v21._object = 0xED00006465646146;
  sub_30C238(v21);

  *(v0 + 96) = v11;
  *(v0 + 104) = v16;
  return v0;
}

unint64_t sub_173F40(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v4 = 11;
  }

  v5 = v4 | (v3 << 16);
  result = sub_30C218();
  if (v6)
  {
    result = v5;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_14;
  }

  return sub_30C2F8();
}

unint64_t sub_173FF0(uint64_t a1, unint64_t a2)
{
  if (!a2)
  {
    goto LABEL_21;
  }

  type metadata accessor for ShelfBackgroundView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_406340);
  sub_30C148();
  v4 = sub_30C208();

  sub_173F40(v4, a1, a2);

  v5 = sub_30C178();
  v7 = v6;

  v8 = v5 == 0x6D6574737973 && v7 == 0xE600000000000000;
  if (!v8 && (sub_30D728() & 1) == 0)
  {
    if (v5 == 0x7261646E6F636573 && v7 == 0xE900000000000079 || (sub_30D728() & 1) != 0)
    {

      v9 = 0;
      v10 = 0x100000001;
      return v10 | (v9 << 40);
    }

    v10 = 0x100000002;
    if (v5 == 0x7972616974726574 && v7 == 0xE800000000000000 || (sub_30D728() & 1) != 0)
    {

      v9 = 0;
      return v10 | (v9 << 40);
    }

    if (v5 == 0xD000000000000010 && 0x800000000033DFD0 == v7)
    {

LABEL_20:
      v9 = 0;
      v10 = 0x100000003;
      return v10 | (v9 << 40);
    }

    v11 = sub_30D728();

    if (v11)
    {
      goto LABEL_20;
    }

LABEL_21:
    v10 = 0;
    v9 = 1;
    return v10 | (v9 << 40);
  }

  v9 = 0;
  v10 = 0x100000000;
  return v10 | (v9 << 40);
}

uint64_t sub_17422C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC23ShelfKitCollectionViews19ShelfBackgroundView_background;
  result = swift_beginAccess();
  v5 = *v3;
  v6 = *(v3 + 5);
  *(a2 + 4) = *(v3 + 4);
  *a2 = v5;
  *(a2 + 5) = v6;
  return result;
}

void sub_174290(int *a1, void *a2)
{
  v2 = *a1;
  v3 = *(a1 + 4);
  v4 = *(a1 + 5);
  v5 = *a2 + OBJC_IVAR____TtC23ShelfKitCollectionViews19ShelfBackgroundView_background;
  swift_beginAccess();
  *(v5 + 4) = v3;
  *v5 = v2;
  *(v5 + 5) = v4;
  sub_173094();
}

char *sub_1743E4(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = OBJC_IVAR____TtC23ShelfKitCollectionViews16ShelfPageControl_leftBackground;
  type metadata accessor for ShelfBackgroundFillView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *&v5[v11] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v13 = OBJC_IVAR____TtC23ShelfKitCollectionViews16ShelfPageControl_leftBackgroundMask;
  type metadata accessor for GradientView();
  v14 = swift_getObjCClassFromMetadata();
  *&v5[v13] = [objc_allocWithZone(v14) init];
  v15 = OBJC_IVAR____TtC23ShelfKitCollectionViews16ShelfPageControl_rightBackground;
  *&v5[v15] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v16 = OBJC_IVAR____TtC23ShelfKitCollectionViews16ShelfPageControl_rightBackgroundMask;
  *&v5[v16] = [objc_allocWithZone(v14) init];
  v5[OBJC_IVAR____TtC23ShelfKitCollectionViews16ShelfPageControl_isHovering] = 0;
  v17 = &v5[OBJC_IVAR____TtC23ShelfKitCollectionViews16ShelfPageControl_shelfBackground];
  *v17 = 0;
  *(v17 + 2) = 256;
  v18 = &v5[OBJC_IVAR____TtC23ShelfKitCollectionViews16ShelfPageControl_verticalButtonInsets];
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  *v18 = UIEdgeInsetsZero.top;
  v18[1] = left;
  v18[2] = bottom;
  v18[3] = right;
  v22 = objc_allocWithZone(type metadata accessor for PageButtonsControl());
  *&v5[OBJC_IVAR____TtC23ShelfKitCollectionViews16ShelfPageControl_pageControls] = sub_2989C0(0, 0, a1, a2, a3, a4);
  v31.receiver = v5;
  v31.super_class = ObjectType;
  v23 = objc_msgSendSuper2(&v31, "initWithFrame:", a1, a2, a3, a4);
  if ((_UISolariumEnabled() & 1) == 0)
  {
    v24 = OBJC_IVAR____TtC23ShelfKitCollectionViews16ShelfPageControl_leftBackground;
    [*&v23[OBJC_IVAR____TtC23ShelfKitCollectionViews16ShelfPageControl_leftBackground] setMaskView:*&v23[OBJC_IVAR____TtC23ShelfKitCollectionViews16ShelfPageControl_leftBackgroundMask]];
    [v23 addSubview:*&v23[v24]];
    v25 = OBJC_IVAR____TtC23ShelfKitCollectionViews16ShelfPageControl_rightBackground;
    [*&v23[OBJC_IVAR____TtC23ShelfKitCollectionViews16ShelfPageControl_rightBackground] setMaskView:*&v23[OBJC_IVAR____TtC23ShelfKitCollectionViews16ShelfPageControl_rightBackgroundMask]];
    [v23 addSubview:*&v23[v25]];
  }

  v26 = OBJC_IVAR____TtC23ShelfKitCollectionViews16ShelfPageControl_pageControls;
  v27 = *&v23[OBJC_IVAR____TtC23ShelfKitCollectionViews16ShelfPageControl_pageControls];
  v28 = v23;
  [v28 addSubview:v27];
  v29 = *&v23[v26];
  [v28 bounds];
  [v29 setFrame:?];

  [*&v23[v26] setAutoresizingMask:18];
  [v28 setPreservesSuperviewLayoutMargins:1];
  [v28 setEdgesPreservingSuperviewLayoutMargins:10];
  [v28 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];

  [*&v23[v26] setAlpha:0.0];
  return v28;
}

void sub_174718()
{
  if ((_UISolariumEnabled() & 1) == 0)
  {
    if (*(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews16ShelfPageControl_shelfBackground + 5))
    {
      v1 = 0;
    }

    else
    {
      v1 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews16ShelfPageControl_shelfBackground);
    }

    v2 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews16ShelfPageControl_leftBackground);
    v3 = 0x100000000;
    if (!(*(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews16ShelfPageControl_shelfBackground + 5) & 1 | *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews16ShelfPageControl_shelfBackground + 4) & 1))
    {
      v3 = 0;
    }

    v4 = &v2[OBJC_IVAR____TtC23ShelfKitCollectionViews23ShelfBackgroundFillView_background];
    v5 = *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews23ShelfBackgroundFillView_background] | (v2[OBJC_IVAR____TtC23ShelfKitCollectionViews23ShelfBackgroundFillView_background + 4] << 32);
    v6 = v2[OBJC_IVAR____TtC23ShelfKitCollectionViews23ShelfBackgroundFillView_background + 5];
    *v4 = v1;
    v7 = HIDWORD(v3);
    v4[4] = BYTE4(v3);
    v4[5] = 0;
    sub_17296C(v5 | (v6 << 40));
    v8 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews16ShelfPageControl_rightBackground);
    v9 = &v8[OBJC_IVAR____TtC23ShelfKitCollectionViews23ShelfBackgroundFillView_background];
    v10 = *v9 | (*(v9 + 4) << 32);
    v11 = v8[OBJC_IVAR____TtC23ShelfKitCollectionViews23ShelfBackgroundFillView_background + 5];
    *v9 = v1;
    *(v9 + 2) = v7;
    sub_17296C(v10 | (v11 << 40));
    if ((sub_306F98() & 1) == 0)
    {
      v12 = objc_opt_self();
      v13 = [v12 systemBackgroundColor];
      [v2 setBackgroundColor:v13];

      v14 = [v12 systemBackgroundColor];
      [v8 setBackgroundColor:v14];
    }
  }
}

id ShelfPageControl.point(inside:with:)(uint64_t a1, CGFloat a2, CGFloat a3)
{
  ObjectType = swift_getObjectType();
  v8 = [v3 layoutMarginsGuide];
  [v8 layoutFrame];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v20.origin.x = v10;
  v20.origin.y = v12;
  v20.size.width = v14;
  v20.size.height = v16;
  v19.x = a2;
  v19.y = a3;
  if (CGRectContainsPoint(v20, v19))
  {
    return 0;
  }

  v18.receiver = v3;
  v18.super_class = ObjectType;
  return objc_msgSendSuper2(&v18, "pointInside:withEvent:", a1, a2, a3);
}

Swift::Void __swiftcall ShelfPageControl.layoutMarginsDidChange()()
{
  v1 = v0;
  v9.receiver = v0;
  v9.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v9, "layoutMarginsDidChange");
  v2 = *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews16ShelfPageControl_pageControls];
  v3 = &v1[OBJC_IVAR____TtC23ShelfKitCollectionViews16ShelfPageControl_verticalButtonInsets];
  v4 = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews16ShelfPageControl_verticalButtonInsets];
  [v1 layoutMargins];
  v6 = v5;
  v7 = v3[2];
  [v1 layoutMargins];
  [v2 setLayoutMargins:{v4, v6, v7}];
  v8 = sub_177210(&off_3B47D0);
  sub_298908(v8);
  [v1 setNeedsLayout];
}

Swift::Void __swiftcall ShelfPageControl.layoutSubviews()()
{
  v42.receiver = v0;
  v42.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v42, "layoutSubviews");
  if ((_UISolariumEnabled() & 1) == 0)
  {
    if ((v0[OBJC_IVAR____TtC23ShelfKitCollectionViews16ShelfPageControl_shelfBackground + 5] & 1) != 0 || (LOBYTE(v35) = 1, v1 = 8.0, (sub_306F78() & 1) == 0))
    {
      v1 = 0.0;
    }

    [v0 layoutMargins];
    v3 = v2;
    [v0 layoutMargins];
    v5 = v4;
    [v0 bounds];
    v44 = CGRectInset(v43, 0.0, -20.0 - v1);
    v45 = CGRectOffset(v44, 0.0, -v1);
    y = v45.origin.y;
    height = v45.size.height;
    [*&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews16ShelfPageControl_leftBackground] setFrame:v45.origin.x];
    [v0 bounds];
    Width = CGRectGetWidth(v46);
    [v0 layoutMargins];
    v10 = Width - v9;
    [v0 layoutMargins];
    v12 = v11;
    [*&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews16ShelfPageControl_rightBackground] setFrame:{v10, y, v11, height}];
    [*&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews16ShelfPageControl_leftBackgroundMask] setFrame:{0.0, 0.0, v3, height}];
    [*&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews16ShelfPageControl_rightBackgroundMask] setFrame:{0.0, 0.0, v12, height}];
    if (v3 <= 15.0)
    {
      v13 = v3;
    }

    else
    {
      v13 = 15.0;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FFD60);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_31D470;
    v15 = objc_opt_self();
    *(v14 + 32) = [v15 whiteColor];
    *(v14 + 40) = [v15 whiteColor];
    *(v14 + 48) = [v15 clearColor];
    v41 = _swiftEmptyArrayStorage;
    sub_1752AC(0, 3, 0);
    v16 = _swiftEmptyArrayStorage;
    v18 = _swiftEmptyArrayStorage[2];
    v17 = _swiftEmptyArrayStorage[3];
    v19 = v17 >> 1;
    v20 = v18 + 1;
    if (v17 >> 1 <= v18)
    {
      sub_1752AC((v17 > 1), v18 + 1, 1);
      v16 = v41;
      v17 = v41[3];
      v19 = v17 >> 1;
    }

    v16[2] = v20;
    *&v16[v18 + 4] = 0.0 / v3;
    v21 = v18 + 2;
    if (v19 < v21)
    {
      sub_1752AC((v17 > 1), v21, 1);
      v16 = v41;
    }

    v16[2] = v21;
    *&v16[v20 + 4] = (v3 - v13) / v3;
    v23 = v16[2];
    v22 = v16[3];
    if (v23 >= v22 >> 1)
    {
      sub_1752AC((v22 > 1), v23 + 1, 1);
    }

    v24 = v41;
    v41[2] = v23 + 1;
    *&v24[v23 + 4] = v3 / v3;
    v35 = v14;
    v37 = 0;
    v38 = 0;
    v36 = v24;
    v39 = xmmword_31D460;
    v40 = kCAGradientLayerAxial;
    v25 = kCAGradientLayerAxial;
    sub_254AD8(&v35);
    if (v5 <= 15.0)
    {
      v26 = v5;
    }

    else
    {
      v26 = 15.0;
    }

    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_31D470;
    *(v27 + 32) = [v15 clearColor];
    *(v27 + 40) = [v15 whiteColor];
    *(v27 + 48) = [v15 whiteColor];
    sub_1752AC(0, 3, 0);
    v29 = _swiftEmptyArrayStorage[2];
    v28 = _swiftEmptyArrayStorage[3];
    v30 = v28 >> 1;
    v31 = v29 + 1;
    if (v28 >> 1 <= v29)
    {
      sub_1752AC((v28 > 1), v29 + 1, 1);
      v28 = _swiftEmptyArrayStorage[3];
      v30 = v28 >> 1;
    }

    _swiftEmptyArrayStorage[2] = v31;
    *&_swiftEmptyArrayStorage[v29 + 4] = 0.0 / v5;
    v32 = v29 + 2;
    if (v30 < v32)
    {
      sub_1752AC((v28 > 1), v32, 1);
    }

    _swiftEmptyArrayStorage[2] = v32;
    *&_swiftEmptyArrayStorage[v31 + 4] = v26 / v5;
    v34 = _swiftEmptyArrayStorage[2];
    v33 = _swiftEmptyArrayStorage[3];
    if (v34 >= v33 >> 1)
    {
      sub_1752AC((v33 > 1), v34 + 1, 1);
    }

    _swiftEmptyArrayStorage[2] = v34 + 1;
    *&_swiftEmptyArrayStorage[v34 + 4] = v5 / v5;
    v35 = v27;
    v37 = 0;
    v38 = 0;
    v36 = _swiftEmptyArrayStorage;
    v39 = xmmword_31D460;
    v40 = v25;
    sub_254AD8(&v35);
  }
}

char *sub_1751E4(char *a1, int64_t a2, char a3)
{
  result = sub_17553C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_175204(size_t a1, int64_t a2, char a3)
{
  result = sub_176460(a1, a2, a3, *v3, &qword_3FC160, &unk_317DF0, &type metadata accessor for MetricsData);
  *v3 = result;
  return result;
}

size_t sub_175248(size_t a1, int64_t a2, char a3)
{
  result = sub_176460(a1, a2, a3, *v3, &qword_401188, &unk_31EAE0, type metadata accessor for CategorySelectionGridLayout.SubviewPlacement);
  *v3 = result;
  return result;
}

char *sub_17528C(char *a1, int64_t a2, char a3)
{
  result = sub_17564C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1752AC(char *a1, int64_t a2, char a3)
{
  result = sub_175750(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1752CC(void *a1, int64_t a2, char a3)
{
  result = sub_175854(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1752EC(size_t a1, int64_t a2, char a3)
{
  result = sub_176460(a1, a2, a3, *v3, &qword_3FE4D8, &unk_31B4F8, type metadata accessor for TTMLFileReference);
  *v3 = result;
  return result;
}

size_t sub_175330(size_t a1, int64_t a2, char a3)
{
  result = sub_175C20(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_175350(char *a1, int64_t a2, char a3)
{
  result = sub_175E38(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_175370(void *a1, int64_t a2, char a3)
{
  result = sub_1760B8(a1, a2, a3, *v3, &unk_400490, &unk_31DC98, &qword_4064E0);
  *v3 = result;
  return result;
}

size_t sub_1753B0(size_t a1, int64_t a2, char a3)
{
  result = sub_176460(a1, a2, a3, *v3, &qword_4063F0, &unk_328B60, type metadata accessor for ParagraphViewModel);
  *v3 = result;
  return result;
}

void *sub_1753F4(void *a1, int64_t a2, char a3)
{
  result = sub_175F44(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_175414(void *a1, int64_t a2, char a3)
{
  result = sub_1760B8(a1, a2, a3, *v3, &qword_400FF8, &unk_31E8F0, &qword_401000);
  *v3 = result;
  return result;
}

void *sub_175454(void *a1, int64_t a2, char a3)
{
  result = sub_176200(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_175474(size_t a1, int64_t a2, char a3)
{
  result = sub_176460(a1, a2, a3, *v3, &qword_401158, &unk_328BD0, &type metadata accessor for Category);
  *v3 = result;
  return result;
}

char *sub_1754B8(char *a1, int64_t a2, char a3)
{
  result = sub_17635C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1754D8(size_t a1, int64_t a2, char a3)
{
  result = sub_176460(a1, a2, a3, *v3, &qword_401160, &unk_31EAB0, &type metadata accessor for CategorySection);
  *v3 = result;
  return result;
}

char *sub_17551C(char *a1, int64_t a2, char a3)
{
  result = sub_17663C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_17553C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FC498);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_17564C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_406450);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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

char *sub_175750(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_400FE0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void *sub_175854(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4063C8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[7 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 56 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4063D0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1759CC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401028);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_175AD8(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_406410);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_406418);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_175C20(size_t result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401180);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FEF38) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FEF38) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_175E38(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_400FD0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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

void *sub_175F44(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4063E0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 88);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[11 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 88 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4063E8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1760B8(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    v14[2] = v12;
    v14[3] = 2 * ((v15 - 32) / 40);
  }

  else
  {
    v14 = _swiftEmptyArrayStorage;
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[5 * v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 40 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7);
    swift_arrayInitWithCopy();
  }

  return v14;
}

void *sub_176200(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_406428);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_406430);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_17635C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_406438);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

size_t sub_176460(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
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

  __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
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
  v19 = *(a7(0) - 8);
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

char *sub_17663C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_406420);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_176748(unint64_t result)
{
  v1 = result;
  v2 = result >> 62;
  if (result >> 62)
  {
    result = sub_30D668();
    if (result)
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4063B0);
      result = sub_30D538();
      v3 = result;
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = sub_30D668();
      v5 = result;
      if (!result)
      {
        return v3;
      }

      goto LABEL_9;
    }
  }

  else if (*(&dword_10 + (result & 0xFFFFFFFFFFFFFF8)))
  {
    goto LABEL_3;
  }

  v3 = &_swiftEmptySetSingleton;
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return v3;
  }

LABEL_9:
  v6 = 0;
  v7 = v3 + 56;
  v20 = v1 & 0xC000000000000001;
  v18 = v1 + 32;
  v19 = v1 & 0xFFFFFFFFFFFFFF8;
  while (v20)
  {
    result = sub_30D578();
    v8 = result;
    v9 = __OFADD__(v6++, 1);
    if (v9)
    {
      goto LABEL_25;
    }

LABEL_18:
    sub_304D18();
    sub_1775E0(&qword_4063B8, &type metadata accessor for AnyCancellable);
    result = sub_30BFC8();
    v10 = -1 << v3[32];
    v11 = result & ~v10;
    v12 = v11 >> 6;
    v13 = *&v7[8 * (v11 >> 6)];
    v14 = 1 << v11;
    if (((1 << v11) & v13) != 0)
    {
      v15 = ~v10;
      sub_1775E0(&qword_4063C0, &type metadata accessor for AnyCancellable);
      while (1)
      {
        result = sub_30C018();
        if (result)
        {
          break;
        }

        v11 = (v11 + 1) & v15;
        v12 = v11 >> 6;
        v13 = *&v7[8 * (v11 >> 6)];
        v14 = 1 << v11;
        if (((1 << v11) & v13) == 0)
        {
          goto LABEL_22;
        }
      }
    }

    else
    {
LABEL_22:
      *&v7[8 * v12] = v14 | v13;
      *(*(v3 + 6) + 8 * v11) = v8;
      v16 = *(v3 + 2);
      v9 = __OFADD__(v16, 1);
      v17 = v16 + 1;
      if (v9)
      {
        goto LABEL_26;
      }

      *(v3 + 2) = v17;
    }

    if (v6 == v5)
    {
      return v3;
    }
  }

  if (v6 >= *(v19 + 16))
  {
    goto LABEL_27;
  }

  v8 = *(v18 + 8 * v6);

  v9 = __OFADD__(v6++, 1);
  if (!v9)
  {
    goto LABEL_18;
  }

LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

void *sub_1769DC(uint64_t a1)
{
  v2 = sub_305B58();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_406458);
    v9 = sub_30D538();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_1775E0(&qword_406460, &type metadata accessor for PresentationDetent);
      v16 = sub_30BFC8();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v18 * v14, v2);
          sub_1775E0(&qword_406468, &type metadata accessor for PresentationDetent);
          v23 = sub_30C018();
          v24 = *v15;
          (*v15)(v6, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

void *sub_176CFC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_406440);
    v3 = sub_30D538();
    v4 = 0;
    v5 = v3 + 56;
    v25 = v1;
    v26 = a1 + 32;
    v6 = v1;
    while (1)
    {
      v7 = *(v26 + 8 * v4);
      sub_30C0D8();
      sub_30D7F8();
      v27 = v7;
      sub_30C1F8();
      v8 = sub_30D858();

      v10 = -1 << *(v3 + 32);
      v11 = v8 & ~v10;
      v12 = v11 >> 6;
      v13 = *(v5 + 8 * (v11 >> 6));
      v14 = 1 << v11;
      if (((1 << v11) & v13) == 0)
      {
        goto LABEL_15;
      }

      v15 = ~v10;
      do
      {
        v16 = sub_30C0D8();
        v18 = v17;
        if (v16 == sub_30C0D8() && v18 == v19)
        {

LABEL_4:
          v6 = v25;
          goto LABEL_5;
        }

        v21 = sub_30D728();

        if (v21)
        {

          goto LABEL_4;
        }

        v11 = (v11 + 1) & v15;
        v12 = v11 >> 6;
        v13 = *(v5 + 8 * (v11 >> 6));
        v14 = 1 << v11;
      }

      while (((1 << v11) & v13) != 0);
      v6 = v25;
LABEL_15:
      *(v5 + 8 * v12) = v14 | v13;
      *(*(v3 + 48) + 8 * v11) = v27;
      v22 = *(v3 + 16);
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v24;
LABEL_5:
      if (++v4 == v6)
      {
        return v3;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

void *sub_176EF0(uint64_t a1)
{
  v2 = sub_30BD98();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4063F8);
    v9 = sub_30D538();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_1775E0(&qword_406400, &type metadata accessor for MetricsFieldInclusionRequest);
      v16 = sub_30BFC8();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v5, *(v9 + 48) + v18 * v14, v2);
          sub_1775E0(&qword_406408, &type metadata accessor for MetricsFieldInclusionRequest);
          v23 = sub_30C018();
          v24 = *v15;
          (*v15)(v5, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

Swift::Int sub_177210(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_406B90);
    v3 = sub_30D538();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v10 = *(v6 + v4);
      sub_30D7F8();
      sub_30D808(v10);
      result = sub_30D858();
      v12 = ~(-1 << *(v3 + 32));
      v13 = result & v12;
      v14 = (result & v12) >> 6;
      v15 = *(v5 + 8 * v14);
      v16 = 1 << (result & v12);
      v17 = *(v3 + 48);
      if ((v16 & v15) != 0)
      {
        while (v10 != *(v17 + v13))
        {
          v13 = (v13 + 1) & v12;
          v14 = v13 >> 6;
          v15 = *(v5 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v14) = v16 | v15;
        *(v17 + v13) = v10;
        v7 = *(v3 + 16);
        v8 = __OFADD__(v7, 1);
        v9 = v7 + 1;
        if (v8)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v9;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

void sub_177370()
{
  v1 = OBJC_IVAR____TtC23ShelfKitCollectionViews16ShelfPageControl_leftBackground;
  type metadata accessor for ShelfBackgroundFillView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *(v0 + v1) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v3 = OBJC_IVAR____TtC23ShelfKitCollectionViews16ShelfPageControl_leftBackgroundMask;
  type metadata accessor for GradientView();
  v4 = swift_getObjCClassFromMetadata();
  *(v0 + v3) = [objc_allocWithZone(v4) init];
  v5 = OBJC_IVAR____TtC23ShelfKitCollectionViews16ShelfPageControl_rightBackground;
  *(v0 + v5) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v6 = OBJC_IVAR____TtC23ShelfKitCollectionViews16ShelfPageControl_rightBackgroundMask;
  *(v0 + v6) = [objc_allocWithZone(v4) init];
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews16ShelfPageControl_isHovering) = 0;
  v7 = v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews16ShelfPageControl_shelfBackground;
  *v7 = 0;
  *(v7 + 4) = 256;
  v8 = (v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews16ShelfPageControl_verticalButtonInsets);
  v9 = *&UIEdgeInsetsZero.bottom;
  *v8 = *&UIEdgeInsetsZero.top;
  v8[1] = v9;
  sub_30D648();
  __break(1u);
}

Swift::Int sub_1774A4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4063D8);
    v3 = sub_30D538();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v10 = *(v6 + 8 * v4);
      sub_30D7F8();
      sub_30D808(v10);
      result = sub_30D858();
      v12 = ~(-1 << *(v3 + 32));
      v13 = result & v12;
      v14 = (result & v12) >> 6;
      v15 = *(v5 + 8 * v14);
      v16 = 1 << (result & v12);
      v17 = *(v3 + 48);
      if ((v16 & v15) != 0)
      {
        while (*(v17 + 8 * v13) != v10)
        {
          v13 = (v13 + 1) & v12;
          v14 = v13 >> 6;
          v15 = *(v5 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v14) = v16 | v15;
        *(v17 + 8 * v13) = v10;
        v7 = *(v3 + 16);
        v8 = __OFADD__(v7, 1);
        v9 = v7 + 1;
        if (v8)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v9;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

uint64_t sub_1775E0(unint64_t *a1, void (*a2)(uint64_t))
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

size_t sub_17762C@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_17EE30(v5);
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
    v9 = *(type metadata accessor for CategorySelectionGridLayout.SubviewPlacement() - 8);
    v10 = *(v9 + 72);
    v11 = v5 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + v10 * a1;
    result = sub_182D18(v11, a2);
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

uint64_t sub_17774C(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
  {
    result = sub_17EE80(v3);
    v3 = result;
  }

  v5 = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8));
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = *(&stru_20.cmd + 8 * a1 + (v3 & 0xFFFFFFFFFFFFFF8));
    memmove(((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 32), ((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 40), 8 * (v5 - 1 - a1));
    *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8)) = v6;
    *v1 = v3;
    return v7;
  }

  return result;
}

uint64_t sub_1777DC(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_17EE18(v3);
    v3 = result;
  }

  v5 = v3[2];
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = &v3[2 * a1];
    v8 = v7[4];
    memmove(v7 + 4, v7 + 6, 16 * (v5 - 1 - a1));
    v3[2] = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

BOOL sub_177868(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v3 = *(a2 + 16);
  do
  {
    v4 = v2;
    if (v3 == v2)
    {
      break;
    }

    sub_301F38();
    ++v2;
    sub_1827CC(&qword_406668, &type metadata accessor for IndexPath);
  }

  while ((sub_30C018() & 1) == 0);
  return v3 != v4;
}

uint64_t ShelvesDelegate.updateImpressionsForVisibleItems(_:inSection:contentOffset:layoutEnvironment:)(uint64_t a1, double a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_301F38();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = (v4 + OBJC_IVAR____TtC23ShelfKitCollectionViews15ShelvesDelegate_converter);
  swift_beginAccess();
  v13 = v12[1];
  v14 = v12[3];
  v28 = v12[2];
  v29 = v14;
  v15 = v12[3];
  v30 = v12[4];
  v16 = v12[1];
  v27[0] = *v12;
  v27[1] = v16;
  v24 = v28;
  v25 = v15;
  v26 = v12[4];
  v22 = v27[0];
  v23 = v13;
  sub_A0660(v27, v31);
  sub_301EC8();
  v17 = CollectionConverter.shelf(for:)(v11);
  (*(v9 + 8))(v11, v8);
  v31[2] = v24;
  v31[3] = v25;
  v31[4] = v26;
  v31[0] = v22;
  v31[1] = v23;
  result = sub_A0044(v31);
  if (v17)
  {
    if (sub_17D284())
    {
      v20 = v19;
      ObjectType = swift_getObjectType();
      (*(v20 + 56))(a1, a4, ObjectType, v20, a2, 0.0);

      return swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

Swift::Void __swiftcall ShelvesDelegate.addDefaultScrollCoordinators()()
{
  sub_EB00(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews15ShelvesDelegate_presenter, v10, &qword_406480);
  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401110);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4064A0);
    if (swift_dynamicCast())
    {
      v1 = v9;
      v2 = type metadata accessor for InfiniteScrollCoordinator();
      v3 = objc_allocWithZone(v2);
      *&v3[OBJC_IVAR____TtC23ShelfKitCollectionViews25InfiniteScrollCoordinator_distance] = 0x407F400000000000;
      *&v3[OBJC_IVAR____TtC23ShelfKitCollectionViews25InfiniteScrollCoordinator_paginatedPresenter + 8] = 0;
      v4 = swift_unknownObjectWeakInit();
      v3[OBJC_IVAR____TtC23ShelfKitCollectionViews25InfiniteScrollCoordinator_isDecelerating] = 0;
      *&v3[OBJC_IVAR____TtC23ShelfKitCollectionViews25InfiniteScrollCoordinator_afterDecelerationBlocks] = _swiftEmptyArrayStorage;
      v3[OBJC_IVAR____TtC23ShelfKitCollectionViews25InfiniteScrollCoordinator_isEnabled] = 1;
      v3[OBJC_IVAR____TtC23ShelfKitCollectionViews25InfiniteScrollCoordinator_shouldPrepareNextPageWithoutContent] = 0;
      *(v4 + 8) = v1;
      swift_unknownObjectWeakAssign();
      v8.receiver = v3;
      v8.super_class = v2;
      v5 = objc_msgSendSuper2(&v8, "init");
      sub_17F31C(v5, v0, &off_3B8188);
      swift_unknownObjectRelease();
    }
  }

  else
  {
    sub_EB68(v10, &qword_406480);
  }

  v6 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews15ShelvesDelegate_impressionsCalculator);
  type metadata accessor for ModernImpressionsScrollCoordinator();
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews15ShelvesDelegate_modernImpressionsScrollCoordinator) = v7;

  swift_retain_n();

  sub_17F1E4(v7, v0);
}

uint64_t ShelvesDelegate.remove<A>(type:)()
{
  v1 = OBJC_IVAR____TtC23ShelfKitCollectionViews15ShelvesDelegate_scrollCoordinators;
  swift_beginAccess();
  v17 = v0;
  v2 = *(v0 + v1);
  v4 = v2 + 2;
  v3 = v2[2];
  if (!v3)
  {
LABEL_5:
    v9 = *v4;
    v10 = *v4;
LABEL_9:
    sub_182A80(v9, v10, sub_CA66C, sub_17FA10);
    return swift_endAccess();
  }

  v5 = 0;
  v6 = -v3;
  v7 = 32;
  while (1)
  {
    swift_unknownObjectRetain();
    v8 = sub_17D200();
    swift_unknownObjectRelease();
    if (v8)
    {
      break;
    }

    v7 += 16;
    if (v6 == --v5)
    {
      goto LABEL_5;
    }
  }

  v9 = -v5;
  v10 = 1 - v5;
  if (!__OFADD__(-v5, 1))
  {
    v11 = *v4;
    if (v10 == *v4)
    {
LABEL_8:
      if (v10 >= v9)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v13 = v7 + 16;
      while (v10 < v11)
      {
        swift_unknownObjectRetain();
        v14 = sub_17D200();
        swift_unknownObjectRelease();
        if ((v14 & 1) == 0)
        {
          if (v10 != v9)
          {
            if (v9 < 0)
            {
              goto LABEL_24;
            }

            if (v9 >= *v4)
            {
              goto LABEL_25;
            }

            if (v10 >= *v4)
            {
              goto LABEL_26;
            }

            v18 = *(v2 + v13);
            v16 = *&v2[2 * v9 + 4];
            swift_unknownObjectRetain();
            swift_unknownObjectRetain();
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *(v17 + v1) = v2;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v2 = sub_17EE18(v2);
              *(v17 + v1) = v2;
            }

            *&v2[2 * v9 + 4] = v18;
            swift_unknownObjectRelease();
            *(v17 + v1) = v2;
            if (v10 >= v2[2])
            {
              goto LABEL_27;
            }

            *(v2 + v13) = v16;
            swift_unknownObjectRelease();
            *(v17 + v1) = v2;
          }

          ++v9;
        }

        ++v10;
        v4 = v2 + 2;
        v11 = v2[2];
        v13 += 16;
        if (v10 == v11)
        {
          goto LABEL_8;
        }
      }

      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
    }

    __break(1u);
  }

  __break(1u);

  result = swift_endAccess();
  __break(1u);
  return result;
}

uint64_t ShelvesDelegate.add(scrollCoordinator:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();

  return sub_17F464(a1, v2, ObjectType, a2);
}

uint64_t ShelvesDelegate.dependenciesDidChange(_:)(uint64_t a1)
{
  v2 = v1;
  *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews15ShelvesDelegate_objectGraph) = a1;

  sub_302448();
  sub_30B8E8();
  *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews15ShelvesDelegate_clickLocationTracker) = v6;

  sub_302818();
  sub_30B8E8();
  v3 = OBJC_IVAR____TtC23ShelfKitCollectionViews15ShelvesDelegate_impressionsCalculator;
  *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews15ShelvesDelegate_impressionsCalculator) = v6;

  v5 = *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews15ShelvesDelegate_modernImpressionsScrollCoordinator);
  if (v5)
  {
    *(v5 + 16) = *(v2 + v3);
  }

  return result;
}

uint64_t ShelvesDelegate.uberCellPublisher.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC23ShelfKitCollectionViews15ShelvesDelegate_uberCellPublisher;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t ShelvesDelegate.converter.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews15ShelvesDelegate_converter);
  swift_beginAccess();
  v4 = v3[3];
  v11 = v3[2];
  v12 = v4;
  v13 = v3[4];
  v5 = v13;
  v6 = v3[1];
  v10[0] = *v3;
  v7 = v10[0];
  v10[1] = v6;
  a1[2] = v11;
  a1[3] = v4;
  a1[4] = v5;
  *a1 = v7;
  a1[1] = v6;
  return sub_A0660(v10, v9);
}

uint64_t ShelvesDelegate.converter.setter(_OWORD *a1)
{
  v3 = (v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews15ShelvesDelegate_converter);
  swift_beginAccess();
  v4 = v3[3];
  v9[2] = v3[2];
  v9[3] = v4;
  v9[4] = v3[4];
  v5 = v3[1];
  v9[0] = *v3;
  v9[1] = v5;
  v6 = a1[3];
  v3[2] = a1[2];
  v3[3] = v6;
  v3[4] = a1[4];
  v7 = a1[1];
  *v3 = *a1;
  v3[1] = v7;
  return sub_A0044(v9);
}

uint64_t ShelvesDelegate.collectionView(_:shouldSelectItemAt:)(void *a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4004A0);
  __chkstk_darwin(v5 - 8);
  v7 = &v39 - v6;
  v8 = sub_307108();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = (v2 + OBJC_IVAR____TtC23ShelfKitCollectionViews15ShelvesDelegate_converter);
  swift_beginAccess();
  v13 = v12[6];
  if (!v13)
  {
    v55 = 0;
    v53 = 0u;
    v54 = 0u;
    goto LABEL_10;
  }

  v43 = v7;
  v40 = a1;
  v41 = v11;
  v44 = v8;
  v45 = v9;
  v39 = v2;
  v14 = v12[8];
  v46 = v12[7];
  v15 = v12[4];
  v48 = v12[2];
  v16 = v48;
  v17 = *v12;
  v47 = v12[1];
  sub_9FF04(v17);
  sub_9FF04(v16);
  sub_9FF04(v15);
  sub_9FF04(v13);
  sub_9FF04(v14);
  v42 = a2;
  v13(&v53, a2);
  sub_1EBD0(v17);
  sub_1EBD0(v48);
  sub_1EBD0(v15);
  sub_1EBD0(v13);
  sub_1EBD0(v14);
  if (!*(&v54 + 1))
  {
LABEL_10:
    v35 = &qword_4064D0;
    v36 = &v53;
LABEL_13:
    sub_EB68(v36, v35);
    goto LABEL_14;
  }

  sub_12658(&v53, v56);
  v18 = v12[2];
  if (!v18)
  {
    v23 = v43;
    (*(v45 + 56))(v43, 1, 1, v44);
    goto LABEL_12;
  }

  v48 = v12[8];
  v19 = v48;
  v20 = v12[6];
  v21 = v12[4];
  v22 = *v12;
  sub_9FF04(v22);
  sub_9FF04(v18);
  sub_9FF04(v21);
  sub_9FF04(v20);
  sub_9FF04(v19);
  v23 = v43;
  v18(v42);
  sub_1EBD0(v22);
  sub_1EBD0(v18);
  sub_1EBD0(v21);
  sub_1EBD0(v20);
  sub_1EBD0(v48);
  v24 = v45;
  v25 = v44;
  if ((*(v45 + 48))(v23, 1, v44) == 1)
  {
LABEL_12:
    __swift_destroy_boxed_opaque_existential_1(v56);
    v35 = &unk_4004A0;
    v36 = v23;
    goto LABEL_13;
  }

  v26 = v41;
  (*(v24 + 32))(v41, v23, v25);
  isa = sub_301EA8().super.isa;
  v28 = [v40 cellForItemAtIndexPath:isa];

  if (v28)
  {
    v29 = OBJC_IVAR____TtC23ShelfKitCollectionViews15ShelvesDelegate_multiSelectableExtension;
    v30 = v39;
    swift_beginAccess();
    if (*(v30 + v29))
    {

      v31 = sub_30A758();
      v32 = v31(v56, v26);

      if (v32)
      {
        v33 = sub_30A778();
        v34 = v33(v56, v26);

LABEL_29:
        (*(v24 + 8))(v26, v25);
        __swift_destroy_boxed_opaque_existential_1(v56);
        return v34 & 1;
      }
    }

    sub_12670(v56, v51);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4064E0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4064E8);
    if (swift_dynamicCast())
    {
      sub_12658(v49, &v53);
      __swift_project_boxed_opaque_existential_1Tm(&v53, *(&v54 + 1));
      sub_308558();
      if (v52)
      {

        (*(v24 + 8))(v26, v25);
        __swift_destroy_boxed_opaque_existential_1(v56);
        sub_EB68(v51, &unk_3FBB40);
        v38 = &v53;
LABEL_25:
        __swift_destroy_boxed_opaque_existential_1(v38);
        v34 = 1;
        return v34 & 1;
      }

      sub_EB68(v51, &unk_3FBB40);
      __swift_destroy_boxed_opaque_existential_1(&v53);
    }

    else
    {
      v50 = 0;
      memset(v49, 0, sizeof(v49));
      sub_EB68(v49, &unk_4064F0);
    }

    swift_getObjectType();
    if (swift_conformsToProtocol2())
    {
      if ((sub_307528() & 1) == 0)
      {
        v34 = sub_307598();

        goto LABEL_29;
      }

      (*(v24 + 8))(v26, v25);
      v38 = v56;
      goto LABEL_25;
    }
  }

  (*(v24 + 8))(v26, v25);
  __swift_destroy_boxed_opaque_existential_1(v56);
LABEL_14:
  v34 = 0;
  return v34 & 1;
}

uint64_t sub_178A6C(void *a1, uint64_t a2, void *a3)
{
  v5 = sub_301F38();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_301EB8();
  v9 = a3;
  v10 = a1;
  LOBYTE(a1) = ShelvesDelegate.collectionView(_:shouldSelectItemAt:)(v9, v8);

  (*(v6 + 8))(v8, v5);
  return a1 & 1;
}

void ShelvesDelegate.collectionView(_:didSelectItemAt:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v147 = a1;
  ObjectType = swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_406500);
  __chkstk_darwin(v5 - 8);
  v140 = v127 - v6;
  v7 = sub_302F18();
  v141 = *(v7 - 8);
  v142 = v7;
  __chkstk_darwin(v7);
  v135 = v127 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_308668();
  v144 = *(v9 - 8);
  __chkstk_darwin(v9);
  v143 = v127 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_308DF8();
  v138 = *(v11 - 8);
  v139 = v11;
  __chkstk_darwin(v11);
  v13 = v127 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4090C0);
  __chkstk_darwin(v14 - 8);
  v145 = v127 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4004A0);
  __chkstk_darwin(v16 - 8);
  v18 = (v127 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v19);
  v21 = (v127 - v20);
  v22 = sub_307108();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v136 = v127 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v149 = v127 - v26;
  v146 = v3;
  v27 = &v3[OBJC_IVAR____TtC23ShelfKitCollectionViews15ShelvesDelegate_converter];
  swift_beginAccess();
  v28 = *(v27 + 3);
  v178[2] = *(v27 + 2);
  v179 = v28;
  v180 = *(v27 + 4);
  v29 = *(v27 + 1);
  v178[0] = *v27;
  v178[1] = v29;
  v30 = v179;
  if (!v179)
  {
    v176 = 0;
    v174 = 0u;
    v175 = 0u;
    goto LABEL_18;
  }

  v148 = v22;
  sub_A0660(v178, v173);
  v134 = a2;
  v30(&v174, a2);
  sub_A0044(v178);
  if (!*(&v175 + 1))
  {
LABEL_18:
    v64 = &qword_4064D0;
    v65 = &v174;
    goto LABEL_21;
  }

  sub_12658(&v174, v177);
  v31 = *(v27 + 3);
  v173[2] = *(v27 + 2);
  v173[3] = v31;
  v173[4] = *(v27 + 4);
  v32 = *(v27 + 1);
  v173[0] = *v27;
  v173[1] = v32;
  v33 = v32;
  if (!v32)
  {
    (*(v23 + 56))(v21, 1, 1, v148);
    goto LABEL_20;
  }

  sub_A0660(v173, &v168);
  v33(v134);
  sub_A0044(v173);
  v34 = v148;
  v132 = *(v23 + 48);
  if (v132(v21, 1, v148) == 1)
  {
LABEL_20:
    __swift_destroy_boxed_opaque_existential_1(v177);
    v64 = &unk_4004A0;
    v65 = v21;
    goto LABEL_21;
  }

  v130 = v9;
  v35 = v149;
  v128 = *(v23 + 32);
  v129 = v23 + 32;
  v128(v149, v21, v34);
  isa = sub_301EA8().super.isa;
  v37 = v147;
  v38 = [v147 cellForItemAtIndexPath:isa];

  v133 = v38;
  if (!v38)
  {
    (*(v23 + 8))(v35, v148);
LABEL_23:
    __swift_destroy_boxed_opaque_existential_1(v177);
    return;
  }

  v131 = v23;
  v39 = OBJC_IVAR____TtC23ShelfKitCollectionViews15ShelvesDelegate_multiSelectableExtension;
  v40 = v146;
  swift_beginAccess();
  v127[0] = v39;
  v41 = *&v40[v39];
  if (v41)
  {

    v42 = sub_30A758();

    LODWORD(v41) = v42(v177, v149);
  }

  v43 = v133;
  swift_getObjectType();
  v127[1] = &protocol descriptor for ShelfUIKitCell;
  if (swift_conformsToProtocol2())
  {
    v44 = v43;
    v45 = v41;
    v46 = v44;
    v47 = sub_307528();

    if ((v47 | v45))
    {
      goto LABEL_10;
    }

    goto LABEL_25;
  }

  if ((v41 & 1) == 0)
  {
LABEL_25:
    v66 = sub_301EA8().super.isa;
    [v37 deselectItemAtIndexPath:v66 animated:1];

    sub_12670(v177, &v168);
    v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4064E0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4064E8);
    if (swift_dynamicCast())
    {
      sub_12658(&v159, &v151);
      sub_12670(v177, &v159);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_406510);
      v68 = swift_dynamicCast();
      v69 = v131;
      v147 = v67;
      if (v68)
      {
        __swift_project_boxed_opaque_existential_1Tm(&v168, *(&v169 + 1));
        v70 = sub_309218();
        __swift_destroy_boxed_opaque_existential_1(&v168);
        if (v70)
        {
          swift_getObjectType();
          v72 = v138;
          v71 = v139;
          (*(v138 + 104))(v13, enum case for HighlightFeedback.userInteracted(_:), v139);
          sub_30AB48();

          (*(v72 + 8))(v13, v71);
        }
      }

      else
      {
        *&v170 = 0;
        v168 = 0u;
        v169 = 0u;
        sub_EB68(&v168, &qword_406518);
      }

      __swift_project_boxed_opaque_existential_1Tm(&v151, *(&v152 + 1));
      sub_308568();
      if (*(&v169 + 1))
      {
        sub_1DA94(&v168, &v156);
        v73 = v133;
      }

      else
      {
        *(&v157 + 1) = sub_124C4(0, &qword_406520);
        v73 = v133;
        *&v156 = v133;
        v74 = v133;
      }

      swift_getObjectType();
      if (swift_conformsToProtocol2())
      {
        v75 = v73;
        sub_307558();

        if (*(&v166 + 1))
        {
          sub_12658(&v165, v150);
          v76 = *(v27 + 3);
          v170 = *(v27 + 2);
          v171 = v76;
          v172 = *(v27 + 4);
          v77 = *(v27 + 1);
          v168 = *v27;
          v169 = v77;
          swift_getObjectType();
          if (swift_conformsToProtocol2())
          {
            v78 = v75;
            sub_A0660(&v168, &v159);
            v79 = sub_307518();
            sub_A0044(&v168);

            v80 = v149;
            if (v79)
            {
LABEL_52:
              sub_3093A8();

              sub_30B9B8();
              v88 = sub_302268();
              v89 = v145;
              (*(*(v88 - 8) + 56))(v145, 1, 1, v88);
              sub_1DA1C(&v156, &v159);
              v90 = v75;
              sub_309388();

              sub_EB68(&v159, &unk_3FBB70);
              sub_EB68(v89, &unk_4090C0);
              v164 = v90;
              sub_124C4(0, &qword_406520);
              v91 = v90;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_406530);
              if (swift_dynamicCast())
              {
                __swift_project_boxed_opaque_existential_1Tm(&v159, *(&v160 + 1));
                v92 = sub_306F38();
                __swift_destroy_boxed_opaque_existential_1(&v159);
                if (v92)
                {
                  sub_309A28();
                  swift_allocObject();
                  v93 = v92;
                  sub_309A08();
                  sub_309398();
                }
              }

              else
              {
                *&v161 = 0;
                v159 = 0u;
                v160 = 0u;
                sub_EB68(&v159, &unk_406538);
              }

              sub_12670(v150, &v159);

              v94 = v143;
              sub_308678();
              sub_308658();

              (*(v144 + 8))(v94, v130);
LABEL_67:
              __swift_destroy_boxed_opaque_existential_1(v150);
              goto LABEL_68;
            }
          }

          else
          {
            type metadata accessor for ShelvesViewSwiftUIHelperCell();
            v86 = swift_dynamicCastClass();
            v80 = v149;
            if (v86)
            {
              v87 = *(v86 + OBJC_IVAR____TtC23ShelfKitCollectionViews28ShelvesViewSwiftUIHelperCell_objectGraph);

              if (v87)
              {
                goto LABEL_52;
              }
            }
          }

          goto LABEL_52;
        }
      }

      else
      {
        v167 = 0;
        v165 = 0u;
        v166 = 0u;
      }

      sub_EB68(&v165, &unk_3FBB40);
      __swift_project_boxed_opaque_existential_1Tm(&v151, *(&v152 + 1));
      sub_308558();
      if (!*(&v166 + 1))
      {
        sub_EB68(&v165, &unk_3FBB40);
        v80 = v149;
LABEL_68:
        v111 = sub_3030A8();
        *(&v169 + 1) = v111;
        *&v170 = sub_1827CC(&qword_3FBDC0, &type metadata accessor for Podcasts);
        boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(&v168);
        (*(*(v111 - 8) + 104))(boxed_opaque_existential_0Tm, enum case for Podcasts.recentlySearched(_:), v111);
        LOBYTE(v111) = sub_302E88();
        __swift_destroy_boxed_opaque_existential_1(&v168);
        if ((v111 & 1) == 0)
        {
          goto LABEL_73;
        }

        sub_EB00(&v146[OBJC_IVAR____TtC23ShelfKitCollectionViews15ShelvesDelegate_presenter], &v168, &qword_406480);
        if (!*(&v169 + 1))
        {

          (*(v69 + 8))(v80, v148);
          __swift_destroy_boxed_opaque_existential_1(v177);
          sub_EB68(&v168, &qword_406480);
          goto LABEL_75;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401110);
        sub_3089B8();
        if (swift_dynamicCast() & 1) != 0 && (, sub_12670(v177, &v168), sub_307DF8(), (swift_dynamicCast()))
        {
          sub_30A578();
        }

        else
        {
LABEL_73:
        }

        (*(v69 + 8))(v80, v148);
        __swift_destroy_boxed_opaque_existential_1(v177);
LABEL_75:
        __swift_destroy_boxed_opaque_existential_1(&v156);
        __swift_destroy_boxed_opaque_existential_1(&v151);
        return;
      }

      sub_12658(&v165, v150);
      v81 = *(v27 + 3);
      v170 = *(v27 + 2);
      v171 = v81;
      v172 = *(v27 + 4);
      v82 = *(v27 + 1);
      v168 = *v27;
      v169 = v82;
      v83 = v133;
      swift_getObjectType();
      if (swift_conformsToProtocol2())
      {
        v84 = v83;
        sub_A0660(&v168, &v159);
        v85 = sub_307518();
        sub_A0044(&v168);

        if (v85)
        {
LABEL_60:
          v80 = v149;
          sub_3093A8();

          sub_30B9B8();
          v97 = sub_302268();
          v98 = v145;
          (*(*(v97 - 8) + 56))(v145, 1, 1, v97);
          sub_1DA1C(&v156, &v159);
          v99 = v133;
          sub_309388();

          sub_EB68(&v159, &unk_3FBB70);
          sub_EB68(v98, &unk_4090C0);
          v164 = v99;
          sub_124C4(0, &qword_406520);
          v100 = v99;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_406530);
          if (swift_dynamicCast())
          {
            __swift_project_boxed_opaque_existential_1Tm(&v159, *(&v160 + 1));
            v101 = sub_306F38();
            __swift_destroy_boxed_opaque_existential_1(&v159);
            v102 = v141;
            if (v101)
            {
              sub_309A28();
              swift_allocObject();
              v103 = v101;
              sub_309A08();
              sub_309398();
            }
          }

          else
          {
            *&v161 = 0;
            v159 = 0u;
            v160 = 0u;
            sub_EB68(&v159, &unk_406538);
            v102 = v141;
          }

          sub_12670(v150, &v159);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_3FBB60);
          v104 = v140;
          v105 = v142;
          v106 = swift_dynamicCast();
          v107 = *(v102 + 56);
          if (v106)
          {
            v107(v104, 0, 1, v105);
            v108 = v135;
            (*(v102 + 32))(v135, v104, v105);
            sub_301ED8();
            *(&v160 + 1) = v105;
            *&v161 = sub_1827CC(&qword_406548, &type metadata accessor for SearchAction);
            __swift_allocate_boxed_opaque_existential_0Tm(&v159);
            sub_302F08();

            v109 = v143;
            sub_308678();
            sub_308658();

            (*(v144 + 8))(v109, v130);
            v69 = v131;
            (*(v102 + 8))(v108, v105);
          }

          else
          {
            v107(v104, 1, 1, v105);
            sub_EB68(v104, &unk_406500);
            sub_12670(v150, &v159);

            v110 = v143;
            sub_308678();
            sub_308658();

            (*(v144 + 8))(v110, v130);
          }

          goto LABEL_67;
        }
      }

      else
      {
        type metadata accessor for ShelvesViewSwiftUIHelperCell();
        v95 = swift_dynamicCastClass();
        if (v95)
        {
          v96 = *(v95 + OBJC_IVAR____TtC23ShelfKitCollectionViews28ShelvesViewSwiftUIHelperCell_objectGraph);

          if (v96)
          {
            goto LABEL_60;
          }
        }
      }

      goto LABEL_60;
    }

    (*(v131 + 8))(v149, v148);
    __swift_destroy_boxed_opaque_existential_1(v177);
    *&v161 = 0;
    v159 = 0u;
    v160 = 0u;
    v64 = &unk_4064F0;
    v65 = &v159;
LABEL_21:
    sub_EB68(v65, v64);
    return;
  }

LABEL_10:
  v48 = *(v27 + 3);
  v170 = *(v27 + 2);
  v171 = v48;
  v172 = *(v27 + 4);
  v49 = *(v27 + 1);
  v168 = *v27;
  v169 = v49;
  v50 = v171;
  v51 = v134;
  if (!v171)
  {
    v158 = 0;
    v156 = 0u;
    v157 = 0u;
    v52 = v133;
    goto LABEL_31;
  }

  sub_A0660(&v168, &v159);
  v50(&v156, v51);
  sub_A0044(&v168);
  v52 = v133;
  if (!*(&v157 + 1))
  {
LABEL_31:

    (*(v131 + 8))(v149, v148);
    __swift_destroy_boxed_opaque_existential_1(v177);
    v64 = &qword_4064D0;
    v65 = &v156;
    goto LABEL_21;
  }

  sub_12658(&v156, &v165);
  v53 = *(v27 + 3);
  v161 = *(v27 + 2);
  v162 = v53;
  v163 = *(v27 + 4);
  v54 = *(v27 + 1);
  v159 = *v27;
  v160 = v54;
  v55 = v54;
  if (!v54)
  {
    v58 = v131;
    v56 = v148;
    (*(v131 + 56))(v18, 1, 1, v148);
    goto LABEL_47;
  }

  sub_A0660(&v159, &v151);
  v55(v51);
  sub_A0044(&v159);
  v56 = v148;
  v57 = v132(v18, 1, v148);
  v58 = v131;
  if (v57 == 1)
  {
LABEL_47:

    __swift_destroy_boxed_opaque_existential_1(&v165);
    (*(v58 + 8))(v149, v56);
    __swift_destroy_boxed_opaque_existential_1(v177);
    v64 = &unk_4004A0;
    v65 = v18;
    goto LABEL_21;
  }

  v59 = v136;
  v128(v136, v18, v56);
  v60 = *(v27 + 3);
  v153 = *(v27 + 2);
  v154 = v60;
  v155 = *(v27 + 4);
  v61 = *(v27 + 1);
  v151 = *v27;
  v152 = v61;
  swift_getObjectType();
  if (swift_conformsToProtocol2())
  {
    v62 = v52;
    sub_A0660(&v151, v150);
    v63 = sub_307518();
    sub_A0044(&v151);

    if (!v63)
    {
LABEL_80:
      v115 = v146;

      goto LABEL_81;
    }
  }

  else
  {
    type metadata accessor for ShelvesViewSwiftUIHelperCell();
    v113 = swift_dynamicCastClass();
    if (!v113)
    {
      goto LABEL_80;
    }

    v114 = *(v113 + OBJC_IVAR____TtC23ShelfKitCollectionViews28ShelvesViewSwiftUIHelperCell_objectGraph);

    if (!v114)
    {
      goto LABEL_80;
    }
  }

  v115 = v146;
LABEL_81:
  sub_3093A8();

  sub_30B9B8();
  v116 = sub_302268();
  v117 = v145;
  (*(*(v116 - 8) + 56))(v145, 1, 1, v116);
  v150[3] = ObjectType;
  v150[0] = v115;
  v118 = v52;
  v119 = v115;
  v120 = sub_309388();

  sub_EB68(v117, &unk_4090C0);
  sub_EB68(v150, &unk_3FBB70);
  v121 = v127[0];
  swift_beginAccess();
  if (*&v115[v121])
  {
    swift_endAccess();

    v122 = sub_30A798();

    v122(&v165, v59, v120);

    v123 = *(v58 + 8);
    v124 = v148;
    v123(v59, v148);
    __swift_destroy_boxed_opaque_existential_1(&v165);
    v123(v149, v124);
    goto LABEL_23;
  }

  v125 = *(v58 + 8);
  v126 = v148;
  v125(v59, v148);
  __swift_destroy_boxed_opaque_existential_1(&v165);
  v125(v149, v126);
  __swift_destroy_boxed_opaque_existential_1(v177);
  swift_endAccess();
}

uint64_t ShelvesDelegate.collectionView(_:willDisplay:forItemAt:)(char *a1, void *a2, uint64_t a3)
{
  v49 = a1;
  v50 = a3;
  v4 = sub_307048();
  v47 = *(v4 - 8);
  v48 = v4;
  __chkstk_darwin(v4);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_307108();
  v51 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_308DF8();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_304578();
  __chkstk_darwin(v14);
  type metadata accessor for LoadingCell();
  result = swift_dynamicCastClass();
  if (!result)
  {
    v45 = v6;
    v46 = v13;
    v43 = v11;
    v44 = v9;
    v41 = v10;
    sub_30CF68();
    sub_1802AC();
    sub_304558();
    sub_30CF78();
    swift_getObjectType();
    v16 = swift_conformsToProtocol2();
    v42 = v7;
    if (v16 && a2)
    {
      v17 = v16;
      v18 = v52;
      swift_beginAccess();
      *&v66[0] = a2;
      *(&v66[0] + 1) = v17;
      v19 = a2;

      sub_304D68();
    }

    else
    {
      v18 = v52;
    }

    v20 = v46;
    v21 = v50;
    v22 = (v18 + OBJC_IVAR____TtC23ShelfKitCollectionViews15ShelvesDelegate_converter);
    swift_beginAccess();
    v23 = v22[1];
    v24 = v22[3];
    v63 = v22[2];
    v64 = v24;
    v25 = v22[3];
    v65 = v22[4];
    v26 = v22[1];
    v62[0] = *v22;
    v62[1] = v26;
    v59 = v63;
    v60 = v25;
    v61 = v22[4];
    v57 = v62[0];
    v58 = v23;
    sub_A0660(v62, v56);
    v27 = CollectionConverter.shelfItem(for:with:in:)(v21, a2, 0);
    v66[2] = v59;
    v66[3] = v60;
    v66[4] = v61;
    v66[0] = v57;
    v66[1] = v58;
    result = sub_A0044(v66);
    v28 = v51;
    if (v27)
    {
      sub_12670((v27 + 24), v56);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4064E0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_406560);
      if (swift_dynamicCast())
      {
        sub_12658(&v53, &v57);
        sub_12670(&v57, v56);
        *(&v54 + 1) = sub_124C4(0, &qword_406520);
        *&v53 = a2;
        v29 = *(v18 + OBJC_IVAR____TtC23ShelfKitCollectionViews15ShelvesDelegate_objectGraph);
        v30 = a2;

        sub_220AC8(v56, &v53, v29);

        sub_EB68(v56, &unk_406568);
        __swift_destroy_boxed_opaque_existential_1(&v57);
        __swift_destroy_boxed_opaque_existential_1(&v53);
      }

      else
      {
        v55 = 0;
        v53 = 0u;
        v54 = 0u;
        sub_EB68(&v53, &unk_406568);
      }

      v31 = v43;
      sub_12670((v27 + 24), v56);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_406510);
      if (swift_dynamicCast())
      {
        __swift_project_boxed_opaque_existential_1Tm(&v57, *(&v58 + 1));
        v32 = sub_309218();
        __swift_destroy_boxed_opaque_existential_1(&v57);
        v33 = v49;
        if (v32)
        {
          v50 = *(v18 + OBJC_IVAR____TtC23ShelfKitCollectionViews15ShelvesDelegate_highlightsProvider + 8);
          swift_getObjectType();
          v34 = v33;
          v35 = v41;
          (*(v31 + 104))(v20, enum case for HighlightFeedback.displayed(_:), v41);
          sub_30AB48();

          v36 = v35;
          v33 = v34;
          (*(v31 + 8))(v20, v36);
        }
      }

      else
      {
        *&v59 = 0;
        v57 = 0u;
        v58 = 0u;
        sub_EB68(&v57, &qword_406518);
        v33 = v49;
      }

      v37 = v44;
      v38 = v42;
      (*(v28 + 16))(v44, *(v27 + 2) + OBJC_IVAR____TtCV23ShelfKitCollectionViews19CollectionConverter5Shelf_model, v42);
      v39 = v45;
      sub_307058();
      (*(v28 + 8))(v37, v38);
      LOBYTE(v37) = sub_306FE8();
      (*(v47 + 8))(v39, v48);
      if (v37)
      {
        sub_17D550(v27, v33);
      }

      else
      {
        sub_1805C0(v27);
      }

      sub_17AB20(v27);
    }
  }

  return result;
}

uint64_t sub_17AB20(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_404150);
  __chkstk_darwin(v3 - 8);
  v52 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v47 - v6;
  __chkstk_darwin(v8);
  v10 = &v47 - v9;
  v11 = sub_3023D8();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v47 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v55 = &v47 - v15;
  __chkstk_darwin(v16);
  v51 = &v47 - v17;
  __chkstk_darwin(v18);
  v20 = &v47 - v19;
  __chkstk_darwin(v21);
  v23 = &v47 - v22;
  __chkstk_darwin(v24);
  v26 = &v47 - v25;
  v27 = *(a1 + 16);
  v60 = v1;
  sub_17E834();
  v54 = a1;
  CollectionConverter.ShelfItem.clickLocationElement.getter(v10);
  v65 = *(v12 + 48);
  v28 = v65(v10, 1, v11);
  v53 = v12 + 48;
  if (v28 == 1)
  {
    sub_EB68(v10, &unk_404150);
    p_cache = (&OBJC_METACLASS____TtC23ShelfKitCollectionViews31HorizontalPaidChannelHeaderView + 16);
  }

  else
  {
    v64 = v23;
    v30 = *(v12 + 32);
    v30(v26, v10, v11);
    if (CollectionConverter.Shelf.isSingleItemShelf.getter())
    {
      v31 = v64;
      (*(v12 + 16))(v64, v26, v11);
      sub_302368();
      (*(v12 + 8))(v26, v11);
      v30(v26, v31, v11);
    }

    p_cache = &OBJC_METACLASS____TtC23ShelfKitCollectionViews31HorizontalPaidChannelHeaderView.cache;

    sub_3023E8();

    (*(v12 + 8))(v26, v11);
  }

  v32 = sub_A3768();
  v33 = v32;
  if (!(v32 >> 62))
  {
    result = *(&dword_10 + (v32 & 0xFFFFFFFFFFFFFF8));
    if (result)
    {
      goto LABEL_8;
    }
  }

  result = sub_30D668();
  if (!result)
  {
  }

LABEL_8:
  if (result >= 1)
  {
    v35 = 0;
    v36 = p_cache[151];
    v63 = result;
    v64 = v33 & 0xC000000000000001;
    v57 = (v12 + 16);
    v58 = v36;
    v61 = (v12 + 8);
    v62 = (v12 + 32);
    v49 = v27;
    v50 = v20;
    v48 = v7;
    v59 = v33;
    do
    {
      if (v64)
      {
        sub_30D578();
      }

      else
      {
      }

      CollectionConverter.ShelfItem.Button.clickLocationElement.getter(v7);
      if (v65(v7, 1, v11) == 1)
      {

        sub_EB68(v7, &unk_404150);
      }

      else
      {
        v40 = *v62;
        (*v62)(v20, v7, v11);
        if (CollectionConverter.Shelf.isSingleItemShelf.getter())
        {
          v41 = *v57;
          v42 = v55;
          (*v57)(v55, v20, v11);
          v43 = v52;
          CollectionConverter.ShelfItem.clickLocationElement.getter(v52);
          v44 = v65(v43, 1, v11);
          v56 = v40;
          if (v44)
          {
            sub_EB68(v43, &unk_404150);
            v37 = v61;
          }

          else
          {
            v45 = v47;
            v41(v47, v43, v11);
            sub_EB68(v43, &unk_404150);
            sub_3023C8();
            if (!v46)
            {
              sub_302398();
            }

            v37 = v61;
            (*v61)(v45, v11);
            v42 = v55;
          }

          v38 = v51;
          v41(v51, v42, v11);
          sub_302368();
          v39 = *v37;
          (*v37)(v42, v11);
          v20 = v50;
          v39(v50, v11);
          v56(v20, v38, v11);
          v7 = v48;
        }

        sub_3023E8();

        (*v61)(v20, v11);
      }

      ++v35;
    }

    while (v63 != v35);
  }

  __break(1u);
  return result;
}

uint64_t ShelvesDelegate.collectionView(_:contextMenuConfigurationForItemAt:point:)(void *a1, uint64_t a2, double a3, double a4)
{
  v5 = v4;
  v108 = a2;
  v9 = sub_307048();
  v99 = *(v9 - 8);
  v100 = v9;
  __chkstk_darwin(v9);
  v98 = &v87 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4004A0);
  __chkstk_darwin(v11 - 8);
  v102 = &v87 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4090C0);
  __chkstk_darwin(v13 - 8);
  v101 = &v87 - v14;
  v15 = sub_302268();
  v105 = *(v15 - 8);
  __chkstk_darwin(v15);
  v107 = &v87 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_3022E8();
  v103 = *(v17 - 8);
  v104 = v17;
  __chkstk_darwin(v17);
  v106 = &v87 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_301F38();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v87 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_400600);
  v24 = __chkstk_darwin(v23 - 8);
  v26 = &v87 - v25;
  v27 = [a1 traitCollection];
  v28 = [v27 userInterfaceIdiom];

  if (v28 != &dword_4 + 1 && ([a1 isEditing] & 1) != 0)
  {
    return 0;
  }

  v97 = v15;
  v29 = (v5 + OBJC_IVAR____TtC23ShelfKitCollectionViews15ShelvesDelegate_converter);
  swift_beginAccess();
  v30 = v29[3];
  v126[2] = v29[2];
  v127 = v30;
  v128 = v29[4];
  v31 = v29[1];
  v126[0] = *v29;
  v126[1] = v31;
  v32 = v127;
  if (!v127)
  {
    v114 = 0;
    v112 = 0u;
    v113 = 0u;
    goto LABEL_13;
  }

  sub_A0660(v126, &v120);
  v32(&v112, v108);
  sub_A0044(v126);
  if (!*(&v113 + 1))
  {
LABEL_13:
    sub_EB68(&v112, &qword_4064D0);
    v115 = 0u;
    v116 = 0u;
    *&v117 = 0;
    goto LABEL_15;
  }

  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4064E0);
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_406560);
  v96 = v33;
  if ((swift_dynamicCast() & 1) == 0)
  {
    *&v117 = 0;
    v115 = 0u;
    v116 = 0u;
    goto LABEL_15;
  }

  if (!*(&v116 + 1))
  {
LABEL_15:
    sub_EB68(&v115, &unk_406568);
    return 0;
  }

  sub_12658(&v115, v125);
  v34 = sub_30CE68();
  if (!v34)
  {
LABEL_11:
    __swift_destroy_boxed_opaque_existential_1(v125);
    return 0;
  }

  v35 = v34;
  v88 = v5;
  isa = sub_301EA8().super.isa;
  v37 = [a1 cellForItemAtIndexPath:isa];

  if (v37)
  {
    type metadata accessor for SearchLandingCell();
    if (swift_dynamicCastClass())
    {

      goto LABEL_11;
    }
  }

  v89 = v37;
  v90 = v35;
  v93 = *(v20 + 16);
  v94 = v20 + 16;
  v93(v26, v108, v19);
  (*(v20 + 56))(v26, 0, 1, v19);
  v39 = OBJC_IVAR____TtC23ShelfKitCollectionViews15ShelvesDelegate_currentContextMenuIndexPath;
  v40 = v88;
  swift_beginAccess();
  sub_1818C0(v26, v40 + v39);
  swift_endAccess();
  v41 = [a1 indexPathsForSelectedItems];
  if (v41)
  {
    v42 = v41;
    v43 = sub_30C368();

    v44 = v43;
  }

  else
  {
    v44 = _swiftEmptyArrayStorage;
  }

  v45 = v97;
  v46 = v105;
  if (!sub_177868(v108, v44))
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_406580);
    v59 = swift_allocObject();
    *(v59 + 16) = xmmword_315430;
    v91 = v59;
    sub_12670(v125, v59 + 32);
    goto LABEL_42;
  }

  v47 = v44[2];
  if (v47)
  {
    v48 = *(v20 + 80);
    v87 = v44;
    v49 = v44 + ((v48 + 32) & ~v48);
    v50 = (v20 + 8);
    v51 = v47 - 1;
    v52 = *(v20 + 72);
    v91 = _swiftEmptyArrayStorage;
    for (i = v52; ; v49 += i)
    {
      v93(v22, v49, v19);
      v53 = v29[3];
      v122 = v29[2];
      v123 = v53;
      v124 = v29[4];
      v54 = v29[1];
      v120 = *v29;
      v121 = v54;
      v55 = v123;
      if (v123)
      {
        sub_A0660(&v120, &v115);
        v55(&v109, v22);
        (*v50)(v22, v19);
      }

      else
      {
        sub_A0660(&v120, &v115);
        (*v50)(v22, v19);
        v111 = 0;
        v109 = 0u;
        v110 = 0u;
      }

      sub_A0044(&v120);
      if (!*(&v110 + 1))
      {
        break;
      }

      if ((swift_dynamicCast() & 1) == 0)
      {
        v114 = 0;
        v112 = 0u;
        v113 = 0u;
        goto LABEL_36;
      }

      if (!*(&v113 + 1))
      {
        goto LABEL_36;
      }

      sub_12658(&v112, &v115);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v91 = sub_CB46C(0, v91[2] + 1, 1, v91);
      }

      v57 = v91[2];
      v56 = v91[3];
      if (v57 >= v56 >> 1)
      {
        v91 = sub_CB46C((v56 > 1), v57 + 1, 1, v91);
      }

      v58 = v91;
      v91[2] = v57 + 1;
      sub_12658(&v115, &v58[5 * v57 + 4]);
LABEL_37:
      if (!v51)
      {

        v40 = v88;
        v45 = v97;
        v46 = v105;
        goto LABEL_42;
      }

      --v51;
    }

    sub_EB68(&v109, &qword_4064D0);
    v112 = 0u;
    v113 = 0u;
    v114 = 0;
LABEL_36:
    sub_EB68(&v112, &unk_406568);
    goto LABEL_37;
  }

  v91 = _swiftEmptyArrayStorage;
LABEL_42:
  if (v89)
  {
    v60 = v89;
    v61 = v90;
    [v60 convertPoint:a1 fromCoordinateSpace:{a3, a4}];
    sub_302298();

    v62 = v60;
    v63 = v101;
    sub_30CE78();

    (*(v46 + 56))(v63, 0, 1, v45);
    (*(v46 + 32))(v107, v63, v45);
  }

  else
  {
    v64 = v90;
    v65 = a1;
    sub_302298();
    v66 = v101;
    (*(v46 + 56))(v101, 1, 1, v45);
    sub_302228();
    if ((*(v46 + 48))(v66, 1, v45) != 1)
    {
      sub_EB68(v66, &unk_4090C0);
    }
  }

  v67 = v102;
  v68 = v29[3];
  v122 = v29[2];
  v123 = v68;
  v124 = v29[4];
  v69 = v29[1];
  v120 = *v29;
  v121 = v69;
  v70 = v69;
  if (v69)
  {
    sub_A0660(&v120, &v115);
    v70(v108);
    sub_A0044(&v120);
    v71 = sub_307108();
    v72 = *(v71 - 8);
    if ((*(v72 + 48))(v67, 1, v71) != 1)
    {
      v73 = v98;
      sub_307058();
      (*(v72 + 8))(v67, v71);
      sub_182DF8();
      (*(v99 + 8))(v73, v100);
      sub_307408();
      goto LABEL_51;
    }
  }

  else
  {
    v74 = sub_307108();
    (*(*(v74 - 8) + 56))(v67, 1, 1, v74);
  }

  sub_EB68(v67, &unk_4004A0);
LABEL_51:
  v75 = v29[1];
  v115 = *v29;
  v116 = v75;
  v76 = v29[3];
  v117 = v29[2];
  v118 = v76;
  v119 = v29[4];
  v77 = v115;
  v78 = v89;
  if (!v115)
  {
LABEL_61:

    goto LABEL_62;
  }

  sub_A0660(&v115, &v112);
  v79 = v77(v108);
  if (!v79)
  {
LABEL_60:
    sub_A0044(&v115);
    goto LABEL_61;
  }

  v80 = v79;
  swift_getObjectType();
  if (swift_conformsToProtocol2())
  {
    v81 = sub_307518();
    goto LABEL_57;
  }

  type metadata accessor for ShelvesViewSwiftUIHelperCell();
  v82 = swift_dynamicCastClass();
  if (!v82)
  {

    goto LABEL_60;
  }

  v81 = *(v82 + OBJC_IVAR____TtC23ShelfKitCollectionViews28ShelvesViewSwiftUIHelperCell_objectGraph);

LABEL_57:

  sub_A0044(&v115);
  if (!v81)
  {
    goto LABEL_61;
  }

LABEL_62:
  if (v78)
  {
    swift_getObjectType();
    if (swift_conformsToProtocol2())
    {
      v83 = v78;
      sub_307568();
    }
  }

  __swift_project_boxed_opaque_existential_1Tm((v40 + OBJC_IVAR____TtC23ShelfKitCollectionViews15ShelvesDelegate_episodeController), *(v40 + OBJC_IVAR____TtC23ShelfKitCollectionViews15ShelvesDelegate_episodeController + 24));
  v85 = v106;
  v84 = v107;
  v86 = sub_30A8D8();

  (*(v46 + 8))(v84, v97);
  (*(v103 + 8))(v85, v104);
  __swift_destroy_boxed_opaque_existential_1(v125);
  return v86;
}

double sub_17C2FC@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_400600);
  __chkstk_darwin(v5 - 8);
  v7 = &v16 - v6;
  v8 = sub_301F38();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC23ShelfKitCollectionViews15ShelvesDelegate_currentContextMenuIndexPath;
  swift_beginAccess();
  sub_EB00(v2 + v12, v7, &qword_400600);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_EB68(v7, &qword_400600);
  }

  else
  {
    (*(v9 + 32))(v11, v7, v8);
    isa = sub_301EA8().super.isa;
    v14 = [a1 cellForItemAtIndexPath:isa];

    (*(v9 + 8))(v11, v8);
    if (v14)
    {
      v18 = v14;
      sub_124C4(0, &qword_406520);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_406660);
      if (swift_dynamicCast())
      {
        sub_12658(&v17, a2);
        return result;
      }
    }
  }

  *(a2 + 32) = 0;
  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  return result;
}

UITargetedPreview_optional __swiftcall ShelvesDelegate.collectionView(_:previewForHighlightingContextMenuWithConfiguration:)(UICollectionView _, UIContextMenuConfiguration previewForHighlightingContextMenuWithConfiguration)
{
  v2 = sub_17C578(_.super.super.super.super.isa);
  result.value.super.isa = v2;
  result.is_nil = v3;
  return result;
}

UITargetedPreview_optional __swiftcall ShelvesDelegate.collectionView(_:previewForDismissingContextMenuWithConfiguration:)(UICollectionView _, UIContextMenuConfiguration previewForDismissingContextMenuWithConfiguration)
{
  v2 = sub_17C578(_.super.super.super.super.isa);
  result.value.super.isa = v2;
  result.is_nil = v3;
  return result;
}

id sub_17C578(void *a1)
{
  sub_17C2FC(a1, v2);
  if (v3)
  {
    __swift_project_boxed_opaque_existential_1Tm(v2, v3);
    sub_302578();
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    sub_EB68(v2, &qword_406590);
  }

  return sub_182378();
}

id sub_17C61C(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_17C2FC(v4, v8);
  if (v9)
  {
    __swift_project_boxed_opaque_existential_1Tm(v8, v9);
    sub_302578();
    __swift_destroy_boxed_opaque_existential_1(v8);
  }

  else
  {
    sub_EB68(v8, &qword_406590);
  }

  v6 = sub_182378();

  return v6;
}

uint64_t ShelvesDelegate.collectionView(_:targetIndexPathForMoveFromItemAt:toProposedIndexPath:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = sub_301F08();
  v7 = sub_301F08();
  v8 = sub_301F38();
  v9 = *(*(v8 - 8) + 16);
  if (v6 == v7)
  {
    v10 = a2;
  }

  else
  {
    v10 = a1;
  }

  return v9(a3, v10, v8);
}

Swift::Void __swiftcall ShelvesDelegate.scrollViewDidScroll(_:)(UIScrollView a1)
{
  v3 = OBJC_IVAR____TtC23ShelfKitCollectionViews15ShelvesDelegate_scrollCoordinators;
  swift_beginAccess();
  v4 = *(v1 + v3);
  v5 = *(v4 + 16);

  if (v5)
  {
    v6 = 0;
    v7 = (v4 + 40);
    while (v6 < *(v4 + 16))
    {
      ++v6;
      v8 = *v7;
      ObjectType = swift_getObjectType();
      v10 = *(v8 + 24);
      swift_unknownObjectRetain();
      v10(a1.super.super.super.isa, ObjectType, v8);
      swift_unknownObjectRelease();
      v7 += 2;
      if (v5 == v6)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_5:
  }
}

Swift::Void __swiftcall ShelvesDelegate.scrollViewWillBeginDecelerating(_:)(UIScrollView a1)
{
  v3 = OBJC_IVAR____TtC23ShelfKitCollectionViews15ShelvesDelegate_scrollCoordinators;
  swift_beginAccess();
  v4 = *(v1 + v3);
  v5 = *(v4 + 16);

  if (v5)
  {
    v6 = 0;
    v7 = (v4 + 40);
    while (v6 < *(v4 + 16))
    {
      ++v6;
      v8 = *v7;
      ObjectType = swift_getObjectType();
      v10 = *(v8 + 8);
      swift_unknownObjectRetain();
      v10(a1.super.super.super.isa, ObjectType, v8);
      swift_unknownObjectRelease();
      v7 += 2;
      if (v5 == v6)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_5:
  }
}

Swift::Void __swiftcall ShelvesDelegate.scrollViewDidEndDecelerating(_:)(UIScrollView a1)
{
  v3 = OBJC_IVAR____TtC23ShelfKitCollectionViews15ShelvesDelegate_scrollCoordinators;
  swift_beginAccess();
  v4 = *(v1 + v3);
  v5 = *(v4 + 16);

  if (v5)
  {
    v6 = 0;
    v7 = (v4 + 40);
    while (v6 < *(v4 + 16))
    {
      ++v6;
      v8 = *v7;
      ObjectType = swift_getObjectType();
      v10 = *(v8 + 16);
      swift_unknownObjectRetain();
      v10(a1.super.super.super.isa, ObjectType, v8);
      swift_unknownObjectRelease();
      v7 += 2;
      if (v5 == v6)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_5:
  }
}

Swift::Void __swiftcall ShelvesDelegate.scrollViewDidEndDragging(_:willDecelerate:)(UIScrollView _, Swift::Bool willDecelerate)
{
  v4 = OBJC_IVAR____TtC23ShelfKitCollectionViews15ShelvesDelegate_scrollCoordinators;
  swift_beginAccess();
  v5 = *(v2 + v4);
  v6 = *(v5 + 16);

  if (v6)
  {
    v7 = 0;
    v8 = (v5 + 40);
    while (v7 < *(v5 + 16))
    {
      ++v7;
      v9 = *v8;
      ObjectType = swift_getObjectType();
      v11 = *(v9 + 32);
      swift_unknownObjectRetain();
      v11(_.super.super.super.isa, willDecelerate, ObjectType, v9);
      swift_unknownObjectRelease();
      v8 += 2;
      if (v6 == v7)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_5:
  }
}

uint64_t ShelvesDelegate.scrollViewWillEndDragging(_:withVelocity:targetContentOffset:)(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v8 = OBJC_IVAR____TtC23ShelfKitCollectionViews15ShelvesDelegate_scrollCoordinators;
  swift_beginAccess();
  v9 = *(v4 + v8);
  v10 = *(v9 + 16);

  if (!v10)
  {
  }

  v12 = 0;
  v13 = (v9 + 40);
  while (v12 < *(v9 + 16))
  {
    ++v12;
    v14 = *v13;
    ObjectType = swift_getObjectType();
    v16 = *(v14 + 48);
    swift_unknownObjectRetain();
    v16(a1, a2, ObjectType, v14, a3, a4);
    result = swift_unknownObjectRelease();
    v13 += 2;
    if (v10 == v12)
    {
    }
  }

  __break(1u);
  return result;
}

uint64_t ShelvesDelegate.remove(scrollCoordinator:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC23ShelfKitCollectionViews15ShelvesDelegate_scrollCoordinators;
  result = swift_beginAccess();
  v5 = *(v1 + v3);
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = 0;
    for (i = (v5 + 32); *i != a1; i += 2)
    {
      if (v6 == ++v7)
      {
        return result;
      }
    }

    swift_beginAccess();
    sub_1777DC(v7);
    swift_endAccess();
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_17D200()
{
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_406670);
  result = swift_dynamicCast();
  if (result)
  {
    v1 = result;
    swift_unknownObjectRelease();
    return v1;
  }

  return result;
}

uint64_t sub_17D284()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_400440);
  __chkstk_darwin(v2 - 8);
  v4 = &v21 - v3;
  v5 = sub_30BA88();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v21 - v10;
  __chkstk_darwin(v12);
  v14 = &v21 - v13;
  CollectionConverter.Shelf.impressionMetrics.getter(v4);
  v15 = sub_30BAA8();
  if ((*(*(v15 - 8) + 48))(v4, 1, v15))
  {
    sub_EB68(v4, &unk_400440);
    return 0;
  }

  else
  {
    sub_30BA98();
    sub_EB68(v4, &unk_400440);
    v17 = *(v6 + 32);
    v17(v14, v11, v5);
    type metadata accessor for CompoundScrollCoordinator();
    v18 = swift_allocObject();
    *(v18 + 16) = _swiftEmptyArrayStorage;
    v19 = *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews15ShelvesDelegate_impressionsCalculator);
    (*(v6 + 16))(v8, v14, v5);
    type metadata accessor for ImpressionIdScrollCoordinator();
    v20 = swift_allocObject();
    *(v20 + 16) = v19;
    v17((v20 + OBJC_IVAR____TtC23ShelfKitCollectionViews29ImpressionIdScrollCoordinator_impressionID), v8, v5);

    sub_17F588(v20, v18);

    (*(v6 + 8))(v14, v5);
    return v18;
  }
}

void sub_17D550(uint64_t a1, char *a2)
{
  v75 = a2;
  v3 = sub_30BA88();
  v68 = *(v3 - 8);
  v69 = v3;
  __chkstk_darwin(v3);
  v67 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_301E98();
  v74 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v73 = &v60 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_400440);
  __chkstk_darwin(v10 - 8);
  v71 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v60 - v13;
  v15 = sub_30BAA8();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v70 = &v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v60 - v19;
  v72 = a1;
  v21 = *(a1 + 16);
  CollectionConverter.Shelf.impressionMetrics.getter(v14);
  v22 = *(v16 + 48);
  if (v22(v14, 1, v15) == 1)
  {
    v23 = v14;
LABEL_3:
    sub_EB68(v23, &unk_400440);
    return;
  }

  v66 = v5;
  v65 = *(v16 + 32);
  v65(v20, v14, v15);
  v24 = [v75 collectionViewLayout];
  objc_opt_self();
  v25 = swift_dynamicCastObjCClass();
  if (v25)
  {
    v26 = v25;
    v27 = [v25 _orthogonalScrollingSections];
    if (v27)
    {
      v63 = v26;
      v64 = v24;
      v75 = v20;
      v28 = v27;
      sub_301E78();

      v29 = v73;
      v30 = v74;
      v31 = v7;
      v32 = v66;
      (*(v74 + 32))(v73, v31, v66);
      v33 = OBJC_IVAR____TtCV23ShelfKitCollectionViews19CollectionConverter5Shelf_index;
      if (sub_301E88(*(v21 + OBJC_IVAR____TtCV23ShelfKitCollectionViews19CollectionConverter5Shelf_index)))
      {
        [v63 _orthogonalScrollingLayoutRectForSection:*(v21 + v33)];
        v35 = v34;
        v37 = v36;
        v39 = v38;
        v41 = v40;
        v62 = OBJC_IVAR____TtC23ShelfKitCollectionViews15ShelvesDelegate_impressionsCalculator;
        v61 = v33;

        v42 = v75;
        sub_3027B8();

        v43 = v71;
        CollectionConverter.ShelfItem.impressionMetrics.getter(v71);
        if (v22(v43, 1, v15) == 1)
        {

          (*(v74 + 8))(v73, v66);
          (*(v16 + 8))(v42, v15);
          v23 = v43;
          goto LABEL_3;
        }

        v44 = v70;
        v65(v70, v43, v15);

        v45 = v67;
        sub_30BA98();
        v46 = sub_3027A8();

        (*(v68 + 8))(v45, v69);
        v47 = v73;
        v48 = v74;
        if (v46)
        {
          [v63 _offsetForOrthogonalScrollingSection:*(v21 + v61)];
          sub_3027C8();
          v49 = v72;
          [*(v72 + 64) frame];
          v51 = v50;
          v53 = v52;
          v55 = v54;
          v57 = v56;
          v76.origin.x = v35;
          v76.origin.y = v37;
          v76.size.width = v39;
          v76.size.height = v41;
          v58 = -CGRectGetMinY(v76);
          v77.origin.x = v51;
          v77.origin.y = v53;
          v77.size.width = v55;
          v77.size.height = v57;
          CGRectOffset(v77, 0.0, v58);
          sub_3027B8();
          sub_180300(v49, v46);
        }

        else
        {
        }

        v59 = *(v16 + 8);
        v59(v44, v15);
        (*(v48 + 8))(v47, v66);
        v59(v42, v15);
      }

      else
      {

        (*(v30 + 8))(v29, v32);
        (*(v16 + 8))(v75, v15);
      }
    }

    else
    {
      (*(v16 + 8))(v20, v15);
    }
  }

  else
  {

    (*(v16 + 8))(v20, v15);
  }
}

uint64_t sub_17DBFC(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_400440);
  __chkstk_darwin(v3 - 8);
  v5 = &v21 - v4;
  v6 = sub_30BAA8();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v21 - v11;
  __chkstk_darwin(v13);
  v15 = &v21 - v14;
  CollectionConverter.ShelfItem.impressionMetrics.getter(v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    return sub_EB68(v5, &unk_400440);
  }

  (*(v7 + 32))(v15, v5, v6);
  sub_30BA38();
  v21 = v1;
  sub_30BA58();
  v22 = *(v7 + 8);
  v22(v9, v6);
  v17 = OBJC_IVAR____TtC23ShelfKitCollectionViews15ShelvesDelegate_impressionsCalculator;
  v18 = *(a1 + 64);

  [v18 frame];
  sub_3027B8();

  v19 = *(v21 + v17);

  sub_180300(a1, v19);

  v20 = v22;
  v22(v12, v6);
  return v20(v15, v6);
}

uint64_t sub_17DEA0(uint64_t a1)
{
  v2 = sub_30BAA8();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v32 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_400440);
  __chkstk_darwin(v5 - 8);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v29 - v9;
  v11 = sub_30BA88();
  v33 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v29 - v15;
  v17 = a1;
  CollectionConverter.Shelf.impressionMetrics.getter(v10);
  v18 = v3;
  v19 = *(v3 + 48);
  if (v19(v10, 1, v2))
  {
    return sub_EB68(v10, &unk_400440);
  }

  v29 = v18;
  v30 = v7;
  v31 = v17;
  sub_30BA98();
  sub_EB68(v10, &unk_400440);
  v21 = v33;
  (*(v33 + 32))(v16, v13, v11);

  v22 = sub_3027A8();

  v23 = v11;
  v24 = v21;
  if (v22)
  {
    v25 = v30;
    v26 = v31;
    CollectionConverter.ShelfItem.impressionMetrics.getter(v30);
    if (v19(v25, 1, v2) == 1)
    {
      sub_EB68(v25, &unk_400440);
    }

    else
    {
      v27 = v29;
      v28 = v32;
      (*(v29 + 32))(v32, v25, v2);
      sub_3027E8();
      (*(v27 + 8))(v28, v2);
    }

    sub_1809DC(v26, v22);
  }

  return (*(v24 + 8))(v16, v23);
}

uint64_t sub_17E210(uint64_t a1)
{
  v2 = sub_30BAA8();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_400440);
  __chkstk_darwin(v6 - 8);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v30 - v10;
  v12 = sub_30BA88();
  v13 = *(v12 - 8);
  v32 = v12;
  v33 = v13;
  __chkstk_darwin(v12);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v30 - v17;
  if (CollectionConverter.Shelf.isSingleItemShelf.getter())
  {

    return sub_17E5C0(a1);
  }

  else
  {
    v31 = v5;
    CollectionConverter.Shelf.impressionMetrics.getter(v11);
    v20 = v3;
    v21 = *(v3 + 48);
    if (v21(v11, 1, v2))
    {
      return sub_EB68(v11, &unk_400440);
    }

    else
    {
      v30 = v20;
      sub_30BA98();
      sub_EB68(v11, &unk_400440);
      v22 = v33;
      v23 = v15;
      v24 = v32;
      (*(v33 + 32))(v18, v23, v32);

      v25 = sub_3027A8();

      if (v25)
      {
        CollectionConverter.ShelfItem.impressionMetrics.getter(v8);
        if (v21(v8, 1, v2) == 1)
        {
          sub_EB68(v8, &unk_400440);
        }

        else
        {
          v26 = v30;
          v27 = v31;
          (*(v30 + 32))(v31, v8, v2);
          sub_3027E8();
          (*(v26 + 8))(v27, v2);
        }

        v29 = v32;
        v28 = v33;
        sub_1809DC(a1, v25);

        return (*(v28 + 8))(v18, v29);
      }

      else
      {
        return (*(v22 + 8))(v18, v24);
      }
    }
  }
}

uint64_t sub_17E5C0(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_400440);
  __chkstk_darwin(v3 - 8);
  v5 = &v20 - v4;
  v6 = sub_30BAA8();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v20 - v11;
  __chkstk_darwin(v13);
  v15 = &v20 - v14;
  CollectionConverter.ShelfItem.impressionMetrics.getter(v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    return sub_EB68(v5, &unk_400440);
  }

  (*(v7 + 32))(v15, v5, v6);
  sub_30BA38();
  sub_30BA58();
  v17 = *(v7 + 8);
  v17(v9, v6);
  v18 = OBJC_IVAR____TtC23ShelfKitCollectionViews15ShelvesDelegate_impressionsCalculator;

  sub_3027E8();

  v19 = *(v1 + v18);

  sub_1809DC(a1, v19);

  v17(v12, v6);
  return (v17)(v15, v6);
}

uint64_t sub_17E834()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_404150);
  __chkstk_darwin(v0 - 8);
  v2 = v14 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v5 = v14 - v4;
  v6 = sub_3023D8();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = CollectionConverter.Shelf.isSingleItemShelf.getter();
  if ((result & 1) == 0)
  {
    CollectionConverter.Shelf.clickLocationElement.getter(v5);
    v11 = *(v7 + 48);
    if (v11(v5, 1, v6) == 1)
    {
      return sub_EB68(v5, &unk_404150);
    }

    else
    {
      (*(v7 + 32))(v9, v5, v6);
      v14[1] = OBJC_IVAR____TtC23ShelfKitCollectionViews15ShelvesDelegate_clickLocationTracker;

      sub_3023C8();
      if (!v12)
      {
        sub_302398();
      }

      sub_302428();

      v13 = v11(v2, 1, v6);
      sub_EB68(v2, &unk_404150);
      if (v13 == 1)
      {

        sub_3023E8();
      }

      return (*(v7 + 8))(v9, v6);
    }
  }

  return result;
}

uint64_t sub_17EA9C()
{
  v0 = sub_302358();
  v2 = v1;
  v3 = sub_3023C8();
  if (!v4)
  {
    v3 = sub_302398();
  }

  if (v2)
  {
    if (v0 == v3 && v2 == v4)
    {
      v5 = 1;
    }

    else
    {
      v5 = sub_30D728();
    }
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

id DownloadsCVCLibraryActionControllerBridge.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_17ED58(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  ObjectType = swift_getObjectType();

  return sub_17F464(a1, v5, ObjectType, a2);
}

uint64_t sub_17EE80(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_30D668();
  }

  return sub_30D588();
}

uint64_t sub_17EF60(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      if (a1 <= *(&dword_18 + (v3 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_30D668();
LABEL_9:
  result = sub_30D588();
  *v1 = result;
  return result;
}

unint64_t sub_17F058(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t *a7)
{
  v13 = *v7;
  result = a5(0);
  v16 = *(*(result - 8) + 72);
  v17 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v29 = a7;
  v15 = *(*(result - 8) + 80);
  v18 = v13 + ((v15 + 32) & ~v15);
  v19 = v18 + v16 * a1;
  result = swift_arrayDestroy();
  v20 = a3 - v17;
  if (__OFSUB__(a3, v17))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v21 = v16 * a3;
  if (v20)
  {
    v22 = *(v13 + 16);
    if (!__OFSUB__(v22, a2))
    {
      result = v19 + v21;
      v23 = v18 + v16 * a2;
      if (v19 + v21 < v23 || result >= v23 + (v22 - a2) * v16)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v23)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v25 = *(v13 + 16);
      v26 = __OFADD__(v25, v20);
      v27 = v25 + v20;
      if (!v26)
      {
        *(v13 + 16) = v27;
        goto LABEL_15;
      }

LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

LABEL_15:
  if (a3 < 1)
  {
    return sub_EB68(a4, v29);
  }

  if (v21 < 1)
  {
    return sub_EB68(a4, v29);
  }

  result = sub_182D7C(a4, v19, a6);
  if (v16 >= v21)
  {
    return sub_EB68(a4, v29);
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_17F1E4(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC23ShelfKitCollectionViews15ShelvesDelegate_scrollCoordinators;
  result = swift_beginAccess();
  v6 = *(a2 + v4);
  v7 = v6[2];
  v8 = v7 + 1;
  v9 = 4;
  while (--v8)
  {
    v10 = v6[v9];
    v9 += 2;
    if (v10 == a1)
    {
      return result;
    }
  }

  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + v4) = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = sub_CA66C(0, v7 + 1, 1, v6);
    *(a2 + v4) = v6;
  }

  v13 = v6[2];
  v12 = v6[3];
  if (v13 >= v12 >> 1)
  {
    v6 = sub_CA66C((v12 > 1), v13 + 1, 1, v6);
  }

  v6[2] = v13 + 1;
  v14 = &v6[2 * v13];
  v14[4] = a1;
  v14[5] = &off_3B8148;
  *(a2 + v4) = v6;
  swift_endAccess();
}

id sub_17F31C(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = OBJC_IVAR____TtC23ShelfKitCollectionViews15ShelvesDelegate_scrollCoordinators;
  swift_beginAccess();
  result = a1;
  v7 = *(a2 + v5);
  v8 = v7[2];
  v9 = v8 + 1;
  v10 = 4;
  while (--v9)
  {
    v11 = v7[v10];
    v10 += 2;
    if (v11 == a1)
    {
      return result;
    }
  }

  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + v5) = v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = sub_CA66C(0, v8 + 1, 1, v7);
    *(a2 + v5) = v7;
  }

  v14 = v7[2];
  v13 = v7[3];
  v15 = a1;
  if (v14 >= v13 >> 1)
  {
    v7 = sub_CA66C((v13 > 1), v14 + 1, 1, v7);
    v15 = a1;
  }

  v7[2] = v14 + 1;
  v16 = &v7[2 * v14];
  v16[4] = v15;
  v16[5] = a3;
  *(a2 + v5) = v7;
  swift_endAccess();

  return a1;
}

uint64_t sub_17F464(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = OBJC_IVAR____TtC23ShelfKitCollectionViews15ShelvesDelegate_scrollCoordinators;
  result = swift_beginAccess();
  v9 = *(a2 + v7);
  v10 = v9[2];
  v11 = v10 + 1;
  v12 = 4;
  while (--v11)
  {
    v13 = v9[v12];
    v12 += 2;
    if (v13 == a1)
    {
      return result;
    }
  }

  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + v7) = v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = sub_CA66C(0, v10 + 1, 1, v9);
    *(a2 + v7) = v9;
  }

  v16 = v9[2];
  v15 = v9[3];
  if (v16 >= v15 >> 1)
  {
    v9 = sub_CA66C((v15 > 1), v16 + 1, 1, v9);
  }

  v9[2] = v16 + 1;
  v17 = &v9[2 * v16];
  v17[4] = a1;
  v17[5] = a4;
  *(a2 + v7) = v9;
  swift_endAccess();
  return swift_unknownObjectRetain();
}

uint64_t sub_17F588(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a2 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 16) = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = sub_CA66C(0, v4[2] + 1, 1, v4);
    *(a2 + 16) = v4;
  }

  v7 = v4[2];
  v6 = v4[3];
  if (v7 >= v6 >> 1)
  {
    v4 = sub_CA66C((v6 > 1), v7 + 1, 1, v4);
  }

  v4[2] = v7 + 1;
  v8 = &v4[2 * v7];
  v8[4] = a1;
  v8[5] = &off_3B8108;
  *(a2 + 16) = v4;
  swift_endAccess();
}

id sub_17F668(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR____TtC23ShelfKitCollectionViews15ShelvesDelegate_scrollCoordinators] = _swiftEmptyArrayStorage;
  v9 = OBJC_IVAR____TtC23ShelfKitCollectionViews15ShelvesDelegate_uberCellPublisher;
  v19[0] = 0uLL;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_408FB0);
  swift_allocObject();
  *&v3[v9] = sub_304D88();
  v10 = OBJC_IVAR____TtC23ShelfKitCollectionViews15ShelvesDelegate_overflowTransitioningDelegate;
  *&v4[v10] = [objc_allocWithZone(type metadata accessor for ModelViewOverflowTransitioning()) init];
  v11 = OBJC_IVAR____TtC23ShelfKitCollectionViews15ShelvesDelegate_multiSelectableExtension;
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews15ShelvesDelegate_multiSelectableExtension] = 0;
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews15ShelvesDelegate_modernImpressionsScrollCoordinator] = 0;
  v12 = &v4[OBJC_IVAR____TtC23ShelfKitCollectionViews15ShelvesDelegate_converter];
  *v12 = 0u;
  *(v12 + 1) = 0u;
  *(v12 + 2) = 0u;
  *(v12 + 3) = 0u;
  *(v12 + 4) = 0u;
  v13 = OBJC_IVAR____TtC23ShelfKitCollectionViews15ShelvesDelegate_currentContextMenuIndexPath;
  v14 = sub_301F38();
  (*(*(v14 - 8) + 56))(&v4[v13], 1, 1, v14);
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews15ShelvesDelegate_objectGraph] = a1;
  sub_EB00(a2, &v4[OBJC_IVAR____TtC23ShelfKitCollectionViews15ShelvesDelegate_presenter], &qword_406480);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_406640);

  sub_30B8E8();
  sub_12658(v19, &v4[OBJC_IVAR____TtC23ShelfKitCollectionViews15ShelvesDelegate_episodeController]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401108);
  sub_30B8E8();
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews15ShelvesDelegate_highlightsProvider] = v19[0];
  sub_302448();
  sub_30B8E8();
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews15ShelvesDelegate_clickLocationTracker] = *&v19[0];
  sub_302818();
  sub_30B8E8();
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews15ShelvesDelegate_impressionsCalculator] = *&v19[0];
  swift_beginAccess();
  *&v4[v11] = a3;

  sub_30A5A8();
  sub_30B8E8();
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews15ShelvesDelegate_recentlySearchedStore] = v18;
  v17.receiver = v4;
  v17.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v17, "init");
  sub_EB68(a2, &qword_406480);
  return v15;
}

unint64_t sub_17F92C(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_17;
  }

  v11 = *v5;
  v12 = (v11 + 32 + 16 * result);
  result = swift_arrayDestroy();
  v13 = __OFSUB__(a3, v6);
  v14 = a3 - v6;
  if (v13)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v14)
  {
    v15 = *(v11 + 16);
    v13 = __OFSUB__(v15, a2);
    v16 = v15 - a2;
    if (!v13)
    {
      result = &v12[2 * a3];
      v17 = (v11 + 32 + 16 * a2);
      if (result != v17 || result >= v17 + 16 * v16)
      {
        result = memmove(result, v17, 16 * v16);
      }

      v19 = *(v11 + 16);
      v13 = __OFADD__(v19, v14);
      v20 = v19 + v14;
      if (!v13)
      {
        *(v11 + 16) = v20;
        goto LABEL_13;
      }

LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      return result;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_13:
  if (a3 > 0)
  {
    *v12 = a4;
    v12[1] = a5;

    if (a3 != 1)
    {
      goto LABEL_20;
    }
  }

  return result;
}

unint64_t sub_17FA10(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 16 * result;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_406670);
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 16 * a3;
  v13 = (v7 + 32 + 16 * a2);
  if (result != v13 || result >= v13 + 16 * v12)
  {
    result = memmove(result, v13, 16 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t sub_17FB0C(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = a3 - v4;
  if (__OFSUB__(a3, v4))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = *v3;
  v7 = *(v6 + 16);
  v8 = __OFSUB__(v7, a2);
  v9 = v7 - a2;
  if (v8)
  {
    goto LABEL_17;
  }

  result = v6 + 32 + 8 * result + 8 * a3;
  v10 = (v6 + 32 + 8 * a2);
  if (result != v10 || result >= v10 + 8 * v9)
  {
    v12 = a3;
    result = memmove(result, v10, 8 * v9);
    a3 = v12;
  }

  v13 = *(v6 + 16);
  v8 = __OFADD__(v13, v5);
  v14 = v13 + v5;
  if (v8)
  {
    goto LABEL_18;
  }

  *(v6 + 16) = v14;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_17FBE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  sub_124C4(0, &qword_3FBD90);
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_30D668();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = sub_30D668();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_17FCF0(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = a2;
    v4 = a1;
    v5 = *v3;
    v6 = *v3 >> 62;
    if (!v6)
    {
      result = *(&dword_10 + (*v3 & 0xFFFFFFFFFFFFFF8));
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_30D668();
  if (result < v2)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v2, v4))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v4 - v2;
  if (__OFSUB__(0, v2 - v4))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v6)
  {
    v9 = sub_30D668();
  }

  else
  {
    v9 = *(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8));
  }

  v10 = __OFADD__(v9, v8);
  result = v9 + v8;
  if (v10)
  {
    goto LABEL_18;
  }

  sub_17EF60(result);

  return sub_17FBE0(v4, v2, 0);
}

void sub_17FDC8(void *a1, uint64_t a2)
{
  v52 = a2;
  v4 = sub_307048();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4004A0);
  __chkstk_darwin(v8 - 8);
  v10 = &v44 - v9;
  v11 = sub_307108();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = (v2 + OBJC_IVAR____TtC23ShelfKitCollectionViews15ShelvesDelegate_converter);
  swift_beginAccess();
  v16 = v15[2];
  if (v16)
  {
    v44 = v7;
    v45 = v5;
    v46 = v4;
    v47 = a1;
    v48 = v14;
    v17 = v15[8];
    v53 = v10;
    v18 = v15[6];
    v50 = v12;
    v51 = v11;
    v19 = v15[4];
    v20 = *v15;
    v49 = v15[1];
    sub_9FF04(v20);
    sub_9FF04(v16);
    sub_9FF04(v19);
    sub_9FF04(v18);
    sub_9FF04(v17);
    v16(v52);
    sub_1EBD0(v20);
    v21 = v51;
    sub_1EBD0(v16);
    v22 = v19;
    v23 = v50;
    sub_1EBD0(v22);
    v24 = v18;
    v10 = v53;
    sub_1EBD0(v24);
    sub_1EBD0(v17);
    if ((*(v23 + 48))(v10, 1, v21) != 1)
    {
      v25 = v48;
      (*(v23 + 32))(v48, v10, v21);
      type metadata accessor for ShelfBackgroundView();
      v26 = v47;
      v27 = swift_dynamicCastClass();
      if (!v27)
      {
LABEL_16:
        (*(v23 + 8))(v25, v21);
        return;
      }

      v28 = v27;
      v29 = v26;
      v30 = v44;
      sub_307058();
      v31 = sub_306FC8();
      (*(v45 + 8))(v30, v46);
      if ((v31 & 0x10000000000) != 0 || (sub_306F68() & 1) == 0)
      {
        (*(v23 + 8))(v25, v21);

        return;
      }

      v32 = BYTE4(v31) & 1;
      v33 = v31 & 0x1FFFFFFFFLL;
      v34 = &v28[OBJC_IVAR____TtC23ShelfKitCollectionViews19ShelfBackgroundView_background];
      swift_beginAccess();
      v34[4] = v32;
      *v34 = v33;
      v34[5] = 0;
      v35 = OBJC_IVAR____TtC23ShelfKitCollectionViews19ShelfBackgroundView_backgroundFill;
      v36 = *&v28[OBJC_IVAR____TtC23ShelfKitCollectionViews19ShelfBackgroundView_backgroundFill];
      if (v36)
      {
        v37 = 0;
      }

      else
      {
        type metadata accessor for ShelfBackgroundFillView();
        v38 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
        [v28 bounds];
        [v38 setFrame:?];
        [v38 setAutoresizingMask:18];

        [v28 addSubview:v38];
        v39 = *&v28[v35];
        *&v28[v35] = v38;

        v36 = *&v28[v35];
        if (!v36)
        {
LABEL_15:

          goto LABEL_16;
        }

        v33 = *v34 | (v34[4] << 32);
        v37 = v34[5];
      }

      v40 = &v36[OBJC_IVAR____TtC23ShelfKitCollectionViews23ShelfBackgroundFillView_background];
      v41 = *&v36[OBJC_IVAR____TtC23ShelfKitCollectionViews23ShelfBackgroundFillView_background] | (v36[OBJC_IVAR____TtC23ShelfKitCollectionViews23ShelfBackgroundFillView_background + 4] << 32);
      v42 = v36[OBJC_IVAR____TtC23ShelfKitCollectionViews23ShelfBackgroundFillView_background + 5];
      *v40 = v33;
      v40[4] = BYTE4(v33);
      v40[5] = v37;
      v43 = v36;
      v54 = v42;
      sub_17296C(v41 | (v42 << 40));

      v29 = v43;
      goto LABEL_15;
    }
  }

  else
  {
    (*(v12 + 56))(v10, 1, 1, v11);
  }

  sub_EB68(v10, &unk_4004A0);
}

unint64_t sub_1802AC()
{
  result = qword_406558;
  if (!qword_406558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_406558);
  }

  return result;
}

uint64_t sub_180300(uint64_t a1, uint64_t a2)
{
  v19 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_400440);
  __chkstk_darwin(v3 - 8);
  v5 = &v19 - v4;
  v6 = sub_30BAA8();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a1;
  v10 = sub_A3768();
  if (v10 >> 62)
  {
    v18 = sub_30D668();

    if (!v18)
    {
      return result;
    }
  }

  else
  {
    v11 = *(&dword_10 + (v10 & 0xFFFFFFFFFFFFFF8));

    if (!v11)
    {
      return result;
    }
  }

  v22 = *(v20 + 80);
  if (v22 >> 62)
  {
    result = sub_30D668();
    v13 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v13 = *(&dword_10 + (v22 & 0xFFFFFFFFFFFFFF8));
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
    v21 = v22 & 0xC000000000000001;
    v14 = (v7 + 48);
    v15 = (v7 + 32);
    v16 = (v7 + 8);

    for (i = 0; i != v13; ++i)
    {
      if (v21)
      {
        sub_30D578();
      }

      else
      {
      }

      CollectionConverter.ShelfItem.Button.impressionMetrics.getter(v5);
      if ((*v14)(v5, 1, v6) == 1)
      {

        sub_EB68(v5, &unk_400440);
      }

      else
      {
        (*v15)(v9, v5, v6);
        [*(v20 + 64) frame];
        sub_3027B8();

        (*v16)(v9, v6);
      }
    }
  }

  return result;
}

uint64_t sub_1805C0(uint64_t a1)
{
  v2 = sub_30BA88();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v39 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_400440);
  __chkstk_darwin(v5 - 8);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v30 - v9;
  v11 = sub_30BAA8();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v38 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v30 - v15;
  if (CollectionConverter.Shelf.isSingleItemShelf.getter())
  {

    return sub_17DBFC(a1);
  }

  v36 = v3;
  v37 = v2;
  CollectionConverter.Shelf.impressionMetrics.getter(v10);
  v18 = *(v12 + 48);
  if (v18(v10, 1, v11) == 1)
  {
    v19 = v10;
    return sub_EB68(v19, &unk_400440);
  }

  v20 = *(v12 + 32);
  v34 = v12 + 32;
  v35 = v12;
  v33 = v20;
  v20(v16, v10, v11);
  v32 = OBJC_IVAR____TtC23ShelfKitCollectionViews15ShelvesDelegate_impressionsCalculator;
  v21 = a1;
  v22 = *(a1 + 64);

  v31 = v22;
  v23 = v22;
  v24 = v21;
  [v23 frame];
  sub_302808();

  CollectionConverter.ShelfItem.impressionMetrics.getter(v7);
  if (v18(v7, 1, v11) == 1)
  {
    (*(v35 + 8))(v16, v11);
    v19 = v7;
    return sub_EB68(v19, &unk_400440);
  }

  v25 = v35;
  v26 = v38;
  v33(v38, v7, v11);

  v27 = v39;
  sub_30BA98();
  v28 = sub_3027A8();

  (*(v36 + 8))(v27, v37);
  if (v28)
  {
    [v31 frame];
    sub_3027B8();
    sub_180300(v24, v28);
  }

  v29 = *(v25 + 8);
  v29(v26, v11);
  return (v29)(v16, v11);
}

uint64_t sub_1809DC(uint64_t a1, uint64_t a2)
{
  v19[1] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_400440);
  __chkstk_darwin(v3 - 8);
  v5 = v19 - v4;
  v6 = sub_30BAA8();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_A3768();
  if (v10 >> 62)
  {
    v18 = sub_30D668();

    if (!v18)
    {
      return result;
    }
  }

  else
  {
    v11 = *(&dword_10 + (v10 & 0xFFFFFFFFFFFFFF8));

    if (!v11)
    {
      return result;
    }
  }

  v21 = *(a1 + 80);
  if (v21 >> 62)
  {
    result = sub_30D668();
    v13 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v13 = *(&dword_10 + (v21 & 0xFFFFFFFFFFFFFF8));
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
    v20 = v21 & 0xC000000000000001;
    v14 = (v7 + 48);
    v15 = (v7 + 32);
    v16 = (v7 + 8);

    for (i = 0; i != v13; ++i)
    {
      if (v20)
      {
        sub_30D578();
      }

      else
      {
      }

      CollectionConverter.ShelfItem.Button.impressionMetrics.getter(v5);
      if ((*v14)(v5, 1, v6) == 1)
      {

        sub_EB68(v5, &unk_400440);
      }

      else
      {
        (*v15)(v9, v5, v6);
        sub_3027E8();

        (*v16)(v9, v6);
      }
    }
  }

  return result;
}

unint64_t sub_180C7C(void *a1, uint64_t a2)
{
  v74 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_404150);
  __chkstk_darwin(v3 - 8);
  v5 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v70 = &v59 - v7;
  __chkstk_darwin(v8);
  v73 = (&v59 - v9);
  v72 = sub_3023D8();
  v68 = *(v72 - 8);
  v10 = v68[8];
  __chkstk_darwin(v72);
  v69 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v64 = &v59 - v12;
  __chkstk_darwin(v13);
  v65 = &v59 - v14;
  v15 = sub_307048();
  v67 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_307108();
  v66 = *(v18 - 8);
  __chkstk_darwin(v18);
  v20 = &v59 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_304578();
  __chkstk_darwin(v21);
  type metadata accessor for LoadingCell();
  result = swift_dynamicCastClass();
  if (!result)
  {
    v60 = v20;
    v61 = v17;
    v62 = v15;
    v63 = v10;
    sub_30CF68();
    sub_1802AC();
    sub_304558();
    sub_30CF78();
    *(&v77 + 1) = sub_124C4(0, &qword_406520);
    *&v76 = a1;
    v23 = a1;
    sub_220FA8(&v76);
    __swift_destroy_boxed_opaque_existential_1(&v76);
    v24 = (v71 + OBJC_IVAR____TtC23ShelfKitCollectionViews15ShelvesDelegate_converter);
    swift_beginAccess();
    v25 = v24[1];
    v26 = v24[3];
    v82 = v24[2];
    v83 = v26;
    v27 = v24[3];
    v84 = v24[4];
    v28 = v24[1];
    v81[0] = *v24;
    v81[1] = v28;
    v78 = v82;
    v79 = v27;
    v80 = v24[4];
    v76 = v81[0];
    v77 = v25;
    sub_A0660(v81, &v75);
    v29 = CollectionConverter.shelfItem(for:with:in:)(v74, v23, 0);
    v85[2] = v78;
    v85[3] = v79;
    v85[4] = v80;
    v85[0] = v76;
    v85[1] = v77;
    result = sub_A0044(v85);
    if (v29)
    {
      v30 = v66;
      v31 = v60;
      v32 = v18;
      (v66[2])(v60, *(v29 + 2) + OBJC_IVAR____TtCV23ShelfKitCollectionViews19CollectionConverter5Shelf_model, v18);
      v33 = v61;
      sub_307058();
      (v30[1])(v31, v32);
      LOBYTE(v31) = sub_306FE8();
      (v67[1])(v33, v62);
      if (v31)
      {
        sub_17DEA0(v29);
      }

      else
      {
        sub_17E210(v29);
      }

      v34 = v70;
      v35 = v72;
      v36 = v73;
      v37 = v68;
      CollectionConverter.ShelfItem.clickLocationElement.getter(v73);
      v73 = v37[6];
      v74 = v37 + 6;
      v38 = (v73)(v36, 1, v35);
      v59 = v29;
      if (v38 == 1)
      {
        sub_EB68(v36, &unk_404150);
      }

      else
      {
        v39 = v36;
        v40 = v68[4];
        v41 = v65;
        v40(v65, v39, v35);

        sub_302408();

        sub_EB68(v34, &unk_404150);
        v42 = v64;
        (v68[2])(v64, v41, v72);
        v43 = (*(v68 + 80) + 16) & ~*(v68 + 80);
        v44 = swift_allocObject();
        v40((v44 + v43), v42, v72);
        v37 = v68;

        sub_302418();

        v35 = v72;

        (v37[1])(v41, v35);
      }

      result = sub_A3768();
      v45 = result;
      if (result >> 62)
      {
        result = sub_30D668();
        v46 = result;
        p_cache = (&OBJC_METACLASS____TtC23ShelfKitCollectionViews31HorizontalPaidChannelHeaderView + 16);
        if (result)
        {
          goto LABEL_11;
        }
      }

      else
      {
        v46 = *(&dword_10 + (result & 0xFFFFFFFFFFFFFF8));
        p_cache = &OBJC_METACLASS____TtC23ShelfKitCollectionViews31HorizontalPaidChannelHeaderView.cache;
        if (v46)
        {
LABEL_11:
          if (v46 < 1)
          {
            __break(1u);
            return result;
          }

          v48 = 0;
          v49 = p_cache[151];
          v50 = v45 & 0xC000000000000001;
          v67 = (v37 + 4);
          v68 = v49;
          v66 = v37 + 1;
          do
          {
            if (v50)
            {
              sub_30D578();
            }

            else
            {
            }

            CollectionConverter.ShelfItem.Button.clickLocationElement.getter(v5);
            if ((v73)(v5, 1, v35) == 1)
            {

              sub_EB68(v5, &unk_404150);
            }

            else
            {
              v51 = v50;
              v52 = v46;
              v53 = v45;
              v54 = v69;
              (*v67)(v69, v5, v35);

              v55 = v5;
              v56 = v70;
              sub_302408();

              v57 = v56;
              v5 = v55;
              v35 = v72;
              sub_EB68(v57, &unk_404150);
              v58 = v54;
              v45 = v53;
              v46 = v52;
              v50 = v51;
              (*v66)(v58, v35);
            }

            ++v48;
          }

          while (v46 != v48);
        }
      }
    }
  }

  return result;
}

uint64_t sub_181494(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4004A0);
  __chkstk_darwin(v3 - 8);
  v5 = &v33 - v4;
  v6 = sub_307108();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = (v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews15ShelvesDelegate_converter);
  swift_beginAccess();
  v11 = v10[6];
  if (!v11)
  {
    v44 = 0;
    v42 = 0u;
    v43 = 0u;
    goto LABEL_8;
  }

  v36 = v5;
  v33 = v9;
  v37 = v7;
  v38 = v6;
  v34 = v1;
  v12 = v10[8];
  v13 = v10[7];
  v14 = v10[4];
  v41 = v10[2];
  v15 = v41;
  v17 = *v10;
  v16 = v10[1];
  v39 = v13;
  v40 = v16;
  sub_9FF04(v17);
  sub_9FF04(v15);
  sub_9FF04(v14);
  sub_9FF04(v11);
  sub_9FF04(v12);
  v35 = a1;
  v11(&v42, a1);
  sub_1EBD0(v17);
  sub_1EBD0(v41);
  sub_1EBD0(v14);
  sub_1EBD0(v11);
  sub_1EBD0(v12);
  if (!*(&v43 + 1))
  {
LABEL_8:
    v31 = &qword_4064D0;
    v32 = &v42;
    return sub_EB68(v32, v31);
  }

  sub_12658(&v42, v45);
  v18 = v10[2];
  if (!v18)
  {
    v23 = v36;
    (*(v37 + 56))(v36, 1, 1, v38);
    goto LABEL_10;
  }

  v41 = v10[8];
  v19 = v41;
  v20 = v10[6];
  v21 = v10[4];
  v22 = *v10;
  sub_9FF04(v22);
  sub_9FF04(v18);
  sub_9FF04(v21);
  sub_9FF04(v20);
  sub_9FF04(v19);
  v23 = v36;
  v18(v35);
  sub_1EBD0(v22);
  sub_1EBD0(v18);
  sub_1EBD0(v21);
  sub_1EBD0(v20);
  sub_1EBD0(v41);
  v25 = v37;
  v24 = v38;
  if ((*(v37 + 48))(v23, 1, v38) == 1)
  {
LABEL_10:
    __swift_destroy_boxed_opaque_existential_1(v45);
    v31 = &unk_4004A0;
    v32 = v23;
    return sub_EB68(v32, v31);
  }

  v26 = v33;
  (*(v25 + 32))(v33, v23, v24);
  v27 = OBJC_IVAR____TtC23ShelfKitCollectionViews15ShelvesDelegate_multiSelectableExtension;
  v28 = v34;
  swift_beginAccess();
  if (*(v28 + v27))
  {
    swift_endAccess();

    v29 = sub_30A768();

    v29(v45, v26);

    (*(v25 + 8))(v26, v24);
    return __swift_destroy_boxed_opaque_existential_1(v45);
  }

  else
  {
    (*(v25 + 8))(v26, v24);
    __swift_destroy_boxed_opaque_existential_1(v45);
    return swift_endAccess();
  }
}

uint64_t sub_1818C0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_400600);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

id sub_181930(uint64_t a1)
{
  v19 = a1;
  v21 = sub_307048();
  v2 = *(v21 - 8);
  __chkstk_darwin(v21);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_307108();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 16);
  v11 = OBJC_IVAR____TtCV23ShelfKitCollectionViews19CollectionConverter5Shelf_model;
  v12 = *(v6 + 16);
  v12(v9, v10 + OBJC_IVAR____TtCV23ShelfKitCollectionViews19CollectionConverter5Shelf_model, v5, v7);
  sub_307058();
  v20 = *(v6 + 8);
  v20(v9, v5);
  sub_182DF8();
  v18 = v13;
  (*(v2 + 8))(v4, v21);
  (v12)(v9, v10 + v11, v5);
  v14 = *(v19 + 64);
  [v14 bounds];
  v15 = sub_307448();
  v20(v9, v5);
  if (!v15)
  {
    return 0;
  }

  v16 = [objc_allocWithZone(UITargetedPreview) initWithView:v14 parameters:v15];

  return v16;
}

id sub_181B88(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_406650);
  __chkstk_darwin(v2 - 8);
  v46 = &v46 - v3;
  v4 = sub_302838();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v47 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_406658);
  __chkstk_darwin(v7 - 8);
  v9 = &v46 - v8;
  v10 = sub_302728();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = (&v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(a1 + 64);
  v49[0] = v14;
  sub_124C4(0, &qword_406520);
  v15 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_406660);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v52 = 0;
    memset(v51, 0, sizeof(v51));
  }

  v48 = v15;
  [v15 bounds];
  x = v16;
  y = v18;
  width = v20;
  height = v22;
  sub_EB00(v51, v49, &qword_406590);
  if (v50)
  {
    __swift_project_boxed_opaque_existential_1Tm(v49, v50);
    sub_302588();
    (*(v11 + 56))(v9, 0, 1, v10);
    __swift_destroy_boxed_opaque_existential_1(v49);
    if ((*(v11 + 48))(v9, 1, v10) != 1)
    {
      (*(v11 + 32))(v13, v9, v10);
      goto LABEL_9;
    }
  }

  else
  {
    sub_EB68(v49, &qword_406590);
    (*(v11 + 56))(v9, 1, 1, v10);
  }

  (*(v11 + 104))(v13, enum case for ContextMenuPreviewMargins.none(_:), v10);
  if ((*(v11 + 48))(v9, 1, v10) != 1)
  {
    sub_EB68(v9, &qword_406658);
  }

LABEL_9:
  v24 = (*(v11 + 88))(v13, v10);
  if (v24 == enum case for ContextMenuPreviewMargins.provideRemovingOriginals(_:))
  {
    (*(v11 + 96))(v13, v10);
    x = UIEdgeInsetsInsetRect(x, y, width, height, *v13, v13[1]);
    y = v25;
    width = v26;
    height = v27;
    v28 = v47;
LABEL_11:
    sub_302828();
    v30 = -v29;
    sub_302828();
    v32 = -v31;
    v53.origin.x = x;
    v53.origin.y = y;
    v53.size.width = width;
    v53.size.height = height;
    v54 = CGRectInset(v53, v30, v32);
    x = v54.origin.x;
    y = v54.origin.y;
    width = v54.size.width;
    height = v54.size.height;
    v33 = 13.0;
    goto LABEL_16;
  }

  v33 = 0.0;
  if (v24 == enum case for ContextMenuPreviewMargins.none(_:))
  {
    v28 = v47;
  }

  else
  {
    v28 = v47;
    if (v24 == enum case for ContextMenuPreviewMargins.provide(_:))
    {
      goto LABEL_11;
    }

    (*(v11 + 8))(v13, v10);
  }

LABEL_16:
  v34 = v46;
  v35 = [objc_allocWithZone(UIPreviewParameters) init];
  sub_EB00(v51, v49, &qword_406590);
  if (v50)
  {
    __swift_project_boxed_opaque_existential_1Tm(v49, v50);
    sub_302598();
    (*(v5 + 56))(v34, 0, 1, v4);
    __swift_destroy_boxed_opaque_existential_1(v49);
    if ((*(v5 + 48))(v34, 1, v4) != 1)
    {
      (*(v5 + 32))(v28, v34, v4);
      v36 = enum case for ContextMenuPreviewBackgroundColor.none(_:);
      goto LABEL_22;
    }
  }

  else
  {
    sub_EB68(v49, &qword_406590);
    (*(v5 + 56))(v34, 1, 1, v4);
  }

  v36 = enum case for ContextMenuPreviewBackgroundColor.none(_:);
  (*(v5 + 104))(v28, enum case for ContextMenuPreviewBackgroundColor.none(_:), v4);
  if ((*(v5 + 48))(v34, 1, v4) != 1)
  {
    sub_EB68(v34, &qword_406650);
  }

LABEL_22:
  v37 = (*(v5 + 88))(v28, v4);
  if (v37 == v36)
  {
    v38 = [objc_opt_self() clearColor];
  }

  else
  {
    if (v37 != enum case for ContextMenuPreviewBackgroundColor.provide(_:))
    {
      (*(v5 + 8))(v28, v4);
      goto LABEL_28;
    }

    v38 = [objc_opt_self() systemBackgroundColor];
  }

  v39 = v38;
  [v35 setBackgroundColor:v39];

LABEL_28:
  v40 = [objc_opt_self() bezierPathWithRoundedRect:x cornerRadius:{y, width, height, v33}];
  [v35 setVisiblePath:v40];

  v41 = [objc_allocWithZone(UIBezierPath) init];
  [v35 setShadowPath:v41];

  v42 = objc_allocWithZone(UITargetedPreview);
  v43 = v48;
  v44 = [v42 initWithView:v48 parameters:v35];

  sub_EB68(v51, &qword_406590);
  return v44;
}

id sub_182378()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_400600);
  __chkstk_darwin(v1 - 8);
  v3 = &v18[-v2];
  v4 = sub_301F38();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v18[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = OBJC_IVAR____TtC23ShelfKitCollectionViews15ShelvesDelegate_currentContextMenuIndexPath;
  swift_beginAccess();
  sub_EB00(v0 + v8, v3, &qword_400600);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_EB68(v3, &qword_400600);
    return 0;
  }

  (*(v5 + 32))(v7, v3, v4);
  v9 = (v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews15ShelvesDelegate_converter);
  swift_beginAccess();
  v10 = v9[1];
  v11 = v9[3];
  v25 = v9[2];
  v26 = v11;
  v12 = v9[3];
  v27 = v9[4];
  v13 = v9[1];
  v24[0] = *v9;
  v24[1] = v13;
  v21 = v25;
  v22 = v12;
  v23 = v9[4];
  v19 = v24[0];
  v20 = v10;
  sub_A0660(v24, v18);
  v14 = CollectionConverter.shelfItem(for:with:in:)(v7, 0, 0);
  v28[2] = v21;
  v28[3] = v22;
  v28[4] = v23;
  v28[0] = v19;
  v28[1] = v20;
  sub_A0044(v28);
  if (!v14)
  {
    (*(v5 + 8))(v7, v4);
    return 0;
  }

  v15 = sub_181930(v14);
  if (!v15)
  {
    v15 = sub_181B88(v14);
  }

  v16 = v15;

  (*(v5 + 8))(v7, v4);
  return v16;
}

uint64_t type metadata accessor for ShelvesDelegate()
{
  result = qword_406628;
  if (!qword_406628)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_182668()
{
  sub_182774();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_182774()
{
  if (!qword_408A50)
  {
    sub_301F38();
    v0 = sub_30D3A8();
    if (!v1)
    {
      atomic_store(v0, &qword_408A50);
    }
  }
}

uint64_t sub_1827CC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_182814()
{
  v1 = sub_3023D8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_18289C()
{
  sub_3023D8();

  return sub_17EA9C();
}

unint64_t sub_18290C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  result = sub_30B3F8();
  v10 = *(*(result - 8) + 72);
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v9 = *(*(result - 8) + 80);
  v12 = v7 + ((v9 + 32) & ~v9);
  v13 = v12 + v10 * a1;
  result = swift_arrayDestroy();
  v14 = a3 - v11;
  if (__OFSUB__(a3, v11))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = v10 * a3;
  if (v14)
  {
    v16 = *(v7 + 16);
    if (!__OFSUB__(v16, a2))
    {
      result = v13 + v15;
      v17 = v12 + v10 * a2;
      if (v13 + v15 < v17 || result >= v17 + (v16 - a2) * v10)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v17)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v19 = *(v7 + 16);
      v20 = __OFADD__(v19, v14);
      v21 = v19 + v14;
      if (!v20)
      {
        *(v7 + 16) = v21;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v15 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_182A80(uint64_t result, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t, void))
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v6 = *v4;
  v7 = *(*v4 + 16);
  if (v7 < a2)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v9 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v10 = v7 + v9;
  if (__OFADD__(v7, v9))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v6;
  if (!isUniquelyReferenced_nonNull_native || v10 > *(v6 + 24) >> 1)
  {
    v6 = a3();
    *v4 = v6;
  }

  result = a4(v8, a2, 0);
  *v4 = v6;
  return result;
}

unint64_t sub_182B58(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_17;
  }

  v11 = *v5;
  v12 = (v11 + 32 + 16 * result);
  result = swift_arrayDestroy();
  v13 = __OFSUB__(a3, v6);
  v14 = a3 - v6;
  if (v13)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v14)
  {
    v15 = *(v11 + 16);
    v13 = __OFSUB__(v15, a2);
    v16 = v15 - a2;
    if (!v13)
    {
      result = &v12[2 * a3];
      v17 = (v11 + 32 + 16 * a2);
      if (result != v17 || result >= v17 + 16 * v16)
      {
        result = memmove(result, v17, 16 * v16);
      }

      v19 = *(v11 + 16);
      v13 = __OFADD__(v19, v14);
      v20 = v19 + v14;
      if (!v13)
      {
        *(v11 + 16) = v20;
        goto LABEL_13;
      }

LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      return result;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_13:
  if (a3 > 0)
  {
    *v12 = a4;
    v12[1] = a5;

    if (a3 != 1)
    {
      goto LABEL_20;
    }
  }

  return result;
}

unint64_t sub_182C3C(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v6 = *v4;
  v7 = *(*v4 + 2);
  if (v7 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v8 = result;
  v9 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v10 = __OFSUB__(1, v9);
  v11 = 1 - v9;
  if (v10)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v12 = v7 + v11;
  if (__OFADD__(v7, v11))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v6;
  if (!isUniquelyReferenced_nonNull_native || v12 > *(v6 + 3) >> 1)
  {
    if (v7 <= v12)
    {
      v16 = v12;
    }

    else
    {
      v16 = v7;
    }

    v6 = sub_CB978(isUniquelyReferenced_nonNull_native, v16, 1, v6);
    *v4 = v6;
  }

  result = sub_182B58(v8, a2, 1, a3, a4);
  *v4 = v6;
  return result;
}

uint64_t sub_182D18(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CategorySelectionGridLayout.SubviewPlacement();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_182D7C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

ValueMetadata *sub_182DF8()
{
  switch(sub_307038())
  {
    case 1u:
      AffinityEpisodeHero = type metadata accessor for ChartEpisodeCell();
      v1 = &unk_402C48;
      v2 = type metadata accessor for ChartEpisodeCell;
      goto LABEL_62;
    case 2u:
      AffinityEpisodeHero = type metadata accessor for AccessibilityChartEpisodeCell(0);
      v1 = &unk_406778;
      v2 = type metadata accessor for AccessibilityChartEpisodeCell;
      goto LABEL_62;
    case 3u:
    case 5u:
    case 8u:
      AffinityEpisodeHero = type metadata accessor for MultiShowEpisodeCell();
      v1 = &unk_402E88;
      v3 = type metadata accessor for MultiShowEpisodeCell;
      goto LABEL_42;
    case 4u:
      AffinityEpisodeHero = type metadata accessor for UpNextAffinityEpisodeHero();
      v1 = &unk_4066C8;
      v2 = type metadata accessor for UpNextAffinityEpisodeHero;
      goto LABEL_62;
    case 6u:
    case 0xBu:
      AffinityEpisodeHero = type metadata accessor for AccessibilityEpisodeCell(0);
      v1 = &unk_406780;
      v2 = type metadata accessor for AccessibilityEpisodeCell;
      goto LABEL_62;
    case 7u:
      AffinityEpisodeHero = type metadata accessor for PrototypeUpNextMultiShowEpisodeCell();
      v1 = &unk_406770;
      v3 = type metadata accessor for PrototypeUpNextMultiShowEpisodeCell;
LABEL_42:
      v2 = v3;
      goto LABEL_62;
    case 9u:
      AffinityEpisodeHero = &type metadata for EpisodeHero;
      sub_183F8C();
      return AffinityEpisodeHero;
    case 0xAu:
      AffinityEpisodeHero = type metadata accessor for SingleShowEpisodeCell();
      v1 = &unk_402FC8;
      v2 = type metadata accessor for SingleShowEpisodeCell;
      goto LABEL_62;
    case 0xCu:
      AffinityEpisodeHero = type metadata accessor for ExternalLinkCell();
      v1 = &unk_4045E8;
      v2 = type metadata accessor for ExternalLinkCell;
      goto LABEL_62;
    case 0xDu:
      AffinityEpisodeHero = type metadata accessor for HighlightCell();
      v1 = &unk_406758;
      v2 = type metadata accessor for HighlightCell;
      goto LABEL_62;
    case 0xEu:
      AffinityEpisodeHero = type metadata accessor for HighlightItemCell();
      v1 = &unk_406750;
      v2 = type metadata accessor for HighlightItemCell;
      goto LABEL_62;
    case 0xFu:
    case 0x2Du:
    case 0x2Fu:
    case 0x30u:
    case 0x31u:
      AffinityEpisodeHero = type metadata accessor for CircleLockupView(0);
      v1 = &unk_4066F8;
      v2 = type metadata accessor for CircleLockupView;
      goto LABEL_62;
    case 0x10u:
    case 0x11u:
    case 0x12u:
      AffinityEpisodeHero = type metadata accessor for InformationCell();
      v1 = &unk_406748;
      v2 = type metadata accessor for InformationCell;
      goto LABEL_62;
    case 0x13u:
    case 0x14u:
    case 0x15u:
      AffinityEpisodeHero = type metadata accessor for LinkListCell();
      v1 = &unk_404728;
      v2 = type metadata accessor for LinkListCell;
      goto LABEL_62;
    case 0x16u:
      AffinityEpisodeHero = type metadata accessor for ParagraphCell();
      v1 = &unk_406740;
      v2 = type metadata accessor for ParagraphCell;
      goto LABEL_62;
    case 0x17u:
      AffinityEpisodeHero = type metadata accessor for PowerSwooshCell();
      v1 = &unk_404840;
      v2 = type metadata accessor for PowerSwooshCell;
      goto LABEL_62;
    case 0x18u:
      AffinityEpisodeHero = type metadata accessor for SearchHintCell();
      v1 = &unk_4048B8;
      v2 = type metadata accessor for SearchHintCell;
      goto LABEL_62;
    case 0x19u:
    case 0x1Au:
      AffinityEpisodeHero = type metadata accessor for SearchLandingCell();
      v1 = &unk_404960;
      v2 = type metadata accessor for SearchLandingCell;
      goto LABEL_62;
    case 0x1Bu:
      AffinityEpisodeHero = type metadata accessor for LargeLockupCollectionViewCell();
      v1 = &unk_406738;
      v5 = type metadata accessor for LargeLockupCollectionViewCell;
      goto LABEL_58;
    case 0x1Cu:
      AffinityEpisodeHero = type metadata accessor for ShowHeroCell(0);
      v1 = &unk_406730;
      v2 = type metadata accessor for ShowHeroCell;
      goto LABEL_62;
    case 0x1Du:
      AffinityEpisodeHero = type metadata accessor for SubscriptionLinkCell();
      v1 = &unk_404A90;
      v2 = type metadata accessor for SubscriptionLinkCell;
      goto LABEL_62;
    case 0x1Eu:
      AffinityEpisodeHero = type metadata accessor for EditorialCardCollectionViewCell();
      v1 = &unk_406788;
      v2 = type metadata accessor for EditorialCardCollectionViewCell;
      goto LABEL_62;
    case 0x1Fu:
      AffinityEpisodeHero = type metadata accessor for ShowcaseCollectionViewCell();
      v1 = &unk_406760;
      v2 = type metadata accessor for ShowcaseCollectionViewCell;
      goto LABEL_62;
    case 0x20u:
      AffinityEpisodeHero = type metadata accessor for BrickCollectionViewCell();
      v1 = &unk_406790;
      v2 = type metadata accessor for BrickCollectionViewCell;
      goto LABEL_62;
    case 0x21u:
      AffinityEpisodeHero = type metadata accessor for LargeChartLockupCollectionViewCell();
      v1 = &unk_406728;
      v5 = type metadata accessor for LargeChartLockupCollectionViewCell;
LABEL_58:
      v2 = v5;
      goto LABEL_62;
    case 0x22u:
      AffinityEpisodeHero = type metadata accessor for RoomUberCollectionViewCell();
      v1 = &unk_406060;
      v2 = type metadata accessor for RoomUberCollectionViewCell;
      goto LABEL_62;
    case 0x23u:
      AffinityEpisodeHero = type metadata accessor for ShowUberCollectionViewCell();
      v1 = &unk_4060E8;
      v2 = type metadata accessor for ShowUberCollectionViewCell;
      goto LABEL_62;
    case 0x24u:
      AffinityEpisodeHero = type metadata accessor for EpisodeHeaderCollectionViewCell();
      v1 = &unk_405F28;
      v2 = type metadata accessor for EpisodeHeaderCollectionViewCell;
      goto LABEL_62;
    case 0x25u:
      AffinityEpisodeHero = type metadata accessor for LoadingCell();
      v1 = &unk_404788;
      v2 = type metadata accessor for LoadingCell;
      goto LABEL_62;
    case 0x26u:
      AffinityEpisodeHero = type metadata accessor for ProductRatingCollectionViewCell();
      v1 = &unk_406720;
      v2 = type metadata accessor for ProductRatingCollectionViewCell;
      goto LABEL_62;
    case 0x27u:
    case 0x28u:
      AffinityEpisodeHero = type metadata accessor for ModernProductReviewCollectionViewCell();
      v1 = &unk_406718;
      v2 = type metadata accessor for ModernProductReviewCollectionViewCell;
      goto LABEL_62;
    case 0x29u:
      AffinityEpisodeHero = type metadata accessor for ProductTapToRateCollectionViewCell();
      v1 = &unk_406710;
      v2 = type metadata accessor for ProductTapToRateCollectionViewCell;
      goto LABEL_62;
    case 0x2Au:
      AffinityEpisodeHero = type metadata accessor for ProductReviewActionsCell();
      v1 = &unk_406708;
      v2 = type metadata accessor for ProductReviewActionsCell;
      goto LABEL_62;
    case 0x2Bu:
      AffinityEpisodeHero = type metadata accessor for HorizontalShowHeaderCell();
      v1 = &unk_404F68;
      v2 = type metadata accessor for HorizontalShowHeaderCell;
      goto LABEL_62;
    case 0x2Cu:
      AffinityEpisodeHero = type metadata accessor for HorizontalEpisodeHeaderCollectionViewCell();
      v1 = &unk_405198;
      v2 = type metadata accessor for HorizontalEpisodeHeaderCollectionViewCell;
      goto LABEL_62;
    case 0x2Eu:
      AffinityEpisodeHero = &type metadata for ChannelBrickCell;
      sub_183F38();
      return AffinityEpisodeHero;
    case 0x32u:
      AffinityEpisodeHero = type metadata accessor for CircleListCell();
      v1 = &unk_404338;
      v2 = type metadata accessor for CircleListCell;
      goto LABEL_62;
    case 0x33u:
      AffinityEpisodeHero = type metadata accessor for ChannelUberCollectionViewCell();
      v1 = &unk_405E00;
      v2 = type metadata accessor for ChannelUberCollectionViewCell;
      goto LABEL_62;
    case 0x34u:
      AffinityEpisodeHero = type metadata accessor for CategoryListCell();
      v1 = &unk_4066F0;
      v2 = type metadata accessor for CategoryListCell;
      goto LABEL_62;
    case 0x35u:
      AffinityEpisodeHero = type metadata accessor for CategoryBrickCell();
      v1 = &unk_4066E8;
      v2 = type metadata accessor for CategoryBrickCell;
      goto LABEL_62;
    case 0x36u:
      AffinityEpisodeHero = type metadata accessor for UpsellBannerCell();
      v1 = &unk_4066E0;
      v2 = type metadata accessor for UpsellBannerCell;
      goto LABEL_62;
    case 0x37u:
      AffinityEpisodeHero = type metadata accessor for ToggleCell();
      v1 = &unk_404B30;
      v2 = type metadata accessor for ToggleCell;
      goto LABEL_62;
    case 0x38u:
      AffinityEpisodeHero = type metadata accessor for ShowEpisodeCountHeaderCell();
      v1 = &unk_404A00;
      v2 = type metadata accessor for ShowEpisodeCountHeaderCell;
      goto LABEL_62;
    case 0x39u:
      AffinityEpisodeHero = type metadata accessor for EpisodeUpsellBannerCell();
      v1 = &unk_4043C0;
      v2 = type metadata accessor for EpisodeUpsellBannerCell;
      goto LABEL_62;
    case 0x3Au:
      AffinityEpisodeHero = type metadata accessor for AMSBannerCell();
      v1 = &unk_403FC8;
      v2 = type metadata accessor for AMSBannerCell;
      goto LABEL_62;
    case 0x3Bu:
      AffinityEpisodeHero = type metadata accessor for LabelWithoutTopSeparatorCell();
      v1 = &unk_4066D8;
      v4 = type metadata accessor for LabelWithoutTopSeparatorCell;
      goto LABEL_30;
    case 0x3Cu:
      AffinityEpisodeHero = type metadata accessor for LabelCell();
      v1 = &unk_404688;
      v4 = type metadata accessor for LabelCell;
LABEL_30:
      v2 = v4;
      goto LABEL_62;
    case 0x3Du:
      AffinityEpisodeHero = type metadata accessor for ErrorCell();
      v1 = &unk_4066D0;
      v2 = type metadata accessor for ErrorCell;
      goto LABEL_62;
    case 0x3Eu:
    case 0x3Fu:
    case 0x40u:
      AffinityEpisodeHero = type metadata accessor for TopResultCell();
      v1 = &unk_4066C0;
      v2 = type metadata accessor for TopResultCell;
      goto LABEL_62;
    case 0x41u:
    case 0x42u:
    case 0x43u:
    case 0x44u:
      AffinityEpisodeHero = &type metadata for SearchResultCell;
      sub_183EE4();
      return AffinityEpisodeHero;
    case 0x45u:
      AffinityEpisodeHero = type metadata accessor for TranscriptSnippetCell();
      v1 = &unk_4066B0;
      v2 = type metadata accessor for TranscriptSnippetCell;
      goto LABEL_62;
    case 0x46u:
      AffinityEpisodeHero = type metadata accessor for RecentlySearchedHeaderCell();
      v1 = &unk_4066A8;
      v2 = type metadata accessor for RecentlySearchedHeaderCell;
      goto LABEL_62;
    case 0x47u:
      AffinityEpisodeHero = type metadata accessor for CategorySelectionCell(0);
      v1 = &unk_4066A0;
      v2 = type metadata accessor for CategorySelectionCell;
      goto LABEL_62;
    case 0x48u:
      AffinityEpisodeHero = type metadata accessor for CategorySelectionCompactCell(0);
      v1 = &unk_406698;
      v2 = type metadata accessor for CategorySelectionCompactCell;
      goto LABEL_62;
    case 0x49u:
      AffinityEpisodeHero = type metadata accessor for AnyReferenceLinkCell();
      v1 = &unk_406690;
      v2 = type metadata accessor for AnyReferenceLinkCell;
      goto LABEL_62;
    case 0x4Au:
      AffinityEpisodeHero = type metadata accessor for CategoryHeaderCollectionViewCell();
      v1 = &unk_405CF8;
      v2 = type metadata accessor for CategoryHeaderCollectionViewCell;
      goto LABEL_62;
    default:
      AffinityEpisodeHero = type metadata accessor for BubbleTipCell();
      v1 = &unk_404128;
      v2 = type metadata accessor for BubbleTipCell;
LABEL_62:
      sub_183FE0(v1, v2);
      return AffinityEpisodeHero;
  }
}

uint64_t sub_183C10@<X0>(uint64_t *a1@<X8>)
{
  switch(sub_307038())
  {
    case 1u:
    case 3u:
    case 5u:
    case 7u:
    case 8u:
    case 0xEu:
    case 0x1Eu:
    case 0x1Fu:
    case 0x27u:
    case 0x2Au:
    case 0x2Eu:
    case 0x35u:
    case 0x49u:
      v3 = &enum case for Grid.a(_:);
      goto LABEL_8;
    case 4u:
    case 9u:
    case 0x17u:
    case 0x1Cu:
    case 0x20u:
    case 0x40u:
      v3 = &enum case for Grid.d(_:);
      goto LABEL_8;
    case 0xCu:
    case 0x13u:
    case 0x14u:
    case 0x15u:
    case 0x18u:
    case 0x1Du:
    case 0x32u:
    case 0x34u:
      sub_30D648();
      __break(1u);
      JUMPOUT(0x183DB8);
    case 0xFu:
    case 0x2Du:
    case 0x2Fu:
    case 0x30u:
    case 0x31u:
      v3 = &enum case for Grid.c(_:);
      goto LABEL_8;
    case 0x10u:
    case 0x11u:
    case 0x12u:
      v2 = 3;
      goto LABEL_3;
    case 0x19u:
    case 0x1Au:
    case 0x1Bu:
    case 0x21u:
      v3 = &enum case for Grid.b(_:);
      goto LABEL_8;
    default:
      v2 = 1;
LABEL_3:
      *a1 = v2;
      v3 = &enum case for Grid.staticNumberOfColumns(_:);
LABEL_8:
      v4 = *v3;
      v5 = sub_302858();
      v6 = *(*(v5 - 8) + 104);

      return v6(a1, v4, v5);
  }
}

unint64_t sub_183EE4()
{
  result = qword_4066B8;
  if (!qword_4066B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4066B8);
  }

  return result;
}

unint64_t sub_183F38()
{
  result = qword_406700;
  if (!qword_406700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_406700);
  }

  return result;
}

unint64_t sub_183F8C()
{
  result = qword_406768;
  if (!qword_406768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_406768);
  }

  return result;
}

uint64_t sub_183FE0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_184028(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_406808);
  __chkstk_darwin(v5 - 8);
  v7 = &v17 - v6;
  v8 = sub_3071E8();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v9 + 48))(a1, 1, v8, v10) == 1)
  {
    sub_EB68(a1, &unk_406808);
    sub_1B38CC(a2, v7);
    v13 = sub_307048();
    (*(*(v13 - 8) + 8))(a2, v13);
    return sub_EB68(v7, &unk_406808);
  }

  else
  {
    (*(v9 + 32))(v12, a1, v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v2;
    sub_295A70(v12, a2, isUniquelyReferenced_nonNull_native);
    v16 = sub_307048();
    result = (*(*(v16 - 8) + 8))(a2, v16);
    *v2 = v18;
  }

  return result;
}

uint64_t sub_184254(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_406820);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = type metadata accessor for ShelvesViewProvider.Supplementaries.Header(0);
  v11 = __chkstk_darwin(v10);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v14 + 48))(a1, 1, v11) == 1)
  {
    sub_EB68(a1, &qword_406820);
    sub_1B3A6C(a2, a3, v9);

    return sub_EB68(v9, &qword_406820);
  }

  else
  {
    sub_195EC4(a1, v13, type metadata accessor for ShelvesViewProvider.Supplementaries.Header);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    sub_295C74(v13, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v18;
  }

  return result;
}

uint64_t sub_184428(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    v6 = *(a1 + 16);
    v10[0] = *a1;
    v10[1] = v6;
    v10[2] = *(a1 + 32);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v3;
    sub_296460(v10, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v9;
  }

  else
  {
    sub_EB68(a1, &qword_406B30);
    sub_1B3BC4(a2, a3, v10);

    return sub_EB68(v10, &qword_406B30);
  }

  return result;
}

BOOL sub_184500(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v4 = sub_30D7E8();
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(a2 + 48) + 8 * v6);
    result = v8 == a1;
    if (v8 == a1)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

uint64_t sub_1845A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_30D7F8();
  sub_30C1F8();
  v6 = sub_30D858();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_30D728() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_1846A0(char a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    sub_30D7F8();
    sub_30D808(a1 & 1);
    v5 = sub_30D858();
    v6 = -1 << *(a2 + 32);
    v7 = v5 & ~v6;
    if ((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
    {
      v8 = ~v6;
      do
      {
        v9 = *(*(a2 + 48) + v7) ^ a1;
        if ((v9 & 1) == 0)
        {
          break;
        }

        v7 = (v7 + 1) & v8;
      }

      while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
      LOBYTE(v2) = v9 ^ 1;
    }

    else
    {
      LOBYTE(v2) = 0;
    }
  }

  return v2 & 1;
}

BOOL sub_184768(Swift::UInt a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_30D7F8();
  sub_30D808(a1);
  v4 = sub_30D858();
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(a2 + 48) + 8 * v6);
    result = v8 == a1;
    if (v8 == a1)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

BOOL sub_184834(Swift::UInt64 a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_30D7F8();
  sub_30D838(a1);
  v4 = sub_30D858();
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(a2 + 48) + 8 * v6);
    result = v8 == a1;
    if (v8 == a1)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

Swift::Void __swiftcall ShelvesViewProvider.prepare(collectionView:layout:)(UICollectionView collectionView, UICollectionViewCompositionalLayout layout)
{
  v5 = OBJC_IVAR____TtC23ShelfKitCollectionViews19ShelvesViewProvider_collectionView;
  swift_beginAccess();
  v6 = *(v2 + v5);
  *(v2 + v5) = collectionView;

  type metadata accessor for ShelfBackgroundView();
  v7 = collectionView.super.super.super.super.isa;
  static ShelfBackgroundView.register(layout:)(layout.super.super.isa);
}

id ShelvesViewProvider.cell(for:indexPath:section:item:)(void *a1, uint64_t a2, char *a3, void *a4)
{
  v5 = v4;
  v124 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4067B0);
  __chkstk_darwin(v9 - 8);
  v122 = &v97 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_401100);
  __chkstk_darwin(v11 - 8);
  v13 = &v97 - v12;
  v111 = sub_3091A8();
  v110 = *(v111 - 8);
  v14 = *(v110 + 64);
  __chkstk_darwin(v111);
  v107 = &v97 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v108 = &v97 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4067C0);
  __chkstk_darwin(v17 - 8);
  v113 = (&v97 - v18);
  v114 = sub_307178();
  v112 = *(v114 - 1);
  __chkstk_darwin(v114);
  ObjectType = &v97 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = sub_307108();
  v118 = *(v117 - 8);
  __chkstk_darwin(v117);
  v115 = v20;
  v116 = &v97 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_307048();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = &v97 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v27 = &v97 - v26;
  v125 = a3;
  sub_307058();
  v123 = a1;
  v28 = [a1 traitCollection];
  ShelvesViewProvider.adjustedItemPresentation(for:traitCollection:)(v24, v28, v27);

  v29 = *(v22 + 8);
  v121 = v21;
  v120 = v22 + 8;
  v119 = v29;
  v29(v24, v21);
  *&v129 = 0;
  *(&v129 + 1) = 0xE000000000000000;
  sub_30D558(21);
  v131._object = 0x800000000033E2C0;
  v131._countAndFlagsBits = 0xD000000000000010;
  sub_30C238(v131);
  LOBYTE(v128) = sub_307038();
  sub_30D638();
  v132._countAndFlagsBits = 46;
  v132._object = 0xE100000000000000;
  sub_30C238(v132);
  LOBYTE(v128) = sub_306FE8() & 1;
  sub_30D638();
  v30 = v129;
  v31 = OBJC_IVAR____TtC23ShelfKitCollectionViews19ShelvesViewProvider_registeredCellReuseIdentifiers;
  swift_beginAccess();
  v32 = *(v5 + v31);

  LOBYTE(v22) = sub_1845A8(v30, *(&v30 + 1), v32);

  if ((v22 & 1) == 0)
  {
    v33 = sub_182DF8();
    if (!swift_conformsToProtocol2() || !v33)
    {
      if (!swift_conformsToProtocol2() || !v33)
      {
        goto LABEL_8;
      }

      type metadata accessor for ShelvesViewSwiftUIHelperCell();
    }

    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v35 = sub_30C098();
    [v123 registerClass:ObjCClassFromMetadata forCellWithReuseIdentifier:v35];

LABEL_8:
    swift_beginAccess();

    sub_1927D4(&v128, v30, *(&v30 + 1));
    swift_endAccess();
  }

  v36 = sub_30C098();

  isa = sub_301EA8().super.isa;
  v38 = [v123 dequeueReusableCellWithReuseIdentifier:v36 forIndexPath:isa];

  v39 = sub_182DF8();
  v40 = swift_conformsToProtocol2();
  if (v40 && v39)
  {
    sub_18CA10(v39, v125, a4, v27, v38, v39, v40);
    goto LABEL_30;
  }

  swift_getObjectType();
  if (!swift_conformsToProtocol2() || !v38)
  {
    goto LABEL_30;
  }

  v98 = v13;
  v97 = v14;
  v41 = v118;
  v42 = *(v118 + 16);
  v105 = v5;
  v43 = v116;
  v44 = v117;
  v103 = v118 + 16;
  v102 = v42;
  v42(v116, v125, v117);
  v106 = a4;
  sub_12670(a4, &v129);
  v45 = *(v41 + 80);
  v100 = ~v45;
  v46 = (v45 + 16) & ~v45;
  v47 = (v115 + v46 + 7) & 0xFFFFFFFFFFFFFFF8;
  v101 = v45;
  v48 = swift_allocObject();
  v49 = *(v41 + 32);
  v50 = v43;
  v51 = v105;
  v118 = v41 + 32;
  v104 = v49;
  v49(v48 + v46, v50, v44);
  sub_12658(&v129, v48 + v47);
  v52 = v38;

  v53 = sub_30B948();

  swift_getObjectType();
  v99 = v53;
  sub_307538();
  v54 = OBJC_IVAR____TtC23ShelfKitCollectionViews19ShelvesViewProvider_cachedShelfAttributes;
  swift_beginAccess();
  v55 = v113;
  sub_EB00(v51 + v54, v113, &qword_4067C0);
  v56 = v112;
  v57 = v114;
  if ((*(v112 + 48))(v55, 1, v114) == 1)
  {
    sub_EB68(v55, &qword_4067C0);
  }

  else
  {
    v58 = ObjectType;
    (*(v56 + 32))(ObjectType, v55, v57);
    sub_307578();
    (*(v56 + 8))(v58, v57);
  }

  v59 = v106;
  sub_307588();
  v60 = swift_allocObject();
  swift_weakInit();
  sub_12670(v59, &v129);
  v61 = v116;
  v62 = v117;
  v102(v116, v125, v117);
  v63 = (v101 + 64) & v100;
  v64 = v52;
  v65 = swift_allocObject();
  *(v65 + 16) = v60;
  sub_12658(&v129, v65 + 24);
  v104(v65 + v63, v61, v62);

  v114 = v64;
  sub_307548();

  v66 = [v123 traitCollection];
  v67 = [v66 userInterfaceIdiom];

  if (v67 != &dword_4 + 1)
  {
    swift_getObjectType();
    if (swift_conformsToProtocol2())
    {
      v68 = v98;
      sub_EB00(v105 + OBJC_IVAR____TtC23ShelfKitCollectionViews19ShelvesViewProvider_deletableExtension, v98, &qword_401100);
      v69 = v110;
      if ((*(v110 + 48))(v68, 1, v111) == 1)
      {
        sub_EB68(v68, &qword_401100);
      }

      else
      {
        v70 = *(v69 + 32);
        v112 = v69 + 32;
        v113 = v70;
        v71 = v108;
        v70();
        v72 = v114;
        ObjectType = swift_getObjectType();
        v98 = v72;
        v73 = v71;
        v74 = sub_309198();
        v75 = v106;
        v76 = v125;
        v74(v106, v125);

        sub_307128();
        v77 = v110;
        v78 = v111;
        (*(v110 + 16))(v107, v73, v111);
        sub_12670(v75, &v129);
        v79 = v116;
        v80 = v76;
        v81 = v117;
        v102(v116, v80, v117);
        v82 = (*(v77 + 80) + 16) & ~*(v77 + 80);
        v83 = (v97 + v82 + 7) & 0xFFFFFFFFFFFFFFF8;
        v84 = (v101 + v83 + 40) & v100;
        v85 = swift_allocObject();
        (v113)(v85 + v82, v107, v78);
        sub_12658(&v129, v85 + v83);
        v104(v85 + v84, v79, v81);
        v86 = v98;
        sub_307138();

        (*(v110 + 8))(v108, v111);
      }
    }
  }

  v87 = [v123 traitCollection];
  v88 = [v87 userInterfaceIdiom];

  if (v88 == &dword_4 + 1)
  {

LABEL_27:
    a4 = v106;
    goto LABEL_30;
  }

  v89 = v114;
  swift_getObjectType();
  v90 = swift_conformsToProtocol2();
  a4 = v106;
  if (v90)
  {
    if (*(v105 + OBJC_IVAR____TtC23ShelfKitCollectionViews19ShelvesViewProvider_multiSelectableExtension))
    {
      v91 = v89;

      v92 = sub_30A748();
      v92(v106, v125);

      sub_306F28();

      goto LABEL_27;
    }
  }

  else
  {
  }

LABEL_30:
  sub_12670(a4, &v128);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4064E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4067D8);
  if (swift_dynamicCast())
  {
    sub_12658(v126, &v129);
    __swift_project_boxed_opaque_existential_1Tm(&v129, v130);
    v38;
    sub_30AB88();
    sub_30CEC8();
    __swift_destroy_boxed_opaque_existential_1(&v129);
  }

  else
  {
    v127 = 0;
    memset(v126, 0, sizeof(v126));
    sub_EB68(v126, &qword_4067E0);
    v93 = sub_301988();
    (*(*(v93 - 8) + 56))(v122, 1, 1, v93);
    v94 = v38;
    sub_30CEC8();
  }

  v95 = sub_307038();
  sub_1DC644(v124, v125, a4, v95);

  v119(v27, v121);
  return v38;
}

char *ShelvesViewProvider.supplementaryView(for:kind:indexPath:section:item:)(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v173 = a5;
  v170 = a4;
  v176 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_406808);
  __chkstk_darwin(v8 - 8);
  v148 = &v142 - v9;
  v154 = sub_307228();
  v153 = *(v154 - 8);
  __chkstk_darwin(v154);
  v151 = &v142 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = sub_3071E8();
  v150 = *(v152 - 8);
  __chkstk_darwin(v152);
  v149 = &v142 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v171 = sub_307048();
  v169 = *(v171 - 8);
  __chkstk_darwin(v171);
  v162 = &v142 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v168 = &v142 - v14;
  v161 = sub_30BB28();
  v160 = *(v161 - 8);
  __chkstk_darwin(v161);
  v157 = &v142 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v158 = &v142 - v17;
  __chkstk_darwin(v18);
  v159 = &v142 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_400450);
  __chkstk_darwin(v20 - 8);
  v156 = &v142 - v21;
  v167 = sub_307108();
  v166 = *(v167 - 8);
  __chkstk_darwin(v167);
  v164 = v22;
  v165 = &v142 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v147 = sub_3041E8();
  v146 = *(v147 - 8);
  __chkstk_darwin(v147);
  v145 = &v142 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for ShelvesViewProvider.Supplementaries.Header(0);
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v172 = &v142 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_406818);
  __chkstk_darwin(v27);
  v29 = (&v142 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v30);
  v32 = (&v142 - v31);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_406820);
  __chkstk_darwin(v33 - 8);
  v35 = &v142 - v34;
  sub_18E264(a2, a3, &v142 - v34);
  v36 = OBJC_IVAR____TtC23ShelfKitCollectionViews19ShelvesViewProvider_registeredSupplementaryViewKinds;
  swift_beginAccess();
  v174 = v5;
  v155 = v36;
  v37 = *(v5 + v36);

  LOBYTE(v36) = sub_1845A8(a2, a3, v37);

  v175 = v35;
  if ((v36 & 1) == 0)
  {
    v163 = v29;
    v143 = v27;
    v38 = *(v27 + 48);
    *v32 = a2;
    v32[1] = a3;
    sub_EB00(v35, v32 + v38, &qword_406820);
    v142 = v25;
    v39 = (*(v25 + 48))(v32 + v38, 1, v24);
    v40 = a3;
    v41 = a2;
    v144 = v24;
    if (v39 == 1)
    {
      if (a2 == 0x746E6F4379616C50 && a3 == 0xEC000000736C6F72 || (sub_30D728() & 1) != 0)
      {
        type metadata accessor for ShelfPageControl();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();

        v43 = sub_30C098();
      }

      else
      {
        if ((a2 != 0x6F74617261706553 || a3 != 0xE900000000000072) && (sub_30D728() & 1) == 0)
        {
          sub_124C4(0, &qword_3FC1C0);

          v137 = v145;
          sub_30D348();

          v138 = sub_3041D8();
          v139 = sub_30C7A8();

          if (os_log_type_enabled(v138, v139))
          {
            v140 = swift_slowAlloc();
            v141 = swift_slowAlloc();
            *&v181 = v141;
            *v140 = 136315138;
            *(v140 + 4) = sub_191264(v41, a3, &v181);
            _os_log_impl(&dword_0, v138, v139, "Tried to register non existent supplementary kind %s", v140, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v141);

            v40 = a3;
          }

          (*(v146 + 8))(v137, v147);
          v29 = v163;
          sub_EB68(v32, &qword_406818);
          goto LABEL_10;
        }

        type metadata accessor for SeparatorSupplementaryView();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();

        v43 = sub_30C098();
      }

      v44 = sub_30C098();
      [v176 registerClass:ObjCClassFromMetadata forSupplementaryViewOfKind:v43 withReuseIdentifier:v44];

      sub_EB68(v32 + v38, &qword_406820);
    }

    else
    {
      v45 = v32 + v38;
      v46 = v172;
      sub_195EC4(v45, v172, type metadata accessor for ShelvesViewProvider.Supplementaries.Header);
      type metadata accessor for ModernTitleHeaderView(0);
      v47 = swift_getObjCClassFromMetadata();

      v48 = sub_30C098();
      v49 = sub_30C098();
      [v176 registerClass:v47 forSupplementaryViewOfKind:v48 withReuseIdentifier:v49];

      sub_195CEC(v46, type metadata accessor for ShelvesViewProvider.Supplementaries.Header);
    }

    v29 = v163;
LABEL_10:
    swift_beginAccess();

    sub_1927D4(v180, v41, v40);
    swift_endAccess();

    a3 = v40;
    v35 = v175;
    v24 = v144;
    a2 = v41;
    v27 = v143;
    v25 = v142;
  }

  v177 = a3;
  v50 = *(v27 + 48);
  *v29 = a2;
  v29[1] = a3;
  sub_EB00(v35, v29 + v50, &qword_406820);
  if ((*(v25 + 48))(v29 + v50, 1, v24) == 1)
  {
    v51 = v176;
    if (a2 == 0x746E6F4379616C50 && v177 == 0xEC000000736C6F72 || (sub_30D728() & 1) != 0)
    {
      v172 = v50;
      v163 = v29;

      v52 = sub_30C098();
      v53 = sub_30C098();
      isa = sub_301EA8().super.isa;
      v55 = [v51 dequeueReusableSupplementaryViewOfKind:v52 withReuseIdentifier:v53 forIndexPath:isa];

      type metadata accessor for ShelfPageControl();
      v56 = swift_dynamicCastClassUnconditional();
      v57 = swift_allocObject();
      v58 = v174;
      swift_weakInit();
      v59 = v166;
      v60 = v165;
      v61 = v173;
      v62 = v167;
      (*(v166 + 16))(v165, v173, v167);
      v63 = (*(v59 + 80) + 24) & ~*(v59 + 80);
      v64 = swift_allocObject();
      *(v64 + 16) = v57;
      v65 = v60;
      v66 = v56;
      (*(v59 + 32))(v64 + v63, v65, v62);
      v67 = OBJC_IVAR____TtC23ShelfKitCollectionViews16ShelfPageControl_pageControls;
      v68 = (*&v66[OBJC_IVAR____TtC23ShelfKitCollectionViews16ShelfPageControl_pageControls] + OBJC_IVAR____TtC23ShelfKitCollectionViews18PageButtonsControl_scrollHandle);
      v69 = *v68;
      *v68 = sub_192D30;
      v68[1] = v64;

      sub_1EBD0(v69);

      v70 = v58;

      v71 = sub_18F3A8(v61);
      sub_298908(v71);
      v72 = v162;
      sub_307058();
      if (sub_306FF8() != 1)
      {
        top = UIEdgeInsetsZero.top;
        left = UIEdgeInsetsZero.left;
        bottom = UIEdgeInsetsZero.bottom;
        right = UIEdgeInsetsZero.right;
        v105 = v171;
        v106 = v175;
        v107 = v172;
LABEL_39:
        v127 = &v66[OBJC_IVAR____TtC23ShelfKitCollectionViews16ShelfPageControl_verticalButtonInsets];
        *v127 = top;
        v127[1] = left;
        v127[2] = bottom;
        v127[3] = right;
        v128 = *&v66[v67];
        [v66 layoutMargins];
        v130 = v129;
        v131 = v127[2];
        [v66 layoutMargins];
        [v128 setLayoutMargins:{top, v130, v131}];
        v132 = v168;
        sub_307058();
        v133 = sub_306FC8();
        v134 = *(v169 + 8);
        v134(v132, v105);
        v135 = &v66[OBJC_IVAR____TtC23ShelfKitCollectionViews16ShelfPageControl_shelfBackground];
        v135[4] = BYTE4(v133);
        *v135 = v133;
        v135[5] = BYTE5(v133) & 1;
        sub_174718();
        v134(v72, v105);
        sub_EB68(v106, &qword_406820);
        sub_EB68(v163 + v107, &qword_406820);
        goto LABEL_40;
      }

      v73 = [v51 traitCollection];
      v183 = 0;
      v181 = 0u;
      v182 = 0u;
      v74 = sub_182DF8();
      v75 = swift_conformsToProtocol2();
      v76 = v171;
      v77 = v152;
      if (v75 && v74)
      {
        sub_EB00(&v181, &v178, &qword_4064D0);
        if (v179)
        {
          sub_12658(&v178, v180);
          v78 = v149;
          sub_3073E8();

          __swift_destroy_boxed_opaque_existential_1(v180);
          sub_EB68(&v181, &qword_4064D0);
          v79 = v150;
LABEL_38:
          sub_182DF8();
          v122 = v151;
          sub_307418();
          sub_307188();
          top = v123;
          left = v124;
          bottom = v125;
          right = v126;
          (*(v153 + 8))(v122, v154);
          (*(v79 + 8))(v78, v77);
          v106 = v175;
          v107 = v172;
          v105 = v171;
          goto LABEL_39;
        }

        sub_EB68(&v178, &qword_4064D0);
      }

      if (([*(v70 + OBJC_IVAR____TtC23ShelfKitCollectionViews19ShelvesViewProvider_heightCacheTraitCollection) containsTraitsInCollection:v73] & 1) == 0)
      {
        v112 = OBJC_IVAR____TtC23ShelfKitCollectionViews19ShelvesViewProvider_heightCache;
        swift_beginAccess();
        *(v70 + v112) = &_swiftEmptyDictionarySingleton;
      }

      v113 = OBJC_IVAR____TtC23ShelfKitCollectionViews19ShelvesViewProvider_heightCache;
      swift_beginAccess();
      v114 = *(v70 + v113);
      if (*(v114 + 16) && (v115 = sub_191BF4(v72), (v116 & 1) != 0))
      {
        v117 = v73;
        v79 = v150;
        v78 = v149;
        (*(v150 + 16))(v149, *(v114 + 56) + *(v150 + 72) * v115, v77);
        swift_endAccess();
      }

      else
      {
        swift_endAccess();
        sub_182DF8();
        v118 = v149;
        sub_3074D8();
        v119 = v168;
        (*(v169 + 16))(v168, v162, v76);
        v176 = v73;
        v79 = v150;
        v120 = v148;
        (*(v150 + 16))(v148, v118, v77);
        (*(v79 + 56))(v120, 0, 1, v77);
        swift_beginAccess();
        v78 = v118;
        v121 = v119;
        v72 = v162;
        sub_184028(v120, v121);
        swift_endAccess();
      }

      sub_EB68(&v181, &qword_4064D0);
      goto LABEL_38;
    }

    if ((a2 != 0x6F74617261706553 || v177 != 0xE900000000000072) && (sub_30D728() & 1) == 0)
    {

      sub_EB68(v35, &qword_406820);
      sub_EB68(v29, &qword_406818);
      return 0;
    }

    v108 = sub_30C098();
    v109 = v29;
    v110 = sub_30C098();
    v111 = sub_301EA8().super.isa;
    v66 = [v51 dequeueReusableSupplementaryViewOfKind:v108 withReuseIdentifier:v110 forIndexPath:v111];

    sub_EB68(v35, &qword_406820);
    sub_EB68(v109 + v50, &qword_406820);
  }

  else
  {
    v80 = v172;
    sub_195EC4(v29 + v50, v172, type metadata accessor for ShelvesViewProvider.Supplementaries.Header);
    v81 = v166;
    v82 = v165;
    v83 = v167;
    (*(v166 + 16))(v165, v173, v167);
    v84 = (*(v81 + 80) + 16) & ~*(v81 + 80);
    v85 = swift_allocObject();
    (*(v81 + 32))(v85 + v84, v82, v83);

    v86 = sub_30B948();
    v174 = v86;

    v87 = sub_195B0C(v176, v170, v80);
    v88 = v156;
    sub_3070C8();
    ModernTitleHeaderView.apply(header:objectGraph:)(v88, v86);
    sub_EB68(v88, &qword_400450);
    v89 = sub_301F08();
    *(&v182 + 1) = &type metadata for Int;
    *&v181 = v89;
    v90 = sub_3070A8();
    v180[3] = &type metadata for String;
    v180[0] = v90;
    v180[1] = v91;
    v92 = v157;
    sub_30BAE8();
    sub_EB68(v180, &unk_3FBB70);
    sub_EB68(&v181, &unk_3FBB70);
    v93 = v168;
    sub_307058();
    v94 = sub_307038();
    (*(v169 + 8))(v93, v171);
    *(&v182 + 1) = &type metadata for ModernShelf.ItemKind;
    LOBYTE(v181) = v94;
    v95 = v158;
    sub_30BB08();
    v96 = *(v160 + 8);
    v97 = v161;
    v96(v92, v161);
    sub_EB68(&v181, &unk_3FBB70);
    v98 = *(sub_3070B8() + 16);

    *(&v182 + 1) = &type metadata for Int;
    *&v181 = v98;
    v99 = v159;
    sub_30BB08();
    v100 = v95;
    v66 = v87;
    v96(v100, v97);
    sub_EB68(&v181, &unk_3FBB70);
    sub_30CED8();

    v96(v99, v97);
    sub_195CEC(v172, type metadata accessor for ShelvesViewProvider.Supplementaries.Header);
    sub_EB68(v175, &qword_406820);
  }

LABEL_40:

  return v66;
}