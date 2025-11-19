uint64_t sub_1B20C4(void *a1)
{
  v1 = [a1 traitCollection];
  type metadata accessor for MetadataRibbonIconWithLabelView.Configuration(0);
  v2.super.isa = v1;
  v3.super.isa = sub_7604E0(v2).super.isa;
  v4 = [(objc_class *)v1 preferredContentSizeCategory];
  v5 = sub_769B20();

  if (v5)
  {
    v6 = 3;
  }

  else
  {
    v6 = 1;
  }

  v7 = [objc_opt_self() configurationWithFont:v3.super.isa scale:v6];

  return sub_759120();
}

void sub_1B21B0()
{
  sub_763DD0();
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider31MetadataRibbonIconWithLabelView_artwork) = 0;
  v1 = v0 + OBJC_IVAR____TtC18ASMessagesProvider31MetadataRibbonIconWithLabelView_id;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0;
  v2 = OBJC_IVAR____TtC18ASMessagesProvider31MetadataRibbonIconWithLabelView_itemType;
  v3 = sub_75FC90();
  (*(*(v3 - 8) + 56))(v0 + v2, 1, 1, v3);
  v4 = v0 + OBJC_IVAR____TtC18ASMessagesProvider31MetadataRibbonIconWithLabelView_labelMaxWidth;
  *v4 = 0;
  *(v4 + 8) = 1;
  v5 = v0 + OBJC_IVAR____TtC18ASMessagesProvider31MetadataRibbonIconWithLabelView_truncationLegibilityThreshold;
  *v5 = 0;
  *(v5 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider31MetadataRibbonIconWithLabelView_allowsTruncation) = 2;
  v6 = (v0 + OBJC_IVAR____TtC18ASMessagesProvider31MetadataRibbonIconWithLabelView_artworkSize);
  *v6 = 0;
  v6[1] = 0;
  v7 = OBJC_IVAR____TtC18ASMessagesProvider31MetadataRibbonIconWithLabelView_configuration;
  if (qword_93C600 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for MetadataRibbonIconWithLabelView.Configuration(0);
  v9 = sub_BE38(v8, qword_99B6F8);
  sub_1B232C(v9, v0 + v7);
  sub_76A840();
  __break(1u);
}

uint64_t sub_1B232C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MetadataRibbonIconWithLabelView.Configuration(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B2390(uint64_t a1)
{
  v2 = type metadata accessor for MetadataRibbonIconWithLabelView.Configuration(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B23EC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1B2448()
{
  result = qword_948670;
  if (!qword_948670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_948670);
  }

  return result;
}

uint64_t sub_1B249C(uint64_t a1, uint64_t a2)
{
  v4 = sub_7652D0();
  __chkstk_darwin(v4 - 8);
  v5 = sub_BD88(&unk_948720);
  __chkstk_darwin(v5 - 8);
  v7 = v32 - v6;
  v8 = sub_75DC30();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_766690();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_134D8(a1, v37);
  sub_BD88(&unk_93F520);
  sub_75B1B0();
  result = swift_dynamicCast();
  if (result)
  {
    v34 = a2;
    v17 = v36;
    v18 = sub_75B180();
    if (v18)
    {
      v33 = v13;
      v19 = *(*(*(v35 + OBJC_IVAR____TtC18ASMessagesProvider18UpsellBreakoutView_mediaViewContainer) + OBJC_IVAR____TtC18ASMessagesProvider9MediaView_contentContainer) + OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_contents);
      if (v19 && (v32[4] = v18, v20 = type metadata accessor for VideoView(), (v21 = swift_dynamicCastClass()) != 0))
      {
        v32[2] = v20;
        v32[3] = v17;
        v22 = qword_99A200;
        v23 = v21;
        swift_beginAccess();
        v24 = *(v9 + 16);
        v32[1] = v23;
        v24(v11, v23 + v22, v8);
        v25 = v19;
        sub_75DB80();
        (*(v9 + 8))(v11, v8);
        v26 = v33;
        if ((*(v33 + 48))(v7, 1, v12) != 1)
        {
          (*(v26 + 32))(v15, v7, v12);
          sub_766600();
          sub_764BC0();
          sub_765330();

          sub_1B5380(&unk_93F530, type metadata accessor for VideoView);
          sub_75A050();

          return (*(v26 + 8))(v15, v12);
        }

        sub_10A2C(v7, &unk_948720);
      }

      else
      {
      }
    }

    if (sub_75B190())
    {
      sub_765330();
      v27 = OBJC_IVAR____TtC18ASMessagesProvider18UpsellBreakoutView_artworkView;
      v28 = v35;
      v29 = *(v35 + OBJC_IVAR____TtC18ASMessagesProvider18UpsellBreakoutView_artworkView);
      sub_7652E0();
      sub_7591B0();
      [v29 setContentMode:sub_765140()];
      sub_75DEF0();
      sub_7591F0();
      if (!sub_7651A0())
      {
        sub_BE70(0, &qword_93E540);
        sub_76A030();
      }

      sub_759070();

      v30 = *(v28 + v27);
      sub_759210();
      sub_1B5380(&qword_945810, &type metadata accessor for ArtworkView);
      v31 = v30;
      sub_75A050();
    }
  }

  return result;
}

id sub_1B2A9C(uint64_t a1, char *a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v130 = a3;
  v131 = a1;
  v128 = a2;
  v7 = sub_75B220();
  v126 = *(v7 - 8);
  v127 = v7;
  __chkstk_darwin(v7);
  v124 = &v102 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v125 = &v102 - v10;
  v11 = sub_BD88(&unk_948710);
  __chkstk_darwin(v11 - 8);
  v121 = &v102 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v120 = &v102 - v14;
  v15 = sub_BD88(&unk_93FD30);
  __chkstk_darwin(v15 - 8);
  v119 = &v102 - v16;
  v17 = sub_75A6B0();
  __chkstk_darwin(v17 - 8);
  v118 = &v102 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v117 = &v102 - v20;
  v21 = sub_BD88(&unk_948720);
  __chkstk_darwin(v21 - 8);
  v116 = &v102 - v22;
  v114 = sub_75A6E0();
  v113 = *(v114 - 8);
  __chkstk_darwin(v114);
  v115 = &v102 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_75DC30();
  v122 = *(v24 - 8);
  v123 = v24;
  __chkstk_darwin(v24);
  v129 = &v102 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_BD88(&unk_944DF0);
  __chkstk_darwin(v26 - 8);
  v112 = &v102 - v27;
  v111 = sub_7623A0();
  v106 = *(v111 - 8);
  __chkstk_darwin(v111);
  v108 = &v102 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = sub_BD88(&unk_9457F0);
  v109 = *(v110 - 8);
  __chkstk_darwin(v110);
  v107 = &v102 - v29;
  v30 = sub_BD88(&unk_944E00);
  __chkstk_darwin(v30 - 8);
  v105 = &v102 - v31;
  v104 = sub_763750();
  v102 = *(v104 - 8);
  __chkstk_darwin(v104);
  v33 = &v102 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_BD88(&unk_948730);
  __chkstk_darwin(v34 - 8);
  v103 = &v102 - v35;
  v36 = sub_75B130();
  v37 = *(v36 - 8);
  __chkstk_darwin(v36);
  v39 = &v102 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_75FA00();
  v41 = *(v40 - 8);
  *&v42 = __chkstk_darwin(v40).n128_u64[0];
  v44 = &v102 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = [a4 snapshotPageTraitEnvironment];
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider18UpsellBreakoutView_pageTraits] = v45;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  [v5 setNeedsLayout];
  swift_unknownObjectRelease();
  sub_75F9A0();
  sub_1B5380(&qword_94FA60, &type metadata accessor for ComponentLayoutOptions);
  v46 = sub_76A520();
  (*(v41 + 8))(v44, v40);
  sub_75B140();
  v47 = sub_75B120();
  (*(v37 + 8))(v39, v36);
  v48 = v5[OBJC_IVAR____TtC18ASMessagesProvider18UpsellBreakoutView_isBackgroundEffectViewHidden];
  v5[OBJC_IVAR____TtC18ASMessagesProvider18UpsellBreakoutView_isBackgroundEffectViewHidden] = ((v46 | v47) & 1) == 0;
  if (((v46 | v47) & 1) == v48)
  {
    if ((v46 | v47))
    {
      [v5 insertSubview:*&v5[OBJC_IVAR____TtC18ASMessagesProvider18UpsellBreakoutView_backgroundEffectView] aboveSubview:*&v5[OBJC_IVAR____TtC18ASMessagesProvider18UpsellBreakoutView_mediaViewContainer]];
    }

    else
    {
      [*&v5[OBJC_IVAR____TtC18ASMessagesProvider18UpsellBreakoutView_backgroundEffectView] removeFromSuperview];
    }
  }

  v49 = *&v5[OBJC_IVAR____TtC18ASMessagesProvider18UpsellBreakoutView_backgroundEffectView];
  v50 = v49[OBJC_IVAR____TtC18ASMessagesProvider28BreakoutBackgroundEffectView_wantsTopEffect];
  v49[OBJC_IVAR____TtC18ASMessagesProvider28BreakoutBackgroundEffectView_wantsTopEffect] = v46 & 1;
  if ((v46 & 1) != v50)
  {
    v51 = 0.0;
    if (v46)
    {
      *&v51 = 1.0;
    }

    [*&v49[OBJC_IVAR____TtC18ASMessagesProvider28BreakoutBackgroundEffectView_topGradient] setOpacity:v51];
    [v49 setNeedsDisplay];
  }

  v52 = sub_75B150();
  v53 = v130;
  if (v52)
  {
    v54 = v52;
    v55 = sub_75B170();
    if (v55)
    {
      v56 = v55;
      v57 = *&v5[OBJC_IVAR____TtC18ASMessagesProvider18UpsellBreakoutView_offerButton];
      v58 = v102;
      v59 = v104;
      (*(v102 + 104))(v33, enum case for OfferButtonPresenterViewAlignment.center(_:), v104);
      (*(v58 + 56))(v105, 1, 1, v59);
      sub_1B5380(&unk_944E10, &type metadata accessor for OfferButtonPresenterViewAlignment);

      v60 = v103;
      sub_760940();
      v61 = sub_BD88(&unk_948740);
      (*(*(v61 - 8) + 56))(v60, 0, 1, v61);
      v62 = v106;
      v63 = v111;
      (*(v106 + 104))(v108, enum case for OfferButtonSubtitlePosition.below(_:), v111);
      (*(v62 + 56))(v112, 1, 1, v63);
      sub_1B5380(&qword_944E20, &type metadata accessor for OfferButtonSubtitlePosition);
      v64 = v107;
      sub_760940();
      sub_1DFEBC(v56, v54, 0, v60, v64, v53, 0, 0);

      (*(v109 + 8))(v64, v110);
      sub_10A2C(v60, &unk_948730);
      [v57 setHidden:0];

      goto LABEL_14;
    }
  }

  [*&v5[OBJC_IVAR____TtC18ASMessagesProvider18UpsellBreakoutView_offerButton] setHidden:1];
LABEL_14:
  sub_1B3BE0(v131, v53);
  if (sub_75B180())
  {
    (*(v113 + 104))(v115, enum case for VideoFillMode.scaleAspectFill(_:), v114);
    sub_764BC0();
    sub_765260();
    v65 = v116;
    sub_7666A0();

    v66 = sub_766690();
    (*(*(v66 - 8) + 56))(v65, 0, 1, v66);
    sub_764B60();
    sub_764BA0();
    sub_764B70();
    sub_764B50();
    sub_764BB0();
    sub_75DC10();
    sub_75C360();
    sub_768880();
    sub_764B40();
    v67 = v119;
    sub_764BD0();
    v68 = sub_7570A0();
    (*(*(v68 - 8) + 56))(v67, 0, 1, v68);
    v69 = v120;
    sub_764B90();
    v70 = v121;
    sub_764B80();
    v71 = type metadata accessor for VideoView();
    sub_1B5380(&qword_93F500, type metadata accessor for VideoView);
    v130 = v71;
    v72 = sub_75C340();
    sub_10A2C(v70, &unk_948710);
    sub_10A2C(v69, &unk_948710);
    sub_10A2C(v67, &unk_93FD30);
    sub_10A2C(&v132, &unk_9443A0);
    v73 = *&v5[OBJC_IVAR____TtC18ASMessagesProvider18UpsellBreakoutView_mediaViewContainer];
    v74 = OBJC_IVAR____TtC18ASMessagesProvider9MediaView_contentContainer;
    v75 = *(v73 + OBJC_IVAR____TtC18ASMessagesProvider9MediaView_contentContainer);
    if (v72)
    {
      v76 = v72;
      v77 = [v76 superview];
      if (v77)
      {
        v78 = v77;
        sub_BE70(0, &qword_93E550);
        v79 = v75;
        v128 = v5;
        v80 = v79;
        v81 = sub_76A1C0();

        v5 = v128;
        if (v81)
        {
          [v76 removeFromSuperview];
        }
      }

      else
      {
      }
    }

    v86 = *&v75[OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_contents];
    *&v75[OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_contents] = v72;
    v87 = v72;
    sub_1F92A8(v86);

    if (*(*(v73 + v74) + OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_contents))
    {
      v88 = swift_dynamicCastClass();
      if (v88)
      {
        *(v88 + qword_940578 + 8) = &off_891CF8;
        swift_unknownObjectWeakAssign();
      }
    }

    (*(v122 + 8))(v129, v123);
  }

  else if (sub_75B190())
  {

    v82 = *&v5[OBJC_IVAR____TtC18ASMessagesProvider18UpsellBreakoutView_artworkView];
    v83 = *(*&v5[OBJC_IVAR____TtC18ASMessagesProvider18UpsellBreakoutView_mediaViewContainer] + OBJC_IVAR____TtC18ASMessagesProvider9MediaView_contentContainer);
    v84 = *(v83 + OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_contents);
    *(v83 + OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_contents) = v82;
    v85 = v82;
    sub_1F92A8(v84);

    sub_1F7F5C();
  }

  sub_75B160();
  if (v89)
  {
    v90 = *&v5[OBJC_IVAR____TtC18ASMessagesProvider18UpsellBreakoutView_buttonDetailsView];
    v91 = sub_769210();

    [v90 setText:v91];

    sub_75B1A0();
    v92 = v125;
    sub_75B230();

    v93 = OBJC_IVAR____TtC18ASMessagesProvider18UpsellBreakoutView_buttonDetailsTextAlignment;
    swift_beginAccess();
    v95 = v126;
    v94 = v127;
    (*(v126 + 24))(&v5[v93], v92, v127);
    swift_endAccess();
    v96 = v124;
    (*(v95 + 16))(v124, &v5[v93], v94);
    v97 = sub_75B210();
    v98 = *(v95 + 8);
    v98(v96, v94);
    [v90 setTextAlignment:v97];
    v98(v92, v94);
  }

  v99 = *&v5[OBJC_IVAR____TtC18ASMessagesProvider18UpsellBreakoutView_tapGestureRecognizer];
  v100 = sub_75B180();
  if (v100)
  {
  }

  [v99 setEnabled:v100 != 0];
  return [v5 setNeedsLayout];
}

uint64_t sub_1B3BE0(uint64_t a1, uint64_t a2)
{
  v73 = a2;
  v3 = sub_BD88(&qword_944EA0);
  __chkstk_darwin(v3 - 8);
  v72 = &v61 - v4;
  v5 = sub_BD88(&unk_95CF90);
  v70 = *(v5 - 8);
  v71 = v5;
  __chkstk_darwin(v5);
  v68 = &v61 - v6;
  v66 = type metadata accessor for BreakoutDetailsView.Config(0);
  __chkstk_darwin(v66);
  v65 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v64 = &v61 - v9;
  __chkstk_darwin(v10);
  v67 = (&v61 - v11);
  __chkstk_darwin(v12);
  v14 = (&v61 - v13);
  v15 = sub_75B240();
  v62 = *(v15 - 8);
  v63 = v15;
  __chkstk_darwin(v15);
  v61 = &v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_75B130();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v61 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v61 - v22;
  __chkstk_darwin(v24);
  v26 = &v61 - v25;
  __chkstk_darwin(v27);
  v29 = &v61 - v28;
  sub_75B140();
  v30 = sub_75B0F0();
  v31 = *(v18 + 8);
  v31(v29, v17);
  v69 = a1;
  if (!v30)
  {
    v30 = [objc_opt_self() clearColor];
  }

  v32 = *(v74 + OBJC_IVAR____TtC18ASMessagesProvider18UpsellBreakoutView_mediaViewContainer);
  v33 = type metadata accessor for MediaView();
  v75.receiver = v32;
  v75.super_class = v33;
  objc_msgSendSuper2(&v75, "setBackgroundColor:", v30);
  [*(*&v32[OBJC_IVAR____TtC18ASMessagesProvider9MediaView_contentContainer] + OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_contents) setBackgroundColor:v30];
  v34 = *&v32[OBJC_IVAR____TtC18ASMessagesProvider9MediaView_reflectionView];
  if (v34)
  {
    v35 = v34;
    [v35 setBackgroundColor:v30];
  }

  v36 = *(v74 + OBJC_IVAR____TtC18ASMessagesProvider18UpsellBreakoutView_backgroundEffectView);
  sub_75B140();
  v37 = sub_75B120();
  v31(v26, v17);
  v38 = v36[OBJC_IVAR____TtC18ASMessagesProvider28BreakoutBackgroundEffectView_wantsBottomEffect];
  v36[OBJC_IVAR____TtC18ASMessagesProvider28BreakoutBackgroundEffectView_wantsBottomEffect] = v37 & 1;
  if ((v37 & 1) != v38)
  {
    v39 = 0.0;
    if (v37)
    {
      v39 = 1.0;
    }

    [*&v36[OBJC_IVAR____TtC18ASMessagesProvider28BreakoutBackgroundEffectView_blurView] setAlpha:v39];
    [v36 setNeedsDisplay];
  }

  v40 = *(v74 + OBJC_IVAR____TtC18ASMessagesProvider18UpsellBreakoutView_buttonDetailsView);
  sub_75B140();
  v41 = sub_75B100();
  v31(v23, v17);
  if (!v41)
  {
    sub_75B1A0();
    v42 = v61;
    sub_75B250();

    v41 = sub_655B6C();
    (*(v62 + 8))(v42, v63);
  }

  v43 = v66;
  [v40 setTextColor:v41];

  if (qword_93CA68 != -1)
  {
    swift_once();
  }

  v44 = sub_BE38(v43, qword_99CA60);
  sub_FCD60(v44, v14);
  sub_75B140();
  v45 = sub_75B0D0();
  v31(v20, v17);

  *v14 = v45;
  sub_75B140();
  v46 = sub_75B0E0();
  v31(v20, v17);

  v14[1] = v46;
  sub_75B140();
  v47 = sub_75B100();
  v31(v20, v17);

  v14[2] = v47;
  sub_75B140();
  v48 = sub_75B110();
  v31(v20, v17);

  v14[3] = v48;
  if (qword_93CA60 != -1)
  {
    swift_once();
  }

  v49 = sub_BE38(v43, qword_99CA48);
  v50 = v67;
  sub_FCD60(v49, v67);
  sub_75B140();
  v51 = sub_75B0D0();
  v31(v20, v17);

  *v50 = v51;
  sub_75B140();
  v52 = sub_75B0E0();
  v31(v20, v17);

  v50[1] = v52;
  sub_75B140();
  v53 = sub_75B100();
  v31(v20, v17);

  v50[2] = v53;
  sub_75B140();
  v54 = sub_75B110();
  v31(v20, v17);

  v50[3] = v54;
  sub_FCD60(v14, v64);
  sub_FCD60(v50, v65);
  sub_BD88(&qword_93FBE0);
  v55 = v68;
  sub_7592D0();
  v56 = sub_75B1A0();
  v58 = v70;
  v57 = v71;
  v59 = v72;
  (*(v70 + 16))(v72, v55, v71);
  (*(v58 + 56))(v59, 0, 1, v57);
  sub_5F8FA0(v56, v59, v73);

  sub_10A2C(v59, &qword_944EA0);
  (*(v58 + 8))(v55, v57);
  sub_FCDC4(v50);
  return sub_FCDC4(v14);
}

id sub_1B4598()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UpsellBreakoutSizingTraitEnvironment();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_1B46D0(void *a1, uint64_t a2)
{
  v5 = [a1 snapshotPageTraitEnvironment];
  *&v2[OBJC_IVAR____TtC18ASMessagesProviderP33_D89785D43D474E56A3F9554F0AC4E17F36UpsellBreakoutSizingTraitEnvironment_pageTraits] = v5;
  v6 = [a1 traitCollection];
  v7 = [v6 preferredContentSizeCategory];

  LOBYTE(v6) = sub_769B30();
  if (v6)
  {
    sub_BD88(&unk_93F5C0);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_77B6C0;
    *(v8 + 32) = [a1 traitCollection];
    v9 = objc_opt_self();
    *(v8 + 40) = [v9 traitCollectionWithPreferredContentSizeCategory:a2];
    sub_BE70(0, &qword_941EC8);
    isa = sub_769450().super.isa;

    v11 = [v9 traitCollectionWithTraitsFromCollections:isa];
  }

  else
  {
    v11 = [a1 traitCollection];
  }

  *&v2[OBJC_IVAR____TtC18ASMessagesProviderP33_D89785D43D474E56A3F9554F0AC4E17F36UpsellBreakoutSizingTraitEnvironment_traitCollection] = v11;
  v13.receiver = v2;
  v13.super_class = type metadata accessor for UpsellBreakoutSizingTraitEnvironment();
  return objc_msgSendSuper2(&v13, "init");
}

double sub_1B4888(double a1)
{
  v2 = sub_75EEC0();
  __chkstk_darwin(v2 - 8);
  v48 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_75EEE0();
  v50 = *(v4 - 8);
  v51 = v4;
  __chkstk_darwin(v4);
  v49 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_762D10();
  v46 = *(v6 - 8);
  v47 = v6;
  __chkstk_darwin(v6);
  v45 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_76A920();
  v44 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for BreakoutDetailsView.Config(0);
  __chkstk_darwin(v11 - 8);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = objc_allocWithZone(type metadata accessor for UpsellBreakoutSizingTraitEnvironment());
  v15 = UIContentSizeCategoryExtraExtraExtraLarge;
  v16 = swift_unknownObjectRetain();
  v17 = sub_1B46D0(v16, v15);
  swift_unknownObjectRelease();

  v18 = qword_93D120;
  v52 = *&v17[OBJC_IVAR____TtC18ASMessagesProviderP33_D89785D43D474E56A3F9554F0AC4E17F36UpsellBreakoutSizingTraitEnvironment_traitCollection];
  if (v18 != -1)
  {
    swift_once();
  }

  v19 = sub_BD88(&unk_95CF90);
  sub_BE38(v19, qword_99DB38);
  v57[0] = v17;
  v20 = v17;
  sub_7592B0();

  type metadata accessor for BreakoutDetailsView(0);
  v21 = sub_75B1A0();
  v22 = v20;
  sub_5F8088(v21, v13, v22, v57);

  sub_16C320(v57, &v54);
  v23 = swift_allocObject();
  sub_16C3BC(&v54, (v23 + 16));
  v24 = sub_7670D0();
  swift_allocObject();
  v25 = sub_767090();
  if (sub_75B150() && (, sub_75B170()))
  {
    v43 = v13;
    v26 = v8;

    if (qword_93D118 != -1)
    {
      swift_once();
    }

    v27 = sub_766CA0();
    sub_BE38(v27, qword_99DB20);
    v28 = v22;
    sub_766470();
    sub_766700();

    (*(v44 + 8))(v10, v26);
    swift_allocObject();
    v29 = sub_7670B0();

    v13 = v43;
  }

  else
  {
    v29 = 0;
  }

  sub_75B160();
  if (v30)
  {
    sub_BE70(0, &qword_93F900);
    if (qword_93DB08 != -1)
    {
      swift_once();
    }

    v31 = sub_7666D0();
    sub_BE38(v31, qword_99F910);
    sub_769E10();
    v32 = sub_7653B0();
    *(&v55 + 1) = v32;
    v56 = sub_1B5380(&qword_93F9B0, &type metadata accessor for Feature);
    v33 = sub_B1B4(&v54);
    (*(*(v32 - 8) + 104))(v33, enum case for Feature.measurement_with_labelplaceholder(_:), v32);
    sub_765C30();
    sub_BEB8(&v54);
    v34 = v45;
    sub_762D00();
    sub_762CE0();
    (*(v46 + 8))(v34, v47);
  }

  else
  {
    v56 = 0;
    v54 = 0u;
    v55 = 0u;
  }

  v35 = v22;
  sub_440FB8(v35, v48, a1);

  swift_allocObject();
  v36 = sub_7670B0();
  v37 = &protocol witness table for LayoutViewPlaceholder;
  v53[18] = v24;
  v53[19] = &protocol witness table for LayoutViewPlaceholder;
  v53[14] = &protocol witness table for LayoutViewPlaceholder;
  v53[15] = v36;
  v53[13] = v24;
  v53[10] = v25;
  if (!v29)
  {
    v24 = 0;
    v37 = 0;
    v53[6] = 0;
    v53[7] = 0;
  }

  v53[5] = v29;
  v53[8] = v24;
  v53[9] = v37;
  sub_E02D8(&v54, v53);

  v38 = v49;
  sub_75EED0();
  v39 = v35;
  sub_75EE90();
  v41 = v40;

  (*(v50 + 8))(v38, v51);
  sub_10A2C(&v54, &qword_9417D0);
  sub_BEB8(v57);
  sub_FCDC4(v13);
  return v41;
}

uint64_t sub_1B5024()
{
  sub_BEB8(v0 + 16);

  return _swift_deallocObject(v0, 64, 7);
}

id sub_1B505C(double a1, uint64_t a2, void *a3)
{
  v5 = sub_75EEC0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_440FB8(a3, v8, a1);
  sub_75EEE0();
  sub_1B5380(&qword_948750, &type metadata accessor for UpsellBreakoutLayout);
  sub_766ED0();
  v10 = v9;
  (*(v6 + 8))(v8, v5);
  v11 = objc_opt_self();
  v12 = [v11 fractionalWidthDimension:1.0];
  v13 = [v11 absoluteDimension:v10];
  v14 = objc_opt_self();
  v15 = [v14 sizeWithWidthDimension:v12 heightDimension:v13];

  v16 = [objc_opt_self() itemWithLayoutSize:v15];
  v17 = objc_opt_self();
  v18 = [v11 fractionalWidthDimension:1.0];
  v19 = [v11 absoluteDimension:v10];
  v20 = [v14 sizeWithWidthDimension:v18 heightDimension:v19];

  sub_BD88(&unk_93F5C0);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_77D9F0;
  *(v21 + 32) = v16;
  sub_BE70(0, &qword_957F90);
  v22 = v16;
  isa = sub_769450().super.isa;

  v24 = [v17 horizontalGroupWithLayoutSize:v20 subitems:isa];

  return v24;
}

uint64_t sub_1B5380(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B53C8(void *a1)
{
  if (*v1 == *a1)
  {
    return sub_76A6C0();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B5454()
{
  sub_1EB60(v0 + 16);

  return swift_deallocClassInstance();
}

Swift::Int sub_1B54B0()
{
  v1 = *v0;
  sub_76AA30();
  (*(*v1 + 104))(v3);
  return sub_76AA80();
}

Swift::Int sub_1B5558()
{
  sub_76AA30();
  (*(**v0 + 104))(v2);
  return sub_76AA80();
}

unint64_t sub_1B5608()
{
  result = qword_948810;
  if (!qword_948810)
  {
    type metadata accessor for DebugSetting();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_948810);
  }

  return result;
}

char *sub_1B565C(uint64_t a1, uint64_t a2)
{
  *(v2 + qword_948818) = 0;
  v5 = qword_948820;
  type metadata accessor for ProductReviewFlowPreviewingCollectionElementsObserver();
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v2 + v5) = v6;

  v7 = sub_46BDD4(a1, a2);
  result = [v7 collectionView];
  if (result)
  {
    v9 = result;
    sub_BD88(&qword_9477F0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_77B6D0;
    *(v10 + 32) = sub_767B80();
    *(v10 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
    sub_BE70(0, &unk_94A790);
    sub_769F40();
    swift_unknownObjectRelease();

    v11 = sub_7629C0();
    if (v11)
    {
      v12 = v11;
      v13 = [v7 navigationItem];
      sub_BE70(0, &qword_947490);

      v14 = sub_764C60();
      v16 = v15;
      v21 = 0u;
      v22 = 0u;

      v23.is_nil = sub_1B81A8(v12, a1, 0, &v21);
      v26.value._countAndFlagsBits = v14;
      v26.value._object = v16;
      v23.value.super.isa = 0;
      v24.value.super.super.isa = 0;
      isa = sub_769840(v26, v23, v24, v25).super.super.isa;
      [v13 setRightBarButtonItem:{isa, v21, v22}];
    }

    v18 = v7;
    sub_7629E0();
    v19 = sub_769210();

    [v18 setTitle:v19];

    v18[OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_prefersLargeTitle] = 1;
    v20 = [v18 navigationItem];
    [v20 setLargeTitleDisplayMode:1];

    return v18;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B591C(char a1)
{
  ObjectType = swift_getObjectType();
  v4 = sub_BD88(&qword_948DE0);
  __chkstk_darwin(v4 - 8);
  v6 = &v20 - v5;
  v7 = sub_75C840();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_757640();
  v12 = *(v11 - 8);
  *&v13 = __chkstk_darwin(v11).n128_u64[0];
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20.receiver = v1;
  v20.super_class = ObjectType;
  result = objc_msgSendSuper2(&v20, "viewWillAppear:", a1 & 1, v13);
  v17 = qword_948818;
  if ((*(v1 + qword_948818) & 1) == 0)
  {
    sub_1B5BD4(v6);
    v18 = sub_BD88(&qword_948DE8);
    if ((*(*(v18 - 8) + 48))(v6, 1, v18) == 1)
    {
      result = sub_10A2C(v6, &qword_948DE0);
    }

    else
    {
      v19 = *(v18 + 48);
      (*(v12 + 32))(v15, v6, v11);
      (*(v8 + 32))(v10, &v6[v19], v7);
      sub_1B6980(v15);
      (*(v8 + 8))(v10, v7);
      result = (*(v12 + 8))(v15, v11);
    }
  }

  *(v1 + v17) = 1;
  return result;
}

uint64_t sub_1B5BD4@<X0>(uint64_t a1@<X8>)
{
  v71 = a1;
  v91 = sub_75A430();
  v64 = *(v91 - 8);
  __chkstk_darwin(v91);
  v74 = &v61 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_75C820();
  v82 = *(v88 - 8);
  __chkstk_darwin(v88);
  v86 = &v61 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_75C840();
  v66 = *(v89 - 8);
  __chkstk_darwin(v89);
  v5 = &v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_757640();
  v65 = *(v87 - 8);
  __chkstk_darwin(v87);
  v77 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_BD88(&unk_959540);
  v73 = *(v76 - 8);
  __chkstk_darwin(v76);
  v75 = &v61 - v7;
  v93 = sub_BD88(&qword_948DF8);
  v83 = *(v93 - 8);
  __chkstk_darwin(v93);
  v72 = (&v61 - v8);
  v9 = sub_BD88(&qword_948E00);
  __chkstk_darwin(v9 - 8);
  v11 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v61 - v13;
  v92 = sub_BD88(&unk_94F1F0);
  v15 = *(v92 - 8);
  __chkstk_darwin(v92);
  v17 = &v61 - v16;
  v18 = sub_BD88(&unk_957F70);
  __chkstk_darwin(v18 - 8);
  v20 = &v61 - v19;
  v21 = sub_75DAB0();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v90 = &v61 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = v1;
  sub_7629D0();
  if (!*(&v95 + 1))
  {
    sub_10A2C(&v94, &unk_9443A0);
    goto LABEL_24;
  }

  v97[0] = v94;
  v97[1] = v95;
  v98 = v96;
  sub_1B7A9C(v20);
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    sub_1EB60(v97);
    sub_10A2C(v20, &unk_957F70);
    goto LABEL_24;
  }

  v25 = v90;
  (*(v22 + 32))(v90, v20, v21);
  v26 = qword_9593C8;
  swift_beginAccess();
  v27 = *(v24 + v26);
  if (!v27)
  {
    (*(v22 + 8))(v25, v21);
    sub_1EB60(v97);
    swift_endAccess();
    goto LABEL_24;
  }

  v61 = v22;
  v62 = v21;
  swift_endAccess();
  v28 = v27;
  v29 = v25;
  sub_75DAA0();
  v30 = sub_762D60();

  result = (*(v15 + 8))(v17, v92);
  if (!v30)
  {
    (*(v61 + 8))(v29, v62);
    sub_1EB60(v97);
LABEL_24:
    v57 = v71;
    v54 = sub_BD88(&qword_948DE8);
    v55 = *(*(v54 - 8) + 56);
    v56 = v57;
    return v55(v56, 1, 1, v54);
  }

  v85 = v14;
  v92 = v5;
  v32 = 0;
  v68 = v30;
  v33 = *(v30 + 16);
  v67 = v73 + 16;
  v34 = v83;
  v83 += 6;
  v84 = (v34 + 7);
  v81 = (v73 + 32);
  v80 = v82 + 1;
  v70 = (v64 + 11);
  v69 = enum case for ProductReview.ReviewSource.user(_:);
  v79 = (v66 + 8);
  v78 = (v65 + 8);
  v82 = (v73 + 8);
  v63 = (v64 + 1);
  v64 += 12;
  v35 = v77;
  v36 = v76;
  v37 = v75;
LABEL_9:
  v38 = v93;
  if (v32 == v33)
  {
LABEL_10:
    v39 = 1;
    v32 = v33;
    goto LABEL_14;
  }

  while ((v32 & 0x8000000000000000) == 0)
  {
    if (v32 >= *(v68 + 16))
    {
      goto LABEL_29;
    }

    v40 = v73;
    v41 = v68 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v32;
    v42 = *(v38 + 48);
    v43 = v72;
    *v72 = v32;
    (*(v40 + 16))(&v43[v42], v41, v36);
    v44 = v43;
    v38 = v93;
    sub_109C4(v44, v11, &qword_948DF8);
    v39 = 0;
    ++v32;
LABEL_14:
    (*v84)(v11, v39, 1, v38);
    v45 = v85;
    sub_109C4(v11, v85, &qword_948E00);
    if ((*v83)(v45, 1, v38) == 1)
    {

      (*(v61 + 8))(v90, v62);
      sub_1EB60(v97);
      v54 = sub_BD88(&qword_948DE8);
      v55 = *(*(v54 - 8) + 56);
      v56 = v71;
      return v55(v56, 1, 1, v54);
    }

    v46 = v11;
    (*v81)(v37, v45 + *(v38 + 48), v36);
    sub_75DA90();
    sub_7575B0();
    v47 = v86;
    sub_75C810();
    v48 = v35;
    v49 = v92;
    sub_75DA00();
    (*v80)(v47, v88);
    sub_75A450();
    sub_1B8474(&qword_944D00, &type metadata accessor for ProductReview);
    sub_75C750();
    if (!v94)
    {
      (*v79)(v49, v89);
      (*v78)(v48, v87);
      result = (*v82)(v37, v36);
      v35 = v48;
      v11 = v46;
      goto LABEL_9;
    }

    v50 = v74;
    sub_75A440();
    v51 = (*v70)(v50, v91);
    if (v51 != v69)
    {

      (*v79)(v92, v89);
      v35 = v77;
      (*v78)(v77, v87);
      v37 = v75;
      v36 = v76;
      (*v82)(v75, v76);
      result = (*v63)(v50, v91);
      v11 = v46;
      goto LABEL_9;
    }

    v52 = v89;
    (*v64)(v50, v91);
    sub_764FD0();
    v53 = sub_76A6C0();

    sub_1EB60(&v94);
    v37 = v75;
    v36 = v76;
    (*v82)(v75, v76);
    v35 = v77;
    v38 = v93;
    if (v53)
    {

      (*(v61 + 8))(v90, v62);
      sub_1EB60(v97);
      v58 = sub_BD88(&qword_948DE8);
      v59 = *(v58 + 48);
      v60 = v71;
      (*(v65 + 32))(v71, v35, v87);
      (*(v66 + 32))(v60 + v59, v92, v52);
      return (*(*(v58 - 8) + 56))(v60, 0, 1, v58);
    }

    (*v79)(v92, v52);
    result = (*v78)(v35, v87);
    v11 = v46;
    if (v32 == v33)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_1B6980(uint64_t a1)
{
  v15[0] = a1;
  v2 = sub_BD88(&unk_959540);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v15 - v4;
  v6 = sub_BD88(&unk_944D90);
  __chkstk_darwin(v6 - 8);
  v7 = sub_BD88(&qword_948DF0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v15 - v9;
  sub_75C790();
  sub_768B30();
  sub_EECB0();
  sub_768AF0();
  sub_75C7E0();
  sub_762A00();
  sub_1B8474(&qword_948DB0, &type metadata accessor for ReviewsDiffablePagePresenter);
  sub_762460();
  (*(v3 + 8))(v5, v2);
  v11 = [v1 collectionView];
  if (v11)
  {
    v12 = v11;
    isa = sub_757550().super.isa;
    [v12 scrollToItemAtIndexPath:isa atScrollPosition:1 animated:0];
  }

  return (*(v8 + 8))(v10, v7);
}

void sub_1B6C5C(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_1B591C(a3);
}

uint64_t sub_1B6CB0(uint64_t a1)
{
  v2 = sub_BD88(&qword_948DD8);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v8 - v5;
  (*(v3 + 16))(&v8 - v5, a1, v2, v4);
  if ((*(v3 + 88))(v6, v2) != enum case for DiffablePagePresenter.UpdatePhase.started<A>(_:) || (sub_7629B0() & 1) == 0)
  {
    sub_5FFFE8(a1);
  }

  return (*(v3 + 8))(v6, v2);
}

void sub_1B6DF8(void *a1, double a2, double a3)
{
  v17.receiver = v3;
  v17.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v17, "viewWillTransitionToSize:withTransitionCoordinator:", a1, a2, a3);
  v15 = static CondensedEditorialSearchResultContentView.prefetchArtwork(for:with:asPartOf:);
  v16 = 0;
  v11 = _NSConcreteStackBlock;
  v12 = 1107296256;
  v13 = sub_6C6800;
  v14 = &unk_8873D8;
  v7 = _Block_copy(&v11);
  v8 = swift_allocObject();
  *(v8 + 16) = v3;
  v15 = sub_1B8468;
  v16 = v8;
  v11 = _NSConcreteStackBlock;
  v12 = 1107296256;
  v13 = sub_6C6800;
  v14 = &unk_887428;
  v9 = _Block_copy(&v11);
  v10 = v3;

  [a1 animateAlongsideTransition:v7 completion:v9];
  _Block_release(v9);
  _Block_release(v7);
}

void sub_1B6F70(int a1, id a2)
{
  v2 = [a2 collectionView];
  if (v2)
  {
    v3 = v2;
    [v2 reloadData];
  }

  else
  {
    __break(1u);
  }
}

void sub_1B6FD0(void *a1, double a2, double a3, uint64_t a4, void *a5)
{
  swift_unknownObjectRetain();
  v9 = a1;
  sub_1B6DF8(a5, a2, a3);
  swift_unknownObjectRelease();
}

unint64_t sub_1B7050@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + qword_99E1A8);
  sub_75A3C0();
  swift_allocObject();

  v4 = sub_75A3B0();
  swift_allocObject();
  v5 = sub_75A3B0();
  a1[3] = &type metadata for ReviewsPageGridProvider;
  result = sub_1B83C4();
  a1[4] = result;
  *a1 = v4;
  a1[1] = v5;
  a1[2] = v3;
  return result;
}

uint64_t sub_1B70F4@<X0>(uint64_t *a1@<X8>)
{
  swift_getObjectType();
  sub_1B8474(&qword_948DA8, type metadata accessor for ReviewsDiffablePageViewController);
  v2 = sub_763A60();
  v19[3] = swift_getObjectType();
  v19[0] = v2;
  v3 = sub_763A50();
  v20[3] = swift_getObjectType();
  v20[0] = v3;
  sub_132B4(v19, v17);
  sub_13310(v17, v16);
  sub_BD88(&qword_93F1C8);
  if (swift_dynamicCast() && v18)
  {
    v14 = v18;
    v4 = _swiftEmptyArrayStorage;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_7ACBC(0, _swiftEmptyArrayStorage[2] + 1, 1, _swiftEmptyArrayStorage);
    }

    v6 = v4[2];
    v5 = v4[3];
    if (v6 >= v5 >> 1)
    {
      v4 = sub_7ACBC((v5 > 1), v6 + 1, 1, v4);
    }

    v4[2] = v6 + 1;
    *&v4[2 * v6 + 4] = v14;
  }

  else
  {
    v4 = _swiftEmptyArrayStorage;
  }

  sub_132B4(v20, v17);
  sub_13310(v17, v16);
  sub_BD88(&qword_93F1C8);
  if (swift_dynamicCast() && v18)
  {
    v15 = v18;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_7ACBC(0, v4[2] + 1, 1, v4);
    }

    v8 = v4[2];
    v7 = v4[3];
    v9 = v15;
    if (v8 >= v7 >> 1)
    {
      v13 = sub_7ACBC((v7 > 1), v8 + 1, 1, v4);
      v9 = v15;
      v4 = v13;
    }

    v4[2] = v8 + 1;
    *&v4[2 * v8 + 4] = v9;
  }

  swift_arrayDestroy();
  sub_763A80();
  v10 = type metadata accessor for GenericPageLayoutSectionProvider();
  swift_allocObject();
  sub_134D8(v17, v16);

  v11 = sub_762B60();
  result = sub_BEB8(v17);
  a1[3] = v10;
  a1[4] = &protocol witness table for BasePageLayoutSectionProvider;
  *a1 = v11;
  return result;
}

uint64_t sub_1B73F4()
{
  v1 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_objectGraph);
  type metadata accessor for ReviewsPageShelfSupplementaryProvider();
  v2 = swift_allocObject();
  swift_weakInit();
  swift_weakAssign();
  v3 = sub_1B8474(&qword_948DB8, &type metadata accessor for ReviewsDiffablePagePresenter);
  *(v2 + 32) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + 32) = v3;
  swift_unknownObjectWeakAssign();
  *(v2 + 16) = v1;
  sub_1B8474(&qword_948DC8, type metadata accessor for ReviewsPageShelfSupplementaryProvider);

  return v2;
}

uint64_t sub_1B750C()
{
  v1 = v0;
  swift_getObjectType();
  sub_5FC980();
  sub_7637E0();
  if (swift_dynamicCastClass())
  {
    v2 = sub_7637B0();
    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
    swift_allocObject();
    v2 = sub_7637D0();
  }

  sub_BD88(&qword_93F1E8);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_77E280;
  sub_1B8474(&qword_948DA8, type metadata accessor for ReviewsDiffablePageViewController);

  sub_763A80();
  sub_1B8474(&qword_948DB0, &type metadata accessor for ReviewsDiffablePagePresenter);
  sub_1B8474(&qword_948DB8, &type metadata accessor for ReviewsDiffablePagePresenter);
  type metadata accessor for ProductReviewSelectionHandlerCollectionElementsObserver();
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v4 + qword_94CC10) = 0;
  swift_unknownObjectWeakAssign();
  sub_134D8(v10, v4 + qword_94CC08);

  v5 = sub_764290();
  sub_BEB8(v10);
  *(v3 + 32) = v5;
  *(v3 + 40) = &protocol witness table for SelectionHandlerCollectionElementsObserver;
  v6 = *(v1 + qword_948820);
  v7 = sub_1B8474(&qword_948DC0, type metadata accessor for ProductReviewFlowPreviewingCollectionElementsObserver);
  *(v3 + 48) = v6;
  *(v3 + 56) = v7;

  v8._rawValue = v3;
  sub_7637A0(v8);

  return v2;
}

void sub_1B7834()
{
  v1 = v0;
  v2 = [v0 traitCollection];
  v3 = sub_769A20();

  v4 = [v1 view];
  if (v4)
  {
    v5 = v4;
    if (qword_93C8D0 != -1)
    {
      swift_once();
    }

    v6 = [qword_99C718 resolvedColorWithTraitCollection:v3];
    [v5 setBackgroundColor:v6];

    *(*&v1[qword_948820] + 16) = 1;
  }

  else
  {
    __break(1u);
  }
}

void sub_1B795C(uint64_t a1, void *a2)
{
  if (a2)
  {
    v4 = a2;
    v3 = [v4 traitCollection];
    [v3 userInterfaceLevel];

    sub_10974(a1, *(a1 + 24));
    sub_767630();
  }
}

void sub_1B7A04()
{
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    v3 = [objc_opt_self() systemBackgroundColor];
    [v2 setBackgroundColor:v3];

    *(*&v0[qword_948820] + 16) = 0;
  }

  else
  {
    __break(1u);
  }
}

void sub_1B7A9C(char *a1@<X8>)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = sub_764930();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v51 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v50 = &v32 - v8;
  v45 = sub_BD88(&unk_94F1F0);
  v9 = *(v45 - 8);
  __chkstk_darwin(v45);
  v44 = &v32 - v10;
  v11 = sub_BD88(&unk_957F70);
  __chkstk_darwin(v11 - 8);
  v13 = &v32 - v12;
  v14 = sub_75DAB0();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v48 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = qword_9593C8;
  swift_beginAccess();
  v18 = *&v2[v17];
  if (!v18)
  {
    v30 = 1;
    goto LABEL_19;
  }

  v43 = v4;
  v46 = v14;
  v19 = v18;
  v20 = [v2 collectionView];
  if (!v20)
  {
    goto LABEL_21;
  }

  v21 = v20;
  v22 = sub_767A50();

  if (v22 < 0)
  {
    __break(1u);
LABEL_21:
    __break(1u);
    return;
  }

  if (!v22)
  {
    v30 = 1;
    v14 = v46;
    goto LABEL_19;
  }

  v34 = a1;
  v23 = v15;
  v24 = (v15 + 48);
  v42 = (v23 + 32);
  v40 = (v9 + 8);
  v39 = enum case for Shelf.ContentType.productReview(_:);
  v38 = (v5 + 104);
  v41 = (v5 + 8);
  v33 = v23;
  v35 = (v23 + 8);
  sub_1B8474(&qword_948DA8, type metadata accessor for ReviewsDiffablePageViewController);
  v25 = 0;
  v14 = v46;
  v37 = v22;
  while (1)
  {
    sub_763A20();
    if ((*v24)(v13, 1, v14) == 1)
    {
      sub_10A2C(v13, &unk_957F70);
      goto LABEL_7;
    }

    v36 = *v42;
    v36(v48, v13, v14);
    v26 = v44;
    sub_75DAA0();
    swift_getKeyPath();
    v27 = v45;
    sub_768750();

    (*v40)(v26, v27);
    v28 = v43;
    (*v38)(v51, v39, v43);
    sub_1B8474(&qword_942D68, &type metadata accessor for Shelf.ContentType);
    sub_769430();
    sub_769430();
    if (v54 == v52 && v55 == v53)
    {
      break;
    }

    v47 = sub_76A950();
    v29 = *v41;
    (*v41)(v51, v28);
    v29(v50, v28);

    v22 = v37;
    if (v47)
    {
      goto LABEL_17;
    }

    v14 = v46;
    (*v35)(v48, v46);
LABEL_7:
    if (v22 == ++v25)
    {
      v30 = 1;
      a1 = v34;
      goto LABEL_18;
    }
  }

  v31 = *v41;
  (*v41)(v51, v28);
  v31(v50, v28);

LABEL_17:
  a1 = v34;
  v14 = v46;
  v36(v34, v48, v46);
  v30 = 0;
LABEL_18:
  v15 = v33;
LABEL_19:
  (*(v15 + 56))(a1, v30, 1, v14);
}

uint64_t type metadata accessor for ReviewsDiffablePageViewController()
{
  result = qword_948850;
  if (!qword_948850)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B81A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_764C60();
  if (v7)
  {
    v8 = sub_764C70();
    if (v8)
    {
      v9 = v8;
      if (sub_765190())
      {
        sub_759910();
      }

      else if (sub_765180())
      {
        sub_56EBA8(v9, 0);
      }
    }

    sub_BE70(0, &qword_955FA0);
    sub_38EE0(a4, v14);
    v11 = swift_allocObject();
    *(v11 + 16) = a2;
    *(v11 + 24) = &protocol witness table for ReviewsDiffablePagePresenter;
    *(v11 + 32) = a1;
    v12 = v14[1];
    *(v11 + 40) = v14[0];
    *(v11 + 56) = v12;
    v10 = sub_76A1F0();
    sub_10A2C(a4, &unk_93FBD0);
  }

  else
  {
    sub_10A2C(a4, &unk_93FBD0);

    return 0;
  }

  return v10;
}

uint64_t sub_1B835C()
{
  swift_unknownObjectRelease();

  if (*(v0 + 64))
  {
    sub_BEB8(v0 + 40);
  }

  return _swift_deallocObject(v0, 72, 7);
}

unint64_t sub_1B83C4()
{
  result = qword_948DD0;
  if (!qword_948DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_948DD0);
  }

  return result;
}

uint64_t sub_1B8418(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1B8430()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1B8474(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t MetadataRibbonView.hasContent.getter()
{
  swift_getObjectType();
  v1 = OBJC_IVAR____TtC18ASMessagesProvider18MetadataRibbonView_metadataRibbonItemModels;
  swift_beginAccess();
  v2 = *(v0 + v1);

  v3 = sub_101F5C(0, v2);

  return v3 & 1;
}

uint64_t MetadataRibbonView.isInsideSearchAd.setter(char a1)
{
  v3 = sub_760D90();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v10[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = OBJC_IVAR____TtC18ASMessagesProvider18MetadataRibbonView_isInsideSearchAd;
  result = swift_beginAccess();
  v1[v7] = a1;
  if (a1)
  {
    _s18ASMessagesProvider18MetadataRibbonViewC7metrics11AppStoreKit0cdE6LayoutV7MetricsVvpfi_0();
    v9 = OBJC_IVAR____TtC18ASMessagesProvider18MetadataRibbonView_metrics;
    swift_beginAccess();
    (*(v4 + 24))(&v1[v9], v6, v3);
    swift_endAccess();
    [v1 setNeedsLayout];
    return (*(v4 + 8))(v6, v3);
  }

  return result;
}

id sub_1B880C()
{
  v1 = v0;
  v2 = sub_760D90();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider18MetadataRibbonView_metadataRibbonItemViews];
  v7 = OBJC_IVAR____TtC18ASMessagesProvider18MetadataRibbonView_metrics;
  swift_beginAccess();
  (*(v3 + 16))(v5, &v1[v7], v2);

  v8 = sub_760D70();
  (*(v3 + 8))(v5, v2);
  result = sub_10B54(v8, v6);
  v13 = (v12 >> 1) - v11;
  if (v12 >> 1 == v11)
  {
    goto LABEL_5;
  }

  if ((v12 >> 1) > v11)
  {
    v14 = (v10 + 16 * v11);
    do
    {
      v15 = *v14;
      v14 += 2;
      [v1 addSubview:v15];
      --v13;
    }

    while (v13);
LABEL_5:
    swift_unknownObjectRelease();
    return [v1 setNeedsLayout];
  }

  __break(1u);
  return result;
}

id sub_1B8988(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider18MetadataRibbonView_metadataRibbonItemViews;
  v4 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider18MetadataRibbonView_metadataRibbonItemViews);
  v5 = *(v4 + 16);
  if (v5)
  {

    v6 = 32;
    do
    {
      [*(v4 + v6) removeFromSuperview];
      v6 += 16;
      --v5;
    }

    while (v5);
  }

  *(v1 + v3) = a1;

  return sub_1B880C();
}

uint64_t MetadataRibbonView.metrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider18MetadataRibbonView_metrics;
  swift_beginAccess();
  v4 = sub_760D90();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_1B8AAC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC18ASMessagesProvider18MetadataRibbonView_metrics;
  swift_beginAccess();
  v5 = sub_760D90();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_1B8B38(uint64_t a1, void **a2)
{
  v4 = sub_760D90();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4, v6);
  v9 = *a2;
  v10 = OBJC_IVAR____TtC18ASMessagesProvider18MetadataRibbonView_metrics;
  swift_beginAccess();
  (*(v5 + 24))(&v9[v10], v8, v4);
  swift_endAccess();
  [v9 setNeedsLayout];
  return (*(v5 + 8))(v8, v4);
}

Swift::Void __swiftcall MetadataRibbonView.layoutSubviews()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v33 = sub_7664F0();
  v32 = *(v33 - 8);
  __chkstk_darwin(v33);
  v30 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_760D90();
  v25 = *(v27 - 8);
  __chkstk_darwin(v27);
  v24 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_760DA0();
  v28 = *(v29 - 8);
  *&v5 = __chkstk_darwin(v29).n128_u64[0];
  v26 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46.receiver = v1;
  v46.super_class = ObjectType;
  v31 = ObjectType;
  objc_msgSendSuper2(&v46, "layoutSubviews", v5);
  v7 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider18MetadataRibbonView_metadataRibbonItemViews];
  v8 = *(v7 + 16);

  if (v8)
  {
    v9 = 0;
    v10 = _swiftEmptyArrayStorage;
    v11 = v7 + 40;
    while (v9 < *(v7 + 16))
    {
      v12 = *(v11 - 8);
      swift_getObjectType();
      v13 = v12;
      sub_75FCC0();
      v36 = v42;
      v37 = v43;
      v38 = v44;
      v39 = v45;
      v34 = v40;
      v35 = v41;

      if (*(&v35 + 1))
      {
        v42 = v36;
        v43 = v37;
        v44 = v38;
        v45 = v39;
        v40 = v34;
        v41 = v35;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_7AB00(0, v10[2] + 1, 1, v10);
        }

        v15 = v10[2];
        v14 = v10[3];
        if (v15 >= v14 >> 1)
        {
          v10 = sub_7AB00((v14 > 1), v15 + 1, 1, v10);
        }

        v10[2] = v15 + 1;
        v16 = &v10[11 * v15];
        v17 = v41;
        *(v16 + 2) = v40;
        *(v16 + 3) = v17;
        v18 = v42;
        v19 = v43;
        v20 = v44;
        *(v16 + 56) = v45;
        *(v16 + 5) = v19;
        *(v16 + 6) = v20;
        *(v16 + 4) = v18;
      }

      else
      {
        sub_10A2C(&v34, &qword_948E10);
      }

      ++v9;
      v11 += 16;
      if (v8 == v9)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_12:

    v21 = OBJC_IVAR____TtC18ASMessagesProvider18MetadataRibbonView_metrics;
    swift_beginAccess();
    (*(v25 + 16))(v24, &v1[v21], v27);
    v22 = v26;
    sub_760D40();
    sub_75D650();
    v23 = v30;
    sub_760D60();
    (*(v32 + 8))(v23, v33);
    (*(v28 + 8))(v22, v29);
  }
}

uint64_t MetadataRibbonView.measurements(fitting:in:)(uint64_t a1)
{
  v29 = a1;
  v27 = sub_760D90();
  v25 = *(v27 - 8);
  __chkstk_darwin(v27);
  v23 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_760DA0();
  v24 = *(v26 - 8);
  __chkstk_darwin(v26);
  v22 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = v1;
  v4 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider18MetadataRibbonView_metadataRibbonItemViews);
  v5 = *(v4 + 16);

  if (v5)
  {
    v7 = 0;
    v8 = _swiftEmptyArrayStorage;
    v9 = v4 + 40;
    while (v7 < *(v4 + 16))
    {
      v10 = *(v9 - 8);
      swift_getObjectType();
      v11 = v10;
      sub_75FCC0();
      v32 = v38;
      v33 = v39;
      v34 = v40;
      v35 = v41;
      v30 = v36;
      v31 = v37;

      if (*(&v31 + 1))
      {
        v38 = v32;
        v39 = v33;
        v40 = v34;
        v41 = v35;
        v36 = v30;
        v37 = v31;
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_7AB00(0, v8[2] + 1, 1, v8);
          v8 = result;
        }

        v13 = v8[2];
        v12 = v8[3];
        if (v13 >= v12 >> 1)
        {
          result = sub_7AB00((v12 > 1), v13 + 1, 1, v8);
          v8 = result;
        }

        v8[2] = v13 + 1;
        v14 = &v8[11 * v13];
        v15 = v37;
        *(v14 + 2) = v36;
        *(v14 + 3) = v15;
        v16 = v38;
        v17 = v39;
        v18 = v40;
        *(v14 + 56) = v41;
        *(v14 + 5) = v17;
        *(v14 + 6) = v18;
        *(v14 + 4) = v16;
      }

      else
      {
        result = sub_10A2C(&v30, &qword_948E10);
      }

      ++v7;
      v9 += 16;
      if (v5 == v7)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_12:

    v19 = OBJC_IVAR____TtC18ASMessagesProvider18MetadataRibbonView_metrics;
    v20 = v28;
    swift_beginAccess();
    (*(v25 + 16))(v23, v20 + v19, v27);
    v21 = v22;
    sub_760D40();
    sub_760D50();
    return (*(v24 + 8))(v21, v26);
  }

  return result;
}

id sub_1B9620(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v49 = a3;
  v44 = a2;
  v4 = sub_760D90();
  v46 = *(v4 - 8);
  v47 = v4;
  __chkstk_darwin(v4);
  v45 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_761C80();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v44 - v11;
  v62 = _swiftEmptyArrayStorage;
  if (a1 >> 62)
  {
    goto LABEL_71;
  }

  v13 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
LABEL_3:
  v58 = enum case for MetadataRibbonItemViewType.editorsChoice(_:);
  v59 = enum case for MetadataRibbonItemViewType.borderedTextLabel(_:);
  v56 = enum case for MetadataRibbonItemViewType.starRating(_:);
  v57 = enum case for MetadataRibbonItemViewType.imageWithLabel(_:);
  v54 = enum case for MetadataRibbonItemViewType.divider(_:);
  v55 = enum case for MetadataRibbonItemViewType.textLabel(_:);
  v61 = a1 & 0xC000000000000001;
  v53 = enum case for MetadataRibbonItemViewType.highlightedText(_:);
  v51 = a1;
  if (v13)
  {
    v52 = v9;
    v9 = v13;
    v14 = 0;
    v60 = a1 & 0xFFFFFFFFFFFFFF8;
    v15 = (v7 + 11);
    v50 = v7++;
    while (1)
    {
      if (v61)
      {
        sub_76A770();
        v16 = (v14 + 1);
        if (__OFADD__(v14, 1))
        {
LABEL_32:
          __break(1u);
LABEL_33:
          v24 = v62;
          v13 = v9;
          v9 = v52;
          v7 = v50;
          goto LABEL_35;
        }
      }

      else
      {
        if (v14 >= *(v60 + 16))
        {
          __break(1u);
LABEL_69:
          __break(1u);
LABEL_70:
          __break(1u);
LABEL_71:
          v13 = sub_76A860();
          goto LABEL_3;
        }

        v16 = (v14 + 1);
        if (__OFADD__(v14, 1))
        {
          goto LABEL_32;
        }
      }

      sub_75D750();
      v17 = (*v15)(v12, v6);
      if (v17 == v59 || v17 == v58 || v17 == v57 || v17 == v56 || v17 == v55 || v17 == v54 || v17 == v53)
      {
        sub_76A7A0();
        sub_76A7D0();
        a1 = v51;
        sub_76A7E0();
        sub_76A7B0();
      }

      else
      {

        (*v7)(v12, v6);
      }

      ++v14;
      if (v16 == v9)
      {
        goto LABEL_33;
      }
    }
  }

  v60 = a1 & 0xFFFFFFFFFFFFFF8;
  v24 = _swiftEmptyArrayStorage;
LABEL_35:
  v25 = OBJC_IVAR____TtC18ASMessagesProvider18MetadataRibbonView_metadataRibbonItemModels;
  v26 = v48;
  swift_beginAccess();
  *&v26[v25] = v24;

  if (v13)
  {
    v52 = v13;
    v27 = 0;
    v28 = (v7 + 11);
    ++v7;
    v29 = _swiftEmptyArrayStorage;
    do
    {
      v50 = v29;
      v12 = v27;
      while (1)
      {
        if (v61)
        {
          sub_76A770();
          v27 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            goto LABEL_69;
          }
        }

        else
        {
          if (v12 >= *(v60 + 16))
          {
            goto LABEL_70;
          }

          v27 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            goto LABEL_69;
          }
        }

        sub_75D750();
        v30 = (*v28)(v9, v6);
        if (v30 == v59)
        {
          type metadata accessor for MetadataRibbonBorderedLabelWithDescriptionView();
          v31 = type metadata accessor for MetadataRibbonBorderedLabelWithDescriptionView;
          v32 = &unk_93EBD8;
          goto LABEL_60;
        }

        if (v30 == v58)
        {
          type metadata accessor for MetadataRibbonEditorsChoiceView();
          v31 = type metadata accessor for MetadataRibbonEditorsChoiceView;
          v32 = &unk_93F600;
          goto LABEL_60;
        }

        if (v30 == v57)
        {
          type metadata accessor for MetadataRibbonIconWithLabelView(0);
          v31 = type metadata accessor for MetadataRibbonIconWithLabelView;
          v32 = &unk_93EBD0;
          goto LABEL_60;
        }

        if (v30 == v56)
        {
          type metadata accessor for MetadataRibbonStarRatingView();
          v31 = type metadata accessor for MetadataRibbonStarRatingView;
          v32 = &unk_93F610;
          goto LABEL_60;
        }

        if (v30 == v55)
        {
          type metadata accessor for MetadataRibbonTagView();
          v31 = type metadata accessor for MetadataRibbonTagView;
          v32 = &unk_93EBC8;
          goto LABEL_60;
        }

        if (v30 == v54)
        {
          type metadata accessor for MetadataRibbonBarView();
          v31 = type metadata accessor for MetadataRibbonBarView;
          v32 = &unk_93F5F0;
          goto LABEL_60;
        }

        if (v30 == v53)
        {
          break;
        }

        (*v7)(v9, v6);
        ++v12;
        if (v27 == v52)
        {
          v29 = v50;
          goto LABEL_67;
        }
      }

      type metadata accessor for MetadataRibbonHighlightedTextView();
      v31 = type metadata accessor for MetadataRibbonHighlightedTextView;
      v32 = &unk_93EBB8;
LABEL_60:
      v33 = sub_1BAC3C(v32, v31);
      v34 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
      sub_75FD30();
      sub_75D770();
      sub_75FD10();

      v29 = v50;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v29 = sub_7AC98(0, v29[2] + 1, 1, v29);
      }

      v36 = v29[2];
      v35 = v29[3];
      if (v36 >= v35 >> 1)
      {
        v29 = sub_7AC98((v35 > 1), v36 + 1, 1, v29);
      }

      v29[2] = (v36 + 1);
      v37 = &v29[2 * v36];
      v37[4] = v34;
      v37[5] = v33;
      a1 = v51;
    }

    while (v27 != v52);
  }

  else
  {
    v29 = _swiftEmptyArrayStorage;
  }

LABEL_67:
  v38 = v48;
  sub_1B8988(v29);
  v40 = v46;
  v39 = v47;
  v41 = v45;
  (*(v46 + 16))(v45, v44, v47);
  v42 = OBJC_IVAR____TtC18ASMessagesProvider18MetadataRibbonView_metrics;
  swift_beginAccess();
  (*(v40 + 24))(&v38[v42], v41, v39);
  swift_endAccess();
  [v38 setNeedsLayout];
  (*(v40 + 8))(v41, v39);
  return [v38 setNeedsLayout];
}

uint64_t MetadataRibbonView.isInsideSearchAd.getter()
{
  v1 = OBJC_IVAR____TtC18ASMessagesProvider18MetadataRibbonView_isInsideSearchAd;
  swift_beginAccess();
  return *(v0 + v1);
}

void (*MetadataRibbonView.isInsideSearchAd.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 48) = v1;
  v5 = sub_760D90();
  v4[7] = v5;
  v6 = *(v5 - 8);
  v4[8] = v6;
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(*(v6 + 64));
  }

  v8 = OBJC_IVAR____TtC18ASMessagesProvider18MetadataRibbonView_isInsideSearchAd;
  v4[9] = v7;
  v4[10] = v8;
  swift_beginAccess();
  return sub_1BA000;
}

void sub_1BA000(uint64_t *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = *(v3 + 48);
    if (v4[*(v3 + 80)] == 1)
    {
      v6 = *(v3 + 64);
      v5 = *(v3 + 72);
      v7 = *(v3 + 56);
      _s18ASMessagesProvider18MetadataRibbonViewC7metrics11AppStoreKit0cdE6LayoutV7MetricsVvpfi_0();
      v8 = OBJC_IVAR____TtC18ASMessagesProvider18MetadataRibbonView_metrics;
      swift_beginAccess();
      (*(v6 + 24))(&v4[v8], v5, v7);
      swift_endAccess();
      [v4 setNeedsLayout];
      (*(v6 + 8))(v5, v7);
    }
  }

  free(*(v3 + 72));

  free(v3);
}

uint64_t type metadata accessor for MetadataRibbonView()
{
  result = qword_948E40;
  if (!qword_948E40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BA1D4()
{
  result = sub_760D90();
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

uint64_t sub_1BA288(uint64_t a1, uint64_t a2)
{
  v22 = a2;
  v21 = sub_765240();
  v3 = *(v21 - 8);
  __chkstk_darwin(v21);
  v20 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC18ASMessagesProvider18MetadataRibbonView_metadataRibbonItemModels;
  result = swift_beginAccess();
  v7 = *(v2 + v5);
  if (v7)
  {
    v8 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider18MetadataRibbonView_metadataRibbonItemViews);
    v9 = v7 & 0xFFFFFFFFFFFFFF8;
    if (v7 >> 62)
    {
      goto LABEL_24;
    }

    v10 = *(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8));
LABEL_4:

    if (v10)
    {
      v11 = 0;
      v23 = v10;
      v24 = v7 & 0xC000000000000001;
      v17 = v3 + 1;
      v18 = v7;
      v12 = 32;
      v19 = v8;
      do
      {
        if (v24)
        {
          sub_76A770();
        }

        else
        {
          if (v11 >= *(v9 + 16))
          {
            __break(1u);
LABEL_23:
            __break(1u);
LABEL_24:
            v10 = sub_76A860();
            goto LABEL_4;
          }
        }

        v13 = *(v8 + 16);
        if (v11 == v13)
        {

          break;
        }

        if (v11 >= v13)
        {
          goto LABEL_23;
        }

        v3 = *(v8 + v12);
        type metadata accessor for MetadataRibbonIconWithLabelView(0);
        if (swift_dynamicCastClass())
        {
          v14 = v3;
          v15 = sub_75D790();
          if (v15)
          {
            v3 = v15;
            v16 = v20;
            sub_765250();
            sub_765210();
            (*v17)(v16, v21);
            sub_765330();
            sub_75A110();
            sub_759210();
            sub_75A090();
            swift_allocObject();
            swift_unknownObjectWeakInit();

            sub_75A040();

            sub_10A2C(v25, &unk_9443A0);
            v7 = v18;
            v8 = v19;
          }

          else
          {
          }

          v10 = v23;
        }

        else
        {
        }

        ++v11;
        v12 += 16;
      }

      while (v10 != v11);
    }
  }

  return result;
}

uint64_t sub_1BA5E4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void *sub_1BA624(unint64_t a1, uint64_t a2)
{
  v34 = a2;
  v33 = sub_765240();
  v36 = *(v33 - 8);
  __chkstk_darwin(v33);
  v32 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_766690();
  v4 = *(v31 - 8);
  __chkstk_darwin(v31);
  v30 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_763DF0();
  v6 = *(v29 - 8);
  __chkstk_darwin(v29);
  v28 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_761C80();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v24 - v13;
  result = _swiftEmptyArrayStorage;
  if (!a1)
  {
    return result;
  }

  v42 = _swiftEmptyArrayStorage;
  if (a1 >> 62)
  {
    result = sub_76A860();
    if (result)
    {
      goto LABEL_4;
    }

    return _swiftEmptyArrayStorage;
  }

  result = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  if (!result)
  {
    return _swiftEmptyArrayStorage;
  }

LABEL_4:
  if (result >= 1)
  {
    v16 = 0;
    v39 = a1 & 0xC000000000000001;
    v38 = enum case for MetadataRibbonItemViewType.imageWithLabel(_:);
    v37 = (v9 + 104);
    v17 = (v9 + 8);
    v27 = (v4 + 8);
    v26 = (v6 + 8);
    v25 = (v36 + 8);
    v35 = _swiftEmptyArrayStorage;
    v36 = a1;
    v40 = result;
    while (1)
    {
      if (v39)
      {
        sub_76A770();
      }

      else
      {
      }

      sub_75D750();
      (*v37)(v11, v38, v8);
      sub_1BAC3C(&qword_948E50, &type metadata accessor for MetadataRibbonItemViewType);
      sub_769430();
      sub_769430();
      if (v41[0] == v41[5] && v41[1] == v41[6])
      {
        v18 = *v17;
        (*v17)(v11, v8);
        v18(v14, v8);
      }

      else
      {
        v19 = sub_76A950();
        v20 = *v17;
        (*v17)(v11, v8);
        v20(v14, v8);

        if ((v19 & 1) == 0)
        {
          goto LABEL_6;
        }
      }

      if (sub_75D790())
      {
        v21 = v28;
        sub_763DD0();
        sub_763DC0();
        sub_B170(v41, v41[3]);
        sub_766710();
        sub_BEB8(v41);
        sub_765260();
        v22 = v30;
        sub_7666A0();
        sub_766650();
        (*v27)(v22, v31);
        (*v26)(v21, v29);
        v23 = v32;
        sub_765250();
        sub_765210();
        (*v25)(v23, v33);
        sub_765330();
        sub_769440();
        if (*(&dword_10 + (v42 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v42 & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          sub_7694C0();
        }

        sub_769500();

        v35 = v42;
        goto LABEL_7;
      }

LABEL_6:

LABEL_7:
      if (v40 == ++v16)
      {
        return v35;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1BAC3C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BAC84()
{
  v1 = sub_BD88(&qword_949570);
  __chkstk_darwin(v1 - 8);
  v28 = v20 - v2;
  v3 = sub_BD88(&unk_9595F0);
  v26 = *(v3 - 8);
  v27 = v3;
  __chkstk_darwin(v3);
  v25 = v20 - v4;
  v5 = sub_BD88(&qword_949638);
  v23 = *(v5 - 8);
  v24 = v5;
  __chkstk_darwin(v5);
  v22 = v20 - v6;
  v7 = sub_BD88(&qword_949580);
  v29 = *(v7 - 8);
  v30 = v7;
  __chkstk_darwin(v7);
  v21 = v20 - v8;
  v9 = sub_BD88(&qword_942CA0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v20 - v11;
  v20[2] = *(v0 + qword_99E1A8);
  sub_75F1B0();
  sub_BD88(&unk_959600);
  sub_16194(&qword_942CA8, &unk_959600);
  sub_768710();
  sub_BD88(&qword_949640);
  sub_768720();

  sub_BEB8(v31);
  (*(v10 + 8))(v12, v9);
  sub_75F1C0();
  sub_BD88(&qword_949590);
  v13 = sub_16194(&qword_959570, &qword_949590);
  sub_768710();
  v14 = v21;
  v20[1] = v13;
  sub_768720();

  sub_BEB8(v31);
  (*(v29 + 8))(v14, v30);
  sub_761830();
  sub_BD88(&qword_949648);
  sub_16194(&qword_949650, &qword_949648);
  sub_768710();
  v15 = v22;
  sub_768720();

  sub_BEB8(v31);
  (*(v23 + 8))(v15, v24);
  sub_75F220();
  sub_BD88(&unk_959610);
  sub_16194(&qword_9495A8, &unk_959610);
  sub_768710();
  v16 = v25;
  sub_768720();

  sub_BEB8(v31);
  (*(v26 + 8))(v16, v27);
  if (*(v0 + qword_9593D0))
  {

    sub_768710();
    v17 = v28;
    sub_768720();

    sub_BEB8(v31);
    v18 = 0;
  }

  else
  {
    v18 = 1;
    v17 = v28;
  }

  (*(v29 + 56))(v17, v18, 1, v30);
  return sub_10A2C(v17, &qword_949570);
}

uint64_t sub_1BB32C()
{
  v1 = sub_BD88(&qword_949570);
  __chkstk_darwin(v1 - 8);
  v28 = v20 - v2;
  v3 = sub_BD88(&unk_9595F0);
  v26 = *(v3 - 8);
  v27 = v3;
  __chkstk_darwin(v3);
  v25 = v20 - v4;
  v5 = sub_BD88(&qword_949610);
  v23 = *(v5 - 8);
  v24 = v5;
  __chkstk_darwin(v5);
  v22 = v20 - v6;
  v7 = sub_BD88(&qword_949580);
  v29 = *(v7 - 8);
  v30 = v7;
  __chkstk_darwin(v7);
  v21 = v20 - v8;
  v9 = sub_BD88(&qword_942CA0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v20 - v11;
  v20[2] = *(v0 + qword_99E1A8);
  sub_75F1B0();
  sub_BD88(&unk_959600);
  sub_16194(&qword_942CA8, &unk_959600);
  sub_768710();
  sub_BD88(&qword_949618);
  sub_768720();

  sub_BEB8(v31);
  (*(v10 + 8))(v12, v9);
  sub_75F1C0();
  sub_BD88(&qword_949590);
  v13 = sub_16194(&qword_959570, &qword_949590);
  sub_768710();
  v14 = v21;
  v20[1] = v13;
  sub_768720();

  sub_BEB8(v31);
  (*(v29 + 8))(v14, v30);
  sub_761830();
  sub_BD88(&qword_949620);
  sub_16194(&qword_949628, &qword_949620);
  sub_768710();
  v15 = v22;
  sub_768720();

  sub_BEB8(v31);
  (*(v23 + 8))(v15, v24);
  sub_75F220();
  sub_BD88(&unk_959610);
  sub_16194(&qword_9495A8, &unk_959610);
  sub_768710();
  v16 = v25;
  sub_768720();

  sub_BEB8(v31);
  (*(v26 + 8))(v16, v27);
  if (*(v0 + qword_9593D0))
  {

    sub_768710();
    v17 = v28;
    sub_768720();

    sub_BEB8(v31);
    v18 = 0;
  }

  else
  {
    v18 = 1;
    v17 = v28;
  }

  (*(v29 + 56))(v17, v18, 1, v30);
  return sub_10A2C(v17, &qword_949570);
}

uint64_t sub_1BB9D4()
{
  v1 = sub_BD88(&qword_949570);
  __chkstk_darwin(v1 - 8);
  v28 = v20 - v2;
  v3 = sub_BD88(&unk_9595F0);
  v26 = *(v3 - 8);
  v27 = v3;
  __chkstk_darwin(v3);
  v25 = v20 - v4;
  v5 = sub_BD88(&qword_9495F8);
  v23 = *(v5 - 8);
  v24 = v5;
  __chkstk_darwin(v5);
  v22 = v20 - v6;
  v7 = sub_BD88(&qword_949580);
  v29 = *(v7 - 8);
  v30 = v7;
  __chkstk_darwin(v7);
  v21 = v20 - v8;
  v9 = sub_BD88(&qword_942CA0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v20 - v11;
  v20[2] = *(v0 + qword_99E1A8);
  sub_75F1B0();
  sub_BD88(&unk_959600);
  sub_16194(&qword_942CA8, &unk_959600);
  sub_768710();
  sub_BD88(&qword_944A80);
  sub_768720();

  sub_BEB8(v31);
  (*(v10 + 8))(v12, v9);
  sub_75F1C0();
  sub_BD88(&qword_949590);
  v13 = sub_16194(&qword_959570, &qword_949590);
  sub_768710();
  v14 = v21;
  v20[1] = v13;
  sub_768720();

  sub_BEB8(v31);
  (*(v29 + 8))(v14, v30);
  sub_761830();
  sub_BD88(&qword_949600);
  sub_16194(&qword_949608, &qword_949600);
  sub_768710();
  v15 = v22;
  sub_768720();

  sub_BEB8(v31);
  (*(v23 + 8))(v15, v24);
  sub_75F220();
  sub_BD88(&unk_959610);
  sub_16194(&qword_9495A8, &unk_959610);
  sub_768710();
  v16 = v25;
  sub_768720();

  sub_BEB8(v31);
  (*(v26 + 8))(v16, v27);
  if (*(v0 + qword_9593D0))
  {

    sub_768710();
    v17 = v28;
    sub_768720();

    sub_BEB8(v31);
    v18 = 0;
  }

  else
  {
    v18 = 1;
    v17 = v28;
  }

  (*(v29 + 56))(v17, v18, 1, v30);
  return sub_10A2C(v17, &qword_949570);
}

uint64_t sub_1BC07C()
{
  v1 = sub_BD88(&qword_949570);
  __chkstk_darwin(v1 - 8);
  v28 = v20 - v2;
  v3 = sub_BD88(&unk_9595F0);
  v26 = *(v3 - 8);
  v27 = v3;
  __chkstk_darwin(v3);
  v25 = v20 - v4;
  v5 = sub_BD88(&qword_9495D0);
  v23 = *(v5 - 8);
  v24 = v5;
  __chkstk_darwin(v5);
  v22 = v20 - v6;
  v7 = sub_BD88(&qword_949580);
  v29 = *(v7 - 8);
  v30 = v7;
  __chkstk_darwin(v7);
  v21 = v20 - v8;
  v9 = sub_BD88(&qword_942CA0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v20 - v11;
  v20[2] = *(v0 + qword_99E1A8);
  sub_75F1B0();
  sub_BD88(&unk_959600);
  sub_16194(&qword_942CA8, &unk_959600);
  sub_768710();
  sub_BD88(&qword_9495D8);
  sub_768720();

  sub_BEB8(v31);
  (*(v10 + 8))(v12, v9);
  sub_75F1C0();
  sub_BD88(&qword_949590);
  v13 = sub_16194(&qword_959570, &qword_949590);
  sub_768710();
  v14 = v21;
  v20[1] = v13;
  sub_768720();

  sub_BEB8(v31);
  (*(v29 + 8))(v14, v30);
  sub_761830();
  sub_BD88(&qword_9495E0);
  sub_16194(&qword_9495E8, &qword_9495E0);
  sub_768710();
  v15 = v22;
  sub_768720();

  sub_BEB8(v31);
  (*(v23 + 8))(v15, v24);
  sub_75F220();
  sub_BD88(&unk_959610);
  sub_16194(&qword_9495A8, &unk_959610);
  sub_768710();
  v16 = v25;
  sub_768720();

  sub_BEB8(v31);
  (*(v26 + 8))(v16, v27);
  if (*(v0 + qword_9593D0))
  {

    sub_768710();
    v17 = v28;
    sub_768720();

    sub_BEB8(v31);
    v18 = 0;
  }

  else
  {
    v18 = 1;
    v17 = v28;
  }

  (*(v29 + 56))(v17, v18, 1, v30);
  return sub_10A2C(v17, &qword_949570);
}

uint64_t sub_1BC724()
{
  v1 = sub_BD88(&qword_949570);
  __chkstk_darwin(v1 - 8);
  v28 = v20 - v2;
  v3 = sub_BD88(&unk_9595F0);
  v26 = *(v3 - 8);
  v27 = v3;
  __chkstk_darwin(v3);
  v25 = v20 - v4;
  v5 = sub_BD88(&qword_949578);
  v23 = *(v5 - 8);
  v24 = v5;
  __chkstk_darwin(v5);
  v22 = v20 - v6;
  v7 = sub_BD88(&qword_949580);
  v29 = *(v7 - 8);
  v30 = v7;
  __chkstk_darwin(v7);
  v21 = v20 - v8;
  v9 = sub_BD88(&qword_942CA0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v20 - v11;
  v20[2] = *(v0 + qword_99E1A8);
  sub_75F1B0();
  sub_BD88(&unk_959600);
  sub_16194(&qword_942CA8, &unk_959600);
  sub_768710();
  sub_BD88(&qword_949588);
  sub_768720();

  sub_BEB8(v31);
  (*(v10 + 8))(v12, v9);
  sub_75F1C0();
  sub_BD88(&qword_949590);
  v13 = sub_16194(&qword_959570, &qword_949590);
  sub_768710();
  v14 = v21;
  v20[1] = v13;
  sub_768720();

  sub_BEB8(v31);
  (*(v29 + 8))(v14, v30);
  sub_761830();
  sub_BD88(&qword_949598);
  sub_16194(&qword_9495A0, &qword_949598);
  sub_768710();
  v15 = v22;
  sub_768720();

  sub_BEB8(v31);
  (*(v23 + 8))(v15, v24);
  sub_75F220();
  sub_BD88(&unk_959610);
  sub_16194(&qword_9495A8, &unk_959610);
  sub_768710();
  v16 = v25;
  sub_768720();

  sub_BEB8(v31);
  (*(v26 + 8))(v16, v27);
  if (*(v0 + qword_9593D0))
  {

    sub_768710();
    v17 = v28;
    sub_768720();

    sub_BEB8(v31);
    v18 = 0;
  }

  else
  {
    v18 = 1;
    v17 = v28;
  }

  (*(v29 + 56))(v17, v18, 1, v30);
  return sub_10A2C(v17, &qword_949570);
}

void sub_1BCDCC(uint64_t a1, void (*a2)(char *), uint64_t *a3, uint64_t a4, unint64_t *a5)
{
  v33 = a5;
  v34 = a4;
  v32 = a3;
  v7 = v5;
  v31 = sub_BD88(&unk_9595E0);
  v9 = *(v31 - 8);
  __chkstk_darwin(v31);
  v11 = &v30 - v10;
  v12 = sub_BD88(&qword_9495B8);
  __chkstk_darwin(v12 - 8);
  v14 = &v30 - v13;
  v15 = sub_BD88(&unk_959560);
  v16 = *(v15 - 8);
  (*(v16 + 16))(v14, a1, v15);
  (*(v16 + 56))(v14, 0, 1, v15);
  a2(v14);
  sub_10A2C(v14, &qword_9495B8);
  v17 = sub_75B040();
  v18 = qword_9593C8;
  if (v17)
  {
    swift_beginAccess();
    v19 = *&v7[v18];
    if (!v19)
    {
      goto LABEL_7;
    }

    v20 = v19;
    sub_75B030();
    sub_762D20();
  }

  else
  {
    swift_beginAccess();
    v21 = *&v7[v18];
    if (!v21)
    {
      goto LABEL_7;
    }

    v20 = v21;
    sub_75B030();
    sub_75B050();
    sub_762D90();
  }

  (*(v9 + 8))(v11, v31);
LABEL_7:
  v22 = v32;
  sub_BD88(v32);
  sub_16194(v33, v22);
  sub_764690();
  v23 = [v7 collectionView];
  if (!v23)
  {
    __break(1u);
    goto LABEL_16;
  }

  v24 = v23;
  v25 = [v23 window];

  if (v25)
  {

    v26 = [v7 collectionView];
    if (!v26)
    {
LABEL_17:
      __break(1u);
      return;
    }

    v27 = v26;
    sub_75FA20();
  }

  v28 = [v7 view];
  if (!v28)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v29 = v28;
  [v28 bounds];

  sub_763A70();
  if (sub_75B020())
  {
    sub_75A0E0();
  }
}

void sub_1BD1E4(uint64_t a1, uint64_t a2)
{
  v64 = a1;
  v3 = sub_757640();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v63 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_BD88(&unk_93F980);
  __chkstk_darwin(v6 - 8);
  v61 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v59 - v9;
  __chkstk_darwin(v11);
  v13 = &v59 - v12;
  v14 = sub_768430();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = (&v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1ED18(a2, v97, &unk_93FBD0);
  if (v98)
  {
    sub_BE70(0, &qword_93E550);
    if (swift_dynamicCast())
    {
      v18 = v66;
      [v18 bounds];
      LOBYTE(v91) = 1;
      *&v73 = v18;
      *(&v73 + 1) = v19;
      *&v74 = v20;
      *(&v74 + 1) = v21;
      *&v75 = v22;
      BYTE8(v75) = 1;
      __asm { FMOV            V0.2D, #10.0 }

      v76 = _Q0;
      v77 = _Q0;
      v78 = 15;
      sub_BE70(0, &qword_940340);
      *v17 = sub_769970();
      (*(v15 + 104))(v17, enum case for DispatchPredicate.onQueue(_:), v14);
      v28 = sub_768460();
      (*(v15 + 8))(v17, v14);
      if (v28)
      {
        v81 = xmmword_94DD18;
        v82 = xmmword_94DD28;
        v83 = xmmword_94DD38;
        v79 = xmmword_94DCF8;
        v80 = xmmword_94DD08;
        v87 = v75;
        v88 = v76;
        v89 = v77;
        v85 = v73;
        v86 = v74;
        v91 = xmmword_94DCF8;
        v92 = xmmword_94DD08;
        v94 = xmmword_94DD28;
        v95 = xmmword_94DD38;
        v84 = qword_94DD48;
        v90 = v78;
        v96 = qword_94DD48;
        v93 = xmmword_94DD18;
        sub_1ED18(&v79, &v67, &unk_93FEF0);
        xmmword_94DD18 = v87;
        xmmword_94DD28 = v88;
        xmmword_94DD38 = v89;
        qword_94DD48 = v90;
        xmmword_94DCF8 = v85;
        xmmword_94DD08 = v86;
        sub_10A2C(&v91, &unk_93FEF0);
        v29 = *&v65[OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_objectGraph];
        v30 = sub_BD88(&unk_93F630);
        sub_45C2C(&v73, &v67);
        sub_768860();
        v31 = *(v30 - 8);
        if ((*(v31 + 48))(v13, 1, v30) == 1)
        {
          sub_10A2C(v13, &unk_93F980);
        }

        else
        {
          sub_32A6C0(v64, 1, v29, v13);
          (*(v31 + 8))(v13, v30);
        }

        v69 = xmmword_94DD18;
        v70 = xmmword_94DD28;
        v71 = xmmword_94DD38;
        v72 = qword_94DD48;
        v67 = xmmword_94DCF8;
        v68 = xmmword_94DD08;
        xmmword_94DCF8 = v79;
        xmmword_94DD08 = v80;
        xmmword_94DD18 = v81;
        xmmword_94DD28 = v82;
        xmmword_94DD38 = v83;
        qword_94DD48 = v84;
        sub_10A2C(&v67, &unk_93FEF0);
        sub_45C88(&v73);

        return;
      }

      __break(1u);
      goto LABEL_27;
    }

    v62 = v4;
    v32 = v3;
  }

  else
  {
    v62 = v4;
    v32 = v3;
    sub_10A2C(v97, &unk_93FBD0);
  }

  v33 = [v65 collectionView];
  if (!v33)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v34 = v33;
  v35 = [v33 indexPathsForSelectedItems];

  if (!v35)
  {
LABEL_20:
    v56 = *&v65[OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_objectGraph];
    v57 = sub_BD88(&unk_93F630);
    sub_768860();
    v58 = *(v57 - 8);
    if ((*(v58 + 48))(v10, 1, v57) == 1)
    {
      sub_10A2C(v10, &unk_93F980);
    }

    else
    {
      sub_32A6C0(v64, 1, v56, v10);

      (*(v58 + 8))(v10, v57);
    }

    return;
  }

  v36 = sub_769460();

  if (!*(v36 + 16))
  {

    goto LABEL_20;
  }

  v37 = v63;
  v38 = *(v62 + 16);
  v39 = v36 + ((*(v62 + 80) + 32) & ~*(v62 + 80));
  v60 = v32;
  v38(v63, v39, v32);

  v40 = [v65 collectionView];
  if (!v40)
  {
LABEL_29:
    __break(1u);
    return;
  }

  v41 = v40;
  isa = sub_757550().super.isa;
  v43 = [v41 cellForItemAtIndexPath:isa];

  if (!v43)
  {
    (*(v62 + 8))(v37, v60);
    goto LABEL_20;
  }

  v44 = v43;
  [v44 bounds];
  LOBYTE(v91) = 1;
  *&v73 = v43;
  *(&v73 + 1) = v45;
  *&v74 = v46;
  *(&v74 + 1) = v47;
  *&v75 = v48;
  BYTE8(v75) = 1;
  __asm { FMOV            V0.2D, #10.0 }

  v76 = _Q0;
  v77 = _Q0;
  v78 = 15;
  sub_BE70(0, &qword_940340);
  *v17 = sub_769970();
  (*(v15 + 104))(v17, enum case for DispatchPredicate.onQueue(_:), v14);
  v50 = sub_768460();
  (*(v15 + 8))(v17, v14);
  v51 = v62;
  if ((v50 & 1) == 0)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v81 = xmmword_94DD18;
  v82 = xmmword_94DD28;
  v83 = xmmword_94DD38;
  v79 = xmmword_94DCF8;
  v80 = xmmword_94DD08;
  v87 = v75;
  v88 = v76;
  v89 = v77;
  v85 = v73;
  v86 = v74;
  v91 = xmmword_94DCF8;
  v92 = xmmword_94DD08;
  v94 = xmmword_94DD28;
  v95 = xmmword_94DD38;
  v84 = qword_94DD48;
  v90 = v78;
  v96 = qword_94DD48;
  v93 = xmmword_94DD18;
  sub_1ED18(&v79, &v67, &unk_93FEF0);
  xmmword_94DD18 = v87;
  xmmword_94DD28 = v88;
  xmmword_94DD38 = v89;
  qword_94DD48 = v90;
  xmmword_94DCF8 = v85;
  xmmword_94DD08 = v86;
  sub_10A2C(&v91, &unk_93FEF0);
  v52 = *&v65[OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_objectGraph];
  v53 = sub_BD88(&unk_93F630);
  sub_45C2C(&v73, &v67);
  v54 = v61;
  sub_768860();
  v55 = *(v53 - 8);
  if ((*(v55 + 48))(v54, 1, v53) == 1)
  {
    sub_10A2C(v54, &unk_93F980);
  }

  else
  {
    sub_32A6C0(v64, 1, v52, v54);
    (*(v55 + 8))(v54, v53);
  }

  v69 = xmmword_94DD18;
  v70 = xmmword_94DD28;
  v71 = xmmword_94DD38;
  v72 = qword_94DD48;
  v67 = xmmword_94DCF8;
  v68 = xmmword_94DD08;
  xmmword_94DCF8 = v79;
  xmmword_94DD08 = v80;
  xmmword_94DD18 = v81;
  xmmword_94DD28 = v82;
  xmmword_94DD38 = v83;
  qword_94DD48 = v84;
  sub_10A2C(&v67, &unk_93FEF0);
  sub_45C88(&v73);

  (*(v51 + 8))(v63, v60);
}

char *sub_1BDC08(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  *(v2 + qword_948E58) = 0x4024000000000000;
  *(v2 + qword_948E60) = 0;
  *(v2 + qword_948E68) = 0;
  *(v2 + qword_99B758) = 0;
  *(v2 + qword_99B760) = 0;
  *(v2 + qword_99B768) = 0;
  v6 = qword_99B770;
  type metadata accessor for ProductTitleView();
  *(v3 + v6) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v3 + qword_99B778) = 0;
  *(v3 + qword_948E70) = 0;
  *(v3 + qword_99B780) = 0;
  *(v3 + qword_99B788) = 0;
  *(v3 + qword_948E80) = 0;
  v7 = qword_948E90;
  type metadata accessor for ProductPageExtensionBannerScrollObserver();
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v8 + 24) = 1;
  *(v8 + 40) = 0;
  swift_unknownObjectWeakInit();
  *(v3 + v7) = v8;
  *(v3 + qword_948E98) = 0;
  *(v3 + qword_948EA0) = &_swiftEmptySetSingleton;
  sub_75A920();
  sub_768880();
  *(v3 + qword_948E78) = sub_75A6F0() & 1;
  sub_7634F0();
  sub_768880();
  *(v3 + qword_948E88) = v19;

  v9 = sub_467808(a1, a2);
  v10 = qword_99E1D8;
  v11 = *&v9[qword_99E1D8];
  v12 = v9;
  v13 = v11;
  sub_1BDF88();
  sub_1C61D8(&qword_9494A0, type metadata accessor for ProductTopLockupCollectionElementsObserver);
  sub_75FA40();

  v14 = *&v9[v10];

  sub_75FA40();

  v15 = *&v9[v10];

  v16 = qword_948E90;
  sub_1C61D8(&qword_9494A8, type metadata accessor for ProductPageExtensionBannerScrollObserver);

  sub_75FA40();

  v17 = *&v12[v16];
  sub_BD88(&qword_9494B0);

  sub_768860();

  *(v17 + 40) = v20;
  swift_unknownObjectWeakAssign();

  swift_unknownObjectRelease();
  return v12;
}

uint64_t sub_1BDF88()
{
  v1 = qword_948E98;
  if (*&v0[qword_948E98])
  {
    v2 = *&v0[qword_948E98];
  }

  else
  {
    type metadata accessor for ProductTopLockupCollectionElementsObserver();
    swift_allocObject();

    v3 = v0;
    v2 = sub_299350();

    *&v0[v1] = v2;
  }

  return v2;
}

uint64_t sub_1BE06C()
{
  v1 = qword_948E68;
  if (*(v0 + qword_948E68))
  {
    v2 = *(v0 + qword_948E68);
  }

  else
  {
    type metadata accessor for UberedPageScrollObserver();
    v2 = swift_allocObject();
    *(v2 + 24) = 0;
    swift_unknownObjectWeakInit();
    *(v2 + 80) = 0;
    *(v2 + 48) = 0u;
    *(v2 + 64) = 0u;
    *(v2 + 32) = 0u;
    *(v2 + 88) = 1;
    *(v2 + 24) = &off_8874C0;
    swift_unknownObjectWeakAssign();
    v3 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v4 = *(v2 + 72);
    *(v2 + 72) = sub_1C4ACC;
    *(v2 + 80) = v3;

    sub_F704(v4);

    *(v0 + v1) = v2;
  }

  return v2;
}

void sub_1BE180()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_768C60();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v39[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_759950();
  v8 = *(v7 - 8);
  *&v9 = __chkstk_darwin(v7).n128_u64[0];
  v11 = &v39[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42.receiver = v1;
  v42.super_class = ObjectType;
  objc_msgSendSuper2(&v42, "viewDidLoad", v9);
  (*(v8 + 104))(v11, enum case for SystemImage.squareAndArrowUp(_:), v7);
  v12 = sub_759930();
  (*(v8 + 8))(v11, v7);
  v13 = [objc_allocWithZone(UIBarButtonItem) initWithImage:v12 style:0 target:v1 action:"share:"];

  [v13 setHidden:1];
  v14 = v13;
  v43._object = 0x80000000007D3AB0;
  v43._countAndFlagsBits = 0xD00000000000002ALL;
  v45._countAndFlagsBits = 0;
  v45._object = 0xE000000000000000;
  sub_75B750(v43, v45);
  v15 = sub_769210();

  [v14 setTitle:v15];

  v16 = v14;
  v44._countAndFlagsBits = 0xD00000000000002BLL;
  v44._object = 0x80000000007D3AE0;
  v46._countAndFlagsBits = 0;
  v46._object = 0xE000000000000000;
  sub_75B750(v44, v46);
  v17 = sub_769210();

  [v16 setAccessibilityLabel:v17];

  v18 = qword_948E70;
  v19 = *&v1[qword_948E70];
  *&v1[qword_948E70] = v16;
  v20 = v16;

  v21 = *&v1[v18];
  if (v21)
  {
    v40 = 0u;
    v41 = 0u;
    memset(v39, 0, sizeof(v39));
    v22 = v21;
    sub_768C10();
    sub_10A2C(v39, &unk_93FBD0);
    sub_10A2C(&v40, &unk_93FBD0);
    sub_BE70(0, &qword_947490);
    sub_769C70();

    (*(v4 + 8))(v6, v3);
  }

  v23 = [v1 navigationItem];
  v24 = [v23 rightBarButtonItems];

  if (v24)
  {
    sub_BE70(0, &qword_947490);
    v25 = sub_769460();
  }

  else
  {
    v25 = _swiftEmptyArrayStorage;
  }

  *&v39[0] = v25;
  if (v25 >> 62 && sub_76A860() < 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  v26 = v20;
  sub_4A7B58(0, 0, v26);

  v27 = [v1 navigationItem];
  sub_BE70(0, &qword_947490);
  isa = sub_769450().super.isa;
  [v27 setRightBarButtonItems:isa];

  sub_1BE06C();
  sub_1C61D8(&qword_9495C8, type metadata accessor for UberedPageScrollObserver);
  sub_75FA40();

  v29 = [v1 navigationItem];
  [v29 setTitleView:*&v1[qword_99B770]];

  v30 = [v1 collectionView];
  if (!v30)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v31 = v30;
  v40 = 0u;
  v41 = 0u;
  sub_768C20();
  sub_10A2C(&v40, &unk_93FBD0);
  sub_769E70();

  (*(v4 + 8))(v6, v3);
  v32 = [v1 view];
  if (!v32)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v33 = v32;
  sub_BD88(&qword_9477F0);
  v34 = swift_allocObject();
  v38 = xmmword_77B6D0;
  *(v34 + 16) = xmmword_77B6D0;
  *(v34 + 32) = sub_767B80();
  *(v34 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_BE70(0, &qword_93E550);
  sub_769F40();
  swift_unknownObjectRelease();

  v35 = [v1 view];
  if (v35)
  {
    v36 = v35;

    v37 = swift_allocObject();
    *(v37 + 16) = v38;
    *(v37 + 32) = sub_767890();
    *(v37 + 40) = &protocol witness table for UITraitHorizontalSizeClass;
    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_769F40();
    swift_unknownObjectRelease();

    return;
  }

LABEL_15:
  __break(1u);
}

void sub_1BE8F4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong collectionViewLayout];
    [v2 invalidateLayout];

    v3 = [v1 collectionView];
    if (v3)
    {
      v4 = v3;
      [v3 reloadData];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1BE9A0()
{
  v0 = sub_7628A0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;

    v6 = [v5 traitCollection];
    v7 = sub_7699D0();

    v8 = &enum case for ProductDiffablePagePresenter.PageWidth.compact(_:);
    if ((v7 & 1) == 0)
    {
      v8 = &enum case for ProductDiffablePagePresenter.PageWidth.regular(_:);
    }

    (*(v1 + 104))(v3, *v8, v0);
    sub_762890();

    (*(v1 + 8))(v3, v0);
    v9 = [v5 collectionView];
    if (v9)
    {
      v10 = v9;
      [v9 reloadData];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1BEB58(void *a1)
{
  v1 = a1;
  sub_1BE180();
}

uint64_t sub_1BEBA0(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_7634E0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_761BC0();
  v10 = *(v9 - 8);
  *&v11 = __chkstk_darwin(v9).n128_u64[0];
  v13 = v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18.receiver = v2;
  v18.super_class = ObjectType;
  objc_msgSendSuper2(&v18, "viewWillAppear:", a1 & 1, v11);
  sub_1BEE1C();
  if (*(v2 + qword_948E78) == 1)
  {
    v14 = qword_948E80;
    if ((*(v2 + qword_948E80) & 1) == 0)
    {
      sub_761230();
      sub_768900();
      sub_768ED0();
      v15 = v17[1];
      *v13 = 1;
      (*(v10 + 104))(v13, enum case for EntitlementRefeshCondition.ifCacheIsExpired(_:), v9);
      sub_761220();

      (*(v10 + 8))(v13, v9);
      *(v2 + v14) = 1;
    }
  }

  (*(v6 + 104))(v8, enum case for AdvertRotationControllerProvider.AdvertDisplayingViewControllerState.willAppear(_:), v5);
  sub_7634A0();
  return (*(v6 + 8))(v8, v5);
}

void sub_1BEE1C()
{
  if (!*&v0[OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_overlayViewController])
  {
    v1 = [v0 navigationController];
    if (v1)
    {
      v2 = v1;
      v3 = [v1 navigationBar];

      if (v3)
      {

        *(sub_1BE06C() + 88) = 1;

        v4 = [v0 transitionCoordinator];
        if (v4)
        {
          v5 = v4;
          v6 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v16 = sub_1C61B4;
          v17 = v6;
          aBlock = _NSConcreteStackBlock;
          v13 = 1107296256;
          v14 = sub_6C6800;
          v15 = &unk_887878;
          v7 = _Block_copy(&aBlock);

          v8 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v16 = sub_1C61D0;
          v17 = v8;
          aBlock = _NSConcreteStackBlock;
          v13 = 1107296256;
          v14 = sub_6C6800;
          v15 = &unk_8878A0;
          v9 = _Block_copy(&aBlock);

          [v5 animateAlongsideTransition:v7 completion:v9];
          _Block_release(v9);
          _Block_release(v7);
          swift_unknownObjectRelease();
        }

        else
        {

          v10 = [v0 collectionView];
          if (v10)
          {
            v11 = v10;
            sub_66394(v10);
          }

          else
          {
            __break(1u);
          }
        }
      }
    }
  }
}

void sub_1BF09C(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_1BEBA0(a3);
}

uint64_t sub_1BF118(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_BD88(&unk_93F630);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19 - v7;
  v9 = sub_7634E0();
  v10 = *(v9 - 8);
  *&v11 = __chkstk_darwin(v9).n128_u64[0];
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19.receiver = v2;
  v19.super_class = ObjectType;
  objc_msgSendSuper2(&v19, "viewDidAppear:", a1 & 1, v11);
  v2[qword_99B760] = 1;
  v14 = qword_99B768;
  if ((v2[qword_99B768] & 1) == 0)
  {
    v15 = sub_762860();
    if (v15)
    {
      v16 = v15;
      v2[v14] = 1;
      v17 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_objectGraph];
      sub_768900();
      sub_768ED0();
      sub_32A6C0(v16, 1, v17, v8);

      (*(v6 + 8))(v8, v5);
    }
  }

  (*(v10 + 104))(v13, enum case for AdvertRotationControllerProvider.AdvertDisplayingViewControllerState.didAppear(_:), v9);
  sub_7634A0();
  return (*(v10 + 8))(v13, v9);
}

void sub_1BF380(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_1BF118(a3);
}

void sub_1BF3D4()
{
  v1 = [v0 presentedViewController];
  if (v1)
  {
  }

  else
  {
    if (*(v0 + qword_99B758) == 1)
    {
      sub_1BE06C();
      sub_65DEC();
    }

    else
    {
      v2 = [v0 transitionCoordinator];
      v3 = sub_1BE06C();
      if (v2)
      {
        v11 = sub_1C61A4;
        v12 = v3;
        v7 = _NSConcreteStackBlock;
        v8 = 1107296256;
        v9 = sub_6C6800;
        v10 = &unk_887828;
        v4 = _Block_copy(&v7);

        v5 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v11 = sub_1C61AC;
        v12 = v5;
        v7 = _NSConcreteStackBlock;
        v8 = 1107296256;
        v9 = sub_6C6800;
        v10 = &unk_887850;
        v6 = _Block_copy(&v7);

        [v2 animateAlongsideTransition:v4 completion:v6];
        _Block_release(v6);
        _Block_release(v4);
        swift_unknownObjectRelease();
        return;
      }

      sub_65DEC();
    }
  }
}

void sub_1BF5FC(void *a1, uint64_t a2, uint64_t a3)
{
  v5.receiver = a1;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  objc_msgSendSuper2(&v5, "viewWillDisappear:", a3);
  sub_1BF3D4();
}

void sub_1BF674(void *a1, uint64_t a2, const char **a3, unsigned int *a4)
{
  ObjectType = swift_getObjectType();
  v8 = sub_7634E0();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14.receiver = a1;
  v14.super_class = ObjectType;
  v12 = *a3;
  v13 = a1;
  objc_msgSendSuper2(&v14, v12);
  (*(v9 + 104))(v11, *a4, v8);
  sub_7634A0();
  (*(v9 + 8))(v11, v8);
}

uint64_t sub_1BF7A8(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_7634E0();
  v6 = *(v5 - 8);
  *&v7 = __chkstk_darwin(v5).n128_u64[0];
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13.receiver = v2;
  v13.super_class = ObjectType;
  objc_msgSendSuper2(&v13, "viewDidDisappear:", a1 & 1, v7);
  v10 = *(v6 + 104);
  v10(v9, enum case for AdvertRotationControllerProvider.AdvertDisplayingViewControllerState.willDisappear(_:), v5);
  sub_7634A0();
  v11 = *(v6 + 8);
  v11(v9, v5);
  if ([v2 isMovingFromParentViewController])
  {
    v10(v9, enum case for AdvertRotationControllerProvider.AdvertDisplayingViewControllerState.willBeDiscarded(_:), v5);
    sub_7634A0();
    v11(v9, v5);
  }

  return sub_1BF934();
}

uint64_t sub_1BF934()
{
  v1 = sub_BD88(&unk_93F980);
  __chkstk_darwin(v1 - 8);
  v3 = &v9 - v2;
  result = sub_762920();
  if (result)
  {
    v5 = result;
    v6 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_objectGraph);
    v7 = sub_BD88(&unk_93F630);
    sub_768860();
    v8 = *(v7 - 8);
    if ((*(v8 + 48))(v3, 1, v7) == 1)
    {

      return sub_10A2C(v3, &unk_93F980);
    }

    else
    {
      sub_32A6C0(v5, 1, v6, v3);

      return (*(v8 + 8))(v3, v7);
    }
  }

  return result;
}

void sub_1BFAB8(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_1BF7A8(a3);
}

void sub_1BFB0C(void *a1, double a2, double a3)
{
  v18.receiver = v3;
  v18.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v18, "viewWillTransitionToSize:withTransitionCoordinator:", a1, a2, a3);
  if ([v3 isViewLoaded])
  {
    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v16 = sub_1C65C0;
    v17 = v7;
    v12 = _NSConcreteStackBlock;
    v13 = 1107296256;
    v14 = sub_6C6800;
    v15 = &unk_8877B0;
    v8 = _Block_copy(&v12);

    [a1 animateAlongsideTransition:v8 completion:0];
    _Block_release(v8);
    v9 = swift_allocObject();
    *(v9 + 16) = v3;
    v16 = sub_1C619C;
    v17 = v9;
    v12 = _NSConcreteStackBlock;
    v13 = 1107296256;
    v14 = sub_6C6800;
    v15 = &unk_887800;
    v10 = _Block_copy(&v12);
    v11 = v3;

    [a1 animateAlongsideTransition:0 completion:v10];
    _Block_release(v10);
  }
}

void sub_1BFCD8(uint64_t a1, void *a2)
{
  v3 = sub_7628A0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_762880();
  v7 = [a2 traitCollection];
  v8 = sub_7699D0();

  v9 = &enum case for ProductDiffablePagePresenter.PageWidth.compact(_:);
  if ((v8 & 1) == 0)
  {
    v9 = &enum case for ProductDiffablePagePresenter.PageWidth.regular(_:);
  }

  (*(v4 + 104))(v6, *v9, v3);
  sub_762890();
  (*(v4 + 8))(v6, v3);
  v10 = [a2 collectionView];
  if (v10)
  {
    v11 = v10;
    [v10 reloadData];
  }

  else
  {
    __break(1u);
  }
}

void sub_1BFE5C(void *a1, double a2, double a3, uint64_t a4, void *a5)
{
  swift_unknownObjectRetain();
  v9 = a1;
  sub_1BFB0C(a5, a2, a3);
  swift_unknownObjectRelease();
}

void sub_1BFF04(void *a1)
{
  v1 = a1;
  sub_1BFEDC();
}

uint64_t sub_1BFF74(unsigned int *a1, void (*a2)(void), unsigned int *a3)
{
  v20 = a1;
  v6 = v3;
  v7 = sub_7634E0();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_7587B0();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_lifecycleObserver;
  swift_beginAccess();
  sub_1ED18(v6 + v15, v22, &qword_93FED0);
  if (v23)
  {
    sub_134D8(v22, v21);
    sub_10A2C(v22, &qword_93FED0);
    v18 = a2;
    v19 = v7;
    sub_B170(v21, v21[3]);
    (*(v12 + 104))(v14, *v20, v11);
    a2 = v18;
    v7 = v19;
    sub_7587C0();
    (*(v12 + 8))(v14, v11);
    v16 = sub_BEB8(v21);
  }

  else
  {
    v16 = sub_10A2C(v22, &qword_93FED0);
  }

  a2(v16);
  (*(v8 + 104))(v10, *a3, v7);
  sub_7634A0();
  return (*(v8 + 8))(v10, v7);
}

void sub_1C0218(void *a1)
{
  v1 = a1;
  sub_1BFF4C();
}

uint64_t sub_1C0260@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for BaseShelfComponentTypeMappingProvider();
  v3 = swift_allocObject();
  type metadata accessor for AppPromotionsShelfComponentTypeMappingProvider();
  *(v3 + 16) = swift_allocObject();
  type metadata accessor for SmallStoryCardShelfComponentTypeMappingProvider();
  *(v3 + 24) = swift_allocObject();
  a1[3] = v2;
  result = sub_1C61D8(&qword_9495C0, type metadata accessor for BaseShelfComponentTypeMappingProvider);
  a1[4] = result;
  *a1 = v3;
  return result;
}

uint64_t sub_1C0314()
{
  v17[2] = swift_getObjectType();
  v1 = sub_BD88(&qword_949530);
  v22 = *(v1 - 8);
  v23 = v1;
  __chkstk_darwin(v1);
  v21 = v17 - v2;
  v3 = sub_BD88(&qword_949538);
  v19 = *(v3 - 8);
  v20 = v3;
  __chkstk_darwin(v3);
  v18 = v17 - v4;
  v5 = sub_BD88(&qword_942CA0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v17 - v7;
  sub_1BC724();
  v9 = *(v0 + qword_99E1A8);
  v17[0] = v0;
  v17[1] = v9;
  sub_75F1B0();
  v10 = sub_BE70(0, &qword_940340);
  v11 = sub_769970();
  v25 = v10;
  v26 = &protocol witness table for OS_dispatch_queue;
  v24[0] = v11;
  sub_BD88(&unk_959600);
  sub_16194(&qword_942CA8, &unk_959600);
  sub_768720();

  (*(v6 + 8))(v8, v5);
  sub_BEB8(v24);
  sub_762900();
  v12 = sub_769970();
  v25 = v10;
  v26 = &protocol witness table for OS_dispatch_queue;
  v24[0] = v12;
  sub_BD88(&qword_949540);
  sub_16194(&qword_949548, &qword_949540);
  v13 = v18;
  sub_768720();

  (*(v19 + 8))(v13, v20);
  sub_BEB8(v24);
  sub_762940();
  v14 = sub_769970();
  v25 = v10;
  v26 = &protocol witness table for OS_dispatch_queue;
  v24[0] = v14;
  sub_BD88(&qword_949550);
  sub_16194(&qword_949558, &qword_949550);
  v15 = v21;
  sub_768720();

  (*(v22 + 8))(v15, v23);
  return sub_BEB8(v24);
}

uint64_t sub_1C0778(uint64_t a1)
{
  v2 = sub_BD88(&qword_93FF28);
  __chkstk_darwin(v2 - 8);
  v73 = v70 - v3;
  v4 = sub_BD88(&unk_959540);
  v74 = *(v4 - 8);
  v75 = v4;
  __chkstk_darwin(v4);
  v72 = v70 - v5;
  v6 = sub_757640();
  v78 = *(v6 - 8);
  v79 = v6;
  __chkstk_darwin(v6);
  v77 = v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_BD88(&qword_949568);
  __chkstk_darwin(v8 - 8);
  v81 = v70 - v9;
  v10 = sub_762BD0();
  v11 = *(v10 - 8);
  v82 = v10;
  v83 = v11;
  __chkstk_darwin(v10);
  v76 = v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_BD88(&qword_963790);
  __chkstk_darwin(v13 - 8);
  v87 = v70 - v14;
  v84 = sub_764930();
  v86 = *(v84 - 8);
  __chkstk_darwin(v84);
  v71 = v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v80 = v70 - v17;
  __chkstk_darwin(v18);
  v85 = v70 - v19;
  v20 = sub_BD88(&qword_93FF08);
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = v70 - v22;
  v24 = sub_BD88(&unk_9595E0);
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = v70 - v26;
  v28 = sub_BD88(&unk_959560);
  v29 = a1;
  sub_75B030();
  sub_764410();
  v30 = *(v25 + 8);
  v30(v27, v24);
  v31 = sub_7678E0();
  (*(v21 + 8))(v23, v20);
  if (v31 < 1)
  {
    goto LABEL_10;
  }

  v70[2] = v28;
  sub_75B030();
  v32 = v87;
  sub_764430();
  v30(v27, v24);
  v33 = sub_BD88(&unk_94F1F0);
  v34 = *(v33 - 8);
  if ((*(v34 + 48))(v32, 1, v33) == 1)
  {
    v35 = &qword_963790;
    v36 = v32;
LABEL_9:
    sub_10A2C(v36, v35);
    goto LABEL_10;
  }

  v70[1] = v29;
  swift_getKeyPath();
  v37 = v80;
  sub_768750();

  (*(v34 + 8))(v32, v33);
  v39 = v85;
  v38 = v86;
  v40 = v84;
  (*(v86 + 32))(v85, v37, v84);
  v41 = qword_9593C8;
  v42 = v88;
  swift_beginAccess();
  v43 = *(v42 + v41);
  if (!v43)
  {
    (*(v38 + 8))(v39, v40);
    swift_endAccess();
    v47 = v81;
    (*(v83 + 56))(v81, 1, 1, v82);
    goto LABEL_8;
  }

  swift_endAccess();
  v44 = v43;
  v45 = v77;
  sub_7575B0();
  v46 = v81;
  sub_767A40();

  v47 = v46;
  v87 = *(v78 + 8);
  (v87)(v45, v79);
  v49 = v82;
  v48 = v83;
  if ((*(v83 + 48))(v46, 1, v82) == 1)
  {
    (*(v86 + 8))(v85, v40);
LABEL_8:
    v35 = &qword_949568;
    v36 = v47;
    goto LABEL_9;
  }

  v51 = v76;
  (*(v48 + 32))(v76, v46, v49);
  sub_75B030();
  v52 = v30;
  v53 = v73;
  sub_764420();
  v54 = v27;
  v55 = v53;
  v52(v54, v24);
  v56 = v74;
  v57 = v53;
  v58 = v75;
  if ((*(v74 + 48))(v57, 1, v75) == 1)
  {
    (*(v48 + 8))(v51, v49);
    (*(v86 + 8))(v85, v84);
    v35 = &qword_93FF28;
    v36 = v55;
    goto LABEL_9;
  }

  v59 = v72;
  (*(v56 + 32))(v72, v55, v58);
  v61 = v85;
  v60 = v86;
  v62 = v71;
  v63 = v84;
  (*(v86 + 16))(v71, v85, v84);
  if ((*(v60 + 88))(v62, v63) != enum case for Shelf.ContentType.productTopLockup(_:))
  {
    (*(v56 + 8))(v59, v58);
    (*(v83 + 8))(v76, v49);
    v69 = *(v60 + 8);
    v69(v61, v63);
    *(v88 + qword_948EA0) = &_swiftEmptySetSingleton;

    return (v69)(v62, v63);
  }

  sub_768760();
  sub_BD88(&unk_944DA0);
  sub_75C040();
  v64 = swift_dynamicCast();
  v65 = v76;
  if (v64)
  {
    if (sub_75BFE0())
    {

      sub_BD88(&unk_941A18);
      v66 = (*(v78 + 80) + 32) & ~*(v78 + 80);
      v67 = swift_allocObject();
      *(v67 + 16) = xmmword_77B6D0;
      sub_7575B0();
      v68 = sub_1A275C(v67);
      swift_setDeallocating();
      (v87)(v67 + v66, v79);
      swift_deallocClassInstance();

      (*(v56 + 8))(v59, v58);
      (*(v83 + 8))(v65, v49);
      (*(v86 + 8))(v85, v84);
      *(v88 + qword_948EA0) = v68;
    }
  }

  (*(v56 + 8))(v59, v58);
  (*(v83 + 8))(v65, v49);
  (*(v86 + 8))(v85, v84);
LABEL_10:
  *(v88 + qword_948EA0) = &_swiftEmptySetSingleton;
}

uint64_t (*sub_1C129C(void *a1))(uint64_t a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_1C6094;
}

void sub_1C1300(uint64_t a1)
{
  v64 = sub_757640();
  v2 = *(v64 - 8);
  __chkstk_darwin(v64);
  v4 = &v62 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v62 - v6;
  v8 = sub_761570();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v12, a1, v8, v10);
  v13 = (*(v9 + 88))(v12, v8);
  if (v13 == enum case for ProductPageScrollPosition.topOfPage(_:))
  {
    (*(v9 + 96))(v12, v8);
    v14 = *v12;
    v15 = *(*v12 + 16);
    if (!v15)
    {
LABEL_7:
      v20 = [v65 collectionView];
      if (v20)
      {
        v21 = v20;

        [v21 setContentOffset:1 animated:{0.0, 0.0}];

        return;
      }

      goto LABEL_31;
    }

    v16 = 0;
    while (v16 < *(v14 + 16))
    {
      v17 = [v65 collectionView];
      if (!v17)
      {
        goto LABEL_29;
      }

      v18 = v17;
      ++v16;
      sub_7575B0();
      isa = sub_757550().super.isa;
      (*(v2 + 8))(v7, v64);
      [v18 scrollToItemAtIndexPath:isa atScrollPosition:0 animated:1];

      if (v15 == v16)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (v13 != enum case for ProductPageScrollPosition.topOfIndexPath(_:))
  {
    (*(v9 + 8))(v12, v8);
    return;
  }

  (*(v9 + 96))(v12, v8);
  v22 = sub_BD88(&qword_949560);
  v23 = v12[*(v22 + 48)];
  v24 = *&v12[*(v22 + 64)];
  (*(v2 + 32))(v4, v12, v64);
  v25 = [v65 collectionView];
  if (!v25)
  {
    goto LABEL_32;
  }

  v26 = v25;
  v27 = sub_757550().super.isa;
  v28 = [v26 layoutAttributesForItemAtIndexPath:v27];

  if (!v28)
  {
    goto LABEL_23;
  }

  [v28 frame];
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;

  if (v23)
  {
LABEL_15:
    v63 = v4;
    v41 = *(v24 + 16);
    if (!v41)
    {
LABEL_20:
      v46 = [v65 navigationController];
      if (v46)
      {
        v47 = v46;
        v48 = [v46 navigationBar];

        [v48 frame];
        v50 = v49;
        v52 = v51;
        v54 = v53;
        v56 = v55;

        v67.origin.x = v50;
        v67.origin.y = v52;
        v67.size.width = v54;
        v67.size.height = v56;
        MaxY = CGRectGetMaxY(v67);
      }

      else
      {
        MaxY = 0.0;
      }

      v58 = v63;
      v68.origin.x = v30;
      v68.origin.y = v32;
      v68.size.width = v34;
      v68.size.height = v36;
      MinY = CGRectGetMinY(v68);
      v60 = [v65 collectionView];
      if (v60)
      {
        v61 = v60;

        [v61 setContentOffset:1 animated:{0.0, MinY - MaxY}];

        (*(v2 + 8))(v58, v64);
        return;
      }

      goto LABEL_33;
    }

    v42 = 0;
    while (v42 < *(v24 + 16))
    {
      v43 = [v65 collectionView];
      if (!v43)
      {
        goto LABEL_30;
      }

      v44 = v43;
      ++v42;
      sub_7575B0();
      v45 = sub_757550().super.isa;
      (*(v2 + 8))(v7, v64);
      [v44 scrollToItemAtIndexPath:v45 atScrollPosition:0 animated:1];

      if (v41 == v42)
      {
        goto LABEL_20;
      }
    }

    goto LABEL_28;
  }

  v37 = [v65 collectionView];
  if (v37)
  {
    v38 = v37;
    [v37 contentOffset];
    v40 = v39;

    v66.origin.x = v30;
    v66.origin.y = v32;
    v66.size.width = v34;
    v66.size.height = v36;
    if (CGRectGetMinY(v66) < v40)
    {
      goto LABEL_15;
    }

LABEL_23:
    (*(v2 + 8))(v4, v64);

    return;
  }

LABEL_34:
  __break(1u);
}

void (*sub_1C1924(void *a1))(uint64_t a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_1C6070;
}

uint64_t (*sub_1C1988(void *a1))(void *a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1C6030;
  *(v3 + 24) = v2;
  v4 = a1;
  return sub_B311C;
}

unint64_t sub_1C1A18@<X0>(uint64_t *a1@<X8>)
{
  sub_75A3C0();
  swift_allocObject();
  v2 = sub_75A3B0();
  swift_allocObject();
  v3 = sub_75A3B0();
  a1[3] = &type metadata for ProductPageGridProvider;
  result = sub_1C5FDC();
  a1[4] = result;
  *a1 = v2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C1A98@<X0>(uint64_t *a1@<X8>)
{
  swift_getObjectType();
  sub_1C61D8(&qword_9494E8, type metadata accessor for ProductDiffablePageViewController);
  v2 = sub_763A60();
  v18[3] = swift_getObjectType();
  v18[0] = v2;
  v3 = sub_763A50();
  v19[3] = swift_getObjectType();
  v19[0] = v3;
  sub_132B4(v18, v17);
  sub_13310(v17, v16);
  sub_BD88(&qword_93F1C8);
  if (swift_dynamicCast() && *&v15[0])
  {
    v14 = v15[0];
    v4 = _swiftEmptyArrayStorage;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_7ACBC(0, _swiftEmptyArrayStorage[2] + 1, 1, _swiftEmptyArrayStorage);
    }

    v6 = v4[2];
    v5 = v4[3];
    if (v6 >= v5 >> 1)
    {
      v4 = sub_7ACBC((v5 > 1), v6 + 1, 1, v4);
    }

    v4[2] = v6 + 1;
    *&v4[2 * v6 + 4] = v14;
  }

  else
  {
    v4 = _swiftEmptyArrayStorage;
  }

  sub_132B4(v19, v17);
  sub_13310(v17, v16);
  sub_BD88(&qword_93F1C8);
  if (swift_dynamicCast() && *&v15[0])
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_7ACBC(0, v4[2] + 1, 1, v4);
    }

    v8 = v4[2];
    v7 = v4[3];
    v9 = v15[0];
    if (v8 >= v7 >> 1)
    {
      v13 = sub_7ACBC((v7 > 1), v8 + 1, 1, v4);
      v9 = v15[0];
      v4 = v13;
    }

    v4[2] = v8 + 1;
    *&v4[2 * v8 + 4] = v9;
  }

  swift_arrayDestroy();
  sub_763A80();
  v10 = type metadata accessor for ProductPageLayoutSectionProvider();
  swift_allocObject();
  sub_134D8(v17, v16);
  sub_134D8(v16, v15);

  v11 = sub_762B60();
  sub_BEB8(v16);
  result = sub_BEB8(v17);
  a1[3] = v10;
  a1[4] = &protocol witness table for BasePageLayoutSectionProvider;
  *a1 = v11;
  return result;
}

unint64_t sub_1C1DAC@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 24) = &type metadata for ProductPageShelfLayoutSpacingProvider;
  result = sub_1C5F88();
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1C1DE0()
{
  v1 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_objectGraph);
  type metadata accessor for ProductPageShelfSupplementaryProvider();
  v2 = swift_allocObject();
  v3 = sub_1C61D8(&qword_9494F8, &type metadata accessor for ProductDiffablePagePresenter);
  *(v2 + 32) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + 32) = v3;
  swift_unknownObjectWeakAssign();
  *(v2 + 16) = v1;
  sub_1C61D8(&qword_949518, type metadata accessor for ProductPageShelfSupplementaryProvider);

  return v2;
}

uint64_t sub_1C1EE0()
{
  swift_getObjectType();
  sub_1C61D8(&qword_9494E8, type metadata accessor for ProductDiffablePageViewController);
  sub_763A80();
  type metadata accessor for ProductPageItemSupplementaryViewProvider();
  v0 = swift_allocObject();
  sub_134D8(v3, v0 + 16);
  type metadata accessor for ProductPageSeparatorItemSupplementaryProvider();
  v1 = swift_allocObject();
  sub_10914(v3, v1 + 16);
  *(v0 + 56) = v1;
  sub_1C61D8(&qword_949510, type metadata accessor for ProductPageItemSupplementaryViewProvider);
  return v0;
}

id sub_1C1FDC()
{
  v1 = v0;
  swift_getObjectType();
  sub_5FCE98();
  sub_7637E0();
  if (swift_dynamicCastClass())
  {
    v2 = sub_7637B0();
    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
    swift_allocObject();
    v2 = sub_7637D0();
  }

  sub_BD88(&qword_93F1E8);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_780120;

  sub_1BE06C();
  type metadata accessor for UberedCollectionElementsObserver();
  v4 = swift_allocObject();
  swift_weakInit();
  *(v4 + 24) = 0;
  swift_weakAssign();

  v5 = sub_1C61D8(&qword_9494C8, type metadata accessor for UberedCollectionElementsObserver);
  *(v3 + 32) = v4;
  *(v3 + 40) = v5;
  v6 = *&v0[qword_948E90];
  v7 = sub_1C61D8(&qword_9494D0, type metadata accessor for ProductPageExtensionBannerScrollObserver);
  *(v3 + 48) = v6;
  *(v3 + 56) = v7;

  v8 = sub_1BDF88();
  v9 = sub_1C61D8(&qword_9494D8, type metadata accessor for ProductTopLockupCollectionElementsObserver);
  *(v3 + 64) = v8;
  *(v3 + 72) = v9;
  v10 = *&v1[qword_99E1B8];
  type metadata accessor for ProductMediaCollectionElementsObserver();
  v11 = swift_allocObject();
  swift_weakInit();
  swift_unknownObjectWeakInit();
  swift_weakAssign();
  swift_unknownObjectWeakAssign();
  *(v11 + 32) = v10;
  v12 = sub_1C61D8(&qword_9494E0, type metadata accessor for ProductMediaCollectionElementsObserver);
  *(v3 + 80) = v11;
  *(v3 + 88) = v12;
  sub_1C61D8(&qword_9494E8, type metadata accessor for ProductDiffablePageViewController);
  swift_retain_n();

  sub_763A80();
  sub_1C61D8(&qword_9494F0, &type metadata accessor for ProductDiffablePagePresenter);
  sub_1C61D8(&qword_9494F8, &type metadata accessor for ProductDiffablePagePresenter);
  type metadata accessor for ProductReviewSelectionHandlerCollectionElementsObserver();
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v13 + qword_94CC10) = 0;
  swift_unknownObjectWeakAssign();
  sub_134D8(v25, v13 + qword_94CC08);

  v14 = sub_764290();
  sub_BEB8(v25);
  *(v3 + 96) = v14;
  *(v3 + 104) = &protocol witness table for SelectionHandlerCollectionElementsObserver;
  type metadata accessor for NavigationBarVisibilityThresholdCollectionElementsObserver();
  v15 = swift_allocObject();
  *(v15 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v15 + 24) = &off_887490;
  swift_unknownObjectWeakAssign();
  v16 = sub_1C61D8(&qword_942C80, type metadata accessor for NavigationBarVisibilityThresholdCollectionElementsObserver);
  *(v3 + 112) = v15;
  *(v3 + 120) = v16;
  v17._rawValue = v3;
  sub_7637A0(v17);

  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_77DC20;
  sub_BD88(&qword_949500);
  swift_allocObject();
  swift_retain_n();
  v19 = sub_763BB0();
  v20 = sub_16194(&qword_949508, &qword_949500);
  *(v18 + 32) = v19;
  *(v18 + 40) = v20;
  type metadata accessor for BackgroundConfigurationCollectionElementsObserver();
  v21 = swift_allocObject();
  *(v21 + 16) = 3;
  v22 = sub_1C61D8(&qword_93F200, type metadata accessor for BackgroundConfigurationCollectionElementsObserver);
  *(v18 + 48) = v21;
  *(v18 + 56) = v22;
  sub_763A80();
  sub_761840();

  result = [v1 collectionView];
  if (result)
  {
    sub_764320();
    swift_allocObject();
    *(v18 + 64) = sub_764310();
    *(v18 + 72) = &protocol witness table for ImpressionsCollectionElementsObserver;
    v24._rawValue = v18;
    sub_7637A0(v24);

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

BOOL sub_1C264C()
{
  sub_7642A0();
  if (swift_dynamicCastClass())
  {
    return 1;
  }

  sub_763D10();
  return swift_dynamicCastClass() != 0;
}

uint64_t sub_1C26A4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_BD88(&unk_93F630);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - v6;
  v8 = sub_BD88(&qword_9494B8);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = (&v17 - v10);
  sub_600674(a1);
  (*(v9 + 16))(v11, a1, v8);
  if ((*(v9 + 88))(v11, v8) != enum case for DiffablePagePresenter.UpdatePhase.completed<A>(_:))
  {
    return (*(v9 + 8))(v11, v8);
  }

  (*(v9 + 96))(v11, v8);
  sub_1C2948(*v11);
  if (*(v1 + qword_99B760) == 1)
  {
    v12 = qword_99B768;
    if ((*(v1 + qword_99B768) & 1) == 0)
    {
      v13 = sub_762860();
      if (v13)
      {
        v14 = v13;
        *(v2 + v12) = 1;
        v15 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_objectGraph);
        sub_768900();
        sub_768ED0();
        sub_32A6C0(v14, 1, v15, v7);

        (*(v5 + 8))(v7, v4);
      }
    }
  }

  sub_1C2CF4();
}

void sub_1C2948(uint64_t a1)
{
  v17 = a1;
  v2 = sub_768380();
  v20 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_7683C0();
  v5 = *(v19 - 8);
  __chkstk_darwin(v19);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_7593E0();
  v18 = v1;
  sub_1C3310(v8);
  sub_BE70(0, &qword_940340);
  v9 = sub_769970();
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_1C5F18;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23F0CC;
  aBlock[3] = &unk_8875D0;
  v11 = _Block_copy(aBlock);

  sub_7683A0();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1C61D8(&qword_9406E0, &type metadata accessor for DispatchWorkItemFlags);
  sub_BD88(&qword_940350);
  sub_16194(&qword_9406F0, &qword_940350);
  sub_76A5A0();
  sub_769980();
  _Block_release(v11);

  (*(v20 + 8))(v4, v2);
  (*(v5 + 8))(v7, v19);
  v12 = v18;
  sub_1C34CC();
  v13 = *(v12 + qword_948E70);
  if (v13)
  {
    v14 = v13;
    v15 = sub_75F630();
    if (v15)
    {
    }

    [v14 setHidden:v15 == 0];
  }

  if (sub_75F640() && (v16 = sub_7645D0(), , v16))
  {

    sub_1C35FC();
  }

  else
  {
    sub_1C3A04();
  }
}

id sub_1C2CF4()
{
  v32 = sub_756AC0();
  __chkstk_darwin(v32);
  v33 = &v30 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_BD88(&unk_93FD30);
  __chkstk_darwin(v2 - 8);
  v4 = &v30 - v3;
  v5 = sub_764CF0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_75AE80();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_7628C0();
  if (result)
  {
    v31 = v0;
    sub_75C1F0();
    if (swift_dynamicCastClass())
    {
      sub_75C1B0();
      sub_75AE90();

      if ((*(v10 + 88))(v12, v9) != enum case for ShareSheetData.Metadata.product(_:))
      {

        return (*(v10 + 8))(v12, v9);
      }

      (*(v10 + 96))(v12, v9);
      sub_7617A0();
      v14 = sub_764CA0();
      v16 = v15;
      (*(v6 + 8))(v8, v5);
      if (!sub_761740() || (v17 = sub_7607D0(), v19 = v18, , !v19))
      {
        v21 = v16;
        goto LABEL_19;
      }

      v20 = v17 == 0x656C646E7562 && v19 == 0xE600000000000000;
      v21 = v16;
      if (v20)
      {
      }

      else
      {
        v22 = sub_76A950();

        if ((v22 & 1) == 0)
        {
LABEL_19:

          sub_75C1B0();
          sub_75AE70();

          v24 = sub_7570A0();
          (*(*(v24 - 8) + 56))(v4, 0, 1, v24);
          v25 = sub_761790();
          sub_254340(v14, v21, v4, v25, v26, &v36);
          v39 = v37;
          v40[0] = v36;
          v35 = _swiftEmptyArrayStorage;
          sub_B2F4C(v40, v34);
          sub_B2F4C(&v39, v34);
          sub_1C61D8(&qword_943508, &type metadata accessor for AppEntityVisualState);

          sub_BD88(&qword_943510);
          sub_16194(&qword_943518, &qword_943510);
          sub_76A5A0();
          v34[0] = v36;
          v34[1] = v37;
          v34[2] = v38;
          v27 = objc_allocWithZone(sub_766300());
          sub_1C5EC4();
          v28 = sub_7662F0();
          result = [v31 view];
          if (result)
          {
            v29 = result;

            sub_769E60();

            sub_B2FFC(v40);
            sub_B2FFC(&v39);
          }

          else
          {
            __break(1u);
          }

          return result;
        }
      }

      *&v36 = v14;
      *(&v36 + 1) = v16;
      *&v34[0] = 0x2D656C646E7562;
      *(&v34[0] + 1) = 0xE700000000000000;
      *&v34[0] = sub_7693F0();
      *(&v34[0] + 1) = v23;
      sub_769360();

      v21 = *(&v34[0] + 1);
      v14 = *&v34[0];
      goto LABEL_19;
    }
  }

  return result;
}

void sub_1C3310(void *a1)
{
  v3 = [v1 view];
  if (!v3)
  {
    goto LABEL_16;
  }

  v4 = v3;
  type metadata accessor for InsetCollectionViewControllerContentView();
  v5 = swift_dynamicCastClass();
  if (!v5)
  {

LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  *(v5 + OBJC_IVAR____TtC18ASMessagesProviderP33_617AA862DC90C0016FFBABB70104B8F240InsetCollectionViewControllerContentView_insetLayoutMarginsFromTopSafeAreaInset) = (a1 & 8) == 0;

  sub_71DDE4();
  if ((a1 & 1) == 0 && ((a1 & 2) == 0 || (sub_71DFF0() & 1) == 0))
  {
    *(v1 + OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_prefersLargeTitle) = 0;
    goto LABEL_11;
  }

  v6 = [v1 view];
  if (!v6)
  {
LABEL_18:
    __break(1u);
    return;
  }

  a1 = v6;
  v7 = swift_dynamicCastClass();
  if (!v7)
  {
LABEL_17:

    goto LABEL_18;
  }

  v8 = *(v7 + OBJC_IVAR____TtC18ASMessagesProviderP33_617AA862DC90C0016FFBABB70104B8F240InsetCollectionViewControllerContentView_insetLayoutMarginsFromTopSafeAreaInset);

  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_prefersLargeTitle) = v8;
  if ((v8 & 1) == 0)
  {
LABEL_11:
    v9 = 2;
    goto LABEL_12;
  }

  v9 = 1;
LABEL_12:
  v10 = [v1 navigationItem];
  [v10 setLargeTitleDisplayMode:v9];
}

uint64_t sub_1C3464()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    sub_1BDF88();

    sub_298E58();
  }

  return result;
}

void sub_1C34CC()
{
  if (*(v0 + qword_948E60) != 1)
  {
LABEL_7:
    v5 = [v0 collectionView];
    if (!v5)
    {
      return;
    }

    goto LABEL_8;
  }

  v1 = [v0 view];
  if (!v1)
  {
LABEL_13:
    __break(1u);
    return;
  }

  v2 = v1;
  type metadata accessor for InsetCollectionViewControllerContentView();
  v3 = swift_dynamicCastClass();
  if (!v3)
  {

    goto LABEL_13;
  }

  v4 = *(v3 + OBJC_IVAR____TtC18ASMessagesProviderP33_617AA862DC90C0016FFBABB70104B8F240InsetCollectionViewControllerContentView_insetLayoutMarginsFromTopSafeAreaInset);

  if ((v4 & 1) == 0)
  {
    goto LABEL_7;
  }

  v5 = [v0 collectionView];
  if (!v5)
  {
    return;
  }

LABEL_8:
  v6 = v5;
  [v5 frame];
  [v6 setFrame:?];
}

void sub_1C35FC()
{
  v1 = v0;
  v2 = sub_759950();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = qword_99B780;
  v8 = *&v1[qword_99B780];
  if (v8)
  {
    v9 = *&v1[qword_99B780];
  }

  else
  {
    (*(v3 + 104))(v6, enum case for SystemImage.speakerSlashFill(_:), v2, v4);
    v10 = sub_759930();
    (*(v3 + 8))(v6, v2);
    v11 = [objc_allocWithZone(UIBarButtonItem) initWithImage:v10 style:0 target:0 action:0];

    v9 = v11;
    v29._object = 0x80000000007D3A50;
    v29._countAndFlagsBits = 0xD00000000000002BLL;
    v31._countAndFlagsBits = 0;
    v31._object = 0xE000000000000000;
    sub_75B750(v29, v31);
    v12 = sub_769210();

    [v9 setTitle:v12];

    v30._countAndFlagsBits = 0xD00000000000002CLL;
    v30._object = 0x80000000007D3A80;
    v32._countAndFlagsBits = 0;
    v32._object = 0xE000000000000000;
    sub_75B750(v30, v32);
    v13 = sub_769210();

    [v9 setAccessibilityLabel:v13];

    [v9 setHidden:1];
    v14 = *&v1[v7];
    *&v1[v7] = v9;

    v8 = 0;
  }

  v15 = v8;
  v16 = [v1 navigationItem];
  v17 = [v16 rightBarButtonItems];

  if (v17 && (sub_BE70(0, &qword_947490), v18 = sub_769460(), v17, v28 = v9, __chkstk_darwin(v19), *(&v27 - 2) = &v28, v20 = sub_4F26B4(sub_1C5F20, (&v27 - 4), v18), , (v20 & 1) == 0))
  {
    v21 = [v1 navigationItem];
    v22 = [v21 rightBarButtonItems];

    if (v22)
    {
      v23 = sub_769460();
    }

    else
    {
      v23 = _swiftEmptyArrayStorage;
    }

    v28 = v23;
    v24 = v9;
    sub_769440();
    if (*(&dword_10 + (v28 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v28 & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_7694C0();
    }

    sub_769500();
    v25 = [v1 navigationItem];
    isa = sub_769450().super.isa;

    [v25 setRightBarButtonItems:isa];
  }

  else
  {
  }
}

void sub_1C3A04()
{
  v1 = *&v0[qword_99B780];
  if (v1)
  {
    v13 = v1;
    v2 = [v0 navigationItem];
    v3 = [v2 rightBarButtonItems];

    if (v3 && (sub_BE70(0, &qword_947490), v4 = sub_769460(), v3, v5 = sub_6FF6BC(v13, v4), v7 = v6, , (v7 & 1) == 0))
    {
      v8 = [v0 navigationItem];
      v9 = [v8 rightBarButtonItems];
      if (v9)
      {
        v10 = v9;
        v11 = sub_769460();

        if (v11)
        {
          v12.super.isa = sub_769450().super.isa;
        }

        else
        {
          v12.super.isa = 0;
        }

        [v8 setRightBarButtonItems:v12.super.isa];
      }

      else
      {
        [v8 setRightBarButtonItems:0];
      }
    }
  }
}

void sub_1C3BD0()
{
  if (*(*&v0[qword_948EA0] + 16))
  {
    v1 = [v0 view];
    if (v1)
    {
      v2 = v1;
      type metadata accessor for InsetCollectionViewControllerContentView();
      v3 = swift_dynamicCastClass();
      if (v3)
      {
        v4 = *(v3 + OBJC_IVAR____TtC18ASMessagesProviderP33_617AA862DC90C0016FFBABB70104B8F240InsetCollectionViewControllerContentView_insetLayoutMarginsFromTopSafeAreaInset);

        if ((v4 & 1) == 0)
        {
        }

        return;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1C3C70(uint64_t result)
{
  *(v1 + qword_99E1C8) = result;
  if (result)
  {
    *(v1 + qword_99B758) = 1;
  }

  return result;
}

void sub_1C3C98()
{
  *(v0 + qword_948E60) = 1;
  *(sub_1BDF88() + 72) = 1;

  sub_1C34CC();
}

void sub_1C3CE0()
{
  *(v0 + qword_948E60) = 0;
  *(sub_1BDF88() + 72) = 0;

  sub_1C34CC();
}

uint64_t sub_1C3D1C(uint64_t a1)
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
  sub_61B4C(a1, v9);
  if (swift_getEnumCaseMultiPayload() != 8)
  {
    sub_61BB0(v9);
LABEL_9:
    v23 = 0;
    return v23 & 1;
  }

  v19 = sub_BD88(&qword_940A50);
  sub_50774(&v9[*(v19 + 48)], v18);
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
      sub_1C61D8(&qword_947410, &type metadata accessor for URL);
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

uint64_t sub_1C41D8(void *a1)
{
  v2 = sub_768430();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v15[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  LOBYTE(v34[0]) = 0;
  *&v16[0] = a1;
  *(v16 + 8) = 0u;
  *(&v16[1] + 8) = 0u;
  BYTE8(v16[2]) = 0;
  __asm { FMOV            V0.2D, #10.0 }

  v17 = _Q0;
  v18 = _Q0;
  v19 = 15;
  sub_BE70(0, &qword_940340);
  v11 = a1;
  *v5 = sub_769970();
  (*(v3 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v2);
  LOBYTE(a1) = sub_768460();
  result = (*(v3 + 8))(v5, v2);
  if (a1)
  {
    v23 = xmmword_94DD28;
    v24 = xmmword_94DD38;
    v20 = xmmword_94DCF8;
    v21 = xmmword_94DD08;
    v22 = xmmword_94DD18;
    v28 = v16[2];
    v29 = v17;
    v30 = v18;
    v26 = v16[0];
    v27 = v16[1];
    v32[0] = xmmword_94DCF8;
    v32[1] = xmmword_94DD08;
    v32[3] = xmmword_94DD28;
    v32[4] = xmmword_94DD38;
    v25 = qword_94DD48;
    v31 = v19;
    v33 = qword_94DD48;
    v32[2] = xmmword_94DD18;
    sub_1ED18(&v20, v34, &unk_93FEF0);
    xmmword_94DD18 = v28;
    xmmword_94DD28 = v29;
    xmmword_94DD38 = v30;
    qword_94DD48 = v31;
    xmmword_94DCF8 = v26;
    xmmword_94DD08 = v27;
    sub_10A2C(v32, &unk_93FEF0);
    v15[3] = sub_BE70(0, &qword_947490);
    v15[0] = v11;
    v13 = v11;
    sub_45C2C(v16, v34);
    sub_7628D0();
    sub_10A2C(v15, &unk_93FBD0);
    v34[2] = xmmword_94DD18;
    v34[3] = xmmword_94DD28;
    v34[4] = xmmword_94DD38;
    v34[0] = xmmword_94DCF8;
    v34[1] = xmmword_94DD08;
    xmmword_94DCF8 = v20;
    xmmword_94DD08 = v21;
    xmmword_94DD18 = v22;
    xmmword_94DD28 = v23;
    v35 = qword_94DD48;
    xmmword_94DD38 = v24;
    qword_94DD48 = v25;
    sub_10A2C(v34, &unk_93FEF0);
    return sub_45C88(v16);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1C44CC(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_1C41D8(v4);
}

uint64_t sub_1C4534()
{
}

uint64_t sub_1C45F4(uint64_t a1)
{
}

uint64_t type metadata accessor for ProductDiffablePageViewController()
{
  result = qword_948ED0;
  if (!qword_948ED0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C47FC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void sub_1C4834(uint64_t a1, double a2, double a3)
{
  v6 = sub_7599A0();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &aBlock[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &aBlock[-1] - v11;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong || (v14 = *&Strong[OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_navigationBarAppearanceProgress], v15 = Strong[OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_navigationBarAppearanceProgress + 8], Strong, v15 == 1))
  {
    if (a2 == 1.79769313e308)
    {
      return;
    }

    goto LABEL_4;
  }

  if (v14 != a2)
  {
LABEL_4:
    sub_759960();
    sub_759980();
    v17 = v16;
    v19 = v18;
    v20 = *(v7 + 8);
    v20(v12, v6);
    sub_759960();
    sub_759990();
    v22 = v21;
    v24 = v23;
    v20(v9, v6);
    v25 = swift_allocObject();
    *(v25 + 16) = a1;
    *(v25 + 24) = a2;
    v26 = objc_allocWithZone(UIViewPropertyAnimator);
    aBlock[4] = sub_1C4DA4;
    aBlock[5] = v25;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_23F0CC;
    aBlock[3] = &unk_887530;
    v27 = _Block_copy(aBlock);

    v28 = [v26 initWithDuration:v27 controlPoint1:a3 controlPoint2:v17 animations:{v19, v22, v24}];
    _Block_release(v27);
    [v28 startAnimation];
  }
}

void sub_1C4AD4(uint64_t a1, double a2, double a3)
{
  v6 = sub_7599A0();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &aBlock[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &aBlock[-1] - v11;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong || (v14 = *&Strong[OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_navigationBarAppearanceProgress], v15 = Strong[OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_navigationBarAppearanceProgress + 8], Strong, v15 == 1))
  {
    if (a2 == 1.79769313e308)
    {
      return;
    }

    goto LABEL_4;
  }

  if (v14 != a2)
  {
LABEL_4:
    sub_759960();
    sub_759980();
    v17 = v16;
    v19 = v18;
    v20 = *(v7 + 8);
    v20(v12, v6);
    sub_759960();
    sub_759990();
    v22 = v21;
    v24 = v23;
    v20(v9, v6);
    v25 = swift_allocObject();
    *(v25 + 16) = a1;
    *(v25 + 24) = a2;
    v26 = objc_allocWithZone(UIViewPropertyAnimator);
    aBlock[4] = sub_1C659C;
    aBlock[5] = v25;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_23F0CC;
    aBlock[3] = &unk_887580;
    v27 = _Block_copy(aBlock);

    v28 = [v26 initWithDuration:v27 controlPoint1:a3 controlPoint2:v17 animations:{v19, v22, v24}];
    _Block_release(v27);
    [v28 startAnimation];
  }
}

uint64_t sub_1C4D6C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1C4DC4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1C4DDC(double a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = Strong + OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_navigationBarAppearanceProgress;
    *v4 = a1;
    *(v4 + 8) = 0;
    sub_71E3B8();
  }
}

void sub_1C4E54(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [a1 viewControllerForKey:UITransitionContextToViewControllerKey];
    if (v4)
    {
      v5 = v4;
      sub_BE70(0, &qword_9434E0);
      v6 = v3;
      v7 = sub_76A1C0();

      if (v7)
      {
        if ([a1 isCancelled])
        {
          sub_1BE06C();
          sub_65DEC();
        }
      }
    }
  }
}

void sub_1C4F50(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if ([a1 isCancelled])
    {
      v4 = [a1 viewControllerForKey:UITransitionContextFromViewControllerKey];
      if (v4)
      {
        v5 = v4;
        sub_BE70(0, &qword_9434E0);
        v6 = v3;
        v7 = sub_76A1C0();

        if ((v7 & 1) != 0 && !*&v6[OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_overlayViewController])
        {
          v8 = v6;
          v9 = [v8 navigationController];
          if (v9)
          {
            v10 = v9;
            v11 = [v9 navigationBar];

            if (v11)
            {

              sub_1BE06C();
              v12 = [v8 collectionView];

              if (!v12)
              {
                __break(1u);
                return;
              }

              sub_66394(v12);

              v8 = v12;
            }
          }
        }
      }
    }
  }
}

void sub_1C50D4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1BE06C();
    v2 = [v1 collectionView];
    if (v2)
    {
      v3 = v2;
      sub_66394(v2);
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t (*sub_1C516C(void *a1))()
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1C6594;
  *(v3 + 24) = v2;
  v4 = a1;
  return sub_1C65C8;
}

uint64_t (*sub_1C51FC(void *a1))()
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1C6594;
  *(v3 + 24) = v2;
  v4 = a1;
  return sub_1C65C8;
}

uint64_t (*sub_1C528C(void *a1))()
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1C6594;
  *(v3 + 24) = v2;
  v4 = a1;
  return sub_1C65C8;
}

uint64_t (*sub_1C531C(void *a1))()
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1C6594;
  *(v3 + 24) = v2;
  v4 = a1;
  return sub_1C65C8;
}

uint64_t (*sub_1C53AC(void *a1))()
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1C6594;
  *(v3 + 24) = v2;
  v4 = a1;
  return sub_1C65C8;
}

uint64_t (*sub_1C543C(void *a1))()
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1C6594;
  *(v3 + 24) = v2;
  v4 = a1;
  return sub_1C65C8;
}

uint64_t (*sub_1C54CC(void *a1))()
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1C6594;
  *(v3 + 24) = v2;
  v4 = a1;
  return sub_1C65C8;
}

uint64_t (*sub_1C555C(void *a1))()
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1C6594;
  *(v3 + 24) = v2;
  v4 = a1;
  return sub_1C65C8;
}

uint64_t (*sub_1C55EC(void *a1))()
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1C60F8;
  *(v3 + 24) = v2;
  v4 = a1;
  return sub_1C65C8;
}

uint64_t (*sub_1C567C(void *a1))(void *a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1C6594;
  *(v3 + 24) = v2;
  v4 = a1;
  return sub_1C60BC;
}

void (*sub_1C570C(void *a1))(uint64_t a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_1C6488;
}

void (*sub_1C5770(void *a1))(uint64_t a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_1C63A8;
}

void (*sub_1C57D4(void *a1))(uint64_t a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_1C6324;
}

void (*sub_1C5838(void *a1))(uint64_t a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_1C629C;
}

void (*sub_1C589C(void *a1))(uint64_t a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_1C614C;
}

uint64_t (*sub_1C5900(void *a1))()
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_1C65C4;
}

uint64_t (*sub_1C5964(void *a1))()
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_1C65C4;
}

uint64_t (*sub_1C59C8(void *a1))()
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_1C6320;
}

uint64_t (*sub_1C5A2C(void *a1))()
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_1C65C4;
}

uint64_t (*sub_1C5A90(void *a1))()
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_1C65C4;
}

id sub_1C5AF4(int a1, id a2, uint64_t *a3, uint64_t a4, unint64_t *a5)
{
  result = [a2 view];
  if (result)
  {
    v8 = result;
    [result bounds];

    sub_BD88(a3);
    sub_16194(a5, a3);
    return sub_763A70();
  }

  else
  {
    __break(1u);
  }

  return result;
}

id (*sub_1C5BBC(void *a1))(int a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_1C63F8;
}

id (*sub_1C5C20(void *a1))(int a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_1C6374;
}

id (*sub_1C5C84(void *a1))(int a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_1C62EC;
}

id (*sub_1C5CE8(void *a1))(int a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_1C6268;
}

id (*sub_1C5D4C(void *a1))(int a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_1C60C4;
}

uint64_t sub_1C5DB0(uint64_t a1, uint64_t a2)
{
  v8 = a1;
  sub_1ED18(a2, &v9, &unk_93FBD0);
  sub_1ED18(&v8, &v6, &unk_959590);
  v4 = v6;
  sub_1ED18(v7, v5, &unk_93FBD0);

  sub_1BD1E4(v2, v5);

  sub_10A2C(&v8, &unk_959590);
  sub_10A2C(&v4, &unk_959590);
  return sub_10A2C(v7, &unk_93FBD0);
}

unint64_t sub_1C5EC4()
{
  result = qword_9494C0;
  if (!qword_9494C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_9494C0);
  }

  return result;
}

unint64_t sub_1C5F88()
{
  result = qword_949520;
  if (!qword_949520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_949520);
  }

  return result;
}

unint64_t sub_1C5FDC()
{
  result = qword_949528;
  if (!qword_949528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_949528);
  }

  return result;
}

uint64_t sub_1C6114()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1C61D8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C6230()
{

  return _swift_deallocObject(v0, 32, 7);
}

double sub_1C65CC(void **a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v9 = *a1;
  type metadata accessor for PrivacyCategoryView();
  swift_getObjectType();
  sub_4DBE18(v9, a7);
  sub_7670D0();
  sub_7665A0();

  return a2;
}

id sub_1C667C(uint64_t *a1)
{
  v2 = *a1;
  *&v1[OBJC_IVAR____TtC18ASMessagesProvider33PrivacyCategoryCollectionViewCell_privacyCategory] = *a1;

  *(*&v1[OBJC_IVAR____TtC18ASMessagesProvider33PrivacyCategoryCollectionViewCell_privacyCategoryView] + OBJC_IVAR____TtC18ASMessagesProvider19PrivacyCategoryView_category) = v2;

  sub_4DA5B8();

  return [v1 setNeedsLayout];
}

uint64_t sub_1C6724()
{
  sub_759210();
  sub_1C6B18(&qword_945810, &type metadata accessor for ArtworkView);
  return sub_75A0C0();
}

uint64_t sub_1C67C4()
{
  v0 = sub_76A920();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_93DCE8 != -1)
  {
    swift_once();
  }

  v4 = sub_766CA0();
  sub_BE38(v4, qword_99FE00);
  sub_766470();
  sub_766700();
  v6 = v5;
  (*(v1 + 8))(v3, v0);
  return v6;
}

void sub_1C699C()
{
  v1 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider33PrivacyCategoryCollectionViewCell_privacyCategoryView);
  if (*(v1 + OBJC_IVAR____TtC18ASMessagesProvider19PrivacyCategoryView_category))
  {

    sub_75B5F0();

    sub_765320();
    v2 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider19PrivacyCategoryView_iconView);
    sub_759210();
    sub_1C6B18(&qword_9496B0, &type metadata accessor for ArtworkView);
    v3 = v2;
    sub_76A6E0();
    swift_allocObject();
    swift_unknownObjectWeakInit();

    sub_75A040();

    sub_160090(v4);
  }
}

uint64_t sub_1C6B18(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C6B60()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1C6BA0()
{
  v1 = v0;
  v2 = sub_766880();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_766850();
  sub_766860();
  sub_134D8(v1 + 88, v7);
  v8[3] = sub_767340();
  v8[4] = &protocol witness table for Margins;
  sub_B1B4(v8);
  sub_767320();
  sub_766860();
  sub_BEB8(v8);
  sub_7673E0();
  return (*(v3 + 8))(v5, v2);
}

char *sub_1C6D74(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_todayCard] = 0;
  v11 = OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_headerView;
  *&v5[v11] = [objc_allocWithZone(type metadata accessor for HeaderView()) init];
  v12 = OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_lockupContainer;
  type metadata accessor for TodayListCardLockupContainer();
  *&v5[v12] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_topLabelsView] = 0;
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_trailingLockupContainer] = 0;
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_riverView] = 0;
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_riverBackgroundView] = 0;
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_riverContainerView] = 0;
  v13 = OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_cardStyle;
  v14 = sub_765B10();
  (*(*(v14 - 8) + 56))(&v5[v13], 1, 1, v14);
  v5[OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_isMediaDark] = 0;
  swift_unknownObjectWeakInit();
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_muteButton] = 0;
  v43[0] = sub_64A6C;
  v43[1] = 0;
  v43[2] = sub_7566F8;
  v43[3] = 0;
  v43[4] = sub_7568B4;
  v43[5] = 0;
  v43[6] = sub_7568E0;
  v43[7] = 0;
  v43[8] = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
  v43[9] = 0;
  v43[10] = sub_756724;
  v43[11] = 0;
  v44 = 0x4000000000000000uLL;
  *v45 = 0;
  *&v45[8] = 0x4018000000000000;
  *&v45[16] = 0;
  v45[24] = 1;
  v15 = objc_allocWithZone(type metadata accessor for TodayCardLabelsView());
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_labelsView] = sub_367388(v43, &v44);
  v42.receiver = v5;
  v42.super_class = ObjectType;
  v16 = objc_msgSendSuper2(&v42, "initWithFrame:", a1, a2, a3, a4);
  v17 = [v16 layer];
  [v17 setAllowsGroupBlending:0];

  v18 = OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_lockupContainer;
  v19 = OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_isExpanded;
  v20 = v16[OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_isExpanded];
  v21 = *&v16[OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_lockupContainer];

  v22 = v21[OBJC_IVAR____TtC18ASMessagesProvider28TodayListCardLockupContainer_isExpanded];
  v21[OBJC_IVAR____TtC18ASMessagesProvider28TodayListCardLockupContainer_isExpanded] = v20;
  if (v20 != v22)
  {
    [v21 setNeedsLayout];
  }

  v23 = OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_headerView;
  if (*(*(*&v16[OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_headerView] + OBJC_IVAR____TtC18ASMessagesProviderP33_F8126028EBC951D565C2F73D484F972E10HeaderView_mediaView) + OBJC_IVAR____TtC18ASMessagesProvider18StoryCardMediaView_hasMedia) == 1)
  {
    if (v16[v19])
    {
      v24 = &OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell__sizeCategory;
    }

    else
    {
      v24 = &OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_originalSizeCategory;
    }

    v25 = v16[*v24] == 4;
  }

  else
  {
    v25 = 0;
  }

  [*&v16[v18] setHidden:v25];
  v26 = [*&v16[v18] layer];
  [v26 setZPosition:0.0];

  v27 = v16;
  v28 = [v27 contentView];
  [v28 addSubview:*&v16[v18]];

  v29 = [v27 backgroundView];
  if (v29)
  {
    v30 = v29;
    sub_BE70(0, &qword_93E540);
    v31 = sub_76A060();
    [v30 setBackgroundColor:v31];
  }

  sub_1C72E0();
  v32 = [v27 contentView];
  [v32 addSubview:*&v16[v23]];

  v33 = [v27 contentView];
  v34 = OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_labelsView;
  [v33 addSubview:*&v27[OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_labelsView]];

  v35 = *&v27[v34];
  sub_1C750C();
  v36 = &v35[qword_950C70];
  *(v36 + 25) = *&v45[9];
  v37 = *v45;
  *v36 = v44;
  *(v36 + 1) = v37;
  [v35 setNeedsLayout];

  v38 = [v27 contentView];
  [v38 setClipsToBounds:1];

  sub_1C75D0();
  sub_BD88(&qword_9477F0);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_77B6D0;
  *(v39 + 32) = sub_767B80();
  *(v39 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  v41[3] = ObjectType;
  v41[0] = v27;
  sub_769F30();
  swift_unknownObjectRelease();

  sub_BEB8(v41);
  return v27;
}

uint64_t sub_1C72E0()
{
  v1 = sub_7593D0();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_headerView;
  if (v0[OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_isExpanded])
  {
    v7 = 0;
  }

  else
  {
    v8 = v0[OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_originalSizeCategory];
    if (*(*(*&v0[OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_headerView] + OBJC_IVAR____TtC18ASMessagesProviderP33_F8126028EBC951D565C2F73D484F972E10HeaderView_mediaView) + OBJC_IVAR____TtC18ASMessagesProvider18StoryCardMediaView_hasMedia) == 1 && v8 == 4)
    {
      v7 = -1;
    }

    else if (v8 == 6)
    {
      v10 = [v0 traitCollection];
      v11 = sub_7699F0();

      if (v11)
      {
        v7 = 10;
      }

      else
      {
        v7 = 5;
      }

      v6 = OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_headerView;
    }

    else
    {
      v7 = 3;
    }
  }

  v12 = *&v0[v6];
  (*(v2 + 104))(v5, enum case for CornerStyle.continuous(_:), v1, v3);
  sub_501278(v5, 20.0);
  if ((v7 & 0xC) != 0)
  {
    [v12 _setContinuousCornerRadius:20.0];
  }

  v13 = [v12 layer];
  [v13 setMaskedCorners:sub_7697E0()];

  return (*(v2 + 8))(v5, v1);
}

uint64_t sub_1C750C()
{
  if (*(*(*&v0[OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_headerView] + OBJC_IVAR____TtC18ASMessagesProviderP33_F8126028EBC951D565C2F73D484F972E10HeaderView_mediaView) + OBJC_IVAR____TtC18ASMessagesProvider18StoryCardMediaView_hasMedia) == 1)
  {
    if (v0[OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_isExpanded])
    {
      v1 = &OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell__sizeCategory;
    }

    else
    {
      v1 = &OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_originalSizeCategory;
    }

    if (v0[*v1] == 6)
    {
      v2 = 1;
    }

    else
    {
      v3 = [v0 traitCollection];
      v4 = sub_769A00();

      v2 = v4 ^ 1;
    }
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

id sub_1C75D0()
{
  v1 = v0;
  v2 = sub_BD88(&qword_9497A8);
  __chkstk_darwin(v2 - 8);
  v4 = &v26 - v3;
  v5 = sub_765B10();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v27 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v26 - v9;
  __chkstk_darwin(v11);
  v13 = &v26 - v12;
  v14 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_headerView];
  v15 = sub_1C750C();
  v28 = v14;
  [v14 setHidden:(v15 & 1) == 0];
  v16 = OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_cardStyle;
  swift_beginAccess();
  sub_1ED18(&v1[v16], v4, &qword_9497A8);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_10A2C(v4, &qword_9497A8);
  }

  else
  {
    (*(v6 + 32))(v13, v4, v5);
    if ((sub_1C750C() & 1) != 0 && v1[OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_isMediaDark] == 1)
    {
      (*(v6 + 104))(v10, enum case for TodayCard.Style.dark(_:), v5);
    }

    else
    {
      (*(v6 + 16))(v10, v13, v5);
    }

    v17 = v27;
    v18 = sub_1C750C();
    sub_366B5C(v10, v18 & 1);
    if ((sub_1C750C() & 1) != 0 && (v1[OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_isMediaDark] & 1) != 0 || (*(*&v28[OBJC_IVAR____TtC18ASMessagesProviderP33_F8126028EBC951D565C2F73D484F972E10HeaderView_mediaView] + OBJC_IVAR____TtC18ASMessagesProvider18StoryCardMediaView_hasMedia) & 1) == 0 && (!v1[OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_isExpanded] ? (v19 = &OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_originalSizeCategory) : (v19 = &OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell__sizeCategory), v1[*v19] == 6))
    {
      (*(v6 + 104))(v17, enum case for TodayCard.Style.dark(_:), v5);
    }

    else
    {
      (*(v6 + 16))(v17, v13, v5);
    }

    v20 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_topLabelsView];
    if (v20)
    {
      v21 = v20;
      if (sub_1C750C())
      {
        v22 = 1;
      }

      else if (*(*&v28[OBJC_IVAR____TtC18ASMessagesProviderP33_F8126028EBC951D565C2F73D484F972E10HeaderView_mediaView] + OBJC_IVAR____TtC18ASMessagesProvider18StoryCardMediaView_hasMedia))
      {
        v22 = 0;
      }

      else
      {
        if (v1[OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_isExpanded])
        {
          v23 = &OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell__sizeCategory;
        }

        else
        {
          v23 = &OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_originalSizeCategory;
        }

        v22 = v1[*v23] == 6;
      }

      sub_366B5C(v17, v22);
    }

    v24 = *(v6 + 8);
    v24(v17, v5);
    v24(v10, v5);
    v24(v13, v5);
  }

  sub_1C72E0();
  return [v1 setNeedsLayout];
}

void sub_1C7A50(char a1)
{
  v2 = v1;
  v4 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_riverView);
  if (v4)
  {
    v5 = v4;
    sub_765990();
  }

  v6 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_riverBackgroundView);
  if (v6)
  {
    v7 = v6[OBJC_IVAR____TtC18ASMessagesProvider28RiverTodayCardBackgroundView_isAnimating];
    v6[OBJC_IVAR____TtC18ASMessagesProvider28RiverTodayCardBackgroundView_isAnimating] = a1 & 1;
    if (v7 != (a1 & 1))
    {
      v8 = v6;
      sub_4A3E2C();
    }
  }
}

void sub_1C7B10()
{
  v1 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_riverView);
  if (v1)
  {
    v2 = v1;
    sub_765990();
  }

  v3 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_riverBackgroundView);
  if (v3)
  {
    v4 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_isMotionEnabled);
    v5 = v3[OBJC_IVAR____TtC18ASMessagesProvider28RiverTodayCardBackgroundView_isAnimating];
    v3[OBJC_IVAR____TtC18ASMessagesProvider28RiverTodayCardBackgroundView_isAnimating] = v4;
    if (v4 != v5)
    {
      v6 = v3;
      sub_4A3E2C();
    }
  }
}

void sub_1C7BF8(uint64_t a1)
{
  v3 = sub_BD88(&unk_955AA0);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  v6 = OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_pageGrid;
  swift_beginAccess();
  sub_B33C8(a1, v1 + v6, &unk_955AA0);
  swift_endAccess();
  v7 = *(*(v1 + OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_headerView) + OBJC_IVAR____TtC18ASMessagesProviderP33_F8126028EBC951D565C2F73D484F972E10HeaderView_mediaView);
  sub_1ED18(v1 + v6, v5, &unk_955AA0);
  v8 = OBJC_IVAR____TtC18ASMessagesProvider18StoryCardMediaView_pageGrid;
  swift_beginAccess();
  v9 = v7;
  sub_B33C8(v5, v7 + v8, &unk_955AA0);
  swift_endAccess();
}

void sub_1C7D34()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_isTransitioning;
  *(*&v0[OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_labelsView] + qword_950CC0) = v0[OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_isTransitioning];
  sub_36851C();
  v3 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_topLabelsView];
  if (v3)
  {
    *(v3 + qword_950CC0) = v1[v2];
    sub_36851C();
  }

  v4 = *(*&v1[OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_headerView] + OBJC_IVAR____TtC18ASMessagesProviderP33_F8126028EBC951D565C2F73D484F972E10HeaderView_mediaView);
  v5 = v1[v2];
  v4[OBJC_IVAR____TtC18ASMessagesProvider18StoryCardMediaView_isTransitioning] = v5;
  *(*&v4[OBJC_IVAR____TtC18ASMessagesProvider18StoryCardMediaView_revealingImageView] + OBJC_IVAR____TtC18ASMessagesProvider18RevealingImageView_isTransitioning) = v5;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = *&stru_B8.segname[swift_isaMask & *Strong];
    v8 = Strong;
    v9 = v4;
    v7(v5);
  }

  v10 = [v1 contentView];
  [v10 setClipsToBounds:(v1[v2] & 1) == 0];
}

uint64_t sub_1C7ED0()
{
  if (*(*(*&v0[OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_headerView] + OBJC_IVAR____TtC18ASMessagesProviderP33_F8126028EBC951D565C2F73D484F972E10HeaderView_mediaView) + OBJC_IVAR____TtC18ASMessagesProvider18StoryCardMediaView_hasMedia) != 1)
  {
    return 1;
  }

  if (v0[OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_isExpanded])
  {
    v1 = &OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell__sizeCategory;
  }

  else
  {
    v1 = &OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_originalSizeCategory;
  }

  if (v0[*v1] == 6)
  {
    return 0;
  }

  v3 = [v0 traitCollection];
  v4 = sub_769A00();

  return v4 & 1;
}

void sub_1C8024(char a1)
{
  ObjectType = swift_getObjectType();
  v9.receiver = v1;
  v9.super_class = ObjectType;
  objc_msgSendSuper2(&v9, "setDragging:", a1 & 1);
  v4 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_lockupContainer];
  v8.receiver = v1;
  v8.super_class = ObjectType;
  *(v4 + OBJC_IVAR____TtC18ASMessagesProvider28TodayListCardLockupContainer_isDragging) = objc_msgSendSuper2(&v8, "isDragging");
  v5 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_trailingLockupContainer];
  if (v5)
  {
    v7.receiver = v1;
    v7.super_class = ObjectType;
    v6 = v5;
    v6[OBJC_IVAR____TtC18ASMessagesProvider28TodayListCardLockupContainer_isDragging] = objc_msgSendSuper2(&v7, "isDragging");
  }
}

uint64_t sub_1C8180(double a1)
{
  ObjectType = swift_getObjectType();
  v4 = sub_7593D0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14.receiver = v1;
  v14.super_class = ObjectType;
  objc_msgSendSuper2(&v14, "_setContinuousCornerRadius:", a1);
  v8 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_headerView];
  v13.receiver = v1;
  v13.super_class = ObjectType;
  objc_msgSendSuper2(&v13, "_continuousCornerRadius");
  v10 = v9;
  (*(v5 + 104))(v7, enum case for CornerStyle.continuous(_:), v4);
  sub_501278(v7, v10);
  v11 = [v8 layer];
  [v11 setMaskedCorners:sub_7697E0()];

  return (*(v5 + 8))(v7, v4);
}

void *sub_1C8318()
{
  result = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_muteButton);
  if (result)
  {
    [result alpha];
    return (v2 != 0.0);
  }

  return result;
}

void sub_1C8350(char a1)
{
  if (a1)
  {

    sub_1C83D0();
  }

  else
  {
    v2 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_muteButton);
    *(v1 + OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_muteButton) = 0;
    if (v2)
    {
      v3 = v2;
      [v2 removeFromSuperview];
    }
  }
}

void sub_1C83D0()
{
  v1 = v0;
  v2 = objc_allocWithZone(type metadata accessor for MuteButton());
  v7 = sub_66DFD8(14.0);
  [v7 addTarget:v0 action:"handleMuteButtonTapped" forControlEvents:64];
  v3 = [v0 contentView];
  [v3 addSubview:v7];

  v4 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_muteButton];
  *&v1[OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_muteButton] = v7;
  if (v4)
  {
    v5 = v7;
    [v4 removeFromSuperview];
  }

  else
  {
    v6 = v7;
  }

  [v1 setNeedsLayout];
}

uint64_t sub_1C84D8(void *a1)
{
  if (a1)
  {
    v3 = *(*(v1 + OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_headerView) + OBJC_IVAR____TtC18ASMessagesProviderP33_F8126028EBC951D565C2F73D484F972E10HeaderView_mediaView);
    v4 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider18StoryCardMediaView_revealingVideoView];
    v5 = v3;
    v6 = [a1 superview];
    if (v6)
    {
      v7 = v6;
      sub_BE70(0, &qword_93E550);
      v8 = v4;
      v9 = sub_76A1C0();

      v5 = v7;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

void (*sub_1C85E8(uint64_t *a1))(uint64_t a1, char a2)
{
  v2 = OBJC_IVAR____TtC18ASMessagesProviderP33_F8126028EBC951D565C2F73D484F972E10HeaderView_mediaView;
  a1[1] = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_headerView);
  a1[2] = v2;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return sub_1C8668;
}

void sub_1C8668(uint64_t a1, char a2)
{
  v3 = *a1;
  v8 = *(*(a1 + 8) + *(a1 + 16));
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v5 = v3;
    v6 = v8;
    sub_2487B4(Strong);

    Strong = v5;
  }

  else
  {
    v7 = v8;
    sub_2487B4(Strong);
  }
}

uint64_t sub_1C8738()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_766950();
  v59 = *(v3 - 8);
  v60 = v3;
  __chkstk_darwin(v3);
  v58 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_766880();
  v56 = *(v5 - 8);
  v57 = v5;
  __chkstk_darwin(v5);
  v7 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_BD88(&unk_955AA0);
  __chkstk_darwin(v8 - 8);
  v10 = &v56 - v9;
  v11 = sub_7656C0();
  v12 = *(v11 - 8);
  *&v13 = __chkstk_darwin(v11).n128_u64[0];
  v15 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64.receiver = v1;
  v64.super_class = ObjectType;
  objc_msgSendSuper2(&v64, "layoutSubviews", v13);
  v16 = OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_pageGrid;
  swift_beginAccess();
  sub_1ED18(&v1[v16], v10, &unk_955AA0);
  if ((*(v12 + 48))(v10, 1, v11) != 1)
  {
    (*(v12 + 32))(v15, v10, v11);
    if (v1[OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_isExpanded])
    {
      v17 = &OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell__sizeCategory;
    }

    else
    {
      v17 = &OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_originalSizeCategory;
    }

    v18 = v1[*v17];
    switch(v18)
    {
      case 7:
        sub_1C9CDC(v15, v63);
        v34 = [v1 contentView];
        [v34 bounds];

        v35 = [v1 traitCollection];
        v36 = v58;
        sub_21AF88(v35);
        v37 = v60;
        sub_7673E0();

        (*(v59 + 8))(v36, v37);
        sub_1D6428(v63);
        (*(v12 + 8))(v15, v11);
        goto LABEL_17;
      case 6:
        sub_1C9848(v15, v62);
        if (v62[13])
        {
          memcpy(v63, v62, sizeof(v63));
          v24 = [v1 contentView];
          [v24 bounds];
          v26 = v25;
          v28 = v27;
          v30 = v29;
          v32 = v31;

          v33 = [v1 traitCollection];
          sub_207E64(v33, v26, v28, v30, v32);

          sub_1D647C(v63);
LABEL_16:
          (*(v12 + 8))(v15, v11);
          goto LABEL_17;
        }

        sub_10A2C(v62, &qword_9497C0);
        sub_1C9CDC(v15, v63);
        v42 = [v1 contentView];
        [v42 bounds];

        v43 = [v1 traitCollection];
        v44 = v58;
        sub_21AF88(v43);
        v45 = v60;
        sub_7673E0();

        (*(v59 + 8))(v44, v45);
        break;
      case 4:
        sub_1C917C(v15, v63);
        v19 = [v1 contentView];
        [v19 bounds];

        v20 = v15;
        v21 = v11;
        v22 = [v1 traitCollection];
        sub_766850();
        sub_766860();
        sub_134D8(&v63[11], &v61);
        v62[3] = sub_767340();
        v62[4] = &protocol witness table for Margins;
        sub_B1B4(v62);
        sub_767320();
        sub_766860();
        sub_BEB8(v62);
        v23 = v57;
        sub_7673E0();

        (*(v56 + 8))(v7, v23);
        sub_1D64D0(v63);
        (*(v12 + 8))(v20, v21);
        goto LABEL_17;
      default:
        sub_1C9CDC(v15, v63);
        v38 = [v1 contentView];
        [v38 bounds];

        v39 = [v1 traitCollection];
        v40 = v58;
        sub_21AF88(v39);
        v41 = v60;
        sub_7673E0();

        (*(v59 + 8))(v40, v41);
        break;
    }

    sub_1D6428(v63);
    goto LABEL_16;
  }

  sub_10A2C(v10, &unk_955AA0);
LABEL_17:
  if (v1[OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_originalSizeCategory] == 4 && v1[OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_isExpanded] == 1 && v1[OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell__sizeCategory] == 5)
  {
    v46 = objc_opt_self();
    v47 = swift_allocObject();
    *(v47 + 16) = v1;
    v48 = swift_allocObject();
    v49 = sub_1D63FC;
    *(v48 + 16) = sub_1D63FC;
    *(v48 + 24) = v47;
    v63[4] = sub_2EC28;
    v63[5] = v48;
    v63[0] = _NSConcreteStackBlock;
    v63[1] = 1107296256;
    v63[2] = sub_1EB578;
    v63[3] = &unk_888168;
    v50 = _Block_copy(v63);
    v51 = v1;

    [v46 performWithoutAnimation:v50];
    _Block_release(v50);
    LOBYTE(v46) = swift_isEscapingClosureAtFileLocation();

    if ((v46 & 1) == 0)
    {
      goto LABEL_25;
    }

    __break(1u);
  }

  v52 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_trailingLockupContainer];
  if (v52)
  {
    [v52 layoutIfNeeded];
  }

  [*&v1[OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_lockupContainer] layoutIfNeeded];
  v49 = 0;
LABEL_25:
  v53 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_muteButton];
  if (v53)
  {
    v54 = v53;
    [v1 bounds];
    [v54 setFrame:{CGRectGetMaxX(v65) + -32.0 + -12.0, 12.0, 32.0, 32.0}];
  }

  return sub_F704(v49);
}

id sub_1C917C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_7656C0();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v60 = &v57[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v59 = &v57[-v10];
  v11 = sub_BD88(&unk_955AA0);
  __chkstk_darwin(v11 - 8);
  v13 = &v57[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v14);
  v16 = &v57[-v15];
  __chkstk_darwin(v17);
  v19 = &v57[-v18];
  __chkstk_darwin(v20);
  v22 = &v57[-v21];
  v23 = a1;
  if (v3[OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_parentSafeAreaInsets + 32])
  {
    sub_765590();
    v25 = v24;
  }

  else
  {
    v25 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_parentSafeAreaInsets];
  }

  v26 = v3[OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_isExpanded];
  v27 = &OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell__sizeCategory;
  if (!v3[OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_isExpanded])
  {
    v27 = &OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_originalSizeCategory;
  }

  v58 = v3[*v27];
  v62 = v3;
  v63 = [v3 traitCollection];
  v61 = v7;
  v28 = *(v7 + 16);
  v29 = (v7 + 56);
  v30 = (v7 + 48);
  if (v26 == 1)
  {
    v28(v22, v23, v6);
    (*v29)(v22, 0, 1, v6);
    sub_1ED18(v22, v19, &unk_955AA0);
    if ((*v30)(v19, 1, v6) == 1)
    {
      sub_10A2C(v19, &unk_955AA0);
      left = UIEdgeInsetsZero.left;
      bottom = UIEdgeInsetsZero.bottom;
      right = UIEdgeInsetsZero.right;
      v34 = v63;
    }

    else
    {
      v36 = v61;
      v37 = v59;
      (*(v61 + 32))(v59, v19, v6);
      sub_765650();
      sub_765650();
      v34 = v63;
      [v63 layoutDirection];
      sub_769BB0();
      left = v38;
      bottom = v39;
      right = v40;
      (*(v36 + 8))(v37, v6);
    }

    v35 = v62;
    sub_10A2C(v22, &unk_955AA0);
    if ((sub_7699D0() & 1) == 0)
    {
      if (qword_93DD10 != -1)
      {
        swift_once();
      }

      v41 = sub_766CA0();
      sub_BE38(v41, qword_99FE78);
      sub_7671D0();
      sub_BD88(&unk_93F5C0);
      v42 = swift_allocObject();
      *(v42 + 16) = xmmword_77D9F0;
      *(v42 + 32) = v34;
      v43 = v34;
      v44 = sub_7671E0();
      sub_7666E0();
      v25 = v45;
    }

    v46 = v25 + 20.0;
  }

  else
  {
    v28(v16, v23, v6);
    (*v29)(v16, 0, 1, v6);
    sub_1ED18(v16, v13, &unk_955AA0);
    if ((*v30)(v13, 1, v6) == 1)
    {
      sub_10A2C(v13, &unk_955AA0);
      left = UIEdgeInsetsZero.left;
      right = UIEdgeInsetsZero.right;

      v35 = v62;
    }

    else
    {
      v48 = v60;
      v47 = v61;
      (*(v61 + 32))(v60, v13, v6);
      v35 = v62;
      if (v58 != 4)
      {
        sub_765650();
        sub_765650();
      }

      v49 = v63;
      [v63 layoutDirection];
      sub_769BB0();
      left = v50;
      right = v51;

      (*(v47 + 8))(v48, v6);
    }

    sub_10A2C(v16, &unk_955AA0);
    bottom = 20.0;
    v46 = 20.0;
  }

  v52 = sub_1C750C();

  v53 = *&v35[OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_headerView];
  *(a2 + 72) = type metadata accessor for HeaderView();
  *(a2 + 80) = sub_1D6524(&qword_9497C8, type metadata accessor for HeaderView);
  *(a2 + 48) = v53;
  v63 = *&v35[OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_labelsView];
  *(a2 + 112) = type metadata accessor for TodayCardLabelsView();
  *(a2 + 120) = &protocol witness table for CustomLayoutView;
  *(a2 + 88) = v63;
  *a2 = v52 & 1;
  *(a2 + 8) = v46;
  *(a2 + 16) = left;
  *(a2 + 24) = bottom;
  *(a2 + 32) = right;
  *(a2 + 40) = 0x4030000000000000;
  v54 = v53;
  v55 = v63;

  return v55;
}

uint64_t sub_1C9848@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v4 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_trailingLockupContainer];
  if (v4 && (v5 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_topLabelsView]) != 0 && *&v2[OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_todayCard])
  {
    v6 = result;
    if (v3[OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_parentSafeAreaInsets + 32])
    {

      v7 = v4;
      v8 = v5;
      sub_765590();
      v10 = v9;
    }

    else
    {
      v10 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_parentSafeAreaInsets];

      v11 = v4;
      v12 = v5;
    }

    v13 = [v3 traitCollection];
    v44 = sub_1D2C0C(v6, v13, v10);
    v15 = v14;
    v17 = v16;
    v19 = v18;

    v20 = [v3 traitCollection];
    v21 = sub_1D6644(v6, v20);
    v23 = v22;
    v25 = v24;
    v27 = v26;

    v28 = sub_1C750C();
    v29 = v3[OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_isExpanded];
    v43 = v3[OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_isTransitioning];

    if (v29)
    {
      v30 = 272.0;
    }

    else
    {
      v30 = 177.0;
    }

    v68 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_headerView];
    type metadata accessor for HeaderView();
    sub_7665D0();
    v66 = v5;
    v31 = type metadata accessor for TodayCardLabelsView();
    sub_7665D0();
    v32 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_labelsView];
    v63 = v31;
    v64 = &protocol witness table for CustomLayoutView;
    *&v62 = v32;
    v60 = type metadata accessor for TodayListCardLockupContainer();
    v61 = &protocol witness table for UIView;
    v33 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_lockupContainer];
    v58 = &protocol witness table for UIView;
    *&v59 = v4;
    v57 = v60;
    *&v56 = v33;
    v34 = OBJC_IVAR____TtC18ASMessagesProvider28TodayListCardLockupContainer_listCells;
    swift_beginAccess();
    v35 = *(*&v33[v34] + 16);
    if (*&v3[OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_riverContainerView])
    {
      *&v50 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_riverContainerView];
      sub_BE70(0, &qword_93E550);
      v36 = v32;
      v37 = v33;
      sub_7665D0();
    }

    else
    {
      v55 = 0;
      v53 = 0u;
      v54 = 0u;
      v38 = v32;
      v39 = v33;
    }

    v40 = v28 & 1;
    if (*&v3[OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_riverView])
    {
      *&v47 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_riverView];
      sub_BD88(&qword_9497B8);
      sub_7665D0();
    }

    else
    {
      v52 = 0;
      v50 = 0u;
      v51 = 0u;
    }

    v41 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_riverBackgroundView];
    if (v41)
    {
      v46 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_riverBackgroundView];
      type metadata accessor for RiverTodayCardBackgroundView();
      v42 = v41;
      sub_7665D0();
    }

    else
    {

      v49 = 0;
      v47 = 0u;
      v48 = 0u;
    }

    *a2 = v29;
    *(a2 + 1) = v43;
    *(a2 + 2) = v40;
    *(a2 + 3) = v46;
    *(a2 + 7) = BYTE4(v46);
    *(a2 + 8) = v44;
    *(a2 + 16) = v15;
    *(a2 + 24) = v17;
    *(a2 + 32) = v19;
    *(a2 + 40) = v21;
    *(a2 + 48) = v23;
    *(a2 + 56) = v25;
    *(a2 + 64) = v27;
    *(a2 + 72) = v30;
    sub_10914(&v67, a2 + 80);
    sub_10914(&v65, a2 + 120);
    sub_10914(&v62, a2 + 160);
    sub_10914(&v59, a2 + 200);
    result = sub_10914(&v56, a2 + 240);
    *(a2 + 280) = v35;
    *(a2 + 288) = v53;
    *(a2 + 304) = v54;
    *(a2 + 320) = v55;
    *(a2 + 328) = v50;
    *(a2 + 344) = v51;
    *(a2 + 360) = v52;
    *(a2 + 368) = v47;
    *(a2 + 384) = v48;
    *(a2 + 400) = v49;
  }

  else
  {
    *(a2 + 400) = 0;
    *(a2 + 368) = 0u;
    *(a2 + 384) = 0u;
    *(a2 + 336) = 0u;
    *(a2 + 352) = 0u;
    *(a2 + 304) = 0u;
    *(a2 + 320) = 0u;
    *(a2 + 272) = 0u;
    *(a2 + 288) = 0u;
    *(a2 + 240) = 0u;
    *(a2 + 256) = 0u;
    *(a2 + 208) = 0u;
    *(a2 + 224) = 0u;
    *(a2 + 176) = 0u;
    *(a2 + 192) = 0u;
    *(a2 + 144) = 0u;
    *(a2 + 160) = 0u;
    *(a2 + 112) = 0u;
    *(a2 + 128) = 0u;
    *(a2 + 80) = 0u;
    *(a2 + 96) = 0u;
    *(a2 + 48) = 0u;
    *(a2 + 64) = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
  }

  return result;
}

id sub_1C9CDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_7656C0();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v65 = &v62[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v64 = &v62[-v10];
  v11 = sub_BD88(&unk_955AA0);
  __chkstk_darwin(v11 - 8);
  v13 = &v62[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v14);
  v66 = &v62[-v15];
  __chkstk_darwin(v16);
  v18 = &v62[-v17];
  __chkstk_darwin(v19);
  v21 = &v62[-v20];
  v22 = a1;
  if (v3[OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_parentSafeAreaInsets + 32])
  {
    sub_765590();
    v24 = v23;
  }

  else
  {
    v24 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_parentSafeAreaInsets];
  }

  v69 = OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_isExpanded;
  v25 = v3[OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_isExpanded];
  v26 = &OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell__sizeCategory;
  if (!v3[OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_isExpanded])
  {
    v26 = &OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_originalSizeCategory;
  }

  v63 = v3[*v26];
  v27 = [v3 traitCollection];
  v67 = v7;
  v68 = v27;
  v28 = *(v7 + 16);
  v29 = (v7 + 56);
  v30 = (v7 + 48);
  if (v25 == 1)
  {
    v28(v21, v22, v6);
    (*v29)(v21, 0, 1, v6);
    sub_1ED18(v21, v18, &unk_955AA0);
    if ((*v30)(v18, 1, v6) == 1)
    {
      sub_10A2C(v18, &unk_955AA0);
      left = UIEdgeInsetsZero.left;
      bottom = UIEdgeInsetsZero.bottom;
      right = UIEdgeInsetsZero.right;
      v34 = v68;
    }

    else
    {
      v36 = v67;
      v37 = v64;
      (*(v67 + 32))(v64, v18, v6);
      sub_765650();
      sub_765650();
      v34 = v68;
      [v68 layoutDirection];
      sub_769BB0();
      left = v38;
      bottom = v39;
      right = v40;
      (*(v36 + 8))(v37, v6);
    }

    sub_10A2C(v21, &unk_955AA0);
    if ((sub_7699D0() & 1) == 0)
    {
      if (qword_93DD10 != -1)
      {
        swift_once();
      }

      v41 = sub_766CA0();
      sub_BE38(v41, qword_99FE78);
      sub_7671D0();
      sub_BD88(&unk_93F5C0);
      v42 = swift_allocObject();
      *(v42 + 16) = xmmword_77D9F0;
      *(v42 + 32) = v34;
      v43 = v34;
      v44 = sub_7671E0();
      sub_7666E0();
      v24 = v45;
    }

    v46 = v24 + 20.0;
  }

  else
  {
    v35 = v66;
    v28(v66, v22, v6);
    (*v29)(v35, 0, 1, v6);
    sub_1ED18(v35, v13, &unk_955AA0);
    if ((*v30)(v13, 1, v6) == 1)
    {
      sub_10A2C(v13, &unk_955AA0);
      left = UIEdgeInsetsZero.left;
      right = UIEdgeInsetsZero.right;
    }

    else
    {
      v47 = v67;
      v48 = v65;
      (*(v67 + 32))(v65, v13, v6);
      if (v63 != 4)
      {
        sub_765650();
        sub_765650();
      }

      v49 = v68;
      [v68 layoutDirection];
      sub_769BB0();
      left = v50;
      right = v51;

      (*(v47 + 8))(v48, v6);
    }

    sub_10A2C(v35, &unk_955AA0);
    bottom = 20.0;
    v46 = 20.0;
  }

  v52 = sub_1C750C();
  v53 = v3[v69];

  if (v53)
  {
    v54 = 272.0;
  }

  else
  {
    v54 = 177.0;
  }

  v55 = v52 & 1;
  v56 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_headerView];
  *(a2 + 88) = type metadata accessor for HeaderView();
  *(a2 + 96) = sub_1D6524(&qword_9497C8, type metadata accessor for HeaderView);
  *(a2 + 64) = v56;
  v57 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_labelsView];
  *(a2 + 128) = type metadata accessor for TodayCardLabelsView();
  *(a2 + 136) = &protocol witness table for CustomLayoutView;
  *(a2 + 104) = v57;
  v69 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_lockupContainer];
  *(a2 + 168) = type metadata accessor for TodayListCardLockupContainer();
  *(a2 + 176) = &protocol witness table for UIView;
  *(a2 + 144) = v69;
  *a2 = v53;
  *(a2 + 1) = v55;
  *(a2 + 8) = v46;
  *(a2 + 16) = left;
  *(a2 + 24) = bottom;
  *(a2 + 32) = right;
  *(a2 + 40) = 0x4030000000000000;
  *(a2 + 48) = v54;
  *(a2 + 56) = 0x405B800000000000;
  v58 = v56;
  v59 = v57;
  v60 = v69;

  return v60;
}

void sub_1CA454()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_BD88(&qword_9497A8);
  *&v4 = __chkstk_darwin(v3 - 8).n128_u64[0];
  v6 = &v21[-v5];
  v22.receiver = v1;
  v22.super_class = ObjectType;
  objc_msgSendSuper2(&v22, "prepareForReuse", v4);
  v7 = *(*&v1[OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_headerView] + OBJC_IVAR____TtC18ASMessagesProviderP33_F8126028EBC951D565C2F73D484F972E10HeaderView_mediaView);
  sub_501AE8();

  sub_6F8CC8();
  v8 = sub_765B10();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  v9 = OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_cardStyle;
  swift_beginAccess();
  sub_B33C8(v6, &v1[v9], &qword_9497A8);
  swift_endAccess();
  v1[OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_isMediaDark] = 0;
  v10 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_muteButton];
  *&v1[OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_muteButton] = 0;
  if (v10)
  {
    [v10 removeFromSuperview];
  }

  sub_1CA6B0();
  v11 = OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_riverView;
  v12 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_riverView];
  if (v12)
  {
    v13 = v12;
    v14 = sub_765960();

    swift_beginAccess();
    *(v14 + 32) = _swiftEmptyArrayStorage;

    v15 = *&v1[v11];
    if (v15)
    {
      v16 = v15;
      sub_7659F0();
    }
  }

  v17 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_riverBackgroundView];
  if (v17)
  {
    v18 = OBJC_IVAR____TtC18ASMessagesProvider28RiverTodayCardBackgroundView_colors;
    swift_beginAccess();
    v19 = *&v17[v18];
    *&v17[v18] = _swiftEmptyArrayStorage;
    v20 = v17;
    sub_4A348C(v19);
  }
}

void sub_1CA6B0()
{
  if (*(v0 + OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_isExpanded))
  {
    v1 = &OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell__sizeCategory;
  }

  else
  {
    v1 = &OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_originalSizeCategory;
  }

  if (*(v0 + *v1) == 6)
  {
    if (*(*(*(v0 + OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_headerView) + OBJC_IVAR____TtC18ASMessagesProviderP33_F8126028EBC951D565C2F73D484F972E10HeaderView_mediaView) + OBJC_IVAR____TtC18ASMessagesProvider18StoryCardMediaView_hasMedia) != 1)
    {
      return;
    }

    v2 = OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_riverView;
    v3 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_riverView);
    if (v3)
    {
      [v3 removeFromSuperview];
      v4 = *(v0 + v2);
    }

    else
    {
      v4 = 0;
    }

    *(v0 + v2) = 0;

    v17 = OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_riverContainerView;
    v18 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_riverContainerView);
    if (v18)
    {
      [v18 removeFromSuperview];
      v16 = *(v0 + v17);
    }

    else
    {
      v16 = 0;
    }

    *(v0 + v17) = 0;
  }

  else
  {
    v5 = OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_trailingLockupContainer;
    v6 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_trailingLockupContainer);
    if (v6)
    {
      [v6 removeFromSuperview];
      v7 = *(v0 + v5);
    }

    else
    {
      v7 = 0;
    }

    *(v0 + v5) = 0;

    v8 = OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_topLabelsView;
    v9 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_topLabelsView);
    if (v9)
    {
      [v9 removeFromSuperview];
      v10 = *(v0 + v8);
    }

    else
    {
      v10 = 0;
    }

    *(v0 + v8) = 0;

    v11 = OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_riverView;
    v12 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_riverView);
    if (v12)
    {
      [v12 removeFromSuperview];
      v13 = *(v0 + v11);
    }

    else
    {
      v13 = 0;
    }

    *(v0 + v11) = 0;

    v14 = OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_riverContainerView;
    v15 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_riverContainerView);
    if (v15)
    {
      [v15 removeFromSuperview];
      v16 = *(v0 + v14);
    }

    else
    {
      v16 = 0;
    }

    *(v0 + v14) = 0;
  }

  v19 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_riverBackgroundView);
  if (v19)
  {

    [v19 setHidden:1];
  }
}

id sub_1CA8D4()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_7593D0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_28399C();
  v7 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_labelsView];
  v8 = OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_isExpanded;
  if (v0[OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_isExpanded])
  {
    v9 = &OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell__sizeCategory;
  }

  else
  {
    v9 = &OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_originalSizeCategory;
  }

  v10 = v0[*v9];
  v11 = sub_234F64;
  v12 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
  v13 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
  v14 = sub_756A94;
  v52 = v4;
  v53 = v3;
  v51 = ObjectType;
  if (v10 != 6)
  {
    if (v10 == 4)
    {
      v11 = sub_234F64;
      v12 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
      v14 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
      v13 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
    }

    else
    {
      v11 = sub_756724;
      v12 = sub_7568E0;
      v13 = sub_7568B4;
      v14 = sub_7566F8;
    }
  }

  v15 = &v7[qword_950CB0];
  *v15 = sub_64A6C;
  v15[1] = 0;
  v15[2] = v14;
  v15[3] = 0;
  v15[4] = v13;
  v15[5] = 0;
  v15[6] = v12;
  v15[7] = 0;
  v15[8] = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
  v15[9] = 0;
  v15[10] = v11;
  v15[11] = 0;

  sub_3680EC();
  sub_1C750C();
  v16 = &v7[qword_950C70];
  *v16 = 0x4000000000000000;
  *(v16 + 1) = 0;
  *(v16 + 2) = 0;
  *(v16 + 3) = 0x4018000000000000;
  *(v16 + 4) = 0;
  v16[40] = 1;
  [v7 setNeedsLayout];
  v17 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_headerView];
  v18 = *&v17[OBJC_IVAR____TtC18ASMessagesProviderP33_F8126028EBC951D565C2F73D484F972E10HeaderView_mediaView];
  v19 = v0[v8];
  v20 = OBJC_IVAR____TtC18ASMessagesProvider18StoryCardMediaView_isExpanded;
  v18[OBJC_IVAR____TtC18ASMessagesProvider18StoryCardMediaView_isExpanded] = v19;
  v21 = *&v18[OBJC_IVAR____TtC18ASMessagesProvider18StoryCardMediaView_revealingImageView];
  v21[OBJC_IVAR____TtC18ASMessagesProvider18RevealingImageView_isExpanded] = v19;
  v22 = v18;
  [v21 setNeedsLayout];
  *(*&v22[OBJC_IVAR____TtC18ASMessagesProvider18StoryCardMediaView_revealingVideoView] + OBJC_IVAR____TtC18ASMessagesProvider18RevealingVideoView_isExpanded) = v18[v20];
  sub_247BF0();

  v23 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_lockupContainer];
  v24 = v1[v8];
  v25 = v23[OBJC_IVAR____TtC18ASMessagesProvider28TodayListCardLockupContainer_isExpanded];
  v23[OBJC_IVAR____TtC18ASMessagesProvider28TodayListCardLockupContainer_isExpanded] = v24;
  if (v24 != v25)
  {
    [v23 setNeedsLayout];
  }

  v26 = 20.0;
  if (v1[v8])
  {
    v26 = 0.0;
  }

  v27 = v51;
  v55.receiver = v1;
  v55.super_class = v51;
  objc_msgSendSuper2(&v55, "_setContinuousCornerRadius:", v26);
  v54.receiver = v1;
  v54.super_class = v27;
  objc_msgSendSuper2(&v54, "_continuousCornerRadius");
  v29 = v28;
  v31 = v52;
  v30 = v53;
  (*(v52 + 104))(v6, enum case for CornerStyle.continuous(_:), v53);
  sub_501278(v6, v29);
  v32 = [v17 layer];
  [v32 setMaskedCorners:sub_7697E0()];

  (*(v31 + 8))(v6, v30);
  v33 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_trailingLockupContainer];
  if (v33)
  {
    v34 = v1[v8];
    v35 = v33[OBJC_IVAR____TtC18ASMessagesProvider28TodayListCardLockupContainer_isExpanded];
    v33[OBJC_IVAR____TtC18ASMessagesProvider28TodayListCardLockupContainer_isExpanded] = v34;
    if (v34 != v35)
    {
      [v33 setNeedsLayout];
    }
  }

  v36 = OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_topLabelsView;
  v37 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_topLabelsView];
  if (v37)
  {
    v38 = &OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell__sizeCategory;
    if (!v1[v8])
    {
      v38 = &OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_originalSizeCategory;
    }

    v39 = v1[*v38];
    v40 = sub_234F64;
    v41 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
    v42 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
    v43 = sub_756A94;
    if (v39 != 6)
    {
      if (v39 == 4)
      {
        v40 = sub_234F64;
        v41 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
        v43 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
        v42 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
      }

      else
      {
        v40 = sub_756724;
        v41 = sub_7568E0;
        v42 = sub_7568B4;
        v43 = sub_7566F8;
      }
    }

    v44 = &v37[qword_950CB0];
    *v44 = sub_64A6C;
    v44[1] = 0;
    v44[2] = v43;
    v44[3] = 0;
    v44[4] = v42;
    v44[5] = 0;
    v44[6] = v41;
    v44[7] = 0;
    v44[8] = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
    v44[9] = 0;
    v44[10] = v40;
    v44[11] = 0;
    v45 = v37;

    sub_3680EC();

    v46 = *&v1[v36];
    if (v46)
    {
      v47 = v46;
      sub_1C750C();
      v48 = &v47[qword_950C70];
      *v48 = 0x4000000000000000;
      *(v48 + 1) = 0;
      *(v48 + 2) = 0;
      *(v48 + 3) = 0x4018000000000000;
      *(v48 + 4) = 0;
      v48[40] = 1;
      [v47 setNeedsLayout];
    }
  }

  sub_1CB000();
  sub_189CD0();
  return [v1 setNeedsLayout];
}

void sub_1CB000()
{
  if ((*(v0 + OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_isTransitioning) & 1) == 0)
  {
    v1 = OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_isExpanded;
    if (*(v0 + OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_isExpanded))
    {
      v2 = &OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell__sizeCategory;
    }

    else
    {
      v2 = &OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_originalSizeCategory;
    }

    if (*(v0 + *v2) == 6)
    {
      v3 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_isExpanded) ^ 1u;
    }

    else
    {
      v3 = 0;
    }

    [*(v0 + OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_labelsView) setHidden:v3];
    v4 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_topLabelsView);
    if (v4)
    {
      if (*(v0 + v1))
      {
        v5 = &OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell__sizeCategory;
      }

      else
      {
        v5 = &OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_originalSizeCategory;
      }

      if (*(v0 + *v5) == 6)
      {
        v6 = *(v0 + v1);
      }

      else
      {
        v6 = 1;
      }

      [v4 setHidden:v6];
    }

    v7 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_riverContainerView);
    if (v7)
    {
      if (*(v0 + v1))
      {
        v8 = &OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell__sizeCategory;
      }

      else
      {
        v8 = &OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_originalSizeCategory;
      }

      if (*(v0 + *v8) == 6)
      {
        v9 = *(v0 + v1) | *(*(*(v0 + OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_headerView) + OBJC_IVAR____TtC18ASMessagesProviderP33_F8126028EBC951D565C2F73D484F972E10HeaderView_mediaView) + OBJC_IVAR____TtC18ASMessagesProvider18StoryCardMediaView_hasMedia);
      }

      else
      {
        v9 = 1;
      }

      [v7 setHidden:v9 & 1];
    }

    v10 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_riverBackgroundView);
    if (v10)
    {
      if (*(v0 + v1))
      {
        v11 = &OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell__sizeCategory;
      }

      else
      {
        v11 = &OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_originalSizeCategory;
      }

      if (*(v0 + *v11) == 6)
      {
        v12 = *(v0 + v1) | *(*(*(v0 + OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_headerView) + OBJC_IVAR____TtC18ASMessagesProviderP33_F8126028EBC951D565C2F73D484F972E10HeaderView_mediaView) + OBJC_IVAR____TtC18ASMessagesProvider18StoryCardMediaView_hasMedia);
      }

      else
      {
        v12 = 1;
      }

      [v10 setHidden:v12 & 1];
    }

    if (*(v0 + v1))
    {
      v13 = &OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell__sizeCategory;
    }

    else
    {
      v13 = &OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_originalSizeCategory;
    }

    v14 = *(v0 + *v13);
    if (v14 == 6)
    {
      v15 = *(v0 + v1) ^ 1u;
    }

    else
    {
      v15 = (v14 == 4) & *(*(*(v0 + OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_headerView) + OBJC_IVAR____TtC18ASMessagesProviderP33_F8126028EBC951D565C2F73D484F972E10HeaderView_mediaView) + OBJC_IVAR____TtC18ASMessagesProvider18StoryCardMediaView_hasMedia);
    }

    [*(v0 + OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_lockupContainer) setHidden:v15];
    v16 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_trailingLockupContainer);
    if (v16)
    {
      if (*(v0 + v1))
      {
        v17 = &OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell__sizeCategory;
      }

      else
      {
        v17 = &OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_originalSizeCategory;
      }

      if (*(v0 + *v17) == 6)
      {
        v18 = *(v0 + v1);
      }

      else
      {
        v18 = 1;
      }

      [v16 setHidden:v18];
    }

    v19 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_headerView);
    v20 = (sub_1C750C() & 1) == 0;

    [v19 setHidden:v20];
  }
}

id sub_1CB278(unsigned __int8 a1)
{
  v2 = v1;
  [v1 setNeedsLayout];
  v4 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_labelsView];
  v5 = OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_isExpanded;
  if (v2[OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_isExpanded])
  {
    v6 = &OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell__sizeCategory;
  }

  else
  {
    v6 = &OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_originalSizeCategory;
  }

  *(v4 + qword_950C78) = v2[*v6];
  sub_367E48();
  v7 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_topLabelsView];
  if (v7)
  {
    if (v2[v5])
    {
      v8 = &OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell__sizeCategory;
    }

    else
    {
      v8 = &OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_originalSizeCategory;
    }

    v7[qword_950C78] = v2[*v8];
    v9 = v7;
    sub_367E48();
  }

  v10 = *(*&v2[OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_headerView] + OBJC_IVAR____TtC18ASMessagesProviderP33_F8126028EBC951D565C2F73D484F972E10HeaderView_mediaView);
  if (v2[v5])
  {
    v11 = &OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell__sizeCategory;
  }

  else
  {
    v11 = &OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_originalSizeCategory;
  }

  v10[OBJC_IVAR____TtC18ASMessagesProvider18StoryCardMediaView_sizeCategory] = v2[*v11];
  v12 = v10;
  sub_501F90();

  if (v2[v5])
  {
    v13 = &OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell__sizeCategory;
  }

  else
  {
    v13 = &OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_originalSizeCategory;
  }

  sub_1CB3D4(v2[*v13], a1);

  return [v2 setNeedsLayout];
}

void sub_1CB3D4(unsigned __int8 a1, unsigned __int8 a2)
{
  v3 = a1;
  v4 = a2;
  v5 = sub_75C100();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v53[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v53[-1] - v10;
  if (v3 == 7)
  {
    if (v4 == 7)
    {
      return;
    }
  }

  else if (v4 != 7)
  {
    switch(v3)
    {
      case 6:
        if (v4 == 6)
        {
          return;
        }

        break;
      case 5:
        if (v4 == 5)
        {
          return;
        }

        break;
      case 4:
        if (v4 == 4)
        {
          return;
        }

        break;
      default:
        if ((v4 - 7) <= 0xFFFFFFFC && v3 == v4)
        {
          return;
        }

        break;
    }
  }

  if (v2[OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_originalSizeCategory] == 6)
  {
    sub_75C060();
    sub_75C0A0();
    sub_75C0E0();
    v12 = OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_riverBackgroundView;
    v13 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_riverBackgroundView];
    v52 = v6;
    if (v13)
    {
      [v13 setHidden:0];
    }

    else
    {
      (*(v6 + 16))(v8, v11, v5);
      v14 = objc_allocWithZone(type metadata accessor for RiverTodayCardBackgroundView());
      v15 = sub_4A2A8C(v8);
      [v15 setClipsToBounds:1];
      [v2 bounds];
      CGRectGetWidth(v57);
      [v2 bounds];
      CGRectGetHeight(v58);
      [v15 bounds];
      [v15 setBounds:?];
      [v15 _setContinuousCornerRadius:20.0];
      v16 = [v15 layer];

      v17 = [v2 traitCollection];
      v18 = sub_7699F0();

      if (v18)
      {
        v19 = 10;
      }

      else
      {
        v19 = 5;
      }

      [v16 setMaskedCorners:{v19, v52}];

      v20 = *&v2[v12];
      *&v2[v12] = v15;
      v21 = v15;

      v22 = [v2 contentView];
      [v22 addSubview:v21];
    }

    v23 = OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_riverContainerView;
    if (!*&v2[OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_riverContainerView])
    {
      v24 = OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_riverView;
      if (!*&v2[OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_riverView])
      {
        v25 = [objc_allocWithZone(UIView) init];
        [v25 setClipsToBounds:1];
        v26 = *&v2[v23];
        *&v2[v23] = v25;
        v27 = v25;

        v28 = [v2 contentView];
        [v28 addSubview:v27];

        type metadata accessor for RiverCardDataSource();
        v29 = swift_allocObject();
        *(v29 + 32) = _swiftEmptyArrayStorage;
        *(v29 + 16) = xmmword_78A4F0;
        *(v29 + 40) = vdupq_n_s64(0x4058C00000000000uLL);
        (*(v52 + 16))(v8, v11, v5);
        v30 = objc_allocWithZone(sub_BD88(&qword_9497B8));

        v31 = sub_765950();
        [v31 setClipsToBounds:0];
        v32 = *&v2[v24];
        *&v2[v24] = v31;
        v33 = v31;

        [v27 addSubview:v33];
      }
    }

    v34 = OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_trailingLockupContainer;
    if (!*&v2[OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_trailingLockupContainer])
    {
      type metadata accessor for TodayListCardLockupContainer();
      v35 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      v36 = v35;
      v37 = v2[OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_isExpanded];
      v38 = v35[OBJC_IVAR____TtC18ASMessagesProvider28TodayListCardLockupContainer_isExpanded];
      v35[OBJC_IVAR____TtC18ASMessagesProvider28TodayListCardLockupContainer_isExpanded] = v37;
      if (v37 != v38)
      {
        [v35 setNeedsLayout];
      }

      v39 = v36;
      v40 = [v39 layer];
      [v40 setZPosition:0.0];

      [v39 setClipsToBounds:1];
      v41 = *&v2[v34];
      *&v2[v34] = v39;
      v42 = v39;

      v43 = [v2 contentView];
      [v43 addSubview:v42];
    }

    v44 = OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_topLabelsView;
    if (!*&v2[OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_topLabelsView])
    {
      v53[0] = sub_64A6C;
      v53[1] = 0;
      v53[2] = sub_756A94;
      v53[3] = 0;
      v53[4] = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
      v53[5] = 0;
      v53[6] = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
      v53[7] = 0;
      v53[8] = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
      v53[9] = 0;
      v53[10] = sub_234F64;
      v53[11] = 0;
      v54 = 0x4000000000000000uLL;
      *v55 = 0;
      *&v55[8] = 0x4018000000000000;
      *&v55[16] = 0;
      v55[24] = 1;
      v45 = objc_allocWithZone(type metadata accessor for TodayCardLabelsView());
      v46 = sub_367388(v53, &v54);
      sub_1C750C();
      v47 = &v46[qword_950C70];
      *(v47 + 25) = *&v55[9];
      v48 = *v55;
      *v47 = v54;
      *(v47 + 1) = v48;
      [v46 setNeedsLayout];
      v46[qword_950C78] = v3;
      sub_367E48();
      v49 = *&v2[v44];
      *&v2[v44] = v46;
      v50 = v46;

      v51 = [v2 contentView];
      [v51 addSubview:v50];
    }

    [v2 setNeedsLayout];
    (*(v52 + 8))(v11, v5);
  }

  else
  {

    sub_1CA6B0();
  }
}

void sub_1CBB4C()
{
  v1 = v0;
  swift_beginAccess();
  swift_weakAssign();
  v2 = (v0 + OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_impressionsUpdateBlock);
  swift_beginAccess();
  v3 = *v2;
  *v2 = 0;
  v2[1] = 0;
  sub_F704(v3);
  type metadata accessor for TodayListCardLockupContainer();
  sub_1D6524(&qword_9497B0, type metadata accessor for TodayListCardLockupContainer);
  sub_7633E0();
  v4 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_trailingLockupContainer);
  if (v4)
  {
    v5 = v4;
    sub_7633E0();
  }
}

void sub_1CBC7C()
{
  v1 = v0;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_75F4E0();
  }

  swift_weakAssign();
  v2 = (v0 + OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_impressionsUpdateBlock);
  swift_beginAccess();
  v3 = *v2;
  *v2 = 0;
  v2[1] = 0;
  sub_F704(v3);
  type metadata accessor for TodayListCardLockupContainer();
  sub_1D6524(&qword_9497B0, type metadata accessor for TodayListCardLockupContainer);
  sub_7633D0();
  v4 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_trailingLockupContainer);
  if (v4)
  {
    v5 = v4;
    sub_7633D0();
  }
}

void sub_1CBDBC(unint64_t a1, unsigned int a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v151 = a4;
  v159 = a1;
  v145 = sub_75F730();
  v144 = *(v145 - 8);
  __chkstk_darwin(v145);
  v152 = &v130 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_765B10();
  v155 = *(v9 - 8);
  v156 = v9;
  __chkstk_darwin(v9);
  v153 = &v130 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = sub_760260();
  v149 = *(v150 - 8);
  __chkstk_darwin(v150);
  v157 = &v130 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v148 = &v130 - v13;
  v14 = sub_BD88(&qword_9497A8);
  __chkstk_darwin(v14 - 8);
  v16 = &v130 - v15;
  v17 = sub_BD88(&unk_955AA0);
  __chkstk_darwin(v17 - 8);
  v19 = &v130 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v130 - v21;
  v23 = sub_7656C0();
  v24 = *(v23 - 8);
  v25 = *(v24 + 16);
  v143 = a3;
  v25(v22, a3, v23);
  (*(v24 + 56))(v22, 0, 1, v23);
  v26 = OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_pageGrid;
  swift_beginAccess();
  sub_B33C8(v22, &v4[v26], &unk_955AA0);
  swift_endAccess();
  v27 = OBJC_IVAR____TtC18ASMessagesProviderP33_F8126028EBC951D565C2F73D484F972E10HeaderView_mediaView;
  v154 = *&v4[OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_headerView];
  v28 = *&v154[OBJC_IVAR____TtC18ASMessagesProviderP33_F8126028EBC951D565C2F73D484F972E10HeaderView_mediaView];
  sub_1ED18(&v4[v26], v19, &unk_955AA0);
  v29 = OBJC_IVAR____TtC18ASMessagesProvider18StoryCardMediaView_pageGrid;
  swift_beginAccess();
  v30 = v28;
  sub_B33C8(v19, v28 + v29, &unk_955AA0);
  swift_endAccess();

  v158 = a2;
  sub_28026C(a2);
  v31 = [v4 backgroundView];
  if (v31)
  {
    v32 = v31;
    v33 = sub_765A30();
    if (!v33)
    {
      sub_BE70(0, &qword_93E540);
      v33 = sub_76A060();
    }

    v34 = v33;
    [v32 setBackgroundColor:v33];
  }

  *&v5[OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_todayCard] = v159;

  v35 = sub_765B20();
  sub_75DB40();
  v36 = swift_dynamicCastClass();
  if (!v36)
  {

    *(*&v154[v27] + OBJC_IVAR____TtC18ASMessagesProvider18StoryCardMediaView_hasMedia) = 0;
    sub_1CB000();
    return;
  }

  v37 = v36;
  v141 = v35;
  sub_765B30();
  (*(v155 + 56))(v16, 0, 1, v156);
  v38 = OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_cardStyle;
  swift_beginAccess();
  sub_B33C8(v16, &v5[v38], &qword_9497A8);
  swift_endAccess();
  v39 = sub_75DAF0();
  v40 = OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_isMediaDark;
  v5[OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_isMediaDark] = v39 & 1;
  v140 = OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_originalSizeCategory;
  v41 = v5[OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_originalSizeCategory];
  v169 = sub_765B20();
  sub_75B090();
  sub_BD88(&qword_947B48);
  v42 = swift_dynamicCast();
  v147 = v37;
  if (v42)
  {
    v146 = v40;
    sub_10914(&v166, &aBlock);
    sub_B170(&aBlock, v163);
    v43 = [v5 traitCollection];
    v44 = sub_7618A0();

    if (v44)
    {
      sub_B170(&aBlock, v163);
      v45 = sub_761880();
      if (v45)
      {
        sub_1D2FCC(v44, v45, v158, v143, v151);

        if (qword_93C9E0 != -1)
        {
          swift_once();
        }

        v46 = qword_99C950;
        v47 = *algn_99C958;
        v48 = sub_75DAF0();
        v49 = v148;
        sub_765AA0();
        v50 = sub_760240();
        (*(v149 + 8))(v49, v150);
        sub_1D278C(v46, v47, v48 & 1, v50 & 1);

        sub_BEB8(&aBlock);
        v40 = v146;
        goto LABEL_29;
      }
    }

    sub_BEB8(&aBlock);
    v40 = v146;
  }

  else
  {
    v168 = 0;
    v166 = 0u;
    v167 = 0u;
    sub_10A2C(&v166, &qword_947B50);
  }

  v169 = sub_765B20();
  if (!swift_dynamicCast())
  {
    v168 = 0;
    v166 = 0u;
    v167 = 0u;
    sub_10A2C(&v166, &qword_947B50);
LABEL_28:
    *(*&v154[v27] + OBJC_IVAR____TtC18ASMessagesProvider18StoryCardMediaView_hasMedia) = 0;
    goto LABEL_29;
  }

  sub_10914(&v166, &aBlock);
  sub_B170(&aBlock, v163);
  v51 = [v5 traitCollection];
  v52 = sub_7618B0();

  if (!v52)
  {
LABEL_27:
    sub_BEB8(&aBlock);
    goto LABEL_28;
  }

  sub_B170(&aBlock, v163);
  v53 = sub_761880();
  if (!v53)
  {

    goto LABEL_27;
  }

  v54 = v40;
  if (v41 == 7)
  {
    v55 = v158;
  }

  else
  {
    v55 = v41;
  }

  sub_1D4D4C(v52, v53, v55, v143, v151);

  if (qword_93C9D8 != -1)
  {
    swift_once();
  }

  v56 = qword_99C940;
  v57 = *algn_99C948;
  v58 = sub_75DAF0();
  v59 = v148;
  sub_765AA0();
  v60 = sub_760240();
  (*(v149 + 8))(v59, v150);
  sub_1D278C(v56, v57, v58 & 1, v60 & 1);

  sub_BEB8(&aBlock);
  v40 = v54;
LABEL_29:
  v61 = *&v5[OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_labelsView];
  if ((sub_1C750C() & 1) != 0 && *(v40 + v5) == 1)
  {
    (*(v155 + 104))(v153, enum case for TodayCard.Style.dark(_:), v156);
  }

  else
  {
    sub_765B30();
  }

  v62 = sub_765B50();
  v64 = v63;
  v142 = sub_765B40();
  v146 = v65;
  v66 = sub_765A10();
  v148 = v67;
  sub_765A80();
  v68 = sub_75DB10();
  v154 = v69;
  sub_765AA0();
  v70 = v158;
  v71 = sub_756A94;
  v133 = v68;
  v132 = v66;
  if (v158 == 6)
  {
    v134 = sub_64A6C;
    v135 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
    v136 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
    v137 = sub_234F64;
  }

  else if (v158 == 4)
  {
    v137 = sub_234F64;
    v136 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
    v71 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
    v134 = sub_64A6C;
    v135 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
  }

  else
  {
    v137 = sub_756724;
    v136 = sub_7568E0;
    v135 = sub_7568B4;
    v71 = sub_7566F8;
    v134 = sub_64A6C;
  }

  v138 = sub_1C750C();
  v61[qword_950CA8] = 0;
  v72 = *&v61[qword_950C90];
  *(v72 + OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_disableAnimatedFontChange) = 1;
  v73 = *&v61[qword_950C88];
  v139 = v64;
  sub_728444(v62, v64);
  v74 = sub_760250();
  v75 = OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_label;
  v76 = *&v73[OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_label];
  if (v70 != 4 || (v74 & 1) != 0)
  {
    v77 = [v76 text];
    if (v77)
    {
      v78 = v77;
      sub_769240();
    }

    v79 = sub_7692D0();
    v80 = v79 & 1;

    if (v80 == [*&v73[v75] isHidden] || (v73[OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_isTransitioning] & 1) == 0)
    {
      [*&v73[v75] setHidden:v80];
    }

    else
    {
      if ((v79 & 1) == 0)
      {
        [*&v73[v75] setAlpha:0.0];
        v130 = objc_opt_self();
        [v130 inheritedAnimationDuration];
        v82 = v81;
        v83 = swift_allocObject();
        *(v83 + 16) = v73;
        v164 = sub_A922C;
        v165 = v83;
        aBlock = _NSConcreteStackBlock;
        v161 = 1107296256;
        v162 = sub_23F0CC;
        v163 = &unk_887F10;
        v131 = _Block_copy(&aBlock);
        v84 = v73;

        v85 = swift_allocObject();
        *(v85 + 16) = v84;
        v164 = sub_A9238;
        v165 = v85;
        aBlock = _NSConcreteStackBlock;
        v161 = 1107296256;
        v162 = sub_3D6D80;
        v163 = &unk_887F60;
        v86 = _Block_copy(&aBlock);
        v87 = v84;

        v88 = v131;
        [v130 animateWithDuration:0 delay:v131 options:v86 animations:v82 completion:0.0];
        _Block_release(v86);
        _Block_release(v88);
      }

      [*&v73[v75] setHidden:v79 & 1];
      v73[OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_labelRequiresUnanimatedLayout] = 1;
      [v73 setNeedsLayout];
    }
  }

  else if (([v76 isHidden] & 1) != 0 || (v73[OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_isTransitioning] & 1) == 0)
  {
    [*&v73[v75] setHidden:1];
  }

  else
  {
    [*&v73[v75] setHidden:1];
    v73[OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_labelRequiresUnanimatedLayout] = 1;
    [v73 setNeedsLayout];
  }

  v89 = &v61[qword_950CB0];
  *v89 = v134;
  v89[1] = 0;
  v89[2] = v71;
  v89[3] = 0;
  v89[4] = v135;
  v89[5] = 0;
  v89[6] = v136;
  v89[7] = 0;
  v89[8] = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
  v89[9] = 0;
  v89[10] = v137;
  v89[11] = 0;

  sub_3680EC();
  v90 = v154;
  if (v146)
  {
    if (v158 == 4)
    {
      sub_369998();
    }

    else
    {
      sub_3699BC();
    }

    v91 = OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_label;
    v92 = *(v72 + OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_label);
    v93 = objc_allocWithZone(NSAttributedString);
    v94 = v92;
    v95 = sub_769210();
    type metadata accessor for Key(0);
    sub_1D6524(&qword_93EC10, type metadata accessor for Key);
    isa = sub_7690E0().super.isa;

    v97 = [v93 initWithString:v95 attributes:isa];

    [v94 setAttributedText:v97];
    [*(v72 + v91) setAdjustsFontSizeToFitWidth:0];
    [*(v72 + v91) setMinimumScaleFactor:0.0];
    [*(v72 + v91) setAttributedText:0];
    if (v148 && v61[qword_950C80] == 4)
    {
      v90 = v154;
      if (v158 == 4)
      {
        v98 = v142;
        v99 = v146;
        v100 = v132;
        v101 = v148;
      }

      else
      {
        v98 = v132;
        v99 = v148;
        v100 = v142;
        v101 = v146;
      }

      sub_72853C(v98, v99, v100, v101);
    }

    else
    {
      sub_728444(v142, v146);
      v90 = v154;
    }
  }

  v102 = OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_label;
  v103 = *(v72 + OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_label);
  v104 = [v103 text];
  if (v104)
  {
    v105 = v147;
    v106 = &unk_90D000;
  }

  else
  {
    v104 = [*(v72 + v102) attributedText];
    v106 = &unk_90D000;
    if (!v104)
    {
      v107 = 1;
      v105 = v147;
      goto LABEL_68;
    }

    v105 = v147;
  }

  v107 = 0;
LABEL_68:
  v108 = v158;
  [v103 setHidden:v107];

  [v61 v106[463]];
  v109 = *&v61[qword_950C98];
  [v109 setImage:0];
  [v109 setHidden:1];
  if (v108 != 4 && (sub_760230() & 1) == 0 && v90)
  {
    v110 = v105;
    v111 = HIBYTE(v90) & 0xF;
    if ((v90 & 0x2000000000000000) == 0)
    {
      v111 = v133 & 0xFFFFFFFFFFFFLL;
    }

    v112 = v111 == 0;
    v113 = *&v61[qword_950CA0];
    v114 = &v113[OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_label];
    v115 = *&v113[OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_label];
    goto LABEL_76;
  }

  v113 = *&v61[qword_950CA0];
  v114 = &v113[OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_label];
  v115 = *&v113[OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_label];
  if (v90)
  {
    v110 = v105;
    v112 = 1;
LABEL_76:
    v116 = v115;
    v90 = sub_769210();
    v105 = v110;
    goto LABEL_78;
  }

  v116 = v115;
  v112 = 1;
LABEL_78:
  [v116 setText:v90];

  if (v112 == [*v114 isHidden] || (v113[OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_isTransitioning] & 1) == 0)
  {
    [*v114 setHidden:v112];
  }

  else
  {
    if (!v112)
    {
      [*v114 setAlpha:0.0];
      v117 = objc_opt_self();
      [v117 inheritedAnimationDuration];
      v119 = v118;
      v120 = swift_allocObject();
      *(v120 + 16) = v113;
      v164 = sub_A8FE4;
      v165 = v120;
      aBlock = _NSConcreteStackBlock;
      v161 = 1107296256;
      v162 = sub_23F0CC;
      v163 = &unk_887E70;
      v121 = _Block_copy(&aBlock);
      v122 = v113;

      v123 = swift_allocObject();
      *(v123 + 16) = v122;
      v164 = sub_A9004;
      v165 = v123;
      aBlock = _NSConcreteStackBlock;
      v161 = 1107296256;
      v162 = sub_3D6D80;
      v163 = &unk_887EC0;
      v124 = _Block_copy(&aBlock);
      v125 = v122;
      v105 = v147;

      [v117 animateWithDuration:0 delay:v121 options:v124 animations:v119 completion:0.0];
      _Block_release(v124);
      _Block_release(v121);
    }

    [*v114 setHidden:v112];
    v113[OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_labelRequiresUnanimatedLayout] = 1;
    [v113 setNeedsLayout];
  }

  v126 = v153;
  sub_366B5C(v153, v138 & 1);
  [v61 setNeedsLayout];

  (*(v149 + 8))(v157, v150);
  (*(v144 + 8))(v152, v145);
  sub_1C750C();
  v127 = &v61[qword_950C70];
  *v127 = 0x4000000000000000;
  *(v127 + 1) = 0;
  *(v127 + 2) = 0;
  *(v127 + 3) = 0x4018000000000000;
  *(v127 + 4) = 0;
  v127[40] = 1;
  [v61 setNeedsLayout];
  (*(v155 + 8))(v126, v156);
  v128 = sub_75DB30();
  sub_75A110();
  sub_768900();
  v129 = v151;
  sub_768ED0();
  sub_6FAD6C(v128);

  if (v5[v140] == 6)
  {
    sub_1CD530(v159, v105, v158, v143, v129);
  }

  sub_1C72E0();
  sub_1CA6B0();
  sub_1CB000();
  sub_1C75D0();
  sub_1CEAB8();
  [v5 setNeedsLayout];
}

void sub_1CD530(unint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v134 = a5;
  v148 = a3;
  v147 = a1;
  v138 = sub_760260();
  v137 = *(v138 - 8);
  __chkstk_darwin(v138);
  v149 = &v123 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = sub_75F730();
  v135 = *(v136 - 8);
  __chkstk_darwin(v136);
  v10 = &v123 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_765B10();
  v143 = *(v11 - 8);
  v12 = __chkstk_darwin(v11);
  v14 = &v123 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = *(v5 + OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_headerView);
  v139 = OBJC_IVAR____TtC18ASMessagesProviderP33_F8126028EBC951D565C2F73D484F972E10HeaderView_mediaView;
  v15 = *(*(v141 + OBJC_IVAR____TtC18ASMessagesProviderP33_F8126028EBC951D565C2F73D484F972E10HeaderView_mediaView) + OBJC_IVAR____TtC18ASMessagesProvider18StoryCardMediaView_hasMedia);
  v16 = OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_riverView;
  v17 = *(v5 + OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_riverView);
  v145 = a2;
  v146 = v5;
  v144 = v14;
  v142 = v10;
  if (v15)
  {
    if (v17)
    {
      v18 = v17;
      v19 = sub_765960();

      swift_beginAccess();
      *(v19 + 32) = _swiftEmptyArrayStorage;
    }

    v20 = *(v6 + OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_riverBackgroundView);
    if (v20)
    {
      v21 = OBJC_IVAR____TtC18ASMessagesProvider28RiverTodayCardBackgroundView_colors;
      swift_beginAccess();
      v22 = *&v20[v21];
      *&v20[v21] = _swiftEmptyArrayStorage;
      v23 = v20;
      sub_4A348C(v22);
      goto LABEL_35;
    }

    goto LABEL_36;
  }

  if (v17)
  {
    v24 = v17;
    v25 = sub_765960();

    v26 = sub_75DB30();
    swift_beginAccess();
    *(v25 + 32) = v26;

    v27 = *(v6 + v16);
    if (v27)
    {
      v28 = v27;
      v29 = sub_765960();

      sub_75A110();
      sub_768900();
      sub_768ED0();
      *(v29 + 16) = aBlock;
    }
  }

  v30 = *(v6 + OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_riverBackgroundView);
  if (!v30)
  {
    goto LABEL_36;
  }

  v23 = v30;
  v31 = sub_75DB30();
  v32 = v31;
  aBlock = _swiftEmptyArrayStorage;
  v33 = v31 & 0xFFFFFFFFFFFFFF8;
  if (v31 >> 62)
  {
LABEL_32:
    v34 = sub_76A860();
    if (v34)
    {
      goto LABEL_12;
    }

LABEL_33:
    v133 = _swiftEmptyArrayStorage;
    goto LABEL_34;
  }

  v34 = *(&dword_10 + (v31 & 0xFFFFFFFFFFFFFF8));
  if (!v34)
  {
    goto LABEL_33;
  }

LABEL_12:
  v35 = 0;
  v133 = _swiftEmptyArrayStorage;
  v140 = v11;
  do
  {
    v11 = v35;
    while (1)
    {
      if ((v32 & 0xC000000000000001) != 0)
      {
        sub_76A770();
        v35 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          goto LABEL_30;
        }
      }

      else
      {
        if (v11 >= *(v33 + 16))
        {
          goto LABEL_31;
        }

        v35 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
LABEL_30:
          __break(1u);
LABEL_31:
          __break(1u);
          goto LABEL_32;
        }
      }

      if (sub_764F20())
      {
        break;
      }

LABEL_15:
      ++v11;
      if (v35 == v34)
      {
        v11 = v140;
        goto LABEL_34;
      }
    }

    v36 = sub_7651A0();

    if (!v36)
    {
      goto LABEL_15;
    }

    sub_769440();
    if (*(&dword_10 + (aBlock & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (aBlock & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_7694C0();
    }

    sub_769500();
    v133 = aBlock;
    v11 = v140;
  }

  while (v35 != v34);
LABEL_34:

  v37 = OBJC_IVAR____TtC18ASMessagesProvider28RiverTodayCardBackgroundView_colors;
  swift_beginAccess();
  v38 = *&v23[v37];
  *&v23[v37] = v133;
  sub_4A348C(v38);
  v6 = v146;
  v14 = v144;
LABEL_35:

LABEL_36:
  v39 = *(v6 + OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_topLabelsView);
  if (!v39)
  {
    goto LABEL_97;
  }

  v40 = *(*&v139[v141] + OBJC_IVAR____TtC18ASMessagesProvider18StoryCardMediaView_hasMedia) == 1;
  v140 = v11;
  if (v40)
  {
    if (*(v6 + OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_isMediaDark))
    {
      goto LABEL_45;
    }

    goto LABEL_40;
  }

  if (*(v6 + OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_isExpanded))
  {
    v42 = &OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell__sizeCategory;
  }

  else
  {
    v42 = &OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_originalSizeCategory;
  }

  if (*(v6 + *v42) != 6)
  {
LABEL_40:
    v41 = v39;
    sub_765B30();
    goto LABEL_46;
  }

LABEL_45:
  (*(v143 + 104))(v14, enum case for TodayCard.Style.dark(_:), v11, v12);
  v43 = v39;
LABEL_46:
  v44 = sub_765B50();
  v46 = v45;
  v133 = sub_765B40();
  v139 = v47;
  v126 = sub_765A10();
  v141 = v48;
  sub_765A80();
  v49 = sub_75DB10();
  v147 = v50;
  sub_765AA0();
  v51 = v148;
  v52 = sub_756A94;
  v127 = v49;
  if (v148 == 6)
  {
    v130 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
    v131 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
    v132 = sub_234F64;
  }

  else if (v148 == 4)
  {
    v132 = sub_234F64;
    v131 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
    v52 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
    v130 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
  }

  else
  {
    v132 = sub_756724;
    v131 = sub_7568E0;
    v130 = sub_7568B4;
    v52 = sub_7566F8;
  }

  v128 = sub_1C750C();
  v39[qword_950CA8] = 0;
  v53 = *&v39[qword_950C90];
  *(v53 + OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_disableAnimatedFontChange) = 1;
  v54 = *&v39[qword_950C88];
  v129 = v46;
  sub_728444(v44, v46);
  v55 = sub_760250();
  v56 = OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_label;
  v57 = *&v54[OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_label];
  if (v51 != 4 || (v55 & 1) != 0)
  {
    v58 = [v57 text];
    if (v58)
    {
      v59 = v58;
      sub_769240();
    }

    v60 = sub_7692D0();
    v61 = v60 & 1;

    if (v61 == [*&v54[v56] isHidden] || (v54[OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_isTransitioning] & 1) == 0)
    {
      [*&v54[v56] setHidden:v61];
    }

    else
    {
      if ((v60 & 1) == 0)
      {
        [*&v54[v56] setAlpha:0.0];
        v125 = objc_opt_self();
        [v125 inheritedAnimationDuration];
        v63 = v62;
        v64 = swift_allocObject();
        *(v64 + 16) = v54;
        v154 = sub_A922C;
        v155 = v64;
        aBlock = _NSConcreteStackBlock;
        v151 = 1107296256;
        v152 = sub_23F0CC;
        v153 = &unk_8880A0;
        v124 = _Block_copy(&aBlock);
        v65 = v54;

        v66 = swift_allocObject();
        *(v66 + 16) = v65;
        v154 = sub_A9238;
        v155 = v66;
        aBlock = _NSConcreteStackBlock;
        v151 = 1107296256;
        v152 = sub_3D6D80;
        v153 = &unk_8880F0;
        v67 = _Block_copy(&aBlock);
        v68 = v65;

        v69 = v124;
        [v125 animateWithDuration:0 delay:v124 options:v67 animations:v63 completion:0.0];
        _Block_release(v67);
        _Block_release(v69);
      }

      [*&v54[v56] setHidden:v60 & 1];
      v54[OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_labelRequiresUnanimatedLayout] = 1;
LABEL_64:
      [v54 setNeedsLayout];
    }
  }

  else
  {
    if ([v57 isHidden] & 1) == 0 && (v54[OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_isTransitioning])
    {
      [*&v54[v56] setHidden:1];
      v54[OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_labelRequiresUnanimatedLayout] = 1;
      goto LABEL_64;
    }

    [*&v54[v56] setHidden:1];
  }

  v70 = &v39[qword_950CB0];
  *v70 = sub_64A6C;
  v70[1] = 0;
  v70[2] = v52;
  v70[3] = 0;
  v70[4] = v130;
  v70[5] = 0;
  v70[6] = v131;
  v70[7] = 0;
  v70[8] = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
  v70[9] = 0;
  v70[10] = v132;
  v70[11] = 0;

  sub_3680EC();
  v11 = v147;
  if (v139)
  {
    if (v148 == 4)
    {
      sub_369998();
    }

    else
    {
      sub_3699BC();
    }

    v71 = OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_label;
    v72 = *(v53 + OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_label);
    v73 = objc_allocWithZone(NSAttributedString);
    v74 = v72;
    v75 = sub_769210();
    type metadata accessor for Key(0);
    sub_1D6524(&qword_93EC10, type metadata accessor for Key);
    isa = sub_7690E0().super.isa;

    v77 = [v73 initWithString:v75 attributes:isa];

    [v74 setAttributedText:v77];
    [*(v53 + v71) setAdjustsFontSizeToFitWidth:0];
    [*(v53 + v71) setMinimumScaleFactor:0.0];
    [*(v53 + v71) setAttributedText:0];
    if (v141 && v39[qword_950C80] == 4)
    {
      v11 = v147;
      if (v148 == 4)
      {
        v78 = v133;
        v79 = v139;
        v80 = v126;
        v81 = v141;
      }

      else
      {
        v78 = v126;
        v79 = v141;
        v80 = v133;
        v81 = v139;
      }

      sub_72853C(v78, v79, v80, v81);
    }

    else
    {
      sub_728444(v133, v139);
      v11 = v147;
    }
  }

  v82 = OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_label;
  v83 = *(v53 + OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_label);
  v84 = [v83 text];
  if (v84 || (v84 = [*(v53 + v82) attributedText]) != 0)
  {
    v6 = v146;

    v85 = 0;
  }

  else
  {
    v85 = 1;
    v6 = v146;
  }

  v86 = v148;
  [v83 setHidden:v85];

  [v39 setNeedsLayout];
  v87 = *&v39[qword_950C98];
  [v87 setImage:0];
  [v87 setHidden:1];
  if (v86 == 4 || (sub_760230() & 1) != 0 || !v11)
  {
    v90 = *&v39[qword_950CA0];
    v91 = &v90[OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_label];
    v92 = *&v90[OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_label];
    if (v11)
    {
      v89 = 1;
      goto LABEL_88;
    }

    v93 = v92;
    v89 = 1;
  }

  else
  {
    v88 = HIBYTE(v11) & 0xF;
    if ((v11 & 0x2000000000000000) == 0)
    {
      v88 = v127 & 0xFFFFFFFFFFFFLL;
    }

    v89 = v88 == 0;
    v90 = *&v39[qword_950CA0];
    v91 = &v90[OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_label];
    v92 = *&v90[OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_label];
LABEL_88:
    v93 = v92;
    v11 = sub_769210();
  }

  [v93 setText:v11];

  v94 = [*v91 isHidden];
  v95 = v144;
  if (v89 == v94 || (v90[OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_isTransitioning] & 1) == 0)
  {
    [*v91 setHidden:v89];
  }

  else
  {
    if (!v89)
    {
      [*v91 setAlpha:0.0];
      v96 = objc_opt_self();
      [v96 inheritedAnimationDuration];
      v98 = v97;
      v99 = swift_allocObject();
      *(v99 + 16) = v90;
      v154 = sub_A922C;
      v155 = v99;
      aBlock = _NSConcreteStackBlock;
      v151 = 1107296256;
      v152 = sub_23F0CC;
      v153 = &unk_888000;
      v11 = _Block_copy(&aBlock);
      v100 = v90;

      v101 = swift_allocObject();
      *(v101 + 16) = v100;
      v154 = sub_A9238;
      v155 = v101;
      aBlock = _NSConcreteStackBlock;
      v151 = 1107296256;
      v6 = v146;
      v152 = sub_3D6D80;
      v153 = &unk_888050;
      v102 = _Block_copy(&aBlock);
      v103 = v100;
      v95 = v144;

      [v96 animateWithDuration:0 delay:v11 options:v102 animations:v98 completion:0.0];
      _Block_release(v102);
      _Block_release(v11);
    }

    [*v91 setHidden:v89];
    v90[OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_labelRequiresUnanimatedLayout] = 1;
    [v90 setNeedsLayout];
  }

  v104 = v140;
  sub_366B5C(v95, v128 & 1);
  [v39 setNeedsLayout];

  (*(v137 + 8))(v149, v138);
  (*(v135 + 8))(v142, v136);
  sub_1C750C();
  v105 = &v39[qword_950C70];
  *v105 = 0x4000000000000000;
  *(v105 + 1) = 0;
  *(v105 + 2) = 0;
  *(v105 + 3) = 0x4018000000000000;
  *(v105 + 4) = 0;
  v105[40] = 1;
  [v39 setNeedsLayout];

  (*(v143 + 8))(v95, v104);
LABEL_97:
  if (*(v6 + OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_isExpanded))
  {
    return;
  }

  v106 = sub_75DB30();
  v107 = v106;
  v108 = v106 >> 62;
  if (v106 >> 62)
  {
    if (v106 < 0)
    {
      v111 = v106;
    }

    else
    {
      v111 = v106 & 0xFFFFFFFFFFFFFF8;
    }

    v112 = sub_76A860();
    if (sub_76A860() < 0)
    {
      __break(1u);
      goto LABEL_134;
    }

    if (v112 >= 6)
    {
      v122 = 6;
    }

    else
    {
      v122 = v112;
    }

    if ((v112 & 0x8000000000000000) == 0)
    {
      v110 = v122;
    }

    else
    {
      v110 = 6;
    }

    if (sub_76A860() < v110)
    {
      goto LABEL_143;
    }

LABEL_103:
    if ((v107 & 0xC000000000000001) != 0 && v110)
    {
      sub_764F90();

      sub_76A750(0);
      if (v110 != 1)
      {
        sub_76A750(1);
        if (v110 != 2)
        {
          sub_76A750(2);
          if (v110 != 3)
          {
            sub_76A750(3);
            if (v110 != 4)
            {
              sub_76A750(4);
              if (v110 != 5)
              {
                sub_76A750(5);
              }
            }
          }
        }
      }
    }

    else
    {
    }

    if (v108)
    {
      v111 = sub_76A870();
      v11 = v113;
      v39 = v114;
      v112 = v115;

      if (v112)
      {
        goto LABEL_117;
      }
    }

    else
    {
      v39 = 0;
      v111 = v107 & 0xFFFFFFFFFFFFFF8;
      v11 = (v107 & 0xFFFFFFFFFFFFFF8) + 32;
      v112 = (2 * v110) | 1;
      if (v112)
      {
LABEL_117:
        sub_76A970();
        swift_unknownObjectRetain_n();
        v118 = swift_dynamicCastClass();
        if (!v118)
        {
          swift_unknownObjectRelease();
          v118 = _swiftEmptyArrayStorage;
        }

        v119 = v118[2];

        if (!__OFSUB__(v112 >> 1, v39))
        {
          if (v119 == (v112 >> 1) - v39)
          {
            v117 = swift_dynamicCastClass();
            swift_unknownObjectRelease_n();
            if (v117)
            {
              goto LABEL_124;
            }

            v117 = _swiftEmptyArrayStorage;
LABEL_123:
            swift_unknownObjectRelease();
LABEL_124:
            v120 = *(v6 + OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_trailingLockupContainer);
            if (v120)
            {
              sub_75A110();
              sub_768900();
              v121 = v120;
              sub_768ED0();
              sub_6FAD6C(v117);
            }

            else
            {
            }

            return;
          }

          goto LABEL_135;
        }

LABEL_134:
        __break(1u);
LABEL_135:
        swift_unknownObjectRelease_n();
      }
    }

    sub_4A60D0(v111, v11, v39, v112);
    v117 = v116;
    goto LABEL_123;
  }

  v109 = *(&dword_10 + (v106 & 0xFFFFFFFFFFFFFF8));
  if (v109 >= 6)
  {
    v110 = 6;
  }

  else
  {
    v110 = v109;
  }

  if (v109 >= v110)
  {
    goto LABEL_103;
  }

LABEL_143:
  __break(1u);
}