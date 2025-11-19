uint64_t sub_223290(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&unk_93F980);
  __chkstk_darwin(v4 - 8);
  v6 = &v10 - v5;
  v7 = sub_BD88(&unk_93F630);
  sub_768860();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_10A2C(v6, &unk_93F980);
  }

  sub_32A6C0(a2, 1, a1, v6);

  return (*(v8 + 8))(v6, v7);
}

double sub_2234B4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_762760();
  __chkstk_darwin(v6 - 8);
  v36 = v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_762780();
  v38 = *(v8 - 8);
  v39 = v8;
  __chkstk_darwin(v8);
  v37 = v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_762D10();
  v46 = *(v10 - 8);
  v47 = v10;
  __chkstk_darwin(v10);
  v12 = v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_75FBE0();
  v13 = sub_BE70(0, &qword_93F900);
  if (qword_93DB70 != -1)
  {
    swift_once();
  }

  v45 = sub_7666D0();
  sub_BE38(v45, qword_99FA48);
  v14 = [a4 traitCollection];
  sub_769E10();

  v15 = sub_7653B0();
  v64[3] = v15;
  v44 = sub_223CF0(&qword_93F9B0, &type metadata accessor for Feature);
  v64[4] = v44;
  v16 = sub_B1B4(v64);
  v17 = *(v15 - 8);
  v18 = *(v17 + 104);
  v43 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v41 = v17 + 104;
  v42 = v18;
  v18(v16);
  sub_765C30();
  sub_BEB8(v64);
  sub_762D00();
  sub_762CE0();
  v40 = v13;
  v19 = *(v46 + 8);
  v19(v12, v47);
  sub_75FBF0();
  v46 = a1;
  if (qword_93DB78 != -1)
  {
    swift_once();
  }

  sub_BE38(v45, qword_99FA60);
  v20 = [a4 traitCollection];
  sub_769E10();

  v63[3] = v15;
  v63[4] = v44;
  v21 = sub_B1B4(v63);
  v42(v21, v43, v15);
  sub_765C30();
  sub_BEB8(v63);
  sub_762D00();
  sub_762CE0();
  v19(v12, v47);
  sub_75FC10();
  if (qword_93DB80 != -1)
  {
    swift_once();
  }

  sub_BE38(v45, qword_99FA78);
  v22 = [a4 traitCollection];
  sub_769E10();

  v62[3] = v15;
  v62[4] = v44;
  v23 = sub_B1B4(v62);
  v42(v23, v43, v15);
  sub_765C30();
  sub_BEB8(v62);
  sub_762D00();
  sub_762CE0();
  v19(v12, v47);
  v24 = sub_7670D0();
  swift_allocObject();
  v25 = sub_7670A0();
  v26 = swift_allocObject();
  v26[2] = v46;
  v26[3] = a4;
  v26[4] = v35[1];
  swift_allocObject();

  swift_unknownObjectRetain();
  v27 = sub_767090();
  sub_48E270(a4, v36);
  v61 = 0;
  *&v59[40] = 0u;
  v60 = 0u;
  sub_134D8(v64, v59);
  sub_134D8(v63, &v58);
  sub_134D8(v62, &v57);
  v55 = v24;
  v56 = &protocol witness table for LayoutViewPlaceholder;
  v54 = v25;

  v28 = [a4 traitCollection];
  sub_767500();

  swift_allocObject();
  v29 = sub_7670B0();
  v52 = v24;
  v53 = &protocol witness table for LayoutViewPlaceholder;
  v50 = &protocol witness table for LayoutViewPlaceholder;
  v51 = v29;
  v49 = v24;
  v48 = v27;

  v30 = v37;
  sub_762770();
  sub_223CF0(&unk_94F080, &type metadata accessor for GameCenterReengagementLayout);
  v31 = v39;
  sub_7665A0();
  v33 = v32;

  (*(v38 + 8))(v30, v31);
  sub_BEB8(v62);
  sub_BEB8(v63);
  sub_BEB8(v64);
  return v33;
}

uint64_t sub_223C88(void (*a1)(void), uint64_t a2)
{

  a1(*(v2 + 24));

  return _swift_deallocObject(v2, a2, 7);
}

uint64_t sub_223CF0(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_223D38()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider16StandardLinkView_descriptionLabel];
  sub_75A240();
  if (v3)
  {
    v4 = sub_769210();
  }

  else
  {
    v4 = 0;
  }

  [v2 setText:v4];

  v5 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider16StandardLinkView_summaryLabel];
  sub_75A230();
  if (v6)
  {
    v7 = sub_769210();
  }

  else
  {
    v7 = 0;
  }

  [v5 setText:v7];

  return [v1 setNeedsLayout];
}

unint64_t sub_223E1C(uint64_t a1, uint64_t a2, char *a3)
{
  v4 = v3;
  v174 = a3;
  v156 = a2;
  v170 = a1;
  ObjectType = swift_getObjectType();
  v159 = sub_760D90();
  v158 = *(v159 - 8);
  __chkstk_darwin(v159);
  v157 = &v156 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_BD88(&unk_93F620);
  __chkstk_darwin(v6 - 8);
  v160 = &v156 - v7;
  v164 = sub_BD88(&qword_94AC58);
  __chkstk_darwin(v164);
  v173 = &v156 - v8;
  v9 = sub_BD88(&unk_95F4E0);
  __chkstk_darwin(v9 - 8);
  v161 = &v156 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v166 = &v156 - v12;
  __chkstk_darwin(v13);
  v171 = &v156 - v14;
  v15 = sub_75B490();
  v16 = *(v15 - 8);
  v167 = v15;
  v168 = v16;
  __chkstk_darwin(v15);
  v162 = &v156 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v163 = &v156 - v19;
  v20 = sub_BD88(&unk_94AC40);
  __chkstk_darwin(v20 - 8);
  v175 = &v156 - v21;
  v22 = sub_BD88(&unk_9457D0);
  __chkstk_darwin(v22 - 8);
  v172 = &v156 - v23;
  v24 = sub_BD88(&unk_9457E0);
  __chkstk_darwin(v24 - 8);
  v26 = &v156 - v25;
  v27 = sub_BD88(&unk_94A780);
  __chkstk_darwin(v27 - 8);
  v29 = &v156 - v28;
  v30 = sub_BD88(&unk_944E00);
  __chkstk_darwin(v30 - 8);
  v32 = &v156 - v31;
  v33 = sub_763750();
  v34 = *(v33 - 8);
  __chkstk_darwin(v33);
  v36 = &v156 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_BD88(&unk_948730);
  *&v38 = __chkstk_darwin(v37 - 8).n128_u64[0];
  v40 = &v156 - v39;
  v41 = [v3 traitCollection];
  LODWORD(v169) = sub_769A00();

  v42 = *(v34 + 104);
  v42(v36, enum case for OfferButtonPresenterViewAlignment.right(_:), v33);
  v42(v32, enum case for OfferButtonPresenterViewAlignment.left(_:), v33);
  (*(v34 + 56))(v32, 0, 1, v33);
  sub_225E00(&unk_944E10, &type metadata accessor for OfferButtonPresenterViewAlignment);
  v43 = v170;
  v44 = v4;
  sub_760940();
  v45 = sub_BD88(&unk_948740);
  (*(*(v45 - 8) + 56))(v40, 0, 1, v45);
  v46 = sub_758C70();
  (*(*(v46 - 8) + 56))(v29, 1, 1, v46);
  v47 = sub_75BD30();
  (*(*(v47 - 8) + 56))(v26, 1, 1, v47);
  v48 = sub_765870();
  v49 = v172;
  (*(*(v48 - 8) + 56))(v172, 1, 1, v48);
  v50 = sub_BD88(&unk_9457F0);
  v51 = v175;
  (*(*(v50 - 8) + 56))(v175, 1, 1, v50);
  sub_4A18A4(v43, v4, v40, v174, 0, (v169 & 1) == 0, v29, v26, v49, v51);
  sub_10A2C(v51, &unk_94AC40);
  sub_10A2C(v49, &unk_9457D0);
  sub_10A2C(v26, &unk_9457E0);
  sub_10A2C(v29, &unk_94A780);
  sub_10A2C(v40, &unk_948730);
  sub_75BD00();
  v52 = swift_dynamicCastClass();
  if (v52)
  {
  }

  v53 = OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_headingLabel;
  v54 = *&v4[OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_headingLabel];
  v55 = v173;
  v56 = v171;
  if (v54 && ([v54 isHidden] & 1) == 0 && (v57 = *&v4[v53]) != 0)
  {
    LODWORD(v172) = [v57 hasContent];
  }

  else
  {
    LODWORD(v172) = 0;
  }

  v58 = OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_tertiaryTitleLabel;
  v59 = *&v4[OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_tertiaryTitleLabel];
  if (v59 && ([v59 isHidden] & 1) == 0 && (v60 = *&v4[v58]) != 0)
  {
    LODWORD(v175) = [v60 hasContent];
  }

  else
  {
    LODWORD(v175) = 0;
  }

  if (sub_764E90() && (v61 = sub_75E5C0(), , v61))
  {
  }

  else
  {
    v62 = sub_7653B0();
    v177 = v62;
    v178 = sub_225E00(&qword_93F9B0, &type metadata accessor for Feature);
    v63 = sub_B1B4(v176);
    (*(*(v62 - 8) + 104))(v63, enum case for Feature.search_tags(_:), v62);
    LOBYTE(v62) = sub_765C30();
    sub_BEB8(v176);
    if ((v62 & 1) == 0)
    {
      goto LABEL_23;
    }
  }

  if (v172)
  {
    [*&v4[OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_subtitleLabel] setHidden:1];
    v64 = *&v4[v58];
    if (v64)
    {
      [v64 setHidden:1];
    }
  }

  else if (v175)
  {
    v65 = *&v4[OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_subtitleLabel];
    LODWORD(v175) = 1;
    [v65 setHidden:1];
    goto LABEL_23;
  }

  LODWORD(v175) = 0;
LABEL_23:
  v4[OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_useAdsLocale] = sub_764DC0() & 1;
  if (v52)
  {

    v4[OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_includesMetadataInformationInLockup] = sub_75BC40() & 1;
    v4[OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_shouldEvenlyDistribute] = sub_75BCD0() & 1;
    v66 = sub_7653B0();
    v177 = v66;
    v178 = sub_225E00(&qword_93F9B0, &type metadata accessor for Feature);
    v67 = sub_B1B4(v176);
    (*(*(v66 - 8) + 104))(v67, enum case for Feature.search_tags(_:), v66);
    LOBYTE(v66) = sub_765C30();
    sub_BEB8(v176);
    if (v66 & 1) != 0 && (sub_75BC40())
    {
      if (sub_764EC0())
      {
        v68 = v163;
        sub_75FE40();
        v69 = v167;
        v70 = v168;
        v71 = v162;
        (*(v168 + 104))(v162, enum case for OfferLabelStyle.none(_:), v167);
        sub_225E00(&unk_9535D0, &type metadata accessor for OfferLabelStyle);
        v72 = sub_7691C0();
        v73 = *(v70 + 8);
        v73(v71, v69);
        v73(v68, v69);
        if ((v72 & 1) == 0)
        {
          v137 = OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_includeRatings;
          v44[OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_includeRatings] = 0;
          [*&v44[OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_userRatingView] setAlpha:0.0];
          v138 = 1.0;
          if (!v44[v137])
          {
            v138 = 0.0;
          }

          [*&v44[OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_ratingCountLabel] setAlpha:{v138, v156}];
          v139 = v44[OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_includeEditorsChoice];
          v44[OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_includeEditorsChoice] = 0;
          sub_13026C(v139);

          goto LABEL_98;
        }
      }

      v74 = sub_764F10();
      if (v74)
      {
        v75 = v74;
        sub_764DA0();
        if (v76)
        {
          v77 = OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_includeRatings;
          v44[OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_includeRatings] = 1;
          v78 = OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_userRatingView;
          [*&v44[OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_userRatingView] setAlpha:1.0];
          v79 = OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_ratingCountLabel;
          v80 = 0.0;
          if (v44[v77])
          {
            v80 = 1.0;
          }

          [*&v44[OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_ratingCountLabel] setAlpha:{v80, v156}];
          v81 = *&v44[v78];
          [v75 floatValue];
          sub_43B74C(v82);

          v83 = *&v44[v79];
          v84 = sub_769210();

          [v83 setText:v84];

          v85 = sub_764E10();
          v86 = v44[OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_includeEditorsChoice];
          v44[OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_includeEditorsChoice] = v85 & 1;
          sub_13026C(v86);

          goto LABEL_98;
        }
      }

      v145 = OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_includeRatings;
      v44[OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_includeRatings] = 0;
      [*&v44[OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_userRatingView] setAlpha:{0.0, v156}];
      v146 = 1.0;
      if (!v44[v145])
      {
        v146 = 0.0;
      }

      [*&v44[OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_ratingCountLabel] setAlpha:v146];
      v147 = sub_764E10();
      v148 = v44[OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_includeEditorsChoice];
      v44[OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_includeEditorsChoice] = v147 & 1;
      sub_13026C(v148);
      goto LABEL_98;
    }

    v169 = v52;
    v87 = v4[OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_includeEditorsChoice];
    v4[OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_includeEditorsChoice] = 0;
    sub_13026C(v87);
    v88 = OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_includeRatings;
    v4[OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_includeRatings] = 0;
    [*&v4[OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_userRatingView] setAlpha:0.0];
    v89 = 1.0;
    if (!v4[v88])
    {
      v89 = 0.0;
    }

    [*&v4[OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_ratingCountLabel] setAlpha:{v89, v156}];
    if (sub_764EC0())
    {
      sub_75FE40();

      v90 = 0;
    }

    else
    {
      v90 = 1;
    }

    v98 = v166;
    v99 = v167;
    v100 = v168;
    v101 = *(v168 + 56);
    v101(v56, v90, 1, v167);
    (*(v100 + 104))(v98, enum case for OfferLabelStyle.arcadeComingSoon(_:), v99);
    v101(v98, 0, 1, v99);
    v102 = *(v164 + 48);
    sub_1ED18(v56, v55, &unk_95F4E0);
    sub_1ED18(v98, v55 + v102, &unk_95F4E0);
    v103 = *(v100 + 48);
    if (v103(v55, 1, v99) == 1)
    {
      sub_10A2C(v98, &unk_95F4E0);
      v55 = v173;
      sub_10A2C(v56, &unk_95F4E0);
      if (v103(v55 + v102, 1, v99) == 1)
      {
        sub_10A2C(v55, &unk_95F4E0);
LABEL_98:
        v149 = sub_75BCB0();
        if (v149)
        {
          v150 = v149;
          if (sub_101F5C(v149, 0))
          {
            v151 = sub_75BCD0();
            sub_DFF8(v150, v151 & 1, v174);
          }
        }

        goto LABEL_108;
      }
    }

    else
    {
      v104 = v161;
      sub_1ED18(v55, v161, &unk_95F4E0);
      if (v103(v55 + v102, 1, v99) != 1)
      {
        v106 = v56;
        v107 = v55;
        v108 = v168;
        v109 = v107 + v102;
        v110 = v163;
        (*(v168 + 32))(v163, v109, v99);
        sub_225E00(&unk_9535D0, &type metadata accessor for OfferLabelStyle);
        LODWORD(v170) = sub_7691C0();
        v111 = *(v108 + 8);
        v111(v110, v99);
        sub_10A2C(v166, &unk_95F4E0);
        sub_10A2C(v106, &unk_95F4E0);
        v111(v104, v99);
        sub_10A2C(v107, &unk_95F4E0);
        if (v170)
        {
          goto LABEL_98;
        }

LABEL_59:
        if (v172)
        {
          [*&v44[OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_subtitleLabel] setHidden:0];
          v105 = *&v44[v58];
          if (v105)
          {
            [v105 setHidden:0];
          }
        }

        else if (v175)
        {
          [*&v44[OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_subtitleLabel] setHidden:0];
        }

        goto LABEL_98;
      }

      sub_10A2C(v166, &unk_95F4E0);
      sub_10A2C(v56, &unk_95F4E0);
      (*(v168 + 8))(v104, v99);
    }

    sub_10A2C(v55, &qword_94AC58);
    goto LABEL_59;
  }

  if (!swift_dynamicCastClass())
  {
LABEL_68:
    if (sub_764EC0())
    {
      v112 = v163;
      sub_75FE40();
      v113 = v167;
      v114 = v168;
      v115 = v162;
      (*(v168 + 104))(v162, enum case for OfferLabelStyle.none(_:), v167);
      sub_225E00(&unk_9535D0, &type metadata accessor for OfferLabelStyle);
      v116 = sub_7691C0();
      v117 = *(v114 + 8);
      v117(v115, v113);
      v117(v112, v113);
      if ((v116 & 1) == 0)
      {
        v122 = OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_includeRatings;
        v44[OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_includeRatings] = 0;
        [*&v44[OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_userRatingView] setAlpha:0.0];
        v123 = 1.0;
        if (!v44[v122])
        {
          v123 = 0.0;
        }

        [*&v44[OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_ratingCountLabel] setAlpha:{v123, v156}];
        v124 = v44[OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_includeEditorsChoice];
        v44[OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_includeEditorsChoice] = 0;
        sub_13026C(v124);

        goto LABEL_108;
      }
    }

    if ((v172 | v175))
    {
      if (!sub_764E90())
      {
        goto LABEL_104;
      }

      v118 = sub_75E5C0();

      if (!v118)
      {
        goto LABEL_104;
      }
    }

    if (sub_764E10())
    {
      v119 = OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_includeRatings;
      v44[OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_includeRatings] = 0;
      [*&v44[OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_userRatingView] setAlpha:0.0];
      v120 = 1.0;
      if (!v44[v119])
      {
        v120 = 0.0;
      }

      [*&v44[OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_ratingCountLabel] setAlpha:{v120, v156}];
      v121 = v44[OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_includeEditorsChoice];
      v44[OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_includeEditorsChoice] = 1;
LABEL_107:
      sub_13026C(v121);
LABEL_108:
      [v44 setNeedsLayout];
    }

    v125 = sub_764F10();
    if (v125)
    {
      v126 = v125;
      sub_764DA0();
      if (v127)
      {
        v128 = v44[OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_includeEditorsChoice];
        v44[OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_includeEditorsChoice] = 0;
        sub_13026C(v128);
        v129 = OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_includeRatings;
        v44[OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_includeRatings] = 1;
        v130 = OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_userRatingView;
        [*&v44[OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_userRatingView] setAlpha:1.0];
        v131 = OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_ratingCountLabel;
        v132 = 0.0;
        if (v44[v129])
        {
          v132 = 1.0;
        }

        [*&v44[OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_ratingCountLabel] setAlpha:{v132, v156}];
        v133 = *&v44[v130];
        [v126 floatValue];
        sub_43B74C(v134);

        v135 = *&v44[v131];
        v136 = sub_769210();

        [v135 setText:v136];

        goto LABEL_108;
      }
    }

LABEL_104:
    v152 = OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_includeRatings;
    v44[OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_includeRatings] = 0;
    [*&v44[OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_userRatingView] setAlpha:{0.0, v156}];
    v153 = 1.0;
    if (!v44[v152])
    {
      v153 = 0.0;
    }

    [*&v44[OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_ratingCountLabel] setAlpha:v153];
    v121 = v44[OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_includeEditorsChoice];
    v44[OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_includeEditorsChoice] = 0;
    goto LABEL_107;
  }

  v91 = sub_75BC90();
  if (!v91)
  {

    goto LABEL_68;
  }

  v92 = v91;
  if ((sub_101F5C(0, v91) & 1) == 0)
  {

    goto LABEL_68;
  }

  if (sub_75BC70() >> 62)
  {
    sub_76A860();
  }

  result = sub_75BCF0();
  v94 = v160;
  if (!(result >> 62))
  {
    if (*(&dword_10 + (result & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_45;
    }

LABEL_50:

    sub_1ED18(v156, v94, &unk_93F620);
    v96 = sub_75C840();
    v97 = *(v96 - 8);
    if ((*(v97 + 48))(v94, 1, v96) == 1)
    {
      sub_10A2C(v94, &unk_93F620);
    }

    else
    {
      sub_75D360();
      sub_225E00(&qword_94AC60, &type metadata accessor for BundleSearchResult);
      sub_75C770();
      (*(v97 + 8))(v94, v96);
    }

    v140 = v159;
    v141 = v157;
    _s18ASMessagesProvider18MetadataRibbonViewC7metrics11AppStoreKit0cdE6LayoutV7MetricsVvpfi_0();
    sub_1B9620(v92, v141, v174);

    (*(v158 + 8))(v141, v140);
    v142 = v44[OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_includeEditorsChoice];
    v44[OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_includeEditorsChoice] = 0;
    sub_13026C(v142);
    v143 = OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_includeRatings;
    v44[OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_includeRatings] = 0;
    [*&v44[OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_userRatingView] setAlpha:0.0];
    v144 = 1.0;
    if (!v44[v143])
    {
      v144 = 0.0;
    }

    [*&v44[OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_ratingCountLabel] setAlpha:{v144, v156}];

    goto LABEL_108;
  }

  v154 = result;
  v155 = sub_76A860();
  result = v154;
  if (!v155)
  {
    goto LABEL_50;
  }

LABEL_45:
  if ((result & 0xC000000000000001) != 0)
  {
    sub_76A770();
LABEL_48:

    v95 = sub_765750();

    if (v95 >> 62)
    {
      sub_76A860();
    }

    goto LABEL_50;
  }

  if (*(&dword_10 + (result & 0xFFFFFFFFFFFFFF8)))
  {

    goto LABEL_48;
  }

  __break(1u);
  return result;
}

void sub_2257B4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    v6 = objc_allocWithZone(type metadata accessor for SearchAdTransparencyButton());

    sub_1303C8([v6 init]);
    v7 = OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_searchAdTransparencyButton;
    v8 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_searchAdTransparencyButton];
    if (v8)
    {
      v9 = v8;
      sub_765730();
      sub_764C60();
      v11 = v10;

      if (v11)
      {
        v12 = sub_769210();
      }

      else
      {
        v12 = 0;
      }

      [v9 setTitle:v12 forState:0];

      v15 = *&v3[v7];
      if (v15)
      {
        v16 = swift_allocObject();
        *(v16 + 16) = a2;
        *(v16 + 24) = a1;
        v17 = &v15[qword_95CDB8];
        v18 = *&v15[qword_95CDB8];
        *v17 = sub_225DF8;
        v17[1] = v16;

        v19 = v15;

        sub_F704(v18);
      }
    }

    v20 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_editorsChoiceView];
    if (v20)
    {
      sub_BE70(0, &qword_93E540);
      v21 = v20;
      v22 = sub_769FF0();
      [v21 setTintColor:v22];
    }

    v23 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_subtitleLabel];
    sub_BE70(0, &qword_93E540);
    v24 = sub_769FF0();
    [v23 setTextColor:v24];

    v25 = sub_7653B0();
    v38[3] = v25;
    v38[4] = sub_225E00(&qword_93F9B0, &type metadata accessor for Feature);
    v26 = sub_B1B4(v38);
    (*(*(v25 - 8) + 104))(v26, enum case for Feature.search_tags(_:), v25);
    LOBYTE(v24) = sub_765C30();
    sub_BEB8(v38);
    v27 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_ratingCountLabel];
    if (v24)
    {
      v28 = sub_769FF0();
    }

    else
    {
      v28 = sub_769FE0();
    }

    v29 = v28;
    [v27 setTextColor:v28];

    sub_765720();
    v31 = v30;
    v32 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_descriptionLabel];
    v33 = [v32 superview];
    if (!v33 || (v34 = v33, sub_BE70(0, &qword_93E550), v35 = v3, v36 = sub_76A1C0(), v34, v35, (v36 & 1) == 0))
    {
      [v3 addSubview:v32];
    }

    [v32 setHidden:v31 == 0];
    if (v31)
    {
      v37 = sub_769210();
    }

    else
    {
      v37 = 0;
    }

    [v32 setText:v37];

    [v3 setNeedsLayout];
    v3[OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_isDisplayingSearchAd] = 1;
    sub_130470();
    [v3 setNeedsLayout];
  }

  else
  {
    v2[OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_isDisplayingSearchAd] = 0;
    sub_130470();
    v13 = OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_searchAdTransparencyButton;
    v14 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_searchAdTransparencyButton];
    if (v14)
    {
      [v14 removeFromSuperview];
      v14 = *&v3[v13];
    }

    *&v3[v13] = 0;
  }
}

uint64_t sub_225C40(uint64_t a1)
{
  v2 = sub_BD88(&unk_93F980);
  __chkstk_darwin(v2 - 8);
  v4 = &v9 - v3;
  v5 = sub_BD88(&unk_93F630);
  sub_768860();
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    return sub_10A2C(v4, &unk_93F980);
  }

  v8 = sub_765730();
  sub_32A6C0(v8, 1, a1, v4);

  return (*(v6 + 8))(v4, v5);
}

uint64_t sub_225DB8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_225E00(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_225E48@<X0>(uint64_t *a1@<X8>)
{
  result = sub_764AF0();
  *a1 = result;
  return result;
}

uint64_t sub_225E74@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_75D3C0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_BD88(&unk_94F1F0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17 - v8;
  swift_getKeyPath();
  sub_75C7B0();

  swift_getKeyPath();
  sub_768750();

  (*(v7 + 8))(v9, v6);
  if (v19[0] && (v10 = sub_759880(), , (v10 & 1) != 0))
  {
    v11 = sub_75D400();
    return (*(*(v11 - 8) + 56))(a1, 1, 1, v11);
  }

  else
  {
    swift_getKeyPath();
    sub_75C7B0();

    v13 = v19[0];
    sub_769A00();

    sub_BD88(&unk_952540);
    sub_75C760();
    if (v18)
    {
      sub_10914(&v17, v19);
      sub_B170(v19, v19[3]);
      if (sub_762A20())
      {
        v14 = 1;
      }

      else
      {
        (*(v3 + 104))(v5, enum case for ComponentSeparator.Position.bottom(_:), v2);
        sub_75D3D0();
        v14 = 0;
      }

      v16 = sub_75D400();
      (*(*(v16 - 8) + 56))(a1, v14, 1, v16);
      return sub_BEB8(v19);
    }

    else
    {
      sub_1AA11C(&v17);
      (*(v3 + 104))(v5, enum case for ComponentSeparator.Position.bottom(_:), v2);
      sub_75D3D0();
      v15 = sub_75D400();
      return (*(*(v15 - 8) + 56))(a1, 0, 1, v15);
    }
  }
}

uint64_t sub_226250@<X0>(uint64_t *a1@<X8>)
{
  result = sub_764AF0();
  *a1 = result;
  return result;
}

double sub_2262CC()
{
  v54 = sub_75ABC0();
  v53 = *(v54 - 8);
  __chkstk_darwin(v54);
  v55 = &v41 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_75ABE0();
  v59 = *(v60 - 8);
  __chkstk_darwin(v60);
  v58 = &v41 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_762D10();
  v47 = *(v48 - 8);
  __chkstk_darwin(v48);
  v46 = &v41 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_BD88(&qword_943FD0);
  v56 = *(v57 - 8);
  __chkstk_darwin(v57);
  v42 = &v41 - v3;
  v49 = sub_7656C0();
  v45 = *(v49 - 8);
  __chkstk_darwin(v49);
  v43 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_75FA00();
  v51 = *(v52 - 8);
  __chkstk_darwin(v52);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_BD88(&qword_946810);
  v61 = *(v62 - 8);
  __chkstk_darwin(v62);
  v44 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v41 - v9;
  v11 = sub_BD88(&unk_94F1F0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v41 - v13;
  v15 = sub_BD88(&unk_959540);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v41 - v17;
  sub_75C7E0();
  sub_768760();
  (*(v16 + 8))(v18, v15);
  swift_getKeyPath();
  sub_75C7B0();

  swift_getKeyPath();
  sub_768750();

  v19 = v42;
  (*(v12 + 8))(v14, v11);

  sub_75C800();
  v50 = v6;
  sub_75C740();
  swift_getKeyPath();
  v20 = v43;
  sub_75C7B0();

  sub_765630();
  (*(v45 + 8))(v20, v49);
  v21 = sub_527DE4();
  sub_134D8(v69, v68);
  sub_BD88(&unk_944DA0);
  sub_7654E0();
  swift_dynamicCast();
  v22 = *(v61 + 16);
  v49 = v10;
  v22(v44, v10, v62);
  sub_768FA0();
  v23 = v19;
  sub_769060();
  sub_7654D0();
  v24 = sub_7654C0();
  sub_26F08();
  if (qword_93D600 != -1)
  {
    swift_once();
  }

  v25 = sub_7666D0();
  sub_BE38(v25, qword_99E9F8);
  v26 = [v21 traitCollection];
  v27 = sub_769E10();

  v28 = sub_7653B0();
  v68[3] = v28;
  v68[4] = sub_226E44(&qword_93F9B0, &type metadata accessor for Feature);
  v29 = sub_B1B4(v68);
  (*(*(v28 - 8) + 104))(v29, enum case for Feature.measurement_with_labelplaceholder(_:), v28);
  v30 = v27;
  sub_765C30();
  sub_BEB8(v68);
  v31 = v46;
  sub_762D00();
  sub_762CE0();
  (*(v47 + 8))(v31, v48);
  if ((v24 & 2) != 0)
  {
    if (qword_93C430 != -1)
    {
      swift_once();
    }

    [qword_99B290 size];
    v32 = sub_7670D0();
    swift_allocObject();
    v33 = sub_7670B0();
    *(&v66 + 1) = v32;
    v67 = &protocol witness table for LayoutViewPlaceholder;
    *&v65 = v33;
  }

  else
  {
    v67 = 0;
    v66 = 0u;
    v65 = 0u;
  }

  if (qword_93C418 != -1)
  {
    swift_once();
  }

  v34 = v54;
  v35 = sub_BE38(v54, qword_99B278);
  (*(v53 + 16))(v55, v35, v34);
  sub_134D8(v68, v64);
  sub_6D310(&v65, v63);
  v36 = v58;
  sub_75ABD0();
  [v21 pageMarginInsets];
  sub_769DA0();
  sub_226E44(&qword_951400, &type metadata accessor for FootnoteLayout);
  v37 = v60;
  sub_7665A0();
  sub_769DC0();
  v39 = v38;

  swift_unknownObjectRelease();
  (*(v59 + 8))(v36, v37);
  sub_BEB8(v68);
  (*(v56 + 8))(v23, v57);
  (*(v51 + 8))(v50, v52);
  (*(v61 + 8))(v49, v62);
  sub_BEB8(v69);
  sub_70550(&v65);

  return v39;
}

uint64_t sub_226E44(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_226E8C()
{
  sub_BD88(&qword_94AD38);
  sub_16194(&qword_94AD40, &qword_94AD38);
  sub_7639F0();
  sub_BD88(&unk_959660);
  sub_BD88(&qword_94AD48);
  if (swift_dynamicCast())
  {
    sub_B170(&v2, *(&v3 + 1));
    sub_75B500();
    sub_BEB8(&v2);
  }

  else
  {
    v4 = 0;
    v2 = 0u;
    v3 = 0u;
    sub_10A2C(&v2, &unk_959670);
  }

  type metadata accessor for TodayCardGridTracker();
  result = sub_768860();
  if (v1)
  {
    swift_beginAccess();
    *(v1 + 16) = &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_227014(uint64_t a1)
{
  v2 = sub_BD88(&unk_9595E0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16[-1] - v4;
  v6 = sub_BD88(&qword_9495B8);
  __chkstk_darwin(v6 - 8);
  v8 = &v16[-1] - v7;
  sub_1ED18(a1, &v16[-1] - v7, &qword_9495B8);
  v9 = sub_BD88(&unk_959560);
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_10A2C(v8, &qword_9495B8);
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v16[1] = 0;
    v16[2] = 0;
  }

  else
  {
    sub_75B030();
    (*(v10 + 8))(v8, v9);
    v11 = sub_764440();
    (*(v3 + 8))(v5, v2);
    v12 = sub_BD88(&unk_959650);
    v13 = sub_16194(&qword_94AD30, &unk_959650);
  }

  v16[0] = v11;
  v17 = v12;
  v18 = v13;
  result = sub_75E9E0();
  if (v17)
  {
    return sub_BEB8(v16);
  }

  return result;
}

void sub_2272A4()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v13 = v1;
    v2 = [v13 layer];
    [v2 setShadowOffset:{0.0, 8.0}];

    v3 = [v13 layer];
    v4 = [objc_opt_self() blackColor];
    v5 = [v4 colorWithAlphaComponent:0.3];

    v6 = [v5 CGColor];
    [v3 setShadowColor:v6];

    v7 = [v13 layer];
    [v7 setShadowRadius:10.0];

    v8 = [v13 layer];
    LODWORD(v9) = 1.0;
    [v8 setShadowOpacity:v9];

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v11 = Strong;
      v12 = [Strong view];

      [v12 addSubview:v13];
    }
  }
}

void sub_227490()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    v13 = v1;
    v2 = [v13 layer];
    [v2 setShadowOffset:{0.0, 8.0}];

    v3 = [v13 layer];
    v4 = [objc_opt_self() blackColor];
    v5 = [v4 colorWithAlphaComponent:0.3];

    v6 = [v5 CGColor];
    [v3 setShadowColor:v6];

    v7 = [v13 layer];
    [v7 setShadowRadius:10.0];

    v8 = [v13 layer];
    LODWORD(v9) = 1.0;
    [v8 setShadowOpacity:v9];

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v11 = Strong;
      v12 = [Strong view];

      [v12 addSubview:v13];
    }
  }
}

void sub_22767C()
{
  v1 = sub_BD88(&qword_9495B8);
  __chkstk_darwin(v1 - 8);
  v3 = &v32 - v2;
  v4 = sub_BD88(&qword_94AD20);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v32 - v6;
  v8 = sub_7676A0();
  __chkstk_darwin(v8);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v34 = Strong;
  v33 = [Strong view];
  if (v33)
  {
    v10 = [v34 collectionView];
    if (v10)
    {
      v11 = v10;
      if (*(v0 + 48) && (*(v0 + 72) & 1) == 0)
      {
        if ((*(v0 + 72) & 0x100) != 0)
        {
          v16 = *(v0 + 64) + -1.0;
        }

        else
        {
          v16 = *(v0 + 56);
        }

        [v10 frame];
        v13 = v19;
        v15 = v20;
        [v33 bounds];
        Width = CGRectGetWidth(v39);
        if (v16 >= Width)
        {
          v16 = Width;
        }

        [v33 bounds];
        MinX = CGRectGetMidX(v40) + v16 * -0.5;
      }

      else
      {
        [v10 frame];
        v13 = v12;
        v15 = v14;
        [v33 bounds];
        v16 = CGRectGetWidth(v37);
        [v33 bounds];
        MinX = CGRectGetMinX(v38);
      }

      [v11 setFrame:{MinX, v13, v16, v15}];

      v22 = *(v0 + 24);
      if (v22)
      {
        [v22 updateConfiguration];
      }

      if (*(v0 + 48) && (v23 = *(v0 + 74), v23 != 2) && (v23 & 1) != 0)
      {
        v24 = v11;
        sub_769EE0();
        sub_767650();
        sub_769EF0();

        sub_7689F0();
        sub_7689C0();
        if (qword_93D188 != -1)
        {
          swift_once();
        }

        v25 = sub_BE38(v4, qword_99DCE8);
        (*(v5 + 16))(v7, v25, v4);
        v26 = ASKDeviceTypePhone;
        v35[0] = ASKDeviceTypePhone;
        type metadata accessor for DeviceType(0);
        v27 = v26;
        sub_7686E0();
      }

      else
      {
        sub_767890();
        v28 = v11;
        sub_769EE0();
        sub_767690();
        sub_769EF0();

        sub_7689F0();
        sub_7689C0();
        if (qword_93D188 != -1)
        {
          swift_once();
        }

        v29 = sub_BE38(v4, qword_99DCE8);
        v35[3] = v4;
        v35[4] = sub_16194(&qword_94AD28, &qword_94AD20);
        v30 = sub_B1B4(v35);
        (*(v5 + 16))(v30, v29, v4);
        sub_7689D0();

        sub_BEB8(v35);
      }

      sub_226E8C();
      v31 = sub_BD88(&unk_959560);
      (*(*(v31 - 8) + 56))(v3, 1, 1, v31);
      sub_227014(v3);
      sub_10A2C(v3, &qword_9495B8);
      [v11 reloadData];

      return;
    }

    v18 = v33;
  }

  else
  {
    v18 = v34;
  }
}

uint64_t sub_227C2C(uint64_t a1)
{
  v3 = *(v1 + 40);
  v2 = *(v1 + 48);
  v4 = *(a1 + 16);
  *(v1 + 40) = *a1;
  *(v1 + 56) = v4;
  *(v1 + 71) = *(a1 + 31);
  if (!*(a1 + 8) || (v6 = *(v1 + 40), v5 = *(v1 + 48), , !v5))
  {
    if (!v2)
    {
      goto LABEL_12;
    }

LABEL_11:
    sub_22767C();
    goto LABEL_12;
  }

  if (!v2)
  {

    goto LABEL_11;
  }

  if (v6 == v3 && v2 == v5)
  {

    goto LABEL_12;
  }

  v7 = sub_76A950();

  if ((v7 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_12:
}

void sub_227D00()
{
  v1 = sub_76A270();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v63 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_76A3F0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v63 - v10;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    v14 = [Strong view];

    if (v14)
    {
      if ((sub_4ACFD8() & 1) != 0 && !*(v0 + 24))
      {
        v72 = v2;
        v24 = [v14 window];
        v69 = v6;
        v70 = v5;
        v71 = v8;
        if (v24 && (v25 = v24, v26 = [v24 windowScene], v25, v26))
        {
          v27 = [v26 screen];

          [v27 bounds];
          v29 = v28;
          v31 = v30;
        }

        else
        {
          [v14 bounds];
          v29 = v32;
          v31 = v33;
        }

        v34 = 0;
        v35 = _swiftEmptyArrayStorage;
        v36 = 19;
        if (v29 <= v31)
        {
          v29 = v31;
        }

        v73 = v0;
        aBlock[0] = _swiftEmptyArrayStorage;
        v37 = v72;
        v68 = v14;
LABEL_15:
        if (v34 > 0x13)
        {
          v36 = v34;
        }

        v38 = v36 + 1;
        v39 = (&off_87EB80 + 5 * v34);
        while (v34 != 19)
        {
          if (v38 == ++v34)
          {
            __break(1u);
            return;
          }

          v40 = (v39 + 5);
          v41 = *(v39 + 6);
          v42 = *(v39 + 64);
          v43 = v41;
          if (v42)
          {
            v43 = v29;
          }

          v39 += 5;
          if (v43 <= v29)
          {
            v44 = *(v40 + 26);
            v65 = *(v40 + 25);
            v66 = v44;
            v64 = v40[2];
            v46 = *(v40 - 1);
            v45 = *v40;
            v67 = sub_BE70(0, &qword_955FA0);
            v47 = swift_allocObject();
            swift_weakInit();
            v48 = swift_allocObject();
            *(v48 + 16) = v47;
            *(v48 + 24) = v46;
            *(v48 + 32) = v45;
            *(v48 + 40) = v41;
            *(v48 + 48) = v64;
            *(v48 + 56) = v42;
            v49 = v66;
            *(v48 + 57) = v65;
            *(v48 + 58) = v49;
            swift_bridgeObjectRetain_n();
            sub_76A1F0();
            sub_769440();
            if (*(&dword_10 + (aBlock[0] & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (aBlock[0] & 0xFFFFFFFFFFFFFF8)) >> 1)
            {
              sub_7694C0();
            }

            sub_769500();
            v35 = aBlock[0];
            v37 = v72;
            v36 = 19;
            goto LABEL_15;
          }
        }

        sub_BE70(0, &qword_944338);
        v76._object = 0x80000000007D5F20;
        v76._countAndFlagsBits = 0xD000000000000011;
        v77.value._countAndFlagsBits = 0;
        v77.value._object = 0;
        v75.value.super.isa = 0;
        v75.is_nil = 0;
        v50.value = &stru_20;
        isa = sub_769E30(v76, v77, v75, v50, 0xFFFFFFFFFFFFFFFFLL, v35, v62).super.super.isa;
        v67 = isa;
        sub_76A3E0();
        sub_76A3C0();
        v52 = sub_769210();
        v53 = [objc_opt_self() systemImageNamed:v52];

        sub_76A390();
        sub_76A290();
        sub_76A2D0();
        (*(v37 + 104))(v4, enum case for UIButton.Configuration.CornerStyle.large(_:), v1);
        sub_76A280();
        v54 = objc_opt_self();
        v55 = [v54 systemBlueColor];
        sub_76A310();
        v56 = [v54 whiteColor];
        sub_76A320();
        v57 = swift_allocObject();
        swift_weakInit();
        sub_BE70(0, &qword_960F00);
        v6 = v69;
        v5 = v70;
        (*(v69 + 16))(v71, v11, v70);
        v58 = sub_76A400();
        [v58 setMenu:isa];
        [v58 setShowsMenuAsPrimaryAction:1];
        aBlock[4] = sub_2290E8;
        aBlock[5] = v57;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_123860;
        aBlock[3] = &unk_889B58;
        v59 = _Block_copy(aBlock);

        v2 = v72;

        [v58 setConfigurationUpdateHandler:v59];
        _Block_release(v59);
        v60 = *(v73 + 24);
        *(v73 + 24) = v58;
        v61 = v58;

        v8 = v71;
        sub_2272A4();
        v0 = v73;

        v14 = v68;

        (*(v6 + 8))(v11, v5);
        if (sub_4ACFFC())
        {
          goto LABEL_6;
        }
      }

      else if (sub_4ACFFC())
      {
LABEL_6:
        if (!*(v0 + 32))
        {
          sub_76A3E0();
          v73 = v0;
          sub_76A3C0();
          v15 = sub_769210();
          v16 = [objc_opt_self() systemImageNamed:v15];

          sub_76A390();
          sub_76A290();
          sub_76A2D0();
          (*(v2 + 104))(v4, enum case for UIButton.Configuration.CornerStyle.large(_:), v1);
          sub_76A280();
          v17 = objc_opt_self();
          v18 = [v17 systemRedColor];
          sub_76A310();
          v19 = [v17 whiteColor];
          sub_76A320();
          sub_BE70(0, &qword_960F00);
          (*(v6 + 16))(v8, v11, v5);
          sub_BE70(0, &qword_955FA0);
          sub_76A1F0();
          v20 = sub_76A400();
          v21 = *(v73 + 32);
          *(v73 + 32) = v20;
          v22 = v6;
          v23 = v20;

          sub_227490();
          (*(v22 + 8))(v11, v5);
          return;
        }
      }
    }
  }
}

uint64_t sub_228620(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;
  v3 = a3[1];
  v5 = a3[2];
  v6 = a3[3];
  v7 = *(a3 + 32);
  v8 = *(a3 + 33);
  v9 = *(a3 + 34);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (v8)
    {
      v11 = 256;
    }

    else
    {
      v11 = 0;
    }

    v12[0] = v4;
    v12[1] = v3;
    v12[2] = v5;
    v12[3] = v6;
    v14 = v9;
    v13 = v11 | v7;

    sub_227C2C(v12);
  }

  return result;
}

uint64_t sub_2286D0()
{
  v0 = sub_BD88(&unk_954ED0);
  __chkstk_darwin(v0 - 8);
  v2 = &v9 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v5 = &v9 - v4;
  sub_76A410();
  v6 = sub_76A3F0();
  if ((*(*(v6 - 8) + 48))(v5, 1, v6))
  {
    sub_1ED18(v5, v2, &unk_954ED0);
    sub_76A420();
    return sub_10A2C(v5, &unk_954ED0);
  }

  else
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      if (*(Strong + 48))
      {
      }
    }

    sub_76A3C0();
    return sub_76A420();
  }
}

void sub_228888()
{
  v0 = [objc_opt_self() sharedURLCache];
  [v0 removeAllCachedResponses];

  v1 = CFNotificationCenterGetDarwinNotifyCenter();
  v2 = sub_769210();
  CFNotificationCenterPostNotification(v1, v2, 0, 0, 1u);

  v3 = [objc_opt_self() sharedCoordinator];
  [v3 notify];
}

void sub_228974()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v68 = [Strong view];

    if (v68)
    {
      v3 = swift_unknownObjectWeakLoadStrong();
      if (v3)
      {
        v4 = v3;
        v5 = [v3 traitCollection];

        if (v5)
        {
          v6 = *(v0 + 24);
          v7 = &selRef_setSpeed_;
          v8 = &selRef_absoluteDimension_;
          if (v6)
          {
            v9 = v6;
            [v68 bounds];
            [v9 sizeThatFits:{v10, v11}];
            v13 = v12;
            v15 = v14;
            [v68 bounds];
            v16 = CGRectGetMaxX(v70) - v13;
            if (qword_93DD08 != -1)
            {
              swift_once();
            }

            v17 = sub_766CA0();
            sub_BE38(v17, qword_99FE60);
            sub_7671D0();
            sub_BD88(&unk_93F5C0);
            v18 = swift_allocObject();
            v67 = xmmword_77D9F0;
            *(v18 + 16) = xmmword_77D9F0;
            *(v18 + 32) = v5;
            v19 = v5;
            v20 = sub_7671E0();
            sub_7666E0();
            v22 = v21;

            v23 = v16 - v22;
            [v68 bounds];
            MaxY = CGRectGetMaxY(v71);
            [v68 safeAreaInsets];
            v26 = MaxY - v25 - v15;
            v27 = swift_allocObject();
            *(v27 + 16) = xmmword_77D9F0;
            *(v27 + 32) = v19;
            v28 = v19;
            v29 = sub_7671E0();
            sub_7666E0();
            v31 = v30;

            v7 = &selRef_setSpeed_;
            [v9 setFrame:{v23, v26 - v31, v13, v15}];

            v8 = &selRef_absoluteDimension_;
            [v68 bringSubviewToFront:v9];
          }

          v32 = *(v0 + 32);
          if (v32)
          {
            v33 = v32;
            [v68 bounds];
            [v33 sizeThatFits:{v34, v35}];
            v37 = v36;
            v39 = v38;
            v40 = *(v0 + 24);
            if (v40)
            {
              v41 = v40;
              [v41 frame];
              v42 = CGRectGetMinX(v72) - v37;
              if (qword_93DCF8 != -1)
              {
                swift_once();
              }

              v43 = sub_766CA0();
              sub_BE38(v43, qword_99FE30);
              sub_7671D0();
              sub_BD88(&unk_93F5C0);
              v44 = swift_allocObject();
              *(v44 + 16) = xmmword_77D9F0;
              *(v44 + 32) = v5;
              v45 = v5;
              v46 = sub_7671E0();
              sub_7666E0();
              v48 = v47;
            }

            else
            {
              [v68 bounds];
              v42 = CGRectGetMaxX(v73) - v37;
              if (qword_93DD08 != -1)
              {
                swift_once();
              }

              v49 = sub_766CA0();
              sub_BE38(v49, qword_99FE60);
              sub_7671D0();
              sub_BD88(&unk_93F5C0);
              v50 = swift_allocObject();
              *(v50 + 16) = xmmword_77D9F0;
              *(v50 + 32) = v5;
              v51 = v5;
              v52 = sub_7671E0();
              sub_7666E0();
              v48 = v53;
            }

            v54 = v42 - v48;
            v55 = *(v0 + 24);
            if (v55)
            {
              v56 = v55;
              [v56 frame];
              MinY = CGRectGetMinY(v74);
            }

            else
            {
              [v68 bounds];
              v58 = CGRectGetMaxY(v75);
              [v68 safeAreaInsets];
              v60 = v58 - v59 - v39;
              if (qword_93DD08 != -1)
              {
                swift_once();
              }

              v61 = sub_766CA0();
              sub_BE38(v61, qword_99FE60);
              sub_7671D0();
              sub_BD88(&unk_93F5C0);
              v62 = swift_allocObject();
              *(v62 + 16) = xmmword_77D9F0;
              *(v62 + 32) = v5;
              v63 = v5;
              v64 = sub_7671E0();
              sub_7666E0();
              v66 = v65;

              MinY = v60 - v66;
            }

            [v33 v7[478]];

            [v68 v8[305]];
          }
        }
      }
    }
  }
}

uint64_t sub_228FAC()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocClassInstance();
}

uint64_t sub_229020()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_229058()
{

  return _swift_deallocObject(v0, 59, 7);
}

uint64_t sub_229098(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 32);
  v4 = *(v1 + 56);
  v5 = *(v1 + 57);
  v6 = *(v1 + 58);
  v8[0] = *(v1 + 24);
  v8[1] = v3;
  v9 = *(v1 + 40);
  v10 = v4;
  v11 = v5;
  v12 = v6;
  return sub_228620(a1, v2, v8);
}

uint64_t sub_2290F0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

double sub_22910C()
{
  v0 = sub_75DAB0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_75C720();
  v4 = sub_229234();
  (*(v1 + 8))(v3, v0);
  return v4;
}

double sub_229234()
{
  v0 = sub_764A60();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v18 - v5;
  v7 = sub_7656C0();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_75DA20();
  sub_765630();
  (*(v8 + 8))(v10, v7);
  sub_75DA70();
  sub_764A20();
  sub_229558(&qword_9467F0, &type metadata accessor for Shelf.PresentationHints);
  v11 = sub_76A520();
  v12 = *(v1 + 8);
  v12(v3, v0);
  v12(v6, v0);
  if (v11)
  {
    if (qword_93CD68 != -1)
    {
      swift_once();
    }

    v13 = qword_99D350;
  }

  else
  {
    if (qword_93CD70 != -1)
    {
      swift_once();
    }

    v13 = qword_99D368;
  }

  v14 = sub_759270();
  sub_BE38(v14, v13);
  sub_75DA40();
  sub_759290();
  sub_229558(&qword_94AD50, &type metadata accessor for BrickLayout);
  sub_766ED0();
  v16 = v15;
  swift_unknownObjectRelease();
  return v16;
}

uint64_t sub_229558(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2295A4(uint64_t a1, uint64_t a2)
{
  type metadata accessor for UberedPageScrollObserver();
  v5 = swift_allocObject();
  v6 = sub_67958(v2, v5, a1, a2);
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = v7;
  v9 = *(v6 + 72);
  *(v6 + 72) = sub_22A6B0;
  *(v6 + 80) = v8;

  sub_F704(v9);

  return v6;
}

uint64_t sub_22967C(uint64_t a1, uint64_t a2)
{
  v4 = (*(a2 + 16))();
  (*(a2 + 8))(a1, a2);
  sub_22A78C();
  sub_75FA40();
}

void sub_22970C(uint64_t a1, uint64_t a2)
{
  if (sub_229E60())
  {
    v5 = *(a2 + 8);
    *(v5(a1, a2) + 88) = 1;

    v6 = [v2 transitionCoordinator];
    if (v6)
    {
      v7 = v6;
      v8 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v9 = swift_allocObject();
      v9[2] = a1;
      v9[3] = a2;
      v9[4] = v8;
      v20 = sub_22A760;
      v21 = v9;
      aBlock = _NSConcreteStackBlock;
      v17 = 1107296256;
      v18 = sub_6C6800;
      v19 = &unk_889D10;
      v10 = _Block_copy(&aBlock);

      v11 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v12 = swift_allocObject();
      v12[2] = a1;
      v12[3] = a2;
      v12[4] = v11;
      v20 = sub_22A780;
      v21 = v12;
      aBlock = _NSConcreteStackBlock;
      v17 = 1107296256;
      v18 = sub_6C6800;
      v19 = &unk_889D60;
      v13 = _Block_copy(&aBlock);

      [v7 animateAlongsideTransition:v10 completion:v13];
      _Block_release(v13);
      _Block_release(v10);
      swift_unknownObjectRelease();
    }

    else
    {
      v5(a1, a2);
      v14 = [v2 collectionView];
      if (v14)
      {
        v15 = v14;
        sub_66394(v14);
      }

      else
      {
        __break(1u);
      }
    }
  }
}

void sub_2299A0(uint64_t a1, uint64_t a2)
{
  v5 = [v2 presentedViewController];
  if (v5)
  {
  }

  else
  {
    if ((*(a2 + 24))(a1, a2))
    {
      (*(a2 + 8))(a1, a2);
      sub_65DEC();
    }

    else
    {
      v6 = [v2 transitionCoordinator];
      v7 = (*(a2 + 8))(a1, a2);
      if (v6)
      {
        v16 = sub_1C61A4;
        v17 = v7;
        v12 = _NSConcreteStackBlock;
        v13 = 1107296256;
        v14 = sub_6C6800;
        v15 = &unk_889C70;
        v8 = _Block_copy(&v12);

        v9 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v10 = swift_allocObject();
        v10[2] = a1;
        v10[3] = a2;
        v10[4] = v9;
        v16 = sub_22A754;
        v17 = v10;
        v12 = _NSConcreteStackBlock;
        v13 = 1107296256;
        v14 = sub_6C6800;
        v15 = &unk_889CC0;
        v11 = _Block_copy(&v12);

        [v6 animateAlongsideTransition:v8 completion:v11];
        _Block_release(v11);
        _Block_release(v8);
        swift_unknownObjectRelease();
        return;
      }

      sub_65DEC();
    }
  }
}

void sub_229C38(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = swift_allocObject();
  v7[2] = a2;
  v7[3] = a3;
  v7[4] = v6;
  v9[4] = sub_22A808;
  v9[5] = v7;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_6C6800;
  v9[3] = &unk_889C48;
  v8 = _Block_copy(v9);

  [a1 animateAlongsideTransition:v8 completion:0];
  _Block_release(v8);
}

uint64_t sub_229D44(char a1)
{
  v3 = (*&stru_B8.segname[(swift_isaMask & *v1) - 8])((a1 & 8) == 0);
  if (a1 & 1) != 0 || (a1 & 2) != 0 && (v3 = (*(&stru_108.reserved2 + (swift_isaMask & *v1)))(v3), (v3))
  {
    v4 = (*&stru_B8.sectname[swift_isaMask & *v1])(v3);
  }

  else
  {
    v4 = 0;
  }

  v5 = *(&stru_158.offset + (swift_isaMask & *v1));
  v6 = v4 & 1;

  return v5(v6);
}

BOOL sub_229E60()
{
  v1 = (*&stru_158.segname[(swift_isaMask & *v0) - 8])();
  v2 = v1 == 0;
  if (!v1)
  {
    v3 = [v0 navigationController];
    if (!v3)
    {
      return 0;
    }

    v4 = v3;
    v5 = [v3 navigationBar];

    v1 = v5;
    if (!v5)
    {
      return 0;
    }
  }

  return v2;
}

void sub_229F20(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v10 = sub_7599A0();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &aBlock[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &aBlock[-1] - v15;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong || (v18 = Strong, v19 = COERCE_DOUBLE((*&stru_1A8.segname[swift_isaMask & *Strong])()), v21 = v20, v18, (v21 & 1) != 0))
  {
    if (a4 == 1.79769313e308)
    {
      return;
    }

    goto LABEL_4;
  }

  if (v19 != a4)
  {
LABEL_4:
    sub_759960();
    sub_759980();
    v23 = v22;
    v25 = v24;
    v26 = *(v11 + 8);
    v26(v16, v10);
    sub_759960();
    sub_759990();
    v28 = v27;
    v30 = v29;
    v26(v13, v10);
    v31 = swift_allocObject();
    *(v31 + 16) = a2;
    *(v31 + 24) = a3;
    *(v31 + 32) = a1;
    *(v31 + 40) = a4;
    v32 = objc_allocWithZone(UIViewPropertyAnimator);
    aBlock[4] = sub_22A6F4;
    aBlock[5] = v31;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_23F0CC;
    aBlock[3] = &unk_889BF8;
    v33 = _Block_copy(aBlock);

    v34 = [v32 initWithDuration:v33 controlPoint1:a5 controlPoint2:v23 animations:{v25, v28, v30}];
    _Block_release(v33);
    [v34 startAnimation];
  }
}

void sub_22A208(double a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    (*&stru_1A8.segname[(swift_isaMask & *Strong) + 8])(*&a1, 0);
  }
}

void sub_22A2A8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = [a1 viewControllerForKey:UITransitionContextToViewControllerKey];
    if (v9)
    {
      v10 = v9;
      sub_3C80C();
      v11 = v8;
      v12 = sub_76A1C0();

      if (v12)
      {
        if ([a1 isCancelled])
        {
          (*(a4 + 8))(a3, a4);
          sub_65DEC();
        }
      }
    }
  }
}

void sub_22A3BC(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 40);
  if (v3)
  {

    v3(v4, 1.0, 0.0);
    sub_F704(v3);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = [Strong navigationController];

    if (v7)
    {
      v8 = [v7 navigationBar];

      [v8 _setTitleOpacity:1.0];
    }
  }

  *(a2 + 88) = 0;
}

void sub_22A480(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    if ([a1 isCancelled])
    {
      v9 = [a1 viewControllerForKey:UITransitionContextFromViewControllerKey];
      if (v9)
      {
        v10 = v9;
        sub_3C80C();
        v11 = v8;
        v12 = sub_76A1C0();

        if ((v12 & 1) != 0 && sub_229E60())
        {
          (*(a4 + 8))(a3, a4);
          v13 = [v11 collectionView];
          if (!v13)
          {
            __break(1u);
            return;
          }

          v14 = v13;
          sub_66394(v13);
        }
      }
    }
  }
}

void sub_22A5C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    (*(a4 + 8))(a3, a4);
    v8 = [v7 collectionView];
    if (v8)
    {
      v9 = v8;
      sub_66394(v8);
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_22A678()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_22A6BC()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_22A704(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_22A71C()
{

  return _swift_deallocObject(v0, 40, 7);
}

unint64_t sub_22A78C()
{
  result = qword_9495C8;
  if (!qword_9495C8)
  {
    type metadata accessor for UberedPageScrollObserver();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_9495C8);
  }

  return result;
}

double sub_22A820(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v7 = sub_75CC20();
  v9 = v8;
  v10 = sub_75CC40();
  v11 = sub_75CC30();
  swift_getObjectType();
  v12 = sub_35BEE0(v7, v9, v10, v11, a6);

  return v12;
}

void *sub_22A974(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t))
{
  v3 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v3)
  {
    sub_1439F8(0, v3, 0);
    v37 = _swiftEmptyArrayStorage;
    v5 = a1 + 64;
    result = sub_76A5B0();
    v6 = result;
    v7 = 0;
    v8 = *(a1 + 36);
    v32 = v3;
    v33 = v8;
    while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(a1 + 32))
    {
      v11 = v6 >> 6;
      if ((*(v5 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
      {
        goto LABEL_23;
      }

      if (v8 != *(a1 + 36))
      {
        goto LABEL_24;
      }

      v12 = (*(a1 + 48) + 16 * v6);
      v13 = *v12;
      v14 = v12[1];
      v15 = *(*(a1 + 56) + 8 * v6);

      v16 = a2(v13, v14, v15);
      v35 = v18;
      v36 = v17;
      v20 = v19;

      v21 = v37;
      v23 = v37[2];
      v22 = v37[3];
      if (v23 >= v22 >> 1)
      {
        result = sub_1439F8((v22 > 1), v23 + 1, 1);
        v21 = v37;
      }

      v21[2] = v23 + 1;
      v24 = &v21[4 * v23];
      v24[4] = v16;
      v24[5] = v36;
      v24[6] = v35;
      v24[7] = v20;
      v9 = 1 << *(a1 + 32);
      if (v6 >= v9)
      {
        goto LABEL_25;
      }

      v5 = a1 + 64;
      v25 = *(a1 + 64 + 8 * v11);
      if ((v25 & (1 << v6)) == 0)
      {
        goto LABEL_26;
      }

      v37 = v21;
      v8 = v33;
      if (v33 != *(a1 + 36))
      {
        goto LABEL_27;
      }

      v26 = v25 & (-2 << (v6 & 0x3F));
      if (v26)
      {
        v9 = __clz(__rbit64(v26)) | v6 & 0x7FFFFFFFFFFFFFC0;
        v10 = v32;
      }

      else
      {
        v27 = v11 << 6;
        v28 = v11 + 1;
        v10 = v32;
        v29 = (a1 + 72 + 8 * v11);
        while (v28 < (v9 + 63) >> 6)
        {
          v31 = *v29++;
          v30 = v31;
          v27 += 64;
          ++v28;
          if (v31)
          {
            result = sub_1F38B4(v6, v33, 0);
            v9 = __clz(__rbit64(v30)) + v27;
            goto LABEL_4;
          }
        }

        result = sub_1F38B4(v6, v33, 0);
      }

LABEL_4:
      ++v7;
      v6 = v9;
      if (v7 == v10)
      {
        return v37;
      }
    }

    __break(1u);
LABEL_23:
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

  return result;
}

id sub_22AC08()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider21ProductCapabilityCell_titleLabel];
  sub_75CC20();
  v3 = sub_769210();

  [v2 setText:v3];

  sub_75CC40();
  v4 = sub_75CC10();
  v5 = sub_759CF0();
  v6 = sub_22A974(v5, sub_30AE4);

  v7 = sub_759CE0();
  sub_4ED3B8(v7, v4, v6);

  v8 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider21ProductCapabilityCell_iconImageView];
  v9 = sub_75CC00();
  [v8 setTintColor:v9];

  *&v1[OBJC_IVAR____TtC18ASMessagesProvider21ProductCapabilityCell_icon] = sub_75CC30();

  return [v1 setNeedsLayout];
}

void sub_22ADA0()
{
  v1 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider21ProductCapabilityCell_icon);
  if (v1)
  {

    if (sub_765160())
    {
      v2 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider21ProductCapabilityCell_iconImageView);
      if (sub_765190())
      {
        v3 = sub_759910();
      }

      else if (sub_765180())
      {
        v3 = sub_56EBA8(v1, 0);
      }

      else
      {
        v3 = 0;
      }

      [v2 setImage:v3];
    }

    else
    {
      v4 = qword_93CD88;

      if (v4 != -1)
      {
        swift_once();
      }

      v5 = sub_759910();
      if (v5)
      {
        v6 = v5;
        [v5 size];
      }

      sub_765320();
      sub_22AFB8();
      sub_22B004(&qword_950A60, sub_22AFB8);
      sub_75A050();
    }
  }
}

unint64_t sub_22AFB8()
{
  result = qword_949D90;
  if (!qword_949D90)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_949D90);
  }

  return result;
}

uint64_t sub_22B004(unint64_t *a1, void (*a2)(uint64_t))
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

void (*sub_22B04C(uint64_t *a1))(id *a1, char a2)
{
  v2 = OBJC_IVAR____TtC18ASMessagesProvider15LockupMediaView_videoView;
  a1[1] = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider30AdvertsSearchResultContentView_lockupMediaView);
  a1[2] = v2;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return sub_22B0B0;
}

void sub_22B0B0(id *a1, char a2)
{
  v4 = a1[1];
  v26 = *a1;
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = Strong;
  if (a2)
  {
    if (Strong)
    {
      sub_234E24(&qword_93F500, 255, type metadata accessor for VideoView);
      v7 = v26;
      v8 = [v6 superview];
      if (v8)
      {
        v9 = v8;
        sub_BE70(0, &qword_93E550);
        v10 = v4;
        v11 = sub_76A1C0();

        if (v11)
        {
          v12 = swift_unknownObjectWeakLoadStrong();
          if (v12)
          {
            v13 = v12;
            [v12 removeFromSuperview];
          }
        }
      }

      else
      {
      }
    }

    else
    {
      v7 = v26;
    }

    swift_unknownObjectWeakAssign();
    v23 = swift_unknownObjectWeakLoadStrong();
    v24 = a1[1];
    if (v23)
    {
      v25 = v23;
      [a1[1] addSubview:v23];
    }

    sub_55A7A8();
    [v24 setNeedsLayout];

    v22 = *a1;
    goto LABEL_21;
  }

  if (Strong)
  {
    sub_234E24(&qword_93F500, 255, type metadata accessor for VideoView);
    v14 = [v6 superview];
    if (v14)
    {
      v15 = v14;
      sub_BE70(0, &qword_93E550);
      v16 = v4;
      v17 = sub_76A1C0();

      if ((v17 & 1) == 0)
      {
        goto LABEL_13;
      }

      v18 = swift_unknownObjectWeakLoadStrong();
      if (!v18)
      {
        goto LABEL_13;
      }

      v6 = v18;
      [v18 removeFromSuperview];
    }
  }

LABEL_13:
  swift_unknownObjectWeakAssign();
  v19 = swift_unknownObjectWeakLoadStrong();
  v20 = a1[1];
  if (v19)
  {
    v21 = v19;
    [a1[1] addSubview:v19];
  }

  sub_55A7A8();
  [v20 setNeedsLayout];
  v22 = v26;
LABEL_21:
}

id (*sub_22B374(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_22B3D8;
}

id sub_22B3D8(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);
    v6 = *(v5 + OBJC_IVAR____TtC18ASMessagesProvider30AdvertsSearchResultContentView_lockupView);
    v7 = *(v6 + OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_searchAdTransparencyButton);
    if (v7)
    {
      [v7 addTarget:? action:? forControlEvents:?];
      v5 = *(a1 + 24);
    }

    v8 = *(v6 + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_offerButton);

    return [v8 addTarget:v5 action:"disableAdvertRotationTap" forControlEvents:64];
  }

  return result;
}

char *sub_22B488(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC18ASMessagesProvider30AdvertsSearchResultContentView_lockupView;
  *&v4[v9] = [objc_allocWithZone(type metadata accessor for SmallSearchLockupView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v10 = OBJC_IVAR____TtC18ASMessagesProvider30AdvertsSearchResultContentView_lockupMediaView;
  *&v4[v10] = [objc_allocWithZone(type metadata accessor for LockupMediaView()) init];
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider30AdvertsSearchResultContentView_preferredImageSizes] = &_swiftEmptyDictionarySingleton;
  v11 = &v4[OBJC_IVAR____TtC18ASMessagesProvider30AdvertsSearchResultContentView_disableAdvertRotation];
  *v11 = 0;
  *(v11 + 1) = 0;
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider30AdvertsSearchResultContentView_impressionsCalculator] = 0;
  v12 = &v4[OBJC_IVAR____TtC18ASMessagesProvider30AdvertsSearchResultContentView_impressionsUpdateBlock];
  v13 = type metadata accessor for AdvertsSearchResultContentView();
  *v12 = 0;
  *(v12 + 1) = 0;
  v20.receiver = v4;
  v20.super_class = v13;
  v14 = objc_msgSendSuper2(&v20, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v18 = v14;
  [v18 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v18 addSubview:*&v18[OBJC_IVAR____TtC18ASMessagesProvider30AdvertsSearchResultContentView_lockupView]];
  [v18 addSubview:*&v18[OBJC_IVAR____TtC18ASMessagesProvider30AdvertsSearchResultContentView_lockupMediaView]];

  return v18;
}

id sub_22B6DC()
{
  v1 = v0;
  v2 = sub_760840();
  v142 = *(v2 - 8);
  v143 = v2;
  __chkstk_darwin(v2);
  v141 = &v110[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_760D90();
  v145 = *(v4 - 8);
  v146 = v4;
  __chkstk_darwin(v4);
  v113 = &v110[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_762D10();
  v130 = *(v6 - 8);
  v131 = v6;
  __chkstk_darwin(v6);
  v129 = &v110[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_75D850();
  v153 = *(v8 - 8);
  v154 = v8;
  __chkstk_darwin(v8);
  v127 = &v110[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v152 = &v110[-v11];
  v157 = sub_760820();
  v151 = *(v157 - 8);
  __chkstk_darwin(v157);
  v137 = &v110[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v13);
  v158 = &v110[-v14];
  v15 = sub_BD88(&unk_94AE30);
  __chkstk_darwin(v15 - 8);
  v112 = &v110[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v17);
  v156 = &v110[-v18];
  v19 = sub_BD88(&unk_93F5A0);
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v110[-v21];
  v23 = type metadata accessor for AdvertsSearchResultContentView();
  v196.receiver = v0;
  v196.super_class = v23;
  objc_msgSendSuper2(&v196, "layoutSubviews");
  sub_75D650();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v32 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider30AdvertsSearchResultContentView_lockupView];
  sub_12EE70();
  sub_769D20();
  [v32 setFrame:?];
  sub_763F60();
  v33 = [v0 traitCollection];
  v34 = sub_7671D0();
  v136 = sub_BD88(&unk_93F5C0);
  v35 = swift_allocObject();
  v150 = xmmword_77D9F0;
  *(v35 + 16) = xmmword_77D9F0;
  *(v35 + 32) = v33;
  v36 = v33;
  v147 = v34;
  v37 = sub_7671E0();
  v133 = sub_24128();
  sub_7666E0();
  v132 = v38;

  v39 = *(v20 + 8);
  v138 = v22;
  v139 = v20 + 8;
  v140 = v19;
  v135 = v39;
  v39(v22, v19);
  v197.origin.x = v25;
  v197.origin.y = v27;
  v197.size.width = v29;
  v197.size.height = v31;
  MinX = CGRectGetMinX(v197);
  [v32 frame];
  MaxY = CGRectGetMaxY(v198);
  v40 = *&v32[OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_title + 8];
  v119 = *&v32[OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_title];
  v41 = *&v32[OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_subtitleLabel];
  v118 = v40;

  v42 = [v41 text];
  if (v42)
  {
    v43 = v42;
    v44 = sub_769240();
    v121 = v45;
    v122 = v44;
  }

  else
  {
    v121 = 0;
    v122 = 0;
  }

  v46 = [*&v32[OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_descriptionLabel] text];
  v47 = v145;
  if (v46)
  {
    v48 = v46;
    v49 = sub_769240();
    v123 = v50;
    v124 = v49;
  }

  else
  {
    v123 = 0;
    v124 = 0;
  }

  v51 = *&v32[OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_metadataRibbonView];
  v52 = OBJC_IVAR____TtC18ASMessagesProvider18MetadataRibbonView_metadataRibbonItemModels;
  swift_beginAccess();
  v53 = *(v51 + v52);
  v54 = *(*&v32[OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_searchTagsRibbonView] + OBJC_IVAR____TtC18ASMessagesProvider20SearchTagsRibbonView_metadataRibbonItemModels);
  v111 = v32[OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_shouldEvenlyDistribute];
  v149 = v54;

  v155 = v53;

  v55 = [v1 traitCollection];
  (*(v47 + 56))(v156, 1, 1, v146);
  if (qword_93C3F8 != -1)
  {
    swift_once();
  }

  v56 = v157;
  v57 = sub_BE38(v157, qword_99B150);
  v125 = *(v151 + 16);
  v126 = v151 + 16;
  v125(v158, v57, v56);
  v58 = sub_769A00();
  v144 = v1;
  if (v58)
  {
    if (qword_93C440 != -1)
    {
      swift_once();
    }

    v59 = qword_946920;
  }

  else
  {
    if (qword_93C448 != -1)
    {
      swift_once();
    }

    v59 = qword_946938;
  }

  v60 = v154;
  v61 = sub_BE38(v154, v59);
  v62 = v153;
  v63 = v127;
  (*(v153 + 16))(v127, v61, v60);
  (*(v62 + 32))(v152, v63, v60);
  v64 = [v55 preferredContentSizeCategory];
  sub_769B20();

  sub_75D800();
  sub_75D830();
  sub_760810();
  sub_760800();
  v120 = sub_7670D0();
  swift_allocObject();
  v127 = sub_7670B0();
  v65 = objc_opt_self();
  v116 = v65;
  v66 = [v65 preferredFontForTextStyle:UIFontTextStyleBody];
  v148 = v55;
  v67 = sub_7653B0();
  v195[3] = v67;
  v68 = sub_234E24(&qword_93F9B0, 255, &type metadata accessor for Feature);
  v195[4] = v68;
  v115 = v68;
  v69 = sub_B1B4(v195);
  v70 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v71 = *(v67 - 8);
  v72 = *(v71 + 104);
  v117 = v71 + 104;
  v114 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v72(v69, enum case for Feature.measurement_with_labelplaceholder(_:), v67);
  sub_765C30();
  sub_BEB8(v195);
  v73 = v129;
  sub_762D00();
  sub_762CE0();
  v74 = v131;
  v130 = *(v130 + 8);
  (v130)(v73, v131);
  v75 = [v65 preferredFontForTextStyle:UIFontTextStyleFootnote];
  v194[3] = v67;
  v194[4] = v68;
  v76 = sub_B1B4(v194);
  v72(v76, v70, v67);
  sub_765C30();
  sub_BEB8(v194);
  sub_762D00();
  sub_762CE0();
  v77 = v130;
  (v130)(v73, v74);
  v78 = [v116 preferredFontForTextStyle:UIFontTextStyleFootnote];
  v193[3] = v67;
  v193[4] = v115;
  v79 = sub_B1B4(v193);
  v72(v79, v114, v67);
  sub_765C30();
  sub_BEB8(v193);
  sub_762D00();
  sub_762CE0();
  v77(v73, v74);
  v80 = v155;
  LODWORD(v131) = sub_246DC(0, v155) & (v80 != 0);
  if (v131 == 1)
  {
    v81 = v120;
    v82 = objc_allocWithZone(v147);
    v83 = v148;
    v84 = sub_7671C0();
    v85 = v112;
    sub_1ED18(v156, v112, &unk_94AE30);
    v87 = v145;
    v86 = v146;
    v88 = *(v145 + 48);
    if (v88(v85, 1, v146) == 1)
    {
      v89 = v113;
      _s18ASMessagesProvider18MetadataRibbonViewC7metrics11AppStoreKit0cdE6LayoutV7MetricsVvpfi_0();
      if (v88(v85, 1, v86) != 1)
      {
        sub_10A2C(v85, &unk_94AE30);
      }
    }

    else
    {
      v89 = v113;
      (*(v87 + 32))(v113, v85, v86);
    }

    v91 = v84;
    sub_2185C(v155, v89, v91);

    (*(v87 + 8))(v89, v86);
    swift_allocObject();
    v90 = sub_7670A0();
  }

  else
  {
    v81 = v120;
    swift_allocObject();
    v90 = sub_7670B0();
  }

  v92 = v90;

  v93 = v149;
  if ((sub_246DC(v149, 0) & (v93 != 0)) == 1)
  {
    sub_F7FC(v93, v111);
    swift_allocObject();
    v94 = sub_7670A0();
  }

  else
  {
    swift_allocObject();
    v94 = sub_7670B0();
  }

  v95 = v94;
  v125(v137, v158, v157);
  v192 = &protocol witness table for LayoutViewPlaceholder;
  v191 = v81;
  v190 = v127;
  v189 = 0;
  *&v187[40] = 0u;
  v188 = 0u;
  sub_134D8(v195, v187);
  sub_134D8(v194, &v186);
  v185 = 0;
  v183 = 0u;
  v184 = 0u;
  v182 = 0;
  v180 = 0u;
  v181 = 0u;

  v146 = v95;
  v96 = sub_7670C0();
  v179 = &protocol witness table for LayoutViewPlaceholder;
  v178 = v81;
  v177 = v96;
  v176 = 0;
  v174 = 0u;
  v175 = 0u;
  v173 = 0;
  v171 = 0u;
  v172 = 0u;
  v170 = 0;
  v168 = 0u;
  v169 = 0u;
  v167 = 0;
  v166 = 0u;
  *&v165[40] = 0u;
  sub_134D8(v193, v165);
  v163 = v81;
  v164 = &protocol witness table for LayoutViewPlaceholder;
  v161 = &protocol witness table for LayoutViewPlaceholder;
  v162 = v92;
  v160 = v81;
  v159 = v95;
  v97 = v141;
  sub_760830();
  v98 = swift_allocObject();
  *(v98 + 16) = v150;
  v99 = v148;
  *(v98 + 32) = v148;
  v100 = v99;
  v101 = sub_7671E0();
  sub_234E24(&qword_945FA0, 255, &type metadata accessor for SmallSearchLockupLayout);
  v102 = v143;
  sub_7665A0();

  (*(v142 + 8))(v97, v102);
  sub_BEB8(v193);
  sub_BEB8(v194);
  sub_BEB8(v195);
  (*(v153 + 8))(v152, v154);
  (*(v151 + 8))(v158, v157);
  sub_10A2C(v156, &unk_94AE30);
  v103 = v138;
  sub_763F60();
  v104 = swift_allocObject();
  *(v104 + 16) = v150;
  *(v104 + 32) = v100;
  v105 = v100;
  v106 = sub_7671E0();
  v107 = v140;
  sub_7666E0();

  v135(v103, v107);
  v108 = *&v144[OBJC_IVAR____TtC18ASMessagesProvider30AdvertsSearchResultContentView_lockupMediaView];
  sub_769D20();
  return [v108 setFrame:?];
}

uint64_t sub_22C85C(uint64_t a1, char *a2)
{
  KeyPath = v2;
  ObjectType = swift_getObjectType();
  v6 = sub_BD88(&unk_94DF00);
  __chkstk_darwin(v6 - 8);
  v105 = &v89 - v7;
  v8 = sub_760770();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v108 = &v89 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v111 = &v89 - v12;
  v13 = sub_75C930();
  v112 = *(v13 - 8);
  __chkstk_darwin(v13);
  v110 = &v89 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v106 = &v89 - v16;
  __chkstk_darwin(v17);
  v19 = &v89 - v18;
  v20 = sub_BD88(&unk_948720);
  __chkstk_darwin(v20 - 8);
  v113 = &v89 - v21;
  v22 = sub_BD88(&unk_93F620);
  __chkstk_darwin(v22 - 8);
  v24 = &v89 - v23;
  v25 = sub_7656C0();
  v109 = *(v25 - 8);
  __chkstk_darwin(v25);
  v114 = &v89 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_7634F0();
  result = sub_7688F0();
  v28 = v116;
  if (!v116)
  {
    return result;
  }

  v107 = a1;
  v29 = sub_7634C0();
  if (!v29)
  {
  }

  v102 = v19;
  v104 = v28;
  v30 = v29;
  sub_7609E0();
  sub_BD88(&qword_9498C0);
  sub_75BD00();
  if ((swift_dynamicCast() & 1) == 0)
  {
  }

  v97 = v30;
  v103 = v9;
  v98 = v25;
  static SearchPageGridBreakpointOverridable.pageGridWithSearchOverrides(for:)();
  sub_765560();
  v31 = *&KeyPath[OBJC_IVAR____TtC18ASMessagesProvider30AdvertsSearchResultContentView_lockupView];
  *(v31 + OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_regularWidthColumnSpacing) = v32;
  [v31 setNeedsLayout];
  sub_765630();
  v34 = v33;
  v36 = v35;
  v37 = sub_75C840();
  (*(*(v37 - 8) + 56))(v24, 1, 1, v37);

  v101 = a2;
  sub_223E1C(v38, v24, a2);
  sub_10A2C(v24, &unk_93F620);
  sub_BE70(0, &qword_93E540);
  v39 = sub_76A000();
  [KeyPath setBackgroundColor:v39];

  v40 = sub_75BC70();
  if (v40 >> 62)
  {
    v59 = v40;
    v41 = sub_76A860();
    v40 = v59;
  }

  else
  {
    v41 = *(&dword_10 + (v40 & 0xFFFFFFFFFFFFFF8));
  }

  v42 = v111;
  v111 = v8;
  if (v41)
  {
    v43 = v110;
    if ((v40 & 0xC000000000000001) != 0)
    {
      v100 = sub_76A770();
    }

    else
    {
      if (!*(&dword_10 + (v40 & 0xFFFFFFFFFFFFFF8)))
      {
        __break(1u);
        goto LABEL_53;
      }

      v100 = *(v40 + 32);
    }
  }

  else
  {

    v100 = 0;
    v43 = v110;
  }

  v94 = *&KeyPath[OBJC_IVAR____TtC18ASMessagesProvider30AdvertsSearchResultContentView_lockupMediaView];
  a1 = sub_75BCA0();
  v93 = sub_75BC80();
  v44 = sub_75BCF0();
  if (v44 >> 62)
  {
    v60 = v44;
    v45 = sub_76A860();
    v44 = v60;
  }

  else
  {
    v45 = *(&dword_10 + (v44 & 0xFFFFFFFFFFFFFF8));
  }

  v96 = KeyPath;
  v95 = v31;
  v110 = a1;
  if (v45)
  {
    if ((v44 & 0xC000000000000001) != 0)
    {
      v92 = sub_76A770();
    }

    else
    {
      if (!*(&dword_10 + (v44 & 0xFFFFFFFFFFFFFF8)))
      {
        __break(1u);
        goto LABEL_55;
      }

      v92 = *(v44 + 32);
    }
  }

  else
  {

    v92 = 0;
  }

  v46 = ASKDeviceTypeGetCurrent();
  KeyPath = swift_getKeyPath();
  sub_75C7B0();

  v47 = v116;
  sub_3B9960(v113);

  v31 = sub_75BCA0();
  a1 = sub_75BC80();
  v48 = sub_75BC70();
  if (v48 >> 62)
  {
    v61 = v48;
    v49 = sub_76A860();
    v48 = v61;
  }

  else
  {
    v49 = *(&dword_10 + (v48 & 0xFFFFFFFFFFFFFF8));
  }

  v24 = v103;
  if (v49)
  {
    if ((v48 & 0xC000000000000001) == 0)
    {
      if (!*(&dword_10 + (v48 & 0xFFFFFFFFFFFFFF8)))
      {
        __break(1u);
        goto LABEL_57;
      }

      KeyPath = *(v48 + 32);

      goto LABEL_29;
    }

LABEL_53:
    KeyPath = sub_76A770();
LABEL_29:

    goto LABEL_31;
  }

  KeyPath = 0;
LABEL_31:
  v50 = sub_75BCF0();
  if (v50 >> 62)
  {
    v62 = v50;
    v51 = sub_76A860();
    v50 = v62;
  }

  else
  {
    v51 = *(&dword_10 + (v50 & 0xFFFFFFFFFFFFFF8));
  }

  v99 = v13;
  if (v51)
  {
    if ((v50 & 0xC000000000000001) == 0)
    {
      if (*(&dword_10 + (v50 & 0xFFFFFFFFFFFFFF8)))
      {
        v52 = *(v50 + 32);

LABEL_37:

        goto LABEL_39;
      }

LABEL_57:
      __break(1u);
      goto LABEL_58;
    }

LABEL_55:
    v52 = sub_76A770();
    goto LABEL_37;
  }

  v52 = 0;
LABEL_39:
  sub_75BCC0();
  if (sub_760760())
  {
    if (!(a1 | v31))
    {
      v53 = sub_55BABC(KeyPath, v52, 0, 1);
      v31 = v53;
      a1 = v53 >> 62;
      if (!(v53 >> 62))
      {
        ObjectType = *(&dword_10 + (v53 & 0xFFFFFFFFFFFFFF8));
        if (KeyPath)
        {
LABEL_43:
          v54 = sub_759690();
          goto LABEL_60;
        }

LABEL_59:
        v54 = 0;
LABEL_60:
        v90 = sub_55BE04(v54);

        v107 = KeyPath;
        v63 = v43;
        if (KeyPath)
        {
          v64 = sub_759690();
        }

        else
        {
          v64 = 0;
        }

        v65 = v105;
        v66 = v111;
        (*(v24 + 2))(v105, v42, v111);
        (*(v24 + 7))(v65, 0, 1, v66);
        v91 = sub_55C32C(v64, v65);

        sub_10A2C(v65, &unk_94DF00);
        if (a1)
        {
          result = sub_76A860();
        }

        else
        {
          result = *(&dword_10 + (v31 & 0xFFFFFFFFFFFFFF8));
        }

        v67 = v63;
        if (result)
        {
          if ((v31 & 0xC000000000000001) != 0)
          {
            sub_76A770();
          }

          else
          {
            if (!*(&dword_10 + (v31 & 0xFFFFFFFFFFFFFF8)))
            {
              __break(1u);
              return result;
            }
          }

          v68 = sub_765150();

          if (v68)
          {

            v69 = *(v24 + 1);
            v69(v42, v111);
            v55 = v112;
            v70 = v106;
            v71 = v99;
            (*(v112 + 104))(v106, enum case for LockupMediaLayout.DisplayType.landscape(_:), v99);
LABEL_81:
            ObjectType = v69;
            v56 = v102;
            (*(v55 + 32))(v102, v70, v71);
            goto LABEL_82;
          }
        }

        else
        {
        }

        v72 = enum case for LockupMediaLayout.DisplayType.fourUp(_:);
        v73 = v112;
        v71 = v99;
        v105 = *(v112 + 104);
        (v105)(v63, enum case for LockupMediaLayout.DisplayType.fourUp(_:), v99);
        v74 = sub_75C920();
        v75 = *(v73 + 8);
        v75(v67, v71);
        if (((ObjectType >= v74) & v91) != 0 || (v72 = enum case for LockupMediaLayout.DisplayType.threeUp(_:), (v105)(v67, enum case for LockupMediaLayout.DisplayType.threeUp(_:), v71), v76 = sub_75C920(), v75(v67, v71), ((ObjectType >= v76) & v90) != 0) || (v72 = enum case for LockupMediaLayout.DisplayType.twoUp(_:), (v105)(v67, enum case for LockupMediaLayout.DisplayType.twoUp(_:), v71), v77 = sub_75C920(), v75(v67, v71), ObjectType >= v77))
        {

          v69 = *(v103 + 1);
          v69(v42, v111);
        }

        else
        {
          v72 = enum case for LockupMediaLayout.DisplayType.oneUp(_:);
          (v105)(v67, enum case for LockupMediaLayout.DisplayType.oneUp(_:), v71);
          v78 = sub_75C920();

          v75(v67, v71);
          v69 = *(v103 + 1);
          v69(v42, v111);
          if (ObjectType != v78)
          {
            v79 = enum case for LockupMediaLayout.DisplayType.none(_:);
            v70 = v106;
            v80 = v106;
LABEL_80:
            (v105)(v80, v79, v71);
            v55 = v112;
            goto LABEL_81;
          }
        }

        v70 = v106;
        v80 = v106;
        v79 = v72;
        goto LABEL_80;
      }

LABEL_58:
      ObjectType = sub_76A860();
      if (KeyPath)
      {
        goto LABEL_43;
      }

      goto LABEL_59;
    }

    v57 = v106;
    sub_7666A0();

    ObjectType = *(v24 + 1);
    ObjectType(v42, v111);
    v55 = v112;
    v58 = v99;
    (*(v112 + 104))(v57, enum case for LockupMediaLayout.DisplayType.singleItemFill(_:), v99);
    v56 = v102;
    (*(v55 + 32))(v102, v57, v58);
  }

  else
  {

    ObjectType = *(v24 + 1);
    ObjectType(v42, v111);
    v55 = v112;
    v56 = v102;
    (*(v112 + 104))(v102, enum case for LockupMediaLayout.DisplayType.none(_:), v99);
  }

LABEL_82:
  v81 = v108;
  sub_75BCC0();
  v82 = ASKDeviceTypeGetCurrent();
  v83 = v113;
  sub_161EE4(v110, v93, v100, v92, v113, v56, v81, v101, v34, v36, 0);

  ObjectType(v81, v111);
  (*(v55 + 8))(v56, v99);
  sub_10A2C(v83, &unk_948720);
  v84 = sub_764E90();

  if (v84)
  {
    v85 = sub_75E5C0();

    v86 = v96;
    if (v85)
    {
      v87 = [objc_opt_self() clearColor];
      [v86 setBackgroundColor:v87];
    }
  }

  else
  {
    v85 = 0;
    v86 = v96;
  }

  v88 = v109;
  sub_2257B4(v85, v101);
  [v86 setNeedsLayout];

  [v86 setNeedsLayout];

  return (*(v88 + 8))(v114, v98);
}

uint64_t sub_22D838(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&unk_93F5A0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v181 = &v146 - v6;
  v7 = sub_760840();
  v180 = *(v7 - 8);
  __chkstk_darwin(v7);
  v179 = &v146 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_760D90();
  v183 = *(v9 - 8);
  *&v184 = v9;
  __chkstk_darwin(v9);
  v173 = &v146 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_762D10();
  v176 = *(v11 - 8);
  v177 = v11;
  __chkstk_darwin(v11);
  v175 = &v146 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_75D850();
  v187 = *(v13 - 8);
  v188 = v13;
  __chkstk_darwin(v13);
  v174 = &v146 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v186 = &v146 - v16;
  v191 = sub_760820();
  v185 = *(v191 - 8);
  __chkstk_darwin(v191);
  v178 = &v146 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v190 = &v146 - v19;
  v20 = sub_BD88(&unk_94AE30);
  __chkstk_darwin(v20 - 8);
  v172 = &v146 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v189 = &v146 - v23;
  v192 = sub_760770();
  v24 = *(v192 - 8);
  __chkstk_darwin(v192);
  v26 = &v146 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v29 = &v146 - v28;
  v30 = sub_7652D0();
  __chkstk_darwin(v30 - 8);
  v182 = &v146 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_7634F0();
  result = sub_7688F0();
  if (!v232[0])
  {
    return result;
  }

  v169 = v5;
  v170 = v4;
  v194 = v232[0];
  v171 = a1;
  sub_134D8(a1, v232);
  sub_BD88(&unk_93F520);
  v33 = sub_75DDB0();
  if ((swift_dynamicCast() & 1) == 0)
  {
  }

  v168 = v7;
  v34 = v231[0];
  v233 = v33;
  v234 = sub_234E24(&qword_945260, 255, &type metadata accessor for AdvertsSearchResult);
  v232[0] = v34;

  v35 = sub_7634B0();
  sub_BEB8(v232);
  if (!v35)
  {
  }

  sub_7609E0();
  sub_BD88(&qword_9498C0);
  sub_75BD00();
  if ((swift_dynamicCast() & 1) == 0)
  {
  }

  v162 = v35;
  v163 = v24;
  v159 = v26;
  v166 = v29;
  v36 = v231[0];
  v37 = v193;
  v38 = *&v193[OBJC_IVAR____TtC18ASMessagesProvider30AdvertsSearchResultContentView_lockupMediaView];
  v39 = OBJC_IVAR____TtC18ASMessagesProvider15LockupMediaView_imageViews;
  swift_beginAccess();
  v165 = v38;
  v40 = *(v38 + v39);
  if (v40 >> 62)
  {
    v41 = sub_76A860();
  }

  else
  {
    v41 = *(&dword_10 + (v40 & 0xFFFFFFFFFFFFFF8));
  }

  v195 = a2;
  v167 = v34;
  v164 = v36;
  if (v41)
  {
    if (v41 < 1)
    {
      __break(1u);
LABEL_59:
      swift_once();
      goto LABEL_22;
    }

    v42 = 0;
    do
    {
      if ((v40 & 0xC000000000000001) != 0)
      {
        v43 = sub_76A770();
      }

      else
      {
        v43 = *(v40 + v42 + 4);
      }

      v44 = v43;
      ++v42;
      v231[0] = v43;
      type metadata accessor for BorderedScreenshotView();
      sub_234E24(&qword_946D80, 255, type metadata accessor for BorderedScreenshotView);
      v45 = v44;
      sub_76A6E0();
      a2 = v195;
      sub_75A0B0();
      sub_1EB60(v232);
      v46 = *&v45[OBJC_IVAR____TtC18ASMessagesProvider22BorderedScreenshotView_artworkView];
      v235.value.super.isa = 0;
      v235.is_nil = 0;
      sub_7591D0(v235, v47);
    }

    while (v41 != v42);

    v37 = v193;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v49 = Strong;
    [*(Strong + qword_940590) setImage:0];
    v231[0] = v49;
    type metadata accessor for VideoView();
    sub_234E24(&qword_952550, 255, type metadata accessor for VideoView);
    v50 = v49;
    sub_76A6E0();
    sub_75A0B0();

    sub_1EB60(v232);
  }

  v37 = *&v37[OBJC_IVAR____TtC18ASMessagesProvider30AdvertsSearchResultContentView_lockupView];
  v24 = OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_artworkView;
  v51 = *&v37[OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_artworkView];
  v236.value.super.isa = 0;
  v236.is_nil = 0;
  sub_7591D0(v236, v52);

  v53 = *&v37[v24];
  v54 = sub_759210();
  v55 = sub_234E24(&qword_945810, 255, &type metadata accessor for ArtworkView);
  v56 = v53;
  v160 = v55;
  v161 = v54;
  sub_75A0C0();

  v57 = sub_764EE0();
  v58 = v192;
  if (!v57)
  {
    goto LABEL_25;
  }

  v59 = qword_93C668;
  v40 = *&v37[v24];
  if (v59 != -1)
  {
    goto LABEL_59;
  }

LABEL_22:
  v60 = sub_75CF00();
  sub_BE38(v60, qword_99B898);
  sub_75CDD0();
  [v40 contentMode];
  sub_765330();
  sub_7652E0();
  sub_7591B0();
  [v40 setContentMode:sub_765140()];
  sub_75DEF0();
  sub_7591F0();
  if (!sub_7651A0())
  {
    sub_BE70(0, &qword_93E540);
    sub_76A030();
  }

  sub_759070();
  v61 = *&v37[v24];
  sub_75A050();

  v58 = v192;
LABEL_25:
  v62 = *&v37[OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_metadataRibbonView];
  sub_1BA288(v171, a2);

  v63 = v166;
  sub_75BCC0();
  if ((sub_760760() & 1) == 0)
  {

    return (*(v163 + 8))(v63, v58);
  }

  v64 = sub_764EF0();
  v149 = v65;
  v150 = v64;
  v66 = sub_764F70();
  v68 = v67;
  v69 = sub_764E90();

  v151 = v68;
  v152 = v66;
  if (v69)
  {
    v70 = sub_75E5C0();

    v71 = v190;
    v72 = v183;
    v73 = v174;
    if (v70)
    {
      v74 = sub_765720();
      v153 = v75;
      v154 = v74;
    }

    else
    {
      v153 = 0;
      v154 = 0;
    }

    v76 = v184;
  }

  else
  {
    v153 = 0;
    v154 = 0;
    v71 = v190;
    v72 = v183;
    v76 = v184;
    v73 = v174;
  }

  v182 = sub_75BC90();
  v174 = sub_75BCB0();
  v77 = sub_75BCD0();
  v78 = [v193 traitCollection];
  (*(v72 + 56))(v189, 1, 1, v76);
  if (qword_93C3F8 != -1)
  {
    swift_once();
  }

  v79 = v191;
  v80 = sub_BE38(v191, qword_99B150);
  v81 = v185 + 16;
  v82 = *(v185 + 16);
  v82(v71, v80, v79);
  v83 = sub_769A00();
  LODWORD(v146) = v77;
  v156 = v82;
  v157 = v81;
  if ((v83 & 1) == 0)
  {
    if (qword_93C448 != -1)
    {
      swift_once();
    }

    v84 = qword_946938;
    goto LABEL_41;
  }

  if (qword_93C440 != -1)
  {
    goto LABEL_76;
  }

  while (1)
  {
    v84 = qword_946920;
LABEL_41:
    v85 = v188;
    v86 = sub_BE38(v188, v84);
    v87 = v187;
    (*(v187 + 16))(v73, v86, v85);
    (*(v87 + 32))(v186, v73, v85);
    v88 = [v78 preferredContentSizeCategory];
    sub_769B20();

    sub_75D800();
    sub_75D830();
    sub_760810();
    sub_760800();
    v155 = sub_7670D0();
    swift_allocObject();
    v171 = sub_7670B0();
    v89 = objc_opt_self();
    v147 = v89;
    v90 = [v89 preferredFontForTextStyle:UIFontTextStyleBody];
    v91 = sub_7653B0();
    v233 = v91;
    v160 = sub_234E24(&qword_93F9B0, 255, &type metadata accessor for Feature);
    v234 = v160;
    v92 = sub_B1B4(v232);
    v93 = enum case for Feature.measurement_with_labelplaceholder(_:);
    v94 = *(v91 - 8);
    v148 = *(v94 + 104);
    v158 = v94 + 104;
    HIDWORD(v146) = enum case for Feature.measurement_with_labelplaceholder(_:);
    v148(v92, enum case for Feature.measurement_with_labelplaceholder(_:), v91);
    sub_765C30();
    sub_BEB8(v232);
    v95 = v175;
    sub_762D00();
    sub_762CE0();
    v96 = v177;
    v161 = v78;
    v97 = *(v176 + 8);
    v97(v95, v177);
    v98 = [v89 preferredFontForTextStyle:UIFontTextStyleFootnote];
    v231[3] = v91;
    v231[4] = v160;
    v99 = sub_B1B4(v231);
    v100 = v93;
    v101 = v148;
    v148(v99, v100, v91);
    sub_765C30();
    sub_BEB8(v231);
    sub_762D00();
    sub_762CE0();
    v97(v95, v96);
    v102 = [v147 preferredFontForTextStyle:UIFontTextStyleFootnote];
    v230[3] = v91;
    v230[4] = v160;
    v103 = sub_B1B4(v230);
    v101(v103, HIDWORD(v146), v91);
    sub_765C30();
    sub_BEB8(v230);
    sub_762D00();
    sub_762CE0();
    v97(v95, v96);
    v104 = v182;
    LODWORD(v177) = sub_246DC(0, v182) & (v104 != 0);
    if (v177 == 1)
    {
      v105 = objc_allocWithZone(sub_7671D0());
      v106 = v161;
      v107 = sub_7671C0();
      v108 = v172;
      sub_1ED18(v189, v172, &unk_94AE30);
      v110 = v183;
      v109 = v184;
      v111 = *(v183 + 48);
      if (v111(v108, 1, v184) == 1)
      {
        v112 = v173;
        _s18ASMessagesProvider18MetadataRibbonViewC7metrics11AppStoreKit0cdE6LayoutV7MetricsVvpfi_0();
        if (v111(v108, 1, v109) != 1)
        {
          sub_10A2C(v108, &unk_94AE30);
        }
      }

      else
      {
        v112 = v173;
        (*(v110 + 32))(v173, v108, v109);
      }

      v115 = v107;
      sub_2185C(v182, v112, v115);

      (*(v110 + 8))(v112, v109);
      v113 = v155;
      swift_allocObject();
      v114 = sub_7670A0();
    }

    else
    {
      v113 = v155;
      swift_allocObject();
      v114 = sub_7670B0();
    }

    v116 = v114;

    v117 = v174;
    v118 = sub_246DC(v174, 0) & (v117 != 0);
    v119 = v156;
    if (v118 == 1)
    {
      sub_F7FC(v117, v146 & 1);
      swift_allocObject();
      v120 = sub_7670A0();
    }

    else
    {
      swift_allocObject();
      v120 = sub_7670B0();
    }

    v121 = v120;
    v119(v178, v190, v191);
    v229 = &protocol witness table for LayoutViewPlaceholder;
    v228 = v113;
    v227 = v171;
    v226 = 0;
    *&v224[40] = 0u;
    v225 = 0u;
    sub_134D8(v232, v224);
    sub_134D8(v231, &v223);
    v222 = 0;
    v220 = 0u;
    v221 = 0u;
    v219 = 0;
    v217 = 0u;
    v218 = 0u;

    v122 = sub_7670C0();
    v216 = &protocol witness table for LayoutViewPlaceholder;
    v215 = v113;
    v214 = v122;
    v213 = 0;
    v211 = 0u;
    v212 = 0u;
    v210 = 0;
    v208 = 0u;
    v209 = 0u;
    v207 = 0;
    v205 = 0u;
    v206 = 0u;
    v204 = 0;
    v203 = 0u;
    *&v202[40] = 0u;
    sub_134D8(v230, v202);
    v200 = v113;
    v201 = &protocol witness table for LayoutViewPlaceholder;
    v198 = &protocol witness table for LayoutViewPlaceholder;
    v199 = v116;
    v197 = v113;
    v196 = v121;
    v123 = v179;
    sub_760830();
    sub_7671D0();
    sub_BD88(&unk_93F5C0);
    v124 = swift_allocObject();
    v184 = xmmword_77D9F0;
    *(v124 + 16) = xmmword_77D9F0;
    v125 = v161;
    *(v124 + 32) = v161;
    v73 = v125;
    v126 = sub_7671E0();
    sub_234E24(&qword_945FA0, 255, &type metadata accessor for SmallSearchLockupLayout);
    v127 = v168;
    sub_7665A0();

    (*(v180 + 8))(v123, v127);
    sub_BEB8(v230);
    sub_BEB8(v231);
    sub_BEB8(v232);
    (*(v187 + 8))(v186, v188);
    (*(v185 + 8))(v190, v191);
    sub_10A2C(v189, &unk_94AE30);
    v78 = v181;
    sub_763F60();
    v128 = swift_allocObject();
    *(v128 + 16) = v184;
    *(v128 + 32) = v73;
    v129 = v73;
    v130 = sub_7671E0();
    sub_24128();
    v131 = v170;
    sub_7666E0();

    (*(v169 + 8))(v78, v131);
    v132 = sub_75BCA0();
    v133 = sub_75BC80();
    v134 = sub_75BC70();
    if (v134 >> 62)
    {
      v136 = v134;
      v137 = sub_76A860();
      v134 = v136;
      v135 = v163;
      if (!v137)
      {
LABEL_61:

        v73 = 0;
        goto LABEL_62;
      }
    }

    else
    {
      v135 = v163;
      if (!*(&dword_10 + (v134 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_61;
      }
    }

    if ((v134 & 0xC000000000000001) != 0)
    {
      v73 = sub_76A770();
    }

    else
    {
      if (!*(&dword_10 + (v134 & 0xFFFFFFFFFFFFFF8)))
      {
        __break(1u);
        goto LABEL_75;
      }

      v73 = *(v134 + 32);
    }

LABEL_62:
    v138 = sub_75BCF0();
    if (!(v138 >> 62))
    {
      if (!*(&dword_10 + (v138 & 0xFFFFFFFFFFFFFF8)))
      {
        break;
      }

      goto LABEL_64;
    }

    v140 = v138;
    v141 = sub_76A860();
    v138 = v140;
    if (!v141)
    {
      break;
    }

LABEL_64:
    if ((v138 & 0xC000000000000001) != 0)
    {
      v139 = sub_76A770();
      goto LABEL_67;
    }

    if (*(&dword_10 + (v138 & 0xFFFFFFFFFFFFFF8)))
    {
      v139 = *(v138 + 32);

LABEL_67:

      goto LABEL_70;
    }

LABEL_75:
    __break(1u);
LABEL_76:
    swift_once();
  }

  v139 = 0;
LABEL_70:
  v142 = [v193 traitCollection];
  v143 = v159;
  sub_75BCC0();
  sub_1600F8(v132, v133, v73, v139, v142, v195, v143);

  v144 = *(v135 + 8);
  v145 = v192;
  v144(v143, v192);
  return v144(v166, v145);
}

uint64_t sub_22F090()
{
  v1 = OBJC_IVAR____TtC18ASMessagesProvider30AdvertsSearchResultContentView_impressionsCalculator;
  swift_beginAccess();
  if (*(v0 + v1))
  {

    sub_75F4E0();
  }

  *(v0 + v1) = 0;

  v2 = (v0 + OBJC_IVAR____TtC18ASMessagesProvider30AdvertsSearchResultContentView_impressionsUpdateBlock);
  swift_beginAccess();
  v3 = *v2;
  *v2 = 0;
  v2[1] = 0;
  sub_F704(v3);
  return sub_12F734();
}

id sub_22F150()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AdvertsSearchResultContentView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_22F2A8(void *a1)
{
  sub_2346A8();
}

uint64_t (*sub_22F2E0(uint64_t **a1))()
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
  v2[4] = sub_22B04C(v2);
  return sub_21028;
}

uint64_t sub_22F360(uint64_t a1, uint64_t a2)
{
  sub_23481C(a1, a2);

  return sub_F704(a1);
}

uint64_t (*sub_22F3A8(uint64_t *a1))()
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
  *(v2 + 32) = sub_22B374(v2);
  return sub_246E0;
}

uint64_t sub_22F460(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider30AdvertsSearchResultContentView_impressionsCalculator;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_22F524(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = (v3 + *a3);
  swift_beginAccess();
  v5 = *v4;
  sub_F714(*v4);
  return v5;
}

uint64_t sub_22F57C(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC18ASMessagesProvider30AdvertsSearchResultContentView_impressionsUpdateBlock);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return sub_F704(v6);
}

uint64_t sub_22F63C()
{
  type metadata accessor for SearchTagsRibbonView();
  sub_234E24(&qword_94AE40, 255, type metadata accessor for SearchTagsRibbonView);
  return sub_7633E0();
}

uint64_t sub_22F6E4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.getter(a1, WitnessTable);
}

uint64_t sub_22F738(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.setter(a1, a2, a3, WitnessTable);
}

uint64_t (*sub_22F7A4(uint64_t *a1))()
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
  *(v3 + 32) = sub_75DC50();
  return sub_246E0;
}

uint64_t sub_22F840(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider30AdvertsSearchResultContentView_lockupMediaView);
  v3 = [a1 superview];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  sub_BE70(0, &qword_93E550);
  v5 = v2;
  v6 = sub_76A1C0();

  return v6 & 1;
}

uint64_t sub_22F9FC(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = sub_234E24(&qword_94AE18, a2, type metadata accessor for AdvertsSearchResultContentView);
  result = sub_234E24(&unk_94AE20, v3, type metadata accessor for AdvertsSearchResultContentView);
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_22FA80(unint64_t a1)
{
  v2 = sub_BD88(&unk_94DF00);
  __chkstk_darwin(v2 - 8);
  v4 = &v165 - v3;
  v5 = sub_75C930();
  v193 = *(v5 - 8);
  __chkstk_darwin(v5);
  v188 = &v165 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v165 - v8;
  __chkstk_darwin(v10);
  v12 = &v165 - v11;
  v13 = sub_BD88(&unk_948720);
  __chkstk_darwin(v13 - 8);
  v15 = &v165 - v14;
  v16 = sub_BD88(&unk_93F5A0);
  v190 = *(v16 - 8);
  v191 = v16;
  __chkstk_darwin(v16);
  v189 = &v165 - v17;
  v18 = sub_760840();
  v206 = *(v18 - 8);
  v207 = v18;
  __chkstk_darwin(v18);
  v205 = &v165 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v211 = sub_760D90();
  *&v210 = *(v211 - 1);
  __chkstk_darwin(v211);
  v195 = &v165 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_762D10();
  v202 = *(v21 - 8);
  v203 = v21;
  __chkstk_darwin(v21);
  v201 = &v165 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_75D850();
  v215 = *(v23 - 8);
  v216 = v23;
  __chkstk_darwin(v23);
  v25 = &v165 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v214 = &v165 - v27;
  v218 = sub_760820();
  v213 = *(v218 - 8);
  __chkstk_darwin(v218);
  v204 = &v165 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v220 = &v165 - v30;
  v31 = sub_BD88(&unk_94AE30);
  __chkstk_darwin(v31 - 8);
  v194 = &v165 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v217 = &v165 - v34;
  v35 = sub_75DAB0();
  __chkstk_darwin(v35 - 8);
  v37 = &v165 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_7656C0();
  v199 = *(v38 - 8);
  v200 = v38;
  __chkstk_darwin(v38);
  v212 = &v165 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_760770();
  v208 = *(v40 - 8);
  v209 = v40;
  __chkstk_darwin(v40);
  v219 = &v165 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_75DDB0();
  sub_234E24(&qword_945260, 255, &type metadata accessor for AdvertsSearchResult);
  result = sub_75C750();
  if (!v257[0])
  {
    return result;
  }

  v196 = v257[0];
  v43 = sub_75DDA0();
  if (!(v43 >> 62))
  {
    if (*(&dword_10 + (v43 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_4;
    }

LABEL_51:
  }

  v109 = v43;
  v110 = sub_76A860();
  v43 = v109;
  if (!v110)
  {
    goto LABEL_51;
  }

LABEL_4:
  v166 = v4;
  if ((v43 & 0xC000000000000001) != 0)
  {
    v44 = sub_76A770();
LABEL_7:
    v171 = v15;

    sub_75BCC0();
    sub_75C720();
    if (qword_93D050 != -1)
    {
      swift_once();
    }

    sub_765660();
    sub_765630();

    v45 = sub_764EF0();
    v177 = v46;
    v178 = v45;
    v47 = sub_764F70();
    v179 = v48;
    v180 = v47;
    v49 = sub_764E90();
    v197 = v44;

    if (v49)
    {
      v50 = sub_75E5C0();

      v51 = v210;
      if (v50)
      {
        v52 = sub_765720();
        v181 = v53;
        v182 = v52;
      }

      else
      {
        v181 = 0;
        v182 = 0;
      }

      v54 = v211;
    }

    else
    {
      v181 = 0;
      v182 = 0;
      v54 = v211;
      v51 = v210;
    }

    v198 = sub_75BC90();
    (*(v51 + 56))(v217, 1, 1, v54);
    v55 = sub_75BCB0();
    v169 = sub_75BCD0();
    swift_getKeyPath();
    sub_75C7B0();

    v4 = v257[5];
    if (qword_93C3F8 != -1)
    {
      swift_once();
    }

    v56 = v218;
    v57 = sub_BE38(v218, qword_99B150);
    v58 = v213 + 16;
    v183 = *(v213 + 16);
    v183(v220, v57, v56);
    v59 = sub_769A00();
    v170 = v5;
    v186 = a1;
    v167 = v9;
    v168 = v12;
    v192 = v55;
    v184 = v58;
    if ((v59 & 1) == 0)
    {
      if (qword_93C448 != -1)
      {
        swift_once();
      }

      v60 = qword_946938;
      goto LABEL_24;
    }

    if (qword_93C440 != -1)
    {
      goto LABEL_69;
    }

    while (1)
    {
      v60 = qword_946920;
LABEL_24:
      v61 = v216;
      v62 = sub_BE38(v216, v60);
      v63 = v215;
      (*(v215 + 16))(v25, v62, v61);
      (*(v63 + 32))(v214, v25, v61);
      v64 = [v4 preferredContentSizeCategory];
      sub_769B20();

      sub_75D800();
      sub_75D830();
      sub_760810();
      sub_760800();
      v176 = sub_7670D0();
      swift_allocObject();
      v185 = sub_7670B0();
      v65 = objc_opt_self();
      v174 = v65;
      v66 = [v65 preferredFontForTextStyle:UIFontTextStyleBody];
      v187 = v4;
      v67 = sub_7653B0();
      v257[3] = v67;
      v68 = sub_234E24(&qword_93F9B0, 255, &type metadata accessor for Feature);
      v257[4] = v68;
      v173 = v68;
      v69 = sub_B1B4(v257);
      v70 = enum case for Feature.measurement_with_labelplaceholder(_:);
      v71 = *(v67 - 8);
      v72 = *(v71 + 104);
      v175 = v71 + 104;
      v172 = enum case for Feature.measurement_with_labelplaceholder(_:);
      v72(v69, enum case for Feature.measurement_with_labelplaceholder(_:), v67);
      sub_765C30();
      sub_BEB8(v257);
      v73 = v201;
      sub_762D00();
      sub_762CE0();
      v74 = v203;
      v202 = *(v202 + 8);
      (v202)(v73, v203);
      v75 = [v65 preferredFontForTextStyle:UIFontTextStyleFootnote];
      v256[3] = v67;
      v256[4] = v68;
      v76 = sub_B1B4(v256);
      v72(v76, v70, v67);
      sub_765C30();
      sub_BEB8(v256);
      sub_762D00();
      sub_762CE0();
      v77 = v202;
      (v202)(v73, v74);
      v78 = [v174 preferredFontForTextStyle:UIFontTextStyleFootnote];
      v255[3] = v67;
      v255[4] = v173;
      v79 = sub_B1B4(v255);
      v72(v79, v172, v67);
      sub_765C30();
      sub_BEB8(v255);
      sub_762D00();
      sub_762CE0();
      v77(v73, v74);
      v80 = v198;
      LODWORD(v203) = sub_246DC(0, v198) & (v80 != 0);
      if (v203 == 1)
      {
        v81 = v176;
        v82 = objc_allocWithZone(sub_7671D0());
        v83 = v187;
        v84 = sub_7671C0();
        v85 = v194;
        sub_1ED18(v217, v194, &unk_94AE30);
        v86 = v210;
        v87 = *(v210 + 48);
        v88 = v211;
        v89 = v87(v85, 1, v211);
        v90 = v183;
        if (v89 == 1)
        {
          v91 = v195;
          _s18ASMessagesProvider18MetadataRibbonViewC7metrics11AppStoreKit0cdE6LayoutV7MetricsVvpfi_0();
          if (v87(v85, 1, v88) != 1)
          {
            sub_10A2C(v85, &unk_94AE30);
          }
        }

        else
        {
          v91 = v195;
          (*(v86 + 32))(v195, v85, v88);
        }

        v95 = v84;
        sub_2185C(v198, v91, v95);

        (*(v86 + 8))(v91, v88);
        v92 = v81;
        swift_allocObject();
        v93 = sub_7670A0();
        v94 = v187;
      }

      else
      {
        v92 = v176;
        swift_allocObject();
        v93 = sub_7670B0();
        v94 = v187;
        v90 = v183;
      }

      v96 = v192;
      if ((sub_246DC(v192, 0) & (v96 != 0)) == 1)
      {
        sub_F7FC(v96, v169 & 1);
        swift_allocObject();
        v97 = sub_7670A0();
      }

      else
      {
        swift_allocObject();
        v97 = sub_7670B0();
      }

      v98 = v97;
      v90(v204, v220, v218);
      v254 = &protocol witness table for LayoutViewPlaceholder;
      v253 = v92;
      v9 = v185;
      v252 = v185;
      v251 = 0;
      *&v249[40] = 0u;
      v250 = 0u;
      sub_134D8(v257, v249);
      sub_134D8(v256, &v248);
      v247 = 0;
      v245 = 0u;
      v246 = 0u;
      v244 = 0;
      v242 = 0u;
      v243 = 0u;

      v99 = sub_7670C0();
      v241 = &protocol witness table for LayoutViewPlaceholder;
      v240 = v92;
      v239 = v99;
      v238 = 0;
      v236 = 0u;
      v237 = 0u;
      v235 = 0;
      v233 = 0u;
      v234 = 0u;
      v232 = 0;
      v230 = 0u;
      v231 = 0u;
      v229 = 0;
      v228 = 0u;
      *&v227[40] = 0u;
      sub_134D8(v255, v227);
      v226 = &protocol witness table for LayoutViewPlaceholder;
      v225 = v92;
      v223 = &protocol witness table for LayoutViewPlaceholder;
      v224 = v93;
      v222 = v92;
      v221 = v98;
      v100 = v205;
      sub_760830();
      v101 = sub_7671D0();
      sub_BD88(&unk_93F5C0);
      v102 = swift_allocObject();
      v210 = xmmword_77D9F0;
      *(v102 + 16) = xmmword_77D9F0;
      *(v102 + 32) = v94;
      v103 = v94;
      v211 = v101;
      v104 = sub_7671E0();
      sub_234E24(&qword_945FA0, 255, &type metadata accessor for SmallSearchLockupLayout);
      v25 = v207;
      sub_7665A0();

      (*(v206 + 8))(v100, v25);
      sub_BEB8(v255);
      sub_BEB8(v256);
      sub_BEB8(v257);
      (*(v215 + 8))(v214, v216);
      (*(v213 + 8))(v220, v218);
      sub_10A2C(v217, &unk_94AE30);
      v105 = sub_75BC70();
      if (v105 >> 62)
      {
        v37 = sub_76A860();
      }

      else
      {
        v37 = *(&dword_10 + (v105 & 0xFFFFFFFFFFFFFF8));
      }

      a1 = sub_75BCA0();
      if (a1)
      {
      }

      v4 = sub_75BC80();
      if (v4)
      {
      }

      v106 = sub_75BCF0();
      if (v106 >> 62)
      {
        v111 = v106;
        v112 = sub_76A860();
        v106 = v111;
        if (!v112)
        {
LABEL_55:

          v108 = a1 | v37;
          goto LABEL_56;
        }
      }

      else if (!*(&dword_10 + (v106 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_55;
      }

      if ((v106 & 0xC000000000000001) != 0)
      {
        goto LABEL_66;
      }

      if (*(&dword_10 + (v106 & 0xFFFFFFFFFFFFFF8)))
      {

        goto LABEL_45;
      }

      __break(1u);
LABEL_69:
      swift_once();
    }
  }

  if (*(&dword_10 + (v43 & 0xFFFFFFFFFFFFFF8)))
  {
    v44 = *(v43 + 32);

    goto LABEL_7;
  }

  __break(1u);
LABEL_66:
  sub_76A770();
LABEL_45:

  v107 = sub_765750();

  if (v107 >> 62)
  {
    v108 = sub_76A860();
  }

  else
  {
    v108 = *(&dword_10 + (v107 & 0xFFFFFFFFFFFFFF8));
  }

  if (a1 | v37)
  {
    if ((sub_760760() & 1) == 0)
    {
LABEL_64:

      (*(v199 + 8))(v212, v200);
      return (*(v208 + 8))(v219, v209);
    }
  }

  else
  {
LABEL_56:
    if ((sub_760760() & 1) == 0 || !(v108 | v4))
    {
      goto LABEL_64;
    }
  }

  v113 = v189;
  sub_763F60();
  swift_getKeyPath();
  sub_75C7B0();

  v114 = v257[0];
  v115 = swift_allocObject();
  *(v115 + 16) = v210;
  *(v115 + 32) = v114;
  v116 = v114;
  v117 = sub_7671E0();
  sub_24128();
  v118 = v191;
  sub_7666E0();

  (*(v190 + 8))(v113, v118);
  v119 = sub_75BCA0();
  v120 = sub_75BC80();
  v121 = sub_75BC70();
  if (v121 >> 62)
  {
    v124 = v121;
    v125 = sub_76A860();
    v121 = v124;
    v122 = v171;
    if (v125)
    {
      goto LABEL_60;
    }

LABEL_71:

    v123 = 0;
    goto LABEL_72;
  }

  v122 = v171;
  if (!*(&dword_10 + (v121 & 0xFFFFFFFFFFFFFF8)))
  {
    goto LABEL_71;
  }

LABEL_60:
  if ((v121 & 0xC000000000000001) != 0)
  {
    v123 = sub_76A770();
  }

  else
  {
    if (!*(&dword_10 + (v121 & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
      goto LABEL_107;
    }

    v123 = *(v121 + 32);
  }

LABEL_72:
  v126 = sub_75BCF0();
  if (v126 >> 62)
  {
    v130 = v126;
    v127 = sub_76A860();
    v126 = v130;
  }

  else
  {
    v127 = *(&dword_10 + (v126 & 0xFFFFFFFFFFFFFF8));
  }

  v220 = v119;
  v217 = v120;
  v218 = v123;
  if (v127)
  {
    if ((v126 & 0xC000000000000001) != 0)
    {
      v216 = sub_76A770();
    }

    else
    {
      if (!*(&dword_10 + (v126 & 0xFFFFFFFFFFFFFF8)))
      {
        __break(1u);
        goto LABEL_109;
      }

      v216 = *(v126 + 32);
    }
  }

  else
  {

    v216 = 0;
  }

  v128 = ASKDeviceTypeGetCurrent();
  swift_getKeyPath();
  sub_75C7B0();

  v120 = v257[0];
  sub_3B9960(v122);

  v9 = sub_75BCA0();
  v119 = sub_75BC80();
  v129 = sub_75BC70();
  if (v129 >> 62)
  {
    v131 = v129;
    v132 = sub_76A860();
    v129 = v131;
    if (v132)
    {
LABEL_82:
      if ((v129 & 0xC000000000000001) == 0)
      {
        if (!*(&dword_10 + (v129 & 0xFFFFFFFFFFFFFF8)))
        {
          __break(1u);
          goto LABEL_111;
        }

        a1 = *(v129 + 32);

        goto LABEL_85;
      }

LABEL_107:
      a1 = sub_76A770();
LABEL_85:

      goto LABEL_89;
    }
  }

  else if (*(&dword_10 + (v129 & 0xFFFFFFFFFFFFFF8)))
  {
    goto LABEL_82;
  }

  a1 = 0;
LABEL_89:
  v133 = sub_75BCF0();
  if (v133 >> 62)
  {
    v135 = v133;
    v136 = sub_76A860();
    v133 = v135;
    if (v136)
    {
LABEL_91:
      if ((v133 & 0xC000000000000001) == 0)
      {
        if (*(&dword_10 + (v133 & 0xFFFFFFFFFFFFFF8)))
        {
          v134 = *(v133 + 32);

LABEL_94:

          goto LABEL_97;
        }

LABEL_111:
        __break(1u);
LABEL_112:
        v215 = sub_76A860();
        if (a1)
        {
          goto LABEL_101;
        }

LABEL_113:
        v138 = 0;
        goto LABEL_114;
      }

LABEL_109:
      v134 = sub_76A770();
      goto LABEL_94;
    }
  }

  else if (*(&dword_10 + (v133 & 0xFFFFFFFFFFFFFF8)))
  {
    goto LABEL_91;
  }

  v134 = 0;
LABEL_97:
  if ((sub_760760() & 1) == 0)
  {

    v139 = v193;
    v140 = v168;
    (*(v193 + 104))(v168, enum case for LockupMediaLayout.DisplayType.none(_:), v170);
LABEL_136:
    type metadata accessor for LockupMediaView();
    v162 = sub_527DE4();
    swift_getObjectType();
    v163 = v219;
    v164 = v171;
    sub_161888(v220, v217, v218, v216, v171, v140, v162, v219);

    swift_unknownObjectRelease();

    (*(v139 + 8))(v140, v170);
    sub_10A2C(v164, &unk_948720);
    (*(v199 + 8))(v212, v200);
    return (*(v208 + 8))(v163, v209);
  }

  if (v119 | v9)
  {
    v141 = v167;
    sub_7666A0();

    v139 = v193;
    v142 = v170;
    (*(v193 + 104))(v141, enum case for LockupMediaLayout.DisplayType.singleItemFill(_:), v170);
    v140 = v168;
    (*(v139 + 32))(v168, v141, v142);
    goto LABEL_136;
  }

  v137 = sub_55BABC(a1, v134, 0, 1);
  v119 = v137;
  v120 = (v137 >> 62);
  if (v137 >> 62)
  {
    goto LABEL_112;
  }

  v215 = *(&dword_10 + (v137 & 0xFFFFFFFFFFFFFF8));
  if (!a1)
  {
    goto LABEL_113;
  }

LABEL_101:
  v138 = sub_759690();
LABEL_114:
  v143 = sub_55BE04(v138);

  LODWORD(v213) = v143;
  if (a1)
  {
    v144 = sub_759690();
  }

  else
  {
    v144 = 0;
  }

  v146 = v208;
  v145 = v209;
  v147 = v166;
  (*(v208 + 16))(v166, v219, v209);
  (*(v146 + 56))(v147, 0, 1, v145);
  v148 = sub_55C32C(v144, v147);

  sub_10A2C(v147, &unk_94DF00);
  if (v120)
  {
    result = sub_76A860();
  }

  else
  {
    result = *(&dword_10 + (v119 & 0xFFFFFFFFFFFFFF8));
  }

  v149 = v188;
  if (!result)
  {

    goto LABEL_127;
  }

  if ((v119 & 0xC000000000000001) != 0)
  {
    sub_76A770();
LABEL_124:

    v150 = sub_765150();

    if (v150)
    {

      v139 = v193;
      v151 = v167;
      v152 = v170;
      (*(v193 + 104))(v167, enum case for LockupMediaLayout.DisplayType.landscape(_:), v170);
LABEL_135:
      v140 = v168;
      (*(v139 + 32))(v168, v151, v152);
      goto LABEL_136;
    }

LABEL_127:
    v153 = enum case for LockupMediaLayout.DisplayType.fourUp(_:);
    v154 = v193;
    v152 = v170;
    v214 = *(v193 + 104);
    (v214)(v149, enum case for LockupMediaLayout.DisplayType.fourUp(_:), v170);
    v155 = sub_75C920();
    v211 = *(v154 + 8);
    (v211)(v149, v152);
    if (((v215 >= v155) & v148) != 0 || (v153 = enum case for LockupMediaLayout.DisplayType.threeUp(_:), (v214)(v149, enum case for LockupMediaLayout.DisplayType.threeUp(_:), v152), v156 = sub_75C920(), v157 = v211, (v211)(v149, v152), ((v215 >= v156) & v213) != 0) || (v153 = enum case for LockupMediaLayout.DisplayType.twoUp(_:), (v214)(v149, enum case for LockupMediaLayout.DisplayType.twoUp(_:), v152), v158 = sub_75C920(), v157(v149, v152), v215 >= v158))
    {
    }

    else
    {
      v153 = enum case for LockupMediaLayout.DisplayType.oneUp(_:);
      (v214)(v149, enum case for LockupMediaLayout.DisplayType.oneUp(_:), v152);
      v159 = sub_75C920();

      v157(v149, v152);
      if (v215 != v159)
      {
        v160 = enum case for LockupMediaLayout.DisplayType.none(_:);
        v151 = v167;
        v161 = v167;
LABEL_134:
        (v214)(v161, v160, v152);
        v139 = v193;
        goto LABEL_135;
      }
    }

    v151 = v167;
    v161 = v167;
    v160 = v153;
    goto LABEL_134;
  }

  if (*(&dword_10 + (v119 & 0xFFFFFFFFFFFFFF8)))
  {

    goto LABEL_124;
  }

  __break(1u);
  return result;
}

void *sub_231844(void (**a1)(uint64_t, uint64_t), uint64_t a2)
{
  v250 = a2;
  v343 = sub_758720();
  v3 = *(v343 - 8);
  __chkstk_darwin(v343);
  v297 = &v240 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v315 = &v240 - v6;
  __chkstk_darwin(v7);
  v314 = &v240 - v8;
  __chkstk_darwin(v9);
  v313 = &v240 - v10;
  v318 = type metadata accessor for ScreenshotDisplayConfiguration();
  __chkstk_darwin(v318);
  v317 = &v240 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_BD88(&unk_94DF00);
  __chkstk_darwin(v12 - 8);
  v252 = &v240 - v13;
  v319 = sub_766690();
  v352 = *(v319 - 8);
  __chkstk_darwin(v319);
  v278 = &v240 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v279 = &v240 - v16;
  v276 = sub_75C9A0();
  v351 = *(v276 - 8);
  __chkstk_darwin(v276);
  v316 = &v240 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_BD88(&unk_948720);
  __chkstk_darwin(v18 - 8);
  v277 = &v240 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v333 = &v240 - v21;
  v337 = sub_75C930();
  v22 = *(v337 - 8);
  __chkstk_darwin(v337);
  v340 = (&v240 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v24);
  v258 = &v240 - v25;
  __chkstk_darwin(v26);
  v307 = &v240 - v27;
  __chkstk_darwin(v28);
  v259 = &v240 - v29;
  __chkstk_darwin(v30);
  v345 = &v240 - v31;
  v286 = sub_BD88(&unk_93F5A0);
  v350 = *(v286 - 8);
  __chkstk_darwin(v286);
  v285 = &v240 - v32;
  v284 = sub_760840();
  v349 = *(v284 - 8);
  __chkstk_darwin(v284);
  v283 = &v240 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v299 = sub_760D90();
  v34 = *(v299 - 8);
  __chkstk_darwin(v299);
  v261 = &v240 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v310 = sub_762D10();
  v348 = *(v310 - 8);
  __chkstk_darwin(v310);
  v282 = &v240 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v309 = sub_75D850();
  v37 = *(v309 - 8);
  __chkstk_darwin(v309);
  v281 = &v240 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39);
  v308 = &v240 - v40;
  v334 = sub_760820();
  v41 = *(v334 - 8);
  __chkstk_darwin(v334);
  v280 = &v240 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v43);
  v342 = &v240 - v44;
  v45 = sub_BD88(&unk_94AE30);
  __chkstk_darwin(v45 - 8);
  v260 = &v240 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v47);
  v320 = &v240 - v48;
  v292 = sub_760770();
  v49 = *(v292 - 8);
  __chkstk_darwin(v292);
  v298 = &v240 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_75DAB0();
  __chkstk_darwin(v51 - 8);
  v52 = sub_7656C0();
  v248 = *(v52 - 8);
  v249 = v52;
  __chkstk_darwin(v52);
  v253 = &v240 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_75DDB0();
  sub_234E24(&qword_945260, 255, &type metadata accessor for AdvertsSearchResult);
  result = sub_75C750();
  if (!v390[0])
  {
    return result;
  }

  v347 = v3;
  v251 = v390[0];
  v394 = _swiftEmptyArrayStorage;
  sub_75C720();
  if (qword_93D050 != -1)
  {
    goto LABEL_210;
  }

LABEL_3:

  sub_765660();
  sub_765560();
  v56 = v55;
  v346 = a1;
  sub_22FA80(a1);
  v58 = v57;
  v59 = sub_75DDA0();
  v60 = v59;
  if (!(v59 >> 62))
  {
    v287 = *(&dword_10 + (v59 & 0xFFFFFFFFFFFFFF8));
    if (!v287)
    {
      goto LABEL_212;
    }

    goto LABEL_5;
  }

  v287 = sub_76A860();
  if (v287)
  {
LABEL_5:
    v304 = v41 + 2;
    v274 = (v37 + 16);
    v275 = (v34 + 56);
    v273 = (v37 + 32);
    v272 = UIFontTextStyleBody;
    v271 = (v348 + 8);
    v303 = enum case for Feature.measurement_with_labelplaceholder(_:);
    v247 = (v34 + 32);
    v255 = (v34 + 8);
    v256 = (v34 + 48);
    v269 = (v349 + 1);
    v270 = UIFontTextStyleFootnote;
    v267 = (v41 + 1);
    v268 = (v37 + 8);
    v266 = v350 + 1;
    v257 = enum case for LockupMediaLayout.DisplayType.none(_:);
    v290 = (v22 + 104);
    v254 = (v22 + 32);
    v245 = (v49 + 56);
    v246 = (v49 + 16);
    v341 = (v22 + 8);
    v339 = (v22 + 16);
    v263 = (v352 + 8);
    v264 = (v352 + 56);
    v262 = (v351 + 8);
    v328 = (v22 + 88);
    left = UIEdgeInsetsZero.left;
    top = UIEdgeInsetsZero.top;
    bottom = UIEdgeInsetsZero.bottom;
    right = UIEdgeInsetsZero.right;
    v294 = bottom;
    v302 = xmmword_77D9F0;
    v349 = (v347 + 88);
    v329 = (v347 + 8);
    v332 = enum case for LockupMediaLayout.DisplayType.singleItemFill(_:);
    a1 = (v49 + 8);
    v49 = 0;
    v291 = enum case for LockupMediaLayout.DisplayType.landscape(_:);
    v244 = enum case for LockupMediaLayout.DisplayType.fourUp(_:);
    v242 = enum case for LockupMediaLayout.DisplayType.twoUp(_:);
    v241 = enum case for LockupMediaLayout.DisplayType.oneUp(_:);
    LODWORD(v348) = enum case for AppPlatform.watch(_:);
    v335 = v60 & 0xC000000000000001;
    v288 = v60 + 32;
    v289 = v60 & 0xFFFFFFFFFFFFFF8;
    v22 = v298;
    v34 = v299;
    v62 = v292;
    v312 = v56;
    v311 = v58;
    v306 = v60;
    v37 = v287;
    v265 = a1;
    v243 = enum case for LockupMediaLayout.DisplayType.threeUp(_:);
    while (1)
    {
      if (v335)
      {
        v41 = sub_76A770();
        v63 = __OFADD__(v49++, 1);
        if (v63)
        {
          goto LABEL_202;
        }
      }

      else
      {
        if (v49 >= *(v289 + 16))
        {
          goto LABEL_203;
        }

        v41 = *(v288 + 8 * v49);

        v63 = __OFADD__(v49++, 1);
        if (v63)
        {
LABEL_202:
          __break(1u);
LABEL_203:
          __break(1u);
LABEL_204:
          __break(1u);
LABEL_205:
          __break(1u);
LABEL_206:
          __break(1u);
LABEL_207:
          __break(1u);
LABEL_208:
          __break(1u);
LABEL_209:
          __break(1u);
LABEL_210:
          swift_once();
          goto LABEL_3;
        }
      }

      v64 = sub_764EE0();
      v353 = v41;
      if (v64)
      {
        if (qword_93C668 != -1)
        {
          swift_once();
        }

        v65 = sub_75CF00();
        sub_BE38(v65, qword_99B898);
        sub_75CDD0();
        sub_765330();
        sub_769440();
        if (*(&dword_10 + (v394 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v394 & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          sub_7694C0();
          a1 = v265;
        }

        sub_769500();
      }

      v66 = sub_75BC90();
      swift_getKeyPath();
      sub_75C7B0();

      v67 = v390[0];
      v68 = sub_1BA624(v66, v390[0]);

      v69 = v68;
      v41 = v353;
      sub_10A0E4(v69);
      sub_75BCC0();
      v70 = sub_75BC70();
      if (v70 >> 62)
      {
        v136 = sub_76A860();

        if (!v136)
        {
          goto LABEL_6;
        }
      }

      else
      {
        v71 = *(&dword_10 + (v70 & 0xFFFFFFFFFFFFFF8));

        if (!v71)
        {
          goto LABEL_6;
        }
      }

      if (sub_760760())
      {
        v72 = v34;
        v73 = sub_764EF0();
        v75 = v74;
        v76 = sub_764F70();
        v78 = v77;
        v79 = sub_764E90();

        v331 = v76;
        v330 = v78;
        v327 = v75;
        v324 = v73;
        if (v79 && (v80 = sub_75E5C0(), , v80))
        {
          v338 = sub_765720();
          v336 = v81;
        }

        else
        {
          v338 = 0;
          v336 = 0;
        }

        v352 = sub_75BC90();
        v351 = sub_75BCB0();
        v322 = sub_75BCD0();
        swift_getKeyPath();
        sub_75C7B0();

        v82 = v393;
        (*v275)(v320, 1, 1, v72);
        if (qword_93C3F8 != -1)
        {
          swift_once();
        }

        v83 = v334;
        v84 = sub_BE38(v334, qword_99B150);
        v344 = *v304;
        (v344)(v342, v84, v83);
        v85 = sub_769A00();
        v301 = v49;
        if (v85)
        {
          v86 = qword_946920;
          if (qword_93C440 != -1)
          {
            swift_once();
            v86 = qword_946920;
          }
        }

        else
        {
          v86 = qword_946938;
          if (qword_93C448 != -1)
          {
            swift_once();
            v86 = qword_946938;
          }
        }

        v87 = v309;
        v88 = sub_BE38(v309, v86);
        v89 = v281;
        (*v274)(v281, v88, v87);
        (*v273)(v308, v89, v87);
        v90 = [v82 preferredContentSizeCategory];
        sub_769B20();

        sub_75D800();
        sub_75D830();
        sub_760810();
        sub_760800();
        v326 = sub_7670D0();
        swift_allocObject();
        v347 = sub_7670B0();
        v91 = objc_opt_self();
        v325 = v82;
        v92 = v91;
        v323 = v91;
        v93 = [v91 preferredFontForTextStyle:v272];
        v94 = sub_7653B0();
        v391 = v94;
        v350 = sub_234E24(&qword_93F9B0, 255, &type metadata accessor for Feature);
        v392 = v350;
        v95 = sub_B1B4(v390);
        v96 = *(*(v94 - 8) + 104);
        v97 = v303;
        v96(v95, v303, v94);
        sub_765C30();
        sub_BEB8(v390);
        v98 = v282;
        sub_762D00();
        sub_762CE0();
        v327 = *v271;
        v327(v98, v310);
        v99 = v270;
        v100 = [v92 preferredFontForTextStyle:v270];
        v389[3] = v94;
        v389[4] = v350;
        v101 = sub_B1B4(v389);
        v96(v101, v97, v94);
        sub_765C30();
        sub_BEB8(v389);
        sub_762D00();
        sub_762CE0();
        v102 = v310;
        v103 = v327;
        v327(v98, v310);
        v104 = [v323 preferredFontForTextStyle:v99];
        v388[3] = v94;
        v388[4] = v350;
        v105 = sub_B1B4(v388);
        v96(v105, v303, v94);
        sub_765C30();
        sub_BEB8(v388);
        sub_762D00();
        sub_762CE0();
        v103(v98, v102);
        v106 = v352;
        LODWORD(v350) = sub_246DC(0, v352) & (v106 != 0);
        if (v350 == 1)
        {
          v107 = v326;
          v108 = objc_allocWithZone(sub_7671D0());
          v109 = v325;
          v110 = v325;
          v111 = sub_7671C0();
          v112 = v260;
          sub_1ED18(v320, v260, &unk_94AE30);
          v113 = *v256;
          v114 = v299;
          if ((*v256)(v112, 1, v299) == 1)
          {
            v115 = v261;
            _s18ASMessagesProvider18MetadataRibbonViewC7metrics11AppStoreKit0cdE6LayoutV7MetricsVvpfi_0();
            if (v113(v112, 1, v114) != 1)
            {
              sub_10A2C(v112, &unk_94AE30);
            }
          }

          else
          {
            v115 = v261;
            (*v247)(v261, v112, v114);
          }

          v118 = v111;
          sub_2185C(v352, v115, v118);

          (*v255)(v115, v114);
          v116 = v107;
          swift_allocObject();
          v117 = sub_7670A0();
        }

        else
        {
          v116 = v326;
          swift_allocObject();
          v117 = sub_7670B0();
          v109 = v325;
        }

        v34 = v117;

        v119 = v351;
        if ((sub_246DC(v351, 0) & (v119 != 0)) == 1)
        {
          sub_F7FC(v119, v322 & 1);
          swift_allocObject();
          v120 = sub_7670A0();
        }

        else
        {
          swift_allocObject();
          v120 = sub_7670B0();
        }

        v121 = v120;
        (v344)(v280, v342, v334);
        v387 = &protocol witness table for LayoutViewPlaceholder;
        v386 = v116;
        v385 = v347;
        v384 = 0;
        *&v382[40] = 0u;
        v383 = 0u;
        sub_134D8(v390, v382);
        sub_134D8(v389, &v381);
        v380 = 0;
        v378 = 0u;
        v379 = 0u;
        v377 = 0;
        v375 = 0u;
        v376 = 0u;

        v122 = sub_7670C0();
        v374 = &protocol witness table for LayoutViewPlaceholder;
        v373 = v116;
        v372 = v122;
        v371 = 0;
        v369 = 0u;
        v370 = 0u;
        v368 = 0;
        v366 = 0u;
        v367 = 0u;
        v365 = 0;
        v363 = 0u;
        v364 = 0u;
        v362 = 0;
        v361 = 0u;
        *&v360[40] = 0u;
        sub_134D8(v388, v360);
        v359 = &protocol witness table for LayoutViewPlaceholder;
        v358 = v116;
        v357 = v34;
        v356 = &protocol witness table for LayoutViewPlaceholder;
        v355 = v116;
        v354 = v121;
        v123 = v283;
        sub_760830();
        v350 = sub_7671D0();
        sub_BD88(&unk_93F5C0);
        v124 = swift_allocObject();
        *(v124 + 16) = v302;
        *(v124 + 32) = v109;
        v125 = v109;
        v126 = sub_7671E0();
        sub_234E24(&qword_945FA0, 255, &type metadata accessor for SmallSearchLockupLayout);
        v127 = v284;
        sub_7665A0();

        (*v269)(v123, v127);
        sub_BEB8(v388);
        sub_BEB8(v389);
        sub_BEB8(v390);
        (*v268)(v308, v309);
        (*v267)(v342, v334);
        sub_10A2C(v320, &unk_94AE30);
        v128 = v285;
        sub_763F60();
        v129 = swift_allocObject();
        *(v129 + 16) = v302;
        *(v129 + 32) = v125;
        v130 = v125;
        v131 = sub_7671E0();
        sub_24128();
        v49 = v286;
        sub_7666E0();

        (*v266)(v128, v49);
        v41 = sub_75BCA0();
        v344 = sub_75BC80();
        v132 = sub_75BC70();
        if (v132 >> 62)
        {
          v137 = v132;
          v133 = sub_76A860();
          v132 = v137;
        }

        else
        {
          v133 = *(&dword_10 + (v132 & 0xFFFFFFFFFFFFFF8));
        }

        v37 = v337;
        a1 = v340;
        v134 = v345;
        v22 = v298;
        if (v133)
        {
          if ((v132 & 0xC000000000000001) != 0)
          {
            v350 = sub_76A770();
          }

          else
          {
            if (!*(&dword_10 + (v132 & 0xFFFFFFFFFFFFFF8)))
            {
              goto LABEL_205;
            }

            v350 = *(v132 + 32);
          }
        }

        else
        {

          v350 = 0;
        }

        v135 = sub_75BCF0();
        if (v135 >> 62)
        {
          v138 = v135;
          v139 = sub_76A860();
          v135 = v138;
          if (!v139)
          {
            goto LABEL_62;
          }

LABEL_54:
          if ((v135 & 0xC000000000000001) != 0)
          {
            v351 = sub_76A770();
          }

          else
          {
            if (!*(&dword_10 + (v135 & 0xFFFFFFFFFFFFFF8)))
            {
              goto LABEL_206;
            }

            v351 = *(v135 + 32);
          }
        }

        else
        {
          if (*(&dword_10 + (v135 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_54;
          }

LABEL_62:

          v351 = 0;
        }

        v140 = sub_75BCA0();
        v34 = sub_75BC80();
        v141 = sub_75BC70();
        if (v141 >> 62)
        {
          v143 = v141;
          v144 = sub_76A860();
          v141 = v143;
          v336 = v41;
          if (!v144)
          {
            goto LABEL_70;
          }

LABEL_65:
          if ((v141 & 0xC000000000000001) != 0)
          {
            v41 = sub_76A770();
          }

          else
          {
            if (!*(&dword_10 + (v141 & 0xFFFFFFFFFFFFFF8)))
            {
              goto LABEL_207;
            }

            v41 = *(v141 + 32);
          }
        }

        else
        {
          v142 = *(&dword_10 + (v141 & 0xFFFFFFFFFFFFFF8));
          v336 = v41;
          if (v142)
          {
            goto LABEL_65;
          }

LABEL_70:

          v41 = 0;
        }

        v145 = sub_75BCF0();
        if (v145 >> 62)
        {
          v147 = v145;
          v148 = sub_76A860();
          v145 = v147;
          if (!v148)
          {
            goto LABEL_78;
          }

LABEL_73:
          if ((v145 & 0xC000000000000001) != 0)
          {
            v146 = sub_76A770();
          }

          else
          {
            if (!*(&dword_10 + (v145 & 0xFFFFFFFFFFFFFF8)))
            {
              goto LABEL_208;
            }

            v146 = *(v145 + 32);
          }
        }

        else
        {
          if (*(&dword_10 + (v145 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_73;
          }

LABEL_78:

          v146 = 0;
        }

        if (sub_760760())
        {
          if (!(v34 | v140))
          {
            v149 = sub_55BABC(v41, v146, 0, 1);
            v150 = v149;
            v151 = v149 >> 62;
            if (v149 >> 62)
            {
              v352 = sub_76A860();
              if (!v41)
              {
                goto LABEL_92;
              }

LABEL_83:
              v152 = sub_759690();
            }

            else
            {
              v352 = *(&dword_10 + (v149 & 0xFFFFFFFFFFFFFF8));
              if (v41)
              {
                goto LABEL_83;
              }

LABEL_92:
              v152 = 0;
            }

            v154 = sub_55BE04(v152);

            if (v41)
            {
              v155 = sub_759690();
            }

            else
            {
              v155 = 0;
            }

            v156 = v252;
            v157 = v292;
            (*v246)(v252, v22, v292);
            (*v245)(v156, 0, 1, v157);
            v158 = sub_55C32C(v155, v156);

            sub_10A2C(v156, &unk_94DF00);
            if (v151)
            {
              result = sub_76A860();
            }

            else
            {
              result = *(&dword_10 + (v150 & 0xFFFFFFFFFFFFFF8));
            }

            v37 = v337;
            v34 = v258;
            a1 = v340;
            if (result)
            {
              if ((v150 & 0xC000000000000001) == 0)
              {
                if (*(&dword_10 + (v150 & 0xFFFFFFFFFFFFFF8)))
                {

                  goto LABEL_103;
                }

                __break(1u);
LABEL_216:
                __break(1u);
                return result;
              }

              sub_76A770();
LABEL_103:

              v159 = sub_765150();

              v34 = v258;
              if (v159)
              {

                v160 = v259;
                (*v290)(v259, v291, v37);
                v41 = v279;
                v22 = v298;
                goto LABEL_116;
              }
            }

            else
            {
            }

            LODWORD(v338) = v154;
            v161 = v244;
            v347 = *v290;
            (v347)(v34, v244, v37);
            v162 = sub_75C920();
            v163 = *v341;
            (*v341)(v34, v37);
            if (((v352 >= v162) & v158) != 0)
            {

              v160 = v259;
              (v347)(v259, v161, v37);
              v41 = v279;
              a1 = v340;
              v22 = v298;
              goto LABEL_116;
            }

            (v347)(v34, v243, v37);
            v164 = sub_75C920();
            v165 = v163;
            v163(v34, v37);
            v22 = v298;
            if (((v352 >= v164) & v338) == 0)
            {
              v168 = v242;
              (v347)(v34, v242, v37);
              v169 = sub_75C920();
              v165(v34, v37);
              if (v352 >= v169)
              {
              }

              else
              {
                v168 = v241;
                (v347)(v34, v241, v37);
                v170 = sub_75C920();

                v165(v34, v37);
                if (v352 != v170)
                {
                  v160 = v259;
                  v166 = v259;
                  v167 = v257;
                  goto LABEL_115;
                }
              }

              v160 = v259;
              v166 = v259;
              v167 = v168;
              goto LABEL_115;
            }

            v160 = v259;
            v166 = v259;
            v167 = v243;
LABEL_115:
            (v347)(v166, v167, v37);
            v41 = v279;
            a1 = v340;
LABEL_116:
            v49 = v301;
            v134 = v345;
            (*v254)(v345, v160, v37);
LABEL_117:
            v171 = sub_527DE4();
            (*v264)(v333, 1, 1, v319);
            v300 = v171;
            v305 = [v171 traitCollection];
            v392 = &protocol witness table for CGFloat;
            v391 = &type metadata for CGFloat;
            v390[0] = 0x4021000000000000;
            sub_134D8(v390, v389);
            v338 = *v339;
            v338(v307, v134, v37);
            if (v344 | v336)
            {
              goto LABEL_127;
            }

            v172 = sub_55BABC(v350, v351, 0, 1);
            if (v172 >> 62)
            {
              v173 = v172;
              v174 = sub_76A860();
              v172 = v173;
              if (!v174)
              {
                goto LABEL_126;
              }

LABEL_120:
              if ((v172 & 0xC000000000000001) != 0)
              {
                sub_76A770();
              }

              else
              {
                if (!*(&dword_10 + (v172 & 0xFFFFFFFFFFFFFF8)))
                {
                  goto LABEL_209;
                }
              }

              sub_765260();
              sub_7666A0();
            }

            else
            {
              if (*(&dword_10 + (v172 & 0xFFFFFFFFFFFFFF8)))
              {
                goto LABEL_120;
              }

LABEL_126:

LABEL_127:
              sub_7666A0();
            }

            sub_1ED18(v333, v277, &unk_948720);
            sub_75C970();
            sub_BEB8(v390);
            v175 = v278;
            sub_75C980();
            sub_766660();
            (*v263)(v175, v319);
            if (v344)
            {

              sub_764BC0();
              v176 = sub_765330();
              v41 = sub_7B220(0, 1, 1, _swiftEmptyArrayStorage);
              v178 = v41[2];
              v177 = v41[3];
              if (v178 >= v177 >> 1)
              {
                v41 = sub_7B220((v177 > 1), v178 + 1, 1, v41);
              }

              (*v262)(v316, v276);
              sub_10A2C(v333, &unk_948720);
              v41[2] = v178 + 1;
              v179 = &v41[2 * v178];
              v179[4] = v176;
              *(v179 + 40) = 0;
LABEL_132:
              v180 = v341;
              v181 = v41[2];
              if (v181)
              {
LABEL_133:
                v390[0] = _swiftEmptyArrayStorage;
                sub_76A7C0();
                v182 = 32;
                do
                {

                  sub_76A7A0();
                  sub_76A7D0();
                  sub_76A7E0();
                  sub_76A7B0();
                  v182 += 16;
                  --v181;
                }

                while (v181);
                swift_unknownObjectRelease();

                (*v341)(v345, v37);
                v183 = v390[0];
                goto LABEL_141;
              }

LABEL_140:
              swift_unknownObjectRelease();

              (*v180)(v134, v37);
              v183 = _swiftEmptyArrayStorage;
LABEL_141:
              sub_10A0E4(v183);
              v34 = v299;
              v62 = v292;
              v37 = v287;
              a1 = v265;
              v41 = v353;
              goto LABEL_7;
            }

            if (v336)
            {
              v184 = v49;

              v185 = sub_765330();
              v186 = sub_7B220(0, 1, 1, _swiftEmptyArrayStorage);
              v188 = *(v186 + 2);
              v187 = *(v186 + 3);
              if (v188 >= v187 >> 1)
              {
                v186 = sub_7B220((v187 > 1), v188 + 1, 1, v186);
              }

              v180 = v341;

              (*v262)(v316, v276);
              sub_10A2C(v333, &unk_948720);
              *(v186 + 2) = v188 + 1;
              v189 = &v186[16 * v188];
              *(v189 + 4) = v185;
              v189[40] = 0;
              v49 = v184;
              v181 = *(v186 + 2);
              if (v181)
              {
                goto LABEL_133;
              }

              goto LABEL_140;
            }

            v190 = sub_75C920();
            v191 = sub_55BABC(v350, v351, v190, 0);
            sub_75C9C0();
            v331 = v192;
            v330 = v193;
            if (!(v191 >> 62))
            {
              result = *(&dword_10 + (v191 & 0xFFFFFFFFFFFFFF8));
              if (result)
              {
                goto LABEL_144;
              }

              goto LABEL_200;
            }

            result = sub_76A860();
            if (!result)
            {
LABEL_200:

              (*v262)(v316, v276);
              sub_10A2C(v333, &unk_948720);
              v41 = _swiftEmptyArrayStorage;
              goto LABEL_132;
            }

LABEL_144:
            if (result < 1)
            {
              goto LABEL_216;
            }

            v49 = 0;
            v327 = (v191 & 0xC000000000000001);
            v41 = _swiftEmptyArrayStorage;
            v326 = v191;
            v325 = result;
            while (2)
            {
              if (v327)
              {
                v22 = sub_76A770();
              }

              else
              {
                v22 = *(v191 + 8 * v49 + 32);
              }

              v338(a1, v134, v37);
              v194 = (*v328)(a1, v37);
              if (v194 == v332)
              {
                (*v341)(a1, v37);
                LODWORD(v347) = 0;
                v195 = v350;
              }

              else
              {
                v195 = v350;
                if (v194 == v291)
                {
                  LODWORD(v347) = 0;
                }

                else
                {
                  v196 = sub_765150();
                  (*v341)(a1, v37);
                  LODWORD(v347) = v196;
                }
              }

              v352 = v22;
              if (v351)
              {
                v197 = sub_765750();
                if (!(v197 >> 62))
                {
                  if (*(&dword_10 + (v197 & 0xFFFFFFFFFFFFFF8)))
                  {
                    goto LABEL_157;
                  }

LABEL_185:

                  if (!v195)
                  {
LABEL_186:
                    if (qword_93C268 != -1)
                    {
                      swift_once();
                    }

                    v221 = qword_940CC0;
                    v229 = 0;
                    v228 = 0;
                    v205 = 5.0;
                    v231 = 1;
                    v204 = 1.0;
                    v224 = left;
                    v225 = top;
                    v227 = right;
                    v226 = v294;
                    v232 = 1;
LABEL_189:
                    v235 = v317;
                    sub_7666A0();

                    *v235 = v205;
                    *(v235 + 8) = v228;
                    *(v235 + 16) = v232 & 1;
                    *(v235 + 24) = v229;
                    *(v235 + 32) = v231 & 1;
                    *(v235 + 40) = v204;
                    *(v235 + 48) = v221;
                    *(v235 + 56) = v225;
                    *(v235 + 64) = v224;
                    *(v235 + 72) = v226;
                    *(v235 + 80) = v227;
                    sub_769DA0();
                    v199 = sub_765330();
                    sub_161D14(v235);
                    v37 = v337;
                    a1 = v340;
LABEL_190:

                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      v41 = sub_7B220(0, v41[2] + 1, 1, v41);
                    }

                    v134 = v345;
                    v34 = v41[2];
                    v236 = v41[3];
                    if (v34 >= v236 >> 1)
                    {
                      v41 = sub_7B220((v236 > 1), v34 + 1, 1, v41);
                    }

                    ++v49;

                    v41[2] = v34 + 1;
                    v237 = &v41[2 * v34];
                    v237[4] = v199;
                    *(v237 + 40) = v347 & 1;
                    v191 = v326;
                    if (v325 == v49)
                    {

                      (*v262)(v316, v276);
                      sub_10A2C(v333, &unk_948720);
                      v22 = v298;
                      v49 = v301;
                      goto LABEL_132;
                    }

                    continue;
                  }

LABEL_164:
                  sub_759690();

                  v200 = v313;
                  sub_75A300();

                  v201 = *v349;
                  v202 = v343;
                  v203 = (*v349)(v200, v343);
                  v204 = 0.0;
                  v205 = 0.0;
                  if (v203 != v348)
                  {
                    (*v329)(v313, v202);
                    v205 = 5.0;
                  }

                  v324 = sub_75A350();
                  v321 = v206;
                  v207 = sub_75A340();
                  v209 = v208;

                  v210 = v314;
                  sub_75A300();
                  v211 = v343;

                  v212 = v201(v210, v211);
                  if (v212 != v348)
                  {
                    (*v329)(v314, v211);
                    v204 = 1.0;
                  }

                  v213 = v315;
                  sub_75A300();
                  v214 = v343;
                  v215 = v201(v213, v343);
                  v323 = v207;
                  v322 = v209;
                  if (v215 == v348)
                  {
                    if (qword_93C260 != -1)
                    {
                      swift_once();
                    }

                    v216 = qword_940CB8;
                  }

                  else
                  {
                    if (qword_93C268 != -1)
                    {
                      swift_once();
                    }

                    v216 = qword_940CC0;

                    (*v329)(v315, v214);
                  }

                  v217 = v297;
                  sub_75A300();
                  v218 = v201(v217, v214);
                  if (v218 == v348)
                  {
                    v219 = sub_75A340();
                    if (v220)
                    {
                      v221 = v216;
                      if (qword_93C250 != -1)
                      {
                        swift_once();
                      }

                      sub_BE38(v319, qword_99A2D8);
                      sub_766630();
                      v223 = v222;

                      v224 = 15.0;
                      v225 = v223 * 15.0;
                      v226 = v223 * 15.0;
                      v227 = 15.0;
                      v228 = v324;
                      v229 = v323;
                      goto LABEL_183;
                    }

                    v230 = *&v219;

                    v225 = v230;
                    v224 = v230;
                    v226 = v230;
                    v227 = v230;
                  }

                  else
                  {

                    (*v329)(v217, v214);
                    v224 = left;
                    v225 = top;
                    v227 = right;
                    v226 = v294;
                  }

                  v228 = v324;
                  v229 = v323;
                  v221 = v216;
LABEL_183:
                  v231 = v322;
                  v232 = v321;
                  goto LABEL_189;
                }

                v233 = v197;
                v234 = sub_76A860();
                v197 = v233;
                if (!v234)
                {
                  goto LABEL_185;
                }

LABEL_157:
                if ((v197 & 0xC000000000000001) != 0)
                {
                  sub_76A770();
                }

                else
                {
                  if (!*(&dword_10 + (v197 & 0xFFFFFFFFFFFFFF8)))
                  {
                    goto LABEL_204;
                  }
                }

                sub_765390();
                sub_764BC0();
                v198 = sub_7651E0();

                if (v198)
                {
                  v199 = sub_765330();

                  goto LABEL_190;
                }

                v195 = v350;
              }

              break;
            }

            if (!v195)
            {
              goto LABEL_186;
            }

            goto LABEL_164;
          }

          v153 = v259;
          sub_7666A0();

          (*v290)(v153, v332, v37);
          (*v254)(v134, v153, v37);
        }

        else
        {

          (*v290)(v134, v257, v37);
        }

        v41 = v279;
        v49 = v301;
        goto LABEL_117;
      }

LABEL_6:

LABEL_7:

      (*a1)(v22, v62);
      if (v49 == v37)
      {

        v238 = v394;
        goto LABEL_213;
      }
    }
  }

LABEL_212:

  v238 = _swiftEmptyArrayStorage;
LABEL_213:
  v239._rawValue = v238;
  sub_75A070(v239);

  return (*(v248 + 8))(v253, v249);
}

id sub_2346A8()
{
  v1 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider30AdvertsSearchResultContentView_lockupMediaView);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_234E24(&qword_93F500, 255, type metadata accessor for VideoView);
    v4 = [v3 superview];
    if (!v4)
    {
LABEL_6:

      goto LABEL_7;
    }

    v5 = v4;
    sub_BE70(0, &qword_93E550);
    v6 = v1;
    v7 = sub_76A1C0();

    if (v7)
    {
      v8 = swift_unknownObjectWeakLoadStrong();
      if (v8)
      {
        v3 = v8;
        [v8 removeFromSuperview];
        goto LABEL_6;
      }
    }
  }

LABEL_7:
  swift_unknownObjectWeakAssign();
  v9 = swift_unknownObjectWeakLoadStrong();
  if (v9)
  {
    v10 = v9;
    [v1 addSubview:v9];
  }

  sub_55A7A8();

  return [v1 setNeedsLayout];
}

id sub_23481C(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC18ASMessagesProvider30AdvertsSearchResultContentView_disableAdvertRotation);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  sub_F714(a1);
  sub_F704(v6);
  v7 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider30AdvertsSearchResultContentView_lockupView);
  v8 = *(v7 + OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_searchAdTransparencyButton);
  if (v8)
  {
    [v8 addTarget:v2 action:"disableAdvertRotationTap" forControlEvents:64];
  }

  return [*(v7 + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_offerButton) addTarget:v2 action:"disableAdvertRotationTap" forControlEvents:64];
}

void sub_2348F8()
{
  v1 = OBJC_IVAR____TtC18ASMessagesProvider30AdvertsSearchResultContentView_lockupView;
  *(v0 + v1) = [objc_allocWithZone(type metadata accessor for SmallSearchLockupView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v2 = OBJC_IVAR____TtC18ASMessagesProvider30AdvertsSearchResultContentView_lockupMediaView;
  *(v0 + v2) = [objc_allocWithZone(type metadata accessor for LockupMediaView()) init];
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider30AdvertsSearchResultContentView_preferredImageSizes) = &_swiftEmptyDictionarySingleton;
  v3 = (v0 + OBJC_IVAR____TtC18ASMessagesProvider30AdvertsSearchResultContentView_disableAdvertRotation);
  *v3 = 0;
  v3[1] = 0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider30AdvertsSearchResultContentView_impressionsCalculator) = 0;
  v4 = (v0 + OBJC_IVAR____TtC18ASMessagesProvider30AdvertsSearchResultContentView_impressionsUpdateBlock);
  *v4 = 0;
  v4[1] = 0;
  sub_76A840();
  __break(1u);
}

void sub_2349F0()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider30AdvertsSearchResultContentView_lockupMediaView);
  v3 = OBJC_IVAR____TtC18ASMessagesProvider15LockupMediaView_imageViews;
  swift_beginAccess();
  v4 = *(v2 + v3);
  if (v4 >> 62)
  {
    v5 = sub_76A860();
    if (!v5)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v5 = *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8));
    if (!v5)
    {
      goto LABEL_10;
    }
  }

  if (v5 < 1)
  {
    __break(1u);
    return;
  }

  v6 = 0;
  do
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v7 = sub_76A770();
    }

    else
    {
      v7 = *(v4 + 8 * v6 + 32);
    }

    v8 = v7;
    ++v6;
    type metadata accessor for BorderedScreenshotView();
    sub_234E24(&qword_946D80, 255, type metadata accessor for BorderedScreenshotView);
    v9 = v8;
    sub_76A6E0();
    sub_75A0B0();
    sub_1EB60(v29);
    v10 = *&v9[OBJC_IVAR____TtC18ASMessagesProvider22BorderedScreenshotView_artworkView];
    v30.value.super.isa = 0;
    v30.is_nil = 0;
    sub_7591D0(v30, v11);
  }

  while (v5 != v6);

LABEL_10:
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    [*(Strong + qword_940590) setImage:0];
    type metadata accessor for VideoView();
    sub_234E24(&qword_952550, 255, type metadata accessor for VideoView);
    v14 = v13;
    sub_76A6E0();
    sub_75A0B0();

    sub_1EB60(v29);
  }

  v15 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider30AdvertsSearchResultContentView_lockupView);
  v16 = *(v15 + OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_metadataRibbonView);
  v17 = *&v16[OBJC_IVAR____TtC18ASMessagesProvider18MetadataRibbonView_metadataRibbonItemViews];
  v18 = *(v17 + 16);
  if (v18)
  {
    type metadata accessor for MetadataRibbonIconWithLabelView(0);
    v28 = v16;

    v19 = 32;
    do
    {
      v20 = *(v17 + v19);
      if (swift_dynamicCastClass())
      {
        v21 = v20;
        v31.value.super.isa = 0;
        v31.is_nil = 0;
        sub_7591D0(v31, v22);
        sub_759210();
        sub_234E24(&qword_945810, 255, &type metadata accessor for ArtworkView);
        sub_75A0C0();
      }

      v19 += 16;
      --v18;
    }

    while (v18);
  }

  v23 = OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_artworkView;
  v24 = *(v15 + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_artworkView);
  v32.value.super.isa = 0;
  v32.is_nil = 0;
  sub_7591D0(v32, v25);

  v26 = *(v15 + v23);
  sub_759210();
  sub_234E24(&qword_945810, 255, &type metadata accessor for ArtworkView);
  v27 = v26;
  sub_75A0C0();
}

uint64_t sub_234E24(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

void *sub_234E6C()
{
  v1 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider29LargeLockupCollectionViewCell_avatarShowcase);
  v2 = v1;
  return v1;
}

void (*sub_234EA4(void *a1))(void **a1, char a2)
{
  v2 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider29LargeLockupCollectionViewCell_avatarShowcase);
  *a1 = v2;
  a1[1] = v1;
  v3 = v2;
  return sub_234EFC;
}

void sub_234EFC(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2;
    sub_29D090(v2);
  }

  else
  {
    sub_29D090(*a1);
  }
}

uint64_t sub_234FC0(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = sub_235194(&qword_94AE50, type metadata accessor for LargeLockupCollectionViewCell);

  return AvatarShowcaseDisplaying.applyAvatars(from:asPartOf:)(a1, a2, ObjectType, v5);
}

uint64_t sub_23507C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  ObjectType = swift_getObjectType();
  v4 = sub_235194(&qword_94AE50, type metadata accessor for LargeLockupCollectionViewCell);

  return a3(ObjectType, v4);
}

uint64_t sub_235194(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2351EC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>, double a4@<D6>, double a5@<D7>)
{
  v29[3] = a3;
  v9 = sub_764930();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_7656A0();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v30 = v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = v29 - v17;
  v19 = sub_BD88(&qword_9438F8);
  v20 = v19 - 8;
  __chkstk_darwin(v19);
  v21 = a1;
  v23 = v29 - v22;
  sub_235D60(v21, v29 - v22);
  sub_235D60(a2, &v23[*(v20 + 56)]);
  swift_getKeyPath();
  sub_BD88(&unk_94F1F0);
  sub_768750();

  v24 = &enum case for PageGrid.Direction.horizontal(_:);
  if (!v31)
  {
    v24 = &enum case for PageGrid.Direction.vertical(_:);
  }

  (*(v14 + 104))(v18, *v24, v13);
  swift_getKeyPath();
  sub_768750();

  v25 = (*(v10 + 88))(v12, v9);
  *&v29[1] = a4;
  *&v29[2] = a5;
  if (v25 == enum case for Shelf.ContentType.footnote(_:) || v25 == enum case for Shelf.ContentType.quote(_:) || v25 == enum case for Shelf.ContentType.framedArtwork(_:) || v25 == enum case for Shelf.ContentType.appShowcase(_:) || v25 == enum case for Shelf.ContentType.framedVideo(_:) || v25 == enum case for Shelf.ContentType.banner(_:) || v25 == enum case for Shelf.ContentType.roundedButton(_:))
  {
    goto LABEL_18;
  }

  if (v25 == enum case for Shelf.ContentType.smallStoryCard(_:))
  {
    (*(v14 + 16))(v30, v18, v13);
    if (qword_93C230 == -1)
    {
      goto LABEL_19;
    }

    goto LABEL_21;
  }

  if (v25 == enum case for Shelf.ContentType.arcadeFooter(_:) || v25 == enum case for Shelf.ContentType.arcadeShowcase(_:))
  {
LABEL_18:
    (*(v14 + 16))(v30, v18, v13);
    if (qword_93CF58 == -1)
    {
LABEL_19:

      sub_765670();
      (*(v14 + 8))(v18, v13);
      return sub_235DD4(v23);
    }

LABEL_21:
    swift_once();
    goto LABEL_19;
  }

  v26 = enum case for Shelf.ContentType.appPromotion(_:);
  v27 = v25;
  (*(v14 + 16))(v30, v18, v13);
  if (v27 == v26)
  {
    if (qword_93C6E0 == -1)
    {
      goto LABEL_19;
    }

    goto LABEL_21;
  }

  sub_40DC7C(0.0);
  sub_765670();
  (*(v14 + 8))(v18, v13);
  sub_235DD4(v23);
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_235890(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_7656A0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v11 = &v18[-v10];
  v12 = sub_BD88(&qword_9438F8);
  v13 = v12 - 8;
  __chkstk_darwin(v12);
  v15 = &v18[-v14];
  sub_235D60(a2, &v18[-v14]);
  sub_235D60(a3, &v15[*(v13 + 56)]);
  swift_getKeyPath();
  sub_BD88(&unk_94F1F0);
  sub_768750();

  v16 = &enum case for PageGrid.Direction.horizontal(_:);
  if (!v18[15])
  {
    v16 = &enum case for PageGrid.Direction.vertical(_:);
  }

  (*(v6 + 104))(v11, *v16, v5);
  (*(v6 + 16))(v8, v11, v5);
  sub_40DC7C(0.0);
  sub_765670();
  (*(v6 + 8))(v11, v5);
  return sub_235DD4(v15);
}

uint64_t sub_235B2C()
{
  sub_235D0C();

  return sub_75B530();
}

uint64_t sub_235C10()
{
  sub_235D0C();

  return sub_75B520();
}

unint64_t sub_235D0C()
{
  result = qword_94AE58;
  if (!qword_94AE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_94AE58);
  }

  return result;
}

uint64_t sub_235D60(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&qword_963790);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_235DD4(uint64_t a1)
{
  v2 = sub_BD88(&qword_9438F8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_235E40@<X0>(char a1@<W0>, char a2@<W2>, void *a3@<X8>)
{
  v6 = sub_75D850();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v82 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_BD88(&qword_940AD0);
  v80 = *(v9 - 8);
  v81 = v9;
  __chkstk_darwin(v9);
  v11 = &v68 - v10;
  v12 = sub_7664A0();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    if (a2 == 1)
    {
      a3[3] = &type metadata for Double;
      a3[4] = &protocol witness table for Double;
      *a3 = 0x4064C00000000000;
      a3[8] = &type metadata for Double;
      a3[9] = &protocol witness table for Double;
      a3[5] = 0x406DC00000000000;
      a3[13] = &type metadata for Double;
      a3[14] = &protocol witness table for Double;
      a3[10] = 0x4038000000000000;
      a3[18] = &type metadata for Double;
      a3[19] = &protocol witness table for Double;
      a3[15] = 0x4026000000000000;
      a3[23] = &type metadata for Double;
      a3[24] = &protocol witness table for Double;
      a3[20] = 0x4038000000000000;
      a3[28] = &type metadata for Double;
      a3[29] = &protocol witness table for Double;
      a3[25] = 0x402E000000000000;
      if (qword_93C460 != -1)
      {
        swift_once();
      }

      v16 = sub_BE38(v6, qword_99B2A8);
      v17 = v82;
      (*(v7 + 16))(v82, v16, v6);
      sub_75D830();
      v19 = v18;
      result = (*(v7 + 8))(v17, v6);
      a3[33] = &type metadata for CGFloat;
      a3[34] = &protocol witness table for CGFloat;
      a3[30] = v19;
      a3[43] = &type metadata for CGFloat;
      a3[44] = &protocol witness table for CGFloat;
      a3[40] = 0x4014000000000000;
      a3[48] = &type metadata for Double;
      a3[49] = &protocol witness table for Double;
      a3[45] = 0x4028000000000000;
      a3[35] = 0;
      *(a3 + 18) = xmmword_78D480;
      a3[38] = 0x4038000000000000;
      *(a3 + 312) = 1;
    }

    else
    {
      v72 = v11;
      v78 = v7;
      v79 = v6;
      a3[3] = &type metadata for Double;
      a3[4] = &protocol witness table for Double;
      *a3 = 0x4069000000000000;
      a3[8] = &type metadata for Double;
      a3[9] = &protocol witness table for Double;
      a3[5] = 0x4074A00000000000;
      a3[13] = &type metadata for Double;
      a3[14] = &protocol witness table for Double;
      a3[10] = 0x4035000000000000;
      if (qword_93DB50 != -1)
      {
        swift_once();
      }

      v37 = sub_7666D0();
      v77 = sub_BE38(v37, qword_99F9E8);
      v38 = *(v37 - 8);
      v75 = *(v38 + 16);
      v76 = v38 + 16;
      v75(v15, v77, v37);
      LODWORD(v74) = enum case for FontSource.useCase(_:);
      v39 = v13;
      v73 = v13[13];
      v73(v15);
      v70 = sub_766CA0();
      a3[18] = v70;
      a3[19] = &protocol witness table for StaticDimension;
      sub_B1B4(a3 + 15);
      v87[3] = v12;
      v87[4] = &protocol witness table for FontSource;
      v40 = sub_B1B4(v87);
      v69 = v13[2];
      v69(v40, v15, v12);
      sub_766CB0();
      v41 = v13[1];
      v41(v15, v12);
      v87[0] = 0x4056800000000000;
      v84[0] = 0x4038000000000000;
      sub_BD88(&qword_93FBE0);
      v42 = v72;
      sub_7592E0();
      sub_759310();
      (*(v80 + 1))(v42, v81);
      v81 = v37;
      v75(v15, v77, v37);
      v80 = (v13 + 13);
      (v73)(v15, v74, v12);
      v43 = v70;
      a3[28] = v70;
      a3[29] = &protocol witness table for StaticDimension;
      sub_B1B4(a3 + 25);
      v87[3] = v12;
      v87[4] = &protocol witness table for FontSource;
      v44 = sub_B1B4(v87);
      v72 = (v39 + 2);
      v45 = v69;
      v69(v44, v15, v12);
      v46 = v45;
      sub_766CB0();
      v71 = v41;
      v41(v15, v12);
      if (qword_93C460 != -1)
      {
        swift_once();
      }

      v47 = v79;
      v48 = sub_BE38(v79, qword_99B2A8);
      v49 = v78;
      v50 = v82;
      (*(v78 + 16))(v82, v48, v47);
      sub_75D830();
      v52 = v51;
      (*(v49 + 8))(v50, v47);
      a3[33] = &type metadata for CGFloat;
      a3[34] = &protocol witness table for CGFloat;
      a3[30] = v52;
      a3[43] = &type metadata for CGFloat;
      a3[44] = &protocol witness table for CGFloat;
      a3[40] = 0x4014000000000000;
      v75(v15, v77, v81);
      (v73)(v15, v74, v12);
      a3[48] = v43;
      a3[49] = &protocol witness table for StaticDimension;
      sub_B1B4(a3 + 45);
      v87[3] = v12;
      v87[4] = &protocol witness table for FontSource;
      v53 = sub_B1B4(v87);
      v46(v53, v15, v12);
      sub_766CB0();
      result = v71(v15, v12);
      a3[35] = 0;
      *(a3 + 18) = xmmword_78D480;
      a3[38] = 0x4038000000000000;
      *(a3 + 312) = 0;
    }
  }

  else
  {
    v79 = v6;
    v87[3] = &type metadata for Double;
    v87[4] = &protocol witness table for Double;
    v87[0] = 0x4069000000000000;
    v87[8] = &type metadata for Double;
    v87[9] = &protocol witness table for Double;
    v78 = v7;
    if (a1)
    {
      v87[13] = &type metadata for Double;
      v87[14] = &protocol witness table for Double;
      v87[5] = 0x4074A00000000000;
      v87[10] = 0;
      if (qword_93DB50 != -1)
      {
        swift_once();
      }

      v21 = sub_7666D0();
      v77 = sub_BE38(v21, qword_99F9E8);
      v22 = *(v21 - 8);
      v69 = *(v22 + 16);
      v75 = (v22 + 16);
      v69(v15, v77, v21);
      LODWORD(v76) = enum case for FontSource.useCase(_:);
      v23 = v13[13];
      v71 = (v13 + 13);
      v73 = v23;
      v23(v15);
      v74 = sub_766CA0();
      v87[18] = v74;
      v87[19] = &protocol witness table for StaticDimension;
      sub_B1B4(&v87[15]);
      v85 = v12;
      v86 = &protocol witness table for FontSource;
      v24 = sub_B1B4(v84);
      v72 = v13[2];
      (v72)(v24, v15, v12);
      sub_766CB0();
      v25 = v13[1];
      v25(v15, v12);
      v84[0] = 0x4056800000000000;
      v83 = 0x4038000000000000;
      sub_BD88(&qword_93FBE0);
      sub_7592E0();
      sub_759310();
      (*(v80 + 1))(v11, v81);
      v81 = v21;
      v26 = v21;
      v27 = v69;
      v69(v15, v77, v26);
      (v73)(v15, v76, v12);
      v87[28] = v74;
      v87[29] = &protocol witness table for StaticDimension;
      sub_B1B4(&v87[25]);
      v85 = v12;
      v86 = &protocol witness table for FontSource;
      v28 = sub_B1B4(v84);
      v80 = (v13 + 2);
      (v72)(v28, v15, v12);
      sub_766CB0();
      v70 = v25;
      v25(v15, v12);
      if (qword_93C460 != -1)
      {
        swift_once();
      }

      v29 = v79;
      v30 = sub_BE38(v79, qword_99B2A8);
      v31 = v78;
      v32 = v82;
      (*(v78 + 16))(v82, v30, v29);
      sub_75D830();
      v34 = v33;
      (*(v31 + 8))(v32, v29);
      v87[33] = &type metadata for CGFloat;
      v87[34] = &protocol witness table for CGFloat;
      v87[30] = v34;
      v87[44] = &protocol witness table for CGFloat;
      v87[43] = &type metadata for CGFloat;
      v87[40] = 0x4014000000000000;
      v27(v15, v77, v81);
      (v73)(v15, v76, v12);
      v87[48] = v74;
      v87[49] = &protocol witness table for StaticDimension;
      sub_B1B4(&v87[45]);
      v85 = v12;
      v86 = &protocol witness table for FontSource;
      v35 = sub_B1B4(v84);
      (v72)(v35, v15, v12);
      sub_766CB0();
      v70(v15, v12);
      v36 = 0;
    }

    else
    {
      v87[13] = &type metadata for Double;
      v87[14] = &protocol witness table for Double;
      v87[5] = 0x4071800000000000;
      v87[10] = 0x4035000000000000;
      if (qword_93DB50 != -1)
      {
        swift_once();
      }

      v54 = sub_7666D0();
      v81 = sub_BE38(v54, qword_99F9E8);
      v55 = *(v54 - 8);
      v80 = *(v55 + 16);
      v74 = v55 + 16;
      v80(v15, v81, v54);
      LODWORD(v76) = enum case for FontSource.useCase(_:);
      v77 = v13[13];
      v77(v15);
      v75 = sub_766CA0();
      v87[18] = v75;
      v87[19] = &protocol witness table for StaticDimension;
      sub_B1B4(&v87[15]);
      v85 = v12;
      v86 = &protocol witness table for FontSource;
      v56 = sub_B1B4(v84);
      v57 = v13[2];
      v57(v56, v15, v12);
      sub_766CB0();
      v70 = v13[1];
      v70(v15, v12);
      v87[24] = &protocol witness table for Double;
      v87[23] = &type metadata for Double;
      v87[20] = 0x4038000000000000;
      v73 = v54;
      v80(v15, v81, v54);
      v72 = (v13 + 13);
      (v77)(v15, v76, v12);
      v87[28] = v75;
      v87[29] = &protocol witness table for StaticDimension;
      sub_B1B4(&v87[25]);
      v85 = v12;
      v86 = &protocol witness table for FontSource;
      v58 = sub_B1B4(v84);
      v71 = (v13 + 2);
      v57(v58, v15, v12);
      v59 = v57;
      v60 = v70;
      sub_766CB0();
      v60(v15, v12);
      if (qword_93C460 != -1)
      {
        swift_once();
      }

      v61 = v79;
      v62 = sub_BE38(v79, qword_99B2A8);
      v63 = v78;
      v64 = v82;
      (*(v78 + 16))(v82, v62, v61);
      sub_75D830();
      v66 = v65;
      (*(v63 + 8))(v64, v61);
      v87[33] = &type metadata for CGFloat;
      v87[34] = &protocol witness table for CGFloat;
      v87[30] = v66;
      v87[44] = &protocol witness table for CGFloat;
      v87[43] = &type metadata for CGFloat;
      v87[40] = 0x4014000000000000;
      v80(v15, v81, v73);
      (v77)(v15, v76, v12);
      v87[48] = v75;
      v87[49] = &protocol witness table for StaticDimension;
      sub_B1B4(&v87[45]);
      v85 = v12;
      v86 = &protocol witness table for FontSource;
      v67 = sub_B1B4(v84);
      v59(v67, v15, v12);
      sub_766CB0();
      v60(v15, v12);
      v36 = 1;
    }

    *&v87[35] = xmmword_78D490;
    *&v87[37] = xmmword_78D490;
    LOBYTE(v87[39]) = v36;
    return memcpy(a3, v87, 0x190uLL);
  }

  return result;
}

uint64_t sub_236D58@<X0>(char a1@<W0>, char a2@<W1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v8 = sub_75D850();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
    if ((a1 & 1) == 0)
    {
      JUScreenClassGetPortraitWidth();
      _NF = v30 < a4;
      v31 = 0.0;
      if (_NF)
      {
        v31 = 21.0;
      }

      v37 = &type metadata for Double;
      v38 = &protocol witness table for Double;
      *&v36 = v31;
      *(a3 + 64) = &type metadata for Double;
      *(a3 + 72) = &protocol witness table for Double;
      *(a3 + 40) = 0x4069000000000000;
      if (qword_93C460 != -1)
      {
        swift_once();
      }

      v32 = sub_BE38(v8, qword_99B2A8);
      (*(v9 + 16))(v11, v32, v8);
      sub_75D830();
      v34 = v33;
      (*(v9 + 8))(v11, v8);
      *(a3 + 136) = &type metadata for CGFloat;
      *(a3 + 144) = &protocol witness table for CGFloat;
      *(a3 + 112) = v34;
      *(a3 + 208) = &type metadata for Double;
      *(a3 + 216) = &protocol witness table for Double;
      *(a3 + 184) = 0x4028000000000000;
      *(a3 + 248) = &type metadata for Double;
      *(a3 + 256) = &protocol witness table for Double;
      *(a3 + 224) = 0x402C000000000000;
      result = sub_10914(&v36, a3);
      *(a3 + 80) = xmmword_78D4E0;
      *(a3 + 96) = xmmword_78D4F0;
      v21 = xmmword_78D490;
      goto LABEL_19;
    }

    v22 = (a4 + -360.0) * 0.5;
    *(a3 + 24) = &type metadata for Double;
    *(a3 + 32) = &protocol witness table for Double;
    *a3 = 0;
    *(a3 + 64) = &type metadata for Double;
    *(a3 + 72) = &protocol witness table for Double;
    *(a3 + 40) = 0x4069000000000000;
    if (qword_93C460 != -1)
    {
      swift_once();
    }

    v23 = sub_BE38(v8, qword_99B2A8);
    (*(v9 + 16))(v11, v23, v8);
    sub_75D830();
    v25 = v24;
    result = (*(v9 + 8))(v11, v8);
    *(a3 + 136) = &type metadata for CGFloat;
    *(a3 + 144) = &protocol witness table for CGFloat;
    *(a3 + 112) = v25;
    *(a3 + 208) = &type metadata for Double;
    *(a3 + 216) = &protocol witness table for Double;
    *(a3 + 184) = 0x4028000000000000;
    *(a3 + 248) = &type metadata for Double;
    *(a3 + 256) = &protocol witness table for Double;
    *(a3 + 224) = 0x4020000000000000;
    v26 = xmmword_78D500;
LABEL_13:
    *(a3 + 80) = v26;
    *(a3 + 96) = xmmword_78D4D0;
    *(a3 + 152) = 0;
    *(a3 + 160) = v22;
    *(a3 + 168) = 0;
    *(a3 + 176) = v22;
    return result;
  }

  if (a2 != 1)
  {
    v22 = (a4 + -360.0) * 0.5;
    *(a3 + 24) = &type metadata for Double;
    *(a3 + 32) = &protocol witness table for Double;
    *a3 = 0x4046000000000000;
    *(a3 + 64) = &type metadata for Double;
    *(a3 + 72) = &protocol witness table for Double;
    *(a3 + 40) = 0x4064000000000000;
    if (qword_93C460 != -1)
    {
      swift_once();
    }

    v27 = sub_BE38(v8, qword_99B2A8);
    (*(v9 + 16))(v11, v27, v8);
    sub_75D830();
    v29 = v28;
    result = (*(v9 + 8))(v11, v8);
    *(a3 + 136) = &type metadata for CGFloat;
    *(a3 + 144) = &protocol witness table for CGFloat;
    *(a3 + 112) = v29;
    *(a3 + 208) = &type metadata for Double;
    *(a3 + 216) = &protocol witness table for Double;
    *(a3 + 184) = 0x4028000000000000;
    *(a3 + 248) = &type metadata for Double;
    *(a3 + 256) = &protocol witness table for Double;
    *(a3 + 224) = 0x4020000000000000;
    v26 = xmmword_78D4C0;
    goto LABEL_13;
  }

  *(a3 + 24) = &type metadata for Double;
  *(a3 + 32) = &protocol witness table for Double;
  *a3 = 0x4038000000000000;
  *(a3 + 64) = &type metadata for Double;
  *(a3 + 72) = &protocol witness table for Double;
  *(a3 + 40) = 0x4054000000000000;
  if (qword_93C460 != -1)
  {
    swift_once();
  }

  v12 = sub_BE38(v8, qword_99B2A8);
  (*(v9 + 16))(v11, v12, v8);
  sub_75D830();
  v14 = v13;
  result = (*(v9 + 8))(v11, v8);
  *(a3 + 136) = &type metadata for CGFloat;
  *(a3 + 144) = &protocol witness table for CGFloat;
  *(a3 + 112) = v14;
  *(a3 + 208) = &type metadata for Double;
  *(a3 + 216) = &protocol witness table for Double;
  *(a3 + 184) = 0x4014000000000000;
  *(a3 + 248) = &type metadata for Double;
  *(a3 + 256) = &protocol witness table for Double;
  *(a3 + 224) = 0x4020000000000000;
  __asm { FMOV            V0.2D, #24.0 }

  *(a3 + 80) = _Q0;
  *(a3 + 96) = xmmword_78D4A0;
  v21 = xmmword_78D4B0;
LABEL_19:
  *(a3 + 152) = v21;
  *(a3 + 168) = v21;
  return result;
}

char *sub_237250(unsigned __int8 a1)
{
  v2 = v1;
  v4 = a1;
  ObjectType = swift_getObjectType();
  v5 = sub_7666D0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v38 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_BD88(&unk_93E530);
  __chkstk_darwin(v8 - 8);
  v10 = &v38 - v9;
  v11 = type metadata accessor for BreakoutDetailsView.Config(0);
  __chkstk_darwin(v11);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v38 - v15;
  v17 = sub_BD88(&unk_95CF90);
  __chkstk_darwin(v17 - 8);
  v19 = &v38 - v18;
  v20 = &v2[OBJC_IVAR____TtC18ASMessagesProvider23ArcadeSubscribePageView_dismissActionBlock];
  *v20 = 0;
  v20[1] = 0;
  *&v2[OBJC_IVAR____TtC18ASMessagesProvider23ArcadeSubscribePageView_headerView] = 0;
  *&v2[OBJC_IVAR____TtC18ASMessagesProvider23ArcadeSubscribePageView_contentView] = 0;
  v2[OBJC_IVAR____TtC18ASMessagesProvider23ArcadeSubscribePageView_style] = a1;
  v21 = [objc_allocWithZone(UIScrollView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v2[OBJC_IVAR____TtC18ASMessagesProvider23ArcadeSubscribePageView_scrollView] = v21;
  if (v4 == 1)
  {
    if (qword_93CA80 != -1)
    {
      swift_once();
    }

    v22 = qword_99CAA8;
  }

  else
  {
    if (qword_93CA78 != -1)
    {
      swift_once();
    }

    v22 = qword_99CA90;
  }

  v23 = a1;
  v24 = sub_BE38(v11, v22);
  sub_FCD60(v24, v13);
  sub_2396A8(v13, v16);
  sub_BD88(&qword_93FBE0);
  sub_7592F0();
  v25 = objc_allocWithZone(type metadata accessor for BreakoutDetailsView(0));
  *&v2[OBJC_IVAR____TtC18ASMessagesProvider23ArcadeSubscribePageView_detailsView] = sub_637704(v19);
  v26 = objc_allocWithZone(type metadata accessor for OfferButton());
  *&v2[OBJC_IVAR____TtC18ASMessagesProvider23ArcadeSubscribePageView_offerButton] = sub_1DD00C(0);
  sub_75C560();
  v27 = [swift_getObjCClassFromMetadata() buttonWithType:1];
  if (v23 == 1)
  {
    if (qword_93D918 != -1)
    {
      swift_once();
    }

    v28 = qword_99F340;
  }

  else
  {
    if (qword_93D908 != -1)
    {
      swift_once();
    }

    v28 = qword_99F310;
  }

  v29 = sub_BE38(v5, v28);
  v30 = v38;
  (*(v6 + 16))(v38, v29, v5);
  (*(v6 + 32))(v10, v30, v5);
  (*(v6 + 56))(v10, 0, 1, v5);
  sub_75C540();
  *&v2[OBJC_IVAR____TtC18ASMessagesProvider23ArcadeSubscribePageView_dismissButton] = v27;
  v40.receiver = v2;
  v40.super_class = ObjectType;
  v31 = v27;
  v32 = objc_msgSendSuper2(&v40, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v33 = objc_opt_self();
  v34 = v32;
  v35 = [v33 clearColor];
  [v34 setBackgroundColor:v35];

  v36 = OBJC_IVAR____TtC18ASMessagesProvider23ArcadeSubscribePageView_scrollView;
  [*&v34[OBJC_IVAR____TtC18ASMessagesProvider23ArcadeSubscribePageView_scrollView] setContentInsetAdjustmentBehavior:2];
  [v34 addSubview:*&v34[v36]];
  [*&v34[v36] addSubview:*&v34[OBJC_IVAR____TtC18ASMessagesProvider23ArcadeSubscribePageView_detailsView]];
  [*&v34[v36] addSubview:*&v34[OBJC_IVAR____TtC18ASMessagesProvider23ArcadeSubscribePageView_offerButton]];
  [*&v34[v36] addSubview:v31];

  return v34;
}

uint64_t sub_237848()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_7664F0();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86.receiver = v1;
  v86.super_class = ObjectType;
  objc_msgSendSuper2(&v86, "layoutSubviews", v5);
  [v1 bounds];
  x = v87.origin.x;
  y = v87.origin.y;
  width = v87.size.width;
  height = v87.size.height;
  result = CGRectIsEmpty(v87);
  if ((result & 1) == 0)
  {
    v65 = v3;
    v62 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider23ArcadeSubscribePageView_scrollView];
    [v62 setFrame:{x, y, width, height}];
    v13 = [v1 traitCollection];
    v14 = sub_769A00();

    v63 = v7;
    v64 = v4;
    if (v14)
    {
      v15 = v1[OBJC_IVAR____TtC18ASMessagesProvider23ArcadeSubscribePageView_style];
      v16 = [v1 traitCollection];
      v17 = sub_7699D0();

      if (v17)
      {
        v18 = [v1 window];
        if (v18)
        {
          v19 = v18;
          [v18 frame];
          v20 = CGRectGetWidth(v88);
          [v1 bounds];
          v21 = CGRectGetWidth(v89);

          LOBYTE(v18) = v21 < v20;
        }
      }

      else
      {
        LOBYTE(v18) = 1;
      }

      sub_235E40(v18, v15, v66);
      v30 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider23ArcadeSubscribePageView_headerView];
      if (v30)
      {
        v61 = type metadata accessor for LinkableHeaderView();
        v60 = &protocol witness table for UIView;
      }

      else
      {
        v60 = 0;
        v61 = 0;
      }

      v31 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider23ArcadeSubscribePageView_contentView];
      if (v31)
      {
        v32 = sub_BE70(0, &qword_93E550);
        v33 = &protocol witness table for UIView;
      }

      else
      {
        v32 = 0;
        v33 = 0;
      }

      v34 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider23ArcadeSubscribePageView_detailsView];
      v35 = type metadata accessor for BreakoutDetailsView(0);
      v79 = &protocol witness table for UIView;
      v78 = v35;
      v77 = v34;
      v36 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider23ArcadeSubscribePageView_offerButton];
      v81 = type metadata accessor for OfferButton();
      v82 = &protocol witness table for UIView;
      v80 = v36;
      v37 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider23ArcadeSubscribePageView_dismissButton];
      v84 = sub_75C560();
      v85 = &protocol witness table for UIView;
      v83 = v37;
      memcpy(v67, v66, 0x190uLL);
      v67[50] = v30;
      v68 = 0;
      v69 = 0;
      v70 = v61;
      v71 = v60;
      v72 = v31;
      v74 = 0;
      v73 = 0;
      v75 = v32;
      v76 = v33;
      v38 = v31;
      v39 = v34;
      v40 = v36;
      v41 = v37;
      v42 = v30;
      v43 = v63;
      AXArcadeSubscribePageLayout.placeChildren(relativeTo:in:)(v1, v63, x, y, width, height);
      sub_239760(v67);
    }

    else
    {
      v22 = v1[OBJC_IVAR____TtC18ASMessagesProvider23ArcadeSubscribePageView_style];
      v23 = [v1 traitCollection];
      v24 = sub_7699D0();

      if (v24)
      {
        v25 = [v1 window];
        if (v25)
        {
          v26 = v25;
          [v25 frame];
          v27 = CGRectGetWidth(v90);
          [v1 bounds];
          v28 = CGRectGetWidth(v91);

          v29 = v28 < v27;
        }

        else
        {
          v29 = 0;
        }
      }

      else
      {
        v29 = 1;
      }

      [v1 bounds];
      sub_236D58(v29, v22, v66, v44);
      v45 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider23ArcadeSubscribePageView_headerView];
      if (v45)
      {
        v61 = type metadata accessor for LinkableHeaderView();
        v60 = &protocol witness table for UIView;
      }

      else
      {
        v60 = 0;
        v61 = 0;
      }

      v46 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider23ArcadeSubscribePageView_contentView];
      if (v46)
      {
        v47 = sub_BE70(0, &qword_93E550);
        v48 = &protocol witness table for UIView;
      }

      else
      {
        v47 = 0;
        v48 = 0;
      }

      v49 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider23ArcadeSubscribePageView_detailsView];
      v50 = type metadata accessor for BreakoutDetailsView(0);
      v67[47] = &protocol witness table for UIView;
      v67[46] = v50;
      v67[43] = v49;
      v51 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider23ArcadeSubscribePageView_offerButton];
      v52 = type metadata accessor for OfferButton();
      v69 = &protocol witness table for UIView;
      v68 = v52;
      v67[48] = v51;
      v53 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider23ArcadeSubscribePageView_dismissButton];
      v54 = sub_75C560();
      v74 = &protocol witness table for UIView;
      v73 = v54;
      v70 = v53;
      memcpy(v67, v66, 0x108uLL);
      v67[33] = v45;
      v67[34] = 0;
      v67[35] = 0;
      v67[36] = v61;
      v67[37] = v60;
      v67[38] = v46;
      v67[40] = 0;
      v67[39] = 0;
      v67[41] = v47;
      v67[42] = v48;
      v55 = v46;
      v56 = v49;
      v57 = v51;
      v58 = v53;
      v59 = v45;
      v43 = v63;
      ArcadeSubscribePageLayout.placeChildren(relativeTo:in:)(v1, v63, x, y, width, height);
      sub_23970C(v67);
    }

    sub_7664D0();
    [v62 setContentSize:?];
    return (*(v64 + 8))(v43, v65);
  }

  return result;
}

void sub_237E40(double a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR____TtC18ASMessagesProvider23ArcadeSubscribePageView_dismissButton);

    [v4 setAlpha:a1];
  }
}

id sub_237EC8(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v150 = a8;
  v134 = a7;
  v149 = a6;
  v136 = a5;
  v135 = a4;
  v12 = sub_BD88(&unk_93FF30);
  __chkstk_darwin(v12 - 8);
  v129 = &v118 - v13;
  v130 = sub_768AB0();
  v131 = *(v130 - 8);
  __chkstk_darwin(v130);
  v121 = &v118 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = sub_765240();
  v127 = *(v128 - 8);
  __chkstk_darwin(v128);
  v126 = &v118 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = sub_766690();
  v124 = *(v125 - 8);
  __chkstk_darwin(v125);
  v123 = &v118 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_7652D0();
  __chkstk_darwin(v17 - 8);
  v148 = &v118 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_75DE30();
  v152 = *(v19 - 8);
  v153 = v19;
  __chkstk_darwin(v19);
  v151 = &v118 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = sub_7666D0();
  v137 = *(v138 - 8);
  __chkstk_darwin(v138);
  v133 = &v118 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_BD88(&unk_944DF0);
  __chkstk_darwin(v22 - 8);
  v146 = &v118 - v23;
  v143 = sub_7623A0();
  v139 = *(v143 - 8);
  __chkstk_darwin(v143);
  v141 = &v118 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_BD88(&unk_9457F0);
  v144 = *(v25 - 8);
  v145 = v25;
  __chkstk_darwin(v25);
  v142 = &v118 - v26;
  v27 = sub_BD88(&unk_948730);
  __chkstk_darwin(v27 - 8);
  v140 = &v118 - v28;
  v29 = sub_BD88(&unk_93E530);
  __chkstk_darwin(v29 - 8);
  v132 = &v118 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v122 = &v118 - v32;
  v33 = sub_BD88(&unk_9457E0);
  __chkstk_darwin(v33 - 8);
  v35 = &v118 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v38 = &v118 - v37;
  v39 = sub_758ED0();
  v147 = *(v39 - 8);
  __chkstk_darwin(v39);
  v41 = &v118 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_BD88(&qword_944EA0);
  __chkstk_darwin(v42 - 8);
  v44 = &v118 - v43;
  v45 = sub_75DE90();
  if (v45)
  {
    v46 = v45;
    v47 = sub_BD88(&unk_95CF90);
    (*(*(v47 - 8) + 56))(v44, 1, 1, v47);
    sub_5F8FA0(v46, v44, v150);

    sub_10A2C(v44, &qword_944EA0);
  }

  sub_75DE40();
  if (!v48)
  {
    v147 = sub_75DE50();
    v120 = sub_75DE80();
    sub_75DE60();
    v53 = sub_75DE70();
    v54 = &v8[OBJC_IVAR____TtC18ASMessagesProvider23ArcadeSubscribePageView_dismissActionBlock];
    v55 = *&v8[OBJC_IVAR____TtC18ASMessagesProvider23ArcadeSubscribePageView_dismissActionBlock];
    v56 = v136;
    *v54 = v135;
    *(v54 + 1) = v56;
    sub_F704(v55);
    v57 = *&v8[OBJC_IVAR____TtC18ASMessagesProvider23ArcadeSubscribePageView_dismissButton];

    v58 = sub_769210();

    [v57 setTitle:v58 forState:0];

    [v57 addTarget:v8 action:"didTapDismiss:" forControlEvents:64];
    v119 = v53;
    if (v53)
    {
      sub_75FE30();
      v59 = sub_75BD30();
      v60 = *(v59 - 8);
      (*(v60 + 56))(v38, 0, 1, v59);
      sub_239D8C(v38, v35);
      if ((*(v60 + 88))(v35, v59) == enum case for OfferEnvironment.arcadeLaunchRepairCompactSheet(_:))
      {
        if (qword_93D918 != -1)
        {
          swift_once();
        }

        v61 = v138;
        v62 = sub_BE38(v138, qword_99F340);
        v63 = v137;
        v64 = v122;
        (*(v137 + 16))(v122, v62, v61);
        (*(v63 + 56))(v64, 0, 1, v61);
        sub_75C540();
        v66 = v150;
        v65 = v151;
LABEL_28:
        v81 = sub_BD88(&unk_948740);
        v82 = v140;
        (*(*(v81 - 8) + 56))(v140, 1, 1, v81);
        v83 = v139;
        v84 = v143;
        (*(v139 + 104))(v141, enum case for OfferButtonSubtitlePosition.below(_:), v143);
        (*(v83 + 56))(v146, 1, 1, v84);
        sub_239D44(&qword_944E20, &type metadata accessor for OfferButtonSubtitlePosition);
        v85 = v142;
        sub_760940();
        sub_1DFEBC(v119, v147, v120, v82, v85, v66, 0, 0);

        (*(v144 + 8))(v85, v145);
        sub_10A2C(v82, &unk_948730);
        v73 = v152;
        goto LABEL_29;
      }

      (*(v60 + 8))(v35, v59);
    }

    else
    {
      v74 = sub_75BD30();
      (*(*(v74 - 8) + 56))(v38, 1, 1, v74);
      sub_10A2C(v38, &unk_9457E0);
    }

    v65 = v151;
    if (v9[OBJC_IVAR____TtC18ASMessagesProvider23ArcadeSubscribePageView_style] == 1)
    {
      v66 = v150;
      if (qword_93D918 != -1)
      {
        swift_once();
      }

      v75 = qword_99F340;
    }

    else
    {
      v66 = v150;
      if (qword_93D908 != -1)
      {
        swift_once();
      }

      v75 = qword_99F310;
    }

    v76 = v138;
    v77 = sub_BE38(v138, v75);
    v78 = v137;
    v79 = v133;
    (*(v137 + 16))(v133, v77, v76);
    v80 = v132;
    (*(v78 + 32))(v132, v79, v76);
    (*(v78 + 56))(v80, 0, 1, v76);
    sub_75C540();
    goto LABEL_28;
  }

  v49 = [objc_allocWithZone(type metadata accessor for LinkableHeaderView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v50 = OBJC_IVAR____TtC18ASMessagesProvider23ArcadeSubscribePageView_headerView;
  v51 = *&v8[OBJC_IVAR____TtC18ASMessagesProvider23ArcadeSubscribePageView_headerView];
  if (v51)
  {
    [v51 removeFromSuperview];
    v52 = *&v8[v50];
  }

  else
  {
    v52 = 0;
  }

  *&v8[v50] = v49;
  v67 = v49;

  if (v67)
  {
    [*&v8[OBJC_IVAR____TtC18ASMessagesProvider23ArcadeSubscribePageView_scrollView] addSubview:v67];
  }

  v68 = *&v8[v50] != 0;
  [*&v8[OBJC_IVAR____TtC18ASMessagesProvider23ArcadeSubscribePageView_offerButton] setHidden:v68];
  [*&v8[OBJC_IVAR____TtC18ASMessagesProvider23ArcadeSubscribePageView_dismissButton] setHidden:v68];
  [v8 setNeedsLayout];

  v69 = *&v8[v50];
  if (v69)
  {
    v70 = *(v69 + OBJC_IVAR____TtC18ASMessagesProvider18LinkableHeaderView_label);
    (*(v147 + 104))(v41, enum case for StyledText.MediaType.plainText(_:), v39);
    sub_758EE0();
    swift_allocObject();
    v71 = v70;
    v72 = sub_758EA0();
    sub_4ED3B8(v72, 0, _swiftEmptyArrayStorage);
  }

  else
  {
  }

  v65 = v151;
  v73 = v152;
LABEL_29:
  v86 = sub_2397B4(v9, v9, a1, a2);
  v88 = v87;
  sub_75DEA0();
  v89 = v153;
  v90 = (*(v73 + 88))(v65, v153);
  if (v90 == enum case for ArcadeSubscribePage.PageType.generic(_:))
  {
    (*(v73 + 96))(v65, v89);
    v91 = [objc_allocWithZone(sub_759210()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    sub_765330();
    sub_7652E0();
    sub_7591B0();
    [v91 setContentMode:sub_765140()];
    sub_75DEF0();
    sub_7591F0();
    if (!sub_7651A0())
    {
      sub_BE70(0, &qword_93E540);
      sub_76A030();
    }

    sub_759070();
    sub_239D44(&qword_945810, &type metadata accessor for ArtworkView);
    sub_75A050();
    v92 = OBJC_IVAR____TtC18ASMessagesProvider23ArcadeSubscribePageView_contentView;
    v93 = *&v9[OBJC_IVAR____TtC18ASMessagesProvider23ArcadeSubscribePageView_contentView];
    v94 = v91;
    if (v93)
    {
      [v93 removeFromSuperview];
      v95 = *&v9[v92];
    }

    else
    {
      v95 = 0;
    }

    *&v9[v92] = v91;
    v110 = v91;

    [*&v9[OBJC_IVAR____TtC18ASMessagesProvider23ArcadeSubscribePageView_scrollView] addSubview:v110];
    [v9 setNeedsLayout];

LABEL_44:

LABEL_47:
    return [v9 setNeedsLayout];
  }

  if (v90 == enum case for ArcadeSubscribePage.PageType.grid(_:))
  {
    (*(v73 + 96))(v65, v89);
    v96 = *v65;
    v97 = v65[1];
    v98 = v9[OBJC_IVAR____TtC18ASMessagesProvider23ArcadeSubscribePageView_style] == 1;
    v99 = objc_allocWithZone(type metadata accessor for UpsellGridView());
    v100 = sub_4F28A4(v98);
    v101 = OBJC_IVAR____TtC18ASMessagesProvider23ArcadeSubscribePageView_contentView;
    v102 = *&v9[OBJC_IVAR____TtC18ASMessagesProvider23ArcadeSubscribePageView_contentView];
    v103 = v100;
    if (v102)
    {
      [v102 removeFromSuperview];
      v102 = *&v9[v101];
    }

    *&v9[v101] = v100;
    v110 = v100;

    [*&v9[OBJC_IVAR____TtC18ASMessagesProvider23ArcadeSubscribePageView_scrollView] addSubview:v110];
    [v9 setNeedsLayout];

    *&v110[OBJC_IVAR____TtC18ASMessagesProvider14UpsellGridView_impressionsCalculator] = v134;

    *&v110[OBJC_IVAR____TtC18ASMessagesProvider14UpsellGridView_primaryIcon] = v96;

    v111 = OBJC_IVAR____TtC18ASMessagesProvider14UpsellGridView_remainingIcons;
    swift_beginAccess();
    *&v110[v111] = v97;

    *&v110[OBJC_IVAR____TtC18ASMessagesProvider14UpsellGridView_artworkLoader] = v149;

    sub_4F2E74(v86, v88);

    goto LABEL_47;
  }

  if (v90 == enum case for ArcadeSubscribePage.PageType.singleIcon(_:))
  {
    (*(v73 + 96))(v65, v89);
    sub_75F470();
    v104 = [objc_allocWithZone(sub_759210()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    sub_765260();
    v105 = v123;
    sub_7666A0();
    sub_766650();
    (*(v124 + 8))(v105, v125);
    v106 = v126;
    sub_765250();
    sub_765210();
    (*(v127 + 8))(v106, v128);
    sub_765330();
    sub_7652E0();
    sub_7591B0();
    [v104 setContentMode:sub_765140()];
    sub_75DEF0();
    sub_7591F0();
    if (!sub_7651A0())
    {
      sub_BE70(0, &qword_93E540);
      sub_76A030();
    }

    sub_759070();
    sub_239D44(&qword_945810, &type metadata accessor for ArtworkView);
    sub_75A050();
    v107 = v129;
    sub_75F460();
    v108 = v131;
    v109 = v130;
    if ((*(v131 + 48))(v107, 1, v130) == 1)
    {
      sub_10A2C(v107, &unk_93FF30);
    }

    else
    {
      v113 = v121;
      (*(v108 + 32))();
      if (v134)
      {
        sub_75F4B0();
      }

      (*(v131 + 8))(v113, v109);
    }

    v114 = OBJC_IVAR____TtC18ASMessagesProvider23ArcadeSubscribePageView_contentView;
    v115 = *&v9[OBJC_IVAR____TtC18ASMessagesProvider23ArcadeSubscribePageView_contentView];
    v116 = v104;
    if (v115)
    {
      [v115 removeFromSuperview];
      v117 = *&v9[v114];
    }

    else
    {
      v117 = 0;
    }

    *&v9[v114] = v104;
    v110 = v104;

    [*&v9[OBJC_IVAR____TtC18ASMessagesProvider23ArcadeSubscribePageView_scrollView] addSubview:v110];
    [v9 setNeedsLayout];

    goto LABEL_44;
  }

  (*(v73 + 8))(v65, v89);
  return [v9 setNeedsLayout];
}

unint64_t sub_239654()
{
  result = qword_94AEC8;
  if (!qword_94AEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_94AEC8);
  }

  return result;
}

uint64_t sub_2396A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BreakoutDetailsView.Config(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_2397B4(void *a1, _BYTE *a2, double a3, double a4)
{
  v8 = sub_76A920();
  v9 = *(v8 - 8);
  *&v10 = __chkstk_darwin(v8).n128_u64[0];
  v12 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [a1 traitCollection];
  v14 = sub_769A00();

  if (v14)
  {
    v62 = v9;
    v15 = a2[OBJC_IVAR____TtC18ASMessagesProvider23ArcadeSubscribePageView_style];
    v16 = [a2 traitCollection];
    v17 = sub_7699D0();

    if (v17)
    {
      v18 = [a2 window];
      if (v18)
      {
        v19 = v18;
        [v18 frame];
        Width = CGRectGetWidth(v86);
        [a2 bounds];
        v21 = CGRectGetWidth(v87);

        LOBYTE(v18) = v21 < Width;
      }
    }

    else
    {
      LOBYTE(v18) = 1;
    }

    sub_235E40(v18, v15, v66);
    v29 = *&a2[OBJC_IVAR____TtC18ASMessagesProvider23ArcadeSubscribePageView_headerView];
    if (v29)
    {
      v65 = type metadata accessor for LinkableHeaderView();
      v61 = &protocol witness table for UIView;
    }

    else
    {
      v65 = 0;
      v61 = 0;
    }

    v33 = *&a2[OBJC_IVAR____TtC18ASMessagesProvider23ArcadeSubscribePageView_contentView];
    v63 = v8;
    v64 = a1;
    if (v33)
    {
      v60 = sub_BE70(0, &qword_93E550);
      v34 = &protocol witness table for UIView;
    }

    else
    {
      v60 = 0;
      v34 = 0;
    }

    v47 = *&a2[OBJC_IVAR____TtC18ASMessagesProvider23ArcadeSubscribePageView_detailsView];
    v48 = type metadata accessor for BreakoutDetailsView(0);
    v79 = &protocol witness table for UIView;
    v78 = v48;
    v77 = v47;
    v49 = *&a2[OBJC_IVAR____TtC18ASMessagesProvider23ArcadeSubscribePageView_offerButton];
    v81 = type metadata accessor for OfferButton();
    v82 = &protocol witness table for UIView;
    v80 = v49;
    v50 = *&a2[OBJC_IVAR____TtC18ASMessagesProvider23ArcadeSubscribePageView_dismissButton];
    v84 = sub_75C560();
    v85 = &protocol witness table for UIView;
    v83 = v50;
    memcpy(v67, v66, 0x190uLL);
    v67[50] = v29;
    v68 = 0;
    v69 = 0;
    v70 = v65;
    v71 = v61;
    v72 = v33;
    v74 = 0;
    v73 = 0;
    v75 = v60;
    v76 = v34;
    sub_B170(v67, v67[3]);
    v51 = v33;
    v52 = v47;
    v53 = v49;
    v54 = v50;
    v55 = v29;
    sub_33964();
    v56 = v64;
    sub_766700();
    v57 = v63;
    v58 = *(v62 + 8);
    v58(v12, v63);
    sub_239DFC(v56, v67, a3, a4);
    sub_B170(&v67[5], v67[8]);
    sub_33964();
    sub_766700();
    v58(v12, v57);
    sub_239760(v67);
  }

  else
  {
    v22 = a2[OBJC_IVAR____TtC18ASMessagesProvider23ArcadeSubscribePageView_style];
    v23 = [a2 traitCollection];
    v24 = sub_7699D0();

    if (v24)
    {
      v25 = [a2 window];
      if (v25)
      {
        v26 = v25;
        [v25 frame];
        v27 = CGRectGetWidth(v88);
        [a2 bounds];
        v28 = CGRectGetWidth(v89);

        LOBYTE(v25) = v28 < v27;
      }
    }

    else
    {
      LOBYTE(v25) = 1;
    }

    sub_236D58(v25, v22, v66, a3);
    v30 = *&a2[OBJC_IVAR____TtC18ASMessagesProvider23ArcadeSubscribePageView_headerView];
    if (v30)
    {
      v31 = type metadata accessor for LinkableHeaderView();
      v32 = &protocol witness table for UIView;
    }

    else
    {
      v31 = 0;
      v32 = 0;
    }

    v35 = sub_7670D0();
    v36 = v30;
    v37 = sub_7670C0();
    v67[42] = &protocol witness table for LayoutViewPlaceholder;
    v67[41] = v35;
    v67[38] = v37;
    v38 = *&a2[OBJC_IVAR____TtC18ASMessagesProvider23ArcadeSubscribePageView_detailsView];
    v39 = type metadata accessor for BreakoutDetailsView(0);
    v67[47] = &protocol witness table for UIView;
    v67[46] = v39;
    v67[43] = v38;
    v40 = *&a2[OBJC_IVAR____TtC18ASMessagesProvider23ArcadeSubscribePageView_offerButton];
    v41 = type metadata accessor for OfferButton();
    v69 = &protocol witness table for UIView;
    v68 = v41;
    v67[48] = v40;
    v42 = *&a2[OBJC_IVAR____TtC18ASMessagesProvider23ArcadeSubscribePageView_dismissButton];
    v43 = sub_75C560();
    v74 = &protocol witness table for UIView;
    v73 = v43;
    v70 = v42;
    memcpy(v67, v66, 0x108uLL);
    v67[33] = v30;
    v67[34] = 0;
    v67[35] = 0;
    v67[36] = v31;
    v67[37] = v32;
    v44 = v38;
    v45 = v40;
    v46 = v42;
    a3 = sub_23A184(a1, v67, a3);
    sub_23970C(v67);
  }

  return a3;
}

uint64_t sub_239D44(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_239D8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&unk_9457E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_239DFC(uint64_t a1, void *a2, double a3, double a4)
{
  *&v29 = a2 + 35;
  v8 = sub_76A920();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_B170(a2 + 20, a2[23]);
  sub_33964();
  sub_766700();
  v13 = v12;
  v14 = *(v9 + 8);
  v14(v11, v8);
  sub_B170(a2 + 15, a2[18]);
  sub_33964();
  sub_766700();
  v16 = v15;
  v14(v11, v8);
  sub_B170(a2 + 25, a2[28]);
  sub_33964();
  sub_766700();
  v18 = v17;
  v14(v11, v8);
  sub_134D8((a2 + 30), v38);
  v19 = *(v29 + 32);
  v20 = *(v29 + 16);
  v28 = *v29;
  v29 = v20;
  sub_134D8((a2 + 40), &v41);
  sub_134D8((a2 + 45), &v42);
  v37[0] = v16;
  v37[1] = v13;
  v37[2] = v18;
  v37[3] = v13;
  v39 = v29;
  *&v38[40] = v28;
  v40 = v19;
  sub_23A450(v37, v33);
  sub_134D8((a2 + 60), &v34);
  sub_134D8((a2 + 65), &v35);
  sub_134D8((a2 + 70), &v36);
  sub_B170(a2 + 10, a2[13]);
  sub_33964();
  sub_766700();
  v22 = v21;
  v14(v11, v8);
  sub_23A7B4(a3, a1, v33);
  v24 = a4 - v22 - v23;
  sub_6D310((a2 + 50), &v30);
  if (v31)
  {
    sub_10914(&v30, v32);
    sub_B170(v32, v32[3]);
    sub_7665B0();
    v26 = v25;
    sub_23AABC(v33);
    sub_23AB10(v37);
    v24 = v24 - v26;
    sub_BEB8(v32);
  }

  else
  {
    sub_23AABC(v33);
    sub_23AB10(v37);
    sub_10A2C(&v30, &unk_943B10);
  }

  return v24;
}

double sub_23A184(uint64_t a1, uint64_t a2, double a3)
{
  v6 = sub_76A920();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a2 + 80);
  v16 = *(a2 + 96);
  v17 = v10;
  sub_134D8(a2 + 112, v26);
  v11 = *(a2 + 152);
  v14 = *(a2 + 168);
  v15 = v11;
  sub_134D8(a2 + 184, &v28);
  sub_134D8(a2 + 224, &v29);
  v25[1] = v16;
  v25[0] = v17;
  v27 = v14;
  *&v26[40] = v15;
  sub_23AB64(v25, v21);
  sub_134D8(a2 + 344, &v22);
  sub_134D8(a2 + 384, &v23);
  sub_134D8(a2 + 424, &v24);
  sub_B170(a2, *(a2 + 24));
  sub_33964();
  sub_766700();
  v12 = *(v7 + 8);
  v12(v9, v6);
  sub_23A4AC(a3, a1, v21);
  sub_6D310(a2 + 264, &v18);
  if (v19)
  {
    sub_10914(&v18, v20);
    sub_B170(v20, v20[3]);
    sub_7665B0();
    sub_BEB8(v20);
  }

  else
  {
    sub_10A2C(&v18, &unk_943B10);
  }

  sub_B170((a2 + 40), *(a2 + 64));
  sub_33964();
  sub_766700();
  v12(v9, v6);
  sub_23ABC0(v21);
  sub_23AC14(v25);
  return a3;
}

double sub_23A4AC(double a1, uint64_t a2, void *a3)
{
  v5 = sub_76A920();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_B170(a3 + 23, a3[26]);
  sub_7665B0();
  sub_B170(a3 + 18, a3[21]);
  sub_33964();
  sub_766700();
  v9 = *(v6 + 8);
  v9(v8, v5);
  sub_B170(a3 + 28, a3[31]);
  if ((sub_766540() & 1) == 0)
  {
    sub_B170(a3 + 4, a3[7]);
    sub_33964();
    sub_766700();
    v9(v8, v5);
  }

  sub_B170(a3 + 33, a3[36]);
  if ((sub_766540() & 1) == 0)
  {
    sub_B170(a3 + 33, a3[36]);
    sub_7665B0();
  }

  sub_B170(a3 + 28, a3[31]);
  if ((sub_766540() & 1) == 0)
  {
    sub_B170(a3 + 33, a3[36]);
    if ((sub_766540() & 1) == 0)
    {
      sub_B170(a3 + 13, a3[16]);
      sub_33964();
      sub_766700();
      v9(v8, v5);
    }
  }

  return a1;
}

double sub_23A7B4(double a1, uint64_t a2, void *a3)
{
  v5 = sub_76A920();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_B170(a3 + 24, a3[27]);
  sub_7665B0();
  sub_B170(a3 + 19, a3[22]);
  sub_33964();
  sub_766700();
  v9 = *(v6 + 8);
  v9(v8, v5);
  sub_B170(a3 + 29, a3[32]);
  if ((sub_766540() & 1) == 0)
  {
    sub_B170(a3 + 4, a3[7]);
    sub_33964();
    sub_766700();
    v9(v8, v5);
  }

  sub_B170(a3 + 34, a3[37]);
  if ((sub_766540() & 1) == 0)
  {
    sub_B170(a3 + 34, a3[37]);
    sub_7665B0();
  }

  sub_B170(a3 + 29, a3[32]);
  if ((sub_766540() & 1) == 0)
  {
    sub_B170(a3 + 34, a3[37]);
    if ((sub_766540() & 1) == 0)
    {
      sub_B170(a3 + 14, a3[17]);
      sub_33964();
      sub_766700();
      v9(v8, v5);
    }
  }

  return a1;
}

uint64_t sub_23AC68()
{
  v0 = sub_7664A0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_766CA0();
  sub_161DC(v4, qword_99BAD0);
  sub_BE38(v4, qword_99BAD0);
  if (qword_93D908 != -1)
  {
    swift_once();
  }

  v5 = sub_7666D0();
  v6 = sub_BE38(v5, qword_99F310);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v10[3] = v0;
  v10[4] = &protocol witness table for FontSource;
  v7 = sub_B1B4(v10);
  (*(v1 + 16))(v7, v3, v0);
  sub_766CB0();
  return (*(v1 + 8))(v3, v0);
}

char *sub_23AE40(uint64_t a1)
{
  v36 = a1;
  v2 = sub_766CA0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_7666D0();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider21ArcadeWelcomePageView_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider21ArcadeWelcomePageView_arcadeWelcomeContentView) = [objc_allocWithZone(type metadata accessor for ArcadeWelcomeContentView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  type metadata accessor for RoundedTitledButton();
  if (qword_93D908 != -1)
  {
    swift_once();
  }

  v10 = sub_BE38(v6, qword_99F310);
  v11 = *(v7 + 16);
  v35[1] = v7 + 16;
  v11(v9, v10, v6);
  v35[0] = v6;
  if (qword_93C718 != -1)
  {
    swift_once();
  }

  v12 = v2;
  v13 = sub_BE38(v2, qword_99BAD0);
  v14 = *(v3 + 16);
  v14(v5, v13, v12);
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider21ArcadeWelcomePageView_familyButton) = sub_4FF328(v9, v5);
  v11(v9, v10, v35[0]);
  v14(v5, v13, v12);
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider21ArcadeWelcomePageView_continueButton) = sub_4FF328(v9, v5);
  v15 = v36;
  sub_23BD1C(v36, v37);
  v16 = sub_51D0AC(v37);
  v17 = OBJC_IVAR____TtC18ASMessagesProvider21ArcadeWelcomePageView_familyButton;
  v18 = *&v16[OBJC_IVAR____TtC18ASMessagesProvider21ArcadeWelcomePageView_familyButton];
  v19 = objc_opt_self();
  v20 = v16;
  v21 = v18;
  v22 = [v19 clearColor];
  [v21 setBackgroundColor:v22];

  v23 = *&v16[v17];
  sub_BE70(0, &qword_93E540);
  v24 = v23;
  v25 = sub_76A0F0();
  [v24 setTintColor:v25];

  v26 = *&v20[OBJC_IVAR____TtC18ASMessagesProvider21ArcadeWelcomePageView_arcadeWelcomeContentView];
  v27 = *&v20[OBJC_IVAR____TtC18ASMessagesProvider18OnboardingPageView_contentView];
  *&v20[OBJC_IVAR____TtC18ASMessagesProvider18OnboardingPageView_contentView] = v26;
  v28 = v26;

  [*&v20[OBJC_IVAR____TtC18ASMessagesProvider18OnboardingPageView_contentScrollView] addSubview:v28];
  [v20 setNeedsLayout];

  [v20 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  v29 = OBJC_IVAR____TtC18ASMessagesProvider21ArcadeWelcomePageView_continueButton;
  v30 = *&v20[OBJC_IVAR____TtC18ASMessagesProvider21ArcadeWelcomePageView_continueButton];
  v31 = sub_76A0F0();
  [v30 setBackgroundColor:v31];

  v32 = *&v20[v29];
  v33 = [v19 whiteColor];
  [v32 setTintColor:v33];

  sub_23BD78(v15);
  return v20;
}

id sub_23B2EC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider21ArcadeWelcomePageView_continueButton];
  sub_75E910();
  sub_764C60();
  v8 = v7;

  if (v8)
  {
    v9 = sub_769210();
  }

  else
  {
    v9 = 0;
  }

  [v6 setTitle:v9 forState:0];

  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = &v6[qword_99E150];
  v12 = *&v6[qword_99E150];
  *v11 = sub_23B9A0;
  v11[1] = v10;

  sub_F704(v12);

  v13 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider18OnboardingPageView_trayView];
  sub_6E2930(v6, 0x4072C00000000000, 0);
  v14 = &unk_90D000;
  [v3 setNeedsLayout];
  v15 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider21ArcadeWelcomePageView_familyButton];
  v16 = OBJC_IVAR____TtC18ASMessagesProvider18OnboardingTrayView_itemViewLayoutItems;
  swift_beginAccess();
  v17 = *&v13[v16];

  v18 = sub_6E2D34(v15, v17);

  if (v18)
  {
    v19 = swift_beginAccess();
    __chkstk_darwin(v19);
    result = sub_23B9D8(&v13[v16], sub_23BDCC);
    v21 = *(*&v13[v16] + 16);
    if (v21 < result)
    {
      __break(1u);
      goto LABEL_23;
    }

    sub_4A7D30(result, v21);
    swift_endAccess();
    v22 = [v15 superview];
    if (v22)
    {
      v23 = v22;
      v24 = a2;
      sub_BE70(0, &qword_93E550);
      v25 = v13;
      v26 = sub_76A1C0();

      if (v26)
      {
        [v15 removeFromSuperview];
      }

      a2 = v24;
      v14 = &unk_90D000;
    }
  }

  [v3 v14[463]];
  if (sub_75E900())
  {
    sub_764C60();
    if (v27)
    {
      v28 = sub_769210();
    }

    else
    {
      v28 = 0;
    }

    [v15 setTitle:v28 forState:0];

    v37 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v38 = &v15[qword_99E150];
    v39 = *&v15[qword_99E150];
    *v38 = sub_23BBA4;
    v38[1] = v37;

    sub_F704(v39);

    sub_6E2930(v15, 0x4072C00000000000, 0);
    [v3 v14[463]];

    goto LABEL_21;
  }

  v29 = *&v13[v16];

  v30 = sub_6E2D34(v15, v29);

  if (!v30)
  {
LABEL_18:
    [v3 v14[463]];
LABEL_21:
    sub_5D0ACC(a1, a2);
    return [v3 v14[463]];
  }

  v31 = swift_beginAccess();
  __chkstk_darwin(v31);
  result = sub_23B9D8(&v13[v16], sub_23B9D0);
  v32 = *(*&v13[v16] + 16);
  if (v32 >= result)
  {
    sub_4A7D30(result, v32);
    swift_endAccess();
    v33 = [v15 superview];
    if (v33)
    {
      v34 = v33;
      sub_BE70(0, &qword_93E550);
      v35 = v13;
      v36 = sub_76A1C0();

      if (v36)
      {
        [v15 removeFromSuperview];
      }
    }

    goto LABEL_18;
  }

LABEL_23:
  __break(1u);
  return result;
}

void sub_23B7E8(uint64_t a1, void (*a2)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = swift_unknownObjectWeakLoadStrong();

    if (v5)
    {
      a2();
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_23B878()
{
  v1 = v0 + OBJC_IVAR____TtC18ASMessagesProvider21ArcadeWelcomePageView_delegate;

  return sub_13238(v1);
}

uint64_t sub_23B968()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_23B9D8(double **a1, uint64_t (*a2)(uint64_t, double *))
{
  v4 = *a1;
  v5 = (*a1 + 2);
  v6 = *v5;
  if (!*v5)
  {
LABEL_5:
    if (!v2)
    {
      return *v5;
    }

    return v3;
  }

  v9 = 0;
  v3 = 0;
  while (1)
  {
    result = a2(*&v4[v9 + 4], &v4[v9 + 5]);
    if (result)
    {
      break;
    }

    ++v3;
    v9 += 11;
    if (v6 == v3)
    {
      goto LABEL_5;
    }
  }

  v19 = a1;
  if (v2)
  {
    return v3;
  }

  v11 = v3 + 1;
  if (!__OFADD__(v3, 1))
  {
    v12 = *v5;
    if (v11 == *v5)
    {
      return v3;
    }

    v13 = v9 * 8 + 120;
    while (v11 < v12)
    {
      sub_23BBD4(v4 + v13, &v17);
      v14 = a2(v17, &v18);
      result = sub_23BC44(&v17);
      if ((v14 & 1) == 0)
      {
        if (v11 != v3)
        {
          if ((v3 & 0x8000000000000000) != 0)
          {
            goto LABEL_26;
          }

          v15 = *v5;
          if (v3 >= v15)
          {
            goto LABEL_27;
          }

          result = sub_23BBD4(&v4[11 * v3 + 4], &v17);
          if (v11 >= v15)
          {
            goto LABEL_28;
          }

          sub_23BBD4(v4 + v13, v16);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v4 = sub_45D588(v4);
          }

          result = sub_23BCAC(v16, &v4[11 * v3 + 4]);
          if (v11 >= *(v4 + 2))
          {
            goto LABEL_29;
          }

          result = sub_23BCAC(&v17, v4 + v13);
          *v19 = v4;
        }

        ++v3;
      }

      ++v11;
      v5 = (v4 + 2);
      v12 = *(v4 + 2);
      v13 += 88;
      if (v11 == v12)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_23BBD4(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&qword_941A68);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23BC44(uint64_t a1)
{
  v2 = sub_BD88(&qword_941A68);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23BCAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&qword_941A68);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

double sub_23BDD0(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v9 = sub_75AC60();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((sub_75AC20() & 1) == 0)
  {
    [a7 pageMarginInsets];
    a1 = a1 - v13 - v14;
  }

  sub_75AC80();
  v15 = [a7 traitCollection];
  sub_75AC40();

  (*(v10 + 8))(v12, v9);
  return a1;
}

void sub_23BF0C()
{
  v0 = sub_75AC60();
  __chkstk_darwin(v0 - 8);
  v2 = &v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_75AC80();
  sub_21F164(v2);
  v3 = sub_75AC70();
  sub_21FC90(v3);
}

uint64_t sub_23C044(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23C08C(uint64_t a1)
{
  sub_BD88(&unk_93F5C0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_78D690;
  *(v2 + 32) = sub_23CE20();
  *(v2 + 40) = sub_23C1FC(a1);
  *(v2 + 48) = sub_23D2B0();
  return v2;
}

void sub_23C104(char a1)
{
  byte_94AF68 = a1 & 1;
  v1 = [objc_opt_self() sharedCoordinator];
  [v1 notify];
}

void sub_23C1D0(uint64_t *a1@<X8>)
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

uint64_t sub_23C1FC(uint64_t a1)
{
  v2 = sub_7572E0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_BD88(&unk_93F5C0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_77B6C0;
  v7 = v6;
  type metadata accessor for ActionDebugSetting();
  v8 = swift_allocObject();
  strcpy((v8 + 56), "Clear Recents");
  *(v8 + 70) = -4864;
  *(v8 + 72) = 0u;
  *(v8 + 88) = 0u;
  *(v8 + 104) = sub_23C520;
  *(v8 + 112) = 0;
  sub_7572D0();
  v9 = sub_7572B0();
  v11 = v10;
  v12 = *(v3 + 8);
  v27 = v2;
  v28 = v3 + 8;
  v12(v5, v2);
  v13 = v12;
  v29 = v9;
  v30 = v11;
  sub_76A6E0();
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
  *(v17 + 96) = sub_23D948;
  *(v17 + 104) = v16;

  sub_7572D0();
  v18 = sub_7572B0();
  v20 = v19;

  v13(v5, v2);
  v29 = v18;
  v30 = v20;
  sub_76A6E0();

  *(v14 + 40) = v17;
  type metadata accessor for DebugSection();
  v21 = swift_allocObject();
  sub_7572D0();
  v22 = sub_7572B0();
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

void sub_23C520()
{
  sub_762840();
  sub_768880();
  sub_762830();
}

void sub_23C568(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_23D950(a3);
  }
}

uint64_t sub_23C5C4()
{
  if (qword_93C720 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v8 = xmmword_94AF80;
  v9 = *&qword_94AF90;
  v7 = xmmword_94AF70;
  v10 = qword_94AFA0;
  v11 = xmmword_94AF70;
  v0 = qword_94AF90;
  sub_B2F4C(&v11, &v6);
  v1 = v0;

  v2 = sub_23CBB4();
  v4 = v3;
  sub_B2FFC(&v11);

  if (v4)
  {
    return 0x20746C7561666544;
  }

  v6 = v2;
  return sub_76A910();
}

void sub_23C6DC(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3)
  {
    v4 = HIBYTE(a3) & 0xF;
    v5 = a2 & 0xFFFFFFFFFFFFLL;
    if ((a3 & 0x2000000000000000) != 0 ? HIBYTE(a3) & 0xF : v5)
    {
      if ((a3 & 0x1000000000000000) != 0)
      {

        v9 = sub_6A8C20(a2, a3, 10);
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
          v7 = sub_76A790();
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
  if (qword_93C720 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_23CCBC(v9, v13 & 1);
  swift_endAccess();
}