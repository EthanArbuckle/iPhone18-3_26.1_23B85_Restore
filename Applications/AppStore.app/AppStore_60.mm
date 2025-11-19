void sub_1006C2D2C()
{
  v1 = v0;
  v179 = type metadata accessor for Accessory();
  v2 = *(v179 - 8);
  __chkstk_darwin(v179);
  v169 = (&v166 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v170 = sub_10002849C(&qword_100984348);
  __chkstk_darwin(v170);
  *&v171 = &v166 - v4;
  v5 = sub_10002849C(&qword_100984340);
  __chkstk_darwin(v5 - 8);
  *&v172 = &v166 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v166 - v8;
  __chkstk_darwin(v10);
  v12 = &v166 - v11;
  *&v13 = COERCE_DOUBLE(type metadata accessor for FloatingPointRoundingRule());
  v186 = *(v13 - 8);
  v187 = *&v13;
  __chkstk_darwin(v13);
  v15 = &v166 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for AccountDetailCollectionViewCell();
  v188.receiver = v0;
  v188.super_class = v16;
  objc_msgSendSuper2(&v188, "layoutSubviews");
  LayoutMarginsAware<>.layoutFrame.getter();
  Width = CGRectGetWidth(v189);
  v18 = [v0 traitCollection];
  LODWORD(v19) = UITraitCollection.prefersAccessibilityLayouts.getter();

  v20 = OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_accessoryView;
  v21 = *&v1[OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_accessoryView];
  if (v21)
  {
    LODWORD(v182) = [v21 isHidden] ^ 1;
  }

  else
  {
    LODWORD(v182) = 0;
  }

  v173 = *&v12;
  v22 = ArtworkView.image.getter();
  v23 = v22;
  if (v22)
  {
  }

  v180 = *&v1[OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_subtitleLabel];
  v24 = [*&v180 text];
  v25 = v24;
  if (v24)
  {
  }

  v181 = v25;
  v26 = v1[OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_imageMarginRight + 8];
  v184 = v19;
  v185 = v23;
  if (v26)
  {
    v27 = 8.0;
    if (v23)
    {
      goto LABEL_10;
    }

LABEL_16:
    v30 = 0.0;
    goto LABEL_17;
  }

  v27 = *&v1[OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_imageMarginRight];
  if (!v23)
  {
    goto LABEL_16;
  }

LABEL_10:
  v28 = COERCE_DOUBLE(sub_1006C501C());
  v30 = 0.0;
  if (v31)
  {
LABEL_17:
    v40 = 0.0;
    v32 = 0.0;
    v33 = 0.0;
    goto LABEL_18;
  }

  v32 = v28;
  v33 = v29;
  if (v19)
  {
    if (qword_10096EDF8 != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for StaticDimension();
    sub_1000056A8(v34, qword_100992330);
    v19 = *&v1[OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_titleLabel];
    static Dimensions.defaultRoundingRule.getter();
    v35 = [v19 traitCollection];
    StaticDimension.value(compatibleWith:rounded:)();
    v37 = v36;

    [v19 firstBaselineFromTop];
    v39 = v38;
    (*(*&v186 + 8))(v15, COERCE_DOUBLE(*&v187));
    v40 = v37 - v39;
    LOBYTE(v19) = v184;
  }

  else
  {
    LayoutMarginsAware<>.layoutFrame.getter();
    v40 = CGRectGetMidY(v191) + v33 * -0.5;
  }

  LayoutMarginsAware<>.layoutFrame.getter();
  MinX = CGRectGetMinX(v192);
  v30 = MinX;
  if ((v19 & 1) == 0)
  {
    v77 = v40;
    v78 = v32;
    v79 = v33;
    Width = Width - (v27 + CGRectGetWidth(*&MinX));
  }

LABEL_18:
  LayoutMarginsAware<>.layoutFrame.getter();
  CGRect.withLayoutDirection(in:relativeTo:)();
  ArtworkView.frame.setter();
  v177 = v32;
  v175 = v40;
  v174 = v30;
  if (v19)
  {
    ArtworkView.frame.getter();
    MaxY = CGRectGetMaxY(v190);
    if (qword_10096EDF8 != -1)
    {
      swift_once();
    }

    v42 = type metadata accessor for StaticDimension();
    sub_1000056A8(v42, qword_100992330);
    v43 = *&v1[OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_titleLabel];
    static Dimensions.defaultRoundingRule.getter();
    v44 = [v43 traitCollection];
    StaticDimension.value(compatibleWith:rounded:)();
    v46 = v45;

    [v43 firstBaselineFromTop];
    v48 = v47;
    v49 = *(*&v186 + 8);
    v49(v15, *&v187);
    v50 = MaxY + v46 - v48;
  }

  else
  {
    if (qword_10096EDF8 != -1)
    {
      swift_once();
    }

    v51 = type metadata accessor for StaticDimension();
    sub_1000056A8(v51, qword_100992330);
    v43 = *&v1[OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_titleLabel];
    static Dimensions.defaultRoundingRule.getter();
    v52 = [v43 traitCollection];
    StaticDimension.value(compatibleWith:rounded:)();
    v54 = v53;

    [v43 firstBaselineFromTop];
    v56 = v55;
    v49 = *(*&v186 + 8);
    v49(v15, *&v187);
    v50 = v54 - v56;
  }

  v183 = v50;
  v57 = &selRef_setRequiresColorStatistics_;
  v58 = v1[OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_accessoryMargin + 8] == 1;
  v176 = v33;
  if (v58)
  {
    v59 = 16.0;
    if (LOBYTE(v182))
    {
      goto LABEL_30;
    }

    v182 = 16.0;
LABEL_35:
    LODWORD(v179) = 1;
    v75 = 0.0;
    v172 = 0.0;
    v171 = 0.0;
    v67 = 0.0;
    v74 = v180;
    goto LABEL_60;
  }

  v59 = *&v1[OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_accessoryMargin];
  if (!LODWORD(v182))
  {
    v182 = *&v1[OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_accessoryMargin];
    goto LABEL_35;
  }

LABEL_30:
  v168 = v43;
  v60 = *&v1[v20];
  v182 = v59;
  if (!v60)
  {
    LODWORD(v179) = 1;
    v75 = 0.0;
    v172 = 0.0;
    v171 = 0.0;
    v67 = 0.0;
    v43 = v168;
    v74 = v180;
    goto LABEL_60;
  }

  v166 = v49;
  v61 = v60;
  LayoutMarginsAware<>.layoutFrame.getter();
  v167 = v61;
  [v61 sizeThatFits:{v62, v63}];
  v65 = v64;
  v67 = v66;
  v68 = OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_accessory;
  swift_beginAccess();
  v69 = *&v173;
  v70 = v179;
  swift_storeEnumTagMultiPayload();
  (*(v2 + 56))(v69, 0, 1, v70);
  v71 = *(v170 + 48);
  v170 = v68;
  v72 = *&v171;
  sub_1006C6130(&v1[v68], *&v171);
  sub_1006C6130(v69, v72 + v71);
  v73 = *(v2 + 48);
  if (v73(v72, 1, v70) == 1)
  {
    sub_10002B894(v69, &qword_100984340);
    if (v73(v72 + v71, 1, v70) == 1)
    {
      sub_10002B894(v72, &qword_100984340);
      v43 = v168;
      v74 = v180;
LABEL_44:
      v83 = [v1 traitCollection];
      _UIAccessibilityContentSizeCategoryImageAdjustingScaleFactorForTraitCollection();

      CGSize.scaled(_:)();
      v65 = v84;
      v67 = v85;
      goto LABEL_45;
    }

LABEL_42:
    sub_10002B894(v72, &qword_100984348);
    v80 = &selRef__setDefaultAttributes_;
    v43 = v168;
    v74 = v180;
    goto LABEL_46;
  }

  sub_1006C6130(v72, v9);
  if (v73(v72 + v71, 1, v70) == 1)
  {
    sub_10002B894(*&v173, &qword_100984340);
    sub_1000C7C80(v9);
    goto LABEL_42;
  }

  v81 = v169;
  sub_1000561D8(v72 + v71, v169);
  v82 = sub_1000C6830(v9, v81);
  sub_1000C7C80(v81);
  sub_10002B894(*&v173, &qword_100984340);
  sub_1000C7C80(v9);
  sub_10002B894(v72, &qword_100984340);
  v43 = v168;
  v74 = v180;
  if (v82)
  {
    goto LABEL_44;
  }

LABEL_45:
  v80 = &selRef__setDefaultAttributes_;
LABEL_46:
  LayoutMarginsAware<>.layoutFrame.getter();
  v75 = CGRectGetMaxX(v193) - v65;
  v86 = *&v172;
  sub_1006C6130(&v1[v170], *&v172);
  v87 = v73(v86, 1, v179);
  v180 = v65;
  if (v87 == 1)
  {
    sub_10002B894(v86, &qword_100984340);
    v49 = v166;
LABEL_50:
    [v1 v80[378]];
    x = v195.origin.x;
    y = v195.origin.y;
    v92 = v195.size.width;
    v93 = v27;
    v94 = v75;
    v95 = Width;
    height = v195.size.height;
    CGRectGetMidX(v195);
    v196.origin.x = x;
    v196.origin.y = y;
    v59 = v182;
    v196.size.width = v92;
    v196.size.height = height;
    Width = v95;
    v75 = v94;
    v27 = v93;
    v89 = round(CGRectGetMidY(v196) + v67 * -0.5);
    goto LABEL_51;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_1000C7C80(v86);
  v49 = v166;
  if (EnumCaseMultiPayload != 5)
  {
    goto LABEL_50;
  }

  LayoutMarginsAware<>.layoutFrame.getter();
  v89 = v183 + CGRectGetMinY(v194);
LABEL_51:
  LayoutMarginsAware<>.layoutFrame.getter();
  v97 = CGRectGetWidth(v197);
  if (v180 >= v97)
  {
    v98 = v97;
  }

  else
  {
    v98 = v180;
  }

  LayoutMarginsAware<>.layoutFrame.getter();
  CGRect.withLayoutDirection(in:relativeTo:)();
  v99 = v167;
  [v167 setFrame:?];
  v198.origin.x = v75;
  v198.origin.y = v89;
  v198.size.width = v98;
  v198.size.height = v67;
  Width = Width - (v59 + CGRectGetWidth(v198));
  v100 = *&v1[OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_secondaryAccessoryView];
  if (v100)
  {
    v101 = v100;
    LayoutMarginsAware<>.layoutFrame.getter();
    [v101 sizeThatFits:{v102, v103}];
    v105 = v104;
    v107 = v106;
    v199.origin.x = v75;
    v199.origin.y = v89;
    v199.size.width = v98;
    v199.size.height = v67;
    v180 = CGRectGetMinX(v199);
    [v1 v80[378]];
    v108 = v200.origin.x;
    v109 = v27;
    v110 = Width;
    v111 = v200.origin.y;
    v112 = v200.size.width;
    v113 = v200.size.height;
    CGRectGetMidX(v200);
    v201.origin.x = v108;
    v201.origin.y = v111;
    v114 = v110;
    v27 = v109;
    v201.size.width = v112;
    v201.size.height = v113;
    v115 = round(CGRectGetMidY(v201) + v107 * -0.5);
    LayoutMarginsAware<>.layoutFrame.getter();
    v116 = CGRectGetWidth(v202);
    if (v105 >= v116)
    {
      v117 = v116;
    }

    else
    {
      v117 = v105;
    }

    v118 = v182;
    v75 = v180 - v105 - v182;
    LayoutMarginsAware<>.layoutFrame.getter();
    CGRect.withLayoutDirection(in:relativeTo:)();
    v57 = &selRef_setRequiresColorStatistics_;
    [v101 setFrame:?];
    v203.origin.x = v75;
    v172 = v115;
    v203.origin.y = v115;
    v171 = v117;
    v203.size.width = v117;
    v203.size.height = v107;
    v119 = CGRectGetWidth(v203);

    LODWORD(v179) = 0;
    Width = v114 - (v118 + v119);
    v67 = v107;
  }

  else
  {
    v171 = v98;
    v172 = v89;

    LODWORD(v179) = 0;
    v57 = &selRef_setRequiresColorStatistics_;
  }

LABEL_60:
  v173 = v75;
  v180 = v67;
  LayoutMarginsAware<>.layoutFrame.getter();
  [v43 v57[22]];
  v121 = v120;
  v123 = v122;
  v124 = v57;
  if (qword_10096EE10 != -1)
  {
    swift_once();
  }

  v125 = v185 == 0;
  v126 = type metadata accessor for StaticDimension();
  sub_1000056A8(v126, qword_100992378);
  static Dimensions.defaultRoundingRule.getter();
  v127 = [*&v74 traitCollection];
  StaticDimension.value(compatibleWith:rounded:)();
  v129 = v128;

  [*&v74 firstBaselineFromTop];
  v131 = v130;
  v49(v15, *&v187);
  v132 = v129 - v131;
  LayoutMarginsAware<>.layoutFrame.getter();
  [*&v74 v124[22]];
  v135 = v134;
  v136 = v133;
  v186 = v132;
  v137 = v181;
  if (v181)
  {
    v138 = v123 + v132 + v133;
  }

  else
  {
    v138 = v123;
  }

  LayoutMarginsAware<>.layoutFrame.getter();
  v139 = (CGRectGetHeight(v206) - v138) * 0.5;
  v140 = v184;
  if (v184 & 1 | (v139 <= v183))
  {
    v141 = v183;
  }

  else
  {
    v141 = v139;
  }

  if (Width >= v121)
  {
    v142 = v121;
  }

  else
  {
    v142 = Width;
  }

  v187 = Width;
  v178 = v27;
  if ((v125 | v184))
  {
    LayoutMarginsAware<>.layoutFrame.getter();
    v143 = CGRectGetMinX(v207);
  }

  else
  {
    v208.origin.x = v174;
    v208.origin.y = v175;
    v208.size.width = v177;
    v208.size.height = v176;
    v143 = v27 + CGRectGetMaxX(v208);
  }

  LayoutMarginsAware<>.layoutFrame.getter();
  MinY = CGRectGetMinY(v209);
  v183 = v141;
  v145 = v141 + MinY;
  LayoutMarginsAware<>.layoutFrame.getter();
  CGRect.withLayoutDirection(in:relativeTo:)();
  [v43 setFrame:?];
  if (v137)
  {
    [*&v74 setHidden:0];
    if (v187 < v135)
    {
      v135 = v187;
    }

    v210.origin.x = v143;
    v210.origin.y = v145;
    v146 = v142;
    v210.size.width = v142;
    v210.size.height = v123;
    v147 = CGRectGetMinX(v210);
    [v43 lastBaselineMaxY];
    v149 = v186 + v148;
  }

  else
  {
    v146 = v142;
    [*&v74 setHidden:1];
    v147 = 0.0;
    v149 = 0.0;
    v135 = 0.0;
    v136 = 0.0;
  }

  LayoutMarginsAware<>.layoutFrame.getter();
  CGRect.withLayoutDirection(in:relativeTo:)();
  [*&v74 setFrame:?];
  if (v140)
  {
    v150 = v146;
  }

  else
  {
    v211.origin.x = v147;
    v211.origin.y = v149;
    v211.size.width = v135;
    v211.size.height = v136;
    v151 = CGRectGetWidth(v211);
    v212.origin.x = v143;
    v212.origin.y = v145;
    v150 = v146;
    v212.size.width = v146;
    v212.size.height = v123;
    v152 = CGRectGetWidth(v212);
    if (v151 > v152)
    {
      v152 = v151;
    }

    if (v185)
    {
      v152 = v178 + v152;
    }

    v187 = v187 - v152;
  }

  v153 = *&v1[OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_detailLabel];
  v154 = [v153 text];
  if (v154)
  {
    v155 = v154;
    v156 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v158 = v157;

    v159 = HIBYTE(v158) & 0xF;
    if ((v158 & 0x2000000000000000) == 0)
    {
      v159 = v156 & 0xFFFFFFFFFFFFLL;
    }

    if (v159)
    {
      if (v140)
      {
        v160 = v187;
      }

      else
      {
        v160 = v187 - v182;
      }

      LayoutMarginsAware<>.layoutFrame.getter();
      [v153 measurementsWithFitting:v1 in:{v160, CGRectGetHeight(v213)}];
      if (v140)
      {
        v214.origin.x = v143;
        v214.origin.y = v145;
        v214.size.width = v150;
        v214.size.height = v123;
        CGRectGetMinX(v214);
        [v43 lastBaselineMaxY];
      }

      else
      {
        if (v179)
        {
          LayoutMarginsAware<>.layoutFrame.getter();
          CGRectGetMaxX(v215);
        }

        else
        {
          v216.origin.x = v173;
          v216.origin.y = v172;
          v216.size.width = v171;
          v216.size.height = v180;
          CGRectGetMinX(v216);
        }

        LayoutMarginsAware<>.layoutFrame.getter();
        CGRectGetMinY(v217);
      }

      LayoutMarginsAware<>.layoutFrame.getter();
      CGRect.withLayoutDirection(in:relativeTo:)();
      [v153 setFrame:?];
    }
  }

  if (v1[OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_showTopSeparatorView] == 1)
  {
    LayoutMarginsAware<>.layoutFrame.getter();
    CGRectGetMinX(v218);
    [v1 bounds];
    CGRectGetMinY(v219);
    LayoutMarginsAware<>.layoutFrame.getter();
    CGRectGetWidth(v220);
    v161 = [v1 traitCollection];
    static Separator.thickness(compatibleWith:)();

    if ((v1[OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_topSeparatorViewInsets + 32] & 1) == 0)
    {
      [v1 bounds];
    }

    v162 = *&v1[OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_topSeparatorView];
    LayoutMarginsAware<>.layoutFrame.getter();
    CGRect.withLayoutDirection(in:relativeTo:)();
    [v162 setFrame:?];
  }

  if (v1[OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_showBottomSeparatorView] == 1)
  {
    LayoutMarginsAware<>.layoutFrame.getter();
    CGRectGetMinX(v221);
    [v1 bounds];
    CGRectGetMaxY(v222);
    v163 = [v1 traitCollection];
    static Separator.thickness(compatibleWith:)();

    LayoutMarginsAware<>.layoutFrame.getter();
    CGRectGetWidth(v223);
    v164 = [v1 traitCollection];
    static Separator.thickness(compatibleWith:)();

    if ((v1[OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_bottomSeparatorViewInsets + 32] & 1) == 0)
    {
      [v1 bounds];
    }

    v165 = *&v1[OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_bottomSeparatorView];
    LayoutMarginsAware<>.layoutFrame.getter();
    CGRect.withLayoutDirection(in:relativeTo:)();
    [v165 setFrame:?];
  }
}

double sub_1006C40EC(double a1)
{
  v2 = v1;
  v4 = type metadata accessor for Accessory();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v60 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = (&v60 - v8);
  __chkstk_darwin(v10);
  v12 = &v60 - v11;
  v13 = sub_10002849C(&qword_100984340);
  __chkstk_darwin(v13 - 8);
  v61 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v60 - v16;
  __chkstk_darwin(v18);
  v74 = &v60 - v19;
  __chkstk_darwin(v20);
  v76 = &v60 - v21;
  v71 = ArtworkView.image.getter();
  v22 = v1[OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_shouldResizeImage];
  if (v22 == 1)
  {
    ArtworkView.imageSize.getter();
  }

  v23 = [*&v1[OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_titleLabel] text];
  if (v23)
  {
    v24 = v23;
    v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v72 = v25;
  }

  else
  {
    v63 = 0;
    v72 = 0;
  }

  LODWORD(v65) = v2[OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_shouldShowFullTitle];
  v26 = [*&v2[OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_subtitleLabel] text];
  if (v26)
  {
    v27 = v26;
    v62 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v75 = v28;
  }

  else
  {
    v62 = 0;
    v75 = 0;
  }

  v29 = [*&v2[OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_detailLabel] text];
  if (v29)
  {
    v30 = v29;
    v64 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v68 = v31;
  }

  else
  {
    v64 = 0;
    v68 = 0;
  }

  v32 = OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_accessory;
  swift_beginAccess();
  sub_1006C6130(&v2[v32], v76);
  v33 = OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_secondaryAccessory;
  swift_beginAccess();
  sub_1006C6130(&v2[v33], v74);
  v66 = v2[OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_showTopSeparatorView];
  v67 = v2[OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_showBottomSeparatorView];
  [v2 layoutMargins];
  v69 = v34;
  v35 = [v2 traitCollection];
  v36 = UITraitCollection.prefersAccessibilityLayouts.getter();

  v73 = v36;
  v70 = a1;
  if ((v22 & 1) == 0 && v71)
  {
    [v71 size];
  }

  v37 = [v2 traitCollection];
  sub_1006C6130(v76, v17);
  v38 = *(v5 + 48);
  if (v38(v17, 1, v4) == 1)
  {
    v39 = v17;
  }

  else
  {
    sub_1000561D8(v17, v12);
    sub_1000C571C(v37);
    swift_storeEnumTagMultiPayload();
    v40 = sub_1000C6830(v12, v9);
    sub_1000C7C80(v9);
    if (v40)
    {
      _UIAccessibilityContentSizeCategoryImageAdjustingScaleFactorForTraitCollection();
    }

    v41 = v61;
    sub_1006C6130(v74, v61);
    if (v38(v41, 1, v4) != 1)
    {
      v42 = v41;
      v43 = v60;
      sub_1000561D8(v42, v60);
      sub_1000C571C(v37);
      sub_1000C7C80(v43);
      sub_1000C7C80(v12);
      goto LABEL_23;
    }

    sub_1000C7C80(v12);
    v39 = v41;
  }

  sub_10002B894(v39, &qword_100984340);
LABEL_23:
  if ((v65 & 1) == 0 && (UITraitCollection.prefersAccessibilityLayouts.getter() & 1) == 0)
  {
    Optional<A>.isNilOrEmpty.getter();
  }

  v65 = v37;
  if (qword_10096EDF0 != -1)
  {
    swift_once();
  }

  v44 = type metadata accessor for FontUseCase();
  v45 = sub_1000056A8(v44, qword_100992318);
  v46 = type metadata accessor for Feature();
  v78 = v46;
  v47 = sub_100085D7C();
  v79 = v47;
  v48 = sub_1000056E0(v77);
  v49 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v50 = *(*(v46 - 8) + 104);
  v50(v48, enum case for Feature.measurement_with_labelplaceholder(_:), v46);
  isFeatureEnabled(_:)();
  sub_100007000(v77);
  v63 = v45;
  static LabelPlaceholderCompatibility.measurements(text:fontUseCase:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:fitting:in:shouldUseLabelPlaceholder:)();
  if (qword_10096EDF8 != -1)
  {
    swift_once();
  }

  v51 = type metadata accessor for StaticDimension();
  sub_1000056A8(v51, qword_100992330);
  AnyDimension.topMargin(from:in:)();
  if (v75)
  {
    if (qword_10096EE08 != -1)
    {
      swift_once();
    }

    sub_1000056A8(v44, qword_100992360);
    v78 = v46;
    v79 = v47;
    v52 = sub_1000056E0(v77);
    v50(v52, v49, v46);
    isFeatureEnabled(_:)();
    sub_100007000(v77);
    static LabelPlaceholderCompatibility.measurements(text:fontUseCase:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:fitting:in:shouldUseLabelPlaceholder:)();
    if (qword_10096EE10 != -1)
    {
      swift_once();
    }

    sub_1000056A8(v51, qword_100992378);
    AnyDimension.topMargin(from:in:)();
    v53 = v68;
    if (qword_10096EE18 != -1)
    {
      swift_once();
    }

    sub_1000056A8(v51, qword_100992390);
    AnyDimension.bottomMargin(from:in:)();
  }

  else
  {
    if (qword_10096EE00 != -1)
    {
      swift_once();
    }

    sub_1000056A8(v51, qword_100992348);
    AnyDimension.bottomMargin(from:in:)();
    v53 = v68;
  }

  if ((v73 & (v53 != 0)) != 1)
  {
    goto LABEL_50;
  }

  v54 = HIBYTE(v53) & 0xF;
  if ((v53 & 0x2000000000000000) == 0)
  {
    v54 = v64 & 0xFFFFFFFFFFFFLL;
  }

  if (v54)
  {
    v78 = v46;
    v79 = v47;
    v55 = sub_1000056E0(v77);
    v50(v55, v49, v46);
    isFeatureEnabled(_:)();
    sub_100007000(v77);
    static LabelPlaceholderCompatibility.measurements(text:fontUseCase:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:fitting:in:shouldUseLabelPlaceholder:)();
    if (qword_10096EE10 != -1)
    {
      swift_once();
    }

    sub_1000056A8(v51, qword_100992378);
    AnyDimension.topMargin(from:in:)();
    v56 = v65;
    if (qword_10096EE18 != -1)
    {
      swift_once();
    }

    sub_1000056A8(v51, qword_100992390);
    AnyDimension.bottomMargin(from:in:)();
  }

  else
  {
LABEL_50:
    v56 = v65;
  }

  if (v66)
  {
    v57 = [v2 traitCollection];
    static Separator.thickness(compatibleWith:)();
  }

  if (v67)
  {
    v58 = [v2 traitCollection];
    static Separator.thickness(compatibleWith:)();
  }

  else
  {
  }

  sub_10002B894(v74, &qword_100984340);
  sub_10002B894(v76, &qword_100984340);
  return v70;
}

BOOL sub_1006C4E1C()
{
  v1 = v0;
  v2 = [v0 traitCollection];
  v3 = UITraitCollection.prefersAccessibilityLayouts.getter();

  if (v3)
  {
    v4 = *&v1[OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_titleLabel];
    v5 = [v4 numberOfLines] != 0;
    [v4 setNumberOfLines:0];
    [*&v1[OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_subtitleLabel] setNumberOfLines:0];
    v6 = 0;
LABEL_16:
    [*&v1[OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_detailLabel] setNumberOfLines:v6];
    return v5;
  }

  v7 = v1[OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_shouldShowFullTitle];
  v8 = *&v1[OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_subtitleLabel];
  v9 = [v8 text];
  if (v9)
  {
    v10 = v9;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v11 = [v1 traitCollection];
  v12 = v11;
  if (v7)
  {

    v13 = 0;
  }

  else if (UITraitCollection.prefersAccessibilityLayouts.getter())
  {

    v13 = 3;
  }

  else
  {
    v14 = Optional<A>.isNilOrEmpty.getter();

    if (v14)
    {
      v13 = 2;
    }

    else
    {
      v13 = 1;
    }
  }

  v15 = *&v1[OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_titleLabel];
  v16 = [v15 numberOfLines];
  v5 = v13 != v16;
  if (v13 != v16)
  {
    [v15 setNumberOfLines:v13];
  }

  if ([v8 numberOfLines] != 1)
  {
    [v8 setNumberOfLines:1];
    v6 = 1;
    v5 = 1;
    goto LABEL_16;
  }

  return v5;
}

void *sub_1006C501C()
{
  result = ArtworkView.image.getter();
  v2 = result;
  if (result)
  {
    [result size];
    v4 = v3;

    if (*(v0 + OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_shouldResizeImage) == 1)
    {
      v5 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleBody];
      ArtworkView.imageSize.getter();
      [v5 scaledValueForValue:?];
      v7 = v6;

      v8 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleBody];
      ArtworkView.imageSize.getter();
      [v8 scaledValueForValue:v9];

      if (v7 <= 56.0)
      {
        v10 = v7;
      }

      else
      {
        v10 = 56.0;
      }

      return *&v10;
    }

    else
    {
      return v4;
    }
  }

  return result;
}

void sub_1006C51F4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v36 = a2;
  v5 = type metadata accessor for Accessory();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v35 = (&v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_10002849C(&qword_100984340);
  __chkstk_darwin(v8 - 8);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v37 = &v35 - v12;
  __chkstk_darwin(v13);
  v15 = &v35 - v14;
  v16 = sub_10002849C(&qword_100984348);
  v17 = v16 - 8;
  __chkstk_darwin(v16);
  v19 = &v35 - v18;
  v20 = OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_accessory;
  swift_beginAccess();
  v21 = *(v17 + 56);
  v38 = a1;
  sub_1006C6130(a1, v19);
  sub_1006C6130(&v3[v20], &v19[v21]);
  v22 = *(v6 + 48);
  if (v22(v19, 1, v5) == 1)
  {
    if (v22(&v19[v21], 1, v5) == 1)
    {
      sub_10002B894(v19, &qword_100984340);
      return;
    }
  }

  else
  {
    sub_1006C6130(v19, v15);
    if (v22(&v19[v21], 1, v5) != 1)
    {
      v30 = &v19[v21];
      v31 = v35;
      sub_1000561D8(v30, v35);
      v32 = sub_1000C6830(v15, v31);
      sub_1000C7C80(v31);
      sub_1000C7C80(v15);
      sub_10002B894(v19, &qword_100984340);
      if (v32)
      {
        return;
      }

      goto LABEL_7;
    }

    sub_1000C7C80(v15);
  }

  sub_10002B894(v19, &qword_100984348);
LABEL_7:
  v24 = v37;
  v23 = v38;
  sub_1006C6130(v38, v37);
  swift_beginAccess();
  sub_1002BAFE4(v24, &v3[v20]);
  swift_endAccess();
  sub_1006C6130(v23, v10);
  if (v22(v10, 1, v5) == 1)
  {
    sub_10002B894(v10, &qword_100984340);
    v25 = 0;
  }

  else
  {
    sub_1000C4450(v36);
    v25 = v26;
    sub_1000C7C80(v10);
  }

  v27 = OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_accessoryView;
  v28 = *&v3[OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_accessoryView];
  if (v28)
  {
    [v28 removeFromSuperview];
    v29 = *&v3[v27];
  }

  else
  {
    v29 = 0;
  }

  *&v3[v27] = v25;
  v33 = v25;

  if (v25)
  {
    [v3 addSubview:v33];
  }

  if (*&v3[v27])
  {
    objc_opt_self();
    v34 = swift_dynamicCastObjCClass();
    if (v34)
    {
      [v34 addTarget:v3 action:"didTapWithAccessoryView:" forControlEvents:64];
    }
  }

  [v3 setNeedsLayout];
}

void sub_1006C5624(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v35 = a2;
  v5 = type metadata accessor for Accessory();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v34 = (&v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_10002849C(&qword_100984340);
  __chkstk_darwin(v8 - 8);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v36 = &v34 - v12;
  __chkstk_darwin(v13);
  v15 = &v34 - v14;
  v16 = sub_10002849C(&qword_100984348);
  v17 = v16 - 8;
  __chkstk_darwin(v16);
  v19 = &v34 - v18;
  v20 = OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_secondaryAccessory;
  swift_beginAccess();
  v21 = *(v17 + 56);
  v37 = a1;
  sub_1006C6130(a1, v19);
  sub_1006C6130(&v3[v20], &v19[v21]);
  v22 = *(v6 + 48);
  if (v22(v19, 1, v5) == 1)
  {
    if (v22(&v19[v21], 1, v5) == 1)
    {
      sub_10002B894(v19, &qword_100984340);
      return;
    }
  }

  else
  {
    sub_1006C6130(v19, v15);
    if (v22(&v19[v21], 1, v5) != 1)
    {
      v30 = &v19[v21];
      v31 = v34;
      sub_1000561D8(v30, v34);
      v32 = sub_1000C6830(v15, v31);
      sub_1000C7C80(v31);
      sub_1000C7C80(v15);
      sub_10002B894(v19, &qword_100984340);
      if (v32)
      {
        return;
      }

      goto LABEL_7;
    }

    sub_1000C7C80(v15);
  }

  sub_10002B894(v19, &qword_100984348);
LABEL_7:
  v24 = v36;
  v23 = v37;
  sub_1006C6130(v37, v36);
  swift_beginAccess();
  sub_1002BAFE4(v24, &v3[v20]);
  swift_endAccess();
  sub_1006C6130(v23, v10);
  if (v22(v10, 1, v5) == 1)
  {
    sub_10002B894(v10, &qword_100984340);
    v25 = 0;
  }

  else
  {
    sub_1000C4450(v35);
    v25 = v26;
    sub_1000C7C80(v10);
  }

  v27 = OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_secondaryAccessoryView;
  v28 = *&v3[OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_secondaryAccessoryView];
  if (v28)
  {
    [v28 removeFromSuperview];
    v29 = *&v3[v27];
  }

  else
  {
    v29 = 0;
  }

  *&v3[v27] = v25;
  v33 = v25;

  if (v25)
  {
    [v3 addSubview:v33];
  }

  [v3 setNeedsLayout];
}

double sub_1006C5AE4()
{
  v1 = v0;
  v2 = sub_10002849C(&qword_100984340);
  __chkstk_darwin(v2 - 8);
  v4 = &v20 - v3;
  v5 = type metadata accessor for AccountDetailCollectionViewCell();
  v21.receiver = v0;
  v21.super_class = v5;
  objc_msgSendSuper2(&v21, "prepareForReuse");
  ArtworkView.image.setter();
  [v0 setNeedsLayout];
  v6 = &v0[OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_imageMarginRight];
  *v6 = 0;
  v6[8] = 1;
  v7 = *&v0[OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_titleLabel];
  [v7 setText:0];
  [v0 setNeedsLayout];
  v8 = v0[OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_shouldShowFullTitle];
  v0[OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_shouldShowFullTitle] = 1;
  if ((v8 & 1) == 0)
  {
    [v0 setNeedsLayout];
  }

  v9 = *&v0[OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_subtitleLabel];
  [v9 setText:0];
  if (sub_1006C4E1C())
  {
    [v0 setNeedsLayout];
  }

  [*&v0[OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_detailLabel] setText:0];
  v10 = type metadata accessor for Accessory();
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  v11 = OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_accessory;
  swift_beginAccess();
  sub_1002BAFE4(v4, &v1[v11]);
  swift_endAccess();
  sub_1006C61A0(0);
  v12 = &v1[OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_accessoryMargin];
  *v12 = 0;
  v12[8] = 1;
  v13 = &v1[OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_accessoryAction];
  v14 = *&v1[OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_accessoryAction];
  *v13 = 0;
  *(v13 + 1) = 0;
  sub_10001F63C(v14);
  sub_100005744(0, &qword_100970180);
  v15 = static UIColor.primaryText.getter();
  [v7 setTextColor:v15];

  v16 = static UIColor.secondaryText.getter();
  [v9 setTextColor:v16];

  v1[OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_showTopSeparatorView] = 0;
  [*&v1[OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_topSeparatorView] setHidden:1];
  v17 = &v1[OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_topSeparatorViewInsets];
  *v17 = 0u;
  *(v17 + 1) = 0u;
  v17[32] = 1;
  v1[OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_showBottomSeparatorView] = 0;
  [*&v1[OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_bottomSeparatorView] setHidden:1];
  v18 = &v1[OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_bottomSeparatorViewInsets];
  result = 0.0;
  *v18 = 0u;
  *(v18 + 1) = 0u;
  v18[32] = 1;
  return result;
}

id sub_1006C5E68()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AccountDetailCollectionViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for AccountDetailCollectionViewCell()
{
  result = qword_100992438;
  if (!qword_100992438)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1006C6030()
{
  sub_1002BAF8C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1006C6130(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&qword_100984340);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_1006C61A0(void *a1)
{
  v3 = OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_accessoryView;
  v4 = *&v1[OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_accessoryView];
  if (v4)
  {
    [v4 removeFromSuperview];
    v5 = *&v1[v3];
  }

  else
  {
    v5 = 0;
  }

  *&v1[v3] = a1;
  v6 = a1;

  if (a1)
  {
    [v1 addSubview:v6];
  }

  if (*&v1[v3])
  {
    objc_opt_self();
    v7 = swift_dynamicCastObjCClass();
    if (v7)
    {
      [v7 addTarget:v1 action:"didTapWithAccessoryView:" forControlEvents:64];
    }
  }

  return [v1 setNeedsLayout];
}

void sub_1006C6284()
{
  *(v0 + OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_shouldShowFullTitle) = 1;
  v1 = v0 + OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_imageMarginRight;
  *v1 = 0;
  *(v1 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_shouldResizeImage) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_accessoryView) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_secondaryAccessoryView) = 0;
  v2 = OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_accessory;
  v3 = type metadata accessor for Accessory();
  v4 = *(*(v3 - 8) + 56);
  v4(v0 + v2, 1, 1, v3);
  v4(v0 + OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_secondaryAccessory, 1, 1, v3);
  v5 = v0 + OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_accessoryMargin;
  *v5 = 0;
  *(v5 + 8) = 1;
  v6 = OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_topSeparatorView;
  v7 = type metadata accessor for SeparatorView();
  *(v0 + v6) = [objc_allocWithZone(v7) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v8 = v0 + OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_topSeparatorViewInsets;
  *v8 = 0u;
  *(v8 + 16) = 0u;
  *(v8 + 32) = 1;
  *(v0 + OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_showTopSeparatorView) = 0;
  v9 = OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_bottomSeparatorView;
  *(v0 + v9) = [objc_allocWithZone(v7) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v10 = v0 + OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_bottomSeparatorViewInsets;
  *v10 = 0u;
  *(v10 + 16) = 0u;
  *(v10 + 32) = 1;
  *(v0 + OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_showBottomSeparatorView) = 0;
  v11 = (v0 + OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_accessoryAction);
  *v11 = 0;
  v11[1] = 0;
  v12 = OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_backgroundSelectionView;
  *(v0 + v12) = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *(v0 + OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_isSelectable) = 1;
  *(v0 + OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_disabled) = 0;
  v13 = (v0 + OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_selectionHandler);
  *v13 = 0;
  v13[1] = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_tapGestureRecognizer) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id sub_1006C64D8(uint64_t a1, uint64_t a2)
{
  v5 = *&v2[OBJC_IVAR____TtC8AppStore36AdvertSearchResultCollectionViewCell_advertsContentView];
  if (a1)
  {
    v6 = objc_opt_self();
    v7 = v5;
    v8 = [v6 clearColor];
    [v7 setBackgroundColor:v8];
  }

  else
  {
    v9 = v5;
  }

  sub_10027B8BC(a1, a2);
  [v5 setNeedsLayout];

  return [v2 setNeedsLayout];
}

unint64_t sub_1006C65C8(uint64_t a1, void (*a2)(char *, uint64_t, uint64_t), uint64_t a3, char *a4, double a5, double a6, double a7, double a8, double a9)
{
  v10 = v9;
  v250 = a3;
  v249 = a2;
  v18 = sub_10002849C(&qword_10097AE68);
  __chkstk_darwin(v18 - 8);
  v221 = &v214 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v214 - v21;
  v23 = sub_10002849C(&unk_100973A50);
  __chkstk_darwin(v23 - 8);
  v237 = &v214 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v238 = &v214 - v26;
  v27 = sub_10002849C(&qword_100982460);
  __chkstk_darwin(v27 - 8);
  v236 = &v214 - v28;
  v29 = type metadata accessor for VideoControls();
  __chkstk_darwin(v29 - 8);
  v220 = &v214 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v225 = &v214 - v32;
  __chkstk_darwin(v33);
  v231 = &v214 - v34;
  __chkstk_darwin(v35);
  v230 = &v214 - v36;
  v235 = type metadata accessor for VideoFillMode();
  v234 = *(v235 - 8);
  __chkstk_darwin(v235);
  v224 = &v214 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v229 = &v214 - v39;
  v240 = type metadata accessor for VideoConfiguration();
  v239 = *(v240 - 8);
  __chkstk_darwin(v240);
  v226 = &v214 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v41);
  v251 = &v214 - v42;
  v219 = type metadata accessor for ScreenshotDisplayConfiguration();
  v218 = *(v219 - 8);
  __chkstk_darwin(v219);
  v44 = &v214 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_10002849C(&unk_100973C90);
  __chkstk_darwin(v45 - 8);
  v222 = &v214 - v46;
  v233 = type metadata accessor for AspectRatio();
  v232 = *(v233 - 8);
  __chkstk_darwin(v233);
  v248 = &v214 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v246 = type metadata accessor for LockupMediaLayout.Metrics();
  v245 = *(v246 - 8);
  __chkstk_darwin(v246);
  v244 = &v214 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v264 = type metadata accessor for ScreenshotsDisplayStyle();
  v260 = *(v264 - 8);
  __chkstk_darwin(v264);
  v247 = &v214 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v50);
  v263 = &v214 - v51;
  __chkstk_darwin(v52);
  v255 = &v214 - v53;
  v265 = type metadata accessor for LockupMediaLayout.DisplayType();
  v54 = *(v265 - 8);
  __chkstk_darwin(v265);
  v216 = &v214 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v56);
  v223 = &v214 - v57;
  __chkstk_darwin(v58);
  v252 = &v214 - v59;
  __chkstk_darwin(v60);
  v228 = &v214 - v61;
  __chkstk_darwin(v62);
  v258 = &v214 - v63;
  v64 = sub_10002849C(&unk_1009732A0);
  __chkstk_darwin(v64 - 8);
  v217 = &v214 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v66);
  v254 = &v214 - v67;
  __chkstk_darwin(v68);
  v262 = &v214 - v69;
  v70 = &unk_1007B0B60;
  v71 = sub_10002849C(&unk_1009731E0);
  __chkstk_darwin(v71 - 8);
  v73 = &v214 - v72;
  [v9 setLayoutMargins:{a6, a7, a8, a9}];
  v74 = *&v9[OBJC_IVAR____TtC8AppStore30AdvertsSearchResultContentView_lockupView];
  *&v74[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_regularWidthColumnSpacing] = a5;
  [v74 setNeedsLayout];
  v75 = type metadata accessor for ItemLayoutContext();
  (*(*(v75 - 8) + 56))(v73, 1, 1, v75);
  v243 = v74;
  sub_100279F24(a1, v73, a4);
  sub_10002B894(v73, &unk_1009731E0);
  sub_100005744(0, &qword_100970180);
  v76 = static UIColor.defaultBackground.getter();
  [v10 setBackgroundColor:v76];

  v266 = a1;
  v77 = MixedMediaLockup.screenshots.getter();
  if (v77 >> 62)
  {
    v76 = v77;
    v78 = _CocoaArrayWrapper.endIndex.getter();
    v77 = v76;
  }

  else
  {
    v78 = *((v77 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v79 = v255;
  if (v78)
  {
    if ((v77 & 0xC000000000000001) != 0)
    {
      v76 = v77;
      v257 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((v77 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_78;
      }

      v76 = v77;
      v257 = *(v77 + 32);
    }
  }

  else
  {

    v257 = 0;
  }

  v242 = v10;
  v73 = *(v10 + OBJC_IVAR____TtC8AppStore30AdvertsSearchResultContentView_lockupMediaView);
  v256 = MixedMediaLockup.alignedRegionArtwork.getter();
  v10 = MixedMediaLockup.alignedRegionVideo.getter();
  v80 = MixedMediaLockup.trailers.getter();
  if (v80 >> 62)
  {
    v76 = v80;
    v81 = _CocoaArrayWrapper.endIndex.getter();
    v80 = v76;
  }

  else
  {
    v81 = *((v80 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v253 = a4;
  v261 = v54;
  if (v81)
  {
    if ((v80 & 0xC000000000000001) != 0)
    {
      v259 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((v80 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_80;
      }

      v259 = *(v80 + 32);
    }
  }

  else
  {

    v259 = 0;
  }

  sub_1006C9F8C(v262);
  v70 = MixedMediaLockup.alignedRegionArtwork.getter();
  v54 = MixedMediaLockup.alignedRegionVideo.getter();
  v82 = MixedMediaLockup.screenshots.getter();
  if (v82 >> 62)
  {
    v83 = v82;
    v84 = _CocoaArrayWrapper.endIndex.getter();
    v82 = v83;
    if (v84)
    {
LABEL_19:
      if ((v82 & 0xC000000000000001) == 0)
      {
        if (!*((v82 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_82;
        }

        v76 = *(v82 + 32);

        goto LABEL_22;
      }

LABEL_78:
      v76 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_22:

      goto LABEL_27;
    }
  }

  else if (*((v82 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_19;
  }

  v76 = 0;
LABEL_27:
  v82 = MixedMediaLockup.trailers.getter();
  if (!(v82 >> 62))
  {
    if (*((v82 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_29;
    }

LABEL_34:

    v85 = 0;
    goto LABEL_35;
  }

  v86 = v82;
  v87 = _CocoaArrayWrapper.endIndex.getter();
  v82 = v86;
  if (!v87)
  {
    goto LABEL_34;
  }

LABEL_29:
  if ((v82 & 0xC000000000000001) != 0)
  {
LABEL_80:
    v85 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_32;
  }

  if (!*((v82 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_82:
    __break(1u);
    goto LABEL_83;
  }

  v85 = *(v82 + 32);

LABEL_32:

LABEL_35:
  v227 = v22;
  MixedMediaLockup.screenshotsDisplayStyle.getter();
  v88 = ScreenshotsDisplayStyle.shouldShowScreenshots.getter();
  v241 = v44;
  if ((v88 & 1) == 0)
  {

    v255 = *(v260 + 8);
    (v255)(v79, v264);
    v93 = v261;
    v76 = v258;
    (*(v261 + 104))(v258, enum case for LockupMediaLayout.DisplayType.none(_:), v265);
    v70 = 0x10093E000;
    v44 = v257;
    goto LABEL_66;
  }

  v89 = v252;
  if (v54 | v70)
  {
    v94 = v228;
    AspectRatio.init(_:_:)();

    v255 = *(v260 + 8);
    (v255)(v79, v264);
    v93 = v261;
    v95 = v265;
    (*(v261 + 104))(v94, enum case for LockupMediaLayout.DisplayType.singleItemFill(_:), v265);
    v76 = v258;
    (*(v93 + 32))(v258, v94, v95);
    v70 = 0x10093E000;
    v44 = v257;
    v54 = v248;
    goto LABEL_67;
  }

  v90 = sub_1001B9B24(v76, v85, 0, 1);
  v54 = v90;
  v70 = v90 >> 62;
  if (v90 >> 62)
  {
    goto LABEL_130;
  }

  for (i = *((v90 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v250 = i;
    if (v76)
    {
      v92 = Screenshots.mediaPlatform.getter();
    }

    else
    {
      v92 = 0;
    }

    v96 = sub_1001B9E6C(v92);

    v215 = v10;
    LODWORD(v214) = v96;
    if (v76)
    {
      v97 = Screenshots.mediaPlatform.getter();
    }

    else
    {
      v97 = 0;
    }

    v98 = v260;
    v99 = v222;
    v100 = v264;
    (*(v260 + 16))(v222, v255, v264);
    (*(v98 + 56))(v99, 0, 1, v100);
    HIDWORD(v214) = sub_1001BA394(v97, v99);

    sub_10002B894(v99, &unk_100973C90);
    if (v70)
    {
      v101 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v101 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v10 = v215;
    v102 = v223;
    if (!v101)
    {

LABEL_57:
      v106 = enum case for LockupMediaLayout.DisplayType.fourUp(_:);
      v107 = v261;
      v108 = v265;
      v249 = *(v261 + 104);
      v249(v102, enum case for LockupMediaLayout.DisplayType.fourUp(_:), v265);
      v109 = LockupMediaLayout.DisplayType.numberOfViews.getter();
      v110 = *(v107 + 8);
      v110(v102, v108);
      if (((v250 >= v109) & BYTE4(v214)) != 0 || (v106 = enum case for LockupMediaLayout.DisplayType.threeUp(_:), v111 = v265, v249(v102, enum case for LockupMediaLayout.DisplayType.threeUp(_:), v265), v112 = LockupMediaLayout.DisplayType.numberOfViews.getter(), v110(v102, v111), ((v250 >= v112) & v214) != 0) || (v106 = enum case for LockupMediaLayout.DisplayType.twoUp(_:), v113 = v265, v249(v102, enum case for LockupMediaLayout.DisplayType.twoUp(_:), v265), v114 = LockupMediaLayout.DisplayType.numberOfViews.getter(), v110(v102, v113), v250 >= v114))
      {

        v120 = v255;
        v255 = *(v260 + 8);
        (v255)(v120, v264);
      }

      else
      {
        v106 = enum case for LockupMediaLayout.DisplayType.oneUp(_:);
        v115 = v265;
        v249(v102, enum case for LockupMediaLayout.DisplayType.oneUp(_:), v265);
        v116 = LockupMediaLayout.DisplayType.numberOfViews.getter();

        v110(v102, v115);
        v117 = v255;
        v255 = *(v260 + 8);
        (v255)(v117, v264);
        if (v250 != v116)
        {
          v118 = enum case for LockupMediaLayout.DisplayType.none(_:);
          v105 = v228;
          v119 = v228;
LABEL_64:
          v249(v119, v118, v265);
          v93 = v261;
          v70 = &StringUserDefaultsDebugSetting;
          v76 = v258;
          v44 = v257;
          v10 = v215;
          goto LABEL_65;
        }
      }

      v105 = v228;
      v119 = v228;
      v118 = v106;
      goto LABEL_64;
    }

    if ((v54 & 0xC000000000000001) != 0)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((v54 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_152;
      }
    }

    v103 = dispatch thunk of Artwork.isLandscape.getter();

    if ((v103 & 1) == 0)
    {
      goto LABEL_57;
    }

    v104 = v255;
    v255 = *(v260 + 8);
    (v255)(v104, v264);
    v93 = v261;
    v105 = v228;
    (*(v261 + 104))(v228, enum case for LockupMediaLayout.DisplayType.landscape(_:), v265);
    v70 = 0x10093E000;
    v76 = v258;
    v44 = v257;
LABEL_65:
    (*(v93 + 32))(v76, v105, v265);
LABEL_66:
    v54 = v248;
    v89 = v252;
LABEL_67:
    MixedMediaLockup.screenshotsDisplayStyle.getter();
    v268[3] = &type metadata for CGFloat;
    v268[4] = &protocol witness table for CGFloat;
    v268[0] = 0x4021000000000000;
    sub_10002C0AC(v268, v267);
    v121 = *(v93 + 16);
    v121(v89, v76, v265);
    v252 = v121;
    if (v10 | v256)
    {
      goto LABEL_85;
    }

    v82 = sub_1001B9B24(v44, v259, 0, 1);
    if (v82 >> 62)
    {
      break;
    }

    if (!*((v82 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_84;
    }

LABEL_70:
    if ((v82 & 0xC000000000000001) != 0)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_73;
    }

    if (*((v82 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {

LABEL_73:

      Artwork.size.getter();
      AspectRatio.init(_:_:)();

      goto LABEL_86;
    }

    __break(1u);
LABEL_130:
    ;
  }

LABEL_83:
  v76 = v82;
  v122 = _CocoaArrayWrapper.endIndex.getter();
  v82 = v76;
  if (v122)
  {
    goto LABEL_70;
  }

LABEL_84:

LABEL_85:
  AspectRatio.init(_:_:)();
LABEL_86:
  sub_100031660(v262, v254, &unk_1009732A0);
  v123 = v244;
  LockupMediaLayout.Metrics.init(interItemSpacing:displayType:mediaAspectRatio:boundingAspectRatio:)();
  sub_100007000(v268);
  v124 = OBJC_IVAR____TtC8AppStore15LockupMediaView_metrics;
  swift_beginAccess();
  v125 = v245;
  v126 = &v73[v124];
  v127 = v246;
  (*(v245 + 24))(v126, v123, v246);
  swift_endAccess();
  [v73 *(v70 + 2984)];
  (*(v125 + 8))(v123, v127);
  if (v44)
  {
    v128 = Screenshots.mediaPlatform.getter();
  }

  else
  {
    v128 = 0;
  }

  type metadata accessor for Screenshots();
  v129 = v241;
  sub_10061B788(v128, v241);

  v130 = OBJC_IVAR____TtC8AppStore15LockupMediaView_screenshotsDisplayConfiguration;
  swift_beginAccess();
  sub_1001BAB64(v129, &v73[v130]);
  swift_endAccess();
  sub_1001B7B88();
  sub_1001BABC8(v129);
  if (v44)
  {
    v44 = Screenshots.mediaPlatform.getter();
  }

  *&v73[OBJC_IVAR____TtC8AppStore15LockupMediaView_platform] = v44;

  sub_1001B7D8C();

  v131 = v260;
  v132 = v247;
  v133 = v264;
  (*(v260 + 16))(v247, v263, v264);
  v134 = OBJC_IVAR____TtC8AppStore15LockupMediaView_screenshotsDisplayStyle;
  swift_beginAccess();
  (*(v131 + 24))(&v73[v134], v132, v133);
  swift_endAccess();
  [v73 setNeedsLayout];
  (v255)(v132, v133);
  if (v10)
  {
    v260 = v131 + 8;
    (*(v234 + 104))(v229, enum case for VideoFillMode.scaleAspectFill(_:), v235);

    Video.preview.getter();
    Artwork.size.getter();
    v135 = v254;
    AspectRatio.init(_:_:)();

    (*(v232 + 56))(v135, 0, 1, v233);
    Video.playbackControls.getter();
    Video.autoPlayPlaybackControls.getter();
    Video.canPlayFullScreen.getter();
    Video.allowsAutoPlay.getter();
    Video.looping.getter();
    VideoConfiguration.init(fillMode:aspectRatio:playbackControls:autoPlayPlaybackControls:canPlayFullScreen:allowsAutoPlay:looping:roundedCorners:deviceCornerRadiusFactor:)();
    type metadata accessor for VideoViewManager();
    v136 = v253;
    BaseObjectGraph.inject<A>(_:)();
    Video.playbackId.getter();
    v137 = v236;
    Video.videoUrl.getter();
    v138 = type metadata accessor for URL();
    (*(*(v138 - 8) + 56))(v137, 0, 1, v138);
    v139 = v238;
    Video.templateMediaEvent.getter();
    v140 = v237;
    Video.templateClickEvent.getter();
    type metadata accessor for VideoView();
    sub_100007904(&qword_100973190, type metadata accessor for VideoView);
    v141 = v136;
    v142 = dispatch thunk of VideoViewManager.videoView<A>(with:videoUrl:configuration:templateMediaEvent:templateClickEvent:asPartOf:)();
    sub_10002B894(v140, &unk_100973A50);
    sub_10002B894(v139, &unk_100973A50);
    sub_10002B894(v137, &qword_100982460);
    sub_10002B894(v268, &qword_10096FB90);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v144 = Strong;
      v145 = [Strong superview];
      if (!v145)
      {
        goto LABEL_97;
      }

      v146 = v145;
      sub_100005744(0, &qword_100972EB0);
      v147 = v73;
      v148 = static NSObject.== infix(_:_:)();

      v141 = v253;
      if (v148)
      {
        v149 = swift_unknownObjectWeakLoadStrong();
        if (v149)
        {
          v144 = v149;
          [v149 removeFromSuperview];
LABEL_97:
        }
      }
    }

    swift_unknownObjectWeakAssign();
    v150 = swift_unknownObjectWeakLoadStrong();
    if (v150)
    {
      v151 = v150;
      [v73 addSubview:v150];
    }

    sub_1001B8790();
    [v73 setNeedsLayout];

    v152 = OBJC_IVAR____TtC8AppStore15LockupMediaView_creativeArtworkView;
    v153 = *&v73[OBJC_IVAR____TtC8AppStore15LockupMediaView_creativeArtworkView];
    v154 = v263;
    v155 = v141;
    if (v153)
    {
      [v153 removeFromSuperview];
      v156 = *&v73[v152];
    }

    else
    {
      v156 = 0;
    }

    v166 = v240;
    *&v73[v152] = 0;

    [v73 setNeedsLayout];

    (*(v239 + 8))(v251, v166);
    goto LABEL_145;
  }

  if (!v259)
  {
    goto LABEL_133;
  }

  result = Trailers.videos.getter();
  if (result >> 62)
  {
    v196 = result;
    v197 = _CocoaArrayWrapper.endIndex.getter();
    result = v196;
    if (!v197)
    {
      goto LABEL_132;
    }

LABEL_105:
    v215 = 0;
    v260 = v131 + 8;
    if ((result & 0xC000000000000001) == 0)
    {
      v158 = v258;
      if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return result;
      }

LABEL_108:

      v159 = v216;
      v160 = v265;
      (v252)(v216, v158, v265);
      v161 = v261;
      v162 = (*(v261 + 88))(v159, v160);
      v163 = enum case for LockupMediaLayout.DisplayType.singleItemFill(_:);
      (*(v161 + 8))(v159, v160);
      if (v162 == v163)
      {
        v164 = 1;
        v165 = v227;
      }

      else
      {
        v167 = Trailers.mediaPlatform.getter();
        v165 = v227;
        sub_10061B788(v167, v227);

        v164 = 0;
      }

      v168 = v221;
      v169 = v219;
      v170 = v235;
      v171 = v234;
      v172 = v217;
      v173 = v218;
      (*(v218 + 56))(v165, v164, 1, v219);
      (*(v171 + 104))(v224, enum case for VideoFillMode.scaleAspectFill(_:), v170);
      Video.preview.getter();
      Artwork.size.getter();
      AspectRatio.init(_:_:)();

      (*(v232 + 56))(v172, 0, 1, v233);
      Video.playbackControls.getter();
      Video.autoPlayPlaybackControls.getter();
      LODWORD(v254) = Video.canPlayFullScreen.getter();
      Video.allowsAutoPlay.getter();
      Video.looping.getter();
      sub_100031660(v165, v168, &qword_10097AE68);
      if ((*(v173 + 48))(v168, 1, v169) == 1)
      {
        sub_10002B894(v168, &qword_10097AE68);
      }

      else
      {
        sub_1001BABC8(v168);
      }

      VideoConfiguration.init(fillMode:aspectRatio:playbackControls:autoPlayPlaybackControls:canPlayFullScreen:allowsAutoPlay:looping:roundedCorners:deviceCornerRadiusFactor:)();
      type metadata accessor for VideoViewManager();
      BaseObjectGraph.inject<A>(_:)();
      v174 = v268[0];
      Video.playbackId.getter();
      v175 = v236;
      Video.videoUrl.getter();
      v176 = type metadata accessor for URL();
      (*(*(v176 - 8) + 56))(v175, 0, 1, v176);
      v177 = v238;
      Video.templateMediaEvent.getter();
      v178 = v237;
      Video.templateClickEvent.getter();
      type metadata accessor for VideoView();
      sub_100007904(&qword_100973190, type metadata accessor for VideoView);
      v254 = v174;
      v179 = dispatch thunk of VideoViewManager.videoView<A>(with:videoUrl:configuration:templateMediaEvent:templateClickEvent:asPartOf:)();
      sub_10002B894(v178, &unk_100973A50);
      sub_10002B894(v177, &unk_100973A50);
      sub_10002B894(v175, &qword_100982460);
      sub_10002B894(v268, &qword_10096FB90);
      v180 = swift_unknownObjectWeakLoadStrong();
      v181 = v263;
      v182 = v227;
      if (!v180)
      {
        goto LABEL_122;
      }

      v183 = v180;
      v184 = v263;
      v185 = [v180 superview];
      if (v185)
      {
        v186 = v185;
        sub_100005744(0, &qword_100972EB0);
        v187 = v73;
        v188 = static NSObject.== infix(_:_:)();

        v182 = v227;
        v181 = v184;
        if ((v188 & 1) == 0)
        {
          goto LABEL_122;
        }

        v189 = swift_unknownObjectWeakLoadStrong();
        if (!v189)
        {
          goto LABEL_122;
        }

        v183 = v189;
        [v189 removeFromSuperview];
      }

LABEL_122:
      swift_unknownObjectWeakAssign();
      v190 = swift_unknownObjectWeakLoadStrong();
      if (v190)
      {
        v191 = v190;
        [v73 addSubview:v190];
      }

      sub_1001B8790();
      [v73 setNeedsLayout];

      v192 = OBJC_IVAR____TtC8AppStore15LockupMediaView_creativeArtworkView;
      v193 = *&v73[OBJC_IVAR____TtC8AppStore15LockupMediaView_creativeArtworkView];
      v194 = v240;
      v154 = v181;
      if (v193)
      {
        [v193 removeFromSuperview];
        v195 = *&v73[v192];
      }

      else
      {
        v195 = 0;
      }

      *&v73[v192] = 0;

      [v73 setNeedsLayout];

      (*(v239 + 8))(v226, v194);
      sub_10002B894(v182, &qword_10097AE68);
      v155 = v253;
      goto LABEL_145;
    }

LABEL_152:
    specialized _ArrayBuffer._getElementSlowPath(_:)();
    v158 = v258;
    goto LABEL_108;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_105;
  }

LABEL_132:

LABEL_133:
  v198 = OBJC_IVAR____TtC8AppStore15LockupMediaView_creativeArtworkView;
  v199 = *&v73[OBJC_IVAR____TtC8AppStore15LockupMediaView_creativeArtworkView];
  if (v199)
  {
    [v199 removeFromSuperview];
    v200 = *&v73[v198];
  }

  else
  {
    v200 = 0;
  }

  v155 = v253;
  v201 = v263;
  *&v73[v198] = 0;

  [v73 setNeedsLayout];
  v202 = swift_unknownObjectWeakLoadStrong();
  if (v202)
  {
    v203 = v202;
    sub_100007904(&qword_100973190, type metadata accessor for VideoView);
    v204 = [v203 superview];
    if (!v204)
    {
      goto LABEL_141;
    }

    v205 = v204;
    sub_100005744(0, &qword_100972EB0);
    v206 = v73;
    v207 = static NSObject.== infix(_:_:)();

    if (v207)
    {
      v208 = swift_unknownObjectWeakLoadStrong();
      if (v208)
      {
        v203 = v208;
        [v208 removeFromSuperview];
LABEL_141:
      }
    }
  }

  swift_unknownObjectWeakAssign();
  v209 = swift_unknownObjectWeakLoadStrong();
  if (v209)
  {
    v210 = v209;
    [v73 addSubview:v209];
  }

  sub_1001B8790();
  [v73 setNeedsLayout];
  v154 = v201;
LABEL_145:
  [v73 setNeedsLayout];

  (v255)(v154, v264);
  (*(v261 + 8))(v258, v265);
  sub_10002B894(v262, &unk_1009732A0);
  if (Lockup.searchAdOpportunity.getter())
  {
    v211 = SearchAdOpportunity.searchAd.getter();

    v212 = v242;
    if (v211)
    {
      v213 = [objc_opt_self() clearColor];
      [v212 setBackgroundColor:v213];
    }
  }

  else
  {
    v211 = 0;
    v212 = v242;
  }

  sub_10027B8BC(v211, v155);
  [v212 setNeedsLayout];

  [v212 setNeedsLayout];
}

void sub_1006C89B8(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v5 = v4;
  v176 = a4;
  v9 = type metadata accessor for ScreenshotsDisplayStyle();
  v158 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v133[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = sub_10002849C(&unk_10096FC10);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v133[-v14];
  v16 = type metadata accessor for SmallSearchLockupLayout();
  v165 = *(v16 - 8);
  v166 = v16;
  __chkstk_darwin(v16);
  v164 = &v133[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = type metadata accessor for MetadataRibbonViewLayout.Metrics();
  v169 = *(v18 - 8);
  *&v170 = v18;
  __chkstk_darwin(v18);
  v152 = &v133[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = type metadata accessor for LabelPlaceholderCompatibility();
  v161 = *(v20 - 8);
  v162 = v20;
  __chkstk_darwin(v20);
  v160 = &v133[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = type metadata accessor for OfferButtonMetrics();
  v173 = *(v22 - 8);
  v174 = v22;
  __chkstk_darwin(v22);
  v159 = &v133[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v24);
  v172 = &v133[-v25];
  v178 = type metadata accessor for SmallSearchLockupLayout.Metrics();
  v171 = *(v178 - 8);
  __chkstk_darwin(v178);
  v163 = &v133[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v27);
  v177 = &v133[-v28];
  v29 = sub_10002849C(&unk_1009912C0);
  __chkstk_darwin(v29 - 8);
  v153 = &v133[-((v30 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v31);
  v175 = &v133[-v32];
  v33 = type metadata accessor for Artwork.Style();
  __chkstk_darwin(v33 - 8);
  if (*(a2 + 32))
  {
    return;
  }

  v157 = &v133[-((v34 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v149 = v15;
  v150 = v13;
  v151 = v12;
  v135 = v11;
  v136 = v9;
  v168 = v5;
  v35 = *(v5 + OBJC_IVAR____TtC8AppStore30AdvertsSearchResultContentView_lockupMediaView);
  v36 = OBJC_IVAR____TtC8AppStore15LockupMediaView_imageViews;
  swift_beginAccess();
  v155 = v35;
  v37 = *(v35 + v36);
  if (v37 >> 62)
  {
    v38 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v38 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v167 = a1;
  v39 = v168;
  if (v38)
  {
    if (v38 < 1)
    {
      __break(1u);
      goto LABEL_62;
    }

    v40 = a3;

    v41 = 0;
    do
    {
      if ((v37 & 0xC000000000000001) != 0)
      {
        v42 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v42 = *(v37 + v41 + 4);
      }

      v43 = v42;
      ++v41;
      v214[0] = v42;
      type metadata accessor for BorderedScreenshotView();
      sub_100007904(&qword_100973D78, type metadata accessor for BorderedScreenshotView);
      v44 = v43;
      AnyHashable.init<A>(_:)();
      ArtworkLoader.forgetFetch(forHandlerKey:deprioritizingFetch:)();
      sub_10003D614(v215);
      v45 = *&v44[OBJC_IVAR____TtC8AppStore22BorderedScreenshotView_artworkView];
      v216.value.super.isa = 0;
      v216.is_nil = 0;
      ArtworkView.setImage(image:animated:)(v216, v46);
    }

    while (v38 != v41);

    a3 = v40;
    v39 = v168;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v48 = Strong;
    [*(Strong + qword_100988CC0) setImage:0];
    v214[0] = v48;
    type metadata accessor for VideoView();
    sub_100007904(&qword_100992450, type metadata accessor for VideoView);
    v49 = v48;
    AnyHashable.init<A>(_:)();
    ArtworkLoader.forgetFetch(forHandlerKey:deprioritizingFetch:)();
    v39 = v168;

    sub_10003D614(v215);
  }

  v5 = *(v39 + OBJC_IVAR____TtC8AppStore30AdvertsSearchResultContentView_lockupView);
  v13 = OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView;
  v50 = *(v5 + OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView);
  v217.value.super.isa = 0;
  v217.is_nil = 0;
  ArtworkView.setImage(image:animated:)(v217, v51);

  v52 = *(v5 + v13);
  type metadata accessor for ArtworkView();
  sub_100007904(&qword_100970E80, &type metadata accessor for ArtworkView);
  v53 = v52;
  v154 = a3;
  ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();

  if (Lockup.icon.getter())
  {
    v54 = qword_10096EE80;
    v37 = *(v5 + v13);
    if (v54 == -1)
    {
LABEL_16:
      v55 = type metadata accessor for SmallLockupLayout.Metrics();
      sub_1000056A8(v55, qword_1009D3798);
      SmallLockupLayout.Metrics.artworkSize.getter();
      [v37 contentMode];
      Artwork.config(_:mode:prefersLayeredImage:)();
      Artwork.style.getter();
      ArtworkView.style.setter();
      [v37 setContentMode:Artwork.contentMode.getter()];
      ArtworkLoaderConfig.size.getter();
      ArtworkView.imageSize.setter();
      if (!Artwork.backgroundColor.getter())
      {
        sub_100005744(0, &qword_100970180);
        static UIColor.placeholderBackground.getter();
      }

      ArtworkView.backgroundColor.setter();
      v56 = *(v5 + v13);
      ArtworkLoader.fetchArtwork<A>(using:closestMatch:into:)();

      goto LABEL_19;
    }

LABEL_62:
    swift_once();
    goto LABEL_16;
  }

LABEL_19:
  v57 = Lockup.title.getter();
  v140 = v58;
  v141 = v57;
  v59 = Lockup.subtitle.getter();
  v61 = v60;
  v62 = Lockup.searchAdOpportunity.getter();
  v143 = v59;
  if (v62)
  {
    v63 = SearchAdOpportunity.searchAd.getter();

    v64 = v176;
    v65 = v177;
    v67 = v169;
    v66 = v170;
    v68 = v159;
    if (v63)
    {
      v69 = SearchAd.advertisingText.getter();
      v144 = v70;
      v145 = v69;
    }

    else
    {
      v144 = 0;
      v145 = 0;
    }
  }

  else
  {
    v144 = 0;
    v145 = 0;
    v64 = v176;
    v65 = v177;
    v67 = v169;
    v66 = v170;
    v68 = v159;
  }

  v168 = MixedMediaLockup.metadataRibbonItems.getter();
  v159 = MixedMediaLockup.searchTagRibbonItems.getter();
  v71 = MixedMediaLockup.shouldEvenlyDistributeRibbonItems.getter();
  (*(v67 + 56))(v175, 1, 1, v66);
  if (qword_10096CF70 != -1)
  {
    swift_once();
  }

  v72 = v178;
  v73 = sub_1000056A8(v178, qword_1009CDC00);
  v74 = v171 + 16;
  v75 = *(v171 + 16);
  v75(v65, v73, v72);
  v76 = UITraitCollection.prefersAccessibilityLayouts.getter();
  v147 = v75;
  v148 = v74;
  v134 = v71;
  v142 = v61;
  if ((v76 & 1) == 0)
  {
    if (qword_10096ECC0 != -1)
    {
      swift_once();
    }

    v77 = qword_100991028;
    goto LABEL_32;
  }

  if (qword_10096ECB8 != -1)
  {
    goto LABEL_67;
  }

  while (1)
  {
    v77 = qword_100991010;
LABEL_32:
    v78 = v174;
    v79 = sub_1000056A8(v174, v77);
    v80 = v173;
    (*(v173 + 16))(v68, v79, v78);
    (*(v80 + 32))(v172, v68, v78);
    v81 = [v64 preferredContentSizeCategory];
    UIContentSizeCategory.isAccessibilityCategory.getter();

    OfferButtonMetrics.minimumSize.getter();
    OfferButtonMetrics.estimatedHeight.getter();
    SmallSearchLockupLayout.Metrics.offerButtonSize.setter();
    SmallSearchLockupLayout.Metrics.artworkSize.getter();
    v146 = type metadata accessor for LayoutViewPlaceholder();
    swift_allocObject();
    v157 = LayoutViewPlaceholder.init(representing:)();
    v82 = objc_opt_self();
    v138 = v82;
    v83 = [v82 preferredFontForTextStyle:UIFontTextStyleBody];
    v84 = type metadata accessor for Feature();
    v215[3] = v84;
    v156 = sub_100007904(&qword_100972E50, &type metadata accessor for Feature);
    v215[4] = v156;
    v85 = sub_1000056E0(v215);
    v86 = enum case for Feature.measurement_with_labelplaceholder(_:);
    v139 = *(*(v84 - 8) + 104);
    v137 = enum case for Feature.measurement_with_labelplaceholder(_:);
    v139(v85, enum case for Feature.measurement_with_labelplaceholder(_:), v84);
    isFeatureEnabled(_:)();
    sub_100007000(v215);
    v87 = v160;
    LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
    LabelPlaceholderCompatibility.layoutTextView.getter();
    v88 = v162;
    v161 = *(v161 + 8);
    (v161)(v87, v162);
    v89 = [v82 preferredFontForTextStyle:UIFontTextStyleFootnote];
    v214[3] = v84;
    v214[4] = v156;
    v90 = sub_1000056E0(v214);
    v91 = v86;
    v92 = v139;
    v139(v90, v91, v84);
    isFeatureEnabled(_:)();
    sub_100007000(v214);
    LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
    LabelPlaceholderCompatibility.layoutTextView.getter();
    v93 = v161;
    (v161)(v87, v88);
    v94 = [v138 preferredFontForTextStyle:UIFontTextStyleFootnote];
    v213[3] = v84;
    v213[4] = v156;
    v95 = sub_1000056E0(v213);
    v92(v95, v137, v84);
    isFeatureEnabled(_:)();
    sub_100007000(v213);
    LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
    LabelPlaceholderCompatibility.layoutTextView.getter();
    v93(v87, v88);
    v96 = v168;
    LODWORD(v162) = sub_1000AE138(0, v168) & (v96 != 0);
    if (v162 == 1)
    {
      v97 = objc_allocWithZone(type metadata accessor for TraitEnvironmentPlaceholder());
      v98 = v176;
      v99 = TraitEnvironmentPlaceholder.init(traitCollection:)();
      v100 = v153;
      sub_100031660(v175, v153, &unk_1009912C0);
      v102 = v169;
      v101 = v170;
      v103 = *(v169 + 48);
      if (v103(v100, 1, v170) == 1)
      {
        v104 = v152;
        static MetadataRibbonViewLayout.Metrics.standard.getter();
        v105 = v103(v100, 1, v101);
        v106 = v159;
        if (v105 != 1)
        {
          sub_10002B894(v100, &unk_1009912C0);
        }
      }

      else
      {
        v104 = v152;
        (*(v102 + 32))(v152, v100, v101);
        v106 = v159;
      }

      v109 = v99;
      sub_1000AD91C(v168, v104, v109);

      (*(v102 + 8))(v104, v101);
      v107 = v146;
      swift_allocObject();
      v108 = LayoutViewPlaceholder.init(measurements:)();
    }

    else
    {
      v107 = v146;
      swift_allocObject();
      v108 = LayoutViewPlaceholder.init(representing:)();
      v106 = v159;
    }

    if ((sub_1000AE138(v106, 0) & (v106 != 0)) == 1)
    {
      v110 = v176;
      sub_100046528(v106, v134 & 1);
      swift_allocObject();
      v111 = LayoutViewPlaceholder.init(measurements:)();
    }

    else
    {
      swift_allocObject();
      v111 = LayoutViewPlaceholder.init(representing:)();
      v110 = v176;
    }

    v147(v163, v177, v178);
    v212 = &protocol witness table for LayoutViewPlaceholder;
    v211 = v107;
    v210 = v157;
    v209 = 0;
    *&v207[40] = 0u;
    v208 = 0u;
    sub_10002C0AC(v215, v207);
    sub_10002C0AC(v214, &v206);
    v205 = 0;
    v203 = 0u;
    v204 = 0u;
    v202 = 0;
    v200 = 0u;
    v201 = 0u;

    v112 = static LayoutViewPlaceholder.withIdentityMeasurement.getter();
    v199 = &protocol witness table for LayoutViewPlaceholder;
    v198 = v107;
    v197 = v112;
    v196 = 0;
    v194 = 0u;
    v195 = 0u;
    v193 = 0;
    v191 = 0u;
    v192 = 0u;
    v190 = 0;
    v188 = 0u;
    v189 = 0u;
    v187 = 0;
    v186 = 0u;
    *&v185[40] = 0u;
    sub_10002C0AC(v213, v185);
    v183 = v107;
    v184 = &protocol witness table for LayoutViewPlaceholder;
    v181 = &protocol witness table for LayoutViewPlaceholder;
    v182 = v108;
    v180 = v107;
    v179 = v111;
    v113 = v164;
    SmallSearchLockupLayout.init(metrics:artworkView:headingText:titleText:subtitleText:tertiaryTitleText:offerText:offerButton:userRatingView:ratingCountLabel:editorsChoiceView:adButton:description:includesRatings:metadataRibbonView:searchTagsRibbonView:includesMetadataRibbon:includesSearchTagsRibbon:includesMetadataInformationInLockup:)();
    type metadata accessor for TraitEnvironmentPlaceholder();
    sub_10002849C(&qword_100973210);
    v114 = swift_allocObject();
    v170 = xmmword_1007B0B70;
    *(v114 + 16) = xmmword_1007B0B70;
    *(v114 + 32) = v110;
    v115 = v110;
    v116 = TraitEnvironmentPlaceholder.__allocating_init(_:)();
    sub_100007904(&unk_100972E60, &type metadata accessor for SmallSearchLockupLayout);
    v117 = v166;
    dispatch thunk of Measurable.measurements(fitting:in:)();

    (*(v165 + 8))(v113, v117);
    sub_100007000(v213);
    sub_100007000(v214);
    sub_100007000(v215);
    (*(v173 + 8))(v172, v174);
    (*(v171 + 8))(v177, v178);
    sub_10002B894(v175, &unk_1009912C0);
    v118 = v149;
    static StandardSearchResultContentViewMetrics.bottomMargin.getter();
    v119 = swift_allocObject();
    *(v119 + 16) = v170;
    *(v119 + 32) = v115;
    v120 = v115;
    v121 = TraitEnvironmentPlaceholder.__allocating_init(_:)();
    sub_100097060(&qword_10096FC20, &unk_10096FC10);
    v122 = v151;
    dispatch thunk of AnyDimension.rawValue(in:)();

    (*(v150 + 8))(v118, v122);
    v123 = MixedMediaLockup.alignedRegionArtwork.getter();
    v68 = MixedMediaLockup.alignedRegionVideo.getter();
    v124 = MixedMediaLockup.screenshots.getter();
    if (v124 >> 62)
    {
      v126 = v124;
      v127 = _CocoaArrayWrapper.endIndex.getter();
      v124 = v126;
      v64 = v154;
      if (!v127)
      {
LABEL_50:

        v125 = 0;
        goto LABEL_51;
      }
    }

    else
    {
      v64 = v154;
      if (!*((v124 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_50;
      }
    }

    if ((v124 & 0xC000000000000001) != 0)
    {
      v125 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((v124 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_66;
      }

      v125 = *(v124 + 32);
    }

LABEL_51:
    v128 = MixedMediaLockup.trailers.getter();
    if (!(v128 >> 62))
    {
      if (!*((v128 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        break;
      }

      goto LABEL_53;
    }

    v130 = v128;
    v131 = _CocoaArrayWrapper.endIndex.getter();
    v128 = v130;
    if (!v131)
    {
      break;
    }

LABEL_53:
    if ((v128 & 0xC000000000000001) != 0)
    {
      v129 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_56;
    }

    if (*((v128 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v129 = *(v128 + 32);

LABEL_56:

      goto LABEL_59;
    }

LABEL_66:
    __break(1u);
LABEL_67:
    swift_once();
  }

  v129 = 0;
LABEL_59:
  v132 = v135;
  MixedMediaLockup.screenshotsDisplayStyle.getter();
  sub_1005B6FA0(v123, v68, v125, v129, v120, v64, v132);

  (*(v158 + 8))(v132, v136);
}

uint64_t sub_1006C9F8C@<X0>(uint64_t a1@<X8>)
{
  if (UITraitCollection.isSizeClassCompact.getter())
  {
    v2 = type metadata accessor for AspectRatio();
    v3 = *(*(v2 - 8) + 56);
    v4 = v2;
    v5 = a1;
    v6 = 1;
    goto LABEL_19;
  }

  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  if (v7 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v9 == v10)
  {

    goto LABEL_15;
  }

  v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v12)
  {
LABEL_15:
    if (qword_10096EE20 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for AspectRatio();
    v21 = v20;
    v22 = qword_1009D3678;
    goto LABEL_18;
  }

  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;
  if (v13 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v15 == v16)
  {
  }

  else
  {
    v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v18 & 1) == 0)
    {
      static AspectRatio.square.getter();
      v19 = type metadata accessor for AspectRatio();
      v3 = *(*(v19 - 8) + 56);
      v4 = v19;
      v5 = a1;
      v6 = 0;
      goto LABEL_19;
    }
  }

  if (qword_10096EE28 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for AspectRatio();
  v21 = v20;
  v22 = qword_1009D3690;
LABEL_18:
  v23 = sub_1000056A8(v20, v22);
  v25 = *(v21 - 8);
  (*(v25 + 16))(a1, v23, v21);
  v3 = *(v25 + 56);
  v5 = a1;
  v6 = 0;
  v4 = v21;
LABEL_19:

  return v3(v5, v6, 1, v4);
}

id sub_1006CA250(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    v4 = a1;
    v5 = a2;
    v6 = [objc_opt_self() clearColor];
    [v3 setBackgroundColor:v6];

    a1 = v4;
    a2 = v5;
  }

  sub_10027B8BC(a1, a2);

  return [v3 setNeedsLayout];
}

uint64_t sub_1006CA320(uint64_t a1, void (*a2)(char *, uint64_t, uint64_t), uint64_t a3, void *a4, char *a5, int a6)
{
  v7 = v6;
  v79 = a5;
  v72 = a4;
  v70 = a3;
  v71 = a2;
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v77 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = type metadata accessor for DispatchQoS();
  v76 = *(v78 - 8);
  __chkstk_darwin(v78);
  v75 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v14 = COERCE_DOUBLE(type metadata accessor for DispatchTimeInterval());
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = (&v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v74 = type metadata accessor for DispatchTime();
  v73 = *(v74 - 8);
  __chkstk_darwin(v74);
  v19 = &v63 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v63 - v21;
  sub_10002C0AC(a1, aBlock);
  sub_10002849C(&unk_100980530);
  type metadata accessor for MixedMediaLockup();
  result = swift_dynamicCast();
  if (result)
  {
    v69 = v10;
    v24 = OBJC_IVAR____TtC8AppStore36AdvertSearchResultCollectionViewCell_advertsContentView;
    v25 = *(*&v7[OBJC_IVAR____TtC8AppStore36AdvertSearchResultCollectionViewCell_advertsContentView] + OBJC_IVAR____TtC8AppStore30AdvertsSearchResultContentView_lockupView);
    v66 = a6;
    v26 = v81[0];
    v64 = *(v25 + OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_regularWidthColumnSpacing);
    [v7 layoutMargins];
    v28 = v27;
    v30 = v29;
    v32 = v31;
    v34 = v33;
    [v7 setUserInteractionEnabled:0];
    v35 = *&v7[v24];
    v68 = v11;
    [v35 frame];
    v40 = [objc_allocWithZone(type metadata accessor for AdvertsSearchResultContentView()) initWithFrame:{v36, v37, v38, v39}];
    v67 = v26;
    v41 = v64;
    v64 = *&v14;
    v42 = v71;
    v65 = v22;
    sub_1006C65C8(v26, v71, v70, v79, v41, v28, v30, v32, v34);
    [v40 layoutIfNeeded];
    [*&v7[v24] frame];
    v81[0] = v43;
    v81[1] = v44;
    v81[2] = v45;
    v81[3] = v46;
    v82 = 0;
    sub_1006C89B8(v26, v81, v72, v42);
    v47 = (*&v7[v24] + OBJC_IVAR____TtC8AppStore30AdvertsSearchResultContentView_disableAdvertRotation);
    swift_beginAccess();
    v49 = *v47;
    v48 = v47[1];
    sub_10000827C(*v47);
    sub_10068D354(v49, v48);
    sub_10001F63C(v49);
    sub_100005744(0, &qword_1009729E0);
    v72 = static OS_dispatch_queue.main.getter();
    static DispatchTime.now()();
    v50 = 333;
    if ((v66 & 1) == 0)
    {
      v50 = 0;
    }

    *v17 = v50;
    v51 = v64;
    (*(v15 + 104))(v17, enum case for DispatchTimeInterval.milliseconds(_:), COERCE_DOUBLE(*&v64));
    + infix(_:_:)();
    (*(v15 + 8))(v17, COERCE_DOUBLE(*&v51));
    v52 = *(v73 + 8);
    v53 = v74;
    v52(v19, v74);
    v54 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v55 = swift_allocObject();
    v55[2] = v54;
    v55[3] = v40;
    v55[4] = v79;
    aBlock[4] = sub_1000E4028;
    aBlock[5] = v55;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100007A08;
    aBlock[3] = &unk_1008CEEF0;
    v56 = _Block_copy(aBlock);
    v57 = v40;

    v58 = v75;
    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_100007904(&qword_100976F50, &type metadata accessor for DispatchWorkItemFlags);
    sub_10002849C(&unk_1009729F0);
    sub_100097060(&qword_100976F60, &unk_1009729F0);
    v59 = v77;
    v60 = v69;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v61 = v65;
    v62 = v72;
    OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
    _Block_release(v56);

    (*(v68 + 8))(v59, v60);
    (*(v76 + 8))(v58, v78);
    return (v52)(v61, v53);
  }

  return result;
}

void sub_1006CAAD4(uint64_t a1, void *a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = objc_opt_self();
    v8 = *&v6[OBJC_IVAR____TtC8AppStore36AdvertSearchResultCollectionViewCell_advertsContentView];
    v9 = swift_allocObject();
    v9[2] = a3;
    v9[3] = v6;
    v9[4] = a2;
    aBlock[4] = sub_1006CC5A0;
    aBlock[5] = v9;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100504C5C;
    aBlock[3] = &unk_1008CEF40;
    v10 = _Block_copy(aBlock);
    v11 = v8;

    v12 = v6;
    v13 = a2;

    [v7 transitionFromView:v11 toView:v13 duration:5242880 options:v10 completion:0.666];
    _Block_release(v10);
  }
}

void sub_1006CAC44(uint64_t a1, uint64_t a2, char *a3, void *a4)
{
  type metadata accessor for VideoPlaybackCoordinator();
  type metadata accessor for BaseObjectGraph();
  inject<A, B>(_:from:)();
  v6 = OBJC_IVAR____TtC8AppStore36AdvertSearchResultCollectionViewCell_advertsContentView;
  v7 = *&a3[OBJC_IVAR____TtC8AppStore36AdvertSearchResultCollectionViewCell_advertsContentView];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    sub_100007904(&qword_100973190, type metadata accessor for VideoView);
  }

  sub_100007904(&unk_100973DE0, type metadata accessor for AdvertsSearchResultContentView);
  v9 = v7;
  dispatch thunk of VideoPlaybackCoordinator.unregister(videoView:videoContainer:pausingPlayback:)();

  v10 = swift_unknownObjectWeakLoadStrong();
  if (v10)
  {
    sub_100007904(&qword_100973190, type metadata accessor for VideoView);
  }

  dispatch thunk of VideoPlaybackCoordinator.register(videoView:videoContainer:)();

  v11 = *&a3[v6];
  *&a3[v6] = a4;
  v12 = a4;

  [a3 setUserInteractionEnabled:1];
}

uint64_t sub_1006CAEAC(unint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for AdvertsSearchResultContentView();

  return sub_1006CAF54(a1, a2, a3, v9, a5);
}

uint64_t sub_1006CAF54(unint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v137 = a5;
  v138 = a3;
  v170 = a2;
  v6 = sub_10002849C(&unk_100973C90);
  __chkstk_darwin(v6 - 8);
  v133 = &v132 - v7;
  v135 = type metadata accessor for LockupMediaLayout.DisplayType();
  v142 = *(v135 - 8);
  __chkstk_darwin(v135);
  v9 = &v132 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v132 - v11;
  __chkstk_darwin(v13);
  v136 = &v132 - v14;
  v15 = sub_10002849C(&unk_1009732A0);
  __chkstk_darwin(v15 - 8);
  v143 = &v132 - v16;
  v17 = type metadata accessor for FloatingPointRoundingRule();
  v140 = *(v17 - 8);
  v141 = v17;
  __chkstk_darwin(v17);
  v139 = &v132 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for ScreenshotsDisplayStyle();
  v166 = *(v19 - 8);
  v167 = v19;
  __chkstk_darwin(v19);
  v21 = &v132 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for SmallSearchLockupLayout();
  v164 = *(v22 - 8);
  v165 = v22;
  __chkstk_darwin(v22);
  v163 = &v132 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for LabelPlaceholderCompatibility();
  v160 = *(v24 - 8);
  v161 = v24;
  __chkstk_darwin(v24);
  v159 = &v132 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for OfferButtonMetrics();
  v175 = *(v26 - 8);
  __chkstk_darwin(v26);
  v28 = &v132 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v173 = &v132 - v30;
  v176 = type metadata accessor for SmallSearchLockupLayout.Metrics();
  v174 = *(v176 - 8);
  __chkstk_darwin(v176);
  v162 = &v132 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v34 = &v132 - v33;
  CGSize.subtracting(insets:)();
  v35 = Lockup.title.getter();
  v149 = v36;
  v150 = v35;
  v37 = Lockup.subtitle.getter();
  v151 = v38;
  v152 = v37;
  if (Lockup.searchAdOpportunity.getter() && (v39 = SearchAdOpportunity.searchAd.getter(), , v39))
  {
    v40 = SearchAd.advertisingText.getter();
    v156 = v41;
    v157 = v40;
  }

  else
  {
    v156 = 0;
    v157 = 0;
  }

  MixedMediaLockup.shouldEvenlyDistributeRibbonItems.getter();
  v42 = [v170 traitCollection];
  if (qword_10096CF70 != -1)
  {
    swift_once();
  }

  v43 = v176;
  v44 = sub_1000056A8(v176, qword_1009CDC00);
  v153 = *(v174 + 16);
  v154 = v174 + 16;
  v153(v34, v44, v43);
  v45 = UITraitCollection.prefersAccessibilityLayouts.getter();
  v168 = v21;
  v169 = a1;
  v134 = v12;
  v132 = v9;
  if (v45)
  {
    if (qword_10096ECB8 != -1)
    {
      swift_once();
    }

    v46 = qword_100991010;
  }

  else
  {
    if (qword_10096ECC0 != -1)
    {
      swift_once();
    }

    v46 = qword_100991028;
  }

  v47 = sub_1000056A8(v26, v46);
  v48 = v175;
  (*(v175 + 16))(v28, v47, v26);
  (*(v48 + 32))();
  v49 = [v42 preferredContentSizeCategory];
  UIContentSizeCategory.isAccessibilityCategory.getter();
  v158 = v42;

  OfferButtonMetrics.minimumSize.getter();
  OfferButtonMetrics.estimatedHeight.getter();
  v172 = v34;
  SmallSearchLockupLayout.Metrics.offerButtonSize.setter();
  SmallSearchLockupLayout.Metrics.artworkSize.getter();
  v50 = type metadata accessor for LayoutViewPlaceholder();
  swift_allocObject();
  v148 = LayoutViewPlaceholder.init(representing:)();
  v51 = objc_opt_self();
  v146 = v51;
  v52 = [v51 preferredFontForTextStyle:UIFontTextStyleBody];
  v53 = type metadata accessor for Feature();
  v213[3] = v53;
  v171 = sub_100007904(&qword_100972E50, &type metadata accessor for Feature);
  v213[4] = v171;
  v54 = sub_1000056E0(v213);
  v55 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v56 = *(v53 - 8);
  v155 = v26;
  v147 = *(v56 + 104);
  v57 = v56 + 104;
  v144 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v147(v54, enum case for Feature.measurement_with_labelplaceholder(_:), v53);
  v145 = v57;
  isFeatureEnabled(_:)();
  sub_100007000(v213);
  v58 = v159;
  LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  LabelPlaceholderCompatibility.layoutTextView.getter();
  v59 = v161;
  v160 = *(v160 + 8);
  (v160)(v58, v161);
  v60 = [v51 preferredFontForTextStyle:UIFontTextStyleFootnote];
  v212[3] = v53;
  v212[4] = v171;
  v61 = sub_1000056E0(v212);
  v62 = v55;
  v63 = v147;
  v147(v61, v62, v53);
  isFeatureEnabled(_:)();
  sub_100007000(v212);
  LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  LabelPlaceholderCompatibility.layoutTextView.getter();
  v64 = v160;
  (v160)(v58, v59);
  v65 = [v146 preferredFontForTextStyle:UIFontTextStyleFootnote];
  v211[3] = v53;
  v211[4] = v171;
  v66 = sub_1000056E0(v211);
  v63(v66, v144, v53);
  isFeatureEnabled(_:)();
  sub_100007000(v211);
  LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  LabelPlaceholderCompatibility.layoutTextView.getter();
  v64(v58, v59);
  sub_1000AE138(0, 0);
  swift_allocObject();
  v67 = LayoutViewPlaceholder.init(representing:)();

  sub_1000AE138(0, 0);
  swift_allocObject();
  v68 = LayoutViewPlaceholder.init(representing:)();
  v153(v162, v172, v176);
  v210 = &protocol witness table for LayoutViewPlaceholder;
  v209 = v50;
  v69 = v148;
  v208 = v148;
  v207 = 0;
  *&v205[40] = 0u;
  v206 = 0u;
  sub_10002C0AC(v213, v205);
  sub_10002C0AC(v212, &v204);
  v203 = 0;
  v201 = 0u;
  v202 = 0u;
  v200 = 0;
  v198 = 0u;
  v199 = 0u;

  v70 = static LayoutViewPlaceholder.withIdentityMeasurement.getter();
  v197 = &protocol witness table for LayoutViewPlaceholder;
  v196 = v50;
  v195 = v70;
  v194 = 0;
  v192 = 0u;
  v193 = 0u;
  v191 = 0;
  v189 = 0u;
  v190 = 0u;
  v188 = 0;
  v186 = 0u;
  v187 = 0u;
  v185 = 0;
  v184 = 0u;
  *&v183[40] = 0u;
  sub_10002C0AC(v211, v183);
  v181 = v50;
  v182 = &protocol witness table for LayoutViewPlaceholder;
  v179 = &protocol witness table for LayoutViewPlaceholder;
  v180 = v67;
  v178 = v50;
  v177 = v68;
  v71 = v163;
  SmallSearchLockupLayout.init(metrics:artworkView:headingText:titleText:subtitleText:tertiaryTitleText:offerText:offerButton:userRatingView:ratingCountLabel:editorsChoiceView:adButton:description:includesRatings:metadataRibbonView:searchTagsRibbonView:includesMetadataRibbon:includesSearchTagsRibbon:includesMetadataInformationInLockup:)();
  type metadata accessor for TraitEnvironmentPlaceholder();
  sub_10002849C(&qword_100973210);
  v72 = swift_allocObject();
  *(v72 + 16) = xmmword_1007B0B70;
  v73 = v158;
  *(v72 + 32) = v158;
  v74 = v73;
  v75 = TraitEnvironmentPlaceholder.__allocating_init(_:)();
  sub_100007904(&unk_100972E60, &type metadata accessor for SmallSearchLockupLayout);
  v76 = v165;
  dispatch thunk of Measurable.measurements(fitting:in:)();

  (*(v164 + 8))(v71, v76);
  sub_100007000(v211);
  sub_100007000(v212);
  sub_100007000(v213);
  (*(v175 + 8))(v173, v155);
  (*(v174 + 8))(v172, v176);
  v78 = v168;
  v77 = v169;
  MixedMediaLockup.screenshotsDisplayStyle.getter();
  if ((ScreenshotsDisplayStyle.shouldShowScreenshots.getter() & 1) == 0 || (sub_1001A41FC() & 1) == 0)
  {
    return (*(v166 + 8))(v78, v167);
  }

  if (qword_10096E6B8 != -1)
  {
    swift_once();
  }

  v79 = type metadata accessor for StaticDimension();
  sub_1000056A8(v79, qword_1009D2448);
  v80 = v139;
  static Dimensions.defaultRoundingRule.getter();
  v81 = v170;
  AnyDimension.value(in:rounded:)();
  (*(v140 + 8))(v80, v141);
  v82 = MixedMediaLockup.alignedRegionArtwork.getter();
  v83 = MixedMediaLockup.alignedRegionVideo.getter();
  v84 = MixedMediaLockup.screenshots.getter();
  if (v84 >> 62)
  {
    v86 = v84;
    v87 = _CocoaArrayWrapper.endIndex.getter();
    v84 = v86;
    if (v87)
    {
      goto LABEL_20;
    }

LABEL_26:

    v69 = 0;
    goto LABEL_27;
  }

  if (!*((v84 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_26;
  }

LABEL_20:
  if ((v84 & 0xC000000000000001) != 0)
  {
    v69 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v84 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_61;
    }

    v69 = *(v84 + 32);
  }

LABEL_27:
  v88 = MixedMediaLockup.trailers.getter();
  if (v88 >> 62)
  {
    v90 = v88;
    v91 = _CocoaArrayWrapper.endIndex.getter();
    v88 = v90;
    if (v91)
    {
      goto LABEL_29;
    }

LABEL_34:

    v176 = 0;
    goto LABEL_35;
  }

  if (!*((v88 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_34;
  }

LABEL_29:
  if ((v88 & 0xC000000000000001) != 0)
  {
    v89 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v88 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_63;
    }
  }

  v176 = v89;

LABEL_35:
  v92 = [v81 traitCollection];
  sub_1006C9F8C(v143);

  v67 = MixedMediaLockup.alignedRegionArtwork.getter();
  v68 = MixedMediaLockup.alignedRegionVideo.getter();
  v93 = MixedMediaLockup.screenshots.getter();
  if (v93 >> 62)
  {
    v94 = v93;
    v95 = _CocoaArrayWrapper.endIndex.getter();
    v93 = v94;
    if (v95)
    {
LABEL_37:
      if ((v93 & 0xC000000000000001) == 0)
      {
        if (!*((v93 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_65;
        }

        v77 = *(v93 + 32);

        goto LABEL_40;
      }

LABEL_61:
      v77 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_40:

      goto LABEL_43;
    }
  }

  else if (*((v93 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_37;
  }

  v77 = 0;
LABEL_43:
  v96 = MixedMediaLockup.trailers.getter();
  if (v96 >> 62)
  {
    v99 = v96;
    v100 = _CocoaArrayWrapper.endIndex.getter();
    v96 = v99;
    v175 = v69;
    if (v100)
    {
LABEL_45:
      if ((v96 & 0xC000000000000001) == 0)
      {
        if (*((v96 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v98 = *(v96 + 32);

LABEL_48:

          goto LABEL_51;
        }

LABEL_65:
        __break(1u);
LABEL_66:
        v172 = _CocoaArrayWrapper.endIndex.getter();
        if (v77)
        {
          goto LABEL_55;
        }

        goto LABEL_67;
      }

LABEL_63:
      v98 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_48;
    }
  }

  else
  {
    v97 = *((v96 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v175 = v69;
    if (v97)
    {
      goto LABEL_45;
    }
  }

  v98 = 0;
LABEL_51:
  v101 = ScreenshotsDisplayStyle.shouldShowScreenshots.getter();
  v174 = v83;
  if ((v101 & 1) == 0)
  {

    v104 = v142;
    v106 = v135;
    v105 = v136;
    (*(v142 + 104))(v136, enum case for LockupMediaLayout.DisplayType.none(_:), v135);
LABEL_88:
    v128 = v176;
    type metadata accessor for LockupMediaView();
    v129 = v143;
    v130 = v81;
    v131 = v168;
    sub_1005B8730(v82, v174, v175, v128, v143, v105, v130, v168);

    (*(v104 + 8))(v105, v106);
    sub_10002B894(v129, &unk_1009732A0);
    return (*(v166 + 8))(v131, v167);
  }

  if (v68 | v67)
  {
    v107 = v134;
    AspectRatio.init(_:_:)();

    v104 = v142;
    v106 = v135;
    (*(v142 + 104))(v107, enum case for LockupMediaLayout.DisplayType.singleItemFill(_:), v135);
    v105 = v136;
    (*(v104 + 32))(v136, v107, v106);
    goto LABEL_88;
  }

  v102 = sub_1001B9B24(v77, v98, 0, 1);
  v68 = v102;
  v83 = v102 >> 62;
  if (v102 >> 62)
  {
    goto LABEL_66;
  }

  v172 = *((v102 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v77)
  {
LABEL_55:
    v103 = Screenshots.mediaPlatform.getter();
    goto LABEL_68;
  }

LABEL_67:
  v103 = 0;
LABEL_68:
  LODWORD(v169) = sub_1001B9E6C(v103);

  v173 = v82;
  if (v77)
  {
    v108 = Screenshots.mediaPlatform.getter();
  }

  else
  {
    v108 = 0;
  }

  v109 = v166;
  v110 = v133;
  v111 = v78;
  v112 = v167;
  (*(v166 + 16))(v133, v111, v167);
  (*(v109 + 56))(v110, 0, 1, v112);
  v113 = sub_1001BA394(v108, v110);

  sub_10002B894(v110, &unk_100973C90);
  if (!v83)
  {
    result = *((v68 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v82 = v173;
    if (result)
    {
      goto LABEL_73;
    }

LABEL_79:

    goto LABEL_80;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  v82 = v173;
  if (!result)
  {
    goto LABEL_79;
  }

LABEL_73:
  if ((v68 & 0xC000000000000001) != 0)
  {
    specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_76:

    v114 = dispatch thunk of Artwork.isLandscape.getter();

    if (v114)
    {

      v104 = v142;
      v115 = v134;
      v106 = v135;
      (*(v142 + 104))(v134, enum case for LockupMediaLayout.DisplayType.landscape(_:), v135);
      v105 = v136;
LABEL_87:
      (*(v104 + 32))(v105, v115, v106);
      goto LABEL_88;
    }

LABEL_80:
    v116 = enum case for LockupMediaLayout.DisplayType.fourUp(_:);
    v117 = v142;
    v118 = v132;
    v119 = v135;
    v171 = *(v142 + 104);
    v171(v132, enum case for LockupMediaLayout.DisplayType.fourUp(_:), v135);
    v120 = LockupMediaLayout.DisplayType.numberOfViews.getter();
    v165 = *(v117 + 8);
    v165(v118, v119);
    if (((v172 >= v120) & v113) != 0 || (v116 = enum case for LockupMediaLayout.DisplayType.threeUp(_:), v171(v118, enum case for LockupMediaLayout.DisplayType.threeUp(_:), v119), v121 = LockupMediaLayout.DisplayType.numberOfViews.getter(), v122 = v165, v165(v118, v119), ((v172 >= v121) & v169) != 0) || (v116 = enum case for LockupMediaLayout.DisplayType.twoUp(_:), v171(v118, enum case for LockupMediaLayout.DisplayType.twoUp(_:), v119), v123 = LockupMediaLayout.DisplayType.numberOfViews.getter(), v122(v118, v119), v172 >= v123))
    {

      v115 = v134;
      v171(v134, v116, v119);
      v81 = v170;
      v106 = v119;
    }

    else
    {
      v124 = enum case for LockupMediaLayout.DisplayType.oneUp(_:);
      v171(v118, enum case for LockupMediaLayout.DisplayType.oneUp(_:), v119);
      v125 = LockupMediaLayout.DisplayType.numberOfViews.getter();

      v122(v118, v119);
      v106 = v119;
      if (v172 == v125)
      {
        v115 = v134;
        v126 = v134;
        v127 = v124;
      }

      else
      {
        v127 = enum case for LockupMediaLayout.DisplayType.none(_:);
        v115 = v134;
        v126 = v134;
      }

      v171(v126, v127, v119);
      v81 = v170;
    }

    v104 = v142;
    v105 = v136;
    v82 = v173;
    goto LABEL_87;
  }

  if (*((v68 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

    goto LABEL_76;
  }

  __break(1u);
  return result;
}

uint64_t sub_1006CC5B4(double a1, double a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = sub_10002849C(&qword_100992470);
  __chkstk_darwin(v15 - 8);
  v17 = v30 - v16;
  v18 = type metadata accessor for ComponentPrefetchSizing();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = Shelf.prefetchableArtwork.getter();
  if (v22 >> 62)
  {
    v27 = a6;
    v28 = v22;
    v29 = _CocoaArrayWrapper.endIndex.getter();
    v22 = v28;
    a6 = v27;
    if (v29)
    {
LABEL_3:
      v30[1] = a6;
      v23 = v22;
      (*(a8 + 16))(a4 & 1, a5, a7, a8, a1, a2);
      if ((*(v19 + 48))(v17, 1, v18) == 1)
      {

        return sub_10002B894(v17, &qword_100992470);
      }

      else
      {
        v25 = (*(v19 + 32))(v21, v17, v18);
        __chkstk_darwin(v25);
        v30[-2] = v21;
        v26 = sub_1000B40B8(sub_1000BDD2C, &v30[-4], v23);

        ArtworkLoader.prefetchArtwork(using:)(v26);

        return (*(v19 + 8))(v21, v18);
      }
    }
  }

  else if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }
}

uint64_t sub_1006CC88C(uint64_t a1, unsigned __int8 a2)
{
  v4 = type metadata accessor for FloatingPointRoundingRule();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Shelf.ContentType();
  v9 = (*(*(v8 - 8) + 48))(a1, 1, v8);
  result = 0;
  if (((v9 != 1) & a2) == 1)
  {
    if (qword_10096E6C0 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for StaticDimension();
    sub_1000056A8(v11, qword_1009D2460);
    static Dimensions.defaultRoundingRule.getter();
    AnyDimension.value(in:rounded:)();
    v13 = v12;
    (*(v5 + 8))(v7, v4);
    return v13;
  }

  return result;
}

uint64_t sub_1006CCA3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = a2;
  v6 = type metadata accessor for FloatingPointRoundingRule();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ShelfBackground();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Shelf.ContentType();
  if ((*(*(v14 - 8) + 48))(a1, 1, v14) == 1)
  {
    return 0;
  }

  v25 = v7;
  v26 = a4;
  v16 = enum case for ShelfBackground.none(_:);
  v17 = *(v11 + 104);
  v17(v13, enum case for ShelfBackground.none(_:), v10);
  v18 = static ShelfBackground.== infix(_:_:)();
  v19 = *(v11 + 8);
  v19(v13, v10);
  if ((v18 & 1) == 0)
  {
    return 0;
  }

  v17(v13, v16, v10);
  sub_1006BA1B4();
  v20 = dispatch thunk of static Equatable.== infix(_:_:)();
  v19(v13, v10);
  if (v20)
  {
    return 0;
  }

  if (qword_10096E6C0 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for StaticDimension();
  sub_1000056A8(v21, qword_1009D2460);
  static Dimensions.defaultRoundingRule.getter();
  AnyDimension.value(in:rounded:)();
  v23 = v22;
  (*(v25 + 8))(v9, v6);
  return v23;
}

uint64_t sub_1006CD76C()
{
  if (Shelf.prefetchableArtwork.getter() >> 62)
  {
    _CocoaArrayWrapper.endIndex.getter();
  }
}

uint64_t sub_1006CD7C8(uint64_t a1, char a2)
{
  v3 = type metadata accessor for ComponentPrefetchSizing();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v18[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v9 = &v18[-v8];
  v10 = Shelf.prefetchableArtwork.getter();
  if (v10 >> 62)
  {
    v16 = v10;
    v17 = _CocoaArrayWrapper.endIndex.getter();
    v10 = v16;
    if (v17)
    {
      goto LABEL_3;
    }
  }

  else if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    v11 = v10;
    if (a2)
    {
      swift_getObjectType();
      PageTraitEnvironment.pageColumnWidth.getter();
      PageTraitEnvironment.pageColumnMargin.getter();
    }

    if (qword_10096D050 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for AspectRatio();
    sub_1000056A8(v12, qword_1009CDF98);
    AspectRatio.height(fromWidth:)();
    ComponentPrefetchSizing.init(size:contentMode:)();
    v13 = (*(v4 + 32))(v9, v6, v3);
    __chkstk_darwin(v13);
    *&v18[-16] = v9;
    v14 = sub_1000B40B8(sub_1000C26E8, &v18[-32], v11);

    ArtworkLoader.prefetchArtwork(using:)(v14);

    return (*(v4 + 8))(v9, v3);
  }
}

uint64_t sub_1006CDA78()
{
  v0 = type metadata accessor for ComponentPrefetchSizing();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v11[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = Shelf.prefetchableArtwork.getter();
  if (v4 >> 62)
  {
    v9 = v4;
    v10 = _CocoaArrayWrapper.endIndex.getter();
    v4 = v9;
    if (v10)
    {
      goto LABEL_3;
    }
  }

  else if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    v5 = v4;
    swift_getObjectType();
    PageTraitEnvironment.pageColumnWidth.getter();
    PageTraitEnvironment.pageColumnMargin.getter();
    v6 = ComponentPrefetchSizing.init(size:contentMode:)();
    __chkstk_darwin(v6);
    *&v11[-16] = v3;
    v7 = sub_1000B40B8(sub_1000C26E8, &v11[-32], v5);

    ArtworkLoader.prefetchArtwork(using:)(v7);

    return (*(v1 + 8))(v3, v0);
  }
}

uint64_t sub_1006CDC70()
{
  v0 = type metadata accessor for ComponentPrefetchSizing();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = Shelf.prefetchableArtwork.getter();
  if (v4 >> 62)
  {
    v10 = v4;
    v11 = _CocoaArrayWrapper.endIndex.getter();
    v4 = v10;
    if (v11)
    {
      goto LABEL_3;
    }
  }

  else if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    v5 = v4;
    if (qword_10096EE80 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for SmallLockupLayout.Metrics();
    sub_1000056A8(v6, qword_1009D3798);
    SmallLockupLayout.Metrics.artworkSize.getter();
    v7 = ComponentPrefetchSizing.init(size:contentMode:)();
    __chkstk_darwin(v7);
    *&v12[-16] = v3;
    v8 = sub_1000B40B8(sub_1000C26E8, &v12[-32], v5);

    ArtworkLoader.prefetchArtwork(using:)(v8);

    return (*(v1 + 8))(v3, v0);
  }
}

uint64_t sub_1006CDE78(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = sub_10002849C(&unk_100970EA0);
  v27 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = v25 - v6;
  v8 = type metadata accessor for MediumLockupLayout.Metrics();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ComponentPrefetchSizing();
  v28 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = Shelf.prefetchableArtwork.getter();
  if (v15 >> 62)
  {
    v22 = v12;
    v23 = v15;
    v24 = _CocoaArrayWrapper.endIndex.getter();
    v15 = v23;
    v12 = v22;
    if (v24)
    {
      goto LABEL_3;
    }
  }

  else if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    v26 = v12;
    v16 = v15;
    v17 = [a2 traitCollection];
    v25[1] = a3;
    v18 = v17;
    sub_100631334(v11);

    MediumLockupLayout.Metrics.artworkSize.getter();
    (*(v9 + 8))(v11, v8);
    v29 = a2;
    swift_unknownObjectRetain();
    Conditional.evaluate(with:)();
    (*(v27 + 8))(v7, v5);
    swift_unknownObjectRelease();
    v19 = ComponentPrefetchSizing.init(size:contentMode:)();
    __chkstk_darwin(v19);
    v25[-2] = v14;
    v20 = sub_1000B40B8(sub_1000C26E8, &v25[-4], v16);

    ArtworkLoader.prefetchArtwork(using:)(v20);

    return (*(v28 + 8))(v14, v26);
  }
}

uint64_t sub_1006CE1E8(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v25 = a4;
  v5 = type metadata accessor for AspectRatio();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ComponentPrefetchSizing();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v23 - v14;
  v16 = Shelf.prefetchableArtwork.getter();
  if (v16 >> 62)
  {
    v21 = v16;
    v22 = _CocoaArrayWrapper.endIndex.getter();
    v16 = v21;
    if (v22)
    {
      goto LABEL_3;
    }
  }

  else if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    v24 = v16;
    if (a2)
    {
      swift_getObjectType();
      PageTraitEnvironment.pageColumnWidth.getter();
    }

    if (qword_10096D4D0 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for FlowcaseItemLayout.Metrics();
    sub_1000056A8(v17, qword_1009CEA50);
    FlowcaseItemLayout.Metrics.artworkAspectRatio.getter();
    AspectRatio.height(fromWidth:)();
    (*(v6 + 8))(v8, v5);
    ComponentPrefetchSizing.init(size:contentMode:)();
    v18 = (*(v10 + 32))(v15, v12, v9);
    __chkstk_darwin(v18);
    *(&v23 - 2) = v15;
    v19 = sub_1000B40B8(sub_1000C26E8, (&v23 - 4), v24);

    ArtworkLoader.prefetchArtwork(using:)(v19);

    return (*(v10 + 8))(v15, v9);
  }
}

uint64_t sub_1006CE518(uint64_t a1)
{
  v2 = sub_10002849C(&unk_100992460);
  __chkstk_darwin(v2 - 8);
  v4 = &v20 - v3;
  v5 = type metadata accessor for Shelf.ContentType();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v20 - v10;
  sub_100094EE4(a1, v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_10002B894(v4, &unk_100992460);
  }

  else
  {
    v12 = *(v6 + 32);
    v12(v11, v4, v5);
    v12(v8, v11, v5);
    v13 = (*(v6 + 88))(v8, v5);
    if (v13 == enum case for Shelf.ContentType.largeHeroBreakout(_:) || v13 == enum case for Shelf.ContentType.upsellBreakout(_:) || v13 == enum case for Shelf.ContentType.smallBreakout(_:) || v13 == enum case for Shelf.ContentType.editorialStoryCard(_:) || v13 == enum case for Shelf.ContentType.gameCenterReengagement(_:) || v13 == enum case for Shelf.ContentType.heroCarousel(_:))
    {
      return 0;
    }

    (*(v6 + 8))(v8, v5);
  }

  return 1;
}

void sub_1006CE764()
{
  _StringGuts.grow(_:)(40);
  _typeName(_:qualified:)();

  v0._object = 0x80000001008209F0;
  v0._countAndFlagsBits = 0xD000000000000026;
  String.append(_:)(v0);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

double *sub_1006CE83C(void *a1, char a2)
{
  v2 = &unk_1008AE840;
  if ((a2 & 1) == 0)
  {
    v2 = &unk_1008AE7F8;
  }

  v3 = *v2;
  if (*v2)
  {
    v5 = a1;
    result = specialized ContiguousArray.reserveCapacity(_:)();
    if (a2)
    {
      v7 = &off_1008AE830;
    }

    else
    {
      v7 = &off_1008AE7E8;
    }

    v8 = (v7 + 4);
    for (i = v3 & ~(v3 >> 63); i; --i)
    {
      v10 = *v8++;
      v11 = [v5 colorWithAlphaComponent:v10];
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      result = specialized ContiguousArray._endMutation()();
      if (!--v3)
      {

        return _swiftEmptyArrayStorage;
      }
    }

    __break(1u);
  }

  else
  {

    return _swiftEmptyArrayStorage;
  }

  return result;
}

char *sub_1006CE96C(char a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC8AppStore29ModuleOverlayGradientBlurView_effectVisibilityThreshold] = 0;
  v4 = OBJC_IVAR____TtC8AppStore29ModuleOverlayGradientBlurView_alignment;
  v5 = enum case for HeroCarouselItemOverlay.DisplayOptions.Placement.leading(_:);
  v6 = type metadata accessor for HeroCarouselItemOverlay.DisplayOptions.Placement();
  (*(*(v6 - 8) + 104))(&v1[v4], v5, v6);
  v45 = a1 & 1;
  v46 = a1;
  v1[OBJC_IVAR____TtC8AppStore29ModuleOverlayGradientBlurView_style] = a1 & 1;
  v7 = type metadata accessor for GradientView();
  v8 = [objc_allocWithZone(v7) init];
  *&v1[OBJC_IVAR____TtC8AppStore29ModuleOverlayGradientBlurView_overlayView] = v8;
  v9 = [objc_allocWithZone(v7) init];
  *&v1[OBJC_IVAR____TtC8AppStore29ModuleOverlayGradientBlurView_plusDarkerView] = v9;
  v10 = [objc_allocWithZone(v7) init];
  *&v1[OBJC_IVAR____TtC8AppStore29ModuleOverlayGradientBlurView_gradientMaskView] = v10;
  result = [objc_opt_self() effectWithBlurRadius:35.0];
  if (result)
  {
    v12 = result;
    v47.receiver = v1;
    v47.super_class = ObjectType;
    v13 = objc_msgSendSuper2(&v47, "initWithEffect:", result);

    v14 = v13;
    [v14 setOverrideUserInterfaceStyle:2];
    [v14 setUserInteractionEnabled:0];
    [v14 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
    v15 = v14;
    [v15 setClipsToBounds:0];
    v16 = [v15 contentView];
    v17 = [v16 layer];

    [v17 setAllowsGroupBlending:0];
    v18 = OBJC_IVAR____TtC8AppStore29ModuleOverlayGradientBlurView_overlayView;
    v19 = *&v15[OBJC_IVAR____TtC8AppStore29ModuleOverlayGradientBlurView_overlayView];
    v20 = objc_opt_self();
    v21 = v19;
    v22 = [v20 blackColor];
    specialized ContiguousArray.reserveCapacity(_:)();
    v23 = [v22 colorWithAlphaComponent:0.0];
    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    v24 = [v22 colorWithAlphaComponent:0.2];
    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();

    *&v21[OBJC_IVAR____TtC8AppStore12GradientView_colors] = _swiftEmptyArrayStorage;

    sub_1001C0CEC();

    v25 = [v15 contentView];
    [v25 addSubview:*&v15[v18]];

    v26 = OBJC_IVAR____TtC8AppStore29ModuleOverlayGradientBlurView_plusDarkerView;
    v27 = *&v15[OBJC_IVAR____TtC8AppStore29ModuleOverlayGradientBlurView_plusDarkerView];
    v28 = [v20 blackColor];
    specialized ContiguousArray.reserveCapacity(_:)();
    v29 = [v28 colorWithAlphaComponent:0.0];
    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    v30 = [v28 colorWithAlphaComponent:0.2];
    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();

    *&v27[OBJC_IVAR____TtC8AppStore12GradientView_colors] = _swiftEmptyArrayStorage;

    sub_1001C0CEC();

    v31 = [*&v15[v26] layer];
    [v31 setCompositingFilter:kCAFilterPlusD];

    v32 = [v15 contentView];
    [v32 addSubview:*&v15[v26]];

    v33 = OBJC_IVAR____TtC8AppStore29ModuleOverlayGradientBlurView_gradientMaskView;
    v34 = *&v15[OBJC_IVAR____TtC8AppStore29ModuleOverlayGradientBlurView_gradientMaskView];
    v35 = [v20 blackColor];
    v36 = sub_1006CE83C(v35, v45);

    *&v34[OBJC_IVAR____TtC8AppStore12GradientView_colors] = v36;

    sub_1001C0CEC();

    v37 = *&v15[v33];
    if (v46)
    {
      v38 = &off_1008AE8C0;
    }

    else
    {
      v38 = &off_1008AE878;
    }

    if (v46)
    {
      v39 = &kCAGradientLayerRadial;
    }

    else
    {
      v39 = &kCAGradientLayerAxial;
    }

    sub_1001C0B48(v38);

    v40 = *&v15[v33];
    v40[OBJC_IVAR____TtC8AppStore12GradientView_kind] = v45;
    v41 = v40;
    v42 = [v41 layer];
    objc_opt_self();
    [swift_dynamicCastObjCClassUnconditional() setType:*v39];

    v43 = [v15 layer];
    v44 = [*&v15[v33] layer];
    objc_opt_self();
    [v43 setMask:swift_dynamicCastObjCClassUnconditional()];

    return v15;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1006CF0D8()
{
  v1 = v0;
  swift_getObjectType();
  v2 = type metadata accessor for HeroCarouselItemOverlay.DisplayOptions.Placement();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v21 - v7;
  if (v1[OBJC_IVAR____TtC8AppStore29ModuleOverlayGradientBlurView_style] == 1)
  {
    v9 = OBJC_IVAR____TtC8AppStore29ModuleOverlayGradientBlurView_alignment;
    swift_beginAccess();
    (*(v3 + 16))(v5, &v1[v9], v2);
    v10 = [v1 traitCollection];
    HeroCarouselItemOverlay.DisplayOptions.Placement.value(with:)();

    v11 = *(v3 + 8);
    v11(v5, v2);
    v12 = (*(v3 + 88))(v8, v2);
    if (v12 == enum case for HeroCarouselItemOverlay.DisplayOptions.Placement.leading(_:))
    {
      v13 = 150.0;
      v14 = 500.0;
    }

    else
    {
      if (v12 == enum case for HeroCarouselItemOverlay.DisplayOptions.Placement.center(_:))
      {
        LayoutMarginsAware<>.layoutFrame.getter();
        v13 = CGRectGetWidth(v22) * 0.5;
        v15 = 350.0;
      }

      else
      {
        if (v12 != enum case for HeroCarouselItemOverlay.DisplayOptions.Placement.trailing(_:))
        {
          v11(v8, v2);
          v14 = 0.0;
          v13 = 0.0;
          goto LABEL_10;
        }

        LayoutMarginsAware<>.layoutFrame.getter();
        v13 = CGRectGetWidth(v23) + -150.0;
        v15 = -350.0;
      }

      v14 = v13 + v15;
    }

LABEL_10:
    v16 = *&v1[OBJC_IVAR____TtC8AppStore29ModuleOverlayGradientBlurView_gradientMaskView];
    LayoutMarginsAware<>.layoutFrame.getter();
    v17 = v13 / CGRectGetWidth(v24);
    v18 = [v16 layer];
    objc_opt_self();
    [swift_dynamicCastObjCClassUnconditional() setStartPoint:{v17, 1.0}];

    LayoutMarginsAware<>.layoutFrame.getter();
    v19 = v14 / CGRectGetWidth(v25);
    v20 = [v16 layer];
    objc_opt_self();
    [swift_dynamicCastObjCClassUnconditional() setEndPoint:{v19, 0.0}];
  }
}

uint64_t type metadata accessor for ModuleOverlayGradientBlurView()
{
  result = qword_1009924C8;
  if (!qword_1009924C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1006CF5FC()
{
  result = type metadata accessor for HeroCarouselItemOverlay.DisplayOptions.Placement();
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

unint64_t sub_1006CF6CC()
{
  result = qword_1009924D8;
  if (!qword_1009924D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009924D8);
  }

  return result;
}

uint64_t sub_1006CF720()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002849C(&qword_100973210);
  v5 = swift_allocObject();
  v28 = xmmword_1007B0B70;
  *(v5 + 16) = xmmword_1007B0B70;
  v6 = swift_allocObject();
  *(v6 + 16) = v0;
  type metadata accessor for ActionDebugSetting();
  v7 = swift_allocObject();
  *(v7 + 56) = 0xD000000000000016;
  *(v7 + 64) = 0x80000001008212E0;
  *(v7 + 72) = 0u;
  *(v7 + 88) = 0u;
  *(v7 + 104) = sub_1006D00AC;
  *(v7 + 112) = v6;
  v8 = v0;

  UUID.init()();
  v9 = UUID.uuidString.getter();
  v11 = v10;
  v12 = *(v2 + 8);
  v29 = v2 + 8;
  v30 = v12;
  v12(v4, v1);
  v31 = v9;
  v32 = v11;
  AnyHashable.init<A>(_:)();

  *(v5 + 32) = v7;
  v13 = swift_allocObject();
  *(v13 + 16) = v28;
  v14 = v13;
  v27 = v13;
  type metadata accessor for PromptActionDebugSetting();
  swift_allocObject();
  *(v14 + 32) = sub_100553DF8(0xD000000000000018, 0x8000000100821300, 0, 0, sub_1006CFA74, 0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1007B15F0;
  type metadata accessor for DebugSection();
  v16 = swift_allocObject();
  UUID.init()();
  v17 = UUID.uuidString.getter();
  v19 = v18;
  v20 = v30;
  v30(v4, v1);
  v16[2] = v17;
  v16[3] = v19;
  v16[4] = 0x42206F54206B7341;
  v16[5] = 0xEA00000000007975;
  v16[6] = v5;
  *(v15 + 32) = v16;
  v21 = swift_allocObject();
  UUID.init()();
  v22 = UUID.uuidString.getter();
  v24 = v23;
  v20(v4, v1);
  v21[2] = v22;
  v21[3] = v24;
  v21[4] = 0xD000000000000015;
  v21[5] = 0x8000000100821320;
  v21[6] = v27;
  *(v15 + 40) = v21;
  return v15;
}

void sub_1006CFA74(uint64_t a1, uint64_t a2, unint64_t a3)
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
        v39 = v38;

        if (v39)
        {
          return;
        }

        goto LABEL_64;
      }

      if ((a3 & 0x2000000000000000) != 0)
      {
        v40 = a2;
        v41 = a3 & 0xFFFFFFFFFFFFFFLL;
        if (a2 == 43)
        {
          if (v4)
          {
            if (--v4)
            {
              v9 = 0;
              v19 = &v40 + 1;
              while (1)
              {
                v20 = *v19 - 48;
                if (v20 > 9)
                {
                  break;
                }

                v21 = 10 * v9;
                if ((v9 * 10) >> 64 != (10 * v9) >> 63)
                {
                  break;
                }

                v9 = v21 + v20;
                if (__OFADD__(v21, v20))
                {
                  break;
                }

                ++v19;
                if (!--v4)
                {
                  goto LABEL_63;
                }
              }
            }

            goto LABEL_62;
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
            v24 = &v40;
            while (1)
            {
              v25 = *v24 - 48;
              if (v25 > 9)
              {
                break;
              }

              v26 = 10 * v9;
              if ((v9 * 10) >> 64 != (10 * v9) >> 63)
              {
                break;
              }

              v9 = v26 + v25;
              if (__OFADD__(v26, v25))
              {
                break;
              }

              v24 = (v24 + 1);
              if (!--v4)
              {
                goto LABEL_63;
              }
            }
          }

          goto LABEL_62;
        }

        if (v4)
        {
          if (--v4)
          {
            v9 = 0;
            v13 = &v40 + 1;
            while (1)
            {
              v14 = *v13 - 48;
              if (v14 > 9)
              {
                break;
              }

              v15 = 10 * v9;
              if ((v9 * 10) >> 64 != (10 * v9) >> 63)
              {
                break;
              }

              v9 = v15 - v14;
              if (__OFSUB__(v15, v14))
              {
                break;
              }

              ++v13;
              if (!--v4)
              {
                goto LABEL_63;
              }
            }
          }

          goto LABEL_62;
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
                v16 = v7 + 1;
                while (1)
                {
                  v17 = *v16 - 48;
                  if (v17 > 9)
                  {
                    goto LABEL_62;
                  }

                  v18 = 10 * v9;
                  if ((v9 * 10) >> 64 != (10 * v9) >> 63)
                  {
                    goto LABEL_62;
                  }

                  v9 = v18 + v17;
                  if (__OFADD__(v18, v17))
                  {
                    goto LABEL_62;
                  }

                  ++v16;
                  if (!--v4)
                  {
                    goto LABEL_63;
                  }
                }
              }

              goto LABEL_54;
            }

            goto LABEL_62;
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
                v22 = *v7 - 48;
                if (v22 > 9)
                {
                  goto LABEL_62;
                }

                v23 = 10 * v9;
                if ((v9 * 10) >> 64 != (10 * v9) >> 63)
                {
                  goto LABEL_62;
                }

                v9 = v23 + v22;
                if (__OFADD__(v23, v22))
                {
                  goto LABEL_62;
                }

                ++v7;
                if (!--v5)
                {
                  goto LABEL_54;
                }
              }
            }

            goto LABEL_54;
          }

LABEL_62:
          v9 = 0;
          LOBYTE(v4) = 1;
LABEL_63:
          v42 = v4;
          if (v4)
          {
            return;
          }

LABEL_64:
          v27 = objc_opt_self();
          v28 = [v27 treatmentOverrides];
          if (v28)
          {
            v29 = v28;
            v30 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
          }

          else
          {
            v30 = sub_1001962CC(_swiftEmptyArrayStorage);
          }

          v40 = 0x62734435625378;
          v41 = 0xE700000000000000;
          sub_10002849C(&unk_10097E350);
          v31 = swift_allocObject();
          *(v31 + 16) = xmmword_1007B10D0;
          *(v31 + 56) = &type metadata for Int;
          *(v31 + 64) = &protocol witness table for Int;
          *(v31 + 32) = v9;
          v32._countAndFlagsBits = String.init(format:_:)();
          String.append(_:)(v32);

          v33 = v40;
          v34 = v41;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v40 = v30;
          sub_10005192C(v33, v34, 0x6D4B3562504E66, 0xE700000000000000, isUniquelyReferenced_nonNull_native);
          isa = Dictionary._bridgeToObjectiveC()().super.isa;

          [v27 setTreatmentOverrides:isa];

          return;
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
                  goto LABEL_62;
                }

                v12 = 10 * v9;
                if ((v9 * 10) >> 64 != (10 * v9) >> 63)
                {
                  goto LABEL_62;
                }

                v9 = v12 - v11;
                if (__OFSUB__(v12, v11))
                {
                  goto LABEL_62;
                }

                ++v10;
                if (!--v4)
                {
                  goto LABEL_63;
                }
              }
            }

LABEL_54:
            LOBYTE(v4) = 0;
            goto LABEL_63;
          }

          goto LABEL_62;
        }

        __break(1u);
      }

      __break(1u);
LABEL_74:
      __break(1u);
      goto LABEL_75;
    }
  }
}

void sub_1006CFED4(uint64_t a1)
{
  v2 = [objc_opt_self() defaultCenter];
  v3 = static AskToBuyRequestNotificationDetails.notificationName.getter();
  sub_10002849C(&unk_10097E340);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007B10D0;
  static AskToBuyRequestNotificationDetails.adamIdKey.getter();
  AnyHashable.init<A>(_:)();
  v5 = type metadata accessor for AdamId();
  *(inited + 96) = v5;
  v6 = sub_1000056E0((inited + 72));
  (*(*(v5 - 8) + 16))(v6, a1, v5);
  sub_100397CE8(inited);
  swift_setDeallocating();
  sub_10002B894(inited + 32, &unk_1009827A0);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v2 postNotificationName:v3 object:0 userInfo:isa];
}

id sub_1006D0054()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProductPageSettings();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1006D00D0()
{
  v0 = sub_10002849C(&qword_100972A80);
  __chkstk_darwin(v0 - 8);
  v2 = &v27 - v1;
  v3 = type metadata accessor for AdamId();
  v29 = *(v3 - 8);
  v4 = *(v29 + 64);
  __chkstk_darwin(v3);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v27 - v7;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v11 = [Strong presentingViewController];

    if (v11)
    {
      objc_opt_self();
      v12 = swift_dynamicCastObjCClass();
      if (!v12)
      {
LABEL_6:

        goto LABEL_7;
      }

      v13 = [v12 selectedViewController];

      if (v13)
      {
        objc_opt_self();
        v14 = swift_dynamicCastObjCClass();
        v11 = v13;
        if (v14)
        {
          goto LABEL_10;
        }

        goto LABEL_6;
      }
    }
  }

LABEL_7:
  v15 = swift_unknownObjectWeakLoadStrong();
  if (!v15)
  {
    return;
  }

  v16 = v15;
  v30 = [v15 presentingViewController];

  if (!v30)
  {
    return;
  }

  objc_opt_self();
  v14 = swift_dynamicCastObjCClass();
  if (!v14)
  {
    goto LABEL_14;
  }

LABEL_10:
  v30 = v14;
  v17 = [v14 topViewController];
  if (!v17)
  {
LABEL_14:
    v19 = v30;
LABEL_16:

    return;
  }

  v28 = v17;
  type metadata accessor for ProductDiffablePageViewController();
  if (!swift_dynamicCastClass())
  {

    v19 = v28;
    goto LABEL_16;
  }

  ProductDiffablePagePresenter.adamId.getter();

  v18 = v29;
  if ((*(v29 + 48))(v2, 1, v3) == 1)
  {

    sub_10002B894(v2, &qword_100972A80);
    return;
  }

  v27 = *(v18 + 32);
  v27(v8, v2, v3);
  v20 = swift_unknownObjectWeakLoadStrong();
  if (v20)
  {
    v21 = v20;
    v22 = [v20 presentingViewController];

    if (v22)
    {
      v23 = v29;
      (*(v29 + 16))(v5, v8, v3);
      v24 = (*(v23 + 80) + 16) & ~*(v23 + 80);
      v25 = swift_allocObject();
      v27((v25 + v24), v5, v3);
      aBlock[4] = sub_1006D0598;
      aBlock[5] = v25;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100007A08;
      aBlock[3] = &unk_1008CF048;
      v26 = _Block_copy(aBlock);

      [v22 dismissViewControllerAnimated:1 completion:v26];
      _Block_release(v26);

      (*(v23 + 8))(v8, v3);
      return;
    }

    (*(v29 + 8))(v8, v3);
  }

  else
  {
    (*(v18 + 8))(v8, v3);
  }
}

void sub_1006D0598()
{
  v1 = *(type metadata accessor for AdamId() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  sub_1006CFED4(v2);
}

id sub_1006D05F8(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v6 = v5;
  v12 = type metadata accessor for FloatingPointRoundingRule();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v62 = v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = v59 - v16;
  v18 = *(v5 + 83);
  v19 = *(v5 + 81);
  if ((v18 & 1) != 0 || v19 != 6)
  {
    v22 = v19 == 4;
    v23 = v19 == 6;
    v21 = *(v6 + 8);
  }

  else
  {
    v20 = UITraitCollection.prefersAccessibilityLayouts.getter();
    v21 = *(v5 + 8);
    if ((v20 & 1) == 0)
    {
      v67.origin.x = a2;
      v67.origin.y = a3;
      v67.size.width = a4;
      v67.size.height = a5;
      v68 = CGRectInset(v67, *(v5 + 8), 0.0);
      v22 = 0;
      if (v68.size.width * *(v5 + 32) > *(v5 + 40))
      {
        width = v68.size.width * *(v5 + 32);
      }

      else
      {
        width = *(v5 + 40);
      }

      v25 = 1;
      goto LABEL_13;
    }

    v22 = 0;
    v23 = 1;
  }

  v64.origin.x = a2;
  v64.origin.y = a3;
  v64.size.width = a4;
  v64.size.height = a5;
  v65 = CGRectInset(v64, v21, 0.0);
  width = v65.size.width;
  if (!v23)
  {
    v66.origin.x = a2;
    v66.origin.y = a3;
    v66.size.width = a4;
    v66.size.height = a5;
    v25 = 0;
    v26 = CGRectGetWidth(v66) - width - v21;
    goto LABEL_14;
  }

  v25 = 0;
LABEL_13:
  v69.origin.x = a2;
  v69.origin.y = a3;
  v69.size.width = a4;
  v69.size.height = a5;
  v26 = (CGRectGetWidth(v69) - width - v21) * 0.5;
LABEL_14:
  v27 = *(v6 + 84);
  v28 = *(v6 + 56);
  v63 = v21;
  if ((v27 & 1) == 0)
  {
    LODWORD(v61) = v18;
    *&v59[1] = a1;
    v30 = *(v13 + 104);
    v31 = v17;
    v59[0] = v26;
    v30(v17, enum case for FloatingPointRoundingRule.up(_:), v12);
    v32 = v62;
    v30(v62, enum case for FloatingPointRoundingRule.down(_:), v12);
    CGRect.rounded(originRule:sizeRule:)();
    v34 = v33;
    v36 = v35;
    v60 = a2;
    v37 = a3;
    v38 = a4;
    v39 = a5;
    v40 = width;
    v42 = v41;
    v44 = v43;
    v45 = *(v13 + 8);
    v45(v32, v12);
    v45(v31, v12);
    v18 = v61;
    v70.origin.x = v34;
    v70.origin.y = v36;
    v70.size.width = v42;
    width = v40;
    a5 = v39;
    a4 = v38;
    a3 = v37;
    a2 = v60;
    v70.size.height = v44;
    CGRectInset(v70, v59[0], 0.0);
    CustomLayoutView.sizeThatFits(_:)();
    v62 = v46;
    if (v25)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  [v28 bounds];
  v62 = v29;
  if ((v25 & 1) == 0)
  {
LABEL_18:
    v71.origin.x = a2;
    v71.origin.y = a3;
    v71.size.width = a4;
    v71.size.height = a5;
    width = CGRectGetWidth(v71);
  }

LABEL_19:
  v72.origin.x = a2;
  v72.origin.y = a3;
  v72.size.width = a4;
  v72.size.height = a5;
  Height = CGRectGetHeight(v72);
  v48 = *(v6 + 64);
  if (v48)
  {
    [*(v6 + 64) sizeThatFits:{width, Height}];
    v61 = v49;
    v51 = v50;
    if (*&v48[OBJC_IVAR____TtC8AppStore29InfoLayerOverlayContainerView_overlayView])
    {
      v52 = 0;
      goto LABEL_24;
    }
  }

  else
  {
    v61 = 0;
    v51 = 0.0;
  }

  v52 = 1;
LABEL_24:
  v53 = *(v6 + 82);
  v60 = v51;
  if (v53 == 4)
  {
    if (((v22 | v18 ^ 1 | v52) & 1) == 0)
    {
      goto LABEL_26;
    }

LABEL_29:
    v74.origin.x = a2;
    v74.origin.y = a3;
    v74.size.width = a4;
    v74.size.height = a5;
    CGRectGetMaxY(v74);
    v75.origin.x = a2;
    v75.origin.y = a3;
    v75.size.width = a4;
    v75.size.height = a5;
    CGRectGetMaxY(v75);
    if (v25)
    {
      goto LABEL_33;
    }

LABEL_30:
    v54 = a2;
    v55 = a3;
    v56 = a4;
    v57 = a5;
    if (v18)
    {
      CGRectGetMinX(*&v54);
    }

    else
    {
      CGRectGetMidX(*&v54);
    }

    goto LABEL_33;
  }

  if ((v22 | v52) == 1)
  {
    goto LABEL_29;
  }

LABEL_26:
  v73.origin.x = a2;
  v73.origin.y = a3;
  v73.size.width = a4;
  v73.size.height = a5;
  CGRectGetMaxY(v73);
  if (!v25)
  {
    goto LABEL_30;
  }

LABEL_33:
  CGRect.withLayoutDirection(using:relativeTo:)();
  result = [v28 setFrame:?];
  if (v48)
  {
    CGRect.withLayoutDirection(using:relativeTo:)();
    return [v48 setFrame:?];
  }

  return result;
}

__n128 sub_1006D0B3C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 77) = *(a2 + 77);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1006D0B60(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 85))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1006D0BA8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 84) = 0;
    *(result + 80) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 85) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 85) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1006D0C18(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 56))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1006D0C38(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 56) = v3;
  return result;
}

void sub_1006D0CC8()
{
  v0 = type metadata accessor for LogMessage.StringInterpolation();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for OSLogger();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v60 = &v55 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for PageGrid();
  v61 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for UnifiedMessage();
  sub_1006D1410(&qword_10098BA08, &type metadata accessor for UnifiedMessage);
  ItemLayoutContext.typedModel<A>(as:)();
  v8 = v63[0];
  if (v63[0])
  {
    v59 = v2;
    type metadata accessor for InlineUnifiedMessagePresenter();
    BaseObjectGraph.optional<A>(_:)();
    v9 = v63[0];
    if (!v63[0])
    {

      return;
    }

    v58 = v1;
    UnifiedMessage.placement.getter();
    v10 = v9;
    v11 = InlineUnifiedMessagePresenter.inlineViewController(for:)();

    if (!v11)
    {

      return;
    }

    v57 = v10;
    sub_10002849C(&qword_10097F468);
    BaseObjectGraph.optional<A>(_:)();
    if (!v63[0])
    {

      return;
    }

    v56 = v63[0];
    v12 = v11;
    v13 = [v12 view];
    if (v13)
    {
      v14 = v13;
      v15 = [v13 superview];

      if (!v15)
      {
        v16 = [v12 view];
        if (!v16)
        {
LABEL_35:
          __break(1u);
          goto LABEL_36;
        }

        v17 = v16;
        [v16 setHidden:1];

        v18 = [v56 view];
        if (!v18)
        {
LABEL_36:
          __break(1u);
          goto LABEL_37;
        }

        v19 = v18;
        v20 = [v12 view];
        if (!v20)
        {
LABEL_37:
          __break(1u);
          goto LABEL_38;
        }

        v15 = v20;
        [v19 insertSubview:v20 atIndex:0];
      }

      v21 = [v12 view];
      if (v21)
      {
        v22 = v21;
        [v21 updateTraitsIfNeeded];

        swift_getKeyPath();
        ItemLayoutContext.subscript.getter();

        PageGrid.componentMeasuringSize(spanning:)();
        v24 = v23;
        v26 = v25;
        (*(v61 + 8))(v6, v4);
        v27 = (*(v62 + 144))(v24, v26);
        v29 = v28;
        v30 = [v12 view];
        if (v30)
        {
          v31 = v30;
          v32 = v12;
          [v30 sizeThatFits:{v27, v29}];
          v34 = v33;
          v36 = v35;

          v37 = v60;
          static OSLogger.inlineUnifiedMessage.getter();
          sub_10002849C(&unk_100972A10);
          type metadata accessor for LogMessage();
          *(swift_allocObject() + 16) = xmmword_1007B10D0;
          LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
          v38._object = 0x8000000100821340;
          v38._countAndFlagsBits = 0xD00000000000002CLL;
          LogMessage.StringInterpolation.appendLiteral(_:)(v38);
          v64 = v7;
          v63[0] = v8;

          LogMessage.StringInterpolation.appendInterpolation(safe:)();
          sub_10003D444(v63);
          v39._countAndFlagsBits = 8250;
          v39._object = 0xE200000000000000;
          LogMessage.StringInterpolation.appendLiteral(_:)(v39);
          type metadata accessor for CGSize(0);
          v64 = v40;
          v63[0] = v34;
          v63[1] = v36;
          LogMessage.StringInterpolation.appendInterpolation(safe:)();
          sub_10003D444(v63);
          v41._countAndFlagsBits = 0;
          v41._object = 0xE000000000000000;
          LogMessage.StringInterpolation.appendLiteral(_:)(v41);
          LogMessage.init(stringInterpolation:)();
          v42 = v58;
          Logger.debug(_:)();

          (*(v59 + 8))(v37, v42);
          v43 = [v12 view];
          v44 = v57;
          if (v43)
          {
            v45 = v43;
            v46 = [v43 superview];

            v47 = v56;
            v48 = [v56 view];
            v49 = v48;
            if (v46)
            {
              if (v48)
              {
                sub_100028004();
                v50 = static NSObject.== infix(_:_:)();

                if ((v50 & 1) == 0)
                {
LABEL_28:
                  v54 = [v32 view];

                  if (v54)
                  {
                    [v54 setHidden:0];

                    return;
                  }

                  goto LABEL_34;
                }

                goto LABEL_23;
              }

              v49 = v46;
            }

            else if (!v48)
            {
LABEL_23:
              v51 = [v32 view];
              if (!v51)
              {
LABEL_38:
                __break(1u);
                goto LABEL_39;
              }

              v52 = v51;
              [v51 removeFromSuperview];

              v53 = [v32 view];
              if (!v53)
              {
LABEL_39:
                __break(1u);
                return;
              }

              v49 = v53;
              [v53 updateTraitsIfNeeded];
            }

            goto LABEL_28;
          }

LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
          goto LABEL_35;
        }

LABEL_32:
        __break(1u);
        goto LABEL_33;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_32;
  }
}

uint64_t sub_1006D1410(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1006D1458(uint64_t a1)
{
  v1 = *(a1 + 32);

  v2 = swift_unknownObjectRetain();
  v1(v2);

  return swift_unknownObjectRelease();
}

uint64_t sub_1006D14B8()
{
  v0 = sub_10002849C(&qword_10097ABD8);
  sub_100005644(v0, qword_100992510);
  sub_1000056A8(v0, qword_100992510);
  sub_10002849C(&qword_100973F50);
  type metadata accessor for UIRectEdge(0);
  return Conditional<>.init(regularValue:rightToLeftValue:)();
}

void sub_1006D155C(void *a1, void *a2, char a3)
{
  v61 = a1;
  v62 = a2;
  ObjectType = swift_getObjectType();
  v6 = type metadata accessor for AutomationSemantics();
  v59 = *(v6 - 8);
  *&v60 = v6;
  __chkstk_darwin(v6);
  v8 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10002849C(&unk_100981210);
  __chkstk_darwin(v9 - 8);
  v11 = &v58 - v10;
  *&v3[OBJC_IVAR____TtC8AppStore33ArticlePagePresentationController_dismissTapGestureRecognizer] = 0;
  *&v3[OBJC_IVAR____TtC8AppStore33ArticlePagePresentationController_dismissSwipeGestureRecognizer] = 0;
  *&v3[OBJC_IVAR____TtC8AppStore33ArticlePagePresentationController_transitioningViewProvider + 8] = 0;
  swift_unknownObjectWeakInit();
  v3[OBJC_IVAR____TtC8AppStore33ArticlePagePresentationController_disableDismissGestures] = 0;
  v12 = &v3[OBJC_IVAR____TtC8AppStore33ArticlePagePresentationController_interactiveDismissal];
  *v12 = 0u;
  *(v12 + 1) = 0u;
  *(v12 + 4) = 0;
  swift_unknownObjectWeakInit();
  v3[OBJC_IVAR____TtC8AppStore33ArticlePagePresentationController_dismissCompleted] = 0;
  *&v3[OBJC_IVAR____TtC8AppStore33ArticlePagePresentationController_scrollDismissInitialTranslationY] = 0;
  v3[OBJC_IVAR____TtC8AppStore33ArticlePagePresentationController_isScrollDismissActive] = 0;
  v13 = [objc_opt_self() effectWithBlurRadius:50.0];
  v14 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v13];

  *&v3[OBJC_IVAR____TtC8AppStore33ArticlePagePresentationController_overlayBlurView] = v14;
  v15 = [objc_allocWithZone(UIView) init];
  *&v3[OBJC_IVAR____TtC8AppStore33ArticlePagePresentationController_overlayTintView] = v15;
  type metadata accessor for ShadowView();
  *&v3[OBJC_IVAR____TtC8AppStore33ArticlePagePresentationController_shadowView] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  type metadata accessor for TransitioningPresentedContainerView();
  v16 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v17 = OBJC_IVAR____TtC8AppStore33ArticlePagePresentationController_presentedContainerView;
  *&v3[OBJC_IVAR____TtC8AppStore33ArticlePagePresentationController_presentedContainerView] = v16;
  v3[OBJC_IVAR____TtC8AppStore33ArticlePagePresentationController_shouldUseReducedMotionTransition] = a3;
  v18 = type metadata accessor for Feature.iOS();
  *(&v66 + 1) = v18;
  v67 = sub_1005C7530();
  v19 = sub_1000056E0(&v65);
  (*(*(v18 - 8) + 104))(v19, enum case for Feature.iOS.today_tab_largest_ax_support(_:), v18);
  LOBYTE(v18) = isFeatureEnabled(_:)();
  sub_100007000(&v65);
  if ((v18 & 1) == 0)
  {
    [*&v3[v17] setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityExtraLarge];
  }

  v64.receiver = v3;
  v64.super_class = ObjectType;
  v20 = objc_msgSendSuper2(&v64, "initWithPresentedViewController:presentingViewController:", v61, v62);
  v21 = objc_allocWithZone(UITapGestureRecognizer);
  v22 = v20;
  v23 = [v21 initWithTarget:v22 action:"dismissTapDidChange:"];
  v24 = *&v22[OBJC_IVAR____TtC8AppStore33ArticlePagePresentationController_dismissTapGestureRecognizer];
  *&v22[OBJC_IVAR____TtC8AppStore33ArticlePagePresentationController_dismissTapGestureRecognizer] = v23;
  v25 = v23;

  if (!v25)
  {
    __break(1u);
    goto LABEL_12;
  }

  v26 = *&v22[OBJC_IVAR____TtC8AppStore33ArticlePagePresentationController_overlayBlurView];
  [v26 addGestureRecognizer:v25];

  v27 = OBJC_IVAR____TtC8AppStore33ArticlePagePresentationController_overlayTintView;
  [*&v22[OBJC_IVAR____TtC8AppStore33ArticlePagePresentationController_overlayTintView] setUserInteractionEnabled:0];
  v28 = *&v22[v27];
  v29 = objc_opt_self();
  v30 = v28;
  v31 = [v29 blackColor];
  [v30 setBackgroundColor:v31];

  [*&v22[v27] setAlpha:0.0];
  v32 = [objc_allocWithZone(UIScreenEdgePanGestureRecognizer) initWithTarget:v22 action:"edgePanDidChange:"];
  v33 = OBJC_IVAR____TtC8AppStore33ArticlePagePresentationController_dismissSwipeGestureRecognizer;
  v34 = *&v22[OBJC_IVAR____TtC8AppStore33ArticlePagePresentationController_dismissSwipeGestureRecognizer];
  *&v22[OBJC_IVAR____TtC8AppStore33ArticlePagePresentationController_dismissSwipeGestureRecognizer] = v32;
  v35 = v32;

  if (!v35)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    return;
  }

  if (qword_10096EE30 != -1)
  {
    swift_once();
  }

  v36 = sub_10002849C(&qword_10097ABD8);
  sub_1000056A8(v36, qword_100992510);
  v63 = v22;
  v37 = v22;
  Conditional.evaluate(with:)();

  [v35 setEdges:v65];
  if (!*&v22[v33])
  {
    goto LABEL_13;
  }

  v38 = OBJC_IVAR____TtC8AppStore33ArticlePagePresentationController_presentedContainerView;
  [*&v37[OBJC_IVAR____TtC8AppStore33ArticlePagePresentationController_presentedContainerView] addGestureRecognizer:?];
  v39 = OBJC_IVAR____TtC8AppStore33ArticlePagePresentationController_shadowView;
  v40 = qword_10096DA38;
  v41 = *&v37[OBJC_IVAR____TtC8AppStore33ArticlePagePresentationController_shadowView];
  if (v40 != -1)
  {
    swift_once();
  }

  v42 = type metadata accessor for Shadow();
  v43 = sub_1000056A8(v42, qword_1009CFD08);
  v44 = *(v42 - 8);
  (*(v44 + 16))(v11, v43, v42);
  (*(v44 + 56))(v11, 0, 1, v42);
  dispatch thunk of ShadowView.shadow.setter();

  v45 = [*&v37[v39] layer];
  [v45 setMaskedCorners:3];

  [*&v37[v39] _setContinuousCornerRadius:20.0];
  [*&v37[v39] setAutoresizingMask:18];
  v46 = *&v37[v39];
  dispatch thunk of ShadowView.shouldAnimateBoundsChange.setter();

  [*&v37[v38] setClipsToBounds:0];
  v47 = *&v37[v38];
  v48 = *&v37[v39];
  [v47 bounds];
  [v48 setFrame:?];

  [*&v37[v38] addSubview:*&v37[v39]];
  v49 = *&v37[v38];
  v65 = 0u;
  v66 = 0u;
  v50 = v49;
  static AutomationSemantics.page(name:id:)();
  sub_10002B894(&v65, &unk_1009711D0);
  UIView.setAutomationSemantics(_:)();

  (*(v59 + 8))(v8, v60);
  sub_10002849C(&qword_10097B110);
  v51 = swift_allocObject();
  v60 = xmmword_1007B10D0;
  *(v51 + 16) = xmmword_1007B10D0;
  *(v51 + 32) = type metadata accessor for UITraitLayoutDirection();
  *(v51 + 40) = &protocol witness table for UITraitLayoutDirection;
  v52 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v53 = swift_allocObject();
  *(v53 + 16) = v52;
  *(v53 + 24) = ObjectType;
  v54 = v37;
  UIPresentationController.registerForTraitChanges<A>(_:handler:)();
  swift_unknownObjectRelease();

  v55 = swift_allocObject();
  *(v55 + 16) = v60;
  *(v55 + 32) = type metadata accessor for UITraitHorizontalSizeClass();
  *(v55 + 40) = &protocol witness table for UITraitHorizontalSizeClass;
  v56 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v57 = swift_allocObject();
  *(v57 + 16) = v56;
  *(v57 + 24) = ObjectType;
  UIPresentationController.registerForTraitChanges<A>(_:handler:)();

  swift_unknownObjectRelease();
}

void sub_1006D1E20(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = [Strong traitCollection];
    v6 = [v5 layoutDirection];

    if (v6 == [a2 layoutDirection])
    {
    }

    else
    {
      v7 = *&v4[OBJC_IVAR____TtC8AppStore33ArticlePagePresentationController_dismissSwipeGestureRecognizer];
      if (v7)
      {
        v8 = qword_10096EE30;
        v9 = v7;
        if (v8 != -1)
        {
          swift_once();
        }

        v10 = sub_10002849C(&qword_10097ABD8);
        sub_1000056A8(v10, qword_100992510);
        v11 = v4;
        Conditional.evaluate(with:)();

        [v9 setEdges:v12];
      }

      else
      {
        __break(1u);
      }
    }
  }
}

void sub_1006D1F7C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1006D4C74();
  }
}

void sub_1006D1FD0(char a1)
{
  if (v1[OBJC_IVAR____TtC8AppStore33ArticlePagePresentationController_disableDismissGestures] == (a1 & 1))
  {
    return;
  }

  v2 = *&v1[OBJC_IVAR____TtC8AppStore33ArticlePagePresentationController_dismissTapGestureRecognizer];
  if (v1[OBJC_IVAR____TtC8AppStore33ArticlePagePresentationController_disableDismissGestures])
  {
    if (v2)
    {
      [v2 setEnabled:0];
      v3 = *&v1[OBJC_IVAR____TtC8AppStore33ArticlePagePresentationController_dismissSwipeGestureRecognizer];
      if (v3)
      {
        [v3 setEnabled:0];
        v4 = &v1[OBJC_IVAR____TtC8AppStore33ArticlePagePresentationController_interactiveDismissal];
        swift_beginAccess();
        if (*(v4 + 24))
        {
          sub_10002C0AC(v4, &v11);
          v5 = *(&v12 + 1);
          v6 = v13;
          sub_10002A400(&v11, *(&v12 + 1));
          (*(v6 + 32))(v5, v6);
          sub_100007000(&v11);
        }

        v13 = 0;
        v11 = 0u;
        v12 = 0u;
        swift_beginAccess();
        sub_100245DF0(&v11, v4);
        swift_endAccess();
        return;
      }

      goto LABEL_16;
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (!v2)
  {
    goto LABEL_15;
  }

  [v2 setEnabled:1];
  v7 = *&v1[OBJC_IVAR____TtC8AppStore33ArticlePagePresentationController_dismissSwipeGestureRecognizer];
  if (!v7)
  {
LABEL_17:
    __break(1u);
    return;
  }

  v10 = v7;
  v8 = [v1 traitCollection];
  v9 = [v8 horizontalSizeClass];

  [v10 setEnabled:v9 != 2];
}

void sub_1006D2210()
{
  v1 = type metadata accessor for PageGrid.Direction();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v35 - v6;
  v8 = type metadata accessor for PageGrid();
  v9 = *(v8 - 8);
  *&v10 = __chkstk_darwin(v8).n128_u64[0];
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [v0 containerView];
  if (!v13)
  {
    return;
  }

  v14 = v13;
  v37 = v9;
  v15 = [v0 traitCollection];
  v16 = [v15 horizontalSizeClass];

  if (v16 != 2)
  {
    [v14 bounds];

    return;
  }

  v36 = v8;
  (*(v2 + 104))(v7, enum case for PageGrid.Direction.vertical(_:), v1);
  v17 = [v0 presentingViewController];
  v18 = [v17 view];

  if (!v18)
  {
    __break(1u);
    goto LABEL_17;
  }

  [v18 bounds];
  v20 = v19;
  v22 = v21;

  v23 = [v0 presentingViewController];
  v24 = [v23 view];

  if (!v24)
  {
LABEL_17:
    __break(1u);
    return;
  }

  [v24 safeAreaInsets];

  (*(v2 + 16))(v4, v7, v1);
  v25 = v36;
  if (qword_10096E9A0 != -1)
  {
    swift_once();
  }

  PageGrid.init(name:direction:containerSize:readableContentInsets:safeAreaInsets:requiresAdditionalSafeAreaMargins:breakpoints:)();
  (*(v2 + 8))(v7, v1);
  v26 = [v0 presentingViewController];
  v27 = [v26 traitCollection];

  PageGrid.containerWidth.getter();
  v29 = v28;
  LOBYTE(v26) = UITraitCollection.isSizeClassRegular.getter();

  if (v26)
  {
    if (v29 + -160.0 <= 672.0)
    {
      v29 = v29 + -160.0;
    }

    else
    {
      v29 = 672.0;
    }

    if (v29 < 533.0)
    {
      v29 = 533.0;
    }
  }

  [v14 bounds];
  x = v38.origin.x;
  y = v38.origin.y;
  width = v38.size.width;
  height = v38.size.height;
  v34 = CGRectGetMidX(v38) + v29 * -0.5;
  v39.origin.x = x;
  v39.origin.y = y;
  v39.size.width = width;
  v39.size.height = height;
  CGRectGetMinY(v39);
  v40.origin.x = x;
  v40.origin.y = y;
  v40.size.width = width;
  v40.size.height = height;
  CGRectGetHeight(v40);

  sub_1006D4EA4(v34);
  (*(v37 + 8))(v12, v25);
}

double *sub_1006D2724()
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v1 = Strong;
      v2 = sub_100301D04();
      swift_unknownObjectRelease();

      return v2;
    }

    swift_unknownObjectRelease();
  }

  return _swiftEmptyArrayStorage;
}

void sub_1006D27A8(void *a1, void *a2)
{
  v3 = v2;
  v18.receiver = v3;
  v18.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v18, "willTransitionToTraitCollection:withTransitionCoordinator:", a1, a2);
  v6 = *&v3[OBJC_IVAR____TtC8AppStore33ArticlePagePresentationController_dismissSwipeGestureRecognizer];
  if (v6)
  {
    v7 = v3[OBJC_IVAR____TtC8AppStore33ArticlePagePresentationController_disableDismissGestures];
    v8 = v6;
    v9 = (v7 & 1) == 0 && [a1 horizontalSizeClass] != 2;
    [v8 setEnabled:v9];

    v10 = [v3 containerView];
    if (v10)
    {
      v11 = v10;
      v12 = swift_allocObject();
      v12[2] = v3;
      v12[3] = a1;
      v12[4] = v11;
      v17[4] = sub_1006D4EEC;
      v17[5] = v12;
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 1107296256;
      v17[2] = sub_1006D1458;
      v17[3] = &unk_1008CF420;
      v13 = _Block_copy(v17);
      v14 = v3;
      v15 = a1;
      v16 = v11;

      [a2 animateAlongsideTransition:v13 completion:0];
      _Block_release(v13);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1006D294C(int a1, char *a2, void *a3, void *a4)
{
  v7 = [a2 presentedViewController];
  v18 = [v7 view];

  if ([a3 horizontalSizeClass] == 2)
  {
    if (v18)
    {
      v8 = *&a2[OBJC_IVAR____TtC8AppStore33ArticlePagePresentationController_shadowView];
      v9 = v18;
      [v8 _continuousCornerRadius];
      [v9 _setContinuousCornerRadius:?];
    }
  }

  else if (v18)
  {
    [v18 _setContinuousCornerRadius:0.0];
  }

  [a4 bounds];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  [*&a2[OBJC_IVAR____TtC8AppStore33ArticlePagePresentationController_overlayBlurView] setFrame:?];
  [*&a2[OBJC_IVAR____TtC8AppStore33ArticlePagePresentationController_overlayTintView] setFrame:{v11, v13, v15, v17}];
}

void sub_1006D2B38(void *a1, double a2, double a3)
{
  v11.receiver = v3;
  v11.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v11, "viewWillTransitionToSize:withTransitionCoordinator:", a1, a2, a3);
  *(*&v3[OBJC_IVAR____TtC8AppStore33ArticlePagePresentationController_presentedContainerView] + OBJC_IVAR____TtC8AppStore35TransitioningPresentedContainerView_hidesInsertedSubviews) = 1;
  v7 = swift_allocObject();
  *(v7 + 16) = v3;
  v10[4] = sub_1006D4EC8;
  v10[5] = v7;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_1006D1458;
  v10[3] = &unk_1008CF3D0;
  v8 = _Block_copy(v10);
  v9 = v3;

  [a1 animateAlongsideTransition:0 completion:v8];
  _Block_release(v8);
}

void sub_1006D2CEC()
{
  v1 = [v0 containerView];
  if (v1)
  {
    v10 = v1;
    [v1 bounds];
    v3 = v2;
    v5 = v4;
    v7 = v6;
    v9 = v8;
    [*&v0[OBJC_IVAR____TtC8AppStore33ArticlePagePresentationController_overlayBlurView] setFrame:?];
    [*&v0[OBJC_IVAR____TtC8AppStore33ArticlePagePresentationController_overlayTintView] setFrame:{v3, v5, v7, v9}];
    sub_1006D2210();
    [*&v0[OBJC_IVAR____TtC8AppStore33ArticlePagePresentationController_presentedContainerView] setFrame:?];
  }
}

void sub_1006D2E34()
{
  v1 = v0;
  v2 = [v0 containerView];
  if (v2)
  {
    v3 = v2;
    [v2 bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v12 = *&v0[OBJC_IVAR____TtC8AppStore33ArticlePagePresentationController_overlayBlurView];
    [*&v1[OBJC_IVAR____TtC8AppStore33ArticlePagePresentationController_overlayBlurView] setFrame:?];
    v13 = *&v1[OBJC_IVAR____TtC8AppStore33ArticlePagePresentationController_overlayTintView];
    [v13 setFrame:{v5, v7, v9, v11}];
    [v3 addSubview:v13];
    [v3 addSubview:v12];
    v14 = [v1 presentedViewController];
    v15 = [v14 view];

    if (v15)
    {
      v16 = *&v1[OBJC_IVAR____TtC8AppStore33ArticlePagePresentationController_presentedContainerView];
      [v16 bounds];
      [v15 setFrame:?];
      [v15 setAutoresizingMask:18];
      [v16 addSubview:v15];
    }

    v17 = v13;
    v18 = v12;
    v19 = [v1 presentedViewController];
    v20 = [v19 view];

    if (v20)
    {
      v21 = &v1[OBJC_IVAR____TtC8AppStore33ArticlePagePresentationController_transitioningViewProvider];
      Strong = swift_unknownObjectWeakLoadStrong();
      v23 = *(v21 + 1);
      v24 = [v1 traitCollection];
      v25 = v1[OBJC_IVAR____TtC8AppStore33ArticlePagePresentationController_shouldUseReducedMotionTransition];
      type metadata accessor for TodayTransitionCompanionAnimations();
      v26 = swift_allocObject();
      *(v26 + 88) = 0;
      swift_unknownObjectWeakInit();
      *(v26 + 104) = 0;
      *(v26 + 112) = 0;
      *(v26 + 32) = v17;
      *(v26 + 40) = v18;
      *(v26 + 56) = v20;
      if (Strong)
      {
        v27 = swift_unknownObjectWeakLoadStrong();
        if (v27)
        {
          v28 = v27;
          swift_unknownObjectRetain();
          v29 = sub_100301D04();
          swift_unknownObjectRelease();
        }

        else
        {
          v29 = _swiftEmptyArrayStorage;
        }

        *(v26 + 64) = v29;
        v31 = swift_unknownObjectWeakLoadStrong();
        if (v31)
        {
          v32 = v31;
          v33 = [v31 collectionView];
        }

        else
        {
          v33 = 0;
        }

        *(v26 + 48) = v33;
        swift_unknownObjectRetain();
        v34 = sub_10078702C();
        swift_unknownObjectRelease();
        *(v26 + 16) = v34;
        swift_unknownObjectRetain();
        v30 = sub_1007870B0();
        swift_unknownObjectRelease();
      }

      else
      {
        v30 = 0;
        *(v26 + 64) = _swiftEmptyArrayStorage;
        *(v26 + 48) = 0;
        *(v26 + 16) = 0;
      }

      *(v26 + 24) = v30;
      *(v26 + 88) = v23;
      swift_unknownObjectWeakAssign();
      swift_unknownObjectRelease();
      *(v26 + 96) = v24;
      *(v26 + 72) = v25;
      v35 = objc_opt_self();
      v36 = swift_allocObject();
      *(v36 + 16) = sub_1006D4E68;
      *(v36 + 24) = v26;
      v46 = sub_10006F258;
      v47 = v36;
      v42 = _NSConcreteStackBlock;
      v43 = 1107296256;
      v44 = sub_1000489A8;
      v45 = &unk_1008CF330;
      v37 = _Block_copy(&v42);

      [v35 performWithoutAnimation:v37];
      _Block_release(v37);
      LOBYTE(v35) = swift_isEscapingClosureAtFileLocation();

      if ((v35 & 1) == 0)
      {
        v38 = [v1 presentedViewController];
        v39 = [v38 transitionCoordinator];

        if (v39)
        {
          v46 = sub_1006D4E70;
          v47 = v26;
          v42 = _NSConcreteStackBlock;
          v43 = 1107296256;
          v44 = sub_1006D1458;
          v45 = &unk_1008CF358;
          v40 = _Block_copy(&v42);

          v46 = sub_1006D4E74;
          v47 = v26;
          v42 = _NSConcreteStackBlock;
          v43 = 1107296256;
          v44 = sub_1006D1458;
          v45 = &unk_1008CF380;
          v41 = _Block_copy(&v42);

          [v39 animateAlongsideTransition:v40 completion:v41];

          _Block_release(v41);
          _Block_release(v40);
          swift_unknownObjectRelease();
        }

        else
        {
        }

        return;
      }

      __break(1u);
    }

    __break(1u);
  }
}

void sub_1006D3444(char a1)
{
  if (a1)
  {
    v2 = [v1 presentedViewController];
    v3 = [v2 isViewLoaded];

    if (!v3)
    {
      return;
    }

    v4 = [v1 presentedViewController];
    v7 = [v4 contentScrollView];

    sub_1006D4D94(&selRef_removeTarget_action_, &selRef__removeScrollViewScrollObserver_);
    swift_unknownObjectWeakAssign();
    sub_1006D4D94(&selRef_addTarget_action_, &selRef__addScrollViewScrollObserver_);
  }

  else
  {
    [*&v1[OBJC_IVAR____TtC8AppStore33ArticlePagePresentationController_overlayBlurView] removeFromSuperview];
    [*&v1[OBJC_IVAR____TtC8AppStore33ArticlePagePresentationController_overlayTintView] removeFromSuperview];
    v5 = [v1 presentedViewController];
    v7 = [v5 view];

    if (!v7)
    {
      return;
    }

    [v7 setClipsToBounds:0];
    v6 = [v7 layer];
    [v6 setMaskedCorners:15];

    [v7 _setContinuousCornerRadius:0.0];
  }
}

void sub_1006D365C()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC8AppStore33ArticlePagePresentationController_overlayBlurView];
  v3 = *&v0[OBJC_IVAR____TtC8AppStore33ArticlePagePresentationController_overlayTintView];
  v4 = v2;
  v5 = [v1 presentedViewController];
  v6 = [v5 view];

  if (!v6)
  {
    goto LABEL_16;
  }

  v7 = &v1[OBJC_IVAR____TtC8AppStore33ArticlePagePresentationController_transitioningViewProvider];
  Strong = swift_unknownObjectWeakLoadStrong();
  v9 = *(v7 + 1);
  v10 = [v1 traitCollection];
  v11 = v1[OBJC_IVAR____TtC8AppStore33ArticlePagePresentationController_shouldUseReducedMotionTransition];
  type metadata accessor for TodayTransitionCompanionAnimations();
  v12 = swift_allocObject();
  *(v12 + 88) = 0;
  swift_unknownObjectWeakInit();
  *(v12 + 104) = 0;
  *(v12 + 112) = 0;
  *(v12 + 32) = v3;
  *(v12 + 40) = v4;
  *(v12 + 56) = v6;
  if (Strong)
  {
    v13 = swift_unknownObjectWeakLoadStrong();
    if (v13)
    {
      v14 = v13;
      swift_unknownObjectRetain();
      v15 = sub_100301D04();
      swift_unknownObjectRelease();
    }

    else
    {
      v15 = _swiftEmptyArrayStorage;
    }

    *(v12 + 64) = v15;
    v17 = swift_unknownObjectWeakLoadStrong();
    if (v17)
    {
      v18 = v17;
      v19 = [v17 collectionView];
    }

    else
    {
      v19 = 0;
    }

    *(v12 + 48) = v19;
    swift_unknownObjectRetain();
    v20 = sub_10078702C();
    swift_unknownObjectRelease();
    *(v12 + 16) = v20;
    swift_unknownObjectRetain();
    v16 = sub_1007870B0();
    swift_unknownObjectRelease();
  }

  else
  {
    v16 = 0;
    *(v12 + 64) = _swiftEmptyArrayStorage;
    *(v12 + 48) = 0;
    *(v12 + 16) = 0;
  }

  *(v12 + 24) = v16;
  *(v12 + 88) = v9;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  *(v12 + 96) = v10;
  *(v12 + 72) = v11;
  v21 = objc_opt_self();
  v22 = swift_allocObject();
  *(v22 + 16) = sub_1006D4D54;
  *(v22 + 24) = v12;
  v34 = sub_10006F094;
  v35 = v22;
  v30 = _NSConcreteStackBlock;
  v31 = 1107296256;
  v32 = sub_1000489A8;
  v33 = &unk_1008CF268;
  v23 = _Block_copy(&v30);

  [v21 performWithoutAnimation:v23];
  _Block_release(v23);
  LOBYTE(v21) = swift_isEscapingClosureAtFileLocation();

  if (v21)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    return;
  }

  v24 = [v1 presentedViewController];
  v25 = [v24 transitionCoordinator];

  if (v25)
  {
    v26 = swift_allocObject();
    *(v26 + 16) = v12;
    *(v26 + 24) = v1;
    v34 = sub_1006D4D5C;
    v35 = v26;
    v30 = _NSConcreteStackBlock;
    v31 = 1107296256;
    v32 = sub_1006D1458;
    v33 = &unk_1008CF2B8;
    v27 = _Block_copy(&v30);

    v28 = v1;

    v34 = sub_1006D4D64;
    v35 = v12;
    v30 = _NSConcreteStackBlock;
    v31 = 1107296256;
    v32 = sub_1006D1458;
    v33 = &unk_1008CF2E0;
    v29 = _Block_copy(&v30);

    [v25 animateAlongsideTransition:v27 completion:v29];

    _Block_release(v29);
    _Block_release(v27);
    swift_unknownObjectRelease();
  }

  else
  {
  }
}

void sub_1006D3B1C(uint64_t a1, uint64_t a2, void *a3)
{
  sub_100038414();
  v4 = [a3 presentedViewController];
  [v4 setNeedsStatusBarAppearanceUpdate];
}

uint64_t sub_1006D3B88(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v3 = a3();
  v4 = v3;
  if (v3 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v6 = 0;
    while ((v4 & 0xC000000000000001) != 0)
    {
      v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_13;
      }

LABEL_9:
      v9 = *(v7 + 48);
      if (v9)
      {

        v9(v10);

        sub_10001F63C(v9);
      }

      else
      {
      }

      ++v6;
      if (v8 == i)
      {
        goto LABEL_16;
      }
    }

    if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_14;
    }

    v7 = *(v4 + 8 * v6 + 32);

    v8 = v6 + 1;
    if (!__OFADD__(v6, 1))
    {
      goto LABEL_9;
    }

LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

LABEL_16:
}

void sub_1006D3E14(void *a1)
{
  [*&v1[OBJC_IVAR____TtC8AppStore33ArticlePagePresentationController_presentedContainerView] frame];
  v3 = CGRectGetWidth(v30) * 0.28;
  [a1 translationInView:0];
  v5 = fabs(v4);
  if (v5 >= v3)
  {
    v5 = v3;
  }

  v6 = v5 / v3;
  v7 = [a1 state];
  if (v7 > 2)
  {
    if ((v7 - 4) >= 2)
    {
      if (v7 != 3)
      {
        return;
      }

      if (v6 == 1.0)
      {
LABEL_16:
        v11 = [v1 presentedViewController];
        [v11 dismissViewControllerAnimated:1 completion:0];

        v1[OBJC_IVAR____TtC8AppStore33ArticlePagePresentationController_dismissCompleted] = 1;
        return;
      }
    }

    goto LABEL_10;
  }

  switch(v7)
  {
    case 0:
LABEL_10:
      if (v1[OBJC_IVAR____TtC8AppStore33ArticlePagePresentationController_dismissCompleted])
      {
        return;
      }

      v8 = &v1[OBJC_IVAR____TtC8AppStore33ArticlePagePresentationController_interactiveDismissal];
      swift_beginAccess();
      if (*(v8 + 24))
      {
        sub_10002C0AC(v8, &v27);
        v9 = *(&v28 + 1);
        v10 = v29;
        sub_10002A400(&v27, *(&v28 + 1));
        (v10[4])(v9, v10);
        sub_100007000(&v27);
      }

      v29 = 0;
      v27 = 0u;
      v28 = 0u;
      swift_beginAccess();
      sub_100245DF0(&v27, v8);
      goto LABEL_21;
    case 1:
      sub_10002849C(&qword_100973210);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_1007B15F0;
      v13 = [v1 presentedViewController];
      v14 = [v13 view];

      if (!v14)
      {
        __break(1u);
        return;
      }

      v15 = *&v1[OBJC_IVAR____TtC8AppStore33ArticlePagePresentationController_shadowView];
      *(v12 + 32) = v14;
      *(v12 + 40) = v15;
      v16 = v15;
      v17 = v1;
      v18 = sub_1006D2724();
      if (v18 >> 62)
      {
        sub_100028004();
        v19 = _bridgeCocoaArray<A>(_:)();
      }

      else
      {

        dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
        sub_100028004();
        v19 = v18;
      }

      v20 = v17;
      v21 = [v17 traitCollection];
      *(&v28 + 1) = &type metadata for ScaleDownInteractiveDismissal;
      v29 = &off_1008B8010;
      v22 = swift_allocObject();
      *&v27 = v22;
      *(v22 + 16) = v12;
      *(v22 + 24) = v19;
      *(v22 + 32) = v21;
      *(v22 + 40) = 1;
      *(v22 + 48) = 0x3FEA3D70A3D70A3DLL;
      v23 = OBJC_IVAR____TtC8AppStore33ArticlePagePresentationController_interactiveDismissal;
      swift_beginAccess();
      sub_100245DF0(&v27, v20 + v23);
LABEL_21:
      swift_endAccess();
      return;
    case 2:
      if (v6 == 1.0)
      {
        goto LABEL_16;
      }

      v24 = &v1[OBJC_IVAR____TtC8AppStore33ArticlePagePresentationController_interactiveDismissal];
      swift_beginAccess();
      if (*(v24 + 24))
      {
        sub_10002C0AC(v24, &v27);
        v25 = *(&v28 + 1);
        v26 = v29;
        sub_10002A400(&v27, *(&v28 + 1));
        (v26[2])(v25, v26, v6);
        sub_100007000(&v27);
      }

      break;
  }
}

void sub_1006D4274(void *a1)
{
  if (v1[OBJC_IVAR____TtC8AppStore33ArticlePagePresentationController_disableDismissGestures])
  {
    return;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v52 = Strong;
  v4 = OBJC_IVAR____TtC8AppStore33ArticlePagePresentationController_isScrollDismissActive;
  if (v1[OBJC_IVAR____TtC8AppStore33ArticlePagePresentationController_isScrollDismissActive] != 1)
  {
    if ([a1 state] != 1 && objc_msgSend(a1, "state") != 2)
    {
      goto LABEL_36;
    }

    [v52 contentOffset];
    v14 = v13;
    [v52 adjustedContentInset];
    if (v14 + v15 > 0.0)
    {
      goto LABEL_36;
    }

    [a1 velocityInView:v52];
    if (v16 <= 0.0)
    {
      goto LABEL_36;
    }

    [v52 adjustedContentInset];
    [v52 contentOffset];
    [v52 setContentOffset:?];
    v17 = [v1 traitCollection];
    v18 = [v17 horizontalSizeClass];

    if (v18 == 1)
    {
      sub_10002849C(&qword_100973210);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_1007B15F0;
      v20 = [v1 presentedViewController];
      v21 = [v20 view];

      if (v21)
      {
        v22 = *&v1[OBJC_IVAR____TtC8AppStore33ArticlePagePresentationController_shadowView];
        *(v19 + 32) = v21;
        *(v19 + 40) = v22;
        v23 = v22;
        v24 = sub_1006D2724();
        if (v24 >> 62)
        {
          sub_100028004();
          v25 = _bridgeCocoaArray<A>(_:)();
        }

        else
        {

          dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
          sub_100028004();
          v25 = v24;
        }

        v26 = [v1 traitCollection];
        *(&v54 + 1) = &type metadata for ScaleDownInteractiveDismissal;
        v55 = &off_1008B8010;
        v27 = swift_allocObject();
        *&v53 = v27;
        *(v27 + 16) = v19;
        *(v27 + 24) = v25;
        *(v27 + 32) = v26;
        *(v27 + 40) = 1;
        *(v27 + 48) = 0x3FEA3D70A3D70A3DLL;
        v28 = OBJC_IVAR____TtC8AppStore33ArticlePagePresentationController_interactiveDismissal;
        swift_beginAccess();
        v29 = &v1[v28];
LABEL_43:
        sub_100245DF0(&v53, v29);
        swift_endAccess();
        v45 = swift_unknownObjectWeakLoadStrong();
        if (v45)
        {
          v46 = v45;
          [v45 setShowsVerticalScrollIndicator:0];
        }

        [a1 translationInView:0];
        v48 = v47;

        *&v1[OBJC_IVAR____TtC8AppStore33ArticlePagePresentationController_scrollDismissInitialTranslationY] = v48;
        v1[v4] = 1;
        return;
      }

      __break(1u);
    }

    else
    {
      sub_10002849C(&qword_100973210);
      v36 = swift_allocObject();
      *(v36 + 16) = xmmword_1007B15F0;
      v37 = [v1 presentedViewController];
      v38 = [v37 view];

      if (v38)
      {
        v39 = *&v1[OBJC_IVAR____TtC8AppStore33ArticlePagePresentationController_shadowView];
        *(v36 + 32) = v38;
        *(v36 + 40) = v39;
        v40 = v39;
        v41 = v1;
        v42 = sub_1006D2724();
        if (v42 >> 62)
        {
          sub_100028004();
          v43 = _bridgeCocoaArray<A>(_:)();
        }

        else
        {

          dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
          sub_100028004();
          v43 = v42;
        }

        *(&v54 + 1) = &type metadata for PullDownInteractiveDismissal;
        v55 = &off_1008B8038;
        *&v53 = v36;
        *(&v53 + 1) = v43;
        *&v54 = 0x3FB1EB851EB851ECLL;
        v44 = OBJC_IVAR____TtC8AppStore33ArticlePagePresentationController_interactiveDismissal;
        v1 = v41;
        swift_beginAccess();
        v29 = &v41[v44];
        goto LABEL_43;
      }
    }

    __break(1u);
    return;
  }

  [*&v1[OBJC_IVAR____TtC8AppStore33ArticlePagePresentationController_presentedContainerView] frame];
  v5 = CGRectGetHeight(v57) * 0.18;
  [a1 translationInView:0];
  v7 = v6 - *&v1[OBJC_IVAR____TtC8AppStore33ArticlePagePresentationController_scrollDismissInitialTranslationY];
  if (v7 >= v5)
  {
    v8 = v5;
  }

  else
  {
    v8 = v6 - *&v1[OBJC_IVAR____TtC8AppStore33ArticlePagePresentationController_scrollDismissInitialTranslationY];
  }

  v9 = 0.0;
  if (v5 <= 0.0)
  {
    v9 = v5;
  }

  if (v7 < 0.0)
  {
    v10 = v9;
  }

  else
  {
    v10 = v8;
  }

  v11 = v10 / v5;
  v12 = [a1 state];
  if (v12 > 2)
  {
    if ((v12 - 4) >= 2)
    {
      if (v12 != 3)
      {
        goto LABEL_36;
      }

      if (v11 == 1.0)
      {
LABEL_35:
        v35 = [v1 presentedViewController];
        [v35 dismissViewControllerAnimated:1 completion:0];

        v1[OBJC_IVAR____TtC8AppStore33ArticlePagePresentationController_dismissCompleted] = 1;
        return;
      }
    }
  }

  else if (v12)
  {
    if (v12 == 2)
    {
      if (v11 == 1.0)
      {
        goto LABEL_35;
      }

      v49 = &v1[OBJC_IVAR____TtC8AppStore33ArticlePagePresentationController_interactiveDismissal];
      swift_beginAccess();
      if (*(v49 + 24))
      {
        sub_10002C0AC(v49, &v53);
        v50 = *(&v54 + 1);
        v51 = v55;
        sub_10002A400(&v53, *(&v54 + 1));
        (v51[2])(v50, v51, v11);

        sub_100007000(&v53);
        return;
      }

LABEL_38:

      return;
    }

LABEL_36:

    goto LABEL_38;
  }

  if (v1[OBJC_IVAR____TtC8AppStore33ArticlePagePresentationController_dismissCompleted])
  {
    goto LABEL_36;
  }

  v30 = &v1[OBJC_IVAR____TtC8AppStore33ArticlePagePresentationController_interactiveDismissal];
  swift_beginAccess();
  if (*(v30 + 24))
  {
    sub_10002C0AC(v30, &v53);
    v31 = *(&v54 + 1);
    v32 = v55;
    sub_10002A400(&v53, *(&v54 + 1));
    (v32[4])(v31, v32);
    sub_100007000(&v53);
  }

  v55 = 0;
  v53 = 0u;
  v54 = 0u;
  swift_beginAccess();
  sub_100245DF0(&v53, v30);
  swift_endAccess();
  v33 = swift_unknownObjectWeakLoadStrong();
  if (v33)
  {
    v34 = v33;
    [v33 setShowsVerticalScrollIndicator:1];
  }

  v1[v4] = 0;
}

void sub_1006D4AD4(char *a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR____TtC8AppStore33ArticlePagePresentationController_disableDismissGestures);
    v3[OBJC_IVAR____TtC8AppStore33ArticlePagePresentationController_disableDismissGestures] = v1;
    sub_1006D1FD0(v4);
  }
}

void sub_1006D4C74()
{
  v1 = [v0 traitCollection];
  if ([v1 userInterfaceIdiom] == 1)
  {
    v2 = 32.0;
  }

  else
  {
    [v1 displayCornerRadius];
    v2 = v3;
  }

  v4 = [v0 presentedViewController];
  v5 = [v4 view];

  [v5 _setContinuousCornerRadius:v2];
}

void sub_1006D4D94(SEL *a1, SEL *a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = [Strong panGestureRecognizer];

    [v7 *a1];
  }

  v8 = swift_unknownObjectWeakLoadStrong();
  if (v8)
  {
    v9 = v8;
    [v8 *a2];
  }
}

void sub_1006D4F30(void *a1, uint64_t a2)
{
  v5 = objc_allocWithZone(UIScreenEdgePanGestureRecognizer);
  sub_10002A400(a1, a1[3]);
  v6 = [v5 initWithTarget:_bridgeAnythingToObjectiveC<A>(_:)() action:a2];
  swift_unknownObjectRelease();
  [v6 setEdges:2];
  v7 = objc_allocWithZone(UIScreenEdgePanGestureRecognizer);
  sub_10002A400(a1, a1[3]);
  v8 = [v7 initWithTarget:_bridgeAnythingToObjectiveC<A>(_:)() action:a2];
  swift_unknownObjectRelease();
  [v8 setEdges:8];
  v9 = *(v2 + OBJC_IVAR____TtC8AppStore17AppStoreBootstrap_tabBarController);
  v10 = [v9 view];
  if (!v10)
  {
    __break(1u);
    goto LABEL_7;
  }

  v11 = v10;
  [v10 addGestureRecognizer:v6];

  v12 = [v9 view];
  if (!v12)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v13 = v12;
  [v12 addGestureRecognizer:v8];
}

id sub_1006D50BC()
{
  v0 = sub_100006C54();

  return v0;
}

uint64_t sub_1006D50E8(uint64_t a1)
{
  v3 = type metadata accessor for Bag();
  v4 = __chkstk_darwin(v3);
  v6 = *(v1 + OBJC_IVAR____TtC8AppStore17AppStoreBootstrap_tabBarController);
  (*(v7 + 16))(&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  objc_allocWithZone(type metadata accessor for CommerceDialogHandler());
  v8 = v6;
  return CommerceDialogHandler.init(_:_:)();
}

uint64_t sub_1006D51D4(uint64_t a1)
{
  v56 = type metadata accessor for Dependency();
  v2 = *(v56 - 8);
  __chkstk_darwin(v56);
  v54 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for MetricsPipeline();
  v5 = *(v4 - 8);
  v52 = v4;
  v53 = v5;
  __chkstk_darwin(v4);
  v51 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TabBadgingFieldsProvider();
  v59 = *(v7 - 8);
  v60 = v7;
  __chkstk_darwin(v7);
  v58 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10002849C(&unk_100974490);
  __chkstk_darwin(v9);
  v10 = sub_10002849C(&qword_1009927C8);
  __chkstk_darwin(v10 - 8);
  v12 = &v49 - v11;
  v57 = swift_allocObject();
  v50 = sub_10073DA60(a1);
  sub_10002849C(&qword_1009844F0);
  v55 = v2;
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1007B5370;
  type metadata accessor for PersonalizationDataProvider();
  v62 = sub_1006D793C();
  Dependency.init<A>(satisfying:with:)();
  type metadata accessor for TodayCardTriggerController();
  v62 = sub_1006D7AD4();
  Dependency.init<A>(satisfying:with:)();
  v14 = type metadata accessor for URLProtocolDelegate();
  v15 = type metadata accessor for URLProtocolDelegate.DialogStyle();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = objc_allocWithZone(v14);
  v62 = URLProtocolDelegate.init(dialogStyle:)();
  Dependency.init<A>(satisfying:with:)();
  type metadata accessor for SearchGhostHintMetricsTracker();
  swift_allocObject();
  v62 = SearchGhostHintMetricsTracker.init()();
  Dependency.init<A>(satisfying:with:)();
  v62 = [objc_allocWithZone(type metadata accessor for AppEventLiveIndicatorAnimationCoordinator()) init];
  Dependency.init<A>(satisfying:with:)();
  type metadata accessor for ImpressionsAppendixMetricsTracker();
  swift_allocObject();
  v62 = ImpressionsAppendixMetricsTracker.init()();
  Dependency.init<A>(satisfying:with:)();
  sub_10002849C(&qword_100977130);
  type metadata accessor for AppDeviceWindowDataProvider();
  v17 = swift_allocObject();
  v18 = sub_1006D7E8C(&qword_1009927D0, type metadata accessor for AppDeviceWindowDataProvider);
  v62 = v17;
  v63 = v18;
  Dependency.init<A>(satisfying:with:)();
  v19 = v49;
  sub_1006D5BF0();
  Dependency.init<A>(satisfying:with:)();
  v62 = v13;
  sub_10002849C(&qword_100984B10);
  sub_100097060(&qword_100984B18, &qword_100984B10);
  v20 = dispatch thunk of BaseObjectGraph.adding<A>(allDependencies:)();

  v21 = v57;
  *(v57 + 16) = v20;
  v22 = (v21 + 16);
  v23 = *(v19 + OBJC_IVAR____TtC8AppStore17AppStoreBootstrap_tabBarController);
  v64 = type metadata accessor for StoreTabBarController();
  v65 = sub_1006D7E8C(&qword_1009927D8, type metadata accessor for StoreTabBarController);
  v62 = v23;
  v24 = v23;
  v25 = v58;
  TabBadgingFieldsProvider.init(tabController:)();
  sub_10002849C(&qword_1009927E0);
  v26 = (sub_10002849C(&qword_1009828A0) - 8);
  v27 = (*(*v26 + 80) + 32) & ~*(*v26 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1007B10D0;
  v29 = v28 + v27;
  v30 = (v28 + v27 + v26[14]);
  static MetricsFieldExclusionRequest.tabBadging.getter();
  v31 = v60;
  v30[3] = v60;
  v30[4] = sub_1006D7E8C(&qword_1009927E8, &type metadata accessor for TabBadgingFieldsProvider);
  v32 = sub_1000056E0(v30);
  (*(v59 + 16))(v32, v25, v31);
  sub_10039980C(v28);
  swift_setDeallocating();
  sub_10002B894(v29, &qword_1009828A0);
  swift_deallocClassInstance();

  sub_1006D7ED4(_swiftEmptyArrayStorage);
  static MetricsPipeline.objectGraphWithNewPipelineConfiguredWith(optInProviders:optOutProviders:asPartOf:)();

  type metadata accessor for BaseObjectGraph();

  *v22 = BaseObjectGraph.__allocating_init(_:)();

  type metadata accessor for InAppMessagesManager();
  inject<A, B>(_:from:)();

  v33 = v62;

  v35 = v51;
  v34 = v52;
  inject<A, B>(_:from:)();

  v50 = v33;
  v36 = v33[4];
  v37 = OBJC_IVAR____TtC8AppStore28InAppMessagesMetricsDelegate_metricsPipeline;
  swift_beginAccess();
  (*(v53 + 40))(v36 + v37, v35, v34);
  swift_endAccess();
  v38 = *(v19 + OBJC_IVAR____TtC8AppStore17AppStoreBootstrap_debugMetricsEventRecorder);
  if (v38)
  {
    type metadata accessor for DebugMetricsEventRecorder();
    v62 = v38;
    swift_retain_n();

    v39 = v54;
    Dependency.init<A>(satisfying:with:)();
    v40 = dispatch thunk of BaseObjectGraph.adding(dependency:)();

    v42 = v55;
    v41 = v56;
    (*(v55 + 8))(v39, v56);
    *v22 = v40;
  }

  else
  {
    v42 = v55;
    v41 = v56;
    v39 = v54;
  }

  v43 = objc_allocWithZone(type metadata accessor for FloatingUnifiedMessageCoordinator());

  v44 = FloatingUnifiedMessageCoordinator.init(objectGraph:)();
  v45 = v57;

  FloatingUnifiedMessageCoordinator.actionHandler.setter();
  FloatingUnifiedMessageCoordinator.registerViewController(forAppLevelMessages:)(v24);
  swift_beginAccess();
  v61 = v44;

  v46 = v44;
  Dependency.init<A>(satisfying:with:)();
  v47 = dispatch thunk of BaseObjectGraph.adding(dependency:)();

  (*(v42 + 8))(v39, v41);
  (*(v59 + 8))(v58, v60);
  *(v45 + 16) = v47;

  return v47;
}

uint64_t sub_1006D5BF0()
{
  v1 = sub_10002849C(&qword_1009927F0);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v14 - v3;
  type metadata accessor for BaseObjectGraph();
  ActionDispatcher.init()();
  sub_10002849C(&unk_100974490);
  sub_1006D8128();
  ActionDispatcher.add<A>(_:)();
  sub_1006D817C();
  ActionDispatcher.add<A>(_:)();
  sub_1006D81D0();
  ActionDispatcher.add<A>(_:)();
  sub_1006D8224();
  ActionDispatcher.add<A>(_:)();
  sub_1006D8278();
  ActionDispatcher.add<A>(_:)();
  sub_1006D82CC();
  ActionDispatcher.add<A>(_:)();
  ArcadeLaunchAttributionActionImplementation.init()();
  sub_100097060(&qword_100992828, &qword_1009927F0);
  ActionDispatcher.add<A>(_:)();
  (*(v2 + 8))(v4, v1);
  sub_1006D8320();
  ActionDispatcher.add<A>(_:)();
  sub_1006D8374();
  ActionDispatcher.add<A>(_:)();
  sub_1006D83C8();
  ActionDispatcher.add<A>(_:)();
  sub_1006D841C();
  ActionDispatcher.add<A>(_:)();
  sub_1006D8470();
  ActionDispatcher.add<A>(_:)();
  sub_1006D84C4();
  ActionDispatcher.add<A>(_:)();
  sub_1006D8518();
  ActionDispatcher.add<A>(_:)();
  sub_1006D856C();
  ActionDispatcher.add<A>(_:)();
  sub_1006D85C0();
  ActionDispatcher.add<A>(_:)();
  sub_1006D8614();
  ActionDispatcher.add<A>(_:)();
  sub_100538614();
  ActionDispatcher.add<A>(_:)();
  v5 = *(v0 + OBJC_IVAR____TtC8AppStore17AppStoreBootstrap_tabBarController);
  swift_unknownObjectUnownedInit();
  sub_1006D8668();
  v6 = v5;
  ActionDispatcher.add<A>(_:)();
  sub_1006D86BC(&v15);
  sub_10002849C(&qword_100992888);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1007B5360;
  *(v7 + 56) = &type metadata for ArticlePresentingFlowActionLogic;
  *(v7 + 64) = &off_1008C6DF0;
  *(v7 + 96) = &type metadata for ArcadeWelcomeFlowActionLogic;
  *(v7 + 104) = &off_1008B5770;
  *(v7 + 136) = &type metadata for NavigationControllerFlowActionLogic;
  *(v7 + 144) = &off_1008D1C38;
  *(v7 + 176) = &type metadata for TabBarControllerFlowActionLogic;
  *(v7 + 184) = &off_1008B8A18;
  *(v7 + 216) = &type metadata for RootFlowActionLogic;
  *(v7 + 224) = &off_1008CCCA0;
  type metadata accessor for FlowActionImplementation();
  v8 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  *(v8 + 24) = v7;
  v15 = v8;
  sub_1006D7E8C(&qword_100992890, type metadata accessor for FlowActionImplementation);
  ActionDispatcher.add<A>(_:)();

  sub_100006C54();
  swift_unknownObjectUnownedInit();
  sub_1006D8710();
  ActionDispatcher.add<A>(_:)();
  sub_1006D8764(&v15);
  sub_1006D87B8();
  ActionDispatcher.add<A>(_:)();
  sub_1006D880C();
  ActionDispatcher.add<A>(_:)();
  sub_1006D8860();
  ActionDispatcher.add<A>(_:)();
  sub_1006D88B4();
  ActionDispatcher.add<A>(_:)();
  sub_1006D8908();
  ActionDispatcher.add<A>(_:)();
  sub_1006D895C();
  ActionDispatcher.add<A>(_:)();
  swift_unknownObjectUnownedInit();

  sub_1006D89B0();
  ActionDispatcher.add<A>(_:)();
  sub_1006D8A04(&v15);
  sub_1006D8A58();
  ActionDispatcher.add<A>(_:)();
  sub_1006D8AAC();
  ActionDispatcher.add<A>(_:)();
  sub_1006D8B00();
  ActionDispatcher.add<A>(_:)();
  sub_1006D8B54();
  ActionDispatcher.add<A>(_:)();
  sub_1006D8BA8();
  ActionDispatcher.add<A>(_:)();
  sub_1006D8BFC();
  ActionDispatcher.add<A>(_:)();
  sub_1006D8C50();
  ActionDispatcher.add<A>(_:)();
  v16 = 0;
  swift_unknownObjectWeakInit();
  v16 = 0;
  swift_unknownObjectWeakAssign();
  sub_1006D8CA4();
  ActionDispatcher.add<A>(_:)();
  sub_1006D8CF8(&v15);
  sub_1006D8D4C();
  ActionDispatcher.add<A>(_:)();
  v16 = 0;
  swift_unknownObjectWeakInit();
  v16 = 0;
  swift_unknownObjectWeakAssign();
  sub_1006D8DA0();
  ActionDispatcher.add<A>(_:)();
  sub_1006D8DF4(&v15);
  sub_1006D8E48();
  ActionDispatcher.add<A>(_:)();
  sub_1006D8E9C();
  ActionDispatcher.add<A>(_:)();
  sub_1006D8EF0();
  ActionDispatcher.add<A>(_:)();
  sub_1006D8F44();
  ActionDispatcher.add<A>(_:)();
  sub_100094F68();
  ActionDispatcher.add<A>(_:)();
  swift_unknownObjectUnownedInit();

  sub_1006D8F98();
  ActionDispatcher.add<A>(_:)();
  sub_1006D8FEC(&v15);
  swift_unknownObjectUnownedInit();

  sub_1006D9040();
  ActionDispatcher.add<A>(_:)();
  sub_1006D9094(&v15);
  sub_1006D90E8();
  ActionDispatcher.add<A>(_:)();
  swift_unknownObjectUnownedInit();

  sub_1006D913C();
  ActionDispatcher.add<A>(_:)();
  sub_1006D9190(&v15);
  swift_unknownObjectUnownedInit();

  sub_1006D91E4();
  ActionDispatcher.add<A>(_:)();
  sub_1006D9238(&v15);
  sub_1006D928C();
  ActionDispatcher.add<A>(_:)();
  sub_1006D92E0();
  ActionDispatcher.add<A>(_:)();
  swift_unknownObjectUnownedInit();

  sub_1006D9334();
  ActionDispatcher.add<A>(_:)();
  sub_1006D9388(&v15);
  v16 = [objc_allocWithZone(type metadata accessor for SignInActionImplementation.SignInDelegate()) init];
  swift_unknownObjectUnownedInit();

  sub_1006D93DC();
  ActionDispatcher.add<A>(_:)();
  sub_1006D9430(&v15);
  sub_1006D9484();
  ActionDispatcher.add<A>(_:)();
  swift_unknownObjectUnownedInit();
  sub_1006D94D8();
  ActionDispatcher.add<A>(_:)();
  sub_1006D952C(&v15);
  v9 = type metadata accessor for TabChangeActionImplementation();
  v10 = objc_allocWithZone(v9);
  swift_unknownObjectUnownedInit();
  v11 = [objc_allocWithZone(UINavigationController) init];
  *&v10[OBJC_IVAR____TtC8AppStore29TabChangeActionImplementation_loadingNavigationController] = v11;
  v14.receiver = v10;
  v14.super_class = v9;
  v12 = objc_msgSendSuper2(&v14, "init");

  v15 = v12;
  sub_1006D7E8C(&qword_1009929A0, type metadata accessor for TabChangeActionImplementation);
  ActionDispatcher.add<A>(_:)();

  sub_1006D9580();
  ActionDispatcher.add<A>(_:)();
  sub_1006D95D4();
  ActionDispatcher.add<A>(_:)();
  sub_1006D9628();
  ActionDispatcher.add<A>(_:)();
  sub_1006D967C();
  ActionDispatcher.add<A>(_:)();
  sub_100006C54();
  swift_unknownObjectUnownedInit();
  sub_1006D96D0();
  ActionDispatcher.add<A>(_:)();
  return sub_1006D9724(&v15);
}

uint64_t sub_1006D665C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&unk_100972A00);
  __chkstk_darwin(v4 - 8);
  v6 = &v11[-v5];
  swift_beginAccess();
  v7 = sub_10002849C(&unk_100974490);

  BaseObjectGraph.injectIfAvailable<A>(_:)();

  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_10002B894(v6, &unk_100972A00);
  }

  swift_beginAccess();
  v10 = *(a2 + 16);

  sub_1005F9AF4(a1, 1, v10, v6);

  return (*(v8 + 8))(v6, v7);
}

void sub_1006D6800(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v36 = a2;
  v5 = sub_10002849C(&qword_1009927C8);
  __chkstk_darwin(v5 - 8);
  v7 = (&v33 - v6);
  v8 = type metadata accessor for EntitlementRefeshCondition();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ArcadeSubscriptionManager();
  type metadata accessor for BaseObjectGraph();
  inject<A, B>(_:from:)();
  v12 = v38;
  *v11 = 1;
  (*(v9 + 104))(v11, enum case for EntitlementRefeshCondition.ifCacheIsExpired(_:), v8);
  v37 = v12;
  ArcadeSubscriptionManager.updateStateFromEntitlements(refreshingCache:)();

  (*(v9 + 8))(v11, v8);
  sub_100005744(0, &unk_100989C60);
  inject<A, B>(_:from:)();
  v13 = v38;
  type metadata accessor for URLProtocolDelegate();
  inject<A, B>(_:from:)();
  v14 = v38;
  v15 = *(v3 + OBJC_IVAR____TtC8AppStore17AppStoreBootstrap_tabBarController);
  *v7 = v15;
  v16 = enum case for URLProtocolDelegate.DialogStyle.alert(_:);
  v17 = type metadata accessor for URLProtocolDelegate.DialogStyle();
  v18 = *(v17 - 8);
  (*(v18 + 104))(v7, v16, v17);
  (*(v18 + 56))(v7, 0, 1, v17);
  v19 = v15;
  URLProtocolDelegate.dialogStyle.setter();
  v35 = v13;
  [v13 setDelegate:v14];
  type metadata accessor for GameCenterFriendRequestCoordinator();
  inject<A, B>(_:from:)();
  v34 = v38;
  dispatch thunk of GameCenterFriendRequestCoordinator.start()();
  type metadata accessor for InAppMessagesManager();
  inject<A, B>(_:from:)();
  sub_1000EF498();
  *&v19[OBJC_IVAR____TtC8AppStore21StoreTabBarController_objectGraph] = a1;

  sub_100005744(0, &qword_10098D1A0);

  inject<A, B>(_:from:)();
  v20 = v38;
  type metadata accessor for QuickActionsController();
  v21 = swift_allocObject();
  *(v21 + 16) = v20;
  v33 = v20;
  sub_1001BAE6C();
  type metadata accessor for SheetEngagementManager();
  inject<A, B>(_:from:)();
  v22 = v38;
  v23 = [v19 view];
  if (v23)
  {
    v24 = v23;
    v25 = [v23 window];

    SheetEngagementManager.presentationWindow.setter();
    v26 = swift_allocObject();
    swift_weakInit();
    v27 = swift_allocObject();
    *(v27 + 16) = v26;
    *(v27 + 24) = a1;

    SheetEngagementManager.flowActionViewControllerFactory.setter();

    swift_unknownObjectUnownedLoadStrong();
    sub_10043FCF8(v19, v21, v36, a1);
    swift_unknownObjectRelease();
    v28 = [objc_opt_self() sharedApplication];
    LODWORD(v26) = [v28 launchedToTest];

    if (v26)
    {
      Strong = swift_unknownObjectUnownedLoadStrong();
      v30 = v19;

      v31 = (Strong + OBJC_IVAR____TtC8AppStore11AppDelegate_pptViewHierarchyProxy);
      v32 = *(Strong + OBJC_IVAR____TtC8AppStore11AppDelegate_pptViewHierarchyProxy);
      *v31 = v30;
      v31[1] = a1;
      sub_100442854(v32);
      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1006D6D88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_10002849C(&unk_1009767C0);
  __chkstk_darwin(v5 - 8);
  v7 = &v24[-v6];
  v8 = sub_10002849C(&unk_1009796F0);
  __chkstk_darwin(v8 - 8);
  v10 = &v24[-v9];
  v11 = type metadata accessor for FlowDestination();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v24[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v16 = [*(Strong + OBJC_IVAR____TtC8AppStore17AppStoreBootstrap_tabBarController) traitCollection];
  v26 = 0;
  memset(v25, 0, sizeof(v25));

  dispatch thunk of Action.clickSender.getter();
  sub_100462678(a1, v24, v10);
  v17 = *(v12 + 48);
  if (v17(v10, 1, v11) == 1)
  {
    swift_storeEnumTagMultiPayload();
    if (v17(v10, 1, v11) != 1)
    {
      sub_10002B894(v10, &unk_1009796F0);
    }
  }

  else
  {
    sub_10013A05C(v10, v14);
  }

  v19 = FlowAction.referrerUrl.getter();
  v21 = v20;
  FlowAction.referrerData.getter();
  sub_1003C1668(v14, v16, v19, v21, v7, v25, a3, 1);
  v18 = v22;

  sub_10002B894(v7, &unk_1009767C0);
  sub_1001181EC(v14);
  sub_10002B894(v25, &unk_100981880);
  return v18;
}

uint64_t sub_1006D706C()
{
  v0 = type metadata accessor for BootstrapPhase();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectUnownedLoadStrong();
  if (qword_10096DC28 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for OSLogger();
  sub_1000056A8(v5, qword_1009D0440);
  sub_10002849C(&unk_100972A10);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1007B10D0;
  LogMessage.init(stringLiteral:)();
  Logger.info(_:)();

  (*(v1 + 104))(v3, enum case for BootstrapPhase.initialBootstrap(_:), v0);
  BootstrapPendingClosuresHandler.didComplete(bootstrapPhase:)();
  (*(v1 + 8))(v3, v0);
  if (*(Strong + OBJC_IVAR____TtC8AppStore11AppDelegate_freshnessWatchdog))
  {

    JSFreshnessWatchdog.didFinishBootstrap()();
  }

  return swift_unknownObjectRelease();
}

void sub_1006D72CC()
{
  v1 = v0;
  v2 = type metadata accessor for JUContentUnavailableViewController.PresentationContext();
  __chkstk_darwin(v2 - 8);
  static JUContentUnavailableViewController.PresentationContext.placeholder.getter();
  v3 = objc_allocWithZone(type metadata accessor for JUContentUnavailableViewController());

  swift_errorRetain();
  v4 = JUContentUnavailableViewController.init(error:presentationContext:retry:)();
  v5 = *(v1 + OBJC_IVAR____TtC8AppStore17AppStoreBootstrap_tabBarController);
  sub_10002849C(&qword_100973210);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1007B0B70;
  *(v6 + 32) = v4;
  sub_100005744(0, &qword_1009711C0);
  v7 = v4;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v5 setViewControllers:isa];

  type metadata accessor for AppStoreApplication();
  v15.receiver = swift_getObjCClassFromMetadata();
  v15.super_class = &OBJC_METACLASS____TtC8AppStore19AppStoreApplication;
  v9 = objc_msgSendSuper2(&v15, "sharedApplication");
  v10 = swift_dynamicCastClassUnconditional();
  swift_errorRetain();
  sub_10002849C(&qword_10098A690);
  v11 = String.init<A>(describing:)();
  v13 = v12;
  if (ASKBuildTypeIsPerformanceTesting() && ([v10 shouldRecordExtendedLaunchTime] & 1) != 0 && (v14 = OBJC_IVAR____TtC8AppStore19AppStoreApplication_hasConcludedExtendedLaunchTest, (*(v10 + OBJC_IVAR____TtC8AppStore19AppStoreApplication_hasConcludedExtendedLaunchTest) & 1) == 0))
  {
    sub_10045B064(v11, v13, v10);

    *(v10 + v14) = 1;
  }

  else
  {
  }
}

uint64_t sub_1006D7520()
{
  sub_1006D76AC(v0 + OBJC_IVAR____TtC8AppStore17AppStoreBootstrap_delegate);
}

uint64_t sub_1006D7570()
{
  sub_10001F64C(v0 + 16);
  v1 = OBJC_IVAR____TtC8AppStore13BaseBootstrap_logger;
  v2 = type metadata accessor for CompoundLogger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_1006D76AC(v0 + OBJC_IVAR____TtC8AppStore17AppStoreBootstrap_delegate);

  return v0;
}

uint64_t sub_1006D764C()
{
  sub_1006D7570();

  return swift_deallocClassInstance();
}

unint64_t sub_1006D76E4(uint64_t a1)
{
  type metadata accessor for MetricsFieldInclusionRequest();
  sub_1006D7E8C(&qword_1009726B8, &type metadata accessor for MetricsFieldInclusionRequest);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();

  return sub_1006D777C(a1, v2);
}

unint64_t sub_1006D777C(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = type metadata accessor for MetricsFieldInclusionRequest();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4, v6);
      sub_1006D7E8C(&qword_1009726C0, &type metadata accessor for MetricsFieldInclusionRequest);
      v16 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

uint64_t sub_1006D793C()
{
  sub_10002849C(&qword_100973210);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007B0B70;
  type metadata accessor for AccountChannelsProvider();
  v1 = swift_allocObject();
  *(v1 + 24) = 0;
  swift_unknownObjectWeakInit();
  v2 = [objc_opt_self() defaultCenter];
  [v2 addObserver:v1 selector:"notifyObserver" name:VSAccountStoreDidChangeNotification object:0];

  sub_1006D7E8C(&qword_1009929F8, type metadata accessor for AccountChannelsProvider);
  type metadata accessor for MSOPersonalizationDataSource();
  swift_allocObject();

  *(inited + 32) = MSOPersonalizationDataSource.init(objectGraph:accountChannelsProvider:)();
  sub_1002A6638(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  type metadata accessor for PersonalizationDataProvider();
  swift_allocObject();
  return PersonalizationDataProvider.init(dataSources:)();
}

uint64_t sub_1006D7AD4()
{
  type metadata accessor for ASKBagContract();
  type metadata accessor for BaseObjectGraph();
  inject<A, B>(_:from:)();
  v0 = v21[0];
  sub_10002849C(&qword_100988670);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007B10D0;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v2;
  *(inited + 72) = &type metadata for Bool;
  *(inited + 48) = 0;
  sub_100398EF4(inited);
  swift_setDeallocating();
  sub_10002B894(inited + 32, &unk_100982880);
  v3 = objc_allocWithZone(CBCentralManager);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v5 = [v3 initWithDelegate:0 queue:0 options:isa];

  sub_10002849C(&unk_100975540);
  inject<A, B>(_:from:)();
  sub_10002C0AC(v21, &v18);
  v6 = [objc_opt_self() sharedInstance];
  if (v6)
  {
    v7 = sub_100005744(0, &qword_1009929E8);
    v8 = sub_1006D9788(&qword_1009929F0, &qword_1009929E8);
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  v9 = sub_100005744(0, &qword_1009929D0);
  v10 = sub_1006D9788(&qword_1009929D8, &qword_1009929D0);
  v11 = type metadata accessor for AppStoreTodayCardTriggerBuilder();
  v12 = swift_allocObject();
  v12[12] = v0;
  sub_100005A38(&v18, (v12 + 13));
  v12[2] = v6;
  v12[3] = 0;
  v12[4] = 0;
  v12[5] = v7;
  v12[6] = v8;
  v12[7] = v5;
  v12[10] = v9;
  v12[11] = v10;
  type metadata accessor for TodayCardTriggerController();
  v19 = v11;
  v20 = sub_1006D7E8C(&qword_1009929E0, type metadata accessor for AppStoreTodayCardTriggerBuilder);
  *&v18 = v12;
  v13 = objc_opt_self();
  v14 = v5;

  v15 = [v13 standardUserDefaults];
  sub_100737D84();

  [v13 standardUserDefaults];
  sub_100005744(0, &qword_100980E88);
  v16 = TodayCardTriggerController.__allocating_init(builder:bag:fastExpirationEnabled:persistantStore:)();

  sub_100007000(v21);
  return v16;
}

uint64_t sub_1006D7E8C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1006D7ED4(uint64_t a1)
{
  v2 = sub_10002849C(&qword_1009828B0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_10002849C(&qword_1009828B8);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1006D80B8(v9, v5);
      result = sub_1006D76E4(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for MetricsFieldInclusionRequest();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      result = sub_100005A38(&v5[v8], v7[7] + 40 * v13);
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_1006D80B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&qword_1009828B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1006D8128()
{
  result = qword_1009927F8;
  if (!qword_1009927F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009927F8);
  }

  return result;
}

unint64_t sub_1006D817C()
{
  result = qword_100992800;
  if (!qword_100992800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100992800);
  }

  return result;
}

unint64_t sub_1006D81D0()
{
  result = qword_100992808;
  if (!qword_100992808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100992808);
  }

  return result;
}

unint64_t sub_1006D8224()
{
  result = qword_100992810;
  if (!qword_100992810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100992810);
  }

  return result;
}

unint64_t sub_1006D8278()
{
  result = qword_100992818;
  if (!qword_100992818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100992818);
  }

  return result;
}

unint64_t sub_1006D82CC()
{
  result = qword_100992820;
  if (!qword_100992820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100992820);
  }

  return result;
}

unint64_t sub_1006D8320()
{
  result = qword_100992830;
  if (!qword_100992830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100992830);
  }

  return result;
}

unint64_t sub_1006D8374()
{
  result = qword_100992838;
  if (!qword_100992838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100992838);
  }

  return result;
}

unint64_t sub_1006D83C8()
{
  result = qword_100992840;
  if (!qword_100992840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100992840);
  }

  return result;
}

unint64_t sub_1006D841C()
{
  result = qword_100992848;
  if (!qword_100992848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100992848);
  }

  return result;
}

unint64_t sub_1006D8470()
{
  result = qword_100992850;
  if (!qword_100992850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100992850);
  }

  return result;
}

unint64_t sub_1006D84C4()
{
  result = qword_100992858;
  if (!qword_100992858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100992858);
  }

  return result;
}

unint64_t sub_1006D8518()
{
  result = qword_100992860;
  if (!qword_100992860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100992860);
  }

  return result;
}

unint64_t sub_1006D856C()
{
  result = qword_100992868;
  if (!qword_100992868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100992868);
  }

  return result;
}

unint64_t sub_1006D85C0()
{
  result = qword_100992870;
  if (!qword_100992870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100992870);
  }

  return result;
}

unint64_t sub_1006D8614()
{
  result = qword_100992878;
  if (!qword_100992878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100992878);
  }

  return result;
}

unint64_t sub_1006D8668()
{
  result = qword_100992880;
  if (!qword_100992880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100992880);
  }

  return result;
}

unint64_t sub_1006D8710()
{
  result = qword_100992898;
  if (!qword_100992898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100992898);
  }

  return result;
}

unint64_t sub_1006D87B8()
{
  result = qword_1009928A0;
  if (!qword_1009928A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009928A0);
  }

  return result;
}

unint64_t sub_1006D880C()
{
  result = qword_1009928A8;
  if (!qword_1009928A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009928A8);
  }

  return result;
}

unint64_t sub_1006D8860()
{
  result = qword_1009928B0;
  if (!qword_1009928B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009928B0);
  }

  return result;
}

unint64_t sub_1006D88B4()
{
  result = qword_1009928B8;
  if (!qword_1009928B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009928B8);
  }

  return result;
}

unint64_t sub_1006D8908()
{
  result = qword_1009928C0;
  if (!qword_1009928C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009928C0);
  }

  return result;
}

unint64_t sub_1006D895C()
{
  result = qword_1009928C8;
  if (!qword_1009928C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009928C8);
  }

  return result;
}

unint64_t sub_1006D89B0()
{
  result = qword_1009928D0;
  if (!qword_1009928D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009928D0);
  }

  return result;
}

unint64_t sub_1006D8A58()
{
  result = qword_1009928D8;
  if (!qword_1009928D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009928D8);
  }

  return result;
}

unint64_t sub_1006D8AAC()
{
  result = qword_1009928E0;
  if (!qword_1009928E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009928E0);
  }

  return result;
}

unint64_t sub_1006D8B00()
{
  result = qword_1009928E8;
  if (!qword_1009928E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009928E8);
  }

  return result;
}

unint64_t sub_1006D8B54()
{
  result = qword_1009928F0;
  if (!qword_1009928F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009928F0);
  }

  return result;
}

unint64_t sub_1006D8BA8()
{
  result = qword_1009928F8;
  if (!qword_1009928F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009928F8);
  }

  return result;
}

unint64_t sub_1006D8BFC()
{
  result = qword_100992900;
  if (!qword_100992900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100992900);
  }

  return result;
}

unint64_t sub_1006D8C50()
{
  result = qword_100992908;
  if (!qword_100992908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100992908);
  }

  return result;
}

unint64_t sub_1006D8CA4()
{
  result = qword_100992910;
  if (!qword_100992910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100992910);
  }

  return result;
}

unint64_t sub_1006D8D4C()
{
  result = qword_100992918;
  if (!qword_100992918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100992918);
  }

  return result;
}

unint64_t sub_1006D8DA0()
{
  result = qword_100992920;
  if (!qword_100992920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100992920);
  }

  return result;
}

unint64_t sub_1006D8E48()
{
  result = qword_100992928;
  if (!qword_100992928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100992928);
  }

  return result;
}

unint64_t sub_1006D8E9C()
{
  result = qword_100992930;
  if (!qword_100992930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100992930);
  }

  return result;
}

unint64_t sub_1006D8EF0()
{
  result = qword_100992938;
  if (!qword_100992938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100992938);
  }

  return result;
}

unint64_t sub_1006D8F44()
{
  result = qword_100992940;
  if (!qword_100992940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100992940);
  }

  return result;
}

unint64_t sub_1006D8F98()
{
  result = qword_100992948;
  if (!qword_100992948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100992948);
  }

  return result;
}

unint64_t sub_1006D9040()
{
  result = qword_100992950;
  if (!qword_100992950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100992950);
  }

  return result;
}

unint64_t sub_1006D90E8()
{
  result = qword_100992958;
  if (!qword_100992958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100992958);
  }

  return result;
}

unint64_t sub_1006D913C()
{
  result = qword_100992960;
  if (!qword_100992960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100992960);
  }

  return result;
}

unint64_t sub_1006D91E4()
{
  result = qword_100992968;
  if (!qword_100992968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100992968);
  }

  return result;
}

unint64_t sub_1006D928C()
{
  result = qword_100992970;
  if (!qword_100992970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100992970);
  }

  return result;
}

unint64_t sub_1006D92E0()
{
  result = qword_100992978;
  if (!qword_100992978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100992978);
  }

  return result;
}

unint64_t sub_1006D9334()
{
  result = qword_100992980;
  if (!qword_100992980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100992980);
  }

  return result;
}

unint64_t sub_1006D93DC()
{
  result = qword_100992988;
  if (!qword_100992988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100992988);
  }

  return result;
}

unint64_t sub_1006D9484()
{
  result = qword_100992990;
  if (!qword_100992990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100992990);
  }

  return result;
}

unint64_t sub_1006D94D8()
{
  result = qword_100992998;
  if (!qword_100992998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100992998);
  }

  return result;
}

unint64_t sub_1006D9580()
{
  result = qword_1009929A8;
  if (!qword_1009929A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009929A8);
  }

  return result;
}

unint64_t sub_1006D95D4()
{
  result = qword_1009929B0;
  if (!qword_1009929B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009929B0);
  }

  return result;
}

unint64_t sub_1006D9628()
{
  result = qword_1009929B8;
  if (!qword_1009929B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009929B8);
  }

  return result;
}

unint64_t sub_1006D967C()
{
  result = qword_1009929C0;
  if (!qword_1009929C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009929C0);
  }

  return result;
}

unint64_t sub_1006D96D0()
{
  result = qword_1009929C8;
  if (!qword_1009929C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009929C8);
  }

  return result;
}

uint64_t sub_1006D9788(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_100005744(255, a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

double sub_1006D97CC()
{
  v0 = [objc_opt_self() mainScreen];
  [v0 scale];
  v2 = v1;

  result = 1.0 / v2;
  *&qword_1009D36B8 = 1.0 / v2;
  return result;
}

uint64_t sub_1006D9858(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for FontSource();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (&v18[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for StaticDimension();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DividerView.Style(0);
  sub_100005644(v11, a2);
  v12 = sub_1000056A8(v11, a2);
  *v6 = UIFontTextStyleBody;
  (*(v4 + 104))(v6, enum case for FontSource.textStyle(_:), v3);
  v18[3] = v3;
  v18[4] = &protocol witness table for FontSource;
  v13 = sub_1000056E0(v18);
  (*(v4 + 16))(v13, v6, v3);
  v14 = UIFontTextStyleBody;
  StaticDimension.init(_:scaledLike:)();
  (*(v4 + 8))(v6, v3);
  v15 = *&UIEdgeInsetsZero.bottom;
  *v12 = *&UIEdgeInsetsZero.top;
  *(v12 + 1) = v15;
  return (*(v8 + 32))(&v12[*(v11 + 20)], v10, v7);
}

char *sub_1006D9A84(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = &v4[OBJC_IVAR____TtC8AppStore11DividerView_separatorInset];
  v11 = *&UIEdgeInsetsZero.bottom;
  *v10 = *&UIEdgeInsetsZero.top;
  *(v10 + 1) = v11;
  v12 = OBJC_IVAR____TtC8AppStore11DividerView_style;
  if (qword_10096EE40 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for DividerView.Style(0);
  v14 = sub_1000056A8(v13, qword_1009D36C0);
  sub_1002BB2D0(v14, &v4[v12]);
  v15 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v4[OBJC_IVAR____TtC8AppStore11DividerView_separatorView] = v15;
  v23.receiver = v4;
  v23.super_class = ObjectType;
  v16 = objc_msgSendSuper2(&v23, "initWithFrame:", a1, a2, a3, a4);
  v17 = OBJC_IVAR____TtC8AppStore11DividerView_separatorView;
  v18 = *&v16[OBJC_IVAR____TtC8AppStore11DividerView_separatorView];
  sub_100028BB8();
  v19 = v16;
  v20 = v18;
  v21 = static UIColor.defaultLine.getter();
  [v20 setBackgroundColor:v21];

  [v19 addSubview:*&v16[v17]];
  return v19;
}

id sub_1006D9EEC()
{
  v16.receiver = v0;
  v16.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v16, "layoutSubviews");
  [v0 bounds];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  if (qword_10096EE38 != -1)
  {
    swift_once();
  }

  v9 = *&qword_1009D36B8;
  v10 = *&v0[OBJC_IVAR____TtC8AppStore11DividerView_separatorView];
  v17.origin.x = v2;
  v17.origin.y = v4;
  v17.size.width = v6;
  v17.size.height = v8;
  MinX = CGRectGetMinX(v17);
  v12 = &v0[OBJC_IVAR____TtC8AppStore11DividerView_separatorInset];
  v13 = MinX + v12[1];
  v18.origin.x = v2;
  v18.origin.y = v4;
  v18.size.width = v6;
  v18.size.height = v8;
  v14 = CGRectGetMidY(v18) + v9 * -0.5;
  v19.origin.x = v2;
  v19.origin.y = v4;
  v19.size.width = v6;
  v19.size.height = v8;
  return [v10 setFrame:{v13, v14, CGRectGetWidth(v19) - v12[1] - v12[3], v9}];
}

uint64_t sub_1006DA0F4()
{
  result = type metadata accessor for DividerView.Style(319);
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

void sub_1006DA1E4()
{
  type metadata accessor for UIEdgeInsets(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for StaticDimension();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

double sub_1006DA268()
{
  v0 = type metadata accessor for FloatingPointRoundingRule();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10096EE38 != -1)
  {
    swift_once();
  }

  v4 = floor(*&qword_1009D36B8);
  type metadata accessor for DividerView.Style(0);
  static Dimensions.defaultRoundingRule.getter();
  type metadata accessor for StaticDimension();
  AnyDimension.value(in:rounded:)();
  v6 = v5;
  (*(v1 + 8))(v3, v0);
  return v4 + v6;
}

uint64_t sub_1006DA3B4()
{
  v1 = type metadata accessor for Adaptive();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  if (*(v0 + 424))
  {
    sub_1006DA648(v0 + 56, v7);
    sub_10002C0AC(v0 + 224, v11);
    sub_10002C0AC(v0 + 304, v13);
    sub_10002C0AC(v0 + 344, &v14);
    sub_10002C0AC(v0 + 384, &v15);
    sub_100472554();
  }

  else
  {
    sub_10051E578(v0, v7);
    sub_10002C0AC(v0 + 224, &v8);
    sub_10002C0AC(v0 + 264, &v10);
    sub_10002C0AC(v0 + 344, &v12);
    sub_10051E5B0();
  }

  Adaptive.init<A>(_:)();
  swift_getKeyPath();
  sub_100067E04(v0 + 160, v7);
  sub_10002C0AC(v0 + 224, &v9);
  sub_10002C0AC(v0 + 344, v11);
  sub_10002C0AC(v0 + 384, v13);
  sub_100067E3C();

  Adaptive.onCustom<A>(_:_:)();

  sub_1006DA710(v7);
  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_1006DA6A4(void *a1)
{
  v1 = a1;
  swift_getAtKeyPath();

  return v3;
}

uint64_t sub_1006DA770(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 425))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1006DA7B8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 424) = 0;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 425) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 425) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_1006DA878(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  result = *(a2 + 160);
  v10 = *(a2 + 176);
  v11 = *(a2 + 208);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 208) = v11;
  *(a1 + 160) = result;
  *(a1 + 176) = v10;
  return result;
}

uint64_t sub_1006DA8B4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 224))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1006DA8FC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 216) = 0;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 224) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 224) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double sub_1006DA990()
{
  v0 = type metadata accessor for Adaptive();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1006DA3B4();
  dispatch thunk of Placeable.measure(toFit:with:)();
  v5 = v4;
  (*(v1 + 8))(v3, v0);
  return v5;
}

uint64_t sub_1006DAAB4()
{
  v0 = type metadata accessor for Adaptive();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1006DA3B4();
  dispatch thunk of Placeable.place(at:with:)();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1006DABC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1006DAC94();

  return CustomLayout._eraseToAnyForTesting(with:)(a1, a2, v4);
}

unint64_t sub_1006DAC24()
{
  result = qword_100992AF0;
  if (!qword_100992AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100992AF0);
  }

  return result;
}

unint64_t sub_1006DAC94()
{
  result = qword_100992AF8;
  if (!qword_100992AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100992AF8);
  }

  return result;
}

void sub_1006DACEC(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_10002849C(&qword_100972C98);
  __chkstk_darwin(v6 - 8);
  v8 = &v11 - v7;
  if (a2)
  {
    v9 = type metadata accessor for PageFacets.Facet.Option();
    v10 = *(v9 - 8);
    (*(v10 + 16))(v8, a4, v9);
    (*(v10 + 56))(v8, 0, 1, v9);
    PageFacetsPresenter.didSelect(option:in:)();
    sub_10002B894(v8, &qword_100972C98);
  }
}

void *sub_1006DAE2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PageFacets.Facet();
  v78 = *(v6 - 8);
  v79 = v6;
  __chkstk_darwin(v6);
  v75 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = v7;
  v8 = type metadata accessor for PageFacets.Facet.Option();
  v73 = *(v8 - 8);
  v74 = v8;
  __chkstk_darwin(v8);
  v71 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = v9;
  v10 = type metadata accessor for PageFacets.Facet.DisplayType();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v80 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v60 - v14;
  __chkstk_darwin(v16);
  v18 = &v60 - v17;
  v81 = a3;
  v19 = PageFacetsPresenter.selectedFacetOptions.getter();
  if (*(v19 + 16) && (v20 = sub_1003D7A9C(a1), (v21 & 1) != 0))
  {
    v22 = *(*(v19 + 56) + 8 * v20);

    v23 = sub_10029615C(a2, v22);
  }

  else
  {

    v23 = 0;
  }

  PageFacets.Facet.displayType.getter();
  v24 = *(v11 + 104);
  v64 = enum case for PageFacets.Facet.DisplayType.singleSelection(_:);
  v24(v15);
  sub_1006DD19C(&qword_100972CA0, &type metadata accessor for PageFacets.Facet.DisplayType);
  dispatch thunk of RawRepresentable.rawValue.getter();
  v82 = v10;
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v85 != v83 || (v25 = v23, v86 != v84))
  {
    v25 = _stringCompareWithSmolCheck(_:_:expecting:)() & v23;
  }

  v77 = v11;
  v26 = *(v11 + 8);
  v27 = v15;
  v28 = v82;
  v26(v27, v82);
  v62 = v11 + 8;
  v61 = v26;
  v26(v18, v28);

  v70 = v25 ^ 1;
  PageFacets.Facet.Option.systemImageName.getter();
  if (v29)
  {
    v30 = String._bridgeToObjectiveC()();

    v69 = [objc_opt_self() systemImageNamed:v30];
  }

  else
  {
    v69 = 0;
  }

  v31 = PageFacets.Facet.Option.title.getter();
  v67 = v32;
  v68 = v31;
  v66 = v23 & 1;
  v65 = sub_100005744(0, &qword_10097CD40);
  v33 = v73;
  v34 = *(v73 + 16);
  v35 = v71;
  v63 = a2;
  v36 = v74;
  v34(v71, a2, v74);
  v37 = v78;
  v38 = v79;
  v39 = v75;
  (*(v78 + 16))(v75, a1, v79);
  v40 = (*(v33 + 80) + 32) & ~*(v33 + 80);
  v41 = *(v37 + 80);
  v42 = v72 + v41 + v40;
  v72 = a1;
  v43 = v42 & ~v41;
  v44 = swift_allocObject();
  *(v44 + 16) = v70 & 1;
  *(v44 + 24) = v81;
  (*(v33 + 32))(v44 + v40, v35, v36);
  (*(v37 + 32))(v44 + v43, v39, v38);
  v45 = v69;

  v46 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v47 = v80;
  PageFacets.Facet.displayType.getter();
  v48 = v82;
  v49 = (*(v77 + 88))(v47, v82);
  if (v49 == enum case for PageFacets.Facet.DisplayType.toggle(_:))
  {
    v85 = 0x2D7465636166;
    v86 = 0xE600000000000000;
    v50 = v46;
    v51._countAndFlagsBits = PageFacets.Facet.id.getter();
    String.append(_:)(v51);

    v52 = String._bridgeToObjectiveC()();

    [v50 setAccessibilityIdentifier:v52];

    goto LABEL_18;
  }

  if (v49 == v64 || v49 == enum case for PageFacets.Facet.DisplayType.multipleSelection(_:))
  {
    v53 = PageFacets.Facet.Option.metricsValue.getter();
    if (!v54)
    {
LABEL_19:

      return v46;
    }

    v55 = v53;
    v56 = v54;
    v85 = 0x2D7465636166;
    v86 = 0xE600000000000000;
    v57 = v46;
    v58._countAndFlagsBits = v55;
    v58._object = v56;
    String.append(_:)(v58);

    v52 = String._bridgeToObjectiveC()();

    [v57 setAccessibilityIdentifier:v52];

LABEL_18:
    goto LABEL_19;
  }

  v61(v47, v48);
  return v46;
}

uint64_t sub_1006DB518(uint64_t a1)
{
  v2 = type metadata accessor for PageFacets.Facet.Option();
  v75 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v49 - v6;
  v8 = type metadata accessor for PageFacets.Facet();
  v68 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = type metadata accessor for PageFacets.FacetGroup();
  v59 = *(v61 - 8);
  __chkstk_darwin(v61);
  v60 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10002849C(&qword_10097CD30);
  __chkstk_darwin(v12 - 8);
  v14 = &v49 - v13;
  v15 = type metadata accessor for PageFacets();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = a1;
  PageFacetsPresenter.pageFacets.getter();
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_10002B894(v14, &qword_10097CD30);
    return 0;
  }

  v71 = v16;
  (*(v16 + 32))(v18, v14, v15);
  result = PageFacets.facetGroups.getter();
  v51 = *(result + 16);
  if (!v51)
  {

    v22 = v71;
LABEL_41:
    (*(v22 + 8))(v18, v15);
    return 0;
  }

  v50 = v15;
  v20 = 0;
  v55 = result + ((*(v59 + 80) + 32) & ~*(v59 + 80));
  v54 = v59 + 16;
  v64 = v68 + 16;
  v21 = (v68 + 8);
  v79 = v75 + 16;
  v80 = (v75 + 8);
  v52 = (v59 + 8);
  v81 = v7;
  v22 = v71;
  v57 = v8;
  v69 = v18;
  v70 = v10;
  v53 = result;
  v56 = (v68 + 8);
  while (v20 < *(result + 16))
  {
    v24 = *(v59 + 72);
    v58 = v20;
    (*(v59 + 16))(v60, v55 + v24 * v20, v61);
    result = PageFacets.FacetGroup.facets.getter();
    v67 = *(result + 16);
    if (v67)
    {
      v25 = 0;
      v26 = *(v68 + 80);
      v65 = result;
      v66 = result + ((v26 + 32) & ~v26);
      while (v25 < *(result + 16))
      {
        (*(v68 + 16))(v10, v66 + *(v68 + 72) * v25, v8);
        if ((PageFacets.Facet.isHiddenFromMenu.getter() & 1) == 0)
        {
          v63 = v25;
          v27 = PageFacetsPresenter.selectedFacetOptions.getter();
          if (*(v27 + 16))
          {
            v28 = sub_1003D7A9C(v10);
            if (v29)
            {
              v30 = *(*(v27 + 56) + 8 * v28);

              result = PageFacets.Facet.options.getter();
              v31 = result;
              v74 = *(result + 16);
              if (v74)
              {
                v32 = 0;
                v72 = result + ((*(v75 + 80) + 32) & ~*(v75 + 80));
                v73 = result;
                v77 = v30 + 56;
                v78 = v30;
                while (v32 < *(v31 + 16))
                {
                  v33 = *(v75 + 72);
                  v34 = *(v75 + 16);
                  v34(v7, v72 + v33 * v32, v2);
                  v35 = PageFacets.Facet.defaultOptions.getter();
                  v36 = *(v35 + 16);
                  v76 = v32;
                  if (v36 && (sub_1006DD19C(&qword_100972C70, &type metadata accessor for PageFacets.Facet.Option), v37 = dispatch thunk of Hashable._rawHashValue(seed:)(), v38 = -1 << *(v35 + 32), v39 = v37 & ~v38, ((*(v35 + 56 + ((v39 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v39) & 1) != 0))
                  {
                    v40 = ~v38;
                    do
                    {
                      v34(v4, *(v35 + 48) + v39 * v33, v2);
                      sub_1006DD19C(&qword_100972D20, &type metadata accessor for PageFacets.Facet.Option);
                      v41 = dispatch thunk of static Equatable.== infix(_:_:)();
                      (*v80)(v4, v2);
                      if (v41)
                      {
                        break;
                      }

                      v39 = (v39 + 1) & v40;
                    }

                    while (((*(v35 + 56 + ((v39 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v39) & 1) != 0);
                  }

                  else
                  {
                    v41 = 0;
                  }

                  v42 = v78;
                  if (*(v78 + 16))
                  {
                    sub_1006DD19C(&qword_100972C70, &type metadata accessor for PageFacets.Facet.Option);
                    v7 = v81;
                    v43 = dispatch thunk of Hashable._rawHashValue(seed:)();
                    v44 = -1 << *(v42 + 32);
                    v45 = v43 & ~v44;
                    if ((*(v77 + ((v45 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v45))
                    {
                      v46 = ~v44;
                      while (1)
                      {
                        v34(v4, *(v78 + 48) + v45 * v33, v2);
                        sub_1006DD19C(&qword_100972D20, &type metadata accessor for PageFacets.Facet.Option);
                        v47 = dispatch thunk of static Equatable.== infix(_:_:)();
                        v48 = *v80;
                        (*v80)(v4, v2);
                        if (v47)
                        {
                          break;
                        }

                        v45 = (v45 + 1) & v46;
                        if (((*(v77 + ((v45 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v45) & 1) == 0)
                        {
                          v7 = v81;
                          goto LABEL_36;
                        }
                      }

                      v7 = v81;
                      result = (v48)(v81, v2);
                      v10 = v70;
                      v22 = v71;
                      v18 = v69;
                      v31 = v73;
                      if ((v41 & 1) == 0)
                      {

                        (*v56)(v10, v57);
                        (*v52)(v60, v61);
                        (*(v22 + 8))(v18, v50);
                        return 1;
                      }
                    }

                    else
                    {
                      v48 = *v80;
LABEL_36:
                      v22 = v71;
                      v18 = v69;
                      v31 = v73;
                      result = (v48)(v7, v2);
                      v10 = v70;
                    }
                  }

                  else
                  {
                    v7 = v81;
                    result = (*v80)(v81, v2);
                    v10 = v70;
                    v22 = v71;
                    v18 = v69;
                    v31 = v73;
                  }

                  v32 = v76 + 1;
                  if (v76 + 1 == v74)
                  {

                    v8 = v57;
                    v21 = v56;
                    goto LABEL_11;
                  }
                }

                __break(1u);
                break;
              }
            }
          }

LABEL_11:
          v25 = v63;
        }

        ++v25;
        (*v21)(v10, v8);
        result = v65;
        if (v25 == v67)
        {
          goto LABEL_5;
        }
      }

      __break(1u);
      break;
    }

LABEL_5:

    v23 = v58 + 1;
    (*v52)(v60, v61);
    v20 = v23;
    result = v53;
    if (v23 == v51)
    {

      v15 = v50;
      goto LABEL_41;
    }
  }

  __break(1u);
  return result;
}

Class sub_1006DBEF4(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v132 = a4;
  v133 = a3;
  v100 = type metadata accessor for SystemImage();
  v99 = *(v100 - 8);
  __chkstk_darwin(v100);
  v98 = &v96 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PageFacets.Facet.DisplayType();
  v128 = *(v6 - 8);
  __chkstk_darwin(v6);
  v130 = &v96 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v129 = &v96 - v9;
  v126 = type metadata accessor for PageFacets.Facet();
  v102 = *(v126 - 8);
  __chkstk_darwin(v126);
  v11 = &v96 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = type metadata accessor for PageFacets.FacetGroup();
  v111 = *(v110 - 8);
  __chkstk_darwin(v110);
  v109 = &v96 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10002849C(&qword_10097CD30);
  __chkstk_darwin(v13 - 8);
  v131 = (&v96 - v14);
  v101 = type metadata accessor for PageFacets();
  v112 = *(v101 - 8);
  __chkstk_darwin(v101);
  v97 = &v96 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for ArcadeSeeAllGamesPage.DisplayStyle();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v20 = &v96 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = _swiftEmptyArrayStorage;
  (*(v17 + 104))(v20, enum case for ArcadeSeeAllGamesPage.DisplayStyle.default(_:), v16, v18);
  sub_1006DD19C(&qword_10097CC88, &type metadata accessor for ArcadeSeeAllGamesPage.DisplayStyle);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v134 != v136 || v135 != v137)
  {
    _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  (*(v17 + 8))(v20, v16);

  v21._object = 0x8000000100821530;
  v21._countAndFlagsBits = 0xD000000000000021;
  v22._countAndFlagsBits = 0;
  v22._object = 0xE000000000000000;
  localizedString(_:comment:)(v21, v22);
  v23 = String._bridgeToObjectiveC()();

  v24 = [objc_opt_self() systemImageNamed:v23];

  sub_100005744(0, &qword_10097CD40);

  v25 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v138 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v138 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_84;
  }

  while (1)
  {
    v96 = v25;
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v26 = v138;
    v27 = v131;
    PageFacetsPresenter.pageFacets.getter();
    v25 = v112;
    v28 = v101;
    if (v112[6](v27, 1, v101) == 1)
    {
      sub_10002B894(v27, &qword_10097CD30);
      goto LABEL_74;
    }

    (*(v25 + 32))(v97, v27, v28);
    v29 = PageFacets.facetGroups.getter();
    v108 = *(v29 + 16);
    if (!v108)
    {
      break;
    }

    v30 = 0;
    v107 = v29 + ((*(v111 + 80) + 32) & ~*(v111 + 80));
    v106 = v111 + 16;
    v105 = v111 + 8;
    v125 = enum case for PageFacets.Facet.DisplayType.singleSelection(_:);
    v124 = (v128 + 104);
    v123 = (v128 + 8);
    v31 = (v102 + 8);
    v120 = v6;
    v32 = v126;
    v104 = v29;
    v121 = (v102 + 8);
    v122 = v102 + 16;
    v103 = a1;
    while (1)
    {
      if (v30 >= *(v29 + 16))
      {
        goto LABEL_79;
      }

      v127 = v26;
      v33 = v111;
      v34 = *(v111 + 72);
      v116 = v30;
      v35 = v109;
      v36 = v110;
      (*(v111 + 16))(v109, v107 + v34 * v30, v110);
      v37 = PageFacets.FacetGroup.facets.getter();
      (*(v33 + 8))(v35, v36);
      v38 = *(v37 + 16);
      if (v38)
      {
        break;
      }

      v26 = v127;
LABEL_10:
      v30 = v116 + 1;
      v25 = v112;
      v29 = v104;
      if (v116 + 1 == v108)
      {

        v28 = v101;
        goto LABEL_73;
      }
    }

    v25 = 0;
    v39 = (*(v102 + 80) + 32) & ~*(v102 + 80);
    v113 = v37;
    v133 = v37 + v39;
    v40 = *(v102 + 72);
    v131 = *(v102 + 16);
    v132 = v40;
    v26 = v127;
    v114 = v38;
    v131(v11, v133, v32);
    while (1)
    {
      if (PageFacets.Facet.isHiddenFromMenu.getter())
      {
        goto LABEL_16;
      }

      v127 = v26;
      v128 = v25;
      v41 = PageFacets.Facet.options.getter();
      v42 = *(v41 + 16);
      if (v42)
      {
        v134 = _swiftEmptyArrayStorage;
        specialized ContiguousArray.reserveCapacity(_:)();
        v43 = *(type metadata accessor for PageFacets.Facet.Option() - 8);
        v44 = v41 + ((*(v43 + 80) + 32) & ~*(v43 + 80));
        v45 = *(v43 + 72);
        do
        {
          sub_1006DAE2C(v11, v44, a1);
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          v44 += v45;
          --v42;
        }

        while (v42);

        v46 = v134;
        v6 = v120;
      }

      else
      {

        v46 = _swiftEmptyArrayStorage;
      }

      PageFacets.Facet.displayType.getter();
      (*v124)(v130, v125, v6);
      sub_1006DD19C(&qword_100972CA0, &type metadata accessor for PageFacets.Facet.DisplayType);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      if (v134 == v136 && v135 == v137)
      {
        v47 = *v123;
        (*v123)(v130, v6);
        v47(v129, v6);

        goto LABEL_28;
      }

      v48 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v49 = *v123;
      (*v123)(v130, v6);
      v49(v129, v6);

      if ((v48 & 1) == 0)
      {
        break;
      }

LABEL_28:
      if (PageFacets.Facet.displayOptionsInline.getter())
      {
        v50 = 0;
        v51 = 0xE000000000000000;
        v52.value = 1;
        if (!(v46 >> 62))
        {
          goto LABEL_32;
        }
      }

      else
      {
        v50 = PageFacets.Facet.title.getter();
        v51 = v54;
        v52.value = 0;
        if (!(v46 >> 62))
        {
LABEL_32:

          dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
          sub_100005744(0, &qword_1009818C0);
          preferredElementSize = v46;
          goto LABEL_33;
        }
      }

      sub_100005744(0, &qword_1009818C0);

      preferredElementSize = _bridgeCocoaArray<A>(_:)();

LABEL_33:

      sub_100005744(0, &qword_10097AAF0);
      v55._countAndFlagsBits = v50;
      v55._object = v51;
      v139.value.super.isa = 0;
      v139.is_nil = 0;
      v56.super.super.isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v55, 0, v139, v52, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, v95).super.super.isa;
      v57 = PageFacets.Facet.metricsParameterName.getter();
      if (v58)
      {
        v59 = v57;
        v60 = v58;
        v134 = 0x2D7465636166;
        v135 = 0xE600000000000000;
        v61 = v56.super.super.isa;
        v62._countAndFlagsBits = v59;
        v62._object = v60;
        String.append(_:)(v62);

        v63 = String._bridgeToObjectiveC()();

        [(objc_class *)v61 setAccessibilityIdentifier:v63];
      }

      v64 = v56.super.super.isa;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      v31 = v121;
      if (*((v138 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v138 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v26 = v138;
      v32 = v126;
      v25 = v128;
LABEL_16:
      ++v25;
      (*v31)(v11, v32);
      if (v25 == v38)
      {

        goto LABEL_10;
      }

      v131(v11, v133 + v132 * v25, v32);
    }

    if (v46 >> 62)
    {
      sub_100005744(0, &qword_1009818C0);

      v65 = _bridgeCocoaArray<A>(_:)();
      swift_bridgeObjectRelease_n();
    }

    else
    {

      dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
      sub_100005744(0, &qword_1009818C0);

      v65 = v46;
    }

    v26 = v127;
    v66 = v65 >> 62;
    v119 = v65;
    if (v65 >> 62)
    {
      v67 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v67 = *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v25 = v26 >> 62;
    if (!(v26 >> 62))
    {
      v68 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v69 = v68 + v67;
      if (__OFADD__(v68, v67))
      {
        goto LABEL_77;
      }

LABEL_44:
      if (swift_isUniquelyReferenced_nonNull_bridgeObject())
      {
        if (!v25)
        {
          v70 = v26 & 0xFFFFFFFFFFFFFF8;
          if (v69 > *((v26 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
LABEL_50:
            v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
            v70 = v26 & 0xFFFFFFFFFFFFFF8;
          }

          v117 = v67;
          v25 = *(v70 + 16);
          v71 = (*(v70 + 24) >> 1) - v25;
          v118 = v70;
          if (v66)
          {
            v6 = v119;
            v74 = _CocoaArrayWrapper.endIndex.getter();
            if (!v74)
            {
              goto LABEL_14;
            }

            v75 = v74;
            v76 = _CocoaArrayWrapper.endIndex.getter();
            if (v71 < v76)
            {
              goto LABEL_81;
            }

            if (v75 < 1)
            {
              goto LABEL_83;
            }

            v115 = v76;
            v127 = v26;
            v77 = v118 + 8 * v25 + 32;
            sub_1006DD05C();
            v78 = 0;
            v79 = v119;
            do
            {
              sub_10002849C(&qword_100992B00);
              v80 = sub_100548FEC(&v134, v78, v79);
              v82 = *v81;
              (v80)(&v134, 0);
              *(v77 + 8 * v78++) = v82;
            }

            while (v75 != v78);
            v6 = v120;
            a1 = v103;
            v38 = v114;
            v26 = v127;
            v73 = v115;
LABEL_61:

            v32 = v126;
            v31 = v121;
            v25 = v128;
            if (v73 < v117)
            {
              goto LABEL_78;
            }

            if (v73 > 0)
            {
              v83 = *(v118 + 16);
              v84 = __OFADD__(v83, v73);
              v85 = v83 + v73;
              if (v84)
              {
                goto LABEL_80;
              }

              *(v118 + 16) = v85;
            }
          }

          else
          {
            v72 = *((v119 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v72)
            {
              v6 = v120;
              if (v71 < v72)
              {
                goto LABEL_82;
              }

              sub_100005744(0, &qword_1009818C0);
              v73 = v72;
              swift_arrayInitWithCopy();
              goto LABEL_61;
            }

LABEL_14:

            v32 = v126;
            v31 = v121;
            v25 = v128;
            v6 = v120;
            if (v117 > 0)
            {
              goto LABEL_78;
            }
          }

          v138 = v26;
          goto LABEL_16;
        }
      }

      else if (!v25)
      {
        goto LABEL_50;
      }

      _CocoaArrayWrapper.endIndex.getter();
      goto LABEL_50;
    }

    v86 = _CocoaArrayWrapper.endIndex.getter();
    v69 = v86 + v67;
    if (!__OFADD__(v86, v67))
    {
      goto LABEL_44;
    }

LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
LABEL_84:
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

LABEL_73:
  (*(v25 + 8))(v97, v28);
LABEL_74:
  v87 = v100;
  v88 = v99;
  v89 = v98;
  v90 = sub_1006DB518(a1);
  v91 = &enum case for SystemImage.line3HorizontalDecreaseCircleFill(_:);
  if ((v90 & 1) == 0)
  {
    v91 = &enum case for SystemImage.line3HorizontalDecreaseCircle(_:);
  }

  (*(v88 + 104))(v89, *v91, v87);
  sub_100005744(0, &qword_10097AAF0);
  v140.value.super.isa = static SystemImage.load(_:with:)();
  v92._countAndFlagsBits = 0;
  v92._object = 0xE000000000000000;
  v140.is_nil = 0;
  isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v92, 0, v140, 1, 0xFFFFFFFFFFFFFFFFLL, v26, v95).super.super.isa;

  (*(v88 + 8))(v89, v87);
  return isa;
}