uint64_t sub_12ACD0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 160))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_12AD18(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 152) = 0;
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
      *(result + 160) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 160) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_12AD90()
{
  result = qword_945D10;
  if (!qword_945D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_945D10);
  }

  return result;
}

uint64_t sub_12AEC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v141 = a3;
  v122 = sub_75B490();
  v121 = *(v122 - 8);
  __chkstk_darwin(v122);
  v120 = &v114 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v119 = &v114 - v6;
  v7 = sub_BD88(&unk_944DF0);
  __chkstk_darwin(v7 - 8);
  v134 = &v114 - v8;
  v133 = sub_7623A0();
  v128 = *(v133 - 8);
  __chkstk_darwin(v133);
  v130 = &v114 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = sub_BD88(&unk_9457F0);
  v131 = *(v132 - 8);
  __chkstk_darwin(v132);
  v129 = &v114 - v10;
  v11 = sub_BD88(&unk_948730);
  __chkstk_darwin(v11 - 8);
  v127 = &v114 - v12;
  v13 = sub_BD88(&qword_95F810);
  __chkstk_darwin(v13 - 8);
  v126 = &v114 - v14;
  v15 = sub_764CF0();
  v16 = *(v15 - 8);
  v135 = v15;
  v136 = v16;
  __chkstk_darwin(v15);
  v123 = &v114 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v142 = &v114 - v19;
  v20 = sub_7581D0();
  v137 = *(v20 - 8);
  v138 = v20;
  __chkstk_darwin(v20);
  v124 = &v114 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v125 = &v114 - v23;
  v24 = sub_BD88(&unk_948710);
  __chkstk_darwin(v24 - 8);
  v118 = &v114 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v117 = &v114 - v27;
  v28 = sub_BD88(&unk_93FD30);
  __chkstk_darwin(v28 - 8);
  v30 = &v114 - v29;
  v31 = sub_75A6B0();
  __chkstk_darwin(v31 - 8);
  __chkstk_darwin(v32);
  v33 = sub_BD88(&unk_948720);
  __chkstk_darwin(v33 - 8);
  v35 = &v114 - v34;
  v36 = sub_75A6E0();
  v37 = *(v36 - 8);
  __chkstk_darwin(v36);
  v39 = &v114 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = sub_75DC30();
  v115 = *(v116 - 8);
  __chkstk_darwin(v116);
  v41 = &v114 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_758760();
  v139 = a1;
  v140 = v42;
  if (sub_758750())
  {
    (*(v37 + 104))(v39, enum case for VideoFillMode.scaleAspectFill(_:), v36);
    sub_764BC0();
    sub_765260();
    sub_7666A0();

    v43 = sub_766690();
    (*(*(v43 - 8) + 56))(v35, 0, 1, v43);
    sub_764B60();
    sub_764BA0();
    sub_764B70();
    sub_764B50();
    sub_764BB0();
    sub_75DC10();
    sub_75C360();
    sub_768880();
    sub_764B40();
    sub_764BD0();
    v44 = sub_7570A0();
    (*(*(v44 - 8) + 56))(v30, 0, 1, v44);
    v45 = v117;
    sub_764B90();
    v46 = v118;
    sub_764B80();
    type metadata accessor for VideoView();
    sub_12C368(&qword_93F500, type metadata accessor for VideoView);
    v47 = sub_75C340();
    sub_10A2C(v46, &unk_948710);
    sub_10A2C(v45, &unk_948710);
    sub_10A2C(v30, &unk_93FD30);
    sub_10A2C(&v144, &unk_9443A0);
    v48 = v143;
    sub_43147C();
    swift_unknownObjectWeakAssign();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v50 = Strong;
      v51 = [v48 contentView];
      [v51 addSubview:v50];

      [v48 setNeedsLayout];

      (*(v115 + 8))(v41, v116);
    }

    else
    {
      (*(v115 + 8))(v41, v116);
    }
  }

  v52 = v139;
  v53 = sub_758750();
  if (v53)
  {
  }

  v54 = v143;
  v55 = swift_unknownObjectWeakLoadStrong();
  if (v55)
  {
    v56 = v53 == 0;
    v57 = v55;
    [v55 setHidden:v56];
  }

  [v54 setNeedsLayout];
  v58 = v125;
  sub_758740();
  v59 = OBJC_IVAR____TtC18ASMessagesProvider29AppShowcaseCollectionViewCell_showcaseType;
  swift_beginAccess();
  v61 = v137;
  v60 = v138;
  v62 = *(v137 + 24);
  v62(&v54[v59], v58, v138);
  swift_endAccess();
  v63 = *&v54[OBJC_IVAR____TtC18ASMessagesProvider29AppShowcaseCollectionViewCell_lockupView];
  v64 = v124;
  (*(v61 + 16))(v124, &v54[v59], v60);
  v65 = OBJC_IVAR____TtC18ASMessagesProvider21AppShowcaseLockupView_type;
  swift_beginAccess();
  v62(&v63[v65], v64, v60);
  swift_endAccess();
  sub_669834();
  v66 = *(v61 + 8);
  v66(v64, v60);
  [v54 setNeedsLayout];
  v66(v58, v60);
  sub_764EF0();
  v68 = v67;
  sub_758730();
  v138 = v69;
  v70 = sub_764EC0();
  v124 = sub_764DE0();
  v137 = v71;
  v118 = sub_764E40();
  v73 = v72;
  sub_764F00();
  v74 = sub_66CD30(v52);
  v139 = sub_764DB0();
  v75 = *&v63[OBJC_IVAR____TtC18ASMessagesProvider21AppShowcaseLockupView_titleLabel];
  v125 = v68;
  if (v68)
  {
    v76 = sub_769210();
  }

  else
  {
    v76 = 0;
  }

  v77 = v126;
  [v75 setText:v76];

  v78 = *&v63[OBJC_IVAR____TtC18ASMessagesProvider21AppShowcaseLockupView_descriptionLabel];
  if (v138)
  {
    v79 = sub_769210();
  }

  else
  {
    v79 = 0;
  }

  v126 = v73;
  [v78 setText:v79];

  if (v74)
  {
    v80 = enum case for Wordmark.arcade(_:);
    v81 = sub_765770();
    v82 = *(v81 - 8);
    (*(v82 + 104))(v77, v80, v81);
    (*(v82 + 56))(v77, 0, 1, v81);
    sub_396E8();
    v83 = sub_769FD0();
    sub_668944(v77, v83);
  }

  else
  {
    v84 = sub_765770();
    (*(*(v84 - 8) + 56))(v77, 1, 1, v84);
    sub_668944(v77, 0);
  }

  v85 = v135;
  sub_10A2C(v77, &qword_95F810);
  v86 = sub_BD88(&unk_948740);
  v87 = v127;
  (*(*(v86 - 8) + 56))(v127, 1, 1, v86);
  v88 = v128;
  v89 = v133;
  (*(v128 + 104))(v130, enum case for OfferButtonSubtitlePosition.below(_:), v133);
  (*(v88 + 56))(v134, 1, 1, v89);
  sub_12C368(&qword_944E20, &type metadata accessor for OfferButtonSubtitlePosition);
  v90 = v129;
  sub_760940();
  sub_1DFEBC(v70, v139, 0, v87, v90, v141, 0, 0);
  (*(v131 + 8))(v90, v132);
  sub_10A2C(v87, &unk_948730);
  if (v137)
  {
    v91 = v85;
    v92 = v126;
    if (v126)
    {
      v93 = v123;
      (*(v136 + 16))(v123, v142, v91);
      sub_BD88(&unk_944300);
      sub_768900();
      sub_768ED0();
      v94 = v144;
      type metadata accessor for CrossLinkPresenter();
      swift_allocObject();
      v95 = v63;
      v96 = v93;
      v97 = &unk_90D000;
      v98 = CrossLinkPresenter.init(adamId:title:subtitle:includeBetaApps:view:appStateController:)(v96, v124, v137, v118, v92, 0, v63, &off_89BD10, v94, *(&v94 + 1));
      v99 = OBJC_IVAR____TtC18ASMessagesProvider21AppShowcaseLockupView_crossLinkPresenter;
      swift_beginAccess();
      *&v95[v99] = v98;

      goto LABEL_24;
    }
  }

  else
  {

    v91 = v85;
  }

  v100 = OBJC_IVAR____TtC18ASMessagesProvider21AppShowcaseLockupView_crossLinkPresenter;
  swift_beginAccess();
  *&v63[v100] = 0;

  sub_66C488(0, 0);
  v97 = &unk_90D000;
LABEL_24:
  *&v63[OBJC_IVAR____TtC18ASMessagesProvider21AppShowcaseLockupView_offerDisplayProperties] = v70;

  if (v70)
  {

    v101 = v119;
    sub_75FE40();
    v102 = v121;
    v103 = v120;
    v104 = v122;
    (*(v121 + 104))(v120, enum case for OfferLabelStyle.none(_:), v122);
    sub_12C368(&unk_9535D0, &type metadata accessor for OfferLabelStyle);
    v105 = sub_7691C0();
    v106 = *(v102 + 8);
    v106(v103, v104);
    v106(v101, v104);
    if ((v105 & 1) == 0)
    {

      sub_75FE80();
      sub_BD88(&unk_944300);
      sub_768900();
      sub_768ED0();
      sub_75A920();
      sub_768ED0();
      sub_75A7D0();

      v108 = sub_75E260();
      swift_allocObject();
      v109 = sub_75E240();
      *(&v145 + 1) = v108;
      *&v144 = v109;
      v110 = OBJC_IVAR____TtC18ASMessagesProvider21AppShowcaseLockupView_offerLabelPresenter;
      swift_beginAccess();

      sub_12C2F8(&v144, &v63[v110]);
      swift_endAccess();
      v111 = objc_opt_self();
      v112 = [v111 areAnimationsEnabled];
      [v111 setAnimationsEnabled:0];
      sub_12C368(&qword_945D60, type metadata accessor for AppShowcaseLockupView);
      swift_unknownObjectRetain();
      sub_75E250();
      [v63 layoutIfNeeded];
      [v111 setAnimationsEnabled:v112];

      goto LABEL_29;
    }
  }

  v144 = 0u;
  v145 = 0u;
  v107 = OBJC_IVAR____TtC18ASMessagesProvider21AppShowcaseLockupView_offerLabelPresenter;
  swift_beginAccess();
  sub_12C2F8(&v144, &v63[v107]);
  swift_endAccess();
  sub_52B0DC(0, 0);
  [v63 v97[463]];

LABEL_29:

  (*(v136 + 8))(v142, v91);
  [v143 v97[463]];
}

uint64_t sub_12C2F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&unk_93FBD0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_12C368(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_12C3B0(uint64_t a1, void *a2, uint64_t a3)
{
  v67 = a3;
  v62 = a2;
  v60 = sub_766690();
  v3 = *(v60 - 8);
  __chkstk_darwin(v60);
  v66 = &v40[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v54 = sub_7652D0();
  v5 = *(v54 - 8);
  __chkstk_darwin(v54);
  v53 = &v40[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v52 = &v40[-v8];
  __chkstk_darwin(v9);
  v51 = &v40[-v10];
  v11 = sub_7581D0();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v57 = &v40[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v14);
  v16 = &v40[-v15];
  __chkstk_darwin(v17);
  v56 = &v40[-v18];
  __chkstk_darwin(v19);
  v49 = &v40[-v20];
  v21 = sub_764AD0();
  v22 = *(v21 + 16);
  v58 = v21 + 32;
  v48 = (v12 + 32);
  v65 = (v12 + 88);
  v64 = enum case for AppShowcaseType.large(_:);
  v47 = enum case for AppShowcaseType.small(_:);
  v41 = enum case for AppShowcaseType.smallAlignedLeft(_:);
  v55 = (v12 + 8);
  v46 = enum case for Artwork.Style.roundedRect(_:);
  v45 = (v5 + 104);
  v44 = (v5 + 8);
  v43 = (v12 + 16);
  v42 = (v3 + 8);
  v59 = v21;

  v24 = 0;
  v50 = v16;
  v61 = v22;
  while (v24 == v22)
  {
    v75 = 0;
    v24 = v22;
    v73 = 0u;
    v74 = 0u;
LABEL_9:
    v71[0] = v73;
    v71[1] = v74;
    v72 = v75;
    if (!*(&v74 + 1))
    {
      return swift_bridgeObjectRelease_n();
    }

    sub_10914(v71, v70);
    sub_134D8(v70, v68);
    sub_BD88(&unk_944DA0);
    sub_758770();
    if ((swift_dynamicCast() & 1) == 0)
    {
      v69 = 0;
    }

    result = sub_BEB8(v70);
    if (v69)
    {
      v25 = v62;
      [v62 pageMarginInsets];
      [v25 pageMarginInsets];
      sub_758760();
      v26 = sub_764EE0();

      if (v26)
      {
        v27 = v49;
        sub_758740();
        v28 = v56;
        (*v48)(v56, v27, v11);
        v29 = (*v65)(v28, v11);
        v63 = v24;
        if (v29 != v64 && v29 != v47 && v29 != v41)
        {
          (*v55)(v56, v11);
        }

        v30 = v52;
        sub_7652E0();
        v31 = v53;
        v32 = v54;
        (*v45)(v53, v46, v54);
        v33 = v51;
        sub_765290();
        v34 = *v44;
        (*v44)(v31, v32);
        v34(v30, v32);
        sub_7652B0();
        sub_765330();
        sub_75A060();

        v34(v33, v32);
        v16 = v50;
        v24 = v63;
      }

      if (!sub_758750())
      {

        goto LABEL_3;
      }

      sub_764BC0();

      sub_765260();
      sub_765260();
      sub_7666A0();
      sub_758740();
      v35 = sub_7665F0();
      v36 = v57;
      (*v43)(v57, v16, v11);
      v37 = (*v65)(v36, v11);
      if (v37 == v64)
      {
        if (v35)
        {
          goto LABEL_30;
        }

        if (qword_93D0F0 == -1)
        {
LABEL_29:
          sub_BE38(v60, qword_954F58);
          sub_766650();
LABEL_30:
          (*v55)(v16, v11);
          goto LABEL_31;
        }

LABEL_32:
        swift_once();
        goto LABEL_29;
      }

      if (v37 == v47 || v37 == v41)
      {
        if (qword_93D0F0 == -1)
        {
          goto LABEL_29;
        }

        goto LABEL_32;
      }

      v38 = *v55;
      (*v55)(v16, v11);
      v38(v57, v11);
LABEL_31:
      v39 = v66;
      sub_766660();
      sub_765330();
      sub_75A060();

      result = (*v42)(v39, v60);
LABEL_3:
      v22 = v61;
    }
  }

  if ((v24 & 0x8000000000000000) == 0)
  {
    if (v24 >= *(v59 + 16))
    {
      goto LABEL_35;
    }

    sub_134D8(v58 + 40 * v24++, &v73);
    goto LABEL_9;
  }

  __break(1u);
LABEL_35:
  __break(1u);
  return result;
}

uint64_t sub_12CCE0()
{
  type metadata accessor for DebugMetricsViewModel();
  swift_allocObject();
  return sub_12E3FC();
}

uint64_t sub_12CD18@<X0>(uint64_t a1@<X8>)
{
  v58 = a1;
  v2 = sub_BD88(&qword_945E58);
  __chkstk_darwin(v2 - 8);
  v57 = &v37 - v3;
  v4 = sub_767F20();
  v55 = *(v4 - 8);
  v56 = v4;
  __chkstk_darwin(v4);
  v49 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_767D20();
  v43 = *(v42 - 8);
  __chkstk_darwin(v42);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_BD88(&qword_945E60);
  v40 = *(v39 - 8);
  __chkstk_darwin(v39);
  v9 = &v37 - v8;
  v45 = sub_BD88(&qword_945E68);
  v46 = *(v45 - 8);
  __chkstk_darwin(v45);
  v11 = &v37 - v10;
  v47 = sub_BD88(&qword_945E70);
  v48 = *(v47 - 8);
  __chkstk_darwin(v47);
  v38 = &v37 - v12;
  v50 = sub_BD88(&qword_945E78);
  v51 = *(v50 - 8);
  __chkstk_darwin(v50);
  v41 = &v37 - v13;
  v14 = *(v1 + 16);
  v54 = *(v1 + 8);
  v53 = v14;
  v52 = *(v1 + 24);
  type metadata accessor for DebugMetricsViewModel();
  sub_12EBF8(&qword_945E80, type metadata accessor for DebugMetricsViewModel);
  sub_767CC0();
  v44 = v1;
  v67 = *(v1 + 32);
  v15 = *(v1 + 48);
  v62 = *(v1 + 32);
  v63 = v15;
  v37 = v15;
  sub_BD88(&qword_945E88);
  sub_768220();
  v16 = sub_12D5F0(v65, *(&v65 + 1));

  *&v62 = v16;
  v59 = &v62;
  v60 = sub_12DA44;
  v61 = 0;
  sub_BD88(&qword_945E90);
  sub_12E90C();
  sub_768070();

  sub_767D10();
  v17 = sub_16194(&qword_945EB0, &qword_945E60);
  v18 = v11;
  v19 = v39;
  v20 = v42;
  sub_7681E0();
  (*(v43 + 8))(v7, v20);
  (*(v40 + 8))(v9, v19);
  v65 = v67;
  v66 = v15;
  sub_768230();
  v21 = v49;
  sub_767F10();
  *&v62 = v19;
  *(&v62 + 1) = v20;
  v63 = v17;
  v64 = &protocol witness table for PlainListStyle;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v22 = v45;
  v23 = v38;
  sub_768130();

  (*(v55 + 8))(v21, v56);
  (*(v46 + 8))(v18, v22);
  v62 = __PAIR128__(OpaqueTypeConformance2, v22);
  v24 = swift_getOpaqueTypeConformance2();
  v25 = v41;
  v26 = v47;
  sub_768150();
  (*(v48 + 8))(v23, v26);
  v27 = v57;
  sub_767FD0();
  v28 = sub_767FE0();
  (*(*(v28 - 8) + 56))(v27, 0, 1, v28);
  *&v62 = v26;
  *(&v62 + 1) = v24;
  swift_getOpaqueTypeConformance2();
  v29 = v58;
  v30 = v50;
  sub_7681C0();
  sub_10A2C(v27, &qword_945E58);
  (*(v51 + 8))(v25, v30);
  v31 = v44;
  v62 = v67;
  v68 = v37;
  v32 = swift_allocObject();
  v33 = *(v31 + 16);
  *(v32 + 16) = *v31;
  *(v32 + 32) = v33;
  *(v32 + 48) = *(v31 + 32);
  *(v32 + 64) = *(v31 + 48);
  v34 = (v29 + *(sub_BD88(&qword_945EB8) + 36));
  *v34 = sub_12EA18;
  v34[1] = v32;
  v34[2] = 0;
  v34[3] = 0;

  sub_12EA20();
  sub_B2F4C(&v62, &v65);
  return sub_12EA28(&v68, &v65);
}

void *sub_12D5F0(uint64_t a1, unint64_t a2)
{
  v4 = sub_BD88(&qword_945F18);
  __chkstk_darwin(v4 - 8);
  v38 = &v29 - v5;
  v29 = sub_75C510();
  v39 = *(v29 - 8);
  __chkstk_darwin(v29);
  v37 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v29 - v8;
  if (!a2)
  {
    goto LABEL_17;
  }

  v10 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v10 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v10)
  {
LABEL_17:
    swift_getKeyPath();
    swift_getKeyPath();
    sub_767C50();

    return v42;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_767C50();

  result = v42;
  v36 = *(v42 + 16);
  if (!v36)
  {
    v13 = _swiftEmptyArrayStorage;
LABEL_19:

    return v13;
  }

  v34 = a1;
  v35 = a2;
  v12 = 0;
  v31 = (v39 + 32);
  v32 = v39 + 16;
  v30 = (v39 + 8);
  v13 = _swiftEmptyArrayStorage;
  v14 = v29;
  v33 = v42;
  while (v12 < result[2])
  {
    v15 = (*(v39 + 80) + 32) & ~*(v39 + 80);
    v16 = *(v39 + 72);
    (*(v39 + 16))(v9, result + v15 + v16 * v12, v14);
    v17 = v14;
    sub_75C4F0();
    v18 = sub_769100();
    v20 = v19;

    v42 = v18;
    v43 = v20;
    v40 = v34;
    v41 = v35;
    v21 = sub_7573C0();
    v22 = v38;
    (*(*(v21 - 8) + 56))(v38, 1, 1, v21);
    sub_12EC40();
    sub_76A500();
    v24 = v23;
    sub_10A2C(v22, &qword_945F18);

    if (v24)
    {
      (*v30)(v9, v17);
      v14 = v17;
    }

    else
    {
      v25 = *v31;
      (*v31)(v37, v9, v17);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v44 = v13;
      if (isUniquelyReferenced_nonNull_native)
      {
        v14 = v17;
      }

      else
      {
        sub_143D5C(0, v13[2] + 1, 1);
        v14 = v29;
        v13 = v44;
      }

      v28 = v13[2];
      v27 = v13[3];
      if (v28 >= v27 >> 1)
      {
        sub_143D5C(v27 > 1, v28 + 1, 1);
        v14 = v29;
        v13 = v44;
      }

      v13[2] = v28 + 1;
      v25(v13 + v15 + v28 * v16, v37, v14);
    }

    ++v12;
    result = v33;
    if (v36 == v12)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_12DA44(uint64_t a1)
{
  v2 = type metadata accessor for DebugMetricsEventDetailView(0);
  __chkstk_darwin(v2);
  v4 = &v7[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = a1;
  v5 = sub_75C510();
  (*(*(v5 - 8) + 16))(v4, a1, v5);
  type metadata accessor for DebugMetricsEventDetailView.Summary(0);
  sub_12EBF8(&qword_945F08, type metadata accessor for DebugMetricsEventDetailView.Summary);
  sub_12EBF8(&qword_945F10, type metadata accessor for DebugMetricsEventDetailView);
  return sub_767D00();
}

uint64_t sub_12DBB8(void *a1)
{
  type metadata accessor for DebugMetricsViewModel();
  sub_12EBF8(&qword_945E80, type metadata accessor for DebugMetricsViewModel);
  *(sub_767CC0() + OBJC_IVAR____TtC18ASMessagesProviderP33_557A9BF292153164DC580DF4CC0DE5B821DebugMetricsViewModel_recorder) = *a1;
  swift_retain_n();

  sub_12DD14();
}

uint64_t sub_12DC94()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_767C50();

  return v1;
}

uint64_t sub_12DD14()
{
  v1 = v0;
  v2 = sub_BD88(&qword_945EC8);
  __chkstk_darwin(v2 - 8);
  v4 = &v21 - v3;
  v5 = sub_BD88(&qword_945ED0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v21 - v7;
  v9 = sub_BD88(&qword_945ED8);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v21 - v11;
  if (_swiftEmptyArrayStorage >> 62 && sub_76A860())
  {
    v13 = sub_1A2A7C(_swiftEmptyArrayStorage);
  }

  else
  {
    v13 = &_swiftEmptySetSingleton;
  }

  v14 = OBJC_IVAR____TtC18ASMessagesProviderP33_557A9BF292153164DC580DF4CC0DE5B821DebugMetricsViewModel_cancellables;
  swift_beginAccess();
  *(v1 + v14) = v13;

  if (*(v1 + OBJC_IVAR____TtC18ASMessagesProviderP33_557A9BF292153164DC580DF4CC0DE5B821DebugMetricsViewModel_recorder))
  {
    v24 = *(v1 + OBJC_IVAR____TtC18ASMessagesProviderP33_557A9BF292153164DC580DF4CC0DE5B821DebugMetricsViewModel_recorder);

    sub_761360();
    sub_12EA98();
    v16 = sub_769970();
    v22 = v8;
    v23 = v9;
    v17 = v16;
    v25 = v16;
    v18 = sub_769950();
    (*(*(v18 - 8) + 56))(v4, 1, 1, v18);
    sub_16194(&qword_945EE0, &qword_945ED0);
    sub_12EBF8(&qword_945EE8, sub_12EA98);
    v19 = v22;
    sub_767C80();
    sub_10A2C(v4, &qword_945EC8);

    (*(v6 + 8))(v19, v5);
    swift_allocObject();
    swift_weakInit();
    sub_16194(&qword_945EF0, &qword_945ED8);
    v20 = v23;
    sub_767C90();

    (*(v10 + 8))(v12, v20);
    swift_beginAccess();
    sub_767C00();
    swift_endAccess();
  }

  return result;
}

uint64_t sub_12E12C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    sub_5B4F14(v1);
    swift_getKeyPath();
    swift_getKeyPath();
    return sub_767C60();
  }

  return result;
}

uint64_t sub_12E1C8()
{
  v1 = OBJC_IVAR____TtC18ASMessagesProviderP33_557A9BF292153164DC580DF4CC0DE5B821DebugMetricsViewModel__eventsSnapshot;
  v2 = sub_BD88(&qword_945E50);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DebugMetricsViewModel()
{
  result = qword_945DA8;
  if (!qword_945DA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_12E2E4()
{
  sub_12E38C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_12E38C()
{
  if (!qword_945DB8)
  {
    sub_133D8(&unk_945DC0);
    v0 = sub_767C70();
    if (!v1)
    {
      atomic_store(v0, &qword_945DB8);
    }
  }
}

uint64_t sub_12E3FC()
{
  v1 = sub_BD88(&qword_945E50);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v8 - v3;
  v5 = OBJC_IVAR____TtC18ASMessagesProviderP33_557A9BF292153164DC580DF4CC0DE5B821DebugMetricsViewModel__eventsSnapshot;
  v8[1] = _swiftEmptyArrayStorage;
  sub_BD88(&unk_945DC0);
  sub_767C40();
  (*(v2 + 32))(v0 + v5, v4, v1);
  if (_swiftEmptyArrayStorage >> 62 && sub_76A860())
  {
    v6 = sub_1A2A7C(_swiftEmptyArrayStorage);
  }

  else
  {
    v6 = &_swiftEmptySetSingleton;
  }

  *(v0 + OBJC_IVAR____TtC18ASMessagesProviderP33_557A9BF292153164DC580DF4CC0DE5B821DebugMetricsViewModel_cancellables) = v6;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProviderP33_557A9BF292153164DC580DF4CC0DE5B821DebugMetricsViewModel_recorder) = 0;
  return v0;
}

uint64_t sub_12E550@<X0>(uint64_t *a1@<X8>)
{
  result = sub_767C30();
  *a1 = result;
  return result;
}

uint64_t sub_12E5A0@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_767C50();

  *a1 = v3;
  return result;
}

uint64_t sub_12E620()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_767C60();
}

uint64_t sub_12E69C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;

  sub_BD88(&unk_945DC0);
  sub_7572E0();
  sub_BD88(&qword_945EA8);
  sub_16194(&qword_945EF8, &unk_945DC0);
  sub_16194(&qword_945EA0, &qword_945EA8);
  sub_12EBF8(&qword_945F00, &type metadata accessor for DebugMetricsEvent);
  return sub_768250();
}

uint64_t sub_12E840(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_12E888(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_12E90C()
{
  result = qword_945E98;
  if (!qword_945E98)
  {
    sub_133D8(&qword_945E90);
    sub_16194(&qword_945EA0, &qword_945EA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_945E98);
  }

  return result;
}

uint64_t sub_12E9BC()
{

  sub_12EA10();

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_12EA28(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&qword_945EC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_12EA98()
{
  result = qword_940340;
  if (!qword_940340)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_940340);
  }

  return result;
}

uint64_t sub_12EAE4()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_12EB2C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_12EB8C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = sub_75C510();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v3, v4);
}

uint64_t sub_12EBF8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_12EC40()
{
  result = qword_957FB0;
  if (!qword_957FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_957FB0);
  }

  return result;
}

unint64_t sub_12EC98()
{
  result = qword_945F20;
  if (!qword_945F20)
  {
    sub_133D8(&qword_945EB8);
    sub_133D8(&qword_945E78);
    sub_133D8(&qword_945E70);
    sub_133D8(&qword_945E68);
    sub_133D8(&qword_945E60);
    sub_767D20();
    sub_16194(&qword_945EB0, &qword_945E60);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_945F20);
  }

  return result;
}

double sub_12EE70()
{
  v1 = v0;
  v2 = sub_760820();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_760840();
  v71 = *(v6 - 8);
  v72 = v6;
  __chkstk_darwin(v6);
  v70 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_93C3F8 != -1)
  {
    swift_once();
  }

  v8 = sub_BE38(v2, qword_99B150);
  (*(v3 + 16))(v5, v8, v2);
  v9 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_offerButton);
  type metadata accessor for BaseLockupView();
  sub_75D650();
  v10 = &v9[OBJC_IVAR____TtC18ASMessagesProvider11OfferButton_cachedIntrinsicContentSize];
  if (v9[OBJC_IVAR____TtC18ASMessagesProvider11OfferButton_cachedIntrinsicContentSize + 16])
  {
    v11 = OBJC_IVAR____TtC18ASMessagesProvider11OfferButton__configuration;
    swift_beginAccess();
    sub_134D8(&v9[v11], v120);
    sub_B170(v120, v121);
    sub_760DE0();
    v13 = v12;
    v15 = v14;
    sub_BEB8(v120);
    *v10 = v13;
    *(v10 + 1) = v15;
    v10[16] = 0;
  }

  sub_760810();
  v16 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_artworkView);
  v17 = sub_759210();
  v122 = &protocol witness table for UIView;
  v121 = v17;
  v67 = v16;
  v120[0] = v16;
  v18 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_headingLabel);
  v66 = v18;
  if (v18)
  {
    v19 = sub_75BB20();
    v20 = &protocol witness table for UILabel;
    v21 = v18;
  }

  else
  {
    v21 = 0;
    v19 = 0;
    v20 = 0;
    v116 = 0;
    v117 = 0;
  }

  v115 = v21;
  v118 = v19;
  v119 = v20;
  v22 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_titleLabel);
  v23 = sub_75BB20();
  v24 = v23;
  v114 = &protocol witness table for UILabel;
  v113 = v23;
  v112 = v22;
  v25 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_subtitleLabel);
  v111 = &protocol witness table for UILabel;
  v110 = v23;
  v64 = v25;
  v65 = v22;
  v109 = v25;
  v26 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_tertiaryTitleLabel);
  if (v26)
  {
    v27 = &protocol witness table for UILabel;
    v28 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_tertiaryTitleLabel);
    v29 = v23;
  }

  else
  {
    v28 = 0;
    v29 = 0;
    v27 = 0;
    v105 = 0;
    v106 = 0;
  }

  v104 = v28;
  v107 = v29;
  v108 = v27;
  v30 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_offerLabel);
  v102 = v23;
  v103 = &protocol witness table for UILabel;
  v63 = v30;
  v101 = v30;
  v99 = type metadata accessor for OfferButton();
  v100 = &protocol witness table for UIView;
  v98 = v9;
  v31 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_userRatingView);
  v96 = type metadata accessor for RatingView();
  v97 = &protocol witness table for UIView;
  v94 = &protocol witness table for UILabel;
  v95 = v31;
  v32 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_ratingCountLabel);
  v93 = v24;
  v61 = v32;
  v62 = v31;
  v92 = v32;
  v33 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_editorsChoiceView);
  v68 = v9;
  if (v33)
  {
    v34 = type metadata accessor for EditorsChoiceView();
    v35 = &protocol witness table for UIView;
    v36 = v33;
  }

  else
  {
    v36 = 0;
    v34 = 0;
    v35 = 0;
    v88 = 0;
    v89 = 0;
  }

  v87 = v36;
  v90 = v34;
  v91 = v35;
  v37 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_searchAdTransparencyButton);
  v69 = v5;
  if (v37)
  {
    v38 = type metadata accessor for SearchAdTransparencyButton();
    v39 = &protocol witness table for UIView;
  }

  else
  {
    v38 = 0;
    v39 = 0;
    v83 = 0;
    v84 = 0;
  }

  v81 = &protocol witness table for UILabel;
  v82 = v37;
  v85 = v38;
  v86 = v39;
  v40 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_descriptionLabel);
  v80 = v24;
  v79 = v40;
  v41 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_metadataRibbonView);
  v77 = type metadata accessor for MetadataRibbonView();
  v78 = &protocol witness table for UIView;
  v76 = v41;
  v42 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_searchTagsRibbonView);
  v74 = type metadata accessor for SearchTagsRibbonView();
  v75 = &protocol witness table for UIView;
  v73 = v42;
  v43 = v33;
  v44 = v37;
  v45 = v40;
  v46 = v41;
  v42;
  v47 = v67;
  v48 = v66;
  v49 = v65;
  v50 = v64;
  v51 = v26;
  v52 = v63;
  v53 = v68;
  v54 = v62;
  v55 = v61;
  MetadataRibbonView.hasContent.getter();
  sub_EC48();
  v56 = v70;
  sub_760830();
  sub_133304(&qword_945FA0, &type metadata accessor for SmallSearchLockupLayout);
  v57 = v72;
  sub_7665A0();
  v59 = v58;
  (*(v71 + 8))(v56, v57);
  return v59;
}

unint64_t sub_12F484()
{
  v1 = v0;
  v2 = sub_760D90();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20.value.super.isa = 0;
  v20.is_nil = 0;
  sub_7591D0(v20, v6);
  v7 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_descriptionLabel];
  v8 = [v7 superview];
  if (!v8 || (v9 = v8, sub_BE70(0, &qword_93E550), v10 = v0, v11 = sub_76A1C0(), v9, v10, (v11 & 1) == 0))
  {
    [v1 addSubview:v7];
  }

  [v7 setHidden:1];
  [v7 setText:0];
  [v1 setNeedsLayout];
  v12 = OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_searchAdTransparencyButton;
  v13 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_searchAdTransparencyButton];
  if (v13)
  {
    [v13 removeFromSuperview];
    v14 = *&v1[v12];
  }

  else
  {
    v14 = 0;
  }

  *&v1[v12] = 0;

  v1[OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_includesMetadataInformationInLockup] = 0;
  v15 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_metadataRibbonView];
  v16 = OBJC_IVAR____TtC18ASMessagesProvider18MetadataRibbonView_metadataRibbonItemModels;
  swift_beginAccess();
  *&v15[v16] = _swiftEmptyArrayStorage;

  sub_1B8988(_swiftEmptyArrayStorage);
  _s18ASMessagesProvider18MetadataRibbonViewC7metrics11AppStoreKit0cdE6LayoutV7MetricsVvpfi_0();
  v17 = OBJC_IVAR____TtC18ASMessagesProvider18MetadataRibbonView_metrics;
  swift_beginAccess();
  (*(v3 + 24))(&v15[v17], v5, v2);
  swift_endAccess();
  [v15 setNeedsLayout];
  (*(v3 + 8))(v5, v2);
  *(*&v1[OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_searchTagsRibbonView] + OBJC_IVAR____TtC18ASMessagesProvider20SearchTagsRibbonView_metadataRibbonItemModels) = _swiftEmptyArrayStorage;

  return sub_D3A4(_swiftEmptyArrayStorage);
}

uint64_t sub_12F734()
{
  v1 = OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_impressionsCalculator;
  swift_beginAccess();
  if (*(v0 + v1))
  {

    sub_75F4E0();
  }

  *(v0 + v1) = 0;

  v2 = (v0 + OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_impressionsUpdateBlock);
  swift_beginAccess();
  v3 = *v2;
  *v2 = 0;
  v2[1] = 0;
  sub_F704(v3);
  type metadata accessor for SearchTagsRibbonView();
  sub_133304(&qword_94AE40, type metadata accessor for SearchTagsRibbonView);
  return sub_7633D0();
}

uint64_t sub_12F83C()
{
  v0 = sub_7664A0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = (&v46 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_760820();
  sub_161DC(v4, qword_99B150);
  v46 = sub_BE38(v4, qword_99B150);
  v96 = &type metadata for Double;
  v97 = &protocol witness table for Double;
  v95 = 0x4024000000000000;
  if (qword_93D4F0 != -1)
  {
    swift_once();
  }

  v5 = sub_7666D0();
  v6 = sub_BE38(v5, qword_99E6E0);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  v7 = v1[13];
  v7(v3, enum case for FontSource.useCase(_:), v0);
  v50 = v7;
  v93 = sub_766CA0();
  v94 = &protocol witness table for StaticDimension;
  v8 = v93;
  v47 = v93;
  sub_B1B4(v92);
  v90 = v0;
  v91 = &protocol witness table for FontSource;
  v9 = sub_B1B4(v89);
  v52 = v1[2];
  v52(v9, v3, v0);
  v48 = v1 + 2;
  sub_766CB0();
  v10 = v1[1];
  v10(v3, v0);
  v53 = v1 + 1;
  *v3 = UIFontTextStyleBody;
  v49 = enum case for FontSource.textStyle(_:);
  v54 = v1 + 13;
  (v7)(v3);
  v90 = v8;
  v91 = &protocol witness table for StaticDimension;
  sub_B1B4(v89);
  v87 = v0;
  v88 = &protocol witness table for FontSource;
  v11 = sub_B1B4(v86);
  v12 = v52;
  v52(v11, v3, v0);
  v13 = UIFontTextStyleBody;
  sub_766CB0();
  v10(v3, v0);
  *v3 = v13;
  v14 = v49;
  v15 = v50;
  v50(v3, v49, v0);
  v87 = v47;
  v88 = &protocol witness table for StaticDimension;
  sub_B1B4(v86);
  v84 = v0;
  v85 = &protocol witness table for FontSource;
  v16 = sub_B1B4(v83);
  v12(v16, v3, v0);
  v17 = v13;
  sub_766CB0();
  v10(v3, v0);
  v51 = v10;
  *v3 = v17;
  v15(v3, v14, v0);
  v18 = v47;
  v84 = v47;
  v85 = &protocol witness table for StaticDimension;
  sub_B1B4(v83);
  v81 = v0;
  v82 = &protocol witness table for FontSource;
  v19 = sub_B1B4(v80);
  v20 = v52;
  v52(v19, v3, v0);
  v21 = v17;
  sub_766CB0();
  v10(v3, v0);
  *v3 = v21;
  v50(v3, v49, v0);
  v81 = v18;
  v82 = &protocol witness table for StaticDimension;
  sub_B1B4(v80);
  v78 = v0;
  v79 = &protocol witness table for FontSource;
  v22 = sub_B1B4(v77);
  v20(v22, v3, v0);
  v23 = v21;
  sub_766CB0();
  v51(v3, v0);
  *v3 = UIFontTextStyleFootnote;
  v24 = v49;
  v25 = v50;
  v50(v3, v49, v0);
  v26 = v18;
  v78 = v18;
  v79 = &protocol witness table for StaticDimension;
  sub_B1B4(v77);
  v75 = v0;
  v76 = &protocol witness table for FontSource;
  v27 = sub_B1B4(v74);
  v28 = v52;
  v52(v27, v3, v0);
  v29 = UIFontTextStyleFootnote;
  sub_766CB0();
  v30 = v51;
  v51(v3, v0);
  *v3 = v29;
  v25(v3, v24, v0);
  v75 = v26;
  v76 = &protocol witness table for StaticDimension;
  sub_B1B4(v74);
  v72 = v0;
  v73 = &protocol witness table for FontSource;
  v31 = sub_B1B4(v71);
  v28(v31, v3, v0);
  v32 = v29;
  sub_766CB0();
  v30(v3, v0);
  *v3 = v32;
  v33 = v49;
  v34 = v50;
  v50(v3, v49, v0);
  v72 = v26;
  v73 = &protocol witness table for StaticDimension;
  sub_B1B4(v71);
  v69 = v0;
  v70 = &protocol witness table for FontSource;
  v35 = sub_B1B4(v68);
  v52(v35, v3, v0);
  v36 = v32;
  sub_766CB0();
  v51(v3, v0);
  *v3 = v36;
  v34(v3, v33, v0);
  v69 = v26;
  v70 = &protocol witness table for StaticDimension;
  sub_B1B4(v68);
  v66 = v0;
  v67 = &protocol witness table for FontSource;
  v37 = sub_B1B4(v65);
  v38 = v52;
  v52(v37, v3, v0);
  v39 = v36;
  sub_766CB0();
  v40 = v51;
  v51(v3, v0);
  *v3 = v39;
  v34(v3, v33, v0);
  v66 = v26;
  v67 = &protocol witness table for StaticDimension;
  sub_B1B4(v65);
  v63 = v0;
  v64 = &protocol witness table for FontSource;
  v41 = sub_B1B4(v62);
  v38(v41, v3, v0);
  v42 = v39;
  sub_766CB0();
  v40(v3, v0);
  v64 = &protocol witness table for Double;
  v63 = &type metadata for Double;
  v61[19] = &protocol witness table for Double;
  v62[0] = 0x4024000000000000;
  v61[18] = &type metadata for Double;
  v61[14] = &protocol witness table for Double;
  v61[15] = 0x4010000000000000;
  v61[13] = &type metadata for Double;
  v61[9] = &protocol witness table for Double;
  v61[10] = 0x4020000000000000;
  v61[8] = &type metadata for Double;
  v61[5] = 0x401C000000000000;
  *v3 = v42;
  v50(v3, v49, v0);
  v61[3] = v47;
  v61[4] = &protocol witness table for StaticDimension;
  sub_B1B4(v61);
  v59 = v0;
  v60 = &protocol witness table for FontSource;
  v43 = sub_B1B4(v58);
  v52(v43, v3, v0);
  v44 = v42;
  sub_766CB0();
  v51(v3, v0);
  v59 = &type metadata for Double;
  v60 = &protocol witness table for Double;
  v57 = &protocol witness table for Double;
  v58[0] = 0x4040000000000000;
  v56 = &type metadata for Double;
  v55 = 0x4024000000000000;
  return sub_7607F0();
}

uint64_t sub_1301D0()
{
  v0 = sub_BD88(&unk_93F8F0);
  sub_161DC(v0, qword_945F30);
  sub_BE38(v0, qword_945F30);
  sub_BD88(&qword_93FBE0);
  type metadata accessor for NSTextAlignment(0);
  return sub_7592C0();
}

void sub_13026C(char a1)
{
  if (v1[OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_includeEditorsChoice] != (a1 & 1))
  {
    v2 = v1;
    if (v1[OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_includeEditorsChoice])
    {
      v3 = v1[OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_useAdsLocale];
      v4 = objc_allocWithZone(type metadata accessor for EditorsChoiceView());
      v5 = sub_2E0BE8(2u, 0, 0, v3, 0);
      v6 = OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_editorsChoiceView;
      v7 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_editorsChoiceView];
      *&v2[OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_editorsChoiceView] = v5;

      v8 = *&v2[v6];
      if (!v8 || (sub_BE70(0, &qword_93E540), v9 = v8, v10 = sub_769FF0(), [v9 setTintColor:v10], v9, v10, !*&v2[v6]))
      {
        __break(1u);
        return;
      }

      [v2 addSubview:?];
    }

    else
    {
      v11 = OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_editorsChoiceView;
      v12 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_editorsChoiceView];
      if (v12)
      {
        [v12 removeFromSuperview];
        v13 = *&v2[v11];
      }

      else
      {
        v13 = 0;
      }

      *&v2[v11] = 0;
    }

    [v2 setNeedsLayout];
  }
}

void sub_1303C8(void *a1)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_searchAdTransparencyButton;
  v4 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_searchAdTransparencyButton];
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
}

uint64_t sub_130470()
{
  v1 = sub_760D90();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_metadataRibbonView);
  v6 = OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_isDisplayingSearchAd;
  v7 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_isDisplayingSearchAd);
  v8 = OBJC_IVAR____TtC18ASMessagesProvider18MetadataRibbonView_isInsideSearchAd;
  result = swift_beginAccess();
  v5[v8] = v7;
  if (v7 == 1)
  {
    _s18ASMessagesProvider18MetadataRibbonViewC7metrics11AppStoreKit0cdE6LayoutV7MetricsVvpfi_0();
    v10 = OBJC_IVAR____TtC18ASMessagesProvider18MetadataRibbonView_metrics;
    swift_beginAccess();
    (*(v2 + 24))(&v5[v10], v4, v1);
    swift_endAccess();
    [v5 setNeedsLayout];
    result = (*(v2 + 8))(v4, v1);
  }

  *(*(v0 + OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_searchTagsRibbonView) + OBJC_IVAR____TtC18ASMessagesProvider20SearchTagsRibbonView_isInsideSearchAd) = *(v0 + v6);
  return result;
}

char *sub_130600(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v101 = sub_760AD0();
  v103 = *(v101 - 1);
  __chkstk_darwin(v101);
  v11 = &v94 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_BD88(&unk_93E530);
  __chkstk_darwin(v12 - 8);
  v14 = &v94 - v13;
  v15 = sub_7664A0();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v94 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_metadataRegularMargin] = 0x4024000000000000;
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_metadataSmallMargin] = 0x401C000000000000;
  if (qword_93DA88 != -1)
  {
    swift_once();
  }

  v98 = v11;
  v19 = sub_7666D0();
  v20 = sub_BE38(v19, qword_99F790);
  v100 = *(v19 - 8);
  v102 = *(v100 + 16);
  v104 = v100 + 16;
  v102(v18, v20, v19);
  (*(v16 + 104))(v18, enum case for FontSource.useCase(_:), v15);
  v109 = v15;
  v110 = &protocol witness table for FontSource;
  v21 = sub_B1B4(v108);
  (*(v16 + 16))(v21, v18, v15);
  sub_766CB0();
  (*(v16 + 8))(v18, v15);
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_regularWidthColumnSpacing] = 0x4040000000000000;
  v5[OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_includeRatings] = 0;
  v22 = type metadata accessor for RatingView();
  v23 = objc_allocWithZone(v22);
  *&v23[OBJC_IVAR____TtC18ASMessagesProvider10RatingView_rating] = 0;
  *&v23[OBJC_IVAR____TtC18ASMessagesProvider10RatingView_emptyStarColor] = 0;
  v24 = &v23[OBJC_IVAR____TtC18ASMessagesProvider10RatingView_starPadding];
  *v24 = 0;
  v24[8] = 1;
  *&v23[OBJC_IVAR____TtC18ASMessagesProvider10RatingView_maxNumberOfStars] = 5;
  if (qword_93D100 != -1)
  {
    swift_once();
  }

  v25 = qword_9552A8;
  *&v23[OBJC_IVAR____TtC18ASMessagesProvider10RatingView_starColor] = qword_9552A8;
  v23[OBJC_IVAR____TtC18ASMessagesProvider10RatingView_starSize] = 3;
  *v24 = 0;
  v24[8] = 1;
  v23[OBJC_IVAR____TtC18ASMessagesProvider10RatingView_useCase] = 0;
  v26 = type metadata accessor for StarRow();
  v27 = objc_allocWithZone(v26);
  v28 = v25;
  *&v23[OBJC_IVAR____TtC18ASMessagesProvider10RatingView_filledStarRowView] = sub_43DC44(5, 1, 3, 0, 1, 0, 0);
  v23[OBJC_IVAR____TtC18ASMessagesProvider10RatingView_fillEmptyStars] = 0;
  v29 = objc_allocWithZone(v26);
  *&v23[OBJC_IVAR____TtC18ASMessagesProvider10RatingView_emptyStarRowView] = sub_43DC44(5, 0, 3, 0, 1, 0, 0);
  v107.receiver = v23;
  v107.super_class = v22;
  v30 = objc_msgSendSuper2(&v107, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_43B880();
  v31 = OBJC_IVAR____TtC18ASMessagesProvider10RatingView_filledStarRowView;
  v32 = *&v30[OBJC_IVAR____TtC18ASMessagesProvider10RatingView_filledStarRowView];
  v33 = *&v32[OBJC_IVAR____TtC18ASMessagesProviderP33_DC70C8EA8944F731B495ED3266C3CFFA7StarRow_currentRating];
  *&v32[OBJC_IVAR____TtC18ASMessagesProviderP33_DC70C8EA8944F731B495ED3266C3CFFA7StarRow_currentRating] = *&v30[OBJC_IVAR____TtC18ASMessagesProvider10RatingView_rating];
  v34 = v32;
  sub_43C36C(v33);

  if (*&v30[OBJC_IVAR____TtC18ASMessagesProvider10RatingView_emptyStarRowView])
  {
    [v30 addSubview:?];
  }

  v35 = OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_userRatingView;
  [v30 addSubview:*&v30[v31]];

  *&v5[v35] = v30;
  v36 = OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_ratingCountLabel;
  v37 = v103;
  if (qword_93D938 != -1)
  {
    swift_once();
  }

  v38 = sub_BE38(v19, qword_99F3A0);
  v102(v14, v38, v19);
  v39 = *(v100 + 56);
  v39(v14, 0, 1, v19);
  v40 = *(v37 + 104);
  v103 = v37 + 104;
  v41 = v98;
  LODWORD(v100) = enum case for DirectionalTextAlignment.none(_:);
  v97 = v40;
  v40(v98);
  v42 = sub_75BB20();
  v43 = objc_allocWithZone(v42);
  *&v5[v36] = sub_75BB10();
  v5[OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_useAdsLocale] = 0;
  v5[OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_includeEditorsChoice] = 0;
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_editorsChoiceView] = 0;
  v44 = OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_metadataRibbonView;
  *&v5[v44] = [objc_allocWithZone(type metadata accessor for MetadataRibbonView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v45 = OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_searchTagsRibbonView;
  *&v5[v45] = [objc_allocWithZone(type metadata accessor for SearchTagsRibbonView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_searchAdTransparencyButton] = 0;
  v5[OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_isDisplayingSearchAd] = 0;
  v5[OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_includesMetadataInformationInLockup] = 0;
  v5[OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_shouldEvenlyDistribute] = 2;
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_impressionsCalculator] = 0;
  v46 = &v5[OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_impressionsUpdateBlock];
  *v46 = 0;
  v46[1] = 0;
  if (qword_93D930 != -1)
  {
    swift_once();
  }

  v47 = sub_BE38(v19, qword_99F388);
  v48 = v102;
  v102(v14, v47, v19);
  v95 = v19;
  v96 = v39;
  v39(v14, 0, 1, v19);
  v97(v41, v100, v101);
  v49 = objc_allocWithZone(v42);
  v50 = &unk_99B000;
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_descriptionLabel] = sub_75BB10();
  v106.receiver = v5;
  v106.super_class = ObjectType;
  v51 = objc_msgSendSuper2(&v106, "initWithFrame:", a1, a2, a3, a4);
  v52 = sub_7653B0();
  v109 = v52;
  v53 = sub_133304(&qword_93F9B0, &type metadata accessor for Feature);
  v110 = v53;
  v54 = sub_B1B4(v108);
  v55 = *(v52 - 8);
  v56 = *(v55 + 104);
  LODWORD(v103) = enum case for Feature.search_tags(_:);
  ObjectType = v52;
  v100 = v55 + 104;
  v101 = v56;
  (v56)(v54);
  LOBYTE(v52) = sub_765C30();
  sub_BEB8(v108);
  v57 = v48;
  if (v52)
  {
    v98 = v53;
    v58 = v51;
    if (qword_93D510 != -1)
    {
      swift_once();
    }

    v59 = v95;
    v60 = sub_BE38(v95, qword_99E740);
    v48(v14, v60, v59);
    v61 = v14;
    v62 = v14;
    v63 = v96;
    v96(v61, 0, 1, v59);
    sub_75BA40();
    v64 = qword_93D520;
    v65 = *&v58[OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_subtitleLabel];
    if (v64 != -1)
    {
      swift_once();
    }

    v66 = sub_BE38(v59, qword_99E770);
    v57(v62, v66, v59);
    v63(v62, 0, 1, v59);
    sub_75BA40();

    v67 = OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_ratingCountLabel;
    v68 = *&v58[OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_ratingCountLabel];
    sub_766B40();
    if (qword_93C748 != -1)
    {
      swift_once();
    }

    v69 = sub_760500();
    v70 = sub_BE38(v69, qword_99BB18);
    v109 = v69;
    v110 = sub_133304(&qword_9443B0, &type metadata accessor for MetadataRibbonTextStyle);
    v71 = sub_B1B4(v108);
    (*(*(v69 - 8) + 16))(v71, v70, v69);
    sub_75BA60();

    v72 = *&v58[v67];
    sub_BE70(0, &qword_93E540);
    v73 = v72;
    v74 = sub_769FF0();
    [v73 setTextColor:v74];

    [*&v58[v67] setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityExtraLarge];
    v75 = v98;
    v50 = &unk_99B000;
  }

  else
  {
    v76 = *&v51[OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_ratingCountLabel];
    sub_BE70(0, &qword_93E540);
    v77 = v76;
    v78 = sub_769FE0();
    [v77 setTextColor:v78];

    v75 = v53;
    v58 = v51;
  }

  v79 = v50[52];
  v80 = *&v58[v79];
  sub_BE70(0, &qword_93E540);
  v81 = v80;
  v82 = sub_769FF0();
  [v81 setTextColor:v82];

  [*&v58[v79] setUserInteractionEnabled:0];
  v83 = v103;
  if (qword_93C400 != -1)
  {
    swift_once();
  }

  v84 = sub_BD88(&unk_93F8F0);
  sub_BE38(v84, qword_945F30);
  v105 = v58;
  v85 = v58;
  sub_7592B0();

  sub_76A150();
  [v85 addSubview:*&v85[OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_userRatingView]];
  v86 = ObjectType;
  v109 = ObjectType;
  v110 = v75;
  v87 = sub_B1B4(v108);
  v88 = v101;
  v101(v87, v83, v86);
  v89 = sub_765C30();
  sub_BEB8(v108);
  if (v89)
  {
    [v85 addSubview:*&v85[OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_ratingCountLabel]];
  }

  v109 = v86;
  v110 = v75;
  v90 = sub_B1B4(v108);
  v88(v90, v83, v86);
  v91 = sub_765C30();
  sub_BEB8(v108);
  v92 = &OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_searchTagsRibbonView;
  if ((v91 & 1) == 0)
  {
    v92 = &OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_metadataRibbonView;
  }

  [v85 addSubview:*&v85[*v92]];
  *(*&v85[OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_offerButton] + OBJC_IVAR____TtC18ASMessagesProvider11OfferButton_includeTopPadding) = 0;
  return v85;
}

double sub_13143C(void *a1)
{
  v112 = a1;
  v2 = sub_760840();
  v101 = *(v2 - 8);
  v102 = v2;
  __chkstk_darwin(v2);
  v100 = &v82 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_760D90();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v85 = &v82 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_762D10();
  v94 = *(v7 - 8);
  v95 = v7;
  __chkstk_darwin(v7);
  v93 = &v82 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_75D850();
  v109 = *(v9 - 8);
  v110 = v9;
  __chkstk_darwin(v9);
  v105 = &v82 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v107 = &v82 - v12;
  v13 = sub_760820();
  v106 = *(v13 - 8);
  __chkstk_darwin(v13);
  v99 = &v82 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v82 - v16;
  v18 = sub_BD88(&unk_94AE30);
  __chkstk_darwin(v18 - 8);
  v83 = &v82 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v82 - v21;
  v23 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_metadataRibbonView];
  v24 = OBJC_IVAR____TtC18ASMessagesProvider18MetadataRibbonView_metadataRibbonItemModels;
  swift_beginAccess();
  v25 = *(v23 + v24);
  v26 = OBJC_IVAR____TtC18ASMessagesProvider18MetadataRibbonView_metrics;
  swift_beginAccess();
  (*(v5 + 16))(v22, v23 + v26, v4);
  v86 = v5;
  v87 = v4;
  v27 = *(v5 + 56);
  v103 = v22;
  v27(v22, 0, 1, v4);
  v28 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_searchTagsRibbonView];
  v29 = *(v28 + OBJC_IVAR____TtC18ASMessagesProvider20SearchTagsRibbonView_metadataRibbonItemModels);
  v84 = *(v28 + OBJC_IVAR____TtC18ASMessagesProvider20SearchTagsRibbonView_shouldEvenlyDistribute);
  v104 = v29;

  v111 = v25;

  [v1 layoutMargins];
  if (qword_93C3F8 != -1)
  {
    swift_once();
  }

  v30 = sub_BE38(v13, qword_99B150);
  v96 = *(v106 + 16);
  v97 = v106 + 16;
  v96(v17, v30, v13);
  v31 = v112;
  v32 = sub_769A00();
  v108 = v13;
  if (v32)
  {
    if (qword_93C440 != -1)
    {
      swift_once();
    }

    v33 = qword_946920;
  }

  else
  {
    if (qword_93C448 != -1)
    {
      swift_once();
    }

    v33 = qword_946938;
  }

  v34 = v110;
  v35 = sub_BE38(v110, v33);
  v36 = v109;
  v37 = v105;
  (*(v109 + 16))(v105, v35, v34);
  (*(v36 + 32))(v107, v37, v34);
  v38 = [v31 preferredContentSizeCategory];
  sub_769B20();

  sub_75D800();
  sub_75D830();
  sub_760810();
  v105 = v17;
  sub_760800();
  v92 = sub_7670D0();
  swift_allocObject();
  v98 = sub_7670B0();
  v39 = objc_opt_self();
  v90 = v39;
  v40 = [v39 preferredFontForTextStyle:UIFontTextStyleBody];
  v41 = sub_7653B0();
  v149[3] = v41;
  v42 = sub_133304(&qword_93F9B0, &type metadata accessor for Feature);
  v149[4] = v42;
  v43 = sub_B1B4(v149);
  v44 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v45 = *(v41 - 8);
  v91 = *(v45 + 104);
  v46 = v45 + 104;
  v88 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v91(v43, enum case for Feature.measurement_with_labelplaceholder(_:), v41);
  v89 = v46;
  sub_765C30();
  sub_BEB8(v149);
  v47 = v93;
  sub_762D00();
  sub_762CE0();
  v48 = v95;
  v94 = *(v94 + 8);
  (v94)(v47, v95);
  v49 = [v39 preferredFontForTextStyle:UIFontTextStyleFootnote];
  v148[3] = v41;
  v148[4] = v42;
  v50 = sub_B1B4(v148);
  v51 = v44;
  v52 = v91;
  v91(v50, v51, v41);
  sub_765C30();
  sub_BEB8(v148);
  sub_762D00();
  sub_762CE0();
  v53 = v94;
  (v94)(v47, v48);
  v54 = [v90 preferredFontForTextStyle:UIFontTextStyleFootnote];
  v147[3] = v41;
  v147[4] = v42;
  v55 = sub_B1B4(v147);
  v52(v55, v88, v41);
  sub_765C30();
  sub_BEB8(v147);
  sub_762D00();
  sub_762CE0();
  v53(v47, v48);
  v56 = v111;
  LODWORD(v95) = sub_246DC(0, v111) & (v56 != 0);
  if (v95 == 1)
  {
    v57 = v92;
    v58 = objc_allocWithZone(sub_7671D0());
    v59 = v112;
    v60 = sub_7671C0();
    v61 = v83;
    sub_133294(v103, v83);
    v63 = v86;
    v62 = v87;
    v64 = *(v86 + 48);
    if (v64(v61, 1, v87) == 1)
    {
      v65 = v85;
      _s18ASMessagesProvider18MetadataRibbonViewC7metrics11AppStoreKit0cdE6LayoutV7MetricsVvpfi_0();
      if (v64(v61, 1, v62) != 1)
      {
        sub_13322C(v61);
      }
    }

    else
    {
      v65 = v85;
      (*(v63 + 32))(v85, v61, v62);
    }

    v67 = v60;
    sub_2185C(v111, v65, v67);

    (*(v63 + 8))(v65, v62);
    swift_allocObject();
    v66 = sub_7670A0();
  }

  else
  {
    v57 = v92;
    swift_allocObject();
    v66 = sub_7670B0();
  }

  v68 = v66;

  v69 = v104;
  if ((sub_246DC(v104, 0) & (v69 != 0)) == 1)
  {
    sub_F7FC(v69, v84);
    swift_allocObject();
    v70 = sub_7670A0();
  }

  else
  {
    swift_allocObject();
    v70 = sub_7670B0();
  }

  v71 = v70;
  v96(v99, v105, v108);
  v146 = &protocol witness table for LayoutViewPlaceholder;
  v145 = v57;
  v144 = v98;
  v143 = 0;
  *&v141[40] = 0u;
  v142 = 0u;
  sub_134D8(v149, v141);
  sub_134D8(v148, &v140);
  v139 = 0;
  v137 = 0u;
  v138 = 0u;
  v136 = 0;
  v134 = 0u;
  v135 = 0u;

  v72 = sub_7670C0();
  v133 = &protocol witness table for LayoutViewPlaceholder;
  v132 = v57;
  v131 = v72;
  v130 = 0;
  v128 = 0u;
  v129 = 0u;
  v127 = 0;
  v125 = 0u;
  v126 = 0u;
  v124 = 0;
  v122 = 0u;
  v123 = 0u;
  v121 = 0;
  v120 = 0u;
  *&v119[40] = 0u;
  sub_134D8(v147, v119);
  v117 = v57;
  v118 = &protocol witness table for LayoutViewPlaceholder;
  v115 = &protocol witness table for LayoutViewPlaceholder;
  v116 = v68;
  v114 = v57;
  v113 = v71;
  v73 = v100;
  sub_760830();
  sub_7671D0();
  sub_BD88(&unk_93F5C0);
  v74 = swift_allocObject();
  *(v74 + 16) = xmmword_77D9F0;
  v75 = v112;
  *(v74 + 32) = v112;
  v76 = v75;
  v77 = sub_7671E0();
  sub_133304(&qword_945FA0, &type metadata accessor for SmallSearchLockupLayout);
  v78 = v102;
  sub_7665A0();
  v80 = v79;

  (*(v101 + 8))(v73, v78);
  sub_BEB8(v147);
  sub_BEB8(v148);
  sub_BEB8(v149);
  (*(v109 + 8))(v107, v110);
  (*(v106 + 8))(v105, v108);
  sub_13322C(v103);
  return v80;
}

uint64_t sub_132200()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_7664F0();
  v78 = *(v3 - 8);
  v79 = v3;
  __chkstk_darwin(v3);
  v76 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_760820();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_760840();
  v74 = *(v9 - 8);
  v75 = v9;
  *&v10 = __chkstk_darwin(v9).n128_u64[0];
  v73 = &v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130.receiver = v1;
  v130.super_class = ObjectType;
  v77 = ObjectType;
  objc_msgSendSuper2(&v130, "layoutSubviews", v10);
  if (qword_93C3F8 != -1)
  {
    swift_once();
  }

  v12 = sub_BE38(v5, qword_99B150);
  (*(v6 + 16))(v8, v12, v5);
  v13 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_offerButton];
  type metadata accessor for BaseLockupView();
  sub_75D650();
  v14 = &v13[OBJC_IVAR____TtC18ASMessagesProvider11OfferButton_cachedIntrinsicContentSize];
  if (v13[OBJC_IVAR____TtC18ASMessagesProvider11OfferButton_cachedIntrinsicContentSize + 16])
  {
    v15 = OBJC_IVAR____TtC18ASMessagesProvider11OfferButton__configuration;
    swift_beginAccess();
    sub_134D8(&v13[v15], v127);
    sub_B170(v127, v128);
    sub_760DE0();
    v17 = v16;
    v19 = v18;
    sub_BEB8(v127);
    *v14 = v17;
    *(v14 + 1) = v19;
    v14[16] = 0;
  }

  sub_760810();
  v20 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_artworkView];
  v21 = sub_759210();
  v129 = &protocol witness table for UIView;
  v128 = v21;
  v71 = v20;
  v127[0] = v20;
  v22 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_headingLabel];
  v70 = v22;
  if (v22)
  {
    v23 = sub_75BB20();
    v24 = &protocol witness table for UILabel;
    v25 = v22;
  }

  else
  {
    v25 = 0;
    v23 = 0;
    v24 = 0;
    v123 = 0;
    v124 = 0;
  }

  v122 = v25;
  v125 = v23;
  v126 = v24;
  v26 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_titleLabel];
  v27 = sub_75BB20();
  v28 = v27;
  v121 = &protocol witness table for UILabel;
  v120 = v27;
  v119 = v26;
  v29 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_subtitleLabel];
  v118 = &protocol witness table for UILabel;
  v117 = v27;
  v67 = v29;
  v68 = v26;
  v116 = v29;
  v30 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_tertiaryTitleLabel];
  if (v30)
  {
    v31 = &protocol witness table for UILabel;
    v32 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_tertiaryTitleLabel];
    v33 = v27;
  }

  else
  {
    v32 = 0;
    v33 = 0;
    v31 = 0;
    v112 = 0;
    v113 = 0;
  }

  v111 = v32;
  v114 = v33;
  v115 = v31;
  v34 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_offerLabel];
  v109 = v27;
  v110 = &protocol witness table for UILabel;
  v66 = v34;
  v108 = v34;
  v106 = type metadata accessor for OfferButton();
  v107 = &protocol witness table for UIView;
  v105 = v13;
  v35 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_userRatingView];
  v103 = type metadata accessor for RatingView();
  v104 = &protocol witness table for UIView;
  v101 = &protocol witness table for UILabel;
  v102 = v35;
  v36 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_ratingCountLabel];
  v100 = v28;
  v64 = v36;
  v65 = v35;
  v99 = v36;
  v37 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_editorsChoiceView];
  if (v37)
  {
    v38 = type metadata accessor for EditorsChoiceView();
    v39 = &protocol witness table for UIView;
    v40 = v37;
  }

  else
  {
    v40 = 0;
    v38 = 0;
    v39 = 0;
    v95 = 0;
    v96 = 0;
  }

  v94 = v40;
  v97 = v38;
  v98 = v39;
  v41 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_searchAdTransparencyButton];
  v72 = v8;
  v69 = v13;
  v42 = 0;
  if (v41)
  {
    v42 = type metadata accessor for SearchAdTransparencyButton();
    v43 = &protocol witness table for UIView;
  }

  else
  {
    v43 = 0;
    v90 = 0;
    v91 = 0;
  }

  v88 = &protocol witness table for UILabel;
  v89 = v41;
  v92 = v42;
  v93 = v43;
  v44 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_descriptionLabel];
  v87 = v28;
  v86 = v44;
  v45 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_metadataRibbonView];
  v84 = type metadata accessor for MetadataRibbonView();
  v85 = &protocol witness table for UIView;
  v83 = v45;
  v46 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_searchTagsRibbonView];
  v81 = type metadata accessor for SearchTagsRibbonView();
  v82 = &protocol witness table for UIView;
  v80 = v46;
  v47 = v37;
  v48 = v41;
  v49 = v44;
  v50 = v45;
  v51 = v46;
  v52 = v71;
  v53 = v70;
  v54 = v68;
  v55 = v67;
  v56 = v30;
  v57 = v66;
  v58 = v69;
  v59 = v65;
  v60 = v64;
  MetadataRibbonView.hasContent.getter();
  sub_EC48();
  v61 = v73;
  sub_760830();
  sub_75D650();
  v62 = v76;
  sub_7607E0();
  (*(v78 + 8))(v62, v79);
  return (*(v74 + 8))(v61, v75);
}

id sub_1328BC(uint64_t a1, double a2, double a3)
{
  ObjectType = swift_getObjectType();
  v8 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_searchAdTransparencyButton];
  if (v8)
  {
    v9 = v8;
    [v3 convertPoint:v9 toCoordinateSpace:{a2, a3}];
    v10 = [v9 pointInside:a1 withEvent:?];
    result = v8;
    if (v10)
    {
      return result;
    }
  }

  v12.receiver = v3;
  v12.super_class = ObjectType;
  return objc_msgSendSuper2(&v12, "hitTest:withEvent:", a1, a2, a3);
}

id sub_132A10(void *a1)
{
  v8.receiver = v1;
  v8.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v8, "traitCollectionDidChange:", a1);
  v3 = [v1 traitCollection];
  v4 = [v3 layoutDirection];

  if (!a1 || (result = [a1 layoutDirection], v4 != result))
  {
    if (qword_93C400 != -1)
    {
      swift_once();
    }

    v6 = sub_BD88(&unk_93F8F0);
    sub_BE38(v6, qword_945F30);
    v7 = v1;
    sub_7592B0();

    return sub_76A150();
  }

  return result;
}

uint64_t sub_132C20()
{
  v1 = OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_metadataTextSpace;
  v2 = sub_766CA0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_impressionsUpdateBlock);

  return sub_F704(v3);
}

uint64_t type metadata accessor for SmallSearchLockupView()
{
  result = qword_945F88;
  if (!qword_945F88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_132E70()
{
  result = sub_766CA0();
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_132FC8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_impressionsCalculator;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_133080()
{
  v1 = (v0 + OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_impressionsUpdateBlock);
  swift_beginAccess();
  v2 = *v1;
  sub_F714(*v1);
  return v2;
}

uint64_t sub_1330DC(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_impressionsUpdateBlock);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return sub_F704(v6);
}

uint64_t sub_13319C()
{
  type metadata accessor for SearchTagsRibbonView();
  sub_133304(&qword_94AE40, type metadata accessor for SearchTagsRibbonView);
  return sub_7633E0();
}

uint64_t sub_13322C(uint64_t a1)
{
  v2 = sub_BD88(&unk_94AE30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_133294(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&unk_94AE30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_133304(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_133350@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_7666D0();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_1333BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_7666D0();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_133434@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = sub_7666D0();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1334AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = sub_7666D0();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_133524@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  v5 = sub_7666D0();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_13359C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  v5 = sub_7666D0();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_133610@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = sub_762130();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, v2, v4, v6);
  v9 = (*(v5 + 88))(v8, v4);
  if (v9 == enum case for ChartOrCategoryBrickContext.BrickType.standard(_:))
  {
    v10 = type metadata accessor for StandardChartOrCategoryBrickFontStyles(0);
    a1[3] = v10;
    a1[4] = sub_133FDC(&qword_945FA8, type metadata accessor for StandardChartOrCategoryBrickFontStyles);
    v11 = sub_B1B4(a1);
    if (qword_93DC08 != -1)
    {
      swift_once();
    }

    v12 = sub_7666D0();
    v13 = sub_BE38(v12, qword_99FC10);
    v14 = *(*(v12 - 8) + 16);
    v14(v11, v13, v12);
    v15 = v10[5];
    if (qword_93DC10 != -1)
    {
      swift_once();
    }

    v16 = sub_BE38(v12, qword_99FC28);
    v14((v11 + v15), v16, v12);
    v17 = v10[6];
    if (qword_93DC18 != -1)
    {
      swift_once();
    }

    v18 = sub_BE38(v12, qword_99FC40);
    v14((v11 + v17), v18, v12);
    v19 = v10[7];
    if (qword_93DC20 != -1)
    {
      swift_once();
    }

    v20 = sub_BE38(v12, qword_99FC58);
    v14((v11 + v19), v20, v12);
    v21 = v10[8];
    if (qword_93DC28 != -1)
    {
      swift_once();
    }

    v22 = sub_BE38(v12, qword_99FC70);
    v14((v11 + v21), v22, v12);
    v23 = v10[9];
    if (qword_93DC30 != -1)
    {
      swift_once();
    }

    v24 = qword_99FC88;
LABEL_29:
    v35 = sub_BE38(v12, v24);
    return (v14)(v11 + v23, v35, v12);
  }

  if (v9 == enum case for ChartOrCategoryBrickContext.BrickType.search(_:))
  {
    v25 = type metadata accessor for SearchChartOrCategoryBrickFontStyles(0);
    a1[3] = v25;
    a1[4] = sub_133FDC(&qword_945FB0, type metadata accessor for SearchChartOrCategoryBrickFontStyles);
    v11 = sub_B1B4(a1);
    if (qword_93DC08 != -1)
    {
      swift_once();
    }

    v12 = sub_7666D0();
    v26 = sub_BE38(v12, qword_99FC10);
    v14 = *(*(v12 - 8) + 16);
    v14(v11, v26, v12);
    v27 = v25[5];
    if (qword_93DC10 != -1)
    {
      swift_once();
    }

    v28 = sub_BE38(v12, qword_99FC28);
    v14((v11 + v27), v28, v12);
    v29 = v25[6];
    if (qword_93DC38 != -1)
    {
      swift_once();
    }

    v30 = sub_BE38(v12, qword_99FCA0);
    v14((v11 + v29), v30, v12);
    v31 = v25[7];
    if (qword_93DC40 != -1)
    {
      swift_once();
    }

    v32 = sub_BE38(v12, qword_99FCB8);
    v14((v11 + v31), v32, v12);
    v33 = v25[8];
    if (qword_93DC48 != -1)
    {
      swift_once();
    }

    v34 = sub_BE38(v12, qword_99FCD0);
    v14((v11 + v33), v34, v12);
    v23 = v25[9];
    if (qword_93DC50 != -1)
    {
      swift_once();
    }

    v24 = qword_99FCE8;
    goto LABEL_29;
  }

  v37 = type metadata accessor for StandardChartOrCategoryBrickFontStyles(0);
  a1[3] = v37;
  a1[4] = sub_133FDC(&qword_945FA8, type metadata accessor for StandardChartOrCategoryBrickFontStyles);
  v38 = sub_B1B4(a1);
  if (qword_93DC08 != -1)
  {
    swift_once();
  }

  v39 = sub_7666D0();
  v40 = sub_BE38(v39, qword_99FC10);
  v41 = *(*(v39 - 8) + 16);
  v41(v38, v40, v39);
  v42 = v37[5];
  if (qword_93DC10 != -1)
  {
    swift_once();
  }

  v43 = sub_BE38(v39, qword_99FC28);
  v41((v38 + v42), v43, v39);
  v44 = v37[6];
  if (qword_93DC18 != -1)
  {
    swift_once();
  }

  v45 = sub_BE38(v39, qword_99FC40);
  v41((v38 + v44), v45, v39);
  v46 = v37[7];
  if (qword_93DC20 != -1)
  {
    swift_once();
  }

  v47 = sub_BE38(v39, qword_99FC58);
  v41((v38 + v46), v47, v39);
  v48 = v37[8];
  if (qword_93DC28 != -1)
  {
    swift_once();
  }

  v49 = sub_BE38(v39, qword_99FC70);
  v41((v38 + v48), v49, v39);
  v50 = v37[9];
  if (qword_93DC30 != -1)
  {
    swift_once();
  }

  v51 = sub_BE38(v39, qword_99FC88);
  v41((v38 + v50), v51, v39);
  return (*(v5 + 8))(v8, v4);
}

uint64_t ChartOrCategoryBrickContext.init(model:in:)(uint64_t a1)
{
  sub_134D8(a1, v3);
  sub_7621A0();
  return sub_BEB8(a1);
}

uint64_t sub_133FDC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_13406C(uint64_t a1, uint64_t a2)
{
  v4 = sub_7666D0();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1340EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_7666D0();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_13415C()
{
  result = sub_7666D0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t TodayCardLockupLayout.Metrics.init(artworkSize:artworkMargin:ordinalSpaceProvider:headingSpace:titleSpace:subtitleSpace:tertiaryTitleSpace:offerTextSpace:offerButtonSize:offerButtonMargin:preferVerticallyStackedIcon:preferStackedLargeAXLayouts:singleLineTitleAndSubtitle:allowAccessibilityLayout:backgroundAssetHeight:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, __int128 *a6@<X5>, __int128 *a7@<X6>, __int128 *a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, uint64_t a12, uint64_t a13, char a14, __int128 *a15, char a16, char a17, char a18, char a19, uint64_t a20, char a21)
{
  *a9 = a10;
  *(a9 + 8) = a11;
  sub_10914(a1, a9 + 16);
  *(a9 + 56) = a2;
  *(a9 + 64) = a3;
  sub_10914(a4, a9 + 72);
  sub_10914(a5, a9 + 112);
  sub_10914(a8, a9 + 232);
  sub_10914(a6, a9 + 152);
  sub_10914(a7, a9 + 192);
  *(a9 + 272) = a12;
  *(a9 + 280) = a13;
  *(a9 + 288) = a14 & 1;
  result = sub_10914(a15, a9 + 296);
  *(a9 + 336) = a16;
  *(a9 + 337) = a17;
  *(a9 + 338) = a18;
  *(a9 + 339) = a19;
  *(a9 + 344) = a20;
  *(a9 + 352) = a21 & 1;
  return result;
}

uint64_t TodayCardLockupLayout.init(metrics:artworkView:ordinalText:headingText:titleText:subtitleText:tertiaryTitleText:crossLinkTitleText:crossLinkSubtitleText:offerText:offerButton:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v78 = a7;
  v79 = a5;
  v83 = a6;
  v80 = a4;
  v81 = a3;
  v74 = a1;
  v75 = a9;
  sub_BE140(a1, v90);
  v82 = a8;
  v14 = *(a8 + 24);
  BYTE8(v90[47]) = v14 != 0;
  v15 = a2[3];
  v16 = a2[4];
  v76 = a2;
  sub_B170(a2, v15);
  v17 = sub_76A480();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v73 - v19;
  sub_766510();
  v21 = *(v15 - 8);
  if ((*(v21 + 48))(v20, 1, v15) == 1)
  {
    (*(v18 + 8))(v20, v17);
    v89 = 0;
    v87 = 0u;
    v88 = 0u;
  }

  else
  {
    *(&v88 + 1) = v15;
    v89 = v16;
    v22 = sub_B1B4(&v87);
    (*(v21 + 32))(v22, v20, v15);
  }

  *(&v90[22] + 8) = v87;
  *(&v90[23] + 8) = v88;
  *(&v90[24] + 1) = v89;
  sub_1ED18(v81, v84, &qword_9417D0);
  v23 = v85;
  if (v85)
  {
    v24 = v86;
    sub_B170(v84, v85);
    v25 = sub_76A480();
    v26 = *(v25 - 8);
    __chkstk_darwin(v25);
    v28 = &v73 - v27;
    sub_7669B0();
    v29 = *(v23 - 8);
    if ((*(v29 + 48))(v28, 1, v23) == 1)
    {
      (*(v26 + 8))(v28, v25);
      v89 = 0;
      v87 = 0u;
      v88 = 0u;
    }

    else
    {
      *(&v88 + 1) = v23;
      v89 = v24;
      v30 = sub_B1B4(&v87);
      (*(v29 + 32))(v30, v28, v23);
    }

    sub_BEB8(v84);
  }

  else
  {
    sub_10A2C(v84, &qword_9417D0);
    v87 = 0u;
    v88 = 0u;
    v89 = 0;
  }

  v90[25] = v87;
  v90[26] = v88;
  *&v90[27] = v89;
  sub_1ED18(v80, v84, &qword_9417D0);
  v31 = v85;
  if (v85)
  {
    v32 = v86;
    sub_B170(v84, v85);
    v33 = sub_76A480();
    v34 = *(v33 - 8);
    __chkstk_darwin(v33);
    v36 = &v73 - v35;
    sub_7669B0();
    v37 = *(v31 - 8);
    if ((*(v37 + 48))(v36, 1, v31) == 1)
    {
      (*(v34 + 8))(v36, v33);
      v89 = 0;
      v87 = 0u;
      v88 = 0u;
    }

    else
    {
      *(&v88 + 1) = v31;
      v89 = v32;
      v38 = sub_B1B4(&v87);
      (*(v37 + 32))(v38, v36, v31);
    }

    sub_BEB8(v84);
  }

  else
  {
    sub_10A2C(v84, &qword_9417D0);
    v87 = 0u;
    v88 = 0u;
    v89 = 0;
  }

  v77 = a10;
  *(&v90[27] + 8) = v87;
  *(&v90[28] + 8) = v88;
  *(&v90[29] + 1) = v89;
  sub_134D8(v79, &v90[30]);
  v39 = v83[3];
  v40 = v83[4];
  sub_B170(v83, v39);
  v41 = sub_76A480();
  v42 = *(v41 - 8);
  __chkstk_darwin(v41);
  v44 = &v73 - v43;
  if (v14)
  {
    sub_7669A0();
  }

  else
  {
    sub_7669B0();
  }

  v45 = *(v39 - 8);
  if ((*(v45 + 48))(v44, 1, v39) == 1)
  {
    (*(v42 + 8))(v44, v41);
    v89 = 0;
    v87 = 0u;
    v88 = 0u;
  }

  else
  {
    *(&v88 + 1) = v39;
    v89 = v40;
    v46 = sub_B1B4(&v87);
    (*(v45 + 32))(v46, v44, v39);
  }

  *(&v90[32] + 8) = v87;
  *(&v90[33] + 8) = v88;
  *(&v90[34] + 1) = v89;
  sub_1ED18(v78, v84, &qword_9417D0);
  v47 = v85;
  if (v85)
  {
    v48 = v86;
    sub_B170(v84, v85);
    v49 = sub_76A480();
    v50 = *(v49 - 8);
    __chkstk_darwin(v49);
    v52 = &v73 - v51;
    sub_7669B0();
    v53 = *(v47 - 8);
    if ((*(v53 + 48))(v52, 1, v47) == 1)
    {
      (*(v50 + 8))(v52, v49);
      v89 = 0;
      v87 = 0u;
      v88 = 0u;
    }

    else
    {
      *(&v88 + 1) = v47;
      v89 = v48;
      v54 = sub_B1B4(&v87);
      (*(v53 + 32))(v54, v52, v47);
    }

    sub_BEB8(v84);
  }

  else
  {
    sub_10A2C(v84, &qword_9417D0);
    v87 = 0u;
    v88 = 0u;
    v89 = 0;
  }

  v90[35] = v87;
  v90[36] = v88;
  *&v90[37] = v89;
  sub_1ED18(v82, &v90[37] + 8, &qword_9417D0);
  sub_1ED18(v77, v84, &qword_9417D0);
  v55 = v85;
  if (v85)
  {
    v56 = v86;
    sub_B170(v84, v85);
    v57 = sub_76A480();
    v58 = *(v57 - 8);
    __chkstk_darwin(v57);
    v60 = &v73 - v59;
    sub_7669A0();
    v61 = *(v55 - 8);
    if ((*(v61 + 48))(v60, 1, v55) == 1)
    {
      (*(v58 + 8))(v60, v57);
      v89 = 0;
      v87 = 0u;
      v88 = 0u;
    }

    else
    {
      *(&v88 + 1) = v55;
      v89 = v56;
      v62 = sub_B1B4(&v87);
      (*(v61 + 32))(v62, v60, v55);
    }

    sub_BEB8(v84);
  }

  else
  {
    sub_10A2C(v84, &qword_9417D0);
    v87 = 0u;
    v88 = 0u;
    v89 = 0;
  }

  v90[40] = v87;
  v90[41] = v88;
  *&v90[42] = v89;
  sub_1ED18(a11, v84, &qword_9417D0);
  v63 = v85;
  if (v85)
  {
    v64 = v86;
    sub_B170(v84, v85);
    v65 = sub_76A480();
    v66 = *(v65 - 8);
    __chkstk_darwin(v65);
    v68 = &v73 - v67;
    sub_7669B0();
    v69 = *(v63 - 8);
    if ((*(v69 + 48))(v68, 1, v63) == 1)
    {
      sub_10A2C(a11, &qword_9417D0);
      sub_10A2C(v77, &qword_9417D0);
      sub_10A2C(v78, &qword_9417D0);
      sub_BEB8(v79);
      sub_10A2C(v80, &qword_9417D0);
      sub_10A2C(v81, &qword_9417D0);
      sub_BE0EC(v74);
      sub_10A2C(v82, &qword_9417D0);
      (*(v66 + 8))(v68, v65);
      v89 = 0;
      v87 = 0u;
      v88 = 0u;
    }

    else
    {
      *(&v88 + 1) = v63;
      v89 = v64;
      v70 = sub_B1B4(&v87);
      (*(v69 + 32))(v70, v68, v63);
      sub_10A2C(a11, &qword_9417D0);
      sub_10A2C(v77, &qword_9417D0);
      sub_10A2C(v78, &qword_9417D0);
      sub_BEB8(v79);
      sub_10A2C(v80, &qword_9417D0);
      sub_10A2C(v81, &qword_9417D0);
      sub_BE0EC(v74);
      sub_10A2C(v82, &qword_9417D0);
    }

    sub_BEB8(v84);
  }

  else
  {
    sub_10A2C(a11, &qword_9417D0);
    sub_10A2C(v77, &qword_9417D0);
    sub_10A2C(v78, &qword_9417D0);
    sub_BEB8(v79);
    sub_10A2C(v80, &qword_9417D0);
    sub_10A2C(v81, &qword_9417D0);
    sub_BE0EC(v74);
    sub_10A2C(v82, &qword_9417D0);
    sub_10A2C(v84, &qword_9417D0);
    v87 = 0u;
    v88 = 0u;
    v89 = 0;
  }

  *(&v90[42] + 8) = v87;
  *(&v90[43] + 8) = v88;
  *(&v90[44] + 1) = v89;
  v71 = *(a12 + 16);
  v90[45] = *a12;
  v90[46] = v71;
  *&v90[47] = *(a12 + 32);
  memcpy(v75, v90, 0x2F9uLL);
  sub_BEB8(v83);
  return sub_BEB8(v76);
}

uint64_t TodayCardLockupLayout.Metrics.ordinalSpaceProvider.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

uint64_t TodayCardLockupLayout.Metrics.ordinalSpaceProvider.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return result;
}

uint64_t ArcadeSubscribePageLayout.Metrics.offerButtonHeight.setter(__int128 *a1)
{
  sub_BEB8(v1 + 112);

  return sub_10914(a1, v1 + 112);
}

uint64_t TodayCardLockupLayout.Metrics.subtitleSpace.setter(__int128 *a1)
{
  sub_BEB8(v1 + 152);

  return sub_10914(a1, v1 + 152);
}

uint64_t TodayCardLockupLayout.Metrics.tertiaryTitleSpace.setter(__int128 *a1)
{
  sub_BEB8(v1 + 192);

  return sub_10914(a1, v1 + 192);
}

uint64_t TodayCardLockupLayout.Metrics.offerTextSpace.setter(__int128 *a1)
{
  sub_BEB8(v1 + 232);

  return sub_10914(a1, v1 + 232);
}

uint64_t TodayCardLockupLayout.Metrics.offerButtonSize.setter(uint64_t result, uint64_t a2, char a3)
{
  *(v3 + 272) = result;
  *(v3 + 280) = a2;
  *(v3 + 288) = a3 & 1;
  return result;
}

uint64_t TodayCardLockupLayout.Metrics.offerButtonMargin.setter(__int128 *a1)
{
  sub_BEB8(v1 + 296);

  return sub_10914(a1, v1 + 296);
}

uint64_t TodayCardLockupLayout.Metrics.backgroundAssetHeight.setter(uint64_t result, char a2)
{
  *(v2 + 344) = result;
  *(v2 + 352) = a2 & 1;
  return result;
}

double TodayCardLockupLayout.measure(toFit:with:)(void *a1, double a2)
{
  if ((sub_769A00() & 1) != 0 && *(v2 + 339) == 1)
  {
    sub_135950(0, a1, v8);
  }

  else
  {
    sub_13658C(0, a1, v8, a2);
  }

  sub_10914(v8, v9);
  sub_B170(v9, v9[3]);
  sub_7673F0();
  v6 = v5;
  sub_BEB8(v9);
  return v6;
}

uint64_t TodayCardLockupLayout.place(at:with:)(void *a1, double a2, double a3, double a4)
{
  if (*(v4 + 760) == 1)
  {
    if ((sub_769A00() & 1) != 0 && *(v4 + 339) == 1)
    {
      sub_135950(1u, a1, v8);
    }

    else
    {
      sub_13658C(1, a1, v8, a4);
    }

    sub_10914(v8, v9);
    sub_B170(v9, v10);
    sub_7673E0();
    sub_BEB8(v9);
  }

  if ((sub_769A00() & 1) != 0 && *(v4 + 339) == 1)
  {
    sub_135950(0, a1, v8);
  }

  else
  {
    sub_13658C(0, a1, v8, a4);
  }

  sub_10914(v8, v9);
  sub_B170(v9, v10);
  sub_7673E0();
  return sub_BEB8(v9);
}

uint64_t sub_135950@<X0>(unsigned int a1@<W0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v78 = a1;
  v81 = a3;
  v6 = sub_766BD0();
  v76 = *(v6 - 8);
  v77 = v6;
  __chkstk_darwin(v6);
  v8 = &v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_7672E0();
  v10 = *(v9 - 8);
  v84 = v9;
  v85 = v10;
  __chkstk_darwin(v9);
  v89 = &v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v86 = &v75 - v13;
  __chkstk_darwin(v14);
  v87 = &v75 - v15;
  __chkstk_darwin(v16);
  v18 = (&v75 - v17);
  v19 = sub_766950();
  v79 = *(v19 - 8);
  v80 = v19;
  __chkstk_darwin(v19);
  v88 = &v75 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_766930();
  sub_B170((v3 + 112), *(v3 + 136));
  sub_766710();
  v22 = v21 + v21;
  sub_B170((v4 + 152), *(v4 + 176));
  sub_766710();
  v24 = v22 + v23;
  sub_1ED18(v3 + 360, v90, &unk_943B10);
  v82 = a2;
  if (*(&v90[1] + 1))
  {
    sub_10914(v90, v94);
    if (*(v3 + 336) & 1) != 0 || (v39 = [a2 preferredContentSizeCategory], v40 = sub_769B50(), v39, (v40) && *(v4 + 337) == 1)
    {
      sub_B170(v94, v95);
      sub_7665D0();
      v25 = *v4;
      v18[3] = &type metadata for CGFloat;
      v18[4] = &protocol witness table for CGFloat;
      *v18 = v25;
      v26 = enum case for Resize.Rule.replaced(_:);
      v83 = enum case for Resize.Rule.replaced(_:);
      v27 = v84;
      v28 = *(v85 + 104);
      (v28)(v18, enum case for Resize.Rule.replaced(_:), v84);
      v29 = *(v4 + 8);
      v30 = v87;
      *(v87 + 3) = &type metadata for CGFloat;
      v30[4] = &protocol witness table for CGFloat;
      *v30 = v29;
      (v28)(v30, v26, v27);
      v31 = v18;
      v32 = enum case for Resize.Rule.unchanged(_:);
      (v28)(v86, enum case for Resize.Rule.unchanged(_:), v27);
      (v28)(v89, v32, v27);
      v77 = sub_7672F0();
      v92 = v77;
      v93 = &protocol witness table for Resize;
      sub_B1B4(v91);
      sub_767300();
      sub_1393CC(v4, v90);
      v33 = swift_allocObject();
      memcpy((v33 + 16), v90, 0x2F9uLL);
      v34 = v82;
      *(v33 + 784) = v82;
      v35 = v34;
      sub_7668F0();
      v36 = v86;

      sub_BEB8(v91);
      sub_1370D8(v78 & 1, v35, v90);
      sub_767280();
      v92 = sub_7672A0();
      v93 = &protocol witness table for Center;
      sub_B1B4(v91);
      sub_7672B0();
      v31[3] = &type metadata for CGFloat;
      v31[4] = &protocol witness table for CGFloat;
      *v31 = v24;
      (v28)(v31, v83, v27);
      (v28)(v87, v32, v27);
      (v28)(v36, v32, v27);
      v78 = v32;
      v37 = v32;
      v18 = v31;
      (v28)(v89, v37, v27);
      *(&v90[1] + 1) = v77;
      *&v90[2] = &protocol witness table for Resize;
      sub_B1B4(v90);
      sub_767300();
      sub_7668F0();
      sub_BEB8(v90);
      v38 = v94;
      goto LABEL_12;
    }

    sub_BEB8(v94);
  }

  else
  {
    sub_10A2C(v90, &unk_943B10);
  }

  sub_766BA0();
  sub_1ED18(v4 + 360, v90, &unk_943B10);
  if (*(&v90[1] + 1))
  {
    sub_10914(v90, v94);
    v41 = v18;
    v42 = v84;
    v75 = v8;
    sub_B170(v94, v95);
    sub_7665D0();
    v43 = *v4;
    v41[3] = &type metadata for CGFloat;
    v41[4] = &protocol witness table for CGFloat;
    *v41 = v43;
    v44 = enum case for Resize.Rule.replaced(_:);
    v45 = v87;
    v46 = *(v85 + 104);
    v83 = enum case for Resize.Rule.replaced(_:);
    v46(v41, enum case for Resize.Rule.replaced(_:), v42);
    v47 = *(v4 + 8);
    v45[3] = &type metadata for CGFloat;
    v45[4] = &protocol witness table for CGFloat;
    v48 = v89;
    v49 = v86;
    *v45 = v47;
    v46(v45, v44, v42);
    v50 = enum case for Resize.Rule.unchanged(_:);
    v46(v49, enum case for Resize.Rule.unchanged(_:), v42);
    v51 = v42;
    v18 = v41;
    v46(v48, v50, v51);
    a2 = v82;
    v92 = sub_7672F0();
    v93 = &protocol witness table for Resize;
    sub_B1B4(v91);
    v8 = v75;
    v52 = v50;
    v53 = v83;
    sub_767300();
    sub_1393CC(v4, v90);
    v54 = swift_allocObject();
    memcpy((v54 + 16), v90, 0x2F9uLL);
    *(v54 + 784) = a2;
    v55 = a2;
    sub_766B90();

    sub_BEB8(v91);
    sub_BEB8(v94);
  }

  else
  {
    sub_10A2C(v90, &unk_943B10);
    v53 = enum case for Resize.Rule.replaced(_:);
    v52 = enum case for Resize.Rule.unchanged(_:);
  }

  sub_B170((v4 + 16), *(v4 + 40));
  sub_766710();
  sub_1370D8(v78 & 1, a2, v90);
  sub_767290();
  v95 = sub_7672A0();
  v96 = &protocol witness table for Center;
  sub_B1B4(v94);
  sub_7672B0();
  v18[3] = &type metadata for CGFloat;
  v18[4] = &protocol witness table for CGFloat;
  *v18 = v24;
  v28 = *(v85 + 104);
  v83 = v53;
  v56 = v53;
  v57 = v84;
  (v28)(v18, v56, v84);
  (v28)(v87, v52, v57);
  (v28)(v86, v52, v57);
  v78 = v52;
  v28(v89);
  *(&v90[1] + 1) = sub_7672F0();
  *&v90[2] = &protocol witness table for Resize;
  sub_B1B4(v90);
  sub_767300();
  sub_766B90();
  sub_BEB8(v90);
  v58 = v77;
  *(&v90[1] + 1) = v77;
  *&v90[2] = &protocol witness table for HorizontalStack;
  v59 = sub_B1B4(v90);
  v60 = v8;
  v61 = v76;
  (*(v76 + 16))(v59, v60, v58);
  sub_7668F0();
  (*(v61 + 8))(v60, v58);
  v38 = v90;
LABEL_12:
  sub_BEB8(v38);
  sub_1ED18(v4 + 720, v90, &unk_943B10);
  if (*(&v90[1] + 1))
  {
    sub_10914(v90, v94);
    if ((*(v4 + 288) & 1) == 0)
    {
      v63 = *(v4 + 272);
      v62 = *(v4 + 280);
      v64 = v87;
      sub_B170(v94, v95);
      sub_7665D0();
      v18[3] = &type metadata for CGFloat;
      v18[4] = &protocol witness table for CGFloat;
      *v18 = v63;
      v65 = v84;
      v66 = v83;
      (v28)(v18, v83, v84);
      v64[3] = &type metadata for CGFloat;
      v64[4] = &protocol witness table for CGFloat;
      *v64 = v62;
      (v28)(v64, v66, v65);
      v67 = v78;
      (v28)(v86, v78, v65);
      (v28)(v89, v67, v65);
      v92 = sub_7672F0();
      v93 = &protocol witness table for Resize;
      sub_B1B4(v91);
      sub_767300();
      sub_1393CC(v4, v90);
      v68 = swift_allocObject();
      memcpy((v68 + 16), v90, 0x2F9uLL);
      v69 = v82;
      *(v68 + 784) = v82;
      v70 = v69;
      sub_7668F0();

      sub_BEB8(v91);
    }

    sub_BEB8(v94);
  }

  else
  {
    sub_10A2C(v90, &unk_943B10);
  }

  v72 = v80;
  v71 = v81;
  v81[3] = v80;
  v71[4] = &protocol witness table for VerticalStack;
  v73 = sub_B1B4(v71);
  return (*(v79 + 32))(v73, v88, v72);
}

uint64_t sub_13658C@<X0>(int a1@<W0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>, double a4@<D0>)
{
  v5 = v4;
  v85 = a2;
  LODWORD(v6) = a1;
  v78 = a3;
  v82 = sub_7672E0();
  v8 = *(v82 - 8);
  __chkstk_darwin(v82);
  v84 = &v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v83 = &v75 - v11;
  __chkstk_darwin(v12);
  v14 = &v75 - v13;
  __chkstk_darwin(v15);
  v17 = &v75 - v16;
  v18 = sub_766BD0();
  v79 = *(v18 - 8);
  v80 = v18;
  __chkstk_darwin(v18);
  v86 = &v75 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_766BA0();
  sub_1ED18(v4 + 360, v88, &unk_943B10);
  if (*(&v88[1] + 1))
  {
    sub_10914(v88, v95);
    if ((*(v4 + 336) & 1) == 0)
    {
      sub_B170(v95, v96);
      sub_7665D0();
      v20 = *v4;
      *(v17 + 3) = &type metadata for CGFloat;
      *(v17 + 4) = &protocol witness table for CGFloat;
      *v17 = v20;
      v21 = enum case for Resize.Rule.replaced(_:);
      v22 = *(v8 + 104);
      v77 = v6;
      v6 = v82;
      v22(v17, enum case for Resize.Rule.replaced(_:), v82);
      v23 = *(v5 + 8);
      *(v14 + 3) = &type metadata for CGFloat;
      *(v14 + 4) = &protocol witness table for CGFloat;
      *v14 = v23;
      v22(v14, v21, v6);
      v24 = enum case for Resize.Rule.unchanged(_:);
      v81 = v8;
      v22(v83, enum case for Resize.Rule.unchanged(_:), v6);
      v25 = v6;
      LOBYTE(v6) = v77;
      v22(v84, v24, v25);
      v93 = sub_7672F0();
      v94 = &protocol witness table for Resize;
      sub_B1B4(v92);
      v8 = v81;
      sub_767300();
      sub_1393CC(v5, v88);
      v26 = swift_allocObject();
      memcpy((v26 + 16), v88, 0x2F9uLL);
      v27 = v85;
      *(v26 + 784) = v85;
      v28 = v27;
      sub_766B90();

      sub_BEB8(v92);
      sub_B170((v5 + 16), *(v5 + 40));
      sub_766710();
      a4 = a4 - v20 - v29;
    }

    sub_BEB8(v95);
  }

  else
  {
    sub_10A2C(v88, &unk_943B10);
  }

  sub_1ED18(v5 + 720, v88, &unk_943B10);
  v30 = *(&v88[1] + 1);
  sub_10A2C(v88, &unk_943B10);
  if (v30 && (*(v5 + 288) & 1) == 0)
  {
    v31 = a4 - *(v5 + 272);
    sub_B170((v5 + 296), *(v5 + 320));
    sub_766710();
    a4 = v31 - v32;
  }

  sub_1370D8(v6 & 1, v85, v95);
  sub_B170(v95, v96);
  sub_7673F0();
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;
  sub_134D8(v95, v92);
  *(v17 + 3) = &type metadata for CGFloat;
  *(v17 + 4) = &protocol witness table for CGFloat;
  *v17 = a4;
  v41 = enum case for Resize.Rule.replaced(_:);
  v42 = *(v8 + 104);
  v43 = v82;
  v42(v17, enum case for Resize.Rule.replaced(_:), v82);
  *(v14 + 3) = &type metadata for CGFloat;
  *(v14 + 4) = &protocol witness table for CGFloat;
  *v14 = v36;
  v77 = v41;
  v42(v14, v41, v43);
  v44 = enum case for Resize.Rule.unchanged(_:);
  v42(v83, enum case for Resize.Rule.unchanged(_:), v43);
  v76 = v44;
  v81 = v8 + 104;
  v42(v84, v44, v43);
  v45 = sub_7672F0();
  *(&v88[1] + 1) = v45;
  *&v88[2] = &protocol witness table for Resize;
  sub_B1B4(v88);
  sub_767300();
  sub_766B90();
  sub_BEB8(v88);
  sub_1ED18(v5 + 720, v88, &unk_943B10);
  if (!*(&v88[1] + 1))
  {
    sub_10A2C(v88, &unk_943B10);
    goto LABEL_13;
  }

  sub_10914(v88, v92);
  if ((*(v5 + 288) & 1) == 0)
  {
    v50 = *(v5 + 272);
    v49 = *(v5 + 280);
    sub_B170(v92, v93);
    sub_7665D0();
    *(v17 + 3) = &type metadata for CGFloat;
    *(v17 + 4) = &protocol witness table for CGFloat;
    *v17 = v50;
    v51 = v77;
    v75 = v45;
    v52 = v82;
    v42(v17, v77, v82);
    *(v14 + 3) = &type metadata for CGFloat;
    *(v14 + 4) = &protocol witness table for CGFloat;
    *v14 = v49;
    v42(v14, v51, v52);
    v53 = v76;
    v42(v83, v76, v52);
    v54 = v52;
    v55 = v75;
    v42(v84, v53, v54);
    *(&v88[1] + 1) = v55;
    *&v88[2] = &protocol witness table for Resize;
    sub_B1B4(v88);
    sub_767300();
    sub_767290();
    v90 = sub_7672A0();
    v91 = &protocol witness table for Center;
    sub_B1B4(v89);
    sub_7672B0();
    sub_1393CC(v5, v88);
    v56 = swift_allocObject();
    memcpy((v56 + 16), v88, 0x2F9uLL);
    v57 = v85;
    *(v56 + 784) = v85;
    v58 = v57;
    sub_766B90();

    sub_BEB8(v89);
    sub_1ED18(v5 + 360, v88, &unk_943B10);
    if (*(&v88[1] + 1))
    {
      sub_10914(v88, v89);
      v59 = v78;
      if (*(v5 + 336) == 1)
      {
        v59[3] = sub_766950();
        v59[4] = &protocol witness table for VerticalStack;
        v85 = sub_B1B4(v59);
        sub_766930();
        sub_B170(v89, v90);
        sub_7665D0();
        v60 = *v5;
        *(v17 + 3) = &type metadata for CGFloat;
        *(v17 + 4) = &protocol witness table for CGFloat;
        *v17 = v60;
        v61 = v77;
        v62 = v82;
        v78 = v58;
        v42(v17, v77, v82);
        v63 = *(v5 + 8);
        *(v14 + 3) = &type metadata for CGFloat;
        *(v14 + 4) = &protocol witness table for CGFloat;
        *v14 = v63;
        v42(v14, v61, v62);
        v64 = v76;
        v42(v83, v76, v62);
        v42(v84, v64, v62);
        v87[3] = v75;
        v87[4] = &protocol witness table for Resize;
        sub_B1B4(v87);
        sub_767300();
        sub_1393CC(v5, v88);
        v65 = swift_allocObject();
        v65[2] = v50;
        v65[3] = v49;
        v65[4] = v34;
        v65[5] = v36;
        v65[6] = v38;
        v65[7] = v40;
        memcpy(v65 + 8, v88, 0x2F9uLL);
        v66 = v78;
        v65[104] = v78;
        v67 = v66;
        sub_7668F0();

        sub_BEB8(v87);
        v68 = v80;
        *(&v88[1] + 1) = v80;
        *&v88[2] = &protocol witness table for HorizontalStack;
        v69 = sub_B1B4(v88);
        v70 = v79;
        v71 = v86;
        (*(v79 + 16))(v69, v86, v68);
        sub_7668F0();
        (*(v70 + 8))(v71, v68);
        sub_BEB8(v88);
        sub_BEB8(v89);
LABEL_20:
        sub_BEB8(v92);
        return sub_BEB8(v95);
      }

      sub_BEB8(v89);
    }

    else
    {
      sub_10A2C(v88, &unk_943B10);
      v59 = v78;
    }

    v72 = v80;
    v59[3] = v80;
    v59[4] = &protocol witness table for HorizontalStack;
    v73 = sub_B1B4(v59);
    (*(v79 + 32))(v73, v86, v72);
    goto LABEL_20;
  }

  sub_BEB8(v92);
LABEL_13:
  v46 = v80;
  v47 = v78;
  v78[3] = v80;
  v47[4] = &protocol witness table for HorizontalStack;
  v48 = sub_B1B4(v47);
  (*(v79 + 32))(v48, v86, v46);
  return sub_BEB8(v95);
}

uint64_t sub_1370D8@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = sub_7672E0();
  v36 = *(v7 - 8);
  v37 = v7;
  __chkstk_darwin(v7);
  v40 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v39 = &v35 - v10;
  __chkstk_darwin(v11);
  v38 = &v35 - v12;
  __chkstk_darwin(v13);
  v15 = &v35 - v14;
  v16 = sub_766950();
  v41 = *(v16 - 8);
  v42 = v16;
  __chkstk_darwin(v16);
  v18 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1393CC(v3, v48);
  v19 = swift_allocObject();
  memcpy((v19 + 16), v48, 0x2F9uLL);
  sub_766930();
  sub_1ED18(v3 + 440, v48, &qword_9417D0);
  if (*(&v48[1] + 1))
  {
    sub_10914(v48, &v46);
    sub_B170(&v46, v47);
    sub_7669D0();
    sub_B170(&v46, v47);
    sub_7669C0();
    sub_B170(&v46, v47);
    sub_7665D0();
    sub_1393CC(v3, v48);
    v20 = swift_allocObject();
    memcpy((v20 + 16), v48, 0x2F9uLL);
    sub_7668F0();

    sub_BEB8(v43);
    sub_BEB8(&v46);
  }

  else
  {
    sub_10A2C(v48, &qword_9417D0);
  }

  sub_137C98(a1 & 1, a2, v48);
  sub_7668F0();
  sub_BEB8(v48);
  sub_1ED18(v3 + 560, v48, &qword_9417D0);
  if (*(&v48[1] + 1))
  {
    sub_10914(v48, &v46);
    sub_B170(&v46, v47);
    sub_7669D0();
    sub_B170(&v46, v47);
    sub_7669C0();
    sub_B170(&v46, v47);
    sub_7665D0();
    sub_1393CC(v3, v48);
    v21 = swift_allocObject();
    memcpy((v21 + 16), v48, 0x2F9uLL);
    sub_7668F0();

    sub_BEB8(v43);
    sub_BEB8(&v46);
  }

  else
  {
    sub_10A2C(v48, &qword_9417D0);
  }

  sub_1ED18(v3 + 680, v48, &qword_9417D0);
  if (*(&v48[1] + 1))
  {
    sub_10914(v48, &v46);
    sub_B170(&v46, v47);
    sub_7665D0();
    sub_1393CC(v3, v48);
    v22 = swift_allocObject();
    memcpy((v22 + 16), v48, 0x2F9uLL);
    sub_7668F0();

    sub_BEB8(v43);
    sub_BEB8(&v46);
  }

  else
  {
    sub_10A2C(v48, &qword_9417D0);
  }

  sub_1ED18(v3 + 400, &v46, &qword_9417D0);
  if (v47)
  {
    sub_10914(&v46, v48);
    v23 = *(v3 + 56);
    sub_B170(v48, *(&v48[1] + 1));
    v24 = sub_766990();
    v23(&v46, v24);
    a3[3] = sub_766BD0();
    a3[4] = &protocol witness table for HorizontalStack;
    sub_B1B4(a3);
    sub_766BA0();
    sub_B170(v48, *(&v48[1] + 1));
    sub_7665D0();
    sub_134D8(&v46, v15);
    v25 = *(v36 + 13);
    v36 = v18;
    v26 = v37;
    v25(v15, enum case for Resize.Rule.replaced(_:), v37);
    v27 = enum case for Resize.Rule.unchanged(_:);
    v25(v38, enum case for Resize.Rule.unchanged(_:), v26);
    v25(v39, v27, v26);
    v25(v40, v27, v26);
    v44 = sub_7672F0();
    v45 = &protocol witness table for Resize;
    sub_B1B4(v43);
    sub_767300();
    sub_766B90();
    sub_BEB8(v43);
    v28 = v42;
    v44 = v42;
    v45 = &protocol witness table for VerticalStack;
    v29 = sub_B1B4(v43);
    v30 = v41;
    v31 = v36;
    (*(v41 + 16))(v29, v36, v28);
    sub_766B90();
    sub_BEB8(&v46);
    (*(v30 + 8))(v31, v28);
    sub_BEB8(v43);
    return sub_BEB8(v48);
  }

  else
  {
    sub_10A2C(&v46, &qword_9417D0);
    v33 = v42;
    a3[3] = v42;
    a3[4] = &protocol witness table for VerticalStack;
    v34 = sub_B1B4(a3);
    return (*(v41 + 32))(v34, v18, v33);
  }
}

uint64_t sub_1378FC(uint64_t a1, uint64_t a2)
{
  sub_B170((a2 + 296), *(a2 + 320));
  sub_766710();
  return sub_766B60();
}

uint64_t sub_1379A4(uint64_t a1, uint64_t a2)
{
  sub_B170((a2 + 16), *(a2 + 40));
  sub_766710();
  return sub_7668C0();
}

uint64_t sub_137A4C(uint64_t a1, uint64_t a2)
{
  sub_B170((a2 + 16), *(a2 + 40));
  sub_766710();
  result = sub_7668C0();
  if (*(a2 + 336) == 1)
  {
    return sub_7668E0();
  }

  return result;
}

uint64_t sub_137AF0(uint64_t a1, uint64_t a2)
{
  sub_B170((a2 + 16), *(a2 + 40));
  sub_766710();
  return sub_766B70();
}

uint64_t sub_137B70(uint64_t a1, uint64_t a2)
{
  sub_B170((a2 + 296), *(a2 + 320));
  sub_766710();
  result = sub_7668B0();
  if (*(a2 + 336) == 1)
  {
    sub_B170((a2 + 296), *(a2 + 320));
    sub_766710();
    return sub_7668C0();
  }

  return result;
}

uint64_t sub_137C50(uint64_t a1, uint64_t a2)
{
  sub_766900();
  sub_7668D0();
  sub_134D8(a2 + 72, v4);
  return sub_7668B0();
}

uint64_t sub_137C98@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v27[1] = a2;
  v29 = a3;
  v30 = sub_766950();
  v28 = *(v30 - 8);
  __chkstk_darwin(v30);
  v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_766930();
  sub_1ED18(v3 + 440, v31, &qword_9417D0);
  v8 = *(&v31[1] + 1);
  sub_10A2C(v31, &qword_9417D0);
  sub_1ED18(v3 + 680, v31, &qword_9417D0);
  v9 = *(&v31[1] + 1);
  sub_10A2C(v31, &qword_9417D0);
  sub_1ED18(v3 + 560, v31, &qword_9417D0);
  v10 = *(&v31[1] + 1);
  sub_10A2C(v31, &qword_9417D0);
  sub_B170((v4 + 480), *(v4 + 504));
  if (sub_766980())
  {
    goto LABEL_4;
  }

  sub_1ED18(v3 + 520, v31, &qword_9417D0);
  if (*(&v31[1] + 1))
  {
    sub_B170(v31, *(&v31[1] + 1));
    v11 = sub_766980();
    sub_BEB8(v31);
    if (v11)
    {
LABEL_4:
      v12 = 1;
      if (v8)
      {
        v13 = 1;
      }

      else
      {
        v13 = 2;
      }

      v14 = v10 | v9;
      v15 = v7;
      if (!v14)
      {
        v12 = v13;
      }

      goto LABEL_18;
    }
  }

  else
  {
    sub_10A2C(v31, &qword_9417D0);
  }

  if (v8)
  {
    v12 = 1;
  }

  else
  {
    v12 = 2;
  }

  v16 = 2;
  if (!v8)
  {
    v16 = 3;
  }

  if (!(v10 | v9))
  {
    v12 = v16;
  }

  v15 = v7;
LABEL_18:
  sub_138394(v12, a1 & 1);
  v18 = v17;
  v20 = v19;
  if (a1)
  {
    sub_1ED18(v4 + 600, v37, &qword_9417D0);
  }

  else
  {
    sub_134D8(v4 + 480, v37);
  }

  sub_1ED18(v37, &v35, &qword_9417D0);
  if (v36)
  {
    sub_10914(&v35, v31);
    if ((v18 & 1) == 0)
    {
      sub_B170(v31, *(&v31[1] + 1));
      sub_7665D0();
      sub_7668F0();
      sub_BEB8(&v35);
      sub_B170(v31, *(&v31[1] + 1));
      sub_7669D0();
      sub_B170(v31, *(&v31[1] + 1));
      sub_7669C0();
      goto LABEL_28;
    }

    sub_BEB8(v31);
  }

  else
  {
    sub_10A2C(&v35, &qword_9417D0);
  }

  sub_1ED18(v37, v31, &qword_9417D0);
  if (*(&v31[1] + 1))
  {
    sub_B170(v31, *(&v31[1] + 1));
    sub_7669D0();
LABEL_28:
    sub_BEB8(v31);
    goto LABEL_30;
  }

  sub_10A2C(v31, &qword_9417D0);
LABEL_30:
  v21 = 520;
  if (a1)
  {
    v21 = 640;
  }

  sub_1ED18(v4 + v21, &v35, &qword_9417D0);
  sub_1ED18(&v35, v31, &qword_9417D0);
  if (*(&v31[1] + 1))
  {
    sub_10914(v31, v33);
    if ((v20 & 1) == 0)
    {
      sub_B170(v33, v34);
      sub_7665D0();
      sub_1393CC(v4, v31);
      v22 = swift_allocObject();
      memcpy((v22 + 16), v31, 0x2F9uLL);
      sub_7668F0();

      sub_BEB8(&v32);
      sub_B170(v33, v34);
      sub_7669D0();
      sub_B170(v33, v34);
      sub_7669C0();
      sub_BEB8(v33);
      goto LABEL_40;
    }

    sub_BEB8(v33);
  }

  else
  {
    sub_10A2C(v31, &qword_9417D0);
  }

  sub_1ED18(&v35, v31, &qword_9417D0);
  if (*(&v31[1] + 1))
  {
    sub_B170(v31, *(&v31[1] + 1));
    sub_7669D0();
    sub_BEB8(v31);
  }

  else
  {
    sub_10A2C(v31, &qword_9417D0);
  }

LABEL_40:
  v23 = v29;
  v24 = v30;
  v29[3] = v30;
  v23[4] = &protocol witness table for VerticalStack;
  v25 = sub_B1B4(v23);
  (*(v28 + 32))(v25, v15, v24);
  sub_10A2C(&v35, &qword_9417D0);
  return sub_10A2C(v37, &qword_9417D0);
}

uint64_t sub_1382DC(uint64_t a1, uint64_t a2)
{
  sub_766900();
  sub_7668D0();
  sub_134D8(a2 + 192, v4);
  return sub_7668B0();
}

uint64_t sub_138324(uint64_t a1, uint64_t a2)
{
  sub_766900();
  sub_7668D0();
  sub_134D8(a2 + 232, v4);
  return sub_7668B0();
}

uint64_t sub_138394(uint64_t a1, char a2)
{
  if (a2)
  {
    sub_1ED18(v2 + 600, v24, &qword_9417D0);
    v4 = 640;
  }

  else
  {
    sub_134D8(v2 + 480, v24);
    v4 = 520;
  }

  sub_1ED18(v2 + v4, v23, &qword_9417D0);
  if (*(v2 + 338) == 1)
  {
    sub_1ED18(v23, v21, &qword_9417D0);
    if (v22)
    {
      sub_B170(v21, v22);
      sub_766500();
      sub_10A2C(v23, &qword_9417D0);
      sub_10A2C(v24, &qword_9417D0);
      sub_BEB8(v21);
    }

    else
    {
      sub_10A2C(v23, &qword_9417D0);
      sub_10A2C(v24, &qword_9417D0);
      sub_10A2C(v21, &qword_9417D0);
    }

    v5 = 0;
    result = 1;
    goto LABEL_33;
  }

  sub_1ED18(v24, &v19, &qword_9417D0);
  if (v20)
  {
    sub_10914(&v19, v21);
    sub_B170(v21, v22);
    sub_7669D0();
    sub_B170(v21, v22);
    sub_7665C0();
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
    sub_B170(v21, v22);
    v25.var0 = v8;
    v25.var1 = v10;
    v25.var2 = v12;
    v25.var3 = v14;
    v15 = sub_766A10(v25) > 1;
    sub_BEB8(v21);
  }

  else
  {
    sub_10A2C(&v19, &qword_9417D0);
    v15 = 0;
  }

  sub_1ED18(v23, v21, &qword_9417D0);
  if (v22)
  {
    sub_B170(v21, v22);
    v16 = sub_766500();
    sub_10A2C(v23, &qword_9417D0);
    sub_10A2C(v24, &qword_9417D0);
    result = sub_BEB8(v21);
    if (v15)
    {
      v17 = a1;
      if (v16)
      {
        v17 = a1 - 1;
        if (__OFSUB__(a1, 1))
        {
          goto LABEL_35;
        }
      }

      if (v17 <= 1)
      {
        result = 1;
      }

      else
      {
        result = v17;
      }
    }

    else
    {
      result = 1;
    }

    if (!__OFSUB__(a1, result))
    {
      if (v16)
      {
        v5 = a1 - result < 1;
LABEL_33:
        v24[0] = 0;
        v23[0] = v5;
        return result;
      }

LABEL_32:
      v5 = 1;
      goto LABEL_33;
    }
  }

  else
  {
    sub_10A2C(v23, &qword_9417D0);
    sub_10A2C(v24, &qword_9417D0);
    sub_10A2C(v21, &qword_9417D0);
    if (a1 <= 1)
    {
      v18 = 1;
    }

    else
    {
      v18 = a1;
    }

    if (v15)
    {
      result = v18;
    }

    else
    {
      result = 1;
    }

    if (!__OFSUB__(a1, result))
    {
      goto LABEL_32;
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
  return result;
}

uint64_t sub_13874C(uint64_t a1, uint64_t a2)
{
  sub_766900();
  sub_7668D0();
  sub_134D8(a2 + 152, v4);
  return sub_7668B0();
}

double _s18ASMessagesProvider21TodayCardLockupLayoutV21estimatedMeasurements7fitting5using4withSo14JUMeasurementsVSo6CGSizeV_AC7MetricsVSo17UITraitCollectionCtFZ_0(uint64_t a1, id a2, double a3)
{
  v5 = [a2 preferredContentSizeCategory];
  v6 = sub_769B50();

  if ((v6 & 1) != 0 && *(a1 + 337) == 1)
  {
    sub_B170((a1 + 112), *(a1 + 136));
    sub_766710();
    sub_B170((a1 + 152), *(a1 + 176));
    sub_766710();
    sub_B170((a1 + 16), *(a1 + 40));
    sub_766710();
    sub_B170((a1 + 296), *(a1 + 320));
    sub_766710();
    return a3;
  }

  if ((sub_769A00() & 1) != 0 && *(a1 + 339) == 1)
  {
    sub_B170((a1 + 112), *(a1 + 136));
    sub_766710();
    sub_B170((a1 + 152), *(a1 + 176));
    sub_766710();
    if (*(a1 + 336) == 1)
    {
      sub_B170((a1 + 16), *(a1 + 40));
      sub_766710();
    }

    v7 = *(a1 + 320);
    v8 = (a1 + 296);
    goto LABEL_12;
  }

  sub_B170((a1 + 112), *(a1 + 136));
  sub_766710();
  sub_B170((a1 + 152), *(a1 + 176));
  sub_766710();
  sub_B170((a1 + 192), *(a1 + 216));
  sub_766710();
  if (*(a1 + 336) == 1 || (*(a1 + 352) & 1) == 0)
  {
    v7 = *(a1 + 40);
    v8 = (a1 + 16);
LABEL_12:
    sub_B170(v8, v7);
    sub_766710();
  }

  return a3;
}

uint64_t sub_138AB4(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_138AD4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 761))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_138B1C(uint64_t result, int a2, int a3)
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
    *(result + 760) = 0;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
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
      *(result + 761) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 761) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_138C3C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 353))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_138C84(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 344) = 0;
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
    *(result + 328) = 0u;
    *(result + 352) = 0;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 353) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 353) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double sub_138D34(void *a1, uint64_t a2, char a3)
{
  if (*(a2 + 336) == 1)
  {
    result = 160.0;
    if (*(a2 + 339))
    {
      return 293.0;
    }

    return result;
  }

  v5 = [a1 preferredContentSizeCategory];
  v6 = sub_769240();
  v8 = v7;
  if (v6 == sub_769240() && v8 == v9)
  {
    goto LABEL_18;
  }

  v11 = sub_76A950();

  if (v11)
  {
LABEL_10:

    return 52.0;
  }

  v12 = sub_769240();
  v14 = v13;
  if (v12 == sub_769240() && v14 == v15)
  {
    goto LABEL_18;
  }

  v17 = sub_76A950();

  if (v17)
  {
    goto LABEL_10;
  }

  v18 = sub_769240();
  v20 = v19;
  if (v18 == sub_769240() && v20 == v21)
  {
LABEL_18:

    return 52.0;
  }

  v23 = sub_76A950();

  if (v23)
  {
    goto LABEL_10;
  }

  v24 = sub_769240();
  v26 = v25;
  if (v24 == sub_769240() && v26 == v27)
  {

    return 54.0;
  }

  v28 = sub_76A950();

  if (v28)
  {

    return 54.0;
  }

  v29 = sub_769240();
  v31 = v30;
  if (v29 == sub_769240() && v31 == v32)
  {

    return 62.0;
  }

  v33 = sub_76A950();

  if (v33)
  {

    return 62.0;
  }

  v34 = sub_769240();
  v36 = v35;
  if (v34 == sub_769240() && v36 == v37)
  {

    return 67.0;
  }

  v38 = sub_76A950();

  if (v38)
  {

    return 67.0;
  }

  v39 = sub_769240();
  v41 = v40;
  if (v39 == sub_769240() && v41 == v42)
  {

    return 76.0;
  }

  v43 = sub_76A950();

  if (v43)
  {

    return 76.0;
  }

  v44 = sub_769240();
  v46 = v45;
  if (v44 == sub_769240() && v46 == v47)
  {

    return 153.0;
  }

  v48 = sub_76A950();

  if (v48)
  {

    return 153.0;
  }

  v49 = sub_769240();
  v51 = v50;
  if (v49 == sub_769240() && v51 == v52)
  {

    return 170.0;
  }

  v53 = sub_76A950();

  if (v53)
  {

    return 170.0;
  }

  v54 = sub_769240();
  v56 = v55;
  if (v54 == sub_769240() && v56 == v57)
  {

    return 193.0;
  }

  v58 = sub_76A950();

  if (v58)
  {

    return 193.0;
  }

  v59 = sub_769240();
  v61 = v60;
  if (v59 == sub_769240() && v61 == v62)
  {
    goto LABEL_66;
  }

  v63 = sub_76A950();

  if (v63)
  {
  }

  else
  {
    v64 = sub_769240();
    v66 = v65;
    if (v64 == sub_769240() && v66 == v67)
    {
LABEL_66:

      goto LABEL_72;
    }

    v68 = sub_76A950();

    if ((v68 & 1) == 0)
    {
      return 52.0;
    }
  }

LABEL_72:
  result = 216.0;
  if (a3)
  {
    return 293.0;
  }

  return result;
}

uint64_t sub_1394A4()
{
  sub_BEB8((v0 + 4));

  sub_BEB8((v0 + 11));
  sub_BEB8((v0 + 16));
  sub_BEB8((v0 + 21));
  sub_BEB8((v0 + 26));
  sub_BEB8((v0 + 31));
  sub_BEB8((v0 + 39));
  if (v0[50])
  {
    sub_BEB8((v0 + 47));
  }

  if (v0[55])
  {
    sub_BEB8((v0 + 52));
  }

  if (v0[60])
  {
    sub_BEB8((v0 + 57));
  }

  sub_BEB8((v0 + 62));
  if (v0[70])
  {
    sub_BEB8((v0 + 67));
  }

  if (v0[75])
  {
    sub_BEB8((v0 + 72));
  }

  if (v0[80])
  {
    sub_BEB8((v0 + 77));
  }

  if (v0[85])
  {
    sub_BEB8((v0 + 82));
  }

  if (v0[90])
  {
    sub_BEB8((v0 + 87));
  }

  if (v0[95])
  {
    sub_BEB8((v0 + 92));
  }

  return _swift_deallocObject(v0, 777, 7);
}

uint64_t sub_1395C0()
{
  sub_BEB8(v0 + 80);

  sub_BEB8(v0 + 136);
  sub_BEB8(v0 + 176);
  sub_BEB8(v0 + 216);
  sub_BEB8(v0 + 256);
  sub_BEB8(v0 + 296);
  sub_BEB8(v0 + 360);
  if (*(v0 + 448))
  {
    sub_BEB8(v0 + 424);
  }

  if (*(v0 + 488))
  {
    sub_BEB8(v0 + 464);
  }

  if (*(v0 + 528))
  {
    sub_BEB8(v0 + 504);
  }

  sub_BEB8(v0 + 544);
  if (*(v0 + 608))
  {
    sub_BEB8(v0 + 584);
  }

  if (*(v0 + 648))
  {
    sub_BEB8(v0 + 624);
  }

  if (*(v0 + 688))
  {
    sub_BEB8(v0 + 664);
  }

  if (*(v0 + 728))
  {
    sub_BEB8(v0 + 704);
  }

  if (*(v0 + 768))
  {
    sub_BEB8(v0 + 744);
  }

  if (*(v0 + 808))
  {
    sub_BEB8(v0 + 784);
  }

  return _swift_deallocObject(v0, 840, 7);
}

uint64_t sub_1396E8()
{
  sub_BEB8(v0 + 32);

  sub_BEB8(v0 + 88);
  sub_BEB8(v0 + 128);
  sub_BEB8(v0 + 168);
  sub_BEB8(v0 + 208);
  sub_BEB8(v0 + 248);
  sub_BEB8(v0 + 312);
  if (*(v0 + 400))
  {
    sub_BEB8(v0 + 376);
  }

  if (*(v0 + 440))
  {
    sub_BEB8(v0 + 416);
  }

  if (*(v0 + 480))
  {
    sub_BEB8(v0 + 456);
  }

  sub_BEB8(v0 + 496);
  if (*(v0 + 560))
  {
    sub_BEB8(v0 + 536);
  }

  if (*(v0 + 600))
  {
    sub_BEB8(v0 + 576);
  }

  if (*(v0 + 640))
  {
    sub_BEB8(v0 + 616);
  }

  if (*(v0 + 680))
  {
    sub_BEB8(v0 + 656);
  }

  if (*(v0 + 720))
  {
    sub_BEB8(v0 + 696);
  }

  if (*(v0 + 760))
  {
    sub_BEB8(v0 + 736);
  }

  return _swift_deallocObject(v0, 792, 7);
}

uint64_t sub_13982C(void *a1)
{
  if (*v1 != *a1)
  {
    return 0;
  }

  if ((sub_76A6C0() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for InfoDebugSetting();
  v2 = swift_dynamicCastClass();
  if (!v2)
  {
    return 0;
  }

  if (v2[7] != v1[7] || v2[8] != v1[8])
  {
    v4 = v2;
    v5 = sub_76A950();
    v2 = v4;
    if ((v5 & 1) == 0)
    {
      return 0;
    }
  }

  v6 = v2[10];
  v7 = v1[10];
  v8 = (v6 | v7) == 0;
  if (!v6 || !v7)
  {
    return v8;
  }

  if (v2[9] == v1[9] && v6 == v7)
  {
    return 1;
  }

  return sub_76A950();
}

void sub_139958()
{
  sub_76A6D0();
  sub_769330();
  if (*(v0 + 80))
  {
    sub_76AA50(1u);

    sub_769330();
  }

  else
  {
    sub_76AA50(0);
  }
}

uint64_t sub_1399E8()
{
}

uint64_t sub_139A18()
{
  sub_1EB60(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_139AA4()
{
  v1 = sub_7572E0();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_BD88(&unk_93F5C0);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_77FA60;
  v5 = swift_allocObject();
  *(v5 + 16) = v0;
  v38[1] = type metadata accessor for ActionDebugSetting();
  v6 = swift_allocObject();
  *(v6 + 56) = 0xD000000000000028;
  *(v6 + 64) = 0x80000000007D0460;
  *(v6 + 72) = 0u;
  *(v6 + 88) = 0u;
  *(v6 + 104) = sub_13A310;
  *(v6 + 112) = v5;
  v7 = v0;

  sub_7572D0();
  v8 = sub_7572B0();
  v10 = v9;
  v11 = *(v2 + 8);
  v41 = v1;
  v42 = v2 + 8;
  v11(v4, v1);
  v43 = v8;
  v44 = v10;
  sub_76A6E0();

  v12 = v39;
  *(v39 + 32) = v6;
  v13 = swift_allocObject();
  *(v13 + 16) = v7;
  v14 = swift_allocObject();
  *(v14 + 56) = 0xD000000000000025;
  *(v14 + 64) = 0x80000000007D0490;
  *(v14 + 72) = 0u;
  *(v14 + 88) = 0u;
  *(v14 + 104) = sub_13A368;
  *(v14 + 112) = v13;
  v15 = v7;

  sub_7572D0();
  v16 = sub_7572B0();
  v18 = v17;
  v11(v4, v1);
  v43 = v16;
  v44 = v18;
  sub_76A6E0();

  v12[5] = v14;
  v19 = swift_allocObject();
  *(v19 + 16) = v15;
  v20 = swift_allocObject();
  *(v20 + 56) = 0xD000000000000029;
  *(v20 + 64) = 0x80000000007D04C0;
  *(v20 + 72) = 0u;
  *(v20 + 88) = 0u;
  *(v20 + 104) = sub_13A3C0;
  *(v20 + 112) = v19;
  v21 = v15;

  sub_7572D0();
  v22 = sub_7572B0();
  v24 = v23;
  v11(v4, v41);
  v43 = v22;
  v44 = v24;
  sub_76A6E0();

  v12[6] = v20;
  v25 = swift_allocObject();
  *(v25 + 16) = v21;
  v26 = swift_allocObject();
  *(v26 + 56) = 0xD00000000000002DLL;
  *(v26 + 64) = 0x80000000007D04F0;
  *(v26 + 72) = 0u;
  *(v26 + 88) = 0u;
  *(v26 + 104) = sub_13A3E0;
  *(v26 + 112) = v25;
  v27 = v21;

  sub_7572D0();
  v28 = sub_7572B0();
  v30 = v29;
  v31 = v41;
  v11(v4, v41);
  v43 = v28;
  v44 = v30;
  sub_76A6E0();

  v12[7] = v26;
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_77D9F0;
  type metadata accessor for DebugSection();
  v33 = swift_allocObject();
  sub_7572D0();
  v34 = sub_7572B0();
  v36 = v35;
  v11(v4, v31);
  v33[2] = v34;
  v33[3] = v36;
  v33[4] = 0;
  v33[5] = 0xE000000000000000;
  v33[6] = v12;
  *(v32 + 32) = v33;
  return v32;
}

uint64_t sub_139F98(uint64_t a1, uint64_t a2, void (*a3)(void), void (*a4)(void), void (*a5)(void))
{
  v8 = sub_BD88(&unk_93F980);
  __chkstk_darwin(v8 - 8);
  v10 = &v14 - v9;
  v11 = sub_BD88(&unk_93F630);
  sub_768860();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    return sub_268C8(v10);
  }

  a3(0);
  swift_allocObject();
  a4();
  a5();

  return (*(v12 + 8))(v10, v11);
}

uint64_t sub_13A118(uint64_t a1)
{
  v2 = sub_BD88(&unk_93F980);
  __chkstk_darwin(v2 - 8);
  v4 = &v9 - v3;
  v5 = sub_BD88(&unk_93F630);
  sub_768860();
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    return sub_268C8(v4);
  }

  sub_7640F0();
  swift_allocObject();
  v8 = sub_7640D0();
  sub_32ADB4(v8, 1, a1, v4);

  return (*(v6 + 8))(v4, v5);
}

id sub_13A280()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NotificationSettings();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_13A2D8()
{

  return _swift_deallocObject(v0, 24, 7);
}

void sub_13A410(uint64_t a1)
{
  sub_769330();
  sub_769330();
  v3 = *(v1 + 48);
  if (v3 >> 62)
  {
    v7 = sub_76A860();
    sub_76AA40(v7);
    v4 = sub_76A860();
    if (!v4)
    {
      return;
    }
  }

  else
  {
    sub_76AA40(*(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8)));
    v4 = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8));
    if (!v4)
    {
      return;
    }
  }

  if (v4 < 1)
  {
    __break(1u);
  }

  else
  {
    for (i = 0; i != v4; ++i)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = sub_76A770();
      }

      else
      {
        v6 = *(v3 + 8 * i + 32);
      }

      (*(*v6 + 104))(a1);
    }
  }
}

uint64_t sub_13A520()
{

  return swift_deallocClassInstance();
}

Swift::Int sub_13A58C()
{
  sub_76AA30();
  sub_13A410(v1);
  return sub_76AA80();
}

Swift::Int sub_13A5F4()
{
  sub_76AA30();
  sub_13A410(v1);
  return sub_76AA80();
}

unint64_t sub_13A644()
{
  result = qword_9462B0;
  if (!qword_9462B0)
  {
    type metadata accessor for DebugSection();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_9462B0);
  }

  return result;
}

uint64_t sub_13A698(void *a1, void *a2)
{
  v4 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v4 && (sub_76A950() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[4] == a2[4] && a1[5] == a2[5];
  if (!v5 && (sub_76A950() & 1) == 0)
  {
    return 0;
  }

  v6 = a1[6];
  v7 = a2[6];

  return sub_116E14(v6, v7);
}

unint64_t sub_13A73C()
{
  result = qword_9462B8;
  if (!qword_9462B8)
  {
    sub_75FA90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_9462B8);
  }

  return result;
}

uint64_t sub_13A794()
{
  v0 = sub_7687C0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_758900();
  sub_768900();
  sub_768ED0();
  v4 = sub_75FA70();
  v6 = v5;
  v7 = sub_75FA80() & 1;
  v11._countAndFlagsBits = v4;
  v11._object = v6;
  sub_7588D0(v11, v7);

  sub_BD88(&qword_94DDC0);
  (*(v1 + 104))(v3, enum case for ActionOutcome.performed(_:), v0);
  v8 = sub_768F30();

  return v8;
}

char *sub_13A904(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = sub_760AD0();
  v48 = *(v10 - 8);
  v49 = v10;
  __chkstk_darwin(v10);
  v47 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_BD88(&unk_93E530);
  __chkstk_darwin(v12 - 8);
  v14 = &v46 - v13;
  v15 = sub_7666D0();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider24BannerCollectionViewCell_roundedBackgroundViewCornerRadius] = 0x403B000000000000;
  v19 = OBJC_IVAR____TtC18ASMessagesProvider24BannerCollectionViewCell_itemLayoutContext;
  v20 = sub_75C840();
  (*(*(v20 - 8) + 56))(&v5[v19], 1, 1, v20);
  v21 = OBJC_IVAR____TtC18ASMessagesProvider24BannerCollectionViewCell_messageTextView;
  if (qword_93D628 != -1)
  {
    swift_once();
  }

  v22 = sub_BE38(v15, qword_99EA70);
  v23 = *(v16 + 16);
  v23(v18, v22, v15);
  v24 = type metadata accessor for DynamicTypeLinkedTextView();
  v25 = objc_allocWithZone(v24);
  *&v25[qword_957FC0] = _swiftEmptyArrayStorage;
  *&v25[qword_957FC8] = 0;
  v54.receiver = v25;
  v54.super_class = v24;
  v46 = v24;
  v26 = objc_msgSendSuper2(&v54, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v23(v14, v18, v15);
  (*(v16 + 56))(v14, 0, 1, v15);
  v27 = v26;
  sub_75DFD0();
  sub_75E000();

  v28 = v27;
  [v28 setSelectable:1];
  v29 = v28;
  [v29 setEditable:0];
  [v29 setScrollEnabled:0];
  [v29 setContentInset:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  [v29 setContentInsetAdjustmentBehavior:2];
  v30 = objc_opt_self();
  v31 = [v30 clearColor];
  [v29 setBackgroundColor:v31];

  [v29 setDelegate:v29];
  [v29 _setInteractiveTextSelectionDisabled:1];

  (*(v16 + 8))(v18, v15);
  *&v5[v21] = v29;
  v32 = OBJC_IVAR____TtC18ASMessagesProvider24BannerCollectionViewCell_roundedBackgroundView;
  *&v5[v32] = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider24BannerCollectionViewCell_bottomSeparatorView] = 0;
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider24BannerCollectionViewCell_leadingArtwork] = 0;
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider24BannerCollectionViewCell_leadingArtworkView] = 0;
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider24BannerCollectionViewCell_leadingArtworkTintColor] = 0;
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider24BannerCollectionViewCell_leadingArtworkSymbolConfiguration] = 0;
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider24BannerCollectionViewCell_buttonRow] = 0;
  v5[OBJC_IVAR____TtC18ASMessagesProvider24BannerCollectionViewCell_shouldUseArcadeMetrics] = 0;
  v33 = type metadata accessor for BannerCollectionViewCell();
  v53.receiver = v5;
  v53.super_class = v33;
  v34 = objc_msgSendSuper2(&v53, "initWithFrame:", a1, a2, a3, a4);
  v35 = [v34 contentView];
  [v34 layoutMargins];
  [v35 setLayoutMargins:?];

  v36 = OBJC_IVAR____TtC18ASMessagesProvider24BannerCollectionViewCell_roundedBackgroundView;
  [*&v34[OBJC_IVAR____TtC18ASMessagesProvider24BannerCollectionViewCell_roundedBackgroundView] setHidden:1];
  v37 = *&v34[v36];
  v38 = [v30 quaternarySystemFillColor];
  [v37 setBackgroundColor:v38];

  [*&v34[v36] _setCornerRadius:27.0];
  v39 = [v34 contentView];
  [v39 addSubview:*&v34[v36]];

  if (*&v34[OBJC_IVAR____TtC18ASMessagesProvider24BannerCollectionViewCell_leadingArtwork] || *&v34[OBJC_IVAR____TtC18ASMessagesProvider24BannerCollectionViewCell_buttonRow])
  {
    v40 = v47;
    (*(v48 + 104))(v47, enum case for DirectionalTextAlignment.leading(_:), v49);
    sub_4E9AA8(v40);
  }

  else
  {
    v44 = v46;
    v52.receiver = *&v34[OBJC_IVAR____TtC18ASMessagesProvider24BannerCollectionViewCell_messageTextView];
    receiver = v52.receiver;
    v52.super_class = v46;
    v45 = objc_msgSendSuper2(&v52, "textAlignment");
    v51.receiver = receiver;
    v51.super_class = v44;
    objc_msgSendSuper2(&v51, "setTextAlignment:", 1);
    v50.receiver = receiver;
    v50.super_class = v44;
    if (objc_msgSendSuper2(&v50, "textAlignment") != v45)
    {
      sub_4E9E24();
    }
  }

  v41 = [v34 contentView];

  [v41 addSubview:*&v34[OBJC_IVAR____TtC18ASMessagesProvider24BannerCollectionViewCell_messageTextView]];
  return v34;
}

void sub_13AFEC(void *a1)
{
  v2 = OBJC_IVAR____TtC18ASMessagesProvider24BannerCollectionViewCell_leadingArtworkTintColor;
  v3 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider24BannerCollectionViewCell_leadingArtworkTintColor);
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider24BannerCollectionViewCell_leadingArtworkTintColor) = a1;
  v7 = a1;

  v4 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider24BannerCollectionViewCell_leadingArtworkView);
  if (v4)
  {
    v5 = *(v1 + v2);
    v6 = v4;
    sub_7590A0();
  }
}

id sub_13B074(void *a1)
{
  v2 = v1;
  v4 = sub_760AD0();
  v6 = __chkstk_darwin(v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*&v1[OBJC_IVAR____TtC18ASMessagesProvider24BannerCollectionViewCell_leadingArtwork] || *&v1[OBJC_IVAR____TtC18ASMessagesProvider24BannerCollectionViewCell_buttonRow])
  {
    (*(v5 + 104))(v8, enum case for DirectionalTextAlignment.leading(_:), v6);
    sub_4E9AA8(v8);
  }

  else
  {
    v15 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider24BannerCollectionViewCell_messageTextView];
    v16 = type metadata accessor for DynamicTypeLinkedTextView();
    v20.receiver = v15;
    v20.super_class = v16;
    v17 = objc_msgSendSuper2(&v20, "textAlignment");
    v19.receiver = v15;
    v19.super_class = v16;
    objc_msgSendSuper2(&v19, "setTextAlignment:", 1);
    v18.receiver = v15;
    v18.super_class = v16;
    if (objc_msgSendSuper2(&v18, "textAlignment") != v17)
    {
      sub_4E9E24();
    }
  }

  v9 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider24BannerCollectionViewCell_buttonRow];
  if (v9)
  {
    if (a1)
    {
      type metadata accessor for BannerButtonRow();
      v10 = v9;
      v11 = a1;
      v12 = sub_76A1C0();

      if (v12)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v13 = v9;
    }

    v10 = [v2 contentView];
    [v10 addSubview:v9];

LABEL_10:
  }

  return [v2 setNeedsLayout];
}

void sub_13B27C()
{
  sub_BE70(0, &qword_95A810);
  v1 = sub_769C60();
  v2 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider24BannerCollectionViewCell_leadingArtworkSymbolConfiguration];
  v3 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider24BannerCollectionViewCell_leadingArtworkView];
  if (v2)
  {
    if (!v3)
    {
      goto LABEL_7;
    }

    v8 = v1;
    v4 = v2;
    v5 = v3;
    v6 = [v4 configurationByApplyingConfiguration:v8];
    sub_759120();
  }

  else
  {
    if (!v3)
    {
      goto LABEL_7;
    }

    v8 = v1;
    v4 = v3;
    v7 = v8;
    sub_759120();
  }

  v1 = v8;
LABEL_7:
}

uint64_t sub_13B394()
{
  v1 = v0;
  v2 = sub_767510();
  v58 = *(v2 - 8);
  v59 = v2;
  __chkstk_darwin(v2);
  v57 = &v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for BannerCollectionViewCell();
  v93.receiver = v0;
  v93.super_class = v4;
  objc_msgSendSuper2(&v93, "layoutSubviews");
  v5 = [v0 contentView];
  sub_BE70(0, &qword_93E550);
  sub_75D650();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  [*&v1[OBJC_IVAR____TtC18ASMessagesProvider24BannerCollectionViewCell_roundedBackgroundView] setFrame:{v7, v9, v11, v13}];
  v14 = OBJC_IVAR____TtC18ASMessagesProvider24BannerCollectionViewCell_leadingArtwork;
  v15 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider24BannerCollectionViewCell_leadingArtwork];

  v16 = [v1 traitCollection];
  v17 = sub_13C02C(v15);
  v19 = v18;
  v21 = v20;

  v22 = OBJC_IVAR____TtC18ASMessagesProvider24BannerCollectionViewCell_buttonRow;
  if (*&v1[OBJC_IVAR____TtC18ASMessagesProvider24BannerCollectionViewCell_buttonRow] && (swift_beginAccess(), sub_BE70(0, &qword_960F00), , v23 = sub_769490(), , (v23 & 1) != 0) && *&v1[v22])
  {
    *&v73 = *&v1[v22];
    type metadata accessor for BannerButtonRow();
    sub_7665D0();
  }

  else
  {
    v90 = 0;
    v88 = 0u;
    v89 = 0u;
  }

  v91[0] = v88;
  v91[1] = v89;
  v92 = v90;
  v24 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider24BannerCollectionViewCell_messageTextView];
  [v24 setFrame:{v7, v9, v11, v13}];
  v25 = *&v1[v14];
  if (*&v1[v22])
  {
    if ((v1[OBJC_IVAR____TtC18ASMessagesProvider24BannerCollectionViewCell_shouldUseArcadeMetrics] & 1) == 0)
    {
      v26 = 15.0;
      if (v25)
      {
        v27 = 15.0;
      }

      else
      {
        v27 = 22.0;
      }

      v60 = xmmword_786AE0;
      v28 = 9.0;
      goto LABEL_18;
    }

LABEL_13:
    v60 = xmmword_786AD0;
    v28 = 17.0;
    v27 = 0.0;
    v26 = 0.0;
    goto LABEL_18;
  }

  if (v1[OBJC_IVAR____TtC18ASMessagesProvider24BannerCollectionViewCell_shouldUseArcadeMetrics])
  {
    goto LABEL_13;
  }

  if (v25)
  {
    v27 = 15.0;
  }

  else
  {
    v27 = 22.0;
  }

  v60 = xmmword_786AF0;
  v28 = 9.0;
  v26 = v27;
LABEL_18:
  v72 = v24;
  type metadata accessor for DynamicTypeLinkedTextView();
  sub_7665D0();
  if (*&v1[OBJC_IVAR____TtC18ASMessagesProvider24BannerCollectionViewCell_leadingArtworkView])
  {
    *&v73 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider24BannerCollectionViewCell_leadingArtworkView];
    sub_759210();
    sub_7665D0();
  }

  else
  {
    v71 = 0;
    v69 = 0u;
    v70 = 0u;
  }

  sub_867FC(v91, v67);
  v29 = [v1 traitCollection];
  v30 = sub_7699D0();

  if (v30)
  {
    v31 = 1;
  }

  else
  {
    v32 = [v1 traitCollection];
    v33 = [v32 preferredContentSizeCategory];

    v31 = sub_769B20();
  }

  v73 = v60;
  v74 = v60;
  *&v75 = v28;
  *(&v75 + 1) = v27;
  *&v76 = v28;
  *(&v76 + 1) = v26;
  v77 = xmmword_786B00;
  v78 = xmmword_786B10;
  sub_10914(&v61, v79);
  v80[0] = v69;
  v80[1] = v70;
  v85[0] = v67[0];
  v81 = v71;
  v82 = v17;
  v83 = v19;
  v34 = v21 & 1;
  v84 = v21 & 1;
  v85[1] = v67[1];
  v86 = v68;
  v87 = v31 & 1;
  v35 = [v1 traitCollection];
  v63 = v75;
  v64 = v76;
  v65 = v77;
  v66 = v78;
  v61 = v73;
  v62 = v74;
  if (v31)
  {
    *(&v70 + 1) = &type metadata for BannerCollectionViewCellLayout.VerticalBannerLayout;
    v71 = sub_13CB5C();
  }

  else
  {
    *(&v70 + 1) = &type metadata for BannerCollectionViewCellLayout.HorizontalBannerLayout;
    v71 = sub_13CAB0();
  }

  v36 = swift_allocObject();
  *&v69 = v36;
  sub_134D8(v79, v36 + 112);
  sub_867FC(v80, v36 + 152);
  sub_867FC(v85, v36 + 216);
  v37 = v64;
  *(v36 + 48) = v63;
  *(v36 + 64) = v37;
  v38 = v66;
  *(v36 + 80) = v65;
  *(v36 + 96) = v38;
  v39 = v62;
  *(v36 + 16) = v61;
  *(v36 + 32) = v39;
  *(v36 + 192) = v17;
  *(v36 + 200) = v19;
  *(v36 + 208) = v34;
  sub_10914(&v69, &v61);
  sub_B170(&v61, *(&v62 + 1));
  sub_7673E0();

  sub_BEB8(&v61);
  v40 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider24BannerCollectionViewCell_bottomSeparatorView];
  if (v40)
  {
    v41 = v40;
    [v1 bounds];
    v42 = OBJC_IVAR____TtC18ASMessagesProvider13SeparatorView_separator;
    swift_beginAccess();
    v44 = v58;
    v43 = v59;
    v45 = &v41[v42];
    v46 = v57;
    (*(v58 + 16))(v57, v45, v59);
    sub_7674C0();
    v48 = v47;
    v50 = v49;
    v52 = v51;
    v54 = v53;
    (*(v44 + 8))(v46, v43);
    [v41 setFrame:{v48, v50, v52, v54}];
  }

  sub_13CB08(&v73);
  return sub_10A2C(v91, &unk_941EB0);
}

double sub_13BA90(uint64_t a1, uint64_t a2)
{
  swift_getObjectType();
  v6[5] = a2;
  sub_7665D0();
  sub_B170(v6, v6[3]);
  sub_7673F0();
  v4 = v3;
  sub_BEB8(v6);
  return v4;
}

uint64_t sub_13BB50(uint64_t a1, double a2, double a3)
{
  result = sub_764D10();
  v7 = result;
  v8 = 0;
  v9 = *(result + 16);
  v10 = _swiftEmptyArrayStorage;
LABEL_2:
  v11 = 16 * v8 + 32;
  while (1)
  {
    if (v9 == v8)
    {

      sub_361B1C(a1, v10, a2, a3);
    }

    if (v8 >= *(v7 + 16))
    {
      break;
    }

    v12 = v11 + 16;
    ++v8;

    v13 = sub_764C60();
    v15 = v14;

    v11 = v12;
    if (v15)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_7B5CC(0, *(v10 + 2) + 1, 1, v10);
        v10 = result;
      }

      v17 = *(v10 + 2);
      v16 = *(v10 + 3);
      if (v17 >= v16 >> 1)
      {
        result = sub_7B5CC((v16 > 1), v17 + 1, 1, v10);
        v10 = result;
      }

      *(v10 + 2) = v17 + 1;
      v18 = &v10[2 * v17];
      *(v18 + 4) = v13;
      *(v18 + 5) = v15;
      goto LABEL_2;
    }
  }

  __break(1u);
  return result;
}

id sub_13BCB8()
{
  v9.receiver = v0;
  v9.super_class = type metadata accessor for BannerCollectionViewCell();
  objc_msgSendSuper2(&v9, "prepareForReuse");
  sub_13CC68(0);
  sub_13AFEC(0);
  v1 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider24BannerCollectionViewCell_leadingArtworkSymbolConfiguration];
  *&v0[OBJC_IVAR____TtC18ASMessagesProvider24BannerCollectionViewCell_leadingArtworkSymbolConfiguration] = 0;

  sub_13B27C();
  v2 = OBJC_IVAR____TtC18ASMessagesProvider24BannerCollectionViewCell_bottomSeparatorView;
  v3 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider24BannerCollectionViewCell_bottomSeparatorView];
  if (v3)
  {
    [v3 removeFromSuperview];
    v4 = *&v0[v2];
  }

  else
  {
    v4 = 0;
  }

  *&v0[v2] = 0;

  v5 = OBJC_IVAR____TtC18ASMessagesProvider24BannerCollectionViewCell_buttonRow;
  v6 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider24BannerCollectionViewCell_buttonRow];
  if (v6)
  {
    [v6 removeFromSuperview];
    v7 = *&v0[v5];
  }

  else
  {
    v7 = 0;
  }

  *&v0[v5] = 0;

  sub_13B074(v6);
  return [*&v0[OBJC_IVAR____TtC18ASMessagesProvider24BannerCollectionViewCell_roundedBackgroundView] setHidden:1];
}

id sub_13BE08()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BannerCollectionViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for BannerCollectionViewCell()
{
  result = qword_9462F0;
  if (!qword_9462F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_13BF60()
{
  sub_1EA64();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_13C02C(uint64_t result)
{
  v1 = result;
  if (result)
  {
    sub_BE70(0, &qword_95A810);

    v2 = sub_769C60();
    if ((sub_765160() & 1) == 0)
    {

      return 0x4042000000000000;
    }

    v3 = v2;
    if (sub_765190())
    {
      v4 = sub_759910();
    }

    else
    {
      if ((sub_765180() & 1) == 0)
      {

LABEL_12:

        return 0x4042000000000000;
      }

      v4 = sub_56EBA8(v1, v2);
    }

    v5 = v4;

    if (v5)
    {
      [v5 size];
      v7 = v6;

      return v7;
    }

    goto LABEL_12;
  }

  return result;
}

double sub_13C170(uint64_t a1, __int128 *a2, void *a3)
{
  v74 = a3;
  v70 = a2;
  v4 = sub_BD88(&unk_93E530);
  __chkstk_darwin(v4 - 8);
  v6 = &v64[-v5];
  v7 = sub_7666D0();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v64[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_BD88(&qword_953FB0);
  __chkstk_darwin(v11 - 8);
  v13 = &v64[-v12];
  sub_764D00();
  v14 = sub_759C90();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_10A2C(v13, &qword_953FB0);
  }

  else
  {
    v16 = sub_759C80();
    (*(v15 + 8))(v13, v14);
    v17 = 0.0;
    if (v16)
    {
      return v17;
    }
  }

  v18 = v74;
  [v74 pageMarginInsets];
  sub_7697B0();
  sub_769DA0();
  if (qword_93D628 != -1)
  {
    swift_once();
  }

  v19 = sub_BE38(v7, qword_99EA70);
  v20 = *(v8 + 16);
  v20(v10, v19, v7);
  v21 = type metadata accessor for DynamicTypeLinkedTextView();
  v22 = objc_allocWithZone(v21);
  *&v22[qword_957FC0] = _swiftEmptyArrayStorage;
  *&v22[qword_957FC8] = 0;
  v95.receiver = v22;
  v95.super_class = v21;
  v23 = objc_msgSendSuper2(&v95, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v20(v6, v10, v7);
  (*(v8 + 56))(v6, 0, 1, v7);
  v24 = v23;
  sub_75DFD0();
  sub_75E000();

  v25 = v24;
  [v25 setSelectable:1];
  v26 = v25;
  [v26 setEditable:0];
  [v26 setScrollEnabled:0];
  [v26 setContentInset:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  [v26 setContentInsetAdjustmentBehavior:2];
  v27 = [objc_opt_self() clearColor];
  [v26 setBackgroundColor:v27];

  [v26 setDelegate:v26];
  [v26 _setInteractiveTextSelectionDisabled:1];

  (*(v8 + 8))(v10, v7);
  v28 = v26;
  sub_764D60();
  v29 = sub_769210();

  [v28 setText:v29];

  v30 = swift_allocObject();
  *(v30 + 16) = v28;
  v68 = v28;
  v31 = sub_764D20();
  v32 = [v18 traitCollection];
  v33 = sub_13C02C(v31);
  v67 = v34;
  v65 = v35;

  sub_764D10();
  sub_BD88(&unk_954000);
  v36 = sub_769490();

  v37 = 0;
  v38 = 0;
  if (v36)
  {

    v37 = sub_13CC60;
    v38 = a1;
  }

  v66 = v33;
  v72 = v38;
  v73 = v37;
  v71 = [v18 traitCollection];
  *(&v76 + 1) = &type metadata for DynamicSizePlaceholder;
  v39 = sub_13CA5C();
  *&v77 = v39;
  *&v75 = sub_13CA54;
  *(&v75 + 1) = v30;
  v69 = v30;

  if (!sub_764D20())
  {
    v40 = 0;
    v41 = 0;
    v42 = 0;
    v44 = v72;
    v43 = v73;
    if (v36)
    {
      goto LABEL_10;
    }

LABEL_12:
    v39 = 0;
    v45 = 0;
    v46 = 0;
    v47 = 0;
    goto LABEL_13;
  }

  v40 = sub_75AB90();
  swift_allocObject();
  v41 = sub_75AB80();
  v42 = sub_13CC08();
  v44 = v72;
  v43 = v73;
  if ((v36 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_10:
  v45 = &type metadata for DynamicSizePlaceholder;
  v46 = v44;
  v47 = v43;
LABEL_13:
  sub_F714(v43);
  v48 = v71;
  if (sub_7699D0())
  {
    v49 = 1;
  }

  else
  {
    v50 = [v48 preferredContentSizeCategory];
    v49 = sub_769B20();
  }

  v51 = v70[3];
  v86 = v70[2];
  v87 = v51;
  v52 = v70[5];
  v88 = v70[4];
  v89 = v52;
  v53 = v70[1];
  v84 = *v70;
  v85 = v53;
  sub_10914(&v75, v90);
  v91[0] = v41;
  v91[1] = 0;
  v91[2] = 0;
  v91[3] = v40;
  v91[4] = v42;
  v55 = v66;
  v54 = v67;
  v91[5] = v66;
  v91[6] = v67;
  v56 = v65 & 1;
  v92 = v65 & 1;
  v93[0] = v47;
  v93[1] = v46;
  v93[2] = 0;
  v93[3] = v45;
  v93[4] = v39;
  v94 = v49 & 1;
  v57 = [v74 traitCollection];
  v77 = v86;
  v78 = v87;
  v79 = v88;
  v80 = v89;
  v75 = v84;
  v76 = v85;
  if (v49)
  {
    v82 = &type metadata for BannerCollectionViewCellLayout.VerticalBannerLayout;
    v83 = sub_13CB5C();
  }

  else
  {
    v82 = &type metadata for BannerCollectionViewCellLayout.HorizontalBannerLayout;
    v83 = sub_13CAB0();
  }

  v58 = swift_allocObject();
  *&v81 = v58;
  sub_134D8(v90, v58 + 112);
  sub_867FC(v91, v58 + 152);
  sub_867FC(v93, v58 + 216);
  v59 = v78;
  *(v58 + 48) = v77;
  *(v58 + 64) = v59;
  v60 = v80;
  *(v58 + 80) = v79;
  *(v58 + 96) = v60;
  v61 = v76;
  *(v58 + 16) = v75;
  *(v58 + 32) = v61;
  *(v58 + 192) = v55;
  *(v58 + 200) = v54;
  *(v58 + 208) = v56;
  sub_10914(&v81, &v75);
  sub_B170(&v75, *(&v76 + 1));
  sub_7673F0();

  sub_BEB8(&v75);
  sub_769DC0();
  v17 = v62;

  sub_F704(v73);

  sub_13CB08(&v84);
  return v17;
}

uint64_t sub_13CA1C()
{

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_13CA5C()
{
  result = qword_946300;
  if (!qword_946300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_946300);
  }

  return result;
}

unint64_t sub_13CAB0()
{
  result = qword_946308;
  if (!qword_946308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_946308);
  }

  return result;
}

unint64_t sub_13CB5C()
{
  result = qword_946310;
  if (!qword_946310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_946310);
  }

  return result;
}

uint64_t sub_13CBB0()
{
  sub_BEB8(v0 + 112);
  if (*(v0 + 176))
  {
    sub_BEB8(v0 + 152);
  }

  if (*(v0 + 240))
  {
    sub_BEB8(v0 + 216);
  }

  return _swift_deallocObject(v0, 256, 7);
}

unint64_t sub_13CC08()
{
  result = qword_93F440;
  if (!qword_93F440)
  {
    sub_75AB90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_93F440);
  }

  return result;
}

id sub_13CC68(uint64_t a1)
{
  v2 = v1;
  v4 = sub_760AD0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC18ASMessagesProvider24BannerCollectionViewCell_leadingArtwork;
  *&v2[OBJC_IVAR____TtC18ASMessagesProvider24BannerCollectionViewCell_leadingArtwork] = a1;

  v9 = OBJC_IVAR____TtC18ASMessagesProvider24BannerCollectionViewCell_leadingArtworkView;
  v10 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider24BannerCollectionViewCell_leadingArtworkView];
  if (*&v2[v8])
  {
    if (!v10)
    {
      v11 = [objc_allocWithZone(sub_759210()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
      v12 = *&v2[v9];
      if (v12)
      {
        [v12 removeFromSuperview];
        v13 = *&v2[v9];
      }

      else
      {
        v13 = 0;
      }

      *&v2[v9] = v11;
      v18 = v11;

      if (v18)
      {
        v19 = [v2 contentView];
        [v19 addSubview:v18];
      }

      [v2 setNeedsLayout];

      if (*&v2[v8])
      {
        goto LABEL_17;
      }

      goto LABEL_10;
    }
  }

  else
  {
    if (v10)
    {
      [v10 removeFromSuperview];
      v14 = *&v2[v9];
    }

    else
    {
      v14 = 0;
    }

    *&v2[v9] = 0;

    [v2 setNeedsLayout];
  }

  if (*&v2[v8])
  {
LABEL_17:
    (*(v5 + 104))(v7, enum case for DirectionalTextAlignment.leading(_:), v4);
    sub_4E9AA8(v7);
    goto LABEL_18;
  }

LABEL_10:
  if (*&v2[OBJC_IVAR____TtC18ASMessagesProvider24BannerCollectionViewCell_buttonRow])
  {
    goto LABEL_17;
  }

  v15 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider24BannerCollectionViewCell_messageTextView];
  v16 = type metadata accessor for DynamicTypeLinkedTextView();
  v23.receiver = v15;
  v23.super_class = v16;
  v17 = objc_msgSendSuper2(&v23, "textAlignment");
  v22.receiver = v15;
  v22.super_class = v16;
  objc_msgSendSuper2(&v22, "setTextAlignment:", 1);
  v21.receiver = v15;
  v21.super_class = v16;
  if (objc_msgSendSuper2(&v21, "textAlignment") != v17)
  {
    sub_4E9E24();
  }

LABEL_18:
  sub_13B27C();
  return [v2 setNeedsLayout];
}

void sub_13CF10()
{
  v1 = v0;
  v2 = sub_BD88(&unk_93E530);
  __chkstk_darwin(v2 - 8);
  v4 = &v22 - v3;
  v5 = sub_7666D0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider24BannerCollectionViewCell_roundedBackgroundViewCornerRadius) = 0x403B000000000000;
  v9 = OBJC_IVAR____TtC18ASMessagesProvider24BannerCollectionViewCell_itemLayoutContext;
  v10 = sub_75C840();
  (*(*(v10 - 8) + 56))(v1 + v9, 1, 1, v10);
  v11 = OBJC_IVAR____TtC18ASMessagesProvider24BannerCollectionViewCell_messageTextView;
  if (qword_93D628 != -1)
  {
    swift_once();
  }

  v12 = sub_BE38(v5, qword_99EA70);
  v13 = *(v6 + 16);
  v13(v8, v12, v5);
  v14 = type metadata accessor for DynamicTypeLinkedTextView();
  v15 = objc_allocWithZone(v14);
  *&v15[qword_957FC0] = _swiftEmptyArrayStorage;
  *&v15[qword_957FC8] = 0;
  v22.receiver = v15;
  v22.super_class = v14;
  v16 = objc_msgSendSuper2(&v22, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v13(v4, v8, v5);
  (*(v6 + 56))(v4, 0, 1, v5);
  v17 = v16;
  sub_75DFD0();
  sub_75E000();

  v18 = v17;
  [v18 setSelectable:1];
  v19 = v18;
  [v19 setEditable:0];
  [v19 setScrollEnabled:0];
  [v19 setContentInset:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  [v19 setContentInsetAdjustmentBehavior:2];
  v20 = [objc_opt_self() clearColor];
  [v19 setBackgroundColor:v20];

  [v19 setDelegate:v19];
  [v19 _setInteractiveTextSelectionDisabled:1];

  (*(v6 + 8))(v8, v5);
  *(v1 + v11) = v19;
  v21 = OBJC_IVAR____TtC18ASMessagesProvider24BannerCollectionViewCell_roundedBackgroundView;
  *(v1 + v21) = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider24BannerCollectionViewCell_bottomSeparatorView) = 0;
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider24BannerCollectionViewCell_leadingArtwork) = 0;
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider24BannerCollectionViewCell_leadingArtworkView) = 0;
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider24BannerCollectionViewCell_leadingArtworkTintColor) = 0;
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider24BannerCollectionViewCell_leadingArtworkSymbolConfiguration) = 0;
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider24BannerCollectionViewCell_buttonRow) = 0;
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider24BannerCollectionViewCell_shouldUseArcadeMetrics) = 0;
  sub_76A840();
  __break(1u);
}

uint64_t type metadata accessor for CappedSizeDynamicTypeButton()
{
  result = qword_946320;
  if (!qword_946320)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_13D3DC()
{
  v1 = *(v0 + qword_946318);
  if (v1)
  {
    sub_75C560();
    v2 = sub_75C570();
    v3 = v1;
    v4 = v2();
    v5 = [v4 preferredContentSizeCategory];

    LOBYTE(v4) = sub_769B30();
    if (v4)
    {
      sub_BD88(&unk_93F5C0);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_77B6C0;
      *(v6 + 32) = v2();
      v7 = objc_opt_self();
      *(v6 + 40) = [v7 traitCollectionWithPreferredContentSizeCategory:v3];
      sub_86ACC();
      isa = sub_769450().super.isa;

      v9 = [v7 traitCollectionWithTraitsFromCollections:isa];

      return v9;
    }
  }

  sub_75C560();
  v11 = sub_75C570();

  return v11();
}

void sub_13D584(void *a1)
{
  v3 = sub_BD88(&unk_93E530);
  __chkstk_darwin(v3 - 8);
  v5 = &v20 - v4;
  v6 = sub_7666D0();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *&v1[qword_946318];
  *&v1[qword_946318] = a1;
  v21 = v10;
  if (!a1)
  {
    if (!v10)
    {
      return;
    }

    goto LABEL_14;
  }

  if (!v10)
  {
    v19 = a1;
    goto LABEL_14;
  }

  v11 = sub_769240();
  v13 = v12;
  if (v11 != sub_769240() || v13 != v14)
  {
    v16 = sub_76A950();
    v17 = a1;

    if (v16)
    {

      v18 = v21;

      return;
    }

LABEL_14:
    sub_75C530();
    if ((*(v7 + 48))(v5, 1, v6) == 1)
    {

      sub_11A38(v5);
    }

    else
    {
      (*(v7 + 32))(v9, v5, v6);
      sub_75C520();
      [v1 setNeedsLayout];

      (*(v7 + 8))(v9, v6);
    }

    return;
  }
}

id sub_13D838(char *a1, double a2, double a3, double a4, double a5)
{
  *&a1[qword_946318] = 0;
  v10.receiver = a1;
  v10.super_class = type metadata accessor for CappedSizeDynamicTypeButton();
  return objc_msgSendSuper2(&v10, "initWithFrame:", a2, a3, a4, a5);
}

id sub_13D8C8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CappedSizeDynamicTypeButton();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_13D918(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v54 = a2;
  v4 = sub_BD88(&unk_9535C0);
  __chkstk_darwin(v4 - 8);
  v6 = v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v52 - v8;
  v10 = sub_BD88(&unk_9457D0);
  __chkstk_darwin(v10 - 8);
  v12 = v52 - v11;
  v13 = sub_BD88(&unk_94AC40);
  __chkstk_darwin(v13 - 8);
  v15 = v52 - v14;
  v16 = sub_BD88(&unk_9457E0);
  __chkstk_darwin(v16 - 8);
  v18 = v52 - v17;
  v19 = sub_BD88(&unk_94A780);
  __chkstk_darwin(v19 - 8);
  v21 = v52 - v20;
  v22 = sub_BD88(&unk_948730);
  __chkstk_darwin(v22 - 8);
  v24 = v52 - v23;
  sub_764F90();
  sub_13E210();
  result = sub_75C750();
  v26 = v55[0];
  if (v55[0])
  {
    v53 = v6;
    v27 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider29SmallLockupCollectionViewCell_lockupView];
    v28 = sub_BD88(&unk_948740);
    (*(*(v28 - 8) + 56))(v24, 1, 1, v28);
    v29 = sub_758C70();
    (*(*(v29 - 8) + 56))(v21, 1, 1, v29);
    v30 = sub_75BD30();
    (*(*(v30 - 8) + 56))(v18, 1, 1, v30);
    v31 = sub_BD88(&unk_9457F0);
    (*(*(v31 - 8) + 56))(v15, 1, 1, v31);
    v32 = sub_765870();
    (*(*(v32 - 8) + 56))(v12, 1, 1, v32);
    sub_4A18A4(v26, v27, v24, v54, 0, 0, v21, v18, v12, v15);
    sub_10A2C(v12, &unk_9457D0);
    v27[OBJC_IVAR____TtC18ASMessagesProvider15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
    sub_1FD89C();
    [v27 setNeedsLayout];
    sub_10A2C(v15, &unk_94AC40);
    sub_10A2C(v18, &unk_9457E0);
    sub_10A2C(v21, &unk_94A780);
    sub_10A2C(v24, &unk_948730);
    v33 = OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_subtitleLabel;
    v34 = *&v27[OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_subtitleLabel];
    v35 = sub_764E60();
    if (!v35)
    {
      sub_396E8();
      v35 = sub_769FF0();
    }

    v36 = v35;
    [v34 setTextColor:v35];

    v37 = [*&v27[v33] layer];
    sub_764E70();
    v38 = sub_75F760();
    v39 = *(v38 - 8);
    v40 = *(v39 + 48);
    if (v40(v9, 1, v38) == 1)
    {
      sub_10A2C(v9, &unk_9535C0);
    }

    else
    {
      sub_75F750();
      (*(v39 + 8))(v9, v38);
      v41 = v56;
      if (v56)
      {
        v42 = sub_B170(v55, v56);
        v52[1] = v52;
        v43 = *(v41 - 8);
        v54 = v3;
        v44 = v43;
        v45 = __chkstk_darwin(v42);
        v47 = v52 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v44 + 16))(v47, v45);
        v48 = sub_76A930();
        (*(v44 + 8))(v47, v41);
        v3 = v54;
        sub_BEB8(v55);
LABEL_9:
        [v37 setCompositingFilter:v48];

        swift_unknownObjectRelease();
        v49 = [v27 layer];
        v50 = v53;
        sub_764E70();
        v51 = v40(v50, 1, v38) == 1;
        sub_10A2C(v50, &unk_9535C0);
        [v49 setAllowsGroupBlending:v51];

        [v3 setNeedsLayout];
      }
    }

    v48 = 0;
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_13E070@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider29SmallLockupCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  return sub_1799C(v1 + v3, a1);
}

uint64_t sub_13E0CC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider29SmallLockupCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  sub_1792C(a1, v1 + v3);
  return swift_endAccess();
}

void sub_13E194()
{
  v3.receiver = v0;
  v3.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v3, "prepareForReuse");
  v1 = *(*&v0[OBJC_IVAR____TtC18ASMessagesProvider29SmallLockupCollectionViewCell_lockupView] + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_artworkView);
  v4.value.super.isa = 0;
  v4.is_nil = 0;
  sub_7591D0(v4, v2);
}

unint64_t sub_13E210()
{
  result = qword_947610;
  if (!qword_947610)
  {
    sub_764F90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_947610);
  }

  return result;
}

uint64_t sub_13E268(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_BD88(&unk_944D90);
  __chkstk_darwin(v6 - 8);
  v46 = &v42 - v7;
  v8 = sub_BD88(&qword_946370);
  v47 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v42 - v9;
  v11 = sub_BD88(&qword_94EC40);
  __chkstk_darwin(v11 - 8);
  v48 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v42 - v14;
  v16 = sub_BD88(&unk_951420);
  __chkstk_darwin(v16 - 8);
  v18 = &v42 - v17;
  v19 = sub_758A00();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v42 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_13EB38(&qword_946378, &type metadata accessor for Annotation);
  sub_75C750();
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    return sub_10A2C(v18, &unk_951420);
  }

  v43 = v8;
  v44 = a1;
  v45 = a2;
  (*(v20 + 32))(v22, v18, v19);
  *&v3[OBJC_IVAR____TtC18ASMessagesProvider28AnnotationCollectionViewCell_detailItems] = sub_7589D0();

  v24 = sub_7589E0();
  v25 = &v3[OBJC_IVAR____TtC18ASMessagesProvider28AnnotationCollectionViewCell_titleText];
  *v25 = v24;
  v25[1] = v26;

  v27 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider28AnnotationCollectionViewCell_titleLabel];

  v28 = sub_769210();

  [v27 setText:v28];

  [v3 setNeedsLayout];
  v29 = sub_7589F0();
  v30 = &v3[OBJC_IVAR____TtC18ASMessagesProvider28AnnotationCollectionViewCell_explicitSummary];
  *v30 = v29;
  v30[1] = v31;

  sub_2F0D68();
  v32 = sub_7589B0();
  if (v32)
  {
    v49 = v32;
    sub_764C80();
    sub_768900();
    sub_13EB38(&qword_951430, &type metadata accessor for Action);
    sub_768820();

    v33 = 0;
  }

  else
  {
    v33 = 1;
  }

  v34 = sub_BD88(&unk_950960);
  v35 = 1;
  (*(*(v34 - 8) + 56))(v15, v33, 1, v34);
  v36 = OBJC_IVAR____TtC18ASMessagesProvider28AnnotationCollectionViewCell_linkAction;
  swift_beginAccess();
  sub_13EA74(v15, &v3[v36]);
  swift_endAccess();
  sub_2F0EF0();
  sub_10A2C(v15, &qword_94EC40);
  sub_75C790();
  sub_768B30();
  sub_13EAE4();
  v37 = v43;
  sub_768B00();
  (*(v47 + 8))(v10, v37);
  if ((v49 & 1) == 0)
  {
    v35 = sub_7589C0();
  }

  sub_2F28AC();
  v3[OBJC_IVAR____TtC18ASMessagesProvider28AnnotationCollectionViewCell_isExpanded] = v35 & 1;
  sub_2F0ABC();
  v38 = sub_7589B0();
  v39 = v48;
  if (v38)
  {
    v49 = v38;
    sub_764C80();
    sub_768900();
    sub_13EB38(&qword_951430, &type metadata accessor for Action);
    sub_768820();

    v40 = 0;
  }

  else
  {
    v40 = 1;
  }

  v41 = sub_BD88(&unk_950960);
  (*(*(v41 - 8) + 56))(v39, v40, 1, v41);
  swift_beginAccess();
  sub_13EA74(v39, &v3[v36]);
  swift_endAccess();
  sub_2F0EF0();
  sub_10A2C(v39, &qword_94EC40);
  return (*(v20 + 8))(v22, v19);
}

uint64_t sub_13E948@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider28AnnotationCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  return sub_1799C(v1 + v3, a1);
}

uint64_t sub_13E9A4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider28AnnotationCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  sub_1792C(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_13EA74(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&qword_94EC40);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

unint64_t sub_13EAE4()
{
  result = qword_951410;
  if (!qword_951410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_951410);
  }

  return result;
}

uint64_t sub_13EB38(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_13EB80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = a4;
  v28 = a2;
  v29 = sub_75B660();
  v5 = *(v29 - 8);
  __chkstk_darwin(v29);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_BD88(&unk_94F1F0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v26 - v13;
  sub_75DAA0();
  swift_getKeyPath();
  sub_768750();

  v15 = *(v9 + 8);
  v15(v14, v8);
  sub_75DAA0();
  swift_getKeyPath();
  sub_768750();

  v15(v11, v8);
  v16 = v27;
  sub_13EE24(v30);
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;

  (*(v16 + 8))(v7, v28, a3, v16, v18, v20, v22, v24);
  return (*(v5 + 8))(v7, v29);
}

void sub_13EE24(uint64_t a1)
{
  v2 = sub_76A920();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 && (sub_759880() & 1) != 0)
  {
    if (qword_93DCE0 != -1)
    {
      swift_once();
    }

    v6 = sub_766CA0();
    sub_BE38(v6, qword_99FDE8);
    sub_75DA40();
    sub_766470();
    sub_766700();
    swift_unknownObjectRelease();
    (*(v3 + 8))(v5, v2);
  }
}

unint64_t sub_13F070()
{
  v0 = sub_7699F0();
  v1 = sub_75D1A0();
  v6._object = 0x80000000007D07B0;
  v6._countAndFlagsBits = 0xD000000000000034;
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  v2._countAndFlagsBits = sub_761130(v6, v1, v8);
  if (v0)
  {
    v3 = 1554743522;
  }

  else
  {
    v3 = 799703266;
  }

  v5 = v3 & 0xFFFF0000FFFFFFFFLL | 0x2000000000;
  sub_769370(v2);

  v7._countAndFlagsBits = 11305186;
  v7._object = 0xA300000000000000;
  sub_769370(v7);

  return v5;
}

double sub_13F148(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v88 = sub_762D10();
  v6 = *(v88 - 8);
  __chkstk_darwin(v88);
  v86 = v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v83 = v72 - v9;
  __chkstk_darwin(v10);
  v82 = v72 - v11;
  v80 = sub_75E890();
  v79 = *(v80 - 8);
  __chkstk_darwin(v80);
  v81 = v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_7609C0();
  v87 = *(v13 - 8);
  __chkstk_darwin(v13);
  v85 = v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_7609A0();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v91 = v72 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v92 = v72 - v19;
  v20 = sub_765C90();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v78 = v72 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = v72 - v24;
  __chkstk_darwin(v26);
  v28 = v72 - v27;
  v84 = a1;
  v29 = sub_75D180();
  if (*(v29 + 16))
  {
    v74 = v13;
    v75 = v6;
    v30 = a4;
    v31 = *(v21 + 16);
    v31(v25, v29 + ((*(v21 + 80) + 32) & ~*(v21 + 80)), v20);

    v76 = v21;
    v32 = *(v21 + 32);
    v89 = v28;
    v90 = v20;
    v32(v28, v25, v20);
    if (qword_93C800 != -1)
    {
      swift_once();
    }

    v33 = sub_BE38(v15, qword_99BE50);
    v77 = v16;
    v34 = *(v16 + 16);
    v35 = v92;
    v34(v92, v33, v15);
    v36 = [a4 traitCollection];
    v37 = sub_769A00();

    if (v37)
    {
      v72[0] = v15;
      v34(v91, v35, v15);
      v31(v78, v89, v90);
      sub_75D1A0();
      v38 = [a4 traitCollection];
      v39 = sub_7699D0();

      v40 = &enum case for AchievementGroupView.Size.phone(_:);
      if ((v39 & 1) == 0)
      {
        v40 = &enum case for AchievementGroupView.Size.pad(_:);
      }

      (*(v79 + 104))(v81, *v40, v80);
      v41 = sub_75E8A0();
      v42 = objc_allocWithZone(v41);
      v43 = sub_75E880();
      v98[8] = v41;
      v98[9] = &protocol witness table for UIView;
      v98[5] = v43;
      v44 = sub_75D1B0();
      v99._object = 0x80000000007CF0B0;
      v99._countAndFlagsBits = 0xD000000000000032;
      v100._countAndFlagsBits = 0;
      v100._object = 0xE000000000000000;
      sub_761130(v99, v44, v100);
      v45 = sub_26F08();
      if (qword_93D830 != -1)
      {
        swift_once();
      }

      v81 = sub_7666D0();
      sub_BE38(v81, qword_99F088);
      v80 = v45;
      sub_769E00();
      v46 = sub_7653B0();
      v98[3] = v46;
      v79 = sub_140344(&qword_93F9B0, &type metadata accessor for Feature);
      v98[4] = v79;
      v47 = sub_B1B4(v98);
      v48 = *(v46 - 8);
      v49 = *(v48 + 104);
      LODWORD(v78) = enum case for Feature.measurement_with_labelplaceholder(_:);
      v73 = v49;
      v72[1] = v48 + 104;
      v49(v47);
      sub_765C30();
      sub_BEB8(v98);
      v50 = v82;
      sub_762D00();
      sub_762CE0();
      v51 = *(v75 + 8);
      v52 = v88;
      v51(v50, v88);
      v53 = [v30 traitCollection];
      sub_13F070();

      if (qword_93D838 != -1)
      {
        swift_once();
      }

      sub_BE38(v81, qword_99F0A0);
      sub_769E00();
      v97[3] = v46;
      v97[4] = v79;
      v54 = sub_B1B4(v97);
      v73(v54, v78, v46);
      sub_765C30();
      sub_BEB8(v97);
      v55 = v83;
      sub_762D00();
      sub_762CE0();
      v51(v55, v52);
      sub_75D190();
      v56 = v72[0];
      if (qword_93D840 != -1)
      {
        swift_once();
      }

      sub_BE38(v81, qword_99F0B8);
      sub_769E00();
      v96[3] = v46;
      v96[4] = v79;
      v57 = sub_B1B4(v96);
      v73(v57, v78, v46);
      sub_765C30();
      sub_BEB8(v96);
      v58 = v86;
      sub_762D00();
      sub_762CE0();
      v51(v58, v52);
      v95 = 0;
      v94 = 0u;
      v93 = 0u;
      v59 = v85;
      sub_7609B0();
      sub_140344(&unk_9463E0, &type metadata accessor for AchievementSummaryLayout);
      v60 = v74;
      sub_7665A0();
      v62 = v61;
      (*(v87 + 8))(v59, v60);
      (*(v77 + 8))(v92, v56);
      (*(v76 + 8))(v89, v90);
    }

    else
    {
      v63 = v15;
      [v30 pageContainerSize];
      if (v65 < v64)
      {
        JUScreenClassGetLandscapeWidth();
      }

      v66 = v77;
      v67 = v90;
      v68 = v89;
      v69 = v92;
      sub_760970();
      v62 = v70;
      (*(v66 + 8))(v69, v63);
      (*(v76 + 8))(v68, v67);
    }
  }

  else
  {

    return 0.0;
  }

  return v62;
}

void sub_13FD3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = v5;
  v8 = sub_BD88(&unk_94BAA0);
  v50 = *(v8 - 8);
  v51 = v8;
  __chkstk_darwin(v8);
  v52 = &v44 - v9;
  v47 = sub_75E890();
  v45 = *(v47 - 8);
  __chkstk_darwin(v47);
  v48 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_765C90();
  v46 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v44 - v15;
  __chkstk_darwin(v17);
  v44 = &v44 - v18;
  v19 = *(v5 + OBJC_IVAR____TtC18ASMessagesProvider36AchievementSummaryCollectionViewCell_numberCompletedLabel);
  v20 = sub_75D1B0();
  v54._object = 0x80000000007CF0B0;
  v54._countAndFlagsBits = 0xD000000000000032;
  v55._countAndFlagsBits = 0;
  v55._object = 0xE000000000000000;
  sub_761130(v54, v20, v55);
  v21 = sub_769210();

  [v19 setText:v21];

  v22 = *(v5 + OBJC_IVAR____TtC18ASMessagesProvider36AchievementSummaryCollectionViewCell_outOfTotalLabel);
  v49 = a5;
  v23 = [a5 traitCollection];
  sub_13F070();

  v24 = sub_769210();

  [v22 setText:v24];

  v25 = *(v6 + OBJC_IVAR____TtC18ASMessagesProvider36AchievementSummaryCollectionViewCell_completedLabel);
  sub_75D190();
  v26 = sub_769210();

  [v25 setText:v26];

  v27 = sub_75D180();
  if (*(v27 + 16))
  {
    v28 = v46;
    v29 = *(v46 + 16);
    v29(v16, v27 + ((*(v46 + 80) + 32) & ~*(v46 + 80)), v11);

    v30 = v44;
    (*(v28 + 32))(v44, v16, v11);
    v29(v13, v30, v11);
    sub_75D1A0();
    v31 = [v49 traitCollection];
    LOBYTE(v29) = sub_7699D0();

    v32 = &enum case for AchievementGroupView.Size.phone(_:);
    if ((v29 & 1) == 0)
    {
      v32 = &enum case for AchievementGroupView.Size.pad(_:);
    }

    (*(v45 + 104))(v48, *v32, v47);
    v33 = objc_allocWithZone(sub_75E8A0());
    v34 = sub_75E880();
    v35 = OBJC_IVAR____TtC18ASMessagesProvider36AchievementSummaryCollectionViewCell_achievementGroupView;
    v36 = *(v6 + OBJC_IVAR____TtC18ASMessagesProvider36AchievementSummaryCollectionViewCell_achievementGroupView);
    if (v36)
    {
      [v36 removeFromSuperview];
      v37 = *(v6 + v35);
    }

    else
    {
      v37 = 0;
    }

    *(v6 + v35) = v34;
    v40 = v34;

    [*(v6 + OBJC_IVAR____TtC18ASMessagesProvider36AchievementSummaryCollectionViewCell_containerView) addSubview:v40];
    if (sub_75D1A0() < 2)
    {
      if (qword_93C7F0 != -1)
      {
        swift_once();
      }

      v41 = qword_99BE20;
    }

    else
    {
      if (qword_93C7F8 != -1)
      {
        swift_once();
      }

      v41 = qword_99BE38;
    }

    v42 = v51;
    v43 = sub_BE38(v51, v41);
    (*(v50 + 16))(v52, v43, v42);
    swift_beginAccess();
    sub_760990();
    swift_endAccess();
    (*(v28 + 8))(v30, v11);
  }

  else
  {

    v38 = OBJC_IVAR____TtC18ASMessagesProvider36AchievementSummaryCollectionViewCell_achievementGroupView;
    v39 = *(v6 + OBJC_IVAR____TtC18ASMessagesProvider36AchievementSummaryCollectionViewCell_achievementGroupView);
    if (v39)
    {
      [v39 removeFromSuperview];
      v39 = *(v6 + v38);
    }

    *(v6 + v38) = 0;
  }
}

uint64_t sub_140344(unint64_t *a1, void (*a2)(uint64_t))
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

double *sub_14038C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v20 = _swiftEmptyArrayStorage;
    sub_1439B8(0, v1, 0);
    v4 = a1 + 32;
    v2 = _swiftEmptyArrayStorage;
    do
    {
      sub_134D8(v4, v16);
      sub_BD88(&unk_941890);
      sub_BD88(&unk_9418A0);
      swift_dynamicCast();
      v20 = v2;
      v6 = *(v2 + 2);
      v5 = *(v2 + 3);
      if (v6 >= v5 >> 1)
      {
        sub_1439B8((v5 > 1), v6 + 1, 1);
      }

      v7 = v18;
      v8 = v19;
      v9 = sub_10974(v17, v18);
      v10 = __chkstk_darwin(v9);
      v12 = &v16[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
      (*(v13 + 16))(v12, v10);
      sub_146570(v6, v12, &v20, v7, v8);
      sub_BEB8(v17);
      v2 = v20;
      v4 += 40;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void *sub_140564(uint64_t a1)
{
  v2 = sub_767170();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = _swiftEmptyArrayStorage;
  if (v6)
  {
    v21 = _swiftEmptyArrayStorage;
    sub_143A18(0, v6, 0);
    v7 = v21;
    v10 = *(v3 + 16);
    v8 = v3 + 16;
    v9 = v10;
    v11 = a1 + ((*(v8 + 64) + 32) & ~*(v8 + 64));
    v17 = *(v8 + 56);
    do
    {
      v9(v5, v11, v2);
      v21 = v7;
      v13 = v7[2];
      v12 = v7[3];
      if (v13 >= v12 >> 1)
      {
        sub_143A18((v12 > 1), v13 + 1, 1);
      }

      v19 = v2;
      v20 = &protocol witness table for VerticalSpaceMeasurable;
      v14 = sub_B1B4(&v18);
      v9(v14, v5, v2);
      v7 = v21;
      v21[2] = v13 + 1;
      sub_10914(&v18, &v7[5 * v13 + 4]);
      (*(v8 - 8))(v5, v2);
      v11 += v17;
      --v6;
    }

    while (v6);
  }

  return v7;
}

char *sub_140730(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_76A860();
  }

  else
  {
    v2 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }

  v3 = _swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  v13 = _swiftEmptyArrayStorage;
  result = sub_143958(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        sub_76A770();
        type metadata accessor for CGColor(0);
        swift_dynamicCast();
        v13 = v3;
        v7 = v3[2];
        v6 = v3[3];
        if (v7 >= v6 >> 1)
        {
          sub_143958((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        v3[2] = v7 + 1;
        sub_13310(v12, &v3[4 * v7 + 4]);
      }
    }

    else
    {
      v8 = (a1 + 32);
      type metadata accessor for CGColor(0);
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = v3[2];
        v10 = v3[3];
        if (v11 >= v10 >> 1)
        {
          sub_143958((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        v3[2] = v11 + 1;
        sub_13310(v12, &v3[4 * v11 + 4]);
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

void *sub_1408FC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v9 = _swiftEmptyArrayStorage;
    sub_143958(0, v1, 0);
    v2 = _swiftEmptyArrayStorage;
    v4 = a1 + 32;
    do
    {

      sub_BD88(&qword_941A10);
      swift_dynamicCast();
      v9 = v2;
      v6 = v2[2];
      v5 = v2[3];
      if (v6 >= v5 >> 1)
      {
        sub_143958((v5 > 1), v6 + 1, 1);
        v2 = v9;
      }

      v2[2] = v6 + 1;
      sub_13310(&v8, &v2[4 * v6 + 4]);
      v4 += 8;
      --v1;
    }

    while (v1);
  }

  return v2;
}

char *sub_140A24(unint64_t a1, unint64_t *a2)
{
  if (a1 >> 62)
  {
    v4 = sub_76A860();
  }

  else
  {
    v4 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }

  v5 = _swiftEmptyArrayStorage;
  if (!v4)
  {
    return v5;
  }

  v15 = _swiftEmptyArrayStorage;
  result = sub_143958(0, v4 & ~(v4 >> 63), 0);
  if ((v4 & 0x8000000000000000) == 0)
  {
    v5 = v15;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v4; ++i)
      {
        sub_76A770();
        sub_BE70(0, a2);
        swift_dynamicCast();
        v15 = v5;
        v9 = v5[2];
        v8 = v5[3];
        if (v9 >= v8 >> 1)
        {
          sub_143958((v8 > 1), v9 + 1, 1);
          v5 = v15;
        }

        v5[2] = v9 + 1;
        sub_13310(v14, &v5[4 * v9 + 4]);
      }
    }

    else
    {
      v10 = (a1 + 32);
      sub_BE70(0, a2);
      do
      {
        v11 = *v10;
        swift_dynamicCast();
        v15 = v5;
        v13 = v5[2];
        v12 = v5[3];
        if (v13 >= v12 >> 1)
        {
          sub_143958((v12 > 1), v13 + 1, 1);
          v5 = v15;
        }

        v5[2] = v13 + 1;
        sub_13310(v14, &v5[4 * v13 + 4]);
        ++v10;
        --v4;
      }

      while (v4);
    }

    return v5;
  }

  __break(1u);
  return result;
}

uint64_t sub_140CFC(unint64_t a1, void (*a2)(BOOL, unint64_t, uint64_t), uint64_t (*a3)(void), uint64_t a4, void (*a5)(void *, void *))
{
  if (a1 >> 62)
  {
    v10 = sub_76A860();
  }

  else
  {
    v10 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }

  v11 = _swiftEmptyArrayStorage;
  if (!v10)
  {
    return v11;
  }

  v26 = _swiftEmptyArrayStorage;
  result = (a2)(0, v10 & ~(v10 >> 63), 0);
  if ((v10 & 0x8000000000000000) == 0)
  {
    v22 = a2;
    v11 = v26;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v13 = 0;
      do
      {
        v14 = sub_76A770();
        v26 = v11;
        v16 = v11[2];
        v15 = v11[3];
        if (v16 >= v15 >> 1)
        {
          v22(v15 > 1, v16 + 1, 1);
          v11 = v26;
        }

        ++v13;
        v24 = a3(0);
        v25 = a4;
        v23[0] = v14;
        v11[2] = v16 + 1;
        a5(v23, &v11[5 * v16 + 4]);
      }

      while (v10 != v13);
    }

    else
    {
      v17 = (a1 + 32);
      do
      {
        v18 = *v17;
        v26 = v11;
        v19 = v11[2];
        v20 = v11[3];
        v21 = v18;
        if (v19 >= v20 >> 1)
        {
          v22(v20 > 1, v19 + 1, 1);
          v11 = v26;
        }

        v24 = a3(0);
        v25 = a4;
        v23[0] = v21;
        v11[2] = v19 + 1;
        a5(v23, &v11[5 * v19 + 4]);
        ++v17;
        --v10;
      }

      while (v10);
    }

    return v11;
  }

  __break(1u);
  return result;
}

void *sub_140F6C(unint64_t a1, uint64_t (*a2)(void), unint64_t *a3, void (*a4)(uint64_t))
{
  if (a1 >> 62)
  {
    v8 = sub_76A860();
  }

  else
  {
    v8 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }

  v9 = _swiftEmptyArrayStorage;
  if (!v8)
  {
    return v9;
  }

  v22 = _swiftEmptyArrayStorage;
  result = sub_143CFC(0, v8 & ~(v8 >> 63), 0);
  if ((v8 & 0x8000000000000000) == 0)
  {
    v9 = v22;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v11 = 0;
      do
      {
        v12 = sub_76A770();
        v22 = v9;
        v14 = v9[2];
        v13 = v9[3];
        if (v14 >= v13 >> 1)
        {
          sub_143CFC((v13 > 1), v14 + 1, 1);
          v9 = v22;
        }

        ++v11;
        v20 = a2(0);
        v21 = sub_146608(a3, a4);
        *&v19 = v12;
        v9[2] = v14 + 1;
        sub_10914(&v19, &v9[5 * v14 + 4]);
      }

      while (v8 != v11);
    }

    else
    {
      v15 = (a1 + 32);
      do
      {
        v16 = *v15;
        v22 = v9;
        v18 = v9[2];
        v17 = v9[3];

        if (v18 >= v17 >> 1)
        {
          sub_143CFC((v17 > 1), v18 + 1, 1);
          v9 = v22;
        }

        v20 = a2(0);
        v21 = sub_146608(a3, a4);
        *&v19 = v16;
        v9[2] = v18 + 1;
        sub_10914(&v19, &v9[5 * v18 + 4]);
        ++v15;
        --v8;
      }

      while (v8);
    }

    return v9;
  }

  __break(1u);
  return result;
}

double *sub_1411E4(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_76A860();
  }

  else
  {
    v2 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }

  v3 = _swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  v16 = _swiftEmptyArrayStorage;
  result = sub_1439B8(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v16;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      do
      {
        v6 = sub_76A770();
        v16 = v3;
        v8 = *(v3 + 2);
        v7 = *(v3 + 3);
        if (v8 >= v7 >> 1)
        {
          sub_1439B8((v7 > 1), v8 + 1, 1);
          v3 = v16;
        }

        ++v5;
        v14 = sub_7670D0();
        v15 = &protocol witness table for LayoutViewPlaceholder;
        *&v13 = v6;
        *(v3 + 2) = v8 + 1;
        sub_10914(&v13, &v3[5 * v8 + 4]);
      }

      while (v2 != v5);
    }

    else
    {
      v9 = (a1 + 32);
      do
      {
        v10 = *v9;
        v16 = v3;
        v11 = *(v3 + 2);
        v12 = *(v3 + 3);

        if (v11 >= v12 >> 1)
        {
          sub_1439B8((v12 > 1), v11 + 1, 1);
          v3 = v16;
        }

        v14 = sub_7670D0();
        v15 = &protocol witness table for LayoutViewPlaceholder;
        *&v13 = v10;
        *(v3 + 2) = v11 + 1;
        sub_10914(&v13, &v3[5 * v11 + 4]);
        ++v9;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

double *sub_1413F8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_143EA8(0, v1, 0);
    v3 = a1 + 40;
    do
    {

      sub_BD88(&qword_941BA0);
      swift_dynamicCast();
      v4 = v8;
      v6 = _swiftEmptyArrayStorage[2];
      v5 = _swiftEmptyArrayStorage[3];
      if (*&v6 >= *&v5 >> 1)
      {
        sub_143EA8((*&v5 > 1uLL), *&v6 + 1, 1);
        v4 = v8;
      }

      *&_swiftEmptyArrayStorage[2] = *&v6 + 1;
      *&_swiftEmptyArrayStorage[2 * *&v6 + 4] = v4;
      v3 += 16;
      --v1;
    }

    while (v1);
  }

  return _swiftEmptyArrayStorage;
}

double *sub_141558(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_143EC8(0, v1, 0);
    v3 = a1 + 32;
    do
    {
      v3 += 8;
      swift_dynamicCast();
      v5 = _swiftEmptyArrayStorage[2];
      v4 = _swiftEmptyArrayStorage[3];
      if (*&v5 >= *&v4 >> 1)
      {
        sub_143EC8((*&v4 > 1uLL), *&v5 + 1, 1);
      }

      *&_swiftEmptyArrayStorage[2] = *&v5 + 1;
      v6 = &_swiftEmptyArrayStorage[5 * *&v5];
      *(v6 + 8) = v10;
      *(v6 + 2) = v8;
      *(v6 + 3) = v9;
      --v1;
    }

    while (v1);
  }

  return _swiftEmptyArrayStorage;
}

double *sub_1416A0(uint64_t a1)
{
  v16 = sub_BD88(&qword_941C20);
  v2 = *(v16 - 8);
  __chkstk_darwin(v16);
  v4 = &v16 - v3;
  v5 = sub_BD88(&qword_946518);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - v7;
  v9 = *(a1 + 16);
  v10 = _swiftEmptyArrayStorage;
  if (v9)
  {
    v17 = _swiftEmptyArrayStorage;
    sub_143F48(0, v9, 0);
    v10 = v17;
    v11 = a1 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v12 = *(v2 + 72);
    do
    {
      sub_146AB8(v11, v4);
      swift_dynamicCast();
      v17 = v10;
      v14 = *(v10 + 2);
      v13 = *(v10 + 3);
      if (v14 >= v13 >> 1)
      {
        sub_143F48(v13 > 1, v14 + 1, 1);
        v10 = v17;
      }

      *(v10 + 2) = v14 + 1;
      sub_146B28(v8, v10 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v14);
      v11 += v12;
      --v9;
    }

    while (v9);
  }

  return v10;
}

double *sub_1418B8(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_76A860();
  }

  else
  {
    v2 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }

  v3 = _swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  v17 = _swiftEmptyArrayStorage;
  result = sub_1439B8(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v17;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      do
      {
        v6 = sub_76A770();
        v17 = v3;
        v8 = *(v3 + 2);
        v7 = *(v3 + 3);
        if (v8 >= v7 >> 1)
        {
          sub_1439B8((v7 > 1), v8 + 1, 1);
          v3 = v17;
        }

        ++v5;
        v15 = sub_BE70(0, &qword_93E550);
        v16 = &protocol witness table for UIView;
        *&v14 = v6;
        *(v3 + 2) = v8 + 1;
        sub_10914(&v14, &v3[5 * v8 + 4]);
      }

      while (v2 != v5);
    }

    else
    {
      v9 = (a1 + 32);
      do
      {
        v10 = *v9;
        v17 = v3;
        v12 = *(v3 + 2);
        v11 = *(v3 + 3);
        v13 = v10;
        if (v12 >= v11 >> 1)
        {
          sub_1439B8((v11 > 1), v12 + 1, 1);
          v3 = v17;
        }

        v15 = sub_BE70(0, &qword_93E550);
        v16 = &protocol witness table for UIView;
        *&v14 = v13;
        *(v3 + 2) = v12 + 1;
        sub_10914(&v14, &v3[5 * v12 + 4]);
        ++v9;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_141B50(unint64_t a1, unint64_t *a2)
{
  if (a1 >> 62)
  {
    sub_BE70(0, a2);

    v5 = sub_76A850();

    return v5;
  }

  else
  {

    sub_76A960();
    sub_BE70(0, a2);
    return a1;
  }
}

double *sub_141BF4(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v10 = _swiftEmptyArrayStorage;
    sub_143FEC(0, v1, 0);
    v2 = _swiftEmptyArrayStorage;
    v4 = (a1 + 32);
    do
    {
      v5 = *v4;
      sub_BD88(&qword_941A58);
      sub_BD88(&qword_941B00);
      swift_dynamicCast();
      v10 = v2;
      v7 = *(v2 + 2);
      v6 = *(v2 + 3);
      if (v7 >= v6 >> 1)
      {
        sub_143FEC((v6 > 1), v7 + 1, 1);
        v2 = v10;
      }

      *(v2 + 2) = v7 + 1;
      sub_10914(&v9, &v2[5 * v7 + 4]);
      v4 += 2;
      --v1;
    }

    while (v1);
  }

  return v2;
}

char *sub_141D30(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v10 = sub_765770();
  v60 = *(v10 - 8);
  v61 = v10;
  __chkstk_darwin(v10);
  v59 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_760AD0();
  v55 = *(v57 - 8);
  __chkstk_darwin(v57);
  v56 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_BD88(&unk_93E530);
  __chkstk_darwin(v13 - 8);
  v15 = &v54 - v14;
  v16 = sub_BD88(&qword_9464F8);
  __chkstk_darwin(v16);
  v17 = OBJC_IVAR____TtC18ASMessagesProvider32ArcadeShowcaseCollectionViewCell_itemLayoutContext;
  v18 = sub_75C840();
  (*(*(v18 - 8) + 56))(&v4[v17], 1, 1, v18);
  v19 = OBJC_IVAR____TtC18ASMessagesProvider32ArcadeShowcaseCollectionViewCell_iconGridView;
  v20 = type metadata accessor for IconGridView();
  v21 = objc_allocWithZone(v20);
  *&v21[OBJC_IVAR____TtC18ASMessagesProvider12IconGridView_artworkViews] = _swiftEmptyArrayStorage;
  sub_759210();
  sub_7667C0();
  sub_16194(&qword_946500, &qword_9464F8);
  sub_767480();
  *&v21[OBJC_IVAR____TtC18ASMessagesProvider12IconGridView_impressionableArtworks] = 0;
  *&v21[OBJC_IVAR____TtC18ASMessagesProvider12IconGridView_artworkLoader] = 0;
  v22 = &v21[OBJC_IVAR____TtC18ASMessagesProvider12IconGridView_configuration];
  *v22 = vdupq_n_s64(0x4056000000000000uLL);
  *(v22 + 2) = 0x4024000000000000;
  *(v22 + 3) = 2;
  *(v22 + 2) = xmmword_786D80;
  v63.receiver = v21;
  v63.super_class = v20;
  *&v5[v19] = objc_msgSendSuper2(&v63, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v23 = OBJC_IVAR____TtC18ASMessagesProvider32ArcadeShowcaseCollectionViewCell_wordmarkImageView;
  *&v5[v23] = [objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v24 = OBJC_IVAR____TtC18ASMessagesProvider32ArcadeShowcaseCollectionViewCell_descriptionLabel;
  if (qword_93D4E8 != -1)
  {
    swift_once();
  }

  v25 = sub_7666D0();
  v26 = sub_BE38(v25, qword_99E6C8);
  v27 = *(v25 - 8);
  (*(v27 + 16))(v15, v26, v25);
  (*(v27 + 56))(v15, 0, 1, v25);
  (*(v55 + 104))(v56, enum case for DirectionalTextAlignment.none(_:), v57);
  v28 = objc_allocWithZone(sub_75BB20());
  *&v5[v24] = sub_75BB10();
  v29 = OBJC_IVAR____TtC18ASMessagesProvider32ArcadeShowcaseCollectionViewCell_offerButton;
  v30 = objc_allocWithZone(type metadata accessor for OfferButton());
  *&v5[v29] = sub_1DD00C(0);
  v31 = &v5[OBJC_IVAR____TtC18ASMessagesProvider32ArcadeShowcaseCollectionViewCell_offerLabelPresenter];
  *v31 = 0u;
  *(v31 + 1) = 0u;
  v62.receiver = v5;
  v62.super_class = ObjectType;
  v32 = objc_msgSendSuper2(&v62, "initWithFrame:", a1, a2, a3, a4);
  v33 = [v32 contentView];
  [v33 addSubview:*&v32[OBJC_IVAR____TtC18ASMessagesProvider32ArcadeShowcaseCollectionViewCell_iconGridView]];

  v34 = OBJC_IVAR____TtC18ASMessagesProvider32ArcadeShowcaseCollectionViewCell_wordmarkImageView;
  v35 = *&v32[OBJC_IVAR____TtC18ASMessagesProvider32ArcadeShowcaseCollectionViewCell_wordmarkImageView];
  v36 = v59;
  v37 = v60;
  v38 = v61;
  (*(v60 + 104))(v59, enum case for Wordmark.arcade(_:), v61);
  v39 = v35;
  v40.super.isa = [v32 traitCollection];
  isa = v40.super.isa;
  v42 = sub_765760(v40);

  (*(v37 + 8))(v36, v38);
  [v39 setImage:v42];

  v43 = *&v32[v34];
  sub_BE70(0, &qword_93E540);
  v44 = v43;
  v45 = sub_769FD0();
  [v44 setTintColor:v45];

  v46 = [v32 contentView];
  [v46 addSubview:*&v32[v34]];

  v47 = OBJC_IVAR____TtC18ASMessagesProvider32ArcadeShowcaseCollectionViewCell_descriptionLabel;
  v48 = *&v32[OBJC_IVAR____TtC18ASMessagesProvider32ArcadeShowcaseCollectionViewCell_descriptionLabel];
  sub_76A150();

  v49 = *&v32[v47];
  v50 = sub_769FF0();
  [v49 setTextColor:v50];

  v51 = [v32 contentView];
  [v51 addSubview:*&v32[v47]];

  v52 = [v32 contentView];
  [v52 addSubview:*&v32[OBJC_IVAR____TtC18ASMessagesProvider32ArcadeShowcaseCollectionViewCell_offerButton]];

  [v32 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  return v32;
}

uint64_t sub_1424B8()
{
  v0 = sub_7664A0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_766CA0();
  sub_161DC(v4, qword_9463F0);
  sub_BE38(v4, qword_9463F0);
  if (qword_93D4E8 != -1)
  {
    swift_once();
  }

  v5 = sub_7666D0();
  v6 = sub_BE38(v5, qword_99E6C8);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v10[3] = v0;
  v10[4] = &protocol witness table for FontSource;
  v7 = sub_B1B4(v10);
  (*(v1 + 16))(v7, v3, v0);
  sub_766CB0();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_14268C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v71 = sub_7664F0();
  v70 = *(v71 - 8);
  __chkstk_darwin(v71);
  v69 = &v60 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_75E800();
  v94 = *(v67 - 8);
  __chkstk_darwin(v67);
  v79 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_75E820();
  v95 = *(v80 - 8);
  __chkstk_darwin(v80);
  v6 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_75E840();
  v96 = *(v93 - 8);
  __chkstk_darwin(v93);
  v8 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_766690();
  v9 = *(v92 - 8);
  __chkstk_darwin(v92);
  v11 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_75BDF0();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_75E870();
  v65 = *(v66 - 8);
  *&v16 = __chkstk_darwin(v66).n128_u64[0];
  v64 = &v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107.receiver = v1;
  v107.super_class = ObjectType;
  v68 = ObjectType;
  objc_msgSendSuper2(&v107, "layoutSubviews", v16);
  v90 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider32ArcadeShowcaseCollectionViewCell_iconGridView];
  v18 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider32ArcadeShowcaseCollectionViewCell_wordmarkImageView];
  v61 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider32ArcadeShowcaseCollectionViewCell_descriptionLabel];
  v63 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider32ArcadeShowcaseCollectionViewCell_offerButton];
  sub_75BDE0();
  sub_75BE10();
  sub_146608(&qword_946440, &type metadata accessor for OffsetGridLayout);
  v72 = v1;
  sub_766ED0();
  v20 = v19;
  (*(v13 + 8))(v15, v12);
  v76 = v18;
  v21 = [v18 image];
  if (v21)
  {
    v22 = v21;
    [v21 size];
    sub_7666A0();
    sub_766650();

    (*(v9 + 8))(v11, v92);
  }

  sub_BD88(&qword_9417D8);
  v23 = *(sub_75E850() - 8);
  v91 = *(v23 + 72);
  v24 = (*(v23 + 80) + 32) & ~*(v23 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_782440;
  v62 = v25;
  v92 = v25 + v24;
  *&v98 = v90;
  v105 = &type metadata for CGFloat;
  v106 = &protocol witness table for CGFloat;
  v104 = v20;
  v102 = sub_767170();
  v103 = &protocol witness table for VerticalSpaceMeasurable;
  sub_B1B4(&v101);
  sub_767180();
  sub_BE70(0, &qword_93E550);
  sub_766570();
  sub_BEB8(&v101);
  v78 = enum case for _VerticalFlowLayout.Child.Placement.top(_:);
  v26 = *(v96 + 104);
  v90 = v96 + 104;
  v89 = v26;
  v26(v8);
  v27 = v95;
  v28 = *(v95 + 104);
  v88 = v95 + 104;
  v87 = v28;
  v28(v6, enum case for _VerticalFlowLayout.Child.HorizontalAlignment.leading(_:), v80);
  v102 = &type metadata for CGFloat;
  v103 = &protocol witness table for CGFloat;
  v100 = 0;
  v101 = 0x4044000000000000;
  v98 = 0u;
  v99 = 0u;
  v86 = sub_BD88(&qword_9417E0);
  v29 = v8;
  v30 = v94;
  v31 = *(v94 + 80);
  v60 = *(v94 + 72);
  v75 = ((v31 + 32) & ~v31) + v60;
  v77 = (v31 + 32) & ~v31;
  v32 = swift_allocObject();
  v74 = xmmword_77B6D0;
  *(v32 + 16) = xmmword_77B6D0;
  sub_75E7D0();
  v97 = v32;
  v82 = sub_146608(&qword_9417E8, &type metadata accessor for _VerticalFlowLayout.ExclusionCondition);
  v85 = sub_BD88(&qword_9417F0);
  v84 = sub_16194(&qword_9417F8, &qword_9417F0);
  v33 = v79;
  v34 = v67;
  sub_76A5A0();
  v35 = v29;
  sub_75E830();
  v83 = *(v30 + 8);
  v83(v33, v34);
  sub_10A2C(&v98, &unk_93F9C0);
  v36 = *(v27 + 8);
  v95 = v27 + 8;
  v81 = v36;
  v37 = v80;
  v36(v6, v80);
  v38 = *(v96 + 8);
  v96 += 8;
  v39 = v35;
  v40 = v35;
  v41 = v93;
  v38(v39, v93);
  sub_BEB8(&v104);
  sub_BEB8(&v101);
  v101 = v76;
  sub_BE70(0, &qword_949D90);
  sub_766590();
  v89(v40, v78, v41);
  v42 = enum case for _VerticalFlowLayout.Child.HorizontalAlignment.center(_:);
  v87(v6, enum case for _VerticalFlowLayout.Child.HorizontalAlignment.center(_:), v37);
  v103 = &protocol witness table for CGFloat;
  v102 = &type metadata for CGFloat;
  v100 = 0;
  v101 = 0x4034000000000000;
  v98 = 0u;
  v99 = 0u;
  v76 = v31;
  v43 = swift_allocObject();
  *(v43 + 16) = v74;
  sub_75E7D0();
  v97 = v43;
  sub_76A5A0();
  sub_75E830();
  v94 = v30 + 8;
  v83(v33, v34);
  sub_10A2C(&v98, &unk_93F9C0);
  v81(v6, v37);
  v44 = v93;
  v73 = v38;
  v38(v40, v93);
  sub_BEB8(&v104);
  sub_BEB8(&v101);
  v101 = v61;
  sub_75BB20();
  sub_766560();
  v89(v40, enum case for _VerticalFlowLayout.Child.Placement.firstBaseline(_:), v44);
  LODWORD(v61) = v42;
  v87(v6, v42, v37);
  if (qword_93C408 != -1)
  {
    swift_once();
  }

  v45 = sub_766CA0();
  v46 = sub_BE38(v45, qword_9463F0);
  v102 = v45;
  v103 = &protocol witness table for StaticDimension;
  v47 = sub_B1B4(&v101);
  (*(*(v45 - 8) + 16))(v47, v46, v45);
  v100 = 0;
  v98 = 0u;
  v99 = 0u;
  v48 = swift_allocObject();
  *(v48 + 16) = xmmword_77E280;
  sub_75E7D0();
  sub_75E7E0();
  v97 = v48;
  v49 = v79;
  sub_76A5A0();
  sub_75E830();
  v83(v49, v34);
  sub_10A2C(&v98, &unk_93F9C0);
  v81(v6, v37);
  v50 = v40;
  v51 = v40;
  v52 = v93;
  v73(v50);
  sub_BEB8(&v104);
  sub_BEB8(&v101);
  v105 = type metadata accessor for OfferButton();
  v106 = &protocol witness table for UIView;
  v53 = v63;
  v104 = v63;
  v89(v51, v78, v52);
  v87(v6, v61, v37);
  v103 = &protocol witness table for CGFloat;
  v102 = &type metadata for CGFloat;
  v100 = 0;
  v101 = 0x4032000000000000;
  v98 = 0u;
  v99 = 0u;
  v54 = swift_allocObject();
  *(v54 + 16) = v74;
  v55 = v53;
  sub_75E7D0();
  v97 = v54;
  sub_76A5A0();
  sub_75E830();
  v83(v49, v34);
  sub_10A2C(&v98, &unk_93F9C0);
  v81(v6, v37);
  (v73)(v51, v52);
  sub_BEB8(&v101);
  sub_BEB8(&v104);
  v56 = v64;
  sub_75E810();
  sub_75D650();
  sub_146608(&qword_9464F0, &type metadata accessor for _VerticalFlowLayout);
  v57 = v69;
  v58 = v66;
  sub_7672C0();
  (*(v70 + 8))(v57, v71);
  return (*(v65 + 8))(v56, v58);
}

uint64_t type metadata accessor for ArcadeShowcaseCollectionViewCell()
{
  result = qword_946430;
  if (!qword_946430)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1438AC()
{
  sub_1EA64();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

char *sub_143958(char *a1, int64_t a2, char a3)
{
  result = sub_14402C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_143978(void *a1, int64_t a2, char a3)
{
  result = sub_145B6C(a1, a2, a3, *v3, &unk_941B20, &unk_781140, &qword_93F348);
  *v3 = result;
  return result;
}

void *sub_1439B8(void *a1, int64_t a2, char a3)
{
  result = sub_145B6C(a1, a2, a3, *v3, &unk_941A90, &unk_7810B0, &unk_9418A0);
  *v3 = result;
  return result;
}

void *sub_1439F8(void *a1, int64_t a2, char a3)
{
  result = sub_14413C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_143A18(void *a1, int64_t a2, char a3)
{
  result = sub_145B6C(a1, a2, a3, *v3, &qword_941B30, &unk_781150, &qword_941B38);
  *v3 = result;
  return result;
}

char *sub_143A58(char *a1, int64_t a2, char a3)
{
  result = sub_144270(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

double *sub_143A78(double *a1, int64_t a2, char a3)
{
  result = sub_144390(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_143A98(size_t a1, int64_t a2, char a3)
{
  result = sub_145688(a1, a2, a3, *v3, &qword_946490, &unk_786E88, &unk_944E60);
  *v3 = result;
  return result;
}

size_t sub_143AD8(size_t a1, int64_t a2, char a3)
{
  result = sub_145688(a1, a2, a3, *v3, &qword_946470, &unk_786E60, &qword_946478);
  *v3 = result;
  return result;
}

void *sub_143B18(void *a1, int64_t a2, char a3)
{
  result = sub_1444C4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_143B38(size_t a1, int64_t a2, char a3)
{
  result = sub_145990(a1, a2, a3, *v3, &qword_941B80, &unk_7811A0, &type metadata accessor for AdamId);
  *v3 = result;
  return result;
}

size_t sub_143B7C(size_t a1, int64_t a2, char a3)
{
  result = sub_145688(a1, a2, a3, *v3, &qword_93FB88, &unk_77F050, &qword_93FB80);
  *v3 = result;
  return result;
}

char *sub_143BBC(char *a1, int64_t a2, char a3)
{
  result = sub_1445F8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_143BDC(char *a1, int64_t a2, char a3)
{
  result = sub_144720(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_143BFC(void *a1, int64_t a2, char a3)
{
  result = sub_144A5C(a1, a2, a3, *v3, &qword_941A08, &unk_786E10, &qword_941A10);
  *v3 = result;
  return result;
}

void *sub_143C3C(void *a1, int64_t a2, char a3)
{
  result = sub_144824(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_143C5C(char *a1, int64_t a2, char a3)
{
  result = sub_144958(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_143C7C(void *a1, int64_t a2, char a3)
{
  result = sub_144A5C(a1, a2, a3, *v3, &qword_941A40, &unk_781060, &qword_941A48);
  *v3 = result;
  return result;
}

char *sub_143CBC(char *a1, int64_t a2, char a3)
{
  result = sub_144B90(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_143CDC(char *a1, int64_t a2, char a3)
{
  result = sub_144C94(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_143CFC(void *a1, int64_t a2, char a3)
{
  result = sub_145B6C(a1, a2, a3, *v3, &qword_9464C0, &unk_786EC0, &unk_944DA0);
  *v3 = result;
  return result;
}

char *sub_143D3C(char *a1, int64_t a2, char a3)
{
  result = sub_144DA0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_143D5C(size_t a1, int64_t a2, char a3)
{
  result = sub_145990(a1, a2, a3, *v3, &qword_941C28, &unk_786F60, &type metadata accessor for DebugMetricsEvent);
  *v3 = result;
  return result;
}

char *sub_143DA0(char *a1, int64_t a2, char a3)
{
  result = sub_144EAC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_143DC0(size_t a1, int64_t a2, char a3)
{
  result = sub_145990(a1, a2, a3, *v3, &qword_946468, &unk_786E38, &type metadata accessor for SponsoredSearchAdvert);
  *v3 = result;
  return result;
}

char *sub_143E04(char *a1, int64_t a2, char a3)
{
  result = sub_144FC8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_143E24(char *a1, int64_t a2, char a3)
{
  result = sub_1450E8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

double *sub_143E44(double *a1, int64_t a2, char a3)
{
  result = sub_1451EC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_143E64(size_t a1, int64_t a2, char a3)
{
  result = sub_145990(a1, a2, a3, *v3, &unk_941A18, &unk_78A3D0, &type metadata accessor for IndexPath);
  *v3 = result;
  return result;
}

double *sub_143EA8(double *a1, int64_t a2, char a3)
{
  result = sub_145334(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

double *sub_143EC8(double *a1, int64_t a2, char a3)
{
  result = sub_145468(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_143EE8(void *a1, int64_t a2, char a3)
{
  result = sub_145B6C(a1, a2, a3, *v3, &qword_941A70, &unk_781090, &unk_941890);
  *v3 = result;
  return result;
}

double *sub_143F28(double *a1, int64_t a2, char a3)
{
  result = sub_145588(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_143F48(size_t a1, int64_t a2, char a3)
{
  result = sub_145688(a1, a2, a3, *v3, &qword_946520, &unk_786F58, &qword_946518);
  *v3 = result;
  return result;
}

double *sub_143F88(double *a1, int64_t a2, char a3)
{
  result = sub_145870(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_143FA8(size_t a1, int64_t a2, char a3)
{
  result = sub_145990(a1, a2, a3, *v3, &qword_9464C8, &unk_786ED0, &type metadata accessor for PageFacets.Facet.Option);
  *v3 = result;
  return result;
}

void *sub_143FEC(void *a1, int64_t a2, char a3)
{
  result = sub_145B6C(a1, a2, a3, *v3, &qword_941AF8, &unk_781118, &qword_941B00);
  *v3 = result;
  return result;
}

char *sub_14402C(char *result, int64_t a2, char a3, char *a4)
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
    sub_BD88(&qword_941C10);
    v10 = swift_allocObject();
    v11 = j__malloc_size_0(v10);
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
    v10 = _swiftEmptyArrayStorage;
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

void *sub_14413C(void *result, int64_t a2, char a3, void *a4)
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
    sub_BD88(&qword_946458);
    v10 = swift_allocObject();
    v11 = j__malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_BD88(&qword_946460);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_144270(char *result, int64_t a2, char a3, char *a4)
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
    sub_BD88(&qword_9464A0);
    v10 = swift_allocObject();
    v11 = j__malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

double *sub_144390(double *result, int64_t a2, char a3, double *a4)
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
    sub_BD88(&qword_9464A8);
    v10 = swift_allocObject();
    v11 = j__malloc_size_0(v10);
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

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0.0;
  }

  else
  {
    sub_BD88(&unk_954000);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1444C4(void *result, int64_t a2, char a3, void *a4)
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
    sub_BD88(&qword_946480);
    v10 = swift_allocObject();
    v11 = j__malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_BD88(&qword_946488);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1445F8(char *result, int64_t a2, char a3, char *a4)
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
    sub_BD88(&qword_9464B0);
    v10 = swift_allocObject();
    v11 = j__malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[72 * v8])
    {
      memmove(v12, v13, 72 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_144720(char *result, int64_t a2, char a3, char *a4)
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
    sub_BD88(&qword_941A00);
    v10 = swift_allocObject();
    v11 = j__malloc_size_0(v10);
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

void *sub_144824(void *result, int64_t a2, char a3, void *a4)
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
    sub_BD88(&qword_946448);
    v10 = swift_allocObject();
    v11 = j__malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_BD88(&qword_946450);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_144958(char *result, int64_t a2, char a3, char *a4)
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
    sub_BD88(&qword_9419F0);
    v10 = swift_allocObject();
    v11 = j__malloc_size_0(v10);
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

void *sub_144A5C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
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
    sub_BD88(a5);
    v14 = swift_allocObject();
    v15 = j__malloc_size_0(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 25;
    }

    v14[2] = v12;
    v14[3] = 2 * (v16 >> 3);
  }

  else
  {
    v14 = _swiftEmptyArrayStorage;
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 8 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    sub_BD88(a7);
    swift_arrayInitWithCopy();
  }

  return v14;
}

char *sub_144B90(char *result, int64_t a2, char a3, char *a4)
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
    sub_BD88(&qword_941AF0);
    v10 = swift_allocObject();
    v11 = j__malloc_size_0(v10);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_144C94(char *result, int64_t a2, char a3, char *a4)
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
    sub_BD88(&qword_941A88);
    v10 = swift_allocObject();
    v11 = j__malloc_size_0(v10);
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