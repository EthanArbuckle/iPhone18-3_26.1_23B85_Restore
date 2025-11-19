uint64_t sub_100477620(uint64_t a1)
{
  v2 = sub_10000A5D4(&unk_100958350);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_100477688()
{
  swift_getObjectType();
  PageTraitEnvironment.pageColumnWidth.getter();
  PageTraitEnvironment.pageColumnMargin.getter();
  sub_1002D803C();
  v1 = v0;
  v3 = v2;
  v4 = objc_opt_self();
  v5 = [v4 absoluteDimension:v1];
  v6 = [v4 absoluteDimension:v3];
  v7 = objc_opt_self();
  v8 = [v7 sizeWithWidthDimension:v5 heightDimension:v6];

  v9 = [objc_opt_self() itemWithLayoutSize:v8];
  v10 = [v8 widthDimension];
  v11 = [v8 heightDimension];
  v12 = [v7 sizeWithWidthDimension:v10 heightDimension:v11];

  v13 = objc_opt_self();
  sub_10000A5D4(&unk_100942870);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1007841E0;
  *(v14 + 32) = v9;
  sub_100016F40(0, &qword_100952C70);
  v15 = v9;
  isa = sub_1007701AC().super.isa;

  v17 = [v13 verticalGroupWithLayoutSize:v12 subitems:isa];

  return v17;
}

uint64_t sub_1004778CC@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = sub_10076D39C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    swift_getObjectType();
    PageTraitEnvironment.pageColumnWidth.getter();
  }

  if (qword_100940330 != -1)
  {
    swift_once();
  }

  v8 = sub_1007640EC();
  sub_10000A61C(v8, qword_10099F660);
  sub_1007640DC();
  sub_10076D36C();
  (*(v5 + 8))(v7, v4);
  sub_100766E2C();
  v9 = sub_100766E4C();
  return (*(*(v9 - 8) + 56))(a2, 0, 1, v9);
}

void sub_100477A6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10000A5D4(&unk_100943200);
  __chkstk_darwin(v4 - 8);
  v6 = &v13 - v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = sub_10076B9FC();
    if (v9)
    {
      v10 = v9;
      v11 = sub_10000A5D4(&unk_1009428E0);
      sub_10076F5AC();
      v12 = *(v11 - 8);
      if ((*(v12 + 48))(v6, 1, v11) == 1)
      {

        sub_10000CFBC(v6, &unk_100943200);
      }

      else
      {
        sub_100263BF0(v10, 1, a3, v6);

        (*(v12 + 8))(v6, v11);
      }
    }

    else
    {
    }
  }
}

uint64_t sub_100477C1C()
{
  if (qword_100940330 != -1)
  {
    swift_once();
  }

  v0 = sub_1007640EC();
  sub_10000A61C(v0, qword_10099F660);
  sub_10076410C();
  sub_1004791F0(&unk_1009566D0, &type metadata accessor for FlowcaseItemLayout);
  sub_10076DBDC();
  if (qword_100940338 != -1)
  {
    swift_once();
  }

  v1 = sub_10076E21C();
  sub_10000A61C(v1, qword_10099F678);

  return sub_100770AFC();
}

id sub_100477E24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v175 = a3;
  v172 = sub_10076361C();
  v174 = *(v172 - 8);
  __chkstk_darwin(v172);
  v166 = &v156 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v165 = &v156 - v8;
  v9 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v9 - 8);
  v157 = &v156 - v10;
  v167 = sub_10076B96C();
  v164 = *(v167 - 8);
  __chkstk_darwin(v167);
  v158 = &v156 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v156 - v13;
  v15 = sub_10000A5D4(&unk_100949290);
  __chkstk_darwin(v15 - 8);
  v162 = &v156 - v16;
  v17 = sub_10000A5D4(&qword_10094F730);
  __chkstk_darwin(v17 - 8);
  v171 = &v156 - v18;
  v19 = sub_10000A5D4(&unk_1009492A0);
  __chkstk_darwin(v19 - 8);
  v170 = &v156 - v20;
  v21 = sub_10000A5D4(&unk_10094D210);
  __chkstk_darwin(v21 - 8);
  v169 = &v156 - v22;
  v23 = sub_10000A5D4(&unk_100945550);
  __chkstk_darwin(v23 - 8);
  v161 = &v156 - v24;
  v25 = sub_10076A3AC();
  v159 = *(v25 - 8);
  __chkstk_darwin(v25);
  v160 = &v156 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_10000A5D4(&unk_100946760);
  __chkstk_darwin(v27 - 8);
  v173 = (&v156 - v28);
  v29 = sub_10000A5D4(&qword_100952650);
  __chkstk_darwin(v29 - 8);
  v31 = &v156 - v30;
  v32 = *&v3[OBJC_IVAR____TtC20ProductPageExtension31EditorialCardCollectionViewCell_captionLabel];
  sub_100760D3C();
  if (v33)
  {
    v34 = sub_10076FF6C();
  }

  else
  {
    v34 = 0;
  }

  [v32 setText:v34];

  v35 = *&v4[OBJC_IVAR____TtC20ProductPageExtension31EditorialCardCollectionViewCell_titleLabel];
  sub_100760D0C();
  if (v36)
  {
    v37 = sub_10076FF6C();
  }

  else
  {
    v37 = 0;
  }

  [v35 setText:v37];

  v38 = *&v4[OBJC_IVAR____TtC20ProductPageExtension31EditorialCardCollectionViewCell_subtitleLabel];
  sub_100760D4C();
  if (v39)
  {
    v40 = sub_10076FF6C();
  }

  else
  {
    v40 = 0;
  }

  [v38 setText:v40];

  v41 = sub_100760CFC();
  sub_1003C8578(v41);
  v42 = sub_100760CDC();
  v163 = v14;
  if (v42)
  {
    v176 = v42;
    sub_10076B90C();
    sub_10076F64C();
    sub_1004791F0(&qword_100956710, &type metadata accessor for Action);
    sub_10076F56C();

    v43 = sub_10000A5D4(&qword_100955BD0);
    (*(*(v43 - 8) + 56))(v31, 0, 1, v43);
  }

  else
  {
    v44 = sub_10000A5D4(&qword_100955BD0);
    (*(*(v44 - 8) + 56))(v31, 1, 1, v44);
  }

  v45 = OBJC_IVAR____TtC20ProductPageExtension31EditorialCardCollectionViewCell_clickAction;
  swift_beginAccess();
  sub_1002F0390(v31, &v4[v45]);
  swift_endAccess();
  v46 = *&v4[OBJC_IVAR____TtC20ProductPageExtension31EditorialCardCollectionViewCell_gradientBlurView];
  if (sub_100760D2C())
  {
    v47 = sub_10076BE1C();
  }

  else
  {
    v47 = 0;
  }

  v48 = *&v46[OBJC_IVAR____TtC20ProductPageExtension28MediaOverlayGradientBlurView_secondaryColor];
  *&v46[OBJC_IVAR____TtC20ProductPageExtension28MediaOverlayGradientBlurView_secondaryColor] = v47;
  v49 = v47;

  sub_10046D22C();
  v50 = *&v4[OBJC_IVAR____TtC20ProductPageExtension31EditorialCardCollectionViewCell_appEventFormattedDateView];
  if (v50)
  {
    type metadata accessor for AppEventLiveIndicatorAnimationCoordinator();
    v51 = v50;
    sub_10076F63C();
    v52 = v176;
    v53 = v4;
    v54 = v46;
    v55 = a1;
    v56 = OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_liveIndicatorAnimationCoordinator;
    v57 = *&v51[OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_liveIndicatorAnimationCoordinator];
    v58 = v57;
    sub_1004B57F0(v52);
    v59 = *&v51[v56];
    *&v51[v56] = v52;
    a1 = v55;
    v46 = v54;
    v4 = v53;
    v60 = v52;

    sub_1004B5954(v57);
  }

  v61 = sub_100760D1C();
  v62 = &off_100911000;
  if (v61)
  {
    v63 = v61;
    v156 = v4;
    v64 = *&v4[OBJC_IVAR____TtC20ProductPageExtension31EditorialCardCollectionViewCell_lockupView];
    v65 = v159;
    v66 = *(v159 + 104);
    v66(v160, enum case for OfferButtonPresenterViewAlignment.right(_:), v25);
    v67 = v161;
    v66(v161, enum case for OfferButtonPresenterViewAlignment.left(_:), v25);
    (*(v65 + 56))(v67, 0, 1, v25);
    sub_1004791F0(&unk_1009492B0, &type metadata accessor for OfferButtonPresenterViewAlignment);
    v68 = v173;
    sub_10076759C();
    v69 = sub_10000A5D4(&qword_100945590);
    (*(*(v69 - 8) + 56))(v68, 0, 1, v69);
    v70 = *(v64 + OBJC_IVAR____TtC20ProductPageExtension19CrossLinkLockupView_artworkView);
    v71 = sub_10076BB5C();
    if (v71)
    {
    }

    v161 = v46;
    [v70 setHidden:v71 == 0];
    v160 = OBJC_IVAR____TtC20ProductPageExtension19CrossLinkLockupView_lockupView;
    v72 = *(v64 + OBJC_IVAR____TtC20ProductPageExtension19CrossLinkLockupView_lockupView);
    v73 = sub_10075F78C();
    v74 = v169;
    (*(*(v73 - 8) + 56))(v169, 1, 1, v73);
    v75 = sub_1007628DC();
    v76 = v170;
    (*(*(v75 - 8) + 56))(v170, 1, 1, v75);
    v77 = sub_10000A5D4(&unk_100946750);
    v78 = v171;
    (*(*(v77 - 8) + 56))(v171, 1, 1, v77);
    v79 = sub_10076C54C();
    v80 = v162;
    (*(*(v79 - 8) + 56))(v162, 1, 1, v79);
    sub_1004D0A60(v63, v72, v173, v175, 1, 0, v74, v76, v80, v78);
    sub_10000CFBC(v80, &unk_100949290);
    v72[OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 1;
    sub_10026202C();
    [v72 setNeedsLayout];
    v81 = OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_tertiaryTitleLabel;
    v82 = *&v72[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_tertiaryTitleLabel];
    if (v82)
    {
      [v82 setHidden:1];
      v83 = *&v72[v81];
      if (v83)
      {
        [v83 setText:0];
      }
    }

    v84 = OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_headingLabel;
    v85 = *&v72[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_headingLabel];
    if (v85)
    {
      if (([v85 isHidden] & 1) == 0)
      {
        v86 = *&v72[v84];
        if (v86)
        {
          if ([v86 hasContent])
          {
            v87 = OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_subtitleLabel;
            [*&v72[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_subtitleLabel] setHidden:1];
            [*&v72[v87] setText:0];
          }
        }
      }
    }

    v168 = a1;
    v88 = OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_offerLabel;
    v89 = [*&v72[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_offerLabel] isHidden];
    v90 = v163;
    if (v89 & 1) == 0 && ([*&v72[v88] hasContent])
    {
      v91 = *&v72[v84];
      if (v91)
      {
        [v91 setHidden:1];
        v92 = *&v72[v84];
        if (v92)
        {
          [v92 setText:0];
        }
      }

      v93 = OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_subtitleLabel;
      [*&v72[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_subtitleLabel] setHidden:1];
      [*&v72[v93] setText:0];
    }

    sub_10000CFBC(v171, &qword_10094F730);
    sub_10000CFBC(v170, &unk_1009492A0);
    sub_10000CFBC(v169, &unk_10094D210);
    sub_10076BB7C();
    v94 = sub_10076BA5C();
    v96 = v95;
    v97 = sub_10076BABC();
    v99 = v98;
    v100 = sub_10076BA7C();
    v171 = v63;
    if (v96 && v99)
    {
      v101 = v100;
      v170 = v94;
      v102 = v164;
      (*(v164 + 16))(v158, v90, v167);
      sub_10000A5D4(&unk_10094A8C0);
      sub_10076F64C();
      sub_10076FC1C();
      v169 = v97;
      v104 = v176;
      v103 = v177;
      type metadata accessor for CrossLinkPresenter();
      swift_allocObject();
      v105 = v64;
      v106 = CrossLinkPresenter.init(adamId:title:subtitle:includeBetaApps:view:appStateController:)(v158, v170, v96, v169, v99, v101 & 1, v64, &off_1008922A8, v104, v103);
      (*(v102 + 8))(v90, v167);
      sub_10000CFBC(v173, &unk_100946760);
      v107 = OBJC_IVAR____TtC20ProductPageExtension19CrossLinkLockupView_crossLinkPresenter;
      swift_beginAccess();
      *&v105[v107] = v106;
    }

    else
    {

      v110 = OBJC_IVAR____TtC20ProductPageExtension19CrossLinkLockupView_crossLinkPresenter;
      swift_beginAccess();
      *(v64 + v110) = 0;

      sub_100354258(0, 0);
      (*(v164 + 8))(v90, v167);
      sub_10000CFBC(v173, &unk_100946760);
    }

    v111 = v174;
    v112 = v160;
    v113 = *(*&v160[v64] + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_headingLabel);
    if (v113)
    {
      v114 = qword_100940AF8;
      v115 = v113;
      if (v114 != -1)
      {
        swift_once();
      }

      v116 = sub_10076D3DC();
      v117 = sub_10000A61C(v116, qword_1009A0EF8);
      v118 = *(v116 - 8);
      v119 = v157;
      (*(v118 + 16))(v157, v117, v116);
      (*(v118 + 56))(v119, 0, 1, v116);
      sub_1007625DC();
    }

    v120 = v165;
    sub_100760CEC();
    v121 = sub_1007635FC();
    v124 = *(v111 + 8);
    v123 = v111 + 8;
    v122 = v124;
    (v124)(v120, v172);
    v125 = *(*&v112[v64] + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_offerButton);
    if (v121 == 2)
    {
      v126 = objc_opt_self();
      v127 = v125;
      v128 = [v126 whiteColor];
    }

    else
    {
      sub_100016F40(0, &qword_100942F10);
      v129 = v125;
      v128 = sub_100770E1C();
    }

    v130 = v128;
    [v125 setTintColor:v128];

    [v64 setHidden:0];
    v131 = v166;
    sub_100760CEC();
    v132 = sub_1007635FC();
    v133 = v172;
    (v122)(v131, v172);
    [v64 setOverrideUserInterfaceStyle:v132];
    [*(*&v112[v64] + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_offerLabel) _setTextColorFollowsTintColor:0];
    v134 = *(*&v112[v64] + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_offerLabel);
    sub_100016F40(0, &qword_100942F10);
    v135 = v134;
    v136 = sub_100770CFC();
    v173 = v122;
    v137 = v136;
    v138 = [v136 colorWithAlphaComponent:0.7];
    v174 = v123;
    v139 = v138;

    [v135 setTextColor:v139];
    v140 = *(*&v112[v64] + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_subtitleLabel);
    v141 = sub_100770CFC();
    v142 = [v141 colorWithAlphaComponent:0.7];

    [v140 setTextColor:v142];
    v143 = *(v64 + OBJC_IVAR____TtC20ProductPageExtension19CrossLinkLockupView_crossLinkTitleLabel);
    v144 = sub_100770CFC();
    v145 = [v144 colorWithAlphaComponent:0.7];

    [v143 setTextColor:v145];
    v62 = &off_100911000;
    [v64 setNeedsLayout];
    v146 = swift_allocObject();
    v147 = v156;
    swift_unknownObjectWeakInit();
    v148 = swift_allocObject();
    v149 = v171;
    *(v148 + 2) = v146;
    *(v148 + 3) = v149;
    *(v148 + 4) = v175;
    v150 = &v147[OBJC_IVAR____TtC20ProductPageExtension31EditorialCardCollectionViewCell_lockupViewTappedAction];
    v151 = *&v147[OBJC_IVAR____TtC20ProductPageExtension31EditorialCardCollectionViewCell_lockupViewTappedAction];
    *v150 = sub_1004791E4;
    v150[1] = v148;

    sub_1000167E0(v151);

    v152 = v161;
    [v161 setHidden:0];
    sub_100760CEC();
    v153 = sub_1007635FC();
    (v173)(v131, v133);
    v154 = v152;
    v4 = v147;
    [v154 setOverrideUserInterfaceStyle:v153];
  }

  else
  {
    v108 = &v4[OBJC_IVAR____TtC20ProductPageExtension31EditorialCardCollectionViewCell_lockupViewTappedAction];
    v109 = *&v4[OBJC_IVAR____TtC20ProductPageExtension31EditorialCardCollectionViewCell_lockupViewTappedAction];
    *v108 = 0;
    *(v108 + 1) = 0;
    sub_1000167E0(v109);
    [*&v4[OBJC_IVAR____TtC20ProductPageExtension31EditorialCardCollectionViewCell_lockupView] setHidden:1];
    [v46 setHidden:1];
  }

  sub_1003C9E04();
  return [v4 v62[194]];
}

uint64_t sub_100479164()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10047919C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1004791F0(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_100479238()
{
  swift_getObjectType();
  PageTraitEnvironment.pageColumnWidth.getter();
  if (qword_100940330 != -1)
  {
    swift_once();
  }

  v0 = sub_1007640EC();
  sub_10000A61C(v0, qword_10099F660);
  sub_10076410C();
  sub_1004791F0(&unk_1009566D0, &type metadata accessor for FlowcaseItemLayout);
  sub_10076DBDC();
  if (qword_100940338 != -1)
  {
    swift_once();
  }

  v1 = sub_10076E21C();
  sub_10000A61C(v1, qword_10099F678);
  sub_100770AFC();
  v3 = v2;
  v5 = v4;
  v6 = objc_opt_self();
  v7 = [v6 absoluteDimension:v3];
  v8 = [v6 absoluteDimension:v5];
  v9 = [objc_opt_self() sizeWithWidthDimension:v7 heightDimension:v8];

  v10 = [objc_opt_self() itemWithLayoutSize:v9];
  v11 = objc_opt_self();
  sub_10000A5D4(&unk_100942870);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1007841E0;
  *(v12 + 32) = v10;
  sub_100016F40(0, &qword_100952C70);
  v13 = v10;
  isa = sub_1007701AC().super.isa;

  v15 = [v11 verticalGroupWithLayoutSize:v9 subitems:isa];

  return v15;
}

char *sub_1004794EC(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC20ProductPageExtension28CondensedAppEventContentView_lockupView;
  *&v4[v9] = [objc_allocWithZone(type metadata accessor for SmallSearchLockupView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v10 = OBJC_IVAR____TtC20ProductPageExtension28CondensedAppEventContentView_eventCardView;
  *&v4[v10] = [objc_allocWithZone(type metadata accessor for CondensedAppEventCardView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v4[OBJC_IVAR____TtC20ProductPageExtension28CondensedAppEventContentView_interRowSpacing] = 0;
  v17.receiver = v4;
  v17.super_class = type metadata accessor for CondensedAppEventContentView();
  v11 = objc_msgSendSuper2(&v17, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v15 = v11;
  [v15 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v15 addSubview:*&v15[OBJC_IVAR____TtC20ProductPageExtension28CondensedAppEventContentView_lockupView]];
  [v15 addSubview:*&v15[OBJC_IVAR____TtC20ProductPageExtension28CondensedAppEventContentView_eventCardView]];

  return v15;
}

void sub_10047973C()
{
  v1 = v0;
  v25.receiver = v0;
  v25.super_class = type metadata accessor for CondensedAppEventContentView();
  objc_msgSendSuper2(&v25, "layoutSubviews");
  sub_10076422C();
  v3 = v2;
  v5 = v4;
  v6 = *&v0[OBJC_IVAR____TtC20ProductPageExtension28CondensedAppEventContentView_lockupView];
  v7 = [v0 traitCollection];
  sub_10076DEDC();
  sub_10000A5D4(&unk_100942870);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1007841E0;
  *(v8 + 32) = v7;
  v9 = v7;
  v10 = sub_10076DEEC();
  [v6 measurementsWithFitting:v10 in:{v3, v5}];

  v11 = [v1 traitCollection];
  sub_1007709CC();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;

  [v6 setFrame:{v13, v15, v17, v19}];
  v20 = *&v1[OBJC_IVAR____TtC20ProductPageExtension28CondensedAppEventContentView_eventCardView];
  v21 = [v20 superview];
  if (v21)
  {
    v22 = v21;
    sub_100016F40(0, &qword_1009441F0);
    v23 = v1;
    v24 = sub_100770EEC();

    if (v24)
    {
      sub_10047A110();
      [v20 setBounds:{0.0, 0.0}];
      [v20 setCenter:sub_10047A2DC()];
    }
  }
}

uint64_t sub_1004799D0()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension28CondensedAppEventContentView_lockupView);
  v3 = *&v2[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView];
  v19.value.super.isa = 0;
  v19.is_nil = 0;
  sub_10075FCEC(v19, v4);

  v5 = *&v2[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_descriptionLabel];
  v6 = [v5 superview];
  if (!v6 || (v7 = v6, sub_100016F40(0, &qword_1009441F0), v8 = v2, v9 = sub_100770EEC(), v7, v8, (v9 & 1) == 0))
  {
    [v2 addSubview:v5];
  }

  [v5 setHidden:1];
  [v5 setText:0];
  [v2 setNeedsLayout];
  v10 = OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_searchAdTransparencyButton;
  v11 = *&v2[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_searchAdTransparencyButton];
  if (v11)
  {
    [v11 removeFromSuperview];
    v12 = *&v2[v10];
  }

  else
  {
    v12 = 0;
  }

  *&v2[v10] = 0;

  v13 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension28CondensedAppEventContentView_eventCardView);
  v20.value.super.isa = 0;
  v20.is_nil = 0;
  sub_10075FCEC(v20, v14);
  [*(v13 + OBJC_IVAR____TtC20ProductPageExtension25CondensedAppEventCardView_titleLabel) setText:0];
  sub_1004B1900(_swiftEmptyArrayStorage);
  v15 = (v13 + OBJC_IVAR____TtC20ProductPageExtension25CondensedAppEventCardView_appEventViewTappedAction);
  v16 = *(v13 + OBJC_IVAR____TtC20ProductPageExtension25CondensedAppEventCardView_appEventViewTappedAction);
  *v15 = 0;
  v15[1] = 0;

  return sub_1000167E0(v16);
}

uint64_t sub_100479BAC(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_10076C38C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10000A5D4(&unk_1009428D0);
  __chkstk_darwin(v10 - 8);
  v12 = &v28 - v11;
  sub_10075EEBC();
  sub_10047CACC(&qword_100942860, 255, &type metadata accessor for AppEventSearchResult);
  result = sub_10076332C();
  v14 = v31;
  if (v31)
  {
    v30 = a1;
    v15 = sub_10075EEAC();
    v16 = sub_10076341C();
    (*(*(v16 - 8) + 56))(v12, 1, 1, v16);
    sub_100386168(v15, v12, a2);

    sub_10000CFBC(v12, &unk_1009428D0);
    v17 = *&v2[OBJC_IVAR____TtC20ProductPageExtension28CondensedAppEventContentView_eventCardView];
    sub_10075EE9C();
    v18 = *&v17[OBJC_IVAR____TtC20ProductPageExtension25CondensedAppEventCardView_titleLabel];
    sub_10075F1BC();
    v19 = sub_10076FF6C();
    v29 = v6;
    v20 = v19;

    [v18 setText:v20];

    v21 = sub_10075F15C();
    sub_1004B1900(v21);
    [v17 setNeedsLayout];

    v22 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v23 = swift_allocObject();
    *(v23 + 2) = v22;
    *(v23 + 3) = v14;
    *(v23 + 4) = a2;
    v24 = &v17[OBJC_IVAR____TtC20ProductPageExtension25CondensedAppEventCardView_appEventViewTappedAction];
    v25 = *&v17[OBJC_IVAR____TtC20ProductPageExtension25CondensedAppEventCardView_appEventViewTappedAction];
    *v24 = sub_10047CB98;
    v24[1] = v23;

    sub_1000167E0(v25);

    swift_getKeyPath();
    sub_10076338C();

    sub_10076C23C();
    v27 = v26;
    (*(v7 + 8))(v9, v29);
    *&v3[OBJC_IVAR____TtC20ProductPageExtension28CondensedAppEventContentView_interRowSpacing] = v27;
    [v3 setNeedsLayout];
  }

  return result;
}

void sub_100479F50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10000A5D4(&unk_100943200);
  __chkstk_darwin(v4 - 8);
  v6 = &v12 - v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    sub_10075EE9C();
    v9 = sub_10075F27C();

    if (v9)
    {
      v10 = sub_10000A5D4(&unk_1009428E0);
      sub_10076F5AC();
      v11 = *(v10 - 8);
      if ((*(v11 + 48))(v6, 1, v10) == 1)
      {

        sub_10000CFBC(v6, &unk_100943200);
      }

      else
      {
        sub_100263BF0(v9, 1, a3, v6);

        (*(v11 + 8))(v6, v10);
      }
    }

    else
    {
    }
  }
}

double sub_10047A110()
{
  v1 = v0;
  v2 = sub_10075E39C();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = &v12[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  [*&v0[OBJC_IVAR____TtC20ProductPageExtension28CondensedAppEventContentView_lockupView] frame];
  CGRectGetMaxY(v13);
  v7 = [v0 traitCollection];
  v8 = sub_10077071C();

  if ((v8 & 1) == 0)
  {
    sub_10075E38C();
    sub_10075E37C();
    (*(v3 + 8))(v6, v2);
    sub_10000CF78(v12, v12[3]);
    v9 = [v1 traitCollection];
    sub_10076D41C();

    sub_10000CD74(v12);
  }

  type metadata accessor for CondensedAppEventContentView();
  sub_10076422C();
  CGRectGetHeight(v14);
  sub_10076422C();
  CGRectGetWidth(v15);
  return 0.0;
}

CGFloat sub_10047A2DC()
{
  v1 = v0;
  v2 = sub_10075E39C();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = &v12[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  [*&v0[OBJC_IVAR____TtC20ProductPageExtension28CondensedAppEventContentView_lockupView] frame];
  CGRectGetMaxY(v13);
  v7 = [v0 traitCollection];
  v8 = sub_10077071C();

  if ((v8 & 1) == 0)
  {
    sub_10075E38C();
    sub_10075E37C();
    (*(v3 + 8))(v6, v2);
    sub_10000CF78(v12, v12[3]);
    v9 = [v1 traitCollection];
    sub_10076D41C();

    sub_10000CD74(v12);
  }

  type metadata accessor for CondensedAppEventContentView();
  sub_10076422C();
  CGRectGetHeight(v14);
  [v1 bounds];
  return CGRectGetWidth(v15) * 0.5;
}

id sub_10047A4CC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CondensedAppEventContentView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10047A5D0(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = sub_10047CACC(&qword_100958A38, a2, type metadata accessor for CondensedAppEventContentView);
  result = sub_10047CACC(&unk_100958A40, v3, type metadata accessor for CondensedAppEventContentView);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_10047A654(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10076BF6C();
  __chkstk_darwin(v4 - 8);
  sub_10000A570(a1, v18);
  sub_10000A5D4(&unk_100942830);
  sub_10075EEBC();
  result = swift_dynamicCast();
  if (result)
  {
    sub_10075EE9C();
    v6 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension28CondensedAppEventContentView_lockupView);
    v7 = OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView;
    v8 = *(v6 + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView);
    v19.value.super.isa = 0;
    v19.is_nil = 0;
    sub_10075FCEC(v19, v9);

    v10 = *(v6 + v7);
    sub_10075FD2C();
    sub_10047CACC(&qword_100941820, 255, &type metadata accessor for ArtworkView);
    v11 = v10;
    sub_100760BFC();

    v20.value.super.isa = 0;
    v20.is_nil = 0;
    sub_10075FCEC(v20, v12);
    sub_100760BFC();
    sub_10075EEAC();
    v13 = sub_10076BB5C();

    if (v13)
    {
      v14 = qword_10093FBE0;
      v15 = *(v6 + v7);
      if (v14 != -1)
      {
        swift_once();
      }

      v16 = sub_100763ADC();
      sub_10000A61C(v16, qword_10099DDA0);
      sub_1007639AC();
      [v15 contentMode];
      sub_10076BFCC();
      sub_10076BF7C();
      sub_10075FCCC();
      [v15 setContentMode:sub_10076BDBC()];
      sub_100764ADC();
      sub_10075FD0C();
      if (!sub_10076BE1C())
      {
        sub_100016F40(0, &qword_100942F10);
        sub_100770D5C();
      }

      sub_10075FB8C();
      v17 = *(v6 + v7);
      sub_100760B8C();
    }

    sub_100125F50();
  }

  return result;
}

double sub_10047A9B0(uint64_t a1)
{
  v2 = sub_10075E39C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v94[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_10076749C();
  v122 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v94[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_1007679DC();
  v126 = *(v9 - 8);
  v127 = v9;
  __chkstk_darwin(v9);
  v117 = &v94[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_10076997C();
  v119 = *(v11 - 8);
  v120 = v11;
  __chkstk_darwin(v11);
  v118 = &v94[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_10076443C();
  v130 = *(v13 - 8);
  v131 = v13;
  __chkstk_darwin(v13);
  v15 = &v94[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v16);
  v129 = &v94[-v17];
  v135 = sub_10076747C();
  v128 = *(v135 - 8);
  __chkstk_darwin(v135);
  v121 = &v94[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v19);
  v21 = &v94[-v20];
  v22 = sub_10000A5D4(&unk_100957F90);
  __chkstk_darwin(v22 - 8);
  v116 = &v94[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v24);
  v133 = &v94[-v25];
  sub_10075EEBC();
  sub_10047CACC(&qword_100942860, 255, &type metadata accessor for AppEventSearchResult);
  sub_10076332C();
  if (!v172[0])
  {
    return 0.0;
  }

  v132 = v21;
  v114 = v3;
  v109 = v172[0];
  v26 = sub_10075EEAC();
  swift_getKeyPath();
  sub_10076338C();

  v134 = v172[0];

  v27 = sub_10076BB6C();
  v100 = v28;
  v101 = v27;
  v29 = sub_10076BBEC();
  v102 = v30;
  v103 = v29;
  v31 = sub_10076BB0C();
  v125 = v26;

  if (v31 && (v32 = sub_10076518C(), , v32))
  {
    v33 = sub_10076C3EC();
    v104 = v34;
    v105 = v33;
  }

  else
  {
    v104 = 0;
    v105 = 0;
  }

  v35 = v132;
  v124 = sub_10076282C();
  (*(v126 + 56))(v133, 1, 1, v127);
  sub_10076286C();
  if (qword_1009407E8 != -1)
  {
    swift_once();
  }

  v36 = v135;
  v37 = sub_10000A61C(v135, qword_1009A0690);
  v106 = *(v128 + 16);
  v107 = v128 + 16;
  v106(v35, v37, v36);
  v38 = sub_10077071C();
  v115 = v2;
  v112 = a1;
  v113 = v5;
  v110 = v8;
  v111 = v6;
  if (v38)
  {
    if (qword_10093F520 != -1)
    {
      swift_once();
    }

    v39 = qword_100944C88;
  }

  else
  {
    if (qword_10093F528 != -1)
    {
      swift_once();
    }

    v39 = qword_100944CA0;
  }

  v41 = v131;
  v42 = sub_10000A61C(v131, v39);
  v43 = v130;
  (*(v130 + 16))(v15, v42, v41);
  (*(v43 + 32))(v129, v15, v41);
  v44 = [v134 preferredContentSizeCategory];
  sub_10077084C();

  sub_1007643EC();
  sub_10076441C();
  sub_10076746C();
  sub_10076745C();
  v99 = sub_10076DDDC();
  swift_allocObject();
  v108 = sub_10076DDBC();
  v45 = objc_opt_self();
  v97 = v45;
  v46 = [v45 preferredFontForTextStyle:UIFontTextStyleBody];
  v47 = sub_10076C04C();
  v173 = v47;
  v123 = sub_10047CACC(&qword_100943230, 255, &type metadata accessor for Feature);
  v174 = v123;
  v48 = sub_10000DB7C(v172);
  v49 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v50 = *(v47 - 8);
  v98 = *(v50 + 104);
  v51 = v50 + 104;
  v95 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v98(v48, enum case for Feature.measurement_with_labelplaceholder(_:), v47);
  v96 = v51;
  sub_10076C90C();
  sub_10000CD74(v172);
  v52 = v118;
  sub_10076996C();
  sub_10076994C();
  v53 = v120;
  v54 = *(v119 + 8);
  v54(v52, v120);
  v55 = [v45 preferredFontForTextStyle:UIFontTextStyleFootnote];
  v171[3] = v47;
  v171[4] = v123;
  v56 = sub_10000DB7C(v171);
  v57 = v49;
  v58 = v98;
  v98(v56, v57, v47);
  sub_10076C90C();
  sub_10000CD74(v171);
  sub_10076996C();
  sub_10076994C();
  v54(v52, v53);
  v59 = [v97 preferredFontForTextStyle:UIFontTextStyleFootnote];
  v170[3] = v47;
  v170[4] = v123;
  v60 = sub_10000DB7C(v170);
  v58(v60, v95, v47);
  sub_10076C90C();
  sub_10000CD74(v170);
  sub_10076996C();
  sub_10076994C();
  v54(v52, v53);
  v61 = v124;
  LODWORD(v123) = sub_10001D420(0, v124) & (v61 != 0);
  if (v123 == 1)
  {
    v62 = v99;
    v63 = objc_allocWithZone(sub_10076DEDC());
    v64 = v134;
    v65 = sub_10076DECC();
    v66 = v116;
    sub_10047C764(v133, v116);
    v68 = v126;
    v67 = v127;
    v69 = *(v126 + 48);
    if (v69(v66, 1, v127) == 1)
    {
      v70 = v117;
      _s20ProductPageExtension18MetadataRibbonViewC7metrics11AppStoreKit0deF6LayoutV7MetricsVvpfi_0();
      if (v69(v66, 1, v67) != 1)
      {
        sub_10000CFBC(v66, &unk_100957F90);
      }
    }

    else
    {
      v70 = v117;
      (*(v68 + 32))(v117, v66, v67);
    }

    v72 = v65;
    sub_10001A588(v61, v70, v72);

    (*(v68 + 8))(v70, v67);
    swift_allocObject();
    v71 = sub_10076DDAC();
  }

  else
  {
    v62 = v99;
    swift_allocObject();
    v71 = sub_10076DDBC();
  }

  v73 = v71;
  v74 = v110;

  sub_10001D420(0, 0);
  swift_allocObject();
  v75 = sub_10076DDBC();
  v106(v121, v132, v135);
  v169 = &protocol witness table for LayoutViewPlaceholder;
  v168 = v62;
  v167 = v108;
  v166 = 0;
  *&v164[40] = 0u;
  v165 = 0u;
  sub_10000A570(v172, v164);
  sub_10000A570(v171, &v163);
  v162 = 0;
  v160 = 0u;
  v161 = 0u;
  v159 = 0;
  v157 = 0u;
  v158 = 0u;

  v76 = sub_10076DDCC();
  v156 = &protocol witness table for LayoutViewPlaceholder;
  v155 = v62;
  v154 = v76;
  v153 = 0;
  v151 = 0u;
  v152 = 0u;
  v150 = 0;
  v148 = 0u;
  v149 = 0u;
  v147 = 0;
  v145 = 0u;
  v146 = 0u;
  v144 = 0;
  v143 = 0u;
  *&v142[40] = 0u;
  sub_10000A570(v170, v142);
  v140 = v62;
  v141 = &protocol witness table for LayoutViewPlaceholder;
  v138 = &protocol witness table for LayoutViewPlaceholder;
  v139 = v73;
  v137 = v62;
  v136 = v75;
  sub_10076748C();
  sub_10076DEDC();
  sub_10000A5D4(&unk_100942870);
  v77 = swift_allocObject();
  *(v77 + 16) = xmmword_1007841E0;
  v78 = v134;
  *(v77 + 32) = v134;
  v79 = v78;
  v80 = sub_10076DEEC();
  sub_10047CACC(&unk_100958A50, 255, &type metadata accessor for SmallSearchLockupLayout);
  v81 = v111;
  sub_10076D2AC();
  v83 = v82;

  (*(v122 + 8))(v74, v81);
  sub_10000CD74(v170);
  sub_10000CD74(v171);
  sub_10000CD74(v172);
  (*(v130 + 8))(v129, v131);
  (*(v128 + 8))(v132, v135);
  sub_10000CFBC(v133, &unk_100957F90);
  swift_getKeyPath();
  sub_10076338C();

  v84 = v172[0];
  if (sub_10077071C())
  {
    v85 = sub_1006A3EF0();
  }

  else
  {
    v85 = sub_1006A4F4C();
  }

  v86 = v85;
  v88 = v114;
  v87 = v115;
  v89 = v113;

  v90 = v83 + v86;
  sub_10075E38C();
  sub_10075E37C();
  (*(v88 + 8))(v89, v87);
  sub_10000CF78(v172, v173);
  sub_10076D41C();
  v92 = v91;

  v40 = v90 + v92;
  sub_10000CD74(v172);
  return v40;
}

double sub_10047B894()
{
  v0 = sub_10077164C();
  v115 = *(v0 - 8);
  v116 = v0;
  __chkstk_darwin(v0);
  v114 = &v82 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_10075E39C();
  v112 = *(v2 - 8);
  v113 = v2;
  __chkstk_darwin(v2);
  v111 = &v82 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10076749C();
  v109 = *(v4 - 8);
  v110 = v4;
  __chkstk_darwin(v4);
  v108 = &v82 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1007679DC();
  v118 = *(v6 - 8);
  v119 = v6;
  __chkstk_darwin(v6);
  v84 = &v82 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10076997C();
  v100 = *(v8 - 8);
  v101 = v8;
  __chkstk_darwin(v8);
  v99 = &v82 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10076443C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v82 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v82 - v15;
  v17 = sub_10076747C();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v102 = &v82 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v124 = &v82 - v21;
  v22 = sub_10000A5D4(&unk_100957F90);
  __chkstk_darwin(v22 - 8);
  v83 = &v82 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v123 = &v82 - v25;
  swift_getKeyPath();
  sub_10076338C();

  v121 = v161[0];
  v26 = sub_10075EEAC();
  v27 = sub_10076BB6C();
  v90 = v28;
  v91 = v27;
  v29 = sub_10076BBEC();
  v92 = v30;
  v93 = v29;
  if (sub_10076BB0C() && (v31 = sub_10076518C(), , v31))
  {
    v32 = sub_10076C3EC();
    v94 = v33;
    v95 = v32;
  }

  else
  {
    v94 = 0;
    v95 = 0;
  }

  v120 = sub_10076282C();
  (*(v118 + 56))(v123, 1, 1, v119);
  sub_10076286C();
  v34 = [v121 traitCollection];
  if (qword_1009407E8 != -1)
  {
    swift_once();
  }

  v35 = sub_10000A61C(v17, qword_1009A0690);
  v96 = *(v18 + 16);
  v97 = v18 + 16;
  v96(v124, v35, v17);
  v36 = sub_10077071C();
  v122 = v17;
  v103 = v26;
  v104 = v18;
  if (v36)
  {
    if (qword_10093F520 != -1)
    {
      swift_once();
    }

    v37 = qword_100944C88;
  }

  else
  {
    if (qword_10093F528 != -1)
    {
      swift_once();
    }

    v37 = qword_100944CA0;
  }

  v38 = sub_10000A61C(v10, v37);
  (*(v11 + 16))(v13, v38, v10);
  v106 = v11;
  v107 = v10;
  (*(v11 + 32))(v16, v13, v10);
  v39 = [v34 preferredContentSizeCategory];
  sub_10077084C();
  v117 = v34;

  sub_1007643EC();
  v105 = v16;
  sub_10076441C();
  sub_10076746C();
  sub_10076745C();
  v89 = sub_10076DDDC();
  swift_allocObject();
  v98 = sub_10076DDBC();
  v40 = objc_opt_self();
  v87 = v40;
  v41 = [v40 preferredFontForTextStyle:UIFontTextStyleBody];
  v42 = sub_10076C04C();
  v162 = v42;
  v43 = sub_10047CACC(&qword_100943230, 255, &type metadata accessor for Feature);
  v163 = v43;
  v86 = v43;
  v44 = sub_10000DB7C(v161);
  v45 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v88 = *(*(v42 - 8) + 104);
  v85 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v88(v44, enum case for Feature.measurement_with_labelplaceholder(_:), v42);
  sub_10076C90C();
  sub_10000CD74(v161);
  v46 = v99;
  sub_10076996C();
  sub_10076994C();
  v47 = v101;
  v100 = *(v100 + 8);
  (v100)(v46, v101);
  v48 = [v40 preferredFontForTextStyle:UIFontTextStyleFootnote];
  v160[3] = v42;
  v160[4] = v43;
  v49 = sub_10000DB7C(v160);
  v50 = v45;
  v51 = v88;
  v88(v49, v50, v42);
  sub_10076C90C();
  sub_10000CD74(v160);
  sub_10076996C();
  sub_10076994C();
  v52 = v100;
  (v100)(v46, v47);
  v53 = [v87 preferredFontForTextStyle:UIFontTextStyleFootnote];
  v159[3] = v42;
  v159[4] = v86;
  v54 = sub_10000DB7C(v159);
  v51(v54, v85, v42);
  sub_10076C90C();
  sub_10000CD74(v159);
  sub_10076996C();
  sub_10076994C();
  v52(v46, v47);
  v55 = v120;
  if ((sub_10001D420(0, v120) & (v55 != 0)) == 1)
  {
    v56 = v89;
    LODWORD(v101) = 1;
    v57 = objc_allocWithZone(sub_10076DEDC());
    v58 = v117;
    v59 = sub_10076DECC();
    v60 = v83;
    sub_10047C764(v123, v83);
    v62 = v118;
    v61 = v119;
    v63 = *(v118 + 48);
    if (v63(v60, 1, v119) == 1)
    {
      v64 = v84;
      _s20ProductPageExtension18MetadataRibbonViewC7metrics11AppStoreKit0deF6LayoutV7MetricsVvpfi_0();
      if (v63(v60, 1, v61) != 1)
      {
        sub_10000CFBC(v60, &unk_100957F90);
      }
    }

    else
    {
      v64 = v84;
      (*(v62 + 32))(v84, v60, v61);
    }

    v66 = v59;
    sub_10001A588(v55, v64, v66);

    (*(v62 + 8))(v64, v61);
    swift_allocObject();
    v65 = sub_10076DDAC();
  }

  else
  {
    v56 = v89;
    swift_allocObject();
    v65 = sub_10076DDBC();
  }

  sub_10001D420(0, 0);
  swift_allocObject();
  v67 = sub_10076DDBC();
  v96(v102, v124, v122);
  v158 = &protocol witness table for LayoutViewPlaceholder;
  v157 = v56;
  v156 = v98;
  v155 = 0;
  *&v153[40] = 0u;
  v154 = 0u;
  sub_10000A570(v161, v153);
  sub_10000A570(v160, &v152);
  v151 = 0;
  v149 = 0u;
  v150 = 0u;
  v148 = 0;
  v146 = 0u;
  v147 = 0u;

  v68 = sub_10076DDCC();
  v145 = &protocol witness table for LayoutViewPlaceholder;
  v144 = v56;
  v143 = v68;
  v142 = 0;
  v140 = 0u;
  v141 = 0u;
  v139 = 0;
  v137 = 0u;
  v138 = 0u;
  v136 = 0;
  v134 = 0u;
  v135 = 0u;
  v133 = 0;
  v132 = 0u;
  *&v131[40] = 0u;
  sub_10000A570(v159, v131);
  v129 = v56;
  v130 = &protocol witness table for LayoutViewPlaceholder;
  v127 = &protocol witness table for LayoutViewPlaceholder;
  v128 = v65;
  v126 = v56;
  v125 = v67;
  v69 = v108;
  sub_10076748C();
  sub_10076DEDC();
  sub_10000A5D4(&unk_100942870);
  v70 = swift_allocObject();
  *(v70 + 16) = xmmword_1007841E0;
  v71 = v117;
  *(v70 + 32) = v117;
  v72 = v71;
  v73 = sub_10076DEEC();
  sub_10047CACC(&unk_100958A50, 255, &type metadata accessor for SmallSearchLockupLayout);
  v74 = v110;
  sub_10076D2AC();
  v76 = v75;

  (*(v109 + 8))(v69, v74);
  sub_10000CD74(v159);
  sub_10000CD74(v160);
  sub_10000CD74(v161);
  (*(v106 + 8))(v105, v107);
  (*(v104 + 8))(v124, v122);
  sub_10000CFBC(v123, &unk_100957F90);
  v77 = v111;
  sub_10075E38C();
  sub_10075E37C();
  (*(v112 + 8))(v77, v113);
  sub_10000CF78(v161, v162);
  v78 = v114;
  sub_1000FF02C();
  sub_10076D40C();
  v80 = v79;

  swift_unknownObjectRelease();
  (*(v115 + 8))(v78, v116);
  sub_10000CD74(v161);
  return v76 + v80;
}

uint64_t sub_10047C764(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&unk_100957F90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10047C7D4()
{
  sub_10075EEBC();
  sub_10047CACC(&qword_100942860, 255, &type metadata accessor for AppEventSearchResult);
  result = sub_10076332C();
  if (v5)
  {
    sub_10075EEAC();
    v1 = sub_10076BB5C();

    if (v1)
    {
      if (qword_10093FBE0 != -1)
      {
        swift_once();
      }

      v2 = sub_100763ADC();
      sub_10000A61C(v2, qword_10099DDA0);
      sub_1007639AC();
      sub_10076BFCC();
      sub_10077019C();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_10077021C();
      }

      sub_10077025C();
    }

    sub_10075EE9C();
    sub_100630CB4();
    v3 = sub_10012613C();

    swift_unknownObjectRelease();
    sub_1000F92B4(v3);
    v4._rawValue = _swiftEmptyArrayStorage;
    sub_100760BAC(v4);
  }

  return result;
}

uint64_t sub_10047C9B8()
{
  v1 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension28CondensedAppEventContentView_lockupView);
  v2 = OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView;
  v3 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView);
  v9.value.super.isa = 0;
  v9.is_nil = 0;
  sub_10075FCEC(v9, v4);

  v5 = *(v1 + v2);
  sub_10075FD2C();
  sub_10047CACC(&qword_100941820, 255, &type metadata accessor for ArtworkView);
  v6 = v5;
  sub_100760BFC();

  v10.value.super.isa = 0;
  v10.is_nil = 0;
  sub_10075FCEC(v10, v7);
  return sub_100760BFC();
}

uint64_t sub_10047CACC(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_10047CB18()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10047CB50()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10047CBA8@<X0>(void *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v34[0] = a2;
  v5 = sub_10076D39C();
  __chkstk_darwin(v5 - 8);
  v34[1] = v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100765CEC();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v12 = __chkstk_darwin(v11).n128_u64[0];
  v14 = (v34 - v13);
  [a1 pageMarginInsets];
  v16 = v15;
  v18 = v17;
  v19 = [a1 traitCollection];
  v20 = sub_1007706EC();

  if (v20)
  {
    *v14 = 1.0;
    (*(v8 + 104))(v14, enum case for BreakoutDetailsLayout.DetailDimension.fraction(_:), v7);
    if (JUScreenClassGetMain() == 1)
    {
      v41 = &type metadata for Double;
      v42 = &protocol witness table for Double;
      v40[0] = 0x407E000000000000;
      v21 = 0x4070400000000000;
    }

    else
    {
      HasRoundedCorners = JUScreenClassHasRoundedCorners();
      v23 = 560.0;
      if (HasRoundedCorners)
      {
        v23 = 610.0;
      }

      v38 = &type metadata for Double;
      v39 = &protocol witness table for Double;
      *&v37 = v23;
      sub_10003F19C(&v37, v40);
      v21 = 0x4075400000000000;
    }
  }

  else
  {
    *(v14 + 3) = &type metadata for CGFloat;
    *(v14 + 4) = &protocol witness table for CGFloat;
    *v14 = a3 - (v16 + v18 + 80.0);
    (*(v8 + 104))(v14, enum case for BreakoutDetailsLayout.DetailDimension.static(_:), v7);
    v21 = 0;
    v41 = &type metadata for Double;
    v42 = &protocol witness table for Double;
    v40[0] = 0x4083100000000000;
  }

  if (qword_1009405A0 != -1)
  {
    swift_once();
  }

  v24 = sub_10000A5D4(&qword_100951F70);
  sub_10000A61C(v24, qword_100958A60);
  *&v37 = a1;
  swift_unknownObjectRetain();
  sub_10075FDCC();
  swift_unknownObjectRelease();
  (*(v8 + 16))(v10, v14, v7);
  if (qword_1009405B0 != -1)
  {
    swift_once();
  }

  v25 = sub_10076D9AC();
  v26 = sub_10000A61C(v25, qword_10099FB80);
  v38 = v25;
  v39 = &protocol witness table for StaticDimension;
  v27 = sub_10000DB7C(&v37);
  (*(*(v25 - 8) + 16))(v27, v26, v25);
  v36[14] = &protocol witness table for Double;
  v36[13] = &type metadata for Double;
  v36[10] = 0x4071C00000000000;
  v36[9] = &protocol witness table for CGFloat;
  v36[8] = &type metadata for CGFloat;
  v36[5] = 0x4034000000000000;
  if (qword_1009405A8 != -1)
  {
    swift_once();
  }

  v28 = sub_100767EAC();
  v29 = sub_10000A61C(v28, qword_10099FB68);
  v36[3] = v28;
  v36[4] = sub_10047FF5C(&qword_1009622C0, &type metadata accessor for CappedSizeStaticDimension);
  v30 = sub_10000DB7C(v36);
  (*(*(v28 - 8) + 16))(v30, v29, v28);
  sub_10000A570(v40, &v35);
  if (v20)
  {
    v31 = &protocol witness table for CGFloat;
    v32 = &type metadata for CGFloat;
  }

  else
  {
    v32 = 0;
    v31 = 0;
    v21 = 0;
    v34[3] = 0;
    v34[4] = 0;
  }

  v34[5] = v32;
  v34[6] = v31;
  v34[2] = v21;
  sub_100765ADC();
  sub_10000CD74(v40);
  return (*(v8 + 8))(v14, v7);
}

void sub_10047D108(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension18UpsellBreakoutView_mediaViewContainer);
  v4 = OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer;
  v5 = *(v3 + OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer);
  if (a1)
  {
    sub_10047FF5C(&qword_100942810, type metadata accessor for VideoView);
    v6 = a1;
    v7 = [v6 superview];
    if (v7)
    {
      v8 = v7;
      sub_100016F40(0, &qword_1009441F0);
      v9 = v5;
      v10 = sub_100770EEC();

      if (v10)
      {
        [v6 removeFromSuperview];
      }
    }

    else
    {
    }
  }

  v11 = *&v5[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents];
  *&v5[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents] = a1;
  v12 = a1;
  sub_100453A30(v11);

  if (*(*(v3 + v4) + OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents))
  {
    type metadata accessor for VideoView();
    v13 = swift_dynamicCastClass();
    if (v13)
    {
      *(v13 + qword_1009602B8 + 8) = &off_1008965B8;

      swift_unknownObjectWeakAssign();
    }
  }
}

uint64_t sub_10047D2C4()
{
  v0 = sub_10076D39C();
  __chkstk_darwin(v0);
  __chkstk_darwin(v1);
  v2 = sub_10000A5D4(&qword_100951F70);
  sub_10000DB18(v2, qword_100958A60);
  sub_10000A61C(v2, qword_100958A60);
  sub_10076D3AC();
  sub_10076D3AC();
  sub_10000A5D4(&unk_100943120);
  return sub_10075FDEC();
}

uint64_t sub_10047D3E4()
{
  v0 = sub_10076D1AC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100767EAC();
  sub_10000DB18(v4, qword_10099FB68);
  sub_10000A61C(v4, qword_10099FB68);
  if (qword_100941058 != -1)
  {
    swift_once();
  }

  v5 = sub_10076D3DC();
  v6 = sub_10000A61C(v5, qword_1009A1F00);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v7 = UIContentSizeCategoryExtraExtraExtraLarge;
  return sub_100767E9C();
}

uint64_t sub_10047D580()
{
  v0 = sub_10076D1AC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10076D9AC();
  sub_10000DB18(v4, qword_10099FB80);
  sub_10000A61C(v4, qword_10099FB80);
  if (qword_100940E58 != -1)
  {
    swift_once();
  }

  v5 = sub_10076D3DC();
  v6 = sub_10000A61C(v5, qword_1009A1900);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v10[3] = v0;
  v10[4] = &protocol witness table for FontSource;
  v7 = sub_10000DB7C(v10);
  (*(v1 + 16))(v7, v3, v0);
  sub_10076D9BC();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_10047D758()
{
  v0 = type metadata accessor for BreakoutDetailsView.Config(0);
  __chkstk_darwin(v0);
  v2 = &v10 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v5 = &v10 - v4;
  v6 = sub_10000A5D4(&unk_1009467F0);
  sub_10000DB18(v6, qword_10099FB98);
  sub_10000A61C(v6, qword_10099FB98);
  if (qword_1009413C8 != -1)
  {
    swift_once();
  }

  v7 = sub_10000A61C(v0, qword_1009A27E0);
  sub_1000A9194(v7, v5);
  if (qword_1009413C0 != -1)
  {
    swift_once();
  }

  v8 = sub_10000A61C(v0, qword_1009A27C8);
  sub_1000A9194(v8, v2);
  sub_10000A5D4(&unk_100943120);
  return sub_10075FDEC();
}

char *sub_10047D8E8(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v103 = sub_10076F9AC();
  v102 = *(v103 - 8);
  __chkstk_darwin(v103);
  v101 = &v90 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v11 - 8);
  v97 = &v90 - v12;
  v105 = sub_10076771C();
  v13 = *(v105 - 8);
  __chkstk_darwin(v105);
  v98 = &v90 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v107 = &v90 - v16;
  v99 = sub_10076D3DC();
  v106 = *(v99 - 8);
  __chkstk_darwin(v99);
  v104 = &v90 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_10000A5D4(&unk_1009467F0);
  v18 = *(v96 - 1);
  __chkstk_darwin(v96);
  v20 = &v90 - v19;
  v21 = OBJC_IVAR____TtC20ProductPageExtension18UpsellBreakoutView_tapGestureRecognizer;
  *(v4 + v21) = [objc_allocWithZone(UITapGestureRecognizer) init];
  v22 = OBJC_IVAR____TtC20ProductPageExtension18UpsellBreakoutView_backgroundEffectView;
  type metadata accessor for BreakoutBackgroundEffectView();
  *(v4 + v22) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v23 = type metadata accessor for MediaView();
  v24 = objc_allocWithZone(v23);
  *&v24[OBJC_IVAR____TtC20ProductPageExtension9MediaView_reflectionView] = 0;
  *&v24[OBJC_IVAR____TtC20ProductPageExtension9MediaView_reflectionAmount] = 0;
  v24[OBJC_IVAR____TtC20ProductPageExtension9MediaView_isRubberbanding] = 0;
  *&v24[OBJC_IVAR____TtC20ProductPageExtension9MediaView_reflectionScale] = 0x3FF0000000000000;
  *&v24[OBJC_IVAR____TtC20ProductPageExtension9MediaView_reflectionOffset] = 0;
  v25 = type metadata accessor for UberContentContainer();
  v26 = objc_allocWithZone(v25);
  *&v26[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents] = 0;
  *&v26[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_parallaxY] = 0;
  v27 = &v26[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_prominentPlayButtonCenterYOverride];
  *v27 = 0;
  v27[8] = 1;
  v28 = &v26[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_systemBackgroundExtensionOutsets];
  *v28 = 0u;
  *(v28 + 1) = 0u;
  v28[32] = 1;
  *&v26[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_backgroundExtensionView] = 0;
  v114.receiver = v26;
  v114.super_class = v25;
  v29 = objc_msgSendSuper2(&v114, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v30 = v29;
  if (*&v29[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_backgroundExtensionView])
  {
    [v29 addSubview:?];
  }

  v31 = OBJC_IVAR____TtC20ProductPageExtension18UpsellBreakoutView_mediaViewContainer;
  *&v24[OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer] = v30;
  v113.receiver = v24;
  v113.super_class = v23;
  v32 = objc_msgSendSuper2(&v113, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v32 setClipsToBounds:1];
  [v32 addSubview:*&v32[OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer]];

  *(v5 + v31) = v32;
  v33 = OBJC_IVAR____TtC20ProductPageExtension18UpsellBreakoutView_artworkView;
  sub_10075FD2C();
  *(v5 + v33) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v34 = OBJC_IVAR____TtC20ProductPageExtension18UpsellBreakoutView_detailsView;
  if (qword_1009405B8 != -1)
  {
    swift_once();
  }

  v35 = v96;
  v36 = sub_10000A61C(v96, qword_10099FB98);
  (*(v18 + 16))(v20, v36, v35);
  v37 = objc_allocWithZone(type metadata accessor for BreakoutDetailsView(0));
  *(v5 + v34) = sub_1006389FC(v20);
  v95 = OBJC_IVAR____TtC20ProductPageExtension18UpsellBreakoutView_buttonDetailsView;
  v96 = v5;
  if (qword_100941058 != -1)
  {
    swift_once();
  }

  v38 = v99;
  v39 = sub_10000A61C(v99, qword_1009A1F00);
  v40 = v106;
  v41 = *(v106 + 16);
  v42 = v104;
  v41(v104, v39, v38);
  v93 = v41;
  v91 = UIContentSizeCategoryExtraExtraExtraLarge;
  v43 = enum case for DirectionalTextAlignment.none(_:);
  v94 = v13;
  v44 = *(v13 + 104);
  v45 = v105;
  v44(v107, enum case for DirectionalTextAlignment.none(_:), v105);
  v92 = objc_allocWithZone(type metadata accessor for CappedSizeDynamicTypeLabel());
  *&v92[qword_10095A0D0] = UIContentSizeCategoryExtraExtraExtraLarge;
  v46 = v97;
  v41(v97, v42, v38);
  v47 = v45;
  v48 = *(v40 + 56);
  v48(v46, 0, 1, v38);
  v49 = v98;
  v44(v98, v43, v47);
  v50 = v91;
  v51 = sub_1007626AC();
  v52 = v104;
  v93(v46, v104, v38);
  v48(v46, 0, 1, v38);
  v53 = v51;
  sub_1007625DC();
  sub_1007625BC();
  [v53 setNumberOfLines:0];
  v54 = v94;
  v55 = v107;
  v56 = v105;
  (*(v94 + 16))(v49, v107, v105);
  sub_10076262C();

  (*(v54 + 8))(v55, v56);
  (*(v106 + 8))(v52, v38);
  v57 = v96;
  *(v96 + v95) = v53;
  v58 = OBJC_IVAR____TtC20ProductPageExtension18UpsellBreakoutView_buttonDetailsTextAlignment;
  v59 = enum case for BreakoutDetails.TextAlignment.leading(_:);
  v60 = sub_100761D8C();
  (*(*(v60 - 8) + 104))(&v57[v58], v59, v60);
  v61 = OBJC_IVAR____TtC20ProductPageExtension18UpsellBreakoutView_offerButton;
  v62 = objc_allocWithZone(type metadata accessor for OfferButton());
  *&v57[v61] = sub_1001E89B8(0);
  *&v57[OBJC_IVAR____TtC20ProductPageExtension18UpsellBreakoutView_pageTraits] = 0;
  v57[OBJC_IVAR____TtC20ProductPageExtension18UpsellBreakoutView_isBackgroundEffectViewHidden] = 1;
  v112.receiver = v57;
  v112.super_class = ObjectType;
  v63 = objc_msgSendSuper2(&v112, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v67 = v63;
  [v67 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  sub_100016F40(0, &qword_100942F10);
  v68 = sub_100770D5C();
  [v67 setBackgroundColor:v68];

  v69 = OBJC_IVAR____TtC20ProductPageExtension18UpsellBreakoutView_buttonDetailsView;
  v70 = *&v67[OBJC_IVAR____TtC20ProductPageExtension18UpsellBreakoutView_buttonDetailsView];
  sub_10076266C();

  v71 = [*&v67[v69] layer];
  [v71 setCompositingFilter:kCAFilterPlusL];

  v72 = *&v67[v69];
  v110 = 0u;
  v111 = 0u;
  v108 = 0u;
  v109 = 0u;
  v73 = v72;
  v74 = v101;
  sub_10076F95C();
  sub_1000258C0(&v108);
  sub_1000258C0(&v110);
  sub_100770B9C();

  v75 = *(v102 + 8);
  v76 = v103;
  v75(v74, v103);
  v77 = OBJC_IVAR____TtC20ProductPageExtension18UpsellBreakoutView_detailsView;
  v78 = *&v67[OBJC_IVAR____TtC20ProductPageExtension18UpsellBreakoutView_detailsView];
  v110 = 0u;
  v111 = 0u;
  v108 = 0u;
  v109 = 0u;
  v79 = v78;
  sub_10076F95C();
  sub_1000258C0(&v108);
  sub_1000258C0(&v110);
  sub_100770B9C();

  v75(v74, v76);
  v80 = OBJC_IVAR____TtC20ProductPageExtension18UpsellBreakoutView_artworkView;
  v81 = *&v67[OBJC_IVAR____TtC20ProductPageExtension18UpsellBreakoutView_artworkView];
  v110 = 0u;
  v111 = 0u;
  v108 = 0u;
  v109 = 0u;
  v82 = v81;
  sub_10076F95C();
  sub_1000258C0(&v108);
  sub_1000258C0(&v110);
  sub_100770B9C();

  v75(v74, v76);
  [v67 addSubview:*&v67[OBJC_IVAR____TtC20ProductPageExtension18UpsellBreakoutView_mediaViewContainer]];
  [v67 addSubview:*&v67[v77]];
  [v67 addSubview:*&v67[OBJC_IVAR____TtC20ProductPageExtension18UpsellBreakoutView_offerButton]];
  [v67 addSubview:*&v67[v69]];
  v83 = *&v67[v80];
  sub_10075FBEC();

  v84 = OBJC_IVAR____TtC20ProductPageExtension18UpsellBreakoutView_tapGestureRecognizer;
  v85 = *&v67[OBJC_IVAR____TtC20ProductPageExtension18UpsellBreakoutView_tapGestureRecognizer];
  v86 = v67;
  [v85 addTarget:v86 action:"didTapVideo"];
  v87 = *&v67[v84];
  [v87 setDelegate:v86];

  [v86 addGestureRecognizer:*&v67[v84]];
  v88 = [v86 layer];

  [v88 setAllowsGroupBlending:0];
  return v86;
}

void (*sub_10047E57C(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension18UpsellBreakoutView_mediaViewContainer);
  a1[1] = v1;
  a1[2] = v3;
  v4 = OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer;
  a1[3] = OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer;
  v5 = *(*(v3 + v4) + OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents);
  if (v5)
  {
    type metadata accessor for VideoView();
    v6 = swift_dynamicCastClass();
    if (v6)
    {
      v7 = v5;
    }
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  return sub_10047E61C;
}

void sub_10047E61C(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(a1 + 16) + *(a1 + 24));
  if (a2)
  {
    if (v3)
    {
      sub_10047FF5C(&qword_100942810, type metadata accessor for VideoView);
      v5 = v3;
      v6 = [v5 superview];
      if (v6)
      {
        v7 = v6;
        sub_100016F40(0, &qword_1009441F0);
        v8 = v4;
        v9 = sub_100770EEC();

        if (v9)
        {
          [v5 removeFromSuperview];
        }
      }

      else
      {
      }
    }

    v16 = *(a1 + 16);
    v15 = *(a1 + 24);
    v17 = *&v4[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents];
    *&v4[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents] = v3;
    v18 = v3;
    sub_100453A30(v17);

    if (*(*(v16 + v15) + OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents))
    {
      type metadata accessor for VideoView();
      v19 = swift_dynamicCastClass();
      if (v19)
      {
        *(v19 + qword_1009602B8 + 8) = &off_1008965B8;
        swift_unknownObjectWeakAssign();
      }
    }

    v20 = *a1;
  }

  else
  {
    if (v3)
    {
      sub_10047FF5C(&qword_100942810, type metadata accessor for VideoView);
      v10 = v3;
      v11 = [v10 superview];
      if (v11)
      {
        v12 = v11;
        sub_100016F40(0, &qword_1009441F0);
        v13 = v4;
        v14 = sub_100770EEC();

        if (v14)
        {
          [v10 removeFromSuperview];
        }
      }

      else
      {
      }
    }

    v22 = *(a1 + 16);
    v21 = *(a1 + 24);
    v23 = *&v4[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents];
    *&v4[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents] = v3;
    v24 = v3;
    sub_100453A30(v23);

    if (*(*(v22 + v21) + OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents))
    {
      type metadata accessor for VideoView();
      v25 = swift_dynamicCastClass();
      if (v25)
      {
        *(v25 + qword_1009602B8 + 8) = &off_1008965B8;

        swift_unknownObjectWeakAssign();
      }
    }
  }
}

double sub_10047E948(double a1)
{
  v3 = sub_100765AEC();
  __chkstk_darwin(v3 - 8);
  v5 = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100765B0C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(v1 + OBJC_IVAR____TtC20ProductPageExtension18UpsellBreakoutView_pageTraits))
  {
    return 0.0;
  }

  v10 = swift_unknownObjectRetain();
  sub_10047CBA8(v10, v5, a1);
  v11 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension18UpsellBreakoutView_mediaViewContainer);
  v22[19] = type metadata accessor for MediaView();
  v22[20] = &protocol witness table for UIView;
  v22[16] = v11;
  v12 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension18UpsellBreakoutView_detailsView);
  v22[14] = type metadata accessor for BreakoutDetailsView(0);
  v22[15] = &protocol witness table for UIView;
  v22[11] = v12;
  v13 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension18UpsellBreakoutView_offerButton);
  v22[9] = type metadata accessor for OfferButton();
  v22[10] = &protocol witness table for UIView;
  v22[6] = v13;
  v14 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension18UpsellBreakoutView_buttonDetailsView);
  v22[4] = type metadata accessor for CappedSizeDynamicTypeLabel();
  v22[5] = &protocol witness table for UILabel;
  v22[1] = v14;
  v15 = v11;
  v16 = v12;
  v17 = v13;
  v18 = v14;
  sub_100765AFC();
  sub_100765ABC();
  v20 = v19;
  swift_unknownObjectRelease();
  (*(v7 + 8))(v9, v6);
  return v20;
}

id sub_10047EBD0()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_10076D1FC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100765AEC();
  __chkstk_darwin(v7 - 8);
  v9 = v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100765B0C();
  v11 = *(v10 - 8);
  *&v12 = __chkstk_darwin(v10).n128_u64[0];
  v14 = v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60.receiver = v1;
  v60.super_class = ObjectType;
  result = objc_msgSendSuper2(&v60, "layoutSubviews", v12);
  v16 = *&v1[OBJC_IVAR____TtC20ProductPageExtension18UpsellBreakoutView_pageTraits];
  if (v16)
  {
    v46 = v11;
    v47 = v10;
    swift_unknownObjectRetain();
    [v1 bounds];
    sub_10047CBA8(v16, v9, v17);
    v44[0] = v3;
    v18 = *&v1[OBJC_IVAR____TtC20ProductPageExtension18UpsellBreakoutView_mediaViewContainer];
    v19 = type metadata accessor for MediaView();
    v44[1] = ObjectType;
    v58 = v19;
    v59 = &protocol witness table for UIView;
    v57 = v18;
    v20 = *&v1[OBJC_IVAR____TtC20ProductPageExtension18UpsellBreakoutView_detailsView];
    v55 = type metadata accessor for BreakoutDetailsView(0);
    v56 = &protocol witness table for UIView;
    v54 = v20;
    v21 = *&v1[OBJC_IVAR____TtC20ProductPageExtension18UpsellBreakoutView_offerButton];
    v52 = type metadata accessor for OfferButton();
    v53 = &protocol witness table for UIView;
    v51 = v21;
    v22 = *&v1[OBJC_IVAR____TtC20ProductPageExtension18UpsellBreakoutView_buttonDetailsView];
    v49 = type metadata accessor for CappedSizeDynamicTypeLabel();
    v50 = &protocol witness table for UILabel;
    v48 = v22;
    v45 = v18;
    v23 = v20;
    v24 = v21;
    v25 = v22;
    sub_100765AFC();
    [v1 bounds];
    sub_100765ACC();
    (*(v4 + 8))(v6, v44[0]);
    v26 = *&v1[OBJC_IVAR____TtC20ProductPageExtension18UpsellBreakoutView_backgroundEffectView];
    [v1 bounds];
    MaxY = CGRectGetMaxY(v61);
    [v23 frame];
    MinY = CGRectGetMinY(v62);
    v29 = &v26[OBJC_IVAR____TtC20ProductPageExtension28BreakoutBackgroundEffectView_bottomGradientHeight];
    *v29 = MaxY - MinY;
    *(v29 + 8) = 0;
    [v1 bounds];
    [v26 setFrame:?];
    sub_10076422C();
    if (v31 >= v30)
    {
      v32 = v30;
    }

    else
    {
      v32 = v31;
    }

    if (v32 <= 31.0)
    {
      v33 = 0.0;
    }

    else
    {
      v33 = v32 * 0.5;
    }

    [v23 frame];
    v34 = CGRectGetMinY(v63) + -34.0;
    v35 = 30.0;
    if (v32 <= 60.0)
    {
      v35 = v33;
    }

    v36 = v34 - v35;
    sub_10076422C();
    MidY = CGRectGetMidY(v64);
    v38 = *&v45[OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer];
    v39 = &v38[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_prominentPlayButtonCenterYOverride];
    if (v36 >= MidY)
    {
      v43 = v39[8];
      *v39 = 0;
      v39[8] = 1;
      v41 = v47;
      v42 = v46;
      if (v43)
      {
LABEL_16:
        swift_unknownObjectRelease();
        return (*(v42 + 8))(v14, v41);
      }
    }

    else
    {
      MidY = *v39;
      v40 = v39[8];
      *v39 = v36;
      v39[8] = 0;
      v41 = v47;
      v42 = v46;
      if ((v40 & 1) == 0 && v36 == MidY)
      {
        goto LABEL_16;
      }
    }

    [v38 setNeedsLayout];
    goto LABEL_16;
  }

  return result;
}

uint64_t sub_10047F094()
{
  v1 = *(*(*&v0[OBJC_IVAR____TtC20ProductPageExtension18UpsellBreakoutView_mediaViewContainer] + OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer) + OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents);
  if (v1)
  {
    type metadata accessor for VideoView();
    v2 = swift_dynamicCastClass();
    if (v2)
    {
      v3 = v1;
    }
  }

  else
  {
    v2 = 0;
  }

  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v5 = objc_opt_self();
  v6 = swift_allocObject();
  *(v6 + 16) = v0;
  *(v6 + 24) = 0;
  v16 = sub_100480A60;
  v17 = v6;
  v12 = _NSConcreteStackBlock;
  v13 = 1107296256;
  v14 = sub_10009AEDC;
  v15 = &unk_1008966C0;
  v7 = _Block_copy(&v12);

  v8 = v0;

  v9 = swift_allocObject();
  *(v9 + 16) = sub_100480A38;
  *(v9 + 24) = v4;
  v16 = sub_1001F12BC;
  v17 = v9;
  v12 = _NSConcreteStackBlock;
  v13 = 1107296256;
  v14 = sub_1000513F0;
  v15 = &unk_100896710;
  v10 = _Block_copy(&v12);

  [v5 animateWithDuration:4 delay:v7 options:v10 animations:0.3 completion:0.0];
  _Block_release(v10);
  _Block_release(v7);
}

void sub_10047F2CC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + qword_1009602F8);
    if (v2)
    {
      v3 = swift_allocObject();
      swift_unknownObjectWeakInit();
      aBlock[4] = sub_10032E034;
      aBlock[5] = v3;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1005F04D8;
      aBlock[3] = &unk_100896760;
      v4 = _Block_copy(aBlock);
      v5 = v2;

      [v5 enterFullScreenAnimated:1 completionHandler:v4];

      _Block_release(v4);
      v1 = v5;
    }
  }
}

id sub_10047F444(uint64_t a1, double a2)
{
  [*(a1 + OBJC_IVAR____TtC20ProductPageExtension18UpsellBreakoutView_backgroundEffectView) setAlpha:?];
  [*(a1 + OBJC_IVAR____TtC20ProductPageExtension18UpsellBreakoutView_detailsView) setAlpha:a2];
  [*(a1 + OBJC_IVAR____TtC20ProductPageExtension18UpsellBreakoutView_offerButton) setAlpha:a2];
  v4 = *(a1 + OBJC_IVAR____TtC20ProductPageExtension18UpsellBreakoutView_buttonDetailsView);

  return [v4 setAlpha:a2];
}

void sub_10047F4DC()
{
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = 0x3FF0000000000000;
  v11 = sub_10047FF38;
  v12 = v2;
  v7 = _NSConcreteStackBlock;
  v8 = 1107296256;
  v9 = sub_10009AEDC;
  v10 = &unk_1008965F8;
  v3 = _Block_copy(&v7);
  v4 = v0;

  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  v11 = sub_1001F1278;
  v12 = v5;
  v7 = _NSConcreteStackBlock;
  v8 = 1107296256;
  v9 = sub_1000513F0;
  v10 = &unk_100896648;
  v6 = _Block_copy(&v7);

  [v1 animateWithDuration:4 delay:v3 options:v6 animations:0.3 completion:0.0];
  _Block_release(v6);
  _Block_release(v3);
}

uint64_t type metadata accessor for UpsellBreakoutView()
{
  result = qword_100958AD0;
  if (!qword_100958AD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10047F98C()
{
  result = sub_100761D8C();
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

uint64_t sub_10047FA48()
{
  v1 = *(*(*(v0 + OBJC_IVAR____TtC20ProductPageExtension18UpsellBreakoutView_mediaViewContainer) + OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer) + OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents);
  if (!v1)
  {
    return 0;
  }

  type metadata accessor for VideoView();
  result = swift_dynamicCastClass();
  if (result)
  {
    v3 = result;
    v4 = v1;
    return v3;
  }

  return result;
}

uint64_t (*sub_10047FABC(uint64_t **a1))()
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
  v2[4] = sub_10047E57C(v2);
  return sub_100019A4C;
}

void sub_10047FB2C()
{
  if (*(*(*(v0 + OBJC_IVAR____TtC20ProductPageExtension18UpsellBreakoutView_mediaViewContainer) + OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer) + OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents))
  {
    type metadata accessor for VideoView();
    v1 = swift_dynamicCastClass();
    if (v1)
    {
      v2 = *(v1 + qword_1009602F8);
      if (v2)
      {

        [v2 setShowsPlaybackControls:1];
      }
    }
  }
}

uint64_t sub_10047FBC8()
{
  ObjectType = swift_getObjectType();
  v1 = sub_10047FF5C(&unk_100958AF0, type metadata accessor for UpsellBreakoutView);

  return VideoViewProviding.someVideoView.getter(ObjectType, v1);
}

uint64_t sub_10047FC3C(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = sub_10047FF5C(&unk_100958AF0, type metadata accessor for UpsellBreakoutView);

  return VideoViewProviding.someVideoView.setter(a1, a2, ObjectType, v5);
}

uint64_t (*sub_10047FCC8(uint64_t *a1))()
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
  sub_10047FF5C(&unk_100958AF0, type metadata accessor for UpsellBreakoutView);
  *(v3 + 32) = sub_10076483C();
  return sub_10001D41C;
}

uint64_t sub_10047FD84(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension18UpsellBreakoutView_mediaViewContainer);
  v3 = [a1 superview];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer);
  sub_100016F40(0, &qword_1009441F0);
  v6 = v5;
  v7 = sub_100770EEC();

  return v7 & 1;
}

uint64_t sub_10047FF00()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10047FF44(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10047FF5C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_10047FFA4()
{
  v1 = v0;
  v2 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v2 - 8);
  v59 = &v52 - v3;
  v58 = sub_10076771C();
  v4 = *(v58 - 8);
  __chkstk_darwin(v58);
  v60 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v65 = &v52 - v7;
  v61 = sub_10076D3DC();
  v64 = *(v61 - 8);
  __chkstk_darwin(v61);
  v63 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_10000A5D4(&unk_1009467F0);
  v57 = *(v62 - 8);
  __chkstk_darwin(v62);
  v10 = &v52 - v9;
  v11 = OBJC_IVAR____TtC20ProductPageExtension18UpsellBreakoutView_tapGestureRecognizer;
  *(v1 + v11) = [objc_allocWithZone(UITapGestureRecognizer) init];
  v12 = OBJC_IVAR____TtC20ProductPageExtension18UpsellBreakoutView_backgroundEffectView;
  type metadata accessor for BreakoutBackgroundEffectView();
  *(v1 + v12) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v13 = type metadata accessor for MediaView();
  v14 = objc_allocWithZone(v13);
  *&v14[OBJC_IVAR____TtC20ProductPageExtension9MediaView_reflectionView] = 0;
  *&v14[OBJC_IVAR____TtC20ProductPageExtension9MediaView_reflectionAmount] = 0;
  v14[OBJC_IVAR____TtC20ProductPageExtension9MediaView_isRubberbanding] = 0;
  *&v14[OBJC_IVAR____TtC20ProductPageExtension9MediaView_reflectionScale] = 0x3FF0000000000000;
  *&v14[OBJC_IVAR____TtC20ProductPageExtension9MediaView_reflectionOffset] = 0;
  v15 = type metadata accessor for UberContentContainer();
  v16 = objc_allocWithZone(v15);
  *&v16[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents] = 0;
  *&v16[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_parallaxY] = 0;
  v17 = &v16[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_prominentPlayButtonCenterYOverride];
  *v17 = 0;
  v17[8] = 1;
  v18 = &v16[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_systemBackgroundExtensionOutsets];
  *v18 = 0u;
  *(v18 + 1) = 0u;
  v18[32] = 1;
  *&v16[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_backgroundExtensionView] = 0;
  v67.receiver = v16;
  v67.super_class = v15;
  v19 = objc_msgSendSuper2(&v67, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v20 = v19;
  if (*&v19[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_backgroundExtensionView])
  {
    [v19 addSubview:?];
  }

  v21 = OBJC_IVAR____TtC20ProductPageExtension18UpsellBreakoutView_mediaViewContainer;
  *&v14[OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer] = v20;
  v66.receiver = v14;
  v66.super_class = v13;
  v22 = objc_msgSendSuper2(&v66, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v22 setClipsToBounds:1];
  [v22 addSubview:*&v22[OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer]];

  *(v1 + v21) = v22;
  v23 = OBJC_IVAR____TtC20ProductPageExtension18UpsellBreakoutView_artworkView;
  sub_10075FD2C();
  *(v1 + v23) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v24 = OBJC_IVAR____TtC20ProductPageExtension18UpsellBreakoutView_detailsView;
  if (qword_1009405B8 != -1)
  {
    swift_once();
  }

  v25 = v62;
  v26 = sub_10000A61C(v62, qword_10099FB98);
  (*(v57 + 16))(v10, v26, v25);
  v27 = objc_allocWithZone(type metadata accessor for BreakoutDetailsView(0));
  v28 = sub_1006389FC(v10);
  v62 = v1;
  *(v1 + v24) = v28;
  v57 = OBJC_IVAR____TtC20ProductPageExtension18UpsellBreakoutView_buttonDetailsView;
  if (qword_100941058 != -1)
  {
    swift_once();
  }

  v29 = v61;
  v30 = sub_10000A61C(v61, qword_1009A1F00);
  v31 = v63;
  v32 = v64;
  v33 = *(v64 + 16);
  v33(v63, v30, v29);
  v55 = v33;
  v52 = UIContentSizeCategoryExtraExtraExtraLarge;
  v34 = enum case for DirectionalTextAlignment.none(_:);
  v56 = v4;
  v35 = *(v4 + 104);
  v36 = v58;
  v35(v65, enum case for DirectionalTextAlignment.none(_:), v58);
  v54 = objc_allocWithZone(type metadata accessor for CappedSizeDynamicTypeLabel());
  *&v54[qword_10095A0D0] = UIContentSizeCategoryExtraExtraExtraLarge;
  v37 = v59;
  v33(v59, v31, v29);
  v38 = v36;
  v53 = *(v32 + 56);
  v53(v37, 0, 1, v29);
  v39 = v60;
  v35(v60, v34, v38);
  v40 = v52;
  v41 = sub_1007626AC();
  v42 = v63;
  v55(v37, v63, v29);
  v53(v37, 0, 1, v29);
  v43 = v41;
  sub_1007625DC();
  sub_1007625BC();
  [v43 setNumberOfLines:0];
  v44 = v56;
  v45 = v65;
  (*(v56 + 16))(v39, v65, v38);
  sub_10076262C();

  (*(v44 + 8))(v45, v38);
  (*(v64 + 8))(v42, v29);
  v46 = v62;
  *(v62 + v57) = v43;
  v47 = OBJC_IVAR____TtC20ProductPageExtension18UpsellBreakoutView_buttonDetailsTextAlignment;
  v48 = enum case for BreakoutDetails.TextAlignment.leading(_:);
  v49 = sub_100761D8C();
  (*(*(v49 - 8) + 104))(v46 + v47, v48, v49);
  v50 = OBJC_IVAR____TtC20ProductPageExtension18UpsellBreakoutView_offerButton;
  v51 = objc_allocWithZone(type metadata accessor for OfferButton());
  *(v46 + v50) = sub_1001E89B8(0);
  *(v46 + OBJC_IVAR____TtC20ProductPageExtension18UpsellBreakoutView_pageTraits) = 0;
  *(v46 + OBJC_IVAR____TtC20ProductPageExtension18UpsellBreakoutView_isBackgroundEffectViewHidden) = 1;
  sub_10077156C();
  __break(1u);
}

uint64_t sub_100480764(void *a1)
{
  [a1 locationInView:v1];
  v4 = *&v1[OBJC_IVAR____TtC20ProductPageExtension18UpsellBreakoutView_mediaViewContainer];
  if (!*(*&v4[OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer] + OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents))
  {
    return 0;
  }

  v5 = v2;
  v6 = v3;
  type metadata accessor for VideoView();
  v7 = swift_dynamicCastClass();
  if (!v7)
  {
    return 0;
  }

  v8 = &selRef_initWithTabBarSystemItem_tag_;
  [v7 frame];
  v26.x = v5;
  v26.y = v6;
  if (!CGRectContainsPoint(v28, v26))
  {
    return 0;
  }

  v9 = [v1 subviews];
  sub_100016F40(0, &qword_1009441F0);
  v10 = sub_1007701BC();

  if (v10 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_10077158C())
  {
    v12 = 0;
    while (1)
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v13 = sub_10077149C();
      }

      else
      {
        if (v12 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v13 = *(v10 + 8 * v12 + 32);
      }

      v14 = v13;
      v15 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (([v13 isHidden] & 1) == 0 && (objc_msgSend(v14, "isUserInteractionEnabled") & 1) != 0 && (objc_msgSend(v14, v8[134]), v27.x = v5, v27.y = v6, CGRectContainsPoint(v29, v27)))
      {
        v16 = v4;
        v17 = v4;
        v18 = sub_100770EEC();

        v4 = v16;
        v8 = &selRef_initWithTabBarSystemItem_tag_;
        if ((v18 & 1) == 0)
        {

          return 0;
        }
      }

      else
      {
      }

      ++v12;
      if (v15 == i)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

LABEL_22:

  v19 = *(*&v4[OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer] + OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents);
  if (!v19)
  {
    return 0;
  }

  v20 = swift_dynamicCastClass();
  if (!v20)
  {
    return 0;
  }

  v21 = *(v20 + qword_1009602F0);
  if (!v21)
  {
    return 0;
  }

  v22 = v19;
  v23 = v21;
  v24 = sub_1007605AC();

  return v24 & 1;
}

uint64_t sub_100480A00()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

char *sub_100480A74(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v46[2] = a2;
  v47 = a1;
  v4 = sub_10076F1BC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + qword_1009503A0) = 0x409F400000000000;
  v8 = qword_1009503A8;
  sub_10076B33C();
  swift_allocObject();
  *(v2 + v8) = sub_10076B32C();
  v9 = qword_1009503B0;
  type metadata accessor for ExpandableCellScrollOffsetCollectionElementsObserver();
  v10 = swift_allocObject();
  v11 = OBJC_IVAR____TtC20ProductPageExtension52ExpandableCellScrollOffsetCollectionElementsObserver_expandingIndexPath;
  v12 = sub_10075E11C();
  (*(*(v12 - 8) + 56))(v10 + v11, 1, 1, v12);
  *(v3 + v9) = v10;
  v13 = qword_1009503B8;
  type metadata accessor for TodayCardCollectionElementsObserver();
  v14 = swift_allocObject();
  *(v14 + 24) = 0;
  swift_unknownObjectWeakInit();
  v15 = OBJC_IVAR____TtC20ProductPageExtension35TodayCardCollectionElementsObserver_selectedItemLayoutContext;
  v16 = sub_10076341C();
  (*(*(v16 - 8) + 56))(v14 + v15, 1, 1, v16);
  swift_unknownObjectWeakInit();
  *(v14 + OBJC_IVAR____TtC20ProductPageExtension35TodayCardCollectionElementsObserver_isMotionEnabled) = 1;
  *(v14 + 24) = 0;
  swift_unknownObjectWeakAssign();
  *(v3 + v13) = v14;
  *(v3 + qword_1009503C0) = 0;
  *(v3 + qword_1009503C8) = 0;
  sub_10076B14C();
  *(v3 + qword_10099E368) = 0;
  *(v3 + qword_10099E380) = 0;
  *(v3 + qword_1009503D0) = 0;
  *(v3 + qword_1009503D8) = 0;
  *(v3 + qword_10099E388) = 0;
  v17 = qword_10099E390;
  v18 = objc_allocWithZone(sub_1007666AC());
  *(v3 + v17) = sub_10076669C();
  v19 = qword_10099E398;
  sub_10000A5D4(&qword_100958E08);
  swift_allocObject();
  *(v3 + v19) = sub_10076687C();
  *(v3 + qword_10099E3A0) = 1;
  *(v3 + qword_1009503E8) = 0;
  *(v3 + qword_10099E3A8) = 0;
  v20 = qword_10099E3B0;
  sub_10076562C();
  swift_allocObject();
  *(v3 + v20) = sub_10076561C();
  type metadata accessor for InteractiveSectionBackgroundScrollObserverStore();
  v21 = swift_allocObject();
  *(v21 + 16) = sub_1000FC008(_swiftEmptyArrayStorage);
  v48[0] = v21;
  sub_10076F19C();
  v22 = sub_10076F60C();
  (*(v5 + 8))(v7, v4);
  v23 = v47;
  *(v3 + qword_10099E360) = v47;

  sub_10076848C();
  sub_10076614C();

  sub_100760C4C();
  sub_10076F5CC();
  *(v3 + qword_10099E370) = v48[0];
  sub_1007698FC();
  sub_10076F5CC();
  *(v3 + qword_10099E378) = v48[0];
  sub_10076615C();
  sub_10076F63C();
  sub_10076813C();
  swift_allocObject();
  *(v3 + qword_1009503E0) = sub_10076814C();
  v24 = [objc_allocWithZone(UICollectionViewLayout) init];
  v46[1] = v22;

  v25 = sub_10007689C(v24, v22);

  v26 = v25;

  v27 = v26;
  v28 = [v27 traitCollection];

  swift_allocObject();
  *&v27[qword_10099E398] = sub_10076687C();

  sub_100767D5C();
  sub_10076F64C();

  sub_10076FC1C();

  v29 = v48[0];
  sub_100767D2C();

  sub_100764FAC();

  sub_10076FC1C();

  v30 = v48[0];
  sub_100764F6C();

  v48[3] = sub_10076A57C();
  v48[4] = sub_100492FA4(&qword_100958E10, &type metadata accessor for SearchLandingDiffablePagePresenter);
  v48[0] = v23;
  v31 = OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_lifecycleObserver;
  swift_beginAccess();

  sub_1004924A0(v48, &v27[v31]);
  swift_endAccess();
  sub_100492FA4(&qword_100958E18, &type metadata accessor for SearchLandingDiffablePagePresenter);

  sub_1007657EC();

  v32 = qword_10099E390;
  v33 = *&v27[qword_10099E390];

  sub_10076FC1C();

  sub_10076911C();
  swift_allocObject();
  sub_10076912C();
  sub_10076668C();

  v34 = *&v27[v32];

  sub_10076FC1C();

  sub_100766B3C();
  swift_allocObject();
  sub_100766B4C();
  sub_10076668C();

  v35 = *&v27[v32];
  sub_1004925B0(&qword_100958E20, &qword_100958E08);
  v36 = v35;

  sub_10076668C();

  v37 = *&v27[v32];

  sub_10076668C();

  v38 = *&v27[v32];
  v39 = qword_1009503B8;
  sub_100492FA4(&qword_100958E00, type metadata accessor for TodayCardCollectionElementsObserver);
  v40 = v38;

  sub_10076668C();

  v41 = *&v27[qword_10099E378];
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v42 = v27;
  v43 = v41;

  sub_1007698DC();

  v44 = *&v27[v39];

  *(v44 + 24) = &off_10088FE50;
  swift_unknownObjectWeakAssign();

  return v42;
}

char *sub_100481468(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v46[2] = a2;
  v47 = a1;
  v4 = sub_10076F1BC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + qword_1009503A0) = 0x409F400000000000;
  v8 = qword_1009503A8;
  sub_10076B33C();
  swift_allocObject();
  *(v2 + v8) = sub_10076B32C();
  v9 = qword_1009503B0;
  type metadata accessor for ExpandableCellScrollOffsetCollectionElementsObserver();
  v10 = swift_allocObject();
  v11 = OBJC_IVAR____TtC20ProductPageExtension52ExpandableCellScrollOffsetCollectionElementsObserver_expandingIndexPath;
  v12 = sub_10075E11C();
  (*(*(v12 - 8) + 56))(v10 + v11, 1, 1, v12);
  *(v3 + v9) = v10;
  v13 = qword_1009503B8;
  type metadata accessor for TodayCardCollectionElementsObserver();
  v14 = swift_allocObject();
  *(v14 + 24) = 0;
  swift_unknownObjectWeakInit();
  v15 = OBJC_IVAR____TtC20ProductPageExtension35TodayCardCollectionElementsObserver_selectedItemLayoutContext;
  v16 = sub_10076341C();
  (*(*(v16 - 8) + 56))(v14 + v15, 1, 1, v16);
  swift_unknownObjectWeakInit();
  *(v14 + OBJC_IVAR____TtC20ProductPageExtension35TodayCardCollectionElementsObserver_isMotionEnabled) = 1;
  *(v14 + 24) = 0;
  swift_unknownObjectWeakAssign();
  *(v3 + v13) = v14;
  *(v3 + qword_1009503C0) = 0;
  *(v3 + qword_1009503C8) = 0;
  sub_10076B14C();
  *(v3 + qword_10099E368) = 0;
  *(v3 + qword_10099E380) = 0;
  *(v3 + qword_1009503D0) = 0;
  *(v3 + qword_1009503D8) = 0;
  *(v3 + qword_10099E388) = 0;
  v17 = qword_10099E390;
  v18 = objc_allocWithZone(sub_1007666AC());
  *(v3 + v17) = sub_10076669C();
  v19 = qword_10099E398;
  sub_10000A5D4(&qword_100958DD8);
  swift_allocObject();
  *(v3 + v19) = sub_10076687C();
  *(v3 + qword_10099E3A0) = 1;
  *(v3 + qword_1009503E8) = 0;
  *(v3 + qword_10099E3A8) = 0;
  v20 = qword_10099E3B0;
  sub_10076562C();
  swift_allocObject();
  *(v3 + v20) = sub_10076561C();
  type metadata accessor for InteractiveSectionBackgroundScrollObserverStore();
  v21 = swift_allocObject();
  *(v21 + 16) = sub_1000FC008(_swiftEmptyArrayStorage);
  v48[0] = v21;
  sub_10076F19C();
  v22 = sub_10076F60C();
  (*(v5 + 8))(v7, v4);
  v23 = v47;
  *(v3 + qword_10099E360) = v47;

  sub_10076848C();
  sub_10076614C();

  sub_100760C4C();
  sub_10076F5CC();
  *(v3 + qword_10099E370) = v48[0];
  sub_1007698FC();
  sub_10076F5CC();
  *(v3 + qword_10099E378) = v48[0];
  sub_10076615C();
  sub_10076F63C();
  sub_10076813C();
  swift_allocObject();
  *(v3 + qword_1009503E0) = sub_10076814C();
  v24 = [objc_allocWithZone(UICollectionViewLayout) init];
  v46[1] = v22;

  v25 = sub_10007689C(v24, v22);

  v26 = v25;

  v27 = v26;
  v28 = [v27 traitCollection];

  swift_allocObject();
  *&v27[qword_10099E398] = sub_10076687C();

  sub_100767D5C();
  sub_10076F64C();

  sub_10076FC1C();

  v29 = v48[0];
  sub_100767D2C();

  sub_100764FAC();

  sub_10076FC1C();

  v30 = v48[0];
  sub_100764F6C();

  v48[3] = sub_1007695CC();
  v48[4] = sub_100492FA4(&unk_100958DE0, &type metadata accessor for ProductDiffablePagePresenter);
  v48[0] = v23;
  v31 = OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_lifecycleObserver;
  swift_beginAccess();

  sub_1004924A0(v48, &v27[v31]);
  swift_endAccess();
  sub_100492FA4(&qword_100958DF0, &type metadata accessor for ProductDiffablePagePresenter);

  sub_1007657EC();

  v32 = qword_10099E390;
  v33 = *&v27[qword_10099E390];

  sub_10076FC1C();

  sub_10076911C();
  swift_allocObject();
  sub_10076912C();
  sub_10076668C();

  v34 = *&v27[v32];

  sub_10076FC1C();

  sub_100766B3C();
  swift_allocObject();
  sub_100766B4C();
  sub_10076668C();

  v35 = *&v27[v32];
  sub_1004925B0(&qword_100958DF8, &qword_100958DD8);
  v36 = v35;

  sub_10076668C();

  v37 = *&v27[v32];

  sub_10076668C();

  v38 = *&v27[v32];
  v39 = qword_1009503B8;
  sub_100492FA4(&qword_100958E00, type metadata accessor for TodayCardCollectionElementsObserver);
  v40 = v38;

  sub_10076668C();

  v41 = *&v27[qword_10099E378];
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v42 = v27;
  v43 = v41;

  sub_1007698DC();

  v44 = *&v27[v39];

  *(v44 + 24) = &off_10088FE50;
  swift_unknownObjectWeakAssign();

  return v42;
}

char *sub_100481E5C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v46[2] = a2;
  v47 = a1;
  v4 = sub_10076F1BC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + qword_1009503A0) = 0x409F400000000000;
  v8 = qword_1009503A8;
  sub_10076B33C();
  swift_allocObject();
  *(v2 + v8) = sub_10076B32C();
  v9 = qword_1009503B0;
  type metadata accessor for ExpandableCellScrollOffsetCollectionElementsObserver();
  v10 = swift_allocObject();
  v11 = OBJC_IVAR____TtC20ProductPageExtension52ExpandableCellScrollOffsetCollectionElementsObserver_expandingIndexPath;
  v12 = sub_10075E11C();
  (*(*(v12 - 8) + 56))(v10 + v11, 1, 1, v12);
  *(v3 + v9) = v10;
  v13 = qword_1009503B8;
  type metadata accessor for TodayCardCollectionElementsObserver();
  v14 = swift_allocObject();
  *(v14 + 24) = 0;
  swift_unknownObjectWeakInit();
  v15 = OBJC_IVAR____TtC20ProductPageExtension35TodayCardCollectionElementsObserver_selectedItemLayoutContext;
  v16 = sub_10076341C();
  (*(*(v16 - 8) + 56))(v14 + v15, 1, 1, v16);
  swift_unknownObjectWeakInit();
  *(v14 + OBJC_IVAR____TtC20ProductPageExtension35TodayCardCollectionElementsObserver_isMotionEnabled) = 1;
  *(v14 + 24) = 0;
  swift_unknownObjectWeakAssign();
  *(v3 + v13) = v14;
  *(v3 + qword_1009503C0) = 0;
  *(v3 + qword_1009503C8) = 0;
  sub_10076B14C();
  *(v3 + qword_10099E368) = 0;
  *(v3 + qword_10099E380) = 0;
  *(v3 + qword_1009503D0) = 0;
  *(v3 + qword_1009503D8) = 0;
  *(v3 + qword_10099E388) = 0;
  v17 = qword_10099E390;
  v18 = objc_allocWithZone(sub_1007666AC());
  *(v3 + v17) = sub_10076669C();
  v19 = qword_10099E398;
  sub_10000A5D4(&qword_100958E48);
  swift_allocObject();
  *(v3 + v19) = sub_10076687C();
  *(v3 + qword_10099E3A0) = 1;
  *(v3 + qword_1009503E8) = 0;
  *(v3 + qword_10099E3A8) = 0;
  v20 = qword_10099E3B0;
  sub_10076562C();
  swift_allocObject();
  *(v3 + v20) = sub_10076561C();
  type metadata accessor for InteractiveSectionBackgroundScrollObserverStore();
  v21 = swift_allocObject();
  *(v21 + 16) = sub_1000FC008(_swiftEmptyArrayStorage);
  v48[0] = v21;
  sub_10076F19C();
  v22 = sub_10076F60C();
  (*(v5 + 8))(v7, v4);
  v23 = v47;
  *(v3 + qword_10099E360) = v47;

  sub_10076848C();
  sub_10076614C();

  sub_100760C4C();
  sub_10076F5CC();
  *(v3 + qword_10099E370) = v48[0];
  sub_1007698FC();
  sub_10076F5CC();
  *(v3 + qword_10099E378) = v48[0];
  sub_10076615C();
  sub_10076F63C();
  sub_10076813C();
  swift_allocObject();
  *(v3 + qword_1009503E0) = sub_10076814C();
  v24 = [objc_allocWithZone(UICollectionViewLayout) init];
  v46[1] = v22;

  v25 = sub_10007689C(v24, v22);

  v26 = v25;

  v27 = v26;
  v28 = [v27 traitCollection];

  swift_allocObject();
  *&v27[qword_10099E398] = sub_10076687C();

  sub_100767D5C();
  sub_10076F64C();

  sub_10076FC1C();

  v29 = v48[0];
  sub_100767D2C();

  sub_100764FAC();

  sub_10076FC1C();

  v30 = v48[0];
  sub_100764F6C();

  v48[3] = sub_10076B11C();
  v48[4] = sub_100492FA4(&qword_100958E50, &type metadata accessor for SearchChartsAndCategoriesDiffablePagePresenter);
  v48[0] = v23;
  v31 = OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_lifecycleObserver;
  swift_beginAccess();

  sub_1004924A0(v48, &v27[v31]);
  swift_endAccess();
  sub_100492FA4(&qword_100958E58, &type metadata accessor for SearchChartsAndCategoriesDiffablePagePresenter);

  sub_1007657EC();

  v32 = qword_10099E390;
  v33 = *&v27[qword_10099E390];

  sub_10076FC1C();

  sub_10076911C();
  swift_allocObject();
  sub_10076912C();
  sub_10076668C();

  v34 = *&v27[v32];

  sub_10076FC1C();

  sub_100766B3C();
  swift_allocObject();
  sub_100766B4C();
  sub_10076668C();

  v35 = *&v27[v32];
  sub_1004925B0(&qword_100958E60, &qword_100958E48);
  v36 = v35;

  sub_10076668C();

  v37 = *&v27[v32];

  sub_10076668C();

  v38 = *&v27[v32];
  v39 = qword_1009503B8;
  sub_100492FA4(&qword_100958E00, type metadata accessor for TodayCardCollectionElementsObserver);
  v40 = v38;

  sub_10076668C();

  v41 = *&v27[qword_10099E378];
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v42 = v27;
  v43 = v41;

  sub_1007698DC();

  v44 = *&v27[v39];

  *(v44 + 24) = &off_10088FE50;
  swift_unknownObjectWeakAssign();

  return v42;
}

char *sub_100482850(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v46[2] = a2;
  v47 = a1;
  v4 = sub_10076F1BC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + qword_1009503A0) = 0x409F400000000000;
  v8 = qword_1009503A8;
  sub_10076B33C();
  swift_allocObject();
  *(v2 + v8) = sub_10076B32C();
  v9 = qword_1009503B0;
  type metadata accessor for ExpandableCellScrollOffsetCollectionElementsObserver();
  v10 = swift_allocObject();
  v11 = OBJC_IVAR____TtC20ProductPageExtension52ExpandableCellScrollOffsetCollectionElementsObserver_expandingIndexPath;
  v12 = sub_10075E11C();
  (*(*(v12 - 8) + 56))(v10 + v11, 1, 1, v12);
  *(v3 + v9) = v10;
  v13 = qword_1009503B8;
  type metadata accessor for TodayCardCollectionElementsObserver();
  v14 = swift_allocObject();
  *(v14 + 24) = 0;
  swift_unknownObjectWeakInit();
  v15 = OBJC_IVAR____TtC20ProductPageExtension35TodayCardCollectionElementsObserver_selectedItemLayoutContext;
  v16 = sub_10076341C();
  (*(*(v16 - 8) + 56))(v14 + v15, 1, 1, v16);
  swift_unknownObjectWeakInit();
  *(v14 + OBJC_IVAR____TtC20ProductPageExtension35TodayCardCollectionElementsObserver_isMotionEnabled) = 1;
  *(v14 + 24) = 0;
  swift_unknownObjectWeakAssign();
  *(v3 + v13) = v14;
  *(v3 + qword_1009503C0) = 0;
  *(v3 + qword_1009503C8) = 0;
  sub_10076B14C();
  *(v3 + qword_10099E368) = 0;
  *(v3 + qword_10099E380) = 0;
  *(v3 + qword_1009503D0) = 0;
  *(v3 + qword_1009503D8) = 0;
  *(v3 + qword_10099E388) = 0;
  v17 = qword_10099E390;
  v18 = objc_allocWithZone(sub_1007666AC());
  *(v3 + v17) = sub_10076669C();
  v19 = qword_10099E398;
  sub_10000A5D4(&qword_100958E68);
  swift_allocObject();
  *(v3 + v19) = sub_10076687C();
  *(v3 + qword_10099E3A0) = 1;
  *(v3 + qword_1009503E8) = 0;
  *(v3 + qword_10099E3A8) = 0;
  v20 = qword_10099E3B0;
  sub_10076562C();
  swift_allocObject();
  *(v3 + v20) = sub_10076561C();
  type metadata accessor for InteractiveSectionBackgroundScrollObserverStore();
  v21 = swift_allocObject();
  *(v21 + 16) = sub_1000FC008(_swiftEmptyArrayStorage);
  v48[0] = v21;
  sub_10076F19C();
  v22 = sub_10076F60C();
  (*(v5 + 8))(v7, v4);
  v23 = v47;
  *(v3 + qword_10099E360) = v47;

  sub_10076848C();
  sub_10076614C();

  sub_100760C4C();
  sub_10076F5CC();
  *(v3 + qword_10099E370) = v48[0];
  sub_1007698FC();
  sub_10076F5CC();
  *(v3 + qword_10099E378) = v48[0];
  sub_10076615C();
  sub_10076F63C();
  sub_10076813C();
  swift_allocObject();
  *(v3 + qword_1009503E0) = sub_10076814C();
  v24 = [objc_allocWithZone(UICollectionViewLayout) init];
  v46[1] = v22;

  v25 = sub_10007689C(v24, v22);

  v26 = v25;

  v27 = v26;
  v28 = [v27 traitCollection];

  swift_allocObject();
  *&v27[qword_10099E398] = sub_10076687C();

  sub_100767D5C();
  sub_10076F64C();

  sub_10076FC1C();

  v29 = v48[0];
  sub_100767D2C();

  sub_100764FAC();

  sub_10076FC1C();

  v30 = v48[0];
  sub_100764F6C();

  v48[3] = sub_100768CAC();
  v48[4] = sub_100492FA4(&qword_100958E70, &type metadata accessor for ArcadeDiffablePagePresenter);
  v48[0] = v23;
  v31 = OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_lifecycleObserver;
  swift_beginAccess();

  sub_1004924A0(v48, &v27[v31]);
  swift_endAccess();
  sub_100492FA4(&qword_100958E78, &type metadata accessor for ArcadeDiffablePagePresenter);

  sub_1007657EC();

  v32 = qword_10099E390;
  v33 = *&v27[qword_10099E390];

  sub_10076FC1C();

  sub_10076911C();
  swift_allocObject();
  sub_10076912C();
  sub_10076668C();

  v34 = *&v27[v32];

  sub_10076FC1C();

  sub_100766B3C();
  swift_allocObject();
  sub_100766B4C();
  sub_10076668C();

  v35 = *&v27[v32];
  sub_1004925B0(&qword_100958E80, &qword_100958E68);
  v36 = v35;

  sub_10076668C();

  v37 = *&v27[v32];

  sub_10076668C();

  v38 = *&v27[v32];
  v39 = qword_1009503B8;
  sub_100492FA4(&qword_100958E00, type metadata accessor for TodayCardCollectionElementsObserver);
  v40 = v38;

  sub_10076668C();

  v41 = *&v27[qword_10099E378];
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v42 = v27;
  v43 = v41;

  sub_1007698DC();

  v44 = *&v27[v39];

  *(v44 + 24) = &off_10088FE50;
  swift_unknownObjectWeakAssign();

  return v42;
}

char *sub_100483244(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v46[2] = a2;
  v47 = a1;
  v4 = sub_10076F1BC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + qword_1009503A0) = 0x409F400000000000;
  v8 = qword_1009503A8;
  sub_10076B33C();
  swift_allocObject();
  *(v2 + v8) = sub_10076B32C();
  v9 = qword_1009503B0;
  type metadata accessor for ExpandableCellScrollOffsetCollectionElementsObserver();
  v10 = swift_allocObject();
  v11 = OBJC_IVAR____TtC20ProductPageExtension52ExpandableCellScrollOffsetCollectionElementsObserver_expandingIndexPath;
  v12 = sub_10075E11C();
  (*(*(v12 - 8) + 56))(v10 + v11, 1, 1, v12);
  *(v3 + v9) = v10;
  v13 = qword_1009503B8;
  type metadata accessor for TodayCardCollectionElementsObserver();
  v14 = swift_allocObject();
  *(v14 + 24) = 0;
  swift_unknownObjectWeakInit();
  v15 = OBJC_IVAR____TtC20ProductPageExtension35TodayCardCollectionElementsObserver_selectedItemLayoutContext;
  v16 = sub_10076341C();
  (*(*(v16 - 8) + 56))(v14 + v15, 1, 1, v16);
  swift_unknownObjectWeakInit();
  *(v14 + OBJC_IVAR____TtC20ProductPageExtension35TodayCardCollectionElementsObserver_isMotionEnabled) = 1;
  *(v14 + 24) = 0;
  swift_unknownObjectWeakAssign();
  *(v3 + v13) = v14;
  *(v3 + qword_1009503C0) = 0;
  *(v3 + qword_1009503C8) = 0;
  sub_10076B14C();
  *(v3 + qword_10099E368) = 0;
  *(v3 + qword_10099E380) = 0;
  *(v3 + qword_1009503D0) = 0;
  *(v3 + qword_1009503D8) = 0;
  *(v3 + qword_10099E388) = 0;
  v17 = qword_10099E390;
  v18 = objc_allocWithZone(sub_1007666AC());
  *(v3 + v17) = sub_10076669C();
  v19 = qword_10099E398;
  sub_10000A5D4(&qword_100958E88);
  swift_allocObject();
  *(v3 + v19) = sub_10076687C();
  *(v3 + qword_10099E3A0) = 1;
  *(v3 + qword_1009503E8) = 0;
  *(v3 + qword_10099E3A8) = 0;
  v20 = qword_10099E3B0;
  sub_10076562C();
  swift_allocObject();
  *(v3 + v20) = sub_10076561C();
  type metadata accessor for InteractiveSectionBackgroundScrollObserverStore();
  v21 = swift_allocObject();
  *(v21 + 16) = sub_1000FC008(_swiftEmptyArrayStorage);
  v48[0] = v21;
  sub_10076F19C();
  v22 = sub_10076F60C();
  (*(v5 + 8))(v7, v4);
  v23 = v47;
  *(v3 + qword_10099E360) = v47;

  sub_10076848C();
  sub_10076614C();

  sub_100760C4C();
  sub_10076F5CC();
  *(v3 + qword_10099E370) = v48[0];
  sub_1007698FC();
  sub_10076F5CC();
  *(v3 + qword_10099E378) = v48[0];
  sub_10076615C();
  sub_10076F63C();
  sub_10076813C();
  swift_allocObject();
  *(v3 + qword_1009503E0) = sub_10076814C();
  v24 = [objc_allocWithZone(UICollectionViewLayout) init];
  v46[1] = v22;

  v25 = sub_10007689C(v24, v22);

  v26 = v25;

  v27 = v26;
  v28 = [v27 traitCollection];

  swift_allocObject();
  *&v27[qword_10099E398] = sub_10076687C();

  sub_100767D5C();
  sub_10076F64C();

  sub_10076FC1C();

  v29 = v48[0];
  sub_100767D2C();

  sub_100764FAC();

  sub_10076FC1C();

  v30 = v48[0];
  sub_100764F6C();

  v48[3] = sub_10076AB5C();
  v48[4] = sub_100492FA4(&qword_100958E90, &type metadata accessor for ArcadeSeeAllGamesDiffablePagePresenter);
  v48[0] = v23;
  v31 = OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_lifecycleObserver;
  swift_beginAccess();

  sub_1004924A0(v48, &v27[v31]);
  swift_endAccess();
  sub_100492FA4(&qword_100958E98, &type metadata accessor for ArcadeSeeAllGamesDiffablePagePresenter);

  sub_1007657EC();

  v32 = qword_10099E390;
  v33 = *&v27[qword_10099E390];

  sub_10076FC1C();

  sub_10076911C();
  swift_allocObject();
  sub_10076912C();
  sub_10076668C();

  v34 = *&v27[v32];

  sub_10076FC1C();

  sub_100766B3C();
  swift_allocObject();
  sub_100766B4C();
  sub_10076668C();

  v35 = *&v27[v32];
  sub_1004925B0(&unk_100958EA0, &qword_100958E88);
  v36 = v35;

  sub_10076668C();

  v37 = *&v27[v32];

  sub_10076668C();

  v38 = *&v27[v32];
  v39 = qword_1009503B8;
  sub_100492FA4(&qword_100958E00, type metadata accessor for TodayCardCollectionElementsObserver);
  v40 = v38;

  sub_10076668C();

  v41 = *&v27[qword_10099E378];
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v42 = v27;
  v43 = v41;

  sub_1007698DC();

  v44 = *&v27[v39];

  *(v44 + 24) = &off_10088FE50;
  swift_unknownObjectWeakAssign();

  return v42;
}

char *sub_100483C38(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v46[2] = a2;
  v47 = a1;
  v4 = sub_10076F1BC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + qword_1009503A0) = 0x409F400000000000;
  v8 = qword_1009503A8;
  sub_10076B33C();
  swift_allocObject();
  *(v2 + v8) = sub_10076B32C();
  v9 = qword_1009503B0;
  type metadata accessor for ExpandableCellScrollOffsetCollectionElementsObserver();
  v10 = swift_allocObject();
  v11 = OBJC_IVAR____TtC20ProductPageExtension52ExpandableCellScrollOffsetCollectionElementsObserver_expandingIndexPath;
  v12 = sub_10075E11C();
  (*(*(v12 - 8) + 56))(v10 + v11, 1, 1, v12);
  *(v3 + v9) = v10;
  v13 = qword_1009503B8;
  type metadata accessor for TodayCardCollectionElementsObserver();
  v14 = swift_allocObject();
  *(v14 + 24) = 0;
  swift_unknownObjectWeakInit();
  v15 = OBJC_IVAR____TtC20ProductPageExtension35TodayCardCollectionElementsObserver_selectedItemLayoutContext;
  v16 = sub_10076341C();
  (*(*(v16 - 8) + 56))(v14 + v15, 1, 1, v16);
  swift_unknownObjectWeakInit();
  *(v14 + OBJC_IVAR____TtC20ProductPageExtension35TodayCardCollectionElementsObserver_isMotionEnabled) = 1;
  *(v14 + 24) = 0;
  swift_unknownObjectWeakAssign();
  *(v3 + v13) = v14;
  *(v3 + qword_1009503C0) = 0;
  *(v3 + qword_1009503C8) = 0;
  sub_10076B14C();
  *(v3 + qword_10099E368) = 0;
  *(v3 + qword_10099E380) = 0;
  *(v3 + qword_1009503D0) = 0;
  *(v3 + qword_1009503D8) = 0;
  *(v3 + qword_10099E388) = 0;
  v17 = qword_10099E390;
  v18 = objc_allocWithZone(sub_1007666AC());
  *(v3 + v17) = sub_10076669C();
  v19 = qword_10099E398;
  sub_10000A5D4(&qword_100958F78);
  swift_allocObject();
  *(v3 + v19) = sub_10076687C();
  *(v3 + qword_10099E3A0) = 1;
  *(v3 + qword_1009503E8) = 0;
  *(v3 + qword_10099E3A8) = 0;
  v20 = qword_10099E3B0;
  sub_10076562C();
  swift_allocObject();
  *(v3 + v20) = sub_10076561C();
  type metadata accessor for InteractiveSectionBackgroundScrollObserverStore();
  v21 = swift_allocObject();
  *(v21 + 16) = sub_1000FC008(_swiftEmptyArrayStorage);
  v48[0] = v21;
  sub_10076F19C();
  v22 = sub_10076F60C();
  (*(v5 + 8))(v7, v4);
  v23 = v47;
  *(v3 + qword_10099E360) = v47;

  sub_10076848C();
  sub_10076614C();

  sub_100760C4C();
  sub_10076F5CC();
  *(v3 + qword_10099E370) = v48[0];
  sub_1007698FC();
  sub_10076F5CC();
  *(v3 + qword_10099E378) = v48[0];
  sub_10076615C();
  sub_10076F63C();
  sub_10076813C();
  swift_allocObject();
  *(v3 + qword_1009503E0) = sub_10076814C();
  v24 = [objc_allocWithZone(UICollectionViewLayout) init];
  v46[1] = v22;

  v25 = sub_10007689C(v24, v22);

  v26 = v25;

  v27 = v26;
  v28 = [v27 traitCollection];

  swift_allocObject();
  *&v27[qword_10099E398] = sub_10076687C();

  sub_100767D5C();
  sub_10076F64C();

  sub_10076FC1C();

  v29 = v48[0];
  sub_100767D2C();

  sub_100764FAC();

  sub_10076FC1C();

  v30 = v48[0];
  sub_100764F6C();

  v48[3] = sub_10076940C();
  v48[4] = sub_100492FA4(&qword_100958F80, &type metadata accessor for GenericDiffablePagePresenter);
  v48[0] = v23;
  v31 = OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_lifecycleObserver;
  swift_beginAccess();

  sub_1004924A0(v48, &v27[v31]);
  swift_endAccess();
  sub_100492FA4(&qword_100958F88, &type metadata accessor for GenericDiffablePagePresenter);

  sub_1007657EC();

  v32 = qword_10099E390;
  v33 = *&v27[qword_10099E390];

  sub_10076FC1C();

  sub_10076911C();
  swift_allocObject();
  sub_10076912C();
  sub_10076668C();

  v34 = *&v27[v32];

  sub_10076FC1C();

  sub_100766B3C();
  swift_allocObject();
  sub_100766B4C();
  sub_10076668C();

  v35 = *&v27[v32];
  sub_1004925B0(&qword_100958F90, &qword_100958F78);
  v36 = v35;

  sub_10076668C();

  v37 = *&v27[v32];

  sub_10076668C();

  v38 = *&v27[v32];
  v39 = qword_1009503B8;
  sub_100492FA4(&qword_100958E00, type metadata accessor for TodayCardCollectionElementsObserver);
  v40 = v38;

  sub_10076668C();

  v41 = *&v27[qword_10099E378];
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v42 = v27;
  v43 = v41;

  sub_1007698DC();

  v44 = *&v27[v39];

  *(v44 + 24) = &off_10088FE50;
  swift_unknownObjectWeakAssign();

  return v42;
}

char *sub_10048462C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v49 = a2;
  v46 = a1;
  ObjectType = swift_getObjectType();
  v4 = sub_10076F1BC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + qword_1009503A0) = 0x409F400000000000;
  v8 = qword_1009503A8;
  sub_10076B33C();
  swift_allocObject();
  *(v2 + v8) = sub_10076B32C();
  v9 = qword_1009503B0;
  type metadata accessor for ExpandableCellScrollOffsetCollectionElementsObserver();
  v10 = swift_allocObject();
  v11 = OBJC_IVAR____TtC20ProductPageExtension52ExpandableCellScrollOffsetCollectionElementsObserver_expandingIndexPath;
  v12 = sub_10075E11C();
  (*(*(v12 - 8) + 56))(v10 + v11, 1, 1, v12);
  *(v3 + v9) = v10;
  v13 = qword_1009503B8;
  type metadata accessor for TodayCardCollectionElementsObserver();
  v14 = swift_allocObject();
  *(v14 + 24) = 0;
  swift_unknownObjectWeakInit();
  v15 = OBJC_IVAR____TtC20ProductPageExtension35TodayCardCollectionElementsObserver_selectedItemLayoutContext;
  v16 = sub_10076341C();
  (*(*(v16 - 8) + 56))(v14 + v15, 1, 1, v16);
  swift_unknownObjectWeakInit();
  *(v14 + OBJC_IVAR____TtC20ProductPageExtension35TodayCardCollectionElementsObserver_isMotionEnabled) = 1;
  *(v14 + 24) = 0;
  swift_unknownObjectWeakAssign();
  *(v3 + v13) = v14;
  *(v3 + qword_1009503C0) = 0;
  *(v3 + qword_1009503C8) = 0;
  sub_10076B14C();
  *(v3 + qword_10099E368) = 0;
  *(v3 + qword_10099E380) = 0;
  *(v3 + qword_1009503D0) = 0;
  *(v3 + qword_1009503D8) = 0;
  *(v3 + qword_10099E388) = 0;
  v17 = qword_10099E390;
  v18 = objc_allocWithZone(sub_1007666AC());
  *(v3 + v17) = sub_10076669C();
  v19 = qword_10099E398;
  sub_10000A5D4(&qword_100958EB0);
  swift_allocObject();
  *(v3 + v19) = sub_10076687C();
  *(v3 + qword_10099E3A0) = 1;
  *(v3 + qword_1009503E8) = 0;
  *(v3 + qword_10099E3A8) = 0;
  v20 = qword_10099E3B0;
  sub_10076562C();
  swift_allocObject();
  *(v3 + v20) = sub_10076561C();
  type metadata accessor for InteractiveSectionBackgroundScrollObserverStore();
  v21 = swift_allocObject();
  *(v21 + 16) = sub_1000FC008(_swiftEmptyArrayStorage);
  v50[0] = v21;
  sub_10076F19C();
  v22 = sub_10076F60C();
  (*(v5 + 8))(v7, v4);
  v23 = v46;
  *(v3 + qword_10099E360) = v46;

  sub_10076848C();
  sub_10076614C();

  sub_100760C4C();
  sub_10076F5CC();
  *(v3 + qword_10099E370) = v50[0];
  sub_1007698FC();
  sub_10076F5CC();
  *(v3 + qword_10099E378) = v50[0];
  sub_10076615C();
  sub_10076F63C();
  sub_10076813C();
  swift_allocObject();
  *(v3 + qword_1009503E0) = sub_10076814C();
  v24 = [objc_allocWithZone(UICollectionViewLayout) init];
  v48 = v22;

  v25 = sub_10007689C(v24, v22);

  v26 = v25;

  v27 = v26;
  v28 = [v27 traitCollection];
  (*(ObjectType + 792))();

  swift_allocObject();
  *&v27[qword_10099E398] = sub_10076687C();

  sub_100767D5C();
  sub_10076F64C();

  sub_10076FC1C();

  v29 = v50[0];
  sub_100767D2C();

  sub_100764FAC();

  sub_10076FC1C();

  v30 = v50[0];
  sub_100764F6C();

  v50[3] = sub_100768B9C();
  v50[4] = sub_100492FA4(&qword_100958EB8, &type metadata accessor for TodayDiffablePagePresenter);
  v50[0] = v23;
  v31 = OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_lifecycleObserver;
  swift_beginAccess();

  sub_1004924A0(v50, &v27[v31]);
  swift_endAccess();
  sub_100492FA4(&qword_100958EC0, &type metadata accessor for TodayDiffablePagePresenter);

  sub_1007657EC();

  v32 = qword_10099E390;
  v33 = *&v27[qword_10099E390];

  sub_10076FC1C();

  sub_10076911C();
  swift_allocObject();
  sub_10076912C();
  sub_10076668C();

  v34 = *&v27[v32];

  sub_10076FC1C();

  sub_100766B3C();
  swift_allocObject();
  sub_100766B4C();
  sub_10076668C();

  v35 = *&v27[v32];
  sub_1004925B0(&qword_100958EC8, &qword_100958EB0);
  v36 = v35;

  sub_10076668C();

  v37 = *&v27[v32];

  sub_10076668C();

  v38 = *&v27[v32];
  v39 = qword_1009503B8;
  sub_100492FA4(&qword_100958E00, type metadata accessor for TodayCardCollectionElementsObserver);
  v40 = v38;

  sub_10076668C();

  v41 = *&v27[qword_10099E378];
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v42 = v27;
  v43 = v41;

  sub_1007698DC();

  v44 = *&v27[v39];

  *(v44 + 24) = &off_10088FE50;
  swift_unknownObjectWeakAssign();

  return v42;
}

char *sub_100485040(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v46[2] = a2;
  v47 = a1;
  v4 = sub_10076F1BC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + qword_1009503A0) = 0x409F400000000000;
  v8 = qword_1009503A8;
  sub_10076B33C();
  swift_allocObject();
  *(v2 + v8) = sub_10076B32C();
  v9 = qword_1009503B0;
  type metadata accessor for ExpandableCellScrollOffsetCollectionElementsObserver();
  v10 = swift_allocObject();
  v11 = OBJC_IVAR____TtC20ProductPageExtension52ExpandableCellScrollOffsetCollectionElementsObserver_expandingIndexPath;
  v12 = sub_10075E11C();
  (*(*(v12 - 8) + 56))(v10 + v11, 1, 1, v12);
  *(v3 + v9) = v10;
  v13 = qword_1009503B8;
  type metadata accessor for TodayCardCollectionElementsObserver();
  v14 = swift_allocObject();
  *(v14 + 24) = 0;
  swift_unknownObjectWeakInit();
  v15 = OBJC_IVAR____TtC20ProductPageExtension35TodayCardCollectionElementsObserver_selectedItemLayoutContext;
  v16 = sub_10076341C();
  (*(*(v16 - 8) + 56))(v14 + v15, 1, 1, v16);
  swift_unknownObjectWeakInit();
  *(v14 + OBJC_IVAR____TtC20ProductPageExtension35TodayCardCollectionElementsObserver_isMotionEnabled) = 1;
  *(v14 + 24) = 0;
  swift_unknownObjectWeakAssign();
  *(v3 + v13) = v14;
  *(v3 + qword_1009503C0) = 0;
  *(v3 + qword_1009503C8) = 0;
  sub_10076B14C();
  *(v3 + qword_10099E368) = 0;
  *(v3 + qword_10099E380) = 0;
  *(v3 + qword_1009503D0) = 0;
  *(v3 + qword_1009503D8) = 0;
  *(v3 + qword_10099E388) = 0;
  v17 = qword_10099E390;
  v18 = objc_allocWithZone(sub_1007666AC());
  *(v3 + v17) = sub_10076669C();
  v19 = qword_10099E398;
  sub_10000A5D4(&qword_100958ED8);
  swift_allocObject();
  *(v3 + v19) = sub_10076687C();
  *(v3 + qword_10099E3A0) = 1;
  *(v3 + qword_1009503E8) = 0;
  *(v3 + qword_10099E3A8) = 0;
  v20 = qword_10099E3B0;
  sub_10076562C();
  swift_allocObject();
  *(v3 + v20) = sub_10076561C();
  type metadata accessor for InteractiveSectionBackgroundScrollObserverStore();
  v21 = swift_allocObject();
  *(v21 + 16) = sub_1000FC008(_swiftEmptyArrayStorage);
  v48[0] = v21;
  sub_10076F19C();
  v22 = sub_10076F60C();
  (*(v5 + 8))(v7, v4);
  v23 = v47;
  *(v3 + qword_10099E360) = v47;

  sub_10076848C();
  sub_10076614C();

  sub_100760C4C();
  sub_10076F5CC();
  *(v3 + qword_10099E370) = v48[0];
  sub_1007698FC();
  sub_10076F5CC();
  *(v3 + qword_10099E378) = v48[0];
  sub_10076615C();
  sub_10076F63C();
  sub_10076813C();
  swift_allocObject();
  *(v3 + qword_1009503E0) = sub_10076814C();
  v24 = [objc_allocWithZone(UICollectionViewLayout) init];
  v46[1] = v22;

  v25 = sub_10007689C(v24, v22);

  v26 = v25;

  v27 = v26;
  v28 = [v27 traitCollection];

  swift_allocObject();
  *&v27[qword_10099E398] = sub_10076687C();

  sub_100767D5C();
  sub_10076F64C();

  sub_10076FC1C();

  v29 = v48[0];
  sub_100767D2C();

  sub_100764FAC();

  sub_10076FC1C();

  v30 = v48[0];
  sub_100764F6C();

  v48[3] = sub_10076921C();
  v48[4] = sub_100492FA4(&unk_100958EE0, &type metadata accessor for ArticleDiffablePagePresenter);
  v48[0] = v23;
  v31 = OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_lifecycleObserver;
  swift_beginAccess();

  sub_1004924A0(v48, &v27[v31]);
  swift_endAccess();
  sub_100492FA4(&unk_100947220, &type metadata accessor for ArticleDiffablePagePresenter);

  sub_1007657EC();

  v32 = qword_10099E390;
  v33 = *&v27[qword_10099E390];

  sub_10076FC1C();

  sub_10076911C();
  swift_allocObject();
  sub_10076912C();
  sub_10076668C();

  v34 = *&v27[v32];

  sub_10076FC1C();

  sub_100766B3C();
  swift_allocObject();
  sub_100766B4C();
  sub_10076668C();

  v35 = *&v27[v32];
  sub_1004925B0(&qword_100958EF0, &qword_100958ED8);
  v36 = v35;

  sub_10076668C();

  v37 = *&v27[v32];

  sub_10076668C();

  v38 = *&v27[v32];
  v39 = qword_1009503B8;
  sub_100492FA4(&qword_100958E00, type metadata accessor for TodayCardCollectionElementsObserver);
  v40 = v38;

  sub_10076668C();

  v41 = *&v27[qword_10099E378];
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v42 = v27;
  v43 = v41;

  sub_1007698DC();

  v44 = *&v27[v39];

  *(v44 + 24) = &off_10088FE50;
  swift_unknownObjectWeakAssign();

  return v42;
}

char *sub_100485A34(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v46[2] = a2;
  v47 = a1;
  v4 = sub_10076F1BC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + qword_1009503A0) = 0x409F400000000000;
  v8 = qword_1009503A8;
  sub_10076B33C();
  swift_allocObject();
  *(v2 + v8) = sub_10076B32C();
  v9 = qword_1009503B0;
  type metadata accessor for ExpandableCellScrollOffsetCollectionElementsObserver();
  v10 = swift_allocObject();
  v11 = OBJC_IVAR____TtC20ProductPageExtension52ExpandableCellScrollOffsetCollectionElementsObserver_expandingIndexPath;
  v12 = sub_10075E11C();
  (*(*(v12 - 8) + 56))(v10 + v11, 1, 1, v12);
  *(v3 + v9) = v10;
  v13 = qword_1009503B8;
  type metadata accessor for TodayCardCollectionElementsObserver();
  v14 = swift_allocObject();
  *(v14 + 24) = 0;
  swift_unknownObjectWeakInit();
  v15 = OBJC_IVAR____TtC20ProductPageExtension35TodayCardCollectionElementsObserver_selectedItemLayoutContext;
  v16 = sub_10076341C();
  (*(*(v16 - 8) + 56))(v14 + v15, 1, 1, v16);
  swift_unknownObjectWeakInit();
  *(v14 + OBJC_IVAR____TtC20ProductPageExtension35TodayCardCollectionElementsObserver_isMotionEnabled) = 1;
  *(v14 + 24) = 0;
  swift_unknownObjectWeakAssign();
  *(v3 + v13) = v14;
  *(v3 + qword_1009503C0) = 0;
  *(v3 + qword_1009503C8) = 0;
  sub_10076B14C();
  *(v3 + qword_10099E368) = 0;
  *(v3 + qword_10099E380) = 0;
  *(v3 + qword_1009503D0) = 0;
  *(v3 + qword_1009503D8) = 0;
  *(v3 + qword_10099E388) = 0;
  v17 = qword_10099E390;
  v18 = objc_allocWithZone(sub_1007666AC());
  *(v3 + v17) = sub_10076669C();
  v19 = qword_10099E398;
  sub_10000A5D4(&qword_100958EF8);
  swift_allocObject();
  *(v3 + v19) = sub_10076687C();
  *(v3 + qword_10099E3A0) = 1;
  *(v3 + qword_1009503E8) = 0;
  *(v3 + qword_10099E3A8) = 0;
  v20 = qword_10099E3B0;
  sub_10076562C();
  swift_allocObject();
  *(v3 + v20) = sub_10076561C();
  type metadata accessor for InteractiveSectionBackgroundScrollObserverStore();
  v21 = swift_allocObject();
  *(v21 + 16) = sub_1000FC008(_swiftEmptyArrayStorage);
  v48[0] = v21;
  sub_10076F19C();
  v22 = sub_10076F60C();
  (*(v5 + 8))(v7, v4);
  v23 = v47;
  *(v3 + qword_10099E360) = v47;

  sub_10076848C();
  sub_10076614C();

  sub_100760C4C();
  sub_10076F5CC();
  *(v3 + qword_10099E370) = v48[0];
  sub_1007698FC();
  sub_10076F5CC();
  *(v3 + qword_10099E378) = v48[0];
  sub_10076615C();
  sub_10076F63C();
  sub_10076813C();
  swift_allocObject();
  *(v3 + qword_1009503E0) = sub_10076814C();
  v24 = [objc_allocWithZone(UICollectionViewLayout) init];
  v46[1] = v22;

  v25 = sub_10007689C(v24, v22);

  v26 = v25;

  v27 = v26;
  v28 = [v27 traitCollection];

  swift_allocObject();
  *&v27[qword_10099E398] = sub_10076687C();

  sub_100767D5C();
  sub_10076F64C();

  sub_10076FC1C();

  v29 = v48[0];
  sub_100767D2C();

  sub_100764FAC();

  sub_10076FC1C();

  v30 = v48[0];
  sub_100764F6C();

  v48[3] = sub_10076966C();
  v48[4] = sub_100492FA4(&qword_100958F00, &type metadata accessor for ReviewsDiffablePagePresenter);
  v48[0] = v23;
  v31 = OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_lifecycleObserver;
  swift_beginAccess();

  sub_1004924A0(v48, &v27[v31]);
  swift_endAccess();
  sub_100492FA4(&qword_100958F08, &type metadata accessor for ReviewsDiffablePagePresenter);

  sub_1007657EC();

  v32 = qword_10099E390;
  v33 = *&v27[qword_10099E390];

  sub_10076FC1C();

  sub_10076911C();
  swift_allocObject();
  sub_10076912C();
  sub_10076668C();

  v34 = *&v27[v32];

  sub_10076FC1C();

  sub_100766B3C();
  swift_allocObject();
  sub_100766B4C();
  sub_10076668C();

  v35 = *&v27[v32];
  sub_1004925B0(&qword_100958F10, &qword_100958EF8);
  v36 = v35;

  sub_10076668C();

  v37 = *&v27[v32];

  sub_10076668C();

  v38 = *&v27[v32];
  v39 = qword_1009503B8;
  sub_100492FA4(&qword_100958E00, type metadata accessor for TodayCardCollectionElementsObserver);
  v40 = v38;

  sub_10076668C();

  v41 = *&v27[qword_10099E378];
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v42 = v27;
  v43 = v41;

  sub_1007698DC();

  v44 = *&v27[v39];

  *(v44 + 24) = &off_10088FE50;
  swift_unknownObjectWeakAssign();

  return v42;
}

char *sub_100486428(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v46[2] = a2;
  v47 = a1;
  v4 = sub_10076F1BC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + qword_1009503A0) = 0x409F400000000000;
  v8 = qword_1009503A8;
  sub_10076B33C();
  swift_allocObject();
  *(v2 + v8) = sub_10076B32C();
  v9 = qword_1009503B0;
  type metadata accessor for ExpandableCellScrollOffsetCollectionElementsObserver();
  v10 = swift_allocObject();
  v11 = OBJC_IVAR____TtC20ProductPageExtension52ExpandableCellScrollOffsetCollectionElementsObserver_expandingIndexPath;
  v12 = sub_10075E11C();
  (*(*(v12 - 8) + 56))(v10 + v11, 1, 1, v12);
  *(v3 + v9) = v10;
  v13 = qword_1009503B8;
  type metadata accessor for TodayCardCollectionElementsObserver();
  v14 = swift_allocObject();
  *(v14 + 24) = 0;
  swift_unknownObjectWeakInit();
  v15 = OBJC_IVAR____TtC20ProductPageExtension35TodayCardCollectionElementsObserver_selectedItemLayoutContext;
  v16 = sub_10076341C();
  (*(*(v16 - 8) + 56))(v14 + v15, 1, 1, v16);
  swift_unknownObjectWeakInit();
  *(v14 + OBJC_IVAR____TtC20ProductPageExtension35TodayCardCollectionElementsObserver_isMotionEnabled) = 1;
  *(v14 + 24) = 0;
  swift_unknownObjectWeakAssign();
  *(v3 + v13) = v14;
  *(v3 + qword_1009503C0) = 0;
  *(v3 + qword_1009503C8) = 0;
  sub_10076B14C();
  *(v3 + qword_10099E368) = 0;
  *(v3 + qword_10099E380) = 0;
  *(v3 + qword_1009503D0) = 0;
  *(v3 + qword_1009503D8) = 0;
  *(v3 + qword_10099E388) = 0;
  v17 = qword_10099E390;
  v18 = objc_allocWithZone(sub_1007666AC());
  *(v3 + v17) = sub_10076669C();
  v19 = qword_10099E398;
  sub_10000A5D4(&qword_100958F18);
  swift_allocObject();
  *(v3 + v19) = sub_10076687C();
  *(v3 + qword_10099E3A0) = 1;
  *(v3 + qword_1009503E8) = 0;
  *(v3 + qword_10099E3A8) = 0;
  v20 = qword_10099E3B0;
  sub_10076562C();
  swift_allocObject();
  *(v3 + v20) = sub_10076561C();
  type metadata accessor for InteractiveSectionBackgroundScrollObserverStore();
  v21 = swift_allocObject();
  *(v21 + 16) = sub_1000FC008(_swiftEmptyArrayStorage);
  v48[0] = v21;
  sub_10076F19C();
  v22 = sub_10076F60C();
  (*(v5 + 8))(v7, v4);
  v23 = v47;
  *(v3 + qword_10099E360) = v47;

  sub_10076848C();
  sub_10076614C();

  sub_100760C4C();
  sub_10076F5CC();
  *(v3 + qword_10099E370) = v48[0];
  sub_1007698FC();
  sub_10076F5CC();
  *(v3 + qword_10099E378) = v48[0];
  sub_10076615C();
  sub_10076F63C();
  sub_10076813C();
  swift_allocObject();
  *(v3 + qword_1009503E0) = sub_10076814C();
  v24 = [objc_allocWithZone(UICollectionViewLayout) init];
  v46[1] = v22;

  v25 = sub_10007689C(v24, v22);

  v26 = v25;

  v27 = v26;
  v28 = [v27 traitCollection];

  swift_allocObject();
  *&v27[qword_10099E398] = sub_10076687C();

  sub_100767D5C();
  sub_10076F64C();

  sub_10076FC1C();

  v29 = v48[0];
  sub_100767D2C();

  sub_100764FAC();

  sub_10076FC1C();

  v30 = v48[0];
  sub_100764F6C();

  v48[3] = sub_1007678BC();
  v48[4] = sub_100492FA4(&qword_100958F20, &type metadata accessor for MSODiffablePagePresenter);
  v48[0] = v23;
  v31 = OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_lifecycleObserver;
  swift_beginAccess();

  sub_1004924A0(v48, &v27[v31]);
  swift_endAccess();
  sub_100492FA4(&qword_100958F28, &type metadata accessor for MSODiffablePagePresenter);

  sub_1007657EC();

  v32 = qword_10099E390;
  v33 = *&v27[qword_10099E390];

  sub_10076FC1C();

  sub_10076911C();
  swift_allocObject();
  sub_10076912C();
  sub_10076668C();

  v34 = *&v27[v32];

  sub_10076FC1C();

  sub_100766B3C();
  swift_allocObject();
  sub_100766B4C();
  sub_10076668C();

  v35 = *&v27[v32];
  sub_1004925B0(&unk_100958F30, &qword_100958F18);
  v36 = v35;

  sub_10076668C();

  v37 = *&v27[v32];

  sub_10076668C();

  v38 = *&v27[v32];
  v39 = qword_1009503B8;
  sub_100492FA4(&qword_100958E00, type metadata accessor for TodayCardCollectionElementsObserver);
  v40 = v38;

  sub_10076668C();

  v41 = *&v27[qword_10099E378];
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v42 = v27;
  v43 = v41;

  sub_1007698DC();

  v44 = *&v27[v39];

  *(v44 + 24) = &off_10088FE50;
  swift_unknownObjectWeakAssign();

  return v42;
}

char *sub_100486E1C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v46[2] = a2;
  v47 = a1;
  v4 = sub_10076F1BC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + qword_1009503A0) = 0x409F400000000000;
  v8 = qword_1009503A8;
  sub_10076B33C();
  swift_allocObject();
  *(v2 + v8) = sub_10076B32C();
  v9 = qword_1009503B0;
  type metadata accessor for ExpandableCellScrollOffsetCollectionElementsObserver();
  v10 = swift_allocObject();
  v11 = OBJC_IVAR____TtC20ProductPageExtension52ExpandableCellScrollOffsetCollectionElementsObserver_expandingIndexPath;
  v12 = sub_10075E11C();
  (*(*(v12 - 8) + 56))(v10 + v11, 1, 1, v12);
  *(v3 + v9) = v10;
  v13 = qword_1009503B8;
  type metadata accessor for TodayCardCollectionElementsObserver();
  v14 = swift_allocObject();
  *(v14 + 24) = 0;
  swift_unknownObjectWeakInit();
  v15 = OBJC_IVAR____TtC20ProductPageExtension35TodayCardCollectionElementsObserver_selectedItemLayoutContext;
  v16 = sub_10076341C();
  (*(*(v16 - 8) + 56))(v14 + v15, 1, 1, v16);
  swift_unknownObjectWeakInit();
  *(v14 + OBJC_IVAR____TtC20ProductPageExtension35TodayCardCollectionElementsObserver_isMotionEnabled) = 1;
  *(v14 + 24) = 0;
  swift_unknownObjectWeakAssign();
  *(v3 + v13) = v14;
  *(v3 + qword_1009503C0) = 0;
  *(v3 + qword_1009503C8) = 0;
  sub_10076B14C();
  *(v3 + qword_10099E368) = 0;
  *(v3 + qword_10099E380) = 0;
  *(v3 + qword_1009503D0) = 0;
  *(v3 + qword_1009503D8) = 0;
  *(v3 + qword_10099E388) = 0;
  v17 = qword_10099E390;
  v18 = objc_allocWithZone(sub_1007666AC());
  *(v3 + v17) = sub_10076669C();
  v19 = qword_10099E398;
  sub_10000A5D4(&qword_100958E28);
  swift_allocObject();
  *(v3 + v19) = sub_10076687C();
  *(v3 + qword_10099E3A0) = 1;
  *(v3 + qword_1009503E8) = 0;
  *(v3 + qword_10099E3A8) = 0;
  v20 = qword_10099E3B0;
  sub_10076562C();
  swift_allocObject();
  *(v3 + v20) = sub_10076561C();
  type metadata accessor for InteractiveSectionBackgroundScrollObserverStore();
  v21 = swift_allocObject();
  *(v21 + 16) = sub_1000FC008(_swiftEmptyArrayStorage);
  v48[0] = v21;
  sub_10076F19C();
  v22 = sub_10076F60C();
  (*(v5 + 8))(v7, v4);
  v23 = v47;
  *(v3 + qword_10099E360) = v47;

  sub_10076848C();
  sub_10076614C();

  sub_100760C4C();
  sub_10076F5CC();
  *(v3 + qword_10099E370) = v48[0];
  sub_1007698FC();
  sub_10076F5CC();
  *(v3 + qword_10099E378) = v48[0];
  sub_10076615C();
  sub_10076F63C();
  sub_10076813C();
  swift_allocObject();
  *(v3 + qword_1009503E0) = sub_10076814C();
  v24 = [objc_allocWithZone(UICollectionViewLayout) init];
  v46[1] = v22;

  v25 = sub_10007689C(v24, v22);

  v26 = v25;

  v27 = v26;
  v28 = [v27 traitCollection];

  swift_allocObject();
  *&v27[qword_10099E398] = sub_10076687C();

  sub_100767D5C();
  sub_10076F64C();

  sub_10076FC1C();

  v29 = v48[0];
  sub_100767D2C();

  sub_100764FAC();

  sub_10076FC1C();

  v30 = v48[0];
  sub_100764F6C();

  v48[3] = sub_10076A24C();
  v48[4] = sub_100492FA4(&qword_100958E30, &type metadata accessor for SearchFocusDiffablePagePresenter);
  v48[0] = v23;
  v31 = OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_lifecycleObserver;
  swift_beginAccess();

  sub_1004924A0(v48, &v27[v31]);
  swift_endAccess();
  sub_100492FA4(&qword_100958E38, &type metadata accessor for SearchFocusDiffablePagePresenter);

  sub_1007657EC();

  v32 = qword_10099E390;
  v33 = *&v27[qword_10099E390];

  sub_10076FC1C();

  sub_10076911C();
  swift_allocObject();
  sub_10076912C();
  sub_10076668C();

  v34 = *&v27[v32];

  sub_10076FC1C();

  sub_100766B3C();
  swift_allocObject();
  sub_100766B4C();
  sub_10076668C();

  v35 = *&v27[v32];
  sub_1004925B0(&qword_100958E40, &qword_100958E28);
  v36 = v35;

  sub_10076668C();

  v37 = *&v27[v32];

  sub_10076668C();

  v38 = *&v27[v32];
  v39 = qword_1009503B8;
  sub_100492FA4(&qword_100958E00, type metadata accessor for TodayCardCollectionElementsObserver);
  v40 = v38;

  sub_10076668C();

  v41 = *&v27[qword_10099E378];
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v42 = v27;
  v43 = v41;

  sub_1007698DC();

  v44 = *&v27[v39];

  *(v44 + 24) = &off_10088FE50;
  swift_unknownObjectWeakAssign();

  return v42;
}

char *sub_100487810(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v46[2] = a2;
  v47 = a1;
  v4 = sub_10076F1BC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + qword_1009503A0) = 0x409F400000000000;
  v8 = qword_1009503A8;
  sub_10076B33C();
  swift_allocObject();
  *(v2 + v8) = sub_10076B32C();
  v9 = qword_1009503B0;
  type metadata accessor for ExpandableCellScrollOffsetCollectionElementsObserver();
  v10 = swift_allocObject();
  v11 = OBJC_IVAR____TtC20ProductPageExtension52ExpandableCellScrollOffsetCollectionElementsObserver_expandingIndexPath;
  v12 = sub_10075E11C();
  (*(*(v12 - 8) + 56))(v10 + v11, 1, 1, v12);
  *(v3 + v9) = v10;
  v13 = qword_1009503B8;
  type metadata accessor for TodayCardCollectionElementsObserver();
  v14 = swift_allocObject();
  *(v14 + 24) = 0;
  swift_unknownObjectWeakInit();
  v15 = OBJC_IVAR____TtC20ProductPageExtension35TodayCardCollectionElementsObserver_selectedItemLayoutContext;
  v16 = sub_10076341C();
  (*(*(v16 - 8) + 56))(v14 + v15, 1, 1, v16);
  swift_unknownObjectWeakInit();
  *(v14 + OBJC_IVAR____TtC20ProductPageExtension35TodayCardCollectionElementsObserver_isMotionEnabled) = 1;
  *(v14 + 24) = 0;
  swift_unknownObjectWeakAssign();
  *(v3 + v13) = v14;
  *(v3 + qword_1009503C0) = 0;
  *(v3 + qword_1009503C8) = 0;
  sub_10076B14C();
  *(v3 + qword_10099E368) = 0;
  *(v3 + qword_10099E380) = 0;
  *(v3 + qword_1009503D0) = 0;
  *(v3 + qword_1009503D8) = 0;
  *(v3 + qword_10099E388) = 0;
  v17 = qword_10099E390;
  v18 = objc_allocWithZone(sub_1007666AC());
  *(v3 + v17) = sub_10076669C();
  v19 = qword_10099E398;
  sub_10000A5D4(&qword_100958FB8);
  swift_allocObject();
  *(v3 + v19) = sub_10076687C();
  *(v3 + qword_10099E3A0) = 1;
  *(v3 + qword_1009503E8) = 0;
  *(v3 + qword_10099E3A8) = 0;
  v20 = qword_10099E3B0;
  sub_10076562C();
  swift_allocObject();
  *(v3 + v20) = sub_10076561C();
  type metadata accessor for InteractiveSectionBackgroundScrollObserverStore();
  v21 = swift_allocObject();
  *(v21 + 16) = sub_1000FC008(_swiftEmptyArrayStorage);
  v48[0] = v21;
  sub_10076F19C();
  v22 = sub_10076F60C();
  (*(v5 + 8))(v7, v4);
  v23 = v47;
  *(v3 + qword_10099E360) = v47;

  sub_10076848C();
  sub_10076614C();

  sub_100760C4C();
  sub_10076F5CC();
  *(v3 + qword_10099E370) = v48[0];
  sub_1007698FC();
  sub_10076F5CC();
  *(v3 + qword_10099E378) = v48[0];
  sub_10076615C();
  sub_10076F63C();
  sub_10076813C();
  swift_allocObject();
  *(v3 + qword_1009503E0) = sub_10076814C();
  v24 = [objc_allocWithZone(UICollectionViewLayout) init];
  v46[1] = v22;

  v25 = sub_10007689C(v24, v22);

  v26 = v25;

  v27 = v26;
  v28 = [v27 traitCollection];

  swift_allocObject();
  *&v27[qword_10099E398] = sub_10076687C();

  sub_100767D5C();
  sub_10076F64C();

  sub_10076FC1C();

  v29 = v48[0];
  sub_100767D2C();

  sub_100764FAC();

  sub_10076FC1C();

  v30 = v48[0];
  sub_100764F6C();

  v48[3] = sub_10076A60C();
  v48[4] = sub_100492FA4(&qword_100958FC0, &type metadata accessor for SearchResultsDiffablePagePresenter);
  v48[0] = v23;
  v31 = OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_lifecycleObserver;
  swift_beginAccess();

  sub_1004924A0(v48, &v27[v31]);
  swift_endAccess();
  sub_100492FA4(&qword_100958FC8, &type metadata accessor for SearchResultsDiffablePagePresenter);

  sub_1007657EC();

  v32 = qword_10099E390;
  v33 = *&v27[qword_10099E390];

  sub_10076FC1C();

  sub_10076911C();
  swift_allocObject();
  sub_10076912C();
  sub_10076668C();

  v34 = *&v27[v32];

  sub_10076FC1C();

  sub_100766B3C();
  swift_allocObject();
  sub_100766B4C();
  sub_10076668C();

  v35 = *&v27[v32];
  sub_1004925B0(&unk_100958FD0, &qword_100958FB8);
  v36 = v35;

  sub_10076668C();

  v37 = *&v27[v32];

  sub_10076668C();

  v38 = *&v27[v32];
  v39 = qword_1009503B8;
  sub_100492FA4(&qword_100958E00, type metadata accessor for TodayCardCollectionElementsObserver);
  v40 = v38;

  sub_10076668C();

  v41 = *&v27[qword_10099E378];
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v42 = v27;
  v43 = v41;

  sub_1007698DC();

  v44 = *&v27[v39];

  *(v44 + 24) = &off_10088FE50;
  swift_unknownObjectWeakAssign();

  return v42;
}

char *sub_100488204(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v46[2] = a2;
  v47 = a1;
  v4 = sub_10076F1BC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + qword_1009503A0) = 0x409F400000000000;
  v8 = qword_1009503A8;
  sub_10076B33C();
  swift_allocObject();
  *(v2 + v8) = sub_10076B32C();
  v9 = qword_1009503B0;
  type metadata accessor for ExpandableCellScrollOffsetCollectionElementsObserver();
  v10 = swift_allocObject();
  v11 = OBJC_IVAR____TtC20ProductPageExtension52ExpandableCellScrollOffsetCollectionElementsObserver_expandingIndexPath;
  v12 = sub_10075E11C();
  (*(*(v12 - 8) + 56))(v10 + v11, 1, 1, v12);
  *(v3 + v9) = v10;
  v13 = qword_1009503B8;
  type metadata accessor for TodayCardCollectionElementsObserver();
  v14 = swift_allocObject();
  *(v14 + 24) = 0;
  swift_unknownObjectWeakInit();
  v15 = OBJC_IVAR____TtC20ProductPageExtension35TodayCardCollectionElementsObserver_selectedItemLayoutContext;
  v16 = sub_10076341C();
  (*(*(v16 - 8) + 56))(v14 + v15, 1, 1, v16);
  swift_unknownObjectWeakInit();
  *(v14 + OBJC_IVAR____TtC20ProductPageExtension35TodayCardCollectionElementsObserver_isMotionEnabled) = 1;
  *(v14 + 24) = 0;
  swift_unknownObjectWeakAssign();
  *(v3 + v13) = v14;
  *(v3 + qword_1009503C0) = 0;
  *(v3 + qword_1009503C8) = 0;
  sub_10076B14C();
  *(v3 + qword_10099E368) = 0;
  *(v3 + qword_10099E380) = 0;
  *(v3 + qword_1009503D0) = 0;
  *(v3 + qword_1009503D8) = 0;
  *(v3 + qword_10099E388) = 0;
  v17 = qword_10099E390;
  v18 = objc_allocWithZone(sub_1007666AC());
  *(v3 + v17) = sub_10076669C();
  v19 = qword_10099E398;
  sub_10000A5D4(&qword_100958F98);
  swift_allocObject();
  *(v3 + v19) = sub_10076687C();
  *(v3 + qword_10099E3A0) = 1;
  *(v3 + qword_1009503E8) = 0;
  *(v3 + qword_10099E3A8) = 0;
  v20 = qword_10099E3B0;
  sub_10076562C();
  swift_allocObject();
  *(v3 + v20) = sub_10076561C();
  type metadata accessor for InteractiveSectionBackgroundScrollObserverStore();
  v21 = swift_allocObject();
  *(v21 + 16) = sub_1000FC008(_swiftEmptyArrayStorage);
  v48[0] = v21;
  sub_10076F19C();
  v22 = sub_10076F60C();
  (*(v5 + 8))(v7, v4);
  v23 = v47;
  *(v3 + qword_10099E360) = v47;

  sub_10076848C();
  sub_10076614C();

  sub_100760C4C();
  sub_10076F5CC();
  *(v3 + qword_10099E370) = v48[0];
  sub_1007698FC();
  sub_10076F5CC();
  *(v3 + qword_10099E378) = v48[0];
  sub_10076615C();
  sub_10076F63C();
  sub_10076813C();
  swift_allocObject();
  *(v3 + qword_1009503E0) = sub_10076814C();
  v24 = [objc_allocWithZone(UICollectionViewLayout) init];
  v46[1] = v22;

  v25 = sub_10007689C(v24, v22);

  v26 = v25;

  v27 = v26;
  v28 = [v27 traitCollection];

  swift_allocObject();
  *&v27[qword_10099E398] = sub_10076687C();

  sub_100767D5C();
  sub_10076F64C();

  sub_10076FC1C();

  v29 = v48[0];
  sub_100767D2C();

  sub_100764FAC();

  sub_10076FC1C();

  v30 = v48[0];
  sub_100764F6C();

  v48[3] = sub_10076A26C();
  v48[4] = sub_100492FA4(&qword_100958FA0, &type metadata accessor for TopChartDiffableSegmentPresenter);
  v48[0] = v23;
  v31 = OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_lifecycleObserver;
  swift_beginAccess();

  sub_1004924A0(v48, &v27[v31]);
  swift_endAccess();
  sub_100492FA4(&qword_100958FA8, &type metadata accessor for TopChartDiffableSegmentPresenter);

  sub_1007657EC();

  v32 = qword_10099E390;
  v33 = *&v27[qword_10099E390];

  sub_10076FC1C();

  sub_10076911C();
  swift_allocObject();
  sub_10076912C();
  sub_10076668C();

  v34 = *&v27[v32];

  sub_10076FC1C();

  sub_100766B3C();
  swift_allocObject();
  sub_100766B4C();
  sub_10076668C();

  v35 = *&v27[v32];
  sub_1004925B0(&qword_100958FB0, &qword_100958F98);
  v36 = v35;

  sub_10076668C();

  v37 = *&v27[v32];

  sub_10076668C();

  v38 = *&v27[v32];
  v39 = qword_1009503B8;
  sub_100492FA4(&qword_100958E00, type metadata accessor for TodayCardCollectionElementsObserver);
  v40 = v38;

  sub_10076668C();

  v41 = *&v27[qword_10099E378];
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v42 = v27;
  v43 = v41;

  sub_1007698DC();

  v44 = *&v27[v39];

  *(v44 + 24) = &off_10088FE50;
  swift_unknownObjectWeakAssign();

  return v42;
}

uint64_t sub_100488BF8@<X0>(uint64_t a1@<X1>, char *a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v8 = sub_10075E11C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v37 - v13;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_10;
  }

  v16 = Strong;
  v17 = [Strong collectionView];

  if (!v17)
  {
    goto LABEL_10;
  }

  v18 = [v17 indexPathForItemAtPoint:{a3, a4}];
  if (!v18)
  {

    goto LABEL_10;
  }

  v19 = v18;
  sub_10075E06C();

  isa = sub_10075E02C().super.isa;
  v21 = [v17 cellForItemAtIndexPath:isa];

  v22 = sub_100489010(v14, a1);
  if (!v21 || (swift_getObjectType(), !swift_conformsToProtocol2()))
  {

    v27 = *(v9 + 32);
    v27(v11, v14, v8);
    v27(a2, v11, v8);
    v28 = type metadata accessor for PreviewItem();
    v29 = v28;
    *&a2[*(v28 + 20)] = v21;
LABEL_20:
    *&a2[*(v28 + 24)] = v22;
    return (*(*(v28 - 8) + 56))(a2, 0, 1, v29);
  }

  v23 = v17;
  v24 = sub_10048A854(v23, v21, a3, a4);
  v26 = v25;

  if (v26)
  {
    (*(v9 + 8))(v14, v8);

LABEL_10:
    v30 = type metadata accessor for PreviewItem();
    return (*(*(v30 - 8) + 56))(a2, 1, 1, v30);
  }

  sub_10000A5D4(&qword_100952110);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_100784500;
  *(v32 + 32) = sub_10075E0AC();
  *(v32 + 40) = v24;
  sub_10075E01C();
  v33 = OBJC_IVAR____TtC20ProductPageExtension41PersonalizationFeedbackCollectionViewCell_feedbackButtons;
  v34 = *&v21[OBJC_IVAR____TtC20ProductPageExtension41PersonalizationFeedbackCollectionViewCell_feedbackButtons];
  if (!(v34 >> 62))
  {
    result = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v24 < result)
    {
      goto LABEL_13;
    }

LABEL_18:

    v36 = 0;
    goto LABEL_19;
  }

  result = sub_10077158C();
  if (v24 >= result)
  {
    goto LABEL_18;
  }

LABEL_13:
  v35 = *&v21[v33];
  if ((v35 & 0xC000000000000001) != 0)
  {

    v36 = sub_10077149C();

    goto LABEL_19;
  }

  if (v24 < 0)
  {
    __break(1u);
  }

  else if (v24 < *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v36 = *(v35 + 8 * v24 + 32);

LABEL_19:
    (*(v9 + 8))(v14, v8);
    v28 = type metadata accessor for PreviewItem();
    v29 = v28;
    *&a2[*(v28 + 20)] = v36;
    goto LABEL_20;
  }

  __break(1u);
  return result;
}

id sub_100489010(uint64_t a1, uint64_t a2)
{
  v3 = sub_1007621EC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v31 - v8;
  v10 = sub_10000A5D4(&unk_100952090);
  __chkstk_darwin(v10 - 8);
  v12 = &v31 - v11;
  swift_getObjectType();
  v13 = swift_conformsToProtocol2();
  result = 0;
  if (!v13 || !a2)
  {
    return result;
  }

  v34 = v6;
  v15 = v3;
  v36 = v4;
  ObjectType = swift_getObjectType();
  swift_unknownObjectRetain();
  v35 = ObjectType;
  sub_100761B0C();
  v17 = sub_10076182C();
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(v12, 1, v17) == 1)
  {
    sub_10000CFBC(v12, &unk_100952090);
  }

  else
  {
    v19 = sub_10076180C();
    (*(v18 + 8))(v12, v17);
    if (v19)
    {
      if (qword_10093FBC0 != -1)
      {
        swift_once();
      }

      v20 = qword_10099DD30;
      swift_unknownObjectRelease();
      return v20;
    }
  }

  sub_100761A2C();
  v21 = v36;
  v22 = *(v36 + 88);
  v23 = v22(v9, v15);
  v24 = enum case for ShelfBackground.color(_:);
  if (v23 == enum case for ShelfBackground.color(_:))
  {
    swift_unknownObjectRelease();
    (*(v21 + 96))(v9, v15);
    v25 = *v9;
    v26 = *(sub_10000A5D4(&unk_100950670) + 48);
    v27 = sub_1007659CC();
    (*(*(v27 - 8) + 8))(&v9[v26], v27);
    return v25;
  }

  v32 = *(v21 + 8);
  v33 = v21 + 8;
  v32(v9, v15);
  sub_10075E0AC();
  v28 = v34;
  sub_100761A6C();
  swift_unknownObjectRelease();
  if (v22(v28, v15) == v24)
  {
    (*(v21 + 96))(v28, v15);
    v25 = *v28;
    v29 = *(sub_10000A5D4(&unk_100950670) + 48);
    v30 = sub_1007659CC();
    (*(*(v30 - 8) + 8))(&v28[v29], v30);
    return v25;
  }

  v32(v28, v15);
  return 0;
}

BOOL sub_1004894E4(uint64_t a1, uint64_t a2, void (*a3)(void), unint64_t *a4, void (*a5)(uint64_t))
{
  v8 = 0;
  v9 = *(a2 + 16);
  do
  {
    v10 = v8;
    if (v9 == v8)
    {
      break;
    }

    a3(0);
    ++v8;
    sub_100492FA4(a4, a5);
  }

  while ((sub_10076FF1C() & 1) == 0);
  return v9 != v10;
}

char *sub_1004895EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + qword_10094E0C0) = 0x409F400000000000;
  v7 = qword_10094E0D8;
  v8 = objc_allocWithZone(sub_1007666AC());
  *(v3 + v7) = sub_10076669C();
  *(v3 + qword_10094E0E8) = 1;
  *(v3 + qword_10094E0F8) = 0;
  *(v3 + qword_10094E100) = 0;
  *(v3 + qword_10094E0C8) = a1;
  *(v3 + qword_10094E0D0) = a2;
  sub_10000A5D4(&qword_100958F48);
  swift_allocObject();
  swift_retain_n();

  *(v3 + qword_10094E0E0) = sub_10076687C();
  sub_10076615C();
  sub_10076F63C();
  if (v26[0])
  {

    sub_10076614C();
  }

  *(a2 + 112) = v26[0];

  sub_10076813C();
  swift_allocObject();

  *(v3 + qword_10094E0F0) = sub_10076814C();
  v9 = [objc_allocWithZone(UICollectionViewLayout) init];

  v10 = sub_100617358(v9, a3);
  swift_unknownObjectWeakAssign();
  v26[3] = sub_10076573C();
  v26[4] = &protocol witness table for BasePresenter;
  v26[0] = a1;
  v11 = OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_lifecycleObserver;
  swift_beginAccess();
  v12 = v10;

  v13 = v12;
  sub_1004924A0(v26, v10 + v11);
  swift_endAccess();
  sub_100492FA4(&qword_100958F50, &type metadata accessor for GenericPagePresenter);

  sub_1007657EC();

  v14 = sub_10000A5D4(&qword_100958F58);

  v15 = sub_10048AD64(v13, a1, a3, v14);
  v16 = *&v13[qword_10094E0F8];
  *&v13[qword_10094E0F8] = v15;

  v17 = qword_10094E0D8;
  v18 = *&v13[qword_10094E0D8];
  sub_100767D5C();
  sub_10076F64C();
  v19 = v18;

  sub_10076FC1C();

  sub_10076911C();
  swift_allocObject();
  sub_10076912C();
  sub_10076668C();

  v20 = *&v13[v17];
  sub_100764FAC();
  v21 = v20;

  sub_10076FC1C();

  sub_100766B3C();
  swift_allocObject();
  sub_100766B4C();
  sub_10076668C();

  v22 = *&v13[v17];
  sub_1004925B0(&qword_100958F60, &qword_100958F48);
  v23 = v22;

  sub_10076668C();

  v24 = *&v13[v17];

  sub_10076668C();

  return v13;
}

uint64_t sub_100489B30(uint64_t a1)
{
  v2 = sub_10000A5D4(&unk_100943200);
  __chkstk_darwin(v2 - 8);
  v4 = &v12 - v3;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = result;
    v7 = OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_objectGraph;
    v8 = sub_10000A5D4(&unk_1009428E0);
    v9 = v6;

    sub_10076F5AC();

    v10 = *(v8 - 8);
    if ((*(v10 + 48))(v4, 1, v8) == 1)
    {

      return sub_10000CFBC(v4, &unk_100943200);
    }

    else
    {
      v11 = *&v6[v7];

      sub_100263BF0(a1, 1, v11, v4);

      return (*(v10 + 8))(v4, v8);
    }
  }

  return result;
}

uint64_t sub_100489D00(uint64_t a1)
{
  v3 = objc_allocWithZone(sub_1007666AC());
  *(v1 + 32) = sub_10076669C();
  *(v1 + 40) = &protocol witness table for CompoundScrollObserver;
  swift_unknownObjectWeakInit();
  *(v1 + 56) = sub_1000FCAE8(_swiftEmptyArrayStorage);
  *(v1 + 64) = sub_1000FCCC4(_swiftEmptyArrayStorage);
  *(v1 + 72) = sub_1000FCCD8(_swiftEmptyArrayStorage);
  *(v1 + 80) = 0;
  *(v1 + 88) = xmmword_1007A59C0;
  *(v1 + 104) = 0xC020000000000000;
  *(v1 + 112) = 0;
  *(v1 + 16) = a1;
  sub_10000A5D4(&unk_1009520B0);
  swift_allocObject();
  *(v1 + 24) = sub_10076F9DC();
  return v1;
}

void sub_100489DEC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong presentingViewController];

    if (v2)
    {
      [v2 dismissViewControllerAnimated:1 completion:0];
    }
  }
}

void sub_10048A0AC(void *a1, char a2)
{
  if (a1)
  {
    v3 = [a1 presentingViewController];
    if (v3)
    {
      v4 = v3;
      v5 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v6 = swift_allocObject();
      *(v6 + 16) = a2 & 1;
      *(v6 + 24) = v5;
      v8[4] = sub_10049263C;
      v8[5] = v6;
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 1107296256;
      v8[2] = sub_10009AEDC;
      v8[3] = &unk_100896A30;
      v7 = _Block_copy(v8);

      [v4 dismissViewControllerAnimated:1 completion:v7];
      _Block_release(v7);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_10048A1D4(char a1)
{
  v2 = sub_10000A5D4(&unk_100958FE0);
  v28 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = v25 - v3;
  v5 = sub_10000A5D4(&unk_1009428E0);
  v27 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = v25 - v6;
  v8 = sub_10076F4FC();
  __chkstk_darwin(v8 - 8);
  v9 = sub_10076253C();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v14 = Strong;
      sub_10076C02C();
      v15 = sub_1004C0060(0x6E65537473616F54, 0xE900000000000074);
      v26 = v2;
      v16 = v15;
      v30._object = 0x80000001007E93E0;
      v30._countAndFlagsBits = 0xD000000000000012;
      v32._countAndFlagsBits = 0;
      v32._object = 0xE000000000000000;
      v17 = sub_1007622EC(v30, v32);
      v25[2] = v18;
      v25[3] = v17;
      v31._countAndFlagsBits = 0xD000000000000018;
      v31._object = 0x80000001007E9400;
      v33._countAndFlagsBits = 0;
      v33._object = 0xE000000000000000;
      sub_1007622EC(v31, v33);
      v25[1] = v19;
      (*(v10 + 104))(v12, enum case for AlertActionStyle.toast(_:), v9);
      v25[4] = v16;

      sub_10076F4DC();
      v20 = sub_10075FAAC();
      swift_allocObject();
      v21 = sub_10075FA7C();
      sub_10076F64C();

      sub_10076FC1C();

      v29[3] = v20;
      v29[4] = sub_100492FA4(&qword_10094F070, &type metadata accessor for AlertAction);
      v29[0] = v21;
      v22 = v28;
      v23 = v26;
      (*(v28 + 104))(v4, enum case for ActionDispatcher.MetricsBehavior.notProcessed<A>(_:), v26);

      sub_10076F6CC();

      (*(v22 + 8))(v4, v23);
      (*(v27 + 8))(v7, v5);
      sub_10000CD74(v29);
      v24 = *&v14[OBJC_IVAR____TtC20ProductPageExtensionP33_F5913BF55198538BC94C4AFB9B61CBF121ComposeReviewDelegate_selfReference];
      *&v14[OBJC_IVAR____TtC20ProductPageExtensionP33_F5913BF55198538BC94C4AFB9B61CBF121ComposeReviewDelegate_selfReference] = 0;
    }
  }
}

id sub_10048A748(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, "dealloc");
}

unint64_t sub_10048A854(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v7 = *(a2 + OBJC_IVAR____TtC20ProductPageExtension41PersonalizationFeedbackCollectionViewCell_feedbackButtons);
  if (v7 >> 62)
  {
LABEL_16:
    v8 = sub_10077158C();
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = 0;
  while (1)
  {
    v10 = v9;
    if (v8 == v9)
    {
      break;
    }

    if ((v7 & 0xC000000000000001) != 0)
    {
      v11 = sub_10077149C();
    }

    else
    {
      if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_15;
      }

      v11 = *(v7 + 8 * v9 + 32);
    }

    v12 = v11;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    [v11 convertPoint:a1 fromCoordinateSpace:{a3, a4}];
    v13 = [v12 pointInside:0 withEvent:?];

    v9 = v10 + 1;
    if (v13)
    {
      v14 = v10;
      goto LABEL_13;
    }
  }

  v14 = 0;
LABEL_13:

  return v14;
}

char *sub_10048A998(uint64_t a1, uint64_t a2)
{
  v3 = sub_10076F68C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v16 - v8;
  sub_100764F2C();
  swift_allocObject();
  v10 = sub_100764F1C();
  sub_100767A8C();
  sub_10000A5D4(&qword_10094F420);
  sub_10076F1BC();
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_100784500;
  (*(v4 + 16))(v6, v9, v3);
  sub_10076F19C();
  sub_100765FDC();
  swift_allocObject();
  v16[1] = sub_100765FCC();
  sub_10076F19C();
  v12 = sub_1006C7080(a2, 0, 0, v11, 0x686372616573, 0xE600000000000000);

  v13 = objc_allocWithZone(type metadata accessor for SearchViewController());
  v14 = sub_1002741EC(v10, v12);

  (*(v4 + 8))(v9, v3);
  return v14;
}

id sub_10048AC28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_100492FA4(&unk_100958F68, &type metadata accessor for GenericPagePresenter);
  v9 = sub_10000A5D4(&qword_100958F58);
  v10 = objc_allocWithZone(v9);
  v11 = &v10[qword_10094A6C8];
  *&v10[qword_10094A6C8 + 8] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v12 = &v10[qword_10094A6C0];
  *v12 = a3;
  *(v12 + 1) = a4;
  *(v11 + 1) = v8;
  swift_unknownObjectWeakAssign();

  swift_unknownObjectWeakAssign();
  *&v10[qword_10094A6D8] = a5;
  v14.receiver = v10;
  v14.super_class = v9;
  return objc_msgSendSuper2(&v14, "init");
}

id sub_10048AD64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_100492FA4(&unk_100958F68, &type metadata accessor for GenericPagePresenter);
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = a2;
  v10[4] = v8;
  v10[5] = a4;

  v12 = sub_10048AC28(v11, a1, sub_1004925A4, v10, a3);

  return v12;
}

uint64_t sub_10048AE60(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t (*a5)(void), unint64_t *a6, void (*a7)(uint64_t))
{
  ObjectType = swift_getObjectType();
  v25[3] = a5(0);
  v25[4] = sub_100492FA4(a6, a7);
  v25[0] = a1;
  *&a4[OBJC_IVAR____TtC20ProductPageExtension35ComponentViewOverflowViewController_overflowTransitioning] = 0;
  if (sub_10041329C())
  {
    v16 = v15;
    *&a4[OBJC_IVAR____TtC20ProductPageExtension35ComponentViewOverflowViewController_objectGraph] = a3;
    sub_10000A5D4(&unk_1009520B0);
    swift_allocObject();

    *&a4[OBJC_IVAR____TtC20ProductPageExtension35ComponentViewOverflowViewController_stateStore] = sub_10076F9DC();
    sub_10000A570(v25, &a4[OBJC_IVAR____TtC20ProductPageExtension35ComponentViewOverflowViewController_model]);
    v17 = [objc_allocWithZone(UIScrollView) init];
    *&a4[OBJC_IVAR____TtC20ProductPageExtension35ComponentViewOverflowViewController_scrollView] = v17;
    v18 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    v19 = &a4[OBJC_IVAR____TtC20ProductPageExtension35ComponentViewOverflowViewController_componentView];
    *v19 = v18;
    *(v19 + 1) = v16;
    sub_100760C4C();
    sub_10076F64C();
    sub_10076FC1C();
    *&a4[OBJC_IVAR____TtC20ProductPageExtension35ComponentViewOverflowViewController_artworkLoader] = v24;
    v23.receiver = a4;
    v23.super_class = ObjectType;
    v20 = objc_msgSendSuper2(&v23, "initWithNibName:bundle:", 0, 0);
    v21 = sub_10076B5BC();
    (*(*(v21 - 8) + 8))(a2, v21);
    sub_10000CD74(v25);
    return v20;
  }

  else
  {
    result = sub_10077156C();
    __break(1u);
  }

  return result;
}

char *sub_10048B0C0(void (*a1)(char *, uint64_t), uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v609 = a8;
  v635 = a6;
  v636 = a5;
  v650 = a4;
  v649 = a3;
  v610 = a2;
  v654 = a1;
  v9 = sub_10000A5D4(&qword_10094A288);
  __chkstk_darwin(v9 - 8);
  v608 = &v559 - v10;
  v11 = sub_10000A5D4(&unk_100958C30);
  __chkstk_darwin(v11 - 8);
  v606 = &v559 - v12;
  v601 = sub_10076CB5C();
  v600 = *(v601 - 8);
  __chkstk_darwin(v601);
  v602 = &v559 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v605 = sub_10075E11C();
  v604 = *(v605 - 8);
  __chkstk_darwin(v605);
  v603 = &v559 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v632 = sub_10076B5BC();
  v631 = *(v632 - 8);
  __chkstk_darwin(v632);
  v634 = &v559 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10000A5D4(&qword_1009499B0);
  __chkstk_darwin(v16 - 8);
  v599 = &v559 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v607 = &v559 - v19;
  v638 = sub_100762D3C();
  v637 = *(v638 - 8);
  __chkstk_darwin(v638);
  v613 = &v559 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v633 = &v559 - v22;
  v571 = sub_10075D86C();
  v570 = *(v571 - 8);
  __chkstk_darwin(v571);
  v562 = &v559 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v568 = sub_10075F93C();
  v567 = *(v568 - 8);
  __chkstk_darwin(v568);
  v566 = &v559 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v569 = sub_10075D7DC();
  v572 = *(v569 - 8);
  __chkstk_darwin(v569);
  v563 = &v559 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v611 = &v559 - v27;
  v28 = sub_10000A5D4(&qword_100958C40);
  __chkstk_darwin(v28 - 8);
  v612 = &v559 - v29;
  v595 = sub_10075EBAC();
  v594 = *(v595 - 8);
  __chkstk_darwin(v595);
  v597 = &v559 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v624 = sub_10076B96C();
  v623 = *(v624 - 8);
  __chkstk_darwin(v624);
  v622 = &v559 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v620 = sub_10076593C();
  v619 = *(v620 - 8);
  __chkstk_darwin(v620);
  v596 = &v559 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v560 = sub_10076FBBC();
  __chkstk_darwin(v560);
  v561 = &v559 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v618 = sub_10076F1BC();
  v642 = *(v618 - 8);
  __chkstk_darwin(v618);
  v617 = &v559 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v593 = sub_100762FAC();
  v592 = *(v593 - 8);
  __chkstk_darwin(v593);
  v581 = &v559 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v629 = &v559 - v37;
  v590 = sub_1007615AC();
  v589 = *(v590 - 8);
  __chkstk_darwin(v590);
  v579 = &v559 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39);
  v588 = &v559 - v40;
  v41 = sub_10000A5D4(&unk_1009435D0);
  __chkstk_darwin(v41 - 8);
  v578 = &v559 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v43);
  v584 = &v559 - v44;
  __chkstk_darwin(v45);
  v565 = &v559 - v46;
  __chkstk_darwin(v47);
  v577 = &v559 - v48;
  __chkstk_darwin(v49);
  v598 = &v559 - v50;
  __chkstk_darwin(v51);
  v645 = &v559 - v52;
  __chkstk_darwin(v53);
  v646 = &v559 - v54;
  v583 = sub_10075F65C();
  v582 = *(v583 - 8);
  __chkstk_darwin(v583);
  v576 = &v559 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v56);
  v580 = &v559 - v57;
  v58 = sub_10000A5D4(&unk_100958150);
  __chkstk_darwin(v58 - 8);
  v630 = &v559 - v59;
  v587 = sub_10076950C();
  v586 = *(v587 - 8);
  __chkstk_darwin(v587);
  v591 = &v559 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v628 = sub_10076127C();
  v627 = *(v628 - 8);
  __chkstk_darwin(v628);
  v626 = &v559 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  v651 = sub_10075DB7C();
  v648 = *(v651 - 8);
  __chkstk_darwin(v651);
  v614 = &v559 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v63);
  v621 = &v559 - v64;
  __chkstk_darwin(v65);
  v564 = &v559 - v66;
  __chkstk_darwin(v67);
  v644 = &v559 - v68;
  __chkstk_darwin(v69);
  v647 = &v559 - v70;
  __chkstk_darwin(v71);
  v585 = &v559 - v72;
  __chkstk_darwin(v73);
  v640 = &v559 - v74;
  v653 = type metadata accessor for FlowDestination();
  __chkstk_darwin(v653);
  v76 = (&v559 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0));
  v77 = sub_10076F2EC();
  __chkstk_darwin(v77 - 8);
  v78 = sub_10076F68C();
  v661 = *(v78 - 8);
  __chkstk_darwin(v78);
  v573 = &v559 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v80);
  v575 = &v559 - v81;
  __chkstk_darwin(v82);
  v84 = &v559 - v83;
  v85 = sub_100016F40(0, &qword_100944EF0);
  sub_10076F64C();
  v616 = v85;
  sub_10076FC1C();
  v655 = v674[0];
  v641 = sub_10000A5D4(&unk_10094A8C0);
  sub_10076FC1C();
  v656 = v674[0];
  v639 = v674[1];
  sub_100767E8C();
  sub_10076FC1C();
  v657 = v674[0];
  v625 = sub_10076148C();
  sub_10076FC1C();
  v662 = v674[0];
  sub_10076A46C();
  sub_10076FC1C();
  v658 = v674[0];
  v664 = v84;
  v660 = v78;
  sub_10076FC1C();
  sub_10076904C();
  sub_10076F63C();
  v659 = v674[0];
  v615 = sub_10000A5D4(&qword_100958C48);
  sub_10076FC1C();
  v86 = sub_10076097C();
  v652 = a7;
  v574 = v86;
  sub_10076FC1C();
  v663 = v671;
  if (qword_1009412E8 != -1)
  {
    swift_once();
  }

  v87 = sub_10076FD4C();
  sub_10000A61C(v87, qword_1009A2600);
  sub_10000A5D4(&unk_100942A60);
  sub_10076F33C();
  v88 = swift_allocObject();
  v643 = xmmword_100783DD0;
  *(v88 + 16) = xmmword_100783DD0;
  sub_10076F2DC();
  v675._countAndFlagsBits = 0xD000000000000049;
  v675._object = 0x80000001007E9070;
  sub_10076F2CC(v675);
  v89 = v654;
  v90 = sub_10012A5D8();
  *(&v672 + 1) = &type metadata for String;
  *&v671 = v90;
  *(&v671 + 1) = v91;
  sub_10076F29C();
  sub_10000CFBC(&v671, &unk_1009434C0);
  v676._countAndFlagsBits = 0;
  v676._object = 0xE000000000000000;
  sub_10076F2CC(v676);
  sub_10076F2FC();
  sub_10076FBCC();

  sub_10005C684(v89, v76);
  v92 = v76;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v290 = *(sub_10000A5D4(&qword_1009499F8) + 48);
      v291 = v648;
      v292 = v647;
      v280 = v651;
      (*(v648 + 32))(v647, v76, v651);
      v293 = v582;
      v294 = v580;
      v295 = v583;
      (*(v582 + 32))(v580, v76 + v290, v583);
      (*(v291 + 16))(v644, v292, v280);
      v296 = v576;
      (*(v293 + 104))(v576, enum case for FlowOrigin.external(_:), v295);
      sub_10075F64C();
      v654 = *(v293 + 8);
      v654(v296, v295);
      sub_100016E2C(v636, v630, &unk_100958150);
      sub_10076577C();
      swift_allocObject();
      v297 = v652;

      v298 = sub_10076575C();

      sub_100760CBC();
      v299 = sub_100492FA4(&unk_100958DC0, &type metadata accessor for LoadingPagePresenter);

      v300 = sub_1006C7080(v297, v298, v299, _swiftEmptyArrayStorage, 0x50676E6964616F6CLL, 0xEB00000000656761);

      v301 = objc_allocWithZone(type metadata accessor for LoadingPageViewController());
      v103 = sub_10069F048(v298, v300);

      swift_unknownObjectRelease();

      v654(v294, v295);
      v285 = *(v291 + 8);
      v286 = v647;
      goto LABEL_44;
    case 2u:
      v267 = v648;
      v268 = v647;
      v269 = v76;
      v270 = v651;
      (*(v648 + 32))(v647, v269, v651);
      v271 = v644;
      (*(v267 + 16))(v644, v268, v270);
      sub_1006C7080(v652, 0, 0, _swiftEmptyArrayStorage, 0x77656956626577, 0xE700000000000000);
      v272 = objc_allocWithZone(type metadata accessor for WebViewController());
      v103 = sub_1006ED2DC(v271);

      swift_unknownObjectRelease();

      (*(v267 + 8))(v268, v270);
      goto LABEL_87;
    case 3u:
      v277 = *(v76 + *(sub_10000A5D4(&unk_100958DB0) + 48));
      v278 = v648;
      v279 = v647;
      v280 = v651;
      (*(v648 + 32))(v647, v76, v651);
      v281 = v644;
      (*(v278 + 16))(v644, v279, v280);
      v282 = v650;

      v283 = sub_1006C7080(v652, 0, 0, _swiftEmptyArrayStorage, 0x5063696D616E7964, 0xEB00000000656761);
      v284 = objc_allocWithZone(type metadata accessor for DynamicViewController());
      v103 = sub_1000673C8(v281, v277, v649, v282, v283);

      swift_unknownObjectRelease();

      v285 = *(v278 + 8);
      v286 = v279;
LABEL_44:
      v302 = v280;
      goto LABEL_50;
    case 4u:
      sub_10005C6E8(v76);
      v207 = v664;
      v103 = sub_10048A998(v664, v652);

      swift_unknownObjectRelease();

      sub_10000CD74(v674);
      (*(v661 + 8))(v207, v660);
      return v103;
    case 5u:

      v339 = sub_10000A5D4(&qword_100958DA0);
      v340 = v646;
      sub_100023AD0(v76 + *(v339 + 48), v646, &unk_1009435D0);
      sub_100016E2C(v340, v645, &unk_1009435D0);
      sub_10076B11C();
      swift_allocObject();
      v341 = v652;

      v342 = sub_10076B10C();
      v343 = sub_100492FA4(&qword_100958DA8, &type metadata accessor for SearchChartsAndCategoriesDiffablePagePresenter);
      v344 = sub_1006C7080(v341, v342, v343, _swiftEmptyArrayStorage, 0xD00000000000001DLL, 0x80000001007E9370);
      v345 = objc_allocWithZone(type metadata accessor for SearchChartsAndCategoriesDiffablePageViewController());

      v346 = sub_100481E5C(v342, v344);
      v346[OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_prefersLargeTitle] = 1;
      v103 = v346;
      v347 = [v103 navigationItem];
      [v347 setLargeTitleDisplayMode:3];

      swift_unknownObjectRelease();

      goto LABEL_53;
    case 6u:
      v363 = *v76;
      sub_1006C7080(v652, 0, 0, _swiftEmptyArrayStorage, 0xD000000000000013, 0x80000001007E9350);
      v364 = objc_allocWithZone(type metadata accessor for GalleryViewController());
      v124 = sub_100659738(v363);
      goto LABEL_84;
    case 7u:
      sub_10000A5D4(&qword_1009499F0);

      v287 = v648;
      v288 = v647;
      v289 = v651;
      (*(v648 + 32))(v647, v92, v651);
      v103 = sub_10068D3AC(v288);

      swift_unknownObjectRelease();

      (*(v287 + 8))(v288, v289);
      goto LABEL_87;
    case 8u:
      v382 = v76 + *(sub_10000A5D4(&unk_100964150) + 48);
      v383 = v646;
      sub_100023AD0(v382, v646, &unk_1009435D0);
      sub_100016E2C(v383, v645, &unk_1009435D0);
      sub_10076940C();
      swift_allocObject();

      v384 = v652;

      v385 = sub_1007693FC();

      sub_1007684BC();
      v386 = sub_100492FA4(&qword_100958C70, &type metadata accessor for GenericDiffablePagePresenter);

      v387 = sub_1006C7080(v384, v385, v386, _swiftEmptyArrayStorage, 0x50636972656E6567, 0xEB00000000656761);

      v388 = objc_allocWithZone(type metadata accessor for GenericDiffablePageViewController());
      v103 = sub_1006CBE2C(v385, v387);

      swift_unknownObjectRelease();

      v121 = v383;
      goto LABEL_60;
    case 9u:
      v221 = sub_10000A5D4(&qword_1009499E8);
      v222 = v646;
      sub_100023AD0(v76 + *(v221 + 48), v646, &unk_1009435D0);
      sub_100016E2C(v222, v645, &unk_1009435D0);
      sub_100769D9C();
      swift_allocObject();

      v223 = v652;

      v224 = sub_100769CFC();
      v225 = sub_100492FA4(&qword_100958D40, &type metadata accessor for TopChartsDiffablePagePresenter);

      v226 = sub_1006C7080(v223, v224, v225, _swiftEmptyArrayStorage, 0x7472616843706F74, 0xED00006567615073);

      v227 = objc_allocWithZone(type metadata accessor for TopChartsDiffablePageViewController());
      v103 = sub_1006F5D5C(v224, v226);

      swift_unknownObjectRelease();

      v121 = v222;
      goto LABEL_60;
    case 0xAu:
      v370 = *v76;
      v371 = v76[1];
      v372 = sub_10000A5D4(&qword_100958CB0);
      v373 = v637;
      v374 = v633;
      v375 = v638;
      (*(v637 + 32))(v633, v92 + *(v372 + 64), v638);
      v376 = v613;
      (*(v373 + 16))(v613, v374, v375);
      v377 = (*(v373 + 88))(v376, v375);
      if (v377 == enum case for ShareSheetAction.ShareSheetStyle.expanded(_:))
      {
        v378 = 0;
        v379 = v661;
        v380 = v660;
        v381 = v658;
      }

      else
      {
        v379 = v661;
        v380 = v660;
        v381 = v658;
        if (v377 != enum case for ShareSheetAction.ShareSheetStyle.collapsed(_:))
        {
          (*(v637 + 8))(v613, v638);
        }

        v378 = 1;
      }

      v501 = sub_1006C7080(v652, 0, 0, _swiftEmptyArrayStorage, 0x6568536572616873, 0xEA00000000007465);
      v502 = objc_allocWithZone(type metadata accessor for ActivityViewController());
      v103 = sub_1000521F0(v370, v371, v378, v501);

      swift_unknownObjectRelease();

      (*(v637 + 8))(v633, v638);
      sub_10000CD74(v674);
      (*(v379 + 8))(v664, v380);
      return v103;
    case 0xBu:
      v194 = *v76;
      v195 = v76[1];
      v196 = v76[2];
      v197 = v76[3];
      sub_100016F40(0, &qword_100958CA8);
      v198 = sub_1006C7080(v652, 0, 0, _swiftEmptyArrayStorage, 0xD000000000000012, 0x80000001007E9200);
      v199 = v194;
      v200 = v195;
      v201 = v196;
      v202 = v197;
      v203 = 0;
      goto LABEL_28;
    case 0xCu:
      v217 = *v76;
      v218 = v76[1];
      v219 = v76[2];
      v220 = v76[3];
      sub_100016F40(0, &qword_100958CA8);
      v198 = sub_1006C7080(v652, 0, 0, _swiftEmptyArrayStorage, 0xD00000000000001FLL, 0x80000001007E91E0);
      v199 = v217;
      v200 = v218;
      v201 = v219;
      v202 = v220;
      v203 = 1;
LABEL_28:
      v124 = sub_100560310(v199, v200, v201, v202, v203, v198);
      goto LABEL_84;
    case 0xDu:
      v353 = sub_10000A5D4(&qword_1009499D0);
      v354 = v589;
      v355 = v588;
      v356 = v590;
      (*(v589 + 32))(v588, v76 + *(v353 + 48), v590);
      v357 = v657;
      sub_10076125C();
      (*(v354 + 16))(v579, v355, v356);
      sub_100768CAC();
      swift_allocObject();

      v358 = v652;

      v359 = sub_100768C4C();

      sub_1007684BC();
      v360 = sub_100492FA4(&unk_100958D90, &type metadata accessor for ArcadeDiffablePagePresenter);

      v361 = sub_1006C7080(v358, v359, v360, _swiftEmptyArrayStorage, 0x6150656461637261, 0xEA00000000006567);

      v362 = objc_allocWithZone(type metadata accessor for ArcadeDiffablePageViewController());
      v103 = sub_100097300(v359, v361);

      swift_unknownObjectRelease();

      (*(v354 + 8))(v355, v356);
      goto LABEL_87;
    case 0xEu:
      v176 = *(v76 + *(sub_10000A5D4(&qword_1009499C8) + 64));
      v177 = v646;
      sub_100023AD0(v76, v646, &unk_1009435D0);
      sub_100016E2C(v177, v645, &unk_1009435D0);
      sub_1007676AC();
      swift_allocObject();

      v178 = v652;

      v179 = v657;
      v180 = sub_10076766C();

      sub_100760CBC();
      v181 = sub_100492FA4(&unk_100958D70, &type metadata accessor for ArcadeSubscribePresenter);

      v182 = sub_1006C7080(v178, v180, v181, _swiftEmptyArrayStorage, 0xD000000000000013, 0x80000001007E9310);

      v183 = objc_allocWithZone(type metadata accessor for ArcadeSubscribeViewController());
      sub_10034DB40(v180, v176, v182);
      v103 = v184;

      swift_unknownObjectRelease();

      goto LABEL_77;
    case 0xFu:
      v273 = *v76;
      v274 = v650;

      v275 = sub_1006C7080(v652, 0, 0, _swiftEmptyArrayStorage, 0x6E6974656B72616DLL, 0xED00006D65744967);
      v276 = objc_allocWithZone(type metadata accessor for MarketingItemViewController());
      v124 = sub_10001E428(v273, v649, v274, v275);
      goto LABEL_84;
    case 0x10u:

      v151 = sub_10000A5D4(&qword_1009499C0);
      v152 = v648;
      v153 = v76 + *(v151 + 48);
      v154 = v647;
      v155 = v651;
      (*(v648 + 32))(v647, v153, v651);
      sub_100764F2C();
      swift_allocObject();
      sub_100764F1C();
      v156 = v575;
      sub_100767A8C();
      (*(v152 + 16))(v644, v154, v155);
      v157 = v661;
      v158 = v660;
      (*(v661 + 16))(v573, v156, v660);
      sub_10076AB5C();
      swift_allocObject();
      v159 = v652;

      v160 = sub_10076AABC();
      v161 = sub_100492FA4(&unk_100958D80, &type metadata accessor for ArcadeSeeAllGamesDiffablePagePresenter);
      sub_10000A5D4(&qword_10094F420);
      v162 = swift_allocObject();
      *(v162 + 16) = v643;

      sub_10076F1AC();
      v163 = sub_1006C7080(v159, v160, v161, v162, 0xD000000000000015, 0x80000001007E9330);

      v164 = objc_allocWithZone(type metadata accessor for ArcadeSeeAllGamesDiffablePageViewController());
      v103 = sub_1006C8164(v160, v163);

      swift_unknownObjectRelease();

      v165 = *(v157 + 8);
      v165(v156, v158);
      (*(v152 + 8))(v647, v651);
      sub_10000CD74(v674);
      v165(v664, v158);
      return v103;
    case 0x11u:
      v308 = sub_10000A5D4(&qword_1009499B8);
      v309 = *(v308 + 64);
      v310 = v592;
      v311 = v629;
      v312 = v593;
      (*(v592 + 32))(v629, v76 + *(v308 + 48), v593);
      v313 = v648;
      v314 = v647;
      v315 = v651;
      (*(v648 + 32))(v647, v76 + v309, v651);
      (*(v310 + 16))(v581, v311, v312);
      (*(v313 + 16))(v644, v314, v315);
      sub_1007686AC();
      swift_allocObject();

      v316 = v652;

      v317 = sub_10076868C();
      v318 = sub_100492FA4(&unk_100958D60, &type metadata accessor for ArcadeWelcomePagePresenter);

      v319 = sub_1006C7080(v316, v317, v318, _swiftEmptyArrayStorage, 0xD000000000000011, 0x80000001007E92F0);

      v320 = objc_allocWithZone(type metadata accessor for ArcadeWelcomeViewController());
      v103 = sub_1000ACBB0(v317, v319);

      swift_unknownObjectRelease();

      (*(v313 + 8))(v314, v315);
      (*(v310 + 8))(v629, v312);
      goto LABEL_87;
    case 0x12u:
      sub_10076ADAC();
      swift_allocObject();
      v365 = v652;

      v366 = sub_10076AD5C();
      v367 = sub_100492FA4(&unk_100958D50, &type metadata accessor for ArcadeDownloadPackCategoriesPagePresenter);

      v368 = sub_1006C7080(v365, v366, v367, _swiftEmptyArrayStorage, 0xD000000000000020, 0x80000001007E92C0);

      v369 = objc_allocWithZone(type metadata accessor for ArcadeDownloadPackCategoriesViewController());
      v124 = sub_1005B5620(v366, v368);
      goto LABEL_84;
    case 0x13u:

      swift_unknownObjectRelease();

      sub_10000CD74(v674);
      (*(v661 + 8))(v664, v660);
      return *v76;
    case 0x14u:
      v321 = v648;
      (*(v648 + 32))(v647, v76, v651);
      v322 = v652;
      sub_10076FC1C();
      v323 = sub_10076129C();

      v324 = v627;
      v325 = v626;
      v326 = v628;
      (*(v627 + 104))(v626, enum case for ASKBagContract.AdPlacementBagValue.today(_:), v628);
      LODWORD(v653) = sub_1004894E4(v325, v323, &type metadata accessor for ASKBagContract.AdPlacementBagValue, &qword_100958ED0, &type metadata accessor for ASKBagContract.AdPlacementBagValue);

      (*(v324 + 8))(v325, v326);
      v327 = type metadata accessor for PromotedContentAdvertLifecycleMetricsReporter();
      v328 = swift_allocObject();
      sub_10076CCCC();
      *(v328 + 16) = sub_10076CCBC();
      *(&v672 + 1) = v327;
      v329 = sub_100492FA4(&unk_100958CF0, type metadata accessor for PromotedContentAdvertLifecycleMetricsReporter);
      v673 = v329;
      *&v671 = v328;
      sub_10076A14C();
      swift_allocObject();

      v330 = sub_10076A12C();
      v654 = v330;
      sub_10000A5D4(&qword_10094F420);
      v331 = swift_allocObject();
      *(v331 + 16) = v643;
      *&v671 = v330;
      sub_10076F1AC();
      sub_100768AFC();
      sub_10076FC1C();
      v332 = v646;
      v333 = v651;
      (*(v321 + 16))(v646, v647, v651);
      (*(v321 + 56))(v332, 0, 1, v333);
      *(&v672 + 1) = v327;
      v673 = v329;
      *&v671 = v328;
      sub_100768B9C();
      swift_allocObject();

      v334 = v655;

      v335 = sub_100768B2C();

      sub_1007684BC();
      v336 = sub_100492FA4(&qword_100958D00, &type metadata accessor for TodayDiffablePagePresenter);

      v337 = sub_1006C7080(v322, v335, v336, v331, 0x6761507961646F74, 0xE900000000000065);

      v338 = objc_allocWithZone(type metadata accessor for TodayDiffablePageViewController());
      v103 = sub_1002DAF10(v335, v337);

      swift_unknownObjectRelease();

      v285 = *(v321 + 8);
      v286 = v647;
      v302 = v651;
LABEL_50:
      v285(v286, v302);
      goto LABEL_87;
    case 0x15u:
      v348 = sub_10000A5D4(&qword_100958CE0);
      v340 = v646;
      sub_100023AD0(v76 + *(v348 + 48), v646, &unk_1009435D0);
      sub_100016E2C(v340, v645, &unk_1009435D0);
      sub_10076921C();
      swift_allocObject();

      v349 = v652;

      v350 = sub_10076918C();

      sub_1007684BC();

      v351 = sub_100492FA4(&qword_100958CE8, &type metadata accessor for ArticleDiffablePagePresenter);

      v352 = sub_1006C7080(v349, v350, v351, _swiftEmptyArrayStorage, 0x50656C6369747261, 0xEB00000000656761);

      v103 = sub_1000B7F44(v350, v352, v609 & 1);

      swift_unknownObjectRelease();

LABEL_53:

      v121 = v340;
      goto LABEL_60;
    case 0x16u:
      v415 = *v76;
      sub_10076FC1C();
      v416 = v671;
      v417 = sub_1007612DC();
      if (v415)
      {
        v654 = v416;
        sub_10000A5D4(&unk_100942870);
        v418 = swift_allocObject();
        *(v418 + 1) = xmmword_1007841E0;
        v418[4] = v415;
        v419 = v415;
LABEL_106:
        v651 = v415;
        v650 = v419;
        v516 = v652;
        sub_10076FC1C();
        sub_10000A5D4(&qword_100958D18);
        v669[0] = v418;
        v517 = v617;
        sub_10076F19C();
        sub_10076F60C();
        v518 = *(v642 + 8);
        v519 = v618;
        v518(v517, v618);
        type metadata accessor for ASDPurchaseHistoryContext(0);
        v669[0] = 1;
        sub_10076F19C();
        sub_10076F60C();

        v518(v517, v519);
        LOBYTE(v669[0]) = 1;
        sub_10076F19C();
        v520 = sub_10076F60C();
        v653 = v520;

        v518(v517, v519);
        v521 = sub_10000DD38(v520);
        v649 = v522;
        sub_10076FC1C();
        v523 = v669[0];
        sub_10000A570(&v671, v669);
        sub_10000A5D4(&qword_100958D08);
        v524 = v619;
        v525 = *(v619 + 72);
        v526 = (*(v619 + 80) + 32) & ~*(v619 + 80);
        v527 = swift_allocObject();
        *(v527 + 16) = xmmword_100784500;
        v528 = v527 + v526;
        v529 = *(v524 + 104);
        v530 = v620;
        v529(v528, enum case for PurchasesContentMode.all(_:), v620);
        v529(v528 + v525, enum case for PurchasesContentMode.notOnDevice(_:), v530);
        sub_10076830C();
        swift_allocObject();

        v531 = v650;
        v532 = v523;
        swift_unknownObjectRetain();
        v533 = v649;
        v534 = sub_10076825C();
        v535 = sub_100492FA4(&qword_100958D10, &type metadata accessor for PurchasesContentPresenter);
        sub_10000A5D4(&qword_10094F420);
        v536 = swift_allocObject();
        *(v536 + 16) = v643;
        v669[0] = v521;
        v669[1] = v533;

        sub_10076F1AC();
        v537 = sub_1006C7080(v516, v534, v535, v536, 0x6573616863727570, 0xED00006567615073);

        v538 = objc_allocWithZone(type metadata accessor for PurchasesViewController());
        sub_1004346FC(v534, v537);
        v103 = v539;

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

        sub_10000CD74(&v671);
        goto LABEL_87;
      }

      if ((v417 & 1) == 0)
      {
        v654 = v416;
        v419 = 0;
        v418 = _swiftEmptyArrayStorage;
        goto LABEL_106;
      }

      v511 = v652;
      sub_10076FC1C();
      sub_10076456C();
      swift_allocObject();

      v512 = sub_10076454C();
      v513 = sub_100492FA4(&unk_100958D20, &type metadata accessor for PurchasesPresenter);
      v514 = sub_1006C7080(v511, v512, v513, _swiftEmptyArrayStorage, 0xD000000000000014, 0x80000001007E9280);
      v515 = objc_allocWithZone(type metadata accessor for PurchasesLoadingViewController());
      v103 = sub_100566648(v512, v514);

      swift_unknownObjectRelease();

LABEL_65:

LABEL_86:

      goto LABEL_87;
    case 0x17u:
      v434 = *v76;
      v435 = v76[1];
      v436 = v76[2];
      v437 = sub_1006C7080(v652, 0, 0, _swiftEmptyArrayStorage, 0x6761506775626564, 0xE900000000000065);
      v438 = objc_allocWithZone(type metadata accessor for DebugMenuViewController());
      v124 = sub_1006BD4F0(v437, v434, v435, v436);
      goto LABEL_84;
    case 0x18u:
      sub_10000A5D4(&qword_100958CD0);
      v258 = v648;
      v259 = v647;
      v260 = v651;
      (*(v648 + 32))(v647, v76, v651);
      v261 = v652;
      sub_10076FC1C();
      (*(v258 + 16))(v644, v259, v260);
      sub_10075E9AC();
      swift_allocObject();

      swift_unknownObjectRetain();

      v262 = sub_10075E96C();
      v263 = sub_100492FA4(&qword_100958CD8, &type metadata accessor for InAppPurchaseInstallPagePresenter);

      v264 = sub_1006C7080(v261, v262, v263, _swiftEmptyArrayStorage, 0xD000000000000018, 0x80000001007E9240);

      v265 = objc_allocWithZone(type metadata accessor for InAppPurchaseInstallPageViewController());
      sub_1000D40E4(v262, v264);
      v103 = v266;

      swift_unknownObjectRelease();

      swift_unknownObjectRelease();

      (*(v258 + 8))(v259, v260);
      goto LABEL_87;
    case 0x19u:
      v228 = *(sub_10000A5D4(&unk_100958CC0) + 48);
      v229 = v648;
      v230 = *(v648 + 32);
      v231 = v621;
      v232 = v76;
      v233 = v651;
      v230(v621, v232, v651);
      (*(v623 + 32))(v622, v92 + v228, v624);
      sub_10076FC1C();
      v234 = v614;
      (*(v229 + 16))(v614, v231, v233);
      swift_getObjectType();
      sub_10075EE2C();
      swift_getObjectType();
      v235 = v597;
      sub_10075ED1C();
      v236 = v594;
      v237 = v595;
      if ((*(v594 + 88))(v235, v595) != enum case for LegacyAppState.openable(_:))
      {
        (*(v236 + 8))(v235, v237);
        goto LABEL_114;
      }

      v654 = v230;
      (*(v236 + 96))(v235, v237);
      v238 = *&v235[*(sub_10000A5D4(&unk_100942CF0) + 48)];
      v239 = sub_100764E5C();
      (*(*(v239 - 8) + 8))(v235, v239);
      v240 = v612;
      sub_10075D80C();
      v241 = v567;
      v242 = v566;
      v243 = v568;
      (*(v567 + 104))(v566, enum case for RateAction.Parameter.version(_:), v568);
      sub_10075F92C();
      (*(v241 + 8))(v242, v243);
      v244 = [v238 stringValue];
      sub_10076FF9C();

      v245 = v240;
      sub_10075D7CC();

      v246 = *(v570 + 48);
      v247 = v571;
      v248 = v246(v240, 1, v571);
      v249 = v569;
      if (!v248)
      {
        v250 = sub_10075D7EC();
        if (*v251)
        {
          v252 = v251;
          v653 = v250;
          (*(v572 + 16))(v563, v611, v249);
          v253 = *v252;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *v252 = v253;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v253 = sub_10049DE1C(0, v253[2] + 1, 1, v253);
            *v252 = v253;
          }

          v256 = v253[2];
          v255 = v253[3];
          v257 = (v256 + 1);
          if (v256 >= v255 >> 1)
          {
            v650 = (v256 + 1);
            v558 = sub_10049DE1C(v255 > 1, v256 + 1, 1, v253);
            v257 = v650;
            v253 = v558;
            *v252 = v558;
          }

          v247 = v571;
          v253[2] = v257;
          (*(v572 + 32))(v253 + ((*(v572 + 80) + 32) & ~*(v572 + 80)) + *(v572 + 72) * v256, v563, v249);
          v653(&v671, 0);
        }

        else
        {
          v250(&v671, 0);
          v247 = v571;
        }

        v245 = v612;
      }

      if (v246(v245, 1, v247))
      {
        (*(v572 + 8))(v611, v249);

        v540 = v565;
        (*(v648 + 56))(v565, 1, 1, v651);
LABEL_112:
        sub_10000CFBC(v540, &unk_1009435D0);
        v234 = v614;
        goto LABEL_113;
      }

      v541 = v570;
      v542 = v562;
      (*(v570 + 16))(v562, v245, v247);
      v540 = v565;
      sub_10075D81C();

      (*(v541 + 8))(v542, v247);
      (*(v572 + 8))(v611, v249);
      v543 = v648;
      v544 = v651;
      if ((*(v648 + 48))(v540, 1, v651) == 1)
      {
        goto LABEL_112;
      }

      v234 = v614;
      (*(v543 + 8))(v614, v544);
      (v654)(v234, v540, v544);
LABEL_113:
      sub_10000CFBC(v612, &qword_100958C40);
LABEL_114:
      v545 = objc_allocWithZone(type metadata accessor for ComposeReviewViewController());
      sub_10075DB1C(v546);
      v548 = v547;
      v103 = [v545 initWithCompositionURL:v547];

      if (!v103)
      {
        __break(1u);
        JUMPOUT(0x1004923CCLL);
      }

      v549 = v103;
      v550 = sub_1006C7080(v652, 0, 0, _swiftEmptyArrayStorage, 0xD000000000000010, 0x80000001007E9220);
      v551 = type metadata accessor for ComposeReviewDelegate();
      v552 = objc_allocWithZone(v551);
      *&v552[OBJC_IVAR____TtC20ProductPageExtensionP33_F5913BF55198538BC94C4AFB9B61CBF121ComposeReviewDelegate_selfReference] = 0;
      *&v552[OBJC_IVAR____TtC20ProductPageExtensionP33_F5913BF55198538BC94C4AFB9B61CBF121ComposeReviewDelegate_objectGraph] = v550;
      v670.receiver = v552;
      v670.super_class = v551;
      v553 = objc_msgSendSuper2(&v670, "init");
      v554 = *&v553[OBJC_IVAR____TtC20ProductPageExtensionP33_F5913BF55198538BC94C4AFB9B61CBF121ComposeReviewDelegate_selfReference];
      *&v553[OBJC_IVAR____TtC20ProductPageExtensionP33_F5913BF55198538BC94C4AFB9B61CBF121ComposeReviewDelegate_selfReference] = v553;
      v555 = v553;

      [v549 setDelegate:v555];
      [v549 prepareWithCompletionBlock:0];

      swift_unknownObjectRelease();

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      v556 = *(v648 + 8);
      v557 = v651;
      v556(v234, v651);
      (*(v623 + 8))(v622, v624);
      v556(v621, v557);
LABEL_87:
      sub_10000CD74(v674);
      (*(v661 + 8))(v664, v660);
      return v103;
    case 0x1Au:
      sub_10076966C();
      swift_allocObject();
      v468 = v652;

      v469 = sub_1007695DC();

      sub_1007684BC();
      v470 = sub_100492FA4(&qword_100958CB8, &type metadata accessor for ReviewsDiffablePagePresenter);

      v471 = sub_1006C7080(v468, v469, v470, _swiftEmptyArrayStorage, 0x5073776569766572, 0xEB00000000656761);

      v472 = objc_allocWithZone(type metadata accessor for ReviewsDiffablePageViewController());
      v103 = sub_1004E5304(v469, v471);
      goto LABEL_80;
    case 0x1Bu:
      v134 = v598;
      sub_100023AD0(v76, v598, &unk_1009435D0);
      v135 = v577;
      sub_100016E2C(v134, v577, &unk_1009435D0);
      v136 = v648;
      v137 = v651;
      if ((*(v648 + 48))(v135, 1, v651) == 1)
      {
        sub_10000CFBC(v135, &unk_1009435D0);
        v138 = sub_10075EADC();
        swift_allocObject();
        swift_unknownObjectRetain();
        v139 = v655;
        v140 = sub_10075EACC();
        *(&v672 + 1) = v138;
        v673 = &protocol witness table for ASDInAppPurchaseStateProvider;
        *&v671 = v140;
        sub_10076252C();
        swift_allocObject();

        v141 = v652;

        v142 = v657;
        v143 = v134;
        v144 = v658;
        v145 = sub_1007623DC();
        v146 = sub_100492FA4(&unk_100958D30, &type metadata accessor for AccountPresenter);

        v147 = sub_1006C7080(v141, v145, v146, _swiftEmptyArrayStorage, 0x50746E756F636361, 0xEB00000000656761);

        v148 = objc_allocWithZone(type metadata accessor for AccountViewController());
        v103 = sub_10067F6E4(v145, v147);

        swift_unknownObjectRelease();

        v121 = v143;
LABEL_60:
        sub_10000CFBC(v121, &unk_1009435D0);
      }

      else
      {
        v479 = v564;
        (*(v136 + 32))(v564, v135, v137);
        v480 = v646;
        (*(v136 + 16))(v646, v479, v137);
        (*(v136 + 56))(v480, 0, 1, v137);
        sub_100768EEC();
        swift_allocObject();
        v481 = v652;

        v482 = sub_100768E4C();
        v483 = sub_100492FA4(&qword_100958D48, &type metadata accessor for GenericAccountPagePresenter);

        v484 = sub_1006C7080(v481, v482, v483, _swiftEmptyArrayStorage, 0xD000000000000012, 0x80000001007E92A0);

        v485 = type metadata accessor for GenericAccountPageViewController();
        v486 = objc_allocWithZone(v485);
        *&v486[OBJC_IVAR____TtC20ProductPageExtension32GenericAccountPageViewController_overlayViewController] = 0;
        *&v486[OBJC_IVAR____TtC20ProductPageExtension32GenericAccountPageViewController_presenter] = v482;
        *&v486[OBJC_IVAR____TtC20ProductPageExtension32GenericAccountPageViewController_objectGraph] = v484;
        v668.receiver = v486;
        v668.super_class = v485;
        v103 = objc_msgSendSuper2(&v668, "initWithStyle:", 2);

        swift_unknownObjectRelease();

        (*(v136 + 8))(v479, v137);
        sub_10000CFBC(v134, &unk_1009435D0);
      }

      goto LABEL_87;
    case 0x1Cu:
      v439 = v584;
      sub_100023AD0(v76, v584, &unk_1009435D0);
      v440 = v578;
      sub_100016E2C(v439, v578, &unk_1009435D0);
      v441 = v648;
      v442 = v651;
      if ((*(v648 + 48))(v440, 1, v651) == 1)
      {
        v444 = 0;
      }

      else
      {
        sub_10075DB1C(v443);
        v444 = v503;
        (*(v441 + 8))(v440, v442);
      }

      v504 = v661;
      v505 = v660;
      v506 = v658;
      v507 = v657;
      v508 = [objc_allocWithZone(type metadata accessor for AccountPageViewController()) initWithAccountURL:v444];

      v509 = objc_allocWithZone(type metadata accessor for AccountPageViewControllerDelegate());
      v103 = v508;
      v510 = [v509 init];
      [v103 setDelegate:v510];

      [v103 prepareWithCompletionBlock:0];

      swift_unknownObjectRelease();

      sub_10000CFBC(v439, &unk_1009435D0);
      sub_10000CD74(v674);
      (*(v504 + 8))(v664, v505);
      return v103;
    case 0x1Du:
      v445 = *(sub_10000A5D4(&qword_1009499D8) + 48);
      v446 = v648;
      v447 = v647;
      v448 = v651;
      (*(v648 + 32))(v647, v76, v651);
      v449 = v76 + v445;
      v450 = v607;
      sub_100023AD0(v449, v607, &qword_1009499B0);
      v451 = v652;
      sub_10076F63C();
      (*(v446 + 16))(v644, v447, v448);
      v452 = v450;
      sub_100016E2C(v450, v599, &qword_1009499B0);
      sub_1007678BC();
      swift_allocObject();

      v453 = sub_1007678AC();

      sub_1007684BC();
      v454 = sub_100492FA4(&qword_100958CA0, &type metadata accessor for MSODiffablePagePresenter);

      v455 = sub_1006C7080(v451, v453, v454, _swiftEmptyArrayStorage, 0x656761506F736DLL, 0xE700000000000000);

      v456 = objc_allocWithZone(type metadata accessor for MSODiffablePageViewController());
      *&v456[qword_10099CA58] = 0x3FF0000000000000;
      *&v456[qword_100944BA0] = 0;
      *&v456[qword_100944BA8] = 0x4034000000000000;
      v456[qword_10099CA60] = 0;
      *&v456[qword_100944BB0] = 0;
      v103 = sub_100486428(v453, v455);

      swift_unknownObjectRelease();

      sub_10000CFBC(v452, &qword_1009499B0);
      (*(v446 + 8))(v647, v448);
      goto LABEL_87;
    case 0x1Eu:
      (*(v648 + 56))(v646, 1, 1, v651);
      sub_10076573C();
      v671 = 0u;
      v672 = 0u;
      v673 = 0;
      swift_allocObject();

      v389 = v652;

      v390 = sub_10076572C();

      sub_100760CBC();
      v391 = sub_100492FA4(&qword_100958C78, &type metadata accessor for GenericPagePresenter);

      v392 = sub_1006C7080(v389, v390, v391, _swiftEmptyArrayStorage, 0xD000000000000012, 0x80000001007E91C0);

      v393 = objc_allocWithZone(type metadata accessor for VersionHistoryViewController());
      sub_10034D858(v390, v392);
      v103 = v394;

      swift_unknownObjectRelease();

      goto LABEL_86;
    case 0x1Fu:
      v303 = *v76;
      type metadata accessor for OnboardingPresenter();
      v304 = swift_allocObject();
      *(v304 + 16) = v303;
      *(v304 + 24) = v662;

      *(v304 + 32) = sub_1005CC9D4(v305, v303);
      v306 = objc_allocWithZone(type metadata accessor for OnboardingViewController());

      v103 = sub_1006FDB6C(v307, sub_100489DD8, 0);
      if (qword_100941550 != -1)
      {
        swift_once();
      }

      swift_unknownObjectWeakAssign();
LABEL_80:

      goto LABEL_85;
    case 0x20u:
      v185 = *v76;
      v186 = v634;
      (*(v631 + 104))(v634, enum case for Shelf.ContentType.reviews(_:), v632);

      v187 = sub_1006C7080(v652, 0, 0, _swiftEmptyArrayStorage, 0xD000000000000010, 0x80000001007E91A0);
      v188 = objc_allocWithZone(type metadata accessor for ComponentViewOverflowViewController());
      v189 = &unk_100952E68;
      v190 = &type metadata accessor for Review;
      v191 = &type metadata accessor for Review;
      goto LABEL_63;
    case 0x21u:
      v185 = *v76;
      v186 = v634;
      (*(v631 + 104))(v634, enum case for Shelf.ContentType.editorsChoice(_:), v632);

      v187 = sub_1006C7080(v652, 0, 0, _swiftEmptyArrayStorage, 0xD000000000000017, 0x80000001007E9180);
      v188 = objc_allocWithZone(type metadata accessor for ComponentViewOverflowViewController());
      v189 = &unk_100958F40;
      v190 = &type metadata accessor for EditorsChoice;
      v191 = &type metadata accessor for EditorsChoice;
LABEL_63:
      v103 = sub_10048AE60(v185, v186, v187, v188, v190, v189, v191);

      [v103 setModalPresentationStyle:4];

      goto LABEL_85;
    case 0x22u:
      v149 = *v76;
      v150 = v76[1];
      v103 = [objc_allocWithZone(GKLeaderboardScoreViewController) initWithGameRecord:v150 leaderboard:*v76];

      swift_unknownObjectRelease();

      goto LABEL_86;
    case 0x23u:
      sub_10076CBDC();
      sub_100016E2C(v635, &v671, &unk_10094A8A0);
      v124 = sub_10076CBCC();
      goto LABEL_84;
    case 0x24u:
      v126 = *v76;
      v125 = v76[1];
      v127 = enum case for GameLayerAchievementsEntryPoint.achievementsByGame(_:);
      v128 = sub_10076C93C();
      v129 = *(v128 - 8);
      v130 = v606;
      (*(v129 + 104))(v606, v127, v128);
      (*(v129 + 56))(v130, 0, 1, v128);
      if (*(v125 + 16) == 1)
      {
      }

      sub_10076C92C();
      swift_allocObject();
      v131 = v126;
      sub_10076C91C();
      v132 = sub_10076C9DC();
      (*(*(v132 - 8) + 56))(v608, 1, 1, v132);
      v133 = objc_allocWithZone(sub_10076C95C());
      v103 = sub_10076C94C();

      goto LABEL_85;
    case 0x25u:
      v113 = sub_10000A5D4(&unk_100964150);
      v114 = v646;
      sub_100023AD0(v76 + *(v113 + 48), v646, &unk_1009435D0);
      sub_100016E2C(v114, v645, &unk_1009435D0);
      sub_10076573C();
      v671 = 0u;
      v672 = 0u;
      v673 = 0;
      swift_allocObject();

      v115 = v652;

      v116 = sub_10076572C();

      sub_100760CBC();
      v117 = sub_100492FA4(&qword_100958C78, &type metadata accessor for GenericPagePresenter);

      v118 = sub_1006C7080(v115, v116, v117, _swiftEmptyArrayStorage, 0xD000000000000011, 0x80000001007E9160);

      v119 = objc_allocWithZone(type metadata accessor for PrivacyDetailViewController());
      sub_100625914(v116, v118);
      v103 = v120;

      swift_unknownObjectRelease();

      v121 = v114;
      goto LABEL_60;
    case 0x26u:
      v457 = sub_10000A5D4(&unk_100964150);
      v177 = v646;
      sub_100023AD0(v76 + *(v457 + 48), v646, &unk_1009435D0);
      sub_100016E2C(v177, v645, &unk_1009435D0);
      sub_10076573C();
      v671 = 0u;
      v672 = 0u;
      v673 = 0;
      swift_allocObject();

      v458 = v652;

      v459 = sub_10076572C();

      sub_100760CBC();
      v460 = sub_100492FA4(&qword_100958C78, &type metadata accessor for GenericPagePresenter);

      v461 = sub_1006C7080(v458, v459, v460, _swiftEmptyArrayStorage, 0xD000000000000016, 0x80000001007E9140);

      v462 = objc_allocWithZone(type metadata accessor for PrivacyDefinitionsViewController());
      type metadata accessor for PrivacyDefinitionsDataSource();
      swift_allocObject();
      v463 = swift_retain_n();
      v464 = sub_100489D00(v463);

      v103 = sub_1004895EC(v459, v464, v461);
      sub_100492FA4(&unk_100958C80, type metadata accessor for PrivacyDefinitionsViewController);
      v465 = v103;

      v466 = v465;
      sub_1007676FC();

      v466[OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_prefersLargeTitle] = 0;
      v467 = [v466 navigationItem];
      [v467 setLargeTitleDisplayMode:2];

      swift_unknownObjectRelease();

LABEL_77:
      v121 = v177;
      goto LABEL_60;
    case 0x27u:
      v420 = sub_10000A5D4(&unk_100964150);
      v421 = v646;
      sub_100023AD0(v76 + *(v420 + 48), v646, &unk_1009435D0);
      sub_100016E2C(v421, v645, &unk_1009435D0);
      sub_10076940C();
      swift_allocObject();

      v422 = v652;

      v423 = sub_1007693FC();

      sub_1007684BC();
      v424 = sub_100492FA4(&qword_100958C70, &type metadata accessor for GenericDiffablePagePresenter);

      v425 = sub_1006C7080(v422, v423, v424, _swiftEmptyArrayStorage, 0xD000000000000018, 0x80000001007E9120);

      v426 = objc_allocWithZone(type metadata accessor for AccessibilityDetailsViewController());
      *&v426[qword_10099CA58] = 0x3FF0000000000000;
      *&v426[qword_100944BA0] = 0;
      *&v426[qword_100944BA8] = 0x4034000000000000;
      v426[qword_10099CA60] = 0;
      *&v426[qword_100944BB0] = 0;
      v103 = sub_100483C38(v423, v425);

      swift_unknownObjectRelease();

      v121 = v421;
      goto LABEL_60;
    case 0x28u:
      v208 = v76[1];
      sub_10075F07C();
      swift_allocObject();
      v209 = v652;

      v210 = sub_10075F03C();

      sub_100760CBC();

      v211 = sub_100492FA4(&unk_100958C60, &type metadata accessor for AppEventDetailPagePresenter);

      v212 = sub_1006C7080(v209, v210, v211, _swiftEmptyArrayStorage, 0xD000000000000012, 0x80000001007E9100);

      v213 = objc_allocWithZone(type metadata accessor for AppEventDetailPageViewController());
      v214 = v208;

      sub_100667AC0(v210, v212, v208);
      v103 = v215;
      [v103 setModalPresentationStyle:4];
      v216 = OBJC_IVAR____TtC20ProductPageExtension32AppEventDetailPageViewController_containerTransitioningDelegate;
      goto LABEL_71;
    case 0x29u:
    case 0x2Au:
      v427 = v76[1];
      sub_10075F11C();
      swift_allocObject();
      v428 = v652;

      v429 = sub_10075F0DC();

      sub_100760CBC();

      v430 = sub_100492FA4(&qword_100958C58, &type metadata accessor for AppPromotionDetailPagePresenter);

      v431 = sub_1006C7080(v428, v429, v430, _swiftEmptyArrayStorage, 0xD000000000000016, 0x80000001007E90E0);

      v432 = objc_allocWithZone(type metadata accessor for AppPromotionDetailPageViewController());
      v214 = v427;

      sub_1003A7D38(v429, v431, v427);
      v103 = v433;
      [v103 setModalPresentationStyle:4];
      v216 = OBJC_IVAR____TtC20ProductPageExtension36AppPromotionDetailPageViewController_containerTransitioningDelegate;
LABEL_71:
      [v103 setTransitioningDelegate:*&v103[v216]];

      swift_unknownObjectRelease();

      sub_10000CD74(v674);
      (*(v661 + 8))(v664, v660);

      return v103;
    case 0x2Bu:
      v103 = *v76;
      v104 = sub_10000A5D4(&unk_100958C90);
      v105 = v604;
      v106 = v603;
      v107 = v605;
      (*(v604 + 32))(v603, v76 + *(v104 + 48), v605);
      type metadata accessor for ComponentViewOverflowViewController();
      if (swift_dynamicCastClass())
      {
        v108 = v103;
        sub_1003E5B60(v106);

        v109 = v658;
        v110 = v108;
        v111 = v661;
        v112 = v660;
      }

      else
      {
        v111 = v661;
        v112 = v660;
        v110 = v658;
        v109 = v657;
      }

      swift_unknownObjectRelease();

      (*(v105 + 8))(v106, v107);
      sub_10000CD74(v674);
      (*(v111 + 8))(v664, v112);
      return v103;
    case 0x2Cu:
      v166 = sub_10075EADC();
      swift_allocObject();
      swift_unknownObjectRetain();
      v167 = v655;
      v168 = sub_10075EACC();
      *(&v672 + 1) = v166;
      v673 = &protocol witness table for ASDInAppPurchaseStateProvider;
      *&v671 = v168;
      sub_10076252C();
      swift_allocObject();

      v169 = v652;

      v170 = v657;
      v171 = v658;
      v172 = sub_1007623DC();
      v173 = sub_100492FA4(&unk_100958D30, &type metadata accessor for AccountPresenter);

      v174 = sub_1006C7080(v169, v172, v173, _swiftEmptyArrayStorage, 0x50746E756F636361, 0xEB00000000656761);

      v175 = objc_allocWithZone(type metadata accessor for AccountViewController());
      v103 = sub_10067F6E4(v172, v174);

      swift_unknownObjectRelease();

      goto LABEL_86;
    case 0x2Du:
      type metadata accessor for ASDPurchaseHistoryContext(0);
      *&v671 = 1;
      v395 = v617;
      sub_10076F19C();
      v396 = v652;
      sub_10076F60C();
      v397 = *(v642 + 8);
      v398 = v618;
      v397(v395, v618);
      LOBYTE(v671) = 1;
      sub_10076F19C();
      v399 = sub_10076F60C();
      v654 = v399;

      v397(v395, v398);
      v400 = sub_10000DD38(v399);
      v653 = v401;
      sub_10076F5CC();
      v651 = v400;
      swift_unknownObjectRetain();
      sub_10076F5CC();
      sub_10000A5D4(&qword_100958D08);
      v402 = v619;
      v403 = (*(v619 + 80) + 32) & ~*(v619 + 80);
      v404 = swift_allocObject();
      *(v404 + 16) = v643;
      v405 = enum case for PurchasesContentMode.hidden(_:);
      v406 = *(v402 + 104);
      v407 = v620;
      v406(v404 + v403, enum case for PurchasesContentMode.hidden(_:), v620);
      sub_10076830C();
      swift_allocObject();

      v408 = v653;
      v409 = sub_10076825C();
      v406(v596, v405, v407);
      sub_1007682AC();
      v410 = sub_100492FA4(&qword_100958D10, &type metadata accessor for PurchasesContentPresenter);
      sub_10000A5D4(&qword_10094F420);
      v411 = swift_allocObject();
      *(v411 + 16) = v643;
      *&v671 = v651;
      *(&v671 + 1) = v408;

      sub_10076F1AC();
      v412 = sub_1006C7080(v396, v409, v410, v411, 0xD000000000000013, 0x80000001007E9260);

      v413 = objc_allocWithZone(type metadata accessor for PurchasesViewController());
      sub_1004346FC(v409, v412);
      v103 = v414;

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      goto LABEL_65;
    case 0x2Eu:
      type metadata accessor for ComingSoonViewController();
      v124 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      goto LABEL_84;
    case 0x2Fu:
      sub_100768AFC();
      sub_10076F63C();
      v122 = v671;
      v123 = objc_allocWithZone(type metadata accessor for DebugTodayCardTriggerViewController());
      v124 = sub_10060AADC(v122);
      goto LABEL_84;
    case 0x30u:
      sub_100769B8C();
      swift_allocObject();

      v192 = sub_100769AEC();
      v193 = objc_allocWithZone(type metadata accessor for DebugStorefrontPickerViewController());
      v124 = sub_1004FB358(v192);
      goto LABEL_84;
    case 0x31u:
      v204 = sub_10076147C();
      v205 = objc_allocWithZone(AMSUINotificationSettingsViewController);
      v206 = sub_10076FF6C();
      v103 = [v205 initWithIdentifier:v206 bag:v204];

      swift_unknownObjectRelease();

      swift_unknownObjectRelease();
      goto LABEL_86;
    case 0x32u:
      v101 = [objc_allocWithZone(GKDashboardRequest) init];
      [v101 setState:4];
      sub_10076CBAC();
      (*(v600 + 104))(v602, enum case for DashboardLaunchContext.appStore(_:), v601);
      sub_100016E2C(v635, &v671, &unk_10094A8A0);
      v102 = v101;
      v103 = sub_10076CB9C();

      goto LABEL_85;
    case 0x33u:
      sub_10076AD1C();
      swift_allocObject();
      v473 = v652;

      v474 = sub_10076ACFC();
      v475 = sub_100492FA4(&qword_100958C50, &type metadata accessor for PersonalizationTransparencyPagePresenter);

      v476 = sub_1006C7080(v473, v474, v475, _swiftEmptyArrayStorage, 0xD00000000000001FLL, 0x80000001007E90C0);

      v477 = objc_allocWithZone(type metadata accessor for PersonalizationTransparencyPageViewController());
      v124 = sub_1004D7434(v474, v476);
LABEL_84:
      v103 = v124;
LABEL_85:

      swift_unknownObjectRelease();

      goto LABEL_86;
    case 0x34u:

      swift_unknownObjectRelease();

      sub_10000CD74(v674);
      (*(v661 + 8))(v664, v660);
      return 0;
    default:
      v93 = sub_10000A5D4(&qword_100949A00);
      v654 = *(v76 + v93[12]);
      v647 = *(v76 + v93[20]);
      v653 = *(v76 + v93[24]);
      (*(v648 + 32))(v640, v76, v651);
      LODWORD(v646) = sub_10076141C();
      sub_1007613FC();
      v94 = sub_10076129C();
      v95 = v627;
      v96 = *(v627 + 104);
      v97 = v626;
      v98 = v628;
      v96(v626, enum case for ASKBagContract.AdPlacementBagValue.productPageYMAL(_:), v628);
      v99 = sub_1004894E4(v97, v94, &type metadata accessor for ASKBagContract.AdPlacementBagValue, &qword_100958ED0, &type metadata accessor for ASKBagContract.AdPlacementBagValue);

      v100 = *(v95 + 8);
      v100(v97, v98);
      if (v99)
      {
        LODWORD(v644) = 1;
      }

      else
      {
        v487 = sub_10076129C();
        v96(v97, enum case for ASKBagContract.AdPlacementBagValue.productPageYMALDuringDownload(_:), v98);
        LODWORD(v644) = sub_1004894E4(v97, v487, &type metadata accessor for ASKBagContract.AdPlacementBagValue, &qword_100958ED0, &type metadata accessor for ASKBagContract.AdPlacementBagValue);

        v100(v97, v98);
      }

      v488 = type metadata accessor for PromotedContentAdvertLifecycleMetricsReporter();
      v489 = swift_allocObject();
      sub_10076CCCC();
      *(v489 + 16) = sub_10076CCBC();
      *(&v672 + 1) = v488;
      v490 = sub_100492FA4(&unk_100958CF0, type metadata accessor for PromotedContentAdvertLifecycleMetricsReporter);
      v673 = v490;
      *&v671 = v489;
      sub_10076A14C();
      swift_allocObject();
      v491 = v489;

      v492 = sub_10076A12C();
      v645 = v492;
      sub_10000A5D4(&qword_10094F420);
      v493 = swift_allocObject();
      *(v493 + 16) = v643;
      *&v671 = v492;
      sub_10076F1AC();
      (*(v648 + 16))(v585, v640, v651);
      sub_10000A570(v674, &v671);
      v669[3] = v574;
      v669[4] = &protocol witness table for Restrictions;
      v669[0] = v663;

      v494 = sub_1007706EC();
      v495 = &enum case for ProductDiffablePagePresenter.PageWidth.compact(_:);
      if ((v494 & 1) == 0)
      {
        v495 = &enum case for ProductDiffablePagePresenter.PageWidth.regular(_:);
      }

      (*(v586 + 104))(v591, *v495, v587);
      v667 = v490;
      v666 = v488;
      v641 = v491;
      v665 = v491;
      sub_100016E2C(v636, v630, &unk_100958150);
      sub_1007695CC();
      swift_allocObject();

      v496 = v652;

      swift_unknownObjectRetain();

      v497 = sub_10076951C();
      sub_100761FAC();

      sub_100761F8C();
      sub_100761F7C();

      sub_10076845C();

      sub_1007684BC();

      v498 = sub_100492FA4(&qword_100958DD0, &type metadata accessor for ProductDiffablePagePresenter);

      v499 = sub_1006C7080(v496, v497, v498, v493, 0x50746375646F7270, 0xEB00000000656761);

      v500 = objc_allocWithZone(type metadata accessor for ProductDiffablePageViewController());
      v103 = sub_1006E4468(v497, v499);

      swift_unknownObjectRelease();

      (*(v648 + 8))(v640, v651);
      goto LABEL_87;
  }
}

uint64_t sub_1004924A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&unk_10094E1F0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100492510()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100492564()
{

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1004925B0(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_10000CE78(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100492604()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100492648(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100492660()
{

  return _swift_deallocObject(v0, 24, 7);
}

void sub_100492698()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR____TtC20ProductPageExtensionP33_F5913BF55198538BC94C4AFB9B61CBF133AccountPageViewControllerDelegate_selfReference);
  *(v1 + OBJC_IVAR____TtC20ProductPageExtensionP33_F5913BF55198538BC94C4AFB9B61CBF133AccountPageViewControllerDelegate_selfReference) = 0;
}

uint64_t sub_1004926B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v64 = a2;
  v65 = a3;
  v4 = sub_10000A5D4(&unk_100958150);
  __chkstk_darwin(v4 - 8);
  v63 = &v60 - v5;
  v6 = sub_10000A5D4(&unk_10094A890);
  __chkstk_darwin(v6 - 8);
  v8 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v60 - v10;
  __chkstk_darwin(v12);
  v14 = &v60 - v13;
  v15 = type metadata accessor for FlowDestination();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v62 = &v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v60 = &v60 - v19;
  __chkstk_darwin(v20);
  v22 = (&v60 - v21);
  __chkstk_darwin(v23);
  v25 = &v60 - v24;

  sub_10076B87C();
  sub_10012062C(a1, v68, v14);
  v26 = *(v16 + 48);
  v27 = v26(v14, 1, v15);
  v61 = v8;
  if (v27 == 1)
  {
    swift_storeEnumTagMultiPayload();
    if (v26(v14, 1, v15) != 1)
    {
      sub_10000CFBC(v14, &unk_10094A890);
    }
  }

  else
  {
    sub_10005DAD8(v14, v25);
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_10005C6E8(v25);
  type metadata accessor for NavigationBarManualCheckLayoutMarginsChange();
  if (EnumCaseMultiPayload == 2)
  {
    v29 = objc_allocWithZone(type metadata accessor for WebNavigationController());
    *&v29[OBJC_IVAR____TtC20ProductPageExtension25StoreNavigationController_objectGraph] = v65;
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v31 = type metadata accessor for StoreNavigationController();
    v66.receiver = v29;
    v66.super_class = v31;

    v32 = objc_msgSendSuper2(&v66, "initWithNavigationBarClass:toolbarClass:", ObjCClassFromMetadata, 0);
  }

  else
  {
    v31 = type metadata accessor for StoreNavigationController();
    v33 = objc_allocWithZone(v31);
    *&v33[OBJC_IVAR____TtC20ProductPageExtension25StoreNavigationController_objectGraph] = v65;
    v34 = swift_getObjCClassFromMetadata();
    v69.receiver = v33;
    v69.super_class = v31;

    v32 = objc_msgSendSuper2(&v69, "initWithNavigationBarClass:toolbarClass:", v34, 0);
  }

  v35 = v32;
  [v35 setDelegate:v35];
  type metadata accessor for StoreNavigationController();
  v68[3] = v31;
  v68[4] = sub_100492FA4(&qword_1009435A0, type metadata accessor for StoreNavigationController);
  v68[0] = v35;

  sub_10076B87C();
  sub_10012062C(a1, v67, v11);
  if (v26(v11, 1, v15) == 1)
  {
    swift_storeEnumTagMultiPayload();
    if (v26(v11, 1, v15) != 1)
    {
      sub_10000CFBC(v11, &unk_10094A890);
    }
  }

  else
  {
    sub_10005DAD8(v11, v22);
  }

  v36 = sub_10075F57C();
  v38 = v37;
  v39 = v63;
  sub_10075F59C();
  v40 = sub_10048B0C0(v22, v64, v36, v38, v39, v68, v65, 1);

  sub_10000CFBC(v39, &unk_100958150);
  sub_10005C6E8(v22);
  sub_10000CFBC(v68, &unk_10094A8A0);
  if (!v40)
  {

    return 0;
  }

  sub_10076B87C();
  v41 = v61;
  sub_10012062C(a1, v68, v61);
  if (v26(v41, 1, v15) == 1)
  {
    v42 = v60;
    swift_storeEnumTagMultiPayload();
    v43 = v26(v41, 1, v15);
    v44 = v62;
    if (v43 != 1)
    {
      sub_10000CFBC(v41, &unk_10094A890);
    }
  }

  else
  {
    v42 = v60;
    sub_10005DAD8(v41, v60);
    v44 = v62;
  }

  sub_10005DAD8(v42, v44);
  v46 = swift_getEnumCaseMultiPayload();
  if (v46 == 14)
  {
    sub_10000A5D4(&qword_1009499C8);

    sub_10000CFBC(v44, &unk_1009435D0);
    goto LABEL_30;
  }

  if (v46 == 15 || v46 == 18)
  {
    sub_10005C6E8(v44);
LABEL_30:
    sub_10000A5D4(&unk_100942870);
    v56 = swift_allocObject();
    *(v56 + 16) = xmmword_1007841E0;
    *(v56 + 32) = v40;
    sub_100016F40(0, &qword_1009453B0);
    v45 = v35;
    v57 = v40;
    isa = sub_1007701AC().super.isa;

    [v45 setViewControllers:isa];

    return v45;
  }

  sub_10005C6E8(v44);
  v47 = swift_allocObject();
  swift_unknownObjectWeakInit();

  if (sub_1003BE8F8(v40))
  {

    goto LABEL_30;
  }

  v48 = [v40 navigationItem];
  v49 = [v48 rightBarButtonItems];
  if (v49)
  {
    v50 = v49;
    v51 = v40;
    sub_100016F40(0, &qword_100958FF0);
    v52 = sub_1007701BC();
  }

  else
  {
    v51 = v40;
    v52 = _swiftEmptyArrayStorage;
  }

  v68[0] = v52;
  sub_100016F40(0, &qword_100958FF0);
  sub_100016F40(0, &qword_1009641D0);
  v53 = swift_allocObject();
  *(v53 + 16) = sub_100492FEC;
  *(v53 + 24) = v47;

  v70.value.super.super.isa = sub_100770F1C();
  v70.is_nil = 0;
  v54.super.super.isa = sub_10077054C(UIBarButtonSystemItemClose, v70, v71).super.super.isa;
  if (!(v52 >> 62) || (result = sub_10077158C(), (result & 0x8000000000000000) == 0))
  {
    sub_10061BDB0(0, 0, v54.super.super.isa);
    v55 = sub_1007701AC().super.isa;

    [v48 setRightBarButtonItems:v55];

    v40 = v51;
    goto LABEL_30;
  }

  __break(1u);
  return result;
}

uint64_t sub_100492FA4(unint64_t *a1, void (*a2)(uint64_t))
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

double sub_100493044(double a1, double a2)
{
  v5 = sub_10076443C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v32 - v10;
  v12 = sub_100763ADC();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v32 - v17;
  v19 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension16FooterLockupView_lockupView);
  if (v19)
  {
    v33 = v8;
    v20 = v5;
    v21 = v19;
    sub_100353408(v18);
    [v21 layoutMargins];
    v22 = [v21 traitCollection];
    (*(v13 + 16))(v15, v18, v12);
    v23 = sub_100763A4C();
    if ((v25 & 1) == 0 && ((v23 | v24) & 0x7FFFFFFFFFFFFFFFLL) == 0)
    {
      if (sub_10077071C())
      {
        if (qword_10093F520 != -1)
        {
          swift_once();
        }

        v26 = qword_100944C88;
      }

      else
      {
        if (qword_10093F528 != -1)
        {
          swift_once();
        }

        v26 = qword_100944CA0;
      }

      v28 = sub_10000A61C(v20, v26);
      v29 = v33;
      (*(v6 + 16))(v33, v28, v20);
      (*(v6 + 32))(v11, v29, v20);
      sub_1007643EC();
      sub_10076441C();
      sub_100763A5C();
      (*(v6 + 8))(v11, v20);
    }

    sub_10076398C();

    v30 = *(v13 + 8);
    v30(v15, v12);

    v30(v18, v12);
  }

  else
  {
    v27 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension16FooterLockupView_arcadeLockupView);
    if (v27)
    {
      [v27 sizeThatFits:{a1, a2}];
    }

    else
    {
      return 0.0;
    }
  }

  return a1;
}

uint64_t sub_10049340C()
{
  v0 = sub_100763ADC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000DB18(v4, qword_10099FBD0);
  sub_10000A61C(v0, qword_10099FBD0);
  if (qword_10093FBE0 != -1)
  {
    swift_once();
  }

  v5 = sub_10000A61C(v0, qword_10099DDA0);
  (*(v1 + 16))(v3, v5, v0);
  sub_10076C13C();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_100493570(uint64_t a1)
{
  v2 = sub_10076D1AC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = a1;
  sub_1007639BC();
  if (qword_100940A58 != -1)
  {
    swift_once();
  }

  v6 = sub_10076D3DC();
  v45 = sub_10000A61C(v6, qword_1009A0D18);
  v7 = *(v6 - 8);
  v8 = *(v7 + 16);
  v9 = v7 + 16;
  v41 = v6;
  v8(v5, v45, v6);
  v46 = enum case for FontSource.useCase(_:);
  v10 = v3 + 13;
  v48 = v3[13];
  v48(v5);
  v39 = sub_10076D9AC();
  v53 = v39;
  v54 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v52);
  v50 = v2;
  v51 = &protocol witness table for FontSource;
  v11 = sub_10000DB7C(v49);
  v12 = v3 + 2;
  v36 = v3[2];
  v36(v11, v5, v2);
  sub_10076D9BC();
  v14 = v3[1];
  v13 = v3 + 1;
  v43 = v14;
  v14(v5, v2);
  sub_100763AAC();
  v15 = v6;
  v16 = v8;
  v8(v5, v45, v15);
  v17 = v46;
  (v48)(v5, v46, v2);
  v53 = v39;
  v54 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v52);
  v50 = v2;
  v51 = &protocol witness table for FontSource;
  v18 = sub_10000DB7C(v49);
  v19 = v36;
  v36(v18, v5, v2);
  sub_10076D9BC();
  v43(v5, v2);
  sub_100763A7C();
  v44 = v9;
  v42 = v16;
  v16(v5, v45, v41);
  v20 = v17;
  v21 = v39;
  v45 = v10;
  (v48)(v5, v20, v2);
  v53 = v21;
  v54 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v52);
  v50 = v2;
  v51 = &protocol witness table for FontSource;
  v22 = sub_10000DB7C(v49);
  v19(v22, v5, v2);
  sub_10076D9BC();
  v43(v5, v2);
  sub_100763A6C();
  if (qword_100940A40 != -1)
  {
    swift_once();
  }

  v23 = v41;
  v24 = sub_10000A61C(v41, qword_1009A0CD0);
  v42(v5, v24, v23);
  (v48)(v5, v46, v2);
  v53 = v21;
  v54 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v52);
  v50 = v2;
  v51 = &protocol witness table for FontSource;
  v25 = sub_10000DB7C(v49);
  v19(v25, v5, v2);
  sub_10076D9BC();
  v38 = v12;
  v26 = v43;
  v43(v5, v2);
  sub_100763ACC();
  v40 = v13;
  if (qword_100940A80 != -1)
  {
    swift_once();
  }

  v37 = sub_10000A61C(v23, qword_1009A0D90);
  (v42)(v5);
  (v48)(v5, v46, v2);
  v53 = v21;
  v54 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v52);
  v50 = v2;
  v51 = &protocol witness table for FontSource;
  v27 = sub_10000DB7C(v49);
  v19(v27, v5, v2);
  sub_10076D9BC();
  v26(v5, v2);
  sub_100763A2C();
  if (qword_100940AA0 != -1)
  {
    swift_once();
  }

  v28 = sub_10000A61C(v23, qword_1009A0DF0);
  v42(v5, v28, v23);
  (v48)(v5, v46, v2);
  v53 = v21;
  v54 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v52);
  v50 = v2;
  v51 = &protocol witness table for FontSource;
  v29 = sub_10000DB7C(v49);
  v19(v29, v5, v2);
  sub_10076D9BC();
  v26(v5, v2);
  sub_100763ABC();
  if (qword_100940A88 != -1)
  {
    swift_once();
  }

  v30 = sub_10000A61C(v23, qword_1009A0DA8);
  v31 = v42;
  v42(v5, v30, v23);
  (v48)(v5, v46, v2);
  v53 = v21;
  v54 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v52);
  v50 = v2;
  v51 = &protocol witness table for FontSource;
  v32 = sub_10000DB7C(v49);
  v19(v32, v5, v2);
  sub_10076D9BC();
  v33 = v43;
  v43(v5, v2);
  sub_100763A3C();
  v31(v5, v37, v41);
  (v48)(v5, v46, v2);
  v53 = v39;
  v54 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v52);
  v50 = v2;
  v51 = &protocol witness table for FontSource;
  v34 = sub_10000DB7C(v49);
  v19(v34, v5, v2);
  sub_10076D9BC();
  v33(v5, v2);
  return sub_1007639CC();
}

uint64_t sub_100493DEC()
{
  v0 = sub_10076D1AC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100763E9C();
  sub_10000DB18(v4, qword_10099FBE8);
  v18 = sub_10000A61C(v4, qword_10099FBE8);
  v25[24] = &protocol witness table for CGFloat;
  v25[23] = &type metadata for CGFloat;
  v25[20] = 0x4048000000000000;
  v25[18] = &type metadata for Double;
  v25[19] = &protocol witness table for Double;
  v25[15] = 0x4024000000000000;
  v25[13] = &type metadata for Double;
  v25[14] = &protocol witness table for Double;
  v25[9] = &protocol witness table for Double;
  v25[10] = 0x4030000000000000;
  v25[8] = &type metadata for Double;
  v25[5] = 0x402C000000000000;
  if (qword_100940A80 != -1)
  {
    swift_once();
  }

  v5 = sub_10076D3DC();
  v16 = sub_10000A61C(v5, qword_1009A0D90);
  v6 = *(v5 - 8);
  v15 = *(v6 + 16);
  v17 = v6 + 16;
  v15(v3, v16, v5);
  v14 = enum case for FontSource.useCase(_:);
  v13 = v1[13];
  v13(v3);
  v7 = sub_10076D9AC();
  v25[3] = v7;
  v25[4] = &protocol witness table for StaticDimension;
  sub_10000DB7C(v25);
  v23 = v0;
  v24 = &protocol witness table for FontSource;
  v8 = sub_10000DB7C(v22);
  v9 = v1[2];
  v9(v8, v3, v0);
  sub_10076D9BC();
  v10 = v1[1];
  v10(v3, v0);
  v15(v3, v16, v5);
  (v13)(v3, v14, v0);
  v23 = v7;
  v24 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v22);
  v20 = v0;
  v21 = &protocol witness table for FontSource;
  v11 = sub_10000DB7C(v19);
  v9(v11, v3, v0);
  sub_10076D9BC();
  v10(v3, v0);
  v21 = &protocol witness table for Double;
  v20 = &type metadata for Double;
  v19[0] = 0x4020000000000000;
  return sub_100763E7C();
}

id sub_100494160()
{
  result = [objc_allocWithZone(UIGlassEffect) init];
  qword_100959000 = result;
  return result;
}

void sub_1004941AC(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *&v2[*a2];
  *&v2[*a2] = a1;
  if (v4)
  {
    v5 = a1;
    [v4 removeFromSuperview];
    v6 = *&v2[v3];
    if (!v6)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v9 = a1;
  v6 = a1;
  if (a1)
  {
LABEL_3:
    v7 = v6;
    v8 = [v2 contentView];
    [v8 addSubview:v7];
  }

LABEL_4:
}

id sub_100494270()
{
  ObjectType = swift_getObjectType();
  v2 = sub_10000A5D4(&qword_100959058);
  __chkstk_darwin(v2 - 8);
  v4 = &v9 - v3;
  *&v0[OBJC_IVAR____TtC20ProductPageExtension16FooterLockupView_lockupView] = 0;
  *&v0[OBJC_IVAR____TtC20ProductPageExtension16FooterLockupView_arcadeLockupView] = 0;
  v5 = &v0[OBJC_IVAR____TtC20ProductPageExtension16FooterLockupView_clickActionHandler];
  *v5 = 0;
  *(v5 + 1) = 0;
  *&v0[OBJC_IVAR____TtC20ProductPageExtension16FooterLockupView_tapGestureRecognizer] = 0;
  if (qword_1009405D0 != -1)
  {
    swift_once();
  }

  v9.receiver = v0;
  v9.super_class = ObjectType;
  v6 = objc_msgSendSuper2(&v9, "initWithEffect:", qword_100959000);
  sub_10076E66C();
  v7 = sub_10076E68C();
  (*(*(v7 - 8) + 56))(v4, 0, 1, v7);
  sub_100770C8C();
  [v6 setClipsToBounds:1];
  [v6 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  [v6 setEdgesInsettingLayoutMarginsFromSafeArea:0];

  return v6;
}

void sub_100494610()
{
  v11.receiver = v0;
  v11.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v11, "layoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC20ProductPageExtension16FooterLockupView_lockupView];
  if (v1)
  {
    v2 = *&v0[OBJC_IVAR____TtC20ProductPageExtension16FooterLockupView_lockupView];
  }

  else
  {
    v3 = *&v0[OBJC_IVAR____TtC20ProductPageExtension16FooterLockupView_arcadeLockupView];
    if (!v3)
    {
      return;
    }

    v1 = v3;
    v2 = 0;
  }

  v4 = v2;
  sub_10076422C();
  [v1 sizeThatFits:{v5, v6}];
  v8 = v7;
  sub_10076422C();
  MinX = CGRectGetMinX(v12);
  sub_10076422C();
  v10 = CGRectGetMidY(v13) + v8 * -0.5;
  sub_10076422C();
  [v1 setFrame:{MinX, v10, CGRectGetWidth(v14), v8}];
}

void sub_1004948E4(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension16FooterLockupView_tapGestureRecognizer;
  if (*&v2[OBJC_IVAR____TtC20ProductPageExtension16FooterLockupView_tapGestureRecognizer])
  {
    v4 = a1;
    v5 = a2;
    [*&v2[OBJC_IVAR____TtC20ProductPageExtension16FooterLockupView_tapGestureRecognizer] removeTarget:v2 action:"clickActionHandlerTrampoline"];
    a1 = v4;
    a2 = v5;
  }

  v6 = &v2[OBJC_IVAR____TtC20ProductPageExtension16FooterLockupView_clickActionHandler];
  v7 = *&v2[OBJC_IVAR____TtC20ProductPageExtension16FooterLockupView_clickActionHandler];
  *v6 = a1;
  v6[1] = a2;
  sub_10001CE50(a1);
  sub_1000167E0(v7);
  if (*v6)
  {
    v8 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v2 action:"clickActionHandlerTrampoline"];
    [v8 setDelegate:v2];
    if (*&v2[v3])
    {
      [v2 removeGestureRecognizer:?];
      v9 = *&v2[v3];
    }

    else
    {
      v9 = 0;
    }

    *&v2[v3] = v8;
    v10 = v8;

    [v2 addGestureRecognizer:v10];
  }
}

char *sub_100494A30(void *a1)
{
  v2 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v2 - 8);
  v4 = &v56 - v3;
  v5 = sub_100763ADC();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v56 - v10;
  v12 = [objc_allocWithZone(type metadata accessor for CrossLinkLockupView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  sub_100352754(a1);
  if (qword_1009405C0 != -1)
  {
    swift_once();
  }

  v13 = sub_10000A61C(v5, qword_10099FBD0);
  v14 = *(v6 + 16);
  v14(v11, v13, v5);
  v15 = OBJC_IVAR____TtC20ProductPageExtension19CrossLinkLockupView_lockupView;
  v16 = *&v12[OBJC_IVAR____TtC20ProductPageExtension19CrossLinkLockupView_lockupView];
  v14(v8, v11, v5);
  v17 = OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_metrics;
  swift_beginAccess();
  (*(v6 + 24))(&v16[v17], v8, v5);
  swift_endAccess();
  [v16 setNeedsLayout];
  v18 = *(v6 + 8);
  v18(v8, v5);
  v19 = v12;
  [v19 setNeedsLayout];
  v18(v11, v5);
  [v19 setLayoutMargins:{4.0, 10.0, 4.0, 10.0}];

  v20 = qword_100940A58;
  v21 = *(*&v12[v15] + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_titleLabel);
  if (v20 != -1)
  {
    swift_once();
  }

  v22 = sub_10076D3DC();
  v23 = sub_10000A61C(v22, qword_1009A0D18);
  v24 = *(v22 - 8);
  v59 = *(v24 + 16);
  v60 = v24 + 16;
  v59(v4, v23, v22);
  v58 = *(v24 + 56);
  v58(v4, 0, 1, v22);
  sub_1007625DC();

  sub_100016F40(0, &qword_100942F10);
  v25 = sub_100770CFC();
  v26 = v25;
  v57 = v15;
  v27 = *&v12[v15];
  v28 = *(v27 + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_titleTextColor);
  *(v27 + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_titleTextColor) = v25;
  v56 = v19;
  if (!v28)
  {
    v32 = v25;
    v30 = 0;
    goto LABEL_9;
  }

  v29 = v25;
  v30 = v28;
  v31 = sub_100770EEC();

  if ((v31 & 1) == 0)
  {
LABEL_9:
    sub_1003EB8BC();
    v29 = v26;
  }

  v33 = v57;
  v34 = qword_100940A80;
  v35 = *(*&v12[v57] + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_subtitleLabel);
  if (v34 != -1)
  {
    swift_once();
  }

  v36 = sub_10000A61C(v22, qword_1009A0D90);
  v59(v4, v36, v22);
  v58(v4, 0, 1, v22);
  sub_1007625DC();

  v37 = *(*&v12[v33] + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_subtitleLabel);
  v38 = sub_100770D1C();
  [v37 setTextColor:v38];

  v39 = *(*&v12[v33] + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_tertiaryTitleLabel);
  v40 = v56;
  if (v39)
  {
    v41 = qword_100940AA0;
    v42 = v39;
    if (v41 != -1)
    {
      swift_once();
    }

    v43 = sub_10000A61C(v22, qword_1009A0DF0);
    v59(v4, v43, v22);
    v58(v4, 0, 1, v22);
    sub_1007625DC();

    v33 = v57;
    v44 = *(*&v12[v57] + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_tertiaryTitleLabel);
    if (v44)
    {
      v45 = v44;
      v46 = sub_100770D0C();
      [v45 setTextColor:v46];
    }
  }

  v47 = *&v40[OBJC_IVAR____TtC20ProductPageExtension19CrossLinkLockupView_crossLinkTitleLabel];
  v48 = sub_100770D1C();
  [v47 setTextColor:v48];

  v49 = *&v40[OBJC_IVAR____TtC20ProductPageExtension19CrossLinkLockupView_crossLinkSubtitleLabel];
  v50 = sub_100770CFC();
  [v49 setTextColor:v50];

  v51 = *(*&v12[v33] + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_offerLabel);
  v52 = qword_100940A88;
  v53 = v51;
  if (v52 != -1)
  {
    swift_once();
  }

  v54 = sub_10000A61C(v22, qword_1009A0DA8);
  v59(v4, v54, v22);
  v58(v4, 0, 1, v22);
  sub_1007625DC();

  return v40;
}

uint64_t sub_100495138(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension16FooterLockupView_lockupView);
  if (!v3)
  {
    v8 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension16FooterLockupView_arcadeLockupView);
    if (!v8)
    {
LABEL_9:
      v12 = 1;
      return v12 & 1;
    }

    v4 = v8;
    v9 = [a1 view];
    if (v9)
    {
      v6 = v9;
      v7 = *&v4[OBJC_IVAR____TtC20ProductPageExtension16ArcadeLockupView_offerButton];
      goto LABEL_7;
    }

LABEL_8:

    goto LABEL_9;
  }

  v4 = v3;
  v5 = [a1 view];
  if (!v5)
  {
    goto LABEL_8;
  }

  v6 = v5;
  v7 = *(*&v4[OBJC_IVAR____TtC20ProductPageExtension19CrossLinkLockupView_lockupView] + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_offerButton);
LABEL_7:
  sub_100016F40(0, &qword_1009441F0);
  v10 = v7;
  v11 = sub_100770EEC();

  v12 = v11 ^ 1;
  return v12 & 1;
}

uint64_t sub_100495254@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void (*a4)(void, void, void)@<X8>)
{
  v56 = a3;
  v49 = a2;
  v48 = sub_10076373C();
  v47 = *(v48 - 8);
  __chkstk_darwin(v48);
  v46 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100762A3C();
  v50 = *(v7 - 8);
  v51 = v7;
  __chkstk_darwin(v7);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10077164C();
  v54 = *(v10 - 8);
  v55 = v10;
  __chkstk_darwin(v10);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10076D1AC();
  v52 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = (&v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = sub_10076D9AC();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1009405F0 != -1)
  {
    swift_once();
  }

  v20 = sub_1007637AC();
  v21 = sub_10000A61C(v20, qword_10099FC00);
  v22 = *(*(v20 - 8) + 16);
  v53 = a4;
  v22(a4, v21, v20);
  if (!a1)
  {
    goto LABEL_14;
  }

  if (sub_10076BDDC())
  {
    if (qword_1009405E0 != -1)
    {
      swift_once();
    }

    v23 = qword_100959068;
    if (sub_10076BE0C())
    {
      v24 = sub_10076044C();
      if (!v24)
      {
        goto LABEL_13;
      }
    }

    else
    {
      if ((sub_10076BDFC() & 1) == 0)
      {
        goto LABEL_13;
      }

      v24 = sub_1005A6008(a1, v23);
      if (!v24)
      {
        goto LABEL_13;
      }
    }

    [v24 size];
    v25 = v53;
    sub_10076379C();
    sub_100770E5C();
    sub_1007636FC();
    v26 = v25;

    v27 = v52;
    goto LABEL_17;
  }

LABEL_13:

LABEL_14:
  if (qword_100940DC0 != -1)
  {
    swift_once();
  }

  v28 = sub_10076D3DC();
  v29 = sub_10000A61C(v28, qword_1009A1738);
  (*(*(v28 - 8) + 16))(v15, v29, v28);
  v27 = v52;
  v52[13](v15, enum case for FontSource.useCase(_:), v13);
  v61 = v13;
  v62 = &protocol witness table for FontSource;
  v30 = sub_10000DB7C(v60);
  (v27)[2](v30, v15, v13);
  sub_10076D9BC();
  (v27[1])(v15, v13);
  sub_10076D17C();
  sub_10076D40C();
  v54[1](v12, v55);
  v26 = v53;
  sub_10076379C();
  (*(v17 + 8))(v19, v16);
LABEL_17:
  v31 = v50;
  v32 = v51;
  (*(v50 + 16))(v9, v49, v51);
  v33 = (*(v31 + 88))(v9, v32);
  if (v33 == enum case for PrivacyTypeStyle.productPage(_:))
  {
    return sub_100498C28(v26, v56);
  }

  if (v33 == enum case for PrivacyTypeStyle.intermediateDetailPage(_:) || v33 == enum case for PrivacyTypeStyle.detailPage(_:))
  {
    v61 = &type metadata for Double;
    v62 = &protocol witness table for Double;
    v60[0] = 0;
    sub_10076374C();
    if (qword_1009411F8 != -1)
    {
      swift_once();
    }

    sub_10000A61C(v16, qword_1009A2368);
    sub_10076D17C();
    sub_10076D40C();
    v36 = v35;
    v54[1](v12, v55);
    v61 = &type metadata for CGFloat;
    v62 = &protocol witness table for CGFloat;
    v60[0] = v36;
    sub_10076377C();
    (*(v47 + 104))(v46, enum case for PrivacyTypeLayout.Metrics.HorizontalAlignment.leading(_:), v48);
    sub_10076376C();
    if (qword_1009405D8 != -1)
    {
      swift_once();
    }

    v37 = qword_100959060;
    *v15 = qword_100959060;
    v56 = v27[13];
    (v56)(v15, enum case for FontSource.textStyle(_:), v13);
    v61 = v16;
    v62 = &protocol witness table for StaticDimension;
    sub_10000DB7C(v60);
    v58 = v13;
    v59 = &protocol witness table for FontSource;
    v38 = sub_10000DB7C(v57);
    v55 = v27[2];
    v55(v38, v15, v13);
    v39 = v37;
    sub_10076D9BC();
    v54 = v27[1];
    (v54)(v15, v13);
    sub_10076370C();
    if (qword_100940DD0 != -1)
    {
      swift_once();
    }

    v40 = sub_10076D3DC();
    v41 = sub_10000A61C(v40, qword_1009A1768);
    v53 = *(*(v40 - 8) + 16);
    v53(v15, v41, v40);
    v42 = enum case for FontSource.useCase(_:);
    (v56)(v15, enum case for FontSource.useCase(_:), v13);
    v61 = v16;
    v62 = &protocol witness table for StaticDimension;
    sub_10000DB7C(v60);
    v52 = v16;
    v58 = v13;
    v59 = &protocol witness table for FontSource;
    v43 = sub_10000DB7C(v57);
    v55(v43, v15, v13);
    sub_10076D9BC();
    (v54)(v15, v13);
    sub_10076371C();
    if (qword_100940DD8 != -1)
    {
      swift_once();
    }

    v44 = sub_10000A61C(v40, qword_1009A1780);
    v53(v15, v44, v40);
    (v56)(v15, v42, v13);
    v61 = v52;
    v62 = &protocol witness table for StaticDimension;
    sub_10000DB7C(v60);
    v58 = v13;
    v59 = &protocol witness table for FontSource;
    v45 = sub_10000DB7C(v57);
    v55(v45, v15, v13);
    sub_10076D9BC();
    (v54)(v15, v13);
    return sub_10076372C();
  }

  else
  {
    sub_100498C28(v26, v56);
    return (*(v31 + 8))(v9, v32);
  }
}

void sub_100495CF0()
{
  if (qword_1009405D8 != -1)
  {
    swift_once();
  }

  v0 = qword_100959060;
  v1 = objc_opt_self();
  v2 = v0;
  v3 = [v1 configurationWithTextStyle:v2];

  qword_100959068 = v3;
}

UIColor sub_100495D88()
{
  sub_100016F40(0, &qword_100942F10);
  v0 = objc_opt_self();
  v1 = [v0 systemBackgroundColor];
  v2.super.isa = [v0 secondarySystemBackgroundColor];
  v3.super.isa = v1;
  result.super.isa = sub_100770DEC(v3, v2).super.isa;
  qword_100959070 = result.super.isa;
  return result;
}

uint64_t sub_100495E1C()
{
  v0 = sub_10076D1AC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = (&v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_10076373C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1007637AC();
  sub_10000DB18(v8, qword_10099FC00);
  v33 = sub_10000A61C(v8, qword_10099FC00);
  v9 = *(v5 + 104);
  v34 = v7;
  v9(v7, enum case for PrivacyTypeLayout.Metrics.HorizontalAlignment.center(_:), v4);
  if (qword_1009405D8 != -1)
  {
    swift_once();
  }

  v10 = qword_100959060;
  *v3 = qword_100959060;
  v11 = v1[13];
  v32 = enum case for FontSource.textStyle(_:);
  v11(v3);
  v38 = sub_10076D9AC();
  v67[3] = v38;
  v67[4] = &protocol witness table for StaticDimension;
  sub_10000DB7C(v67);
  v65 = v0;
  v66 = &protocol witness table for FontSource;
  v12 = sub_10000DB7C(v64);
  v13 = v1 + 2;
  v37 = v1[2];
  v37(v12, v3, v0);
  v14 = v10;
  sub_10076D9BC();
  v15 = v1[1];
  v35 = v1 + 1;
  v36 = v15;
  v15(v3, v0);
  if (qword_100940DC8 != -1)
  {
    swift_once();
  }

  v16 = sub_10076D3DC();
  v17 = sub_10000A61C(v16, qword_1009A1750);
  v18 = *(*(v16 - 8) + 16);
  v18(v3, v17, v16);
  v19 = enum case for FontSource.useCase(_:);
  (v11)(v3, enum case for FontSource.useCase(_:), v0);
  v65 = v38;
  v66 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v64);
  v31 = v11;
  v62 = v0;
  v63 = &protocol witness table for FontSource;
  v20 = sub_10000DB7C(v61);
  v37(v20, v3, v0);
  sub_10076D9BC();
  v36(v3, v0);
  if (qword_100940DD8 != -1)
  {
    swift_once();
  }

  v21 = sub_10000A61C(v16, qword_1009A1780);
  v18(v3, v21, v16);
  v22 = v31;
  (v31)(v3, v19, v0);
  v23 = v38;
  v62 = v38;
  v63 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v61);
  *(&v59 + 1) = v0;
  v60 = &protocol witness table for FontSource;
  v24 = sub_10000DB7C(&v58);
  v25 = v37;
  v37(v24, v3, v0);
  sub_10076D9BC();
  v30 = v13;
  v26 = v36;
  v36(v3, v0);
  v60 = 0;
  v58 = 0u;
  v59 = 0u;
  *v3 = UIFontTextStyleBody;
  (v22)(v3, v32, v0);
  v57[3] = v23;
  v57[4] = &protocol witness table for StaticDimension;
  sub_10000DB7C(v57);
  v55 = v0;
  v56 = &protocol witness table for FontSource;
  v27 = sub_10000DB7C(v54);
  v25(v27, v3, v0);
  v28 = UIFontTextStyleBody;
  sub_10076D9BC();
  v26(v3, v0);
  v55 = &type metadata for Double;
  v56 = &protocol witness table for Double;
  v53 = &protocol witness table for Double;
  v54[0] = 0x402A000000000000;
  v52 = &type metadata for Double;
  v50 = &protocol witness table for Double;
  v51 = 0x4034000000000000;
  v49 = &type metadata for Double;
  v47 = &protocol witness table for Double;
  v48 = 0x4034000000000000;
  v46 = &type metadata for Double;
  v44 = &protocol witness table for Double;
  v45 = 0x4034000000000000;
  v43 = &type metadata for Double;
  v41 = &protocol witness table for Double;
  v42 = 0x4024000000000000;
  v40 = &type metadata for Double;
  v39 = 0x403E000000000000;
  return sub_10076375C();
}

id sub_100496400()
{
  v1 = v0;
  v24 = sub_10076771C();
  v2 = *(v24 - 8);
  __chkstk_darwin(v24);
  v4 = &v22[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_100762A3C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v22[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *&v10 = __chkstk_darwin(v9).n128_u64[0];
  v12 = &v22[-v11];
  v13 = [v0 traitCollection];
  v14 = sub_10077071C();

  if ((v14 & 1) == 0)
  {
    v15 = OBJC_IVAR____TtC20ProductPageExtension29PrivacyTypeCollectionViewCell_style;
    swift_beginAccess();
    (*(v6 + 16))(v12, &v1[v15], v5);
    (*(v6 + 104))(v8, enum case for PrivacyTypeStyle.detailPage(_:), v5);
    sub_1004994DC();
    sub_10077018C();
    sub_10077018C();
    if (v27 == v25 && v28 == v26)
    {
      v16 = *(v6 + 8);
      v16(v8, v5);
      v16(v12, v5);
    }

    else
    {
      v23 = sub_10077167C();
      v17 = *(v6 + 8);
      v17(v8, v5);
      v17(v12, v5);

      if ((v23 & 1) == 0)
      {
        [*&v1[OBJC_IVAR____TtC20ProductPageExtension29PrivacyTypeCollectionViewCell_titleLabel] setTextAlignment:1];
        [*&v1[OBJC_IVAR____TtC20ProductPageExtension29PrivacyTypeCollectionViewCell_detailLabel] setTextAlignment:1];
        return [v1 setNeedsLayout];
      }
    }
  }

  v18 = enum case for DirectionalTextAlignment.leading(_:);
  v19 = *(v2 + 104);
  v20 = v24;
  v19(v4, enum case for DirectionalTextAlignment.leading(_:), v24);
  sub_10076262C();
  v19(v4, v18, v20);
  sub_10076262C();
  return [v1 setNeedsLayout];
}

id sub_1004967C8(void *a1)
{
  v2 = v1;
  v4 = sub_10075FEEC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000A5D4(&qword_1009473D0);
  *&v9 = __chkstk_darwin(v8).n128_u64[0];
  v11 = &v20 - v10;
  if (a1)
  {
    [a1 removeFromSuperview];
  }

  v12 = *&v2[OBJC_IVAR____TtC20ProductPageExtension29PrivacyTypeCollectionViewCell_shadowView];
  if (v12)
  {
    v13 = qword_10093F8A8;
    v14 = v12;
    if (v13 != -1)
    {
      swift_once();
    }

    v15 = sub_10076BCFC();
    v16 = sub_10000A61C(v15, qword_10099D498);
    v17 = *(v15 - 8);
    (*(v17 + 16))(v11, v16, v15);
    (*(v17 + 56))(v11, 0, 1, v15);
    sub_10075F97C();
    (*(v5 + 104))(v7, enum case for CornerStyle.continuous(_:), v4);
    sub_10075F98C();
    (*(v5 + 8))(v7, v4);
    v18 = [v2 contentView];
    [v18 insertSubview:v14 atIndex:0];
  }

  return [v2 setNeedsLayout];
}

id sub_100496A48(void *a1)
{
  v2 = v1;
  v4 = sub_10075FEEC();
  v5 = *(v4 - 8);
  *&v6 = __chkstk_darwin(v4).n128_u64[0];
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    [a1 removeFromSuperview];
  }

  v9 = *&v2[OBJC_IVAR____TtC20ProductPageExtension29PrivacyTypeCollectionViewCell_roundedCornerView];
  if (v9)
  {
    v10 = qword_1009405E8;
    v11 = v9;
    if (v10 != -1)
    {
      swift_once();
    }

    [v11 setBackgroundColor:qword_100959070];
    (*(v5 + 104))(v8, enum case for CornerStyle.continuous(_:), v4);
    sub_1007638AC();
    (*(v5 + 8))(v8, v4);
    v12 = *&v2[OBJC_IVAR____TtC20ProductPageExtension29PrivacyTypeCollectionViewCell_shadowView];
    if (v12)
    {
      v13 = v12;
      v14 = [v2 contentView];
      [v14 insertSubview:v11 aboveSubview:v13];
    }

    else
    {
      v14 = [v2 contentView];
      [v14 insertSubview:v11 atIndex:0];
    }
  }

  return [v2 setNeedsLayout];
}

void sub_100496C68()
{
  v1 = *&v0[OBJC_IVAR____TtC20ProductPageExtension29PrivacyTypeCollectionViewCell_categories];
  if (!(v1 >> 62))
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_12:
    [v0 setNeedsLayout];
    return;
  }

  v2 = sub_10077158C();
  if (!v2)
  {
    goto LABEL_12;
  }

LABEL_3:
  if (v2 >= 1)
  {
    v3 = OBJC_IVAR____TtC20ProductPageExtension29PrivacyTypeCollectionViewCell_categoryViews;
    v7 = v1 & 0xC000000000000001;
    v8 = *&v0[OBJC_IVAR____TtC20ProductPageExtension29PrivacyTypeCollectionViewCell_contentContainerView];

    v4 = 0;
    do
    {
      if (v7)
      {
        v5 = sub_10077149C();
      }

      else
      {
        v5 = *(v1 + 8 * v4 + 32);
      }

      swift_beginAccess();
      sub_10000A5D4(&qword_100959100);
      sub_10076E15C();
      swift_endAccess();
      *&v9[OBJC_IVAR____TtC20ProductPageExtension19PrivacyCategoryView_category] = v5;
      swift_retain_n();

      sub_100103A50();

      [v8 addSubview:v9];
      swift_beginAccess();
      v6 = v9;
      sub_10077019C();
      if (*((*&v0[v3] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v0[v3] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_10077021C();
      }

      ++v4;
      sub_10077025C();
      swift_endAccess();
    }

    while (v2 != v4);

    goto LABEL_12;
  }

  __break(1u);
}

id sub_100496E98@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(type metadata accessor for PrivacyCategoryView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *a1 = result;
  return result;
}

id sub_100496EE4()
{
  v1 = v0;
  v2 = sub_10076E1EC();
  v50 = *(v2 - 8);
  v51 = v2;
  __chkstk_darwin(v2);
  v52 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v4 - 8);
  v57 = &v50 - v5;
  v6 = sub_10000A5D4(&unk_1009467C0);
  __chkstk_darwin(v6 - 8);
  v53 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v55 = &v50 - v9;
  v10 = sub_100762A3C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v56 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v50 - v14;
  v16 = OBJC_IVAR____TtC20ProductPageExtension29PrivacyTypeCollectionViewCell_style;
  swift_beginAccess();
  v17 = *(v11 + 16);
  v17(v15, &v1[v16], v10);
  v54 = v11;
  v18 = *(v11 + 88);
  v19 = v18(v15, v10);
  v20 = enum case for PrivacyTypeStyle.productPage(_:);
  if (v19 == enum case for PrivacyTypeStyle.productPage(_:))
  {
    sub_100499138(v1);
    v21 = v1;
  }

  else if (v19 == enum case for PrivacyTypeStyle.intermediateDetailPage(_:) || v19 == enum case for PrivacyTypeStyle.detailPage(_:))
  {
    v21 = v1;
    sub_100497700(v1);
  }

  else
  {
    sub_100499138(v1);
    v23 = v15;
    v21 = v1;
    (*(v54 + 8))(v23, v10);
  }

  v24 = v56;
  v17(v56, &v21[v16], v10);
  v25 = v18(v24, v10);
  if (v25 == v20)
  {
    v26 = sub_10076E21C();
    v27 = v55;
    (*(*(v26 - 8) + 56))(v55, 1, 1, v26);
    v28 = OBJC_IVAR____TtC20ProductPageExtension29PrivacyTypeCollectionViewCell_separator;
    swift_beginAccess();
    sub_10007A910(v27, &v21[v28]);
    swift_endAccess();
    sub_1004977C4();
    sub_10000CFBC(v27, &unk_1009467C0);
    if (qword_100940DC8 != -1)
    {
      swift_once();
    }

    v29 = sub_10076D3DC();
    v30 = v29;
    v31 = qword_1009A1750;
LABEL_23:
    v46 = sub_10000A61C(v29, v31);
    v47 = *(v30 - 8);
    v48 = v57;
    (*(v47 + 16))(v57, v46, v30);
    (*(v47 + 56))(v48, 0, 1, v30);
    sub_1007625DC();
    goto LABEL_24;
  }

  if (v25 == enum case for PrivacyTypeStyle.intermediateDetailPage(_:) || v25 == enum case for PrivacyTypeStyle.detailPage(_:))
  {
    v39 = v21;
    v40 = OBJC_IVAR____TtC20ProductPageExtension29PrivacyTypeCollectionViewCell_separator;
    swift_beginAccess();
    v41 = v53;
    sub_10007A9C8(&v39[v40], v53);
    v42 = sub_10076E21C();
    v43 = *(v42 - 8);
    v44 = (*(v43 + 48))(v41, 1, v42);
    sub_10000CFBC(v41, &unk_1009467C0);
    if (v44 == 1)
    {
      (*(v50 + 104))(v52, enum case for Separator.Position.top(_:), v51);
      v58[3] = sub_10076D67C();
      v58[4] = &protocol witness table for ZeroDimension;
      sub_10000DB7C(v58);
      sub_10076D66C();
      v45 = v55;
      sub_10076E1FC();
      (*(v43 + 56))(v45, 0, 1, v42);
      swift_beginAccess();
      sub_10007A910(v45, &v39[v40]);
      swift_endAccess();
      sub_1004977C4();
      sub_10000CFBC(v45, &unk_1009467C0);
    }

    v21 = v39;
    if (qword_100940DD0 != -1)
    {
      swift_once();
    }

    v29 = sub_10076D3DC();
    v30 = v29;
    v31 = qword_1009A1768;
    goto LABEL_23;
  }

  v32 = sub_10076E21C();
  v33 = v55;
  (*(*(v32 - 8) + 56))(v55, 1, 1, v32);
  v34 = OBJC_IVAR____TtC20ProductPageExtension29PrivacyTypeCollectionViewCell_separator;
  swift_beginAccess();
  sub_10007A910(v33, &v21[v34]);
  swift_endAccess();
  sub_1004977C4();
  sub_10000CFBC(v33, &unk_1009467C0);
  if (qword_100940DC8 != -1)
  {
    swift_once();
  }

  v35 = sub_10076D3DC();
  v36 = sub_10000A61C(v35, qword_1009A1750);
  v37 = *(v35 - 8);
  v38 = v57;
  (*(v37 + 16))(v57, v36, v35);
  (*(v37 + 56))(v38, 0, 1, v35);
  sub_1007625DC();
  (*(v54 + 8))(v24, v10);
LABEL_24:
  sub_100496400();
  return [v21 setNeedsLayout];
}

id sub_100497700(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR____TtC20ProductPageExtension29PrivacyTypeCollectionViewCell_shadowView);
  *(a1 + OBJC_IVAR____TtC20ProductPageExtension29PrivacyTypeCollectionViewCell_shadowView) = 0;
  sub_1004967C8(v2);

  v3 = *(a1 + OBJC_IVAR____TtC20ProductPageExtension29PrivacyTypeCollectionViewCell_roundedCornerView);
  if (v3)
  {
    [v3 setHidden:1];
  }

  v4 = *(a1 + OBJC_IVAR____TtC20ProductPageExtension29PrivacyTypeCollectionViewCell_contentContainerView);
  sub_100016F40(0, &qword_100942F10);
  v5 = sub_100770D2C();
  [v4 setBackgroundColor:v5];

  return [v4 _setContinuousCornerRadius:0.0];
}

id sub_1004977C4()
{
  v1 = sub_10000A5D4(&unk_1009467C0);
  __chkstk_darwin(v1 - 8);
  v3 = &v28 - v2;
  v4 = sub_10076E21C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v28 - v9;
  v11 = OBJC_IVAR____TtC20ProductPageExtension29PrivacyTypeCollectionViewCell_separator;
  swift_beginAccess();
  sub_10007A9C8(&v0[v11], v3);
  v12 = &off_100911000;
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_10000CFBC(v3, &unk_1009467C0);
    v13 = *&v0[OBJC_IVAR____TtC20ProductPageExtension29PrivacyTypeCollectionViewCell_separatorView];
    if (v13)
    {
      [v13 setHidden:1];
    }
  }

  else
  {
    (*(v5 + 32))(v10, v3, v4);
    v14 = OBJC_IVAR____TtC20ProductPageExtension29PrivacyTypeCollectionViewCell_separatorView;
    v15 = *&v0[OBJC_IVAR____TtC20ProductPageExtension29PrivacyTypeCollectionViewCell_separatorView];
    if (v15)
    {
      (*(v5 + 16))(v7, v10, v4);
      v16 = OBJC_IVAR____TtC20ProductPageExtension13SeparatorView_separator;
      swift_beginAccess();
      v17 = *(v5 + 24);
      v18 = v15;
      v17(&v15[v16], v7, v4);
      swift_endAccess();
      v19 = v18;
      v12 = &off_100911000;
      [v19 setNeedsLayout];
      v20 = *(v5 + 8);
      v20(v7, v4);
      [v19 setHidden:0];

      v20(v10, v4);
    }

    else
    {
      (*(v5 + 16))(v7, v10, v4);
      v21 = [objc_allocWithZone(type metadata accessor for SeparatorView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
      v22 = OBJC_IVAR____TtC20ProductPageExtension13SeparatorView_separator;
      swift_beginAccess();
      v29 = *(v5 + 40);
      v23 = v21;
      v29(&v21[v22], v7, v4);
      swift_endAccess();

      v24 = *&v0[v14];
      if (v24)
      {
        [v24 removeFromSuperview];
        v25 = *&v0[v14];
      }

      else
      {
        v25 = 0;
      }

      *&v0[v14] = v23;
      v26 = v23;

      [*&v0[OBJC_IVAR____TtC20ProductPageExtension29PrivacyTypeCollectionViewCell_contentContainerView] addSubview:v26];
      v12 = &off_100911000;
      [v0 setNeedsLayout];

      (*(v5 + 8))(v10, v4);
    }
  }

  return [v0 v12[194]];
}

uint64_t sub_100497BA4()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_10076D1FC();
  v57 = *(v3 - 8);
  v58 = v3;
  __chkstk_darwin(v3);
  v56 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100762A3C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1007637AC();
  __chkstk_darwin(v9 - 8);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_1007637CC();
  v53 = *(v55 - 8);
  *&v12 = __chkstk_darwin(v55).n128_u64[0];
  v51 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86.receiver = v1;
  v86.super_class = ObjectType;
  objc_msgSendSuper2(&v86, "layoutSubviews", v12);
  v14 = [v1 contentView];
  v15 = sub_100016F40(0, &qword_1009441F0);
  sub_10076422C();

  v16 = OBJC_IVAR____TtC20ProductPageExtension29PrivacyTypeCollectionViewCell_style;
  swift_beginAccess();
  v17 = *(v6 + 16);
  v49 = v6 + 16;
  v50 = v16;
  v48 = v17;
  v17(v8, &v1[v16], v5);

  v52 = v11;
  sub_100495254(v18, v8, v1, v11);

  v19 = *(v6 + 8);
  v54 = v5;
  v19(v8, v5);
  v20 = *&v1[OBJC_IVAR____TtC20ProductPageExtension29PrivacyTypeCollectionViewCell_shadowView];
  v47 = v20;
  if (v20)
  {
    v21 = sub_10075F99C();
    v22 = &protocol witness table for UIView;
    v23 = v20;
  }

  else
  {
    v23 = 0;
    v21 = 0;
    v22 = 0;
    v82 = 0;
    v83 = 0;
  }

  v81 = v23;
  v84 = v21;
  v85 = v22;
  v24 = *&v1[OBJC_IVAR____TtC20ProductPageExtension29PrivacyTypeCollectionViewCell_roundedCornerView];
  if (v24)
  {
    v25 = sub_10076394C();
    v26 = &protocol witness table for UIView;
    v27 = v24;
  }

  else
  {
    v27 = 0;
    v25 = 0;
    v26 = 0;
    v77 = 0;
    v78 = 0;
  }

  v76 = v27;
  v79 = v25;
  v80 = v26;
  v28 = *&v1[OBJC_IVAR____TtC20ProductPageExtension29PrivacyTypeCollectionViewCell_contentContainerView];
  v74 = v15;
  v75 = &protocol witness table for UIView;
  v73 = v28;
  v29 = *&v1[OBJC_IVAR____TtC20ProductPageExtension29PrivacyTypeCollectionViewCell_separatorView];
  if (v29)
  {
    v30 = type metadata accessor for SeparatorView();
    v31 = &protocol witness table for UIView;
  }

  else
  {
    v30 = 0;
    v31 = 0;
    v69 = 0;
    v70 = 0;
  }

  v68 = v29;
  v71 = v30;
  v72 = v31;
  v32 = *&v1[OBJC_IVAR____TtC20ProductPageExtension29PrivacyTypeCollectionViewCell_iconView];
  v66 = sub_10075FD2C();
  v67 = &protocol witness table for UIView;
  v65 = v32;
  v33 = *&v1[OBJC_IVAR____TtC20ProductPageExtension29PrivacyTypeCollectionViewCell_titleLabel];
  v63 = sub_1007626BC();
  v64 = &protocol witness table for UILabel;
  v34 = *&v1[OBJC_IVAR____TtC20ProductPageExtension29PrivacyTypeCollectionViewCell_detailLabel];
  v61 = &protocol witness table for UILabel;
  v62 = v33;
  v60 = v63;
  v59 = v34;
  v35 = OBJC_IVAR____TtC20ProductPageExtension29PrivacyTypeCollectionViewCell_categoryViews;
  swift_beginAccess();
  v36 = *&v1[v35];
  v37 = v24;
  v38 = v28;
  v39 = v29;
  v40 = v32;
  v41 = v33;
  v42 = v34;

  v43 = v47;
  sub_10016E834(v36);

  v48(v8, &v1[v50], v54);
  v44 = v51;
  sub_1007637BC();
  v45 = v56;
  sub_1007636EC();
  (*(v57 + 8))(v45, v58);
  return (*(v53 + 8))(v44, v55);
}

id sub_100498304(uint64_t a1, double a2)
{
  v4 = *(a1 + OBJC_IVAR____TtC20ProductPageExtension29PrivacyTypeCollectionViewCell_roundedCornerView);
  if (v4)
  {
    [v4 setAlpha:a2];
  }

  result = *(a1 + OBJC_IVAR____TtC20ProductPageExtension29PrivacyTypeCollectionViewCell_shadowView);
  if (result)
  {

    return [result setAlpha:a2];
  }

  return result;
}

uint64_t type metadata accessor for PrivacyTypeCollectionViewCell()
{
  result = qword_1009590D8;
  if (!qword_1009590D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10049860C()
{
  sub_10007A8BC(319, &qword_100944F90, &type metadata accessor for ItemLayoutContext);
  if (v0 <= 0x3F)
  {
    sub_1004987B4();
    if (v1 <= 0x3F)
    {
      sub_100762A3C();
      if (v2 <= 0x3F)
      {
        sub_10007A8BC(319, &unk_100945540, &type metadata accessor for Separator);
        if (v3 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_1004987B4()
{
  if (!qword_1009590E8)
  {
    sub_10000CE78(&qword_1009590F0);
    sub_100498824();
    v0 = sub_10076E19C();
    if (!v1)
    {
      atomic_store(v0, &qword_1009590E8);
    }
  }
}

unint64_t sub_100498824()
{
  result = qword_1009590F8;
  if (!qword_1009590F8)
  {
    sub_10000CE78(&qword_1009590F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009590F8);
  }

  return result;
}

void sub_100498888()
{
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  v5[4] = sub_1004995A4;
  v5[5] = v2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 1107296256;
  v5[2] = sub_10009AEDC;
  v5[3] = &unk_100896BA0;
  v3 = _Block_copy(v5);
  v4 = v0;

  [v1 animateWithDuration:v3 animations:0.5];
  _Block_release(v3);
}

void sub_100498970()
{
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  v5[4] = sub_10049956C;
  v5[5] = v2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 1107296256;
  v5[2] = sub_10009AEDC;
  v5[3] = &unk_100896B50;
  v3 = _Block_copy(v5);
  v4 = v0;

  [v1 animateWithDuration:v3 animations:0.4];
  _Block_release(v3);
}

void *sub_100498A5C()
{
  v1 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension29PrivacyTypeCollectionViewCell_contentContainerView);
  v2 = v1;
  return v1;
}

id sub_100498A8C(char *a1)
{
  v2 = sub_100762A3C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC20ProductPageExtension29PrivacyTypeCollectionViewCell_style;
  swift_beginAccess();
  (*(v3 + 16))(v5, &a1[v6], v2);
  v7 = (*(v3 + 88))(v5, v2);
  if (v7 == enum case for PrivacyTypeStyle.productPage(_:))
  {
    return sub_100499138(a1);
  }

  if (v7 == enum case for PrivacyTypeStyle.intermediateDetailPage(_:) || v7 == enum case for PrivacyTypeStyle.detailPage(_:))
  {
    return sub_100497700(a1);
  }

  sub_100499138(a1);
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_100498C28(uint64_t a1, void *a2)
{
  v4 = sub_10076D1AC();
  v31 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = (&v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_10076373C();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = &type metadata for Double;
  v37 = &protocol witness table for Double;
  v35[0] = 0x4024000000000000;
  sub_10076374C();
  v36 = &type metadata for Double;
  v37 = &protocol witness table for Double;
  v35[0] = 0x402E000000000000;
  sub_10076377C();
  v11 = [a2 traitCollection];
  LOBYTE(a2) = sub_10077071C();

  v12 = &enum case for PrivacyTypeLayout.Metrics.HorizontalAlignment.leading(_:);
  if ((a2 & 1) == 0)
  {
    v12 = &enum case for PrivacyTypeLayout.Metrics.HorizontalAlignment.center(_:);
  }

  (*(v8 + 104))(v10, *v12, v7);
  sub_10076376C();
  if (qword_1009405D8 != -1)
  {
    swift_once();
  }

  v13 = qword_100959060;
  *v6 = qword_100959060;
  v14 = v31;
  v30 = *(v31 + 104);
  v30(v6, enum case for FontSource.textStyle(_:), v4);
  v29 = sub_10076D9AC();
  v36 = v29;
  v37 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v35);
  v33 = v4;
  v34 = &protocol witness table for FontSource;
  v15 = sub_10000DB7C(v32);
  v28 = *(v14 + 16);
  v28(v15, v6, v4);
  v16 = v13;
  sub_10076D9BC();
  v17 = *(v14 + 8);
  v31 = v14 + 8;
  v27 = v17;
  v17(v6, v4);
  sub_10076370C();
  v26 = a1;
  if (qword_100940DC8 != -1)
  {
    swift_once();
  }

  v18 = sub_10076D3DC();
  v19 = sub_10000A61C(v18, qword_1009A1750);
  v20 = *(*(v18 - 8) + 16);
  v20(v6, v19, v18);
  v21 = enum case for FontSource.useCase(_:);
  v30(v6, enum case for FontSource.useCase(_:), v4);
  v36 = v29;
  v37 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v35);
  v33 = v4;
  v34 = &protocol witness table for FontSource;
  v22 = sub_10000DB7C(v32);
  v28(v22, v6, v4);
  sub_10076D9BC();
  v27(v6, v4);
  sub_10076371C();
  if (qword_100940DD8 != -1)
  {
    swift_once();
  }

  v23 = sub_10000A61C(v18, qword_1009A1780);
  v20(v6, v23, v18);
  v30(v6, v21, v4);
  v36 = v29;
  v37 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v35);
  v33 = v4;
  v34 = &protocol witness table for FontSource;
  v24 = sub_10000DB7C(v32);
  v28(v24, v6, v4);
  sub_10076D9BC();
  v27(v6, v4);
  return sub_10076372C();
}

id sub_100499138(char *a1)
{
  v2 = OBJC_IVAR____TtC20ProductPageExtension29PrivacyTypeCollectionViewCell_shadowView;
  v3 = *&a1[OBJC_IVAR____TtC20ProductPageExtension29PrivacyTypeCollectionViewCell_shadowView];
  if (v3)
  {
    goto LABEL_2;
  }

  v7 = [a1 traitCollection];
  v8 = [v7 userInterfaceStyle];

  if (v8 != 2)
  {
    sub_10075F99C();
    v9 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v4 = *&a1[v2];
    *&a1[v2] = v9;
    v10 = v9;
    sub_1004967C8(v4);

    goto LABEL_7;
  }

  v3 = *&a1[v2];
  if (v3)
  {
LABEL_2:
    v4 = v3;
    v5 = [a1 traitCollection];
    v6 = [v5 userInterfaceStyle];

    [v4 setHidden:v6 == 2];
LABEL_7:
  }

  v11 = *&a1[OBJC_IVAR____TtC20ProductPageExtension29PrivacyTypeCollectionViewCell_contentContainerView];
  if (qword_1009405E8 != -1)
  {
    swift_once();
  }

  [v11 setBackgroundColor:qword_100959070];
  [v11 _setContinuousCornerRadius:20.0];
  v12 = OBJC_IVAR____TtC20ProductPageExtension29PrivacyTypeCollectionViewCell_roundedCornerView;
  result = *&a1[OBJC_IVAR____TtC20ProductPageExtension29PrivacyTypeCollectionViewCell_roundedCornerView];
  if (result || (sub_10076394C(), v14 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init], v15 = *&a1[v12], *&a1[v12] = v14, v16 = v14, sub_100496A48(v15), v16, v15, (result = *&a1[v12]) != 0))
  {

    return [result setHidden:0];
  }

  return result;
}

uint64_t sub_100499334()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC20ProductPageExtension29PrivacyTypeCollectionViewCell_categoryViews;
  result = swift_beginAccess();
  v4 = *(v1 + v2);
  if (!(v4 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_10:
    *(v1 + v2) = _swiftEmptyArrayStorage;
  }

  result = sub_10077158C();
  v5 = result;
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v5 >= 1)
  {

    v6 = 0;
    do
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = sub_10077149C();
      }

      else
      {
        v7 = *(v4 + 8 * v6 + 32);
      }

      v8 = v7;
      ++v6;
      swift_beginAccess();
      sub_10000A5D4(&qword_100959100);
      sub_10076E17C();
      swift_endAccess();
      *&v8[OBJC_IVAR____TtC20ProductPageExtension19PrivacyCategoryView_category] = 0;

      sub_100103A50();
      v10.value.super.isa = 0;
      v10.is_nil = 0;
      sub_10075FCEC(v10, v9);
      [v8 removeFromSuperview];
    }

    while (v5 != v6);

    goto LABEL_10;
  }

  __break(1u);
  return result;
}