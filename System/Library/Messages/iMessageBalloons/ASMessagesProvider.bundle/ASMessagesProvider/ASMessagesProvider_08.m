uint64_t sub_F3DF4(uint64_t a1, uint64_t a2)
{
  v29[1] = a2;
  v30 = sub_BD88(&qword_944D88);
  v31 = *(v30 - 8);
  __chkstk_darwin(v30);
  v34 = v29 - v2;
  v3 = sub_764A60();
  v38 = *(v3 - 8);
  v39 = v3;
  __chkstk_darwin(v3);
  v5 = v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_75FA00();
  v36 = *(v6 - 8);
  v37 = v6;
  __chkstk_darwin(v6);
  v8 = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_BD88(&unk_944D90);
  v9 = *(v40 - 8);
  __chkstk_darwin(v40);
  v11 = v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = v29 - v13;
  v15 = sub_BD88(&unk_959540);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = v29 - v17;
  sub_75C7E0();
  sub_768760();
  (*(v16 + 8))(v18, v15);
  sub_75C790();
  v33 = v8;
  sub_75C740();
  swift_getKeyPath();
  v35 = v5;
  sub_75C7B0();

  sub_527DE4();
  swift_unknownObjectRelease();
  sub_134D8(v42, v41);
  sub_BD88(&unk_944DA0);
  sub_75CC50();
  if (swift_dynamicCast())
  {
    (*(v9 + 16))(v11, v14, v40);
    sub_768FA0();
    sub_768B30();
    v19 = v32;
    v20 = *&v32[OBJC_IVAR____TtC18ASMessagesProvider21ProductCapabilityCell_titleLabel];
    sub_75CC20();
    v21 = sub_769210();

    [v20 setText:v21];

    sub_75CC40();
    v22 = sub_75CC10();
    v23 = sub_759CF0();
    v24 = sub_22A974(v23, sub_30AE4);

    v25 = sub_759CE0();
    sub_4ED3B8(v25, v22, v24);

    v26 = *&v19[OBJC_IVAR____TtC18ASMessagesProvider21ProductCapabilityCell_iconImageView];
    v27 = sub_75CC00();
    [v26 setTintColor:v27];

    *&v19[OBJC_IVAR____TtC18ASMessagesProvider21ProductCapabilityCell_icon] = sub_75CC30();

    [v19 setNeedsLayout];

    (*(v31 + 8))(v34, v30);
  }

  (*(v38 + 8))(v35, v39);
  (*(v36 + 8))(v33, v37);
  (*(v9 + 8))(v14, v40);
  return sub_BEB8(v42);
}

uint64_t sub_F43A4(uint64_t a1, uint64_t a2)
{
  v62 = a2;
  ObjectType = swift_getObjectType();
  v2 = sub_BD88(&qword_944EA0);
  __chkstk_darwin(v2 - 8);
  v61 = &v51 - v3;
  v60 = type metadata accessor for BreakoutDetailsView.Config(0);
  __chkstk_darwin(v60);
  v56 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v59 = (&v51 - v6);
  v66 = sub_BD88(&unk_95CF90);
  v65 = *(v66 - 8);
  __chkstk_darwin(v66);
  v72 = &v51 - v7;
  v64 = sub_BD88(&qword_944D88);
  v63 = *(v64 - 8);
  __chkstk_darwin(v64);
  v70 = &v51 - v8;
  v68 = sub_764A60();
  v71 = *(v68 - 8);
  __chkstk_darwin(v68);
  v10 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_75FA00();
  v11 = *(v69 - 8);
  __chkstk_darwin(v69);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_BD88(&unk_944D90);
  v73 = *(v14 - 8);
  v74 = v14;
  __chkstk_darwin(v14);
  v16 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v51 - v18;
  v20 = sub_BD88(&unk_959540);
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v51 - v22;
  sub_75C7E0();
  sub_768760();
  (*(v21 + 8))(v23, v20);
  sub_75C790();
  sub_75C740();
  swift_getKeyPath();
  sub_75C7B0();

  v24 = sub_527DE4();
  sub_134D8(v79, v78);
  sub_BD88(&unk_944DA0);
  sub_75A600();
  if (swift_dynamicCast())
  {
    v53 = v13;
    v55 = v11;
    v25 = v68;
    v26 = v77;
    v27 = *(v73 + 16);
    v52 = v19;
    v27(v16, v19, v74);
    sub_768FA0();
    sub_768B30();
    v28 = [v24 snapshotPageTraitEnvironment];
    v29 = v58;
    *&v58[OBJC_IVAR____TtC18ASMessagesProvider31SmallBreakoutCollectionViewCell_pageTraits] = v28;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    [v29 setNeedsLayout];
    swift_unknownObjectRelease();
    v57 = v26;
    sub_75A5F0();
    v30 = sub_75B260();

    v54 = v10;
    if (v30)
    {
      v31 = v65;
      if (qword_93CA70 != -1)
      {
        swift_once();
      }

      v32 = sub_BE38(v60, qword_99CA78);
      v33 = v59;
      sub_FCD60(v32, v59);
      v34 = *v33;
      v35 = v30;

      *v33 = v30;
      sub_FCD60(v33, v56);
      sub_BD88(&qword_93FBE0);
      v36 = v72;
      sub_7592F0();

      sub_FCDC4(v33);
    }

    else
    {
      v31 = v65;
      if (qword_93CA70 != -1)
      {
        swift_once();
      }

      v37 = sub_BE38(v60, qword_99CA78);
      sub_FCD60(v37, v59);
      sub_BD88(&qword_93FBE0);
      v36 = v72;
      sub_7592F0();
    }

    v38 = v66;
    v39 = v29;
    v40 = sub_75A5F0();
    v41 = v61;
    (*(v31 + 16))(v61, v36, v38);
    (*(v31 + 56))(v41, 0, 1, v38);
    sub_5F8FA0(v40, v41, v62);

    sub_10A2C(v41, &qword_944EA0);
    v42 = sub_75A5E0();
    if (!v42)
    {
      v42 = [objc_opt_self() clearColor];
    }

    v43 = v42;
    v44 = v71;
    v45 = v69;
    v46 = ObjectType;
    v76.receiver = v39;
    v76.super_class = ObjectType;
    objc_msgSendSuper2(&v76, "setBackgroundColor:", v42);
    v47 = *&v39[OBJC_IVAR____TtC18ASMessagesProvider31SmallBreakoutCollectionViewCell_iconView];
    v75.receiver = v39;
    v75.super_class = v46;
    v48 = v47;
    v49 = objc_msgSendSuper2(&v75, "backgroundColor");
    sub_759070();

    [v39 setNeedsLayout];
    swift_unknownObjectRelease();

    (*(v31 + 8))(v72, v38);
    (*(v63 + 8))(v70, v64);
    (*(v44 + 8))(v54, v25);
    (*(v55 + 8))(v53, v45);
    (*(v73 + 8))(v52, v74);
  }

  else
  {
    swift_unknownObjectRelease();
    (*(v71 + 8))(v10, v68);
    (*(v11 + 8))(v13, v69);
    (*(v73 + 8))(v19, v74);
  }

  return sub_BEB8(v79);
}

uint64_t sub_F4D64(uint64_t a1, uint64_t a2)
{
  v39 = a2;
  v36 = sub_765DC0();
  v35 = *(v36 - 8);
  __chkstk_darwin(v36);
  v33 = &v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v34 = &v33 - v4;
  v38 = sub_BD88(&qword_944D88);
  v37 = *(v38 - 8);
  __chkstk_darwin(v38);
  v44 = &v33 - v5;
  v6 = sub_764A60();
  v45 = *(v6 - 8);
  v46 = v6;
  __chkstk_darwin(v6);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_75FA00();
  v42 = *(v9 - 8);
  v43 = v9;
  __chkstk_darwin(v9);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_BD88(&unk_944D90);
  v12 = *(v47 - 8);
  __chkstk_darwin(v47);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v33 - v16;
  v18 = sub_BD88(&unk_959540);
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v33 - v20;
  sub_75C7E0();
  sub_768760();
  (*(v19 + 8))(v21, v18);
  sub_75C790();
  v40 = v11;
  sub_75C740();
  swift_getKeyPath();
  v41 = v8;
  sub_75C7B0();

  sub_527DE4();
  swift_unknownObjectRelease();
  sub_134D8(v50, v49);
  sub_BD88(&unk_944DA0);
  sub_762C60();
  if (swift_dynamicCast())
  {
    v22 = v48;
    (*(v12 + 16))(v14, v17, v47);
    sub_768FA0();
    sub_768B30();
    v23 = v33;
    sub_762C50();
    v24 = v34;
    sub_1A399C(v34);
    v25 = *(v35 + 8);
    v26 = v23;
    v27 = v36;
    v25(v26, v36);
    sub_765E40();
    v25(v24, v27);
    v28 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v29 = swift_allocObject();
    v30 = v39;
    v29[2] = v22;
    v29[3] = v30;
    v29[4] = v28;

    sub_765DF0();

    v31 = swift_allocObject();
    *(v31 + 16) = v22;
    *(v31 + 24) = v30;

    sub_765E10();

    (*(v37 + 8))(v44, v38);
  }

  (*(v45 + 8))(v41, v46);
  (*(v42 + 8))(v40, v43);
  (*(v12 + 8))(v17, v47);
  return sub_BEB8(v50);
}

uint64_t sub_F53CC(uint64_t a1, uint64_t a2)
{
  v19 = a2;
  v20 = sub_764A60();
  v18 = *(v20 - 8);
  __chkstk_darwin(v20);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_75FA00();
  v4 = *(v17 - 8);
  __chkstk_darwin(v17);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_BD88(&unk_944D90);
  v7 = *(v16 - 8);
  __chkstk_darwin(v16);
  v9 = &v15 - v8;
  v10 = sub_BD88(&unk_959540);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v15 - v12;
  sub_75C7E0();
  sub_768760();
  (*(v11 + 8))(v13, v10);
  sub_75C790();
  sub_75C740();
  swift_getKeyPath();
  sub_75C7B0();

  sub_527DE4();
  sub_3878C8(v21, v9, v19);
  swift_unknownObjectRelease();
  (*(v18 + 8))(v3, v20);
  (*(v4 + 8))(v6, v17);
  (*(v7 + 8))(v9, v16);
  return sub_BEB8(v21);
}

uint64_t sub_F56EC(uint64_t a1, uint64_t a2)
{
  v41 = a2;
  v2 = sub_BD88(&qword_944EA8);
  __chkstk_darwin(v2 - 8);
  v40 = &v37 - v3;
  v4 = sub_BD88(&qword_944D88);
  v43 = *(v4 - 8);
  v44 = v4;
  __chkstk_darwin(v4);
  v42 = &v37 - v5;
  v47 = sub_764A60();
  v50 = *(v47 - 8);
  __chkstk_darwin(v47);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_75FA00();
  v48 = *(v8 - 8);
  v49 = v8;
  __chkstk_darwin(v8);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_BD88(&unk_944D90);
  v11 = *(v46 - 8);
  __chkstk_darwin(v46);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v37 - v15;
  v17 = sub_BD88(&unk_959540);
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v37 - v19;
  sub_75C7E0();
  sub_768760();
  (*(v18 + 8))(v20, v17);
  sub_75C790();
  sub_75C740();
  swift_getKeyPath();
  sub_75C7B0();

  sub_527DE4();
  swift_unknownObjectRelease();
  sub_134D8(v52, v51);
  sub_BD88(&unk_944DA0);
  sub_75F8F0();
  if (swift_dynamicCast())
  {
    v39 = v7;
    v38 = v11;
    v21 = *(v11 + 16);
    v22 = v46;
    v21(v13, v16, v46);
    sub_768FA0();
    v23 = v42;
    sub_768B30();
    v24 = sub_75F8D0();
    if (v25)
    {
      v26 = v45;
      v37 = *&v45[OBJC_IVAR____TtC18ASMessagesProvider36ArcadeDownloadPackCollectionViewCell_cardView];
      v27 = sub_75F8E0();
      v28 = type metadata accessor for ArcadeDownloadPackGamesCardView.DownloadAllButtonConfiguration(0);
      v29 = v10;
      v30 = v40;
      (*(*(v28 - 8) + 56))(v40, 1, 1, v28);
      sub_74E5D4(v27, v30, 1, v41);

      v31 = v30;
      v10 = v29;
      sub_10A2C(v31, &qword_944EA8);
      [v26 layoutIfNeeded];
    }

    else
    {
      sub_74F998(v24);
    }

    v32 = v47;
    v33 = v48;
    v34 = v49;
    v35 = v50;

    (*(v43 + 8))(v23, v44);
    (*(v35 + 8))(v39, v32);
    (*(v33 + 8))(v10, v34);
    (*(v38 + 8))(v16, v22);
  }

  else
  {
    (*(v50 + 8))(v7, v47);
    (*(v48 + 8))(v10, v49);
    (*(v11 + 8))(v16, v46);
  }

  return sub_BEB8(v52);
}

uint64_t sub_F5CE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_FB844(&qword_941748, type metadata accessor for AppEventCollectionViewCell);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_F5D98@<X0>(uint64_t a1@<X8>)
{
  v29 = a1;
  v1 = sub_BD88(&unk_94F1F0);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v29 - v3;
  v5 = sub_7656C0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_75DA20();
  sub_765630();
  v9 = *(v6 + 8);
  v9(v8, v5);
  sub_75DAA0();
  swift_getKeyPath();
  sub_768750();

  (*(v2 + 8))(v4, v1);
  LODWORD(v1) = v31;
  sub_75DA20();
  sub_765580();
  v11 = v10;
  v9(v8, v5);
  v12 = sub_75DA30();
  v13 = type metadata accessor for SnapshotPageTraitEnvironment();
  v14 = objc_allocWithZone(v13);
  v15 = &v14[OBJC_IVAR____TtC18ASMessagesProvider28SnapshotPageTraitEnvironment_pageContainerSize];
  *v15 = v11;
  *(v15 + 1) = 0x7FEFFFFFFFFFFFFFLL;
  *&v14[OBJC_IVAR____TtC18ASMessagesProvider28SnapshotPageTraitEnvironment_traitCollection] = v12;
  v30.receiver = v14;
  v30.super_class = v13;
  v16 = objc_msgSendSuper2(&v30, "init");
  v17 = v16;
  if (v1 == 1)
  {
    v18 = [v16 traitCollection];
    v19 = sub_7699B0();

    if (v19)
    {
      [v17 pageContainerSize];
      v22 = sub_24988C(v20, v21);
      j_j___s18ASMessagesProvider20PageTraitEnvironmentPAAE16pageColumnMargin12CoreGraphics7CGFloatVvg(v22);
    }

    else
    {
      [v17 pageMarginInsets];
      v23 = [v17 pageContainerSize];
    }

    j_j___s18ASMessagesProvider20PageTraitEnvironmentPAAE16pageColumnMargin12CoreGraphics7CGFloatVvg(v23);
    v24 = qword_93CD60;
  }

  else
  {
    v24 = qword_93CD60;
  }

  if (v24 != -1)
  {
    swift_once();
  }

  v25 = sub_766690();
  sub_BE38(v25, qword_99D338);
  sub_766660();
  v26 = v29;
  sub_7601D0();

  v27 = sub_7601F0();
  return (*(*(v27 - 8) + 56))(v26, 0, 1, v27);
}

uint64_t sub_F614C@<X0>(uint64_t a1@<X8>)
{
  v25 = a1;
  v1 = sub_BD88(&unk_94F1F0);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v25 - v3;
  v5 = sub_7656C0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_75DA20();
  sub_765630();
  v9 = *(v6 + 8);
  v9(v8, v5);
  sub_75DAA0();
  swift_getKeyPath();
  sub_768750();

  (*(v2 + 8))(v4, v1);
  sub_75DA20();
  sub_765580();
  v11 = v10;
  v9(v8, v5);
  v12 = sub_75DA30();
  v13 = type metadata accessor for SnapshotPageTraitEnvironment();
  v14 = objc_allocWithZone(v13);
  v15 = &v14[OBJC_IVAR____TtC18ASMessagesProvider28SnapshotPageTraitEnvironment_pageContainerSize];
  *v15 = v11;
  *(v15 + 1) = 0x7FEFFFFFFFFFFFFFLL;
  *&v14[OBJC_IVAR____TtC18ASMessagesProvider28SnapshotPageTraitEnvironment_traitCollection] = v12;
  v26.receiver = v14;
  v26.super_class = v13;
  v16 = objc_msgSendSuper2(&v26, "init");
  v17 = [v16 traitCollection];
  LOBYTE(v1) = sub_7699B0();

  if (v1)
  {
    [v16 pageContainerSize];
    v20 = sub_24988C(v18, v19);
    j_j___s18ASMessagesProvider20PageTraitEnvironmentPAAE16pageColumnMargin12CoreGraphics7CGFloatVvg(v20);
  }

  else
  {
    [v16 pageMarginInsets];
    v21 = [v16 pageContainerSize];
  }

  j_j___s18ASMessagesProvider20PageTraitEnvironmentPAAE16pageColumnMargin12CoreGraphics7CGFloatVvg(v21);
  v22 = v25;
  sub_7601D0();

  v23 = sub_7601F0();
  return (*(*(v23 - 8) + 56))(v22, 0, 1, v23);
}

uint64_t sub_F648C@<X0>(uint64_t a1@<X8>)
{
  v20 = a1;
  v1 = sub_BD88(&unk_94F1F0);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v20 - v3;
  v5 = sub_7656C0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_75DA20();
  sub_765630();
  v9 = *(v6 + 8);
  v9(v8, v5);
  sub_75DAA0();
  swift_getKeyPath();
  sub_768750();

  (*(v2 + 8))(v4, v1);
  sub_75DA20();
  sub_765580();
  v11 = v10;
  v9(v8, v5);
  v12 = sub_75DA30();
  v13 = type metadata accessor for SnapshotPageTraitEnvironment();
  v14 = objc_allocWithZone(v13);
  v15 = &v14[OBJC_IVAR____TtC18ASMessagesProvider28SnapshotPageTraitEnvironment_pageContainerSize];
  *v15 = v11;
  *(v15 + 1) = 0x7FEFFFFFFFFFFFFFLL;
  *&v14[OBJC_IVAR____TtC18ASMessagesProvider28SnapshotPageTraitEnvironment_traitCollection] = v12;
  v21.receiver = v14;
  v21.super_class = v13;

  if (qword_93C668 != -1)
  {
    swift_once();
  }

  v16 = sub_75CF00();
  sub_BE38(v16, qword_99B898);
  sub_75CDD0();
  v17 = v20;
  sub_7601D0();
  v18 = sub_7601F0();
  return (*(*(v18 - 8) + 56))(v17, 0, 1, v18);
}

uint64_t sub_F677C@<X0>(uint64_t a1@<X8>)
{
  v36 = a1;
  v1 = sub_BD88(&qword_944E50);
  v2 = *(v1 - 8);
  v34 = v1;
  v35 = v2;
  __chkstk_darwin(v1);
  v32 = &v29 - v3;
  v33 = sub_75D6B0();
  v31 = *(v33 - 8);
  __chkstk_darwin(v33);
  v30 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_BD88(&unk_94F1F0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v29 - v7;
  v9 = sub_7656C0();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_75DA20();
  sub_765630();
  v13 = *(v10 + 8);
  v13(v12, v9);
  sub_75DAA0();
  swift_getKeyPath();
  sub_768750();

  (*(v6 + 8))(v8, v5);
  sub_75DA20();
  sub_765580();
  v15 = v14;
  v13(v12, v9);
  v16 = sub_75DA30();
  v17 = type metadata accessor for SnapshotPageTraitEnvironment();
  v18 = objc_allocWithZone(v17);
  v19 = &v18[OBJC_IVAR____TtC18ASMessagesProvider28SnapshotPageTraitEnvironment_pageContainerSize];
  *v19 = v15;
  *(v19 + 1) = 0x7FEFFFFFFFFFFFFFLL;
  *&v18[OBJC_IVAR____TtC18ASMessagesProvider28SnapshotPageTraitEnvironment_traitCollection] = v16;
  v38.receiver = v18;
  v38.super_class = v17;
  v20 = objc_msgSendSuper2(&v38, "init");
  v21 = [v20 traitCollection];
  v22 = v30;
  sub_278FB0(v30);

  v23 = v32;
  sub_75D680();
  (*(v31 + 8))(v22, v33);
  v37 = v20;
  v24 = v20;
  v25 = v34;
  sub_7592B0();
  (*(v35 + 8))(v23, v25);

  v26 = v36;
  sub_7601D0();

  v27 = sub_7601F0();
  return (*(*(v27 - 8) + 56))(v26, 0, 1, v27);
}

uint64_t sub_F6BC4@<X0>(uint64_t a1@<X8>)
{
  v34 = a1;
  v1 = sub_766690();
  v32 = *(v1 - 8);
  v33 = v1;
  __chkstk_darwin(v1);
  v31 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_BD88(&unk_94F1F0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v30 - v5;
  v7 = sub_7656C0();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_75DA20();
  sub_765630();
  v11 = *(v8 + 8);
  v11(v10, v7);
  sub_75DAA0();
  swift_getKeyPath();
  sub_768750();

  (*(v4 + 8))(v6, v3);
  LODWORD(v4) = v36;
  sub_75DA20();
  sub_765580();
  v13 = v12;
  v11(v10, v7);
  v14 = sub_75DA30();
  v15 = type metadata accessor for SnapshotPageTraitEnvironment();
  v16 = objc_allocWithZone(v15);
  v17 = &v16[OBJC_IVAR____TtC18ASMessagesProvider28SnapshotPageTraitEnvironment_pageContainerSize];
  *v17 = v13;
  *(v17 + 1) = 0x7FEFFFFFFFFFFFFFLL;
  *&v16[OBJC_IVAR____TtC18ASMessagesProvider28SnapshotPageTraitEnvironment_traitCollection] = v14;
  v35.receiver = v16;
  v35.super_class = v15;
  v18 = objc_msgSendSuper2(&v35, "init");
  v19 = v18;
  if (v4 == 1)
  {
    v20 = [v18 traitCollection];
    v21 = sub_7699B0();

    if (v21)
    {
      [v19 pageContainerSize];
      v24 = sub_24988C(v22, v23);
      j_j___s18ASMessagesProvider20PageTraitEnvironmentPAAE16pageColumnMargin12CoreGraphics7CGFloatVvg(v24);
    }

    else
    {
      [v19 pageMarginInsets];
      [v19 pageContainerSize];
    }
  }

  if (qword_93CD48 != -1)
  {
    swift_once();
  }

  v25 = sub_75D510();
  sub_BE38(v25, qword_99D278);
  v26 = v31;
  sub_75D500();
  sub_766660();
  (*(v32 + 8))(v26, v33);
  v27 = v34;
  sub_7601D0();

  v28 = sub_7601F0();
  return (*(*(v28 - 8) + 56))(v27, 0, 1, v28);
}

uint64_t sub_F6FFC@<X0>(uint64_t a1@<X8>)
{
  v18 = a1;
  v1 = sub_BD88(&unk_94F1F0);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v18 - v3;
  v5 = sub_7656C0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_75DA20();
  sub_765630();
  v9 = *(v6 + 8);
  v9(v8, v5);
  sub_75DAA0();
  swift_getKeyPath();
  sub_768750();

  (*(v2 + 8))(v4, v1);
  sub_75DA20();
  sub_765580();
  v11 = v10;
  v9(v8, v5);
  v12 = sub_75DA30();
  v13 = type metadata accessor for SnapshotPageTraitEnvironment();
  v14 = objc_allocWithZone(v13);
  v15 = &v14[OBJC_IVAR____TtC18ASMessagesProvider28SnapshotPageTraitEnvironment_pageContainerSize];
  *v15 = v11;
  *(v15 + 1) = 0x7FEFFFFFFFFFFFFFLL;
  *&v14[OBJC_IVAR____TtC18ASMessagesProvider28SnapshotPageTraitEnvironment_traitCollection] = v12;
  v19.receiver = v14;
  v19.super_class = v13;

  v16 = sub_7601F0();
  return (*(*(v16 - 8) + 56))(v18, 1, 1, v16);
}

uint64_t sub_F7384(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *, uint64_t), void (*a5)(uint64_t *__return_ptr, uint64_t *))
{
  v23 = a5;
  v24 = a4;
  v22[1] = a2;
  v7 = sub_75DAB0();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_BD88(&unk_944DB0);
  __chkstk_darwin(v11 - 8);
  v13 = v22 - v12;
  v14 = sub_7601F0();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_75C720();
  v24(v10, a3);
  (*(v8 + 8))(v10, v7);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    return sub_10A2C(v13, &unk_944DB0);
  }

  (*(v15 + 32))(v17, v13, v14);
  v19 = sub_F7D88(a1);
  __chkstk_darwin(v19);
  v22[-2] = v17;
  v20 = sub_3A06DC(v23, &v22[-4], v19);

  if (v20 >> 62)
  {
    if (!sub_76A860())
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if (*(&dword_10 + (v20 & 0xFFFFFFFFFFFFFF8)))
  {
LABEL_5:
    v21._rawValue = v20;
    sub_75A070(v21);
  }

LABEL_6:

  return (*(v15 + 8))(v17, v14);
}

uint64_t sub_F7690(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t *))
{
  v21 = a4;
  v20 = a2;
  v5 = sub_75DAB0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_BD88(&unk_944DB0);
  __chkstk_darwin(v9 - 8);
  v11 = &v20 - v10;
  v12 = sub_7601F0();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_75C720();
  sub_F6FFC(v11);
  (*(v6 + 8))(v8, v5);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    return sub_10A2C(v11, &unk_944DB0);
  }

  (*(v13 + 32))(v15, v11, v12);
  v17 = sub_F7D88(a1);
  __chkstk_darwin(v17);
  *(&v20 - 2) = v15;
  v18 = sub_3A06DC(v21, (&v20 - 4), v17);

  if (v18 >> 62)
  {
    if (!sub_76A860())
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if (*(&dword_10 + (v18 & 0xFFFFFFFFFFFFFF8)))
  {
LABEL_5:
    v19._rawValue = v18;
    sub_75A070(v19);
  }

LABEL_6:

  return (*(v13 + 8))(v15, v12);
}

uint64_t sub_F7968()
{
  ObjectType = swift_getObjectType();
  v1 = sub_FB844(&unk_944DE0, type metadata accessor for AppEventCollectionViewCell);

  return VideoViewProviding.someVideoView.getter(ObjectType, v1);
}

uint64_t sub_F79DC(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = sub_FB844(&unk_944DE0, type metadata accessor for AppEventCollectionViewCell);

  return VideoViewProviding.someVideoView.setter(a1, a2, ObjectType, v5);
}

uint64_t (*sub_F7A68(uint64_t *a1))()
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
  sub_FB844(&unk_944DE0, type metadata accessor for AppEventCollectionViewCell);
  *(v3 + 32) = sub_75DC50();
  return sub_246E0;
}

uint64_t sub_F7B24(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *(*(v1 + OBJC_IVAR____TtC18ASMessagesProvider26AppEventCollectionViewCell_appEventView) + OBJC_IVAR____TtC18ASMessagesProvider12AppEventView_appEventCardView);
  v3 = [a1 superview];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_mediaContentView);
  sub_BE70(0, &qword_93E550);
  v6 = v5;
  v7 = sub_76A1C0();

  return v7 & 1;
}

uint64_t sub_F7CB4(void *a1)
{
  a1[1] = sub_FB844(&unk_944D70, type metadata accessor for AppEventCollectionViewCell);
  a1[2] = sub_FB844(&qword_941740, type metadata accessor for AppEventCollectionViewCell);
  a1[3] = sub_FB844(&qword_944D80, type metadata accessor for AppEventCollectionViewCell);
  result = sub_FB844(&qword_941748, type metadata accessor for AppEventCollectionViewCell);
  a1[4] = result;
  return result;
}

void *sub_F7D88(uint64_t a1)
{
  v2 = sub_764930();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v21 - v7;
  v9 = sub_BD88(&unk_94F1F0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v21 - v11;
  swift_getKeyPath();
  v24 = a1;
  sub_75C7B0();

  swift_getKeyPath();
  sub_768750();

  v14 = *(v10 + 8);
  v13 = v10 + 8;
  v23 = v14;
  v14(v12, v9);
  v22 = *(v3 + 104);
  v22(v5, enum case for Shelf.ContentType.todayCard(_:), v2);
  v21[2] = sub_FB844(&qword_944DC0, &type metadata accessor for Shelf.ContentType);
  LOBYTE(a1) = sub_7691C0();
  v15 = *(v3 + 8);
  v15(v5, v2);
  v15(v8, v2);
  if ((a1 & 1) == 0)
  {
    swift_getKeyPath();
    v21[1] = v13;
    sub_75C7B0();

    swift_getKeyPath();
    sub_768750();

    v23(v12, v9);
    v22(v5, enum case for Shelf.ContentType.miniTodayCard(_:), v2);
    v16 = sub_7691C0();
    v15(v5, v2);
    v15(v8, v2);
    if ((v16 & 1) == 0)
    {
      sub_BD88(&qword_944DC8);
      sub_75C760();
      if (v26)
      {
        sub_10914(&v25, v27);
        sub_B170(v27, v27[3]);
        v17 = sub_75E950();
        if (v17)
        {
          v18 = v17;
          sub_BD88(&unk_93F5C0);
          v19 = swift_allocObject();
          *(v19 + 16) = xmmword_77D9F0;
          *(v19 + 32) = v18;
          sub_BEB8(v27);
          return v19;
        }

        sub_BEB8(v27);
      }

      else
      {
        sub_10A2C(&v25, &unk_944DD0);
      }
    }
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_F8218@<X0>(_BYTE *a1@<X8>)
{
  result = sub_764970();
  *a1 = result & 1;
  return result;
}

char *sub_F8248()
{
  ObjectType = swift_getObjectType();
  v2 = sub_768C60();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC18ASMessagesProvider26AppEventCollectionViewCell_itemLayoutContext;
  v7 = sub_75C840();
  (*(*(v7 - 8) + 56))(&v0[v6], 1, 1, v7);
  *&v0[OBJC_IVAR____TtC18ASMessagesProvider26AppEventCollectionViewCell_appEventView] = [objc_allocWithZone(type metadata accessor for AppEventView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v19.receiver = v0;
  v19.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v19, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v9 = OBJC_IVAR____TtC18ASMessagesProvider26AppEventCollectionViewCell_appEventView;
  v10 = *&v8[OBJC_IVAR____TtC18ASMessagesProvider26AppEventCollectionViewCell_appEventView];
  memset(v18, 0, sizeof(v18));
  memset(v17, 0, sizeof(v17));
  v11 = v8;
  v12 = v10;
  sub_768C10();
  sub_10A2C(v17, &unk_93FBD0);
  sub_10A2C(v18, &unk_93FBD0);
  sub_769E70();

  (*(v3 + 8))(v5, v2);
  v13 = [v11 contentView];
  [v13 setClipsToBounds:0];

  v14 = [v11 contentView];
  [v14 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v15 = [v11 contentView];
  [v15 addSubview:*&v8[v9]];

  return v11;
}

uint64_t sub_F84FC()
{
  v73 = sub_BD88(&unk_94BAA0);
  v72 = *(v73 - 8);
  __chkstk_darwin(v73);
  v74 = &v63 - v0;
  v70 = sub_75E890();
  v69 = *(v70 - 8);
  __chkstk_darwin(v70);
  v71 = &v63 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_765C90();
  v79 = *(v2 - 8);
  v80 = v2;
  __chkstk_darwin(v2);
  v68 = &v63 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v78 = &v63 - v5;
  v77 = sub_BD88(&qword_944D88);
  v76 = *(v77 - 8);
  __chkstk_darwin(v77);
  v82 = &v63 - v6;
  v7 = sub_764A60();
  v84 = *(v7 - 8);
  v85 = v7;
  __chkstk_darwin(v7);
  v9 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_75FA00();
  v83 = *(v81 - 8);
  __chkstk_darwin(v81);
  v11 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_BD88(&unk_944D90);
  v12 = *(v86 - 8);
  __chkstk_darwin(v86);
  v14 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v63 - v16;
  v18 = sub_BD88(&unk_959540);
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v63 - v20;
  sub_75C7E0();
  sub_768760();
  v22 = v18;
  v23 = v17;
  (*(v19 + 8))(v21, v22);
  sub_75C790();
  sub_75C740();
  swift_getKeyPath();
  sub_75C7B0();

  v24 = sub_527DE4();
  sub_134D8(v88, v87);
  sub_BD88(&unk_944DA0);
  sub_75D1C0();
  if (swift_dynamicCast())
  {
    v65 = v11;
    v66 = v9;
    v67 = v12;
    v25 = *(v12 + 16);
    v64 = v23;
    v25(v14, v23, v86);
    sub_768FA0();
    sub_768B30();
    v26 = v75;
    v27 = *(v75 + OBJC_IVAR____TtC18ASMessagesProvider36AchievementSummaryCollectionViewCell_numberCompletedLabel);
    v28 = sub_75D1B0();
    v89._object = 0x80000000007CF0B0;
    v89._countAndFlagsBits = 0xD000000000000032;
    v90._countAndFlagsBits = 0;
    v90._object = 0xE000000000000000;
    sub_761130(v89, v28, v90);
    v29 = sub_769210();

    [v27 setText:v29];

    v30 = *(v26 + OBJC_IVAR____TtC18ASMessagesProvider36AchievementSummaryCollectionViewCell_outOfTotalLabel);
    v31 = [v24 traitCollection];
    sub_13F070();

    v32 = sub_769210();

    [v30 setText:v32];

    v33 = *(v26 + OBJC_IVAR____TtC18ASMessagesProvider36AchievementSummaryCollectionViewCell_completedLabel);
    sub_75D190();
    v34 = sub_769210();

    [v33 setText:v34];

    v35 = sub_75D180();
    if (*(v35 + 16))
    {
      v36 = v78;
      v37 = *(v79 + 16);
      v38 = v80;
      v37(v78, v35 + ((*(v79 + 80) + 32) & ~*(v79 + 80)), v80);

      v37(v68, v36, v38);
      sub_75D1A0();
      v39 = [v24 traitCollection];
      LOBYTE(v37) = sub_7699D0();

      v40 = &enum case for AchievementGroupView.Size.phone(_:);
      if ((v37 & 1) == 0)
      {
        v40 = &enum case for AchievementGroupView.Size.pad(_:);
      }

      (*(v69 + 104))(v71, *v40, v70);
      v41 = objc_allocWithZone(sub_75E8A0());
      v42 = sub_75E880();
      v43 = OBJC_IVAR____TtC18ASMessagesProvider36AchievementSummaryCollectionViewCell_achievementGroupView;
      v44 = *(v26 + OBJC_IVAR____TtC18ASMessagesProvider36AchievementSummaryCollectionViewCell_achievementGroupView);
      v45 = v84;
      if (v44)
      {
        [v44 removeFromSuperview];
        v46 = *(v26 + v43);
      }

      else
      {
        v46 = 0;
      }

      v51 = v82;
      v52 = v67;
      *(v26 + v43) = v42;
      v53 = v42;

      [*(v26 + OBJC_IVAR____TtC18ASMessagesProvider36AchievementSummaryCollectionViewCell_containerView) addSubview:v53];
      if (sub_75D1A0() < 2)
      {
        v54 = v85;
        v55 = v81;
        if (qword_93C7F0 != -1)
        {
          swift_once();
        }

        v56 = qword_99BE20;
      }

      else
      {
        v54 = v85;
        v55 = v81;
        if (qword_93C7F8 != -1)
        {
          swift_once();
        }

        v56 = qword_99BE38;
      }

      v57 = v73;
      v58 = sub_BE38(v73, v56);
      (*(v72 + 16))(v74, v58, v57);
      swift_beginAccess();
      sub_760990();
      swift_endAccess();
      swift_unknownObjectRelease();

      (*(v79 + 8))(v78, v80);
      (*(v76 + 8))(v51, v77);
      (*(v45 + 8))(v66, v54);
      (*(v83 + 8))(v65, v55);
    }

    else
    {

      v47 = OBJC_IVAR____TtC18ASMessagesProvider36AchievementSummaryCollectionViewCell_achievementGroupView;
      v48 = *(v26 + OBJC_IVAR____TtC18ASMessagesProvider36AchievementSummaryCollectionViewCell_achievementGroupView);
      v49 = v84;
      if (v48)
      {
        [v48 removeFromSuperview];
        v50 = *(v26 + v47);
      }

      else
      {
        v50 = 0;
      }

      v59 = v81;
      v60 = v82;
      v61 = v83;
      v52 = v67;
      *(v26 + v47) = 0;
      swift_unknownObjectRelease();

      (*(v76 + 8))(v60, v77);
      (*(v49 + 8))(v66, v85);
      (*(v61 + 8))(v65, v59);
    }

    (*(v52 + 8))(v64, v86);
  }

  else
  {
    swift_unknownObjectRelease();
    (*(v84 + 8))(v9, v85);
    (*(v83 + 8))(v11, v81);
    (*(v12 + 8))(v23, v86);
  }

  return sub_BEB8(v88);
}

uint64_t sub_F9020()
{
  v41 = sub_BD88(&qword_944D88);
  v39 = *(v41 - 8);
  __chkstk_darwin(v41);
  v45 = &v36 - v0;
  v1 = sub_764A60();
  v43 = *(v1 - 8);
  v44 = v1;
  __chkstk_darwin(v1);
  v38 = &v36 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v5 = &v36 - v4;
  v6 = sub_75FA00();
  v7 = *(v6 - 8);
  v46 = v6;
  v47 = v7;
  __chkstk_darwin(v6);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_BD88(&unk_944D90);
  v10 = *(v42 - 8);
  __chkstk_darwin(v42);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v36 - v14;
  v16 = sub_BD88(&unk_959540);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v36 - v18;
  sub_75C7E0();
  sub_768760();
  (*(v17 + 8))(v19, v16);
  sub_75C790();
  sub_75C740();
  swift_getKeyPath();
  sub_75C7B0();

  sub_527DE4();
  swift_unknownObjectRelease();
  sub_134D8(v49, v48);
  sub_BD88(&unk_944DA0);
  sub_764890();
  if (swift_dynamicCast())
  {
    v37 = v9;
    v20 = v5;
    v22 = v43;
    v21 = v44;
    v23 = *(v10 + 16);
    v36 = v15;
    v24 = v15;
    v25 = v42;
    v23(v12, v24, v42);
    sub_768FA0();
    sub_768B30();
    sub_764870();
    if (v26)
    {
      v27 = sub_769210();
    }

    else
    {
      v27 = 0;
    }

    v28 = v40;
    [v40 setAccessibilityLabel:v27];

    v29 = v38;
    sub_764A20();
    sub_FB844(&qword_9467F0, &type metadata accessor for Shelf.PresentationHints);
    v30 = sub_76A520();
    v31 = *(v22 + 8);
    v31(v29, v21);
    if (v30)
    {
      v32 = sub_764880();
      v33 = &v28[OBJC_IVAR____TtC18ASMessagesProvider23BrickCollectionViewCell_shortDescriptionLabelText];
      *v33 = v32;
      v33[1] = v34;

      sub_359B6C();
    }

    (*(v39 + 8))(v45, v41);
    v31(v20, v21);
    (*(v47 + 8))(v37, v46);
    (*(v10 + 8))(v36, v25);
  }

  else
  {
    (*(v43 + 8))(v5, v44);
    (*(v47 + 8))(v9, v46);
    (*(v10 + 8))(v15, v42);
  }

  return sub_BEB8(v49);
}

uint64_t sub_F95D0()
{
  v0 = sub_BD88(&qword_944D88);
  v30 = *(v0 - 8);
  v31 = v0;
  __chkstk_darwin(v0);
  v28 = &v27 - v1;
  v2 = sub_764A60();
  v35 = *(v2 - 8);
  v36 = v2;
  __chkstk_darwin(v2);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_75FA00();
  v33 = *(v5 - 8);
  v34 = v5;
  __chkstk_darwin(v5);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_BD88(&unk_944D90);
  v8 = *(v32 - 8);
  __chkstk_darwin(v32);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v27 - v12;
  v14 = sub_BD88(&unk_959540);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v27 - v16;
  sub_75C7E0();
  sub_768760();
  (*(v15 + 8))(v17, v14);
  sub_75C790();
  sub_75C740();
  swift_getKeyPath();
  sub_75C7B0();

  v18 = sub_527DE4();
  sub_134D8(v38, v37);
  sub_BD88(&unk_944DA0);
  sub_75AB70();
  if (swift_dynamicCast())
  {
    v19 = v32;
    (*(v8 + 16))(v10, v13, v32);
    sub_768FA0();
    v20 = v28;
    sub_768B30();
    v21 = [v29 contentView];
    [v18 pageMarginInsets];
    [v21 setLayoutMargins:?];

    v22 = sub_75AB60();
    sub_36E518(v22, v23);
    v24 = sub_75AB50();
    sub_36E524(v24, v25);
    swift_unknownObjectRelease();

    (*(v30 + 8))(v20, v31);
    (*(v35 + 8))(v4, v36);
    (*(v33 + 8))(v7, v34);
    (*(v8 + 8))(v13, v19);
  }

  else
  {
    swift_unknownObjectRelease();
    (*(v35 + 8))(v4, v36);
    (*(v33 + 8))(v7, v34);
    (*(v8 + 8))(v13, v32);
  }

  return sub_BEB8(v38);
}

uint64_t sub_F9AC8()
{
  v28 = sub_BD88(&qword_944D88);
  v26 = *(v28 - 8);
  __chkstk_darwin(v28);
  v25 = &v25 - v0;
  v1 = sub_764A60();
  v32 = *(v1 - 8);
  v33 = v1;
  __chkstk_darwin(v1);
  v3 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_75FA00();
  v30 = *(v4 - 8);
  v31 = v4;
  __chkstk_darwin(v4);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_BD88(&unk_944D90);
  v7 = *(v34 - 8);
  __chkstk_darwin(v34);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v25 - v11;
  v13 = sub_BD88(&unk_959540);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v25 - v15;
  sub_75C7E0();
  sub_768760();
  (*(v14 + 8))(v16, v13);
  sub_75C790();
  sub_75C740();
  swift_getKeyPath();
  v29 = v3;
  sub_75C7B0();

  sub_527DE4();
  swift_unknownObjectRelease();
  sub_134D8(v36, v35);
  sub_BD88(&unk_944DA0);
  sub_7654E0();
  if (swift_dynamicCast())
  {
    (*(v7 + 16))(v9, v12, v34);
    sub_768FA0();
    v17 = v25;
    sub_768B30();
    v18 = v27;
    v19 = *&v27[OBJC_IVAR____TtC18ASMessagesProvider26FootnoteCollectionViewCell_footnoteView];
    v20 = sub_7654C0();
    v21 = v19[OBJC_IVAR____TtC18ASMessagesProvider12FootnoteView_hasChevron];
    v19[OBJC_IVAR____TtC18ASMessagesProvider12FootnoteView_hasChevron] = (v20 & 2) != 0;
    sub_14F5D4(v21);
    v19[OBJC_IVAR____TtC18ASMessagesProvider12FootnoteView_textLightensOnHighlight] = (sub_7654C0() & 4) != 0;
    v22 = *&v19[OBJC_IVAR____TtC18ASMessagesProvider12FootnoteView_textLabel];
    sub_7654D0();
    v23 = sub_769210();

    [v22 setText:v23];

    [v19 setNeedsLayout];
    [v18 setNeedsLayout];

    (*(v26 + 8))(v17, v28);
  }

  (*(v32 + 8))(v29, v33);
  (*(v30 + 8))(v6, v31);
  (*(v7 + 8))(v12, v34);
  return sub_BEB8(v36);
}

uint64_t sub_F9FC8()
{
  v0 = sub_75AC60();
  __chkstk_darwin(v0 - 8);
  v26 = &v25 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_BD88(&qword_944D88);
  v27 = *(v2 - 8);
  v28 = v2;
  __chkstk_darwin(v2);
  v25 = &v25 - v3;
  v4 = sub_764A60();
  v32 = *(v4 - 8);
  v33 = v4;
  __chkstk_darwin(v4);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_75FA00();
  v30 = *(v7 - 8);
  v31 = v7;
  __chkstk_darwin(v7);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_BD88(&unk_944D90);
  v10 = *(v29 - 8);
  __chkstk_darwin(v29);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v25 - v14;
  v16 = sub_BD88(&unk_959540);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v25 - v18;
  sub_75C7E0();
  sub_768760();
  (*(v17 + 8))(v19, v16);
  sub_75C790();
  sub_75C740();
  swift_getKeyPath();
  sub_75C7B0();

  sub_527DE4();
  swift_unknownObjectRelease();
  sub_134D8(v35, v34);
  sub_BD88(&unk_944DA0);
  sub_75AC90();
  if (swift_dynamicCast())
  {
    v20 = v29;
    (*(v10 + 16))(v12, v15, v29);
    sub_768FA0();
    v21 = v25;
    sub_768B30();
    v22 = v26;
    sub_75AC80();
    sub_21F164(v22);
    v23 = sub_75AC70();
    sub_21FC90(v23);

    (*(v27 + 8))(v21, v28);
    (*(v32 + 8))(v6, v33);
    (*(v30 + 8))(v9, v31);
    (*(v10 + 8))(v15, v20);
  }

  else
  {
    (*(v32 + 8))(v6, v33);
    (*(v30 + 8))(v9, v31);
    (*(v10 + 8))(v15, v29);
  }

  return sub_BEB8(v35);
}

unint64_t sub_FA4CC()
{
  result = qword_950860;
  if (!qword_950860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_950860);
  }

  return result;
}

uint64_t sub_FA520()
{
  v0 = sub_BD88(&qword_944D88);
  v23 = *(v0 - 8);
  v24 = v0;
  __chkstk_darwin(v0);
  v22 = &v21 - v1;
  v2 = sub_764A60();
  v28 = *(v2 - 8);
  v29 = v2;
  __chkstk_darwin(v2);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_75FA00();
  v26 = *(v5 - 8);
  v27 = v5;
  __chkstk_darwin(v5);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_BD88(&unk_944D90);
  v8 = *(v25 - 8);
  __chkstk_darwin(v25);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v21 - v12;
  v14 = sub_BD88(&unk_959540);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v21 - v16;
  sub_75C7E0();
  sub_768760();
  (*(v15 + 8))(v17, v14);
  sub_75C790();
  sub_75C740();
  swift_getKeyPath();
  sub_75C7B0();

  sub_527DE4();
  sub_134D8(v31, v30);
  sub_BD88(&unk_944DA0);
  sub_764F90();
  if (swift_dynamicCast())
  {
    v18 = v25;
    (*(v8 + 16))(v10, v13, v25);
    sub_768FA0();
    v19 = v22;
    sub_768B30();
    sub_3F0090();
    swift_unknownObjectRelease();

    (*(v23 + 8))(v19, v24);
    (*(v28 + 8))(v4, v29);
    (*(v26 + 8))(v7, v27);
    (*(v8 + 8))(v13, v18);
  }

  else
  {
    swift_unknownObjectRelease();
    (*(v28 + 8))(v4, v29);
    (*(v26 + 8))(v7, v27);
    (*(v8 + 8))(v13, v25);
  }

  return sub_BEB8(v31);
}

uint64_t sub_FA9D0()
{
  v0 = sub_BD88(&qword_944D88);
  v25 = *(v0 - 8);
  v26 = v0;
  __chkstk_darwin(v0);
  v24 = v23 - v1;
  v2 = sub_764A60();
  v30 = *(v2 - 8);
  v31 = v2;
  __chkstk_darwin(v2);
  v4 = v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_75FA00();
  v28 = *(v5 - 8);
  v29 = v5;
  __chkstk_darwin(v5);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_BD88(&unk_944D90);
  v8 = *(v27 - 8);
  __chkstk_darwin(v27);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = v23 - v12;
  v14 = sub_BD88(&unk_959540);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v23 - v16;
  sub_75C7E0();
  sub_768760();
  (*(v15 + 8))(v17, v14);
  sub_75C790();
  sub_75C740();
  swift_getKeyPath();
  sub_75C7B0();

  sub_527DE4();
  swift_unknownObjectRelease();
  sub_134D8(v33, v32);
  sub_BD88(&unk_944DA0);
  sub_75D8F0();
  if (swift_dynamicCast())
  {
    v18 = v27;
    (*(v8 + 16))(v10, v13, v27);
    sub_768FA0();
    v19 = v24;
    sub_768B30();
    v20 = *(v23[1] + OBJC_IVAR____TtC18ASMessagesProvider36PreorderDisclaimerCollectionViewCell_disclaimerLabel);
    sub_75D8E0();
    v21 = sub_769210();

    [v20 setText:v21];

    (*(v25 + 8))(v19, v26);
    (*(v30 + 8))(v4, v31);
    (*(v28 + 8))(v7, v29);
    (*(v8 + 8))(v13, v18);
  }

  else
  {
    (*(v30 + 8))(v4, v31);
    (*(v28 + 8))(v7, v29);
    (*(v8 + 8))(v13, v27);
  }

  return sub_BEB8(v33);
}

uint64_t sub_FAE98()
{
  v26 = sub_BD88(&qword_944D88);
  v24 = *(v26 - 8);
  __chkstk_darwin(v26);
  v23 = &v22 - v0;
  v1 = sub_764A60();
  v30 = *(v1 - 8);
  v31 = v1;
  __chkstk_darwin(v1);
  v3 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_75FA00();
  v28 = *(v4 - 8);
  v29 = v4;
  __chkstk_darwin(v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_BD88(&unk_944D90);
  v7 = *(v27 - 8);
  __chkstk_darwin(v27);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v22 - v11;
  v13 = sub_BD88(&unk_959540);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v22 - v15;
  sub_75C7E0();
  sub_768760();
  (*(v14 + 8))(v16, v13);
  sub_75C790();
  sub_75C740();
  swift_getKeyPath();
  sub_75C7B0();

  sub_527DE4();
  swift_unknownObjectRelease();
  sub_134D8(v34, v33);
  sub_BD88(&unk_944DA0);
  sub_75B610();
  if (swift_dynamicCast())
  {
    v17 = v32;
    v18 = v27;
    (*(v7 + 16))(v9, v12, v27);
    sub_768FA0();
    v19 = v23;
    sub_768B30();
    v20 = v25;
    *&v25[OBJC_IVAR____TtC18ASMessagesProvider33PrivacyCategoryCollectionViewCell_privacyCategory] = v17;

    *(*&v20[OBJC_IVAR____TtC18ASMessagesProvider33PrivacyCategoryCollectionViewCell_privacyCategoryView] + OBJC_IVAR____TtC18ASMessagesProvider19PrivacyCategoryView_category) = v17;

    sub_4DA5B8();
    [v20 setNeedsLayout];

    (*(v24 + 8))(v19, v26);
    (*(v30 + 8))(v3, v31);
    (*(v28 + 8))(v6, v29);
    (*(v7 + 8))(v12, v18);
  }

  else
  {
    (*(v30 + 8))(v3, v31);
    (*(v28 + 8))(v6, v29);
    (*(v7 + 8))(v12, v27);
  }

  return sub_BEB8(v34);
}

uint64_t sub_FB394()
{
  v27 = sub_BD88(&qword_944D88);
  v26 = *(v27 - 8);
  __chkstk_darwin(v27);
  v25 = &v24 - v0;
  v1 = sub_764A60();
  v31 = *(v1 - 8);
  v32 = v1;
  __chkstk_darwin(v1);
  v3 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_75FA00();
  v29 = *(v4 - 8);
  v30 = v4;
  __chkstk_darwin(v4);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_BD88(&unk_944D90);
  v7 = *(v28 - 8);
  __chkstk_darwin(v28);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v24 - v11;
  v13 = sub_BD88(&unk_959540);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v24 - v15;
  sub_75C7E0();
  sub_768760();
  (*(v14 + 8))(v16, v13);
  sub_75C790();
  sub_75C740();
  swift_getKeyPath();
  sub_75C7B0();

  sub_527DE4();
  swift_unknownObjectRelease();
  sub_134D8(v34, v33);
  sub_BD88(&unk_944DA0);
  sub_75CB00();
  if (swift_dynamicCast())
  {
    v17 = v28;
    (*(v7 + 16))(v9, v12, v28);
    sub_768FA0();
    v18 = v25;
    sub_768B30();
    v19 = sub_75CAF0();
    sub_3253C8(v19, v20);
    v21 = sub_75CAE0();
    sub_3253D4(v21, v22);

    (*(v26 + 8))(v18, v27);
    (*(v31 + 8))(v3, v32);
    (*(v29 + 8))(v6, v30);
    (*(v7 + 8))(v12, v17);
  }

  else
  {
    (*(v31 + 8))(v3, v32);
    (*(v29 + 8))(v6, v30);
    (*(v7 + 8))(v12, v28);
  }

  return sub_BEB8(v34);
}

uint64_t sub_FB844(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_FB88C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_BD88(a3);
  (*(*(v5 - 8) + 24))(a2, a1, v5);
  return a2;
}

uint64_t sub_FB8F4()
{
  v1 = v0;
  v37 = sub_75BE90();
  v36 = *(v37 - 8);
  __chkstk_darwin(v37);
  v35 = &v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_BD88(&qword_944D88);
  v39 = *(v3 - 8);
  v40 = v3;
  __chkstk_darwin(v3);
  v38 = &v34 - v4;
  v5 = sub_764A60();
  v45 = *(v5 - 8);
  v46 = v5;
  __chkstk_darwin(v5);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_75FA00();
  v43 = *(v8 - 8);
  v44 = v8;
  __chkstk_darwin(v8);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_BD88(&unk_944D90);
  v41 = *(v47 - 8);
  __chkstk_darwin(v47);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v34 - v14;
  v16 = sub_BD88(&unk_959540);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v34 - v18;
  sub_75C7E0();
  sub_768760();
  v20 = v16;
  v21 = v7;
  (*(v17 + 8))(v19, v20);
  sub_75C790();
  v42 = v10;
  sub_75C740();
  swift_getKeyPath();
  sub_75C7B0();

  sub_527DE4();
  swift_unknownObjectRelease();
  sub_134D8(v49, v48);
  sub_BD88(&unk_944DA0);
  sub_759650();
  if (swift_dynamicCast())
  {
    v22 = v41;
    (*(v41 + 16))(v12, v15, v47);
    sub_768FA0();
    v23 = v38;
    sub_768B30();
    v24 = v35;
    sub_759610();
    v25 = OBJC_IVAR____TtC18ASMessagesProvider29PrivacyTypeCollectionViewCell_style;
    swift_beginAccess();
    v26 = v36;
    v27 = v37;
    (*(v36 + 24))(v1 + v25, v24, v37);
    swift_endAccess();
    sub_815D4();
    (*(v26 + 8))(v24, v27);
    v28 = sub_759620();
    sub_811E4(v28, v29);
    v30 = sub_759630();
    sub_811F0(v30, v31);
    *(v1 + OBJC_IVAR____TtC18ASMessagesProvider29PrivacyTypeCollectionViewCell_artwork) = sub_759640();

    v32 = sub_7595F0();
    sub_8458C();
    *(v1 + OBJC_IVAR____TtC18ASMessagesProvider29PrivacyTypeCollectionViewCell_categories) = v32;

    sub_81358();

    (*(v39 + 8))(v23, v40);
    (*(v45 + 8))(v21, v46);
    (*(v43 + 8))(v42, v44);
    (*(v22 + 8))(v15, v47);
  }

  else
  {
    (*(v45 + 8))(v7, v46);
    (*(v43 + 8))(v42, v44);
    (*(v41 + 8))(v15, v47);
  }

  return sub_BEB8(v49);
}

uint64_t sub_FBF10()
{
  v0 = sub_BD88(&qword_944D88);
  v36 = *(v0 - 8);
  v37 = v0;
  __chkstk_darwin(v0);
  v34 = &v28 - v1;
  v2 = sub_764A60();
  v38 = *(v2 - 8);
  v39 = v2;
  __chkstk_darwin(v2);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_75FA00();
  v40 = *(v5 - 8);
  v41 = v5;
  __chkstk_darwin(v5);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_BD88(&unk_944D90);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v33 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v28 - v12;
  v14 = sub_BD88(&unk_959540);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v28 - v16;
  sub_75C7E0();
  sub_768760();
  (*(v15 + 8))(v17, v14);
  sub_75C790();
  sub_75C740();
  swift_getKeyPath();
  sub_75C7B0();

  sub_527DE4();
  swift_unknownObjectRelease();
  sub_134D8(v43, v42);
  sub_BD88(&unk_944DA0);
  sub_75B640();
  if (swift_dynamicCast())
  {
    v30 = v7;
    v32 = v4;
    v19 = v38;
    v18 = v39;
    v29 = v9;
    v20 = *(v9 + 16);
    v28 = v13;
    v31 = v8;
    v20(v33, v13, v8);
    sub_768FA0();
    v21 = v34;
    sub_768B30();
    v22 = v35;
    sub_75B630();
    sub_75BA70();

    sub_75B620();
    if (v23)
    {
      v24 = sub_759920();
    }

    else
    {
      v24 = 0;
    }

    v25 = *&v22[OBJC_IVAR____TtC18ASMessagesProvider33ProductPageLinkCollectionViewCell_iconImage];
    *&v22[OBJC_IVAR____TtC18ASMessagesProvider33ProductPageLinkCollectionViewCell_iconImage] = v24;
    v26 = v24;

    sub_5A7B54();
    [v22 setNeedsLayout];

    (*(v36 + 8))(v21, v37);
    (*(v19 + 8))(v32, v18);
    (*(v40 + 8))(v30, v41);
    (*(v29 + 8))(v28, v31);
  }

  else
  {
    (*(v38 + 8))(v4, v39);
    (*(v40 + 8))(v7, v41);
    (*(v9 + 8))(v13, v8);
  }

  return sub_BEB8(v43);
}

uint64_t sub_FC478()
{
  v0 = sub_BD88(&unk_948720);
  __chkstk_darwin(v0 - 8);
  v65 = &v59 - v1;
  v67 = sub_766690();
  v66 = *(v67 - 8);
  __chkstk_darwin(v67);
  v64 = &v59 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_BD88(&qword_944D88);
  v68 = *(v69 - 8);
  __chkstk_darwin(v69);
  v71 = &v59 - v3;
  v4 = sub_764A60();
  v74 = *(v4 - 8);
  v75 = v4;
  __chkstk_darwin(v4);
  v6 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_75FA00();
  v8 = *(v7 - 8);
  v72 = v7;
  v73 = v8;
  __chkstk_darwin(v7);
  v10 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_BD88(&unk_944D90);
  v11 = *(v76 - 8);
  __chkstk_darwin(v76);
  v13 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v59 - v15;
  v17 = sub_BD88(&unk_959540);
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v59 - v19;
  sub_75C7E0();
  sub_768760();
  (*(v18 + 8))(v20, v17);
  sub_75C790();
  sub_75C740();
  swift_getKeyPath();
  sub_75C7B0();

  v21 = sub_527DE4();
  sub_134D8(v78, v77);
  sub_BD88(&unk_944DA0);
  sub_7648E0();
  if (swift_dynamicCast())
  {
    v62 = v10;
    v63 = v6;
    v61 = v11;
    v22 = *(v11 + 16);
    v60 = v16;
    v23 = v76;
    v22(v13, v16, v76);
    sub_768FA0();
    v24 = v71;
    sub_768B30();
    v25 = v70;
    v26 = *&v70[OBJC_IVAR____TtC18ASMessagesProvider23QuoteCollectionViewCell_quoteView];
    v27 = sub_7648B0();
    sub_3A39A4(v27, v28);
    v29 = sub_7648C0();
    sub_3A4118(v29, v30);
    v26[OBJC_IVAR____TtC18ASMessagesProvider9QuoteView_isFullWidthArtwork] = sub_7648A0() & 1;
    sub_3A4508();
    if (sub_7648D0())
    {
      sub_765260();
      sub_765260();
      v31 = v64;
      sub_7666A0();
      v32 = v66;
      v33 = v65;
      v34 = v67;
      (*(v66 + 16))(v65, v31, v67);
      (*(v32 + 56))(v33, 0, 1, v34);
      v35 = OBJC_IVAR____TtC18ASMessagesProvider9QuoteView_artworkAspectRatio;
      swift_beginAccess();
      sub_B33C8(v33, &v26[v35], &unk_948720);
      swift_endAccess();
      [*&v26[OBJC_IVAR____TtC18ASMessagesProvider9QuoteView_artworkView] setHidden:0];
      [v26 setNeedsLayout];
      v36 = [v25 contentView];
      sub_BE70(0, &qword_93E550);
      sub_75D650();
      v38 = v37;
      v40 = v39;
      v42 = v41;
      v44 = v43;

      v79.origin.x = v38;
      v79.origin.y = v40;
      v79.size.width = v42;
      v79.size.height = v44;
      Width = CGRectGetWidth(v79);
      sub_766660();
      v47 = v46;

      v48 = v31;
      v23 = v76;
      (*(v32 + 8))(v48, v34);
      v24 = v71;
      v49 = &v25[OBJC_IVAR____TtC18ASMessagesProvider23QuoteCollectionViewCell_preferredArtworkSize];
      *v49 = Width;
      *(v49 + 1) = v47;
    }

    else
    {
      v50 = v65;
      (*(v66 + 56))(v65, 1, 1, v67);
      v51 = OBJC_IVAR____TtC18ASMessagesProvider9QuoteView_artworkAspectRatio;
      swift_beginAccess();
      sub_B33C8(v50, &v26[v51], &unk_948720);
      swift_endAccess();
      [*&v26[OBJC_IVAR____TtC18ASMessagesProvider9QuoteView_artworkView] setHidden:1];
      [v26 setNeedsLayout];
      v52 = &v25[OBJC_IVAR____TtC18ASMessagesProvider23QuoteCollectionViewCell_preferredArtworkSize];
      *v52 = 0;
      *(v52 + 1) = 0;
    }

    v54 = v73;
    v53 = v74;
    v55 = v72;
    [v21 pageMarginInsets];
    v57 = v56;
    [v21 pageMarginInsets];
    [v26 setLayoutMargins:{0.0, v57, 0.0}];
    swift_unknownObjectRelease();

    (*(v68 + 8))(v24, v69);
    (*(v53 + 8))(v63, v75);
    (*(v54 + 8))(v62, v55);
    (*(v61 + 8))(v60, v23);
  }

  else
  {
    swift_unknownObjectRelease();
    (*(v74 + 8))(v6, v75);
    (*(v73 + 8))(v10, v72);
    (*(v11 + 8))(v16, v76);
  }

  return sub_BEB8(v78);
}

uint64_t sub_FCD60(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BreakoutDetailsView.Config(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_FCDC4(uint64_t a1)
{
  v2 = type metadata accessor for BreakoutDetailsView.Config(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_FCE20()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_FCE58()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_FCEAC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t type metadata accessor for FadeInDynamicTypeButton()
{
  result = qword_944EC8;
  if (!qword_944EC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

char *sub_FCFC8(double a1, double a2, double a3, double a4)
{
  *&v4[qword_944EB0] = 0x4059000000000000;
  v4[qword_944EC0] = 0;
  v9 = objc_opt_self();
  v10 = [v9 systemBackgroundColor];
  v11 = sub_53E250(v10);

  *&v4[qword_944EB8] = v11;
  v17.receiver = v4;
  v17.super_class = type metadata accessor for FadeInDynamicTypeButton();
  v12 = objc_msgSendSuper2(&v17, "initWithFrame:", a1, a2, a3, a4);
  v13 = [v9 systemBackgroundColor];
  [v12 setBackgroundColor:v13];

  v14 = [v12 layer];
  [v14 addSublayer:*&v12[qword_944EB8]];

  v15 = [v12 layer];
  [v15 setMasksToBounds:0];

  return v12;
}

id sub_FD16C(void *a1)
{
  v3.receiver = a1;
  v3.super_class = type metadata accessor for FadeInDynamicTypeButton();
  v1 = objc_msgSendSuper2(&v3, "backgroundColor");

  return v1;
}

void sub_FD1C8(void *a1, uint64_t a2, void *a3)
{
  v5 = type metadata accessor for FadeInDynamicTypeButton();
  v10.receiver = a1;
  v10.super_class = v5;
  v6 = a3;
  v7 = a1;
  v8 = objc_msgSendSuper2(&v10, "backgroundColor");
  v9.receiver = v7;
  v9.super_class = v5;
  objc_msgSendSuper2(&v9, "setBackgroundColor:", v6);
  sub_FD268(v8);
}

void sub_FD268(void *a1)
{
  v2 = v1;
  v4 = [v2 backgroundColor];
  if (v4)
  {
    v5 = v4;
    if (a1)
    {
      sub_BE70(0, &qword_93E540);
      v6 = a1;
      v7 = sub_76A1C0();

      if (v7)
      {
        return;
      }
    }

    else
    {
    }
  }

  else if (!a1)
  {
    return;
  }

  v8 = [v2 backgroundColor];
  if (!v8)
  {
    v8 = [objc_opt_self() clearColor];
  }

  v9 = v8;
  v10 = sub_53E250(v8);

  sub_FD9A8(v10);
}

id sub_FD398()
{
  v1 = qword_944EB8;
  if (v0[qword_944EC0])
  {
    v2 = 1.0;
  }

  else
  {
    v2 = 0.0;
  }

  if (v0[qword_944EC0])
  {
    v3 = 0.0;
  }

  else
  {
    v3 = 1.0;
  }

  [*&v0[qword_944EB8] setStartPoint:{v2, 0.5}];
  [*&v0[v1] setEndPoint:{v3, 0.5}];

  return [v0 setNeedsLayout];
}

uint64_t sub_FD42C()
{
  v1 = v0;
  v2 = sub_BD88(&unk_93E530);
  __chkstk_darwin(v2 - 8);
  v4 = &v14 - v3;
  v5 = sub_7666D0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FadeInDynamicTypeButton();
  v14.receiver = v0;
  v14.super_class = v9;
  objc_msgSendSuper2(&v14, "layoutSubviews");
  sub_75C530();
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    return sub_11A38(v4);
  }

  (*(v6 + 32))(v8, v4, v5);
  sub_BE70(0, &qword_93F900);
  v11 = [v0 traitCollection];
  v12 = sub_769E10();

  [v12 lineHeight];
  [v1 bounds];
  CGRectGetMinX(v15);
  [v1 bounds];
  CGRectGetMinY(v16);
  [v1 bounds];
  CGRectGetHeight(v17);
  v13 = *&v1[qword_944EB8];
  sub_75D650();
  sub_769D30();
  [v13 setFrame:?];

  return (*(v6 + 8))(v8, v5);
}

void sub_FD6E0(void *a1)
{
  v1 = a1;
  sub_FD42C();
}

void sub_FD728(void *a1)
{
  v5 = a1;
  v1 = [v5 backgroundColor];
  if (v1)
  {
    v2 = v1;
    v3 = sub_53E250(v1);
    sub_FD9A8(v3);

    v4 = v3;
  }

  else
  {
    v4 = v5;
  }
}

id sub_FD7C0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FadeInDynamicTypeButton();
  return objc_msgSendSuper2(&v2, "dealloc");
}

char *sub_FD810(uint64_t a1, void *a2)
{
  v4 = sub_7666D0();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  (*(v5 + 16))(&v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4, v6);
  v8 = sub_75C550();
  v9 = sub_53E250(a2);
  v10 = qword_944EB8;
  v11 = *&v8[qword_944EB8];
  *&v8[qword_944EB8] = v9;

  [v8 setBackgroundColor:a2];
  v12 = [v8 layer];
  [v12 addSublayer:*&v8[v10]];

  v13 = [v8 layer];
  [v13 setMasksToBounds:0];

  (*(v5 + 8))(a1, v4);
  return v8;
}

void sub_FD9A8(void *a1)
{
  v2 = qword_944EB8;
  v5 = *&v1[qword_944EB8];
  *&v1[qword_944EB8] = a1;
  v3 = a1;
  [v5 frame];
  [v3 setFrame:?];
  v4 = [v1 layer];
  [v4 insertSublayer:*&v1[v2] below:v5];

  [v5 removeFromSuperlayer];
  [v1 setNeedsLayout];
}

uint64_t type metadata accessor for AppPromotionIAPFallbackView()
{
  result = qword_944F40;
  if (!qword_944F40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

char *sub_FDB24(__int128 *a1, double a2, double a3, double a4, double a5)
{
  v6 = v5;
  ObjectType = swift_getObjectType();
  v13 = sub_757CA0();
  __chkstk_darwin(v13 - 8);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = qword_944F20;
  sub_759210();
  *&v6[v16] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v17 = qword_944F28;
  *&v6[v17] = [objc_allocWithZone(type metadata accessor for GradientView()) init];
  v18 = qword_944F30;
  *&v6[v18] = [objc_allocWithZone(UIVisualEffectView) init];
  v19 = &v6[qword_944F38];
  v20 = a1[3];
  *(v19 + 2) = a1[2];
  *(v19 + 3) = v20;
  v21 = *a1;
  v22 = a1[1];
  *(v19 + 8) = *(a1 + 8);
  *v19 = v21;
  *(v19 + 1) = v22;
  sub_757C20();
  v23 = objc_allocWithZone(type metadata accessor for InAppPurchaseView());
  *&v6[qword_944F18] = sub_243D30(v15, 2);
  v41.receiver = v6;
  v41.super_class = ObjectType;
  v24 = objc_msgSendSuper2(&v41, "initWithFrame:", a2, a3, a4, a5);
  v25 = qword_944F28;
  v26 = *&v24[qword_944F28];
  v26[OBJC_IVAR____TtC18ASMessagesProvider12GradientView_kind] = 2;
  v27 = v24;
  v28 = v26;
  v29 = [v28 layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setType:kCAGradientLayerConic];

  v30 = *&v24[v25];
  v31 = [v30 layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setStartPoint:{0.5, 0.5}];

  v32 = *&v24[v25];
  v33 = [v32 layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setEndPoint:{0.5, 1.0}];

  v34 = qword_944F30;
  v35 = *&v27[qword_944F30];
  sub_BD88(&unk_93F5C0);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_77B6C0;
  v37 = objc_opt_self();
  v38 = v35;
  result = [v37 effectWithBlurRadius:100.0];
  if (result)
  {
    *(v36 + 32) = result;
    *(v36 + 40) = [objc_opt_self() colorEffectSaturate:1.25];
    sub_BE70(0, &qword_945800);
    isa = sub_769450().super.isa;

    [v38 setBackgroundEffects:isa];

    [v27 addSubview:*&v24[v25]];
    [v27 addSubview:*&v27[v34]];
    [v27 addSubview:*&v27[qword_944F20]];
    [v27 addSubview:*&v27[qword_944F18]];

    return v27;
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_FDF7C()
{
  xmmword_99AEA0 = xmmword_7849F0;
  *algn_99AEB0 = xmmword_784A00;
  result = 10.0;
  xmmword_99AEC0 = xmmword_784A10;
  unk_99AED0 = xmmword_784A20;
  qword_99AEE0 = 0x4020000000000000;
  return result;
}

double sub_FDFB8()
{
  xmmword_99AEF0 = xmmword_784A30;
  unk_99AF00 = xmmword_784A00;
  result = 146.0;
  xmmword_99AF10 = xmmword_784A40;
  unk_99AF20 = xmmword_784A50;
  qword_99AF30 = 0x4020000000000000;
  return result;
}

__n128 sub_FDFF4@<Q0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v12 = *(v2 + qword_944F38 + 32);
  v13 = *(v2 + qword_944F38 + 48);
  v14 = *(v2 + qword_944F38 + 64);
  v10 = *(v2 + qword_944F38);
  v11 = *(v2 + qword_944F38 + 16);
  v4 = *(v2 + qword_944F18);
  a1[3] = &type metadata for AppPromotionIAPFallbackLayout;
  a1[4] = sub_FED98();
  v5 = swift_allocObject();
  *a1 = v5;
  *(v5 + 112) = type metadata accessor for InAppPurchaseView();
  *(v5 + 120) = sub_FEE3C(&qword_944F98, type metadata accessor for InAppPurchaseView);
  *(v5 + 88) = v4;
  type metadata accessor for GradientView();
  v6 = v4;
  sub_7665D0();
  v7 = *(v2 + qword_944F20);
  *(v5 + 232) = sub_759210();
  *(v5 + 240) = sub_FEE3C(&unk_93E520, &type metadata accessor for ArtworkView);
  *(v5 + 208) = v7;
  sub_BE70(0, &unk_944FA0);
  v8 = v7;
  sub_7665D0();
  *(v5 + 48) = v12;
  *(v5 + 64) = v13;
  *(v5 + 80) = v14;
  result = v11;
  *(v5 + 16) = v10;
  *(v5 + 32) = v11;
  return result;
}

id sub_FE1C4()
{
  sub_766CF0();
  v1 = sub_766D00();
  v1();
  v2 = v0 + qword_944F38;
  v3 = *(v0 + qword_944F18);
  CGAffineTransformMakeRotation(&v18, *(v0 + qword_944F38 + 40) * 3.14159265 / 180.0);
  [v3 setTransform:&v18];
  CGAffineTransformMakeRotation(&v18, *(v2 + 48) * 3.14159265 / 180.0);
  a = v18.a;
  b = v18.b;
  c = v18.c;
  d = v18.d;
  tx = v18.tx;
  ty = v18.ty;
  v16 = v18.ty;
  v17 = v18.tx;
  v10 = *(v0 + qword_944F20);
  [v10 bounds];
  v18.a = a;
  v18.b = b;
  v18.c = c;
  v18.d = d;
  v18.tx = tx;
  v18.ty = ty;
  v20 = CGRectApplyAffineTransform(v19, &v18);
  [v10 center];
  v12 = v11;
  [v3 center];
  v14 = v13;
  v18.a = 1.0;
  v18.b = 0.0;
  v18.c = 0.0;
  v18.d = 1.0;
  v18.tx = 0.0;
  v18.ty = 0.0;
  [v10 setTransform:&v18];
  [v10 bounds];
  [v10 setBounds:?];
  [v10 setCenter:{v12, v14}];
  v18.a = a;
  v18.b = b;
  v18.c = c;
  v18.d = d;
  v18.tx = v17;
  v18.ty = v16;
  return [v10 setTransform:&v18];
}

void sub_FE3D0()
{
  v1 = *(v0 + qword_944F30);
}

void sub_FE430(uint64_t a1)
{
  v2 = *(a1 + qword_944F30);
}

uint64_t sub_FE4A4()
{
  v1 = sub_7657D0();
  sub_7657F0();
  sub_757BA0();
  if (swift_dynamicCastClass())
  {
    sub_757B90();
    v2 = sub_764EE0();
  }

  else
  {

    sub_7657F0();
    v2 = sub_764EE0();
  }

  if (v2 && (v3 = sub_7651A0()) != 0)
  {
    v4 = v3;
  }

  else
  {
    v4 = [objc_opt_self() grayColor];
    if (!v2)
    {
      goto LABEL_11;
    }
  }

  v5 = sub_7651C0();
  if (v5)
  {
    v6 = v5;
    if (!v1)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_11:
  v6 = [objc_opt_self() whiteColor];
  if (!v1)
  {
    goto LABEL_13;
  }

LABEL_12:

  v7 = sub_7651A0();

  if (v7)
  {
    goto LABEL_14;
  }

LABEL_13:
  v7 = [objc_opt_self() grayColor];
  if (v1)
  {
LABEL_14:

    v8 = sub_7651C0();

    if (v8)
    {
      goto LABEL_16;
    }
  }

  v8 = [objc_opt_self() whiteColor];
LABEL_16:
  v9 = *(v0 + qword_944F28);
  sub_BD88(&unk_93F5C0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_77FA60;
  *(v10 + 32) = v6;
  *(v10 + 40) = v4;
  *(v10 + 48) = v7;
  *(v10 + 56) = v8;
  *(v9 + OBJC_IVAR____TtC18ASMessagesProvider12GradientView_colors) = v10;
  v11 = v6;
  v12 = v4;
  v13 = v7;
  v14 = v8;

  sub_4AC204();
}

uint64_t sub_FE6F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_7652D0();
  __chkstk_darwin(v10 - 8);
  v11 = sub_765240();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44[3] = a4;
  v44[4] = a5;
  v15 = sub_B1B4(v44);
  (*(*(a4 - 8) + 16))(v15, a1, a4);
  sub_134D8(v44, v43);
  sub_BD88(&unk_93F520);
  sub_765860();
  if (swift_dynamicCast())
  {
    v39 = a3;
    v16 = v42;
    v17 = sub_7657D0();
    sub_7657F0();
    sub_757BA0();
    v18 = swift_dynamicCastClass();
    v37 = v16;
    if (v18)
    {
      sub_757B90();
      v19 = sub_764EE0();
    }

    else
    {

      sub_7657F0();
      v19 = sub_764EE0();
    }

    v40 = a2;
    v38 = v11;
    if (v19)
    {
      v36 = v17;
      v20 = v39;

      sub_765250();
      sub_765210();
      v41 = v12;
      v35 = *(v12 + 8);
      v35(v14, v11);
      sub_765330();
      v21 = *(v20 + qword_944F20);
      sub_7652E0();
      sub_7591B0();
      [v21 setContentMode:sub_765140()];
      sub_75DEF0();
      sub_7591F0();
      if (!sub_7651A0())
      {
        sub_BE70(0, &qword_93E540);
        sub_76A030();
      }

      sub_759070();
      sub_765250();
      v22 = sub_765210();
      v11 = v38;
      v35(v14, v38);
      [v21 setContentMode:v22];
      sub_759210();
      sub_FEE3C(&qword_945810, &type metadata accessor for ArtworkView);
      sub_75A050();

      v12 = v41;
      v17 = v36;
    }

    v36 = v19;
    if (v17)
    {
      v23 = v11;
      v24 = v39;
      sub_765250();
      sub_765210();
      v25 = *(v12 + 8);
      v41 = v12 + 8;
      v35 = v25;
      v25(v14, v23);
      sub_765330();
      v26 = *(v24 + qword_944F18);
      v27 = OBJC_IVAR____TtC18ASMessagesProvider17InAppPurchaseView_artworkView;
      v28 = *(v26 + OBJC_IVAR____TtC18ASMessagesProvider17InAppPurchaseView_artworkView);
      sub_7652E0();
      sub_7591B0();
      [v28 setContentMode:sub_765140()];
      sub_75DEF0();
      sub_7591F0();
      if (!sub_7651A0())
      {
        sub_BE70(0, &qword_93E540);
        sub_76A030();
      }

      sub_759070();

      v29 = *(v26 + v27);
      sub_765250();
      v30 = sub_765210();
      v35(v14, v38);
      [v29 setContentMode:v30];

      v31 = *(v26 + v27);
      sub_759210();
      sub_FEE3C(&qword_945810, &type metadata accessor for ArtworkView);
      v32 = v31;
      sub_75A050();
    }

    else
    {
    }
  }

  return sub_BEB8(v44);
}

void sub_FECCC()
{
  v1 = qword_944F20;
  sub_759210();
  *(v0 + v1) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v2 = qword_944F28;
  *(v0 + v2) = [objc_allocWithZone(type metadata accessor for GradientView()) init];
  v3 = qword_944F30;
  *(v0 + v3) = [objc_allocWithZone(UIVisualEffectView) init];
  sub_76A840();
  __break(1u);
}

unint64_t sub_FED98()
{
  result = qword_944F90;
  if (!qword_944F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_944F90);
  }

  return result;
}

uint64_t sub_FEDEC()
{
  sub_BEB8(v0 + 88);
  sub_BEB8(v0 + 128);
  sub_BEB8(v0 + 168);
  sub_BEB8(v0 + 208);

  return _swift_deallocObject(v0, 248, 7);
}

uint64_t sub_FEE3C(unint64_t *a1, void (*a2)(uint64_t))
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

char *sub_FEE84(uint64_t a1, char a2, uint64_t a3)
{
  v69 = a3;
  v67 = a1;
  v5 = sub_BD88(&qword_945020);
  __chkstk_darwin(v5 - 8);
  v68 = &v67 - v6;
  v7 = sub_BD88(&unk_944FF0);
  __chkstk_darwin(v7 - 8);
  v9 = &v67 - v8;
  v70 = sub_758880();
  v10 = *(v70 - 8);
  __chkstk_darwin(v70);
  v12 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_BD88(&unk_9442D0);
  __chkstk_darwin(v13 - 8);
  v15 = &v67 - v14;
  v16 = type metadata accessor for FlowDestination();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = (&v67 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = v3;
  sub_726248(v15);
  if ((*(v17 + 48))(v15, 1, v16) != 1)
  {
    sub_61AE8(v15, v19);
    if (a2)
    {
      (*(v10 + 16))(v12, v3, v70);
      v25 = objc_allocWithZone(type metadata accessor for TabPlaceholderViewController());
      v26 = v12;
      v27 = v3;
      v24 = sub_60D50(v26);
    }

    else
    {
      v28 = sub_759E30();
      (*(*(v28 - 8) + 56))(v9, 1, 1, v28);
      v73 = 0;
      v71 = 0u;
      v72 = 0u;
      v29 = sub_471418(v19, v67, 0, 0, v9, &v71, v69, 1);
      sub_10A2C(&v71, &unk_9442E0);
      sub_10A2C(v9, &unk_944FF0);
      if (!v29)
      {
        if (qword_93DF00 != -1)
        {
          swift_once();
        }

        v64 = sub_768FF0();
        sub_BE38(v64, qword_9A0430);
        sub_BD88(&qword_93FD00);
        sub_7685F0();
        *(swift_allocObject() + 16) = xmmword_77E280;
        sub_768540();
        v65 = v70;
        *(&v72 + 1) = v70;
        v66 = sub_B1B4(&v71);
        (*(v10 + 16))(v66, v20, v65);
        sub_7685C0();
        sub_10A2C(&v71, &unk_93FBD0);
        sub_768EA0();

        sub_61BB0(v19);
        return 0;
      }

      v24 = v29;
      v27 = v20;
    }

    v30 = sub_725904();
    if (v30)
    {
      v31 = v30;
      v32 = [v30 title];
      [v24 setTitle:v32];

      [v24 setTabBarItem:v31];
    }

    type metadata accessor for StoreCollectionViewController();
    v33 = swift_dynamicCastClass();
    if (v33)
    {
      v34 = v33;
      *(v33 + OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_prefersLargeTitle) = 1;
      v35 = (*(&stru_158.flags + (swift_isaMask & *v33)))();
      v36 = v24;
      v37 = [v34 navigationItem];
      v38 = v37;
      if (v35)
      {
        v39 = 1;
      }

      else
      {
        v39 = 2;
      }

      [v37 setLargeTitleDisplayMode:{v39, v67}];

      v40 = sub_758850();
      v41 = (v34 + OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_automationSemanticPageId);
      *v41 = v40;
      v41[1] = v42;

      ObjectType = swift_getObjectType();
      v44 = v68;
      v45 = v70;
      (*(v10 + 16))(v68, v27, v70);
      (*(v10 + 56))(v44, 0, 1, v45);
      v46 = (*(ObjectType + 480))(v69, v44);
      sub_10A2C(v44, &qword_945020);
      v47 = *(v34 + OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_navigationAccessories);
      *(v34 + OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_navigationAccessories) = v46;

      v48 = [v34 traitCollection];
      LOBYTE(v44) = sub_4E1BD4(v47, v48, v46);

      if ((v44 & 1) == 0)
      {
        (*&stru_1F8.sectname[swift_isaMask & *v34])(v49);
      }
    }

    else
    {
      type metadata accessor for SearchViewController();
      v50 = swift_dynamicCastClass();
      if (!v50)
      {
LABEL_25:

        sub_61BB0(v19);
        return v24;
      }

      v51 = v50;
      v52 = OBJC_IVAR____TtC18ASMessagesProvider20SearchViewController_prefersLargeTitle;
      *(v50 + OBJC_IVAR____TtC18ASMessagesProvider20SearchViewController_prefersLargeTitle) = 1;
      v53 = v24;
      v54 = [v51 navigationItem];
      v55 = v54;
      if (v51[v52])
      {
        v56 = 3;
      }

      else
      {
        v56 = 2;
      }

      [v54 setLargeTitleDisplayMode:{v56, v67}];

      v57 = v68;
      v58 = v70;
      (*(v10 + 16))(v68, v27, v70);
      (*(v10 + 56))(v57, 0, 1, v58);
      v59 = sub_2B3898(v69, v57);
      sub_10A2C(v57, &qword_945020);
      v60 = *&v51[OBJC_IVAR____TtC18ASMessagesProvider20SearchViewController_navigationAccessories];
      *&v51[OBJC_IVAR____TtC18ASMessagesProvider20SearchViewController_navigationAccessories] = v59;

      v61 = [v51 traitCollection];
      v62 = sub_4E1BD4(v60, v61, v59);

      if ((v62 & 1) == 0)
      {
        sub_2B1BB4();
      }
    }

    goto LABEL_25;
  }

  sub_10A2C(v15, &unk_9442D0);
  if (qword_93DF00 != -1)
  {
    swift_once();
  }

  v21 = sub_768FF0();
  sub_BE38(v21, qword_9A0430);
  sub_BD88(&qword_93FD00);
  sub_7685F0();
  *(swift_allocObject() + 16) = xmmword_77E280;
  sub_768540();
  v22 = v70;
  *(&v72 + 1) = v70;
  v23 = sub_B1B4(&v71);
  (*(v10 + 16))(v23, v3, v22);
  sub_7685C0();
  sub_10A2C(&v71, &unk_93FBD0);
  sub_768EA0();

  return 0;
}

id sub_FF8B4(uint64_t a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR____TtC18ASMessagesProvider21StoreTabBarController_objectGraph] = 0;
  *&v3[OBJC_IVAR____TtC18ASMessagesProvider21StoreTabBarController_tabChangeDelegate] = 0;
  if (a2)
  {
    v7 = sub_769210();
  }

  else
  {
    v7 = 0;
  }

  v11.receiver = v3;
  v11.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v11, "initWithNibName:bundle:", v7, a3);

  v9 = v8;
  [v9 _uip_setTabBarHidden:1];

  return v9;
}

uint64_t sub_FFB60(unsigned int *a1)
{
  v3 = sub_BD88(&unk_93F980);
  __chkstk_darwin(v3 - 8);
  v5 = &v28 - v4;
  v6 = sub_7687B0();
  __chkstk_darwin(v6 - 8);
  v7 = sub_75A3A0();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v28 - v12;
  v14 = sub_BD88(&qword_945018);
  __chkstk_darwin(v14 - 8);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v17);
  v20 = &v28 - v19;
  (*(v8 + 104))(&v28 - v19, *a1, v7, v18);
  (*(v8 + 56))(v20, 0, 1, v7);
  v21 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider21StoreTabBarController_objectGraph);
  if (v21)
  {
    sub_101EEC(v20, v16);
    if ((*(v8 + 48))(v16, 1, v7) == 1)
    {
      sub_10A2C(v20, &qword_945018);
      v22 = v16;
      v23 = &qword_945018;
    }

    else
    {
      (*(v8 + 32))(v13, v16, v7);
      (*(v8 + 16))(v10, v13, v7);

      sub_768790();
      sub_75B6B0();
      swift_allocObject();
      v24 = sub_75B690();
      v25 = sub_BD88(&unk_93F630);
      sub_768860();
      v26 = *(v25 - 8);
      if ((*(v26 + 48))(v5, 1, v25) != 1)
      {
        sub_32A6C0(v24, 1, v21, v5);

        (*(v8 + 8))(v13, v7);
        sub_10A2C(v20, &qword_945018);
        return (*(v26 + 8))(v5, v25);
      }

      (*(v8 + 8))(v13, v7);
      sub_10A2C(v20, &qword_945018);
      v23 = &unk_93F980;
      v22 = v5;
    }
  }

  else
  {
    v23 = &qword_945018;
    v22 = v20;
  }

  return sub_10A2C(v22, v23);
}

void sub_1000E8()
{
  v1 = sub_BD88(&unk_93F980);
  __chkstk_darwin(v1 - 8);
  v3 = &v45 - v2;
  v4 = sub_75A3A0();
  v64 = *(v4 - 8);
  v65 = v4;
  __chkstk_darwin(v4);
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_BD88(&qword_945010);
  __chkstk_darwin(v7 - 8);
  v63 = &v45 - v8;
  v9 = sub_759F30();
  v60 = *(v9 - 8);
  v61 = v9;
  __chkstk_darwin(v9);
  v62 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_758B40();
  v56 = *(v58 - 8);
  __chkstk_darwin(v58);
  v59 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_75F340();
  v12 = *(v54 - 8);
  __chkstk_darwin(v54);
  v57 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_760280();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v55 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_7687B0();
  __chkstk_darwin(v17 - 8);
  v53 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_BD88(&unk_944FF0);
  __chkstk_darwin(v19 - 8);
  v21 = &v45 - v20;
  v22 = sub_BD88(&unk_93FD30);
  __chkstk_darwin(v22 - 8);
  v24 = &v45 - v23;
  v25 = sub_765490();
  __chkstk_darwin(v25);
  v28 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider21StoreTabBarController_objectGraph);
  if (v28)
  {
    v71 = 0;
    v69 = 0u;
    v70 = 0u;
    (*(v27 + 104))(&v45 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for FlowPage.search(_:));
    v29 = sub_7570A0();
    v52 = v3;
    v51 = v6;
    v30 = v29;
    v31 = *(v29 - 8);
    v46 = *(v31 + 56);
    v47 = v31 + 56;
    v46(v24, 1, 1, v29);
    v32 = sub_759E30();
    v66 = v28;
    v49 = v32;
    v33 = *(v32 - 8);
    v48 = *(v33 + 56);
    v50 = v33 + 56;
    v48(v21, 1, 1, v32);
    v67 = 0u;
    v68 = 0u;

    sub_768790();
    (*(v15 + 104))(v55, enum case for FlowPresentationContext.infer(_:), v14);
    (*(v12 + 104))(v57, enum case for FlowAnimationBehavior.infer(_:), v54);
    (*(v56 + 104))(v59, enum case for FlowOrigin.inapp(_:), v58);
    sub_768CE0();
    sub_758B20();
    swift_allocObject();
    v34 = sub_758AD0();
    v35 = v30;
    v36 = v52;
    v46(v24, 1, 1, v35);
    (*(v60 + 104))(v62, enum case for SearchOrigin.keyboardShortcut(_:), v61);
    v37 = sub_759F20();
    (*(*(v37 - 8) + 56))(v63, 1, 1, v37);
    sub_768790();
    v38 = v66;
    v48(v21, 1, 1, v49);
    v39 = sub_759F10();
    swift_allocObject();
    v40 = sub_759ED0();
    *(&v70 + 1) = v39;
    *&v69 = v40;
    sub_758A70();
    sub_10A2C(&v69, &unk_93FBD0);
    (*(v64 + 104))(v51, enum case for NavigationTab.search(_:), v65);
    sub_BD88(&unk_93F5C0);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_77D9F0;
    *(v41 + 32) = v34;

    sub_768790();
    sub_75B6B0();
    swift_allocObject();
    v42 = sub_75B690();
    v43 = sub_BD88(&unk_93F630);
    sub_768860();
    v44 = *(v43 - 8);
    if ((*(v44 + 48))(v36, 1, v43) == 1)
    {

      sub_10A2C(v36, &unk_93F980);
    }

    else
    {
      sub_32A6C0(v42, 1, v38, v36);

      (*(v44 + 8))(v36, v43);
    }
  }
}

void sub_100AE8()
{
  v1 = v0;
  v2 = sub_BD88(&unk_93F980);
  __chkstk_darwin(v2 - 8);
  v49 = &v40 - v3;
  v4 = sub_758B40();
  v45 = *(v4 - 8);
  v46 = v4;
  __chkstk_darwin(v4);
  v47 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_75F340();
  v6 = *(v44 - 8);
  __chkstk_darwin(v44);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_760280();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v48 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v40 - v13;
  v15 = sub_7687B0();
  __chkstk_darwin(v15 - 8);
  v16 = sub_BD88(&unk_944FF0);
  __chkstk_darwin(v16 - 8);
  v18 = &v40 - v17;
  v19 = sub_BD88(&unk_93FD30);
  __chkstk_darwin(v19 - 8);
  v21 = &v40 - v20;
  v22 = sub_765490();
  __chkstk_darwin(v22);
  v25 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider21StoreTabBarController_objectGraph);
  if (v25)
  {
    v54 = 0;
    v52 = 0u;
    v53 = 0u;
    (*(v24 + 104))(&v40 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for FlowPage.account(_:));
    v26 = sub_7570A0();
    (*(*(v26 - 8) + 56))(v21, 1, 1, v26);
    v27 = sub_759E30();
    (*(*(v27 - 8) + 56))(v18, 1, 1, v27);
    v50 = 0u;
    v51 = 0u;

    sub_768790();
    v28 = *(v10 + 104);
    v42 = v10 + 104;
    v43 = v9;
    v41 = v28;
    v28(v14, enum case for FlowPresentationContext.infer(_:), v9);
    (*(v6 + 104))(v8, enum case for FlowAnimationBehavior.infer(_:), v44);
    (*(v45 + 104))(v47, enum case for FlowOrigin.inapp(_:), v46);
    sub_768CE0();
    sub_758B20();
    swift_allocObject();
    v29 = sub_758AD0();
    v30 = ASKDeviceTypeGetCurrent();
    v31 = sub_769240();
    v33 = v32;
    if (v31 == sub_769240() && v33 == v34)
    {

      v35 = &enum case for FlowPresentationContext.presentModalFormSheet(_:);
    }

    else
    {
      v36 = sub_76A950();

      v35 = &enum case for FlowPresentationContext.presentModal(_:);
      if (v36)
      {
        v35 = &enum case for FlowPresentationContext.presentModalFormSheet(_:);
      }
    }

    v37 = v49;
    v41(v48, *v35, v43);
    sub_758AB0();
    v38 = sub_BD88(&unk_93F630);
    sub_768860();
    v39 = *(v38 - 8);
    if ((*(v39 + 48))(v37, 1, v38) == 1)
    {

      sub_10A2C(v37, &unk_93F980);
    }

    else
    {
      sub_32AC14(v29, 1, v25, v37);

      (*(v39 + 8))(v37, v38);
    }
  }
}

void sub_1012F4(void (*a1)(void, __n128), uint64_t (*a2)(uint64_t))
{
  v5 = sub_BD88(&unk_93F980);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v14 - v7;
  v9 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider21StoreTabBarController_objectGraph);
  if (v9)
  {
    a1(0, v6);
    swift_allocObject();

    v11 = a2(v10);
    v12 = sub_BD88(&unk_93F630);
    sub_768860();
    v13 = *(v12 - 8);
    if ((*(v13 + 48))(v8, 1, v12) == 1)
    {

      sub_10A2C(v8, &unk_93F980);
    }

    else
    {
      sub_32A6C0(v11, 1, v9, v8);

      (*(v13 + 8))(v8, v12);
    }
  }
}

void sub_1015CC()
{
  v0 = sub_BD88(&unk_93F980);
  __chkstk_darwin(v0 - 8);
  v52 = &v42 - v1;
  v50 = sub_758B40();
  v48 = *(v50 - 8);
  __chkstk_darwin(v50);
  v51 = &v42 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_75F340();
  v45 = *(v3 - 8);
  v46 = v3;
  __chkstk_darwin(v3);
  v49 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_760280();
  v43 = *(v5 - 8);
  v44 = v5;
  __chkstk_darwin(v5);
  v47 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_7687B0();
  __chkstk_darwin(v7 - 8);
  v8 = sub_BD88(&unk_944FF0);
  __chkstk_darwin(v8 - 8);
  v10 = &v42 - v9;
  v11 = sub_BD88(&unk_93FD30);
  __chkstk_darwin(v11 - 8);
  v13 = &v42 - v12;
  v14 = sub_765490();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = ASKBuildTypeGetCurrent();
  v19 = sub_769240();
  v21 = v20;
  if (v19 == sub_769240() && v21 == v22)
  {
    goto LABEL_3;
  }

  v23 = sub_76A950();

  if (v23)
  {
    goto LABEL_5;
  }

  v31 = sub_769240();
  v33 = v32;
  if (v31 == sub_769240() && v33 == v34)
  {
LABEL_3:

    goto LABEL_6;
  }

  v35 = sub_76A950();

  if (v35)
  {
LABEL_5:

LABEL_6:
    v24 = *(v53 + OBJC_IVAR____TtC18ASMessagesProvider21StoreTabBarController_objectGraph);
    if (v24)
    {
      v58 = 0;
      v56 = 0u;
      v57 = 0u;
      (*(v15 + 104))(v17, enum case for FlowPage.debugSettings(_:), v14);
      v25 = sub_7570A0();
      (*(*(v25 - 8) + 56))(v13, 1, 1, v25);
      v26 = sub_759E30();
      (*(*(v26 - 8) + 56))(v10, 1, 1, v26);
      v54 = 0u;
      v55 = 0u;

      sub_768790();
      (*(v43 + 104))(v47, enum case for FlowPresentationContext.presentModalFormSheet(_:), v44);
      (*(v45 + 104))(v49, enum case for FlowAnimationBehavior.infer(_:), v46);
      (*(v48 + 104))(v51, enum case for FlowOrigin.inapp(_:), v50);
      sub_768CE0();
      sub_758B20();
      swift_allocObject();
      v27 = sub_758AD0();
      v28 = sub_BD88(&unk_93F630);
      v29 = v52;
      sub_768860();
      v30 = *(v28 - 8);
      if ((*(v30 + 48))(v29, 1, v28) == 1)
      {

        sub_10A2C(v29, &unk_93F980);
      }

      else
      {
        sub_32AC14(v27, 1, v24, v29);

        (*(v30 + 8))(v29, v28);
      }
    }

    return;
  }

  v36 = sub_769240();
  v38 = v37;
  if (v36 == sub_769240() && v38 == v39)
  {
  }

  else
  {
    v40 = sub_76A950();

    if ((v40 & 1) == 0)
    {
      return;
    }
  }

  sub_7689F0();
  sub_7689E0();
  if (qword_93E0D8 != -1)
  {
    swift_once();
  }

  v41 = sub_BD88(&unk_945000);
  sub_BE38(v41, qword_9A07A8);
  sub_7686D0();

  if (v56 != 2 && (v56 & 1) != 0)
  {
    goto LABEL_6;
  }
}

uint64_t sub_101EEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&qword_945018);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_101F5C(unint64_t a1, unint64_t a2)
{
  v4 = sub_761C80();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_7653B0();
  v32[3] = v8;
  v32[4] = sub_102988(&qword_93F9B0, &type metadata accessor for Feature);
  v9 = sub_B1B4(v32);
  (*(*(v8 - 8) + 104))(v9, enum case for Feature.search_tags(_:), v8);
  LOBYTE(v8) = sub_765C30();
  sub_BEB8(v32);
  if (v8)
  {
    a2 = a1;
  }

  if (a2)
  {
    sub_75D7C0();
    if (sub_769490())
    {
      v10 = a2 & 0xFFFFFFFFFFFFFF8;
      if (a2 >> 62)
      {
        goto LABEL_40;
      }

      for (i = *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8)); i; i = sub_76A860())
      {
        v12 = 0;
        v31 = a2 & 0xC000000000000001;
        v13 = (v5 + 88);
        v29 = enum case for MetadataRibbonItemViewType.editorsChoice(_:);
        v30 = enum case for MetadataRibbonItemViewType.borderedTextLabel(_:);
        v27 = enum case for MetadataRibbonItemViewType.starRating(_:);
        v28 = enum case for MetadataRibbonItemViewType.imageWithLabel(_:);
        v25 = enum case for MetadataRibbonItemViewType.divider(_:);
        v26 = enum case for MetadataRibbonItemViewType.textLabel(_:);
        v14 = (v5 + 8);
        v15 = enum case for MetadataRibbonItemViewType.highlightedText(_:);
        v24 = v10;
        while (v31)
        {
          v5 = sub_76A770();
          v10 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            goto LABEL_38;
          }

LABEL_11:
          sub_75D750();

          v16 = (*v13)(v7, v4);
          v17 = v16 == v30 || v16 == v29;
          v22 = v17 || v16 == v28 || v16 == v27 || v16 == v26 || v16 == v25 || v16 == v15;
          v5 = v22;
          if (!v22)
          {
            (*v14)(v7, v4);
            ++v12;
            v17 = v10 == i;
            v10 = v24;
            if (!v17)
            {
              continue;
            }
          }

          return v5;
        }

        if (v12 >= *(v10 + 16))
        {
          goto LABEL_39;
        }

        v5 = *(a2 + 8 * v12 + 32);

        v10 = v12 + 1;
        if (!__OFADD__(v12, 1))
        {
          goto LABEL_11;
        }

LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        ;
      }
    }
  }

  return 0;
}

uint64_t sub_102258()
{
  result = sub_102510();
  if (!result)
  {
    sub_75DDB0();
    if (swift_dynamicCastClass())
    {
      v1 = type metadata accessor for AdvertsSearchResultContentView();
      v2 = &unk_945060;
      v3 = type metadata accessor for AdvertsSearchResultContentView;
    }

    else
    {
      sub_75D360();
      if (swift_dynamicCastClass())
      {
        v1 = type metadata accessor for BundleSearchResultContentView();
        v2 = &unk_945058;
        v3 = type metadata accessor for BundleSearchResultContentView;
      }

      else
      {
        sub_7581C0();
        if (swift_dynamicCastClass())
        {
          v1 = type metadata accessor for AppSearchResultContentView();
          v2 = &unk_945050;
          v3 = type metadata accessor for AppSearchResultContentView;
        }

        else
        {
          sub_75F330();
          if (swift_dynamicCastClass())
          {
            v1 = type metadata accessor for EditorialSearchResultContentView();
            v2 = &unk_945048;
            v3 = type metadata accessor for EditorialSearchResultContentView;
          }

          else
          {
            sub_757D20();
            if (swift_dynamicCastClass())
            {
              v1 = type metadata accessor for InAppPurchaseSearchResultContentView();
              v2 = &unk_945040;
              v3 = type metadata accessor for InAppPurchaseSearchResultContentView;
            }

            else
            {
              sub_762810();
              if (swift_dynamicCastClass())
              {
                v1 = type metadata accessor for LockupCollectionSearchResultContentView();
                v2 = &unk_945038;
                v3 = type metadata accessor for LockupCollectionSearchResultContentView;
              }

              else
              {
                sub_7583C0();
                if (swift_dynamicCastClass())
                {
                  v1 = type metadata accessor for AppEventSearchResultContentView();
                  v2 = &unk_945030;
                  v3 = type metadata accessor for AppEventSearchResultContentView;
                }

                else
                {
                  sub_75D570();
                  result = swift_dynamicCastClass();
                  if (!result)
                  {
                    return result;
                  }

                  v1 = type metadata accessor for GuidedSearchResultContentView();
                  v2 = &unk_945028;
                  v3 = type metadata accessor for GuidedSearchResultContentView;
                }
              }
            }
          }
        }
      }
    }

    sub_102988(v2, v3);
    return v1;
  }

  return result;
}

uint64_t sub_102510()
{
  v0 = sub_762E50();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v22[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v6 = &v22[-v5];
  __chkstk_darwin(v7);
  v9 = &v22[-v8];
  __chkstk_darwin(v10);
  v12 = &v22[-v11];
  sub_75F330();
  if (!swift_dynamicCastClass())
  {
    goto LABEL_7;
  }

  v24 = v3;
  sub_759F40();
  (*(v1 + 104))(v9, enum case for SearchResultCondensedBehavior.always(_:), v0);
  sub_102988(&qword_945068, &type metadata accessor for SearchResultCondensedBehavior);
  sub_769430();
  sub_769430();
  if (v27 != v25 || v28 != v26)
  {
    v23 = sub_76A950();
    v14 = *(v1 + 8);
    v14(v9, v0);
    v14(v12, v0);

    v3 = v24;
    if (v23)
    {
      goto LABEL_6;
    }

LABEL_7:
    sub_757D20();
    if (swift_dynamicCastClass())
    {
      sub_759F40();
      (*(v1 + 104))(v3, enum case for SearchResultCondensedBehavior.always(_:), v0);
      sub_102988(&qword_945068, &type metadata accessor for SearchResultCondensedBehavior);
      sub_769430();
      sub_769430();
      if (v27 == v25 && v28 == v26)
      {
        v18 = *(v1 + 8);
        v18(v3, v0);
        v18(v6, v0);

LABEL_12:
        v15 = type metadata accessor for CondensedInAppPurchaseContentView();
        v16 = &unk_945070;
        v17 = type metadata accessor for CondensedInAppPurchaseContentView;
        goto LABEL_13;
      }

      v19 = sub_76A950();
      v20 = *(v1 + 8);
      v20(v3, v0);
      v20(v6, v0);

      if (v19)
      {
        goto LABEL_12;
      }
    }

    return 0;
  }

  v13 = *(v1 + 8);
  v13(v9, v0);
  v13(v12, v0);

LABEL_6:
  v15 = type metadata accessor for CondensedEditorialSearchResultContentView();
  v16 = &unk_945078;
  v17 = type metadata accessor for CondensedEditorialSearchResultContentView;
LABEL_13:
  sub_102988(v16, v17);
  return v15;
}

uint64_t sub_102988(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1029D0()
{
  v0 = sub_766950();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v13[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v13[-1] - v5;
  __chkstk_darwin(v7);
  v9 = &v13[-1] - v8;
  sub_766930();
  sub_766930();

  sub_766940();

  v10 = *(v1 + 8);
  v10(v3, v0);
  v13[3] = v0;
  v13[4] = &protocol witness table for VerticalStack;
  sub_B1B4(v13);
  sub_766940();
  v10(v6, v0);

  sub_766940();

  v10(v9, v0);
  return sub_BEB8(v13);
}

uint64_t sub_102C04(uint64_t a1, uint64_t a2)
{
  sub_102FD8(a2 + 16, v4);
  sub_34698(v4, v3);
  return sub_7668B0();
}

uint64_t sub_102C4C()
{
  sub_103044(v0 + 16);
  sub_BEB8(v0 + 64);
  sub_BEB8(v0 + 104);

  return swift_deallocClassInstance();
}

__n128 sub_102CB8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_102CCC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
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

uint64_t sub_102D14(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_102DA4(uint64_t a1, uint64_t a2, double a3, double a4)
{
  WitnessTable = swift_getWitnessTable();
  v9.n128_f64[0] = a3;
  v10.n128_f64[0] = a4;

  return CustomLayout.measure(toFit:with:)(a1, a2, WitnessTable, v9, v10);
}

uint64_t sub_102E1C(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  WitnessTable = swift_getWitnessTable();
  v13.n128_f64[0] = a3;
  v14.n128_f64[0] = a4;
  v15.n128_f64[0] = a5;
  v16.n128_f64[0] = a6;

  return CustomLayout.place(at:with:)(a1, a2, WitnessTable, v13, v14, v15, v16);
}

uint64_t sub_102EAC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return CustomLayout._eraseToAnyForTesting(with:)(a1, a2, WitnessTable);
}

uint64_t sub_102F7C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ShelfFooterViewLayout();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

char *sub_103080(double a1, double a2, double a3, double a4)
{
  v9 = type metadata accessor for MediaView();
  v10 = objc_allocWithZone(v9);
  *&v10[OBJC_IVAR____TtC18ASMessagesProvider9MediaView_reflectionView] = 0;
  *&v10[OBJC_IVAR____TtC18ASMessagesProvider9MediaView_reflectionAmount] = 0;
  v10[OBJC_IVAR____TtC18ASMessagesProvider9MediaView_isRubberbanding] = 0;
  *&v10[OBJC_IVAR____TtC18ASMessagesProvider9MediaView_reflectionScale] = 0x3FF0000000000000;
  *&v10[OBJC_IVAR____TtC18ASMessagesProvider9MediaView_reflectionOffset] = 0;
  v11 = type metadata accessor for UberContentContainer();
  v12 = objc_allocWithZone(v11);
  *&v12[OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_contents] = 0;
  *&v12[OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_parallaxY] = 0;
  v13 = &v12[OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_prominentPlayButtonCenterYOverride];
  *v13 = 0;
  v13[8] = 1;
  v14 = &v12[OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_systemBackgroundExtensionOutsets];
  *v14 = 0u;
  *(v14 + 1) = 0u;
  v14[32] = 1;
  *&v12[OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_backgroundExtensionView] = 0;
  v29.receiver = v12;
  v29.super_class = v11;
  v15 = objc_msgSendSuper2(&v29, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v16 = v15;
  if (*&v15[OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_backgroundExtensionView])
  {
    [v15 addSubview:?];
  }

  v17 = OBJC_IVAR____TtC18ASMessagesProvider30HeroCarouselItemBackgroundView_mediaViewContainer;
  *&v10[OBJC_IVAR____TtC18ASMessagesProvider9MediaView_contentContainer] = v16;
  v28.receiver = v10;
  v28.super_class = v9;
  v18 = objc_msgSendSuper2(&v28, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v18 setClipsToBounds:1];
  [v18 addSubview:*&v18[OBJC_IVAR____TtC18ASMessagesProvider9MediaView_contentContainer]];

  *&v4[v17] = v18;
  v19 = OBJC_IVAR____TtC18ASMessagesProvider30HeroCarouselItemBackgroundView_artworkView;
  sub_759210();
  *&v4[v19] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v27.receiver = v4;
  v27.super_class = type metadata accessor for HeroCarouselItemBackgroundView();
  v20 = objc_msgSendSuper2(&v27, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v24 = v20;
  [v24 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v24 setUserInteractionEnabled:0];
  v25 = [v24 layer];
  [v25 setAllowsGroupBlending:0];

  [v24 addSubview:*&v24[OBJC_IVAR____TtC18ASMessagesProvider30HeroCarouselItemBackgroundView_mediaViewContainer]];
  return v24;
}

void sub_103384(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider30HeroCarouselItemBackgroundView_mediaViewContainer);
  v4 = OBJC_IVAR____TtC18ASMessagesProvider9MediaView_contentContainer;
  v5 = *(v3 + OBJC_IVAR____TtC18ASMessagesProvider9MediaView_contentContainer);
  if (a1)
  {
    sub_104BAC(&qword_93F500, 255, type metadata accessor for VideoView);
    v6 = a1;
    v7 = [v6 superview];
    if (v7)
    {
      v8 = v7;
      sub_BE70(0, &qword_93E550);
      v9 = v5;
      v10 = sub_76A1C0();

      if (v10)
      {
        [v6 removeFromSuperview];
      }
    }

    else
    {
    }
  }

  v11 = *&v5[OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_contents];
  *&v5[OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_contents] = a1;
  v16 = a1;
  sub_1F92A8(v11);

  v12 = *(*(v3 + v4) + OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_contents);
  if (v12)
  {
    type metadata accessor for VideoView();
    v13 = swift_dynamicCastClass();
    if (v13)
    {
      v14 = v13;
      v15 = v12;
      [v14 setUserInteractionEnabled:0];
    }
  }
}

void (*sub_10352C(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider30HeroCarouselItemBackgroundView_mediaViewContainer);
  v4 = OBJC_IVAR____TtC18ASMessagesProvider9MediaView_contentContainer;
  a1[1] = v3;
  a1[2] = v4;
  v5 = *(*(v3 + v4) + OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_contents);
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
  return sub_1035C8;
}

void sub_1035C8(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(a1 + 8) + *(a1 + 16));
  if (a2)
  {
    if (v3)
    {
      sub_104BAC(&qword_93F500, 255, type metadata accessor for VideoView);
      v5 = v3;
      v6 = [v5 superview];
      if (v6)
      {
        v7 = v6;
        sub_BE70(0, &qword_93E550);
        v8 = v4;
        v9 = sub_76A1C0();

        if (v9)
        {
          [v5 removeFromSuperview];
        }
      }

      else
      {
      }
    }

    v16 = *(a1 + 8);
    v15 = *(a1 + 16);
    v17 = *&v4[OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_contents];
    *&v4[OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_contents] = v3;
    v18 = v3;
    sub_1F92A8(v17);

    v19 = *(*(v16 + v15) + OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_contents);
    if (v19)
    {
      type metadata accessor for VideoView();
      v20 = swift_dynamicCastClass();
      if (v20)
      {
        v21 = v20;
        v22 = v19;
        [v21 setUserInteractionEnabled:0];
      }
    }

    v23 = *a1;
  }

  else
  {
    if (v3)
    {
      sub_104BAC(&qword_93F500, 255, type metadata accessor for VideoView);
      v10 = v3;
      v11 = [v10 superview];
      if (v11)
      {
        v12 = v11;
        sub_BE70(0, &qword_93E550);
        v13 = v4;
        v14 = sub_76A1C0();

        if (v14)
        {
          [v10 removeFromSuperview];
        }
      }

      else
      {
      }
    }

    v25 = *(a1 + 8);
    v24 = *(a1 + 16);
    v26 = *&v4[OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_contents];
    *&v4[OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_contents] = v3;
    v31 = v3;
    sub_1F92A8(v26);

    v27 = *(*(v25 + v24) + OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_contents);
    if (v27)
    {
      type metadata accessor for VideoView();
      v28 = swift_dynamicCastClass();
      if (v28)
      {
        v29 = v28;
        v30 = v27;
        [v29 setUserInteractionEnabled:0];
      }
    }

    v23 = v31;
  }
}

id sub_103950(uint64_t a1, char *a2)
{
  v64 = a2;
  v3 = sub_BD88(&unk_948710);
  __chkstk_darwin(v3 - 8);
  v63 = v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v62 = v61 - v6;
  v7 = sub_BD88(&unk_93FD30);
  __chkstk_darwin(v7 - 8);
  v9 = v61 - v8;
  v10 = sub_75A6B0();
  __chkstk_darwin(v10 - 8);
  __chkstk_darwin(v11);
  v12 = sub_BD88(&unk_948720);
  __chkstk_darwin(v12 - 8);
  v14 = v61 - v13;
  v15 = sub_75A6E0();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_75DC30();
  v65 = *(v19 - 8);
  v66 = v19;
  __chkstk_darwin(v19);
  v21 = v61 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_75BBE0())
  {
    v61[2] = a1;
    (*(v16 + 104))(v18, enum case for VideoFillMode.scaleAspectFill(_:), v15);
    sub_764BC0();
    sub_765260();
    sub_7666A0();

    v22 = sub_766690();
    (*(*(v22 - 8) + 56))(v14, 0, 1, v22);
    sub_764B60();
    sub_764BA0();
    sub_764B70();
    sub_764B50();
    sub_764BB0();
    sub_75DC10();
    sub_75C360();
    sub_768880();
    v23 = v69[0];
    sub_764B40();
    sub_764BD0();
    v24 = sub_7570A0();
    (*(*(v24 - 8) + 56))(v9, 0, 1, v24);
    v25 = v62;
    sub_764B90();
    v26 = v63;
    sub_764B80();
    v27 = type metadata accessor for VideoView();
    sub_104BAC(&qword_93F500, 255, type metadata accessor for VideoView);
    v61[0] = v27;
    v61[1] = v23;
    v28 = sub_75C340();
    sub_10A2C(v26, &unk_948710);
    sub_10A2C(v25, &unk_948710);
    sub_10A2C(v9, &unk_93FD30);
    sub_10A2C(v69, &unk_9443A0);
    v29 = *&v67[OBJC_IVAR____TtC18ASMessagesProvider30HeroCarouselItemBackgroundView_mediaViewContainer];
    v30 = OBJC_IVAR____TtC18ASMessagesProvider9MediaView_contentContainer;
    v31 = *(v29 + OBJC_IVAR____TtC18ASMessagesProvider9MediaView_contentContainer);
    v64 = v21;
    if (v28)
    {
      v32 = v28;
      v33 = [v32 superview];
      if (v33)
      {
        v34 = v33;
        sub_BE70(0, &qword_93E550);
        v35 = v31;
        v36 = sub_76A1C0();

        if (v36)
        {
          [v32 removeFromSuperview];
        }
      }

      else
      {
      }
    }

    v43 = *&v31[OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_contents];
    *&v31[OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_contents] = v28;
    v44 = v28;
    sub_1F92A8(v43);

    v45 = *(*(v29 + v30) + OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_contents);
    if (v45 && (v46 = swift_dynamicCastClass()) != 0)
    {
      v47 = v46;
      v48 = v45;
      [v47 setUserInteractionEnabled:0];
    }

    else
    {
    }

    (*(v65 + 8))(v64, v66);
    v38 = v67;
  }

  else
  {
    v37 = sub_75BBF0();
    v38 = v67;
    if (v37)
    {

      v39 = *&v38[OBJC_IVAR____TtC18ASMessagesProvider30HeroCarouselItemBackgroundView_artworkView];
      v40 = *(*&v38[OBJC_IVAR____TtC18ASMessagesProvider30HeroCarouselItemBackgroundView_mediaViewContainer] + OBJC_IVAR____TtC18ASMessagesProvider9MediaView_contentContainer);
      v41 = *(v40 + OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_contents);
      *(v40 + OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_contents) = v39;
      v42 = v39;
      sub_1F92A8(v41);

      sub_1F7F5C();
    }
  }

  v49 = sub_7653A0();
  v69[3] = v49;
  v69[4] = sub_104BAC(&qword_947D00, 255, &type metadata accessor for Feature.iOS);
  v50 = sub_B1B4(v69);
  (*(*(v49 - 8) + 104))(v50, enum case for Feature.iOS.arcade_hero_video_page_timer(_:), v49);
  LOBYTE(v49) = sub_765C30();
  sub_BEB8(v69);
  v51 = OBJC_IVAR____TtC18ASMessagesProvider30HeroCarouselItemBackgroundView_mediaViewContainer;
  if (v49)
  {
    v52 = *(*(*&v38[OBJC_IVAR____TtC18ASMessagesProvider30HeroCarouselItemBackgroundView_mediaViewContainer] + OBJC_IVAR____TtC18ASMessagesProvider9MediaView_contentContainer) + OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_contents);
    if (v52)
    {
      type metadata accessor for VideoView();
      if (swift_dynamicCastClass())
      {
        v53 = v52;
        sub_52D00();

        v51 = OBJC_IVAR____TtC18ASMessagesProvider30HeroCarouselItemBackgroundView_mediaViewContainer;
      }
    }
  }

  v54 = *&v38[v51];
  v55 = sub_75BBC0();
  if (!v55)
  {
    v55 = [objc_opt_self() systemBackgroundColor];
  }

  v56 = v55;
  v57 = type metadata accessor for MediaView();
  v68.receiver = v54;
  v68.super_class = v57;
  objc_msgSendSuper2(&v68, "setBackgroundColor:", v56);
  [*(*&v54[OBJC_IVAR____TtC18ASMessagesProvider9MediaView_contentContainer] + OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_contents) setBackgroundColor:v56];
  v58 = *&v54[OBJC_IVAR____TtC18ASMessagesProvider9MediaView_reflectionView];
  if (v58)
  {
    v59 = v58;
    [v59 setBackgroundColor:v56];
  }

  [v38 setNeedsLayout];
  return [v38 layoutIfNeeded];
}

void sub_1041F0(uint64_t a1, uint64_t a2)
{
  v3 = sub_7652D0();
  __chkstk_darwin(v3 - 8);
  v4 = sub_BD88(&unk_948720);
  __chkstk_darwin(v4 - 8);
  v6 = v31 - v5;
  v7 = sub_75DC30();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_766690();
  v32 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_75BBE0();
  if (v14)
  {
    v15 = *(*(*(v33 + OBJC_IVAR____TtC18ASMessagesProvider30HeroCarouselItemBackgroundView_mediaViewContainer) + OBJC_IVAR____TtC18ASMessagesProvider9MediaView_contentContainer) + OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_contents);
    if (v15 && (v31[4] = v14, v31[3] = type metadata accessor for VideoView(), (v16 = swift_dynamicCastClass()) != 0))
    {
      v31[0] = v13;
      v31[2] = a2;
      v17 = qword_99A200;
      v18 = v11;
      v19 = v16;
      swift_beginAccess();
      v20 = *(v8 + 16);
      v31[1] = v19;
      v21 = v19 + v17;
      v22 = v18;
      v20(v10, v21, v7);
      v23 = v15;
      sub_75DB80();
      (*(v8 + 8))(v10, v7);
      v24 = v32;
      if ((*(v32 + 48))(v6, 1, v22) != 1)
      {
        v30 = v31[0];
        (*(v24 + 32))(v31[0], v6, v22);
        sub_766600();
        sub_764BC0();
        sub_765330();

        sub_104BAC(&unk_93F530, 255, type metadata accessor for VideoView);
        sub_75A050();

        (*(v24 + 8))(v30, v22);
        return;
      }

      sub_10A2C(v6, &unk_948720);
    }

    else
    {
    }
  }

  if (sub_75BBF0())
  {
    sub_765330();
    v25 = OBJC_IVAR____TtC18ASMessagesProvider30HeroCarouselItemBackgroundView_artworkView;
    v26 = v33;
    v27 = *(v33 + OBJC_IVAR____TtC18ASMessagesProvider30HeroCarouselItemBackgroundView_artworkView);
    sub_7652E0();
    sub_7591B0();
    [v27 setContentMode:sub_765140()];
    sub_75DEF0();
    sub_7591F0();
    if (!sub_7651A0())
    {
      sub_BE70(0, &qword_93E540);
      sub_76A030();
    }

    sub_759070();

    [*(v26 + v25) setContentMode:2];
    v28 = *(v26 + v25);
    sub_759210();
    sub_104BAC(&qword_945810, 255, &type metadata accessor for ArtworkView);
    v29 = v28;
    sub_75A050();
  }
}

id sub_104748()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HeroCarouselItemBackgroundView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1047EC()
{
  v1 = *(*(*(v0 + OBJC_IVAR____TtC18ASMessagesProvider30HeroCarouselItemBackgroundView_mediaViewContainer) + OBJC_IVAR____TtC18ASMessagesProvider9MediaView_contentContainer) + OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_contents);
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

uint64_t (*sub_104860(uint64_t **a1))()
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
  v2[4] = sub_10352C(v2);
  return sub_21028;
}

uint64_t sub_1048D0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.getter(a1, WitnessTable);
}

uint64_t sub_104924(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.setter(a1, a2, a3, WitnessTable);
}

uint64_t (*sub_104990(uint64_t *a1))()
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

uint64_t sub_104A2C(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider30HeroCarouselItemBackgroundView_mediaViewContainer);
  v3 = [a1 superview];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider9MediaView_contentContainer);
  sub_BE70(0, &qword_93E550);
  v6 = v5;
  v7 = sub_76A1C0();

  return v7 & 1;
}

uint64_t sub_104BAC(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

void sub_104BF4()
{
  v1 = type metadata accessor for MediaView();
  v2 = objc_allocWithZone(v1);
  *&v2[OBJC_IVAR____TtC18ASMessagesProvider9MediaView_reflectionView] = 0;
  *&v2[OBJC_IVAR____TtC18ASMessagesProvider9MediaView_reflectionAmount] = 0;
  v2[OBJC_IVAR____TtC18ASMessagesProvider9MediaView_isRubberbanding] = 0;
  *&v2[OBJC_IVAR____TtC18ASMessagesProvider9MediaView_reflectionScale] = 0x3FF0000000000000;
  *&v2[OBJC_IVAR____TtC18ASMessagesProvider9MediaView_reflectionOffset] = 0;
  v3 = type metadata accessor for UberContentContainer();
  v4 = objc_allocWithZone(v3);
  *&v4[OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_contents] = 0;
  *&v4[OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_parallaxY] = 0;
  v5 = &v4[OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_prominentPlayButtonCenterYOverride];
  *v5 = 0;
  v5[8] = 1;
  v6 = &v4[OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_systemBackgroundExtensionOutsets];
  *v6 = 0u;
  *(v6 + 1) = 0u;
  v6[32] = 1;
  *&v4[OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_backgroundExtensionView] = 0;
  v13.receiver = v4;
  v13.super_class = v3;
  v7 = objc_msgSendSuper2(&v13, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v8 = v7;
  if (*&v7[OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_backgroundExtensionView])
  {
    [v7 addSubview:?];
  }

  v9 = OBJC_IVAR____TtC18ASMessagesProvider30HeroCarouselItemBackgroundView_mediaViewContainer;
  *&v2[OBJC_IVAR____TtC18ASMessagesProvider9MediaView_contentContainer] = v8;
  v12.receiver = v2;
  v12.super_class = v1;
  v10 = objc_msgSendSuper2(&v12, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v10 setClipsToBounds:1];
  [v10 addSubview:*&v10[OBJC_IVAR____TtC18ASMessagesProvider9MediaView_contentContainer]];

  *(v0 + v9) = v10;
  v11 = OBJC_IVAR____TtC18ASMessagesProvider30HeroCarouselItemBackgroundView_artworkView;
  sub_759210();
  *(v0 + v11) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  sub_76A840();
  __break(1u);
}

double sub_104E44()
{
  v0 = sub_7656C0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_758770();
  sub_104FE8(&qword_945188, &type metadata accessor for AppShowcase);
  sub_75C750();
  v4 = v10;
  if (!v10)
  {
    return 0.0;
  }

  v5 = sub_527DE4();
  swift_getKeyPath();
  sub_75C7B0();

  sub_765630();
  (*(v1 + 8))(v3, v0);
  sub_4309AC(v4, v5);
  v7 = v6;

  swift_unknownObjectRelease();
  return v7;
}

uint64_t sub_104FE8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_105034()
{
  sub_BE70(0, &qword_93E540);
  result = sub_76A070();
  qword_99AF48 = result;
  return result;
}

char *sub_105078(double a1, double a2, double a3, double a4)
{
  v9 = sub_757CA0();
  __chkstk_darwin(v9 - 8);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC18ASMessagesProvider33CondensedInAppPurchaseContentView_headerLabel;
  sub_75BB20();
  *&v4[v12] = sub_75BB00();
  v13 = OBJC_IVAR____TtC18ASMessagesProvider33CondensedInAppPurchaseContentView_titleLabel;
  *&v4[v13] = sub_75BB00();
  v14 = OBJC_IVAR____TtC18ASMessagesProvider33CondensedInAppPurchaseContentView_subtitleLabel;
  *&v4[v14] = sub_75BB00();
  v15 = OBJC_IVAR____TtC18ASMessagesProvider33CondensedInAppPurchaseContentView_offerButton;
  v16 = objc_allocWithZone(type metadata accessor for OfferButton());
  *&v4[v15] = sub_1DD00C(0);
  v17 = OBJC_IVAR____TtC18ASMessagesProvider33CondensedInAppPurchaseContentView_inAppPurchaseView;
  sub_757C20();
  v18 = objc_allocWithZone(type metadata accessor for InAppPurchaseView());
  *&v4[v17] = sub_243D30(v11, 1);
  _s18ASMessagesProvider33CondensedInAppPurchaseContentViewC7metrics0E8StoreKit0c6SearchdeF10CardLayoutV7MetricsVvpfi_0();
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider33CondensedInAppPurchaseContentView_tileOffset] = 0;
  v19 = type metadata accessor for CondensedInAppPurchaseContentView();
  v37.receiver = v4;
  v37.super_class = v19;
  v20 = objc_msgSendSuper2(&v37, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v24 = v20;
  [v24 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v25 = OBJC_IVAR____TtC18ASMessagesProvider33CondensedInAppPurchaseContentView_headerLabel;
  [v24 addSubview:*&v24[OBJC_IVAR____TtC18ASMessagesProvider33CondensedInAppPurchaseContentView_headerLabel]];
  v26 = OBJC_IVAR____TtC18ASMessagesProvider33CondensedInAppPurchaseContentView_titleLabel;
  [v24 addSubview:*&v24[OBJC_IVAR____TtC18ASMessagesProvider33CondensedInAppPurchaseContentView_titleLabel]];
  v27 = OBJC_IVAR____TtC18ASMessagesProvider33CondensedInAppPurchaseContentView_subtitleLabel;
  [v24 addSubview:*&v24[OBJC_IVAR____TtC18ASMessagesProvider33CondensedInAppPurchaseContentView_subtitleLabel]];
  [v24 addSubview:*&v24[OBJC_IVAR____TtC18ASMessagesProvider33CondensedInAppPurchaseContentView_offerButton]];
  [v24 addSubview:*&v24[OBJC_IVAR____TtC18ASMessagesProvider33CondensedInAppPurchaseContentView_inAppPurchaseView]];
  v28 = *&v24[v25];
  v29 = [v24 tintColor];
  [v28 setTextColor:v29];

  [*&v24[v25] setNumberOfLines:1];
  [*&v24[v26] setNumberOfLines:1];
  v30 = *&v24[v26];
  v31 = objc_opt_self();
  v32 = v30;
  v33 = [v31 labelColor];
  [v32 setTextColor:v33];

  v34 = *&v24[v27];
  v35 = [v31 secondaryLabelColor];
  [v34 setTextColor:v35];

  sub_10777C();
  return v24;
}

Swift::Void __swiftcall CondensedInAppPurchaseContentView.layoutSubviews()()
{
  v1 = v0;
  v191 = sub_7670F0();
  v189 = *(v191 - 8);
  __chkstk_darwin(v191);
  v190 = (v176 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v3);
  v188 = v176 - v4;
  v5 = sub_767120();
  v193 = *(v5 - 8);
  __chkstk_darwin(v5);
  v192 = v176 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v206 = sub_7664F0();
  v204 = *(v206 - 8);
  __chkstk_darwin(v206);
  v203 = v176 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v224 = sub_766E60();
  v228 = *(v224 - 8);
  __chkstk_darwin(v224);
  v199 = v176 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v222 = sub_766E50();
  v227 = *(v222 - 8);
  __chkstk_darwin(v222);
  v198 = v176 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v223 = sub_766E00();
  v229 = *(v223 - 8);
  __chkstk_darwin(v223);
  v197 = v176 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v200 = sub_766EA0();
  v205 = *(v200 - 8);
  __chkstk_darwin(v200);
  v187 = v176 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v186 = v176 - v13;
  v14 = sub_7579E0();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v176 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v226 = v176 - v19;
  v20 = type metadata accessor for CondensedInAppPurchaseContentView();
  v257.receiver = v0;
  v257.super_class = v20;
  objc_msgSendSuper2(&v257, "layoutSubviews");
  sub_75D650();
  v21 = [v0 traitCollection];
  v22 = sub_769A00();

  (*(v15 + 16))(v17, &v1[OBJC_IVAR____TtC18ASMessagesProvider33CondensedInAppPurchaseContentView_metrics], v14);
  v225 = v1;
  v202 = v14;
  if (v22)
  {
    sub_757990();
    v23 = *(v15 + 8);
    v201 = v15 + 8;
    v190 = v23;
    v23(v17, v14);
    v24 = *&v225[OBJC_IVAR____TtC18ASMessagesProvider33CondensedInAppPurchaseContentView_inAppPurchaseView];
    v253 = type metadata accessor for InAppPurchaseView();
    v254 = &protocol witness table for UIView;
    v252[0] = v24;
    v25 = *&v225[OBJC_IVAR____TtC18ASMessagesProvider33CondensedInAppPurchaseContentView_headerLabel];
    v26 = sub_75BB20();
    v251 = &protocol witness table for UILabel;
    v250 = v26;
    v249[0] = v25;
    v27 = *&v225[OBJC_IVAR____TtC18ASMessagesProvider33CondensedInAppPurchaseContentView_titleLabel];
    v248 = &protocol witness table for UILabel;
    v247 = v26;
    v246[0] = v27;
    v28 = *&v225[OBJC_IVAR____TtC18ASMessagesProvider33CondensedInAppPurchaseContentView_subtitleLabel];
    v245 = &protocol witness table for UILabel;
    v244 = v26;
    v243[0] = v28;
    v29 = *&v225[OBJC_IVAR____TtC18ASMessagesProvider33CondensedInAppPurchaseContentView_offerButton];
    v30 = type metadata accessor for OfferButton();
    v242 = &protocol witness table for UIView;
    v241 = v30;
    v240[0] = v29;
    sub_BD88(&qword_93F458);
    v31 = *(sub_766E90() - 8);
    v193 = *(v31 + 72);
    v32 = (*(v31 + 80) + 32) & ~*(v31 + 80);
    v188 = (4 * v193);
    v33 = swift_allocObject();
    v189 = v33;
    *(v33 + 16) = xmmword_784250;
    *&v221 = v33 + v32;
    v187 = v24;
    v34 = v25;
    v35 = v27;
    v36 = v28;
    v37 = v29;
    sub_7578E0();
    *(&v238 + 1) = &type metadata for CGFloat;
    v239 = &protocol witness table for CGFloat;
    *&v237 = v38;
    sub_7579A0();
    LODWORD(v185) = enum case for VerticalFlowLayout.VerticalPlacement.top(_:);
    v194 = v229[13];
    v196 = (v229 + 13);
    v39 = v197;
    (v194)(v197);
    v209 = sub_BD88(&unk_960ED0);
    v40 = v227;
    v41 = *(v227 + 72);
    v195 = *(v227 + 80);
    v42 = (v195 + 32) & ~v195;
    v207 = 3 * v41;
    v219 = v41;
    v220 = 2 * v41;
    v43 = swift_allocObject();
    v218 = xmmword_77DC20;
    *(v43 + 16) = xmmword_77DC20;
    sub_766E40();
    sub_766E20();
    sub_766E30();
    *&v231 = v43;
    *&v217 = sub_1080DC(&qword_93F448, &type metadata accessor for VerticalFlowLayout.ExclusionCondition);
    v216 = sub_BD88(&unk_960EE0);
    v215 = sub_1EDC8();
    v44 = v198;
    v45 = v222;
    sub_76A5A0();
    LODWORD(v214) = enum case for VerticalFlowLayout.HorizontalPlacement.leading(_:);
    v46 = v228;
    v47 = *(v228 + 104);
    v212 = (v228 + 104);
    v213 = v47;
    v48 = v199;
    v49 = v224;
    v47(v199);
    sub_766E80();
    v208 = *(v46 + 8);
    v228 = v46 + 8;
    v208(v48, v49);
    v50 = *(v40 + 8);
    v227 = v40 + 8;
    v211 = v50;
    v50(v44, v45);
    v51 = v229[1];
    ++v229;
    v210 = v51;
    v52 = v223;
    v51(v39, v223);
    sub_34630(&v234);
    sub_BEB8(&v237);
    v53 = v250;
    v54 = v251;
    v55 = sub_B170(v249, v250);
    *(&v238 + 1) = v53;
    v239 = v54[1];
    v56 = sub_B1B4(&v237);
    (*(*(v53 - 8) + 16))(v56, v55, v53);
    sub_757940();
    v233 = 0;
    v231 = 0u;
    v232 = 0u;
    LODWORD(v192) = enum case for VerticalFlowLayout.VerticalPlacement.firstBaseline(_:);
    v57 = v194;
    (v194)(v39);
    v191 = v42;
    v58 = swift_allocObject();
    *(v58 + 16) = v218;
    sub_766E40();
    sub_766E20();
    sub_766E30();
    v230[0] = v58;
    v59 = v222;
    sub_76A5A0();
    v213(v48, v214, v49);
    v60 = v193;
    sub_766E80();
    v208(v48, v49);
    v211(v44, v59);
    v210(v39, v52);
    sub_34630(&v231);
    sub_BEB8(&v234);
    sub_BEB8(&v237);
    v184 = (2 * v60);
    v61 = v247;
    v62 = v248;
    v63 = sub_B170(v246, v247);
    *(&v238 + 1) = v61;
    v239 = v62[1];
    v64 = sub_B1B4(&v237);
    (*(*(v61 - 8) + 16))(v64, v63, v61);
    sub_757930();
    v233 = 0;
    v231 = 0u;
    v232 = 0u;
    (v57)(v39, v192, v52);
    v65 = swift_allocObject();
    *(v65 + 16) = v218;
    sub_766E40();
    sub_766E20();
    sub_766E30();
    v230[0] = v65;
    v66 = v222;
    sub_76A5A0();
    v67 = v224;
    v213(v48, v214, v224);
    v68 = v184;
    sub_766E80();
    v208(v48, v67);
    v211(v44, v66);
    v69 = v39;
    v70 = v39;
    v71 = v223;
    v210(v69, v223);
    sub_34630(&v231);
    sub_BEB8(&v234);
    sub_BEB8(&v237);
    v193 += v68;
    v72 = v244;
    v73 = v245;
    v74 = sub_B170(v243, v244);
    *(&v238 + 1) = v72;
    v239 = v73[1];
    v75 = sub_B1B4(&v237);
    (*(*(v72 - 8) + 16))(v75, v74, v72);
    sub_757950();
    v233 = 0;
    v231 = 0u;
    v232 = 0u;
    v76 = v71;
    (v194)(v70, v192, v71);
    v77 = swift_allocObject();
    *(v77 + 16) = v218;
    sub_766E40();
    sub_766E20();
    sub_766E30();
    v230[0] = v77;
    v78 = v222;
    sub_76A5A0();
    v79 = v224;
    v213(v48, v214, v224);
    sub_766E80();
    v208(v48, v79);
    v211(v44, v78);
    v210(v70, v76);
    sub_34630(&v231);
    sub_BEB8(&v234);
    sub_BEB8(&v237);
    sub_7579A0();
    v236 = 0;
    v234 = 0u;
    v235 = 0u;
    (v194)(v70, v185, v76);
    v80 = swift_allocObject();
    *(v80 + 16) = v218;
    sub_766E40();
    sub_766E20();
    sub_766E30();
    *&v231 = v80;
    sub_76A5A0();
    v213(v48, v214, v79);
    sub_766E80();
    v81 = v48;
    v82 = v225;
    v83 = v187;
    v208(v81, v79);
    v211(v44, v78);
    v210(v70, v76);
    sub_34630(&v234);
    sub_BEB8(&v237);
    v84 = v186;
    sub_766E70();
    sub_BEB8(v240);
    sub_BEB8(v243);
    sub_BEB8(v246);
    sub_BEB8(v249);
    sub_BEB8(v252);
    v85 = v203;
    v86 = v200;
    sub_7672C0();
    (*(v204 + 8))(v85, v206);
    [v83 frame];
    v88 = v87;
    v90 = v89;
    v92 = v91;
    v94 = v93;
    v95 = [v82 traitCollection];
    LOBYTE(v85) = sub_7699F0();

    sub_757900();
    sub_B170(v252, v253);
    v96 = [v82 traitCollection];
    sub_766710();
    v98 = v97;

    if (v85)
    {
      sub_BEB8(v252);
      v99 = v88 - v98;
    }

    else
    {
      v99 = v88 + v98;
      sub_BEB8(v252);
    }

    v175 = v205;
    [v83 setFrame:{v99, v90 + 0.0, v92, v94}];
    v190(v226, v202);
    (*(v175 + 8))(v84, v86);
  }

  else
  {
    v100 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider33CondensedInAppPurchaseContentView_inAppPurchaseView];
    v255 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider33CondensedInAppPurchaseContentView_headerLabel];
    v101 = v255;
    v256 = v100;
    v102 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider33CondensedInAppPurchaseContentView_titleLabel];
    v253 = sub_75BB20();
    v254 = &protocol witness table for UILabel;
    v252[0] = v102;
    v201 = v15;
    v103 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider33CondensedInAppPurchaseContentView_subtitleLabel];
    v251 = &protocol witness table for UILabel;
    v250 = v253;
    v249[0] = v103;
    v182 = v5;
    v104 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider33CondensedInAppPurchaseContentView_offerButton];
    v105 = type metadata accessor for OfferButton();
    v248 = &protocol witness table for UIView;
    v247 = v105;
    v246[0] = v104;
    v181 = v100;
    v180 = v101;
    v106 = v102;
    v107 = v103;
    v108 = v104;
    v109 = [v1 traitCollection];
    sub_757920();
    sub_B170(v243, v244);
    sub_766710();
    v194 = v17;
    sub_7578E0();
    v178 = sub_7671D0();
    v179 = sub_BD88(&unk_93F5C0);
    v110 = swift_allocObject();
    v221 = xmmword_77D9F0;
    *(v110 + 16) = xmmword_77D9F0;
    *(v110 + 32) = v109;
    v177 = v109;
    v111 = sub_7671E0();
    sub_765C20();

    sub_BEB8(v243);
    sub_BD88(&qword_93F458);
    v112 = *(sub_766E90() - 8);
    v185 = *(v112 + 72);
    v113 = (*(v112 + 80) + 32) & ~*(v112 + 80);
    v114 = swift_allocObject();
    v176[1] = v114;
    *(v114 + 16) = xmmword_782440;
    v226 = (v114 + v113);
    sub_766560();
    sub_757940();
    v239 = 0;
    v237 = 0u;
    v238 = 0u;
    LODWORD(v186) = enum case for VerticalFlowLayout.VerticalPlacement.firstBaseline(_:);
    v115 = v229;
    v116 = v229[13];
    v184 = (v229 + 13);
    v195 = v116;
    v117 = v197;
    v118 = v223;
    v116(v197);
    v196 = sub_BD88(&unk_960ED0);
    v119 = v227;
    v120 = *(v227 + 72);
    v121 = *(v227 + 80);
    v207 = 3 * v120;
    v219 = 2 * v120;
    v220 = v121;
    *&v218 = v120;
    v183 = (v121 + 32) & ~v121;
    v122 = swift_allocObject();
    v217 = xmmword_77DC20;
    *(v122 + 16) = xmmword_77DC20;
    sub_766E40();
    sub_766E20();
    sub_766E30();
    *&v234 = v122;
    v215 = sub_1080DC(&qword_93F448, &type metadata accessor for VerticalFlowLayout.ExclusionCondition);
    v214 = sub_BD88(&unk_960EE0);
    v216 = sub_1EDC8();
    v123 = v198;
    v124 = v222;
    sub_76A5A0();
    LODWORD(v213) = enum case for VerticalFlowLayout.HorizontalPlacement.leading(_:);
    v125 = v118;
    v126 = v228;
    v127 = *(v228 + 104);
    v211 = (v228 + 104);
    v212 = v127;
    v128 = v199;
    v129 = v224;
    v127(v199);
    sub_766E80();
    v130 = *(v126 + 8);
    v228 = v126 + 8;
    v210 = v130;
    v130(v128, v129);
    v131 = *(v119 + 8);
    v227 = v119 + 8;
    v209 = v131;
    v132 = v124;
    v131(v123, v124);
    v133 = v115[1];
    v229 = v115 + 1;
    v208 = v133;
    v133(v117, v125);
    sub_34630(&v237);
    sub_BEB8(v240);
    sub_BEB8(v243);
    v134 = v253;
    v135 = v254;
    v136 = sub_B170(v252, v253);
    v244 = v134;
    v245 = v135[1];
    v137 = sub_B1B4(v243);
    (*(*(v134 - 8) + 16))(v137, v136, v134);
    sub_757930();
    v239 = 0;
    v237 = 0u;
    v238 = 0u;
    v138 = v125;
    (v195)(v117, v186, v125);
    v139 = swift_allocObject();
    *(v139 + 16) = v217;
    sub_766E40();
    sub_766E20();
    sub_766E30();
    *&v234 = v139;
    sub_76A5A0();
    v140 = v224;
    v212(v128, v213, v224);
    v141 = v185;
    sub_766E80();
    v210(v128, v140);
    v209(v123, v132);
    v142 = v117;
    v143 = v117;
    v144 = v138;
    v208(v142, v138);
    sub_34630(&v237);
    sub_BEB8(v240);
    sub_BEB8(v243);
    v176[0] = 2 * v141;
    v145 = v250;
    v146 = v251;
    v147 = sub_B170(v249, v250);
    v244 = v145;
    v245 = v146[1];
    v148 = sub_B1B4(v243);
    (*(*(v145 - 8) + 16))(v148, v147, v145);
    sub_757950();
    v239 = 0;
    v237 = 0u;
    v238 = 0u;
    (v195)(v143, v186, v144);
    v149 = swift_allocObject();
    *(v149 + 16) = v217;
    sub_766E40();
    sub_766E20();
    sub_766E30();
    *&v234 = v149;
    sub_76A5A0();
    v150 = v224;
    v212(v128, v213, v224);
    v151 = v176[0];
    sub_766E80();
    v210(v128, v150);
    v209(v123, v132);
    v152 = v223;
    v208(v143, v223);
    sub_34630(&v237);
    sub_BEB8(v240);
    sub_BEB8(v243);
    v186 = (v151 + v185);
    sub_757980();
    sub_7578E0();
    v241 = &type metadata for CGFloat;
    v242 = &protocol witness table for CGFloat;
    v240[0] = v153;
    (v195)(v143, enum case for VerticalFlowLayout.VerticalPlacement.top(_:), v152);
    v154 = swift_allocObject();
    *(v154 + 16) = v217;
    sub_766E40();
    sub_766E20();
    sub_766E30();
    *&v237 = v154;
    sub_76A5A0();
    v155 = v224;
    v212(v128, v213, v224);
    sub_766E80();
    v210(v128, v155);
    v209(v123, v132);
    v208(v143, v152);
    sub_BEB8(v243);
    sub_34630(v240);
    v156 = v187;
    sub_766E70();
    sub_7578E0();
    v157 = swift_allocObject();
    *(v157 + 16) = v221;
    v158 = v177;
    *(v157 + 32) = v177;
    v159 = v158;
    v160 = sub_7671E0();
    sub_765C20();

    sub_7578E0();
    v161 = swift_allocObject();
    *(v161 + 16) = v221;
    *(v161 + 32) = v159;
    v162 = v159;
    v163 = sub_7671E0();
    sub_765C20();

    sub_7578E0();
    v164 = swift_allocObject();
    *(v164 + 16) = v221;
    *(v164 + 32) = v162;
    v229 = v162;
    v165 = sub_7671E0();
    sub_765C20();

    sub_7579B0();
    sub_B170(v243, v244);
    sub_766710();
    sub_BEB8(v243);
    type metadata accessor for InAppPurchaseView();
    sub_766560();
    v166 = v200;
    v241 = v200;
    v242 = &protocol witness table for VerticalFlowLayout;
    v167 = sub_B1B4(v240);
    v168 = v205;
    (*(v205 + 16))(v167, v156, v166);
    sub_134D8(v243, &v237);
    v236 = &protocol witness table for Double;
    *(&v235 + 1) = &type metadata for Double;
    *&v234 = 0;
    v233 = 0;
    v231 = 0u;
    v232 = 0u;
    v169 = enum case for FlankedHorizontalLayout.ViewAlignment.center(_:);
    v170 = *(v189 + 104);
    v171 = v191;
    v170(v188, enum case for FlankedHorizontalLayout.ViewAlignment.center(_:), v191);
    v230[3] = sub_766970();
    v230[4] = &protocol witness table for ZeroDimension;
    sub_B1B4(v230);
    sub_766960();
    v170(v190, v169, v171);
    v172 = v192;
    sub_767110();

    sub_BEB8(v243);
    (*(v168 + 8))(v156, v166);
    (*(v201 + 8))(v194, v202);
    sub_BEB8(v246);
    sub_BEB8(v249);
    sub_BEB8(v252);

    v173 = v203;
    v174 = v182;
    sub_7672C0();
    (*(v204 + 8))(v173, v206);
    (*(v193 + 8))(v172, v174);
  }
}

uint64_t type metadata accessor for CondensedInAppPurchaseContentView()
{
  result = qword_9451F8;
  if (!qword_9451F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

Swift::Void __swiftcall CondensedInAppPurchaseContentView.prepareForReuse()()
{
  [*(v0 + OBJC_IVAR____TtC18ASMessagesProvider33CondensedInAppPurchaseContentView_headerLabel) setText:0];
  [*(v0 + OBJC_IVAR____TtC18ASMessagesProvider33CondensedInAppPurchaseContentView_titleLabel) setText:0];
  [*(v0 + OBJC_IVAR____TtC18ASMessagesProvider33CondensedInAppPurchaseContentView_subtitleLabel) setText:0];
  [*(v0 + OBJC_IVAR____TtC18ASMessagesProvider33CondensedInAppPurchaseContentView_offerButton) setHidden:1];
  v1 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider33CondensedInAppPurchaseContentView_inAppPurchaseView);

  [v1 setHidden:1];
}

Swift::Void __swiftcall CondensedInAppPurchaseContentView.traitCollectionDidChange(_:)(UITraitCollection_optional a1)
{
  v2 = v1;
  isa = a1.value.super.isa;
  v4 = sub_7579E0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CondensedInAppPurchaseContentView();
  v27.receiver = v1;
  v27.super_class = v8;
  objc_msgSendSuper2(&v27, "traitCollectionDidChange:", isa);
  if (isa)
  {
    v9 = [(objc_class *)isa preferredContentSizeCategory];
  }

  else
  {
    v9 = 0;
  }

  v10 = &selRef_setTextAlignment_;
  v11 = [v2 traitCollection];
  v12 = [v11 preferredContentSizeCategory];

  v13 = &unk_90D000;
  if (!v9)
  {

LABEL_12:
    sub_10777C();
    [v2 v13[463]];
    goto LABEL_13;
  }

  v14 = sub_769240();
  v16 = v15;
  if (v14 == sub_769240() && v16 == v17)
  {

    v13 = &unk_90D000;
    v10 = &selRef_setTextAlignment_;
    if (isa)
    {
      goto LABEL_14;
    }

LABEL_16:
    v20 = 2;
    goto LABEL_17;
  }

  v19 = sub_76A950();

  v13 = &unk_90D000;
  v10 = &selRef_setTextAlignment_;
  if ((v19 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_13:
  if (!isa)
  {
    goto LABEL_16;
  }

LABEL_14:
  v20 = sub_769A00() & 1;
LABEL_17:
  v21 = [v2 v10[23]];
  v22 = sub_769A00();

  if (v20 == 2 || ((v22 ^ v20) & 1) != 0)
  {
    v23 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider33CondensedInAppPurchaseContentView_subtitleLabel];
    (*(v5 + 16))(v7, &v2[OBJC_IVAR____TtC18ASMessagesProvider33CondensedInAppPurchaseContentView_metrics], v4);
    v24.super.isa = [v2 v10[23]];
    v25 = v24.super.isa;
    v26 = sub_7579C0(v24);

    (*(v5 + 8))(v7, v4);
    [v23 setNumberOfLines:v26];
    [v2 v13[463]];
  }
}

id sub_10777C()
{
  v1 = v0;
  v40 = sub_7666D0();
  v44 = *(v40 - 8);
  __chkstk_darwin(v40);
  v3 = &v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_7579E0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider33CondensedInAppPurchaseContentView_headerLabel];
  v9 = sub_BE70(0, &qword_93F900);
  v39 = OBJC_IVAR____TtC18ASMessagesProvider33CondensedInAppPurchaseContentView_metrics;
  v10 = *(v5 + 16);
  v42 = v9;
  v43 = v5 + 16;
  v37 = v4;
  v10(v7, &v0[OBJC_IVAR____TtC18ASMessagesProvider33CondensedInAppPurchaseContentView_metrics], v4);
  v11 = v10;
  v35 = v10;
  sub_7578F0();
  v38 = *(v5 + 8);
  v36 = v5 + 8;
  v38(v7, v4);
  v12 = [v0 traitCollection];
  v13 = sub_769E10();

  v14 = *(v44 + 8);
  v44 += 8;
  v41 = v14;
  v15 = v40;
  v14(v3, v40);
  [v8 setFont:v13];

  [v8 setLineBreakMode:4];
  v16 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider33CondensedInAppPurchaseContentView_titleLabel];
  v17 = v39;
  v18 = v37;
  v11(v7, &v1[v39], v37);
  sub_7579D0();
  v19 = v18;
  v20 = v38;
  v38(v7, v19);
  v21 = [v1 traitCollection];
  v22 = sub_769E10();

  v41(v3, v15);
  [v16 setFont:v22];

  [v16 setLineBreakMode:4];
  v34 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider33CondensedInAppPurchaseContentView_subtitleLabel];
  v23 = &v1[v17];
  v24 = v37;
  v25 = v35;
  v35(v7, v23, v37);
  sub_757910();
  v20(v7, v24);
  v26 = [v1 traitCollection];
  v27 = sub_769E10();

  v41(v3, v40);
  v28 = v34;
  [v34 setFont:v27];

  v25(v7, &v1[v39], v24);
  v29.super.isa = [v1 traitCollection];
  isa = v29.super.isa;
  v31 = sub_7579C0(v29);

  v38(v7, v24);
  [v28 setNumberOfLines:v31];
  return [v28 setLineBreakMode:4];
}

id CondensedInAppPurchaseContentView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CondensedInAppPurchaseContentView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_107CDC()
{
  sub_757D20();
  sub_1080DC(&qword_945208, &type metadata accessor for InAppPurchaseSearchResult);
  result = sub_75C750();
  if (v3)
  {
    sub_757D10();
    v1 = sub_6AA1DC();

    v2._rawValue = v1;
    sub_75A070(v2);
  }

  return result;
}

uint64_t sub_107DB4(uint64_t a1)
{
  *(a1 + 24) = sub_1080DC(&qword_9451B8, type metadata accessor for CondensedInAppPurchaseContentView);
  result = sub_1080DC(&qword_9451C0, type metadata accessor for CondensedInAppPurchaseContentView);
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_107E88()
{
  result = sub_7579E0();
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

void sub_107F3C()
{
  v1 = sub_757CA0();
  __chkstk_darwin(v1 - 8);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = OBJC_IVAR____TtC18ASMessagesProvider33CondensedInAppPurchaseContentView_headerLabel;
  sub_75BB20();
  *(v0 + v4) = sub_75BB00();
  v5 = OBJC_IVAR____TtC18ASMessagesProvider33CondensedInAppPurchaseContentView_titleLabel;
  *(v0 + v5) = sub_75BB00();
  v6 = OBJC_IVAR____TtC18ASMessagesProvider33CondensedInAppPurchaseContentView_subtitleLabel;
  *(v0 + v6) = sub_75BB00();
  v7 = OBJC_IVAR____TtC18ASMessagesProvider33CondensedInAppPurchaseContentView_offerButton;
  v8 = objc_allocWithZone(type metadata accessor for OfferButton());
  *(v0 + v7) = sub_1DD00C(0);
  v9 = OBJC_IVAR____TtC18ASMessagesProvider33CondensedInAppPurchaseContentView_inAppPurchaseView;
  sub_757C20();
  v10 = objc_allocWithZone(type metadata accessor for InAppPurchaseView());
  *(v0 + v9) = sub_243D30(v3, 1);
  _s18ASMessagesProvider33CondensedInAppPurchaseContentViewC7metrics0E8StoreKit0c6SearchdeF10CardLayoutV7MetricsVvpfi_0();
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider33CondensedInAppPurchaseContentView_tileOffset) = 0;
  sub_76A840();
  __break(1u);
}

uint64_t sub_1080DC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for SearchResultsPageLayoutSectionProvider()
{
  result = qword_945210;
  if (!qword_945210)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_1081B0(uint64_t a1, uint64_t (*a2)(__n128), uint64_t a3, uint64_t a4, void *a5, uint64_t a6, void (*a7)(char *, uint64_t, uint64_t), uint64_t a8, uint64_t a9, void *a10)
{
  v65 = a7;
  v62 = a8;
  v63 = a4;
  v66 = a5;
  v67 = a6;
  v64 = a10;
  v58 = a9;
  v12 = sub_75C840();
  v51 = *(v12 - 8);
  v52 = v12;
  __chkstk_darwin(v12);
  v50 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_764930();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v57 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v49 - v18;
  v20 = sub_BD88(&unk_94F1F0);
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v54 = &v49 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v23);
  v26 = &v49 - v25;
  v27 = a2(v24);
  v28 = a1;
  sub_75DAA0();
  swift_getKeyPath();
  sub_768750();

  v29 = *(v21 + 8);
  v55 = v21 + 8;
  v56 = v20;
  v53 = v29;
  v29(v26, v20);
  v59 = v19;
  v60 = v15;
  v30 = *(v15 + 88);
  v61 = v14;
  v31 = v30(v19, v14);
  if (v31 == enum case for Shelf.ContentType.searchResult(_:) && *(v27 + 16) && (v32 = v50, v33 = v51, v34 = v52, (*(v51 + 16))(v50, v27 + ((*(v33 + 80) + 32) & ~*(v33 + 80)), v52), sub_75DDB0(), sub_109F48(&qword_945260, &type metadata accessor for AdvertsSearchResult), sub_75C750(), (*(v33 + 8))(v32, v34), (v31 = v68) != 0))
  {

    v35 = sub_108814(v28, v27, v63, v66, v67, v65, v62, v58, v64);

    sub_762B80();
    v36 = v60;
    v37 = v61;
  }

  else
  {
    v52 = &v49;
    __chkstk_darwin(v31);
    __chkstk_darwin(v38);
    sub_762BA0();
    v39 = sub_762BB0();
    v40 = v58;
    v41 = v28;
    v51 = v27;
    v42 = v62;
    v50 = v39(v28, sub_60CC8, &v49 - 4, v63, v66, v67, v65, v62, v58, v64);
    v43 = v54;
    sub_75DAA0();
    swift_getKeyPath();
    v45 = v56;
    v44 = v57;
    sub_768750();

    v53(v43, v45);
    v37 = v61;
    v46 = v30(v44, v61);
    if (v46 == enum case for Shelf.ContentType.ribbonBar(_:))
    {
      v35 = sub_CB3B4(v41, v51, v63, v66, v67, v65, v42, v40, v64);

      v36 = v60;
    }

    else
    {
      v35 = v50;
      v36 = v60;
      if (v46 == enum case for Shelf.ContentType.ribbonFlow(_:))
      {
        v47 = sub_CC6F8(v41, v51, v63, v66, v67, v65, v62, v40, v64);

        v35 = v47;
      }

      else if (v46 == enum case for Shelf.ContentType.smallContactCard(_:))
      {
        [v50 setOrthogonalScrollingBehavior:{2, v66, v67}];
      }

      else
      {

        (*(v36 + 8))(v57, v37);
      }
    }
  }

  (*(v36 + 8))(v59, v37);
  return v35;
}

uint64_t sub_108814(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void (*a6)(char *, uint64_t, uint64_t), uint64_t a7, uint64_t a8, void *a9)
{
  v156 = a8;
  v146 = a7;
  v161 = a4;
  *&v157 = a3;
  v147 = a1;
  v165 = a9;
  v152 = sub_764930();
  v151 = *(v152 - 8);
  __chkstk_darwin(v152);
  v155 = v129 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = sub_BD88(&unk_94F1F0);
  v149 = *(v150 - 1);
  __chkstk_darwin(v150);
  v148 = v129 - v13;
  v14 = sub_7656C0();
  v143 = *(v14 - 8);
  __chkstk_darwin(v14);
  v142 = v129 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  i = sub_762E50();
  v16 = *(i - 1);
  __chkstk_darwin(i);
  v154 = v129 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v153 = v129 - v19;
  __chkstk_darwin(v20);
  v160 = v129 - v21;
  __chkstk_darwin(v22);
  v159 = v129 - v23;
  v24 = sub_75C840();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = v129 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __chkstk_darwin(v28);
  v32 = v129 - v30;
  if (!*(a2 + 16))
  {
    goto LABEL_7;
  }

  v139 = *(a2 + 16);
  v138 = v16;
  v33 = *(v25 + 16);
  v34 = a2;
  v140 = (*(v25 + 80) + 32) & ~*(v25 + 80);
  v163 = v33;
  v164 = (v25 + 16);
  (v33)(v129 - v30, a2 + v140, v24, v31);
  v35 = sub_75DDB0();
  sub_109F48(&qword_945260, &type metadata accessor for AdvertsSearchResult);
  v144 = v35;
  sub_75C750();
  v36 = v169;
  if (!v169)
  {
    v29 = (*(v25 + 8))(v32, v24);
    goto LABEL_6;
  }

  v158 = v24;
  v141 = v32;
  if (sub_75DD90())
  {
    (*(v25 + 8))(v141, v158);

LABEL_6:
    a2 = v34;
LABEL_7:
    v145 = a2;
    i = v129;
    __chkstk_darwin(v29);
    __chkstk_darwin(v37);
    sub_762BA0();
    v38 = sub_762BB0();
    v39 = v147;
    v40 = v157;
    v41 = v161;
    v42 = v146;
    v160 = a5;
    v163 = a6;
    v164 = v38(v147, sub_109F90, &v129[-4], v157, v161, a5, a6, v146, v156, v165);
    v43 = v148;
    sub_75DAA0();
    swift_getKeyPath();
    v44 = v155;
    v45 = v150;
    sub_768750();

    (*(v149 + 8))(v43, v45);
    v46 = v151;
    v47 = v152;
    v48 = (*(v151 + 88))(v44, v152);
    if (v48 == enum case for Shelf.ContentType.ribbonBar(_:))
    {
      v49 = sub_CB3B4(v39, v145, v40, v41, v160, v163, v42, v156, v165);
    }

    else
    {
      v50 = v164;
      if (v48 == enum case for Shelf.ContentType.ribbonFlow(_:))
      {
        v49 = sub_CC6F8(v147, v145, v157, v161, v160, v163, v146, v156, v165);
      }

      else if (v48 == enum case for Shelf.ContentType.smallContactCard(_:))
      {
        v49 = v164;
        [v164 setOrthogonalScrollingBehavior:2];
      }

      else
      {
        (*(v46 + 8))(v155, v47);
        return v50;
      }
    }

    return v49;
  }

  v135 = v36;
  v137 = v14;
  v51 = sub_759F50();
  v161 = sub_109F48(&unk_945268, &type metadata accessor for SearchResult);
  v162 = v51;
  sub_75C750();
  v136 = v25;
  v155 = v27;
  if (v169)
  {
    if (sub_102258())
    {
      sub_75EAF0();
      v53 = v52;
    }

    else
    {

      v53 = 0.0;
    }
  }

  else
  {
    v53 = 0.0;
  }

  v55 = objc_opt_self();
  v56 = [v55 fractionalWidthDimension:1.0];
  v132 = v55;
  v57 = [v55 absoluteDimension:v53];
  v131 = objc_opt_self();
  v58 = [v131 sizeWithWidthDimension:v56 heightDimension:v57];

  swift_getObjectType();
  v59 = v58;
  sub_761510();
  sub_BE70(0, &unk_956250);
  isa = sub_769450().super.isa;

  v61 = [objc_opt_self() itemWithLayoutSize:v59 supplementaryItems:isa];

  v62 = objc_opt_self();
  sub_BD88(&unk_93F5C0);
  v63 = swift_allocObject();
  v157 = xmmword_77D9F0;
  *(v63 + 16) = xmmword_77D9F0;
  *(v63 + 32) = v61;
  v64 = sub_BE70(0, &qword_957F90);
  v133 = v61;
  v129[2] = v64;
  v65 = sub_769450().super.isa;

  v130 = v62;
  v134 = v59;
  v66 = [v62 horizontalGroupWithLayoutSize:v59 subitems:v65];

  v67 = swift_allocObject();
  *(v67 + 16) = v157;
  *(v67 + 32) = v66;
  v172 = v67;
  v68 = v140;
  sub_4A63A8(v34, v34 + v140, 1, (2 * v139) | 1);
  v70 = v69;
  v71 = *(v69 + 16);
  v139 = v66;
  if (v71)
  {
    v171 = _swiftEmptyArrayStorage;
    sub_143C5C(0, v71, 0);
    v129[1] = v70;
    v72 = v70 + v68;
    v151 = v138 + 104;
    v150 = (v138 + 8);
    v73 = v171;
    v74 = (v136 + 8);
    v75 = *(v136 + 72);
    LODWORD(v148) = enum case for SearchResultCondensedBehavior.always(_:);
    v76 = v155;
    v77 = v158;
    v149 = v75;
    do
    {
      v163(v76, v72, v77);
      sub_75C750();
      v78 = v169;
      if (!v169)
      {
        goto LABEL_55;
      }

      v152 = sub_75F330();
      if (swift_dynamicCastClass())
      {
        *&v157 = v78;
        v79 = v74;
        sub_759F40();
        (*v151)(v160, v148, i);
        sub_109F48(&qword_945068, &type metadata accessor for SearchResultCondensedBehavior);
        sub_769430();
        sub_769430();
        if (v169 == v167 && v170 == v168)
        {
          v80 = *v150;
          v81 = i;
          (*v150)(v160, i);
          v80(v159, v81);

          v76 = v155;
          v74 = v79;
          v75 = v149;
LABEL_28:
          type metadata accessor for CondensedEditorialSearchResultContentView();
          v85 = type metadata accessor for CondensedEditorialSearchResultContentView;
          v86 = &unk_945078;
          goto LABEL_37;
        }

        v82 = sub_76A950();
        v83 = *v150;
        v84 = i;
        (*v150)(v160, i);
        v83(v159, v84);

        v76 = v155;
        v75 = v149;
        if (v82)
        {
          goto LABEL_28;
        }
      }

      v87 = sub_757D20();
      if (swift_dynamicCastClass())
      {
        *&v157 = v87;
        sub_759F40();
        (*v151)(v154, v148, i);
        sub_109F48(&qword_945068, &type metadata accessor for SearchResultCondensedBehavior);
        sub_769430();
        sub_769430();
        if (v169 == v167 && v170 == v168)
        {
          v88 = *v150;
          v89 = i;
          (*v150)(v154, i);
          v88(v153, v89);

          v76 = v155;
          v75 = v149;
LABEL_34:
          type metadata accessor for CondensedInAppPurchaseContentView();
          v85 = type metadata accessor for CondensedInAppPurchaseContentView;
          v86 = &unk_945070;
LABEL_37:
          sub_109F48(v86, v85);
          v77 = v158;
          goto LABEL_38;
        }

        LODWORD(v145) = sub_76A950();
        v90 = *v150;
        v91 = i;
        (*v150)(v154, i);
        v90(v153, v91);

        v76 = v155;
        v75 = v149;
        if (v145)
        {
          goto LABEL_34;
        }
      }

      if (swift_dynamicCastClass())
      {
        type metadata accessor for AdvertsSearchResultContentView();
        v85 = type metadata accessor for AdvertsSearchResultContentView;
        v86 = &unk_945060;
        goto LABEL_37;
      }

      sub_75D360();
      if (swift_dynamicCastClass())
      {
        type metadata accessor for BundleSearchResultContentView();
        v85 = type metadata accessor for BundleSearchResultContentView;
        v86 = &unk_945058;
        goto LABEL_37;
      }

      sub_7581C0();
      if (swift_dynamicCastClass())
      {
        type metadata accessor for AppSearchResultContentView();
        v85 = type metadata accessor for AppSearchResultContentView;
        v86 = &unk_945050;
        goto LABEL_37;
      }

      if (swift_dynamicCastClass())
      {
        type metadata accessor for EditorialSearchResultContentView();
        v85 = type metadata accessor for EditorialSearchResultContentView;
        v86 = &unk_945048;
        goto LABEL_37;
      }

      v94 = swift_dynamicCastClass();
      v77 = v158;
      if (v94)
      {
        type metadata accessor for InAppPurchaseSearchResultContentView();
        v95 = type metadata accessor for InAppPurchaseSearchResultContentView;
        v96 = &unk_945040;
      }

      else
      {
        sub_762810();
        if (swift_dynamicCastClass())
        {
          type metadata accessor for LockupCollectionSearchResultContentView();
          v95 = type metadata accessor for LockupCollectionSearchResultContentView;
          v96 = &unk_945038;
        }

        else
        {
          sub_7583C0();
          if (swift_dynamicCastClass())
          {
            type metadata accessor for AppEventSearchResultContentView();
            v95 = type metadata accessor for AppEventSearchResultContentView;
            v96 = &unk_945030;
          }

          else
          {
            sub_75D570();
            if (!swift_dynamicCastClass())
            {

LABEL_55:
              (*v74)(v76, v77);
              v93 = 0;
              goto LABEL_56;
            }

            type metadata accessor for GuidedSearchResultContentView();
            v95 = type metadata accessor for GuidedSearchResultContentView;
            v96 = &unk_945028;
          }
        }
      }

      sub_109F48(v96, v95);
LABEL_38:
      sub_75EAF0();
      v93 = v92;

      (*v74)(v76, v77);
LABEL_56:
      v171 = v73;
      v98 = v73[2];
      v97 = v73[3];
      if (v98 >= v97 >> 1)
      {
        sub_143C5C((v97 > 1), v98 + 1, 1);
        v73 = v171;
      }

      v73[2] = v98 + 1;
      v73[v98 + 4] = v93;
      v72 += v75;
      --v71;
    }

    while (v71);
  }

  v99 = sub_75F950();

  sub_10A4BC(v99);
  v100 = v172;
  v101 = v172 >> 62;
  if (v172 >> 62)
  {
    goto LABEL_71;
  }

  v102 = *(&dword_10 + (v172 & 0xFFFFFFFFFFFFFF8));
  for (i = 0; v102; i = v101)
  {
    v101 = 0;
    v103 = 0.0;
    while (1)
    {
      if ((v100 & 0xC000000000000001) != 0)
      {
        v104 = sub_76A770();
      }

      else
      {
        if (v101 >= *(&dword_10 + (v100 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_70;
        }

        v104 = *(v100 + 8 * v101 + 32);
      }

      v105 = v104;
      v106 = (v101 + 1);
      if (__OFADD__(v101, 1))
      {
        break;
      }

      v107 = [v104 layoutSize];
      v108 = [v107 heightDimension];

      [v108 dimension];
      v110 = v109;

      v103 = v103 + v110;
      ++v101;
      if (v106 == v102)
      {
        goto LABEL_73;
      }
    }

    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    v102 = sub_76A860();
  }

  v103 = 0.0;
LABEL_73:
  v111 = i;
  if (i)
  {
    result = sub_76A860();
  }

  else
  {
    result = *(&dword_10 + (v100 & 0xFFFFFFFFFFFFFF8));
  }

  v112 = v137;
  v113 = v143;
  v114 = v142;
  if (!__OFSUB__(result, 1))
  {
    v115 = ((result - 1) & ~((result - 1) >> 63));
    sub_75DA20();
    sub_765570();
    v117 = v116;
    v118 = *(v113 + 8);
    v118(v114, v112);
    v119 = v132;
    v120 = [v132 fractionalWidthDimension:1.0];
    v121 = [v119 absoluteDimension:v103 + v117 * v115];
    v122 = [v131 sizeWithWidthDimension:v120 heightDimension:v121];

    if (v111)
    {
      sub_76A850();
    }

    else
    {
      sub_76A960();
    }

    v123 = sub_769450().super.isa;

    v124 = [v130 verticalGroupWithLayoutSize:v122 subitems:v123];

    v125 = objc_opt_self();
    sub_75DA20();
    sub_765570();
    v127 = v126;
    v118(v114, v137);
    v128 = [v125 fixedSpacing:v127];
    [v124 setInterItemSpacing:v128];

    v49 = [objc_opt_self() sectionWithGroup:v124];

    (*(v136 + 8))(v141, v158);
    return v49;
  }

  __break(1u);
  return result;
}

uint64_t sub_109F48(unint64_t *a1, void (*a2)(uint64_t))
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

void *sub_109F98(void *result)
{
  v2 = result[2];
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_7AADC(result, v10, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_BD88(&qword_941B38);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = v3[2];
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    v3[2] = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_10A0FC(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_7AE54(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + 8 * v7 + 32), (v6 + 32), 8 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_10A22C(uint64_t result, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v4 = *(result + 16);
  v5 = *v3;
  v6 = *(*v3 + 16);
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = result;
  if (swift_isUniquelyReferenced_nonNull_native() && v6 + v4 <= *(v5 + 24) >> 1)
  {
    if (*(v9 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  v5 = a2();
  if (!*(v9 + 16))
  {
LABEL_10:

    if (!v4)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  v10 = (*(v5 + 24) >> 1) - *(v5 + 16);
  result = a3(0);
  if (v10 < v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_11:
    *v3 = v5;
    return result;
  }

  v11 = *(v5 + 16);
  v12 = __OFADD__(v11, v4);
  v13 = v11 + v4;
  if (!v12)
  {
    *(v5 + 16) = v13;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

void *sub_10A370(void *result)
{
  v2 = result[2];
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_7B7DC(result, v10, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_BD88(&qword_941A10);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = v3[2];
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    v3[2] = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_10A4D4(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_7BD90(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_10A5CC(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_7BEA0(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_10A720(void *result)
{
  v2 = result[2];
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_7C180(result, v10, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_BD88(&qword_941BA0);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = v3[2];
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    v3[2] = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void sub_10A824(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a4 >> 1;
  v6 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
    goto LABEL_18;
  }

  v7 = *v4;
  v8 = *(*v4 + 16);
  v9 = v8 + v6;
  if (__OFADD__(v8, v6))
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native)
  {
    goto LABEL_8;
  }

  v13 = *(v7 + 24) >> 1;
  if (v13 < v9)
  {
    goto LABEL_8;
  }

  if (v5 == a3)
  {
    while (v6 > 0)
    {
      __break(1u);
LABEL_8:
      if (v8 <= v9)
      {
        v14 = v8 + v6;
      }

      else
      {
        v14 = v8;
      }

      isUniquelyReferenced_nonNull_native = sub_7C2B4(isUniquelyReferenced_nonNull_native, v14, 1, v7);
      v7 = isUniquelyReferenced_nonNull_native;
      v13 = *(isUniquelyReferenced_nonNull_native + 24) >> 1;
      if (v5 != a3)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_16;
  }

LABEL_12:
  v15 = *(v7 + 16);
  if (v13 - v15 < v6)
  {
    goto LABEL_19;
  }

  memcpy((v7 + 16 * v15 + 32), (a2 + 16 * a3), 16 * v6);
  if (v6 <= 0)
  {
LABEL_16:
    swift_unknownObjectRelease();
    *v4 = v7;
    return;
  }

  v16 = *(v7 + 16);
  v17 = __OFADD__(v16, v6);
  v18 = v16 + v6;
  if (!v17)
  {
    *(v7 + 16) = v18;
    goto LABEL_16;
  }

LABEL_20:
  __break(1u);
}

uint64_t sub_10A950(unint64_t a1, void (*a2)(uint64_t, void, unint64_t))
{
  if (a1 >> 62)
  {
    v5 = sub_76A860();
  }

  else
  {
    v5 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }

  if (!(*v2 >> 62))
  {
    v6 = *(&dword_10 + (*v2 & 0xFFFFFFFFFFFFFF8));
    v7 = __OFADD__(v6, v5);
    result = v6 + v5;
    if (!v7)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = sub_76A860();
  v7 = __OFADD__(v15, v5);
  result = v15 + v5;
  if (v7)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_10B494(result);
  v9 = *v2;
  v10 = *v2 & 0xFFFFFFFFFFFFFF8;
  a2(v10 + 8 * *(&dword_10 + v10) + 32, (*(&dword_18 + v10) >> 1) - *(&dword_10 + v10), a1);
  v12 = v11;

  if (v12 < v5)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v12 < 1)
  {
LABEL_9:
    *v2 = v9;
    return result;
  }

  v13 = *(v10 + 16);
  v7 = __OFADD__(v13, v12);
  v14 = v13 + v12;
  if (!v7)
  {
    *(v10 + 16) = v14;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

Swift::Int TodayCardTitleBackingGradient.Style.hashValue.getter(char a1)
{
  sub_76AA30();
  sub_76AA40(a1 & 1);
  return sub_76AA80();
}

id static TodayCardTitleBackingGradient.make(from:)(void *a1)
{
  v2 = [objc_allocWithZone(CAGradientLayer) init];
  v3 = [a1 locations];
  [v2 setLocations:v3];

  [a1 startPoint];
  [v2 setStartPoint:?];
  [a1 endPoint];
  [v2 setEndPoint:?];
  v4 = [a1 type];
  [v2 setType:v4];

  v5 = [a1 colors];
  [v2 setColors:v5];

  v6 = v2;
  v7 = [a1 filters];
  [v6 setFilters:v7];

  return v6;
}

uint64_t static TodayCardTitleBackingGradient.make(using:)(uint64_t a1)
{
  v2 = sub_765B10();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == enum case for TodayCard.Style.automatic(_:) || v7 == enum case for TodayCard.Style.white(_:))
  {
LABEL_8:
    v9 = 0;
    goto LABEL_9;
  }

  if (v7 != enum case for TodayCard.Style.dark(_:))
  {
    if (v7 != enum case for TodayCard.Style.light(_:))
    {
      v44 = 0;
      v45 = 0xE000000000000000;
      sub_76A730(44);

      v44 = 0xD00000000000002ALL;
      v45 = 0x80000000007CF650;
      v46._countAndFlagsBits = sub_765B00();
      sub_769370(v46);

      result = sub_76A840();
      __break(1u);
      return result;
    }

    goto LABEL_8;
  }

  v9 = 1;
LABEL_9:
  v10 = [objc_allocWithZone(CAGradientLayer) init];
  sub_769240();
  if (v9)
  {
    v11 = [objc_opt_self() blackColor];
    v12 = [v11 colorWithAlphaComponent:0.32];
  }

  else
  {
    v12 = [objc_allocWithZone(UIColor) initWithWhite:1.0 alpha:0.32];
  }

  v13 = [v12 CGColor];

  sub_BD88(&unk_93F5C0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_77FA60;
  sub_BE70(0, &qword_945820);
  v15 = v13;
  *(v14 + 32) = sub_76A1A0(0);
  *(v14 + 40) = sub_76A190(0.3);
  *(v14 + 48) = sub_76A190(0.7);
  *(v14 + 56) = sub_76A190(1.0);
  isa = sub_769450().super.isa;

  [v10 setLocations:isa];

  [v10 setStartPoint:{0.5, 0.0}];
  [v10 setEndPoint:{0.5, 1.0}];
  [v10 setType:kCAGradientLayerAxial];
  v17 = [objc_opt_self() clearColor];
  v18 = [v17 CGColor];

  sub_BD88(&qword_941C10);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_782440;
  type metadata accessor for CGColor(0);
  *(v19 + 32) = v18;
  *(v19 + 56) = v20;
  *(v19 + 64) = v15;
  *(v19 + 88) = v20;
  *(v19 + 96) = v15;
  *(v19 + 152) = v20;
  *(v19 + 120) = v20;
  *(v19 + 128) = v18;
  v21 = v18;
  v43 = v15;
  v42 = v21;
  v22 = sub_769450().super.isa;

  [v10 setColors:v22];

  v23 = objc_allocWithZone(CAFilter);
  v24 = sub_769210();

  v25 = [v23 initWithType:v24];

  v26 = [objc_allocWithZone(CAFilter) initWithType:kCAFilterGaussianBlur];
  v27 = sub_765BD0().super.super.isa;
  v28 = sub_769210();
  [v26 setValue:v27 forKey:v28];

  v29 = v10;
  v30 = [v29 filters];
  if (v30)
  {
    v31 = v30;
    v32 = sub_769460();
  }

  else
  {
    v32 = _swiftEmptyArrayStorage;
  }

  inited = swift_initStackObject();
  *(inited + 16) = xmmword_77E280;
  v34 = sub_BE70(0, &qword_945278);
  *(inited + 32) = v25;
  *(inited + 88) = v34;
  *(inited + 56) = v34;
  *(inited + 64) = v26;
  v44 = v32;
  v41 = v25;
  v35 = v26;
  sub_10A4D4(inited);
  v36 = sub_769450().super.isa;

  [v29 setFilters:v36];

  sub_BD88(&qword_9452E0);
  v37 = swift_initStackObject();
  *(v37 + 16) = xmmword_77DCF0;
  *(v37 + 32) = 0x6E6F697469736F70;
  *(v37 + 40) = 0xE800000000000000;
  *(v37 + 48) = [objc_allocWithZone(NSNull) init];
  *(v37 + 56) = 0x6E6564646968;
  *(v37 + 64) = 0xE600000000000000;
  *(v37 + 72) = [objc_allocWithZone(NSNull) init];
  *(v37 + 80) = 0x49726564724F6E6FLL;
  *(v37 + 88) = 0xE90000000000006ELL;
  *(v37 + 96) = [objc_allocWithZone(NSNull) init];
  *(v37 + 104) = 0x4F726564724F6E6FLL;
  *(v37 + 112) = 0xEA00000000007475;
  *(v37 + 120) = [objc_allocWithZone(NSNull) init];
  *(v37 + 128) = 0x726579616C627573;
  *(v37 + 136) = 0xE900000000000073;
  *(v37 + 144) = [objc_allocWithZone(NSNull) init];
  *(v37 + 152) = 0x73746E65746E6F63;
  *(v37 + 160) = 0xE800000000000000;
  *(v37 + 168) = [objc_allocWithZone(NSNull) init];
  *(v37 + 176) = 0x73646E756F62;
  *(v37 + 184) = 0xE600000000000000;
  *(v37 + 192) = [objc_allocWithZone(NSNull) init];
  sub_10EA10(v37, &qword_945580);
  swift_setDeallocating();
  sub_BD88(&qword_9452E8);
  swift_arrayDestroy();
  sub_BD88(&qword_9452F0);
  v38 = sub_7690E0().super.isa;

  [v29 setActions:v38];

  return v29;
}

uint64_t sub_10B494(uint64_t a1)
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

  sub_76A860();
LABEL_9:
  result = sub_76A780();
  *v1 = result;
  return result;
}

uint64_t (*sub_10B534(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_76A770();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_10F85C;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_10B5B4(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_76A770();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) > a2)
  {

LABEL_5:
    *v3 = v4;
    return sub_10B634;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_10B63C(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_76A770();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) > a2)
  {

LABEL_5:
    *v3 = v4;
    return sub_10F860;
  }

  __break(1u);
  return result;
}

void (*sub_10B6BC(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_76A770();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_10B73C;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_10B744(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_76A770();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) > a2)
  {
    v4 = swift_unknownObjectRetain();
LABEL_5:
    *v3 = v4;
    return sub_10B7C4;
  }

  __break(1u);
  return result;
}

uint64_t sub_10B7CC(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_76A860();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8));
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_76A860();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_10F808(&qword_94DC50, &unk_945390);
          for (i = 0; i != v6; ++i)
          {
            sub_BD88(&unk_945390);
            v9 = sub_10B534(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) <= a2)
      {
        sub_BE70(0, &qword_93E550);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10B96C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_76A860();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8));
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_76A860();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_10F808(&qword_945310, &qword_945308);
          for (i = 0; i != v6; ++i)
          {
            sub_BD88(&qword_945308);
            v9 = sub_10B5B4(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) <= a2)
      {
        sub_75DF50();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10BAFC(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_76A860();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8));
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_76A860();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_10F808(&qword_945368, &qword_945360);
          for (i = 0; i != v6; ++i)
          {
            sub_BD88(&qword_945360);
            v9 = sub_10B63C(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) <= a2)
      {
        sub_765390();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10BC8C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_76A860();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8));
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_76A860();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_10F808(&unk_9454C0, &qword_9454B8);
          for (i = 0; i != v6; ++i)
          {
            sub_BD88(&qword_9454B8);
            v9 = sub_10B63C(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) <= a2)
      {
        type metadata accessor for HeroCarouselScrollView.PageViewTracker();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10BE1C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_76A860();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8));
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_76A860();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_10F808(&qword_945338, &qword_945330);
          for (i = 0; i != v6; ++i)
          {
            sub_BD88(&qword_945330);
            v9 = sub_10B534(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) <= a2)
      {
        sub_BE70(0, &qword_93E540);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10BFBC(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_76A860();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8));
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_76A860();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_10F808(&qword_945468, &qword_945460);
          for (i = 0; i != v6; ++i)
          {
            sub_BD88(&qword_945460);
            v9 = sub_10B534(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) <= a2)
      {
        sub_BE70(0, &unk_956240);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10C15C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_76A860();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8));
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_76A860();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_10F808(&qword_9453D8, &qword_9453D0);
          for (i = 0; i != v6; ++i)
          {
            sub_BD88(&qword_9453D0);
            v9 = sub_10B534(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) <= a2)
      {
        sub_BE70(0, &unk_956250);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10C2FC(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_76A860();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8));
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_76A860();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_10F808(&qword_945560, &qword_945558);
          for (i = 0; i != v6; ++i)
          {
            sub_BD88(&qword_945558);
            v9 = sub_10B534(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) <= a2)
      {
        sub_BE70(0, &qword_945550);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10C49C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_76A860();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8));
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_76A860();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_10F808(&qword_945528, &qword_945520);
          for (i = 0; i != v6; ++i)
          {
            sub_BD88(&qword_945520);
            v9 = sub_10B534(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) <= a2)
      {
        sub_BE70(0, &qword_944B40);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10C63C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_76A860();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8));
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_76A860();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_10F808(&unk_9454F8, &qword_941A10);
          for (i = 0; i != v6; ++i)
          {
            sub_BD88(&qword_941A10);
            v9 = sub_10B534(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) <= a2)
      {
        type metadata accessor for CGColor(0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10C7CC(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_76A860();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8));
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_76A860();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_10F808(&qword_945358, &qword_945350);
          for (i = 0; i != v6; ++i)
          {
            sub_BD88(&qword_945350);
            v9 = sub_10B744(v13, i, a3);
            v11 = *v10;
            swift_unknownObjectRetain();
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) <= a2)
      {
        sub_BD88(&unk_94A500);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10C968(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_76A860();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8));
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_76A860();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_10F808(&unk_945510, &qword_945508);
          for (i = 0; i != v6; ++i)
          {
            sub_BD88(&qword_945508);
            v9 = sub_10B63C(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) <= a2)
      {
        type metadata accessor for DebugSetting();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10CAF8(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_76A860();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8));
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_76A860();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_10F808(&qword_945598, &qword_945590);
          for (i = 0; i != v6; ++i)
          {
            sub_BD88(&qword_945590);
            v9 = sub_10B534(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) <= a2)
      {
        sub_BE70(0, &qword_945588);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10CC98(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_76A860();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8));
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_76A860();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_10F808(&qword_9454A0, &qword_945498);
          for (i = 0; i != v6; ++i)
          {
            sub_BD88(&qword_945498);
            v9 = sub_10B534(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) <= a2)
      {
        sub_BE70(0, &qword_945490);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_10CE38(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_BD88(&qword_945300);
    v3 = sub_76A8B0();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_66523C();
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10CF28(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_BD88(&qword_9454B0);
    v3 = sub_76A8B0();
    for (i = (a1 + 40); ; i += 3)
    {
      v5 = *(i - 1);
      v13 = i[1];
      v14 = *i;
      v6 = *(i + 32);
      result = sub_663D5C(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      v9 = v3[7] + 40 * result;
      *v9 = v14;
      *(v9 + 16) = v13;
      *(v9 + 32) = v6;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      if (!--v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10D028(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_BD88(&unk_9558E0);
    v3 = sub_76A8B0();
    v4 = a1 + 32;

    while (1)
    {
      sub_1ED18(v4, &v11, qword_940F50);
      v5 = v11;
      result = sub_66523C(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_13310(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10D150(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_BD88(&qword_945410);
    v3 = sub_76A8B0();
    v4 = a1 + 32;

    while (1)
    {
      sub_1ED18(v4, v13, &qword_945418);
      result = sub_663E34(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      *(v3[7] + 8 * result) = v15;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10D278(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  sub_BD88(&qword_9454A8);
  v3 = sub_76A8B0();
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  result = sub_663E78(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    v16 = v5;
    return v3;
  }

  v8 = (a1 + 56);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + result) = v4;
    *(v3[7] + 8 * result) = v5;
    v9 = v3[2];
    v10 = __OFADD__(v9, 1);
    v11 = v9 + 1;
    if (v10)
    {
      break;
    }

    v3[2] = v11;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v12 = v8 + 2;
    v4 = *(v8 - 8);
    v13 = *v8;
    v14 = v5;
    result = sub_663E78(v4);
    v8 = v12;
    v5 = v13;
    if (v15)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_10D37C(uint64_t a1)
{
  v2 = sub_BD88(&qword_945448);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v19 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_BD88(&unk_945450);
    v7 = sub_76A8B0();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1ED18(v9, v5, &qword_945448);
      result = sub_663F14(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for Accessory();
      result = sub_30920(v5, v14 + *(*(v15 - 8) + 72) * v13);
      *(v7[7] + 8 * v13) = *(v5 + v8);
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10D564()
{
  result = qword_9452F8;
  if (!qword_9452F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_9452F8);
  }

  return result;
}

unint64_t sub_10D5D8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_BD88(&qword_9453F0);
    v3 = sub_76A8B0();
    for (i = (a1 + 40); ; i = (i + 40))
    {
      v5 = *(i - 1);
      v12 = i[1];
      v13 = *i;
      result = sub_663D5C(v5);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      v8 = (v3[7] + 32 * result);
      *v8 = v13;
      v8[1] = v12;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {
        return v3;
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

void *sub_10D6C4(double *a1)
{
  v1 = *(a1 + 2);
  if (!v1)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  sub_BD88(&qword_945440);
  v3 = sub_76A8B0();
  v4 = *(a1 + 4);
  v5 = *(a1 + 5);
  v6 = a1[6];
  v7 = *(a1 + 7);
  v8 = sub_664128(v4, v5, v6);
  if (v9)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v10 = v8;
  result = v7;
  v12 = a1 + 11;
  while (1)
  {
    *(v3 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v10;
    v13 = (v3[6] + 24 * v10);
    *v13 = v4;
    *(v13 + 1) = v5;
    v13[2] = v6;
    *(v3[7] + 8 * v10) = result;
    v14 = v3[2];
    v15 = __OFADD__(v14, 1);
    v16 = v14 + 1;
    if (v15)
    {
      break;
    }

    v3[2] = v16;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v17 = v12 + 4;
    v4 = *(v12 - 3);
    v5 = *(v12 - 2);
    v6 = *(v12 - 1);
    v18 = *v12;

    v10 = sub_664128(v4, v5, v6);
    v12 = v17;
    result = v18;
    if (v19)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_10D808(uint64_t a1)
{
  v2 = sub_BD88(&qword_945430);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v20 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_BD88(&qword_945438);
    v7 = sub_76A8B0();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    while (1)
    {
      sub_1ED18(v9, v5, &qword_945430);
      v11 = *v5;
      result = sub_663D5C(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + 8 * result) = v11;
      v15 = v7[7];
      v16 = sub_768AB0();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v5 + v8, v16);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10D9F8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_BD88(&unk_945420);
    v3 = sub_76A8B0();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_3DF2F8(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10DAFC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_BD88(&unk_945340);
    v3 = sub_76A8B0();
    for (i = (a1 + 48); ; i += 6)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v14 = *(i + 1);
      v15 = *i;
      result = sub_6641D0(v5, v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      v10 = (v3[7] + 32 * result);
      *v10 = v15;
      v10[1] = v14;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10DC0C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_BD88(&unk_9453A0);
    v3 = sub_76A8B0();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;

      v7 = v6;
      result = sub_664244(v5);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 8 * result) = v7;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10DD04(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_BD88(&unk_9558F0);
    v3 = sub_76A8B0();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_3DF2F8(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10DE18(uint64_t a1)
{
  v2 = sub_BD88(&qword_945570);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v22 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_BD88(&qword_945578);
    v7 = sub_76A8B0();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1ED18(v9, v5, &qword_945570);
      result = sub_663E34(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6] + 40 * result;
      v15 = *v5;
      v16 = *(v5 + 1);
      *(v14 + 32) = *(v5 + 4);
      *v14 = v15;
      *(v14 + 16) = v16;
      v17 = v7[7];
      v18 = sub_7570A0();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v13, &v5[v8], v18);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10E010(uint64_t a1)
{
  v2 = sub_BD88(&qword_945318);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_BD88(&unk_945320);
    v7 = sub_76A8B0();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1ED18(v9, v5, &qword_945318);
      result = sub_6642F0(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_765790();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
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

unint64_t sub_10E1F8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_BD88(&unk_945370);
    v3 = sub_76A8B0();
    v4 = a1 + 32;

    while (1)
    {
      sub_1ED18(v4, v13, &qword_940758);
      result = sub_663E34(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_13310(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10E334(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_BD88(&qword_945548);
    v3 = sub_76A8B0();
    for (i = (a1 + 40); ; i = (i + 24))
    {
      v5 = *(i - 1);
      v11 = *i;
      result = sub_663D5C(v5);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 16 * result) = v11;
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      if (!--v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10E41C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_BD88(&qword_945540);
    v3 = sub_76A8B0();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_663D5C(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10E4FC(uint64_t a1)
{
  v2 = sub_BD88(&unk_945530);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_BD88(&qword_955950);
    v7 = sub_76A8B0();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1ED18(v9, v5, &unk_945530);
      result = sub_664498(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_757640();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 16 * v13) = *&v5[v8];
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10E6E4(uint64_t a1)
{
  v2 = sub_BD88(&qword_945478);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_BD88(&unk_945480);
    v7 = sub_76A8B0();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1ED18(v9, v5, &qword_945478);
      result = sub_66456C(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_758DC0();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10E8CC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_BD88(&qword_955910);
    v3 = sub_76A8B0();
    v4 = a1 + 32;

    while (1)
    {
      sub_1ED18(v4, &v13, &unk_9453B0);
      v5 = v13;
      v6 = v14;
      result = sub_3DF2F8(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_13310(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10EA10(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    sub_BD88(a2);
    v4 = sub_76A8B0();

    for (i = (a1 + 48); ; i += 3)
    {
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      swift_unknownObjectRetain();
      result = sub_3DF2F8(v6, v7);
      if (v10)
      {
        break;
      }

      *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v4[6] + 16 * result);
      *v11 = v6;
      v11[1] = v7;
      *(v4[7] + 8 * result) = v8;
      v12 = v4[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v4[2] = v14;
      if (!--v2)
      {

        return v4;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10EB0C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_BD88(&unk_945380);
    v3 = sub_76A8B0();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_3DF2F8(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}