char *sub_1004FC4B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = &v3[OBJC_IVAR____TtC5Books16AudiobookTOCCell_chapterTitle];
  *v6 = 0;
  v6[1] = 0;
  v7 = &v3[OBJC_IVAR____TtC5Books16AudiobookTOCCell_chapterTime];
  *v7 = 0;
  v7[1] = 0;
  v8 = &v3[OBJC_IVAR____TtC5Books16AudiobookTOCCell_accessibleChapterTime];
  *v8 = 0;
  v8[1] = 0;
  v3[OBJC_IVAR____TtC5Books16AudiobookTOCCell_isBookmarkHidden] = 1;
  v3[OBJC_IVAR____TtC5Books16AudiobookTOCCell_nowPlayingState] = 2;
  v9 = OBJC_IVAR____TtC5Books16AudiobookTOCCell_chapterTitleLabel;
  *&v3[v9] = sub_1004FBEB0();
  v10 = OBJC_IVAR____TtC5Books16AudiobookTOCCell_chapterTimeLabel;
  *&v3[v10] = sub_1004FBFBC();
  v11 = OBJC_IVAR____TtC5Books16AudiobookTOCCell_bookmarkImageView;
  *&v3[v11] = sub_1004FC0B4();
  v12 = OBJC_IVAR____TtC5Books16AudiobookTOCCell_nowPlayingIndicator;
  *&v3[v12] = sub_1004FC28C();
  v13 = OBJC_IVAR____TtC5Books16AudiobookTOCCell_nowPlayingView;
  v14 = [objc_allocWithZone(UIView) init];
  v15 = objc_opt_self();
  v16 = [v15 clearColor];
  [v14 setBackgroundColor:v16];

  [v14 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v3[v13] = v14;
  if (a3)
  {
    v17 = sub_1007A2214();
  }

  else
  {
    v17 = 0;
  }

  v95.receiver = v3;
  v95.super_class = type metadata accessor for AudiobookTOCCell();
  v18 = objc_msgSendSuper2(&v95, "initWithStyle:reuseIdentifier:", a1, v17);

  v19 = v18;
  v20 = [v15 clearColor];
  [v19 setBackgroundColor:v20];

  v21 = v19;
  v22 = [v15 bc_booksKeyColor];
  [v21 setTintColor:v22];

  v23 = OBJC_IVAR____TtC5Books16AudiobookTOCCell_nowPlayingView;
  v91 = OBJC_IVAR____TtC5Books16AudiobookTOCCell_nowPlayingView;
  v94 = OBJC_IVAR____TtC5Books16AudiobookTOCCell_nowPlayingIndicator;
  [*&v21[OBJC_IVAR____TtC5Books16AudiobookTOCCell_nowPlayingView] addSubview:*&v21[OBJC_IVAR____TtC5Books16AudiobookTOCCell_nowPlayingIndicator]];
  v24 = [v21 contentView];
  v25 = OBJC_IVAR____TtC5Books16AudiobookTOCCell_chapterTitleLabel;
  [v24 addSubview:*&v21[OBJC_IVAR____TtC5Books16AudiobookTOCCell_chapterTitleLabel]];

  v26 = [v21 contentView];
  v27 = OBJC_IVAR____TtC5Books16AudiobookTOCCell_chapterTimeLabel;
  [v26 addSubview:*&v21[OBJC_IVAR____TtC5Books16AudiobookTOCCell_chapterTimeLabel]];

  v28 = [v21 contentView];
  v92 = OBJC_IVAR____TtC5Books16AudiobookTOCCell_bookmarkImageView;
  [v28 addSubview:*&v21[OBJC_IVAR____TtC5Books16AudiobookTOCCell_bookmarkImageView]];

  v29 = [v21 contentView];
  [v29 addSubview:*&v21[v23]];

  v30 = [v21 contentView];
  v31 = [v30 layoutMarginsGuide];

  v32 = [v21 contentView];
  [v32 setInsetsLayoutMarginsFromSafeArea:0];

  v93 = objc_opt_self();
  sub_1001F1160(&unk_100AD8160);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_10082D660;
  v34 = [*&v21[v25] topAnchor];
  v35 = [v31 topAnchor];
  v36 = [v34 constraintEqualToAnchor:v35];

  *(v33 + 32) = v36;
  v37 = [*&v21[v25] leadingAnchor];
  v38 = [v31 leadingAnchor];
  v39 = [v37 constraintEqualToAnchor:v38];

  *(v33 + 40) = v39;
  v40 = [*&v21[v25] trailingAnchor];
  v41 = [*&v21[v94] leadingAnchor];
  v42 = [v40 constraintEqualToAnchor:v41 constant:-10.0];

  *(v33 + 48) = v42;
  v43 = [*&v21[v27] topAnchor];
  v44 = [*&v21[v25] bottomAnchor];
  v45 = [v43 constraintEqualToAnchor:v44];

  *(v33 + 56) = v45;
  v46 = [*&v21[v27] trailingAnchor];
  v47 = [*&v21[v25] trailingAnchor];
  v48 = [v46 constraintEqualToAnchor:v47];

  *(v33 + 64) = v48;
  v49 = [*&v21[v27] leadingAnchor];
  v50 = [*&v21[v25] leadingAnchor];
  v51 = [v49 constraintEqualToAnchor:v50];

  *(v33 + 72) = v51;
  v52 = [*&v21[v27] bottomAnchor];
  v53 = [v31 bottomAnchor];
  v54 = [v52 constraintEqualToAnchor:v53];

  *(v33 + 80) = v54;
  v55 = [*&v21[v27] heightAnchor];
  v56 = [v55 constraintGreaterThanOrEqualToConstant:10.0];

  *(v33 + 88) = v56;
  v57 = [*&v21[v92] centerYAnchor];
  v58 = [*&v21[v25] centerYAnchor];
  v59 = [v57 constraintEqualToAnchor:v58];

  *(v33 + 96) = v59;
  v60 = [*&v21[v92] leadingAnchor];
  v61 = [v21 contentView];

  v62 = [v61 leadingAnchor];
  v63 = [v60 constraintEqualToAnchor:v62];

  *(v33 + 104) = v63;
  v64 = [*&v21[v92] trailingAnchor];
  v65 = [*&v21[v25] leadingAnchor];
  v66 = [v64 constraintEqualToAnchor:v65];

  *(v33 + 112) = v66;
  v67 = [*&v21[v94] topAnchor];
  v68 = [*&v21[v91] topAnchor];
  v69 = [v67 constraintEqualToAnchor:v68];

  *(v33 + 120) = v69;
  v70 = [*&v21[v94] leadingAnchor];
  v71 = [*&v21[v91] leadingAnchor];
  v72 = [v70 constraintEqualToAnchor:v71];

  *(v33 + 128) = v72;
  v73 = [*&v21[v94] trailingAnchor];
  v74 = [*&v21[v91] trailingAnchor];
  v75 = [v73 constraintEqualToAnchor:v74];

  *(v33 + 136) = v75;
  v76 = [*&v21[v94] bottomAnchor];
  v77 = [*&v21[v91] bottomAnchor];
  v78 = [v76 constraintEqualToAnchor:v77];

  *(v33 + 144) = v78;
  v79 = [*&v21[v91] centerYAnchor];
  v80 = [v31 centerYAnchor];
  v81 = [v79 constraintEqualToAnchor:v80];

  *(v33 + 152) = v81;
  v82 = [*&v21[v91] trailingAnchor];
  v83 = [v31 trailingAnchor];
  v84 = [v82 constraintEqualToAnchor:v83];

  *(v33 + 160) = v84;
  v85 = [*&v21[v91] heightAnchor];
  v86 = [v85 constraintEqualToConstant:20.0];

  *(v33 + 168) = v86;
  v87 = [*&v21[v91] widthAnchor];
  v88 = [v87 constraintEqualToConstant:20.0];

  *(v33 + 176) = v88;
  sub_10002267C();
  isa = sub_1007A25D4().super.isa;

  [v93 activateConstraints:isa];

  return v21;
}

id sub_1004FCFE4()
{
  v4.receiver = v0;
  v4.super_class = type metadata accessor for AudiobookTOCCell();
  objc_msgSendSuper2(&v4, "prepareForReuse");
  v1 = &v0[OBJC_IVAR____TtC5Books16AudiobookTOCCell_chapterTitle];
  *v1 = 0;
  *(v1 + 1) = 0;

  [*&v0[OBJC_IVAR____TtC5Books16AudiobookTOCCell_chapterTitleLabel] setText:0];
  v2 = &v0[OBJC_IVAR____TtC5Books16AudiobookTOCCell_chapterTime];
  *v2 = 0;
  *(v2 + 1) = 0;

  [*&v0[OBJC_IVAR____TtC5Books16AudiobookTOCCell_chapterTimeLabel] setText:0];
  v0[OBJC_IVAR____TtC5Books16AudiobookTOCCell_isBookmarkHidden] = 1;
  [*&v0[OBJC_IVAR____TtC5Books16AudiobookTOCCell_bookmarkImageView] setHidden:1];
  v0[OBJC_IVAR____TtC5Books16AudiobookTOCCell_nowPlayingState] = 2;
  return sub_1004FBDC8();
}

uint64_t sub_1004FD124()
{
  v1 = *&v0[OBJC_IVAR____TtC5Books16AudiobookTOCCell_chapterTitle + 8];
  if (v1)
  {
    v2 = *&v0[OBJC_IVAR____TtC5Books16AudiobookTOCCell_chapterTitle];

    v3 = sub_10000B3D8(0, 1, 1, _swiftEmptyArrayStorage);
    v5 = *(v3 + 2);
    v4 = *(v3 + 3);
    if (v5 >= v4 >> 1)
    {
      v3 = sub_10000B3D8((v4 > 1), v5 + 1, 1, v3);
    }

    *(v3 + 2) = v5 + 1;
    v6 = &v3[16 * v5];
    *(v6 + 4) = v2;
    *(v6 + 5) = v1;
  }

  else
  {
    v3 = _swiftEmptyArrayStorage;
  }

  v7 = *&v0[OBJC_IVAR____TtC5Books16AudiobookTOCCell_accessibleChapterTime + 8];
  if (v7)
  {
    v8 = *&v0[OBJC_IVAR____TtC5Books16AudiobookTOCCell_accessibleChapterTime];

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_10000B3D8(0, *(v3 + 2) + 1, 1, v3);
    }

    v10 = *(v3 + 2);
    v9 = *(v3 + 3);
    if (v10 >= v9 >> 1)
    {
      v3 = sub_10000B3D8((v9 > 1), v10 + 1, 1, v3);
    }

    *(v3 + 2) = v10 + 1;
    v11 = &v3[16 * v10];
    *(v11 + 4) = v8;
    *(v11 + 5) = v7;
  }

  v22.receiver = v0;
  v22.super_class = type metadata accessor for AudiobookTOCCell();
  v12 = objc_msgSendSuper2(&v22, "accessibilityLabel");
  if (v12)
  {
    v13 = v12;
    v14 = sub_1007A2254();
    v16 = v15;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_10000B3D8(0, *(v3 + 2) + 1, 1, v3);
    }

    v18 = *(v3 + 2);
    v17 = *(v3 + 3);
    if (v18 >= v17 >> 1)
    {
      v3 = sub_10000B3D8((v17 > 1), v18 + 1, 1, v3);
    }

    *(v3 + 2) = v18 + 1;
    v19 = &v3[16 * v18];
    *(v19 + 4) = v14;
    *(v19 + 5) = v16;
  }

  else if (!*(v3 + 2))
  {

    return 0;
  }

  sub_1001F1160(&unk_100AD61F0);
  sub_10000B4E4();
  v20 = sub_1007A20B4();

  return v20;
}

id sub_1004FD398(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();
  v6 = v5;

  if (v6)
  {
    v7 = sub_1007A2214();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t sub_1004FD418()
{
  v1 = sub_100796CF4();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v45 - v6;
  v8 = sub_1007A21D4();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v45 - v13;
  v15 = v0[OBJC_IVAR____TtC5Books16AudiobookTOCCell_nowPlayingState];
  v49 = v2;
  if (v15 > 1)
  {
    v19 = v1;
    v20 = _swiftEmptyArrayStorage;
  }

  else
  {
    v48 = v0;
    sub_1007A2154();
    sub_100796C94();
    (*(v9 + 16))(v11, v14, v8);
    type metadata accessor for BundleFinder();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
    (*(v2 + 16))(v4, v7, v1);
    v17 = sub_1007A22D4();
    v46 = v18;
    v47 = v17;
    v19 = v1;
    (*(v2 + 8))(v7, v1);
    (*(v9 + 8))(v14, v8);
    v20 = sub_10000B3D8(0, 1, 1, _swiftEmptyArrayStorage);
    v22 = *(v20 + 2);
    v21 = *(v20 + 3);
    if (v22 >= v21 >> 1)
    {
      v20 = sub_10000B3D8((v21 > 1), v22 + 1, 1, v20);
    }

    *(v20 + 2) = v22 + 1;
    v23 = &v20[16 * v22];
    v24 = v46;
    *(v23 + 4) = v47;
    *(v23 + 5) = v24;
    v0 = v48;
  }

  if ((v0[OBJC_IVAR____TtC5Books16AudiobookTOCCell_isBookmarkHidden] & 1) == 0)
  {
    sub_1007A2154();
    sub_100796C94();
    (*(v9 + 16))(v11, v14, v8);
    type metadata accessor for BundleFinder();
    v25 = swift_getObjCClassFromMetadata();
    v48 = v8;
    v26 = [objc_opt_self() bundleForClass:v25];
    v27 = v49;
    (*(v49 + 16))(v4, v7, v19);
    v28 = sub_1007A22D4();
    v30 = v29;
    (*(v27 + 8))(v7, v19);
    (*(v9 + 8))(v14, v48);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v20 = sub_10000B3D8(0, *(v20 + 2) + 1, 1, v20);
    }

    v32 = *(v20 + 2);
    v31 = *(v20 + 3);
    if (v32 >= v31 >> 1)
    {
      v20 = sub_10000B3D8((v31 > 1), v32 + 1, 1, v20);
    }

    *(v20 + 2) = v32 + 1;
    v33 = &v20[16 * v32];
    *(v33 + 4) = v28;
    *(v33 + 5) = v30;
  }

  v34 = type metadata accessor for AudiobookTOCCell();
  v51.receiver = v0;
  v51.super_class = v34;
  v35 = objc_msgSendSuper2(&v51, "accessibilityValue");
  if (v35)
  {
    v36 = v35;
    v37 = sub_1007A2254();
    v39 = v38;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v20 = sub_10000B3D8(0, *(v20 + 2) + 1, 1, v20);
    }

    v41 = *(v20 + 2);
    v40 = *(v20 + 3);
    if (v41 >= v40 >> 1)
    {
      v20 = sub_10000B3D8((v40 > 1), v41 + 1, 1, v20);
    }

    *(v20 + 2) = v41 + 1;
    v42 = &v20[16 * v41];
    *(v42 + 4) = v37;
    *(v42 + 5) = v39;
  }

  else if (!*(v20 + 2))
  {

    return 0;
  }

  v50 = v20;
  sub_1001F1160(&unk_100AD61F0);
  sub_10000B4E4();
  v43 = sub_1007A20B4();

  return v43;
}

void sub_1004FDA8C(void *a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  if (a3)
  {
    sub_1007A2254();
    v6 = a1;
    v7 = sub_1007A2214();
  }

  else
  {
    v8 = a1;
    v7 = 0;
  }

  v9.receiver = a1;
  v9.super_class = type metadata accessor for AudiobookTOCCell();
  objc_msgSendSuper2(&v9, *a4, v7);
}

void *sub_1004FDB88()
{
  v1 = v0;
  v17.receiver = v0;
  v17.super_class = type metadata accessor for AudiobookTOCCell();
  v2 = objc_msgSendSuper2(&v17, "accessibilityUserInputLabels");
  if (v2)
  {
    v3 = v2;
    v4 = sub_1007A25E4();
  }

  else
  {
    v4 = _swiftEmptyArrayStorage;
  }

  v5 = [v1 accessibilityLabel];
  if (v5)
  {
    v6 = v5;
    v7 = sub_1007A2254();
    v9 = v8;

    sub_1001F1160(&unk_100AE0B30);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_10080B690;
    *(v10 + 32) = v7;
    *(v10 + 40) = v9;
    v15 = v10;
    sub_100484B94(v4);
    v4 = v15;
  }

  v11 = *&v1[OBJC_IVAR____TtC5Books16AudiobookTOCCell_chapterTitle + 8];
  if (v11)
  {
    v12 = *&v1[OBJC_IVAR____TtC5Books16AudiobookTOCCell_chapterTitle];
    sub_1001F1160(&unk_100AE0B30);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_10080B690;
    *(v13 + 32) = v12;
    *(v13 + 40) = v11;
    v16 = v13;

    sub_100484B94(v4);
    return v16;
  }

  return v4;
}

id sub_1004FDD78()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AudiobookTOCCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_1004FDE9C()
{
  result = qword_100AE8098;
  if (!qword_100AE8098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE8098);
  }

  return result;
}

void sub_1004FDEF0()
{
  v1 = (v0 + OBJC_IVAR____TtC5Books16AudiobookTOCCell_chapterTitle);
  *v1 = 0;
  v1[1] = 0;
  v2 = (v0 + OBJC_IVAR____TtC5Books16AudiobookTOCCell_chapterTime);
  *v2 = 0;
  v2[1] = 0;
  v3 = (v0 + OBJC_IVAR____TtC5Books16AudiobookTOCCell_accessibleChapterTime);
  *v3 = 0;
  v3[1] = 0;
  *(v0 + OBJC_IVAR____TtC5Books16AudiobookTOCCell_isBookmarkHidden) = 1;
  *(v0 + OBJC_IVAR____TtC5Books16AudiobookTOCCell_nowPlayingState) = 2;
  v4 = OBJC_IVAR____TtC5Books16AudiobookTOCCell_chapterTitleLabel;
  *(v0 + v4) = sub_1004FBEB0();
  v5 = OBJC_IVAR____TtC5Books16AudiobookTOCCell_chapterTimeLabel;
  *(v0 + v5) = sub_1004FBFBC();
  v6 = OBJC_IVAR____TtC5Books16AudiobookTOCCell_bookmarkImageView;
  *(v0 + v6) = sub_1004FC0B4();
  v7 = OBJC_IVAR____TtC5Books16AudiobookTOCCell_nowPlayingIndicator;
  *(v0 + v7) = sub_1004FC28C();
  v8 = OBJC_IVAR____TtC5Books16AudiobookTOCCell_nowPlayingView;
  v9 = [objc_allocWithZone(UIView) init];
  v10 = [objc_opt_self() clearColor];
  [v9 setBackgroundColor:v10];

  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
  *(v0 + v8) = v9;
  sub_1007A38A4();
  __break(1u);
}

id sub_1004FE05C(double a1, double a2, double a3, double a4)
{
  v9 = sub_10079B5E4();
  __chkstk_darwin(v9 - 8);
  v13.receiver = v4;
  v13.super_class = type metadata accessor for FloatingPlayerContainerView();
  v10 = objc_msgSendSuper2(&v13, "initWithFrame:", a1, a2, a3, a4);
  [v10 _setSafeAreaInsetsFrozen:1];
  [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v10 setClipsToBounds:1];
  sub_10079B5D4();
  v12[3] = sub_10079B5F4();
  v12[4] = &protocol witness table for _Glass;
  sub_1002256EC(v12);
  sub_10079B604();
  sub_1007A30F4();

  return v10;
}

id sub_1004FE2B0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FloatingPlayerContainerView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id CarPlayController.__deallocating_deinit()
{
  v1 = *&v0[OBJC_IVAR___BKCarPlayController_acknowledgementObservation];
  if (v1)
  {
    v2 = objc_opt_self();
    swift_unknownObjectRetain();
    v3 = [v2 defaultCenter];
    [v3 removeObserver:v1];
    swift_unknownObjectRelease();
  }

  v5.receiver = v0;
  v5.super_class = type metadata accessor for CarPlayController();
  return objc_msgSendSuper2(&v5, "dealloc");
}

id CarPlayController.init()()
{
  v1 = &v0[OBJC_IVAR___BKCarPlayController_dataManager];
  *v1 = 0;
  v1[1] = 0;
  v2 = &v0[OBJC_IVAR___BKCarPlayController_presenter];
  *v2 = 0;
  v2[1] = 0;
  *&v0[OBJC_IVAR___BKCarPlayController_interfaceController] = 0;
  *&v0[OBJC_IVAR___BKCarPlayController_listenNowTemplate] = 0;
  *&v0[OBJC_IVAR___BKCarPlayController_recentsTemplate] = 0;
  *&v0[OBJC_IVAR___BKCarPlayController_tocTemplate] = 0;
  *&v0[OBJC_IVAR___BKCarPlayController_playbackRatesTemplate] = 0;
  v0[OBJC_IVAR___BKCarPlayController_isPushingTemplate] = 0;
  *&v0[OBJC_IVAR___BKCarPlayController_acknowledgementObservation] = 0;
  v4.receiver = v0;
  v4.super_class = type metadata accessor for CarPlayController();
  return objc_msgSendSuper2(&v4, "init");
}

void sub_1004FE5FC()
{
  v1 = OBJC_IVAR___BKCarPlayController_acknowledgementObservation;
  if (!*(v0 + OBJC_IVAR___BKCarPlayController_acknowledgementObservation))
  {
    v2 = [objc_opt_self() defaultCenter];
    v3 = sub_1007A2E34();
    v4 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    *(v5 + 24) = v2;
    v9[4] = sub_100503204;
    v9[5] = v5;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 1107296256;
    v9[2] = sub_1006D0148;
    v9[3] = &unk_100A21060;
    v6 = _Block_copy(v9);
    v7 = v2;

    v8 = [v7 addObserverForName:v3 object:0 queue:0 usingBlock:v6];

    _Block_release(v6);
    *(v0 + v1) = v8;
    swift_unknownObjectRelease();
  }
}

void sub_1004FE768(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_10000A7C4(0, &qword_100AD1E10);
    *(swift_allocObject() + 16) = v5;
    v6 = v5;
    sub_1007A2CD4();
  }

  swift_beginAccess();
  v7 = swift_unknownObjectWeakLoadStrong();
  if (v7)
  {
    v8 = *(v7 + OBJC_IVAR___BKCarPlayController_acknowledgementObservation);
    v9 = v7;
    swift_unknownObjectRetain();

    if (v8)
    {
      [a3 removeObserver:v8];
      swift_beginAccess();
      v10 = swift_unknownObjectWeakLoadStrong();
      swift_unknownObjectRelease();
      if (v10)
      {
        *&v10[OBJC_IVAR___BKCarPlayController_acknowledgementObservation] = 0;

        swift_unknownObjectRelease();
      }
    }
  }
}

Swift::Void __swiftcall CarPlayController.templateApplicationScene(_:didConnect:)(CPTemplateApplicationScene _, CPInterfaceController didConnect)
{
  isa = _.super.super.super.isa;
  v109 = sub_1007A1D04();
  v108 = *(v109 - 8);
  __chkstk_darwin(v109);
  v107 = (&v99 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v118 = sub_100796CF4();
  v5 = *(v118 - 8);
  __chkstk_darwin(v118);
  v7 = &v99 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v99 - v9;
  v11 = sub_1007A21D4();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v99 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v99 - v16;
  v18 = *(v2 + OBJC_IVAR___BKCarPlayController_interfaceController);
  v105 = OBJC_IVAR___BKCarPlayController_interfaceController;
  *(v2 + OBJC_IVAR___BKCarPlayController_interfaceController) = didConnect;
  v19 = didConnect.super.isa;

  v99 = v19;
  v110 = v2;
  [(objc_class *)v19 setDelegate:v2];
  sub_1007A2154();
  sub_100796C94();
  v116 = *(v12 + 16);
  v124 = v12 + 16;
  v117 = v14;
  v116(v14, v17, v11);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v123 = ObjCClassFromMetadata;
  v122 = objc_opt_self();
  v21 = [v122 bundleForClass:ObjCClassFromMetadata];
  v120 = *(v5 + 16);
  v121 = v5 + 16;
  v113 = v7;
  v22 = v7;
  v23 = v118;
  v120(v22, v10, v118);
  sub_1007A22D4();
  v115 = *(v5 + 8);
  v115(v10, v23);
  v24 = v5 + 8;
  v25 = *(v12 + 8);
  v125 = v12 + 8;
  v119 = v25;
  v25(v17, v11);
  v26 = objc_allocWithZone(CPListTemplate);
  v27 = sub_1007A2214();

  v112 = sub_10000A7C4(0, &qword_100ADDB28);
  v28 = sub_1007A25D4().super.isa;
  v111 = [v26 initWithTitle:v27 sections:v28];

  sub_1007A2154();
  sub_100796C94();
  v29 = v117;
  v30 = v11;
  v31 = v116;
  v116(v117, v17, v11);
  v32 = [v122 bundleForClass:v123];
  v33 = v113;
  v120(v113, v10, v23);
  *&v104 = sub_1007A22D4();
  v103 = v34;
  v35 = v23;
  v36 = v23;
  v37 = v115;
  v115(v10, v35);
  v119(v17, v30);
  sub_1007A2154();
  sub_100796C94();
  v31(v29, v17, v30);
  v38 = [v122 bundleForClass:v123];
  v120(v33, v10, v36);
  v39 = sub_1007A22D4();
  v102 = v40;
  v106 = v10;
  v114 = v24;
  v37(v10, v36);
  v41 = v30;
  v119(v17, v30);
  sub_1001F1160(&unk_100AE0B30);
  v42 = swift_allocObject();
  v101 = xmmword_10080B690;
  *(v42 + 16) = xmmword_10080B690;
  v43 = v103;
  *(v42 + 32) = v104;
  *(v42 + 40) = v43;
  v44 = sub_1007A25D4().super.isa;

  v45 = v111;
  [v111 setEmptyViewTitleVariants:v44];

  v46 = swift_allocObject();
  *(v46 + 16) = v101;
  v47 = v102;
  *(v46 + 32) = v39;
  *(v46 + 40) = v47;
  v48 = sub_1007A25D4().super.isa;

  [v45 setEmptyViewSubtitleVariants:v48];

  v49 = sub_1007A29D4();
  if (qword_100AD1530 != -1)
  {
    swift_once();
  }

  v50 = qword_100AE15E0;
  if (os_log_type_enabled(qword_100AE15E0, v49))
  {
    v51 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v51 = 136315394;
    swift_getObjectType();
    v52 = sub_1007A3D34();
    v54 = sub_1000070F4(v52, v53, aBlock);

    *(v51 + 4) = v54;
    *(v51 + 12) = 2080;
    *(v51 + 14) = sub_1000070F4(0xD000000000000027, 0x80000001008D9EE0, aBlock);
    _os_log_impl(&_mh_execute_header, v50, v49, "%s %s creating loadingMessage", v51, 0x16u);
    swift_arrayDestroy();
  }

  v103 = v50;
  sub_1007A2154();
  v55 = v106;
  sub_100796C94();
  v116(v117, v17, v41);
  v56 = [v122 bundleForClass:v123];
  v57 = v113;
  v58 = v118;
  v120(v113, v55, v118);
  sub_1007A22D4();
  v115(v55, v58);
  v119(v17, v41);
  v59 = objc_allocWithZone(CPListItem);
  v60 = sub_1007A2214();

  v61 = [v59 initWithText:v60 detailText:0];

  sub_1001F1160(&unk_100AD8160);
  inited = swift_initStackObject();
  v104 = xmmword_100811390;
  *(inited + 16) = xmmword_100811390;
  *(inited + 32) = v61;
  v63 = objc_allocWithZone(CPListSection);
  v102 = v61;
  sub_100502464(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  v64 = sub_1007A25D4().super.isa;

  v65 = [v63 initWithItems:v64];

  v66 = swift_allocObject();
  *(v66 + 16) = v104;
  *(v66 + 32) = v65;
  v67 = v65;
  v68 = sub_1007A25D4().super.isa;

  v69 = v111;
  [v111 updateSections:v68];

  v70 = v110;
  v71 = *(v110 + OBJC_IVAR___BKCarPlayController_listenNowTemplate);
  *(v110 + OBJC_IVAR___BKCarPlayController_listenNowTemplate) = v69;
  v72 = v69;

  v73 = *(v70 + v105);
  if (v73)
  {
    [v73 setRootTemplate:v72 animated:0 completion:0];
  }

  sub_1007A2154();
  sub_100796C94();
  v116(v117, v17, v41);
  v74 = [v122 bundleForClass:v123];
  v75 = v118;
  v120(v57, v55, v118);
  sub_1007A22D4();
  v115(v55, v75);
  v119(v17, v41);
  v76 = objc_allocWithZone(CPListTemplate);
  v77 = sub_1007A2214();

  v78 = sub_1007A25D4().super.isa;
  v79 = [v76 initWithTitle:v77 sections:v78];

  v80 = *(v70 + OBJC_IVAR___BKCarPlayController_recentsTemplate);
  *(v70 + OBJC_IVAR___BKCarPlayController_recentsTemplate) = v79;

  sub_10000A7C4(0, &qword_100AD1E10);
  v81 = sub_1007A2D74();
  v82 = v107;
  *v107 = v81;
  v83 = v108;
  v84 = v109;
  (*(v108 + 104))(v82, enum case for DispatchPredicate.onQueue(_:), v109);
  LOBYTE(v77) = sub_1007A1D34();
  (*(v83 + 8))(v82, v84);
  if (v77)
  {
    v85 = [objc_opt_self() delegate];
    v86 = [v85 sceneManager];
    [v86 carPlayScene:isa didConnectInterfaceController:v99];

    v87 = sub_1007A29D4();
    v88 = v103;
    if (os_log_type_enabled(v103, v87))
    {
      v89 = swift_slowAlloc();
      aBlock[0] = swift_slowAlloc();
      *v89 = 136315394;
      swift_getObjectType();
      v90 = sub_1007A3D34();
      v92 = sub_1000070F4(v90, v91, aBlock);

      *(v89 + 4) = v92;
      *(v89 + 12) = 2080;
      *(v89 + 14) = sub_1000070F4(0xD000000000000027, 0x80000001008D9EE0, aBlock);
      _os_log_impl(&_mh_execute_header, v88, v87, "%s %s app launch coordinator wait start", v89, 0x16u);
      swift_arrayDestroy();
    }

    v93 = [v85 appLaunchCoordinator];
    v94 = sub_1007A2214();
    v95 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v96 = swift_allocObject();
    *(v96 + 16) = v95;
    *(v96 + 24) = v85;
    aBlock[4] = sub_10050265C;
    aBlock[5] = v96;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10021B6B0;
    aBlock[3] = &unk_100A20EB0;
    v97 = _Block_copy(aBlock);
    v98 = v85;

    [v93 appLaunchCoordinatorOnConditionMask:2 blockID:v94 performBlock:v97];
    _Block_release(v97);

    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

void sub_1004FF88C(uint64_t a1, uint64_t a2, char *a3)
{
  v97 = a3;
  v3 = sub_100796CF4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v82 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v82 - v8;
  v10 = sub_1007A21D4();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v82 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v82 - v15;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    v86 = v16;
    v89 = v9;
    v90 = v10;
    v91 = v4;
    v92 = v3;
    v19 = sub_1007A29D4();
    if (qword_100AD1530 != -1)
    {
      swift_once();
    }

    v85 = v13;
    v87 = v11;
    v88 = v6;
    v20 = qword_100AE15E0;
    if (os_log_type_enabled(qword_100AE15E0, v19))
    {
      v21 = swift_slowAlloc();
      v98[0] = swift_slowAlloc();
      *v21 = 136315394;
      swift_getObjectType();
      v22 = sub_1007A3D34();
      v24 = sub_1000070F4(v22, v23, v98);

      *(v21 + 4) = v24;
      *(v21 + 12) = 2080;
      *(v21 + 14) = sub_1000070F4(0xD000000000000027, 0x80000001008D9EE0, v98);
      _os_log_impl(&_mh_execute_header, v20, v19, "%s %s app launch coordinator finished", v21, 0x16u);
      swift_arrayDestroy();
    }

    v94 = v20;
    v25 = [objc_opt_self() sharedInstance];
    v26 = [objc_opt_self() recentAudiobookAssetProviderForCarplay];
    v27 = objc_allocWithZone(type metadata accessor for CarPlayDataManager());
    v28 = v25;
    v95 = v26;
    v96 = v28;
    v29 = sub_100502944(v28, v95, v27);
    v30 = objc_opt_self();
    v31 = v29;
    v32 = [v30 sharedInstance];
    v33 = type metadata accessor for CarPlayInteractor();
    v34 = objc_allocWithZone(v33);
    *&v34[OBJC_IVAR____TtC5Books17CarPlayInteractor_delegate + 8] = 0;
    swift_unknownObjectWeakInit();
    v34[OBJC_IVAR____TtC5Books17CarPlayInteractor_hasShownError] = 0;
    v35 = &v34[OBJC_IVAR____TtC5Books17CarPlayInteractor_dataManager];
    *v35 = v31;
    v35[1] = &off_100A270D8;
    *&v34[OBJC_IVAR____TtC5Books17CarPlayInteractor_persistenceController] = v32;
    v100.receiver = v34;
    v100.super_class = v33;
    v36 = objc_msgSendSuper2(&v100, "init");
    v37 = objc_opt_self();
    v38 = v36;
    v39 = [v37 defaultCacheManager];
    v40 = type metadata accessor for CarPlayPresenter();
    v41 = objc_allocWithZone(v40);
    *&v41[OBJC_IVAR____TtC5Books16CarPlayPresenter_incrementButton] = 0;
    *&v41[OBJC_IVAR____TtC5Books16CarPlayPresenter_decrementButton] = 0;
    *&v41[OBJC_IVAR____TtC5Books16CarPlayPresenter_delegate + 8] = 0;
    swift_unknownObjectWeakInit();
    v42 = &v41[OBJC_IVAR____TtC5Books16CarPlayPresenter_interactor];
    *v42 = v38;
    *(v42 + 1) = &off_100A15080;
    *&v41[OBJC_IVAR____TtC5Books16CarPlayPresenter_coverCache] = v39;
    v99.receiver = v41;
    v99.super_class = v40;
    v43 = objc_msgSendSuper2(&v99, "init");
    sub_10035FB54();
    *&v31[OBJC_IVAR____TtC5Books18CarPlayDataManager_delegate + 8] = &off_100A15048;
    swift_unknownObjectWeakAssign();
    v93 = v38;
    *&v38[OBJC_IVAR____TtC5Books17CarPlayInteractor_delegate + 8] = &off_100A16F80;
    swift_unknownObjectWeakAssign();
    *&v43[OBJC_IVAR____TtC5Books16CarPlayPresenter_delegate + 8] = &off_100A20ED8;
    swift_unknownObjectWeakAssign();
    v44 = &v18[OBJC_IVAR___BKCarPlayController_presenter];
    *v44 = v43;
    *(v44 + 1) = &off_100A16FC0;
    v45 = v43;
    swift_unknownObjectRelease();
    v46 = &v18[OBJC_IVAR___BKCarPlayController_dataManager];
    *v46 = v31;
    *(v46 + 1) = &off_100A270D8;
    v47 = v31;
    swift_unknownObjectRelease();
    sub_10060706C();
    v48 = [v97 engagementManager];
    if (v48)
    {
      v49 = v48;
      v50 = *&v48[OBJC_IVAR___BKEngagementManager_manager];
      v51 = sub_1007999E4();

      if (v51)
      {
        type metadata accessor for SessionDonor();
        v52 = swift_dynamicCastClass();
        if (v52)
        {
          if ((v52[OBJC_IVAR___BKSessionDonor_everUsedCarplayApp] & 1) == 0)
          {
            v52[OBJC_IVAR___BKSessionDonor_everUsedCarplayApp] = 1;
            [v52 propertyDidChange:v52 propertyConfiguration:*&v52[OBJC_IVAR___BKSessionDonor_everUsedCarplayAppConfig]];
          }

          v53 = *&v49[OBJC_IVAR___BKEngagementManager_eventController];
          sub_10079E994();

          swift_unknownObjectRelease();
        }

        else
        {

          swift_unknownObjectRelease();
        }
      }

      else
      {
      }
    }

    v54 = BUOnboardingBooksBundleID();
    if (!v54)
    {
      sub_1007A2254();
      v54 = sub_1007A2214();
    }

    v55 = [objc_opt_self() acknowledgementNeededForPrivacyIdentifier:v54];

    v56 = v94;
    if (v55)
    {
      v83 = v47;
      v84 = v45;
      v57 = sub_1007A29D4();
      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        v98[0] = v59;
        *v58 = 136315138;
        swift_getObjectType();
        v60 = sub_1007A3D34();
        v62 = sub_1000070F4(v60, v61, v98);

        *(v58 + 4) = v62;
        _os_log_impl(&_mh_execute_header, v56, v57, "%s showing privacy acknowledgement", v58, 0xCu);
        sub_1000074E0(v59);
      }

      sub_1001F1160(&unk_100AE0B30);
      v63 = swift_allocObject();
      *(v63 + 16) = xmmword_10080B690;
      v97 = v18;
      v64 = v86;
      sub_1007A2154();
      v65 = v89;
      sub_100796C94();
      v66 = v87;
      v67 = v90;
      (*(v87 + 16))(v85, v64, v90);
      type metadata accessor for BundleFinder();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v69 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
      v71 = v91;
      v70 = v92;
      (*(v91 + 16))(v88, v65, v92);
      v72 = sub_1007A22D4();
      v74 = v73;
      (*(v71 + 8))(v65, v70);
      v75 = v64;
      v18 = v97;
      (*(v66 + 8))(v75, v67);
      *(v63 + 32) = v72;
      *(v63 + 40) = v74;
      v76 = objc_allocWithZone(CPAlertTemplate);
      isa = sub_1007A25D4().super.isa;

      sub_10000A7C4(0, &qword_100ADDB30);
      v78 = sub_1007A25D4().super.isa;
      v79 = [v76 initWithTitleVariants:isa actions:v78];

      sub_10000A7C4(0, &qword_100AD1E10);
      v80 = swift_allocObject();
      *(v80 + 16) = v18;
      *(v80 + 24) = v79;
      v18;
      v81 = v79;
      sub_1007A2CD4();

      sub_1004FE5FC();

      v45 = v84;
      v47 = v83;
    }
  }
}

uint64_t sub_1005004C0(char *a1, void *a2)
{
  v4 = sub_1007A29D4();
  if (qword_100AD1530 != -1)
  {
    swift_once();
  }

  v5 = qword_100AE15E0;
  result = os_log_type_enabled(qword_100AE15E0, v4);
  if (result)
  {
    v7 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v7 = 136315394;
    swift_getObjectType();
    v8 = sub_1007A3D34();
    v10 = sub_1000070F4(v8, v9, &v22);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_1000070F4(0xD000000000000015, 0x80000001008DA310, &v22);
    _os_log_impl(&_mh_execute_header, v5, v4, "%s %s", v7, 0x16u);
    swift_arrayDestroy();
  }

  v11 = *&a1[OBJC_IVAR___BKCarPlayController_dataManager];
  if (v11 && *&a1[OBJC_IVAR___BKCarPlayController_presenter])
  {
    v12 = *(v11 + OBJC_IVAR____TtC5Books18CarPlayDataManager_player);
    v13 = *&a1[OBJC_IVAR___BKCarPlayController_playbackRatesTemplate];
    *&a1[OBJC_IVAR___BKCarPlayController_playbackRatesTemplate] = a2;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v14 = a2;

    v15 = [v12 precisionRates];
    sub_10000A7C4(0, &qword_100AD6750);
    v16 = sub_1007A25E4();

    [v12 playbackRate];
    v18 = v17;
    type metadata accessor for CarPlayPresenter();
    sub_1003606DC(v14, v16, v18);

    sub_10000A7C4(0, &qword_100AD1E10);
    v19 = swift_allocObject();
    *(v19 + 16) = a1;
    *(v19 + 24) = v14;
    v20 = v14;
    v21 = a1;
    sub_1007A2CD4();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1005007E8(char *a1, void *a2)
{
  v4 = sub_1007A29D4();
  if (qword_100AD1530 != -1)
  {
    swift_once();
  }

  v5 = qword_100AE15E0;
  if (os_log_type_enabled(qword_100AE15E0, v4))
  {
    v6 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v6 = 136315394;
    swift_getObjectType();
    v7 = sub_1007A3D34();
    v9 = sub_1000070F4(v7, v8, &v16);

    *(v6 + 4) = v9;
    *(v6 + 12) = 2080;
    *(v6 + 14) = sub_1000070F4(0xD000000000000017, 0x80000001008D9FF0, &v16);
    _os_log_impl(&_mh_execute_header, v5, v4, "%s %s", v6, 0x16u);
    swift_arrayDestroy();
  }

  v10 = *&a1[OBJC_IVAR___BKCarPlayController_tocTemplate];
  *&a1[OBJC_IVAR___BKCarPlayController_tocTemplate] = a2;
  v11 = a2;

  sub_10000A7C4(0, &qword_100AD1E10);
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = v11;
  v13 = v11;
  v14 = a1;
  sub_1007A2CD4();
}

void sub_1005009F0(uint64_t a1)
{
  v2 = sub_1007A29D4();
  if (qword_100AD1530 != -1)
  {
    swift_once();
  }

  v3 = qword_100AE15E0;
  if (os_log_type_enabled(qword_100AE15E0, v2))
  {
    v4 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v4 = 136315394;
    swift_getObjectType();
    v5 = sub_1007A3D34();
    v7 = sub_1000070F4(v5, v6, &v11);

    *(v4 + 4) = v7;
    *(v4 + 12) = 2080;
    *(v4 + 14) = sub_1000070F4(0xD000000000000017, 0x80000001008DA170, &v11);
    _os_log_impl(&_mh_execute_header, v3, v2, "%s %s", v4, 0x16u);
    swift_arrayDestroy();
  }

  v8 = *(a1 + OBJC_IVAR___BKCarPlayController_playbackRatesTemplate);
  if (v8)
  {
    sub_10000A7C4(0, &qword_100ADDB28);
    v9 = v8;
    isa = sub_1007A25D4().super.isa;
    [v9 updateSections:isa];
  }
}

void sub_100500BF4(uint64_t a1)
{
  v2 = sub_1007A29D4();
  if (qword_100AD1530 != -1)
  {
    swift_once();
  }

  v3 = qword_100AE15E0;
  if (os_log_type_enabled(qword_100AE15E0, v2))
  {
    v4 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v4 = 136315394;
    swift_getObjectType();
    v5 = sub_1007A3D34();
    v7 = sub_1000070F4(v5, v6, &v20);

    *(v4 + 4) = v7;
    *(v4 + 12) = 2080;
    *(v4 + 14) = sub_1000070F4(0xD000000000000013, 0x80000001008CAC30, &v20);
    _os_log_impl(&_mh_execute_header, v3, v2, "%s %s", v4, 0x16u);
    swift_arrayDestroy();
  }

  v8 = *(a1 + OBJC_IVAR___BKCarPlayController_listenNowTemplate);
  if (v8)
  {
    sub_10000A7C4(0, &qword_100ADDB28);
    v9 = v8;
    isa = sub_1007A25D4().super.isa;
    [v9 updateSections:isa];

    v11 = [*(a1 + OBJC_IVAR___BKCarPlayController_interfaceController) topTemplate];
    v12 = OBJC_IVAR___BKCarPlayController_tocTemplate;
    v13 = *(a1 + OBJC_IVAR___BKCarPlayController_tocTemplate);
    if (v11)
    {
      v14 = v11;
      if (v13)
      {
        sub_10000A7C4(0, &unk_100AE8200);
        v15 = v13;
        v16 = sub_1007A3184();

        if (v16)
        {
          return;
        }

        goto LABEL_15;
      }

      v18 = 0;
    }

    else
    {
      v17 = v13;

      if (!v13)
      {
        return;
      }

      v9 = v17;
    }

LABEL_15:
    v19 = *(a1 + v12);
    *(a1 + v12) = 0;
  }
}

uint64_t sub_100500EA0(char *a1)
{
  v2 = sub_1007A29D4();
  if (qword_100AD1530 != -1)
  {
    swift_once();
  }

  v3 = qword_100AE15E0;
  result = os_log_type_enabled(qword_100AE15E0, v2);
  if (result)
  {
    v5 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v5 = 136315394;
    swift_getObjectType();
    v6 = sub_1007A3D34();
    v8 = sub_1000070F4(v6, v7, &v15);

    *(v5 + 4) = v8;
    *(v5 + 12) = 2080;
    *(v5 + 14) = sub_1000070F4(0xD000000000000018, 0x80000001008DA150, &v15);
    _os_log_impl(&_mh_execute_header, v3, v2, "%s %s", v5, 0x16u);
    swift_arrayDestroy();
  }

  v9 = *&a1[OBJC_IVAR___BKCarPlayController_recentsTemplate];
  if (v9)
  {
    sub_10000A7C4(0, &qword_100ADDB28);
    v10 = v9;
    isa = sub_1007A25D4().super.isa;
    [v10 updateSections:isa];

    sub_10000A7C4(0, &qword_100AD1E10);
    v12 = swift_allocObject();
    *(v12 + 16) = a1;
    *(v12 + 24) = v10;
    v13 = v10;
    v14 = a1;
    sub_1007A2CD4();
  }

  return result;
}

void sub_100501108(char *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1007A29D4();
  if (qword_100AD1530 != -1)
  {
    swift_once();
  }

  v7 = qword_100AE15E0;
  if (os_log_type_enabled(qword_100AE15E0, v6))
  {
    v8 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v8 = 136315394;
    swift_getObjectType();
    v9 = sub_1007A3D34();
    v11 = sub_1000070F4(v9, v10, &v23);

    *(v8 + 4) = v11;
    *(v8 + 12) = 2080;
    *(v8 + 14) = sub_1000070F4(0xD000000000000026, 0x80000001008DA190, &v23);
    _os_log_impl(&_mh_execute_header, v7, v6, "%s %s", v8, 0x16u);
    swift_arrayDestroy();
  }

  v12 = *&a1[OBJC_IVAR___BKCarPlayController_tocTemplate];
  if (v12)
  {
    v22 = v12;
    v13 = [v22 title];
    if (!v13)
    {
LABEL_12:
      sub_10000A7C4(0, &qword_100AD1E10);
      *(swift_allocObject() + 16) = a1;
      v20 = a1;
      sub_1007A2CD4();

      return;
    }

    v14 = v13;
    v15 = sub_1007A2254();
    v17 = v16;

    if (v15 == a2 && v17 == a3)
    {
    }

    else
    {
      v19 = sub_1007A3AB4();

      if ((v19 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    sub_10000A7C4(0, &qword_100ADDB28);
    isa = sub_1007A25D4().super.isa;
    [v22 updateSections:isa];
  }
}

uint64_t sub_100501418(char *a1)
{
  v2 = sub_1007A29D4();
  if (qword_100AD1530 != -1)
  {
    swift_once();
  }

  v3 = qword_100AE15E0;
  result = os_log_type_enabled(qword_100AE15E0, v2);
  if (result)
  {
    v5 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v5 = 136315394;
    swift_getObjectType();
    v6 = sub_1007A3D34();
    v8 = sub_1000070F4(v6, v7, &v10);

    *(v5 + 4) = v8;
    *(v5 + 12) = 2080;
    *(v5 + 14) = sub_1000070F4(0xD00000000000001CLL, 0x80000001008DA1C0, &v10);
    _os_log_impl(&_mh_execute_header, v3, v2, "%s %s", v5, 0x16u);
    swift_arrayDestroy();
  }

  if (*&a1[OBJC_IVAR___BKCarPlayController_tocTemplate])
  {
    sub_10000A7C4(0, &qword_100AD1E10);
    *(swift_allocObject() + 16) = a1;
    v9 = a1;
    sub_1007A2CD4();
  }

  return result;
}

void sub_100501624(uint64_t a1, uint64_t a2)
{
  v4 = sub_1007A29D4();
  if (qword_100AD1530 != -1)
  {
    swift_once();
  }

  v5 = qword_100AE15E0;
  if (os_log_type_enabled(qword_100AE15E0, v4))
  {
    v6 = swift_slowAlloc();
    v14[0] = swift_slowAlloc();
    *v6 = 136315394;
    swift_getObjectType();
    v7 = sub_1007A3D34();
    v9 = sub_1000070F4(v7, v8, v14);

    *(v6 + 4) = v9;
    *(v6 + 12) = 2080;
    *(v6 + 14) = sub_1000070F4(0xD000000000000010, 0x80000001008DA060, v14);
    _os_log_impl(&_mh_execute_header, v5, v4, "%s %s", v6, 0x16u);
    swift_arrayDestroy();
  }

  if (*(a1 + OBJC_IVAR___BKCarPlayController_isPushingTemplate))
  {
    sub_1007A29B4();

    sub_10079AB44();
  }

  else
  {
    *(a1 + OBJC_IVAR___BKCarPlayController_isPushingTemplate) = 1;
    v10 = *(a1 + OBJC_IVAR___BKCarPlayController_interfaceController);
    if (v10)
    {
      v11 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v14[4] = sub_1005031FC;
      v14[5] = v11;
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 1107296256;
      v14[2] = sub_1002D63C0;
      v14[3] = &unk_100A20F70;
      v12 = _Block_copy(v14);
      v13 = v10;

      [v13 pushTemplate:a2 animated:1 completion:v12];
      _Block_release(v12);
    }
  }
}

void sub_1005018DC(char a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    Strong[OBJC_IVAR___BKCarPlayController_isPushingTemplate] = 0;
  }

  if ((a1 & 1) == 0 || a2)
  {
    sub_1007A29B4();
    if (qword_100AD1530 != -1)
    {
      swift_once();
    }

    sub_1001F1160(&unk_100AD5090);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_10080B690;
    if (a2)
    {
      swift_getErrorValue();
      a2 = sub_1007A3B84();
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    *(v5 + 56) = &type metadata for String;
    *(v5 + 64) = sub_10000E4C4();
    v8 = 0x206E776F6E6B6E75;
    if (v7)
    {
      v8 = a2;
    }

    v9 = 0xED0000726F727265;
    if (v7)
    {
      v9 = v7;
    }

    *(v5 + 32) = v8;
    *(v5 + 40) = v9;
    sub_10079AB44();
  }
}

id sub_100501A68(uint64_t a1)
{
  v2 = sub_1007A29D4();
  if (qword_100AD1530 != -1)
  {
    swift_once();
  }

  v3 = qword_100AE15E0;
  if (os_log_type_enabled(qword_100AE15E0, v2))
  {
    v4 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v4 = 136315394;
    swift_getObjectType();
    v5 = sub_1007A3D34();
    v7 = sub_1000070F4(v5, v6, &v18);

    *(v4 + 4) = v7;
    *(v4 + 12) = 2080;
    *(v4 + 14) = sub_1000070F4(0x6C706D6554706F70, 0xED00002928657461, &v18);
    _os_log_impl(&_mh_execute_header, v3, v2, "%s %s", v4, 0x16u);
    swift_arrayDestroy();
  }

  v8 = OBJC_IVAR___BKCarPlayController_interfaceController;
  v9 = [*(a1 + OBJC_IVAR___BKCarPlayController_interfaceController) topTemplate];
  v10 = OBJC_IVAR___BKCarPlayController_tocTemplate;
  v11 = *(a1 + OBJC_IVAR___BKCarPlayController_tocTemplate);
  if (v9)
  {
    v12 = v9;
    if (!v11)
    {
      v16 = 0;
      goto LABEL_13;
    }

    sub_10000A7C4(0, &unk_100AE8200);
    v13 = v11;
    v14 = sub_1007A3184();

    if ((v14 & 1) == 0)
    {
      goto LABEL_14;
    }

    v12 = *(a1 + v10);
  }

  else
  {
    if (v11)
    {
      goto LABEL_14;
    }

    v15 = 0;
    v12 = 0;
  }

  *(a1 + v10) = 0;
LABEL_13:

LABEL_14:
  result = *(a1 + v8);
  if (result)
  {

    return [result popTemplateAnimated:1 completion:0];
  }

  return result;
}

id sub_100501CC4(uint64_t a1, void *a2)
{
  v4 = sub_1007A29D4();
  if (qword_100AD1530 != -1)
  {
    swift_once();
  }

  v5 = qword_100AE15E0;
  if (os_log_type_enabled(qword_100AE15E0, v4))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v6 = 136315650;
    swift_getObjectType();
    v8 = sub_1007A3D34();
    v10 = sub_1000070F4(v8, v9, &v18);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2080;
    *(v6 + 14) = sub_1000070F4(0xD000000000000013, 0x80000001008DA110, &v18);
    *(v6 + 22) = 2112;
    *(v6 + 24) = a2;
    *v7 = a2;
    v11 = a2;
    _os_log_impl(&_mh_execute_header, v5, v4, "%s %s: %@", v6, 0x20u);
    sub_100025F24(v7);

    swift_arrayDestroy();
  }

  v12 = OBJC_IVAR___BKCarPlayController_interfaceController;
  result = *(a1 + OBJC_IVAR___BKCarPlayController_interfaceController);
  if (result)
  {
    v14 = [result presentedTemplate];
    if (v14 && (v15 = v14, sub_10000A7C4(0, &unk_100AE8200), v16 = a2, v17 = sub_1007A3184(), v15, v16, (v17 & 1) != 0))
    {
      sub_1007A29B4();

      return sub_10079AB44();
    }

    else
    {
      result = *(a1 + v12);
      if (result)
      {

        return [result presentTemplate:a2 animated:1 completion:0];
      }
    }
  }

  return result;
}

id sub_100501F90(uint64_t a1)
{
  v2 = sub_1007A29D4();
  if (qword_100AD1530 != -1)
  {
    swift_once();
  }

  v3 = qword_100AE15E0;
  if (os_log_type_enabled(qword_100AE15E0, v2))
  {
    v4 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v4 = 136315394;
    swift_getObjectType();
    v5 = sub_1007A3D34();
    v7 = sub_1000070F4(v5, v6, &v9);

    *(v4 + 4) = v7;
    *(v4 + 12) = 2080;
    *(v4 + 14) = sub_1000070F4(0xD000000000000011, 0x80000001008DA130, &v9);
    _os_log_impl(&_mh_execute_header, v3, v2, "%s %s", v4, 0x16u);
    swift_arrayDestroy();
  }

  result = *(a1 + OBJC_IVAR___BKCarPlayController_interfaceController);
  if (result)
  {

    return [result dismissTemplateAnimated:1 completion:0];
  }

  return result;
}

double sub_100502150()
{
  v1 = *(v0 + OBJC_IVAR___BKCarPlayController_interfaceController);
  if (v1 && (v2 = [v1 carTraitCollection]) != 0)
  {
    v3 = v2;
    [v2 displayScale];
    v5 = v4;
    v6 = sub_1007A29D4();
    if (qword_100AD1530 != -1)
    {
      swift_once();
    }

    v7 = qword_100AE15E0;
    if (os_log_type_enabled(qword_100AE15E0, v6))
    {
      v8 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v8 = 136315650;
      swift_getObjectType();
      v9 = sub_1007A3D34();
      v11 = sub_1000070F4(v9, v10, &v19);

      *(v8 + 4) = v11;
      *(v8 + 12) = 2080;
      *(v8 + 14) = sub_1000070F4(0x5379616C70736964, 0xEE002928656C6163, &v19);
      *(v8 + 22) = 2048;
      *(v8 + 24) = v5;
      _os_log_impl(&_mh_execute_header, v7, v6, "%s %s displayScale=%f", v8, 0x20u);
      swift_arrayDestroy();
    }
  }

  else
  {
    v12 = sub_1007A29D4();
    if (qword_100AD1530 != -1)
    {
      swift_once();
    }

    v13 = qword_100AE15E0;
    v5 = 2.0;
    if (os_log_type_enabled(qword_100AE15E0, v12))
    {
      v14 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v14 = 136315394;
      swift_getObjectType();
      v15 = sub_1007A3D34();
      v17 = sub_1000070F4(v15, v16, &v19);

      *(v14 + 4) = v17;
      *(v14 + 12) = 2080;
      *(v14 + 14) = sub_1000070F4(0x5379616C70736964, 0xEE002928656C6163, &v19);
      _os_log_impl(&_mh_execute_header, v13, v12, "%s %s No carPlayTraitCollection() available, returning displayScale=2.", v14, 0x16u);
      swift_arrayDestroy();
    }
  }

  return v5;
}

char *sub_100502464(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_1007A38D4();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = _swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  v12 = _swiftEmptyArrayStorage;
  result = sub_10050266C(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v12;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        sub_10050268C(i, a1);
        sub_1001F1160(&qword_100ADDB58);
        swift_dynamicCast();
        v12 = v3;
        v7 = v3[2];
        v6 = v3[3];
        if (v7 >= v6 >> 1)
        {
          sub_10050266C((v6 > 1), v7 + 1, 1);
          v3 = v12;
        }

        v3[2] = v7 + 1;
        sub_1000076D4(v11, &v3[4 * v7 + 4]);
      }
    }

    else
    {
      v8 = a1 + 32;
      do
      {
        swift_unknownObjectRetain();
        sub_1001F1160(&qword_100ADDB58);
        swift_dynamicCast();
        v12 = v3;
        v10 = v3[2];
        v9 = v3[3];
        if (v10 >= v9 >> 1)
        {
          sub_10050266C((v9 > 1), v10 + 1, 1);
          v3 = v12;
        }

        v3[2] = v10 + 1;
        sub_1000076D4(v11, &v3[4 * v10 + 4]);
        v8 += 8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

char *sub_10050266C(char *a1, int64_t a2, char a3)
{
  result = sub_100502834(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_10050268C(unint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    v2 = sub_1007A38F4();
    if (swift_dynamicCastObjCProtocolConditional())
    {
      return v2;
    }

LABEL_10:
    sub_1007A3744(85);
    v3 = "CPListTemplateItem";
    v4._countAndFlagsBits = 0xD000000000000046;
    goto LABEL_11;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v2 = *((a2 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
  swift_unknownObjectRetain();
  if (swift_dynamicCastObjCProtocolConditional())
  {
    return v2;
  }

  sub_1007A3744(82);
  v3 = "pushPlaybackRates(_:)";
  v4._countAndFlagsBits = 0xD000000000000043;
LABEL_11:
  v4._object = (v3 | 0x8000000000000000);
  sub_1007A23D4(v4);
  v6._object = 0x80000001008DA380;
  v6._countAndFlagsBits = 0xD000000000000012;
  sub_1007A23D4(v6);
  v7._countAndFlagsBits = 0x756F662074756220;
  v7._object = 0xEB0000000020646ELL;
  sub_1007A23D4(v7);
  swift_getObjectType();
  v8._countAndFlagsBits = sub_1007A3D34();
  sub_1007A23D4(v8);

  result = sub_1007A38B4();
  __break(1u);
  return result;
}

char *sub_100502834(char *result, int64_t a2, char a3, char *a4)
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
    sub_1001F1160(&qword_100AD7FB0);
    v10 = swift_allocObject();
    v11 = j__malloc_size_1(v10);
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

id sub_100502944(uint64_t a1, uint64_t a2, char *a3)
{
  v16 = a1;
  v17 = a2;
  v4 = sub_1007A2CF4();
  __chkstk_darwin(v4);
  v5 = sub_1007A1CA4();
  __chkstk_darwin(v5 - 8);
  v6 = sub_1007A2D64();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&a3[OBJC_IVAR____TtC5Books18CarPlayDataManager_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v10 = &a3[OBJC_IVAR____TtC5Books18CarPlayDataManager_lastBookAssetID];
  *v10 = 0;
  *(v10 + 1) = 0;
  v11 = OBJC_IVAR____TtC5Books18CarPlayDataManager_accessQueue;
  sub_10000A7C4(0, &qword_100AD1E10);
  (*(v7 + 104))(v9, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v6);
  sub_1007A1C74();
  v19 = _swiftEmptyArrayStorage;
  sub_10050320C(&qword_100AE8220, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_1001F1160(&unk_100AD1E20);
  sub_100503254();
  sub_1007A3594();
  *&a3[v11] = sub_1007A2DA4();
  v12 = v17;
  *&a3[OBJC_IVAR____TtC5Books18CarPlayDataManager_player] = v16;
  *&a3[OBJC_IVAR____TtC5Books18CarPlayDataManager_libraryProvider] = v12;
  v13 = type metadata accessor for CarPlayDataManager();
  v18.receiver = a3;
  v18.super_class = v13;
  return objc_msgSendSuper2(&v18, "init");
}

void _s5Books17CarPlayControllerC24templateApplicationScene_022didDisconnectInterfaceD0ySo010CPTemplatefG0C_So011CPInterfaceD0CtF_0()
{
  v1 = (v0 + OBJC_IVAR___BKCarPlayController_presenter);
  *v1 = 0;
  v1[1] = 0;
  swift_unknownObjectRelease();
  v2 = (v0 + OBJC_IVAR___BKCarPlayController_dataManager);
  *v2 = 0;
  v2[1] = 0;
  swift_unknownObjectRelease();
  v3 = *(v0 + OBJC_IVAR___BKCarPlayController_interfaceController);
  *(v0 + OBJC_IVAR___BKCarPlayController_interfaceController) = 0;

  v4 = *(v0 + OBJC_IVAR___BKCarPlayController_listenNowTemplate);
  *(v0 + OBJC_IVAR___BKCarPlayController_listenNowTemplate) = 0;

  v5 = *(v0 + OBJC_IVAR___BKCarPlayController_recentsTemplate);
  *(v0 + OBJC_IVAR___BKCarPlayController_recentsTemplate) = 0;

  v6 = *(v0 + OBJC_IVAR___BKCarPlayController_tocTemplate);
  *(v0 + OBJC_IVAR___BKCarPlayController_tocTemplate) = 0;

  v7 = *(v0 + OBJC_IVAR___BKCarPlayController_playbackRatesTemplate);
  *(v0 + OBJC_IVAR___BKCarPlayController_playbackRatesTemplate) = 0;
}

void _s5Books17CarPlayControllerC18templateWillAppear_8animatedySo10CPTemplateC_SbtF_0(void *a1)
{
  if (!*(v1 + OBJC_IVAR___BKCarPlayController_presenter) || !*(v1 + OBJC_IVAR___BKCarPlayController_dataManager))
  {
    return;
  }

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v19 = sub_1006076D8();
  swift_unknownObjectRelease();
  if (v19)
  {
    objc_opt_self();
    v2 = swift_dynamicCastObjCClass();
    if (v2)
    {
      v3 = v2;
      v4 = *(v1 + OBJC_IVAR___BKCarPlayController_listenNowTemplate);
      if (v4)
      {
        sub_10000A7C4(0, &qword_100AE8210);
        v17 = a1;
        v5 = v4;
        v6 = v1;
        v7 = sub_1007A3184();

        if (v7)
        {

          sub_1007A29D4();
          if (qword_100AD1530 != -1)
          {
            swift_once();
          }

          sub_1001F1160(&unk_100AD5090);
          v8 = swift_allocObject();
          *(v8 + 16) = xmmword_10080B690;
          *(v8 + 56) = type metadata accessor for CarPlayListenNowData();
          *(v8 + 64) = sub_10050320C(&qword_100AE8218, type metadata accessor for CarPlayListenNowData);
          *(v8 + 32) = v19;
          v9 = v19;
          sub_10079AB44();

          sub_10035EEC4(v3, v9);
          swift_unknownObjectRelease();

          v10 = v17;
          goto LABEL_25;
        }
      }

      else
      {
        v6 = v1;
        v11 = a1;
      }

      v12 = *(v6 + OBJC_IVAR___BKCarPlayController_recentsTemplate);
      if (v12)
      {
        sub_10000A7C4(0, &qword_100AE8210);
        v13 = v12;
        v14 = sub_1007A3184();

        if (v14)
        {
          sub_1007A29D4();
          if (qword_100AD1530 != -1)
          {
            swift_once();
          }

          sub_1001F1160(&unk_100AD5090);
          v15 = swift_allocObject();
          *(v15 + 16) = xmmword_10080B690;
          *(v15 + 56) = type metadata accessor for CarPlayListenNowData();
          *(v15 + 64) = sub_10050320C(&qword_100AE8218, type metadata accessor for CarPlayListenNowData);
          *(v15 + 32) = v19;
          v16 = v19;
          sub_10079AB44();

          sub_10035F60C(v3, v16);
          swift_unknownObjectRelease();

          v10 = a1;
          goto LABEL_25;
        }

        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }

    v10 = v19;
LABEL_25:

    return;
  }

  swift_unknownObjectRelease();
}

void _s5Books17CarPlayControllerC21templateWillDisappear_8animatedySo10CPTemplateC_SbtF_0(void *a1)
{
  v2 = v1;
  v4 = (v1 + OBJC_IVAR___BKCarPlayController_tocTemplate);
  v5 = *(v1 + OBJC_IVAR___BKCarPlayController_tocTemplate);
  if (v5 && (sub_10000A7C4(0, &unk_100AE8200), v6 = a1, v7 = v5, v8 = sub_1007A3184(), v7, v6, (v8 & 1) != 0) || (v4 = (v2 + OBJC_IVAR___BKCarPlayController_playbackRatesTemplate), (v9 = *(v2 + OBJC_IVAR___BKCarPlayController_playbackRatesTemplate)) != 0) && (sub_10000A7C4(0, &unk_100AE8200), v10 = a1, v11 = v9, v12 = sub_1007A3184(), v11, v10, (v12 & 1) != 0))
  {
    v13 = *v4;
    *v4 = 0;
  }
}

uint64_t sub_10050320C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100503254()
{
  result = qword_100AE8230;
  if (!qword_100AE8230)
  {
    sub_1001F1234(&unk_100AD1E20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE8230);
  }

  return result;
}

uint64_t UIImage.frame(fittedIn:)()
{
  [v0 size];
  CGRectMakeWithSize();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  [v0 alignmentRectInsets];
  sub_1002840F0(v2, v4, v6, v8, v9, v10);
  BCNormalizedInsetsForRects();
  CGRectFitRectInRectAbsoluteNoRounding();

  return BCRectByApplyingNormalizedInsets();
}

uint64_t type metadata accessor for RemoveFromWantToReadActionItem()
{
  result = qword_100AE8290;
  if (!qword_100AE8290)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_100503580@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_100009864(a1, v28);
  sub_100009864(a2, v27);
  sub_100009864(a4, v26);
  v10 = objc_opt_self();
  v11 = [v10 delegate];
  v12 = [v11 serviceCenter];

  v13 = [objc_opt_self() defaultManager];
  v14 = [v10 delegate];
  v15 = [v14 engagementManager];

  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v17 = result;
    v18 = [objc_opt_self() defaultHelper];
    v24 = &type metadata for MenuLibraryOperationProvider;
    v25 = &off_100A266E8;
    v19 = swift_allocObject();
    *&v23 = v19;
    v19[2] = v12;
    v19[3] = v13;
    v19[4] = v15;
    v19[5] = v17;
    v19[6] = v18;
    sub_1000074E0(a4);
    sub_1000074E0(a2);
    sub_1000074E0(a1);
    v20 = *(type metadata accessor for RemoveFromWantToReadActionItem() + 36);
    v21 = enum case for ContextActionType.removeFromWantToRead(_:);
    v22 = sub_100797144();
    (*(*(v22 - 8) + 104))(a5 + v20, v21, v22);
    sub_1000077C0(v28, a5);
    sub_1000077C0(v27, a5 + 40);
    *(a5 + 80) = a3;
    sub_1000077C0(v26, a5 + 88);
    return sub_1000077C0(&v23, a5 + 128);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1005037BC()
{
  v1 = sub_1007971A4();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v13 - v6;
  sub_10000E3E8(v0, v0[3]);
  sub_100797784();
  (*(v2 + 104))(v4, enum case for ContextActionSource.wantToReadEntry(_:), v1);
  sub_100498DFC();
  v8 = sub_1007A2124();
  v9 = *(v2 + 8);
  v9(v4, v1);
  v9(v7, v1);
  if ((v8 & 1) == 0)
  {
    sub_10025FCD8(&v13);
    if (v14)
    {
      sub_1001FF7C8(&v13, &v15);
      sub_10000E3E8(&v15, v16);
      v10 = sub_1007975B4();
      if (v10 != 2)
      {
        v11 = v10;
        sub_1000074E0(&v15);
        return v11 & 1;
      }

      sub_1000074E0(&v15);
    }

    else
    {
      sub_1001FF760(&v13);
    }
  }

  v11 = 0;
  return v11 & 1;
}

uint64_t sub_1005039A8()
{
  v1[14] = v0;
  v2 = sub_10079ACE4();
  v1[15] = v2;
  v1[16] = *(v2 - 8);
  v1[17] = swift_task_alloc();
  sub_1007A26F4();
  v1[18] = sub_1007A26E4();
  v4 = sub_1007A2694();
  v1[19] = v4;
  v1[20] = v3;

  return _swift_task_switch(sub_100503A9C, v4, v3);
}

uint64_t sub_100503A9C()
{
  sub_10025FCD8((v0 + 64));
  if (*(v0 + 88))
  {
    sub_1001FF7C8((v0 + 64), (v0 + 16));
    sub_10000E3E8((v0 + 16), *(v0 + 40));
    v1 = sub_1007975B4();
    if (v1 != 2 && (v1 & 1) != 0)
    {
      sub_10000E3E8((v0 + 16), *(v0 + 40));
      v2 = sub_100797674();
      v4 = v3;

      v5 = HIBYTE(v4) & 0xF;
      if ((v4 & 0x2000000000000000) == 0)
      {
        v5 = v2 & 0xFFFFFFFFFFFFLL;
      }

      if (v5)
      {
        v6 = *(v0 + 112);
        v7 = sub_10000E3E8(v6 + 16, v6[19]);
        v8 = v6[10];
        v9 = v7[1];
        v10 = swift_task_alloc();
        *(v0 + 168) = v10;
        *v10 = v0;
        v10[1] = sub_1002604B0;
        v11 = *(v0 + 112);

        return (sub_1005F46A8)(v11, v0 + 16, v8, v6 + 5, v9);
      }
    }

    sub_1000074E0(v0 + 16);
  }

  else
  {

    sub_1001FF760(v0 + 64);
    sub_10079AC44();
    v13 = sub_10079ACC4();
    v14 = sub_1007A29B4();
    v15 = os_log_type_enabled(v13, v14);
    v17 = *(v0 + 128);
    v16 = *(v0 + 136);
    v18 = *(v0 + 120);
    if (v15)
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "Action doesn't have sufficient information to handle action.", v19, 2u);
    }

    (*(v17 + 8))(v16, v18);
  }

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_100503D14()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10002812C;

  return sub_1005039A8();
}

void *BookReaderInteractionCoordinator.window.getter()
{
  v1 = *(*(v0 + OBJC_IVAR___BKBookReaderInteractionCoordinator_assetViewControllerTracker) + 16);
  v2 = v1;
  return v1;
}

void BookReaderInteractionCoordinator.window.setter(void *a1)
{
  v2 = *(v1 + OBJC_IVAR___BKBookReaderInteractionCoordinator_assetViewControllerTracker);
  v4 = *(v2 + 16);
  *(v2 + 16) = a1;
  v3 = a1;
  sub_10001DA04(v4);
}

void (*BookReaderInteractionCoordinator.window.modify(void *a1))(uint64_t a1, char a2)
{
  v2 = *(v1 + OBJC_IVAR___BKBookReaderInteractionCoordinator_assetViewControllerTracker);
  a1[1] = v2;
  v3 = *(v2 + 16);
  *a1 = v3;
  v4 = v3;
  return sub_100503EAC;
}

void sub_100503EAC(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v8 = *(v4 + 16);
  *(v4 + 16) = *a1;
  v5 = v3;
  v6 = v5;
  if (a2)
  {
    v7 = v5;
    sub_10001DA04(v8);
  }

  else
  {
    sub_10001DA04(v8);
  }
}

uint64_t sub_1005041F4(int a1, int a2, void *aBlock, void *a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  v6 = sub_1007A25E4();
  v4[4] = v6;
  v7 = sub_1007A25E4();
  v4[5] = v7;
  v8 = a4;
  v9 = swift_task_alloc();
  v4[6] = v9;
  *v9 = v4;
  v9[1] = sub_1005042FC;

  return (sub_1005045A4)(v6, v7);
}

uint64_t sub_1005042FC()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = *v1;

  if (v2)
  {
    v6 = sub_1007967C4();

    v7 = v6;
    v8 = 0;
  }

  else
  {
    sub_1001F1160(&qword_100AE8378);
    isa = sub_1007A2024().super.isa;

    v8 = isa;
    v7 = 0;
    v6 = isa;
  }

  v10 = *(v3 + 24);
  (v10)[2](v10, v8, v7);

  _Block_release(v10);
  v11 = *(v5 + 8);

  return v11();
}

uint64_t sub_1005044E4()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100009A34;

  return sub_1005041F4(v2, v3, v5, v4);
}

uint64_t sub_1005045A4(uint64_t a1, uint64_t a2)
{
  v2[4] = a1;
  v2[5] = a2;
  v3 = sub_1007990E4();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  v4 = sub_100798FE4();
  v2[9] = v4;
  v2[10] = *(v4 - 8);
  v2[11] = swift_task_alloc();

  return _swift_task_switch(sub_1005046C0, 0, 0);
}

uint64_t sub_1005046C0()
{
  v0[2] = v0[4];
  sub_1001F1160(&unk_100AD61F0);
  sub_10023D44C();
  if (sub_1007A28A4() & 1) != 0 || (v0[3] = v0[5], (sub_1007A28A4()))
  {
    v2 = v0[4];
    v1 = v0[5];
    sub_100798F74();
    sub_1007990F4();
    v3 = swift_task_alloc();
    v0[12] = v3;
    *v3 = v0;
    v3[1] = sub_100504864;
    v4 = v0[8];

    return MCatalogService.fetch(bookAssets:audiobookAssets:relationships:views:additionalParameters:batchSize:metadata:)(v2, v1, 0, 0, 0, 150, v4);
  }

  else
  {
    v5 = sub_1001EF200(_swiftEmptyArrayStorage);

    v6 = v0[1];

    return v6(v5);
  }
}

uint64_t sub_100504864(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 88);
  v5 = *(*v2 + 80);
  v6 = *(*v2 + 72);
  v7 = *(*v2 + 64);
  v8 = *(*v2 + 56);
  v9 = *(*v2 + 48);
  *(v3 + 104) = a1;
  *(v3 + 112) = v1;

  (*(v8 + 8))(v7, v9);
  (*(v5 + 8))(v4, v6);
  if (v1)
  {
    v10 = sub_100504BB8;
  }

  else
  {
    v10 = sub_100504A3C;
  }

  return _swift_task_switch(v10, 0, 0);
}

uint64_t sub_100504A3C()
{
  v1 = *(v0 + 104);
  v2 = -1;
  v3 = -1 << *(v1 + 32);
  if (-v3 < 64)
  {
    v2 = ~(-1 << -v3);
  }

  v4 = v2 & *(v1 + 64);
  v5 = (63 - v3) >> 6;
  result = swift_bridgeObjectRetain_n();
  v7 = 0;
  if (v4)
  {
    while (1)
    {
      v8 = v7;
LABEL_9:
      v9 = __clz(__rbit64(v4));
      v4 &= v4 - 1;
      v10 = *(*(v1 + 56) + ((v8 << 9) | (8 * v9)));
      sub_100799344();

      sub_100799354();

      if (!v4)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v5)
    {
      break;
    }

    v4 = *(v1 + 64 + 8 * v8);
    ++v7;
    if (v4)
    {
      v7 = v8;
      goto LABEL_9;
    }
  }

  v11 = *(v0 + 104);

  v12 = sub_100581E84(v11);

  v13 = *(v0 + 8);

  return v13(v12);
}

uint64_t sub_100504BB8()
{

  v1 = *(v0 + 8);

  return v1();
}

id sub_100504C28()
{
  v0 = sub_10079ACE4();
  sub_100009A38(v0, qword_100AE8380);
  sub_100008B98(v0, qword_100AE8380);
  result = BCSpotlightIndexLog();
  if (result)
  {
    return sub_10079ACF4();
  }

  __break(1u);
  return result;
}

uint64_t _sSo16BKLibraryIndexerC5BooksE9associate15assetIdentifier5title11isAudiobook12attributeSetySS_SSSbSo025CSSearchableItemAttributeK0CtFZ_0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  v25[0] = a4;
  v25[1] = a6;
  v10 = sub_100796814();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a5)
  {
    sub_100282BC4();
    v14 = sub_1007A3D34();
    v16 = v15;
    if (qword_100AD1B40 != -1)
    {
      swift_once();
    }

    v17 = qword_100B23A00;
  }

  else
  {
    v16 = 0xED0000797469746ELL;
    v14 = 0x457070416B6F6F42;
    if (qword_100AD1270 != -1)
    {
      swift_once();
    }

    v17 = qword_100B22E60;
  }

  v18 = sub_100796314();
  sub_100008B98(v18, v17);
  sub_1007962F4();
  v19 = sub_100796804();
  v21 = v20;
  (*(v11 + 8))(v13, v10);
  v24 = sub_100019158(_swiftEmptyArrayStorage);
  v23.value._object = v21;
  v23.value._countAndFlagsBits = v19;
  v26._countAndFlagsBits = a1;
  v26._object = a2;
  v27._countAndFlagsBits = v14;
  v27._object = v16;
  v28._countAndFlagsBits = a3;
  v28._object = v25[0];
  v29.value._countAndFlagsBits = 0;
  v29.value._object = 0;
  sub_1007A2FD4(v26, v27, v28, v29, _swiftEmptyArrayStorage, v23, _swiftEmptyArrayStorage, v24, 0);
}

uint64_t _sSo16BKLibraryIndexerC5BooksE18extraConfigurationSSSgyFZ_0()
{
  v23 = _swiftEmptyArrayStorage;
  v22 = _swiftEmptyArrayStorage;

  sub_1001F1160(&qword_100AE0B48);
  sub_100005920(&qword_100AE8398, &qword_100AE0B48);
  if (sub_1007A28A4())
  {
    v22 = _swiftEmptyArrayStorage;
    v0 = _swiftEmptyArrayStorage;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1003BD780(0, _swiftEmptyArrayStorage[2] + 1, 1);
      v0 = v22;
    }

    v2 = v0[2];
    v1 = v0[3];
    if (v2 >= v1 >> 1)
    {
      sub_1003BD780((v1 > 1), v2 + 1, 1);
      v0 = v22;
    }

    v0[2] = v2 + 1;
    v0[v2 + 4] = _swiftEmptyArrayStorage;
  }

  else
  {
    v0 = _swiftEmptyArrayStorage;
  }

  sub_100505364(&v23);
  v3 = v0[2];
  if (v3)
  {
    sub_1003BD0CC(0, v3, 0);
    v4 = 32;
    v5 = _swiftEmptyArrayStorage;
    do
    {

      v6 = sub_1007A37A4();
      v8 = v7;

      v22 = v5;
      v10 = v5[2];
      v9 = v5[3];
      if (v10 >= v9 >> 1)
      {
        sub_1003BD0CC((v9 > 1), v10 + 1, 1);
        v5 = v22;
      }

      v5[2] = v10 + 1;
      v11 = &v5[2 * v10];
      v11[4] = v6;
      v11[5] = v8;
      v4 += 8;
      --v3;
    }

    while (v3);
  }

  else
  {

    v5 = _swiftEmptyArrayStorage;
  }

  v22 = v5;
  sub_1001F1160(&unk_100AD61F0);
  sub_100005920(&qword_100AEB190, &unk_100AD61F0);
  v12 = sub_1007A20B4();
  v14 = v13;

  if (qword_100AD17E0 != -1)
  {
    swift_once();
  }

  v15 = sub_10079ACE4();
  sub_100008B98(v15, qword_100AE8380);

  v16 = sub_10079ACC4();
  v17 = sub_1007A2994();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v22 = v19;
    *v18 = 136315138;
    *(v18 + 4) = sub_1000070F4(v12, v14, &v22);
    _os_log_impl(&_mh_execute_header, v16, v17, "Extra configuration: '%s'", v18, 0xCu);
    sub_1000074E0(v19);
  }

  v20 = HIBYTE(v14) & 0xF;
  if ((v14 & 0x2000000000000000) == 0)
  {
    v20 = v12 & 0xFFFFFFFFFFFFLL;
  }

  if (!v20)
  {

    return 0;
  }

  return v12;
}

uint64_t sub_100505364(uint64_t a1)
{
  v2 = sub_1001F1160(&qword_100AE0B48);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1005053CC()
{
  v0 = sub_100796314();
  sub_100009A38(v0, qword_100B23498);
  sub_100008B98(v0, qword_100B23498);
  return sub_1007962E4();
}

uint64_t sub_100505430()
{
  v0 = sub_1001F1160(&qword_100AD5D10);
  __chkstk_darwin(v0 - 8);
  v59 = &v36 - v1;
  v2 = sub_1001F1160(&qword_100AD5CC0);
  __chkstk_darwin(v2 - 8);
  v56 = &v36 - v3;
  v58 = sub_1007967F4();
  v63 = *(v58 - 8);
  __chkstk_darwin(v58);
  v52 = (&v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v54 = sub_100796CF4();
  v62 = *(v54 - 8);
  __chkstk_darwin(v54);
  v53 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v36 - v7;
  v9 = sub_1007A21D4();
  v60 = *(v9 - 8);
  v10 = v60;
  __chkstk_darwin(v9);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v36 - v14;
  v57 = sub_100796814();
  v61 = *(v57 - 8);
  __chkstk_darwin(v57);
  v50 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001F1160(&qword_100AE8470);
  v17 = sub_1001F1160(&qword_100AD3AA0);
  v55 = v17;
  v18 = *(v17 - 8);
  v48 = *(v18 + 72);
  v19 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v20 = swift_allocObject();
  v49 = v20;
  *(v20 + 16) = xmmword_10080EFF0;
  v51 = v20 + v19;
  v45 = *(v17 + 48);
  *(v20 + v19) = 0;
  sub_1007A2154();
  sub_100796C94();
  v47 = *(v10 + 16);
  v36 = v12;
  v21 = v9;
  v47(v12, v15, v9);
  v22 = v62;
  v46 = *(v62 + 16);
  v23 = v54;
  v46(v53, v8, v54);
  v44 = type metadata accessor for BundleFinder();
  v24 = v52;
  *v52 = v44;
  v42 = enum case for LocalizedStringResource.BundleDescription.forClass(_:);
  v25 = *(v63 + 104);
  v63 += 104;
  v43 = v25;
  v25(v24);
  sub_100796834();
  v26 = *(v22 + 8);
  v62 = v22 + 8;
  v41 = v26;
  v26(v8, v23);
  v27 = *(v60 + 8);
  v60 += 8;
  v40 = v27;
  v27(v15, v21);
  v28 = *(v61 + 56);
  v61 += 56;
  v39 = v28;
  v28(v56, 1, 1, v57);
  v29 = sub_100796104();
  v30 = *(v29 - 8);
  v37 = *(v30 + 56);
  v38 = v30 + 56;
  v37(v59, 1, 1, v29);
  v31 = v51;
  sub_100796124();
  v45 = (v31 + v48);
  v48 = *(v55 + 48);
  *v45 = 1;
  sub_1007A2154();
  sub_100796C94();
  v47(v36, v15, v21);
  v32 = v54;
  v46(v53, v8, v54);
  v33 = v52;
  *v52 = v44;
  v43(v33, v42, v58);
  sub_100796834();
  v41(v8, v32);
  v40(v15, v21);
  v39(v56, 1, 1, v57);
  v37(v59, 1, 1, v29);
  sub_100796124();
  v34 = sub_1001EF214(v49);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_100B234B0 = v34;
  return result;
}

uint64_t sub_100505BD8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x73756F6976657270;
  }

  else
  {
    v3 = 1954047342;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  if (*a2)
  {
    v5 = 0x73756F6976657270;
  }

  else
  {
    v5 = 1954047342;
  }

  if (*a2)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1007A3AB4();
  }

  return v8 & 1;
}

unint64_t sub_100505C7C()
{
  result = qword_100AE83A0;
  if (!qword_100AE83A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE83A0);
  }

  return result;
}

Swift::Int sub_100505CD0()
{
  sub_1007A3C04();
  _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();

  return sub_1007A3C44();
}

uint64_t sub_100505D4C()
{
  _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();
}

Swift::Int sub_100505DB4()
{
  sub_1007A3C04();
  _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();

  return sub_1007A3C44();
}

uint64_t sub_100505E2C@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_100A0D3D0;
  v8._object = v3;
  v5 = sub_1007A3964(v4, v8);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_100505E8C(uint64_t *a1@<X8>)
{
  v2 = 1954047342;
  if (*v1)
  {
    v2 = 0x73756F6976657270;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

unint64_t sub_100505EC8()
{
  result = qword_100AE83A8;
  if (!qword_100AE83A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE83A8);
  }

  return result;
}

unint64_t sub_100505F20()
{
  result = qword_100AE83B0;
  if (!qword_100AE83B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE83B0);
  }

  return result;
}

unint64_t sub_100505F78()
{
  result = qword_100AE83B8;
  if (!qword_100AE83B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE83B8);
  }

  return result;
}

unint64_t sub_100505FD0()
{
  result = qword_100AE83C0;
  if (!qword_100AE83C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE83C0);
  }

  return result;
}

unint64_t sub_100506024()
{
  result = qword_100AE83C8;
  if (!qword_100AE83C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE83C8);
  }

  return result;
}

unint64_t sub_100506078()
{
  result = qword_100AE83D0;
  if (!qword_100AE83D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE83D0);
  }

  return result;
}

unint64_t sub_1005060D0()
{
  result = qword_100AE83D8;
  if (!qword_100AE83D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE83D8);
  }

  return result;
}

unint64_t sub_1005061AC()
{
  result = qword_100AE83E0;
  if (!qword_100AE83E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE83E0);
  }

  return result;
}

uint64_t sub_100506200(uint64_t a1)
{
  v2 = sub_1005061AC();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100506250()
{
  result = qword_100AE83E8;
  if (!qword_100AE83E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE83E8);
  }

  return result;
}

unint64_t sub_1005062A8()
{
  result = qword_100AE83F0;
  if (!qword_100AE83F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE83F0);
  }

  return result;
}

unint64_t sub_100506300()
{
  result = qword_100AE83F8;
  if (!qword_100AE83F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE83F8);
  }

  return result;
}

uint64_t sub_100506354()
{
  if (qword_100AD17F0 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1005063B0(uint64_t a1)
{
  v2 = sub_1005060D0();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_100506454()
{
  result = qword_100AE8410;
  if (!qword_100AE8410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE8410);
  }

  return result;
}

unint64_t sub_1005064AC()
{
  result = qword_100AE8418;
  if (!qword_100AE8418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE8418);
  }

  return result;
}

uint64_t sub_100506538()
{
  v0 = sub_1007967F4();
  v25 = *(v0 - 8);
  v26 = v0;
  __chkstk_darwin(v0);
  v2 = (&v21 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  v3 = sub_100796814();
  v27 = *(v3 - 8);
  __chkstk_darwin(v3);
  v24 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_100796CF4();
  v5 = *(v23 - 8);
  __chkstk_darwin(v23);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v21 - v9;
  v11 = sub_1007A21D4();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v21 - v16;
  v22 = v3;
  sub_100009A38(v3, qword_100B234B8);
  v21 = sub_100008B98(v3, qword_100B234B8);
  sub_1007A2154();
  sub_100796C94();
  (*(v12 + 16))(v14, v17, v11);
  v18 = v23;
  (*(v5 + 16))(v7, v10, v23);
  *v2 = type metadata accessor for BundleFinder();
  (*(v25 + 104))(v2, enum case for LocalizedStringResource.BundleDescription.forClass(_:), v26);
  v19 = v24;
  sub_100796834();
  (*(v5 + 8))(v10, v18);
  (*(v12 + 8))(v17, v11);
  return (*(v27 + 32))(v21, v19, v22);
}

uint64_t sub_1005068DC()
{
  v0 = sub_1001F1160(&qword_100AE8450);
  __chkstk_darwin(v0 - 8);
  v1 = sub_1001F1160(&qword_100AE8458);
  __chkstk_darwin(v1);
  sub_1005075C8();
  sub_1007961D4();
  v3._countAndFlagsBits = 0x206F74206E727554;
  v3._object = 0xE800000000000000;
  sub_1007961C4(v3);
  swift_getKeyPath();
  sub_1001F1160(&qword_100AE8460);
  sub_1007961B4();

  v4._countAndFlagsBits = 0x6E69206567617020;
  v4._object = 0xE900000000000020;
  sub_1007961C4(v4);
  swift_getKeyPath();
  sub_1001F1160(&qword_100AE8468);
  sub_1007961B4();

  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  sub_1007961C4(v5);
  sub_1007961F4();
  return sub_1007961A4();
}

uint64_t sub_100506AE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[29] = a3;
  v4[30] = a4;
  v4[27] = a1;
  v4[28] = a2;
  sub_1007A26F4();
  v4[31] = sub_1007A26E4();
  v6 = sub_1007A2694();
  v4[32] = v6;
  v4[33] = v5;

  return _swift_task_switch(sub_100506B80, v6, v5);
}

uint64_t sub_100506B80()
{
  sub_100795A94();
  sub_100795DF4();
  v1 = swift_task_alloc();
  *(v0 + 272) = v1;
  *v1 = v0;
  v1[1] = sub_100506C34;

  return sub_1004F39A0(v0 + 16);
}

uint64_t sub_100506C34()
{
  v2 = *v1;
  *(*v1 + 280) = v0;

  if (v0)
  {
    v3 = *(v2 + 256);
    v4 = *(v2 + 264);
    v5 = sub_100506F54;
  }

  else
  {
    sub_1002A411C(v2 + 16);

    swift_unknownObjectRelease();
    *(v2 + 208) = *(v2 + 136);
    sub_100007840(v2 + 208, &qword_100AE6A50);
    *(v2 + 200) = *(v2 + 144);
    v6 = v2 + 200;
    sub_100007840(v6, &qword_100AE6A50);
    v3 = *(v6 + 56);
    v4 = *(v6 + 64);
    v5 = sub_100506DB0;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_100506DB0()
{

  sub_100795DF4();
  v1 = *(v0 + 288);
  v2 = [objc_opt_self() delegate];
  v3 = [v2 menuController];

  v4 = sub_1005C99B8();
  if (v4)
  {
    *(v0 + 152) = *(v0 + 224);
    v5 = *(v0 + 232);
    if (v1)
    {
      v6 = "books_pageBackward:";
    }

    else
    {
      v6 = "books_pageForward:";
    }

    *(v0 + 168) = *(v0 + 240);
    *(v0 + 176) = &type metadata for BookReaderNavigatePageInBookIntent;
    *(v0 + 160) = v5;

    v7 = sub_100699F0C(v6, v0 + 152);
    sub_100007840(v0 + 152, &unk_100AD5B40);
    if (v7)
    {
      sub_100795D24();

      v8 = *(v0 + 8);
      goto LABEL_9;
    }
  }

  sub_100507EE8();
  swift_allocError();
  *v9 = 1;
  swift_willThrow();
  v8 = *(v0 + 8);
LABEL_9:

  return v8();
}

uint64_t sub_100506F54()
{

  sub_1002A411C(v0 + 16);

  swift_unknownObjectRelease();
  *(v0 + 192) = *(v0 + 136);
  sub_100007840(v0 + 192, &qword_100AE6A50);
  *(v0 + 184) = *(v0 + 144);
  sub_100007840(v0 + 184, &qword_100AE6A50);
  sub_100507EE8();
  swift_allocError();
  *v1 = 0;
  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100507094(uint64_t a1)
{
  v4 = *v1;
  v5 = v1[1];
  v6 = v1[2];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002812C;

  return sub_100506AE4(a1, v4, v5, v6);
}

uint64_t sub_100507148@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10050763C();
  *a1 = result;
  a1[1] = v3;
  a1[2] = v4;
  return result;
}

uint64_t sub_100507174(uint64_t a1)
{
  v2 = sub_1005075C8();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_1005071B4()
{
  result = qword_100AE8420;
  if (!qword_100AE8420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE8420);
  }

  return result;
}

uint64_t sub_100507208@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v19[1] = a1;
  v22 = a2;
  v20 = sub_1007967F4();
  v2 = *(v20 - 8);
  __chkstk_darwin(v20);
  v4 = (v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = sub_100796CF4();
  v5 = *(v21 - 8);
  __chkstk_darwin(v21);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = v19 - v9;
  v23 = sub_1007A21D4();
  v11 = *(v23 - 8);
  __chkstk_darwin(v23);
  v13 = v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = v19 - v15;
  sub_1007A2154();
  sub_100796C94();
  (*(v11 + 16))(v13, v16, v23);
  v17 = v21;
  (*(v5 + 16))(v7, v10, v21);
  *v4 = type metadata accessor for BundleFinder();
  (*(v2 + 104))(v4, enum case for LocalizedStringResource.BundleDescription.forClass(_:), v20);
  sub_100796834();
  (*(v5 + 8))(v10, v17);
  return (*(v11 + 8))(v16, v23);
}

unint64_t sub_1005075C8()
{
  result = qword_100AE8428;
  if (!qword_100AE8428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE8428);
  }

  return result;
}

uint64_t sub_10050763C()
{
  v55 = sub_100796274();
  v64 = *(v55 - 8);
  __chkstk_darwin(v55);
  v54 = &v39 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1 = sub_1001F1160(&qword_100AD5CB0);
  __chkstk_darwin(v1 - 8);
  v53 = &v39 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v52 = &v39 - v4;
  v5 = sub_1001F1160(&qword_100AD5CC0);
  __chkstk_darwin(v5 - 8);
  v50 = &v39 - v6;
  v59 = sub_1007967F4();
  v62 = *(v59 - 8);
  __chkstk_darwin(v59);
  v8 = (&v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v48 = sub_100796CF4();
  v9 = *(v48 - 8);
  __chkstk_darwin(v48);
  v57 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v39 - v12;
  v14 = sub_1007A21D4();
  v56 = v14;
  v61 = *(v14 - 8);
  v15 = v61;
  __chkstk_darwin(v14);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v39 - v19;
  v60 = sub_100796814();
  v63 = *(v60 - 8);
  __chkstk_darwin(v60);
  v58 = &v39 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001F1160(&qword_100AD57D0);
  sub_100795B74();
  v65 = 0u;
  v66 = 0u;
  *&v67 = 0;
  sub_100795B64();
  v51 = sub_100795AA4();
  v49 = sub_1001F1160(&qword_100AE8440);
  sub_1007A2154();
  sub_100796C94();
  v47 = *(v15 + 2);
  v47(v17, v20, v14);
  v46 = *(v9 + 16);
  v22 = v48;
  v46(v57, v13, v48);
  v45 = type metadata accessor for BundleFinder();
  *v8 = v45;
  v43 = enum case for LocalizedStringResource.BundleDescription.forClass(_:);
  v23 = *(v62 + 104);
  v62 += 104;
  v44 = v23;
  v23(v8);
  sub_100796834();
  v24 = *(v9 + 8);
  v41 = v9 + 8;
  v42 = v24;
  v25 = v22;
  v24(v13, v22);
  v26 = *(v61 + 1);
  v61 += 8;
  v40 = v26;
  v27 = v56;
  v26(v20, v56);
  sub_1007A2154();
  sub_100796C94();
  v47(v17, v20, v27);
  v46(v57, v13, v25);
  *v8 = v45;
  v44(v8, v43, v59);
  v28 = v50;
  sub_100796834();
  v42(v13, v25);
  v40(v20, v56);
  v62 = *(v63 + 56);
  v63 += 56;
  v29 = v28;
  (v62)(v28, 0, 1, v60);
  LOBYTE(v65) = 0;
  v30 = sub_100795CE4();
  v31 = *(*(v30 - 8) + 56);
  v32 = v52;
  v31(v52, 1, 1, v30);
  v33 = v53;
  v31(v53, 1, 1, v30);
  v34 = enum case for InputConnectionBehavior.default(_:);
  v35 = *(v64 + 104);
  v64 += 104;
  v61 = v35;
  v36 = v54;
  v37 = v55;
  (v35)(v54, enum case for InputConnectionBehavior.default(_:), v55);
  sub_1005061AC();
  v59 = sub_100795E54();
  sub_1001F1160(&qword_100ADC580);
  (v62)(v29, 1, 1, v60);
  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v31(v32, 1, 1, v30);
  v31(v33, 1, 1, v30);
  (v61)(v36, v34, v37);
  sub_10020E834();
  sub_100795E64();
  return v51;
}

unint64_t sub_100507EE8()
{
  result = qword_100AE8448;
  if (!qword_100AE8448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE8448);
  }

  return result;
}

unint64_t sub_100507F50()
{
  result = qword_100AE8478;
  if (!qword_100AE8478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE8478);
  }

  return result;
}

uint64_t sub_100507FAC(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_100507FF0()
{
  v40 = sub_10079BC44();
  v1 = *(v40 - 8);
  __chkstk_darwin(v40);
  v39 = v37 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v38 = v37 - v4;
  v5 = sub_1001F1160(&unk_100AD1FC0);
  __chkstk_darwin(v5 - 8);
  v7 = v37 - v6;
  v8 = sub_10079D4D4();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37[0] = v0;
  v41 = (*(v0 + 8))(v10);
  v42 = v13;
  sub_100206ECC();
  v14 = sub_10079D5D4();
  v16 = v15;
  v18 = v17;
  (*(v9 + 104))(v12, enum case for Font.TextStyle.subheadline(_:), v8);
  v19 = sub_10079D3A4();
  (*(*(v19 - 8) + 56))(v7, 1, 1, v19);
  sub_10079D434();
  sub_100007840(v7, &unk_100AD1FC0);
  (*(v9 + 8))(v12, v8);
  sub_10079D3E4();
  sub_10079D464();

  v20 = sub_10079D5A4();
  v22 = v21;
  v24 = v23;
  v37[1] = v25;

  v26 = v18 & 1;
  v27 = v37[0];
  sub_10020B430(v14, v16, v26);

  v28 = *(v27 + 72);
  if (v28)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v29 = v28;
    v30 = v38;
    sub_10079B9A4();

    v32 = v39;
    v31 = v40;
    (*(v1 + 104))(v39, enum case for ColorScheme.light(_:), v40);
    v33 = sub_10079BC34();
    v34 = *(v1 + 8);
    v34(v32, v31);
    v34(v30, v31);
    if (v33)
    {
      _s5Books11ChromeStyleC14_pageTextColor33_5E35E2CA450906E5027671B98D3F72C77Combine9PublishedVy7SwiftUI0F0VGvpfi_0();
    }

    else
    {
      _s5Books11ChromeStyleC20_pageBackgroundColor33_5E35E2CA450906E5027671B98D3F72C77Combine9PublishedVy7SwiftUI0F0VGvpfi_0();
    }

    v35 = sub_10079D564();

    sub_10020B430(v20, v22, v24 & 1);

    return v35;
  }

  else
  {
    type metadata accessor for ChromeStyle();
    sub_10050C3E8(&qword_100ADB6A0, type metadata accessor for ChromeStyle);
    result = sub_10079C474();
    __break(1u);
  }

  return result;
}

uint64_t sub_100508474()
{
  v0 = sub_1001F1160(&unk_100AD1FC0);
  __chkstk_darwin(v0 - 8);
  v43 = &v40 - v1;
  v2 = sub_10079D4D4();
  v40 = *(v2 - 8);
  v41 = v2;
  __chkstk_darwin(v2);
  v4 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100796CF4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v40 - v10;
  v12 = sub_1007A21D4();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v40 - v17;
  sub_1007A2154();
  sub_100796C94();
  (*(v13 + 16))(v15, v18, v12);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v20 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  (*(v6 + 16))(v8, v11, v5);
  v21 = sub_1007A22D4();
  v23 = v22;
  (*(v6 + 8))(v11, v5);
  (*(v13 + 8))(v18, v12);
  v24 = v42;
  v44 = v21;
  v45 = v23;
  sub_100206ECC();
  v25 = sub_10079D5D4();
  v27 = v26;
  LOBYTE(v21) = v28;
  v30 = v40;
  v29 = v41;
  (*(v40 + 104))(v4, enum case for Font.TextStyle.subheadline(_:), v41);
  v31 = sub_10079D3A4();
  v32 = v43;
  (*(*(v31 - 8) + 56))(v43, 1, 1, v31);
  sub_10079D434();
  sub_100007840(v32, &unk_100AD1FC0);
  (*(v30 + 8))(v4, v29);
  v33 = sub_10079D5A4();
  v35 = v34;
  v37 = v36;

  sub_10020B430(v25, v27, v21 & 1);

  if (*(v24 + 72))
  {
    _s5Books11ChromeStyleC14secondaryColor7SwiftUI0E0Vvg_0();
    v38 = sub_10079D564();

    sub_10020B430(v33, v35, v37 & 1);

    return v38;
  }

  else
  {
    type metadata accessor for ChromeStyle();
    sub_10050C3E8(&qword_100ADB6A0, type metadata accessor for ChromeStyle);
    result = sub_10079C474();
    __break(1u);
  }

  return result;
}

uint64_t sub_100508998@<X0>(uint64_t *a1@<X8>)
{
  v278 = a1;
  v257 = sub_1001F1160(&qword_100AE8480);
  __chkstk_darwin(v257);
  v259 = &v219 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v258 = (&v219 - v4);
  v5 = sub_10079D074();
  v255 = *(v5 - 8);
  v256 = v5;
  __chkstk_darwin(v5);
  v254 = &v219 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v239 = sub_1001F1160(&qword_100AE8488);
  __chkstk_darwin(v239);
  v250 = (&v219 - v7);
  v242 = sub_1001F1160(&qword_100AE8490);
  v222 = *(v242 - 8);
  __chkstk_darwin(v242);
  v221 = &v219 - v8;
  v246 = sub_1001F1160(&qword_100AE8498);
  v224 = *(v246 - 8);
  __chkstk_darwin(v246);
  v223 = &v219 - v9;
  v10 = sub_1001F1160(&qword_100AE84A0);
  __chkstk_darwin(v10 - 8);
  v248 = &v219 - v11;
  v12 = sub_1001F1160(&qword_100AE84A8);
  __chkstk_darwin(v12 - 8);
  v252 = &v219 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v277 = (&v219 - v15);
  v16 = sub_10079CA64();
  v236 = *(v16 - 8);
  v237 = v16;
  __chkstk_darwin(v16);
  v235 = &v219 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1001F1160(&unk_100AD1FC0);
  __chkstk_darwin(v18 - 8);
  v232 = &v219 - v19;
  v233 = sub_10079D4D4();
  v231 = *(v233 - 8);
  __chkstk_darwin(v233);
  v230 = &v219 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v234 = sub_1001F1160(&qword_100AE84B0);
  __chkstk_darwin(v234);
  v241 = &v219 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v276 = &v219 - v23;
  v243 = sub_1001F1160(&qword_100AE84B8);
  __chkstk_darwin(v243);
  v284 = (&v219 - v24);
  v251 = sub_1001F1160(&qword_100AE84C0);
  v249 = *(v251 - 8);
  __chkstk_darwin(v251);
  v247 = &v219 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v245 = &v219 - v27;
  v28 = sub_10079DF34();
  v228 = *(v28 - 8);
  v229 = v28;
  __chkstk_darwin(v28);
  v227 = &v219 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v238 = sub_1001F1160(&qword_100AE84C8);
  __chkstk_darwin(v238);
  v240 = &v219 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v275 = &v219 - v32;
  v244 = sub_1001F1160(&qword_100AE84D0);
  __chkstk_darwin(v244);
  v253 = &v219 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v285 = (&v219 - v35);
  v280 = sub_100796CF4();
  v36 = *(v280 - 8);
  __chkstk_darwin(v280);
  v38 = &v219 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39);
  v41 = &v219 - v40;
  v274 = sub_1007A21D4();
  v42 = *(v274 - 8);
  __chkstk_darwin(v274);
  v44 = &v219 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v45);
  v47 = &v219 - v46;
  v279 = v1;
  v48 = *v1;
  swift_getKeyPath();
  v49 = v48 + OBJC_IVAR____TtC5Books19BookReaderViewModel___observationRegistrar;
  *&v300[0] = v48;
  v281 = sub_10050C3E8(&qword_100AF2550, type metadata accessor for BookReaderViewModel);
  v282 = v49;
  sub_100797A14();

  v225 = OBJC_IVAR____TtC5Books19BookReaderViewModel__coverImage;
  v283 = v48;
  v50 = *(v48 + OBJC_IVAR____TtC5Books19BookReaderViewModel__coverImage);
  [v50 size];
  if (v52 == 0.0 && v51 == 0.0)
  {

    v226 = 80.0;
  }

  else
  {
    [v50 size];
    v54 = 80.0 / v53;
    [v50 size];
    v56 = v55;

    v226 = v54 * v56;
  }

  sub_1007A2154();
  sub_100796C94();
  v57 = v274;
  (*(v42 + 16))(v44, v47, v274);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v59 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v60 = v280;
  (*(v36 + 16))(v38, v41, v280);
  v61 = sub_1007A22D4();
  v63 = v62;
  (*(v36 + 8))(v41, v60);
  (*(v42 + 8))(v47, v57);
  v220 = v61;
  *&v300[0] = v61;
  *(&v300[0] + 1) = v63;
  v64 = sub_100206ECC();
  v264 = v63;

  v65 = sub_10079D5D4();
  v261 = v66;
  v262 = v65;
  v260 = v67;
  v263 = v68;
  v69 = v283;
  v70 = *(v283 + OBJC_IVAR____TtC5Books19BookReaderViewModel_bookTitle + 8);
  v266 = *(v283 + OBJC_IVAR____TtC5Books19BookReaderViewModel_bookTitle);
  v265 = (v279[3])();
  v280 = v71;
  v72 = sub_100507FF0();
  v272 = v73;
  v273 = v72;
  v271 = v74;
  v274 = v75;
  v76 = sub_100508474();
  v268 = v77;
  v269 = v76;
  v267 = v78;
  v270 = v79;
  v80 = sub_10079C8F4();
  v81 = v278;
  *v278 = v80;
  v81[1] = 0;
  *(v81 + 16) = 1;
  v82 = sub_10079C8F4();
  v83 = v285;
  *v285 = v82;
  v83[1] = 0;
  *(v83 + 16) = 1;
  swift_getKeyPath();
  *&v300[0] = v69;
  sub_100797A14();

  v84 = *(v69 + v225);
  sub_10079DF04();
  v86 = v227;
  v85 = v228;
  v87 = v229;
  (*(v228 + 104))(v227, enum case for Image.ResizingMode.stretch(_:), v229);
  v88 = sub_10079DF94();

  (*(v85 + 8))(v86, v87);
  sub_10079E484();
  sub_10079BE54();
  LOBYTE(v291) = 1;
  *&v299[6] = v305;
  *&v299[22] = v306;
  *&v299[38] = v307;
  LOBYTE(v85) = sub_10079D2C4();
  sub_10079BBA4();
  v90 = v89;
  v92 = v91;
  v94 = v93;
  v96 = v95;
  LOBYTE(v300[0]) = 0;
  LOBYTE(v87) = sub_10079D2E4();
  sub_10079BBA4();
  *(v292 + 2) = *v299;
  LOBYTE(v286) = 0;
  v291 = v88;
  LOWORD(v292[0]) = 1;
  *(&v292[1] + 2) = *&v299[16];
  *(&v292[2] + 2) = *&v299[32];
  *&v292[3] = *&v299[46];
  BYTE8(v292[3]) = v85;
  *&v293 = v90;
  *(&v293 + 1) = v92;
  *&v294 = v94;
  *(&v294 + 1) = v96;
  LOBYTE(v295) = 0;
  BYTE8(v295) = v87;
  *&v296 = v97;
  *(&v296 + 1) = v98;
  *&v297 = v99;
  *(&v297 + 1) = v100;
  v298 = 0;
  sub_1001F1160(&qword_100AE84D8);
  sub_10050BF04();
  v101 = v275;
  sub_10079D944();
  v300[8] = v296;
  v300[9] = v297;
  v300[4] = v292[3];
  v300[5] = v293;
  v300[6] = v294;
  v300[7] = v295;
  v300[0] = v291;
  v300[1] = v292[0];
  v301 = v298;
  v300[2] = v292[1];
  v300[3] = v292[2];
  sub_100007840(v300, &qword_100AE84D8);
  *(v101 + *(v238 + 36)) = 1;
  v102 = sub_10079CB34();
  v103 = v284;
  *v284 = v102;
  v103[1] = 0;
  *(v103 + 16) = 1;
  *&v291 = v266;
  *(&v291 + 1) = v70;
  v238 = v70;

  v228 = v64;
  v104 = sub_10079D5D4();
  v106 = v105;
  LOBYTE(v85) = v107;
  v229 = v108;
  v110 = v230;
  v109 = v231;
  v111 = v233;
  (*(v231 + 104))(v230, enum case for Font.TextStyle.headline(_:), v233);
  v112 = sub_10079D3A4();
  v113 = v232;
  (*(*(v112 - 8) + 56))(v232, 1, 1, v112);
  sub_10079D434();
  sub_100007840(v113, &unk_100AD1FC0);
  (*(v109 + 8))(v110, v111);
  sub_10079D3F4();
  sub_10079D464();

  v233 = sub_10079D5A4();
  v115 = v114;
  LOBYTE(v110) = v116;
  v118 = v117;

  sub_10020B430(v104, v106, v85 & 1);

  KeyPath = swift_getKeyPath();
  v120 = swift_getKeyPath();
  LOBYTE(v308) = v110 & 1;
  v304 = 0;
  *&v286 = v233;
  *(&v286 + 1) = v115;
  LOBYTE(v287) = v110 & 1;
  *(&v287 + 1) = v118;
  *&v288 = KeyPath;
  *(&v288 + 1) = 2;
  LOBYTE(v289) = 0;
  *(&v289 + 1) = v120;
  v290 = 0x3FE0000000000000;
  v121 = v235;
  sub_10079CA54();
  sub_1001F1160(&qword_100AE8508);
  sub_10050C0A8();
  v122 = v276;
  sub_10079D9D4();
  (*(v236 + 8))(v121, v237);
  v292[0] = v287;
  v292[1] = v288;
  v292[2] = v289;
  *&v292[3] = v290;
  v291 = v286;
  sub_100007840(&v291, &qword_100AE8508);
  *(v122 + *(v234 + 36)) = 1;
  sub_10079E474();
  sub_10079BE54();
  v235 = v310;
  v236 = v308;
  v233 = v313;
  v234 = v312;
  v304 = 1;
  v303 = v309;
  v302 = v311;
  v123 = sub_10079C8F4();
  v124 = v277;
  *v277 = v123;
  v124[1] = 0;
  *(v124 + 16) = 1;
  swift_getKeyPath();
  v125 = v283;
  *&v286 = v283;
  sub_100797A14();

  v237 = OBJC_IVAR____TtC5Books19BookReaderViewModel__hasPhysicalPages;
  if (*(v125 + OBJC_IVAR____TtC5Books19BookReaderViewModel__hasPhysicalPages) == 1)
  {
    __chkstk_darwin(v126);
    v127 = v279;
    v129 = v261;
    v128 = v262;
    *(&v219 - 6) = v279;
    *(&v219 - 5) = v128;
    *(&v219 - 4) = v129;
    *(&v219 - 24) = v260 & 1;
    *(&v219 - 2) = v263;
    __chkstk_darwin(v127);
    v130 = v268;
    *(&v219 - 18) = v269;
    *(&v219 - 17) = v130;
    *(&v219 - 128) = v267 & 1;
    v131 = v272;
    v132 = v273;
    *(&v219 - 15) = v270;
    *(&v219 - 14) = v132;
    *(&v219 - 13) = v131;
    *(&v219 - 96) = v271 & 1;
    *(&v219 - 11) = v274;
    *(&v219 - 10) = v133;
    *(&v219 - 9) = v134;
    *(&v219 - 8) = v135;
    *(&v219 - 56) = v136;
    v137 = v265;
    *(&v219 - 6) = v138;
    *(&v219 - 5) = v137;
    v139 = v220;
    *(&v219 - 4) = v280;
    *(&v219 - 3) = v139;
    *(&v219 - 2) = v264;
    sub_1001F1160(&qword_100AE8580);
    sub_1001F1160(&qword_100AE8588);
    sub_10050C2BC();
    sub_100005920(&qword_100AE85A8, &qword_100AE8588);
    v140 = v221;
    sub_10079D534();
    v141 = sub_100005920(&qword_100AE8520, &qword_100AE8490);
    v142 = v223;
    v143 = v242;
    sub_10079DCC4();
    (*(v222 + 8))(v140, v143);
    v144 = v224;
    v145 = v246;
    (*(v224 + 16))(v250, v142, v246);
    swift_storeEnumTagMultiPayload();
    sub_1001F1160(&qword_100AE8518);
    *&v286 = v143;
    *(&v286 + 1) = v141;
    swift_getOpaqueTypeConformance2();
    sub_10050C160();
    v146 = v248;
    sub_10079CCA4();
    (*(v144 + 8))(v142, v145);
  }

  else
  {
    v147 = sub_10079D584();
    v149 = v148;
    v151 = v150;
    v152 = sub_10079D584();
    v154 = v153;
    v156 = v155;
    sub_10020B430(v147, v149, v151 & 1);

    *&v286 = v265;
    *(&v286 + 1) = v280;
    v157 = sub_10079D574();
    v159 = v158;
    v161 = v160;
    v163 = v162;
    sub_10020B430(v152, v154, v156 & 1);

    v164 = v250;
    *v250 = v157;
    v164[1] = v159;
    *(v164 + 16) = v161 & 1;
    v164[3] = v163;
    *(v164 + 32) = 1;
    swift_storeEnumTagMultiPayload();
    sub_1001F1160(&qword_100AE8518);
    v165 = sub_100005920(&qword_100AE8520, &qword_100AE8490);
    *&v286 = v242;
    *(&v286 + 1) = v165;
    swift_getOpaqueTypeConformance2();
    sub_10050C160();
    v146 = v248;
    sub_10079CCA4();
  }

  v166 = sub_1001F1160(&qword_100AE8530);
  v278 = (v278 + *(v166 + 44));
  v167 = sub_1001F1160(&qword_100AE8538);
  v250 = (v285 + *(v167 + 44));
  v168 = sub_1001F1160(&qword_100AE8540);
  v169 = v284 + *(v168 + 44);
  v170 = sub_1001F1160(&qword_100AE8548);
  v171 = v277;
  sub_10003EC34(v146, v277 + *(v170 + 44));
  v172 = v276;
  v173 = v241;
  sub_1000077D8(v276, v241, &qword_100AE84B0);
  v174 = v304;
  v175 = v303;
  v176 = v302;
  v177 = v252;
  sub_1000077D8(v171, v252, &qword_100AE84A8);
  sub_1000077D8(v173, v169, &qword_100AE84B0);
  v178 = sub_1001F1160(&qword_100AE8550);
  v179 = v169 + *(v178 + 48);
  *v179 = 0;
  *(v179 + 8) = v174;
  v180 = v235;
  *(v179 + 16) = v236;
  *(v179 + 24) = v175;
  *(v179 + 32) = v180;
  *(v179 + 40) = v176;
  v181 = v233;
  *(v179 + 48) = v234;
  *(v179 + 56) = v181;
  sub_1000077D8(v177, v169 + *(v178 + 64), &qword_100AE84A8);
  sub_100007840(v171, &qword_100AE84A8);
  sub_100007840(v172, &qword_100AE84B0);
  sub_100007840(v177, &qword_100AE84A8);
  sub_100007840(v173, &qword_100AE84B0);
  v182 = v254;
  sub_10079D064();
  sub_100005920(&qword_100AE8558, &qword_100AE84B8);
  v183 = v245;
  v184 = v284;
  sub_10079D9A4();
  (*(v255 + 8))(v182, v256);
  sub_100007840(v184, &qword_100AE84B8);
  v185 = v275;
  v186 = v240;
  sub_1000077D8(v275, v240, &qword_100AE84C8);
  v187 = v249;
  v188 = *(v249 + 16);
  v189 = v247;
  v190 = v251;
  v188(v247, v183, v251);
  v191 = v250;
  sub_1000077D8(v186, v250, &qword_100AE84C8);
  v192 = sub_1001F1160(&qword_100AE8560);
  v188(v191 + *(v192 + 48), v189, v190);
  v193 = *(v187 + 8);
  v193(v183, v190);
  sub_100007840(v185, &qword_100AE84C8);
  v193(v189, v190);
  sub_100007840(v186, &qword_100AE84C8);
  swift_getKeyPath();
  v194 = v283;
  *&v286 = v283;
  sub_100797A14();

  LOBYTE(v193) = *(v194 + v237);
  sub_1001F1160(&unk_100AE0B30);
  v195 = swift_allocObject();
  *(v195 + 16) = xmmword_10080EFF0;
  v196 = v265;
  v197 = v238;
  *(v195 + 32) = v266;
  *(v195 + 40) = v197;
  v198 = v280;
  *(v195 + 48) = v196;
  *(v195 + 56) = v198;
  v199 = v285;
  v200 = v285 + *(v244 + 36);
  type metadata accessor for AccessibilityConditionallyCombined();

  sub_10079CA54();
  *v200 = (v193 & 1) == 0;
  *(v200 + 1) = v195;
  v201 = sub_10079CB24();
  v202 = v258;
  *v258 = v201;
  *(v202 + 8) = 0;
  *(v202 + 16) = 1;
  v203 = sub_1001F1160(&qword_100AE8568);
  sub_10050B6BC(v279, v202 + *(v203 + 44));
  sub_10079E474();
  sub_10079BE54();
  v204 = (v202 + *(sub_1001F1160(&qword_100AE8570) + 36));
  v205 = v287;
  *v204 = v286;
  v204[1] = v205;
  v204[2] = v288;
  LOBYTE(v195) = sub_10079D2E4();
  sub_10079BBA4();
  v206 = v202 + *(v257 + 36);
  *v206 = v195;
  *(v206 + 8) = v207;
  *(v206 + 16) = v208;
  *(v206 + 24) = v209;
  *(v206 + 32) = v210;
  *(v206 + 40) = 0;
  v211 = v199;
  v212 = v199;
  v213 = v253;
  sub_1000077D8(v211, v253, &qword_100AE84D0);
  v214 = v259;
  sub_1000077D8(v202, v259, &qword_100AE8480);
  v215 = v278;
  sub_1000077D8(v213, v278, &qword_100AE84D0);
  v216 = sub_1001F1160(&qword_100AE8578);
  v217 = v215 + *(v216 + 48);
  *v217 = 0;
  v217[8] = 1;
  sub_1000077D8(v214, v215 + *(v216 + 64), &qword_100AE8480);
  sub_100007840(v202, &qword_100AE8480);
  sub_100007840(v212, &qword_100AE84D0);
  sub_100007840(v214, &qword_100AE8480);
  sub_100007840(v213, &qword_100AE84D0);
  sub_10020B430(v269, v268, v267 & 1);

  sub_10020B430(v273, v272, v271 & 1);

  sub_10020B430(v262, v261, v260 & 1);
}

uint64_t sub_10050A49C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  sub_1007A26F4();
  sub_10050C430(a1, &v17);
  v8 = sub_1007A26E4();
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = &protocol witness table for MainActor;
  v10 = *(a1 + 48);
  *(v9 + 64) = *(a1 + 32);
  *(v9 + 80) = v10;
  *(v9 + 96) = *(a1 + 64);
  *(v9 + 112) = *(a1 + 80);
  v11 = *(a1 + 16);
  *(v9 + 32) = *a1;
  *(v9 + 48) = v11;
  sub_10050C430(a1, &v17);
  v12 = sub_1007A26E4();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  *(v13 + 24) = &protocol witness table for MainActor;
  v14 = *(a1 + 48);
  *(v13 + 64) = *(a1 + 32);
  *(v13 + 80) = v14;
  *(v13 + 96) = *(a1 + 64);
  *(v13 + 112) = *(a1 + 80);
  v15 = *(a1 + 16);
  *(v13 + 32) = *a1;
  *(v13 + 48) = v15;
  sub_10079E204();
  sub_1001F1894(a2, a3, a4 & 1);

  sub_1001F1160(&qword_100AE85D8);
  sub_100005920(&qword_100AE85E0, &qword_100AE85D8);
  return sub_10079E0F4();
}

uint64_t sub_10050A6B4@<X0>(char *a1@<X8>)
{
  v71 = a1;
  v73 = sub_100796CF4();
  v1 = *(v73 - 8);
  __chkstk_darwin(v73);
  v3 = &v55 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v55 - v5;
  v7 = sub_1007A21D4();
  v72 = v7;
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v55 - v12;
  v56 = &v55 - v12;
  v67 = sub_1001F1160(&qword_100AE85E8);
  v70 = *(v67 - 8);
  __chkstk_darwin(v67);
  v69 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v68 = &v55 - v16;
  __chkstk_darwin(v17);
  v65 = (&v55 - v18);
  __chkstk_darwin(v19);
  v21 = &v55 - v20;
  sub_1007A2154();
  sub_100796C94();
  v22 = v8;
  v66 = *(v8 + 16);
  v55 = v10;
  v66(v10, v13, v7);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v64 = ObjCClassFromMetadata;
  v63 = objc_opt_self();
  v24 = [v63 bundleForClass:ObjCClassFromMetadata];
  v62 = *(v1 + 16);
  v57 = v3;
  v25 = v73;
  v62(v3, v6, v73);
  v26 = sub_1007A22D4();
  v28 = v27;
  v29 = *(v1 + 8);
  v60 = v1 + 8;
  v61 = v29;
  v29(v6, v25);
  v30 = *(v22 + 8);
  v58 = v22 + 8;
  v59 = v30;
  v31 = v56;
  v32 = v72;
  v30(v56, v72);
  v74 = v26;
  v75 = v28;
  sub_100206ECC();
  *v21 = sub_10079D5D4();
  *(v21 + 1) = v33;
  v21[16] = v34 & 1;
  *(v21 + 3) = v35;
  *(v21 + 16) = 256;
  sub_1007A2154();
  sub_100796C94();
  v66(v55, v31, v32);
  v36 = [v63 bundleForClass:v64];
  v37 = v73;
  v62(v57, v6, v73);
  v38 = sub_1007A22D4();
  v40 = v39;
  v61(v6, v37);
  v59(v31, v72);
  v74 = v38;
  v75 = v40;
  v41 = sub_10079D5D4();
  v42 = v65;
  *v65 = v41;
  v42[1] = v43;
  *(v42 + 16) = v44 & 1;
  v42[3] = v45;
  *(v42 + 16) = 257;
  v46 = v70;
  v47 = *(v70 + 16);
  v48 = v67;
  v49 = v68;
  v47(v68, v21, v67);
  v50 = v69;
  v47(v69, v42, v48);
  v51 = v71;
  v47(v71, v49, v48);
  v52 = sub_1001F1160(&qword_100AE85F0);
  v47(&v51[*(v52 + 48)], v50, v48);
  v53 = *(v46 + 8);
  v53(v42, v48);
  v53(v21, v48);
  v53(v50, v48);
  return (v53)(v49, v48);
}

uint64_t sub_10050ACB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v39 = a7;
  v40 = a4;
  v41 = a5;
  v35[1] = a3;
  v37 = a2;
  v36 = a1;
  v49 = a9;
  v47 = a17;
  v48 = a18;
  v44 = a15;
  v45 = a16;
  v38 = sub_1001F1160(&qword_100AE8598);
  __chkstk_darwin(v38);
  v21 = v35 - v20;
  v22 = sub_1001F1160(&qword_100AE85B0);
  v42 = *(v22 - 8);
  v43 = v22;
  __chkstk_darwin(v22);
  v24 = v35 - v23;
  v46 = sub_1001F1160(&qword_100AE8580);
  __chkstk_darwin(v46);
  v26 = v35 - v25;
  *v21 = sub_10079C8F4();
  *(v21 + 1) = 0x4010000000000000;
  v21[16] = 0;
  v27 = sub_1001F1160(&qword_100AE85B8);
  sub_10050B05C(v41, a6, v39 & 1, a8, &v21[*(v27 + 44)], a10, a11, a12, a13 & 1, a14);
  v28 = sub_100005920(&qword_100AE85A0, &qword_100AE8598);
  v29 = v38;
  sub_10079D8C4();
  sub_100007840(v21, &qword_100AE8598);
  v31 = v44;
  v30 = v45;
  v52 = v44;
  v53 = v45;
  v50 = v29;
  v51 = v28;
  swift_getOpaqueTypeConformance2();
  sub_100206ECC();
  v32 = v43;
  sub_10079D8E4();
  (*(v42 + 8))(v24, v32);
  sub_1001F1160(&unk_100AE0B30);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_10080EFF0;
  *(v33 + 32) = v47;
  *(v33 + 40) = v48;
  *(v33 + 48) = v31;
  *(v33 + 56) = v30;

  sub_10079C264();

  return sub_100007840(v26, &qword_100AE8580);
}

uint64_t sub_10050B05C@<X0>(uint64_t a1@<X4>, uint64_t a2@<X5>, int a3@<W6>, uint64_t a4@<X7>, uint64_t a5@<X8>, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9, uint64_t a10)
{
  v66 = a4;
  v61 = a3;
  v63 = a1;
  v64 = a2;
  v60 = a6;
  v11 = sub_1001F1160(&unk_100AD1FC0);
  __chkstk_darwin(v11 - 8);
  v13 = v57 - v12;
  v14 = sub_10079BC44();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = v57 - v19;
  v21 = sub_1001F1160(&qword_100AE85C0);
  __chkstk_darwin(v21 - 8);
  v67 = v57 - v22;
  v65 = sub_1001F1160(&qword_100AE85C8);
  __chkstk_darwin(v65);
  v69 = v57 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v62 = v57 - v25;
  __chkstk_darwin(v26);
  v68 = v57 - v27;
  v28 = sub_10079D584();
  v30 = v29;
  v32 = v31;
  v33 = sub_10079D584();
  v63 = v34;
  v64 = v33;
  v61 = v35;
  v66 = v36;
  sub_10020B430(v28, v30, v32 & 1);

  v37 = sub_10079DF24();
  v38 = *(v60 + 72);
  if (v38)
  {
    v39 = v37;
    v60 = a10;
    v57[1] = a9;
    v59 = a8;
    v58 = a7;
    swift_getKeyPath();
    swift_getKeyPath();
    v40 = v38;
    sub_10079B9A4();

    (*(v15 + 104))(v17, enum case for ColorScheme.light(_:), v14);
    v41 = sub_10079BC34();
    v42 = *(v15 + 8);
    v42(v17, v14);
    v42(v20, v14);
    if (v41)
    {
      v43 = _s5Books11ChromeStyleC14_pageTextColor33_5E35E2CA450906E5027671B98D3F72C77Combine9PublishedVy7SwiftUI0F0VGvpfi_0();
    }

    else
    {
      v43 = _s5Books11ChromeStyleC20_pageBackgroundColor33_5E35E2CA450906E5027671B98D3F72C77Combine9PublishedVy7SwiftUI0F0VGvpfi_0();
    }

    v44 = v43;

    KeyPath = swift_getKeyPath();
    v46 = sub_10079D3A4();
    (*(*(v46 - 8) + 56))(v13, 1, 1, v46);
    sub_10079D424();
    sub_100007840(v13, &unk_100AD1FC0);
    sub_10079D3F4();
    v47 = sub_10079D464();

    v48 = swift_getKeyPath();
    v70 = v39;
    v71 = KeyPath;
    v72 = v44;
    v73 = v48;
    v74 = v47;
    sub_1001F1160(&qword_100AD6DB8);
    sub_10024AAA8();
    v49 = v67;
    sub_10079D8D4();

    v50 = v62;
    sub_10020B3C8(v49, v62, &qword_100AE85C0);
    *(v50 + *(v65 + 36)) = 1;
    v51 = v68;
    sub_10020B3C8(v50, v68, &qword_100AE85C8);
    v52 = v69;
    sub_1000077D8(v51, v69, &qword_100AE85C8);
    v54 = v63;
    v53 = v64;
    *a5 = v64;
    *(a5 + 8) = v54;
    LOBYTE(v50) = v61 & 1;
    *(a5 + 16) = v61 & 1;
    *(a5 + 24) = v66;
    *(a5 + 32) = 1;
    v55 = sub_1001F1160(&qword_100AE85D0);
    sub_1000077D8(v52, a5 + *(v55 + 48), &qword_100AE85C8);
    sub_1001F1894(v53, v54, v50);

    sub_100007840(v51, &qword_100AE85C8);
    sub_100007840(v52, &qword_100AE85C8);
    sub_10020B430(v53, v54, v50);
  }

  else
  {
    type metadata accessor for ChromeStyle();
    sub_10050C3E8(&qword_100ADB6A0, type metadata accessor for ChromeStyle);
    result = sub_10079C474();
    __break(1u);
  }

  return result;
}

uint64_t sub_10050B6BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1001F1160(&qword_100AE85F8);
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v19 - v9;
  v12 = *(a1 + 56);
  v11 = *(a1 + 64);
  type metadata accessor for ChromeStyle();
  sub_10050C3E8(&qword_100ADB6A0, type metadata accessor for ChromeStyle);

  v13 = sub_10079C484();
  v15 = v14;
  KeyPath = swift_getKeyPath();
  v24 = 0;
  *&v19 = v13;
  *(&v19 + 1) = v15;
  *&v20 = KeyPath;
  WORD4(v20) = 0;
  v21 = 0uLL;
  *&v22 = v12;
  *(&v22 + 1) = v11;
  v23 = 257;
  sub_1001F1160(&qword_100AE8600);
  sub_10050C518();
  sub_10079DA04();
  v25[2] = v21;
  v25[3] = v22;
  v26 = v23;
  v25[0] = v19;
  v25[1] = v20;
  sub_100007840(v25, &qword_100AE8600);
  v10[*(v5 + 44)] = 1;
  sub_1000077D8(v10, v7, &qword_100AE85F8);
  sub_1000077D8(v7, a2, &qword_100AE85F8);
  v17 = a2 + *(sub_1001F1160(&qword_100AE8618) + 48);
  *v17 = 0;
  *(v17 + 8) = 1;
  sub_100007840(v10, &qword_100AE85F8);
  return sub_100007840(v7, &qword_100AE85F8);
}

uint64_t sub_10050B904@<X0>(uint64_t *a1@<X2>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10050C3E8(&qword_100AF2550, type metadata accessor for BookReaderViewModel);
  sub_100797A14();

  *a2 = *(v3 + OBJC_IVAR____TtC5Books19BookReaderViewModel__usePhysicalPages);
  return result;
}

uint64_t sub_10050BA00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a1;
  v33 = a2;
  v32 = sub_1001F1160(&qword_100AE86D0);
  __chkstk_darwin(v32);
  v4 = &v26 - v3;
  v5 = sub_10079D074();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1001F1160(&qword_100AE86D8);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v26 - v11;
  v31 = sub_1001F1160(&qword_100AE86E0);
  __chkstk_darwin(v31);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v26 - v16;
  if (*v2 == 1)
  {
    sub_10079D054();
    v28 = v10;
    v29 = v4;
    v18 = sub_1001F1160(&qword_100AE86E8);
    v27 = v9;
    v19 = v18;
    v26 = sub_100005920(&qword_100AE86F8, &qword_100AE86E8);
    sub_10079D9A4();
    (*(v6 + 8))(v8, v5);
    v36 = *(v2 + 8);

    sub_1001F1160(&unk_100AD61F0);
    sub_100005920(&qword_100AEB190, &unk_100AD61F0);
    v20 = sub_1007A20B4();
    v22 = v21;

    v36 = v20;
    v37 = v22;
    v34 = v19;
    v35 = v26;
    swift_getOpaqueTypeConformance2();
    sub_100206ECC();
    v23 = v27;
    sub_10079D8E4();

    (*(v28 + 8))(v12, v23);
    type metadata accessor for AccessibilityConditionallyCombined();
    sub_10079C234();
    sub_100007840(v14, &qword_100AE86E0);
    sub_1000077D8(v17, v29, &qword_100AE86E0);
    swift_storeEnumTagMultiPayload();
    sub_10050C720();
    sub_10079CCA4();
    return sub_100007840(v17, &qword_100AE86E0);
  }

  else
  {
    v25 = sub_1001F1160(&qword_100AE86E8);
    (*(*(v25 - 8) + 16))(v4, v30, v25);
    swift_storeEnumTagMultiPayload();
    sub_10050C720();
    sub_100005920(&qword_100AE86F8, &qword_100AE86E8);
    return sub_10079CCA4();
  }
}

unint64_t sub_10050BF04()
{
  result = qword_100AE84E0;
  if (!qword_100AE84E0)
  {
    sub_1001F1234(&qword_100AE84D8);
    sub_10050BF90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE84E0);
  }

  return result;
}

unint64_t sub_10050BF90()
{
  result = qword_100AE84E8;
  if (!qword_100AE84E8)
  {
    sub_1001F1234(&qword_100AE84F0);
    sub_10050C01C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE84E8);
  }

  return result;
}

unint64_t sub_10050C01C()
{
  result = qword_100AE84F8;
  if (!qword_100AE84F8)
  {
    sub_1001F1234(&qword_100AE8500);
    sub_10032A544();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE84F8);
  }

  return result;
}

unint64_t sub_10050C0A8()
{
  result = qword_100AE8510;
  if (!qword_100AE8510)
  {
    sub_1001F1234(&qword_100AE8508);
    sub_100324064();
    sub_100005920(&qword_100AE04A8, &qword_100AE04B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE8510);
  }

  return result;
}

unint64_t sub_10050C160()
{
  result = qword_100AE8528;
  if (!qword_100AE8528)
  {
    sub_1001F1234(&qword_100AE8518);
    sub_100303C54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE8528);
  }

  return result;
}

uint64_t type metadata accessor for AccessibilityConditionallyCombined()
{
  result = qword_100AE8678;
  if (!qword_100AE8678)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_10050C2BC()
{
  result = qword_100AE8590;
  if (!qword_100AE8590)
  {
    sub_1001F1234(&qword_100AE8580);
    sub_1001F1234(&qword_100AE8598);
    sub_100005920(&qword_100AE85A0, &qword_100AE8598);
    swift_getOpaqueTypeConformance2();
    sub_10050C3E8(&qword_100AF45F0, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE8590);
  }

  return result;
}

uint64_t sub_10050C3E8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10050C474()
{
  swift_unknownObjectRelease();

  if (*(v0 + 72))
  {
  }

  return swift_deallocObject();
}

unsigned __int8 *sub_10050C4E4(unsigned __int8 *result)
{
  v2 = *(v1 + 72);
  if (v2)
  {
    return v2(*result);
  }

  return result;
}

unint64_t sub_10050C518()
{
  result = qword_100AE8608;
  if (!qword_100AE8608)
  {
    sub_1001F1234(&qword_100AE8600);
    sub_10050C5A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE8608);
  }

  return result;
}

unint64_t sub_10050C5A4()
{
  result = qword_100AE8610;
  if (!qword_100AE8610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE8610);
  }

  return result;
}

void sub_10050C620()
{
  sub_10050C6B4();
  if (v0 <= 0x3F)
  {
    sub_10079CA64();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10050C6B4()
{
  if (!qword_100AE8688)
  {
    v0 = sub_1007A2654();
    if (!v1)
    {
      atomic_store(v0, &qword_100AE8688);
    }
  }
}

unint64_t sub_10050C720()
{
  result = qword_100AE86F0;
  if (!qword_100AE86F0)
  {
    sub_1001F1234(&qword_100AE86E0);
    sub_1001F1234(&qword_100AE86E8);
    sub_100005920(&qword_100AE86F8, &qword_100AE86E8);
    swift_getOpaqueTypeConformance2();
    sub_10050C3E8(&qword_100AF45F0, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE86F0);
  }

  return result;
}

unint64_t sub_10050C84C()
{
  result = qword_100AE8700;
  if (!qword_100AE8700)
  {
    sub_1001F1234(&qword_100AE8708);
    sub_10050C720();
    sub_100005920(&qword_100AE86F8, &qword_100AE86E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE8700);
  }

  return result;
}

char *sub_10050C904(void *a1, void *a2, uint64_t a3, void *a4)
{
  v7 = type metadata accessor for AssetActivityItemProviderWrapper(0);
  v8 = objc_allocWithZone(v7);
  v9 = &v8[OBJC_IVAR____TtC5Books32AssetActivityItemProviderWrapper_paginationService];
  *&v8[OBJC_IVAR____TtC5Books32AssetActivityItemProviderWrapper_paginationService + 8] = 0;
  swift_unknownObjectWeakInit();
  v10 = &v8[OBJC_IVAR____TtC5Books32AssetActivityItemProviderWrapper_bookProvider];
  *&v8[OBJC_IVAR____TtC5Books32AssetActivityItemProviderWrapper_bookProvider + 8] = 0;
  swift_unknownObjectWeakInit();
  v11 = OBJC_IVAR____TtC5Books32AssetActivityItemProviderWrapper_cachedStoreShortURL;
  v12 = sub_1007969B4();
  (*(*(v12 - 8) + 56))(&v8[v11], 1, 1, v12);
  *&v8[OBJC_IVAR____TtC5Books32AssetActivityItemProviderWrapper_book] = a1;
  *(v10 + 1) = sub_100027EF0(&qword_100AE8748, type metadata accessor for BookProviderService);
  swift_unknownObjectWeakAssign();
  *(v9 + 1) = &protocol witness table for PaginatingService;
  swift_unknownObjectWeakAssign();
  *&v8[OBJC_IVAR____TtC5Books32AssetActivityItemProviderWrapper_progressKitController] = a4;
  v13 = objc_opt_self();
  v14 = a4;
  v15 = a1;
  v16 = [v13 propertySourceFromBook:v15];
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  v18 = objc_allocWithZone(AEAssetActivityItemProvider);
  aBlock[4] = sub_100217B94;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100217B9C;
  aBlock[3] = &unk_100A21800;
  v19 = _Block_copy(aBlock);

  v20 = [v18 initWithPropertySource:v19];
  _Block_release(v19);

  *&v8[OBJC_IVAR____TtC5Books32AssetActivityItemProviderWrapper_itemProvider] = v20;
  v25.receiver = v8;
  v25.super_class = v7;
  v21 = objc_msgSendSuper2(&v25, "init");
  v22 = *&v21[OBJC_IVAR____TtC5Books32AssetActivityItemProviderWrapper_itemProvider];
  v23 = v21;
  [v22 setPaginationDataSource:v23];

  return v23;
}

uint64_t sub_10050CBCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1001F1160(&qword_100AD67D0);
  __chkstk_darwin(v8 - 8);
  v10 = v22 - v9;
  sub_1000077D8(a3, v22 - v9, &qword_100AD67D0);
  v11 = sub_1007A2744();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_100007840(v10, &qword_100AD67D0);
  }

  else
  {
    sub_1007A2734();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_1007A2694();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_1007A2304() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_100007840(a3, &qword_100AD67D0);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100007840(a3, &qword_100AD67D0);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_10050CE78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1001F1160(&qword_100AD67D0);
  __chkstk_darwin(v8 - 8);
  v10 = v22 - v9;
  sub_1000077D8(a3, v22 - v9, &qword_100AD67D0);
  v11 = sub_1007A2744();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_100007840(v10, &qword_100AD67D0);
  }

  else
  {
    sub_1007A2734();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_1007A2694();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v22[0] = a2;
      v18 = sub_1007A2304() + 32;
      sub_1007A1EE4();

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_100007840(a3, &qword_100AD67D0);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100007840(a3, &qword_100AD67D0);
  sub_1007A1EE4();
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_10050D130(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1001F1160(&qword_100AD67D0);
  __chkstk_darwin(v8 - 8);
  v10 = v22 - v9;
  sub_1000077D8(a3, v22 - v9, &qword_100AD67D0);
  v11 = sub_1007A2744();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_100007840(v10, &qword_100AD67D0);
  }

  else
  {
    sub_1007A2734();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_1007A2694();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v22[0] = a2;
      v18 = sub_1007A2304() + 32;
      sub_10000A7C4(0, &qword_100AD9BD0);

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_100007840(a3, &qword_100AD67D0);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100007840(a3, &qword_100AD67D0);
  sub_10000A7C4(0, &qword_100AD9BD0);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_10050D430(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v24[0] = a4;
  v10 = sub_1001F1160(&qword_100AD67D0);
  __chkstk_darwin(v10 - 8);
  v12 = v24 - v11;
  sub_1000077D8(a3, v24 - v11, &qword_100AD67D0);
  v13 = sub_1007A2744();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_100007840(v12, &qword_100AD67D0);
  }

  else
  {
    sub_1007A2734();
    (*(v14 + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_1007A2694();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_1007A2304() + 32;

      sub_1001F1160(a6);
      v21 = (v19 | v17);
      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_100007840(a3, &qword_100AD67D0);

      return v22;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100007840(a3, &qword_100AD67D0);
  sub_1001F1160(a6);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_10050D6E0(uint64_t a1, uint64_t a2)
{
  v24[1] = a2;
  v24[2] = a1;
  v3 = sub_1001F1160(&qword_100AE8810);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v24 - v5;
  v25 = sub_1001F1160(&qword_100AE8818);
  v7 = *(v25 - 8);
  __chkstk_darwin(v25);
  v9 = v24 - v8;
  v10 = sub_1001F1160(&qword_100AE8820);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v24 - v12;
  v14 = sub_1001F1160(&qword_100AE8828);
  v15 = *(v14 - 8);
  v28 = v14;
  v29 = v15;
  __chkstk_darwin(v14);
  v26 = v24 - v16;
  *(v2 + 48) = &off_100A23DB0;
  v27 = v2;
  swift_unknownObjectWeakAssign();

  sub_1007A1834();
  swift_beginAccess();
  sub_1001F1160(&qword_100AE2860);
  sub_10079B974();
  swift_endAccess();
  sub_1007A0634();
  sub_100005920(&qword_100AE8830, &qword_100AE8810);
  sub_10079BA74();
  (*(v4 + 8))(v6, v3);
  sub_100005920(&qword_100AE8838, &qword_100AE8818);
  sub_100027EF0(&qword_100AEB780, &type metadata accessor for PageMovementState);
  v17 = v25;
  sub_10079BAF4();
  (*(v7 + 8))(v9, v17);
  sub_100005920(&qword_100AE8840, &qword_100AE8820);
  v18 = sub_10079BA14();
  (*(v11 + 8))(v13, v10);
  v31 = v18;
  type metadata accessor for PageCurlViewController(0);
  v30 = sub_1005980E0();
  sub_1001F1160(&unk_100AEA100);
  sub_100005920(&qword_100AE63F8, &unk_100AEA100);
  v19 = v26;
  sub_10079B7A4();
  v20 = swift_allocObject();
  swift_weakInit();
  v21 = swift_allocObject();
  *(v21 + 16) = sub_10051C824;
  *(v21 + 24) = v20;
  sub_100005920(&qword_100AE8848, &qword_100AE8828);
  v22 = v28;
  sub_10079BB04();

  (*(v29 + 8))(v19, v22);
  swift_beginAccess();
  sub_10079B854();
  swift_endAccess();
}

uint64_t sub_10050DCC0(_BYTE *a1, uint64_t a2)
{
  v4 = sub_1001F1160(&qword_100AE2818);
  __chkstk_darwin(v4 - 8);
  v6 = &v9 - v5;
  *(*(*a2 + 16) + 112) = *a1;
  v7 = _s5StateOMa(0);
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  sub_1004156F0();
  return sub_100007840(v6, &qword_100AE2818);
}

uint64_t sub_10050DDB4(void *a1, uint64_t a2)
{
  v4 = sub_1001F1160(&qword_100AE2818);
  __chkstk_darwin(v4 - 8);
  v6 = &v9 - v5;
  *(*(*a2 + 16) + 120) = *a1;
  v7 = _s5StateOMa(0);
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  sub_1004156F0();
  return sub_100007840(v6, &qword_100AE2818);
}

char *sub_10050DED0@<X0>(void (*a1)(char *, uint64_t)@<X1>, void *a2@<X2>, void *a3@<X3>, void *a4@<X4>, objc_class *a5@<X5>, void *a6@<X6>, void *a7@<X7>, char **a8@<X8>, void *a9, char *a10)
{
  result = sub_10051B1EC(a1, a2, a3, a4, a5, a6, a7, a9, a10);
  *a8 = result;
  a8[1] = v12;
  return result;
}

uint64_t sub_10050DF28()
{
  v0[9] = [objc_opt_self() standardUserDefaults];
  v0[10] = sub_1007A26E4();
  v2 = sub_1007A2694();
  v0[11] = v2;
  v0[12] = v1;

  return _swift_task_switch(sub_10050DFD8, v2, v1);
}

uint64_t sub_10050DFD8()
{
  v1 = v0[9];
  v2 = v0[6];
  v0[2] = v2;
  sub_10079F804();
  swift_allocObject();
  v3 = v2;
  v4 = v1;
  v0[13] = sub_10079F7F4();
  v7 = (&async function pointer to dispatch thunk of BookThemeImportAndUpdateOperation.run() + async function pointer to dispatch thunk of BookThemeImportAndUpdateOperation.run());
  v5 = swift_task_alloc();
  v0[14] = v5;
  *v5 = v0;
  v5[1] = sub_10050E0DC;

  return v7();
}

uint64_t sub_10050E0DC()
{
  v2 = *v1;
  *(*v1 + 120) = v0;

  v3 = *(v2 + 96);
  v4 = *(v2 + 88);
  if (v0)
  {
    v5 = sub_10050E29C;
  }

  else
  {
    v5 = sub_10050E218;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10050E218()
{
  v1 = v0[9];
  v2 = v0[6];

  v3 = v0[7];
  v4 = v0[8];

  return _swift_task_switch(sub_1004AACB8, v3, v4);
}

uint64_t sub_10050E29C()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 56);
  v3 = *(v0 + 64);

  return _swift_task_switch(sub_10050E324, v2, v3);
}

uint64_t sub_10050E324()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10050E388@<X0>(void *a1@<X1>, char a2@<W2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  sub_1001F1160(&qword_100AE8858);
  sub_1007A19A4();
  sub_1007A19C4();
  sub_10000E3E8(a1, a1[3]);
  v8 = sub_10079EBD4();
  v34 = v9;
  v35 = v8;
  v33 = sub_1007A19B4();
  v36 = *(a3 + 16);
  if (qword_100AD18D8 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for ReadingSettingsView();
  v11 = v10[11];
  *(a5 + v11) = swift_getKeyPath();
  sub_1001F1160(&unk_100ADB730);
  swift_storeEnumTagMultiPayload();
  v12 = (a5 + v10[12]);
  type metadata accessor for ChromeStyle();
  sub_100027EF0(&qword_100ADB6A0, type metadata accessor for ChromeStyle);

  *v12 = sub_10079C484();
  v12[1] = v13;
  v14 = v10[13];
  *(a5 + v14) = swift_getKeyPath();
  sub_1001F1160(&unk_100ADB4C0);
  swift_storeEnumTagMultiPayload();
  v15 = v10[14];
  *(a5 + v15) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v16 = a5 + v10[15];
  *v16 = swift_getKeyPath();
  *(v16 + 8) = 0;
  v17 = a5 + v10[16];
  *v17 = swift_getKeyPath();
  *(v17 + 8) = 0;
  v18 = a5 + v10[17];
  *v18 = swift_getKeyPath();
  *(v18 + 8) = 0;
  v19 = a5 + v10[18];
  sub_10079DFE4();
  *v19 = v39;
  *(v19 + 8) = *(&v39 + 1);
  v20 = (a5 + v10[19]);
  sub_10079DFE4();
  *v20 = v39;
  v21 = v10[20];
  v22 = objc_opt_self();
  v23 = [v22 currentDevice];
  [v23 orientation];

  type metadata accessor for UIDeviceOrientation(0);
  sub_10079DFE4();
  *(a5 + v21) = v39;
  v24 = v10[21];
  v25 = [v22 currentDevice];
  [v25 orientation];

  sub_10079DFE4();
  *(a5 + v24) = v39;
  sub_10079CF54();
  v26 = a5 + v10[24];
  sub_1001F1160(&unk_100AE3F30);
  sub_10079DFE4();
  *v26 = v39;
  *(v26 + 8) = BYTE8(v39);
  *(v26 + 16) = v40;
  v27 = a5 + v10[25];
  sub_10079DFE4();
  *v27 = v39;
  *(v27 + 8) = BYTE8(v39);
  *(v27 + 16) = v40;
  sub_100009864(v41, a5);
  sub_1007A14E4();
  sub_100027EF0(&qword_100AE8860, &type metadata accessor for ReadingSettingsViewModel);

  sub_10079E324();
  v28 = (a5 + v10[6]);
  *v28 = v35;
  v28[1] = v34;
  *(a5 + v10[7]) = v33 & 1;
  *(a5 + v10[8]) = a2 & 1;
  v29 = (a5 + v10[9]);
  type metadata accessor for OrientationLockHintViewModel();
  sub_100027EF0(&qword_100AD8CC8, type metadata accessor for OrientationLockHintViewModel);
  v30 = v36;
  *v29 = sub_10079C024();
  v29[1] = v31;
  *(a5 + v10[10]) = a4;
  type metadata accessor for BrightnessController();
  sub_100027EF0(&qword_100AE4230, type metadata accessor for BrightnessController);

  sub_10079E324();

  return sub_1000074E0(v41);
}

uint64_t sub_10050E910(void *a1, uint64_t a2)
{
  v5 = sub_1007A1C54();
  v19 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1007A1CA4();
  v8 = *(v18 - 8);
  __chkstk_darwin(v18);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_weakAssign();
  *(*(a1[21] + 16) + 24) = &off_100A2BB30;
  swift_unknownObjectWeakAssign();
  v11 = a1[22];
  if (v11)
  {
    *(*(v11 + 16) + 24) = &off_100A2BB28;
    swift_unknownObjectWeakAssign();
  }

  *(*sub_10000E3E8(a1 + 23, a1[26]) + 24) = &off_100A2BB18;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectUnownedAssign();
  swift_weakAssign();
  swift_unknownObjectUnownedAssign();
  swift_weakAssign();
  sub_1006A2C38();
  swift_weakAssign();

  sub_1006A2E1C(a1);
  sub_10000A7C4(0, &qword_100AD1E10);
  v12 = sub_1007A2D74();
  v13 = swift_allocObject();
  v13[2] = a1;
  v13[3] = a2;
  v13[4] = v2;
  aBlock[4] = sub_10051C7CC;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1003323D0;
  aBlock[3] = &unk_100A21698;
  v14 = _Block_copy(aBlock);

  v15 = v2;
  sub_1007A1C74();
  v20 = _swiftEmptyArrayStorage;
  sub_100027EF0(&qword_100ADA670, &type metadata accessor for DispatchWorkItemFlags);
  sub_1001F1160(&unk_100AD7CA0);
  sub_100005920(&qword_100ADA680, &unk_100AD7CA0);
  sub_1007A3594();
  sub_1007A2D94();
  _Block_release(v14);

  (*(v19 + 8))(v7, v5);
  (*(v8 + 8))(v10, v18);
}

uint64_t sub_10050ED80(char *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_10079BC44();
  v28 = *(v5 - 8);
  v29 = v5;
  __chkstk_darwin(v5);
  v27 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_10079EF54();
  v7 = *(v30 - 8);
  __chkstk_darwin(v30);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *&a1[OBJC_IVAR____TtC5Books19BookReaderViewModel_bookAssetID];
  v11 = *&a1[OBJC_IVAR____TtC5Books19BookReaderViewModel_bookAssetID + 8];
  v12 = swift_allocObject();
  swift_weakInit();

  sub_10060BDD8(150.0, 225.0, v10, v11, sub_10051C7D8, v12);

  v13 = *(a3 + OBJC_IVAR____TtC5Books19BookReaderPresenter_bookProviderService);
  v14 = OBJC_IVAR___REBookProviderService_bookEntity;
  swift_beginAccess();
  sub_100009864(v13 + v14, v32);
  sub_10000E3E8(v32, v32[3]);
  v15 = sub_10079EC04() & 1;
  if (v15 == a1[OBJC_IVAR____TtC5Books19BookReaderViewModel__hasPhysicalPages])
  {
    a1[OBJC_IVAR____TtC5Books19BookReaderViewModel__hasPhysicalPages] = v15;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    *(&v27 - 2) = a1;
    *(&v27 - 8) = v15;
    v31 = a1;
    sub_100027EF0(&qword_100AF2550, type metadata accessor for BookReaderViewModel);
    sub_100797A04();
  }

  sub_1000074E0(v32);
  swift_getObjectType();
  v17 = sub_1007A0A54() & 1;
  if (v17 == a1[OBJC_IVAR____TtC5Books19BookReaderViewModel__usePhysicalPages])
  {
    a1[OBJC_IVAR____TtC5Books19BookReaderViewModel__usePhysicalPages] = v17;
  }

  else
  {
    v18 = swift_getKeyPath();
    __chkstk_darwin(v18);
    *(&v27 - 2) = a1;
    *(&v27 - 8) = v17;
    v32[0] = a1;
    sub_100027EF0(&qword_100AF2550, type metadata accessor for BookReaderViewModel);
    sub_100797A04();
  }

  swift_getObjectType();
  sub_1007A1344();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v20 = Strong;
    v21 = sub_10079EE14();
    sub_1005787C0(v21);
    v22 = sub_10079EF24();
    sub_100579480(v22);
    v23 = sub_10079EE44();
    v24 = v27;
    v25 = &enum case for ColorScheme.dark(_:);
    if ((v23 & 1) == 0)
    {
      v25 = &enum case for ColorScheme.light(_:);
    }

    (*(v28 + 104))(v27, *v25, v29);
    sub_100579640(v24);
    sub_10044A40C(v9, v20);
    sub_100697090(v9);
  }

  return (*(v7 + 8))(v9, v30);
}

uint64_t sub_10050F288(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v34 = a5;
  v35 = a6;
  v32 = a3;
  v33 = a4;
  v31 = a1;
  v30 = sub_1007A2D64();
  v29 = *(v30 - 8);
  __chkstk_darwin(v30);
  v28 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1007A2CF4();
  __chkstk_darwin(v8);
  v9 = sub_1007A1CA4();
  __chkstk_darwin(v9 - 8);
  v10 = type metadata accessor for BookActionMenuDataSource();
  v39[3] = v10;
  v39[4] = &off_100A19810;
  v39[0] = a2;
  type metadata accessor for REActionMenuState(0);
  v11 = swift_allocObject();
  v12 = sub_10022569C(v39, v10);
  v13 = __chkstk_darwin(v12);
  v15 = (&v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v16 + 16))(v15, v13);
  v17 = *v15;
  v38[3] = v10;
  v38[4] = &off_100A19810;
  v38[0] = v17;
  *(v11 + 40) = 0;
  swift_unknownObjectWeakInit();
  *(v11 + 56) = 0;
  swift_unknownObjectWeakInit();
  *(v11 + 72) = 0;
  swift_unknownObjectWeakInit();
  type metadata accessor for EdgeInsetPublisher(0);
  v18 = swift_allocObject();
  v19 = *&UIEdgeInsetsZero.bottom;
  v36 = *&UIEdgeInsetsZero.top;
  v37 = v19;
  type metadata accessor for UIEdgeInsets(0);
  sub_10079B964();
  *(v11 + 120) = v18;
  *(v11 + 136) = 0;
  *(v11 + 144) = [objc_allocWithZone(type metadata accessor for ScrubberMarkerController()) init];
  swift_unknownObjectWeakInit();
  *(v11 + 184) = 0;
  swift_unknownObjectWeakInit();
  sub_10000A7C4(0, &qword_100AD1E10);
  sub_1007A1C84();
  *&v36 = _swiftEmptyArrayStorage;
  sub_100027EF0(&qword_100AE8220, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_1001F1160(&unk_100AD1E20);
  sub_100005920(&qword_100AE8230, &unk_100AD1E20);
  sub_1007A3594();
  (*(v29 + 104))(v28, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v30);
  *(v11 + 192) = sub_1007A2DA4();
  *&v36 = 0;
  *(&v36 + 1) = 0xE000000000000000;
  sub_1001F1160(&unk_100AD1E30);
  swift_allocObject();
  *(v11 + 200) = sub_10079B924();
  v36 = 0uLL;
  sub_1001F1160(&unk_100AF28B0);
  swift_allocObject();
  *(v11 + 208) = sub_10079B924();
  *(v11 + 216) = 1;
  *(v11 + 224) = 0;
  *(v11 + 232) = 0;
  *(v11 + 240) = 0;
  *(v11 + 248) = -64;
  *(v11 + 256) = _s5Books17REActionMenuStateC9pageCountSivpfi_0();
  *(v11 + 264) = 0;
  *(v11 + 272) = 0;
  *(v11 + 280) = 258;
  LOBYTE(v36) = 1;
  sub_1001F1160(&unk_100AD1E40);
  swift_allocObject();
  *(v11 + 288) = sub_10079B924();
  *(v11 + 296) = 0;
  *(v11 + 298) = 0;
  *(v11 + 304) = 0;
  *(v11 + 312) = 0;
  *(v11 + 320) = 0;
  *(v11 + 328) = 0x8000000000000000;
  *(v11 + 336) = &_swiftEmptySetSingleton;
  *(v11 + 344) = 0x3F847AE147AE147BLL;
  *(v11 + 352) = 0;
  _s5Books17REActionMenuStateC22__observationRegistrar33_32ABA65274D463EF405FFF160E47F6ACLL11Observation0nF0Vvpfi_0();
  type metadata accessor for GatedActionHandler();
  v20 = swift_allocObject();
  v20[3] = 0;
  swift_unknownObjectWeakInit();
  v20[5] = 0;
  v20[3] = &off_100A2BBB8;
  v20[4] = variable initialization expression of SearchBar.Coordinator.isEditing;
  v21 = v31;
  swift_unknownObjectWeakAssign();

  *(v11 + 16) = v20;
  *(v11 + 24) = &off_100A16500;
  sub_100009864(v38, v11 + 80);
  v22 = v33;
  *(v11 + 152) = v32;
  *(v11 + 128) = v22;
  v23 = v34;
  swift_unknownObjectWeakAssign();

  v24 = sub_1007A2214();
  v25 = v35;
  LOBYTE(v18) = [v35 BOOLForKey:v24];

  sub_1000074E0(v38);
  *(v11 + 168) = v18;
  v26 = swift_allocObject();
  swift_weakInit();
  v20[4] = sub_10051C914;
  v20[5] = v26;

  sub_1000074E0(v39);
  return v11;
}

uint64_t sub_10050F924(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  LODWORD(v85) = a3;
  v5 = type metadata accessor for State(0);
  __chkstk_darwin(v5 - 8);
  v111 = v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = sub_1007A2E74();
  v107 = *(v106 - 8);
  __chkstk_darwin(v106);
  v101 = v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = sub_1001F1160(&qword_100AE8888);
  __chkstk_darwin(v109);
  v102 = v72 - v8;
  v97 = sub_1001F1160(&qword_100AE8890);
  v98 = *(v97 - 8);
  __chkstk_darwin(v97);
  v95 = v72 - v9;
  v103 = sub_1001F1160(&qword_100AE8898);
  __chkstk_darwin(v103);
  v96 = v72 - v10;
  v104 = sub_1001F1160(&qword_100AE88A0);
  v105 = *(v104 - 8);
  __chkstk_darwin(v104);
  v99 = v72 - v11;
  v108 = sub_1001F1160(&qword_100AE88A8);
  v110 = *(v108 - 8);
  __chkstk_darwin(v108);
  v100 = v72 - v12;
  v13 = sub_1001F1160(&qword_100AD7EB0);
  __chkstk_darwin(v13 - 8);
  v118 = v72 - v14;
  v82 = sub_1001F1160(&unk_100AE6AA0);
  v120 = *(v82 - 8);
  __chkstk_darwin(v82);
  v114 = v72 - v15;
  v83 = sub_1001F1160(&qword_100AE88B0);
  v122 = *(v83 - 8);
  __chkstk_darwin(v83);
  v80 = v72 - v16;
  v115 = sub_1001F1160(&qword_100AF26D0);
  v121 = *(v115 - 1);
  __chkstk_darwin(v115);
  v81 = v72 - v17;
  v91 = sub_1001F1160(&qword_100AE88B8);
  __chkstk_darwin(v91);
  v86 = v72 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v116 = v72 - v20;
  v89 = sub_1001F1160(&qword_100AE88C0);
  __chkstk_darwin(v89);
  v112 = v72 - v21;
  v87 = sub_1001F1160(&qword_100AE88C8);
  __chkstk_darwin(v87);
  v79 = v72 - v22;
  v90 = sub_1001F1160(&qword_100AE88D0);
  v92 = *(v90 - 8);
  __chkstk_darwin(v90);
  v84 = v72 - v23;
  v93 = sub_1001F1160(&qword_100AE88D8);
  v94 = *(v93 - 8);
  __chkstk_darwin(v93);
  v88 = v72 - v24;
  *(a4 + 16) = 0;
  LOBYTE(v123) = 0;
  sub_1001F1160(&unk_100AD1E40);
  swift_allocObject();
  *(a4 + 32) = sub_10079B924();
  *(a4 + 40) = 0;
  *(a4 + 64) = 0;
  swift_unknownObjectWeakInit();
  *(a4 + 80) = 0;
  swift_unknownObjectWeakInit();
  *(a4 + 88) = &_swiftEmptySetSingleton;
  v117 = a4 + 88;
  type metadata accessor for BookOrientationTracker();
  swift_allocObject();
  *(a4 + 48) = sub_100435DDC();
  v119 = objc_opt_self();
  v25 = [v119 standardUserDefaults];
  sub_1001F1160(&unk_100ADE550);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10080EFF0;
  *(inited + 32) = 0xD000000000000015;
  *(inited + 40) = 0x80000001008D4D40;
  *(inited + 48) = 0;
  *(inited + 72) = &type metadata for Bool;
  *(inited + 80) = 0xD000000000000013;
  *(inited + 120) = &type metadata for Int;
  *(inited + 88) = 0x80000001008D4D60;
  *(inited + 96) = 0;
  sub_100019158(inited);
  swift_setDeallocating();
  sub_1001F1160(&unk_100ADD560);
  swift_arrayDestroy();
  isa = sub_1007A2024().super.isa;

  [v25 registerDefaults:isa];

  type metadata accessor for BookReaderChromeController(0);
  swift_allocObject();
  *(a4 + 24) = sub_100444E04(v85);
  *(a4 + 104) = &protocol witness table for ReadingSettingsManager;
  swift_unknownObjectUnownedInit();
  *(a4 + 120) = &protocol witness table for BookLayoutModeManager;
  swift_unknownObjectUnownedInit();
  v113 = a4;
  sub_100436FB8();
  sub_1007A0EF4();
  v123 = sub_1007A1394();
  v85 = sub_1001F1160(&unk_100AEB8B0);
  v78 = sub_100005920(&unk_100AF25D0, &unk_100AEB8B0);
  sub_10079B9E4();

  sub_10079F4C4();
  v123 = sub_10079F504();
  v77 = sub_1001F1160(&unk_100AEA1A0);
  v76 = sub_100005920(&qword_100AF2900, &unk_100AEA1A0);
  sub_10079B9E4();

  swift_beginAccess();
  v75 = sub_1001F1160(&qword_100AE3CD0);
  v28 = v114;
  sub_10079B974();
  swift_endAccess();
  swift_getKeyPath();
  v74 = sub_100005920(&unk_100AE6AB0, &unk_100AE6AA0);
  v29 = v80;
  v30 = v82;
  sub_10079BA64();

  v31 = *(v120 + 8);
  v120 += 8;
  v73 = v31;
  v31(v28, v30);
  v72[1] = sub_100005920(&qword_100AE88E0, &qword_100AE88B0);
  v32 = v81;
  v33 = v83;
  sub_10079BAF4();
  v34 = *(v122 + 8);
  v122 += 8;
  v34(v29, v33);
  v35 = sub_100005920(&unk_100AF2940, &qword_100AF26D0);
  v36 = v115;
  sub_10079B9E4();
  v37 = *(v121 + 8);
  v121 += 8;
  v37(v32, v36);
  swift_beginAccess();
  v38 = v114;
  sub_10079B974();
  swift_endAccess();
  swift_getKeyPath();
  sub_10079BA64();

  v73(v38, v30);
  sub_10079BAF4();
  v34(v29, v33);
  v39 = v115;
  sub_10079B9E4();
  v37(v32, v39);
  v123 = v85;
  v124 = v78;
  swift_getOpaqueTypeConformance2();
  v123 = v77;
  v124 = v76;
  swift_getOpaqueTypeConformance2();
  v123 = v39;
  v124 = v35;
  swift_getOpaqueTypeConformance2();
  v40 = v84;
  sub_10079B804();
  v114 = sub_10000A7C4(0, &qword_100AD1E10);
  v41 = sub_1007A2D74();
  v123 = v41;
  v121 = sub_1007A2D24();
  v42 = *(v121 - 8);
  v120 = *(v42 + 56);
  v122 = v42 + 56;
  v43 = v118;
  (v120)(v118, 1, 1, v121);
  sub_100005920(&qword_100AE88E8, &qword_100AE88D0);
  v116 = sub_10051C650(&qword_100AE8CA0, &qword_100AD1E10);
  v44 = v88;
  v45 = v90;
  sub_10079BAB4();
  sub_100007840(v43, &qword_100AD7EB0);
  (*(v92 + 8))(v40, v45);

  v46 = swift_allocObject();
  v47 = v113;
  swift_weakInit();
  v48 = swift_allocObject();
  *(v48 + 16) = sub_10051C91C;
  *(v48 + 24) = v46;
  v115 = &protocol conformance descriptor for Publishers.ReceiveOn<A, B>;
  sub_100005920(&qword_100AE88F0, &qword_100AE88D8);

  v49 = v93;
  sub_10079BB04();

  (*(v94 + 8))(v44, v49);
  swift_beginAccess();
  sub_10079B854();
  swift_endAccess();

  v50 = [v119 standardUserDefaults];
  swift_getKeyPath();
  v51 = v95;
  sub_1007968C4();

  v52 = sub_100005920(&qword_100AE88F8, &qword_100AE8890);
  v53 = v97;
  sub_10079B9E4();
  v54 = v51;
  v55 = v53;
  (*(v98 + 8))(v54, v53);
  v56 = [objc_opt_self() defaultCenter];
  v57 = v101;
  sub_1007A2E84();

  v58 = sub_100027EF0(&qword_100AE19E0, &type metadata accessor for NSNotificationCenter.Publisher);
  v59 = v106;
  sub_10079B9E4();
  (*(v107 + 8))(v57, v59);
  v123 = v55;
  v124 = v52;
  swift_getOpaqueTypeConformance2();
  v123 = v59;
  v124 = v58;
  swift_getOpaqueTypeConformance2();
  v60 = v99;
  sub_10079B7F4();
  v61 = sub_1007A2D74();
  v123 = v61;
  v62 = v118;
  (v120)(v118, 1, 1, v121);
  sub_100005920(&qword_100AE8900, &qword_100AE88A0);
  v63 = v100;
  v64 = v104;
  sub_10079BAB4();
  sub_100007840(v62, &qword_100AD7EB0);
  (*(v105 + 8))(v60, v64);

  swift_allocObject();
  swift_weakInit();

  sub_100005920(&qword_100AE8908, &qword_100AE88A8);
  v65 = v108;
  sub_10079BB04();

  (*(v110 + 8))(v63, v65);
  swift_beginAccess();
  sub_10079B854();
  swift_endAccess();

  v66 = *(v47 + 24);
  v67 = [v119 standardUserDefaults];
  LOBYTE(v65) = [v67 readerShowStatusBar];

  v68 = OBJC_IVAR____TtC5Books26BookReaderChromeController_state;
  swift_beginAccess();
  v69 = v66 + v68;
  v70 = v111;
  sub_10051C938(v69, v111, type metadata accessor for State);
  *(v70 + 1) = v65;
  sub_100444C5C(v70);
  return v47;
}

uint64_t sub_100510F38(uint64_t a1, uint64_t a2)
{
  v88 = a1;
  v3 = sub_1001F1160(&qword_100AE8910);
  v4 = *(v3 - 8);
  v103 = v3;
  v104 = v4;
  __chkstk_darwin(v3);
  v102 = v70 - v5;
  v6 = sub_1001F1160(&qword_100AE8918);
  v7 = *(v6 - 8);
  v98 = v6;
  v99 = v7;
  __chkstk_darwin(v6);
  v96 = v70 - v8;
  v9 = sub_1001F1160(&qword_100AE8920);
  v10 = *(v9 - 8);
  v100 = v9;
  v101 = v10;
  __chkstk_darwin(v9);
  v97 = v70 - v11;
  v90 = sub_1001F1160(&qword_100AE8928);
  v92 = *(v90 - 8);
  __chkstk_darwin(v90);
  v86 = v70 - v12;
  v91 = sub_1001F1160(&qword_100AE8930);
  v93 = *(v91 - 8);
  __chkstk_darwin(v91);
  v87 = v70 - v13;
  v14 = sub_1001F1160(&qword_100AE8938);
  v15 = *(v14 - 8);
  v94 = v14;
  v95 = v15;
  __chkstk_darwin(v14);
  v89 = v70 - v16;
  v84 = sub_1001F1160(&qword_100ADD120);
  v85 = *(v84 - 8);
  __chkstk_darwin(v84);
  v83 = v70 - v17;
  v18 = sub_1001F1160(&qword_100AD7EB0);
  __chkstk_darwin(v18 - 8);
  v78 = v70 - v19;
  v79 = sub_1001F1160(&qword_100AE99A0);
  v80 = *(v79 - 8);
  __chkstk_darwin(v79);
  v76 = v70 - v20;
  v81 = sub_1001F1160(&qword_100AE8940);
  v82 = *(v81 - 8);
  __chkstk_darwin(v81);
  v77 = v70 - v21;
  v72 = sub_1001F1160(&qword_100AE8948);
  v73 = *(v72 - 1);
  __chkstk_darwin(v72);
  v71 = v70 - v22;
  v23 = sub_1001F1160(&unk_100AE1530);
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v26 = v70 - v25;
  swift_getObjectType();
  sub_10079F9B4();
  swift_allocObject();
  swift_weakInit();
  v75 = &protocol conformance descriptor for Published<A>.Publisher;
  sub_100005920(&qword_100AD82D0, &unk_100AE1530);
  sub_10079BB04();

  (*(v24 + 8))(v26, v23);
  swift_beginAccess();
  sub_10079B854();
  swift_endAccess();

  v105 = *(a2 + 168);
  v27 = OBJC_IVAR____TtC5Books25CurrentLocationController_currentLocationProvider;
  type metadata accessor for CurrentLocationProvider();
  sub_100027EF0(&unk_100AF42A0, type metadata accessor for CurrentLocationProvider);

  v28 = sub_1007A0554();

  v107 = v28;
  swift_allocObject();
  swift_weakInit();
  sub_1001F1160(&qword_100AE6460);
  v74 = &protocol conformance descriptor for AnyPublisher<A, B>;
  sub_100005920(&unk_100AEB880, &qword_100AE6460);
  sub_10079BB04();

  swift_beginAccess();
  sub_10079B854();
  swift_endAccess();

  v70[1] = v27;

  v29 = sub_1007A05D4();

  v106 = v29;

  v30 = sub_1007A05E4();
  v32 = v31;

  v107 = v30;
  v108 = v32;
  v33 = sub_1001F1160(&qword_100AF28C0);
  v34 = sub_100005920(&qword_100AE8950, &qword_100AF28C0);
  v35 = v71;
  sub_10079BA04();

  v36 = swift_allocObject();
  swift_weakInit();
  v37 = swift_allocObject();
  *(v37 + 16) = sub_10051C9B0;
  *(v37 + 24) = v36;
  v107 = v33;
  v108 = v34;
  swift_getOpaqueTypeConformance2();
  v38 = v72;
  sub_10079BB04();

  (*(v73 + 8))(v35, v38);
  swift_beginAccess();
  sub_10079B854();
  swift_endAccess();

  v39 = sub_1007A05D4();

  v107 = v39;
  swift_allocObject();
  swift_weakInit();
  sub_10079BB04();

  swift_beginAccess();
  sub_10079B854();
  swift_endAccess();

  swift_getObjectType();
  v40 = v76;
  sub_1007A14F4();
  sub_10000A7C4(0, &qword_100AD1E10);
  v41 = sub_1007A2D74();
  v107 = v41;
  v42 = sub_1007A2D24();
  v43 = *(v42 - 8);
  v72 = *(v43 + 56);
  v73 = v43 + 56;
  v44 = v78;
  (v72)(v78, 1, 1, v42);
  sub_100005920(&qword_100AE8958, &qword_100AE99A0);
  v105 = sub_10051C650(&qword_100AE8CA0, &qword_100AD1E10);
  v45 = v77;
  v46 = v79;
  sub_10079BAB4();
  v47 = v44;
  sub_100007840(v44, &qword_100AD7EB0);

  (*(v80 + 8))(v40, v46);
  swift_allocObject();
  swift_weakInit();
  sub_100005920(&qword_100AE8960, &qword_100AE8940);
  v48 = v81;
  sub_10079BB04();

  (*(v82 + 8))(v45, v48);
  swift_beginAccess();
  sub_10079B854();
  swift_endAccess();

  swift_getObjectType();
  v107 = sub_1007A0A64();
  v49 = sub_1007A2D74();
  v106 = v49;
  (v72)(v47, 1, 1, v42);
  sub_1001F1160(&unk_100AF27D0);
  sub_100005920(&qword_100AEA160, &unk_100AF27D0);
  v50 = v83;
  sub_10079BAB4();
  sub_100007840(v47, &qword_100AD7EB0);

  swift_allocObject();
  swift_weakInit();
  sub_100005920(&unk_100AF27E0, &qword_100ADD120);
  v51 = v84;
  sub_10079BB04();

  (*(v85 + 8))(v50, v51);
  swift_beginAccess();
  sub_10079B854();
  swift_endAccess();

  v52 = v88;
  v107 = *(v88 + 264);
  sub_1001F1160(&qword_100ADED00);
  sub_100005920(&qword_100ADED08, &qword_100ADED00);
  v106 = sub_10079BA14();
  sub_1001F1160(&qword_100AE8968);
  v53 = swift_allocObject();
  *(v53 + 16) = xmmword_10080B690;
  swift_beginAccess();
  v54 = *(v52 + 88);
  *(v53 + 32) = v54;
  *(v53 + 40) = &protocol witness table for UITraitCollection;
  v55 = v54;
  sub_1001F1160(&qword_100AE8970);
  sub_100005920(&qword_100AE8978, &qword_100AE8970);
  v56 = v86;
  sub_10079BAA4();

  swift_getKeyPath();
  sub_100005920(&qword_100AE8980, &qword_100AE8928);
  v57 = v87;
  v58 = v90;
  sub_10079BA64();

  (*(v92 + 8))(v56, v58);
  sub_100005920(&qword_100AE8988, &qword_100AE8930);
  v59 = v89;
  v60 = v91;
  sub_10079BAF4();
  (*(v93 + 8))(v57, v60);
  swift_getKeyPath();
  v106 = *(a2 + 176);
  v61 = v106;
  sub_100005920(&qword_100AE8990, &qword_100AE8938);
  swift_retain_n();
  v62 = v94;
  sub_10079BB14();

  (*(v95 + 8))(v59, v62);
  swift_beginAccess();
  sub_10079B854();
  swift_endAccess();

  v106 = *(v52 + 48);
  sub_1001F1160(&qword_100ADECD8);
  sub_100005920(&unk_100AF27F0, &qword_100ADECD8);
  v106 = sub_10079BA14();
  swift_getKeyPath();
  sub_1001F1160(&qword_100AE8998);
  sub_100005920(&qword_100AF2800, &qword_100AE8998);
  v63 = v96;
  sub_10079BA64();

  sub_100005920(&qword_100AE89A0, &qword_100AE8918);
  sub_1004CEFC0();
  v65 = v97;
  v64 = v98;
  sub_10079BAF4();
  (*(v99 + 8))(v63, v64);
  swift_getKeyPath();
  v106 = v61;
  sub_100005920(&qword_100AE89A8, &qword_100AE8920);
  v66 = v100;
  sub_10079BB14();

  (*(v101 + 8))(v65, v66);
  swift_beginAccess();
  sub_10079B854();
  swift_endAccess();

  type metadata accessor for BookReaderDataManager();
  v106 = sub_1005B6CF4();
  swift_getKeyPath();
  sub_1001F1160(&qword_100AE63E8);
  sub_100005920(&qword_100AE63F0, &qword_100AE63E8);
  v67 = v102;
  sub_10079BA64();

  swift_getKeyPath();
  v106 = v61;
  sub_100005920(&qword_100AE89B0, &qword_100AE8910);
  v68 = v103;
  sub_10079BB14();

  (*(v104 + 8))(v67, v68);
  swift_beginAccess();
  sub_10079B854();
  swift_endAccess();
}

uint64_t sub_1005124DC(uint64_t a1, uint64_t a2)
{
  v3 = sub_1001F1160(&qword_100AD7EB0);
  __chkstk_darwin(v3 - 8);
  v5 = &v17 - v4;
  v6 = sub_1001F1160(&qword_100ADD128);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v19 = &v17 - v8;
  type metadata accessor for AnnotationProviderService();
  sub_100027EF0(&qword_100AE8750, type metadata accessor for AnnotationProviderService);
  sub_1007A0894();
  v9 = sub_10079F284();
  result = sub_10079F294();
  v11 = v9 + result;
  if (__OFADD__(v9, result))
  {
    __break(1u);
  }

  else
  {
    v17 = v7;
    v18 = v6;
    if (*(a2 + 136) == v11)
    {

      *(a2 + 136) = v11;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      *(&v17 - 2) = a2;
      *(&v17 - 1) = v11;
      v20 = a2;
      sub_100027EF0(&qword_100ADB430, type metadata accessor for REActionMenuState);
      sub_100797A04();
    }

    v20 = sub_1007A08D4();
    sub_10000A7C4(0, &qword_100AD1E10);
    v13 = sub_1007A2D74();
    v21 = v13;
    v14 = sub_1007A2D24();
    (*(*(v14 - 8) + 56))(v5, 1, 1, v14);
    sub_1001F1160(&qword_100ADD130);
    sub_100005920(&qword_100ADD138, &qword_100ADD130);
    sub_10051C650(&qword_100AE8CA0, &qword_100AD1E10);
    v15 = v19;
    sub_10079BAB4();
    sub_100007840(v5, &qword_100AD7EB0);

    swift_allocObject();
    swift_weakInit();
    sub_100005920(&qword_100ADD140, &qword_100ADD128);
    v16 = v18;
    sub_10079BB04();

    (*(v17 + 8))(v15, v16);
    swift_beginAccess();
    sub_10079B854();
    swift_endAccess();
  }

  return result;
}

unint64_t sub_100512978(void *a1, void *a2, void *a3, _BYTE *a4)
{
  v8 = sub_100796BB4();
  __chkstk_darwin(v8 - 8);
  v47 = v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1001F1160(&qword_100AE6A10);
  __chkstk_darwin(v10 - 8);
  v12 = v45 - v11;
  *&a4[OBJC_IVAR____TtC5Books33CurrentLocationPersistenceService_annotationFRC] = 0;
  v13 = &a4[OBJC_IVAR____TtC5Books33CurrentLocationPersistenceService_lastSynchronizedLocation];
  *v13 = 0;
  v13[1] = 0;
  *&a4[OBJC_IVAR____TtC5Books33CurrentLocationPersistenceService_annotationMOC] = a1;
  v14 = OBJC_IVAR___REBookProviderService_bookEntity;
  swift_beginAccess();
  sub_100009864(a2 + v14, &a4[OBJC_IVAR____TtC5Books33CurrentLocationPersistenceService_bookEntity]);
  *&a4[OBJC_IVAR____TtC5Books33CurrentLocationPersistenceService_annotationModifier] = a3;
  a4[OBJC_IVAR____TtC5Books33CurrentLocationPersistenceService_bookInstanceHasClosed] = 0;
  sub_100009864(a2 + v14, v51);
  sub_10000E3E8(v51, v52);
  v48 = a1;
  v46 = a3;
  sub_10079EC34();
  sub_100009864(a2 + v14, v50);
  sub_10000E3E8(v50, v50[3]);
  sub_10079EC34();
  sub_10079FD04();
  sub_1000074E0(v50);
  v15 = sub_10079FD44();
  (*(*(v15 - 8) + 56))(v12, 0, 1, v15);
  sub_100796A84();
  sub_1007A1154();
  swift_allocObject();
  v16 = sub_1007A1144();
  sub_1000074E0(v51);
  swift_beginAccess();
  v50[0] = v16;

  sub_10079B964();
  swift_endAccess();
  *v13 = 0;
  v13[1] = 0;

  v17 = type metadata accessor for CurrentLocationPersistenceService();
  v49.receiver = a4;
  v49.super_class = v17;
  v18 = objc_msgSendSuper2(&v49, "init");
  v19 = objc_allocWithZone(NSFetchRequest);
  v20 = v18;
  v21 = sub_1007A2214();
  v22 = [v19 initWithEntityName:v21];

  v23 = objc_opt_self();
  v45[1] = v14;
  sub_100009864(a2 + v14, v51);
  sub_10000E3E8(v51, v52);
  sub_10079ECA4();
  v24 = sub_1007A2214();

  sub_1000074E0(v51);
  v25 = [v23 predicateForGlobalAnnotationWithAssetID:v24];

  [v22 setPredicate:v25];
  sub_1001F1160(&unk_100AD8160);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_100811390;
  v27 = objc_allocWithZone(NSSortDescriptor);
  v28 = v48;
  v29 = sub_1007A2214();
  v30 = [v27 initWithKey:v29 ascending:0];

  *(v26 + 32) = v30;
  sub_10000A7C4(0, &unk_100AE9A50);
  isa = sub_1007A25D4().super.isa;

  [v22 setSortDescriptors:isa];

  [v22 setFetchLimit:1];
  sub_10000A7C4(0, &qword_100AECB40);
  result = sub_1007A2F34();
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_8:

    return v20;
  }

  v43 = result;
  v44 = sub_1007A38D4();
  result = v43;
  if (!v44)
  {
    goto LABEL_8;
  }

LABEL_3:
  v47 = v16;
  if ((result & 0xC000000000000001) != 0)
  {
    v33 = v20;
    v34 = sub_1007A3784();
    goto LABEL_6;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v33 = v20;
    v34 = *(result + 32);
LABEL_6:
    v35 = v34;

    v36 = sub_100550AF0();
    swift_getKeyPath();
    swift_getKeyPath();
    v51[0] = v36;
    v37 = v33;
    v38 = v33;
    v20 = v37;
    sub_10079B9B4();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10079B9A4();

    v39 = sub_1007A02F4();
    v41 = v40;

    v42 = &v38[OBJC_IVAR____TtC5Books33CurrentLocationPersistenceService_lastSynchronizedLocation];
    *v42 = v39;
    v42[1] = v41;

    return v20;
  }

  __break(1u);
  return result;
}

uint64_t sub_100513270(uint64_t a1, void *a2, uint64_t (**a3)(void, void), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v37 = a4;
  v42 = a1;
  v40 = sub_1001F1160(&qword_100AE89C8);
  v41 = *(v40 - 8);
  __chkstk_darwin(v40);
  v39 = &v33 - v15;
  v35 = sub_10079F844();
  v34 = *(v35 - 8);
  __chkstk_darwin(v35);
  v33 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10079F7E4();
  __chkstk_darwin(v17 - 8);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  *(a9 + 96) = UIEdgeInsetsZero.top;
  *(a9 + 104) = left;
  *(a9 + 112) = bottom;
  *(a9 + 120) = right;
  *(a9 + 240) = 0;
  *(a9 + 336) = 0;
  swift_unknownObjectWeakInit();
  *(a9 + 336) = a3;
  *(a9 + 344) = &_swiftEmptySetSingleton;
  swift_unknownObjectWeakAssign();
  ObjectType = swift_getObjectType();
  *(a9 + 88) = [a2 traitCollection];
  *(a9 + 152) = &type metadata for BookReaderLayoutController.ActionButtonLayout;
  *(a9 + 160) = sub_10051CA14();
  [a2 safeAreaInsets];
  *(a9 + 168) = v21;
  *(a9 + 176) = v22;
  *(a9 + 184) = v23;
  *(a9 + 192) = v24;
  *(a9 + 296) = a5;
  *(a9 + 304) = a6;
  *(a9 + 312) = a7;
  *(a9 + 320) = a8;
  v38 = sub_10079F4C4();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  *(a9 + 288) = sub_10079F4F4();
  sub_1001F1160(&qword_100ADECF0);
  swift_allocObject();
  *(a9 + 256) = sub_10079B8D4();
  *(a9 + 16) = 0u;
  *(a9 + 32) = 0u;
  *(a9 + 56) = 0u;
  *(a9 + 72) = 0u;
  *(a9 + 208) = UIEdgeInsetsZero.top;
  *(a9 + 216) = left;
  *(a9 + 224) = bottom;
  *(a9 + 232) = right;
  v48 = 0u;
  v49 = 0u;
  sub_1001F1160(&qword_100ADECD8);
  swift_allocObject();
  *(a9 + 48) = sub_10079B924();
  swift_beginAccess();
  v25 = *(a9 + 184);
  v48 = *(a9 + 168);
  v49 = v25;
  sub_1001F1160(&qword_100ADECC8);
  swift_allocObject();
  *(a9 + 200) = sub_10079B924();
  sub_1001F1160(&qword_100ADED00);
  swift_allocObject();
  *(a9 + 264) = sub_10079B8D4();
  v26 = [a2 traitCollection];
  sub_10079F7C4();
  sub_1001F1160(&qword_100ADED10);
  swift_allocObject();
  *(a9 + 272) = sub_10079B924();
  sub_1001F1160(&qword_100ADECE0);
  swift_allocObject();
  *(a9 + 248) = sub_10079B8D4();
  (*(v34 + 104))(v33, enum case for BookContentApplicationForegroundState.unknown(_:), v35);
  sub_1001F1160(&qword_100ADED20);
  swift_allocObject();
  *(a9 + 280) = sub_10079B924();
  memset(v46, 0, sizeof(v46));
  v47 = 1;
  v48 = 0u;
  v49 = 0u;
  v50 = 1;
  sub_10038873C(v46, &v48);
  v45 = *(a9 + 48);
  swift_unownedRetainStrong();

  swift_unownedRetain();

  *(swift_allocObject() + 16) = a9;
  sub_100005920(&unk_100AF27F0, &qword_100ADECD8);
  sub_10079BB04();

  swift_beginAccess();
  sub_10079B854();
  swift_endAccess();

  v27 = ObjectType;
  v35 = a3[1](ObjectType, a3);
  v45 = v35;
  v44 = a3[2](v27, a3);
  v43 = a3[3](v27, a3);
  ObjectType = sub_1001F1160(&qword_100AE8998);
  v34 = sub_1001F1160(&qword_100ADC880);
  sub_1001F1160(&qword_100AE89D8);
  sub_100005920(&qword_100AF2800, &qword_100AE8998);
  sub_100005920(&qword_100ADC888, &qword_100ADC880);
  sub_100005920(&qword_100AE89E0, &qword_100AE89D8);
  v28 = v39;
  sub_10079BA34();

  swift_unownedRetainStrong();
  swift_unownedRetain();

  v29 = swift_allocObject();
  *(v29 + 16) = a9;
  v30 = swift_allocObject();
  *(v30 + 16) = sub_10051CA70;
  *(v30 + 24) = v29;
  sub_100005920(&qword_100AE89E8, &qword_100AE89C8);
  v31 = v40;
  sub_10079BB04();

  (*(v41 + 8))(v28, v31);
  swift_beginAccess();
  sub_10079B854();
  swift_endAccess();

  v45 = sub_10079F504();
  swift_unownedRetainStrong();
  swift_unownedRetain();

  *(swift_allocObject() + 16) = a9;
  sub_1001F1160(&unk_100AEA1A0);
  sub_100005920(&qword_100AF2900, &unk_100AEA1A0);
  sub_10079BB04();

  swift_beginAccess();
  sub_10079B854();
  swift_endAccess();

  sub_1000074E0(v42);
  return a9;
}

void sub_100513BDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _BYTE *a6)
{
  swift_unknownObjectWeakInit();
  *&a6[OBJC_IVAR____TtC5Books25AnnotationProviderService_annotationFRC] = 0;
  swift_unknownObjectWeakInit();
  swift_weakInit();
  v9 = OBJC_IVAR____TtC5Books25AnnotationProviderService_annotationsChangeSubject;
  sub_1001F1160(&qword_100AD20A8);
  swift_allocObject();
  *&a6[v9] = sub_10079B8D4();
  v10 = OBJC_IVAR____TtC5Books25AnnotationProviderService_bookmarkChangeSubject;
  sub_1001F1160(&qword_100AD20B0);
  swift_allocObject();
  *&a6[v10] = sub_10079B8D4();
  v11 = OBJC_IVAR____TtC5Books25AnnotationProviderService_highlightChangeSubject;
  sub_1001F1160(&qword_100AD20B8);
  swift_allocObject();
  *&a6[v11] = sub_10079B8D4();
  swift_unknownObjectWeakAssign();
  v12 = OBJC_IVAR___REBookProviderService_bookEntity;
  swift_beginAccess();
  v13 = OBJC_IVAR____TtC5Books25AnnotationProviderService_bookEntity;
  sub_100009864(a2 + v12, &a6[OBJC_IVAR____TtC5Books25AnnotationProviderService_bookEntity]);
  *&a6[OBJC_IVAR____TtC5Books25AnnotationProviderService_annotationModifier] = a3;
  swift_unknownObjectWeakAssign();
  swift_weakAssign();
  v14 = objc_opt_self();
  swift_unknownObjectRetain();
  v15 = [v14 standardUserDefaults];
  v16 = sub_1007A2214();
  v17 = [v15 BOOLForKey:v16];

  v18 = sub_1007A2214();
  v19 = [v15 integerForKey:v18];

  if (v19 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (v19 <= 0x7FFFFFFF)
  {
    if (v19 <= 2)
    {
      switch(v19)
      {
        case 0:
          if (v17)
          {
            v20 = 5;
          }

          else
          {
            v20 = 0;
          }

          goto LABEL_20;
        case 1:
          v20 = 1;
          goto LABEL_20;
        case 2:
          v20 = 2;
          goto LABEL_20;
      }
    }

    else if (v19 > 4)
    {
      if (v19 == 5)
      {
        v20 = 4;
        goto LABEL_20;
      }

      if (v19 == 6)
      {
        v20 = 5;
        goto LABEL_20;
      }
    }

    else if (v19 != 3)
    {
      v20 = 3;
LABEL_20:
      a6[OBJC_IVAR____TtC5Books25AnnotationProviderService_currentHighlightStyle] = v20;
      sub_100009864(&a6[v13], v26);
      sub_10000E3E8(v26, v26[3]);
      sub_10079ECA4();
      sub_10079F2D4();
      swift_allocObject();
      v21 = sub_10079F2C4();
      sub_1000074E0(v26);
      swift_beginAccess();
      v25 = v21;
      sub_10079B964();
      swift_endAccess();
      sub_1001F1160(&unk_100ADE550);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10080EFF0;
      *(inited + 32) = 0xD000000000000017;
      *(inited + 40) = 0x80000001008DAB50;
      *(inited + 48) = 3;
      *(inited + 72) = &type metadata for Int32;
      *(inited + 80) = 0xD000000000000017;
      *(inited + 88) = 0x80000001008DAB30;
      *(inited + 120) = &type metadata for Bool;
      *(inited + 96) = 0;
      sub_100019158(inited);
      swift_setDeallocating();
      sub_1001F1160(&unk_100ADD560);
      swift_arrayDestroy();
      isa = sub_1007A2024().super.isa;

      [v15 registerDefaults:isa];

      v24.receiver = a6;
      v24.super_class = type metadata accessor for AnnotationProviderService();
      objc_msgSendSuper2(&v24, "init");

      return;
    }

    v20 = 0;
    goto LABEL_20;
  }

  __break(1u);
}

id sub_100514094(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v34 = a2;
  v10 = sub_1001F1160(&unk_100AE1530);
  v11 = *(v10 - 8);
  v36 = v10;
  v37 = v11;
  __chkstk_darwin(v10);
  v35 = &v32 - v12;
  v13 = sub_1007A18D4();
  __chkstk_darwin(v13 - 8);
  v14 = sub_1001F1160(&unk_100AD5A90);
  __chkstk_darwin(v14 - 8);
  v16 = &v32 - v15;
  v40[3] = sub_1007A17F4();
  v40[4] = &protocol witness table for NavigationHistoryController;
  v40[0] = a4;
  swift_unknownObjectWeakInit();
  *&a5[OBJC_IVAR____TtC5Books25CurrentLocationController_cancellables] = &_swiftEmptySetSingleton;
  v17 = OBJC_IVAR____TtC5Books25CurrentLocationController_cfiUpdatesByOrdinal;
  *&a5[v17] = sub_1001EED04(_swiftEmptyArrayStorage);
  v18 = OBJC_IVAR____TtC5Books25CurrentLocationController_storedUpdate;
  v19 = type metadata accessor for CurrentLocationController.StoredUpdate(0);
  (*(*(v19 - 8) + 56))(&a5[v18], 1, 1, v19);
  a5[OBJC_IVAR____TtC5Books25CurrentLocationController_sendStoredUpdate] = 0;
  v20 = &a5[OBJC_IVAR____TtC5Books25CurrentLocationController_sendTimer];
  *(v20 + 4) = 0;
  *v20 = 0u;
  *(v20 + 1) = 0u;
  sub_10000A7C4(0, &qword_100AD20A0);
  sub_1007A33F4();
  v21 = &a5[OBJC_IVAR____TtC5Books25CurrentLocationController____lazy_storage___largestDocumentIndex];
  *v21 = 0;
  v21[8] = 1;
  a5[OBJC_IVAR____TtC5Books25CurrentLocationController_started] = 0;
  sub_100009864(a1, &a5[OBJC_IVAR____TtC5Books25CurrentLocationController_bookEntity]);
  v22 = sub_1007A1C14();
  v33 = v22;
  v23 = *(v22 - 8);
  (*(v23 + 16))(v16, a2, v22);
  (*(v23 + 56))(v16, 0, 1, v22);
  sub_10000E3E8(a1, a1[3]);
  v24 = sub_10079EC34();
  type metadata accessor for CurrentLocationProvider();
  swift_allocObject();
  *&a5[OBJC_IVAR____TtC5Books25CurrentLocationController_currentLocationProvider] = sub_100235374(v16, v24);
  v25 = &a5[OBJC_IVAR____TtC5Books25CurrentLocationController_paginationProvider];
  *v25 = a3;
  v25[1] = &protocol witness table for PaginatingService;
  sub_10000E3E8(a1, a1[3]);

  a5[OBJC_IVAR____TtC5Books25CurrentLocationController_pageProgressDirection] = sub_10079EC44() & 1;
  sub_100009864(v40, &a5[OBJC_IVAR____TtC5Books25CurrentLocationController_historyController]);
  sub_1007A18C4();
  sub_100027EF0(&unk_100AF42A0, type metadata accessor for CurrentLocationProvider);
  sub_1007A1104();
  swift_allocObject();

  *&a5[OBJC_IVAR____TtC5Books25CurrentLocationController_locationHistoryObserver] = sub_1007A10E4();
  *&a5[OBJC_IVAR____TtC5Books25CurrentLocationController_cfiByOrdinal] = sub_1001EEEE0(_swiftEmptyArrayStorage);
  v26 = type metadata accessor for CurrentLocationController(0);
  v39.receiver = a5;
  v39.super_class = v26;
  v27 = objc_msgSendSuper2(&v39, "init");
  sub_100709414();

  v28 = sub_1007A10F4();

  v38 = v28;
  swift_allocObject();
  swift_unknownObjectUnownedInit();
  sub_1001F1160(&qword_100AE89B8);
  sub_100005920(&qword_100AE89C0, &qword_100AE89B8);
  sub_10079BB04();

  swift_beginAccess();
  sub_10079B854();
  swift_endAccess();

  sub_1007A0664();
  v29 = v35;
  sub_10079F9B4();
  swift_allocObject();
  swift_unknownObjectUnownedInit();
  sub_100005920(&qword_100AD82D0, &unk_100AE1530);
  v30 = v36;
  sub_10079BB04();

  (*(v37 + 8))(v29, v30);
  swift_beginAccess();
  sub_10079B854();
  swift_endAccess();

  (*(v23 + 8))(v34, v33);
  sub_1000074E0(v40);
  sub_1000074E0(a1);
  return v27;
}

void *sub_100514778(void *a1, uint64_t a2, void *a3, void *a4)
{
  v8 = sub_1001F1160(&qword_100AE3540);
  v9 = *(v8 - 8);
  v35 = v8;
  v36 = v9;
  __chkstk_darwin(v8);
  v34 = &v29 - v10;
  v11 = sub_1001F1160(&qword_100AE3538);
  v12 = *(v11 - 8);
  v30 = v11;
  v31 = v12;
  __chkstk_darwin(v11);
  v14 = &v29 - v13;
  v15 = sub_1001F1160(&qword_100AE8868);
  v16 = *(v15 - 8);
  v32 = v15;
  v33 = v16;
  __chkstk_darwin(v15);
  v29 = &v29 - v17;
  a4[5] = 0;
  swift_unknownObjectWeakInit();
  a4[6] = &_swiftEmptySetSingleton;
  a4[7] = 0;
  a4[2] = a1;
  a4[5] = &protocol witness table for BookReaderStateManager;
  swift_unknownObjectWeakAssign();
  a4[3] = a3;
  type metadata accessor for BookReaderStateManager();
  v18 = a1;
  v19 = a3;
  v20 = a2;
  v37[0] = BookReaderStateManager.isOrientationLockedPublisher.getter();
  swift_allocObject();
  swift_weakInit();

  sub_1001F1160(&unk_100AF27D0);
  sub_100005920(&qword_100AEA160, &unk_100AF27D0);
  sub_10079BB04();

  swift_beginAccess();
  sub_10079B854();
  swift_endAccess();

  swift_beginAccess();

  sub_1001F1160(&qword_100AE31A0);
  sub_10079B974();
  swift_endAccess();

  sub_100005920(&qword_100AE8870, &qword_100AE3538);
  v22 = v29;
  v21 = v30;
  sub_10079BAD4();
  (*(v31 + 8))(v14, v21);
  swift_allocObject();
  swift_weakInit();
  sub_100005920(&qword_100AE8878, &qword_100AE8868);
  v23 = v32;
  sub_10079BB04();

  (*(v33 + 8))(v22, v23);
  swift_beginAccess();
  sub_10079B854();
  swift_endAccess();

  swift_beginAccess();

  sub_1001F1160(&qword_100ADEA18);
  v24 = v34;
  sub_10079B974();
  swift_endAccess();

  v25 = swift_allocObject();
  swift_weakInit();

  v26 = swift_allocObject();
  v26[2] = v25;
  v26[3] = v20;
  v26[4] = &protocol witness table for BookReaderStateManager;
  sub_100005920(&qword_100AE8880, &qword_100AE3540);

  v27 = v35;
  sub_10079BB04();

  (*(v36 + 8))(v24, v27);
  swift_beginAccess();
  sub_10079B854();
  swift_endAccess();

  v37[3] = type metadata accessor for OrientationLockHintController();
  v37[0] = a4;

  sub_1007A2B14();
  sub_1000074E0(v37);
  return a4;
}

id sub_100514DD8(uint64_t a1, uint64_t a2, char *a3)
{
  v4 = sub_100027EF0(&qword_100AE8750, type metadata accessor for AnnotationProviderService);
  swift_unknownObjectWeakInit();
  v5 = &a3[OBJC_IVAR____TtC5Books35BookReaderHighlightEditorController_annotationProviderService];
  *&a3[OBJC_IVAR____TtC5Books35BookReaderHighlightEditorController_annotationProviderService + 8] = 0;
  swift_unknownObjectWeakInit();
  v6 = OBJC_IVAR____TtC5Books35BookReaderHighlightEditorController_currentTheme;
  v7 = sub_10079EF54();
  (*(*(v7 - 8) + 56))(&a3[v6], 1, 1, v7);
  *&a3[OBJC_IVAR____TtC5Books35BookReaderHighlightEditorController_noteEditor] = 0;
  swift_unknownObjectWeakAssign();
  *(v5 + 1) = v4;
  swift_unknownObjectWeakAssign();
  v9.receiver = a3;
  v9.super_class = type metadata accessor for BookReaderHighlightEditorController();
  return objc_msgSendSuper2(&v9, "init");
}

void sub_100514F14(void (*a1)(char *, uint64_t), uint64_t a2, char *a3, uint64_t a4, char *a5, void *a6, void *a7, char *a8, uint64_t a9, void *a10, objc_class *a11, void *a12, void *a13, uint64_t a14, char *a15, char *a16, objc_class *a17, void *a18, uint64_t a19, uint64_t a20, char *a21, uint64_t a22, char *a23, void *a24, char *a25, char **a26, void *a27, _UNKNOWN **a28)
{
  v604 = a8;
  v569 = a7;
  v607 = a6;
  v616 = a5;
  v615 = a4;
  v583 = a3;
  v585 = a1;
  v592 = a28;
  v611 = a27;
  v608 = a26;
  v599 = a13;
  v603 = a21;
  v613 = a19;
  v602 = a20;
  v617 = a11;
  v29 = sub_1007A1D04();
  v520 = *(v29 - 8);
  v521 = v29;
  __chkstk_darwin(v29);
  v519 = (v516 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  v31 = sub_100796CD4();
  v554 = *(v31 - 8);
  v555 = v31;
  __chkstk_darwin(v31);
  v553 = v516 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v591 = sub_1007967F4();
  v597 = *(v591 - 1);
  __chkstk_darwin(v591);
  v552 = (v516 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  v574 = sub_100796CF4();
  v606 = *(v574 - 8);
  __chkstk_darwin(v574);
  v550 = v516 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v551 = v516 - v36;
  v549 = sub_1007A21D4();
  v605 = *(v549 - 8);
  __chkstk_darwin(v549);
  v573 = v516 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v548 = v516 - v39;
  v40 = sub_100796814();
  __chkstk_darwin(v40 - 8);
  *&v590 = v516 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v565 = type metadata accessor for HistoryModel(0);
  __chkstk_darwin(v565);
  v546 = v516 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v43);
  v547 = v516 - v44;
  v545 = sub_1001F1160(&qword_100ADB1C0);
  __chkstk_darwin(v545);
  v544 = v516 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v46);
  v543 = v516 - v47;
  v561 = sub_1001F1160(&qword_100AE76A0);
  v559 = *(v561 - 1);
  __chkstk_darwin(v561);
  v556 = v516 - v48;
  v49 = sub_1001F1160(&unk_100AF4290);
  __chkstk_darwin(v49 - 8);
  v540 = v516 - v50;
  v51 = sub_1001F1160(&unk_100AE1530);
  v576 = *(v51 - 8);
  v577 = v51;
  __chkstk_darwin(v51);
  v575 = v516 - v52;
  v558 = sub_1001F1160(&unk_100AE8768);
  v542 = *(v558 - 1);
  __chkstk_darwin(v558);
  v541 = v516 - v53;
  v54 = sub_1001F1160(&qword_100AD7EB0);
  __chkstk_darwin(v54 - 8);
  v537 = v516 - v55;
  v562 = sub_1001F1160(&unk_100AE8770);
  v539 = *(v562 - 8);
  __chkstk_darwin(v562);
  v538 = v516 - v56;
  v57 = sub_1001F1160(&qword_100AE2818);
  __chkstk_darwin(v57 - 8);
  v580 = v516 - v58;
  v566 = sub_1001F1160(&qword_100AE2860);
  v564 = *(v566 - 1);
  __chkstk_darwin(v566);
  v563 = v516 - v59;
  v579 = _s5StateOMa(0);
  v567 = *(v579 - 1);
  __chkstk_darwin(v579);
  v535 = (v516 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v61);
  v571 = v516 - v62;
  v63 = sub_1007A0634();
  __chkstk_darwin(v63 - 8);
  v534 = v516 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_1007A1C14();
  __chkstk_darwin(v65 - 8);
  v601 = v516 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  v600 = sub_100796BB4();
  v596 = *(v600 - 8);
  __chkstk_darwin(v600);
  v594 = v516 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  v587 = sub_1001F1160(&unk_100AE8778);
  v588 = *(v587 - 1);
  __chkstk_darwin(v587);
  v586 = v516 - v68;
  v614 = sub_1001F1160(&qword_100AE5C40);
  v612 = *(v614 - 8);
  __chkstk_darwin(v614);
  v598 = v516 - v69;
  v70 = sub_1001F1160(&qword_100AD9B00);
  v71 = *(v70 - 8);
  __chkstk_darwin(v70);
  v73 = v516 - v72;
  v609 = sub_100027EF0(&qword_100AE8750, type metadata accessor for AnnotationProviderService);
  v589 = sub_100027EF0(&unk_100AE8780, type metadata accessor for CurrentLocationPersistenceService);
  v664[3] = sub_10079F534();
  v664[4] = &protocol witness table for BookThemeDatabaseManager;
  v664[0] = a12;
  v74 = &a3[OBJC_IVAR___REBookProviderService_bookEntity];
  v593 = &a3[OBJC_IVAR___REBookProviderService_bookEntity];
  swift_beginAccess();
  sub_100009864(v74, v662);
  v75 = objc_opt_self();
  v76 = a12;
  v77 = [v75 standardUserDefaults];
  sub_1001F1160(&unk_100ADE550);
  v78 = swift_allocObject();
  *(v78 + 32) = 0xD00000000000001BLL;
  *(v78 + 16) = xmmword_100812CF0;
  *(v78 + 40) = 0x80000001008D1800;
  *(v78 + 48) = 0;
  *(v78 + 72) = &type metadata for Bool;
  *(v78 + 80) = 0xD00000000000001BLL;
  *(v78 + 88) = 0x80000001008DAAC0;
  *(v78 + 96) = 0;
  *(v78 + 120) = &type metadata for Bool;
  *(v78 + 128) = 0x657365522E494552;
  *(v78 + 136) = 0xEF73656D65685474;
  *(v78 + 168) = &type metadata for Bool;
  *(v78 + 144) = 0;
  sub_100019158(v78);
  swift_setDeallocating();
  sub_1001F1160(&unk_100ADD560);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  isa = sub_1007A2024().super.isa;

  [v77 registerDefaults:isa];

  type metadata accessor for CoverCacheService();
  v578 = swift_allocObject();
  type metadata accessor for InfoBarModule();
  v80 = swift_allocObject();
  type metadata accessor for InfoBar.MessageQueue();
  v81 = swift_allocObject();
  swift_defaultActor_initialize();
  v82 = OBJC_IVAR____TtCO5Books7InfoBar12MessageQueue__currentMessage;
  *&v631 = 0;
  sub_1001F1160(&qword_100ADA370);
  sub_10079B964();
  (*(v71 + 32))(v81 + v82, v73, v70);
  *(v81 + OBJC_IVAR____TtCO5Books7InfoBar12MessageQueue_resolveTask) = 0;
  *(v81 + OBJC_IVAR____TtCO5Books7InfoBar12MessageQueue_timedMessages) = _swiftEmptyArrayStorage;
  *(v81 + OBJC_IVAR____TtCO5Books7InfoBar12MessageQueue_persistentMessage) = 0;
  type metadata accessor for InfoBarPresenter();
  swift_allocObject();
  v83 = sub_1002AEC34(0, 0, v81);

  v584 = v80;
  *(v80 + 16) = v83;
  sub_100009864(v662, &v631);
  v572 = v75;
  v84 = [v75 standardUserDefaults];
  v536 = sub_1007A0714();
  swift_allocObject();

  v610 = sub_1007A06C4();
  sub_1007A0C64();
  swift_allocObject();
  v85 = sub_1007A0C54();
  type metadata accessor for ScrubberStatePublisher();
  v86 = swift_allocObject();
  *(v86 + 32) = 0;
  swift_unknownObjectWeakInit();
  v87 = OBJC_IVAR____TtC5Books22ScrubberStatePublisher__scrubberState;
  *&v631 = 0;
  BYTE8(v631) = 2;
  v88 = v598;
  sub_10079B964();
  (*(v612 + 32))(v86 + v87, v88, v614);
  v595 = v86;
  *(v86 + 16) = v85;
  type metadata accessor for PageCurlState(0);
  v89 = swift_allocObject();
  LOBYTE(v631) = 0;
  sub_10079B964();
  *&v631 = 0;
  type metadata accessor for NavigationDirection(0);
  v612 = v89;
  sub_10079B964();
  v90 = sub_100027EF0(&qword_100AE8748, type metadata accessor for BookProviderService);
  v598 = v90;
  sub_1007A1024();
  v614 = sub_1007A1014();
  v91 = type metadata accessor for BookReaderDataManager();
  v92 = objc_allocWithZone(v91);
  swift_unknownObjectWeakInit();
  *&v92[OBJC_IVAR____TtC5Books21BookReaderDataManager_stateTask] = 0;
  v93 = OBJC_IVAR____TtC5Books21BookReaderDataManager_stateSubject;
  LOBYTE(v631) = 2;
  *(&v631 + 1) = 0;
  *(&v631 + 5) = 0;
  *(&v631 + 1) = 5;
  v632 = 0;
  sub_1001F1160(&qword_100AE8788);
  swift_allocObject();
  *&v92[v93] = sub_10079B924();
  sub_100009864(v593, &v631);
  sub_10000E3E8(&v631, v633);
  LODWORD(v582) = sub_10079EC44();
  sub_1000074E0(&v631);
  v94 = &v92[OBJC_IVAR____TtC5Books21BookReaderDataManager_bookProviderService];
  v95 = v583;
  *v94 = v583;
  *(v94 + 1) = v90;
  v96 = &v92[OBJC_IVAR____TtC5Books21BookReaderDataManager_annotationProviderService];
  v97 = v607;
  v98 = v609;
  *v96 = v607;
  *(v96 + 1) = v98;
  v99 = &v92[OBJC_IVAR____TtC5Books21BookReaderDataManager_purchaseHandler];
  v100 = v602;
  *v99 = v602;
  *(v99 + 1) = &off_100A110B8;
  v101 = &v92[OBJC_IVAR____TtC5Books21BookReaderDataManager_configurationHandler];
  v102 = v603;
  *v101 = v603;
  *(v101 + 1) = &off_100A30070;
  v103 = &v92[OBJC_IVAR____TtC5Books21BookReaderDataManager_readingSettingsManager];
  *v103 = v617;
  v103[1] = &protocol witness table for ReadingSettingsManager;
  *&v92[OBJC_IVAR____TtC5Books21BookReaderDataManager_themeAppearanceManager] = v614;
  v661.receiver = v92;
  v661.super_class = v91;
  v583 = v95;
  v568 = v97;
  v518 = v100;
  v517 = v102;

  v104 = objc_msgSendSuper2(&v661, "init");
  *(*&v104[OBJC_IVAR____TtC5Books21BookReaderDataManager_purchaseHandler] + OBJC_IVAR____TtC5Books25BookReaderPurchaseHandler_delegate + 8) = &off_100A245E8;
  swift_unknownObjectWeakAssign();
  *(*&v104[OBJC_IVAR____TtC5Books21BookReaderDataManager_configurationHandler] + OBJC_IVAR____TtC5Books30BookReaderConfigurationHandler_delegate + 8) = &off_100A245D0;
  swift_unknownObjectWeakAssign();
  v603 = v104;
  *&v631 = sub_1007A0FF4();
  v105 = sub_1007A0EF4();
  *&v621 = sub_1007A1394();
  v602 = v105;
  v643[0] = sub_1007A13F4();
  v607 = sub_1001F1160(&unk_100AE8790);
  v581 = sub_1001F1160(&unk_100AEB8B0);
  sub_1001F1160(&qword_100AE8798);
  sub_100005920(&unk_100AE87A0, &unk_100AE8790);
  sub_100005920(&unk_100AF25D0, &unk_100AEB8B0);
  sub_100005920(&qword_100AEB890, &qword_100AE8798);
  v106 = v586;
  sub_10079B7B4();
  v107 = swift_allocObject();
  v108 = v603;
  swift_unknownObjectWeakInit();
  v109 = swift_allocObject();
  *(v109 + 16) = v107;
  *(v109 + 24) = v582 & 1;
  sub_100005920(&unk_100AE87A8, &unk_100AE8778);
  v110 = v587;
  v111 = sub_10079BB04();

  v588[1](v106, v110);
  *&v108[OBJC_IVAR____TtC5Books21BookReaderDataManager_stateTask] = v111;

  v112 = v108;

  type metadata accessor for BookReaderInteractor(0);
  v113 = swift_allocObject();
  v113[3] = 0;
  swift_unknownObjectWeakInit();
  v113[5] = 0;
  swift_unknownObjectWeakInit();
  v113[7] = 0;
  swift_unknownObjectWeakInit();
  v113[20] = &_swiftEmptySetSingleton;
  v113[23] = 0;
  v113[24] = 0;
  *(v113 + OBJC_IVAR____TtC5Books20BookReaderInteractor_isOpening) = 0;
  *(v113 + OBJC_IVAR____TtC5Books20BookReaderInteractor_openingToLocation) = 0;
  v114 = OBJC_IVAR____TtC5Books20BookReaderInteractor_currentReadingProgressSubject;
  sub_1001F1160(&qword_100AE6388);
  swift_allocObject();
  v115 = v112;
  v116 = v610;

  *(v113 + v114) = sub_10079B8D4();
  v113[8] = v115;
  v113[9] = &off_100A24600;
  v117 = v583;
  v118 = v598;
  v113[10] = v583;
  v113[11] = v118;
  v119 = v616;
  v113[12] = v616;
  v113[13] = &protocol witness table for PaginatingService;
  v120 = v604;
  v121 = v589;
  v113[18] = v604;
  v113[19] = v121;

  v588 = v117;
  v560 = v115;
  v122 = v120;
  v123 = v594;
  sub_100796A84();
  (v596)[4](v113 + OBJC_IVAR____TtC5Books20BookReaderInteractor_currentLocationChangeDate, v123, v600);
  v113[14] = v116;
  v113[15] = &protocol witness table for PageNumberProvider;
  v113[16] = v599;
  v113[17] = &protocol witness table for ContentSizeCategoryManager;
  sub_100009864(v593, &v631);
  sub_100009864(&v631, &v621);
  type metadata accessor for CurrentLocationPersistenceService();

  sub_1007A1504();
  v124 = v601;
  sub_1007A1114();

  v557 = 0;
  v125 = objc_allocWithZone(type metadata accessor for CurrentLocationController(0));

  v126 = v613;

  v127 = sub_100514094(&v621, v124, v119, v126, v125);

  v113[21] = v127;
  sub_10000E3E8(&v631, v633);
  v128 = v127;
  LODWORD(v614) = sub_10079EC44();
  v603 = [objc_opt_self() shared];
  if (!v603)
  {
    goto LABEL_58;
  }

  v570 = a25;
  v587 = a24;
  v533 = a23;
  v600 = a22;
  v532 = a17;
  v604 = a16;
  v601 = a15;
  v613 = a14;
  v596 = sub_100027EF0(&qword_100AE63A8, type metadata accessor for CurrentLocationController);
  v586 = type metadata accessor for PageMovementController();
  v129 = swift_allocObject();
  *(v129 + 32) = &_swiftEmptySetSingleton;
  *(v129 + 48) = 0;
  swift_unknownObjectWeakInit();
  v594 = a18;
  sub_1007A0614();
  sub_1001F1160(&qword_100AE63D8);
  swift_allocObject();
  *(v129 + 64) = sub_10079B924();
  type metadata accessor for PageTurnController();
  v130 = swift_allocObject();
  *(v130 + 56) = 0u;
  *(v130 + 72) = 0u;
  *(v130 + 88) = 0u;
  v534 = sub_1001F1160(&qword_100AEB8C0);
  swift_allocObject();
  v131 = v128;
  *(v130 + 104) = sub_10079B8D4();
  *(v130 + 128) = 0;
  v132 = OBJC_IVAR____TtC5Books18PageTurnController__state;
  v133 = v571;
  v134 = v579;
  swift_storeEnumTagMultiPayload();
  sub_10051C938(v133, v535, _s5StateOMa);
  v135 = v563;
  sub_10079B964();
  v589 = _s5StateOMa;
  sub_10051C6D8(v133, _s5StateOMa);
  (*(v564 + 32))(v130 + v132, v135, v566);
  *(v130 + OBJC_IVAR____TtC5Books18PageTurnController_testDriverState) = 0;
  v136 = v596;
  *(v130 + 16) = v131;
  *(v130 + 24) = v136;
  v137 = v603;
  *(v130 + 32) = v603;
  *(v130 + 112) = 0;
  *(v130 + 120) = 0;
  type metadata accessor for PageTurnViewModel(0);
  swift_allocObject();
  v138 = v131;
  v603 = v137;
  v139 = sub_1003ADC60(v614 & 1, 2);
  v140 = v594;
  *(v130 + 40) = v594;
  *(v130 + 48) = v139;
  v141 = v580;
  (*(v567 + 7))(v580, 1, 1, v134);
  v142 = v140;
  sub_1004156F0();
  sub_100007840(v141, &qword_100AE2818);
  swift_storeEnumTagMultiPayload();
  sub_100416728(v133);

  v603 = v142;
  sub_10051C6D8(v133, v589);
  *(v129 + 16) = v130;
  v143 = v600;
  type metadata accessor for PageScrollController();
  v144 = swift_allocObject();
  v144[5] = 0;
  swift_unknownObjectWeakInit();
  v145 = v596;
  v144[2] = v138;
  v144[3] = v145;
  *(v129 + 24) = v144;
  *(v129 + 56) = 2;
  v113[22] = v129;
  sub_100510F38(v615, v113);

  sub_1000074E0(&v631);
  if (v143)
  {

    sub_1002990A0(v146, &off_100A1EE20);
  }

  v530 = a10;
  v529 = a9;
  v607 = v113;
  v147 = *(v113[21] + OBJC_IVAR____TtC5Books25CurrentLocationController_currentLocationProvider);
  v148 = sub_100027EF0(&unk_100AF42A0, type metadata accessor for CurrentLocationProvider);
  sub_100009864(v664, &v631);
  sub_1001F1160(&unk_100AE87B0);
  swift_allocObject();
  swift_retain_n();

  v149 = v617;

  v150 = v613;

  v151 = v601;

  v531 = v151;
  v614 = v147;
  v601 = v148;
  v594 = sub_1007A19E4();
  type metadata accessor for TOCModuleFactory();
  v152 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  swift_weakInit();
  v583 = v152;
  v153 = v603;
  *(v152 + 32) = v603;
  type metadata accessor for BookmarkNotesModuleFactory();
  v154 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  v582 = v154;
  swift_weakInit();
  v155 = objc_opt_self();
  v589 = v153;
  v156 = v608;
  v157 = v611;
  v158 = v592;

  v563 = v155;
  v159 = [v155 sharedController];
  v579 = v156;
  v571 = v157;
  v160 = sub_10050C904(v156, v157, v158, v159);
  type metadata accessor for ShareModuleFactory();
  v161 = swift_allocObject();
  v162 = sub_100027EF0(&unk_100AE87B8, type metadata accessor for AssetActivityItemProviderWrapper);
  *(v161 + 16) = v160;
  *(v161 + 24) = v162;
  v581 = v161;
  v603 = v162;
  sub_1001F1160(&unk_100AE87C0);
  swift_allocObject();
  swift_unknownObjectRetain();

  v163 = v588;

  v164 = v532;

  v567 = v163;
  v580 = sub_1007A0B34();
  sub_10000E3E8(v662, v663);

  LOBYTE(v160) = sub_10079EC84();
  v564 = type metadata accessor for BookReaderStateManager();
  v165 = swift_allocObject();
  v166 = sub_10050F924(v149, v150, v160 & 1, v165);
  v167 = v595;
  swift_beginAccess();
  *(v167 + 32) = &protocol witness table for BookReaderStateManager;
  v611 = v166;
  swift_unknownObjectWeakAssign();
  sub_10000E3E8(v662, v663);
  v168 = sub_10079EC84();
  v608 = 0;
  if (v168)
  {
    sub_100009864(v662, &v631);
    type metadata accessor for SampleHeaderModule();
    v621 = 0u;
    v622 = 0u;
    v623 = 0;
    v169 = swift_allocObject();
    v170 = sub_10000E3E8(&v631, v633);
    type metadata accessor for SampleHeaderDataManager();

    v171 = v578;

    v172 = sub_10035AB44(v170, v171, &off_100A27200);
    type metadata accessor for SampleHeaderInteractor();
    v173 = swift_allocObject();
    v173[3] = 0;
    swift_unknownObjectWeakInit();
    swift_weakInit();
    v173[4] = v172;
    v173[5] = &off_100A16F60;
    swift_weakAssign();
    v172[11] = &off_100A13410;
    swift_unknownObjectWeakAssign();
    sub_1000077D8(&v621, v643, &qword_100AD4FA0);
    type metadata accessor for SampleHeaderPresenter();
    v174 = swift_allocObject();
    *(v174 + 24) = 0;
    swift_unknownObjectWeakInit();
    *(v174 + 72) = 0u;
    *(v174 + 56) = 0u;
    *(v174 + 88) = 0;
    *(v174 + 96) = &_swiftEmptySetSingleton;
    *(v174 + 24) = 0;
    swift_unknownObjectWeakAssign();
    *(v174 + 40) = v173;
    *(v174 + 48) = &off_100A13420;
    swift_beginAccess();

    sub_100282A38(v643, v174 + 56);
    swift_endAccess();

    *(v174 + 32) = sub_10068A008(v175, v601);
    sub_10046EFDC(v174 + 56);

    sub_100007840(v643, &qword_100AD4FA0);
    v173[3] = &off_100A1D368;
    swift_unknownObjectWeakAssign();
    v608 = v169;
    v169[2] = v174;

    sub_10046E3C4();

    sub_100007840(&v621, &qword_100AD4FA0);
    sub_1000074E0(&v631);
  }

  v532 = type metadata accessor for ChromeStyle();
  v566 = [objc_allocWithZone(v532) init];
  v176 = v579;
  v177 = v571;
  v178 = v592;

  v179 = v563;
  v527 = sub_10050C904(v176, v177, v178, [v563 sharedController]);
  v180 = v176;
  v181 = v177;

  v182 = [v179 sharedController];
  v535 = v180;
  v533 = v181;
  v183 = sub_10050C904(v180, v181, v178, v182);
  v588 = *(&protocol witness table for BookLayoutModeManager + 1);
  v587 = *(&protocol witness table for ReadingSettingsManager + 1);
  v579 = type metadata accessor for BookReaderPresenter();
  v184 = objc_allocWithZone(v579);
  swift_weakInit();
  *&v184[OBJC_IVAR____TtC5Books19BookReaderPresenter_externalContentLoadEventHandler + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v184[OBJC_IVAR____TtC5Books19BookReaderPresenter_router + 8] = 0;
  swift_unknownObjectWeakInit();
  v525 = &v184[OBJC_IVAR____TtC5Books19BookReaderPresenter_annotationProviderService];
  *&v184[OBJC_IVAR____TtC5Books19BookReaderPresenter_annotationProviderService + 8] = 0;
  swift_unknownObjectWeakInit();
  v526 = OBJC_IVAR____TtC5Books19BookReaderPresenter_annotationProvider;
  swift_unknownObjectWeakInit();
  *&v184[OBJC_IVAR____TtC5Books19BookReaderPresenter_subscribers] = _swiftEmptyArrayStorage;
  v185 = OBJC_IVAR____TtC5Books19BookReaderPresenter_searchHighlightID;
  v186 = sub_10079FFA4();
  (*(*(v186 - 8) + 56))(&v184[v185], 1, 1, v186);
  *&v184[OBJC_IVAR____TtC5Books19BookReaderPresenter_presentedExpandedContentViewController] = 0;
  v187 = OBJC_IVAR____TtC5Books19BookReaderPresenter_expandedContentPresentedState;
  v571 = type metadata accessor for PublishedBool();
  v188 = swift_allocObject();
  swift_beginAccess();
  LOBYTE(v621) = 0;
  v189 = v567;
  v528 = v568;

  v567 = v589;
  v190 = v607;

  v524 = v569;

  v569 = v566;
  v191 = v611;

  sub_10079B964();
  swift_endAccess();
  *&v184[v187] = v188;
  *&v184[OBJC_IVAR____TtC5Books19BookReaderPresenter_footnoteViewController] = 0;
  v192 = &v184[OBJC_IVAR____TtC5Books19BookReaderPresenter_expandedContentFrame];
  *v192 = 0u;
  *(v192 + 1) = 0u;
  v192[32] = 1;
  *&v184[OBJC_IVAR____TtC5Books19BookReaderPresenter____lazy_storage___expandedContentAnimator] = 0;
  v193 = &v184[OBJC_IVAR____TtC5Books19BookReaderPresenter_interactor];
  *v193 = v190;
  *(v193 + 1) = &off_100A1EE50;
  Strong = swift_unknownObjectWeakLoadStrong();
  _s26ContentSelectionInteractorCMa();
  v194 = swift_allocObject();
  *(v194 + 3) = 0;
  swift_unknownObjectWeakInit();
  swift_weakInit();
  *(v194 + 9) = 0;
  swift_unknownObjectWeakInit();
  *(v194 + 10) = 0;
  v195 = OBJC_IVAR____TtCC5Books19BookReaderPresenter26ContentSelectionInteractor_contentSelection;
  v196 = sub_10079F364();
  (*(*(v196 - 8) + 56))(&v194[v195], 1, 1, v196);
  v197 = &v194[OBJC_IVAR____TtCC5Books19BookReaderPresenter26ContentSelectionInteractor__state];
  *v197 = 0u;
  *(v197 + 1) = 0u;
  *(v197 + 2) = 0u;
  *(v197 + 3) = 0u;
  *(v197 + 57) = 0u;
  *(v197 + 73) = v660[0];
  *(v197 + 19) = *(v660 + 3);
  *(v197 + 5) = 0u;
  *(v197 + 6) = 0u;
  *(v197 + 105) = 0u;
  *(v197 + 121) = *v659;
  *(v197 + 31) = *&v659[3];
  v197[256] = 0;
  *(v197 + 14) = 0u;
  *(v197 + 15) = 0u;
  *(v197 + 12) = 0u;
  *(v197 + 13) = 0u;
  *(v197 + 10) = 0u;
  *(v197 + 11) = 0u;
  *(v197 + 8) = 0u;
  *(v197 + 9) = 0u;
  *(v197 + 257) = *v658;
  *(v197 + 65) = *&v658[3];
  *(v197 + 33) = 0;
  v197[272] = 0;
  *(v197 + 273) = *v657;
  *(v197 + 69) = *&v657[3];
  *(v197 + 35) = 0;
  swift_weakAssign();
  v198 = v189;
  *(v194 + 5) = v189;
  *(v194 + 6) = v183;
  *(v194 + 7) = v603;
  *(v194 + 9) = v609;
  v199 = v528;
  swift_unknownObjectWeakAssign();
  *(v194 + 11) = v191;
  *(v194 + 12) = &protocol witness table for BookReaderStateManager;
  type metadata accessor for AnnotationProviderService();
  v200 = v198;
  swift_retain_n();
  v201 = v183;
  v568 = v200;
  v522 = v199;

  v589 = v201;
  v528 = sub_1007A08C4();
  *&v631 = v528;
  v202 = sub_10000A7C4(0, &qword_100AD1E10);
  v203 = sub_1007A2D74();
  *&v621 = v203;
  v204 = sub_1007A2D24();
  v205 = v537;
  (*(*(v204 - 8) + 56))(v537, 1, 1, v204);
  sub_1001F1160(&unk_100AE87C8);
  v566 = &protocol conformance descriptor for AnyPublisher<A, B>;
  sub_100005920(&unk_100AE87D0, &unk_100AE87C8);
  sub_10051C650(&qword_100AE8CA0, &qword_100AD1E10);
  v206 = v538;
  v516[2] = v202;
  sub_10079BAB4();
  sub_100007840(v205, &qword_100AD7EB0);

  swift_allocObject();
  swift_weakInit();
  v528 = &protocol conformance descriptor for Publishers.ReceiveOn<A, B>;
  sub_100005920(&unk_100AE87D8, &unk_100AE8770);
  v207 = v562;
  v208 = sub_10079BB04();

  v209 = v522;
  v210 = v611;

  swift_unknownObjectRelease();

  v539[1](v206, v207);
  *(v194 + 10) = v208;

  *&v184[OBJC_IVAR____TtC5Books19BookReaderPresenter_contentSelectionInteractor] = v194;
  *&v184[OBJC_IVAR____TtC5Books19BookReaderPresenter_bookReaderLayoutController] = v615;
  *(v525 + 8) = v609;
  v211 = v209;
  swift_unknownObjectWeakAssign();
  v212 = v524;
  swift_unknownObjectWeakAssign();
  v213 = &v184[OBJC_IVAR____TtC5Books19BookReaderPresenter_annotationSharingAssetActivityItemProvider];
  v214 = v527;
  v215 = v603;
  *v213 = v527;
  v213[1] = v215;
  v216 = objc_allocWithZone(type metadata accessor for BookReaderHighlightEditorController());
  v217 = v211;

  v218 = v212;
  v219 = v214;
  v220 = sub_100514DD8(v218, v217, v216);

  *&v184[OBJC_IVAR____TtC5Books19BookReaderPresenter_highlightEditorController] = v220;
  *&v184[OBJC_IVAR____TtC5Books19BookReaderPresenter_menuController] = [objc_allocWithZone(type metadata accessor for BookReaderMenuController()) init];
  type metadata accessor for BookReaderAchievementManager();
  *&v184[OBJC_IVAR____TtC5Books19BookReaderPresenter_achievementManager] = swift_allocObject();
  v221 = &v184[OBJC_IVAR____TtC5Books19BookReaderPresenter_currentLocationProvider];
  v222 = v601;
  *v221 = v614;
  v221[1] = v222;
  v223 = v567;
  v224 = v568;
  *&v184[OBJC_IVAR____TtC5Books19BookReaderPresenter_bookProviderService] = v568;
  *&v184[OBJC_IVAR____TtC5Books19BookReaderPresenter_stateManager] = v210;
  *&v184[OBJC_IVAR____TtC5Books19BookReaderPresenter_engagementManager] = v223;
  v225 = &v184[OBJC_IVAR____TtC5Books19BookReaderPresenter_layoutModeProvider];
  v226 = v588;
  *v225 = v613;
  *(v225 + 1) = v226;
  *&v184[OBJC_IVAR____TtC5Books19BookReaderPresenter_pageCurlState] = v612;
  v227 = &v184[OBJC_IVAR____TtC5Books19BookReaderPresenter_readingSettingsProvider];
  v228 = v587;
  *v227 = v617;
  v227[1] = v228;
  *&v184[OBJC_IVAR____TtC5Books19BookReaderPresenter_chromeStyle] = v569;
  *&v184[OBJC_IVAR____TtC5Books19BookReaderPresenter_stylesheetProvider] = v604;
  *&v184[OBJC_IVAR____TtC5Books19BookReaderPresenter_readingSettingsModuleFactory] = v594;
  *&v184[OBJC_IVAR____TtC5Books19BookReaderPresenter_tocModuleFactory] = v583;
  *&v184[OBJC_IVAR____TtC5Books19BookReaderPresenter_bookmarkNotesModuleFactory] = v582;
  *&v184[OBJC_IVAR____TtC5Books19BookReaderPresenter_shareModuleFactory] = v581;
  *&v184[OBJC_IVAR____TtC5Books19BookReaderPresenter_searchModuleFactory] = v580;
  v656.receiver = v184;
  v656.super_class = v579;
  v229 = v224;

  v230 = objc_msgSendSuper2(&v656, "init");
  v231 = v607;
  v607[3] = &off_100A2BEE8;
  swift_unknownObjectWeakAssign();

  v603 = sub_10079F134();
  v232 = v231[21];
  v233 = v231[22];
  v539 = v232;
  v633 = v586;
  v562 = sub_100027EF0(&qword_100AE63B8, type metadata accessor for PageMovementController);
  v634 = v562;
  *&v631 = v233;
  v589 = sub_100027EF0(&unk_100AE8758, type metadata accessor for BookReaderLayoutController);
  v538 = sub_100027EF0(&unk_100AE87E0, type metadata accessor for BookReaderPresenter);
  v527 = *(&protocol witness table for ContentSizeCategoryManager + 1);
  v537 = *(v233 + 16);
  v526 = sub_100027EF0(&unk_100AE87E8, type metadata accessor for PageTurnController);
  v525 = sub_100027EF0(&unk_100AE87F0, type metadata accessor for BookReaderPresenter);
  v234 = v230;

  v568 = v229;
  v235 = v217;

  v236 = v234;
  v539 = v539;

  v537 = v235;
  v237 = v617;
  v238 = v236;
  v239 = v616;
  v240 = v601;
  v241 = v596;
  v242 = sub_10079F074();
  sub_10079EF94();
  *&v238[OBJC_IVAR____TtC5Books19BookReaderPresenter_externalContentLoadEventHandler + 8] = v243;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  type metadata accessor for CloseGestureManager();
  v579 = swift_allocObject();
  v579[2] = _swiftEmptyArrayStorage;
  v244 = type metadata accessor for BookActionMenuDataSource();
  sub_100009864(v662, &v631);
  v245 = v585;
  ObjectType = swift_getObjectType();
  swift_unknownObjectRetain();
  v609 = v242;
  v247 = sub_10079F064();
  v522 = ObjectType;
  v248 = v237;
  v249 = v610;
  v250 = sub_1003C7D04(&v631, v245, v247, v248, v239, &protocol witness table for PaginatingService, v610, v244, ObjectType, v602, v536, &protocol witness table for ReadingSettingsManager, &protocol witness table for PageNumberProvider);
  swift_unknownObjectRelease();

  v251 = v238;

  v252 = v595;

  v253 = [v572 standardUserDefaults];
  v254 = v567;
  v538 = v251;
  v516[1] = v250;
  v536 = v254;
  v255 = sub_10050F288(v251, v250, v249, v252, v254, v253);
  v257 = v607[21];
  v256 = v607[22];
  v634 = v562;
  v633 = v586;
  *&v631 = v256;
  v258 = type metadata accessor for BookActionMediator();
  v259 = objc_allocWithZone(v258);
  *&v259[OBJC_IVAR____TtC5Books18BookActionMediator_cancellables] = &_swiftEmptySetSingleton;
  *&v259[OBJC_IVAR____TtC5Books18BookActionMediator_actionMenuState] = v255;
  v260 = &v259[OBJC_IVAR____TtC5Books18BookActionMediator_paginationService];
  *v260 = v239;
  v260[1] = &protocol witness table for PaginatingService;
  v261 = &v259[OBJC_IVAR____TtC5Books18BookActionMediator_currentLocationProvider];
  *v261 = v614;
  v261[1] = v240;
  v262 = &v259[OBJC_IVAR____TtC5Books18BookActionMediator_currentLocationController];
  *v262 = v257;
  *(v262 + 1) = v241;
  v263 = &v259[OBJC_IVAR____TtC5Books18BookActionMediator_orientationLockHandler];
  *v263 = v611;
  *(v263 + 1) = &protocol witness table for BookReaderStateManager;
  sub_100009864(&v631, &v259[OBJC_IVAR____TtC5Books18BookActionMediator_pageTurnController]);
  v264 = &v259[OBJC_IVAR____TtC5Books18BookActionMediator_readingLoupeProvider];
  *v264 = v617;
  v264[1] = &protocol witness table for ReadingSettingsManager;
  v655.receiver = v259;
  v655.super_class = v258;
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  v530 = v257;

  v265 = objc_msgSendSuper2(&v655, "init");
  swift_unknownObjectWeakAssign();
  swift_getObjectType();
  swift_unknownObjectRetain();
  v266 = sub_1007A0554();
  swift_unknownObjectRelease();
  *&v621 = v266;
  v267 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v268 = swift_allocObject();
  *(v268 + 16) = v267;
  *(v268 + 24) = v255;
  v603 = v255;

  v269 = v265;
  sub_1001F1160(&qword_100AE6460);
  sub_100005920(&unk_100AEB880, &qword_100AE6460);
  sub_10079BB04();

  v567 = v269;
  swift_beginAccess();
  sub_10079B854();
  swift_endAccess();

  v270 = sub_1007A0664();
  v271 = v575;
  v539 = v270;
  sub_10079F9B4();
  v272 = [objc_opt_self() mainRunLoop];
  *&v621 = v272;
  v273 = sub_1007A3324();
  v274 = v540;
  (*(*(v273 - 8) + 56))(v540, 1, 1, v273);
  sub_10000A7C4(0, &unk_100AE19D8);
  sub_100005920(&qword_100AD82D0, &unk_100AE1530);
  sub_10051C650(&qword_100AE19E8, &unk_100AE19D8);
  v275 = v541;
  v276 = v577;
  sub_10079BAB4();
  v277 = v274;
  v278 = v567;
  sub_100007840(v277, &unk_100AF4290);
  v576[1](v271, v276);

  v279 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v280 = swift_allocObject();
  v281 = v616;
  v280[2] = v279;
  v280[3] = v281;
  v280[4] = &protocol witness table for PaginatingService;
  sub_100005920(&unk_100AE87F8, &unk_100AE8768);

  v282 = v558;
  sub_10079BB04();

  v542[1](v275, v282);
  swift_beginAccess();
  sub_10079B854();
  swift_endAccess();

  *&v621 = BookReaderStateManager.isOrientationLockedPublisher.getter();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v283 = sub_1001F1160(&unk_100AF27D0);
  v566 = sub_100005920(&qword_100AEA160, &unk_100AF27D0);
  v558 = v283;
  sub_10079BB04();

  swift_beginAccess();
  sub_10079B854();
  swift_endAccess();

  *&v621 = sub_1007A13E4();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_10079BB04();

  swift_beginAccess();
  sub_10079B854();
  swift_endAccess();

  *&v621 = sub_1007A1404();
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_10079BB04();

  swift_beginAccess();
  sub_10079B854();
  swift_endAccess();
  v284 = v603;

  sub_1000074E0(&v631);
  swift_beginAccess();
  *(v284 + 7) = &off_100A198B0;
  swift_unknownObjectWeakAssign();
  v285 = v600;
  if (v600)
  {
    v286 = sub_100027EF0(&unk_100AE8760, type metadata accessor for ReadingAnalyticsProvider);
  }

  else
  {
    v286 = 0;
  }

  v287 = v603;
  *(v603 + 5) = v286;
  swift_unknownObjectWeakAssign();
  swift_beginAccess();
  *(v287 + 9) = &off_100A198A0;
  swift_unknownObjectWeakAssign();
  *&v631 = *(v615 + 200);
  sub_1001F1160(&qword_100ADECC8);
  sub_100005920(&qword_100ADECD0, &qword_100ADECC8);
  *&v631 = sub_10079BA14();
  swift_allocObject();
  swift_weakInit();

  sub_1001F1160(&qword_100ADC880);
  sub_100005920(&qword_100ADC888, &qword_100ADC880);
  sub_10079BB04();

  swift_beginAccess();
  sub_10079B854();
  swift_endAccess();

  sub_1005124DC(v537, v287);
  sub_10034249C();

  v288 = v611;
  *(v611 + 10) = &off_100A198D8;
  swift_unknownObjectWeakAssign();
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v289 = v288[8];
    v290 = swift_getObjectType();
    v291 = *(v289 + 8);
    v292 = v278;
    v291(v290, v289);
    v288 = v611;

    swift_unknownObjectRelease();
  }

  v293 = [objc_allocWithZone(type metadata accessor for OrientationLockHintViewModel()) init];
  type metadata accessor for OrientationLockHintController();
  v294 = swift_allocObject();
  v295 = v536;

  v296 = v293;
  v297 = sub_100514778(v296, v288, v295, v294);

  v558 = v296;
  v298 = &v296[OBJC_IVAR____TtC5Books28OrientationLockHintViewModel_orientationLockHandler];
  swift_beginAccess();
  *(v298 + 1) = &protocol witness table for OrientationLockHintController;
  v602 = v297;
  swift_unknownObjectWeakAssign();
  v299 = sub_10079F034();
  swift_getKeyPath();
  v300 = v299;
  v301 = v556;
  sub_1007968C4();

  sub_100005920(&qword_100AE76A8, &qword_100AE76A0);
  v302 = v561;
  sub_10079BA14();
  v542 = v300;

  (v559[1])(v301, v302);
  if (v285)
  {

    sub_100299B6C(v303);
  }

  v304 = [v572 standardUserDefaults];
  v305 = sub_1007A2214();
  v306 = [v304 BOOLForKey:v305];

  sub_100009864(v662, &v631);
  v307 = swift_allocObject();
  sub_1000077C0(&v631, v307 + 16);
  *(v307 + 56) = v306;
  v308 = v603;
  *(v307 + 64) = v602;
  *(v307 + 72) = v308;

  sub_1007A19D4();

  sub_100009864(v664, &v631);
  sub_10079F0B4();
  sub_1001F1160(&unk_100AE8800);
  swift_allocObject();
  v561 = v568;

  v309 = v531;

  v310 = sub_1007A16C4();
  v541 = type metadata accessor for ThemeOptionsContainerPresenter();
  swift_allocObject();
  v311 = sub_1004B000C(v310);
  v599 = sub_10079F0B4();
  v540 = v312;
  v556 = *(*(v607[22] + 16) + 48);
  type metadata accessor for BookReaderViewModel();
  v313 = swift_allocObject();
  *(v313 + 24) = 0;
  swift_unknownObjectWeakInit();
  v314 = swift_allocObject();
  swift_beginAccess();
  LOBYTE(v621) = 0;

  v537 = v569;
  v536 = v567;

  v559 = v311;

  sub_10079B964();
  swift_endAccess();
  *(v313 + 32) = v314;
  *(v313 + 152) = 0;
  swift_unknownObjectWeakInit();
  swift_weakInit();
  v315 = OBJC_IVAR____TtC5Books19BookReaderViewModel__overlay;
  v316 = type metadata accessor for OverlayViewModel.Overlay(0);
  v317 = *(*(v316 - 8) + 56);
  v317(v313 + v315, 1, 1, v316);
  v318 = OBJC_IVAR____TtC5Books19BookReaderViewModel_overlayViewModel;
  type metadata accessor for OverlayViewModel(0);
  v319 = swift_allocObject();
  v320 = v543;
  v317(v543, 1, 1, v316);
  sub_1000077D8(v320, v544, &qword_100ADB1C0);
  sub_10079B964();
  sub_100007840(v320, &qword_100ADB1C0);
  *(v313 + v318) = v319;
  *(v313 + OBJC_IVAR____TtC5Books19BookReaderViewModel__closedAndNoOverlayVisible) = 1;
  v321 = [objc_allocWithZone(UIImage) init];
  *(v313 + OBJC_IVAR____TtC5Books19BookReaderViewModel__coverImage) = v321;
  v322 = objc_opt_self();
  v323 = [v322 whiteColor];
  *(v313 + OBJC_IVAR____TtC5Books19BookReaderViewModel__backgroundColor) = v323;
  *(v313 + OBJC_IVAR____TtC5Books19BookReaderViewModel__bookCharacterFlowMatchesAppCharacterFlow) = 1;
  *(v313 + OBJC_IVAR____TtC5Books19BookReaderViewModel__chromeRenderMode) = 0;
  v324 = (v313 + OBJC_IVAR____TtC5Books19BookReaderViewModel__edgeInsets);
  *v324 = 0u;
  v324[1] = 0u;
  *(v313 + OBJC_IVAR____TtC5Books19BookReaderViewModel__gutterWidth) = 0;
  v325 = (v313 + OBJC_IVAR____TtC5Books19BookReaderViewModel__menuOuterMargin);
  v326 = *&UIEdgeInsetsZero.bottom;
  *v325 = *&UIEdgeInsetsZero.top;
  v325[1] = v326;
  v327 = [v322 blackColor];
  *(v313 + OBJC_IVAR____TtC5Books19BookReaderViewModel__textColor) = v327;
  v328 = OBJC_IVAR____TtC5Books19BookReaderViewModel__themeColorScheme;
  v329 = enum case for ColorScheme.light(_:);
  v330 = sub_10079BC44();
  (*(*(v330 - 8) + 104))(v313 + v328, v329, v330);
  *(v313 + OBJC_IVAR____TtC5Books19BookReaderViewModel__usePhysicalPages) = 0;
  *(v313 + OBJC_IVAR____TtC5Books19BookReaderViewModel__hasPhysicalPages) = 0;
  type metadata accessor for HistoryViewModel();
  v331 = swift_allocObject();
  v332 = type metadata accessor for HistoryModel.Entry(0);
  v333 = *(*(v332 - 8) + 56);
  v334 = v547;
  v333(v547, 1, 1, v332);
  v333(&v334[*(v565 + 20)], 1, 1, v332);
  sub_10051C938(v334, v546, type metadata accessor for HistoryModel);
  sub_10079B964();
  sub_10051C6D8(v334, type metadata accessor for HistoryModel);
  *(v313 + OBJC_IVAR____TtC5Books19BookReaderViewModel__historyViewModel) = v331;
  *(v313 + OBJC_IVAR____TtC5Books19BookReaderViewModel__infoBarTopMargin) = 0;
  *(v313 + OBJC_IVAR____TtC5Books19BookReaderViewModel__infoBarBottomMargin) = 0;
  *(v313 + OBJC_IVAR____TtC5Books19BookReaderViewModel__presentBubbleTips) = 0;
  v335 = v313 + OBJC_IVAR____TtC5Books19BookReaderViewModel__chromeState;
  *(v313 + OBJC_IVAR____TtC5Books19BookReaderViewModel__chromeState) = 0;
  v336 = type metadata accessor for BookReaderChromeState();
  v337 = v336[6];
  v338 = enum case for BookContentHeaderStyle.primary(_:);
  v339 = sub_10079F4E4();
  (*(*(v339 - 8) + 104))(v335 + v337, v338, v339);
  *(v335 + v336[7]) = 0;
  *(v335 + v336[8]) = 1;
  *(v335 + v336[9]) = 0;
  *(v335 + v336[10]) = 0;
  *(v335 + v336[11]) = 0;
  *(v335 + v336[12]) = 0;
  *(v335 + v336[13]) = 0;
  *(v335 + v336[14]) = 1;
  *(v335 + v336[15]) = 0;
  *(v313 + OBJC_IVAR____TtC5Books19BookReaderViewModel__isShowingExpandedContent) = 0;
  *(v313 + OBJC_IVAR____TtC5Books19BookReaderViewModel__isShowingRealTitle) = 1;
  *(v313 + OBJC_IVAR____TtC5Books19BookReaderViewModel__fadeLeadingTitleEdge) = 0;
  v340 = OBJC_IVAR____TtC5Books19BookReaderViewModel__layoutDirection;
  v341 = enum case for LayoutDirection.leftToRight(_:);
  v342 = sub_10079C104();
  (*(*(v342 - 8) + 104))(v313 + v340, v341, v342);
  *(v313 + OBJC_IVAR____TtC5Books19BookReaderViewModel__isScrollMode) = 0;
  *(v313 + OBJC_IVAR____TtC5Books19BookReaderViewModel__bookmarkNotesContentType) = 0;
  v343 = OBJC_IVAR____TtC5Books19BookReaderViewModel_isBookOpenSubject;
  LOBYTE(v631) = 0;
  sub_1001F1160(&unk_100AD1E40);
  swift_allocObject();
  *(v313 + v343) = sub_10079B924();
  v344 = OBJC_IVAR____TtC5Books19BookReaderViewModel_showThemeCustomizationTipSubject;
  LOBYTE(v631) = 1;
  swift_allocObject();
  *(v313 + v344) = sub_10079B924();
  *(v313 + OBJC_IVAR____TtC5Books19BookReaderViewModel__cancellables) = _swiftEmptyArrayStorage;
  *(v313 + OBJC_IVAR____TtC5Books19BookReaderViewModel__statusBarBackgroundOpacity) = 0;
  _s5Books17REActionMenuStateC22__observationRegistrar33_32ABA65274D463EF405FFF160E47F6ACLL11Observation0nF0Vvpfi_0();
  sub_100009864(v593, &v621);
  v547 = *&v561[OBJC_IVAR___REBookProviderService_bookInfo];
  sub_10000E3E8(&v621, *(&v622 + 1));
  v345 = sub_10079ECA4();
  v545 = v346;
  v546 = v345;
  sub_10000E3E8(&v621, *(&v622 + 1));
  v543 = sub_10079EC64();
  v531 = v347;
  sub_10000E3E8(&v621, *(&v622 + 1));
  v348 = sub_10079EC74();
  v529 = v349;
  v530 = v348;
  sub_1001F1160(&unk_100AD9510);
  v528 = sub_100795DC4();
  v544 = sub_100795DC4();
  v527 = sub_100795DC4();
  v350 = v548;
  sub_1007A2154();
  v351 = v551;
  sub_100796C94();
  v352 = *(v605 + 2);
  v593 = v605 + 16;
  v604 = v352;
  v353 = v549;
  (v352)(v573, v350, v549);
  v354 = *(v606 + 2);
  v570 = v606 + 16;
  v572 = v354;
  v355 = v550;
  (v354)(v550, v351, v574);
  v569 = type metadata accessor for BundleFinder();
  v356 = v552;
  *v552 = v569;
  LODWORD(v568) = enum case for LocalizedStringResource.BundleDescription.forClass(_:);
  v357 = v597[13];
  v597 += 13;
  v567 = v357;
  (v357)(v356);
  sub_100796834();
  v358 = *(v606 + 1);
  v606 += 8;
  v566 = v358;
  v359 = v574;
  (v358)(v351, v574);
  v360 = *(v605 + 1);
  v605 += 8;
  v565 = v360;
  v360(v350, v353);
  v526 = sub_100795DB4();
  sub_1001F1160(&qword_100AE8370);
  v525 = sub_100795DA4();
  v524 = sub_1001F1160(&unk_100AD9520);
  sub_1007A2154();
  sub_100796C94();
  v361 = v573;
  (v604)(v573, v350, v353);
  (v572)(v355, v351, v359);
  *v356 = v569;
  (v567)(v356, v568, v591);
  sub_100796834();
  (v566)(v351, v359);
  (v565)(v350, v353);
  sub_100211A50();
  v524 = sub_100795D74();
  Strong = sub_1001F1160(&unk_100AD9530);
  sub_1007A2154();
  sub_100796C94();
  (v604)(v361, v350, v353);
  (v572)(v355, v351, v359);
  *v356 = v569;
  (v567)(v356, v568, v591);
  sub_100796834();
  v362 = v359;
  v363 = v556;
  (v566)(v351, v362);
  (v565)(v350, v353);
  sub_100005920(&unk_100AE7F80, &qword_100AD9540);
  v364 = sub_100795D84();
  *&v631 = v543;
  *(&v631 + 1) = v531;
  v365 = v528;
  sub_100795D64();
  *&v631 = v530;
  *(&v631 + 1) = v529;
  v366 = v527;
  sub_100795D64();
  LOBYTE(v631) = 0;
  v367 = v524;
  sub_100795D64();
  *(&v638 + 1) = *v635;
  DWORD1(v638) = *&v635[3];
  *&v637 = v546;
  *(&v637 + 1) = v545;
  LOBYTE(v638) = 0;
  *(&v638 + 1) = v365;
  *&v639 = v544;
  *(&v639 + 1) = v366;
  *&v640 = v526;
  *(&v640 + 1) = v525;
  *&v641 = v367;
  *(&v641 + 1) = v364;
  v642 = 0uLL;
  v643[0] = v546;
  v643[1] = v545;
  v644 = 0;
  *v645 = *v635;
  *&v645[3] = *&v635[3];
  v646 = v365;
  v647 = v544;
  v648 = v366;
  v649 = v526;
  v650 = v525;
  v651 = v367;
  v652 = v364;
  v653 = 0;
  v654 = 0;
  sub_1002A40C0(&v637, &v631);
  sub_1002A411C(v643);
  v368 = (v313 + OBJC_IVAR____TtC5Books19BookReaderViewModel_bookAppEntity);
  v369 = v640;
  v368[2] = v639;
  v368[3] = v369;
  v370 = v642;
  v368[4] = v641;
  v368[5] = v370;
  v371 = v638;
  *v368 = v637;
  v368[1] = v371;
  swift_unknownObjectRetain();
  sub_10002B130(v313 + 16);
  *(v313 + 24) = v540;
  swift_unknownObjectWeakInit();
  swift_unknownObjectRelease();
  v372 = v589;
  *(v313 + 40) = v615;
  *(v313 + 48) = v372;
  v373 = v617;
  *(v313 + 56) = &protocol witness table for BookReaderLayoutController;
  *(v313 + 64) = v373;
  v374 = v613;
  *(v313 + 72) = v587;
  *(v313 + 80) = v374;
  *(v313 + 128) = v612;
  v376 = v536;
  v375 = v537;
  *(v313 + 88) = v588;
  *(v313 + 96) = v376;
  *(v313 + 104) = v375;

  v604 = v375;
  v377 = v376;
  *(v313 + OBJC_IVAR____TtC5Books19BookReaderViewModel__horizontalFadeColor) = sub_10079DDC4();
  v605 = v377;
  v378 = v602;
  *(v313 + 112) = *&v377[OBJC_IVAR____TtC5Books18BookActionMediator_actionMenuState];
  *(v313 + 120) = v378;
  *(v313 + 136) = v363;
  *(v313 + OBJC_IVAR____TtC5Books19BookReaderViewModel__paginatingService + 8) = &protocol witness table for PaginatingService;
  swift_unknownObjectUnownedInit();
  *(v313 + OBJC_IVAR____TtC5Books19BookReaderViewModel__pageNumberProvider + 8) = &protocol witness table for PageNumberProvider;
  swift_unknownObjectUnownedInit();
  sub_10000E3E8(&v621, *(&v622 + 1));

  v379 = sub_10079ECA4();
  v380 = (v313 + OBJC_IVAR____TtC5Books19BookReaderViewModel_bookAssetID);
  *v380 = v379;
  v380[1] = v381;
  sub_10000E3E8(&v621, *(&v622 + 1));
  v382 = sub_10079EBD4();
  v383 = (v313 + OBJC_IVAR____TtC5Books19BookReaderViewModel_bookLanguage);
  *v383 = v382;
  v383[1] = v384;
  sub_10000E3E8(&v621, *(&v622 + 1));
  v385 = sub_10079EC64();
  v386 = (v313 + OBJC_IVAR____TtC5Books19BookReaderViewModel_bookTitle);
  *v386 = v385;
  v386[1] = v387;
  sub_10000E3E8(&v621, *(&v622 + 1));
  v388 = sub_10079EC74();
  v389 = (v313 + OBJC_IVAR____TtC5Books19BookReaderViewModel_bookAuthor);
  *v389 = v388;
  v389[1] = v390;
  sub_10000E3E8(&v621, *(&v622 + 1));
  *(v313 + 224) = sub_10079EC84() & 1;
  sub_10000E3E8(&v621, *(&v622 + 1));
  v391 = v575;
  sub_10079EC24();
  (v576[4])(v313 + OBJC_IVAR____TtC5Books19BookReaderViewModel_preorderedPublisher, v391, v577);
  v392 = v547;
  if (v547)
  {
    v392 = [v547 isStoreBook];
  }

  *(v313 + OBJC_IVAR____TtC5Books19BookReaderViewModel_isStoreBook) = v392;
  sub_10000E3E8(&v621, *(&v622 + 1));
  sub_10079EC44();
  v393 = sub_1007A0CE4();
  v395 = v394;
  v396 = 1;
  v397 = sub_1007A0CE4();
  v399 = v584;
  v400 = v608;
  v401 = v559;
  if (v393 != v397 || v395 != v398)
  {
    v396 = sub_1007A3AB4();
  }

  *(v313 + OBJC_IVAR____TtC5Books19BookReaderViewModel_isPageProgressionRTL) = v396 & 1;
  sub_10000E3E8(&v621, *(&v622 + 1));
  sub_10079EBD4();
  v402 = v553;
  sub_100796CA4();
  v403 = sub_100796CC4();
  (*(v554 + 8))(v402, v555);
  *(v313 + OBJC_IVAR____TtC5Books19BookReaderViewModel_characterFlowIsRTL) = v403 == 2;

  swift_weakDestroy();
  swift_weakInit();

  *(v313 + 168) = v399;
  *(v313 + 176) = v400;
  *(v313 + 208) = v541;
  *(v313 + 216) = &off_100A1F170;
  *(v313 + 184) = v401;
  if (byte_100B23530 == 1)
  {

LABEL_22:
    sub_10057AE90(0);
    goto LABEL_23;
  }

  v404 = objc_opt_self();

  v405 = [v404 sharedApplication];
  v406 = [v405 launchedToTest];

  if (v406)
  {

    goto LABEL_22;
  }

  swift_getKeyPath();
  *&v631 = v313;
  sub_100027EF0(&qword_100AF2550, type metadata accessor for BookReaderViewModel);
  sub_100797A14();

  sub_10079B904();
  if (v631 != 1)
  {
    KeyPath = swift_getKeyPath();
    v606 = v516;
    __chkstk_darwin(KeyPath);
    *&v631 = v313;
    v513 = v557;
    sub_100797A04();
    v557 = v513;
  }

LABEL_23:
  sub_10057D260();
  sub_10057B444();
  swift_unknownObjectRelease();

  sub_1000074E0(&v621);
  if (v400)
  {
    swift_weakAssign();
  }

  swift_weakInit();
  v407 = v538;

  swift_weakInit();

  swift_weakInit();
  v636 = &off_100A2BE60;
  swift_unknownObjectWeakInit();

  sub_100303E7C(v635, v630);
  *(&v621 + 1) = 0;
  swift_unknownObjectWeakInit();
  swift_weakInit();
  v628 = *(v313 + 112);
  sub_100303E7C(v630, &v629);
  *(&v621 + 1) = &off_100A2BE60;
  swift_unknownObjectWeakAssign();
  v625 = v313;
  v408 = *(v313 + 104);
  sub_100027EF0(&qword_100ADB6A0, type metadata accessor for ChromeStyle);
  swift_retain_n();
  v409 = v407;

  v410 = v408;
  *&v622 = sub_10079C024();
  *(&v622 + 1) = v411;
  swift_weakAssign();
  if (*(v313 + 176))
  {
  }

  else
  {
    sub_10068A008(0, 0);
  }

  type metadata accessor for SampleHeaderViewModel();
  sub_100027EF0(&qword_100ADC3A0, type metadata accessor for SampleHeaderViewModel);
  v623 = sub_10079C024();
  v624 = v412;
  sub_100027EF0(&qword_100AF2980, type metadata accessor for PublishedBool);

  v413 = sub_10079C024();
  v415 = v414;

  v626 = v413;
  v627 = v415;
  v416 = v557;
  sub_10079B624();
  v572 = v409;
  if (v416)
  {

    sub_10051C758(v630);
    v571 = 0;
  }

  else
  {
    v571 = 0;
    sub_10051C758(v630);
  }

  sub_10030254C(&v621, &v631);
  v598 = v313;
  v417 = *(v313 + 112);

  v597 = v417;

  v418 = v542;
  v588 = sub_10079F5C4();
  sub_100303E7C(v635, &v621);
  v606 = sub_10079F0B4();
  v591 = v419;
  sub_10000E3E8(v662, v663);

  LODWORD(v577) = sub_10079EC84();
  v590 = *&v605[OBJC_IVAR____TtC5Books18BookActionMediator_currentLocationController];
  sub_10000A7C4(0, &qword_100AEEF60);
  swift_getKeyPath();
  swift_getKeyPath();
  v599 = v418;
  v593 = v590;
  swift_unknownObjectRetain();
  sub_10079B9A4();

  v576 = sub_1007A3144();
  v587 = type metadata accessor for PageCurlViewController(0);
  v420 = objc_allocWithZone(v587);
  v421 = &v420[OBJC_IVAR____TtC5Books22PageCurlViewController_contentLayoutProviderProviding];
  *&v420[OBJC_IVAR____TtC5Books22PageCurlViewController_contentLayoutProviderProviding + 8] = 0;
  swift_unknownObjectWeakInit();
  v573 = OBJC_IVAR____TtC5Books22PageCurlViewController_bookContentLayoutController;
  swift_weakInit();
  swift_unknownObjectWeakInit();
  v422 = &v420[OBJC_IVAR____TtC5Books22PageCurlViewController_readingSettingsProvider];
  *(v422 + 8) = 0;
  v574 = v422;
  swift_unknownObjectWeakInit();
  *&v420[OBJC_IVAR____TtC5Books22PageCurlViewController_beganCurls] = _swiftEmptyArrayStorage;
  v420[OBJC_IVAR____TtC5Books22PageCurlViewController_needResetAfterCurlEnd] = 0;
  v423 = OBJC_IVAR____TtC5Books22PageCurlViewController_spreadForResetAfterCurlEnd;
  v424 = sub_1007A0F74();
  v425 = *(*(v424 - 8) + 56);
  v425(&v420[v423], 1, 1, v424);
  v420[OBJC_IVAR____TtC5Books22PageCurlViewController_isEnabled] = 0;
  v425(&v420[OBJC_IVAR____TtC5Books22PageCurlViewController_spreadBeforeCurl], 1, 1, v424);
  v425(&v420[OBJC_IVAR____TtC5Books22PageCurlViewController_pendingDestinationSpread], 1, 1, v424);
  if (_swiftEmptyArrayStorage >> 62 && sub_1007A38D4())
  {

    v426 = v615;

    sub_1001F2C68(_swiftEmptyArrayStorage);
  }

  else
  {

    v426 = v615;

    v427 = &_swiftEmptySetSingleton;
  }

  *&v420[OBJC_IVAR____TtC5Books22PageCurlViewController_tapActionViews] = v427;
  v428 = OBJC_IVAR____TtC5Books22PageCurlViewController_curlHappenedPublisher;
  sub_1001F1160(&qword_100AEB7D0);
  swift_allocObject();
  *&v420[v428] = sub_10079B8D4();
  v429 = OBJC_IVAR____TtC5Books22PageCurlViewController_curlCompletedPublisher;
  swift_allocObject();
  v430 = sub_10079B8D4();
  v575 = v429;
  *&v420[v429] = v430;
  v431 = &v420[OBJC_IVAR____TtC5Books22PageCurlViewController_oldColumnCount];
  *v431 = 0;
  v431[8] = 1;
  v420[OBJC_IVAR____TtC5Books22PageCurlViewController_isObservingChanges] = 0;
  if (_swiftEmptyArrayStorage >> 62)
  {
    v434 = sub_1007A38D4();
    v433 = v601;
    if (v434)
    {
      v432 = sub_1001F0DB4(_swiftEmptyArrayStorage);
    }

    else
    {
      v432 = &_swiftEmptySetSingleton;
    }
  }

  else
  {
    v432 = &_swiftEmptySetSingleton;
    v433 = v601;
  }

  *&v420[OBJC_IVAR____TtC5Books22PageCurlViewController_cancellables] = v432;
  *&v420[OBJC_IVAR____TtC5Books22PageCurlViewController____lazy_storage___panGestureRecognizer] = 0;
  *&v420[OBJC_IVAR____TtC5Books22PageCurlViewController_actionMenuState] = v597;
  *&v420[OBJC_IVAR____TtC5Books22PageCurlViewController_state] = v612;
  swift_weakAssign();
  v435 = &v420[OBJC_IVAR____TtC5Books22PageCurlViewController_bookLayoutController];
  v436 = v589;
  *v435 = v426;
  v435[1] = v436;
  v435[2] = &protocol witness table for BookReaderLayoutController;
  sub_100303E7C(&v621, &v420[OBJC_IVAR____TtC5Books22PageCurlViewController_containerBuilder]);
  *(v421 + 1) = v591;
  swift_unknownObjectWeakAssign();
  v437 = &v420[OBJC_IVAR____TtC5Books22PageCurlViewController_currentLocationProvider];
  *v437 = v614;
  v437[1] = v433;
  v420[OBJC_IVAR____TtC5Books22PageCurlViewController_isSample] = v577 & 1;
  swift_unknownObjectWeakAssign();
  *&v420[OBJC_IVAR____TtC5Books22PageCurlViewController_locationController] = v590;
  v438 = v576;
  *&v420[OBJC_IVAR____TtC5Books22PageCurlViewController_pageBackgroundColor] = v576;
  v439 = &v420[OBJC_IVAR____TtC5Books22PageCurlViewController_paginatingService];
  *v439 = v616;
  v439[1] = &protocol witness table for PaginatingService;
  *(v574 + 8) = &protocol witness table for ReadingSettingsManager;
  swift_unknownObjectWeakAssign();

  swift_unknownObjectRetain();
  v440 = v438;

  swift_getObjectType();
  sub_10079F814();
  swift_getObjectType();
  v441 = sub_10079F684();
  swift_unknownObjectRelease();
  *&v420[OBJC_IVAR____TtC5Books22PageCurlViewController_columns] = v441;
  sub_1001F1160(&unk_100AE8808);
  v442 = swift_allocObject();
  *(v442 + 16) = xmmword_10080B690;
  *(v442 + 32) = UIPageViewControllerOptionSpineLocationKey;
  v443 = UIPageViewControllerOptionSpineLocationKey;
  sub_10079F9D4();
  v444 = sub_100598814(v441);

  *(v442 + 64) = &type metadata for Int;
  *(v442 + 40) = v444;
  sub_1001EF3FC(v442);
  swift_setDeallocating();
  sub_100007840(v442 + 32, &qword_100AD3BD8);
  swift_deallocClassInstance();
  v445 = v599;
  sub_10079F5D4();

  sub_1007A1824();

  type metadata accessor for OptionsKey(0);
  sub_100027EF0(&qword_100AD3FA8, type metadata accessor for OptionsKey);
  v446 = sub_1007A2024().super.isa;

  v620.receiver = v420;
  v620.super_class = v587;
  v447 = objc_msgSendSuper2(&v620, "initWithTransitionStyle:navigationOrientation:options:", 0, 0, v446);

  v448 = v447;
  [v448 setDataSource:v448];
  [v448 setDelegate:v448];
  v449 = [objc_opt_self() shared];
  [v449 setPageCurlDelegate:v448];
  sub_10079FCE4();
  sub_10079FC94();
  [v449 setTapAnimationDuration:?];

  sub_10058D9C4();
  sub_10051C758(&v621);

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  [v445 addChildViewController:v448];
  v450 = [v445 view];
  if (!v450)
  {
    goto LABEL_59;
  }

  v451 = v450;
  v452 = [v448 view];
  v453 = v607;
  v454 = v608;
  if (!v452)
  {
LABEL_60:

    __break(1u);
    goto LABEL_61;
  }

  v455 = v452;
  [v451 addSubview:v452];

  v456 = [v448 view];
  if (!v456)
  {
LABEL_61:

    __break(1u);
    goto LABEL_62;
  }

  v457 = v456;
  v458 = [v445 view];
  if (!v458)
  {
LABEL_62:

    __break(1u);
    goto LABEL_63;
  }

  v459 = v458;
  v608 = v454;
  [v458 bounds];
  v461 = v460;
  v463 = v462;
  v465 = v464;
  v467 = v466;

  [v457 setFrame:{v461, v463, v465, v467}];
  v468 = [v448 view];
  if (!v468)
  {
LABEL_63:

    __break(1u);
    return;
  }

  v469 = v468;
  [v468 setAutoresizingMask:18];

  [v448 didMoveToParentViewController:v445];
  *(v558 + OBJC_IVAR____TtC5Books28OrientationLockHintViewModel_tapActionViewListener + 8) = &off_100A23D90;
  swift_unknownObjectWeakAssign();
  v470 = swift_getKeyPath();
  __chkstk_darwin(v470);
  v471 = v598;
  *&v621 = v598;
  sub_100027EF0(&qword_100AF2550, type metadata accessor for BookReaderViewModel);
  v472 = v448;
  sub_100797A04();

  v473 = sub_10079F034();
  v474 = sub_10079F5D4();

  v573 = v472;
  sub_10050D6E0(v472, v474);

  v475 = v572;
  sub_10050E910(v471, v578);
  v476 = v611;
  v477 = v535;
  v478 = v533;
  v479 = v592;

  v480 = v475;

  v481 = sub_10050C904(v477, v478, v479, [v563 sharedController]);
  v482 = type metadata accessor for BookReaderToolbarPresenter();
  v619.receiver = objc_allocWithZone(v482);
  v619.super_class = v482;
  v597 = objc_msgSendSuper2(&v619, "init");

  v483 = type metadata accessor for BookReaderActionTarget();
  v484 = objc_allocWithZone(v483);
  *&v484[OBJC_IVAR____TtC5Books22BookReaderActionTarget_delegate + 8] = 0;
  *(swift_unknownObjectWeakInit() + 8) = &off_100A2BC40;
  swift_unknownObjectWeakAssign();
  v618.receiver = v484;
  v618.super_class = v483;
  v485 = objc_msgSendSuper2(&v618, "init");
  sub_100302514(&v631, &v621);
  v486 = v476[3];
  v617 = v482;
  v606 = v480;
  v591 = v485;
  if (v608)
  {
    v593 = v608[2];

    v592 = &off_100A1D378;
  }

  else
  {
    v593 = 0;
    v592 = 0;
  }

  v487 = v518;
  v488 = v561;
  v630[4] = v562;
  v490 = v453[21];
  v489 = v453[22];
  v630[3] = v586;
  v630[0] = v489;

  swift_unknownObjectRetain();

  v589 = v490;
  v491 = v609;
  v577 = sub_10079F064();
  v492 = &off_100A12AB8;
  v493 = v600;
  if (!v600)
  {
    v492 = 0;
  }

  v588 = v492;
  v575 = type metadata accessor for BookReaderContainerViewController();
  v574 = sub_10079F4C4();
  swift_retain_n();
  *&v590 = v486;
  v494 = v616;

  v587 = v488;
  v586 = v487;
  v576 = v517;
  v495 = v614;

  v496 = v615;

  v497 = v606;

  v498 = v598;

  v499 = v579;

  v500 = v591;
  v501 = v597;
  v515 = v617;
  v514 = v496;
  v617 = v500;
  v502 = v501;
  v503 = sub_10056AB30(&v621, v590, v491, v587, v497, v499, v586, &off_100A110B8, v576, &off_100A30070, v611, v611, v593, v592, v585, v495, v601, v630, v501, v613, v514, v589, v596, v577, v500, v498, v494, &protocol witness table for PaginatingService, v493, v588, v575, v515, v564, v522, v564, v574, &off_100A146C8, &protocol witness table for BookReaderStateManager, &protocol witness table for BookReaderStateManager, &protocol witness table for BookLayoutModeManager);
  *&v497[OBJC_IVAR____TtC5Books19BookReaderPresenter_router + 8] = &off_100A231D0;
  swift_unknownObjectWeakAssign();
  v504 = swift_allocObject();
  *(v504 + 16) = v497;
  v616 = v497;
  v505 = v503;
  v506 = sub_1007A2D74();
  v508 = v519;
  v507 = v520;
  *v519 = v506;
  v509 = v521;
  (*(v507 + 104))(v508, enum case for DispatchPredicate.onQueue(_:), v521);
  LOBYTE(v497) = sub_1007A1D34();
  (*(v507 + 8))(v508, v509);
  if ((v497 & 1) == 0)
  {
    __break(1u);
LABEL_58:

    __break(1u);
LABEL_59:

    __break(1u);
    goto LABEL_60;
  }

  sub_1006A2708(*(v504 + 16));

  sub_100302D44(&v631);
  sub_10051C758(v635);

  v510 = v600;
  if (v600)
  {
    *(v600 + 96) = &off_100A231B8;
    swift_unknownObjectWeakAssign();
    swift_beginAccess();
    *(v510 + 112) = &off_100A231A0;
    swift_unknownObjectWeakAssign();
  }

  v511 = v607;
  v607[5] = &off_100A23298;
  swift_unknownObjectWeakAssign();
  v511[7] = &off_100A23270;
  swift_unknownObjectWeakAssign();

  *(v603 + 23) = &off_100A23190;
  swift_unknownObjectWeakAssign();

  sub_1000074E0(v662);
  sub_1000074E0(v664);
}

char *sub_10051B1EC(void (*a1)(char *, uint64_t), void *a2, void *a3, void *a4, objc_class *a5, void *a6, void *a7, void *a8, char *a9)
{
  v146 = a8;
  v149 = a6;
  v144 = a4;
  v14 = sub_10079EF54();
  v15 = *(v14 - 1);
  __chkstk_darwin(v14);
  v17 = &v130 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  v151 = swift_conformsToProtocol2();
  if (!v151 || !a1)
  {
    goto LABEL_32;
  }

  v142 = v15;
  v138 = a3;
  v18 = OBJC_IVAR___REBookProviderService_bookEntity;
  swift_beginAccess();
  sub_100009864(a2 + v18, &v163);
  v152 = a1;
  v153 = a9;
  v145 = a2;
  v141 = v17;
  if (a7)
  {
    swift_unknownObjectRetain();
    v19 = a7;
    v20 = [v19 ba_effectiveAnalyticsTracker];
    if (v20)
    {
      v21 = v20;
      v22 = UIViewController.sessionHost.getter();

      if (v22)
      {
        sub_100009864(&v163, &aBlock);
        type metadata accessor for ReadingAnalyticsProvider();
        v23 = swift_allocObject();
        *(v23 + 80) = 0;
        swift_unknownObjectWeakInit();
        *(v23 + 96) = 0;
        swift_unknownObjectWeakInit();
        *(v23 + 112) = 0;
        swift_unknownObjectWeakInit();
        v24 = OBJC_IVAR____TtC5Books24ReadingAnalyticsProvider_beginSessionDate;
        v25 = sub_100796BB4();
        v26 = *(*(v25 - 8) + 56);
        v26(v23 + v24, 1, 1, v25);
        v26(v23 + OBJC_IVAR____TtC5Books24ReadingAnalyticsProvider_endSessionDate, 1, 1, v25);
        v27 = v23 + OBJC_IVAR____TtC5Books24ReadingAnalyticsProvider_beginProgress;
        *v27 = 0;
        *(v27 + 8) = 1;
        v28 = v23 + OBJC_IVAR____TtC5Books24ReadingAnalyticsProvider_endProgress;
        *v28 = 0;
        *(v28 + 8) = 1;
        v29 = OBJC_IVAR____TtC5Books24ReadingAnalyticsProvider_initialDnDState;
        v30 = enum case for DoNotDisturbStatus.unknown(_:);
        v31 = sub_100798154();
        (*(*(v31 - 8) + 104))(v23 + v29, v30, v31);
        v32 = OBJC_IVAR____TtC5Books24ReadingAnalyticsProvider_scrollViewState;
        v33 = enum case for ScrollViewStatus.unknown(_:);
        v34 = sub_1007980B4();
        (*(*(v34 - 8) + 104))(v23 + v32, v33, v34);
        v35 = OBJC_IVAR____TtC5Books24ReadingAnalyticsProvider_autoNightState;
        v36 = enum case for AutoNightThemeStatus.unknown(_:);
        v37 = sub_1007981E4();
        (*(*(v37 - 8) + 104))(v23 + v35, v36, v37);
        v38 = OBJC_IVAR____TtC5Books24ReadingAnalyticsProvider_backgroundColor;
        v39 = enum case for BackgroundColor.unknown(_:);
        v40 = sub_100798074();
        (*(*(v40 - 8) + 104))(v23 + v38, v39, v40);
        v41 = v23 + OBJC_IVAR____TtC5Books24ReadingAnalyticsProvider_lifeCycleCancellable;
        *v41 = 0u;
        *(v41 + 16) = 0u;
        *(v41 + 32) = 0;
        v42 = v23 + OBJC_IVAR____TtC5Books24ReadingAnalyticsProvider_beginProgressCancellable;
        *(v42 + 32) = 0;
        *v42 = 0u;
        *(v42 + 16) = 0u;
        v43 = v23 + OBJC_IVAR____TtC5Books24ReadingAnalyticsProvider_lastFontSize;
        *v43 = 0;
        *(v43 + 8) = 1;
        v44 = (v23 + OBJC_IVAR____TtC5Books24ReadingAnalyticsProvider_lastFontFamily);
        *v44 = 0;
        v44[1] = 0;
        *(v23 + OBJC_IVAR____TtC5Books24ReadingAnalyticsProvider_LogEvents) = 1;
        v45 = OBJC_IVAR____TtC5Books24ReadingAnalyticsProvider_contentDataCache;
        v46 = sub_100797D84();
        (*(*(v46 - 8) + 56))(v23 + v45, 1, 1, v46);
        *(v23 + 16) = v21;
        *(v23 + 24) = v22;
        sub_1000077C0(&aBlock, v23 + 32);
        *(v23 + 80) = 0;
        swift_unknownObjectWeakAssign();
        *(v23 + 96) = 0;
        swift_unknownObjectWeakAssign();
        swift_beginAccess();
        *(v23 + 112) = 0;
        swift_unknownObjectWeakAssign();
        v156 = v23;

        goto LABEL_11;
      }
    }

    else
    {
    }
  }

  else
  {
    swift_unknownObjectRetain();
  }

  v156 = 0;
LABEL_11:
  v150 = sub_1007A0F84();
  v47 = sub_10079F534();
  v48 = sub_10079F524();
  sub_1007A1774();
  v155 = sub_1007A1764();
  v159 = v47;
  v160 = &protocol witness table for BookThemeDatabaseManager;
  *&aBlock = v48;
  v139 = a5;
  v143 = v14;
  if (v156)
  {
    sub_100027EF0(&qword_100AE8760, type metadata accessor for ReadingAnalyticsProvider);
  }

  v148 = sub_1007A0EF4();
  sub_1007A1AF4();
  v49 = v156;

  v137 = v48;
  v162 = sub_1007A1784();
  v154 = objc_opt_self();
  [v154 standardUserDefaults];
  swift_getObjectType();
  sub_1007A0E94();
  swift_unknownObjectRetain();

  v50 = v149;

  v140 = v50;
  v51 = sub_1007A0EE4();
  sub_100009864(&v163, &aBlock);
  if (v49)
  {
    sub_100027EF0(&qword_100AE8760, type metadata accessor for ReadingAnalyticsProvider);
  }

  v52 = v152;
  v53 = v156;

  v54 = [v154 standardUserDefaults];
  sub_10079F4C4();
  swift_allocObject();

  v55 = sub_10079F4A4();
  sub_100009864(&v163, &aBlock);
  v56 = sub_1007A1004();
  v58 = v57;
  if (v53)
  {
    v59 = sub_100027EF0(&qword_100AE8760, type metadata accessor for ReadingAnalyticsProvider);
  }

  else
  {
    v59 = 0;
  }

  type metadata accessor for BookReaderLayoutController();
  v60 = swift_allocObject();
  swift_unknownObjectRetain();
  v61 = v156;

  v62 = sub_100513270(&aBlock, v52, v151, v55, v56, v58, v61, v59, v60);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  if (v61)
  {
    sub_100027EF0(&qword_100AE8760, type metadata accessor for ReadingAnalyticsProvider);
  }

  v63 = v156;

  sub_1007A0FE4();
  swift_beginAccess();
  v149 = v62;
  v64 = objc_allocWithZone(type metadata accessor for AnnotationProviderService());

  v65 = v144;
  v66 = v145;
  v67 = v146;
  sub_100513BDC(v65, v66, v65, v67, v63, v64);
  v69 = v68;

  v136 = v67;

  v146 = v69;
  AnnotationProviderService.start()();
  v70 = [v65 privateUserEditMOC];
  if (!v70)
  {
    goto LABEL_31;
  }

  v71 = v70;
  v72 = objc_allocWithZone(type metadata accessor for CurrentLocationPersistenceService());
  v73 = v65;
  v145 = v66;
  v135 = v73;
  v74 = sub_100512978(v71, v145, v73, v72);
  v75 = *&v74[OBJC_IVAR____TtC5Books33CurrentLocationPersistenceService_annotationMOC];
  v76 = swift_allocObject();
  *(v76 + 16) = v74;
  v160 = sub_10051C634;
  v161 = v76;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  v158 = sub_1003323D0;
  v159 = &unk_100A214E0;
  v77 = _Block_copy(&aBlock);
  v134 = v74;

  [v75 performBlock:v77];
  _Block_release(v77);
  v78 = sub_1007A0C84();
  sub_100009864(&v163, &aBlock);
  v147 = v55;
  sub_10079F494();
  v79 = [v52 traitCollection];
  sub_1007A1754();
  sub_1007A0ED4();
  v80 = [v154 standardUserDefaults];
  v81 = sub_1007A2214();
  [v80 BOOLForKey:v81];

  v82 = v141;
  sub_1007A0EC4();
  sub_10000A7C4(0, &qword_100AE15B0);
  v144 = v78;
  v154 = sub_1007A0C74();
  v148 = v51;
  sub_1007A0EC4();
  LOBYTE(v80) = sub_10079EE44();
  (*(v142 + 1))(v82, v143);
  v85 = 0;
  if (v80)
  {
    sub_10000A7C4(0, &qword_100ADC810);
    v83 = sub_1007A2A04();
    v84 = [v83 BKSettingFilterBrightImages];

    if (v84)
    {
      v85 = 1;
    }
  }

  v86 = v164;
  v87 = sub_10000E3E8(&v163, v164);
  v88 = sub_1007A07E4();
  v89 = __chkstk_darwin(v88);
  (*(v91 + 16))(&v130 - ((v90 + 15) & 0xFFFFFFFFFFFFFFF0), v87, v86, v89);
  sub_10000A7C4(0, &qword_100AE8740);
  v92 = v140;

  v143 = v85;
  v142 = v92;
  v93 = sub_1007A0794();
  v94 = sub_1007A17F4();
  swift_allocObject();
  v95 = sub_1007A17E4();
  sub_100027EF0(&qword_100AE8748, type metadata accessor for BookProviderService);
  sub_100027EF0(&qword_100AE8750, type metadata accessor for AnnotationProviderService);
  sub_100027EF0(&qword_100AE8758, type metadata accessor for BookReaderLayoutController);
  v159 = v94;
  v160 = &protocol witness table for NavigationHistoryController;
  *&aBlock = v95;
  sub_1007A0664();
  swift_allocObject();
  v96 = v145;

  v97 = v146;

  v146 = v95;

  v145 = v93;
  v98 = sub_1007A0644();
  v99 = [objc_allocWithZone(BKSearchController) init];
  [v99 setSearchBook:*&v96[OBJC_IVAR___REBookProviderService_bookInfo]];
  sub_1007A0654();
  v100 = sub_10079F484();

  if (v100 < 0)
  {
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    result = sub_1007A38A4();
    __break(1u);
    return result;
  }

  [v99 setPageCount:v100];
  v101 = v148;
  v102 = v97;
  if (v156)
  {
    v144 = sub_100027EF0(&qword_100AE8760, type metadata accessor for ReadingAnalyticsProvider);
  }

  else
  {
    v144 = 0;
  }

  v103 = objc_allocWithZone(type metadata accessor for BookReaderPurchaseHandler());
  v104 = v96;
  v105 = v138;
  swift_retain_n();

  v106 = v155;

  v107 = v147;

  v141 = v104;
  v108 = v134;

  v109 = v102;
  v138 = v98;
  v110 = v109;
  v132 = v105;
  v133 = v99;
  v140 = v139;
  v134 = [v103 init];
  v111 = [objc_allocWithZone(type metadata accessor for BookReaderConfigurationHandler()) init];
  v131 = v111;
  v112 = v106;

  v113 = v101;

  v114 = v107;

  v115 = v141;
  v116 = v108;
  v117 = v154;

  v118 = v110;
  v119 = v132;
  v141 = v119;
  v120 = v138;

  v139 = v133;
  v129 = v119;
  v128 = v111;
  v121 = v134;
  v122 = v137;
  sub_100514F14(v152, v151, v115, v149, v120, v118, v135, v116, v117, v143, v113, v137, v112, v114, v142, v145, v139, v136, v146, v134, v128, v156, v156, v144, v153, v129, v115, v120);
  v153 = v123;
  v151 = v124;

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  v125 = v139;

  v126 = v141;

  sub_1000074E0(&v163);
  return v153;
}

uint64_t sub_10051C650(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_10000A7C4(255, a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10051C6D8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10051C82C(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = sub_1001F1160(&qword_100AE8850);
  return v3(a1, a1 + *(v4 + 48));
}

uint64_t sub_10051C890(void (*a1)(void))
{

  a1(*(v1 + 24));

  return swift_deallocObject();
}

uint64_t sub_10051C938(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_10051CA14()
{
  result = qword_100AE89D0;
  if (!qword_100AE89D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE89D0);
  }

  return result;
}

uint64_t sub_10051CACC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a3;
  return result;
}

uint64_t sub_10051CB0C()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_10051CB90@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_100796CF4();
  __chkstk_darwin(v2 - 8);
  v3 = sub_1007A21D4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v21 - v8;
  sub_1007A2154();
  v10 = *(v4 + 16);
  v10(v6, v9, v3);
  sub_100796C94();
  v11 = sub_1007A22B4();
  v22 = v12;
  v23 = v11;
  v13 = *(v4 + 8);
  v13(v9, v3);
  sub_1007A2154();
  v10(v6, v9, v3);
  sub_100796C94();
  v21 = sub_1007A22B4();
  v15 = v14;
  v13(v9, v3);
  sub_1007A2154();
  v10(v6, v9, v3);
  sub_100796C94();
  v16 = sub_1007A22B4();
  v18 = v17;
  result = (v13)(v9, v3);
  v20 = v22;
  *a1 = v23;
  a1[1] = v20;
  a1[2] = v21;
  a1[3] = v15;
  a1[4] = v16;
  a1[5] = v18;
  return result;
}

uint64_t sub_10051CEA4@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_100796CF4();
  __chkstk_darwin(v2 - 8);
  v3 = sub_1007A21D4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v21 - v8;
  sub_1007A2154();
  v10 = *(v4 + 16);
  v10(v6, v9, v3);
  sub_100796C94();
  v11 = sub_1007A22B4();
  v22 = v12;
  v23 = v11;
  v13 = *(v4 + 8);
  v13(v9, v3);
  sub_1007A2154();
  v10(v6, v9, v3);
  sub_100796C94();
  v21 = sub_1007A22B4();
  v15 = v14;
  v13(v9, v3);
  sub_1007A2154();
  v10(v6, v9, v3);
  sub_100796C94();
  v16 = sub_1007A22B4();
  v18 = v17;
  result = (v13)(v9, v3);
  v20 = v22;
  *a1 = v23;
  a1[1] = v20;
  a1[2] = v21;
  a1[3] = v15;
  a1[4] = v16;
  a1[5] = v18;
  return result;
}

id sub_10051D1C4()
{
  result = [objc_allocWithZone(type metadata accessor for SwitchAccountStorageController()) init];
  qword_100B234D0 = result;
  return result;
}

uint64_t sub_10051D1F8(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  if (qword_100AD1800 != -1)
  {
    swift_once();
  }

  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6 = swift_allocObject();
  v6[2] = v5;
  v6[3] = v4;
  v6[4] = a1;
  v6[5] = a2;

  sub_1001F1160(&qword_100AD7920);
  sub_100005920(&qword_100AD7928, &qword_100AD7920);
  v7 = sub_10079BB04();

  swift_beginAccess();
  *(v4 + 16) = v7;
}

id sub_10051D3B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v115 = a5;
  v114 = a4;
  v113 = a3;
  v110 = a2;
  v6 = sub_1007A1C54();
  v124 = *(v6 - 8);
  v125 = v6;
  __chkstk_darwin(v6);
  v123 = &v92 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1007A1CA4();
  v121 = *(v8 - 8);
  v122 = v8;
  __chkstk_darwin(v8);
  v120 = &v92 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = sub_100796CF4();
  v117 = *(v118 - 8);
  __chkstk_darwin(v118);
  v11 = &v92 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v92 - v13;
  v119 = sub_1007A21D4();
  v15 = *(v119 - 8);
  __chkstk_darwin(v119);
  v17 = &v92 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v116 = &v92 - v19;
  v20 = sub_1007992C4();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v92 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *a1;
  v24 = *(a1 + 8);
  v26 = *(a1 + 16);
  if ((sub_100265AF4(v25, v24, v26) & 1) == 0 || v26 != 2)
  {
    goto LABEL_12;
  }

  v111 = v17;
  v112 = v11;
  v27 = *(v21 + 104);
  v101 = enum case for BooksAppleAccountFeatureFlag.branding(_:);
  v102 = v21 + 104;
  v100 = v27;
  v27(v23);
  v107 = v25;
  v109 = v24;
  v28 = sub_100799144();
  v29 = *(v21 + 8);
  v104 = v20;
  v103 = v21 + 8;
  v99 = v29;
  v29(v23, v20);
  v30 = v117;
  v106 = v14;
  v108 = v15;
  v105 = v117 + 16;
  v94 = v15 + 16;
  if (v28)
  {
    v31 = v116;
    sub_1007A2154();
    sub_100796C94();
    v98 = *(v15 + 16);
    v98(v111, v31, v119);
    type metadata accessor for BundleFinder();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v33 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
    v34 = v118;
    v97 = *(v30 + 16);
    v97(v112, v14, v118);
    v95 = sub_1007A22D4();
    v35 = v30;
    v30 = v36;
    v37 = *(v35 + 8);
    v37(v14, v34);
    v38 = *(v15 + 8);
    v15 += 8;
    v96 = v38;
    v38(v31, v119);
    sub_1001F1160(&unk_100AD5090);
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_10080B690;
    result = [v109 username];
    if (result)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  v41 = v116;
  sub_1007A2154();
  sub_100796C94();
  v42 = *(v15 + 16);
  v43 = v14;
  v44 = v119;
  v98 = v42;
  v42(v111, v41, v119);
  type metadata accessor for BundleFinder();
  v45 = swift_getObjCClassFromMetadata();
  v46 = [objc_opt_self() bundleForClass:v45];
  v47 = v118;
  v97 = *(v30 + 16);
  v97(v112, v43, v118);
  v95 = sub_1007A22D4();
  v37 = *(v30 + 8);
  v37(v43, v47);
  v96 = *(v108 + 8);
  v96(v41, v44);
  sub_1001F1160(&unk_100AD5090);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_10080B690;
  result = [v109 username];
  if (!result)
  {
    __break(1u);
    goto LABEL_14;
  }

LABEL_7:
  v48 = result;
  v93 = v37;
  v49 = v106;
  v50 = v112;
  v51 = v111;
  v52 = sub_1007A2254();
  v54 = v53;

  *(v39 + 56) = &type metadata for String;
  v92 = sub_10000E4C4();
  *(v39 + 64) = v92;
  *(v39 + 32) = v52;
  *(v39 + 40) = v54;
  v111 = sub_1007A2284();
  v112 = v55;

  v56 = v104;
  v100(v23, v101, v104);
  LOBYTE(v48) = sub_100799144();
  v99(v23, v56);
  if (v48)
  {
    v57 = v116;
    sub_1007A2154();
    sub_100796C94();
    v58 = v119;
    v98(v51, v57, v119);
    type metadata accessor for BundleFinder();
    v59 = swift_getObjCClassFromMetadata();
    v60 = [objc_opt_self() bundleForClass:v59];
    v61 = v118;
    v97(v50, v49, v118);
    sub_1007A22D4();
    v93(v49, v61);
    v96(v57, v58);
    sub_1001F1160(&unk_100AD5090);
    v62 = swift_allocObject();
    *(v62 + 16) = xmmword_10080B690;
    v49 = v107;
    result = [v107 username];
    v63 = v125;
    if (result)
    {
LABEL_11:
      v69 = result;
      v70 = v109;
      v71 = sub_1007A2254();
      v73 = v72;

      v74 = v92;
      *(v62 + 56) = &type metadata for String;
      *(v62 + 64) = v74;
      *(v62 + 32) = v71;
      *(v62 + 40) = v73;
      v75 = sub_1007A2284();
      v77 = v76;

      sub_100017E74();
      v78 = sub_1007A2D74();
      v79 = swift_allocObject();
      v80 = v112;
      v79[2] = v111;
      v79[3] = v80;
      v79[4] = v75;
      v79[5] = v77;
      v79[6] = v110;
      v130 = sub_10051E984;
      v131 = v79;
      aBlock = _NSConcreteStackBlock;
      v127 = 1107296256;
      v128 = sub_1003323D0;
      v129 = &unk_100A21A58;
      v81 = _Block_copy(&aBlock);

      v82 = v120;
      sub_1007A1C74();
      aBlock = _swiftEmptyArrayStorage;
      sub_100265BDC();
      sub_1001F1160(&unk_100AD7CA0);
      sub_100005920(&qword_100ADA680, &unk_100AD7CA0);
      v83 = v123;
      sub_1007A3594();
      sub_1007A2D94();
      _Block_release(v81);

      (*(v124 + 8))(v83, v63);
      (*(v121 + 8))(v82, v122);
LABEL_12:
      v84 = v113;
      swift_beginAccess();
      swift_beginAccess();
      *(v84 + 16) = 0;

      sub_100017E74();
      v85 = sub_1007A2D74();
      v86 = swift_allocObject();
      v87 = v115;
      *(v86 + 16) = v114;
      *(v86 + 24) = v87;
      v130 = sub_10025D774;
      v131 = v86;
      aBlock = _NSConcreteStackBlock;
      v127 = 1107296256;
      v128 = sub_1003323D0;
      v129 = &unk_100A21A08;
      v88 = _Block_copy(&aBlock);

      v89 = v120;
      sub_1007A1C74();
      aBlock = _swiftEmptyArrayStorage;
      sub_100265BDC();
      sub_1001F1160(&unk_100AD7CA0);
      sub_100005920(&qword_100ADA680, &unk_100AD7CA0);
      v90 = v123;
      v91 = v125;
      sub_1007A3594();
      sub_1007A2D94();
      _Block_release(v88);

      (*(v124 + 8))(v90, v91);
      return (*(v121 + 8))(v89, v122);
    }

    __break(1u);
  }

  v64 = v116;
  sub_1007A2154();
  sub_100796C94();
  v65 = v119;
  v98(v51, v64, v119);
  type metadata accessor for BundleFinder();
  v66 = swift_getObjCClassFromMetadata();
  v67 = [objc_opt_self() bundleForClass:v66];
  v68 = v118;
  v97(v50, v49, v118);
  sub_1007A22D4();
  v93(v49, v68);
  v96(v64, v65);
  sub_1001F1160(&unk_100AD5090);
  v62 = swift_allocObject();
  *(v62 + 16) = xmmword_10080B690;
  v49 = v107;
  result = [v107 username];
  v63 = v125;
  if (result)
  {
    goto LABEL_11;
  }

LABEL_14:
  __break(1u);
  return result;
}