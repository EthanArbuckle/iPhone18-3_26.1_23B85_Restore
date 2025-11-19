void sub_3FB4F4(void *a1)
{
  v2 = type metadata accessor for EditorsChoiceView();
  swift_getObjectType();
  sub_2E380C(3, 0, 0, a1, 0, 1, v2);
}

uint64_t sub_3FB564@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider38ProductEditorsChoiceCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  return sub_1799C(v1 + v3, a1);
}

uint64_t sub_3FB5C0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider38ProductEditorsChoiceCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  sub_1792C(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_3FB6B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_3FC280(&qword_941648, type metadata accessor for ProductEditorsChoiceCollectionViewCell);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_3FB74C(uint64_t a1)
{
  result = sub_3FC280(&qword_953E60, type metadata accessor for ProductEditorsChoiceCollectionViewCell);
  *(a1 + 8) = result;
  return result;
}

double sub_3FB7EC(uint64_t a1)
{
  v38 = sub_7656C0();
  v37 = *(v38 - 8);
  __chkstk_darwin(v38);
  v35 = v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_767030();
  v3 = *(v33 - 8);
  __chkstk_darwin(v33);
  v5 = v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v32 - v7;
  __chkstk_darwin(v9);
  v36 = sub_766D70();
  v34 = *(v36 - 8);
  __chkstk_darwin(v36);
  v40 = v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_BD88(&qword_953E68);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v32 - v13;
  sub_75A2B0();
  sub_3FC280(&qword_953E70, &type metadata accessor for EditorsChoice);
  sub_75C750();
  if (!v43[0])
  {
    return 0.0;
  }

  v15 = v43[0];
  sub_3FC1FC();
  v32[2] = a1;
  sub_75C780();
  sub_769030();
  if (v43[0])
  {
    v32[0] = 0;
  }

  else
  {
    v17 = sub_75A290();
    v18 = 6;
    if ((v17 & 1) == 0)
    {
      v18 = 0;
    }

    v32[0] = v18;
  }

  v32[1] = v15;
  (*(v12 + 8))(v14, v11);
  sub_7670D0();
  swift_allocObject();
  v39 = sub_767090();
  sub_75A2A0();
  sub_767020();
  if (qword_93D6F0 != -1)
  {
    swift_once();
  }

  v19 = sub_7666D0();
  sub_BE38(v19, qword_99ECC8);
  sub_766FF0();
  v20 = *(v3 + 8);
  v21 = v5;
  v22 = v33;
  v20(v21, v33);
  sub_767010();
  v20(v8, v22);
  sub_766D50();
  v23 = v40;
  sub_766D90();
  type metadata accessor for ProductEditorsChoiceView();
  v42[5] = v39;
  sub_7665D0();
  v24 = v36;
  v41[3] = v36;
  v41[4] = &protocol witness table for LabelPlaceholder;
  v25 = sub_B1B4(v41);
  v26 = v34;
  (*(v34 + 16))(v25, v23, v24);
  v27 = sub_75A280();
  sub_7227BC((v27 & 1) == 0, v43);
  sub_BEB8(v42);
  sub_BEB8(v41);
  sub_B170(v43, v43[3]);
  swift_getKeyPath();
  v28 = v35;
  sub_75C7B0();

  sub_765630();
  (*(v37 + 8))(v28, v38);
  swift_getKeyPath();
  sub_75C7B0();

  v29 = v42[0];
  sub_7673F0();
  v16 = v30;

  (*(v26 + 8))(v40, v24);
  sub_BEB8(v43);
  return v16;
}

uint64_t sub_3FBE34()
{
  v0 = sub_75B660();
  v29 = *(v0 - 8);
  __chkstk_darwin(v0);
  v2 = &v22[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v5 = &v22[-v4];
  v6 = sub_BD88(&unk_94F1F0);
  v27 = *(v6 - 8);
  v28 = v6;
  __chkstk_darwin(v6);
  v8 = &v22[-v7];
  v9 = sub_BD88(&qword_953E68);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v22[-v11];
  sub_75A2B0();
  sub_3FC280(&qword_953E70, &type metadata accessor for EditorsChoice);
  result = sub_75C750();
  v14 = v31;
  if (v31)
  {
    v24 = v2;
    v25 = v0;
    v26 = *(v26 + OBJC_IVAR____TtC18ASMessagesProvider38ProductEditorsChoiceCollectionViewCell_editorsChoiceView);
    sub_3FC1FC();
    sub_75C780();
    sub_769030();
    if (v30)
    {
      v15 = 1;
    }

    else
    {
      v15 = sub_75A290() ^ 1;
    }

    v23 = v15;
    (*(v10 + 8))(v12, v9);
    swift_getKeyPath();
    sub_75C7B0();

    swift_getKeyPath();
    v16 = v28;
    sub_768750();

    (*(v27 + 8))(v8, v16);
    v17 = v29;
    v18 = v24;
    v19 = v25;
    (*(v29 + 104))(v24, enum case for ShelfBackground.editorsChoice(_:), v25);
    v20 = sub_75B650();
    v21 = *(v17 + 8);
    v21(v18, v19);
    v21(v5, v19);
    sub_692EEC(v14, v23 & 1, v20 & 1);
  }

  return result;
}

unint64_t sub_3FC1FC()
{
  result = qword_953E78;
  if (!qword_953E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_953E78);
  }

  return result;
}

uint64_t sub_3FC280(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_3FC2DC()
{
  result = qword_953E88;
  if (!qword_953E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_953E88);
  }

  return result;
}

unint64_t sub_3FC334()
{
  result = qword_953E90;
  if (!qword_953E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_953E90);
  }

  return result;
}

uint64_t sub_3FC388@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = sub_766690();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    swift_getObjectType();
    PageTraitEnvironment.pageColumnWidth.getter();
  }

  if (qword_93CD48 != -1)
  {
    swift_once();
  }

  v8 = sub_75D510();
  sub_BE38(v8, qword_99D278);
  sub_75D500();
  sub_766660();
  (*(v5 + 8))(v7, v4);
  sub_7601D0();
  v9 = sub_7601F0();
  return (*(*(v9 - 8) + 56))(a2, 0, 1, v9);
}

void sub_3FC528(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_BD88(&unk_93F980);
  __chkstk_darwin(v4 - 8);
  v6 = &v13 - v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = sub_764D80();
    if (v9)
    {
      v10 = v9;
      v11 = sub_BD88(&unk_93F630);
      sub_768860();
      v12 = *(v11 - 8);
      if ((*(v12 + 48))(v6, 1, v11) == 1)
      {

        sub_10A2C(v6, &unk_93F980);
      }

      else
      {
        sub_32A6C0(v10, 1, a3, v6);

        (*(v12 + 8))(v6, v11);
      }
    }

    else
    {
    }
  }
}

uint64_t sub_3FC6D8()
{
  if (qword_93CD48 != -1)
  {
    swift_once();
  }

  v0 = sub_75D510();
  sub_BE38(v0, qword_99D278);
  sub_75D530();
  sub_3FDCAC(&qword_94F368, &type metadata accessor for FlowcaseItemLayout);
  sub_766ED0();
  if (qword_93CD50 != -1)
  {
    swift_once();
  }

  v1 = sub_767510();
  sub_BE38(v1, qword_99D290);

  return sub_769DD0();
}

id sub_3FC8E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v175 = a3;
  v172 = sub_75CA40();
  v174 = *(v172 - 8);
  __chkstk_darwin(v172);
  v166 = &v156 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v165 = &v156 - v8;
  v9 = sub_BD88(&unk_93E530);
  __chkstk_darwin(v9 - 8);
  v157 = &v156 - v10;
  v167 = sub_764CF0();
  v164 = *(v167 - 8);
  __chkstk_darwin(v167);
  v158 = &v156 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v156 - v13;
  v15 = sub_BD88(&unk_9457D0);
  __chkstk_darwin(v15 - 8);
  v162 = &v156 - v16;
  v17 = sub_BD88(&unk_94AC40);
  __chkstk_darwin(v17 - 8);
  v171 = &v156 - v18;
  v19 = sub_BD88(&unk_9457E0);
  __chkstk_darwin(v19 - 8);
  v170 = &v156 - v20;
  v21 = sub_BD88(&unk_94A780);
  __chkstk_darwin(v21 - 8);
  v169 = &v156 - v22;
  v23 = sub_BD88(&unk_944E00);
  __chkstk_darwin(v23 - 8);
  v161 = &v156 - v24;
  v25 = sub_763750();
  v159 = *(v25 - 8);
  __chkstk_darwin(v25);
  v160 = &v156 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_BD88(&unk_948730);
  __chkstk_darwin(v27 - 8);
  v173 = (&v156 - v28);
  v29 = sub_BD88(&qword_94EC40);
  __chkstk_darwin(v29 - 8);
  v31 = &v156 - v30;
  v32 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider31EditorialCardCollectionViewCell_captionLabel];
  sub_75A200();
  if (v33)
  {
    v34 = sub_769210();
  }

  else
  {
    v34 = 0;
  }

  [v32 setText:v34];

  v35 = *&v4[OBJC_IVAR____TtC18ASMessagesProvider31EditorialCardCollectionViewCell_titleLabel];
  sub_75A1D0();
  if (v36)
  {
    v37 = sub_769210();
  }

  else
  {
    v37 = 0;
  }

  [v35 setText:v37];

  v38 = *&v4[OBJC_IVAR____TtC18ASMessagesProvider31EditorialCardCollectionViewCell_subtitleLabel];
  sub_75A210();
  if (v39)
  {
    v40 = sub_769210();
  }

  else
  {
    v40 = 0;
  }

  [v38 setText:v40];

  v41 = sub_75A1C0();
  sub_355FD4(v41);
  v42 = sub_75A1A0();
  v163 = v14;
  if (v42)
  {
    v176 = v42;
    sub_764C80();
    sub_768900();
    sub_3FDCAC(&qword_951430, &type metadata accessor for Action);
    sub_768820();

    v43 = sub_BD88(&unk_950960);
    (*(*(v43 - 8) + 56))(v31, 0, 1, v43);
  }

  else
  {
    v44 = sub_BD88(&unk_950960);
    (*(*(v44 - 8) + 56))(v31, 1, 1, v44);
  }

  v45 = OBJC_IVAR____TtC18ASMessagesProvider31EditorialCardCollectionViewCell_clickAction;
  swift_beginAccess();
  sub_278AC(v31, &v4[v45]);
  swift_endAccess();
  v46 = *&v4[OBJC_IVAR____TtC18ASMessagesProvider31EditorialCardCollectionViewCell_gradientBlurView];
  if (sub_75A1F0())
  {
    v47 = sub_7651A0();
  }

  else
  {
    v47 = 0;
  }

  v48 = *&v46[OBJC_IVAR____TtC18ASMessagesProvider28MediaOverlayGradientBlurView_secondaryColor];
  *&v46[OBJC_IVAR____TtC18ASMessagesProvider28MediaOverlayGradientBlurView_secondaryColor] = v47;
  v49 = v47;

  sub_4AA084();
  v50 = *&v4[OBJC_IVAR____TtC18ASMessagesProvider31EditorialCardCollectionViewCell_appEventFormattedDateView];
  if (v50)
  {
    type metadata accessor for AppEventLiveIndicatorAnimationCoordinator();
    v51 = v50;
    sub_7688F0();
    v52 = v176;
    v53 = v4;
    v54 = v46;
    v55 = a1;
    v56 = OBJC_IVAR____TtC18ASMessagesProvider29AppPromotionFormattedDateView_liveIndicatorAnimationCoordinator;
    v57 = *&v51[OBJC_IVAR____TtC18ASMessagesProvider29AppPromotionFormattedDateView_liveIndicatorAnimationCoordinator];
    v58 = v57;
    sub_26CAC0(v52);
    v59 = *&v51[v56];
    *&v51[v56] = v52;
    a1 = v55;
    v46 = v54;
    v4 = v53;
    v60 = v52;

    sub_26CC24(v57);
  }

  v61 = sub_75A1E0();
  v62 = &unk_90D000;
  if (v61)
  {
    v63 = v61;
    v156 = v4;
    v64 = *&v4[OBJC_IVAR____TtC18ASMessagesProvider31EditorialCardCollectionViewCell_lockupView];
    v65 = v159;
    v66 = *(v159 + 104);
    v66(v160, enum case for OfferButtonPresenterViewAlignment.right(_:), v25);
    v67 = v161;
    v66(v161, enum case for OfferButtonPresenterViewAlignment.left(_:), v25);
    (*(v65 + 56))(v67, 0, 1, v25);
    sub_3FDCAC(&unk_944E10, &type metadata accessor for OfferButtonPresenterViewAlignment);
    v68 = v173;
    sub_760940();
    v69 = sub_BD88(&unk_948740);
    (*(*(v69 - 8) + 56))(v68, 0, 1, v69);
    v70 = *(v64 + OBJC_IVAR____TtC18ASMessagesProvider19CrossLinkLockupView_artworkView);
    v71 = sub_764EE0();
    if (v71)
    {
    }

    v161 = v46;
    [v70 setHidden:v71 == 0];
    v160 = OBJC_IVAR____TtC18ASMessagesProvider19CrossLinkLockupView_lockupView;
    v72 = *(v64 + OBJC_IVAR____TtC18ASMessagesProvider19CrossLinkLockupView_lockupView);
    v73 = sub_758C70();
    v74 = v169;
    (*(*(v73 - 8) + 56))(v169, 1, 1, v73);
    v75 = sub_75BD30();
    v76 = v170;
    (*(*(v75 - 8) + 56))(v170, 1, 1, v75);
    v77 = sub_BD88(&unk_9457F0);
    v78 = v171;
    (*(*(v77 - 8) + 56))(v171, 1, 1, v77);
    v79 = sub_765870();
    v80 = v162;
    (*(*(v79 - 8) + 56))(v162, 1, 1, v79);
    sub_4A18A4(v63, v72, v173, v175, 1, 0, v74, v76, v80, v78);
    sub_10A2C(v80, &unk_9457D0);
    v72[OBJC_IVAR____TtC18ASMessagesProvider15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 1;
    sub_1FD89C();
    [v72 setNeedsLayout];
    v81 = OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_tertiaryTitleLabel;
    v82 = *&v72[OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_tertiaryTitleLabel];
    if (v82)
    {
      [v82 setHidden:1];
      v83 = *&v72[v81];
      if (v83)
      {
        [v83 setText:0];
      }
    }

    v84 = OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_headingLabel;
    v85 = *&v72[OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_headingLabel];
    if (v85)
    {
      if (([v85 isHidden] & 1) == 0)
      {
        v86 = *&v72[v84];
        if (v86)
        {
          if ([v86 hasContent])
          {
            v87 = OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_subtitleLabel;
            [*&v72[OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_subtitleLabel] setHidden:1];
            [*&v72[v87] setText:0];
          }
        }
      }
    }

    v168 = a1;
    v88 = OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_offerLabel;
    v89 = [*&v72[OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_offerLabel] isHidden];
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

      v93 = OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_subtitleLabel;
      [*&v72[OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_subtitleLabel] setHidden:1];
      [*&v72[v93] setText:0];
    }

    sub_10A2C(v171, &unk_94AC40);
    sub_10A2C(v170, &unk_9457E0);
    sub_10A2C(v169, &unk_94A780);
    sub_764F00();
    v94 = sub_764DE0();
    v96 = v95;
    v97 = sub_764E40();
    v99 = v98;
    v100 = sub_764E00();
    v171 = v63;
    if (v96 && v99)
    {
      v101 = v100;
      v170 = v94;
      v102 = v164;
      (*(v164 + 16))(v158, v90, v167);
      sub_BD88(&unk_944300);
      sub_768900();
      sub_768ED0();
      v169 = v97;
      v104 = v176;
      v103 = v177;
      type metadata accessor for CrossLinkPresenter();
      swift_allocObject();
      v105 = v64;
      v106 = CrossLinkPresenter.init(adamId:title:subtitle:includeBetaApps:view:appStateController:)(v158, v170, v96, v169, v99, v101 & 1, v64, &off_884798, v104, v103);
      (*(v102 + 8))(v90, v167);
      sub_10A2C(v173, &unk_948730);
      v107 = OBJC_IVAR____TtC18ASMessagesProvider19CrossLinkLockupView_crossLinkPresenter;
      swift_beginAccess();
      *&v105[v107] = v106;
    }

    else
    {

      v110 = OBJC_IVAR____TtC18ASMessagesProvider19CrossLinkLockupView_crossLinkPresenter;
      swift_beginAccess();
      *(v64 + v110) = 0;

      sub_11EE80(0, 0);
      (*(v164 + 8))(v90, v167);
      sub_10A2C(v173, &unk_948730);
    }

    v111 = v174;
    v112 = v160;
    v113 = *(*&v160[v64] + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_headingLabel);
    if (v113)
    {
      v114 = qword_93D5A8;
      v115 = v113;
      if (v114 != -1)
      {
        swift_once();
      }

      v116 = sub_7666D0();
      v117 = sub_BE38(v116, qword_99E908);
      v118 = *(v116 - 8);
      v119 = v157;
      (*(v118 + 16))(v157, v117, v116);
      (*(v118 + 56))(v119, 0, 1, v116);
      sub_75BA40();
    }

    v120 = v165;
    sub_75A1B0();
    v121 = sub_75CA20();
    v124 = *(v111 + 8);
    v123 = v111 + 8;
    v122 = v124;
    (v124)(v120, v172);
    v125 = *(*&v112[v64] + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_offerButton);
    if (v121 == 2)
    {
      v126 = objc_opt_self();
      v127 = v125;
      v128 = [v126 whiteColor];
    }

    else
    {
      sub_BE70(0, &qword_93E540);
      v129 = v125;
      v128 = sub_76A0F0();
    }

    v130 = v128;
    [v125 setTintColor:v128];

    [v64 setHidden:0];
    v131 = v166;
    sub_75A1B0();
    v132 = sub_75CA20();
    v133 = v172;
    (v122)(v131, v172);
    [v64 setOverrideUserInterfaceStyle:v132];
    [*(*&v112[v64] + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_offerLabel) _setTextColorFollowsTintColor:0];
    v134 = *(*&v112[v64] + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_offerLabel);
    sub_BE70(0, &qword_93E540);
    v135 = v134;
    v136 = sub_769FD0();
    v173 = v122;
    v137 = v136;
    v138 = [v136 colorWithAlphaComponent:0.7];
    v174 = v123;
    v139 = v138;

    [v135 setTextColor:v139];
    v140 = *(*&v112[v64] + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_subtitleLabel);
    v141 = sub_769FD0();
    v142 = [v141 colorWithAlphaComponent:0.7];

    [v140 setTextColor:v142];
    v143 = *(v64 + OBJC_IVAR____TtC18ASMessagesProvider19CrossLinkLockupView_crossLinkTitleLabel);
    v144 = sub_769FD0();
    v145 = [v144 colorWithAlphaComponent:0.7];

    [v143 setTextColor:v145];
    v62 = &unk_90D000;
    [v64 setNeedsLayout];
    v146 = swift_allocObject();
    v147 = v156;
    swift_unknownObjectWeakInit();
    v148 = swift_allocObject();
    v149 = v171;
    *(v148 + 2) = v146;
    *(v148 + 3) = v149;
    *(v148 + 4) = v175;
    v150 = &v147[OBJC_IVAR____TtC18ASMessagesProvider31EditorialCardCollectionViewCell_lockupViewTappedAction];
    v151 = *&v147[OBJC_IVAR____TtC18ASMessagesProvider31EditorialCardCollectionViewCell_lockupViewTappedAction];
    *v150 = sub_3FDCA0;
    v150[1] = v148;

    sub_F704(v151);

    v152 = v161;
    [v161 setHidden:0];
    sub_75A1B0();
    v153 = sub_75CA20();
    (v173)(v131, v133);
    v154 = v152;
    v4 = v147;
    [v154 setOverrideUserInterfaceStyle:v153];
  }

  else
  {
    v108 = &v4[OBJC_IVAR____TtC18ASMessagesProvider31EditorialCardCollectionViewCell_lockupViewTappedAction];
    v109 = *&v4[OBJC_IVAR____TtC18ASMessagesProvider31EditorialCardCollectionViewCell_lockupViewTappedAction];
    *v108 = 0;
    *(v108 + 1) = 0;
    sub_F704(v109);
    [*&v4[OBJC_IVAR____TtC18ASMessagesProvider31EditorialCardCollectionViewCell_lockupView] setHidden:1];
    [v46 setHidden:1];
  }

  sub_357860();
  return [v4 v62[463]];
}

uint64_t sub_3FDC20()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_3FDC58()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_3FDCAC(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_3FDCF4()
{
  swift_getObjectType();
  PageTraitEnvironment.pageColumnWidth.getter();
  if (qword_93CD48 != -1)
  {
    swift_once();
  }

  v0 = sub_75D510();
  sub_BE38(v0, qword_99D278);
  sub_75D530();
  sub_3FDCAC(&qword_94F368, &type metadata accessor for FlowcaseItemLayout);
  sub_766ED0();
  if (qword_93CD50 != -1)
  {
    swift_once();
  }

  v1 = sub_767510();
  sub_BE38(v1, qword_99D290);
  sub_769DD0();
  v3 = v2;
  v5 = v4;
  v6 = objc_opt_self();
  v7 = [v6 absoluteDimension:v3];
  v8 = [v6 absoluteDimension:v5];
  v9 = [objc_opt_self() sizeWithWidthDimension:v7 heightDimension:v8];

  v10 = [objc_opt_self() itemWithLayoutSize:v9];
  v11 = objc_opt_self();
  sub_BD88(&unk_93F5C0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_77D9F0;
  *(v12 + 32) = v10;
  sub_BE70(0, &qword_957F90);
  v13 = v10;
  isa = sub_769450().super.isa;

  v15 = [v11 verticalGroupWithLayoutSize:v9 subitems:isa];

  return v15;
}

uint64_t sub_3FDFBC@<X0>(void (*a1)(uint64_t, uint64_t)@<X0>, void *a2@<X8>)
{
  v141 = a2;
  v124 = sub_BD88(&qword_94B998);
  __chkstk_darwin(v124);
  v125 = &v119 - v3;
  v4 = sub_BD88(&qword_94B9A0);
  __chkstk_darwin(v4 - 8);
  v120 = &v119 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v128 = &v119 - v7;
  __chkstk_darwin(v8);
  v131 = &v119 - v9;
  v10 = sub_75B660();
  v11 = *(v10 - 8);
  v137 = v10;
  v138 = v11;
  __chkstk_darwin(v10);
  v133 = &v119 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v135 = &v119 - v14;
  v140 = sub_BD88(&qword_93F918);
  __chkstk_darwin(v140);
  v144 = &v119 - v15;
  v16 = sub_BD88(&qword_951BE0);
  __chkstk_darwin(v16 - 8);
  v130 = &v119 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v121 = &v119 - v19;
  __chkstk_darwin(v20);
  v129 = &v119 - v21;
  __chkstk_darwin(v22);
  v126 = &v119 - v23;
  __chkstk_darwin(v24);
  v145 = &v119 - v25;
  v26 = sub_BD88(&qword_963790);
  __chkstk_darwin(v26 - 8);
  v123 = &v119 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v139 = (&v119 - v29);
  __chkstk_darwin(v30);
  v32 = &v119 - v31;
  __chkstk_darwin(v33);
  v35 = &v119 - v34;
  v36 = sub_BD88(&unk_94F1F0);
  v37 = *(v36 - 8);
  __chkstk_darwin(v36);
  v39 = &v119 - v38;
  v40 = sub_764930();
  v41 = *(v40 - 8);
  v146 = v40;
  v147 = v41;
  __chkstk_darwin(v40);
  v127 = &v119 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v43);
  v45 = &v119 - v44;
  sub_75DAA0();
  swift_getKeyPath();
  v143 = v45;
  sub_768750();

  v46 = *(v37 + 8);
  v132 = v39;
  v47 = v39;
  v48 = v139;
  v46(v47, v36);
  v49 = a1;
  v50 = v36;
  v134 = v49;
  sub_75DA50();
  sub_10A2C(v32, &qword_963790);
  v142 = v35;
  sub_1ED18(v35, v48, &qword_963790);
  v51 = *(v37 + 48);
  v122 = v37 + 48;
  v52 = v51(v48, 1, v50);
  v136 = v37 + 8;
  if (v52 == 1)
  {
    sub_10A2C(v48, &qword_963790);
    v53 = 1;
    v54 = v145;
  }

  else
  {
    swift_getKeyPath();
    v54 = v145;
    sub_768750();

    v46(v48, v50);
    v53 = 0;
  }

  v55 = v146;
  v56 = v147;
  (*(v147 + 56))(v54, v53, 1, v146);
  v57 = *(v140 + 48);
  v58 = v144;
  (*(v56 + 16))(v144, v143, v55);
  v59 = v57;
  sub_1ED18(v54, &v58[v57], &qword_951BE0);
  v60 = *(v56 + 88);
  v61 = v60(v58, v55);
  if (v61 == enum case for Shelf.ContentType.editorsChoice(_:))
  {
    LODWORD(v140) = enum case for Shelf.ContentType.editorsChoice(_:);
    v139 = v51;
    v62 = v132;
    sub_75DAA0();
    swift_getKeyPath();
    v63 = v135;
    sub_768750();

    v134 = v46;
    v46(v62, v50);
    v64 = v138;
    v65 = v133;
    v66 = v60;
    v67 = v137;
    (*(v138 + 104))(v133, enum case for ShelfBackground.editorsChoice(_:), v137);
    v68 = sub_75B650();
    v69 = *(v64 + 8);
    v69(v65, v67);
    v70 = v67;
    v60 = v66;
    v69(v63, v70);
    v71 = v144;
    if (v68)
    {
      v72 = v141;
      v141[3] = &type metadata for CGFloat;
      v72[4] = &protocol witness table for CGFloat;
      *v72 = 0x403C000000000000;
LABEL_7:
      sub_10A2C(v145, &qword_951BE0);
      sub_10A2C(v142, &qword_963790);
      v73 = v146;
      v74 = *(v147 + 8);
      v74(v143, v146);
LABEL_8:
      sub_10A2C(v71 + v59, &qword_951BE0);
      return (v74)(v71, v73);
    }

LABEL_17:
    v83 = v146;
    v82 = v147;
    if ((*(v147 + 48))(v71 + v59, 1, v146) != 1)
    {
      v84 = v130;
      sub_1ED18(v71 + v59, v130, &qword_951BE0);
      v85 = v60(v84, v83);
      if (v85 == v140)
      {
        v86 = v123;
        sub_1ED18(v142, v123, &qword_963790);
        if (v139(v86, 1, v50) == 1)
        {
          sub_10A2C(v86, &qword_963790);
          v87 = 1;
          v88 = v137;
          v89 = v131;
        }

        else
        {
          swift_getKeyPath();
          v89 = v131;
          sub_768750();

          v134(v86, v50);
          v87 = 0;
          v88 = v137;
        }

        v97 = v128;
        v98 = v138;
        v99 = *(v138 + 56);
        v99(v89, v87, 1, v88);
        (*(v98 + 104))(v97, enum case for ShelfBackground.editorsChoice(_:), v88);
        v99(v97, 0, 1, v88);
        v100 = *(v124 + 48);
        v101 = v89;
        v102 = v125;
        sub_1ED18(v101, v125, &qword_94B9A0);
        sub_1ED18(v97, v102 + v100, &qword_94B9A0);
        v103 = *(v98 + 48);
        if (v103(v102, 1, v88) == 1)
        {
          sub_10A2C(v97, &qword_94B9A0);
          sub_10A2C(v131, &qword_94B9A0);
          if (v103(v102 + v100, 1, v88) == 1)
          {
            sub_10A2C(v102, &qword_94B9A0);
LABEL_44:
            if (qword_93DD10 != -1)
            {
              swift_once();
            }

            v115 = sub_766CA0();
            v116 = sub_BE38(v115, qword_99FE78);
            v117 = v141;
            v141[3] = v115;
            v117[4] = &protocol witness table for StaticDimension;
            v118 = sub_B1B4(v117);
            (*(*(v115 - 8) + 16))(v118, v116, v115);
            goto LABEL_7;
          }
        }

        else
        {
          v104 = v131;
          v105 = v120;
          sub_1ED18(v102, v120, &qword_94B9A0);
          if (v103(v102 + v100, 1, v88) != 1)
          {
            v111 = v138;
            v112 = v102 + v100;
            v113 = v135;
            (*(v138 + 32))(v135, v112, v88);
            sub_401D54(&qword_9439F8, &type metadata accessor for ShelfBackground);
            LODWORD(v144) = sub_7691C0();
            v114 = *(v111 + 8);
            v114(v113, v88);
            sub_10A2C(v128, &qword_94B9A0);
            sub_10A2C(v104, &qword_94B9A0);
            v114(v105, v88);
            sub_10A2C(v102, &qword_94B9A0);
            v83 = v146;
            v82 = v147;
            if (v144)
            {
              goto LABEL_44;
            }

            goto LABEL_38;
          }

          sub_10A2C(v128, &qword_94B9A0);
          sub_10A2C(v104, &qword_94B9A0);
          (*(v138 + 8))(v105, v88);
        }

        sub_10A2C(v102, &qword_94B998);
        v83 = v146;
        v82 = v147;
      }

      else
      {
        v82 = v147;
        (*(v147 + 8))(v84, v83);
      }
    }

LABEL_38:
    v106 = v141;
    v141[3] = &type metadata for Double;
    v106[4] = &protocol witness table for Double;
    *v106 = 0;
    sub_10A2C(v145, &qword_951BE0);
    sub_10A2C(v142, &qword_963790);
    (*(v82 + 8))(v143, v83);
    return sub_10A2C(v71, &qword_93F918);
  }

  if (v61 == enum case for Shelf.ContentType.productMediaItem(_:))
  {
    v73 = v146;
    v76 = v147;
    v77 = *(v147 + 48);
    v71 = v144;
    if (v77(&v144[v59], 1, v146) != 1)
    {
      v78 = v126;
      sub_1ED18(v71 + v59, v126, &qword_951BE0);
      if (v60(v78, v73) == enum case for Shelf.ContentType.smallLockup(_:))
      {
        v79 = v141;
        v141[3] = &type metadata for Double;
        v79[4] = &protocol witness table for Double;
        *v79 = 0;
        sub_10A2C(v145, &qword_951BE0);
        sub_10A2C(v142, &qword_963790);
        v74 = *(v76 + 8);
        v74(v143, v73);
        goto LABEL_8;
      }

      (*(v76 + 8))(v78, v73);
    }

    v90 = v145;
    v91 = v129;
    sub_1ED18(v145, v129, &qword_951BE0);
    if (v77(v91, 1, v73) == 1)
    {
      sub_10A2C(v91, &qword_951BE0);
      v81 = v73;
    }

    else
    {
      v92 = v127;
      (*(v76 + 32))(v127, v91, v73);
      v81 = v73;
      if (qword_93E208 != -1)
      {
        swift_once();
      }

      if (sub_666CB0(v92, qword_9A0940))
      {
        if (qword_93DCF8 != -1)
        {
          swift_once();
        }

        v93 = sub_766CA0();
        v94 = sub_BE38(v93, qword_99FE30);
        v95 = v141;
        v141[3] = v93;
        v95[4] = &protocol witness table for StaticDimension;
        v96 = sub_B1B4(v95);
        (*(*(v93 - 8) + 16))(v96, v94, v93);
        v74 = *(v76 + 8);
        v73 = v146;
        v74(v127, v146);
        sub_10A2C(v90, &qword_951BE0);
        sub_10A2C(v142, &qword_963790);
        v74(v143, v73);
        goto LABEL_8;
      }

      (*(v76 + 8))(v92, v73);
    }
  }

  else
  {
    LODWORD(v140) = enum case for Shelf.ContentType.editorsChoice(_:);
    v139 = v51;
    v134 = v46;
    v71 = v144;
    if (v61 != enum case for Shelf.ContentType.productPageLink(_:) || (*(v147 + 48))(&v144[v57], 1, v146) == 1)
    {
      goto LABEL_17;
    }

    v80 = v121;
    sub_1ED18(v71 + v57, v121, &qword_951BE0);
    v81 = v146;
    if (v60(v80, v146) != enum case for Shelf.ContentType.annotation(_:))
    {
      (*(v147 + 8))(v80, v81);
      goto LABEL_17;
    }
  }

  sub_10A2C(v71 + v59, &qword_951BE0);
  v107 = *(v147 + 8);
  v107(v71, v81);
  if (qword_93DD00 != -1)
  {
    swift_once();
  }

  v108 = sub_766CA0();
  sub_BE38(v108, qword_99FE48);
  sub_766C80();
  v109 = v141;
  v141[3] = &type metadata for CGFloat;
  v109[4] = &protocol witness table for CGFloat;
  *v109 = v110;
  sub_10A2C(v145, &qword_951BE0);
  sub_10A2C(v142, &qword_963790);
  return (v107)(v143, v81);
}

uint64_t sub_3FF1C4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v163 = a2;
  v3 = sub_75B660();
  v155 = *(v3 - 8);
  v156 = v3;
  __chkstk_darwin(v3);
  v154 = &v141 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v158 = &v141 - v6;
  v7 = sub_7656C0();
  v149 = *(v7 - 8);
  v150 = v7;
  __chkstk_darwin(v7);
  v148 = &v141 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v162 = sub_BD88(&qword_93F918);
  __chkstk_darwin(v162);
  v166 = &v141 - v9;
  v10 = sub_764930();
  v11 = *(v10 - 8);
  v164 = v10;
  v165 = v11;
  __chkstk_darwin(v10);
  v161 = &v141 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_BD88(&unk_94F1F0);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v153 = &v141 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v141 - v17;
  v19 = sub_BD88(&qword_963790);
  __chkstk_darwin(v19 - 8);
  v21 = &v141 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v141 - v23;
  __chkstk_darwin(v25);
  v27 = &v141 - v26;
  v28 = sub_BD88(&qword_951BE0);
  __chkstk_darwin(v28 - 8);
  v142 = &v141 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v141 = &v141 - v31;
  __chkstk_darwin(v32);
  v144 = &v141 - v33;
  __chkstk_darwin(v34);
  v147 = &v141 - v35;
  __chkstk_darwin(v36);
  v151 = &v141 - v37;
  __chkstk_darwin(v38);
  v160 = &v141 - v39;
  __chkstk_darwin(v40);
  v159 = &v141 - v41;
  __chkstk_darwin(v42);
  v157 = &v141 - v43;
  __chkstk_darwin(v44);
  v152 = &v141 - v45;
  __chkstk_darwin(v46);
  v146 = &v141 - v47;
  __chkstk_darwin(v48);
  v145 = &v141 - v49;
  __chkstk_darwin(v50);
  v143 = &v141 - v51;
  __chkstk_darwin(v52);
  v54 = &v141 - v53;
  v167 = a1;
  sub_75DA50();
  sub_10A2C(v24, &qword_963790);
  sub_2C88C(v21, v27);
  if ((*(v14 + 48))(v27, 1, v13) == 1)
  {
    sub_10A2C(v27, &qword_963790);
    v55 = 1;
  }

  else
  {
    swift_getKeyPath();
    sub_768750();

    (*(v14 + 8))(v27, v13);
    v55 = 0;
  }

  v56 = v165;
  v57 = v54;
  v58 = v54;
  v59 = v164;
  (*(v165 + 56))(v57, v55, 1, v164);
  sub_75DAA0();
  swift_getKeyPath();
  v60 = v161;
  sub_768750();

  v61 = *(v14 + 8);
  v61(v18, v13);
  v62 = v166;
  v63 = v60;
  v64 = *(v162 + 48);
  (*(v56 + 32))(v166, v63, v59);
  v162 = v58;
  sub_1ED18(v58, &v62[v64], &qword_951BE0);
  v65 = *(v56 + 88);
  v66 = v65(v62, v59);
  if (v66 == enum case for Shelf.ContentType.productTopLockup(_:))
  {
    goto LABEL_5;
  }

  if (v66 == enum case for Shelf.ContentType.annotation(_:))
  {
    if ((*(v56 + 48))(&v62[v64], 1, v59) != 1)
    {
      v70 = v159;
      sub_1ED18(&v62[v64], v159, &qword_951BE0);
      v71 = v65(v70, v59);
      v160 = v70;
      if (v71 == enum case for Shelf.ContentType.productPageLink(_:))
      {
        if (qword_93DD00 != -1)
        {
          swift_once();
        }

        v72 = sub_766CA0();
        sub_BE38(v72, qword_99FE48);
        sub_766C80();
        v73 = v163;
        v163[3] = &type metadata for CGFloat;
        v73[4] = &protocol witness table for CGFloat;
        *v73 = v74;
        goto LABEL_22;
      }

      goto LABEL_84;
    }

LABEL_85:
    if (qword_93DD10 != -1)
    {
      swift_once();
    }

    v137 = sub_766CA0();
    v138 = sub_BE38(v137, qword_99FE78);
    v139 = v163;
    v163[3] = v137;
    v139[4] = &protocol witness table for StaticDimension;
    v140 = sub_B1B4(v139);
    (*(*(v137 - 8) + 16))(v140, v138, v137);
    sub_10A2C(v162, &qword_951BE0);
    v69 = &qword_93F918;
    v68 = v62;
    return sub_10A2C(v68, v69);
  }

  if (v66 == enum case for Shelf.ContentType.titledParagraph(_:))
  {
    if ((*(v56 + 48))(&v62[v64], 1, v59) == 1)
    {
      goto LABEL_85;
    }

    v75 = v157;
    sub_1ED18(&v62[v64], v157, &qword_951BE0);
    v76 = v65(v75, v59);
    v160 = v75;
    if (v76 == enum case for Shelf.ContentType.productMediaItem(_:))
    {
      goto LABEL_16;
    }

LABEL_84:
    (*(v56 + 8))(v160, v59);
    goto LABEL_85;
  }

  if (v66 == enum case for Shelf.ContentType.reviewSummary(_:))
  {
    goto LABEL_21;
  }

  v86 = enum case for Shelf.ContentType.editorsChoice(_:);
  if (v66 == enum case for Shelf.ContentType.editorsChoice(_:))
  {
    v87 = v153;
    sub_75DAA0();
    swift_getKeyPath();
    sub_768750();

    v61(v87, v13);
    v89 = v154;
    v88 = v155;
    v90 = v156;
    (*(v155 + 104))(v154, enum case for ShelfBackground.editorsChoice(_:), v156);
    v91 = v158;
    v92 = sub_75B650();
    v93 = *(v88 + 8);
    v93(v89, v90);
    v93(v91, v90);
    if ((v92 & 1) == 0)
    {
      goto LABEL_85;
    }

    v94 = v163;
    v163[3] = &type metadata for CGFloat;
    v94[4] = &protocol witness table for CGFloat;
    *v94 = 0x403E000000000000;
    goto LABEL_22;
  }

  if (v66 == enum case for Shelf.ContentType.productMediaItem(_:))
  {
    if ((*(v56 + 48))(&v62[v64], 1, v59) != 1)
    {
      v95 = v152;
      sub_1ED18(&v62[v64], v152, &qword_951BE0);
      v96 = v65(v95, v59);
      if (v96 == enum case for Shelf.ContentType.ribbonFlow(_:) || v96 == enum case for Shelf.ContentType.productRatings(_:))
      {
        sub_10A2C(&v62[v64], &qword_951BE0);
        (*(v56 + 8))(v62, v59);
        if (qword_93DD10 != -1)
        {
          swift_once();
        }

        v77 = sub_766CA0();
        v78 = v77;
        v79 = qword_99FE78;
        goto LABEL_19;
      }

      (*(v56 + 8))(v95, v59);
    }

LABEL_16:
    sub_10A2C(&v62[v64], &qword_951BE0);
    (*(v56 + 8))(v62, v59);
    if (qword_93DCF8 != -1)
    {
      swift_once();
    }

    v77 = sub_766CA0();
    v78 = v77;
    v79 = qword_99FE30;
LABEL_19:
    v80 = sub_BE38(v77, v79);
    v81 = v163;
    v163[3] = v78;
    v81[4] = &protocol witness table for StaticDimension;
    v82 = sub_B1B4(v81);
    (*(*(v78 - 8) + 16))(v82, v80, v78);
    v69 = &qword_951BE0;
    v68 = v162;
    return sub_10A2C(v68, v69);
  }

  if (v66 == enum case for Shelf.ContentType.productRatings(_:))
  {
LABEL_21:
    v83 = sub_75B680();
    v84 = v163;
    v163[3] = v83;
    v84[4] = sub_401D54(&qword_94DA48, &type metadata accessor for SpacerDimension);
    sub_B1B4(v84);
    sub_75B670();
    goto LABEL_22;
  }

  v97 = enum case for Shelf.ContentType.productReview(_:);
  if (v66 == enum case for Shelf.ContentType.productReview(_:))
  {
    v98 = v66;
    if ((*(v56 + 48))(&v62[v64], 1, v59) == 1)
    {
      goto LABEL_85;
    }

    v99 = v151;
    sub_1ED18(&v62[v64], v151, &qword_951BE0);
    v100 = v65(v99, v59);
    if (v100 == v98)
    {
      v101 = v148;
      sub_75DA20();
      sub_7655F0();
      v103 = v102;
      (*(v149 + 8))(v101, v150);
      v104 = v163;
      v163[3] = &type metadata for CGFloat;
      v104[4] = &protocol witness table for CGFloat;
      *v104 = v103;
      goto LABEL_22;
    }

    if (v100 == enum case for Shelf.ContentType.productReviewAction(_:))
    {
      goto LABEL_21;
    }

    v160 = v99;
    if (v100 != enum case for Shelf.ContentType.linkableText(_:))
    {
      goto LABEL_84;
    }

    v115 = v163;
    v163[3] = &type metadata for Double;
    v115[4] = &protocol witness table for Double;
    *v115 = 0;
LABEL_22:
    sub_10A2C(v162, &qword_951BE0);
    sub_10A2C(&v62[v64], &qword_951BE0);
    return (*(v56 + 8))(v62, v59);
  }

  v105 = enum case for Shelf.ContentType.productReviewAction(_:);
  if (v66 == enum case for Shelf.ContentType.productReviewAction(_:))
  {
    v105 = v66;
    if ((*(v56 + 48))(&v62[v64], 1, v59) == 1)
    {
      goto LABEL_85;
    }

    v106 = v160;
    sub_1ED18(&v62[v64], v160, &qword_951BE0);
    v107 = v65(v106, v59);
    if (v107 == v97)
    {
      if (qword_93DD00 != -1)
      {
        swift_once();
      }

      v108 = sub_766CA0();
      v109 = v108;
      v110 = qword_99FE48;
LABEL_53:
      v112 = sub_BE38(v108, v110);
      v113 = v163;
      v163[3] = v109;
      v113[4] = &protocol witness table for StaticDimension;
      v114 = sub_B1B4(v113);
      (*(*(v109 - 8) + 16))(v114, v112, v109);
      goto LABEL_22;
    }

    goto LABEL_49;
  }

  if (v66 == enum case for Shelf.ContentType.linkableText(_:))
  {
    if ((*(v56 + 48))(&v62[v64], 1, v59) == 1)
    {
      goto LABEL_85;
    }

    v111 = v147;
    sub_1ED18(&v62[v64], v147, &qword_951BE0);
    v107 = v65(v111, v59);
    v160 = v111;
LABEL_49:
    if (v107 != v105)
    {
      goto LABEL_84;
    }

LABEL_50:
    if (qword_93DD08 != -1)
    {
      swift_once();
    }

    v108 = sub_766CA0();
    v109 = v108;
    v110 = qword_99FE60;
    goto LABEL_53;
  }

  if (v66 == enum case for Shelf.ContentType.informationRibbon(_:))
  {
    goto LABEL_5;
  }

  if (v66 == enum case for Shelf.ContentType.privacyHeader(_:))
  {
    if ((*(v56 + 48))(&v62[v64], 1, v59) == 1)
    {
      goto LABEL_85;
    }

    v116 = v146;
    sub_1ED18(&v62[v64], v146, &qword_951BE0);
    v117 = v65(v116, v59);
    v160 = v116;
    if (v117 != enum case for Shelf.ContentType.privacyType(_:))
    {
      goto LABEL_84;
    }

    goto LABEL_50;
  }

  if (v66 == enum case for Shelf.ContentType.privacyType(_:))
  {
    if ((*(v56 + 48))(&v62[v64], 1, v59) == 1)
    {
      goto LABEL_85;
    }

    v118 = v145;
    sub_1ED18(&v62[v64], v145, &qword_951BE0);
    v119 = v65(v118, v59);
    v160 = v118;
    if (v119 != enum case for Shelf.ContentType.privacyFooter(_:))
    {
      goto LABEL_84;
    }

    goto LABEL_5;
  }

  if (v66 == enum case for Shelf.ContentType.appPromotion(_:))
  {
    if ((*(v56 + 48))(&v62[v64], 1, v59) == 1)
    {
      goto LABEL_85;
    }

    v120 = v144;
    sub_1ED18(&v62[v64], v144, &qword_951BE0);
    v121 = v65(v120, v59);
    v160 = v120;
    if (v121 != v86)
    {
      goto LABEL_84;
    }

    goto LABEL_21;
  }

  v122 = v64;
  if (v66 != enum case for Shelf.ContentType.productBadge(_:))
  {
    v129 = v66;
    v130 = enum case for Shelf.ContentType.accessibilityFeatures(_:);
    if (v66 == enum case for Shelf.ContentType.accessibilityFeatures(_:))
    {
      v56 = v165;
      v62 = v166;
      v59 = v164;
      if ((*(v165 + 48))(&v166[v64], 1, v164) == 1)
      {
        goto LABEL_85;
      }

      v131 = v142;
      sub_1ED18(&v62[v64], v142, &qword_951BE0);
      v132 = v65(v131, v59);
      v160 = v131;
      if (v132 != enum case for Shelf.ContentType.accessibilityParagraph(_:))
      {
        goto LABEL_84;
      }
    }

    else
    {
      v56 = v165;
      v62 = v166;
      v59 = v164;
      if (v66 != enum case for Shelf.ContentType.accessibilityParagraph(_:) || (*(v165 + 48))(&v166[v64], 1, v164) == 1)
      {
        goto LABEL_85;
      }

      v135 = v141;
      sub_1ED18(&v62[v64], v141, &qword_951BE0);
      v136 = v65(v135, v59);
      if (v136 != v130)
      {
        v160 = v141;
        if (v136 != v129)
        {
          goto LABEL_84;
        }
      }
    }

    sub_10A2C(&v62[v64], &qword_951BE0);
    (*(v56 + 8))(v62, v59);
    v133 = sub_75B680();
    v134 = v163;
    v163[3] = v133;
    v134[4] = sub_401D54(&qword_94DA48, &type metadata accessor for SpacerDimension);
    sub_B1B4(v134);
    sub_75B670();
    goto LABEL_6;
  }

  v56 = v165;
  v62 = v166;
  v59 = v164;
  if ((*(v165 + 48))(&v166[v64], 1, v164) == 1)
  {
LABEL_5:
    sub_10A2C(&v62[v64], &qword_951BE0);
    (*(v56 + 8))(v62, v59);
    v67 = v163;
    v163[3] = &type metadata for Double;
    v67[4] = &protocol witness table for Double;
    *v67 = 0;
LABEL_6:
    v68 = v162;
    v69 = &qword_951BE0;
    return sub_10A2C(v68, v69);
  }

  v123 = v143;
  sub_1ED18(&v62[v122], v143, &qword_951BE0);
  if (v65(v123, v59) != enum case for Shelf.ContentType.smallLockup(_:))
  {
    v59 = v164;
    v56 = v165;
    (*(v165 + 8))(v143, v164);
    v62 = v166;
    v64 = v122;
    goto LABEL_5;
  }

  if (qword_93DD00 != -1)
  {
    swift_once();
  }

  v124 = sub_766CA0();
  v125 = sub_BE38(v124, qword_99FE48);
  v126 = v163;
  v163[3] = v124;
  v126[4] = &protocol witness table for StaticDimension;
  v127 = sub_B1B4(v126);
  (*(*(v124 - 8) + 16))(v127, v125, v124);
  sub_10A2C(v162, &qword_951BE0);
  v128 = v166;
  sub_10A2C(&v166[v122], &qword_951BE0);
  return (*(v165 + 8))(v128, v164);
}

uint64_t sub_400874@<X0>(uint64_t *a1@<X8>)
{
  v147 = a1;
  v1 = sub_75B660();
  v141 = *(v1 - 8);
  v142 = v1;
  __chkstk_darwin(v1);
  v140 = &v130 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v139 = &v130 - v4;
  v146 = sub_BD88(&qword_93F918);
  __chkstk_darwin(v146);
  v150 = &v130 - v5;
  v6 = sub_764930();
  v7 = *(v6 - 8);
  v148 = v6;
  v149 = v7;
  __chkstk_darwin(v6);
  v9 = &v130 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_BD88(&unk_94F1F0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v144 = &v130 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v130 - v14;
  v16 = sub_BD88(&qword_963790);
  __chkstk_darwin(v16 - 8);
  v18 = &v130 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v130 - v20;
  __chkstk_darwin(v22);
  v24 = &v130 - v23;
  v25 = sub_BD88(&qword_951BE0);
  __chkstk_darwin(v25 - 8);
  v131 = &v130 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v130 = &v130 - v28;
  __chkstk_darwin(v29);
  v138 = &v130 - v30;
  __chkstk_darwin(v31);
  v135 = &v130 - v32;
  __chkstk_darwin(v33);
  v145 = &v130 - v34;
  __chkstk_darwin(v35);
  v136 = &v130 - v36;
  __chkstk_darwin(v37);
  v143 = &v130 - v38;
  __chkstk_darwin(v39);
  v137 = &v130 - v40;
  __chkstk_darwin(v41);
  v134 = &v130 - v42;
  __chkstk_darwin(v43);
  v133 = &v130 - v44;
  __chkstk_darwin(v45);
  v132 = &v130 - v46;
  __chkstk_darwin(v47);
  v49 = &v130 - v48;
  sub_75DA50();
  sub_10A2C(v21, &qword_963790);
  sub_2C88C(v18, v24);
  if ((*(v11 + 48))(v24, 1, v10) == 1)
  {
    sub_10A2C(v24, &qword_963790);
    v50 = 1;
  }

  else
  {
    swift_getKeyPath();
    sub_768750();

    (*(v11 + 8))(v24, v10);
    v50 = 0;
  }

  v51 = v148;
  v52 = v149;
  (*(v149 + 56))(v49, v50, 1, v148);
  sub_75DAA0();
  swift_getKeyPath();
  sub_768750();

  v53 = v49;
  v54 = *(v11 + 8);
  v55 = v15;
  v56 = v51;
  v54(v55, v10);
  v57 = *(v52 + 32);
  v58 = v150;
  v59 = v9;
  v60 = v52;
  v61 = *(v146 + 48);
  v57(v150, v59, v56);
  v146 = v53;
  sub_1ED18(v53, &v58[v61], &qword_951BE0);
  v62 = *(v60 + 88);
  v63 = v62(v58, v56);
  if (v63 == enum case for Shelf.ContentType.productTopLockup(_:))
  {
LABEL_5:
    sub_10A2C(&v58[v61], &qword_951BE0);
    (*(v60 + 8))(v58, v56);
    if (qword_93DCF8 != -1)
    {
      swift_once();
    }

    v64 = sub_766CA0();
    v65 = v64;
    v66 = qword_99FE30;
LABEL_12:
    v67 = sub_BE38(v64, v66);
    v68 = v147;
    v147[3] = v65;
    v68[4] = &protocol witness table for StaticDimension;
    v69 = sub_B1B4(v68);
    (*(*(v65 - 8) + 16))(v69, v67, v65);
    v70 = &qword_951BE0;
    v71 = v146;
    return sub_10A2C(v71, v70);
  }

  if (v63 == enum case for Shelf.ContentType.annotation(_:))
  {
LABEL_9:
    sub_10A2C(&v58[v61], &qword_951BE0);
    (*(v60 + 8))(v58, v56);
    if (qword_93DD00 != -1)
    {
      swift_once();
    }

    v64 = sub_766CA0();
    v65 = v64;
    v66 = qword_99FE48;
    goto LABEL_12;
  }

  if (v63 == enum case for Shelf.ContentType.titledParagraph(_:))
  {
    if ((*(v60 + 48))(&v58[v61], 1, v56) != 1)
    {
      v73 = v143;
      sub_1ED18(&v58[v61], v143, &qword_951BE0);
      v74 = v62(v73, v56);
      v145 = v73;
      if (v74 == enum case for Shelf.ContentType.productMediaItem(_:))
      {
        goto LABEL_5;
      }

      goto LABEL_52;
    }

LABEL_53:
    if (qword_93DD10 != -1)
    {
      swift_once();
    }

    v106 = sub_766CA0();
    v107 = sub_BE38(v106, qword_99FE78);
    v108 = v147;
    v147[3] = v106;
    v108[4] = &protocol witness table for StaticDimension;
    v109 = sub_B1B4(v108);
    (*(*(v106 - 8) + 16))(v109, v107, v106);
    sub_10A2C(v146, &qword_951BE0);
    v70 = &qword_93F918;
    v71 = v58;
    return sub_10A2C(v71, v70);
  }

  if (v63 == enum case for Shelf.ContentType.reviewSummary(_:))
  {
    if ((*(v60 + 48))(&v58[v61], 1, v56) == 1)
    {
      goto LABEL_53;
    }

    v75 = v138;
    sub_1ED18(&v58[v61], v138, &qword_951BE0);
    v76 = v62(v75, v56);
    v145 = v75;
    if (v76 == enum case for Shelf.ContentType.productReview(_:))
    {
      goto LABEL_21;
    }

    goto LABEL_52;
  }

  if (v63 == enum case for Shelf.ContentType.editorsChoice(_:))
  {
    sub_75DAA0();
    swift_getKeyPath();
    v78 = v61;
    v79 = v139;
    v80 = v144;
    sub_768750();

    v54(v80, v10);
    v82 = v140;
    v81 = v141;
    v83 = v142;
    (*(v141 + 104))(v140, enum case for ShelfBackground.editorsChoice(_:), v142);
    v84 = sub_75B650();
    v85 = *(v81 + 8);
    v85(v82, v83);
    v85(v79, v83);
    if ((v84 & 1) == 0)
    {
      goto LABEL_53;
    }

    v86 = v146;
    v87 = v147;
    v147[3] = &type metadata for CGFloat;
    v87[4] = &protocol witness table for CGFloat;
    *v87 = 0x403E000000000000;
    sub_10A2C(v86, &qword_951BE0);
    v88 = &v58[v78];
    goto LABEL_35;
  }

  if (v63 == enum case for Shelf.ContentType.productMediaItem(_:))
  {
    if ((*(v60 + 48))(&v58[v61], 1, v56) == 1)
    {
      goto LABEL_5;
    }

    v89 = v137;
    sub_1ED18(&v58[v61], v137, &qword_951BE0);
    if (v62(v89, v56) != enum case for Shelf.ContentType.productRatings(_:))
    {
      (*(v60 + 8))(v89, v56);
      goto LABEL_5;
    }

    if (qword_93DD10 != -1)
    {
      swift_once();
    }

    v90 = sub_766CA0();
    v91 = v90;
    v92 = qword_99FE78;
    goto LABEL_31;
  }

  if (v63 == enum case for Shelf.ContentType.productRatings(_:))
  {
LABEL_33:
    v96 = sub_75B680();
    v97 = v147;
    v147[3] = v96;
    v97[4] = sub_401D54(&qword_94DA48, &type metadata accessor for SpacerDimension);
    sub_B1B4(v97);
    sub_75B670();
    goto LABEL_34;
  }

  v98 = enum case for Shelf.ContentType.productReview(_:);
  if (v63 == enum case for Shelf.ContentType.productReview(_:))
  {
    if ((*(v60 + 48))(&v58[v61], 1, v56) == 1)
    {
      goto LABEL_53;
    }

    v99 = v145;
    sub_1ED18(&v58[v61], v145, &qword_951BE0);
    v100 = v62(v99, v56);
    if (v100 != enum case for Shelf.ContentType.productReviewAction(_:))
    {
      if (v100 == enum case for Shelf.ContentType.linkableText(_:))
      {
LABEL_21:
        v77 = v147;
        v147[3] = &type metadata for Double;
        v77[4] = &protocol witness table for Double;
        *v77 = 0;
LABEL_34:
        sub_10A2C(v146, &qword_951BE0);
        v88 = &v58[v61];
LABEL_35:
        sub_10A2C(v88, &qword_951BE0);
        return (*(v60 + 8))(v58, v56);
      }

LABEL_52:
      (*(v60 + 8))(v145, v56);
      goto LABEL_53;
    }

    goto LABEL_33;
  }

  v101 = enum case for Shelf.ContentType.productReviewAction(_:);
  if (v63 == enum case for Shelf.ContentType.productReviewAction(_:))
  {
    if ((*(v60 + 48))(&v58[v61], 1, v56) != 1)
    {
      v102 = v136;
      sub_1ED18(&v58[v61], v136, &qword_951BE0);
      v103 = v62(v102, v56);
      v145 = v102;
      if (v103 == v98)
      {
        goto LABEL_9;
      }

      goto LABEL_52;
    }

    goto LABEL_53;
  }

  if (v63 == enum case for Shelf.ContentType.linkableText(_:))
  {
    if ((*(v60 + 48))(&v58[v61], 1, v56) == 1)
    {
      goto LABEL_53;
    }

    v104 = v135;
    sub_1ED18(&v58[v61], v135, &qword_951BE0);
    v105 = v62(v104, v56);
    v145 = v104;
    if (v105 != v101)
    {
      goto LABEL_52;
    }

    goto LABEL_48;
  }

  if (v63 == enum case for Shelf.ContentType.informationRibbon(_:))
  {
    goto LABEL_57;
  }

  if (v63 == enum case for Shelf.ContentType.privacyHeader(_:))
  {
    if ((*(v60 + 48))(&v58[v61], 1, v56) == 1)
    {
      goto LABEL_53;
    }

    v111 = v134;
    sub_1ED18(&v58[v61], v134, &qword_951BE0);
    v112 = v62(v111, v56);
    v145 = v111;
    if (v112 != enum case for Shelf.ContentType.privacyType(_:))
    {
      goto LABEL_52;
    }

LABEL_48:
    if (qword_93DD08 != -1)
    {
      swift_once();
    }

    v90 = sub_766CA0();
    v91 = v90;
    v92 = qword_99FE60;
LABEL_31:
    v93 = sub_BE38(v90, v92);
    v94 = v147;
    v147[3] = v91;
    v94[4] = &protocol witness table for StaticDimension;
    v95 = sub_B1B4(v94);
    (*(*(v91 - 8) + 16))(v95, v93, v91);
    goto LABEL_34;
  }

  if (v63 == enum case for Shelf.ContentType.privacyType(_:))
  {
    if ((*(v60 + 48))(&v58[v61], 1, v56) == 1)
    {
      goto LABEL_53;
    }

    v113 = v133;
    sub_1ED18(&v58[v61], v133, &qword_951BE0);
    v114 = v62(v113, v56);
    v145 = v113;
    if (v114 != enum case for Shelf.ContentType.privacyFooter(_:))
    {
      goto LABEL_52;
    }

    goto LABEL_57;
  }

  if (v63 != enum case for Shelf.ContentType.productBadge(_:))
  {
    v122 = enum case for Shelf.ContentType.accessibilityFeatures(_:);
    if (v63 == enum case for Shelf.ContentType.accessibilityFeatures(_:))
    {
      if ((*(v60 + 48))(&v58[v61], 1, v56) == 1)
      {
        goto LABEL_53;
      }

      v123 = v131;
      sub_1ED18(&v58[v61], v131, &qword_951BE0);
      v124 = v62(v123, v56);
      v145 = v123;
      if (v124 != enum case for Shelf.ContentType.accessibilityParagraph(_:))
      {
        goto LABEL_52;
      }
    }

    else
    {
      v127 = v63;
      if (v63 != enum case for Shelf.ContentType.accessibilityParagraph(_:) || (*(v60 + 48))(&v58[v61], 1, v56) == 1)
      {
        goto LABEL_53;
      }

      v128 = v130;
      sub_1ED18(&v58[v61], v130, &qword_951BE0);
      v129 = v62(v128, v56);
      if (v129 != v122)
      {
        v145 = v130;
        if (v129 != v127)
        {
          goto LABEL_52;
        }
      }
    }

    sub_10A2C(&v58[v61], &qword_951BE0);
    (*(v60 + 8))(v58, v56);
    v125 = sub_75B680();
    v126 = v147;
    v147[3] = v125;
    v126[4] = sub_401D54(&qword_94DA48, &type metadata accessor for SpacerDimension);
    sub_B1B4(v126);
    sub_75B670();
LABEL_58:
    v71 = v146;
    v70 = &qword_951BE0;
    return sub_10A2C(v71, v70);
  }

  if ((*(v60 + 48))(&v58[v61], 1, v56) == 1)
  {
LABEL_57:
    sub_10A2C(&v58[v61], &qword_951BE0);
    (*(v60 + 8))(v58, v56);
    v110 = v147;
    v147[3] = &type metadata for Double;
    v110[4] = &protocol witness table for Double;
    *v110 = 0;
    goto LABEL_58;
  }

  v115 = &v58[v61];
  v116 = v132;
  sub_1ED18(v115, v132, &qword_951BE0);
  if (v62(v116, v56) != enum case for Shelf.ContentType.smallLockup(_:))
  {
    v56 = v148;
    v60 = v149;
    (*(v149 + 8))(v132, v148);
    v58 = v150;
    goto LABEL_57;
  }

  if (qword_93DD00 != -1)
  {
    swift_once();
  }

  v117 = sub_766CA0();
  v118 = sub_BE38(v117, qword_99FE48);
  v119 = v147;
  v147[3] = v117;
  v119[4] = &protocol witness table for StaticDimension;
  v120 = sub_B1B4(v119);
  (*(*(v117 - 8) + 16))(v120, v118, v117);
  sub_10A2C(v146, &qword_951BE0);
  v121 = v150;
  sub_10A2C(&v150[v61], &qword_951BE0);
  return (*(v149 + 8))(v121, v148);
}

uint64_t sub_401C80@<X0>(void (*a1)(uint64_t, uint64_t)@<X0>, void *a2@<X8>)
{
  v4 = sub_75DA30();
  sub_7699D0();

  return sub_3FDFBC(a1, a2);
}

uint64_t sub_401CCC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_75DA30();
  v5 = sub_7699D0();

  if (v5)
  {

    return sub_3FF1C4(a1, a2);
  }

  else
  {

    return sub_400874(a2);
  }
}

uint64_t sub_401D54(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_401DB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v7 = v6;
  v9 = [v7 contentView];
  [a6 pageMarginInsets];
  [v9 setLayoutMargins:?];

  v10 = sub_75AB60();
  sub_36E518(v10, v11);
  v12 = sub_75AB50();

  return sub_36E524(v12, v13);
}

double sub_401EDC(uint64_t a1, double a2, uint64_t a3, uint64_t a4, void *a5)
{
  v47 = sub_75EAC0();
  v46 = *(v47 - 8);
  __chkstk_darwin(v47);
  v48 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_75EAE0();
  v50 = *(v51 - 8);
  __chkstk_darwin(v51);
  v49 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_762D10();
  v55 = *(v54 - 8);
  *&v10 = __chkstk_darwin(v54).n128_u64[0];
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a5 pageMarginInsets];
  sub_769DA0();
  v13 = [a5 traitCollection];
  v14 = sub_7699D0();

  v15 = 4;
  if ((v14 & 1) == 0)
  {
    v15 = 1;
  }

  v52 = v15;
  v45 = a1;
  sub_75AB60();
  v44 = v16;
  v17 = sub_26F08();
  if (qword_93CE38 != -1)
  {
    swift_once();
  }

  v18 = sub_7666D0();
  sub_BE38(v18, qword_99D4F8);
  v19 = [a5 traitCollection];
  sub_769E10();

  v20 = sub_7653B0();
  v62 = v20;
  v21 = sub_40260C(&qword_93F9B0, &type metadata accessor for Feature);
  v63 = v21;
  v22 = sub_B1B4(v61);
  v23 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v24 = *(v20 - 8);
  v43 = v17;
  v25 = *(v24 + 104);
  v25(v22, enum case for Feature.measurement_with_labelplaceholder(_:), v20);
  sub_765C30();
  v53 = a5;
  sub_BEB8(v61);
  sub_762D00();
  sub_762CE0();
  v26 = *(v55 + 8);
  v55 += 8;
  v26(v12, v54);
  v45 = sub_75AB50();
  v44 = v27;
  if (qword_93CE40 != -1)
  {
    swift_once();
  }

  sub_BE38(v18, qword_99D510);
  v28 = [v53 traitCollection];
  sub_769E10();

  v59 = v20;
  v60 = v21;
  v29 = sub_B1B4(v58);
  v25(v29, v23, v20);
  sub_765C30();
  sub_BEB8(v58);
  sub_762D00();
  sub_762CE0();
  v26(v12, v54);
  if (qword_93CE30 != -1)
  {
    swift_once();
  }

  v30 = v47;
  v31 = sub_BE38(v47, qword_99D4E0);
  (*(v46 + 16))(v48, v31, v30);
  v32 = v62;
  v33 = v63;
  v34 = sub_B170(v61, v62);
  v57[3] = v32;
  v57[4] = *(v33 + 8);
  v35 = sub_B1B4(v57);
  (*(*(v32 - 8) + 16))(v35, v34, v32);
  v36 = v59;
  v37 = v60;
  v38 = sub_B170(v58, v59);
  v56[3] = v36;
  v56[4] = *(v37 + 8);
  v39 = sub_B1B4(v56);
  (*(*(v36 - 8) + 16))(v39, v38, v36);
  v40 = v49;
  sub_75EAD0();
  sub_40260C(&unk_9513F0, &type metadata accessor for EditorialQuoteLayout);
  v41 = v51;
  sub_7665A0();
  (*(v50 + 8))(v40, v41);
  sub_BEB8(v58);
  sub_BEB8(v61);
  return a2;
}

uint64_t sub_40260C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_402668()
{
  result = qword_953F38;
  if (!qword_953F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_953F38);
  }

  return result;
}

uint64_t sub_4026BC(uint64_t a1, uint64_t a2)
{
  v2[26] = a1;
  v2[27] = a2;
  v3 = sub_7570A0();
  v2[28] = v3;
  v2[29] = *(v3 - 8);
  v2[30] = swift_task_alloc();

  return _swift_task_switch(sub_40277C, 0, 0);
}

id sub_40277C()
{
  if (sub_75C580())
  {
    v1 = sub_769240();
    v3 = v2;
    *(v0 + 144) = 1;
    *(v0 + 168) = &type metadata for Bool;
    sub_13310((v0 + 144), (v0 + 176));
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_459E5C((v0 + 176), v1, v3, isUniquelyReferenced_nonNull_native);
  }

  if (sub_75C5A0())
  {
    v5 = sub_769240();
    v7 = v6;
    *(v0 + 104) = &type metadata for Bool;
    *(v0 + 80) = 1;
    sub_13310((v0 + 80), (v0 + 112));
    v8 = swift_isUniquelyReferenced_nonNull_native();
    sub_459E5C((v0 + 112), v5, v7, v8);
  }

  v9 = sub_75C590();
  if ((v10 & 1) == 0)
  {
    v11 = v9;
    v12 = sub_769240();
    v14 = v13;
    *(v0 + 40) = &type metadata for Double;
    *(v0 + 16) = v11;
    sub_13310((v0 + 16), (v0 + 48));
    v15 = swift_isUniquelyReferenced_nonNull_native();
    sub_459E5C((v0 + 48), v12, v14, v15);
  }

  if (_swiftEmptyDictionarySingleton[2])
  {
    v16 = [objc_allocWithZone(_LSOpenConfiguration) init];
    if (v16)
    {
      isa = sub_7690E0().super.isa;
      [v16 setFrontBoardOptions:isa];
    }
  }

  else
  {
    v16 = 0;
  }

  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v19 = result;
    v21 = *(v0 + 232);
    v20 = *(v0 + 240);
    v22 = *(v0 + 224);
    v23 = *(v0 + 208);

    sub_75C5B0();
    sub_757040(v24);
    v26 = v25;
    (*(v21 + 8))(v20, v22);
    [v19 openURL:v26 configuration:v16 completionHandler:0];

    v27 = enum case for ActionOutcome.performed(_:);
    v28 = sub_7687C0();
    (*(*(v28 - 8) + 104))(v23, v27, v28);

    v29 = *(v0 + 8);

    return v29();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_402AAC(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_14FCC;

  return sub_4026BC(a1, v4);
}

unint64_t sub_402B50()
{
  result = qword_94FBE0;
  if (!qword_94FBE0)
  {
    sub_75C5D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_94FBE0);
  }

  return result;
}

uint64_t sub_402BA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_402BFC();

  return AsyncActionImplementation.perform(_:asPartOf:)(a1, a2, a3, v6);
}

unint64_t sub_402BFC()
{
  result = qword_953F40;
  if (!qword_953F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_953F40);
  }

  return result;
}

uint64_t sub_402C50(uint64_t result)
{
  *(result + 344) = 0x4053000000000000;
  *(result + 352) = 0;
  return result;
}

char *sub_402C60(double a1, double a2, double a3, double a4)
{
  v9 = sub_BD88(&qword_94BAC0);
  __chkstk_darwin(v9 - 8);
  v11 = v52 - v10 + 16;
  v12 = OBJC_IVAR____TtC18ASMessagesProvider45MediumAdLockupWithAlignedRegionBackgroundView_alignedRegionView;
  sub_759210();
  *&v4[v12] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider45MediumAdLockupWithAlignedRegionBackgroundView____lazy_storage___topOverlayGradientView] = 0;
  v13 = OBJC_IVAR____TtC18ASMessagesProvider45MediumAdLockupWithAlignedRegionBackgroundView_lockupView;
  *&v4[v13] = [objc_allocWithZone(type metadata accessor for TodayCardLockupView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v14 = type metadata accessor for MediumAdLockupWithAlignedRegionBackgroundView();
  v53.receiver = v4;
  v53.super_class = v14;
  v15 = objc_msgSendSuper2(&v53, "initWithFrame:", a1, a2, a3, a4);
  [v15 setClipsToBounds:1];
  [v15 _setContinuousCornerRadius:20.0];
  v16 = OBJC_IVAR____TtC18ASMessagesProvider45MediumAdLockupWithAlignedRegionBackgroundView_alignedRegionView;
  [*&v15[OBJC_IVAR____TtC18ASMessagesProvider45MediumAdLockupWithAlignedRegionBackgroundView_alignedRegionView] setClipsToBounds:1];
  [v15 addSubview:*&v15[v16]];
  v17 = sub_4033D0();
  [v15 addSubview:v17];

  v18 = OBJC_IVAR____TtC18ASMessagesProvider45MediumAdLockupWithAlignedRegionBackgroundView_lockupView;
  [*(*&v15[OBJC_IVAR____TtC18ASMessagesProvider45MediumAdLockupWithAlignedRegionBackgroundView_lockupView] + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_titleLabel) setAccessibilityIgnoresInvertColors:1];
  [*(*&v15[v18] + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_subtitleLabel) setAccessibilityIgnoresInvertColors:1];
  [*(*&v15[v18] + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_ordinalLabel) setAccessibilityIgnoresInvertColors:1];
  v19 = qword_93C328;
  v20 = *&v15[v18];
  if (v19 != -1)
  {
    swift_once();
  }

  sub_32E2CC();
  sub_765470();
  v21 = OBJC_IVAR____TtC18ASMessagesProvider19TodayCardLockupView_metrics;
  swift_beginAccess();
  sub_125A14(v52, v20 + v21);
  swift_endAccess();

  v22 = qword_93C330;
  v23 = *&v15[v18];
  if (v22 != -1)
  {
    swift_once();
  }

  sub_765470();
  v24 = OBJC_IVAR____TtC18ASMessagesProvider19TodayCardLockupView_axMetrics;
  swift_beginAccess();
  sub_125A14(v52, v23 + v24);
  swift_endAccess();

  v25 = qword_93C5A8;
  v26 = *(*&v15[v18] + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_artworkView);
  if (v25 != -1)
  {
    swift_once();
  }

  v27 = sub_765080();
  v28 = sub_BE38(v27, qword_99B658);
  v29 = *(v27 - 8);
  (*(v29 + 16))(v11, v28, v27);
  (*(v29 + 56))(v11, 0, 1, v27);
  sub_7591C0();

  v30 = *&v15[v18];
  v31 = objc_opt_self();
  v32 = v30;
  sub_3E30CC([v31 whiteColor]);

  v33 = *(*&v15[v18] + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_ordinalLabel);
  v34 = [v31 whiteColor];
  [v33 setTextColor:v34];

  v35 = *(*&v15[v18] + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_subtitleLabel);
  sub_396E8();
  v36 = v35;
  v37 = sub_769FF0();
  v38 = [objc_opt_self() traitCollectionWithUserInterfaceStyle:2];
  v39 = [v37 resolvedColorWithTraitCollection:v38];

  [v36 setTextColor:v39];
  v40 = *(*&v15[v18] + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_offerButton);
  v41 = [v31 whiteColor];
  [v40 setTintColor:v41];

  v42 = *(*&v15[v18] + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_offerLabel);
  v43 = [v31 whiteColor];
  [v42 setTextColor:v43];

  v44 = *(*&v15[v18] + OBJC_IVAR____TtC18ASMessagesProvider19TodayCardLockupView_crossLinkTitleLabel);
  v45 = [v31 whiteColor];
  [v44 setTextColor:v45];

  v46 = *(*&v15[v18] + OBJC_IVAR____TtC18ASMessagesProvider19TodayCardLockupView_crossLinkSubtitleLabel);
  v47 = [v31 whiteColor];
  [v46 setTextColor:v47];

  sub_769240();
  v48 = sub_769210();

  v49 = [*(*&v15[v18] + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_subtitleLabel) layer];
  [v49 setCompositingFilter:v48];

  [v15 addSubview:*&v15[v18]];
  return v15;
}

char *sub_4033D0()
{
  v1 = OBJC_IVAR____TtC18ASMessagesProvider45MediumAdLockupWithAlignedRegionBackgroundView____lazy_storage___topOverlayGradientView;
  v2 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider45MediumAdLockupWithAlignedRegionBackgroundView____lazy_storage___topOverlayGradientView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider45MediumAdLockupWithAlignedRegionBackgroundView____lazy_storage___topOverlayGradientView);
  }

  else
  {
    v4 = v0;
    v5 = objc_allocWithZone(type metadata accessor for TodayCardProtectionLayerView());
    v6 = sub_30712C(&off_87DDD8);
    v7 = *(v0 + v1);
    *(v4 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

id sub_4034F8()
{
  v1 = v0;
  v2 = sub_75D850();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v27[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  *&v7 = __chkstk_darwin(v6).n128_u64[0];
  v9 = &v27[-v8 - 8];

  [v0 bounds];
  if (qword_93C328 != -1)
  {
    swift_once();
  }

  if (qword_93C330 != -1)
  {
    swift_once();
  }

  v10 = [v0 traitCollection];
  [v0 bounds];
  Width = CGRectGetWidth(v31);
  if (sub_769A00())
  {
    v12 = &xmmword_99AB20;
  }

  else
  {
    v12 = &xmmword_99A9B0;
  }

  sub_BE140(v12, v27);
  if (sub_769A00())
  {
    if (qword_93C440 != -1)
    {
      swift_once();
    }

    v13 = qword_946920;
  }

  else
  {
    if (qword_93C448 != -1)
    {
      swift_once();
    }

    v13 = qword_946938;
  }

  v14 = sub_BE38(v2, v13);
  (*(v3 + 16))(v5, v14, v2);
  (*(v3 + 32))(v9, v5, v2);
  if ((v30 & 1) == 0 && v28 == 0.0 && v29 == 0.0)
  {
    sub_75D800();
    v16 = v15;
    sub_75D800();
    v28 = v16;
    v29 = v17;
    v30 = 0;
  }

  _s18ASMessagesProvider21TodayCardLockupLayoutV21estimatedMeasurements7fitting5using4withSo14JUMeasurementsVSo6CGSizeV_AC7MetricsVSo17UITraitCollectionCtFZ_0(v27, v10, Width);
  v19 = v18;

  (*(v3 + 8))(v9, v2);
  sub_BE0EC(v27);
  v20 = v19 + 12.0 + 16.0;
  [v0 bounds];
  MinX = CGRectGetMinX(v32);
  sub_759160();
  v22 = CGRectGetMaxY(v33) - v20;
  [v0 bounds];
  v23 = CGRectGetWidth(v34);
  v24 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider45MediumAdLockupWithAlignedRegionBackgroundView_lockupView];
  [*&v1[OBJC_IVAR____TtC18ASMessagesProvider45MediumAdLockupWithAlignedRegionBackgroundView_lockupView] setLayoutMargins:{12.0, 20.0, 16.0, 20.0}];
  return [v24 setFrame:{MinX, v22, v23, v20}];
}

uint64_t sub_4038A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v107 = a2;
  v106 = sub_765240();
  v98 = *(v106 - 8);
  __chkstk_darwin(v106);
  v97 = &v90 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_BD88(&unk_93E530);
  __chkstk_darwin(v8 - 8);
  v10 = &v90 - v9;
  v11 = sub_BD88(&unk_94AC40);
  __chkstk_darwin(v11 - 8);
  v104 = &v90 - v12;
  v13 = sub_BD88(&unk_9457D0);
  __chkstk_darwin(v13 - 8);
  v103 = &v90 - v14;
  v15 = sub_BD88(&unk_9457E0);
  __chkstk_darwin(v15 - 8);
  v102 = &v90 - v16;
  v17 = sub_BD88(&unk_94A780);
  __chkstk_darwin(v17 - 8);
  v101 = &v90 - v18;
  v19 = sub_BD88(&unk_944E00);
  __chkstk_darwin(v19 - 8);
  v21 = &v90 - v20;
  v22 = sub_763750();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v99 = &v90 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_BD88(&unk_948730);
  __chkstk_darwin(v25 - 8);
  v100 = &v90 - v26;
  v27 = sub_7652D0();
  __chkstk_darwin(v27 - 8);
  v29 = &v90 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_75A110();
  sub_768900();
  v105 = a3;
  sub_768ED0();
  v108 = a1;
  v109 = v110[0];
  v30 = sub_764160();
  if (v30)
  {
    v31 = v30;
    v91 = v10;
    v32 = [v3 traitCollection];
    sub_40482C(v107, v32);

    v33 = sub_765330();
    v34 = *&v4[OBJC_IVAR____TtC18ASMessagesProvider45MediumAdLockupWithAlignedRegionBackgroundView_alignedRegionView];
    sub_7652E0();
    v94 = v29;
    sub_7591B0();
    [v34 setContentMode:sub_765140()];
    sub_75DEF0();
    sub_7591F0();
    v107 = v31;
    if (!sub_7651A0())
    {
      sub_396E8();
      sub_76A030();
    }

    sub_759070();
    [v34 setContentMode:2];
    v35 = sub_759210();
    v36 = sub_404FD4(&qword_945810, &type metadata accessor for ArtworkView);
    v95 = v33;
    v92 = v36;
    v93 = v35;
    sub_75A050();
    v96 = v4;
    v37 = *&v4[OBJC_IVAR____TtC18ASMessagesProvider45MediumAdLockupWithAlignedRegionBackgroundView_lockupView];
    [*&v37[OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_offerLabel] _setTextColorFollowsTintColor:0];
    v38 = sub_764170();
    v39 = *(v23 + 104);
    v39(v99, enum case for OfferButtonPresenterViewAlignment.right(_:), v22);
    v39(v21, enum case for OfferButtonPresenterViewAlignment.left(_:), v22);
    (*(v23 + 56))(v21, 0, 1, v22);
    sub_404FD4(&unk_944E10, &type metadata accessor for OfferButtonPresenterViewAlignment);
    v40 = v100;
    sub_760940();
    v41 = sub_BD88(&unk_948740);
    (*(*(v41 - 8) + 56))(v40, 0, 1, v41);
    v42 = sub_758C70();
    v43 = v101;
    (*(*(v42 - 8) + 56))(v101, 1, 1, v42);
    v44 = sub_75BD30();
    v45 = v102;
    (*(*(v44 - 8) + 56))(v102, 1, 1, v44);
    v46 = sub_765870();
    v47 = v103;
    (*(*(v46 - 8) + 56))(v103, 1, 1, v46);
    v48 = sub_BD88(&unk_9457F0);
    v49 = v104;
    (*(*(v48 - 8) + 56))(v104, 1, 1, v48);
    sub_4A18A4(v38, v37, v40, v105, 0, 0, v43, v45, v47, v49);
    v37[OBJC_IVAR____TtC18ASMessagesProvider19TodayCardLockupView_enforceMaximumOfTwoLinesOverall] = 1;
    sub_BD3C0();
    [v37 setNeedsLayout];
    sub_BD3C0();

    sub_10A2C(v49, &unk_94AC40);
    sub_10A2C(v47, &unk_9457D0);
    sub_10A2C(v45, &unk_9457E0);
    sub_10A2C(v43, &unk_94A780);
    sub_10A2C(v40, &unk_948730);
    v50 = *&v37[OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_headingLabel];
    if (v50)
    {
      v51 = objc_opt_self();
      v52 = v50;
      v53 = [v51 whiteColor];
      [v52 setTextColor:v53];
    }

    v54 = OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_tertiaryTitleLabel;
    v55 = *&v37[OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_tertiaryTitleLabel];
    if (v55)
    {
      v56 = objc_opt_self();
      v57 = v55;
      v58 = [v56 whiteColor];
      [v57 setTextColor:v58];

      v59 = *&v37[v54];
      if (v59)
      {
        v60 = qword_93D548;
        v61 = v59;
        if (v60 != -1)
        {
          swift_once();
        }

        v62 = sub_7666D0();
        v63 = sub_BE38(v62, qword_99E7E8);
        v64 = *(v62 - 8);
        v65 = v91;
        (*(v64 + 16))(v91, v63, v62);
        (*(v64 + 56))(v65, 0, 1, v62);
        sub_75BA40();

        v66 = *&v37[v54];
        if (v66)
        {
          [v66 setAccessibilityIgnoresInvertColors:1];
        }
      }
    }

    v67 = sub_7651A0();
    if (v67)
    {
      v68 = v67;
      v69 = sub_76A0E0();

      if (v69)
      {
        v70 = 2;
      }

      else
      {
        v70 = 1;
      }
    }

    else
    {
      v70 = 2;
    }

    v71 = v106;
    v72 = OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_artworkView;
    v73 = *&v37[OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_artworkView];
    v74 = objc_opt_self();
    v75 = v73;
    v76 = [v74 systemGray5Color];
    v77 = [objc_opt_self() traitCollectionWithUserInterfaceStyle:v70];
    v78 = [v76 resolvedColorWithTraitCollection:v77];

    v79 = [v78 colorWithAlphaComponent:0.35];
    sub_759070();

    sub_764170();
    v80 = sub_764EE0();

    if (v80)
    {
      if (qword_93C328 != -1)
      {
        swift_once();
      }

      sub_32E2CC();
      sub_765470();
      sub_BE0EC(v110);
      v81 = v97;
      sub_765250();
      sub_765210();
      (*(v98 + 8))(v81, v71);
      sub_765330();
      v82 = *&v37[v72];
      sub_7652E0();
      sub_7591B0();
      [v82 setContentMode:sub_765140()];
      sub_75DEF0();
      sub_7591F0();
      if (!sub_7651A0())
      {
        sub_396E8();
        sub_76A030();
      }

      sub_759070();

      [*&v37[v72] setContentMode:1];
      v83 = *&v37[v72];
      sub_75A050();
    }

    v4 = v96;
  }

  v84 = sub_4033D0();
  v85 = [v4 backgroundColor];
  v86 = sub_308200(v85);
  v88 = v87;

  sub_3068C8(2, v86, v88);

  [v4 setNeedsLayout];
}

id sub_40472C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MediumAdLockupWithAlignedRegionBackgroundView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

double sub_40482C(uint64_t a1, void *a2)
{
  v3 = sub_75D850();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v20[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v9 = &v20[-v8];
  sub_765560();
  v11 = v10;
  if (qword_93C328 != -1)
  {
    swift_once();
  }

  sub_32E2CC();
  sub_765470();
  if (qword_93C330 != -1)
  {
    swift_once();
  }

  sub_765470();
  if (sub_769A00())
  {
    v12 = v24;
  }

  else
  {
    v12 = v25;
  }

  sub_BE140(v12, v20);
  if (sub_769A00())
  {
    if (qword_93C440 != -1)
    {
      swift_once();
    }

    v13 = qword_946920;
  }

  else
  {
    if (qword_93C448 != -1)
    {
      swift_once();
    }

    v13 = qword_946938;
  }

  v14 = sub_BE38(v3, v13);
  (*(v4 + 16))(v6, v14, v3);
  (*(v4 + 32))(v9, v6, v3);
  if ((v23 & 1) == 0 && v21 == 0.0 && v22 == 0.0)
  {
    sub_75D800();
    v16 = v15;
    sub_75D800();
    v21 = v16;
    v22 = v17;
    v23 = 0;
  }

  v18 = _s18ASMessagesProvider21TodayCardLockupLayoutV21estimatedMeasurements7fitting5using4withSo14JUMeasurementsVSo6CGSizeV_AC7MetricsVSo17UITraitCollectionCtFZ_0(v20, a2, v11);
  (*(v4 + 8))(v9, v3, v18);
  sub_BE0EC(v20);
  sub_BE0EC(v24);
  sub_BE0EC(v25);
  return v11;
}

uint64_t sub_404B6C()
{
  v0 = sub_7656C0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_764180();
  sub_404FD4(&qword_953F88, &type metadata accessor for MediumAdLockupWithAlignedRegionBackground);
  result = sub_75C750();
  if (v11)
  {
    swift_getKeyPath();
    sub_75C7B0();

    sub_765560();
    v5 = *(v1 + 8);
    v5(v3, v0);
    swift_getKeyPath();
    sub_75C7B0();

    swift_getKeyPath();
    sub_75C7B0();

    v6 = v11;
    sub_40482C(v3, v11);

    v5(v3, v0);
    v7 = _swiftEmptyArrayStorage;
    v12 = _swiftEmptyArrayStorage;
    if (sub_764160())
    {
      sub_765330();
      sub_769440();
      if (*(&dword_10 + (v12 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v12 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        sub_7694C0();
      }

      sub_769500();

      v7 = v12;
    }

    sub_764170();
    v8 = sub_764EE0();

    if (v8)
    {
      if (qword_93C328 != -1)
      {
        swift_once();
      }

      sub_32E2CC();
      sub_765470();
      sub_BE0EC(&v11);
      sub_765330();

      sub_769440();
      if (*(&dword_10 + (v12 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v12 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        sub_7694C0();
      }

      sub_769500();

      v7 = v12;
    }

    v9._rawValue = v7;
    sub_75A070(v9);
  }

  return result;
}

void sub_404F0C()
{
  v1 = OBJC_IVAR____TtC18ASMessagesProvider45MediumAdLockupWithAlignedRegionBackgroundView_alignedRegionView;
  sub_759210();
  *(v0 + v1) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider45MediumAdLockupWithAlignedRegionBackgroundView____lazy_storage___topOverlayGradientView) = 0;
  v2 = OBJC_IVAR____TtC18ASMessagesProvider45MediumAdLockupWithAlignedRegionBackgroundView_lockupView;
  *(v0 + v2) = [objc_allocWithZone(type metadata accessor for TodayCardLockupView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  sub_76A840();
  __break(1u);
}

uint64_t sub_404FD4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_405070(void (*a1)(void *__return_ptr, char *))
{
  v12 = a1;
  v3 = sub_75BF20();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_BD88(&unk_953FB8);
  __chkstk_darwin(v7 - 8);
  v9 = v11 - v8;
  sub_1ED18(v1, v11 - v8, &unk_953FB8);
  if ((*(v4 + 48))(v9, 1, v3) == 1)
  {
    return 0;
  }

  (*(v4 + 32))(v6, v9, v3);
  v12(v11, v6);
  if (v2)
  {
    result = (*(v4 + 8))(v6, v3);
    __break(1u);
  }

  else
  {
    (*(v4 + 8))(v6, v3);
    return v11[0];
  }

  return result;
}

void sub_40525C(uint64_t a1, uint64_t a2)
{
  sub_75C040();
  sub_40BCD4(&qword_95F4F0, &type metadata accessor for ProductTopLockup);
  sub_75C750();
  if (v12)
  {
    v4 = sub_405504(a1, a2);
    v5 = sub_75BFE0();
    sub_40B834(v5, v4);

    if (sub_75BFD0() & 1) != 0 && (swift_getKeyPath(), sub_75C7B0(), , v6 = sub_7699E0(), v12, (v6) && (swift_getKeyPath(), sub_75C7B0(), , v7 = sub_769A00(), v12, (v7))
    {
      sub_40B0E0();
      if (qword_93DCF0 != -1)
      {
        swift_once();
      }

      v8 = sub_766CA0();
      sub_BE38(v8, qword_99FE18);
      swift_getKeyPath();
      sub_75C7B0();

      sub_7671D0();
      sub_BD88(&unk_93F5C0);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_77D9F0;
      *(v9 + 32) = v12;
      v10 = v12;
      v11 = sub_7671E0();
      sub_7666E0();
    }

    else
    {
    }
  }
}

double sub_405504(uint64_t a1, uint64_t a2)
{
  v83 = *&a2;
  v3 = sub_BD88(&qword_953FB0);
  __chkstk_darwin(v3 - 8);
  v67 = &v67 - v4;
  v5 = sub_BD88(&unk_953FB8);
  __chkstk_darwin(v5 - 8);
  v74 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v67 - v8;
  v10 = sub_7580D0();
  v81 = *(v10 - 8);
  v82 = v10;
  __chkstk_darwin(v10);
  v80 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_764CF0();
  v78 = *(v12 - 8);
  v79 = v12;
  __chkstk_darwin(v12);
  v77 = &v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_7656A0();
  v14 = *(v76 - 8);
  __chkstk_darwin(v76);
  v75 = &v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v67 - v17;
  v19 = sub_7656C0();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v67 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = &v67 - v24;
  __chkstk_darwin(v26);
  v28 = &v67 - v27;
  sub_75C040();
  sub_40BCD4(&qword_95F4F0, &type metadata accessor for ProductTopLockup);
  sub_75C750();
  v29 = v86[0];
  if (v86[0])
  {
    v73 = v9;
    v84 = v22;
    v68 = v18;
    swift_getKeyPath();
    v69 = v29;
    sub_75C7B0();

    sub_765580();
    v30 = *(v20 + 8);
    v30(v28, v19);
    swift_getKeyPath();
    sub_75C7B0();

    sub_7655A0();
    v30(v25, v19);
    v31 = v68;
    v32 = v76;
    (*(v14 + 104))(v68, enum case for PageGrid.Direction.vertical(_:), v76);
    swift_getKeyPath();
    sub_75C7B0();

    sub_765590();
    v70 = v19;
    v72 = v20 + 8;
    v71 = v30;
    v30(v28, v19);
    (*(v14 + 16))(v75, v31, v32);
    sub_40DC7C(0.0);
    sub_765670();
    (*(v14 + 8))(v31, v32);
    sub_BD88(&unk_944300);
    v33 = v83;
    sub_768880();
    v34 = v86[0];
    swift_getObjectType();
    v35 = v77;
    v36 = v69;
    sub_75C010();
    v76 = v34;
    sub_758330();
    (*(v78 + 8))(v35, v79);
    swift_getObjectType();
    v37 = v80;
    sub_758220();
    v38 = sub_40B0E0();
    sub_405F98(v36, v37, a1, v33, v86, v38, v39);
    v40 = v82;
    v41 = *(v81 + 8);
    v41(v37, v82);
    sub_758220();
    v42 = v73;
    sub_75BF40();
    v41(v37, v40);
    v43 = sub_75BF20();
    v44 = *(v43 - 8);
    v45 = *(v44 + 48);
    v46 = v42;
    v47 = v45(v42, 1, v43);
    v48 = 0;
    v49 = v46;
    if (v47 != 1)
    {
      v50 = v46;
      v51 = v74;
      sub_1ED18(v50, v74, &unk_953FB8);
      if (v45(v51, 1, v43) == 1)
      {
        v52 = &unk_953FB8;
        v53 = v51;
      }

      else
      {
        v55 = v67;
        sub_75BF10();
        (*(v44 + 8))(v51, v43);
        v56 = sub_759C90();
        v57 = *(v56 - 8);
        if ((*(v57 + 48))(v55, 1, v56) != 1)
        {
          v58 = sub_759C80();
          (*(v57 + 8))(v55, v56);
          v48 = v58 ^ 1;
          goto LABEL_10;
        }

        v52 = &qword_953FB0;
        v53 = v55;
      }

      sub_10A2C(v53, v52);
      v48 = 1;
    }

LABEL_10:
    if (sub_75BFE0() && (, ((sub_75BFD0() | v48) & 1) == 0))
    {
      if (qword_93CBD0 != -1)
      {
        swift_once();
      }

      v60 = qword_99CE20;
    }

    else
    {
      if (sub_75BFE0())
      {

        v59 = 0.0;
LABEL_22:
        sub_B170(v86, v86[3]);
        v63 = v84;
        sub_765630();
        swift_getKeyPath();
        sub_75C7B0();

        sub_7665B0();
        v65 = v64;
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

        v71(v63, v70);
        v54 = v59 + v65;
        sub_10A2C(v49, &unk_953FB8);
        sub_BEB8(v86);
        return v54;
      }

      v59 = 0.0;
      if (v48)
      {
        goto LABEL_22;
      }

      if (qword_93CBD8 != -1)
      {
        swift_once();
      }

      v60 = qword_99CE48;
    }

    sub_B170(v60, v60[3]);
    swift_getKeyPath();
    sub_75C7B0();

    v61 = v85;
    sub_766710();
    v59 = v62;

    goto LABEL_22;
  }

  return 0.0;
}

uint64_t sub_405F98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, double a4@<X4>, uint64_t *a5@<X8>, double a6@<D0>, double a7@<D1>)
{
  v8 = v7;
  v145 = a4;
  v146 = a2;
  v147 = a5;
  v13 = sub_BD88(&unk_944DF0);
  __chkstk_darwin(v13 - 8);
  v144 = &v119 - v14;
  v143 = sub_7623A0();
  v138 = *(v143 - 8);
  __chkstk_darwin(v143);
  v140 = &v119 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = sub_BD88(&unk_9457F0);
  v141 = *(v142 - 8);
  __chkstk_darwin(v142);
  v139 = &v119 - v16;
  v148 = sub_75D850();
  v137 = *(v148 - 8);
  __chkstk_darwin(v148);
  v136 = &v119 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = type metadata accessor for ProductLockupInlineUberLayout.Metrics(0);
  __chkstk_darwin(v135);
  v19 = (&v119 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v20);
  v153 = &v119 - v21;
  v151 = sub_762D10();
  v152 = *(v151 - 8);
  __chkstk_darwin(v151);
  v150 = &v119 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_BD88(&unk_953FB8);
  __chkstk_darwin(v23 - 8);
  v25 = &v119 - v24;
  v149 = sub_7656C0();
  v26 = *(v149 - 8);
  __chkstk_darwin(v149);
  v28 = &v119 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v154 = v28;
  sub_75C7B0();

  v29 = a1;
  sub_75BF40();
  v146 = v8;
  v155 = v8;
  v156 = a1;
  v157 = a3;
  v158 = v145;
  v30 = COERCE_DOUBLE(sub_405070(sub_40BCB0));
  LOBYTE(a1) = v31;
  sub_10A2C(v25, &unk_953FB8);
  if (a1)
  {
    v32 = 0.0;
  }

  else
  {
    v32 = v30;
  }

  v33 = sub_40B554();
  if (sub_75BFD0())
  {
    v125 = v26;
    v124 = v29;
    sub_75C000();
    if (qword_93CB58 != -1)
    {
      swift_once();
    }

    v34 = sub_BD88(&unk_94E7B0);
    sub_BE38(v34, qword_99CCD8);
    swift_getKeyPath();
    sub_75C7B0();

    *&v160 = v167;
    sub_7592B0();
    swift_unknownObjectRelease();
    if (qword_93CCD0 != -1)
    {
      swift_once();
    }

    v35 = sub_BD88(&unk_94B6E0);
    sub_BE38(v35, qword_99D160);
    swift_getKeyPath();
    sub_75C7B0();

    v166 = v167;
    v134 = v35;
    sub_7592B0();
    swift_unknownObjectRelease();
    v36 = sub_7653B0();
    v168 = v36;
    v132 = sub_40BCD4(&qword_93F9B0, &type metadata accessor for Feature);
    v169 = v132;
    v37 = sub_B1B4(&v167);
    v38 = *(v36 - 8);
    v39 = *(v38 + 104);
    v131 = enum case for Feature.measurement_with_labelplaceholder(_:);
    v133 = v36;
    v130 = v39;
    v129 = v38 + 104;
    v39(v37);
    sub_765C30();
    sub_BEB8(&v167);
    v40 = v150;
    sub_762D00();
    sub_762CE0();
    v41 = *(v152 + 8);
    v152 += 8;
    v128 = v41;
    v41(v40, v151);
    sub_765630();
    left = UIEdgeInsetsZero.left;
    bottom = UIEdgeInsetsZero.bottom;
    right = UIEdgeInsetsZero.right;
    sub_527DE4();
    swift_unknownObjectRelease();
    v45 = a3;
    if (qword_93CB28 != -1)
    {
      swift_once();
    }

    v46 = v135;
    v47 = sub_BE38(v135, qword_99CC78);
    v48 = v153;
    sub_40BD7C(v47, v153, type metadata accessor for ProductLockupInlineUberLayout.Metrics);
    v145 = a7;
    *(v48 + 32) = a6;
    *(v48 + 40) = a7;
    *(v48 + 8) = left;
    *(v48 + 16) = bottom;
    *(v48 + 24) = right;
    *v48 = 0;
    v164 = &type metadata for CGFloat;
    v165 = &protocol witness table for CGFloat;
    *&v163 = v32;
    v49 = v46[15];
    sub_BEB8(v48 + v49);
    sub_34698(&v163, v48 + v49);
    v164 = &type metadata for CGFloat;
    v165 = &protocol witness table for CGFloat;
    *&v163 = v33;
    v50 = v46[16];
    sub_BEB8(v48 + v50);
    sub_34698(&v163, v48 + v50);
    sub_765630();
    v51 = sub_527DE4();
    swift_getObjectType();
    v52 = sub_2D8CA0(&v167, v48, v51);
    swift_unknownObjectRelease();
    if (v52)
    {
      sub_765630();
      sub_527DE4();
      swift_unknownObjectRelease();
      sub_40BD7C(v47, v19, type metadata accessor for ProductLockupInlineUberLayout.Metrics);
      v53 = v145;
      v19[4] = a6;
      v19[5] = v53;
      v19[1] = left;
      v19[2] = bottom;
      v19[3] = right;
      *v19 = 0.0;
      v164 = &type metadata for CGFloat;
      v165 = &protocol witness table for CGFloat;
      *&v163 = v32;
      v54 = v46[15];
      sub_BEB8(v19 + v54);
      sub_34698(&v163, v19 + v54);
      v164 = &type metadata for CGFloat;
      v165 = &protocol witness table for CGFloat;
      *&v163 = v33;
      v55 = v46[16];
      sub_BEB8(v19 + v55);
      sub_34698(&v163, v19 + v55);
      if (qword_93CC48 != -1)
      {
        swift_once();
      }

      v56 = sub_BD88(&qword_940AD0);
      v57 = sub_BE38(v56, qword_99CFC8);
      v58 = *(*(v56 - 8) + 24);
      v58(v19 + v46[7], v57, v56);
      if (qword_93CC38 != -1)
      {
        swift_once();
      }

      v59 = sub_BE38(v56, qword_99CF98);
      v58(v19 + v46[6], v59, v56);
      if (qword_93CC60 != -1)
      {
        swift_once();
      }

      v60 = sub_BE38(v56, qword_99D010);
      v58(v19 + v46[8], v60, v56);
      if (qword_93CC08 != -1)
      {
        swift_once();
      }

      v61 = sub_BD88(&qword_94E5D0);
      v62 = sub_BE38(v61, qword_99CF08);
      (*(*(v61 - 8) + 24))(v19 + v46[13], v62, v61);
      v164 = &type metadata for CGFloat;
      v165 = &protocol witness table for CGFloat;
      *&v163 = 0x401C000000000000;
      v63 = v153;
      sub_40BD1C(v153, type metadata accessor for ProductLockupInlineUberLayout.Metrics);
      v64 = v46[9];
      sub_BEB8(v19 + v64);
      sub_34698(&v163, v19 + v64);
      sub_C6154(v19, v63);
      sub_B170(&v167, v168);
      if (qword_93CB60 != -1)
      {
        swift_once();
      }

      sub_BE38(v34, qword_99CCF0);
      swift_getKeyPath();
      sub_75C7B0();

      v166 = v160;
      sub_7592B0();
      swift_unknownObjectRelease();
      sub_766A00();
    }

    if (qword_93CB70 != -1)
    {
      swift_once();
    }

    sub_BE38(v34, qword_99CD20);
    swift_getKeyPath();
    sub_75C7B0();

    v166 = v160;
    sub_7592B0();
    swift_unknownObjectRelease();
    v65 = v163;
    sub_75BF70();
    v66 = qword_93CCD8;
    v67 = v65;
    if (v66 != -1)
    {
      swift_once();
    }

    sub_BE38(v134, qword_99D178);
    swift_getKeyPath();
    v135 = v45;
    sub_75C7B0();

    v166 = v163;
    sub_7592B0();
    swift_unknownObjectRelease();
    v68 = v133;
    v164 = v133;
    v165 = v132;
    v69 = sub_B1B4(&v163);
    v130(v69, v131, v68);
    sub_765C30();
    sub_BEB8(&v163);
    v70 = v150;
    sub_762D00();
    sub_762CE0();
    v128(v70, v151);
    v71 = sub_7670D0();
    swift_allocObject();
    v72 = sub_7670B0();
    swift_allocObject();
    v73 = sub_7670B0();
    swift_allocObject();
    v74 = sub_7670B0();
    swift_allocObject();
    v146 = sub_7670B0();
    v75 = sub_56E958(0xD000000000000013, 0x80000000007DEC30, 0);
    [v75 size];

    swift_allocObject();
    v122 = sub_7670B0();
    swift_allocObject();
    v121 = sub_7670B0();
    swift_allocObject();
    v119 = sub_7670B0();
    swift_allocObject();
    v120 = sub_7670B0();
    sub_75BF90();
    v123 = v67;
    v127 = v72;
    v126 = v73;
    if (v77 == 1 || (v78 = v76, , !v78))
    {
      v79 = v74;
      v162 = 0;
      v161 = 0u;
      v160 = 0u;
      v85 = v153;
    }

    else
    {
      v79 = v74;
      sub_26F08();
      if (qword_93D6C8 != -1)
      {
        swift_once();
      }

      v80 = sub_7666D0();
      sub_BE38(v80, qword_99EC50);
      swift_getKeyPath();
      sub_75C7B0();

      v81 = v160;
      sub_769E10();

      if (qword_93CCF0 != -1)
      {
        swift_once();
      }

      sub_BE38(v134, qword_99D1C0);
      swift_getKeyPath();
      sub_75C7B0();

      v159 = v160;
      sub_7592B0();
      swift_unknownObjectRelease();
      v82 = v133;
      *(&v161 + 1) = v133;
      v162 = v132;
      v83 = sub_B1B4(&v160);
      v130(v83, v131, v82);
      sub_765C30();
      sub_BEB8(&v160);
      v84 = v150;
      sub_762D00();
      sub_762CE0();
      v128(v84, v151);
      v85 = v153;
      v72 = v127;
      v73 = v126;
    }

    v91 = type metadata accessor for ProductLockupInlineUberLayout(0);
    v92 = v147;
    v147[3] = v91;
    v92[4] = sub_40BCD4(&unk_953FE0, type metadata accessor for ProductLockupInlineUberLayout);
    v93 = sub_B1B4(v92);
    sub_40BD7C(v85, v93, type metadata accessor for ProductLockupInlineUberLayout.Metrics);
    v94 = (v93 + v91[5]);
    v94[3] = v71;
    v94[4] = &protocol witness table for LayoutViewPlaceholder;
    *v94 = v146;
    v95 = (v93 + v91[6]);
    v95[3] = v71;
    v95[4] = &protocol witness table for LayoutViewPlaceholder;
    *v95 = v73;
    v96 = (v93 + v91[7]);
    v96[3] = v71;
    v96[4] = &protocol witness table for LayoutViewPlaceholder;
    *v96 = v79;
    v97 = (v93 + v91[10]);
    v97[3] = v71;
    v97[4] = &protocol witness table for LayoutViewPlaceholder;
    *v97 = v72;
    swift_allocObject();

    v152 = v79;

    v98 = sub_7670B0();
    v99 = (v93 + v91[8]);
    v99[3] = v71;
    v99[4] = &protocol witness table for LayoutViewPlaceholder;
    *v99 = v98;
    sub_134D8(&v167, v93 + v91[9]);
    sub_134D8(&v163, v93 + v91[11]);
    v100 = v93 + v91[12];
    *(v100 + 4) = 0;
    *v100 = 0u;
    *(v100 + 1) = 0u;
    if (qword_93C470 != -1)
    {
      swift_once();
    }

    v101 = v148;
    v102 = sub_BE38(v148, qword_99B2D8);
    v103 = v137;
    v104 = v136;
    (*(v137 + 16))(v136, v102, v101);
    swift_getKeyPath();
    sub_75C7B0();

    v105 = v138;
    v106 = v143;
    (*(v138 + 104))(v140, enum case for OfferButtonSubtitlePosition.below(_:), v143);
    (*(v105 + 56))(v144, 1, 1, v106);
    sub_40BCD4(&qword_944E20, &type metadata accessor for OfferButtonSubtitlePosition);
    v107 = v139;
    sub_760940();
    sub_75D820();
    swift_unknownObjectRelease();
    (*(v141 + 8))(v107, v142);
    (*(v103 + 8))(v104, v148);
    swift_allocObject();
    v108 = sub_7670B0();
    v109 = (v93 + v91[13]);
    v109[3] = v71;
    v109[4] = &protocol witness table for LayoutViewPlaceholder;
    *v109 = v108;
    sub_1ED18(&v160, v93 + v91[14], &qword_9417D0);
    v110 = v93 + v91[15];
    *(v110 + 4) = 0;
    *v110 = 0u;
    *(v110 + 1) = 0u;
    v111 = (v93 + v91[16]);
    v111[3] = v71;
    v111[4] = &protocol witness table for LayoutViewPlaceholder;
    *v111 = v122;
    v112 = (v93 + v91[17]);
    v112[3] = v71;
    v112[4] = &protocol witness table for LayoutViewPlaceholder;
    *v112 = v121;
    v113 = (v93 + v91[18]);
    v113[3] = v71;
    v113[4] = &protocol witness table for LayoutViewPlaceholder;
    *v113 = v119;
    v114 = (v93 + v91[19]);
    v114[3] = v71;
    v114[4] = &protocol witness table for LayoutViewPlaceholder;

    *v114 = v120;
    sub_10A2C(&v160, &qword_9417D0);
    sub_BEB8(&v163);
    sub_40BD1C(v153, type metadata accessor for ProductLockupInlineUberLayout.Metrics);
    (*(v125 + 8))(v154, v149);
    return sub_BEB8(&v167);
  }

  else
  {
    swift_getKeyPath();
    sub_75C7B0();

    v86 = v167;
    v87 = sub_769A00();

    if (v87)
    {
      v88 = type metadata accessor for ProductLockupAccessibilityLayout(0);
      v89 = v147;
      v147[3] = v88;
      v89[4] = sub_40BCD4(&unk_953FD0, type metadata accessor for ProductLockupAccessibilityLayout);
      v90 = sub_B1B4(v89);
      sub_407F38(v29, a3, v90, a6, a7, v32, v33);
    }

    else
    {
      v116 = type metadata accessor for ProductLockupLayout(0);
      v117 = v147;
      v147[3] = v116;
      v117[4] = sub_40BCD4(&qword_953FC8, type metadata accessor for ProductLockupLayout);
      v118 = sub_B1B4(v117);
      sub_409970(v29, a3, v118, a6, a7, v32, v33);
    }

    return (*(v26 + 8))(v154, v149);
  }
}

uint64_t sub_407880@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, void *a4@<X8>)
{
  v53 = a4;
  v49 = a3;
  v52 = a2;
  v5 = sub_7656C0();
  v50 = *(v5 - 8);
  v51 = v5;
  __chkstk_darwin(v5);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_BD88(&unk_953FB8);
  __chkstk_darwin(v8 - 8);
  v10 = (&v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v11);
  v13 = &v46 - v12;
  __chkstk_darwin(v14);
  v16 = &v46 - v15;
  v17 = sub_75BF20();
  v18 = *(v17 - 8);
  (*(v18 + 16))(v16, a1, v17);
  (*(v18 + 56))(v16, 0, 1, v17);
  v19 = sub_75BFE0();
  if (v19)
  {
  }

  v20 = sub_75BFD0();
  sub_1ED18(v16, v13, &unk_953FB8);
  if ((*(v18 + 48))(v13, 1, v17) == 1)
  {
    sub_10A2C(v16, &unk_953FB8);
LABEL_5:
    v21 = 0;
    v16 = v13;
    goto LABEL_31;
  }

  sub_1ED18(v13, v10, &unk_953FB8);
  v22 = (*(v18 + 88))(v10, v17);
  if (v22 == enum case for ProductTopLockup.PrimaryBanner.askToBuy(_:))
  {
    (*(v18 + 96))(v10, v17);
    v23 = *v10;
    sub_75A920();
    sub_768900();
    sub_768ED0();
    if ((sub_75A770() & 1) == 0)
    {
      LODWORD(v49) = v19 == 0;
      v48 = sub_764D60();
      v32 = v31;
      v47 = v20 ^ 1;
      v46 = type metadata accessor for LinkableHeaderCollectionViewCell();
      v33 = sub_527DE4();
      swift_getKeyPath();
      sub_75C7B0();

      sub_765630();
      v35 = v34;
      (*(v50 + 8))(v7, v51);
      ObjectType = swift_getObjectType();
      sub_12407C(v48, v35, v32, v49 & v47, v33, v46, ObjectType);
      v21 = v37;

      swift_unknownObjectRelease();

      sub_10A2C(v16, &unk_953FB8);
      v16 = v13;
      goto LABEL_31;
    }
  }

  else
  {
    if (v22 != enum case for ProductTopLockup.PrimaryBanner.banner(_:))
    {
      sub_10A2C(v16, &unk_953FB8);
      (*(v18 + 8))(v10, v17);
      goto LABEL_5;
    }

    (*(v18 + 96))(v10, v17);
    v23 = *v10;
  }

  sub_10A2C(v13, &unk_953FB8);
  if ((v20 & 1) == 0)
  {
    if (qword_93CBE0 != -1)
    {
      swift_once();
    }

    sub_B170(qword_99CE70, qword_99CE88);
    swift_getKeyPath();
    sub_75C7B0();

    v24 = *&v54[0];
    sub_766710();
  }

  v25 = sub_764D20();
  if (v25)
  {
  }

  sub_764D10();
  sub_BD88(&unk_954000);
  v26 = sub_769490();

  if (v20)
  {
    _Q3 = xmmword_786AD0;
    v28 = 17.0;
    v29 = 0.0;
    v30 = 0.0;
  }

  else
  {
    v29 = 22.0;
    if (v25)
    {
      v29 = 15.0;
    }

    if (v26)
    {
      v30 = 15.0;
    }

    else
    {
      v30 = v29;
    }

    v28 = 9.0;
    if (v26)
    {
      v38 = 12.0;
    }

    else
    {
      v38 = 9.0;
    }

    __asm { FMOV            V3.2D, #15.0 }

    *&_Q3 = v38;
  }

  v54[1] = _Q3;
  v54[0] = _Q3;
  v55 = v28;
  v56 = v29;
  v57 = v28;
  v58 = v30;
  v59 = xmmword_786B00;
  v60 = xmmword_786B10;
  v43 = sub_527DE4();
  swift_getKeyPath();
  sub_75C7B0();

  sub_765630();
  (*(v50 + 8))(v7, v51);
  sub_13C170(v23, v54, v43);
  v21 = v44;
  swift_unknownObjectRelease();

LABEL_31:
  result = sub_10A2C(v16, &unk_953FB8);
  *v53 = v21;
  return result;
}

uint64_t sub_407F38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>, double a7@<D3>)
{
  v164 = a1;
  v144 = a3;
  v12 = sub_BD88(&unk_944DF0);
  __chkstk_darwin(v12 - 8);
  v142 = &v124 - v13;
  v140 = sub_7623A0();
  v134 = *(v140 - 8);
  __chkstk_darwin(v140);
  v136 = &v124 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_BD88(&unk_9457F0);
  v138 = *(v15 - 8);
  v139 = v15;
  __chkstk_darwin(v15);
  v135 = &v124 - v16;
  v137 = sub_75D850();
  v143 = *(v137 - 8);
  __chkstk_darwin(v137);
  v133 = &v124 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v151 = &v124 - v19;
  v131 = type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0);
  __chkstk_darwin(v131);
  v153 = &v124 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = sub_75AD00();
  v125 = *(v129 - 8);
  __chkstk_darwin(v129);
  v124 = &v124 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = sub_BD88(&unk_953FA0);
  v141 = *(v150 - 8);
  __chkstk_darwin(v150);
  v149 = &v124 - v22;
  v152 = sub_762D10();
  v165 = *(v152 - 8);
  __chkstk_darwin(v152);
  *&v163 = &v124 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_7666D0();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = &v124 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_26F08();
  if (qword_93CB98 != -1)
  {
    swift_once();
  }

  v29 = sub_BD88(&qword_94E610);
  sub_BE38(v29, qword_99CD78);
  swift_getKeyPath();
  sub_75C7B0();

  v182[0] = v183[0];
  v146 = v29;
  sub_7592B0();
  swift_unknownObjectRelease();
  swift_getKeyPath();
  sub_75C7B0();

  v30 = v183[0];
  v157 = v28;
  v31 = sub_769E10();

  v32 = *(v25 + 8);
  v147 = v27;
  v148 = v25 + 8;
  v158 = v24;
  v145 = v32;
  v32(v27, v24);
  sub_75C000();
  v33 = qword_93CCC8;
  v34 = v31;
  if (v33 != -1)
  {
    swift_once();
  }

  v35 = sub_BD88(&unk_94B6E0);
  sub_BE38(v35, qword_99D148);
  swift_getKeyPath();
  sub_75C7B0();

  v181[0] = v183[0];
  v156 = v35;
  sub_7592B0();
  swift_unknownObjectRelease();
  v36 = sub_7653B0();
  v183[3] = v36;
  *&v162 = sub_40BCD4(&qword_93F9B0, &type metadata accessor for Feature);
  v183[4] = v162;
  v37 = sub_B1B4(v183);
  v38 = *(v36 - 8);
  v39 = *(v38 + 104);
  v161 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v155 = v36;
  v159 = v38 + 104;
  v160 = v39;
  v39(v37);
  LOBYTE(v36) = sub_765C30();
  sub_BEB8(v183);
  LOBYTE(v123) = v36 & 1;
  v40 = v163;
  v132 = v34;
  sub_762D00();
  sub_762CE0();
  v41 = *(v165 + 8);
  v165 += 8;
  v154 = v41;
  v41(v40, v152);
  if (qword_93CBA8 != -1)
  {
    swift_once();
  }

  sub_BE38(v146, qword_99CDA8);
  swift_getKeyPath();
  sub_75C7B0();

  v181[0] = v182[0];
  v42 = v147;
  sub_7592B0();
  swift_unknownObjectRelease();
  swift_getKeyPath();
  sub_75C7B0();

  v43 = v182[0];
  v44 = sub_769E10();

  v145(v42, v158);
  v130 = sub_75BF70();
  v45 = qword_93CCD8;
  v46 = v44;
  if (v45 != -1)
  {
    swift_once();
  }

  v128 = sub_BE38(v156, qword_99D178);
  swift_getKeyPath();
  v127 = a2;
  sub_75C7B0();

  *&v178 = v182[0];
  sub_7592B0();
  swift_unknownObjectRelease();
  v47 = v155;
  v182[3] = v155;
  v182[4] = v162;
  v48 = sub_B1B4(v182);
  v160(v48, v161, v47);
  sub_765C30();
  sub_BEB8(v182);
  v49 = v163;
  sub_762D00();
  sub_762CE0();
  v50 = v152;
  v51 = v154;
  v154(v49, v152);
  v130 = sub_75BF30();
  v126 = v52;
  swift_getKeyPath();
  v53 = v46;
  sub_75C7B0();

  v174 = v181[0];
  sub_7592B0();
  swift_unknownObjectRelease();
  v181[3] = v47;
  v181[4] = v162;
  v54 = sub_B1B4(v181);
  v160(v54, v161, v47);
  v55 = sub_765C30();
  sub_BEB8(v181);
  LOBYTE(v123) = v55 & 1;
  v130 = v53;
  sub_762D00();
  sub_762CE0();
  v56 = v49;
  v57 = v50;
  v51(v56, v50);
  sub_75BF50();
  if (v58)
  {
    if (qword_93CBB8 != -1)
    {
      swift_once();
    }

    sub_BE38(v146, qword_99CDD8);
    swift_getKeyPath();
    sub_75C7B0();

    v174 = v178;
    v59 = v147;
    sub_7592B0();
    swift_unknownObjectRelease();
    swift_getKeyPath();
    sub_75C7B0();

    v60 = v178;
    v61 = sub_769E10();

    v145(v59, v158);
    v62 = qword_93CCE0;
    v63 = v61;
    if (v62 != -1)
    {
      swift_once();
    }

    sub_BE38(v156, qword_99D190);
    swift_getKeyPath();
    sub_75C7B0();

    *&v171 = v178;
    sub_7592B0();
    swift_unknownObjectRelease();
    v64 = v155;
    *(&v179 + 1) = v155;
    v180 = v162;
    v65 = sub_B1B4(&v178);
    v160(v65, v161, v64);
    LOBYTE(v64) = sub_765C30();
    sub_BEB8(&v178);
    LOBYTE(v123) = v64 & 1;
    v66 = v163;
    sub_762D00();
    sub_762CE0();

    v154(v66, v50);
  }

  else
  {
    v180 = 0;
    v178 = 0u;
    v179 = 0u;
  }

  v67 = v129;
  sub_29A844();
  sub_75C780();
  swift_getKeyPath();
  sub_769040();

  v68 = v174;
  swift_getKeyPath();
  sub_769040();

  v69 = v175;
  if (v175)
  {
    v70 = v158;
    if (v68)
    {

      goto LABEL_31;
    }
  }

  else
  {
    v70 = v158;
  }

  v71 = sub_75BFB0();
  v72 = v124;
  v73 = v125;
  if (v71)
  {
    v74 = v71;
  }

  else
  {
    if (!sub_75BFA0())
    {
LABEL_29:
      v69 = 0;
      goto LABEL_30;
    }

    v74 = sub_75FEA0();
  }

  (*(v73 + 104))(v72, enum case for OfferTitleType.standard(_:), v67);
  if (!*(v74 + 16) || (v75 = sub_6643C4(v72), (v76 & 1) == 0))
  {

    (*(v73 + 8))(v72, v67);
    goto LABEL_29;
  }

  v77 = (*(v74 + 56) + 16 * v75);
  v78 = v72;
  v148 = *v77;
  v79 = v73;
  v69 = v77[1];
  v80 = *(v79 + 8);

  v80(v78, v67);

LABEL_30:
  v57 = v152;
LABEL_31:
  if (qword_93D900 != -1)
  {
    swift_once();
  }

  sub_BE38(v70, qword_99F2F8);
  swift_getKeyPath();
  sub_75C7B0();

  v81 = v174;
  sub_769E10();

  if (qword_93CCF8 != -1)
  {
    swift_once();
  }

  sub_BE38(v156, qword_99D1D8);
  swift_getKeyPath();
  sub_75C7B0();

  *&v168 = v174;
  sub_7592B0();
  swift_unknownObjectRelease();
  v82 = v155;
  v176 = v155;
  v177 = v162;
  v83 = sub_B1B4(&v174);
  v160(v83, v161, v82);
  LOBYTE(v82) = sub_765C30();
  sub_BEB8(&v174);
  LOBYTE(v123) = v82 & 1;
  v84 = v163;
  sub_762D00();
  sub_762CE0();
  v154(v84, v57);
  sub_B170(&v174, v176);
  if (v69)
  {
  }

  sub_766550();
  sub_75BF90();
  if (v85 == 1 || (v86 = v85, , !v86))
  {
    v173 = 0;
    v171 = 0u;
    v172 = 0u;
  }

  else
  {
    if (qword_93D6B8 != -1)
    {
      swift_once();
    }

    sub_BE38(v158, qword_99EC20);
    swift_getKeyPath();
    sub_75C7B0();

    v87 = v171;
    sub_769E10();

    if (qword_93CCE8 != -1)
    {
      swift_once();
    }

    sub_BE38(v156, qword_99D1A8);
    swift_getKeyPath();
    sub_75C7B0();

    v167 = v171;
    sub_7592B0();
    swift_unknownObjectRelease();
    v88 = v155;
    *(&v172 + 1) = v155;
    v173 = v162;
    v89 = sub_B1B4(&v171);
    v160(v89, v161, v88);
    LOBYTE(v88) = sub_765C30();
    sub_BEB8(&v171);
    LOBYTE(v123) = v88 & 1;
    v90 = v163;
    sub_762D00();
    sub_762CE0();
    v154(v90, v57);
  }

  sub_75BF90();
  if (v92 == 1 || (v93 = v91, , !v93))
  {
    v170 = 0;
    v168 = 0u;
    v169 = 0u;
  }

  else
  {
    if (qword_93D6C0 != -1)
    {
      swift_once();
    }

    v94 = v57;
    sub_BE38(v158, qword_99EC38);
    swift_getKeyPath();
    sub_75C7B0();

    v95 = v168;
    sub_769E10();

    if (qword_93CCF0 != -1)
    {
      swift_once();
    }

    sub_BE38(v156, qword_99D1C0);
    swift_getKeyPath();
    sub_75C7B0();

    v166 = v168;
    sub_7592B0();
    swift_unknownObjectRelease();
    v96 = v155;
    *(&v169 + 1) = v155;
    v170 = v162;
    v97 = sub_B1B4(&v168);
    v160(v97, v161, v96);
    v98 = sub_765C30();
    sub_BEB8(&v168);
    LOBYTE(v123) = v98 & 1;
    v99 = v163;
    sub_762D00();
    sub_762CE0();
    v154(v99, v94);
  }

  v100 = sub_7670D0();
  swift_allocObject();
  v165 = sub_7670B0();
  swift_allocObject();
  v164 = sub_7670B0();
  v101 = *&UIEdgeInsetsZero.top;
  v162 = *&UIEdgeInsetsZero.bottom;
  v163 = v101;
  if (qword_93CB30 != -1)
  {
    swift_once();
  }

  v102 = sub_BE38(v131, qword_99CC90);
  __chkstk_darwin(v102);
  *(&v124 - 8) = a4;
  *(&v124 - 7) = a5;
  *(&v124 - 6) = a6;
  *(&v124 - 5) = a7;
  v103 = v162;
  *(&v124 - 2) = v163;
  v123 = v103;
  sub_40BCD4(&qword_94E5D8, type metadata accessor for ProductLockupAccessibilityLayout.Metrics);
  sub_765470();
  swift_getKeyPath();
  sub_75C7B0();

  v104 = v167;
  if (sub_769A00())
  {
    if (qword_93C440 != -1)
    {
      swift_once();
    }

    v105 = qword_946920;
  }

  else
  {
    if (qword_93C448 != -1)
    {
      swift_once();
    }

    v105 = qword_946938;
  }

  v106 = v137;
  v107 = sub_BE38(v137, v105);
  v108 = v143;
  v109 = v133;
  (*(v143 + 16))(v133, v107, v106);

  (*(v108 + 32))(v151, v109, v106);
  v110 = *(type metadata accessor for ProductLockupAccessibilityLayout(0) + 64);
  *&v163 = type metadata accessor for ProductLockupAccessibilityLayout.Metrics;
  v111 = v144;
  sub_40BD7C(v153, v144 + v110, type metadata accessor for ProductLockupAccessibilityLayout.Metrics);
  swift_allocObject();
  v112 = sub_7670B0();
  *(v111 + 24) = v100;
  *(v111 + 32) = &protocol witness table for LayoutViewPlaceholder;
  *v111 = v112;
  sub_134D8(v183, v111 + 40);
  sub_134D8(v181, v111 + 80);
  sub_134D8(v182, v111 + 120);
  sub_1ED18(&v178, v111 + 160, &qword_9417D0);
  swift_getKeyPath();
  sub_75C7B0();

  v113 = v134;
  v114 = v140;
  (*(v134 + 104))(v136, enum case for OfferButtonSubtitlePosition.below(_:), v140);
  (*(v113 + 56))(v142, 1, 1, v114);
  sub_40BCD4(&qword_944E20, &type metadata accessor for OfferButtonSubtitlePosition);
  v115 = v135;
  sub_760940();
  v116 = v151;
  sub_75D820();
  swift_unknownObjectRelease();
  (*(v138 + 8))(v115, v139);
  swift_allocObject();
  v117 = sub_7670B0();
  *(v111 + 224) = v100;
  *(v111 + 232) = &protocol witness table for LayoutViewPlaceholder;
  *(v111 + 200) = v117;
  *(v111 + 240) = 0u;
  *(v111 + 256) = 0u;
  *(v111 + 272) = 0;
  v118 = v176;
  v119 = v177;
  v120 = sub_B170(&v174, v176);
  *(v111 + 304) = v118;
  *(v111 + 312) = *(v119 + 8);
  v121 = sub_B1B4((v111 + 280));
  (*(*(v118 - 8) + 16))(v121, v120, v118);
  sub_1ED18(&v171, v111 + 320, &qword_9417D0);
  sub_1ED18(&v168, v111 + 360, &qword_9417D0);
  *(v111 + 424) = v100;
  *(v111 + 432) = &protocol witness table for LayoutViewPlaceholder;
  *(v111 + 400) = v165;
  *(v111 + 464) = v100;
  *(v111 + 472) = &protocol witness table for LayoutViewPlaceholder;

  *(v111 + 440) = v164;
  (*(v108 + 8))(v116, v106);
  sub_40BD1C(v153, v163);
  sub_10A2C(&v168, &qword_9417D0);
  sub_10A2C(&v171, &qword_9417D0);
  (*(v141 + 8))(v149, v150);
  sub_10A2C(&v178, &qword_9417D0);
  sub_BEB8(v181);
  sub_BEB8(v182);
  sub_BEB8(v183);
  return sub_BEB8(&v174);
}

uint64_t sub_409970@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>, double a7@<D3>)
{
  v155 = a1;
  v137 = a3;
  v12 = sub_BD88(&unk_944DF0);
  __chkstk_darwin(v12 - 8);
  v135 = v125 - v13;
  v134 = sub_7623A0();
  v129 = *(v134 - 8);
  __chkstk_darwin(v134);
  v131 = v125 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_BD88(&unk_9457F0);
  v132 = *(v15 - 8);
  v133 = v15;
  __chkstk_darwin(v15);
  v130 = v125 - v16;
  v143 = sub_75D850();
  v136 = *(v143 - 8);
  __chkstk_darwin(v143);
  v128 = v125 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v142 = v125 - v19;
  v20 = sub_75AD00();
  v138 = *(v20 - 8);
  v139 = v20;
  __chkstk_darwin(v20);
  v126 = v125 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_762D10();
  v23 = *(v22 - 8);
  v153 = v22;
  v154 = v23;
  __chkstk_darwin(v22);
  v149 = v125 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_BD88(&unk_953FF0);
  __chkstk_darwin(v25 - 8);
  v27 = v125 - v26;
  v28 = type metadata accessor for ProductLockupLayout.Metrics(0);
  __chkstk_darwin(v28);
  v30 = v125 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v33 = v125 - v32;
  v34 = type metadata accessor for ProductLockupLayout.Metrics.OfferSubtitleMetrics(0);
  (*(*(v34 - 8) + 56))(v27, 1, 1, v34);
  swift_getKeyPath();
  sub_75C7B0();

  v35 = v179[0];
  sub_34A75C(v179[0], v30);
  v156 = a4;
  v157 = a5;
  v158 = a6;
  v159 = a7;
  v36 = *&UIEdgeInsetsZero.bottom;
  v160 = *&UIEdgeInsetsZero.top;
  v161 = v36;
  v162 = v27;
  sub_40BCD4(&qword_94E5E8, type metadata accessor for ProductLockupLayout.Metrics);
  sub_765470();

  sub_40BD1C(v30, type metadata accessor for ProductLockupLayout.Metrics);
  sub_10A2C(v27, &unk_953FF0);
  v150 = sub_75C000();
  v145 = v37;
  swift_getKeyPath();
  v38 = a2;
  sub_75C7B0();

  v177[0] = v179[0];
  v39 = sub_BD88(&unk_94E7B0);
  sub_7592B0();
  swift_unknownObjectRelease();
  swift_getKeyPath();
  sub_75C7B0();

  *&v174 = v179[0];
  v40 = sub_BD88(&unk_94B6E0);
  sub_7592B0();
  swift_unknownObjectRelease();
  v41 = sub_7653B0();
  v179[3] = v41;
  v147 = sub_40BCD4(&qword_93F9B0, &type metadata accessor for Feature);
  v179[4] = v147;
  v42 = sub_B1B4(v179);
  v43 = *(v41 - 8);
  v44 = *(v43 + 104);
  LODWORD(v152) = enum case for Feature.measurement_with_labelplaceholder(_:);
  v148 = v41;
  v151 = v44;
  v146 = v43 + 104;
  v44(v42);
  sub_765C30();
  sub_BEB8(v179);
  v45 = v149;
  sub_762D00();
  sub_762CE0();
  v46 = *(v154 + 8);
  v154 += 8;
  v150 = v46;
  v46(v45, v153);
  v125[1] = v28;
  swift_getKeyPath();
  v141 = v38;
  sub_75C7B0();

  *&v174 = v177[0];
  v145 = v33;
  v140 = v39;
  sub_7592B0();
  swift_unknownObjectRelease();
  v47 = v178[0];
  v144 = sub_75BF70();
  v127 = v48;
  v49 = qword_93CCD8;
  v50 = v47;
  if (v49 != -1)
  {
    swift_once();
  }

  v51 = v40;
  v125[3] = sub_BE38(v40, qword_99D178);
  swift_getKeyPath();
  sub_75C7B0();

  *&v174 = v178[0];
  sub_7592B0();
  swift_unknownObjectRelease();
  v53 = v147;
  v52 = v148;
  v178[3] = v148;
  v178[4] = v147;
  v54 = sub_B1B4(v178);
  (v151)(v54, v152, v52);
  sub_765C30();
  sub_BEB8(v178);
  v55 = v149;
  sub_762D00();
  sub_762CE0();
  v150(v55, v153);
  v127 = sub_75BF30();
  v125[2] = v56;
  swift_getKeyPath();
  v57 = v50;
  sub_75C7B0();

  v171[0] = v177[0];
  v144 = v51;
  sub_7592B0();
  swift_unknownObjectRelease();
  v177[3] = v52;
  v177[4] = v53;
  v58 = sub_B1B4(v177);
  (v151)(v58, v152, v52);
  sub_765C30();
  sub_BEB8(v177);
  v127 = v57;
  sub_762D00();
  sub_762CE0();
  v59 = v153;
  v150(v55, v153);
  sub_75BF50();
  if (v60)
  {
    swift_getKeyPath();
    sub_75C7B0();

    *&v167 = v171[0];
    sub_7592B0();
    swift_unknownObjectRelease();
    v61 = qword_93CCE0;
    v62 = v174;
    if (v61 != -1)
    {
      swift_once();
    }

    sub_BE38(v144, qword_99D190);
    swift_getKeyPath();
    sub_75C7B0();

    *&v167 = v174;
    sub_7592B0();
    swift_unknownObjectRelease();
    v63 = v148;
    *(&v175 + 1) = v148;
    v176 = v147;
    v64 = sub_B1B4(&v174);
    (v151)(v64, v152, v63);
    sub_765C30();
    sub_BEB8(&v174);
    v65 = v149;
    sub_762D00();
    sub_762CE0();

    v59 = v153;
    v150(v65, v153);
  }

  else
  {
    v176 = 0;
    v174 = 0u;
    v175 = 0u;
  }

  v66 = sub_75BFB0();
  v67 = v138;
  v68 = v139;
  v69 = v126;
  if (v66)
  {
    v70 = v66;
    v71 = v144;
  }

  else
  {
    v72 = sub_75BFA0();
    v71 = v144;
    if (!v72)
    {
      v154 = 0;
      goto LABEL_16;
    }

    v70 = sub_75FEA0();
    v67 = v138;
  }

  (*(v67 + 104))(v69, enum case for OfferTitleType.standard(_:), v68);
  if (*(v70 + 16) && (v73 = sub_6643C4(v69), (v74 & 1) != 0))
  {
    v75 = (*(v70 + 56) + 16 * v73);
    v76 = v75[1];
    v154 = *v75;
    v77 = *(v67 + 8);

    v77(v69, v139);

    v72 = v76;
  }

  else
  {

    (*(v67 + 8))(v69, v68);
    v154 = 0;
    v72 = 0;
  }

LABEL_16:
  v78 = qword_93CB80;
  v141 = v72;

  if (v78 != -1)
  {
    swift_once();
  }

  sub_BE38(v140, qword_99CD50);
  swift_getKeyPath();
  sub_75C7B0();

  *&v164 = v171[0];
  sub_7592B0();
  swift_unknownObjectRelease();
  if (qword_93CCF8 != -1)
  {
    swift_once();
  }

  sub_BE38(v71, qword_99D1D8);
  swift_getKeyPath();
  sub_75C7B0();

  v170 = v171[0];
  sub_7592B0();
  swift_unknownObjectRelease();
  v79 = v148;
  v172 = v148;
  v173 = v147;
  v80 = sub_B1B4(v171);
  (v151)(v80, v152, v79);
  sub_765C30();
  sub_BEB8(v171);
  v81 = v149;
  sub_762D00();
  sub_762CE0();
  v150(v81, v59);
  sub_B170(v171, v172);
  sub_766550();
  sub_75BF90();
  if (v82 == 1 || (v83 = v82, , !v83))
  {
    v169 = 0;
    v167 = 0u;
    v168 = 0u;
  }

  else
  {
    sub_26F08();
    if (qword_93D6B8 != -1)
    {
      swift_once();
    }

    v84 = sub_7666D0();
    sub_BE38(v84, qword_99EC20);
    swift_getKeyPath();
    sub_75C7B0();

    v85 = v167;
    sub_769E10();

    if (qword_93CCE8 != -1)
    {
      swift_once();
    }

    sub_BE38(v144, qword_99D1A8);
    swift_getKeyPath();
    sub_75C7B0();

    v170 = v167;
    sub_7592B0();
    swift_unknownObjectRelease();
    v86 = v148;
    *(&v168 + 1) = v148;
    v169 = v147;
    v87 = sub_B1B4(&v167);
    (v151)(v87, v152, v86);
    sub_765C30();
    sub_BEB8(&v167);
    v88 = v149;
    sub_762D00();
    sub_762CE0();
    v150(v88, v153);
  }

  sub_75BF90();
  if (v90 == 1 || (v91 = v89, , !v91))
  {
    v166 = 0;
    v164 = 0u;
    v165 = 0u;
  }

  else
  {
    sub_26F08();
    if (qword_93D6C0 != -1)
    {
      swift_once();
    }

    v92 = sub_7666D0();
    sub_BE38(v92, qword_99EC38);
    swift_getKeyPath();
    sub_75C7B0();

    v93 = v164;
    sub_769E10();

    if (qword_93CCF0 != -1)
    {
      swift_once();
    }

    sub_BE38(v144, qword_99D1C0);
    swift_getKeyPath();
    sub_75C7B0();

    v163 = v164;
    sub_7592B0();
    swift_unknownObjectRelease();
    v94 = v148;
    *(&v165 + 1) = v148;
    v166 = v147;
    v95 = sub_B1B4(&v164);
    (v151)(v95, v152, v94);
    sub_765C30();
    sub_BEB8(&v164);
    v96 = v149;
    sub_762D00();
    sub_762CE0();
    v150(v96, v153);
  }

  v97 = sub_7670D0();
  swift_allocObject();
  v153 = sub_7670B0();
  swift_allocObject();
  v152 = sub_7670B0();
  swift_getKeyPath();
  sub_75C7B0();

  v98 = v170;
  if (sub_769A00())
  {
    if (qword_93C440 != -1)
    {
      swift_once();
    }

    v99 = qword_946920;
  }

  else
  {
    if (qword_93C448 != -1)
    {
      swift_once();
    }

    v99 = qword_946938;
  }

  v100 = v143;
  v101 = sub_BE38(v143, v99);
  v102 = v136;
  v103 = v128;
  (*(v136 + 16))(v128, v101, v100);

  (*(v102 + 32))(v142, v103, v100);
  v151 = type metadata accessor for ProductLockupLayout.Metrics;
  v104 = v137;
  sub_40BD7C(v145, v137, type metadata accessor for ProductLockupLayout.Metrics);
  swift_allocObject();
  v105 = sub_7670B0();
  v106 = type metadata accessor for ProductLockupLayout(0);
  v107 = (v104 + v106[5]);
  v107[3] = v97;
  v107[4] = &protocol witness table for LayoutViewPlaceholder;
  *v107 = v105;
  sub_134D8(v179, v104 + v106[6]);
  sub_134D8(v177, v104 + v106[7]);
  sub_134D8(v178, v104 + v106[8]);
  sub_1ED18(&v174, v104 + v106[9], &qword_9417D0);
  v108 = v104 + v106[10];
  *(v108 + 32) = 0;
  *v108 = 0u;
  *(v108 + 16) = 0u;
  swift_getKeyPath();
  sub_75C7B0();

  v109 = v129;
  v110 = v134;
  (*(v129 + 104))(v131, enum case for OfferButtonSubtitlePosition.below(_:), v134);
  (*(v109 + 56))(v135, 1, 1, v110);
  sub_40BCD4(&qword_944E20, &type metadata accessor for OfferButtonSubtitlePosition);
  v111 = v130;
  sub_760940();
  v112 = v142;
  sub_75D820();
  swift_unknownObjectRelease();
  (*(v132 + 8))(v111, v133);
  swift_allocObject();
  v113 = sub_7670B0();
  v114 = (v104 + v106[11]);
  v114[3] = v97;
  v114[4] = &protocol witness table for LayoutViewPlaceholder;
  *v114 = v113;
  v115 = v172;
  v116 = v173;
  v117 = sub_B170(v171, v172);
  v118 = (v104 + v106[12]);
  v118[3] = v115;
  v118[4] = *(v116 + 8);
  v119 = sub_B1B4(v118);
  (*(*(v115 - 8) + 16))(v119, v117, v115);
  sub_1ED18(&v167, v104 + v106[13], &qword_9417D0);
  sub_1ED18(&v164, v104 + v106[14], &qword_9417D0);
  LOBYTE(v115) = sub_75BF80();
  v120 = (v104 + v106[17]);
  v120[3] = v97;
  v120[4] = &protocol witness table for LayoutViewPlaceholder;
  *v120 = v153;
  v121 = (v104 + v106[18]);
  v121[3] = v97;
  v121[4] = &protocol witness table for LayoutViewPlaceholder;

  *v121 = v152;
  (*(v102 + 8))(v112, v143);
  sub_10A2C(&v164, &qword_9417D0);
  sub_10A2C(&v167, &qword_9417D0);
  sub_10A2C(&v174, &qword_9417D0);
  sub_BEB8(v177);
  sub_BEB8(v178);
  sub_BEB8(v179);
  sub_40BD1C(v145, v151);
  *(v104 + v106[15]) = v115 & 1;
  v122 = (v104 + v106[16]);
  v123 = v141;
  *v122 = v154;
  v122[1] = v123;
  return sub_BEB8(v171);
}

double sub_40B0E0()
{
  v0 = sub_BD88(&qword_94A330);
  __chkstk_darwin(v0 - 8);
  v2 = &v33 - v1;
  v3 = sub_760F50();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v37 = &v33 - v8;
  v9 = sub_7656C0();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_75C040();
  sub_40BCD4(&qword_95F4F0, &type metadata accessor for ProductTopLockup);
  sub_75C750();
  if (!v38)
  {
    return 0.0;
  }

  v34 = v4;
  v35 = v2;
  v36 = v3;
  swift_getKeyPath();
  sub_75C7B0();

  v33 = v38;
  swift_getKeyPath();
  sub_75C7B0();

  sub_765580();
  v14 = v13;
  v15 = *(v10 + 8);
  v15(v12, v9);
  JUScreenClassGetPortraitWidth();
  v17 = v16;
  swift_getKeyPath();
  sub_75C7B0();

  sub_765580();
  v19 = v18;
  v15(v12, v9);
  JUScreenClassGetPortraitWidth();
  v21 = v20;
  if (sub_75BFD0())
  {
    v22 = v34;
    v23 = &enum case for ProductPageIconDimension.large(_:);
    if (v17 >= v14)
    {
      v23 = &enum case for ProductPageIconDimension.extraSmall(_:);
    }

    v24 = v36;
    (*(v34 + 104))(v6, *v23, v36);
    v25 = v37;
    (*(v22 + 32))(v37, v6, v24);
    v26 = v35;
    v27 = v33;
  }

  else
  {
    v27 = v33;
    v29 = sub_7699E0();
    v26 = v35;
    v24 = v36;
    v22 = v34;
    v25 = v37;
    if (v29 & 1) != 0 && (sub_769A00())
    {
      v30 = &enum case for ProductPageIconDimension.extraLargeAccessibility(_:);
    }

    else if ((sub_7699E0() & 1) != 0 && v21 < v19)
    {
      v30 = &enum case for ProductPageIconDimension.extraLarge(_:);
    }

    else if (v17 < v14 || (sub_769A00() & 1) != 0)
    {
      v30 = &enum case for ProductPageIconDimension.medium(_:);
    }

    else
    {
      v30 = &enum case for ProductPageIconDimension.small(_:);
    }

    (*(v22 + 104))(v25, *v30, v24);
  }

  sub_75C030();
  sub_760F40();
  v28 = v31;

  sub_10A2C(v26, &qword_94A330);
  (*(v22 + 8))(v25, v24);
  return v28;
}

double sub_40B554()
{
  v0 = sub_7656C0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_75C7B0();

  v4 = sub_75BF60();
  if (v4)
  {
    v5 = v4;
    if ((sub_75BFD0() & 1) == 0)
    {
      v24 = v0;
      if (qword_93CBE8 != -1)
      {
        swift_once();
      }

      sub_B170(qword_99CE98, qword_99CEB0);
      swift_getKeyPath();
      sub_75C7B0();

      v6 = *&v25[0];
      sub_766710();

      v0 = v24;
    }

    v7 = sub_75BFD0();
    v8 = sub_764D20();
    if (v8)
    {
    }

    sub_764D10();
    sub_BD88(&unk_954000);
    v9 = sub_769490();

    if (v7)
    {
      _Q3 = xmmword_786AD0;
      v11 = 17.0;
      v12 = 0.0;
      v13 = 0.0;
    }

    else
    {
      v12 = 22.0;
      if (v8)
      {
        v12 = 15.0;
      }

      if (v9)
      {
        v13 = 15.0;
      }

      else
      {
        v13 = v12;
      }

      v11 = 9.0;
      if (v9)
      {
        v15 = 12.0;
      }

      else
      {
        v15 = 9.0;
      }

      __asm { FMOV            V3.2D, #15.0 }

      *&_Q3 = v15;
    }

    v25[0] = _Q3;
    v25[1] = _Q3;
    v26 = v11;
    v27 = v12;
    v28 = v11;
    v29 = v13;
    v30 = xmmword_786B00;
    v31 = xmmword_786B10;
    v20 = sub_527DE4();
    sub_765630();
    sub_13C170(v5, v25, v20);
    v14 = v21;

    swift_unknownObjectRelease();
  }

  else
  {
    v14 = 0.0;
  }

  (*(v1 + 8))(v3, v0);
  return v14;
}

double sub_40B834(uint64_t a1, double a2)
{
  v4 = sub_7656C0();
  v42 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v35[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v9 = &v35[-v8];
  v10 = sub_764590();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v35[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = sub_BD88(&unk_953FA0);
  __chkstk_darwin(v14);
  v17 = &v35[-v16];
  if (!a1)
  {
    return 0.0;
  }

  v37 = v15;
  v39 = v11;
  v40 = v10;
  swift_getKeyPath();

  sub_75C7B0();

  v18 = v43;
  v19 = sub_7699D0();

  if (v19)
  {
    v20 = a2;
  }

  else
  {
    v20 = 0.0;
  }

  sub_29A844();
  sub_75C780();
  v41 = a1;
  sub_7645B0();
  swift_getKeyPath();
  v38 = v14;
  sub_769040();

  v36 = v43 ^ 1;
  swift_getKeyPath();
  sub_75C7B0();

  sub_7655A0();
  v22 = v21;
  v23 = *(v42 + 8);
  v23(v9, v4);
  swift_getKeyPath();
  sub_75C7B0();

  v24 = v43;
  v25 = sub_7699D0();

  if (v25)
  {
    swift_getKeyPath();
    sub_75C7B0();

    sub_765590();
    v27 = v26;
    v23(v9, v4);
    v22 = v22 - v27;
  }

  swift_getKeyPath();
  sub_75C7B0();

  v28 = v43;
  swift_getKeyPath();
  sub_75C7B0();

  sub_765580();
  v30 = v29;
  v23(v6, v4);
  v31 = v22 - v20;
  if (v22 - v20 < 0.0)
  {
    v31 = 0.0;
  }

  sub_6260C4(v28, v13, v36 & 1, v30, *&v31, 0);
  v33 = v32;

  (*(v39 + 8))(v13, v40);
  (*(v37 + 8))(v17, v38);
  return v33;
}

uint64_t sub_40BCD4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_40BD1C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_40BD7C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_40BE08()
{
  if (qword_93C430 != -1)
  {
    return swift_once();
  }

  return result;
}

double sub_40BEC8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v29 = sub_75ABC0();
  v28 = *(v29 - 8);
  __chkstk_darwin(v29);
  v30 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_75ABE0();
  v31 = *(v32 - 8);
  __chkstk_darwin(v32);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_762D10();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_7654D0();
  v12 = sub_7654C0();
  sub_26F08();
  if (qword_93D600 != -1)
  {
    swift_once();
  }

  v13 = sub_7666D0();
  sub_BE38(v13, qword_99E9F8);
  v33 = a4;
  v14 = [a4 traitCollection];
  v15 = sub_769E10();

  v16 = sub_7653B0();
  v39[3] = v16;
  v39[4] = sub_40C570(&qword_93F9B0, &type metadata accessor for Feature);
  v17 = sub_B1B4(v39);
  (*(*(v16 - 8) + 104))(v17, enum case for Feature.measurement_with_labelplaceholder(_:), v16);
  v18 = v15;
  sub_765C30();
  sub_BEB8(v39);
  sub_762D00();
  sub_762CE0();
  (*(v9 + 8))(v11, v8);
  if ((v12 & 2) != 0)
  {
    if (qword_93C430 != -1)
    {
      swift_once();
    }

    [qword_99B290 size];
    v19 = sub_7670D0();
    swift_allocObject();
    v20 = sub_7670B0();
    *(&v37 + 1) = v19;
    v38 = &protocol witness table for LayoutViewPlaceholder;
    *&v36 = v20;
  }

  else
  {
    v38 = 0;
    v36 = 0u;
    v37 = 0u;
  }

  v21 = v33;
  if (qword_93C418 != -1)
  {
    swift_once();
  }

  v22 = v29;
  v23 = sub_BE38(v29, qword_99B278);
  (*(v28 + 16))(v30, v23, v22);
  sub_134D8(v39, v35);
  sub_6D310(&v36, v34);
  sub_75ABD0();
  [v21 pageMarginInsets];
  sub_769DA0();
  sub_40C570(&qword_951400, &type metadata accessor for FootnoteLayout);
  v24 = v32;
  sub_7665A0();
  sub_769DC0();
  v26 = v25;

  (*(v31 + 8))(v7, v24);
  sub_BEB8(v39);
  sub_70550(&v36);
  return v26;
}

id sub_40C47C()
{
  v1 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider26FootnoteCollectionViewCell_footnoteView];
  v2 = sub_7654C0();
  v3 = v1[OBJC_IVAR____TtC18ASMessagesProvider12FootnoteView_hasChevron];
  v1[OBJC_IVAR____TtC18ASMessagesProvider12FootnoteView_hasChevron] = (v2 & 2) != 0;
  sub_14F5D4(v3);
  v1[OBJC_IVAR____TtC18ASMessagesProvider12FootnoteView_textLightensOnHighlight] = (sub_7654C0() & 4) != 0;
  v4 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider12FootnoteView_textLabel];
  sub_7654D0();
  v5 = sub_769210();

  [v4 setText:v5];

  [v1 setNeedsLayout];

  return [v0 setNeedsLayout];
}

uint64_t sub_40C570(unint64_t *a1, void (*a2)(uint64_t))
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

double sub_40C5B8(double a1)
{
  sub_765260();
  sub_765260();
  return a1;
}

uint64_t sub_40C688(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t static SearchPageGridBreakpointOverridable.pageGridWithSearchOverrides(for:)()
{
  v0 = sub_75DAB0();
  __chkstk_darwin(v0 - 8);
  sub_75C720();
  if (qword_93D050 != -1)
  {
    swift_once();
  }

  return sub_765660();
}

uint64_t sub_40C7B4()
{
  v0 = sub_BD88(&qword_940A60);
  __chkstk_darwin(v0 - 8);
  v2 = &v42 - v1;
  v53 = sub_765610();
  v3 = *(v53 - 8);
  __chkstk_darwin(v53);
  v5 = (&v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_BD88(&qword_940A68);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v42 - v11;
  v13 = __chkstk_darwin(v10);
  v56 = &v42 - v14;
  __chkstk_darwin(v13);
  v16 = &v42 - v15;
  sub_BD88(&qword_940A70);
  v17 = *(sub_765540() - 8);
  v54 = *(v17 + 72);
  v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v19 = swift_allocObject();
  v47 = v19;
  *(v19 + 16) = xmmword_780120;
  v20 = v19 + v18;
  v58 = 0x3FF0000000000000;
  sub_62634();
  sub_7655D0();
  v58 = 0;
  sub_7655D0();
  v58 = 0x4048000000000000;
  v21 = v12;
  sub_7655D0();
  __asm { FMOV            V0.2D, #16.0 }

  *v5 = _Q0;
  v57 = enum case for PageGrid.HorizontalMargins.absolute(_:);
  v27 = *(v3 + 104);
  v48 = v3 + 104;
  v28 = v53;
  v27(v5);
  v51 = v27;
  left = UIEdgeInsetsZero.left;
  LOBYTE(v58) = 0;
  sub_7655D0();
  v58 = 0;
  v50 = v9;
  sub_7655D0();
  v52 = v20;
  v55 = v16;
  sub_765500();
  v58 = 0x3FF0000000000000;
  sub_7655D0();
  v58 = 0;
  sub_7655D0();
  v58 = 0x4048000000000000;
  sub_7655D0();
  __asm { FMOV            V0.2D, #20.0 }

  *v5 = _Q0;
  (v27)(v5, v57, v28);
  LOBYTE(v58) = 0;
  v49 = v2;
  sub_7655D0();
  v58 = 0;
  sub_7655D0();
  v31 = v54;
  top = UIEdgeInsetsZero.top;
  v46 = left;
  v42 = v21;
  sub_765500();
  v43 = 2 * v31;
  v58 = 0x3FF0000000000000;
  sub_7655D0();
  v58 = 0;
  sub_7655D0();
  v58 = 0x4048000000000000;
  sub_7655D0();
  v44 = vdupq_n_s64(0x4041000000000000uLL);
  v32 = v5;
  *v5 = v44;
  v33 = v53;
  v34 = v51;
  (v51)(v5, v57, v53);
  LOBYTE(v58) = 0;
  sub_7655D0();
  v58 = 0;
  sub_7655D0();
  v35 = v43;
  v36 = v32;
  sub_765500();
  v37 = v54;
  v43 = v35 + v54;
  v58 = 0x4000000000000000;
  sub_7655D0();
  v58 = 0x4044000000000000;
  sub_7655D0();
  v58 = 0x4044000000000000;
  sub_7655D0();
  *v36 = v44;
  v38 = v57;
  (v34)(v36, v57, v33);
  sub_7697A0();
  LOBYTE(v58) = 0;
  sub_7655D0();
  v58 = 0;
  sub_7655D0();
  sub_765500();
  v43 = 4 * v37;
  v58 = 0x4000000000000000;
  sub_7655D0();
  v58 = 0x4044000000000000;
  sub_7655D0();
  v58 = 0x4044000000000000;
  sub_7655D0();
  v44 = vdupq_n_s64(0x404A000000000000uLL);
  *v36 = v44;
  v39 = v53;
  (v51)(v36, v38, v53);
  LOBYTE(v58) = 0;
  sub_7655D0();
  v58 = 0;
  sub_7655D0();
  v40 = v43;
  sub_765500();
  v54 += v40;
  v58 = 0x4000000000000000;
  sub_7655D0();
  v58 = 0x4044000000000000;
  sub_7655D0();
  v58 = 0x4044000000000000;
  sub_7655D0();
  *v36 = v44;
  (v51)(v36, v57, v39);
  LOBYTE(v58) = 0;
  sub_7655D0();
  v58 = 0;
  sub_7655D0();
  result = sub_765500();
  qword_99D918 = v47;
  return result;
}

uint64_t sub_40D170()
{
  v0 = sub_BD88(&qword_940A60);
  __chkstk_darwin(v0 - 8);
  v2 = v16 - v1;
  v3 = sub_765610();
  __chkstk_darwin(v3 - 8);
  v4 = sub_BD88(&qword_940A68);
  __chkstk_darwin(v4 - 8);
  v16[3] = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  __chkstk_darwin(v7);
  __chkstk_darwin(v8);
  v10 = v16 - v9;
  sub_BD88(&qword_940A70);
  v11 = *(sub_765540() - 8);
  v18 = *(v11 + 72);
  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = swift_allocObject();
  v17 = v13;
  *(v13 + 16) = xmmword_780120;
  v19 = v13 + v12;
  v20 = 0x3FF0000000000000;
  sub_62634();
  sub_7655D0();
  v20 = 0;
  sub_7655D0();
  v20 = 0x4048000000000000;
  sub_7655D0();
  sub_765600();
  left = UIEdgeInsetsZero.left;
  LOBYTE(v20) = 0;
  sub_7655D0();
  v20 = 0;
  sub_7655D0();
  sub_765500();
  v20 = 0x3FF0000000000000;
  sub_7655D0();
  v20 = 0;
  sub_7655D0();
  v20 = 0x4048000000000000;
  sub_7655D0();
  sub_765600();
  LOBYTE(v20) = 0;
  sub_7655D0();
  v20 = 0;
  sub_7655D0();
  *&v16[4] = left;
  v16[5] = *&UIEdgeInsetsZero.top;
  sub_765500();
  v20 = 0x3FF0000000000000;
  sub_7655D0();
  v20 = 0;
  sub_7655D0();
  v20 = 0x4048000000000000;
  sub_7655D0();
  sub_765600();
  LOBYTE(v20) = 0;
  v16[2] = v2;
  sub_7655D0();
  v20 = 0;
  sub_7655D0();
  sub_765500();
  v20 = 0x4000000000000000;
  sub_7655D0();
  v20 = 0x4044000000000000;
  sub_7655D0();
  v20 = 0x4044000000000000;
  sub_7655D0();
  sub_765600();
  sub_7697A0();
  LOBYTE(v20) = 0;
  sub_7655D0();
  v20 = 0;
  sub_7655D0();
  v16[1] = v10;
  sub_765500();
  v20 = 0x4000000000000000;
  sub_7655D0();
  v20 = 0x4044000000000000;
  sub_7655D0();
  v20 = 0x4044000000000000;
  sub_7655D0();
  sub_765600();
  LOBYTE(v20) = 0;
  sub_7655D0();
  v20 = 0;
  sub_7655D0();
  sub_765500();
  v20 = 0x4000000000000000;
  sub_7655D0();
  v20 = 0x4044000000000000;
  sub_7655D0();
  v20 = 0x4044000000000000;
  sub_7655D0();
  sub_765600();
  LOBYTE(v20) = 0;
  sub_7655D0();
  v20 = 0;
  sub_7655D0();
  result = sub_765500();
  qword_99D920 = v17;
  return result;
}

uint64_t sub_40D9AC@<X0>(uint64_t (*a1)(void)@<X1>, uint64_t *a2@<X8>)
{
  v4 = sub_7656C0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_75DA10();
  if (result)
  {
    if (a1())
    {
      if (qword_93DD00 != -1)
      {
        swift_once();
      }

      v9 = sub_766CA0();
      v10 = sub_BE38(v9, qword_99FE48);
      a2[3] = v9;
      a2[4] = &protocol witness table for StaticDimension;
      v11 = sub_B1B4(a2);
      v12 = *(*(v9 - 8) + 16);

      return v12(v11, v10, v9);
    }

    else
    {
      sub_75DA20();
      sub_765570();
      v14 = v13;
      result = (*(v5 + 8))(v7, v4);
      a2[3] = &type metadata for CGFloat;
      a2[4] = &protocol witness table for CGFloat;
      *a2 = v14;
    }
  }

  else
  {
    a2[3] = &type metadata for Double;
    a2[4] = &protocol witness table for Double;
    *a2 = 0;
  }

  return result;
}

uint64_t sub_40DBB8@<X0>(uint64_t *a1@<X8>)
{
  if (qword_93DCF0 != -1)
  {
    swift_once();
  }

  v2 = sub_766CA0();
  v3 = sub_BE38(v2, qword_99FE18);
  a1[3] = v2;
  a1[4] = &protocol witness table for StaticDimension;
  v4 = sub_B1B4(a1);
  v5 = *(*(v2 - 8) + 16);

  return v5(v4, v3, v2);
}

uint64_t sub_40DC7C(double a1)
{
  v2 = sub_BD88(&qword_940A60);
  __chkstk_darwin(v2 - 8);
  v42 = v33 - v3;
  v40 = sub_765610();
  v4 = *(v40 - 8);
  __chkstk_darwin(v40);
  v6 = (v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_BD88(&qword_940A68);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = v33 - v12;
  v14 = __chkstk_darwin(v11);
  v46 = v33 - v15;
  __chkstk_darwin(v14);
  v17 = v33 - v16;
  sub_BD88(&qword_940A70);
  v18 = *(sub_765540() - 8);
  v45 = *(v18 + 72);
  v19 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v20 = swift_allocObject();
  v35 = v20;
  *(v20 + 16) = xmmword_780120;
  v38 = v20 + v19;
  v48 = 0x3FF0000000000000;
  sub_62634();
  sub_7655D0();
  v47 = 0x4030000000000000;
  v48 = 0x4020000000000000;
  sub_7655B0();
  v48 = 0x4034000000000000;
  sub_7655D0();
  *v6 = 16.0;
  v6[1] = a1 + 16.0;
  v39 = enum case for PageGrid.HorizontalMargins.absolute(_:);
  v21 = *(v4 + 104);
  v36 = v4 + 104;
  v22 = v40;
  v21(v6);
  v41 = v21;
  left = UIEdgeInsetsZero.left;
  LOBYTE(v48) = 0;
  sub_7655D0();
  v48 = 0;
  v44 = v10;
  sub_7655D0();
  v43 = v17;
  v37 = v13;
  sub_765500();
  v48 = 0x3FF0000000000000;
  sub_7655D0();
  v47 = 0x4034000000000000;
  v48 = 0x4024000000000000;
  sub_7655B0();
  v48 = 0x4034000000000000;
  sub_7655D0();
  v34 = a1;
  *v6 = 20.0;
  v6[1] = a1 + 20.0;
  (v21)(v6, v39, v22);
  LOBYTE(v48) = 0;
  sub_7655D0();
  v48 = 0;
  sub_7655D0();
  v24 = v45;
  v33[2] = *&UIEdgeInsetsZero.top;
  *&v33[3] = left;
  sub_765500();
  v33[1] = 2 * v24;
  v48 = 0x3FF0000000000000;
  sub_7655D0();
  v48 = 0x4034000000000000;
  sub_7655D0();
  v48 = 0x4034000000000000;
  sub_7655D0();
  *v6 = 34.0;
  v6[1] = a1 + 34.0;
  v25 = v39;
  v26 = v40;
  (v41)(v6, v39, v40);
  LOBYTE(v48) = 0;
  sub_7655D0();
  v48 = 0;
  sub_7655D0();
  sub_765500();
  v48 = 0x3FF0000000000000;
  sub_7655D0();
  v48 = 0x4034000000000000;
  sub_7655D0();
  v48 = 0x4034000000000000;
  sub_7655D0();
  *v6 = 34.0;
  v6[1] = a1 + 34.0;
  v27 = v25;
  v28 = v41;
  (v41)(v6, v27, v26);
  sub_7697A0();
  LOBYTE(v48) = 0;
  sub_7655D0();
  v48 = 0;
  sub_7655D0();
  sub_765500();
  v29 = 4 * v45;
  v48 = 0x3FF0000000000000;
  sub_7655D0();
  v48 = 0x4038000000000000;
  sub_7655D0();
  v48 = 0x4034000000000000;
  sub_7655D0();
  v30 = v34 + 52.0;
  *v6 = 52.0;
  v6[1] = v30;
  v31 = v39;
  (v28)(v6, v39, v26);
  LOBYTE(v48) = 0;
  sub_7655D0();
  v48 = 0;
  sub_7655D0();
  sub_765500();
  v45 += v29;
  v48 = 0x3FF0000000000000;
  sub_7655D0();
  v48 = 0x4038000000000000;
  sub_7655D0();
  v48 = 0x4034000000000000;
  sub_7655D0();
  *v6 = 52.0;
  v6[1] = v30;
  (v41)(v6, v31, v40);
  LOBYTE(v48) = 0;
  sub_7655D0();
  v48 = 0;
  sub_7655D0();
  sub_765500();
  return v35;
}

id sub_40E660(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6, double a7)
{
  v8 = v7;
  v82 = a3;
  v79 = a2;
  v70 = sub_757AA0();
  v78 = *(v70 - 8);
  __chkstk_darwin(v70);
  v80 = &v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v81 = &v67 - v16;
  v17 = sub_BD88(&unk_944DF0);
  __chkstk_darwin(v17 - 8);
  v77 = &v67 - v18;
  v75 = sub_7623A0();
  v71 = *(v75 - 8);
  __chkstk_darwin(v75);
  v72 = &v67 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_BD88(&unk_9457F0);
  v74 = *(v76 - 8);
  __chkstk_darwin(v76);
  v73 = &v67 - v20;
  v21 = sub_BD88(&unk_948730);
  *&v22 = __chkstk_darwin(v21 - 8).n128_u64[0];
  v24 = &v67 - v23;
  v25 = [v7 contentView];
  [v25 setLayoutMargins:{a4, a5, a6, a7}];

  v26 = a1;
  sub_764EF0();
  v28 = v27;
  v29 = v8;
  v30 = *&v8[OBJC_IVAR____TtC18ASMessagesProvider43InAppPurchaseSearchResultCollectionViewCell_titleLabel];
  if (v27)
  {
    v31 = sub_769210();
  }

  else
  {
    v31 = 0;
  }

  [v30 setText:v31];

  [v30 setHidden:v28 == 0];
  [v29 setNeedsLayout];
  v32 = sub_757B60();
  v33 = *&v29[OBJC_IVAR____TtC18ASMessagesProvider43InAppPurchaseSearchResultCollectionViewCell_inAppPurchaseLabel];
  v34 = "inAppDescription";
  if (v32)
  {
    v34 = "ultType.Heading.InAppPurchase";
    v35._countAndFlagsBits = 0xD00000000000003ALL;
  }

  else
  {
    v35._countAndFlagsBits = 0xD00000000000002DLL;
  }

  v35._object = (v34 | 0x8000000000000000);
  v86._countAndFlagsBits = 0;
  v86._object = 0xE000000000000000;
  sub_75B750(v35, v86);
  v36 = sub_769210();

  [v33 setText:v36];

  sub_757B90();
  v37 = sub_764EF0();
  v39 = v38;

  if (v39)
  {
    v85._countAndFlagsBits = 0xD000000000000035;
    v85._object = 0x80000000007D3DD0;
    v87._countAndFlagsBits = 0;
    v87._object = 0xE000000000000000;
    sub_75B750(v85, v87);
    sub_BD88(&unk_944E30);
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_77B6D0;
    *(v40 + 56) = &type metadata for String;
    *(v40 + 64) = sub_FA4CC();
    *(v40 + 32) = v37;
    *(v40 + 40) = v39;
    sub_769270();

    v41 = *&v29[OBJC_IVAR____TtC18ASMessagesProvider43InAppPurchaseSearchResultCollectionViewCell_subtitleLabel];

    v42 = sub_769210();

    [v41 setText:v42];

    [v41 setHidden:0];
  }

  else
  {
    v43 = *&v29[OBJC_IVAR____TtC18ASMessagesProvider43InAppPurchaseSearchResultCollectionViewCell_subtitleLabel];
    [v43 setText:0];
    [v43 setHidden:1];
  }

  [v29 setNeedsLayout];
  sub_757B70();
  v45 = *&v29[OBJC_IVAR____TtC18ASMessagesProvider43InAppPurchaseSearchResultCollectionViewCell_inAppDescription];
  if (v44)
  {
    v46 = sub_769210();
    [v45 setText:v46];

    [v45 setHidden:0];
  }

  else
  {
    [*&v29[OBJC_IVAR____TtC18ASMessagesProvider43InAppPurchaseSearchResultCollectionViewCell_inAppDescription] setText:0];
    [v45 setHidden:1];
  }

  [v29 setNeedsLayout];
  v47 = sub_764EC0();
  v69 = v26;
  v48 = sub_764DB0();
  v49 = sub_BD88(&unk_948740);
  (*(*(v49 - 8) + 56))(v24, 1, 1, v49);
  v50 = v71;
  v51 = v75;
  (*(v71 + 104))(v72, enum case for OfferButtonSubtitlePosition.below(_:), v75);
  (*(v50 + 56))(v77, 1, 1, v51);
  sub_239D44(&qword_944E20, &type metadata accessor for OfferButtonSubtitlePosition);
  v52 = v73;
  sub_760940();
  sub_1DFEBC(v47, v48, 0, v24, v52, v79, 0, 0);

  (*(v74 + 8))(v52, v76);
  sub_35280C(v24);
  v68 = v29;
  v53 = *&v29[OBJC_IVAR____TtC18ASMessagesProvider43InAppPurchaseSearchResultCollectionViewCell_iconView];
  v83.value.super.isa = 0;
  v83.is_nil = 0;
  sub_7591D0(v83, v54);
  v84.value.super.isa = 0;
  v84.is_nil = 0;
  sub_7591D0(v84, v55);
  sub_759210();
  sub_239D44(&qword_945810, &type metadata accessor for ArtworkView);
  v56 = v82;
  sub_75A0C0();
  sub_75A0C0();
  v79 = *&v29[OBJC_IVAR____TtC18ASMessagesProvider43InAppPurchaseSearchResultCollectionViewCell_bodyBackgroundColor];
  v57 = v81;
  sub_757B80();
  v58 = OBJC_IVAR____TtC18ASMessagesProvider17InAppPurchaseView_theme;
  swift_beginAccess();
  v59 = v78;
  v60 = v70;
  (*(v78 + 24))(&v53[v58], v57, v70);
  swift_endAccess();
  v61 = *(v59 + 16);
  v62 = v80;
  v61(v80, &v53[v58], v60);
  sub_244454(v62);
  v63 = *(v59 + 8);
  v63(v62, v60);
  v63(v57, v60);
  v64 = v68;
  [v53 setBackgroundColor:v79];
  sub_6A9BFC(v69, v53, v56);
  v61(v57, &v53[v58], v60);
  sub_244454(v57);
  v63(v57, v60);
  [v53 setNeedsLayout];
  sub_396E8();
  v65 = sub_76A000();
  [v64 setBackgroundColor:v65];

  return [v64 setNeedsLayout];
}

id sub_40F004(uint64_t a1, __int16 a2, char a3, void *a4, uint64_t a5)
{
  v6 = v5;
  v7 = HIBYTE(a2);
  v8 = OBJC_IVAR____TtC18ASMessagesProvider17ProductReviewView_isReviewExpanded;
  v5[OBJC_IVAR____TtC18ASMessagesProvider17ProductReviewView_isReviewExpanded] = a2 & 1;
  sub_2C8CC8();
  v145 = OBJC_IVAR____TtC18ASMessagesProvider17ProductReviewView_isResponseExpanded;
  v5[OBJC_IVAR____TtC18ASMessagesProvider17ProductReviewView_isResponseExpanded] = v7 & 1;
  sub_2C8DA4();
  v9 = *&v5[OBJC_IVAR____TtC18ASMessagesProvider17ProductReviewView_titleLabel];
  v10 = [v9 text];
  if (v10)
  {
    v11 = v10;
    v12 = sub_769240();
    v14 = v13;

    v15 = sub_764FE0();
    if (!v15)
    {
      if (!v14)
      {
        goto LABEL_22;
      }

      goto LABEL_17;
    }
  }

  else
  {
    v15 = sub_764FE0();
    if (!v15)
    {
      goto LABEL_22;
    }

    v14 = 0;
    v12 = 0;
  }

  v16 = v15;
  v17 = sub_75E120();
  v19 = v18;

  if (!v14)
  {
    if (!v19)
    {
      goto LABEL_22;
    }

    goto LABEL_17;
  }

  if (!v19)
  {
LABEL_17:

LABEL_18:
    v22 = sub_764FE0();
    if (v22)
    {
      v23 = v22;
      v24 = sub_75E0D0();
    }

    else
    {
      v24 = 0;
    }

    [v9 setAttributedText:v24];

    goto LABEL_22;
  }

  if (v12 == v17 && v14 == v19)
  {

    goto LABEL_22;
  }

  v21 = sub_76A950();

  if ((v21 & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_22:
  v25 = *&v6[OBJC_IVAR____TtC18ASMessagesProvider17ProductReviewView_dateLabel];
  v26 = [v25 text];
  if (!v26)
  {
    sub_765010();
LABEL_32:
    if (!v32)
    {
      goto LABEL_38;
    }

    goto LABEL_33;
  }

  v27 = v26;
  v28 = sub_769240();
  v30 = v29;

  v31 = sub_765010();
  if (!v30)
  {
    goto LABEL_32;
  }

  if (!v32)
  {
LABEL_33:

LABEL_34:
    sub_765010();
    if (v35)
    {
      v36 = sub_769210();
    }

    else
    {
      v36 = 0;
    }

    [v25 setText:v36];

    goto LABEL_38;
  }

  if (v28 == v31 && v32 == v30)
  {

    goto LABEL_38;
  }

  v34 = sub_76A950();

  if ((v34 & 1) == 0)
  {
    goto LABEL_34;
  }

LABEL_38:
  v37 = sub_764FF0();
  sub_43B74C(v37);
  v38 = *&v6[OBJC_IVAR____TtC18ASMessagesProvider17ProductReviewView_authorLabel];
  v39 = [v38 text];
  if (v39)
  {
    v40 = v39;
    v41 = sub_769240();
    v43 = v42;

    v44 = sub_764FB0();
    if (!v44)
    {
      if (!v43)
      {
        goto LABEL_56;
      }

      goto LABEL_51;
    }
  }

  else
  {
    v44 = sub_764FB0();
    if (!v44)
    {
      goto LABEL_56;
    }

    v43 = 0;
    v41 = 0;
  }

  v45 = v44;
  v46 = sub_75E120();
  v48 = v47;

  if (!v43)
  {
    if (!v48)
    {
      goto LABEL_56;
    }

    goto LABEL_51;
  }

  if (!v48)
  {
LABEL_51:

LABEL_52:
    v49 = sub_764FB0();
    if (v49)
    {
      v50 = v49;
      v51 = sub_75E0D0();
    }

    else
    {
      v51 = 0;
    }

    [v38 setAttributedText:v51];

    goto LABEL_56;
  }

  if (v41 == v46 && v43 == v48)
  {

    goto LABEL_56;
  }

  v85 = sub_76A950();

  if ((v85 & 1) == 0)
  {
    goto LABEL_52;
  }

LABEL_56:
  v52 = *&v6[OBJC_IVAR____TtC18ASMessagesProvider17ProductReviewView_dateAuthorLabel];
  v53 = [v52 text];
  if (v53)
  {
    v54 = v53;
    v55 = sub_769240();
    v57 = v56;

    v58 = sub_764FC0();
    if (!v58)
    {
      if (!v57)
      {
        goto LABEL_74;
      }

      goto LABEL_69;
    }
  }

  else
  {
    v58 = sub_764FC0();
    if (!v58)
    {
      goto LABEL_74;
    }

    v57 = 0;
    v55 = 0;
  }

  v59 = v58;
  v60 = sub_75E120();
  v62 = v61;

  if (!v57)
  {
    if (!v62)
    {
      goto LABEL_74;
    }

    goto LABEL_69;
  }

  if (!v62)
  {
LABEL_69:

LABEL_70:
    v63 = sub_764FC0();
    if (v63)
    {
      v64 = v63;
      v65 = sub_75E0D0();
    }

    else
    {
      v65 = 0;
    }

    [v52 setAttributedText:v65];

    goto LABEL_74;
  }

  if (v55 == v60 && v57 == v62)
  {

    goto LABEL_74;
  }

  v86 = sub_76A950();

  if ((v86 & 1) == 0)
  {
    goto LABEL_70;
  }

LABEL_74:
  v66 = sub_765000();
  if (!v66)
  {
    goto LABEL_109;
  }

  v67 = v66;
  v68 = sub_75E0D0();

  sub_769A60();
  v69 = sub_75E140();
  sub_75E0E0();
  v70 = objc_allocWithZone(v69);
  v71 = sub_75E150();
  v72 = *(*&v6[OBJC_IVAR____TtC18ASMessagesProvider17ProductReviewView_bodyLabel] + OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_languageAwareString);
  if (v6[v8] != 1)
  {
    if (v72)
    {
      v78 = v72;
      v79 = sub_75E120();
      v81 = v80;

      v82 = sub_75E120();
      if (v81)
      {
        if (v79 == v82 && v81 == v83)
        {
          goto LABEL_97;
        }

        v84 = sub_76A950();

        if (v84)
        {
          goto LABEL_108;
        }

LABEL_100:
        v91 = v71;
        sub_1A6B10(v71);

LABEL_106:
        goto LABEL_109;
      }
    }

    else
    {
      sub_75E120();
    }

    goto LABEL_100;
  }

  if (v72)
  {
    v73 = v72;
    v74 = sub_75E120();
    v76 = v75;

    v77 = sub_765000();
    if (!v77)
    {
      if (v76)
      {
        goto LABEL_104;
      }

      goto LABEL_108;
    }

    v143 = v74;
  }

  else
  {
    v77 = sub_765000();
    if (!v77)
    {
      goto LABEL_108;
    }

    v76 = 0;
    v143 = 0;
  }

  v87 = v77;
  v88 = sub_75E120();
  v90 = v89;

  if (v76)
  {
    if (v90)
    {
      if (v143 == v88 && v76 == v90)
      {
LABEL_97:

        goto LABEL_109;
      }

      v92 = sub_76A950();

      if (v92)
      {
        goto LABEL_108;
      }

      goto LABEL_105;
    }

LABEL_104:

LABEL_105:
    v91 = sub_765000();
    sub_1A6B10(v91);

    goto LABEL_106;
  }

  if (v90)
  {
    goto LABEL_104;
  }

LABEL_108:

LABEL_109:
  if (!sub_765020())
  {
LABEL_118:
    v105 = v6[OBJC_IVAR____TtC18ASMessagesProvider17ProductReviewView_hasResponse];
    v6[OBJC_IVAR____TtC18ASMessagesProvider17ProductReviewView_hasResponse] = 0;
    sub_2C8B74(v105);
    [*&v6[OBJC_IVAR____TtC18ASMessagesProvider17ProductReviewView_responseDateLabel] setText:0];
    sub_1A5114(0, 0);
    goto LABEL_119;
  }

  v93 = sub_765700();
  if (!v93)
  {

    goto LABEL_118;
  }

  v94 = v93;
  v95 = sub_75E0D0();

  v96 = v6[OBJC_IVAR____TtC18ASMessagesProvider17ProductReviewView_hasResponse];
  v6[OBJC_IVAR____TtC18ASMessagesProvider17ProductReviewView_hasResponse] = 1;
  sub_2C8B74(v96);
  v97 = *&v6[OBJC_IVAR____TtC18ASMessagesProvider17ProductReviewView_responseDateLabel];
  v98 = [v97 text];
  if (!v98)
  {
    sub_765710();
LABEL_127:
    if (!v104)
    {
      goto LABEL_133;
    }

    goto LABEL_128;
  }

  v99 = v98;
  v100 = sub_769240();
  v102 = v101;

  v103 = sub_765710();
  if (!v102)
  {
    goto LABEL_127;
  }

  if (!v104)
  {
LABEL_128:

LABEL_129:
    sub_765710();
    if (v116)
    {
      v117 = sub_769210();
    }

    else
    {
      v117 = 0;
    }

    [v97 setText:v117];

    goto LABEL_133;
  }

  if (v100 == v103 && v104 == v102)
  {

    goto LABEL_133;
  }

  v139 = sub_76A950();

  if ((v139 & 1) == 0)
  {
    goto LABEL_129;
  }

LABEL_133:
  sub_769A60();
  v118 = sub_75E140();
  sub_75E0E0();
  v119 = objc_allocWithZone(v118);
  v120 = sub_75E150();
  v121 = *(*&v6[OBJC_IVAR____TtC18ASMessagesProvider17ProductReviewView_responseBodyLabel] + OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_languageAwareString);
  if (v6[v145] != 1)
  {
    if (v121)
    {
      v128 = v121;
      v129 = sub_75E120();
      v131 = v130;

      v132 = sub_75E120();
      if (v131)
      {
        if (v129 == v132 && v131 == v133)
        {

          goto LABEL_119;
        }

        v140 = sub_76A950();

        if (v140)
        {
          goto LABEL_164;
        }

LABEL_151:
        v138 = v120;
        sub_1A6B10(v120);

        goto LABEL_119;
      }
    }

    else
    {
      sub_75E120();
    }

    goto LABEL_151;
  }

  if (v121)
  {
    v122 = v121;
    v123 = sub_75E120();
    v125 = v124;

    v126 = sub_765700();
    if (!v126)
    {
      if (v125)
      {
        goto LABEL_161;
      }

      goto LABEL_164;
    }

    v127 = v126;
    v146 = v95;
  }

  else
  {
    v134 = sub_765700();
    if (!v134)
    {
      goto LABEL_164;
    }

    v127 = v134;
    v146 = v95;
    v125 = 0;
    v123 = 0;
  }

  v135 = sub_75E120();
  v137 = v136;

  if (v125)
  {
    if (v137)
    {
      if (v123 == v135 && v125 == v137)
      {

        goto LABEL_119;
      }

      v142 = sub_76A950();

      v95 = v146;
      if (v142)
      {
        goto LABEL_164;
      }

LABEL_162:
      v141 = sub_765700();
      sub_1A6B10(v141);

      goto LABEL_119;
    }

    v95 = v146;
LABEL_161:

    goto LABEL_162;
  }

  v95 = v146;
  if (v137)
  {
    goto LABEL_161;
  }

LABEL_164:

LABEL_119:
  v106 = sub_764FA0();
  if (v106)
  {
    v107 = v106;
    v108 = [a4 traitCollection];
    v109 = [v108 horizontalSizeClass];

    if (v109 == &dword_0 + 1)
    {
      v110 = swift_allocObject();
      *(v110 + 16) = a5;
      *(v110 + 24) = v107;
      v111 = &v6[OBJC_IVAR____TtC18ASMessagesProvider17ProductReviewView_moreReviewTapHandler];
      v112 = *&v6[OBJC_IVAR____TtC18ASMessagesProvider17ProductReviewView_moreReviewTapHandler];
      *v111 = sub_4115E4;
      v111[1] = v110;

      sub_F704(v112);
      v113 = &v6[OBJC_IVAR____TtC18ASMessagesProvider17ProductReviewView_moreResponseTapHandler];
      v114 = *&v6[OBJC_IVAR____TtC18ASMessagesProvider17ProductReviewView_moreResponseTapHandler];
      *v113 = sub_4115E4;
      v113[1] = v110;
      sub_F704(v114);
    }

    else
    {
    }
  }

  v6[OBJC_IVAR____TtC18ASMessagesProvider17ProductReviewView_isFlowPreviewingDestination] = a3 & 1;
  sub_2C822C();

  return [v6 setNeedsLayout];
}

uint64_t sub_40FCA8(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&unk_93F980);
  __chkstk_darwin(v4 - 8);
  v6 = &v10 - v5;
  v7 = sub_BD88(&unk_93F630);
  sub_768860();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_268C8(v6);
  }

  sub_32A6C0(a2, 1, a1, v6);

  return (*(v8 + 8))(v6, v7);
}

double sub_40FDE0(uint64_t a1, int a2, int a3, void *a4)
{
  v157 = a4;
  v150 = a3;
  v163 = a2;
  v5 = sub_BD88(&qword_9540B0);
  v159 = *(v5 - 8);
  v160 = v5;
  __chkstk_darwin(v5);
  v158 = v142 - v6;
  v7 = sub_7615B0();
  v151 = *(v7 - 8);
  v152 = v7;
  __chkstk_darwin(v7);
  v153 = v142 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_7615D0();
  v10 = *(v9 - 8);
  v155 = v9;
  v156 = v10;
  __chkstk_darwin(v9);
  v154 = v142 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_766D70();
  v161 = *(v12 - 8);
  v162 = v12;
  __chkstk_darwin(v12);
  v169 = v142 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v179 = v142 - v15;
  __chkstk_darwin(v16);
  v180 = v142 - v17;
  __chkstk_darwin(v18);
  v181 = v142 - v19;
  __chkstk_darwin(v20);
  v182 = v142 - v21;
  __chkstk_darwin(v22);
  v178 = v142 - v23;
  __chkstk_darwin(v24);
  v183 = v142 - v25;
  __chkstk_darwin(v26);
  v172 = v142 - v27;
  v28 = sub_767030();
  v29 = *(v28 - 8);
  __chkstk_darwin(v28);
  v148 = v142 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v149 = v142 - v32;
  __chkstk_darwin(v33);
  v35 = v142 - v34;
  __chkstk_darwin(v36);
  v177 = v142 - v37;
  __chkstk_darwin(v38);
  v145 = v142 - v39;
  __chkstk_darwin(v40);
  v146 = v142 - v41;
  __chkstk_darwin(v42);
  v168 = v142 - v43;
  __chkstk_darwin(v44);
  v143 = v142 - v45;
  __chkstk_darwin(v46);
  v144 = v142 - v47;
  __chkstk_darwin(v48);
  v174 = v142 - v49;
  __chkstk_darwin(v50);
  v175 = v142 - v51;
  __chkstk_darwin(v52);
  v176 = v142 - v53;
  __chkstk_darwin(v54);
  v184 = v142 - v55;
  __chkstk_darwin(v56);
  v58 = v142 - v57;
  __chkstk_darwin(v59);
  v167 = v142 - v60;
  __chkstk_darwin(v61);
  v63 = v142 - v62;
  __chkstk_darwin(v64);
  v66 = v142 - v65;
  __chkstk_darwin(v67);
  v69 = v142 - v68;
  __chkstk_darwin(v70);
  v173 = v142 - v71;
  v72 = sub_765020();
  if (v72)
  {
  }

  v164 = v72;
  v170 = v58;
  v186 = a1;
  v166 = v35;
  sub_767020();
  if (qword_93D728 != -1)
  {
    swift_once();
  }

  v187 = sub_7666D0();
  sub_BE38(v187, qword_99ED70);
  sub_766FF0();
  v73 = v29;
  v75 = v29 + 8;
  v74 = *(v29 + 8);
  v74(v63, v28);
  v76 = v28;
  v77 = v163;
  v142[3] = ~v163;
  sub_767010();
  v74(v66, v76);
  v78 = (v77 & 1) == 0;
  v79 = v76;
  if (v78)
  {
    v80 = 4;
  }

  else
  {
    v80 = 0;
  }

  v142[2] = v80;
  sub_767000();
  v189 = v75;
  v74(v69, v76);
  v81 = sub_764FE0();
  if (v81)
  {
    v82 = v81;
    sub_75E120();
  }

  v171 = v74;
  v83 = *(v73 + 16);
  v185 = v73 + 16;
  v188 = v83;
  v83(v63, v173, v76);
  sub_766D50();
  sub_766D90();
  v147 = sub_7670D0();
  swift_allocObject();
  v165 = sub_767090();
  v84 = v184;
  sub_767020();
  if (qword_93D740 != -1)
  {
    swift_once();
  }

  v85 = sub_BE38(v187, qword_99EDB8);
  v86 = v170;
  v142[1] = v85;
  sub_766FF0();
  v87 = v171;
  v171(v84, v79);
  sub_767010();
  v87(v86, v79);
  v88 = v167;
  sub_767000();
  v87(v63, v79);
  sub_765010();
  v89 = v88;
  v90 = v188;
  v188(v63, v89, v79);
  sub_766D50();
  v91 = v184;
  sub_766D90();
  sub_767020();
  if (qword_93D748 != -1)
  {
    swift_once();
  }

  sub_BE38(v187, qword_99EDD0);
  sub_766FF0();
  v87(v91, v79);
  sub_767010();
  v87(v86, v79);
  sub_767000();
  v87(v63, v79);
  v92 = sub_764FB0();
  if (v92)
  {
    v93 = v92;
    sub_75E120();

    v90 = v188;
  }

  v90(v63, v176, v79);
  sub_766D50();
  sub_766D90();
  v94 = v184;
  sub_767020();
  if (qword_93D750 != -1)
  {
    swift_once();
  }

  sub_BE38(v187, qword_99EDE8);
  v95 = v170;
  sub_766FF0();
  v87(v94, v79);
  sub_767010();
  v87(v95, v79);
  sub_767000();
  v87(v63, v79);
  v96 = sub_764FC0();
  if (v96)
  {
    v97 = v96;
    sub_75E120();

    v188(v63, v175, v79);
  }

  else
  {
    v90(v63, v175, v79);
  }

  sub_766D50();
  sub_766D90();
  sub_767020();
  if (qword_93D738 != -1)
  {
    swift_once();
  }

  v98 = sub_BE38(v187, qword_99EDA0);
  v99 = v143;
  v142[0] = v98;
  sub_766FF0();
  v87(v63, v79);
  v100 = v144;
  sub_767010();
  v87(v99, v79);
  sub_767000();
  v87(v100, v79);
  v101 = sub_765000();
  if (v101)
  {
    v102 = v101;
    sub_75E120();
  }

  v103 = v188;
  v188(v63, v174, v79);
  sub_766D50();
  sub_766D90();
  sub_767020();
  v104 = v187;
  if (qword_93D730 != -1)
  {
    v141 = v187;
    swift_once();
    v104 = v141;
  }

  sub_BE38(v104, qword_99ED88);
  v105 = v145;
  sub_766FF0();
  v106 = v171;
  v171(v63, v79);
  v107 = v146;
  sub_767010();
  v106(v105, v79);
  v108 = v168;
  sub_767000();
  v106(v107, v79);
  v199._object = 0x80000000007D32E0;
  v199._countAndFlagsBits = 0xD000000000000012;
  v200._countAndFlagsBits = 0;
  v200._object = 0xE000000000000000;
  sub_75B750(v199, v200);
  v103(v63, v108, v79);
  sub_766D50();
  sub_766D90();
  v109 = v184;
  sub_767020();
  v110 = v170;
  sub_766FF0();
  v106(v109, v79);
  sub_767010();
  v106(v110, v79);
  sub_767000();
  v106(v63, v79);
  v111 = sub_765020();
  v112 = v169;
  if (v111)
  {
    sub_765710();
  }

  v188(v63, v177, v79);
  sub_766D50();
  sub_766D90();
  sub_767020();
  v113 = v148;
  sub_766FF0();
  v106(v63, v79);
  v114 = v149;
  sub_767010();
  v106(v113, v79);
  v115 = v166;
  sub_767000();
  v106(v114, v79);
  if (sub_765020())
  {
    v116 = sub_765700();

    if (v116)
    {
      sub_75E120();
    }
  }

  v188(v63, v115, v79);
  sub_766D50();
  sub_766D90();
  v117 = v112;
  if (qword_93C8C8 != -1)
  {
    swift_once();
  }

  v118 = v152;
  v119 = sub_BE38(v152, qword_99C700);
  (*(v151 + 16))(v153, v119, v118);
  v120 = v162;
  v198[3] = v162;
  v198[4] = &protocol witness table for LabelPlaceholder;
  v121 = sub_B1B4(v198);
  v122 = v161;
  v123 = *(v161 + 16);
  v123(v121, v172, v120);
  v197[3] = v120;
  v197[4] = &protocol witness table for LabelPlaceholder;
  v124 = sub_B1B4(v197);
  v123(v124, v183, v120);
  v196[3] = v120;
  v196[4] = &protocol witness table for LabelPlaceholder;
  v125 = sub_B1B4(v196);
  v123(v125, v178, v120);
  v195[3] = v120;
  v195[4] = &protocol witness table for LabelPlaceholder;
  v126 = sub_B1B4(v195);
  v123(v126, v182, v120);
  v194[3] = v120;
  v194[4] = &protocol witness table for LabelPlaceholder;
  v127 = sub_B1B4(v194);
  v123(v127, v181, v120);
  v193[3] = v120;
  v193[4] = &protocol witness table for LabelPlaceholder;
  v128 = sub_B1B4(v193);
  v123(v128, v180, v120);
  v192[3] = v120;
  v192[4] = &protocol witness table for LabelPlaceholder;
  v129 = sub_B1B4(v192);
  v123(v129, v179, v120);
  v191[3] = v120;
  v191[4] = &protocol witness table for LabelPlaceholder;
  v130 = sub_B1B4(v191);
  v123(v130, v117, v120);
  v190 = v165;
  sub_7665D0();
  v131 = v154;
  sub_7615C0();
  v132 = [v157 traitCollection];
  sub_2C96A0();
  v133 = v158;
  v134 = v155;
  sub_766730();
  swift_getOpaqueTypeConformance2();
  v135 = v160;
  sub_7673F0();
  v137 = v136;

  (*(v159 + 8))(v133, v135);
  (*(v156 + 8))(v131, v134);
  v138 = *(v122 + 8);
  v138(v169, v120);
  v139 = v171;
  v171(v166, v79);
  v138(v179, v120);
  v139(v177, v79);
  v138(v180, v120);
  v139(v168, v79);
  v138(v181, v120);
  v139(v174, v79);
  v138(v182, v120);
  v139(v175, v79);
  v138(v178, v120);
  v139(v176, v79);
  v138(v183, v120);
  v139(v167, v79);
  v138(v172, v120);
  v139(v173, v79);
  return v137;
}

double sub_4111E4(void *a1)
{
  v2 = sub_759950();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_93C8E0 != -1)
  {
    swift_once();
  }

  v6 = sub_BD88(&qword_940AD0);
  sub_BE38(v6, qword_99C728);
  v31 = a1;
  sub_7592B0();
  v7 = v32;
  v9 = [a1 traitCollection];
  if (qword_93C8D8 != -1)
  {
    swift_once();
  }

  v33.is_nil = qword_99C720;
  v33.value._rawValue = 0;
  isa = sub_7699C0(v33, v8).super.isa;
  v29 = isa;

  v30 = UIFontTextStyleCaption2;
  v11 = objc_opt_self();
  v12 = [v11 configurationWithTextStyle:UIFontTextStyleCaption2 scale:1];
  v13 = v3;
  v14 = *(v3 + 104);
  v14(v5, enum case for SystemImage.star(_:), v2);
  v15 = [v12 configurationWithTraitCollection:isa];
  v16 = sub_759930();

  v17 = *(v13 + 8);
  v17(v5, v2);
  [v16 contentInsets];
  v19 = v18;
  [v16 contentInsets];
  v21 = v19 + v20;
  [v16 size];
  v23 = v22 - v21;
  [v16 contentInsets];
  [v16 contentInsets];
  [v16 size];

  v24 = [v11 configurationWithTextStyle:v30 scale:1];
  v14(v5, enum case for SystemImage.starFill(_:), v2);
  v25 = v29;
  v26 = [v24 configurationWithTraitCollection:v29];
  v27 = sub_759930();

  v17(v5, v2);
  sub_76A130();
  [v27 contentInsets];

  return v7 * 4.0 + v23 * 5.0;
}

uint64_t sub_4115A4()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_4115EC()
{
  v1 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + qword_940590);

    sub_22AFB8();
    sub_413754(&qword_950A60, sub_22AFB8);
    sub_75A0C0();
  }

  sub_22AFB8();
  sub_413754(&qword_950A60, sub_22AFB8);
  sub_75A0C0();
  sub_3D3910();
  v5 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_lockupView);
  v6 = OBJC_IVAR____TtC18ASMessagesProvider22SubscriptionLockupView_iapLockupView;
  v7 = *(*(v5 + OBJC_IVAR____TtC18ASMessagesProvider22SubscriptionLockupView_iapLockupView) + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_artworkView);
  sub_759210();
  sub_413754(&qword_945810, &type metadata accessor for ArtworkView);
  v8 = v7;
  sub_75A0C0();

  v9 = *(*(v5 + OBJC_IVAR____TtC18ASMessagesProvider22SubscriptionLockupView_appLockupView) + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_artworkView);
  sub_75A0C0();

  v10 = *(*(v5 + v6) + OBJC_IVAR____TtC18ASMessagesProvider15SmallLockupView_inAppPurchaseIcon);
  if (v10)
  {
    v11 = *&v10[OBJC_IVAR____TtC18ASMessagesProvider17InAppPurchaseView_tileIconArtworkView];
    v12 = v10;
    v13 = v11;
    sub_75A0C0();

    v14 = *&v12[OBJC_IVAR____TtC18ASMessagesProvider17InAppPurchaseView_artworkView];
    sub_75A0C0();
  }
}

uint64_t sub_4118D4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_BD88(&unk_944DF0);
  __chkstk_darwin(v6 - 8);
  v94 = &v73 - v7;
  v93 = sub_7623A0();
  v90 = *(v93 - 8);
  __chkstk_darwin(v93);
  v91 = &v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_BD88(&unk_9457F0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v92 = &v73 - v11;
  v12 = sub_BD88(&unk_9457D0);
  __chkstk_darwin(v12 - 8);
  v96 = &v73 - v13;
  v14 = sub_BD88(&unk_94AC40);
  __chkstk_darwin(v14 - 8);
  v97 = &v73 - v15;
  v16 = sub_BD88(&unk_9457E0);
  __chkstk_darwin(v16 - 8);
  v18 = &v73 - v17;
  v19 = sub_BD88(&unk_94A780);
  __chkstk_darwin(v19 - 8);
  v99 = &v73 - v20;
  v21 = sub_BD88(&qword_9533C8);
  __chkstk_darwin(v21 - 8);
  v23 = &v73 - v22;
  v24 = sub_BD88(&unk_948730);
  __chkstk_darwin(v24 - 8);
  v89 = &v73 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v98 = &v73 - v27;
  sub_3D3F0C(a1, a2);
  v28 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_learnMoreView);
  if (sub_75B2F0())
  {
    v29 = sub_7658D0();
  }

  else
  {
    v29 = 0;
  }

  [*(v28 + OBJC_IVAR____TtC18ASMessagesProvider25AppPromotionLearnMoreView_learnMoreLabel) setAttributedText:v29];

  v30 = *(v3 + OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_lockupView);
  v31 = sub_75B2E0();
  v32 = sub_BD88(&unk_948740);
  v33 = *(v32 - 8);
  v34 = *(v33 + 56);
  v35 = v98;
  v88 = v33 + 56;
  v34(v98, 1, 1, v32);
  v36 = sub_75CA40();
  (*(*(v36 - 8) + 56))(v23, 1, 1, v36);
  v37 = sub_758C70();
  (*(*(v37 - 8) + 56))(v99, 1, 1, v37);
  sub_757BA0();
  v38 = swift_dynamicCastClass();
  v39 = *(v30 + OBJC_IVAR____TtC18ASMessagesProvider22SubscriptionLockupView_iapLockupView);
  if (v38)
  {
    v82 = v34;
    v83 = v32;
    v86 = v23;
    v40 = v38;
    v41 = v39;
    v42 = sub_75BD30();
    v95 = a2;
    v76 = v42;
    v43 = *(v42 - 8);
    v78 = *(v43 + 56);
    v87 = v43 + 56;
    v78(v18, 1, 1, v42);
    v85 = v10;
    v79 = v31;
    v77 = *(v10 + 56);
    v44 = v97;
    v77(v97, 1, 1, v9);
    v45 = v30;
    v46 = sub_765870();
    v47 = *(v46 - 8);
    v74 = *(v47 + 56);
    v75 = v47 + 56;
    v48 = v96;
    v74(v96, 1, 1, v46);
    swift_retain_n();
    v49 = v98;
    sub_4A18A4(v40, v41, v98, v95, 1, 0, v99, v18, v48, v44);
    sub_10A2C(v48, &unk_9457D0);
    v41[OBJC_IVAR____TtC18ASMessagesProvider15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
    sub_1FD89C();
    v80 = v41;
    [v41 setNeedsLayout];
    sub_10A2C(v44, &unk_94AC40);
    sub_10A2C(v18, &unk_9457E0);
    v84 = v45;
    v50 = *&v45[OBJC_IVAR____TtC18ASMessagesProvider22SubscriptionLockupView_appLockupView];
    v81 = v40;
    v51 = v49;
    v52 = sub_757B90();
    v53 = v95;
    v78(v18, 1, 1, v76);
    v54 = v53;
    v87 = v9;
    (v77)(v44, 1, 1);
    v74(v48, 1, 1, v46);
    sub_4A18A4(v52, v50, v51, v53, 0, 0, v99, v18, v48, v44);
    sub_10A2C(v48, &unk_9457D0);
    v50[OBJC_IVAR____TtC18ASMessagesProvider15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
    sub_1FD89C();
    [v50 setNeedsLayout];

    sub_10A2C(v44, &unk_94AC40);
    sub_10A2C(v18, &unk_9457E0);
    v55 = OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_offerButton;
    [*&v50[OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_offerButton] setAlpha:0.0];
    [*&v50[v55] setUserInteractionEnabled:0];
    [v50 setHidden:1];
    v56 = v79;
    v57 = sub_764EE0();
    if (v57)
    {
    }

    sub_1FC9E8(v57 != 0);
    v58 = *&v50[v55];
    v59 = sub_764EC0();
    v60 = v56;

    v61 = sub_764DB0();

    v62 = v89;
    v82(v89, 1, 1, v83);
    v63 = v90;
    v64 = v93;
    (*(v90 + 104))(v91, enum case for OfferButtonSubtitlePosition.below(_:), v93);
    (*(v63 + 56))(v94, 1, 1, v64);
    sub_413754(&qword_944E20, &type metadata accessor for OfferButtonSubtitlePosition);
    v65 = v92;
    sub_760940();
    sub_1DFEBC(v59, v61, 0, v62, v65, v54, 0, 0);

    (*(v85 + 8))(v65, v87);
    sub_10A2C(v62, &unk_948730);
    v66 = v84;
    sub_59D3B4(v60, v84);

    v23 = v86;
    sub_3D9820(v66, v86);
    v35 = v98;
  }

  else
  {
    [*(v30 + OBJC_IVAR____TtC18ASMessagesProvider22SubscriptionLockupView_iapLockupView) setHidden:1];
    v67 = *(v30 + OBJC_IVAR____TtC18ASMessagesProvider22SubscriptionLockupView_appLockupView);
    v68 = sub_75BD30();
    (*(*(v68 - 8) + 56))(v18, 1, 1, v68);
    v69 = v97;
    (*(v10 + 56))(v97, 1, 1, v9);
    v70 = sub_765870();
    v71 = v96;
    (*(*(v70 - 8) + 56))(v96, 1, 1, v70);
    sub_4A18A4(v31, v67, v35, a2, 0, 0, v99, v18, v71, v69);
    sub_10A2C(v71, &unk_9457D0);
    v67[OBJC_IVAR____TtC18ASMessagesProvider15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
    sub_1FD89C();
    [v67 setNeedsLayout];
    sub_10A2C(v69, &unk_94AC40);
    sub_10A2C(v18, &unk_9457E0);
    sub_3D9820(v30, v23);
  }

  sub_10A2C(v99, &unk_94A780);
  sub_10A2C(v23, &qword_9533C8);
  return sub_10A2C(v35, &unk_948730);
}

uint64_t sub_4124D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v146 = a3;
  v144 = a2;
  v4 = sub_BD88(&unk_944DF0);
  __chkstk_darwin(v4 - 8);
  v136 = v117 - v5;
  v135 = sub_7623A0();
  v132 = *(v135 - 8);
  __chkstk_darwin(v135);
  v133 = v117 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_BD88(&unk_9457F0);
  v140 = *(v7 - 8);
  v141 = v7;
  __chkstk_darwin(v7);
  v134 = v117 - v8;
  v9 = sub_BD88(&unk_9457D0);
  __chkstk_darwin(v9 - 8);
  v137 = v117 - v10;
  v11 = sub_BD88(&unk_94AC40);
  __chkstk_darwin(v11 - 8);
  v139 = v117 - v12;
  v13 = sub_BD88(&unk_9457E0);
  __chkstk_darwin(v13 - 8);
  v138 = v117 - v14;
  v15 = sub_BD88(&unk_94A780);
  __chkstk_darwin(v15 - 8);
  v17 = v117 - v16;
  v18 = sub_BD88(&unk_948730);
  __chkstk_darwin(v18 - 8);
  v20 = v117 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = v117 - v22;
  v24 = sub_BD88(&qword_9533C8);
  __chkstk_darwin(v24 - 8);
  v26 = v117 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v29 = v117 - v28;
  v30 = sub_75CA40();
  v31 = *(v30 - 1);
  __chkstk_darwin(v30);
  v143 = v117 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v35 = v117 - v34;
  sub_761320();
  v36 = a1;
  if (swift_dynamicCastClass())
  {
    v142 = a1;

    v37 = sub_7612A0();
    v39 = v145;
    v38 = v146;
    sub_4118D4(v37, v146);

    v40 = *(v39 + OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_mediaContainerView);
    v41 = sub_761300();
    v42 = sub_761310();
    sub_1ECF90(v41, v42, v38);

    v43 = *(v39 + OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_pageContainerView);
    v44 = [v40 backgroundColor];
    [v43 setBackgroundColor:v44];

    sub_7612B0();
    v45 = OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_mediaOverlayStyle;
    swift_beginAccess();
    v46 = v143;
    (*(v31 + 16))(v143, v39 + v45, v30);
    swift_beginAccess();
    (*(v31 + 24))(v39 + v45, v35, v30);
    swift_endAccess();
    sub_425138();
    v47 = *(v31 + 8);
    v47(v46, v30);
    v47(v35, v30);
    *(v39 + OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_includeBorderInDarkMode) = sub_7612E0() & 1;
    sub_427B84(0);
    sub_7612A0();

    v48 = sub_75B2E0();
    v49 = v144;
  }

  else
  {
    v127 = v29;
    v50 = v35;
    v51 = v145;
    v129 = v30;
    v126 = v20;
    v128 = v26;
    v131 = v23;
    v130 = v17;
    sub_75E230();
    result = swift_dynamicCastClass();
    if (!result)
    {
      return result;
    }

    v53 = result;
    v54 = *(v51 + OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_mediaContainerView);
    v142 = v36;

    sub_1ED8D8(v53, v146);
    v55 = *(v51 + OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_pageContainerView);
    v56 = [v54 backgroundColor];
    [v55 setBackgroundColor:v56];

    sub_75E1C0();
    v57 = OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_mediaOverlayStyle;
    swift_beginAccess();
    v58 = v31;
    v59 = *(v31 + 16);
    v60 = v143;
    v61 = v129;
    v59(v143, v51 + v57, v129);
    swift_beginAccess();
    (*(v58 + 24))(v51 + v57, v50, v61);
    swift_endAccess();
    sub_425138();
    v62 = *(v58 + 8);
    v62(v60, v61);
    v62(v50, v61);
    *(v51 + OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_includeBorderInDarkMode) = sub_75E1F0() & 1;
    sub_427B84(0);
    v63 = *(v51 + OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_learnMoreView);
    if (sub_75E1A0())
    {
      v64 = sub_7658D0();
    }

    else
    {
      v64 = 0;
    }

    v65 = v127;
    [*(v63 + OBJC_IVAR____TtC18ASMessagesProvider25AppPromotionLearnMoreView_learnMoreLabel) setAttributedText:v64];

    v66 = *(v51 + OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_contentView);
    v67 = sub_75E190();
    sub_75E1C0();
    v68 = *(v58 + 56);
    v68(v65, 0, 1, v61);
    sub_3D52FC(v67, v146, v65);

    sub_10A2C(v65, &qword_9533C8);
    v69 = *(v66 + OBJC_IVAR____TtC18ASMessagesProvider33AppPromotionDetailPageContentView_learnMoreButton);
    sub_75E1B0();
    v70 = sub_769210();

    [v69 setTitle:v70 forState:0];

    v71 = *(v66 + OBJC_IVAR____TtC18ASMessagesProvider33AppPromotionDetailPageContentView_inlineLearnMoreLabel);
    if (sub_75E1A0())
    {
      v72 = sub_7658D0();
    }

    else
    {
      v72 = 0;
    }

    v73 = v140;
    [v71 setAttributedText:v72];

    v74 = sub_75E190();
    v75 = v128;
    v143 = v53;
    sub_75E1C0();
    v68(v75, 0, 1, v129);
    v76 = v146;
    sub_3D52FC(v74, v146, v75);
    v77 = *(v51 + OBJC_IVAR____TtC18ASMessagesProvider26AppPromotionDetailPageView_lockupView);
    v145 = v74;
    v78 = sub_7657F0();
    v79 = sub_BD88(&unk_948740);
    v80 = *(v79 - 8);
    v81 = *(v80 + 56);
    v82 = v131;
    v127 = (v80 + 56);
    v81(v131, 1, 1, v79);
    v83 = sub_758C70();
    v84 = v130;
    (*(*(v83 - 8) + 56))(v130, 1, 1, v83);
    sub_757BA0();
    v85 = swift_dynamicCastClass();
    v86 = *&v77[OBJC_IVAR____TtC18ASMessagesProvider22SubscriptionLockupView_iapLockupView];
    if (v85)
    {
      v124 = v81;
      v125 = v79;
      v129 = v77;
      v87 = v85;
      v88 = v86;
      v120 = sub_75BD30();
      v89 = *(v120 - 8);
      v119 = *(v89 + 56);
      v121 = v89 + 56;
      v90 = v138;
      v119(v138, 1, 1, v120);
      v118 = *(v73 + 56);
      v91 = v139;
      v118(v139, 1, 1, v141);
      v92 = sub_765870();
      v93 = *(v92 - 8);
      v117[0] = *(v93 + 56);
      v117[1] = v93 + 56;
      v94 = v137;
      (v117[0])(v137, 1, 1, v92);
      swift_retain_n();
      sub_4A18A4(v87, v88, v82, v146, 1, 0, v130, v90, v94, v91);
      sub_10A2C(v94, &unk_9457D0);
      v88[OBJC_IVAR____TtC18ASMessagesProvider15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
      sub_1FD89C();
      v122 = v88;
      [v88 setNeedsLayout];
      sub_10A2C(v91, &unk_94AC40);
      sub_10A2C(v90, &unk_9457E0);
      v95 = *&v129[OBJC_IVAR____TtC18ASMessagesProvider22SubscriptionLockupView_appLockupView];
      v123 = v87;
      v96 = sub_757B90();
      v119(v90, 1, 1, v120);
      v118(v91, 1, 1, v141);
      v97 = v92;
      v84 = v130;
      (v117[0])(v94, 1, 1, v97);
      sub_4A18A4(v96, v95, v82, v146, 0, 0, v84, v90, v94, v91);
      sub_10A2C(v94, &unk_9457D0);
      v95[OBJC_IVAR____TtC18ASMessagesProvider15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
      sub_1FD89C();
      [v95 setNeedsLayout];

      sub_10A2C(v91, &unk_94AC40);
      sub_10A2C(v90, &unk_9457E0);
      v98 = OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_offerButton;
      [*&v95[OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_offerButton] setAlpha:0.0];
      [*&v95[v98] setUserInteractionEnabled:0];
      [v95 setHidden:1];
      v99 = sub_764EE0();
      if (v99)
      {
      }

      sub_1FC9E8(v99 != 0);
      v100 = *&v95[v98];
      v101 = sub_764EC0();

      v102 = sub_764DB0();

      v103 = v126;
      v124(v126, 1, 1, v125);
      v104 = v132;
      v105 = v135;
      (*(v132 + 104))(v133, enum case for OfferButtonSubtitlePosition.below(_:), v135);
      (*(v104 + 56))(v136, 1, 1, v105);
      sub_413754(&qword_944E20, &type metadata accessor for OfferButtonSubtitlePosition);
      v106 = v134;
      sub_760940();
      sub_1DFEBC(v101, v102, 0, v103, v106, v146, 0, 0);

      (*(v140 + 8))(v106, v141);
      sub_10A2C(v103, &unk_948730);
      v107 = v129;
      sub_59D3B4(v78, v129);

      v75 = v128;
      sub_3D9820(v107, v128);
      v108 = v144;
      v109 = v131;
    }

    else
    {
      [*&v77[OBJC_IVAR____TtC18ASMessagesProvider22SubscriptionLockupView_iapLockupView] setHidden:1];
      v110 = *&v77[OBJC_IVAR____TtC18ASMessagesProvider22SubscriptionLockupView_appLockupView];
      v111 = sub_75BD30();
      v112 = v138;
      (*(*(v111 - 8) + 56))(v138, 1, 1, v111);
      v113 = v139;
      (*(v73 + 56))(v139, 1, 1, v141);
      v114 = sub_765870();
      v115 = v137;
      (*(*(v114 - 8) + 56))(v137, 1, 1, v114);
      sub_4A18A4(v78, v110, v131, v76, 0, 0, v84, v112, v115, v113);
      v116 = v115;
      v109 = v131;
      sub_10A2C(v116, &unk_9457D0);
      v110[OBJC_IVAR____TtC18ASMessagesProvider15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
      sub_1FD89C();
      [v110 setNeedsLayout];
      sub_10A2C(v113, &unk_94AC40);
      sub_10A2C(v112, &unk_9457E0);
      sub_3D9820(v77, v75);
      v108 = v144;
    }

    sub_10A2C(v84, &unk_94A780);
    sub_10A2C(v109, &unk_948730);
    sub_10A2C(v75, &qword_9533C8);
    sub_75E190();

    v48 = sub_7657F0();
    v49 = v108;
  }

  sub_3D70A4(v48, v49);
}

uint64_t sub_413754(unint64_t *a1, void (*a2)(uint64_t))
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

double *sub_41379C(uint64_t a1)
{
  v2 = sub_7572E0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_761370();
  sub_7688F0();
  if (!v36)
  {
    return _swiftEmptyArrayStorage;
  }

  v34 = 0;
  v35 = 0xE000000000000000;
  v6 = v36;

  sub_768210();
  v30 = v36;
  v7 = v37;
  v33 = sub_BD88(&unk_93F5C0);
  v8 = swift_allocObject();
  v32 = xmmword_77D9F0;
  *(v8 + 16) = xmmword_77D9F0;
  sub_BE70(0, &qword_947490);
  sub_BE70(0, &qword_955FA0);
  swift_allocObject();
  v31 = v6;
  swift_weakInit();
  v41.value.super.super.isa = sub_76A1F0();
  v41.is_nil = 0;
  *(v8 + 32) = sub_769830(UIBarButtonSystemItemTrash, v41, v42);
  *&v36 = v6;
  *(&v36 + 1) = sub_12CCE0;
  v37 = 0;
  v38 = 0;
  v39 = v30;
  v40 = v7;
  v9 = objc_allocWithZone(sub_BD88(&qword_9540E0));
  v10 = sub_414358(&v36, 0x7363697274654DLL, 0xE700000000000000);
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = v10;
  type metadata accessor for NavigationActionDebugSetting();
  v12 = swift_allocObject();
  v12[7] = 0xD000000000000013;
  v12[8] = 0x80000000007E0800;
  v12[10] = 0;
  v12[11] = 0;
  v12[9] = 0;
  v12[12] = sub_414620;
  v12[13] = v11;

  *&v30 = v10;

  sub_7572D0();
  v13 = sub_7572B0();
  v15 = v14;
  v16 = *(v3 + 8);
  v29 = v2;
  v16(v5, v2);
  v34 = v13;
  v35 = v15;
  sub_76A6E0();

  type metadata accessor for BoolUserDefaultsDebugSetting();
  v17 = swift_allocObject();
  *(v17 + 56) = 0xD00000000000001ALL;
  *(v17 + 64) = 0x80000000007E0820;
  *(v17 + 72) = 0;
  *(v17 + 80) = 0xD000000000000018;
  *(v17 + 88) = 0x80000000007DDA30;
  *(v17 + 96) = 0;
  sub_7572D0();
  v18 = sub_7572B0();
  v20 = v19;
  v16(v5, v2);
  v34 = v18;
  v35 = v20;
  sub_76A6E0();
  v21 = swift_allocObject();
  *(v21 + 16) = v32;
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_77B6C0;
  *(v22 + 32) = v12;
  *(v22 + 40) = v17;
  type metadata accessor for DebugSection();
  v23 = swift_allocObject();
  sub_7572D0();
  v24 = sub_7572B0();
  v26 = v25;

  v16(v5, v29);
  v23[2] = v24;
  v23[3] = v26;
  v23[4] = 0;
  v23[5] = 0xE000000000000000;
  v23[6] = v22;
  *(v21 + 32) = v23;

  return v21;
}

uint64_t sub_413C68()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_761350();
  }

  return result;
}

uint64_t sub_413CC0(uint64_t a1, uint64_t a2, void *a3)
{
  v39 = a3;
  v4 = sub_758B40();
  v40 = *(v4 - 8);
  v41 = v4;
  __chkstk_darwin(v4);
  v42 = v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_75F340();
  v37 = *(v6 - 8);
  v38 = v6;
  __chkstk_darwin(v6);
  v36 = v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_760280();
  v33 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_7687B0();
  __chkstk_darwin(v9 - 8);
  v10 = sub_BD88(&unk_944FF0);
  __chkstk_darwin(v10 - 8);
  v12 = v32 - v11;
  v13 = sub_BD88(&unk_93FD30);
  __chkstk_darwin(v13 - 8);
  v15 = v32 - v14;
  v16 = sub_765490();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_BD88(&unk_93F980);
  __chkstk_darwin(v20 - 8);
  v22 = v32 - v21;
  v23 = sub_BD88(&unk_93F630);
  v43 = a2;
  sub_768860();
  v24 = *(v23 - 8);
  if ((*(v24 + 48))(v22, 1, v23) == 1)
  {
    return sub_268C8(v22);
  }

  v48 = 0;
  v46 = 0u;
  v47 = 0u;
  v26 = *(v17 + 104);
  v32[2] = v19;
  v26(v19, enum case for FlowPage.viewController(_:), v16);
  v27 = sub_7570A0();
  v28 = *(*(v27 - 8) + 56);
  v32[1] = v15;
  v28(v15, 1, 1, v27);
  v29 = sub_759E30();
  (*(*(v29 - 8) + 56))(v12, 1, 1, v29);
  v45 = sub_BD88(&qword_9540E0);
  v44 = v39;
  v30 = v39;
  sub_768790();
  (*(v33 + 104))(v34, enum case for FlowPresentationContext.push(_:), v35);
  (*(v37 + 104))(v36, enum case for FlowAnimationBehavior.infer(_:), v38);
  (*(v40 + 104))(v42, enum case for FlowOrigin.inapp(_:), v41);
  sub_768CE0();
  sub_758B20();
  swift_allocObject();
  v31 = sub_758AD0();
  sub_32AC14(v31, 1, v43, v22);

  return (*(v24 + 8))(v22, v23);
}

id sub_4142C0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MetricsSettings();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_414318()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

id sub_414358(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v5 = v3 + *(&stru_20.nsects + (swift_isaMask & *v3));
  v25 = *(a1 + 8);
  v26 = *(a1 + 24);
  v7 = a1[1];
  v24 = a1[2];
  v6 = v24;
  v8 = *(a1 + 6);
  v9 = a1[1];
  *v5 = *a1;
  *(v5 + 1) = v7;
  *(v5 + 2) = v6;
  *(v5 + 6) = v8;
  v19 = *a1;
  v20 = v9;
  v21 = a1[2];
  v22 = *(a1 + 6);
  v23 = v8;
  objc_allocWithZone(sub_BD88(&qword_9540E8));

  sub_B2F4C(&v24, v18);
  sub_1ED18(&v25, v18, &qword_9540F0);
  sub_1ED18(&v23, v18, &qword_945EC0);
  *(v3 + *&stru_68.sectname[swift_isaMask & *v3]) = sub_767EF0();
  v17.receiver = v3;
  v17.super_class = sub_BD88(&qword_9540E0);
  v10 = objc_msgSendSuper2(&v17, "initWithNibName:bundle:", 0, 0);
  v11 = [v10 navigationItem];
  if (a3)
  {
    v12 = sub_769210();
  }

  else
  {
    v12 = 0;
  }

  [v11 setTitle:v12];

  v13 = [v10 navigationItem];
  sub_BE70(0, &qword_947490);
  isa = sub_769450().super.isa;

  [v13 setRightBarButtonItems:isa];

  v15 = [v10 navigationItem];
  [v15 setLargeTitleDisplayMode:2];

  return v10;
}

uint64_t sub_4145E0()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_414628(uint64_t a1)
{
  v3 = sub_BD88(&unk_954810);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - v5;
  sub_60138C(a1);
  (*(v4 + 16))(v6, a1, v3);
  if ((*(v4 + 88))(v6, v3) == enum case for DiffablePagePresenter.UpdatePhase.completed<A>(_:))
  {
    (*(v4 + 96))(v6, v3);
    sub_762E10();
    if (v7)
    {
      v8 = sub_769210();
    }

    else
    {
      v8 = 0;
    }

    [v1 setTitle:v8];
  }

  else
  {
    (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_4147B4()
{
  v1 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_objectGraph);
  type metadata accessor for SearchChartsAndCategoriesShelfSupplementaryProvider();
  v2 = swift_allocObject();
  v3 = sub_41585C(&qword_954800, 255, &type metadata accessor for SearchChartsAndCategoriesDiffablePagePresenter);
  *(v2 + 32) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + 32) = v3;
  swift_unknownObjectWeakAssign();
  *(v2 + 16) = v1;
  sub_41585C(&qword_954808, v4, type metadata accessor for SearchChartsAndCategoriesShelfSupplementaryProvider);

  return v2;
}

uint64_t sub_4148B4@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_7644D0();
  v4 = v3;
  sub_75A3C0();
  swift_allocObject();
  v5 = sub_75A3B0();
  swift_allocObject();
  v6 = sub_75A3B0();
  a1[3] = &type metadata for SearchChartsAndCategoriesPageGridProvider;
  a1[4] = sub_4157C8();
  result = swift_allocObject();
  *a1 = result;
  *(result + 16) = v5;
  *(result + 24) = v6;
  *(result + 32) = v2;
  *(result + 40) = v4 & 1;
  return result;
}

unint64_t sub_41497C@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 24) = &type metadata for SearchChartsAndCategoriesPageShelfLayoutSpacingProvider;
  result = sub_415774();
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_4149B0(uint64_t a1)
{
  v2 = sub_7570A0();
  v29 = *(v2 - 8);
  __chkstk_darwin(v2);
  v28 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_BD88(&qword_940A40);
  __chkstk_darwin(v4);
  v6 = &v28 - v5;
  v7 = type metadata accessor for FlowDestination();
  __chkstk_darwin(v7);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_BD88(&unk_93FD30);
  __chkstk_darwin(v10 - 8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v28 - v14;
  __chkstk_darwin(v16);
  v18 = &v28 - v17;
  sub_4156AC(a1, v9, type metadata accessor for FlowDestination);
  if (swift_getEnumCaseMultiPayload() != 8)
  {
    sub_415714(v9, type metadata accessor for FlowDestination);
LABEL_9:
    v23 = 0;
    return v23 & 1;
  }

  v19 = sub_BD88(&qword_940A50);
  sub_109C4(&v9[*(v19 + 48)], v18, &unk_93FD30);
  sub_75F250();
  v20 = *(v4 + 48);
  sub_1ED18(v15, v6, &unk_93FD30);
  sub_1ED18(v18, &v6[v20], &unk_93FD30);
  v21 = v29;
  v22 = *(v29 + 48);
  if (v22(v6, 1, v2) != 1)
  {
    sub_1ED18(v6, v12, &unk_93FD30);
    if (v22(&v6[v20], 1, v2) != 1)
    {
      v25 = v28;
      (*(v21 + 32))(v28, &v6[v20], v2);
      sub_41585C(&qword_947410, 255, &type metadata accessor for URL);
      v26 = v21;
      v23 = sub_7691C0();
      v27 = *(v26 + 8);
      v27(v25, v2);
      sub_10A2C(v15, &unk_93FD30);
      sub_10A2C(v18, &unk_93FD30);
      v27(v12, v2);
      sub_10A2C(v6, &unk_93FD30);
      return v23 & 1;
    }

    sub_10A2C(v15, &unk_93FD30);
    sub_10A2C(v18, &unk_93FD30);
    (*(v21 + 8))(v12, v2);
    goto LABEL_8;
  }

  sub_10A2C(v15, &unk_93FD30);
  sub_10A2C(v18, &unk_93FD30);
  if (v22(&v6[v20], 1, v2) != 1)
  {
LABEL_8:
    sub_10A2C(v6, &qword_940A40);
    goto LABEL_9;
  }

  sub_10A2C(v6, &unk_93FD30);
  v23 = 1;
  return v23 & 1;
}

uint64_t type metadata accessor for SearchChartsAndCategoriesDiffablePageViewController()
{
  result = qword_954120;
  if (!qword_954120)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_414F64@<X0>(uint64_t a1@<X8>)
{
  v54 = a1;
  v58 = sub_75CFE0();
  v56 = *(v58 - 8);
  __chkstk_darwin(v58);
  v57 = &v45 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_BD88(&qword_9439D8);
  __chkstk_darwin(v2 - 8);
  v55 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v45 - v5;
  v7 = sub_BD88(&qword_9439E0);
  __chkstk_darwin(v7 - 8);
  v53 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v50 = &v45 - v10;
  v11 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v49 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v48 = &v45 - v15;
  __chkstk_darwin(v16);
  v18 = (&v45 - v17);
  v19 = sub_BD88(&unk_948010);
  __chkstk_darwin(v19 - 8);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v45 - v23;
  v25 = sub_759810();
  v26 = *(v25 - 8);
  (*(v26 + 56))(v24, 1, 1, v25);
  v27 = sub_75CFD0();
  v51 = *(v27 - 8);
  v52 = v27;
  v28 = *(v51 + 56);
  v46 = v6;
  v28(v6, 1, 1);
  v47 = v24;
  sub_1ED18(v24, v21, &unk_948010);
  if ((*(v26 + 48))(v21, 1, v25) == 1)
  {
    sub_10A2C(v21, &unk_948010);
    v29 = 0;
  }

  else
  {
    v29 = sub_7597B0();
    (*(v26 + 8))(v21, v25);
  }

  sub_5E740C(v29, v18);

  if (qword_93DE58 != -1)
  {
    swift_once();
  }

  v30 = sub_BE38(v11, qword_9A0220);
  if (qword_93DE30 != -1)
  {
    swift_once();
  }

  v31 = sub_BE38(v11, qword_9A01A8);
  v32 = v50;
  sub_4156AC(v31, v50, type metadata accessor for TitleHeaderView.TextConfiguration);
  (*(v12 + 56))(v32, 0, 1, v11);
  v33 = v48;
  sub_4156AC(v18, v48, type metadata accessor for TitleHeaderView.TextConfiguration);
  v34 = v49;
  sub_4156AC(v30, v49, type metadata accessor for TitleHeaderView.TextConfiguration);
  v35 = v53;
  sub_1ED18(v32, v53, &qword_9439E0);
  v36 = v46;
  v37 = v55;
  sub_1ED18(v46, v55, &qword_9439D8);
  v38 = v56;
  (*(v56 + 104))(v57, enum case for TitleHeaderLayout.ChildrenHorizontalAlignment.leading(_:), v58);
  sub_396E8();
  v45 = sub_769FB0();
  sub_10A2C(v36, &qword_9439D8);
  sub_10A2C(v32, &qword_9439E0);
  sub_415714(v18, type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_10A2C(v47, &unk_948010);
  v39 = type metadata accessor for TitleHeaderView.Style(0);
  v40 = v39[8];
  v41 = v54;
  sub_15CEA0(v33, v54);
  sub_15CEA0(v34, v41 + v39[5]);
  sub_109C4(v35, v41 + v39[6], &qword_9439E0);
  *(v41 + v39[7]) = 0;
  *(v41 + v40) = 0;
  *(v41 + v39[9]) = 1;
  *(v41 + v39[14]) = 0x4030000000000000;
  *(v41 + v39[12]) = 0;
  *(v41 + v39[13]) = v45;
  (*(v38 + 32))(v41 + v39[11], v57, v58);
  v43 = v51;
  v42 = v52;
  if ((*(v51 + 48))(v37, 1, v52) != 1)
  {
    return (*(v43 + 32))(v41 + v39[10], v37, v42);
  }

  sub_10A2C(v37, &qword_9439D8);
  return (*(v43 + 104))(v41 + v39[10], enum case for TitleHeaderLayout.AccessoryVerticalAlignment.firstBaseline(_:), v42);
}

uint64_t sub_4156AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_415714(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_415774()
{
  result = qword_9547F0;
  if (!qword_9547F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_9547F0);
  }

  return result;
}

unint64_t sub_4157C8()
{
  result = qword_9547F8;
  if (!qword_9547F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_9547F8);
  }

  return result;
}

uint64_t sub_41581C()
{

  return _swift_deallocObject(v0, 41, 7);
}

uint64_t sub_41585C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_4158A4()
{
  v33 = sub_7664A0();
  v38 = *(v33 - 8);
  __chkstk_darwin(v33);
  v1 = &v30 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_75D1E0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_75D250();
  sub_161DC(v6, qword_954820);
  v35 = sub_BE38(v6, qword_954820);
  v53[18] = &type metadata for CGFloat;
  v53[19] = &protocol witness table for CGFloat;
  v53[14] = &protocol witness table for CGFloat;
  v53[15] = 0x4024000000000000;
  v53[13] = &type metadata for CGFloat;
  v53[10] = 0xC04F000000000000;
  v53[8] = &type metadata for CGFloat;
  v53[9] = &protocol witness table for CGFloat;
  v53[5] = 0x4036000000000000;
  if (qword_93D070 != -1)
  {
    swift_once();
  }

  sub_134D8(qword_954850, v53);
  v7 = *(v3 + 104);
  v36 = v5;
  v7(v5, enum case for ArcadeFooterLayout.ButtonLocation.bottom(_:), v2);
  v52[13] = &type metadata for Double;
  v52[14] = &protocol witness table for Double;
  v52[9] = &protocol witness table for Double;
  v52[10] = 0x402E000000000000;
  v52[8] = &type metadata for Double;
  v52[5] = 0x4040000000000000;
  if (qword_93DA20 != -1)
  {
    swift_once();
  }

  v8 = sub_7666D0();
  v40 = sub_BE38(v8, qword_99F658);
  v9 = *(v8 - 8);
  v10 = *(v9 + 16);
  v11 = v9 + 16;
  v10(v1, v40, v8);
  v31 = enum case for FontSource.useCase(_:);
  v12 = v38 + 104;
  v37 = *(v38 + 104);
  v13 = v33;
  v37(v1);
  v32 = sub_761250();
  v52[3] = v32;
  v14 = sub_418700(&qword_95F820, &type metadata accessor for CappedSizeStaticDimension);
  v52[4] = v14;
  sub_B1B4(v52);
  v15 = UIContentSizeCategoryExtraExtraExtraLarge;
  sub_761240();
  v16 = v40;
  v34 = v8;
  v39 = v11;
  v40 = v10;
  v10(v1, v16, v8);
  v17 = v12;
  v18 = v1;
  v19 = v37;
  v20 = v31;
  (v37)(v18, v31, v13);
  v51[3] = v32;
  v51[4] = v14;
  sub_B1B4(v51);
  v21 = v15;
  sub_761240();
  v50 = 0;
  v49 = 0u;
  v48 = 0u;
  v54 = xmmword_782450;
  v55 = xmmword_782450;
  v56 = 0;
  if (qword_93D600 != -1)
  {
    swift_once();
  }

  v22 = v34;
  v32 = sub_BE38(v34, qword_99E9F8);
  v40(v18, v32, v22);
  v19(v18, v20, v13);
  v23 = sub_766CA0();
  v47[3] = v23;
  v47[4] = &protocol witness table for StaticDimension;
  sub_B1B4(v47);
  v45 = v13;
  v46 = &protocol witness table for FontSource;
  v24 = sub_B1B4(v44);
  v25 = v38;
  v30 = v17;
  v26 = *(v38 + 16);
  v26(v24, v18, v13);
  sub_766CB0();
  v27 = *(v25 + 8);
  v27(v18, v13);
  v40(v18, v32, v22);
  (v37)(v18, v20, v13);
  v45 = v23;
  v46 = &protocol witness table for StaticDimension;
  sub_B1B4(v44);
  v42 = v13;
  v43 = &protocol witness table for FontSource;
  v28 = sub_B1B4(v41);
  v26(v28, v18, v13);
  sub_766CB0();
  v27(v18, v13);
  v43 = &protocol witness table for Double;
  v42 = &type metadata for Double;
  v41[0] = 0x3FF0000000000000;
  return sub_75D230();
}

uint64_t sub_415EE0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = [swift_unknownObjectRetain() traitCollection];
    sub_7699D0();

    sub_75D210();
    if (qword_93D078 != -1)
    {
      swift_once();
    }

    v3 = sub_BD88(&qword_944E50);
    sub_BE38(v3, qword_99D928);
    swift_unknownObjectRetain();
    sub_7592B0();
    swift_unknownObjectRelease();
    sub_75D240();
    if (qword_93D068 != -1)
    {
      swift_once();
    }

    v4 = sub_BD88(&qword_940AD0);
    sub_BE38(v4, qword_954838);
    swift_unknownObjectRetain();
    sub_7592B0();
    swift_unknownObjectRelease();
    sub_75D220();
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_4160C0()
{
  v0 = sub_BD88(&qword_940AD0);
  sub_161DC(v0, qword_954838);
  sub_BE38(v0, qword_954838);
  sub_BD88(&qword_93FBE0);
  return sub_7592E0();
}

uint64_t sub_416158()
{
  v0 = sub_7664A0();
  v1 = __chkstk_darwin(v0);
  v3 = (&v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v3 = UIFontTextStyleBody;
  (*(v4 + 104))(v3, enum case for FontSource.textStyle(_:), v1);
  qword_954868 = sub_761250();
  qword_954870 = sub_418700(&qword_95F820, &type metadata accessor for CappedSizeStaticDimension);
  sub_B1B4(qword_954850);
  v5 = UIFontTextStyleBody;
  v6 = UIContentSizeCategoryExtraExtraExtraLarge;
  return sub_761240();
}

uint64_t sub_4162A8()
{
  v0 = sub_BD88(&qword_944E50);
  sub_161DC(v0, qword_99D928);
  sub_BE38(v0, qword_99D928);
  sub_BD88(&qword_93FBE0);
  type metadata accessor for CGSize(0);
  return sub_7592D0();
}

UIFontTextStyle sub_416354()
{
  v0 = sub_7666D0();
  sub_161DC(v0, qword_99D940);
  v1 = sub_BE38(v0, qword_99D940);
  *v1 = UIFontTextStyleBody;
  *(v1 + 8) = UIFontWeightSemibold;
  (*(*(v0 - 8) + 104))();

  return UIFontTextStyleBody;
}

uint64_t sub_416410()
{
  v0 = sub_7664A0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_761250();
  sub_161DC(v4, qword_99D958);
  sub_BE38(v4, qword_99D958);
  if (qword_93D080 != -1)
  {
    swift_once();
  }

  v5 = sub_7666D0();
  v6 = sub_BE38(v5, qword_99D940);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v7 = UIContentSizeCategoryExtraExtraExtraLarge;
  return sub_761240();
}

char *sub_4165AC(double a1, double a2, double a3, double a4)
{
  v105 = sub_768C60();
  v104 = *(v105 - 8);
  __chkstk_darwin(v105);
  v103 = &v95 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_75C100();
  v107 = *(v10 - 8);
  v108 = v10;
  __chkstk_darwin(v10);
  v102 = &v95 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v106 = &v95 - v13;
  v101 = sub_761250();
  v100 = *(v101 - 8);
  __chkstk_darwin(v101);
  v99 = &v95 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = sub_7666D0();
  v15 = *(v97 - 8);
  __chkstk_darwin(v97);
  v98 = &v95 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_75A010();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v95 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_BD88(&qword_95F810);
  __chkstk_darwin(v21 - 8);
  v23 = &v95 - v22;
  v24 = OBJC_IVAR____TtC18ASMessagesProvider30ArcadeFooterCollectionViewCell_itemLayoutContext;
  v25 = sub_75C840();
  (*(*(v25 - 8) + 56))(&v4[v24], 1, 1, v25);
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider30ArcadeFooterCollectionViewCell_riverView] = 0;
  v26 = OBJC_IVAR____TtC18ASMessagesProvider30ArcadeFooterCollectionViewCell_footnoteTapGestureRecognizer;
  *&v4[v26] = [objc_allocWithZone(UITapGestureRecognizer) init];
  v96 = OBJC_IVAR____TtC18ASMessagesProvider30ArcadeFooterCollectionViewCell_wordmarkView;
  v27 = sub_75A030();
  v28 = enum case for Wordmark.arcade(_:);
  v29 = sub_765770();
  v30 = *(v29 - 8);
  (*(v30 + 104))(v23, v28, v29);
  (*(v30 + 56))(v23, 0, 1, v29);
  if (qword_93D070 != -1)
  {
    swift_once();
  }

  sub_134D8(qword_954850, &v112);
  (*(v18 + 104))(v20, enum case for WordmarkView.Alignment.leading(_:), v17);
  v31 = *(&v113 + 1);
  v32 = v114;
  v33 = sub_10974(&v112, *(&v113 + 1));
  v34 = __chkstk_darwin(v33);
  v36 = &v95 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v37 + 16))(v36, v34);
  v38 = sub_418748(v23, v36, v20, v27, v31, v32);
  sub_BEB8(&v112);
  *&v4[v96] = v38;
  v39 = OBJC_IVAR____TtC18ASMessagesProvider30ArcadeFooterCollectionViewCell_buttonView;
  if (qword_93D080 != -1)
  {
    swift_once();
  }

  v40 = v97;
  v41 = sub_BE38(v97, qword_99D940);
  v42 = v98;
  (*(v15 + 16))(v98, v41, v40);
  if (qword_93D088 != -1)
  {
    swift_once();
  }

  v43 = v101;
  v44 = sub_BE38(v101, qword_99D958);
  v45 = objc_allocWithZone(type metadata accessor for CappedSizeRoundedTitledButton());
  v46 = v99;
  (*(v100 + 16))(v99, v44, v43);
  v47 = UIContentSizeCategoryExtraExtraExtraLarge;
  v48 = sub_418818(v42, v46, UIContentSizeCategoryExtraExtraExtraLarge, v45);

  *&v4[v39] = v48;
  v49 = OBJC_IVAR____TtC18ASMessagesProvider30ArcadeFooterCollectionViewCell_footnoteView;
  type metadata accessor for FootnoteView();
  *&v4[v49] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v50 = &v4[OBJC_IVAR____TtC18ASMessagesProvider30ArcadeFooterCollectionViewCell_footnoteActionBlock];
  *v50 = 0;
  *(v50 + 1) = 0;
  v51 = &v4[OBJC_IVAR____TtC18ASMessagesProvider30ArcadeFooterCollectionViewCell_buttonActionBlock];
  *v51 = 0;
  *(v51 + 1) = 0;
  v52 = OBJC_IVAR____TtC18ASMessagesProvider30ArcadeFooterCollectionViewCell_metrics;
  v53 = sub_75D250();
  (*(*(v53 - 8) + 56))(&v4[v52], 1, 1, v53);
  v54 = type metadata accessor for ArcadeFooterCollectionViewCell();
  v111.receiver = v4;
  v111.super_class = v54;
  v55 = objc_msgSendSuper2(&v111, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v59 = v55;
  [v59 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v60 = v59;
  v61 = [v60 contentView];
  [v61 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];

  if (qword_93D078 != -1)
  {
    swift_once();
  }

  v62 = sub_BD88(&qword_944E50);
  sub_BE38(v62, qword_99D928);
  *&v109 = v60;
  sub_7592B0();

  v63 = v112;
  sub_75C0B0();
  sub_75C0C0();
  sub_75C060();
  sub_75C0A0();
  v64 = v106;
  sub_75C0E0();
  type metadata accessor for ArcadeFooterRiverViewDataSource();
  v65 = swift_allocObject();
  *(v65 + 16) = 2;
  *(v65 + 48) = 0;
  *(v65 + 56) = 0;
  *(v65 + 40) = _swiftEmptyArrayStorage;
  *(v65 + 24) = v63;
  (*(v107 + 16))(v102, v64, v108);
  v66 = objc_allocWithZone(sub_BD88(&qword_954A10));
  v67 = sub_765950();
  v68 = *&v60[OBJC_IVAR____TtC18ASMessagesProvider30ArcadeFooterCollectionViewCell_riverView];
  *&v60[OBJC_IVAR____TtC18ASMessagesProvider30ArcadeFooterCollectionViewCell_riverView] = v67;
  v69 = v67;

  v112 = 0u;
  v113 = 0u;
  v109 = 0u;
  v110 = 0u;
  v70 = v103;
  sub_768C10();
  sub_10A2C(&v109, &unk_93FBD0);
  sub_10A2C(&v112, &unk_93FBD0);
  v102 = v69;
  sub_769E70();
  v71 = *(v104 + 8);
  v72 = v105;
  v71(v70, v105);
  v73 = [v60 contentView];
  [v73 addSubview:v69];

  v74 = [v60 contentView];
  [v74 addSubview:*&v60[OBJC_IVAR____TtC18ASMessagesProvider30ArcadeFooterCollectionViewCell_wordmarkView]];

  v75 = OBJC_IVAR____TtC18ASMessagesProvider30ArcadeFooterCollectionViewCell_buttonView;
  v76 = *&v60[OBJC_IVAR____TtC18ASMessagesProvider30ArcadeFooterCollectionViewCell_buttonView];
  sub_BE70(0, &qword_93E540);
  v77 = v76;
  v78 = sub_76A040();
  [v77 setTintColor:v78];

  v79 = *&v60[v75];
  v80 = sub_76A040();
  [v79 setTitleColor:v80 forState:0];

  v81 = *&v60[v75];
  v82 = sub_76A090();
  [v81 _setBackgroundColor:v82];

  v83 = *&v60[v75];
  v112 = 0u;
  v113 = 0u;
  v109 = 0u;
  v110 = 0u;
  v84 = v83;
  sub_768C10();
  sub_10A2C(&v109, &unk_93FBD0);
  sub_10A2C(&v112, &unk_93FBD0);
  sub_769E70();

  v71(v70, v72);
  v85 = v60;
  v86 = [v85 contentView];
  [v86 addSubview:*&v60[v75]];

  v87 = OBJC_IVAR____TtC18ASMessagesProvider30ArcadeFooterCollectionViewCell_footnoteTapGestureRecognizer;
  v88 = *&v85[OBJC_IVAR____TtC18ASMessagesProvider30ArcadeFooterCollectionViewCell_footnoteTapGestureRecognizer];
  [v88 addTarget:v85 action:"didTapFootnoteWithGestureRecognizer:"];

  v89 = OBJC_IVAR____TtC18ASMessagesProvider30ArcadeFooterCollectionViewCell_footnoteView;
  [*&v85[OBJC_IVAR____TtC18ASMessagesProvider30ArcadeFooterCollectionViewCell_footnoteView] addGestureRecognizer:*&v85[v87]];
  v90 = *&v85[v89];
  v112 = 0u;
  v113 = 0u;
  v109 = 0u;
  v110 = 0u;
  v91 = v90;
  sub_768C10();
  sub_10A2C(&v109, &unk_93FBD0);
  sub_10A2C(&v112, &unk_93FBD0);
  sub_769E70();

  v71(v70, v72);
  v92 = [v85 contentView];

  v93 = *&v85[v89];
  [v92 addSubview:v93];

  (*(v107 + 8))(v106, v108);
  return v85;
}

uint64_t sub_417324()
{
  v1 = sub_7664F0();
  v34 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_BD88(&qword_949ED8);
  __chkstk_darwin(v4 - 8);
  v6 = &v30 - v5;
  v7 = sub_75D250();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v30 - v12;
  v14 = type metadata accessor for ArcadeFooterCollectionViewCell();
  v48.receiver = v0;
  v48.super_class = v14;
  v35 = v14;
  objc_msgSendSuper2(&v48, "layoutSubviews");
  v15 = OBJC_IVAR____TtC18ASMessagesProvider30ArcadeFooterCollectionViewCell_metrics;
  swift_beginAccess();
  sub_4193C4(&v0[v15], v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_10A2C(v6, &qword_949ED8);
  }

  (*(v8 + 32))(v13, v6, v7);
  v17 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider30ArcadeFooterCollectionViewCell_riverView];
  if (v17)
  {
    v18 = v17;
    v33 = v18;
    sub_75D1F0();
    [v0 layoutMargins];
    sub_75D1F0();
    [v0 layoutMargins];
    sub_75D200();
    (*(v8 + 16))(v10, v13, v7);
    v46 = sub_BD88(&qword_954A10);
    v47 = &protocol witness table for UIView;
    v45 = v18;
    v19 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider30ArcadeFooterCollectionViewCell_wordmarkView];
    v43 = sub_75A030();
    v44 = &protocol witness table for UIView;
    v42 = v19;
    v31 = v3;
    v20 = v34;
    v21 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider30ArcadeFooterCollectionViewCell_buttonView];
    v40 = type metadata accessor for CappedSizeRoundedTitledButton();
    v41 = &protocol witness table for UIView;
    v39 = v21;
    v32 = v1;
    v22 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider30ArcadeFooterCollectionViewCell_footnoteView];
    v23 = type metadata accessor for FootnoteView();
    v38 = &protocol witness table for UIView;
    v37 = v23;
    v36 = v22;
    sub_75D270();
    swift_allocObject();
    v33 = v33;
    v24 = v19;
    v25 = v21;
    v26 = v22;
    sub_75D260();
    v27 = [v0 contentView];
    sub_BE70(0, &qword_93E550);
    sub_75D650();

    v28 = v31;
    sub_75D1D0();
    (*(v20 + 8))(v28, v32);
    [v25 frame];
    Width = CGRectGetWidth(v49);
    sub_75D650();
    if (Width == CGRectGetWidth(v50))
    {
      [v25 setTitleEdgeInsets:{0.0, 32.0, 0.0, 32.0}];
    }

    else
    {
      [v25 setTitleEdgeInsets:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
    }
  }

  return (*(v8 + 8))(v13, v7);
}

void sub_41790C()
{
  v1 = v0;
  v2 = sub_75C100();
  __chkstk_darwin(v2 - 8);
  if (qword_93D078 != -1)
  {
    swift_once();
  }

  v3 = sub_BD88(&qword_944E50);
  sub_BE38(v3, qword_99D928);
  swift_unknownObjectRetain();
  sub_7592B0();
  swift_unknownObjectRelease();
  v4 = OBJC_IVAR____TtC18ASMessagesProvider30ArcadeFooterCollectionViewCell_riverView;
  v5 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider30ArcadeFooterCollectionViewCell_riverView];
  if (!v5 || ((v6 = v5, v7 = sub_765960(), v6, swift_beginAccess(), v8 = *(v7 + 24), v9 = *(v7 + 32), , v26 == v8) ? (v10 = v27 == v9) : (v10 = 0), !v10))
  {
    type metadata accessor for ArcadeFooterRiverViewDataSource();
    v11 = swift_allocObject();
    *(v11 + 16) = 2;
    *(v11 + 48) = 0;
    *(v11 + 56) = 0;
    *(v11 + 40) = _swiftEmptyArrayStorage;
    *(v11 + 24) = v26;
    *(v11 + 32) = v27;
    sub_75C0B0();
    sub_75C0C0();
    sub_75C060();
    sub_75C0A0();
    sub_75C0E0();
    v12 = objc_allocWithZone(sub_BD88(&qword_954A10));
    v13 = sub_765950();
    v14 = *&v1[v4];
    if (v14)
    {
      v15 = v14;
      v16 = v13;
      v17 = sub_76A1C0();

      v18 = *&v1[v4];
      if ((v17 & 1) == 0 && v18)
      {
        [*&v1[v4] removeFromSuperview];
        v18 = *&v1[v4];
      }
    }

    else
    {
      v18 = 0;
    }

    *&v1[v4] = v13;
    v19 = v13;

    v20 = *&v1[v4];
    if (v20)
    {
      if (v14)
      {
        v21 = v14;
        v22 = v20;
        v23 = sub_76A1C0();

        if (v23)
        {

          v20 = v22;
LABEL_22:

          return;
        }
      }

      else
      {
        v24 = v20;
      }

      v25 = [v1 contentView];
      [v25 addSubview:v20];

      if (v14)
      {
        sub_765980();
      }

      sub_765990();

      goto LABEL_22;
    }

    v20 = v14;
    goto LABEL_22;
  }
}

uint64_t sub_417CA8(uint64_t a1, uint64_t a2)
{
  sub_BE70(0, &qword_963060);
  sub_5A800();
  isa = sub_769630().super.isa;
  v14.receiver = v2;
  v14.super_class = type metadata accessor for ArcadeFooterCollectionViewCell();
  objc_msgSendSuper2(&v14, "touchesBegan:withEvent:", isa, a2);

  result = sub_74E4B8(a1);
  if (result)
  {
    v7 = result;
    [result locationInView:v2];
    v9 = v8;
    v11 = v10;

    v12 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider30ArcadeFooterCollectionViewCell_footnoteView];
    [v12 frame];
    v15.x = v9;
    v15.y = v11;
    result = CGRectContainsPoint(v16, v15);
    if (result)
    {
      v12[OBJC_IVAR____TtC18ASMessagesProvider12FootnoteView_isHighlighted] = 1;
      if (v12[OBJC_IVAR____TtC18ASMessagesProvider12FootnoteView_textLightensOnHighlight] == 1)
      {
        if (qword_93C428 != -1)
        {
          swift_once();
        }

        v13 = &qword_946638;
      }

      else
      {
        if (qword_93C420 != -1)
        {
          swift_once();
        }

        v13 = &qword_946630;
      }

      return [*&v12[OBJC_IVAR____TtC18ASMessagesProvider12FootnoteView_textLabel] setTextColor:*v13];
    }
  }

  return result;
}

id sub_418048()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ArcadeFooterCollectionViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ArcadeFooterCollectionViewCell()
{
  result = qword_9548A8;
  if (!qword_9548A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_4181AC()
{
  sub_4182D4(319, &qword_940840, &type metadata accessor for ItemLayoutContext);
  if (v0 <= 0x3F)
  {
    sub_4182D4(319, &qword_9548C0, &type metadata accessor for ArcadeFooterLayout.Metrics);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_4182D4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_76A480();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_418328(uint64_t result)
{
  v2 = *(v1 + 40);
  if (v2 >> 62)
  {
    v5 = result;
    v6 = sub_76A860();
    result = v5;
    if (v6 > v5)
    {
      goto LABEL_3;
    }

    return 0;
  }

  if (*(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8)) <= result)
  {
    return 0;
  }

LABEL_3:
  v3 = *(v1 + 40);
  if ((v3 & 0xC000000000000001) != 0)
  {

    sub_76A770();

    goto LABEL_7;
  }

  if (result < 0)
  {
    __break(1u);
  }

  else if (*(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8)) > result)
  {

LABEL_7:
    v4 = sub_75F480();

    return v4;
  }

  __break(1u);
  return result;
}

uint64_t sub_418404()
{

  return swift_deallocClassInstance();
}

uint64_t sub_4184A4(double a1, double a2)
{
  result = swift_beginAccess();
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t sub_418538@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for RiverRowLayoutStyle.icons(_:);
  v3 = sub_75E5B0();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_4185AC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_418328(a1);
  *a2 = result;
  return result;
}

uint64_t sub_4185D4()
{
  sub_759210();
  v0 = sub_759020();
  sub_BE70(0, &qword_93E540);
  sub_76A090();
  sub_759070();
  return v0;
}

uint64_t sub_41863C()
{
  result = sub_759190();
  if (*(v0 + 56))
  {
    sub_759210();
    sub_418700(&qword_945810, &type metadata accessor for ArtworkView);

    sub_75A0C0();
  }

  return result;
}

uint64_t sub_418700(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_418748(uint64_t a1, uint64_t a2, uint64_t a3, objc_class *a4, uint64_t a5, uint64_t a6)
{
  v12[3] = a5;
  v12[4] = a6;
  v9 = sub_B1B4(v12);
  (*(*(a5 - 8) + 32))(v9, a2, a5);
  v10 = objc_allocWithZone(a4);
  return sub_75A000();
}

id sub_418818(uint64_t a1, uint64_t a2, void *a3, char *a4)
{
  ObjectType = swift_getObjectType();
  v9 = sub_BD88(&unk_93E530);
  __chkstk_darwin(v9 - 8);
  v11 = &v24 - v10;
  v12 = sub_761250();
  v26[3] = v12;
  v26[4] = sub_418700(&qword_95F820, &type metadata accessor for CappedSizeStaticDimension);
  v13 = sub_B1B4(v26);
  (*(*(v12 - 8) + 32))(v13, a2, v12);
  v14 = &a4[qword_9435F8];
  *v14 = 0;
  *(v14 + 1) = 0;
  sub_134D8(v26, &a4[qword_9435F0]);
  v25.receiver = a4;
  v25.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v25, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v16 = a3;
  v17 = v15;
  sub_13D584(a3);
  v18 = sub_7666D0();
  v19 = *(v18 - 8);
  (*(v19 + 16))(v11, a1, v18);
  (*(v19 + 56))(v11, 0, 1, v18);
  v20 = v17;
  sub_75C540();

  [v20 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  sub_BE70(0, &qword_93E540);
  v21 = sub_76A080();
  [v20 _setBackgroundColor:v21];

  [v20 addTarget:v20 action:"didTapButton:" forControlEvents:64];
  v22 = sub_76A040();
  [v20 setTintColor:v22];

  [v20 _setWantsAccessibilityUnderline:0];
  (*(v19 + 8))(a1, v18);
  sub_BEB8(v26);
  return v20;
}

void sub_418B14()
{
  v1 = sub_761250();
  v47 = *(v1 - 8);
  v48 = v1;
  __chkstk_darwin(v1);
  v46 = &v42 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_7666D0();
  v3 = *(v44 - 8);
  __chkstk_darwin(v44);
  v45 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_75A010();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_BD88(&qword_95F810);
  __chkstk_darwin(v9 - 8);
  v11 = &v42 - v10;
  v12 = OBJC_IVAR____TtC18ASMessagesProvider30ArcadeFooterCollectionViewCell_itemLayoutContext;
  v13 = sub_75C840();
  (*(*(v13 - 8) + 56))(v0 + v12, 1, 1, v13);
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider30ArcadeFooterCollectionViewCell_riverView) = 0;
  v14 = OBJC_IVAR____TtC18ASMessagesProvider30ArcadeFooterCollectionViewCell_footnoteTapGestureRecognizer;
  *(v0 + v14) = [objc_allocWithZone(UITapGestureRecognizer) init];
  v43 = OBJC_IVAR____TtC18ASMessagesProvider30ArcadeFooterCollectionViewCell_wordmarkView;
  v15 = sub_75A030();
  v16 = enum case for Wordmark.arcade(_:);
  v17 = sub_765770();
  v18 = *(v17 - 8);
  (*(v18 + 104))(v11, v16, v17);
  (*(v18 + 56))(v11, 0, 1, v17);
  if (qword_93D070 != -1)
  {
    swift_once();
  }

  sub_134D8(qword_954850, v49);
  (*(v6 + 104))(v8, enum case for WordmarkView.Alignment.leading(_:), v5);
  v19 = v50;
  v20 = v51;
  v21 = sub_10974(v49, v50);
  v22 = __chkstk_darwin(v21);
  v24 = &v42 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v25 + 16))(v24, v22);
  v26 = sub_418748(v11, v24, v8, v15, v19, v20);
  sub_BEB8(v49);
  *(v0 + v43) = v26;
  v27 = OBJC_IVAR____TtC18ASMessagesProvider30ArcadeFooterCollectionViewCell_buttonView;
  if (qword_93D080 != -1)
  {
    swift_once();
  }

  v28 = v44;
  v29 = sub_BE38(v44, qword_99D940);
  v30 = v45;
  (*(v3 + 16))(v45, v29, v28);
  if (qword_93D088 != -1)
  {
    swift_once();
  }

  v31 = v48;
  v32 = sub_BE38(v48, qword_99D958);
  v33 = objc_allocWithZone(type metadata accessor for CappedSizeRoundedTitledButton());
  v34 = v46;
  (*(v47 + 16))(v46, v32, v31);
  v35 = UIContentSizeCategoryExtraExtraExtraLarge;
  v36 = sub_418818(v30, v34, UIContentSizeCategoryExtraExtraExtraLarge, v33);

  *(v0 + v27) = v36;
  v37 = OBJC_IVAR____TtC18ASMessagesProvider30ArcadeFooterCollectionViewCell_footnoteView;
  type metadata accessor for FootnoteView();
  *(v0 + v37) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v38 = (v0 + OBJC_IVAR____TtC18ASMessagesProvider30ArcadeFooterCollectionViewCell_footnoteActionBlock);
  *v38 = 0;
  v38[1] = 0;
  v39 = (v0 + OBJC_IVAR____TtC18ASMessagesProvider30ArcadeFooterCollectionViewCell_buttonActionBlock);
  *v39 = 0;
  v39[1] = 0;
  v40 = OBJC_IVAR____TtC18ASMessagesProvider30ArcadeFooterCollectionViewCell_metrics;
  v41 = sub_75D250();
  (*(*(v41 - 8) + 56))(v0 + v40, 1, 1, v41);
  sub_76A840();
  __break(1u);
}

id sub_419134()
{
  v1 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider30ArcadeFooterCollectionViewCell_footnoteView);
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider12FootnoteView_isHighlighted) = 0;
  if (qword_93C420 != -1)
  {
    swift_once();
  }

  result = [*(v1 + OBJC_IVAR____TtC18ASMessagesProvider12FootnoteView_textLabel) setTextColor:qword_946630];
  v3 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider30ArcadeFooterCollectionViewCell_footnoteActionBlock);
  if (v3)
  {

    v3(v4);

    return sub_F704(v3);
  }

  return result;
}

uint64_t sub_41920C(uint64_t a1, void *a2)
{
  v4 = sub_7652D0();
  __chkstk_darwin(v4 - 8);
  swift_beginAccess();
  [a2 contentMode];
  sub_765330();
  sub_7652E0();
  sub_7591B0();
  [a2 setContentMode:sub_765140()];
  sub_75DEF0();
  sub_7591F0();
  if (!sub_7651A0())
  {
    sub_BE70(0, &qword_93E540);
    sub_76A030();
  }

  sub_759070();
  if (*(v2 + 56))
  {
    sub_759210();
    sub_418700(&qword_945810, &type metadata accessor for ArtworkView);

    sub_75A050();
  }
}

uint64_t sub_4193C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&qword_949ED8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_419434(void *a1)
{
  sub_41ABAC();
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

void (*sub_4194E4(uint64_t *a1))(uint64_t a1, char a2)
{
  v2 = OBJC_IVAR____TtC18ASMessagesProvider34ProductMediaItemCollectionViewCell_videoView;
  a1[1] = v1;
  a1[2] = v2;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return sub_419538;
}

void sub_419538(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  if (a2)
  {
    v3 = *a1;
    sub_41ABAC();
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
    sub_41ABAC();
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

char *sub_419660(double a1, double a2, double a3, double a4)
{
  v9 = sub_768C60();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC18ASMessagesProvider34ProductMediaItemCollectionViewCell_itemLayoutContext;
  v14 = sub_75C840();
  (*(*(v14 - 8) + 56))(&v4[v13], 1, 1, v14);
  v4[OBJC_IVAR____TtC18ASMessagesProvider34ProductMediaItemCollectionViewCell_shouldForcePortrait] = 0;
  v15 = &v4[OBJC_IVAR____TtC18ASMessagesProvider34ProductMediaItemCollectionViewCell_artworkDisplaySize];
  *v15 = 0;
  *(v15 + 1) = 0;
  v15[16] = 1;
  sub_75DB70();
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider34ProductMediaItemCollectionViewCell_borderedScreenshotView] = [objc_allocWithZone(type metadata accessor for BorderedScreenshotView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v16 = type metadata accessor for ProductMediaItemCollectionViewCell();
  v30.receiver = v4;
  v30.super_class = v16;
  v17 = objc_msgSendSuper2(&v30, "initWithFrame:", a1, a2, a3, a4);
  v18 = OBJC_IVAR____TtC18ASMessagesProvider34ProductMediaItemCollectionViewCell_borderedScreenshotView;
  v19 = *&v17[OBJC_IVAR____TtC18ASMessagesProvider34ProductMediaItemCollectionViewCell_borderedScreenshotView];
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v23 = v17;
  [v19 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v24 = *(*&v17[v18] + OBJC_IVAR____TtC18ASMessagesProvider22BorderedScreenshotView_artworkView);
  memset(v29, 0, sizeof(v29));
  memset(v28, 0, sizeof(v28));
  v25 = v24;
  sub_768C10();
  sub_10A2C(v28, &unk_93FBD0);
  sub_10A2C(v29, &unk_93FBD0);
  sub_769E70();

  (*(v10 + 8))(v12, v9);
  v26 = [v23 contentView];
  [v26 addSubview:*&v17[v18]];

  return v23;
}

id sub_419A64()
{
  v1 = v0;
  v14.receiver = v0;
  v14.super_class = type metadata accessor for ProductMediaItemCollectionViewCell();
  objc_msgSendSuper2(&v14, "prepareForReuse");
  v2 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider34ProductMediaItemCollectionViewCell_borderedScreenshotView];
  v3 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider22BorderedScreenshotView_artworkView);
  v15.value.super.isa = 0;
  v15.is_nil = 0;
  sub_7591D0(v15, v4);

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = *(Strong + qword_940590);

    v8 = [v7 layer];
    [v8 removeAllAnimations];

    [v7 setImage:0];
  }

  sub_41ABAC();
  swift_unknownObjectWeakAssign();
  v9 = swift_unknownObjectWeakLoadStrong();
  if (v9)
  {
    v10 = v9;
    v11 = [v1 contentView];
    [v11 addSubview:v10];

    [v1 setNeedsLayout];
  }

  *(v2 + OBJC_IVAR____TtC18ASMessagesProvider22BorderedScreenshotView_platform) = 0;

  sub_4FD578();
  v12 = &v1[OBJC_IVAR____TtC18ASMessagesProvider34ProductMediaItemCollectionViewCell_artworkDisplaySize];
  *v12 = 0;
  *(v12 + 1) = 0;
  v12[16] = 1;
  return [v1 setNeedsLayout];
}

void sub_419C58()
{
  v1 = v0;
  v2 = sub_766690();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ProductMediaItemCollectionViewCell();
  v47.receiver = v1;
  v47.super_class = v6;
  objc_msgSendSuper2(&v47, "layoutSubviews");
  if (v1[OBJC_IVAR____TtC18ASMessagesProvider34ProductMediaItemCollectionViewCell_artworkDisplaySize + 16])
  {
    v7 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider34ProductMediaItemCollectionViewCell_borderedScreenshotView];
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
    sub_7666A0();
    v17 = [v1 contentView];
    [v17 bounds];
    v19 = v18;
    v21 = v20;
    v23 = v22;

    sub_766660();
    v24 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider34ProductMediaItemCollectionViewCell_borderedScreenshotView];
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