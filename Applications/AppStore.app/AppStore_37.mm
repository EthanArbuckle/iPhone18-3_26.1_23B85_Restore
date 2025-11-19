void sub_100424A54()
{
  v1 = v0;
  v2 = type metadata accessor for JULoadingViewController.PresentationContext();
  __chkstk_darwin(v2 - 8);
  static JULoadingViewController.PresentationContext.placeholder.getter();
  v3 = objc_allocWithZone(type metadata accessor for JULoadingViewController());
  v4 = JULoadingViewController.init(label:presentationContext:pageRenderMetrics:)();
  v5 = OBJC_IVAR____TtC8AppStore30PurchasesLoadingViewController_overlayViewController;
  v6 = *&v1[OBJC_IVAR____TtC8AppStore30PurchasesLoadingViewController_overlayViewController];
  static ViewControllerContainment.remove(_:)();

  v7 = *&v1[v5];
  *&v1[v5] = v4;
  v8 = v4;

  v9 = [v1 view];
  if (v9)
  {
    v10 = v9;
    [v9 bounds];

    static ViewControllerContainment.add(_:to:frame:)();
  }

  else
  {
    __break(1u);
  }
}

id sub_100424BAC()
{
  v1 = OBJC_IVAR____TtC8AppStore30PurchasesLoadingViewController_overlayViewController;
  v2 = *&v0[OBJC_IVAR____TtC8AppStore30PurchasesLoadingViewController_overlayViewController];
  static ViewControllerContainment.remove(_:)();

  v3 = *&v0[v1];
  *&v0[v1] = 0;

  result = [v0 view];
  if (result)
  {
    v5 = result;
    [result bounds];

    return static ViewControllerContainment.add(_:to:frame:)();
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_100424CA4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PurchasesLoadingViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_100424DE0(uint64_t a1, uint64_t a2)
{
  *&v2[OBJC_IVAR____TtC8AppStore30PurchasesLoadingViewController_loggedInUserPurchases] = 0;
  *&v2[OBJC_IVAR____TtC8AppStore30PurchasesLoadingViewController_familyPurchases] = 0;
  *&v2[OBJC_IVAR____TtC8AppStore30PurchasesLoadingViewController_overlayViewController] = 0;
  *&v2[OBJC_IVAR____TtC8AppStore30PurchasesLoadingViewController_objectGraph] = a2;
  type metadata accessor for ArtworkLoader();
  type metadata accessor for BaseObjectGraph();

  inject<A, B>(_:from:)();
  *&v2[OBJC_IVAR____TtC8AppStore30PurchasesLoadingViewController_artworkLoader] = v6;
  *&v2[OBJC_IVAR____TtC8AppStore30PurchasesLoadingViewController_presenter] = a1;
  v5.receiver = v2;
  v5.super_class = type metadata accessor for PurchasesLoadingViewController();

  return objc_msgSendSuper2(&v5, "initWithNibName:bundle:", 0, 0);
}

uint64_t sub_100424ECC(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_100424F14()
{
  v0 = sub_10002849C(&qword_100979740);
  sub_100005644(v0, qword_1009D02C8);
  sub_1000056A8(v0, qword_1009D02C8);
  return PreferenceKey.init(_:)();
}

char *sub_100424F8C(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  type metadata accessor for LocalPreferences();
  static LocalPreferences.AppStoreKit.getter();
  if (qword_10096DBE8 != -1)
  {
    swift_once();
  }

  v10 = sub_10002849C(&qword_100979740);
  sub_1000056A8(v10, qword_1009D02C8);
  Preferences.subscript.getter();

  if (v25 == 2 || (v25 & 1) == 0)
  {
    v11 = type metadata accessor for SemiLightMaterialView();
  }

  else
  {
    v11 = type metadata accessor for AccessoryDarkMaterialView();
  }

  v12 = [objc_allocWithZone(v11) init];
  *&v4[OBJC_IVAR____TtC8AppStore32InteractiveSectionBackgroundView_materialView] = v12;
  v13 = OBJC_IVAR____TtC8AppStore32InteractiveSectionBackgroundView_topBackgroundView;
  type metadata accessor for InteractiveBackgroundContentView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *&v5[v13] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v15 = OBJC_IVAR____TtC8AppStore32InteractiveSectionBackgroundView_bottomBackgroundView;
  *&v5[v15] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v16 = OBJC_IVAR____TtC8AppStore32InteractiveSectionBackgroundView_currentState;
  v17 = type metadata accessor for InteractiveSectionBackgroundScrollObserver.State(0);
  (*(*(v17 - 8) + 56))(&v5[v16], 1, 1, v17);
  v24.receiver = v5;
  v24.super_class = type metadata accessor for InteractiveSectionBackgroundView();
  v18 = objc_msgSendSuper2(&v24, "initWithFrame:", a1, a2, a3, a4);
  sub_100005744(0, &qword_100970180);
  v19 = v18;
  v20 = static UIColor.defaultBackground.getter();
  [v19 setBackgroundColor:v20];

  v21 = OBJC_IVAR____TtC8AppStore32InteractiveSectionBackgroundView_bottomBackgroundView;
  [*&v19[OBJC_IVAR____TtC8AppStore32InteractiveSectionBackgroundView_bottomBackgroundView] setBackgroundColor:0];
  [v19 addSubview:*&v19[v21]];
  v22 = OBJC_IVAR____TtC8AppStore32InteractiveSectionBackgroundView_topBackgroundView;
  [*&v19[OBJC_IVAR____TtC8AppStore32InteractiveSectionBackgroundView_topBackgroundView] setBackgroundColor:0];
  [*&v19[v22] setAlpha:1.0];
  [v19 addSubview:*&v19[v22]];
  [v19 addSubview:*&v19[OBJC_IVAR____TtC8AppStore32InteractiveSectionBackgroundView_materialView]];

  return v19;
}

id sub_100425288()
{
  v5.receiver = v0;
  v5.super_class = type metadata accessor for InteractiveSectionBackgroundView();
  objc_msgSendSuper2(&v5, "layoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC8AppStore32InteractiveSectionBackgroundView_materialView];
  [v0 bounds];
  [v1 setFrame:?];
  v2 = *&v0[OBJC_IVAR____TtC8AppStore32InteractiveSectionBackgroundView_topBackgroundView];
  [v0 bounds];
  [v2 setFrame:?];
  v3 = *&v0[OBJC_IVAR____TtC8AppStore32InteractiveSectionBackgroundView_bottomBackgroundView];
  [v0 bounds];
  return [v3 setFrame:?];
}

uint64_t sub_10042538C()
{
  v1 = v0;
  v2 = sub_10002849C(&qword_10097E110);
  __chkstk_darwin(v2 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for InteractiveSectionBackgroundView();
  v10.receiver = v0;
  v10.super_class = v5;
  objc_msgSendSuper2(&v10, "prepareForReuse");
  [*&v0[OBJC_IVAR____TtC8AppStore32InteractiveSectionBackgroundView_topBackgroundView] setBackgroundColor:0];
  ArtworkView.image.setter();
  [*&v0[OBJC_IVAR____TtC8AppStore32InteractiveSectionBackgroundView_bottomBackgroundView] setBackgroundColor:0];
  ArtworkView.image.setter();
  v6 = type metadata accessor for InteractiveSectionBackgroundScrollObserver.State(0);
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  v7 = OBJC_IVAR____TtC8AppStore32InteractiveSectionBackgroundView_currentState;
  swift_beginAccess();
  sub_1002AE7D4(v4, &v1[v7]);
  return swift_endAccess();
}

uint64_t sub_100425544(uint64_t a1)
{
  v136 = a1;
  v113 = type metadata accessor for AspectRatio();
  v112 = *(v113 - 8);
  __chkstk_darwin(v113);
  v111 = &v107 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for ShelfBackground();
  v130 = *(v2 - 8);
  __chkstk_darwin(v2);
  v114 = (&v107 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v4);
  v115 = (&v107 - v5);
  __chkstk_darwin(v6);
  v110 = &v107 - v7;
  v131 = sub_10002849C(&qword_100981220);
  __chkstk_darwin(v131);
  v128 = &v107 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v107 - v10;
  v12 = type metadata accessor for InteractiveSectionBackgroundScrollObserver.State(0);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v107 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10002849C(&qword_10097E110);
  __chkstk_darwin(v16 - 8);
  v123 = &v107 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v122 = &v107 - v19;
  __chkstk_darwin(v20);
  v22 = &v107 - v21;
  v23 = sub_10002849C(&qword_100981228);
  __chkstk_darwin(v23 - 8);
  v109 = &v107 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v127 = &v107 - v26;
  __chkstk_darwin(v27);
  v126 = &v107 - v28;
  __chkstk_darwin(v29);
  v108 = &v107 - v30;
  __chkstk_darwin(v31);
  v33 = &v107 - v32;
  __chkstk_darwin(v34);
  v36 = &v107 - v35;
  type metadata accessor for ArtworkLoader();
  type metadata accessor for BaseObjectGraph();
  v37 = v137;
  inject<A, B>(_:from:)();
  v129 = v138;
  v38 = OBJC_IVAR____TtC8AppStore32InteractiveSectionBackgroundView_currentState;
  swift_beginAccess();
  v132 = v38;
  sub_100031660(&v37[v38], v22, &qword_10097E110);
  v124 = v13;
  v39 = *(v13 + 48);
  v134 = v12;
  v119 = v13 + 48;
  v118 = v39;
  v40 = v39(v22, 1, v12);
  v125 = v15;
  if (v40)
  {
    sub_10002B894(v22, &qword_10097E110);
    v41 = v130;
    v42 = *(v130 + 56);
    v43 = (v130 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v42(v36, 1, 1, v2);
    v44 = *(v41 + 16);
    v45 = (v41 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  }

  else
  {
    sub_1002AE770(v22, v15);
    sub_10002B894(v22, &qword_10097E110);
    v41 = v130;
    v44 = *(v130 + 16);
    v45 = (v130 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v44(v36, v15, v2);
    sub_1002B81D0(v15);
    v42 = *(v41 + 56);
    v43 = (v41 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v42(v36, 0, 1, v2);
  }

  v133 = v44;
  v135 = v45;
  v44(v33, v136, v2);
  v121 = v42;
  v120 = v43;
  v42(v33, 0, 1, v2);
  v46 = *(v131 + 48);
  sub_100031660(v36, v11, &qword_100981228);
  sub_100031660(v33, &v11[v46], &qword_100981228);
  v47 = v41;
  v48 = *(v41 + 48);
  v49 = v48(v11, 1, v2);
  v117 = v48;
  v116 = v41 + 48;
  if (v49 == 1)
  {
    sub_10002B894(v33, &qword_100981228);
    sub_10002B894(v36, &qword_100981228);
    v50 = v41;
    if (v48(&v11[v46], 1, v2) == 1)
    {
      sub_10002B894(v11, &qword_100981228);
      v51 = v127;
      v52 = v128;
      v53 = v125;
      v54 = v126;
      v55 = v133;
      v56 = v134;
      goto LABEL_18;
    }
  }

  else
  {
    v107 = v36;
    v57 = v108;
    sub_100031660(v11, v108, &qword_100981228);
    if (v48(&v11[v46], 1, v2) != 1)
    {
      v69 = v41;
      v70 = v110;
      (*(v41 + 32))(v110, &v11[v46], v2);
      sub_100427760(&qword_100981230, &type metadata accessor for ShelfBackground);
      v71 = dispatch thunk of static Equatable.== infix(_:_:)();
      v72 = *(v47 + 8);
      v72(v70, v2);
      sub_10002B894(v33, &qword_100981228);
      sub_10002B894(v107, &qword_100981228);
      v72(v57, v2);
      v50 = v69;
      v56 = v134;
      sub_10002B894(v11, &qword_100981228);
      v51 = v127;
      v52 = v128;
      v53 = v125;
      v54 = v126;
      v55 = v133;
      if (v71)
      {
        goto LABEL_18;
      }

      goto LABEL_10;
    }

    sub_10002B894(v33, &qword_100981228);
    sub_10002B894(v107, &qword_100981228);
    v50 = v41;
    (*(v41 + 8))(v57, v2);
  }

  sub_10002B894(v11, &qword_100981220);
  v51 = v127;
  v52 = v128;
  v54 = v126;
  v55 = v133;
LABEL_10:
  v58 = *&v137[OBJC_IVAR____TtC8AppStore32InteractiveSectionBackgroundView_topBackgroundView];
  v59 = v115;
  v55(v115, v136, v2);
  v60 = (*(v50 + 88))(v59, v2);
  if (v60 == enum case for ShelfBackground.artwork(_:))
  {
    (*(v50 + 96))(v59, v2);
    v61 = *(sub_10002849C(&qword_100978420) + 48);
    type metadata accessor for InteractiveBackgroundContentView();
    sub_100427760(&unk_1009855F0, type metadata accessor for InteractiveBackgroundContentView);
    ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();
    ArtworkView.image.setter();
    [v137 frame];
    v62 = v111;
    AspectRatio.init(_:_:)();
    AspectRatio.maxSize(fitting:)();
    (*(v112 + 8))(v62, v113);
    Artwork.config(_:mode:prefersLayeredImage:)();
    v63 = Artwork.backgroundColor.getter();
    [v58 setBackgroundColor:v63];

    v56 = v134;
    v54 = v126;
    v51 = v127;
    ArtworkLoader.fetchArtwork<A>(using:closestMatch:into:)();
    v53 = v125;
    v55 = v133;

    v52 = v128;

    v64 = type metadata accessor for ShelfBackgroundStyle();
    (*(*(v64 - 8) + 8))(v115 + v61, v64);
  }

  else
  {
    if (v60 == enum case for ShelfBackground.color(_:))
    {
      (*(v50 + 96))(v59, v2);
      v65 = *v59;
      v66 = *(sub_10002849C(&qword_100972A40) + 48);
      ArtworkView.image.setter();
      [v58 setBackgroundColor:v65];

      v55 = v133;
      v67 = type metadata accessor for ShelfBackgroundStyle();
      v68 = v59 + v66;
      v56 = v134;
      v51 = v127;
      (*(*(v67 - 8) + 8))(v68, v67);
    }

    else
    {
      v73 = v59;
      ArtworkView.image.setter();
      sub_100005744(0, &qword_100970180);
      v74 = static UIColor.defaultBackground.getter();
      [v58 setBackgroundColor:v74];

      v75 = v73;
      v56 = v134;
      (*(v50 + 8))(v75, v2);
    }

    v53 = v125;
  }

LABEL_18:
  v76 = v122;
  sub_100031660(&v137[v132], v122, &qword_10097E110);
  if (v118(v76, 1, v56))
  {
    sub_10002B894(v76, &qword_10097E110);
    v77 = 1;
  }

  else
  {
    sub_1002AE770(v76, v53);
    sub_10002B894(v76, &qword_10097E110);
    v55(v54, v53 + *(v56 + 28), v2);
    sub_1002B81D0(v53);
    v77 = 0;
  }

  v78 = v121;
  v121(v54, v77, 1, v2);
  v127 = *(v56 + 28);
  v55(v51, v136 + v127, v2);
  v78(v51, 0, 1, v2);
  v79 = *(v131 + 48);
  sub_100031660(v54, v52, &qword_100981228);
  sub_100031660(v51, v52 + v79, &qword_100981228);
  v80 = v117;
  if (v117(v52, 1, v2) == 1)
  {
    sub_10002B894(v51, &qword_100981228);
    sub_10002B894(v54, &qword_100981228);
    v81 = v80(v52 + v79, 1, v2);
    v82 = v130;
    if (v81 == 1)
    {
      sub_10002B894(v52, &qword_100981228);
      goto LABEL_35;
    }
  }

  else
  {
    v83 = v109;
    sub_100031660(v52, v109, &qword_100981228);
    if (v80(v52 + v79, 1, v2) != 1)
    {
      v82 = v130;
      v94 = v52 + v79;
      v95 = v110;
      (*(v130 + 32))(v110, v94, v2);
      sub_100427760(&qword_100981230, &type metadata accessor for ShelfBackground);
      v96 = v54;
      v97 = dispatch thunk of static Equatable.== infix(_:_:)();
      v98 = *(v82 + 8);
      v98(v95, v2);
      sub_10002B894(v51, &qword_100981228);
      sub_10002B894(v96, &qword_100981228);
      v98(v83, v2);
      sub_10002B894(v128, &qword_100981228);
      v84 = v114;
      if (v97)
      {
        goto LABEL_35;
      }

      goto LABEL_27;
    }

    sub_10002B894(v51, &qword_100981228);
    sub_10002B894(v54, &qword_100981228);
    v82 = v130;
    (*(v130 + 8))(v83, v2);
  }

  sub_10002B894(v52, &qword_100981220);
  v84 = v114;
LABEL_27:
  v85 = *&v137[OBJC_IVAR____TtC8AppStore32InteractiveSectionBackgroundView_bottomBackgroundView];
  v133(v84, (v136 + v127), v2);
  v86 = (*(v82 + 88))(v84, v2);
  if (v86 == enum case for ShelfBackground.artwork(_:))
  {
    (*(v82 + 96))(v84, v2);
    v87 = *(sub_10002849C(&qword_100978420) + 48);
    type metadata accessor for InteractiveBackgroundContentView();
    sub_100427760(&unk_1009855F0, type metadata accessor for InteractiveBackgroundContentView);
    ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();
    ArtworkView.image.setter();
    [v137 frame];
    v88 = v111;
    AspectRatio.init(_:_:)();
    AspectRatio.maxSize(fitting:)();
    (*(v112 + 8))(v88, v113);
    Artwork.config(_:mode:prefersLayeredImage:)();
    v89 = Artwork.backgroundColor.getter();
    [v85 setBackgroundColor:v89];

    ArtworkLoader.fetchArtwork<A>(using:closestMatch:into:)();

    v90 = type metadata accessor for ShelfBackgroundStyle();
    (*(*(v90 - 8) + 8))(v84 + v87, v90);
  }

  else if (v86 == enum case for ShelfBackground.color(_:))
  {
    (*(v82 + 96))(v84, v2);
    v91 = *v84;
    v92 = *(sub_10002849C(&qword_100972A40) + 48);
    ArtworkView.image.setter();
    [v85 setBackgroundColor:v91];

    v93 = type metadata accessor for ShelfBackgroundStyle();
    (*(*(v93 - 8) + 8))(v84 + v92, v93);
  }

  else
  {
    ArtworkView.image.setter();
    sub_100005744(0, &qword_100970180);
    v99 = static UIColor.defaultBackground.getter();
    [v85 setBackgroundColor:v99];

    (*(v82 + 8))(v84, v2);
  }

LABEL_35:
  v100 = v136;
  v101 = v137;
  v102 = v134;
  [*&v137[OBJC_IVAR____TtC8AppStore32InteractiveSectionBackgroundView_topBackgroundView] setAlpha:*(v136 + *(v134 + 20))];

  v103 = v100;
  v104 = v123;
  sub_1002AE770(v103, v123);
  (*(v124 + 56))(v104, 0, 1, v102);
  v105 = v132;
  swift_beginAccess();
  sub_1002AE7D4(v104, &v101[v105]);
  return swift_endAccess();
}

uint64_t type metadata accessor for InteractiveSectionBackgroundView()
{
  result = qword_100985558;
  if (!qword_100985558)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1004269C0()
{
  sub_1002AE2E8();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_100426A64@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC8AppStore32InteractiveSectionBackgroundView_currentState;
  swift_beginAccess();
  return sub_100031660(v3 + v4, a1, &qword_10097E110);
}

char *sub_100426AF4(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC8AppStoreP33_7CB11EB016C41A3CC100BCE813D63B9132InteractiveBackgroundContentView_artworkView;
  type metadata accessor for ArtworkView();
  *&v4[v9] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v17.receiver = v4;
  v17.super_class = type metadata accessor for InteractiveBackgroundContentView();
  v10 = objc_msgSendSuper2(&v17, "initWithFrame:", a1, a2, a3, a4);
  v11 = OBJC_IVAR____TtC8AppStoreP33_7CB11EB016C41A3CC100BCE813D63B9132InteractiveBackgroundContentView_artworkView;
  v12 = *&v10[OBJC_IVAR____TtC8AppStoreP33_7CB11EB016C41A3CC100BCE813D63B9132InteractiveBackgroundContentView_artworkView];
  v13 = v10;
  [v12 setContentMode:4];
  v14 = [*&v10[v11] layer];
  CGAffineTransformMakeScale(&v16, 3.0, 3.0);
  [v14 setAffineTransform:&v16];

  [v13 addSubview:*&v10[v11]];
  return v13;
}

void (*sub_100426EE8(uint64_t *a1))(id *a1, char a2)
{
  a1[1] = *(v1 + OBJC_IVAR____TtC8AppStoreP33_7CB11EB016C41A3CC100BCE813D63B9132InteractiveBackgroundContentView_artworkView);
  *a1 = ArtworkView.image.getter();
  return sub_100426F3C;
}

void sub_100426F3C(id *a1, char a2)
{
  if (a2)
  {
    v2 = *a1;
    ArtworkView.image.setter();
  }

  else
  {
    ArtworkView.image.setter();
  }
}

id sub_100426FD0()
{
  v1 = [objc_opt_self() effectWithBlurRadius:90.0];
  v19.receiver = v0;
  v19.super_class = type metadata accessor for SemiLightMaterialView();
  v2 = objc_msgSendSuper2(&v19, "initWithEffect:", v1);

  v3 = kCAFilterColorSaturate;
  v4 = objc_allocWithZone(CAFilter);
  v5 = v2;
  v6 = [v4 initWithType:v3];
  isa = CGFloat._bridgeToObjectiveC()().super.super.isa;
  [v6 setValue:isa forKey:kCAFilterInputAmount];

  v8 = [v5 layer];
  sub_10002849C(&qword_1009701B0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1007B10D0;
  *(v9 + 56) = sub_100005744(0, &qword_100982738);
  *(v9 + 32) = v6;
  v10 = v6;
  v11 = Array._bridgeToObjectiveC()().super.isa;

  [v8 setFilters:v11];

  v12 = [v5 layer];
  sub_100005744(0, &qword_100970180);
  v13 = UIColor.init(_colorLiteralRed:green:blue:alpha:)(1.0, 1.0, 1.0, 0.4).super.isa;
  v14 = [(objc_class *)v13 CGColor];

  [v12 setBackgroundColor:v14];
  v15 = [v5 layer];

  v16 = [v15 mask];
  LODWORD(v17) = 1.0;
  [v16 setOpacity:v17];

  return v5;
}

id sub_100427350()
{
  v1 = [objc_opt_self() effectWithBlurRadius:90.0];
  v19.receiver = v0;
  v19.super_class = type metadata accessor for AccessoryDarkMaterialView();
  v2 = objc_msgSendSuper2(&v19, "initWithEffect:", v1);

  v3 = kCAFilterColorSaturate;
  v4 = objc_allocWithZone(CAFilter);
  v5 = v2;
  v6 = [v4 initWithType:v3];
  isa = CGFloat._bridgeToObjectiveC()().super.super.isa;
  [v6 setValue:isa forKey:kCAFilterInputAmount];

  v8 = [v5 layer];
  sub_10002849C(&qword_1009701B0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1007B10D0;
  *(v9 + 56) = sub_100005744(0, &qword_100982738);
  *(v9 + 32) = v6;
  v10 = v6;
  v11 = Array._bridgeToObjectiveC()().super.isa;

  [v8 setFilters:v11];

  v12 = [v5 layer];
  sub_100005744(0, &qword_100970180);
  v13 = UIColor.init(_colorLiteralRed:green:blue:alpha:)(0.58824, 0.58824, 0.58824, 0.15).super.isa;
  v14 = [(objc_class *)v13 CGColor];

  [v12 setBackgroundColor:v14];
  v15 = [v5 layer];

  v16 = [v15 mask];
  if (v16)
  {
    LODWORD(v17) = 1.0;
    [v16 setOpacity:v17];
  }

  return v5;
}

id sub_1004276B4(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_100427760(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1004277A8()
{
  v1 = v0;
  type metadata accessor for LocalPreferences();
  static LocalPreferences.AppStoreKit.getter();
  if (qword_10096DBE8 != -1)
  {
    swift_once();
  }

  v2 = sub_10002849C(&qword_100979740);
  sub_1000056A8(v2, qword_1009D02C8);
  Preferences.subscript.getter();

  if (v11 == 2 || (v11 & 1) == 0)
  {
    v3 = type metadata accessor for SemiLightMaterialView();
  }

  else
  {
    v3 = type metadata accessor for AccessoryDarkMaterialView();
  }

  v4 = [objc_allocWithZone(v3) init];
  *(v0 + OBJC_IVAR____TtC8AppStore32InteractiveSectionBackgroundView_materialView) = v4;
  v5 = OBJC_IVAR____TtC8AppStore32InteractiveSectionBackgroundView_topBackgroundView;
  type metadata accessor for InteractiveBackgroundContentView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *(v1 + v5) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v7 = OBJC_IVAR____TtC8AppStore32InteractiveSectionBackgroundView_bottomBackgroundView;
  *(v1 + v7) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v8 = OBJC_IVAR____TtC8AppStore32InteractiveSectionBackgroundView_currentState;
  v9 = type metadata accessor for InteractiveSectionBackgroundScrollObserver.State(0);
  (*(*(v9 - 8) + 56))(v1 + v8, 1, 1, v9);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

id sub_10042798C(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = &v4[*a3];
  *v6 = a1;
  *(v6 + 1) = a2;

  v7 = *&v4[*a4];
  if (v7)
  {
    if (*(v6 + 1))
    {
      v8 = v7;

      v9 = String._bridgeToObjectiveC()();
    }

    else
    {
      v8 = v7;
      v9 = 0;
    }

    [v8 setText:v9];
  }

  return [v4 setNeedsLayout];
}

void sub_100427A6C(void *a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = *&v2[*a2];
  if (v5)
  {
    [v5 removeFromSuperview];
    v6 = *&v2[v4];
  }

  else
  {
    v6 = 0;
  }

  *&v2[v4] = a1;
  v7 = a1;

  if (a1)
  {
    [v2 addSubview:v7];
  }
}

void sub_100427B10(void *a1)
{
  v2 = OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_uberView;
  v3 = *(v1 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_uberView);
  *(v1 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_uberView) = a1;
  if (v3)
  {
    v4 = a1;
    [v3 removeFromSuperview];
    v5 = *(v1 + v2);
    if (!v5)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = a1;
  v5 = a1;
  if (a1)
  {
LABEL_3:
    v6 = *(v1 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_backgroundContentContainer);
    v7 = v5;
    [v6 insertSubview:v7 atIndex:0];
  }

LABEL_4:
}

void sub_100427BCC()
{
  v1 = *&v0[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_blurView];
  if (v1)
  {
    v2 = *&v0[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_uberView];
    v15 = *&v0[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_blurView];
    if (v2)
    {
      v3 = *&v0[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_backgroundContentContainer];
      v4 = v2;
      [v3 insertSubview:v15 aboveSubview:v4];
      v5 = *&v0[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_darkeningOverlayEffectView];
      if (v5)
      {
        v6 = v5;
        [v3 insertSubview:v6 aboveSubview:v4];
      }
    }

    else
    {
      v7 = v1;
      v8 = [v0 contentView];
      [v8 insertSubview:v7 atIndex:0];

      v9 = *&v0[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_darkeningOverlayEffectView];
      if (v9)
      {
        [*&v0[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_backgroundContentContainer] insertSubview:v9 atIndex:0];
      }
    }

    v10 = *&v0[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_shadowView];
    if (v10)
    {
      [*&v0[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_backgroundContentContainer] insertSubview:v10 aboveSubview:v15];
    }

    v11 = *&v0[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_keylineView];
    v12 = v15;
    if (v11)
    {
      v13 = *&v0[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_backgroundContentContainer];
      v14 = v11;
      [v13 insertSubview:v14 aboveSubview:v15];

      v12 = v15;
    }
  }
}

uint64_t sub_100427D7C()
{
  v1 = OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell____lazy_storage___changeSubtitleOnce;
  if (*(v0 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell____lazy_storage___changeSubtitleOnce) == 1)
  {
    swift_unknownObjectWeakInit();
    sub_10042F71C();
    result = swift_unknownObjectWeakDestroy();
    *(v0 + v1) = 0;
  }

  return result;
}

id sub_100427DD4()
{
  result = [objc_opt_self() _effectWithBlurRadius:50.0 scale:0.125];
  if (result)
  {
    qword_100985600 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_100427E24()
{
  result = [objc_opt_self() colorEffectSaturate:2.0];
  qword_100985608 = result;
  return result;
}

void sub_100427E64()
{
  sub_100005744(0, &unk_1009856A0);
  v0 = [objc_opt_self() blackColor];
  v1 = [swift_getObjCClassFromMetadata() effectCompositingColor:v0 withMode:23 alpha:1.0];

  if (v1)
  {
    qword_100985610 = v1;
  }

  else
  {
    __break(1u);
  }
}

id sub_100427F00(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v111 = type metadata accessor for AutomationSemantics();
  v110 = *(v111 - 8);
  __chkstk_darwin(v111);
  v11 = &v107 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v115 = type metadata accessor for WordmarkView.Alignment();
  v114 = *(v115 - 8);
  __chkstk_darwin(v115);
  v112 = &v107 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for FontSource();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = (&v107 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v109 = type metadata accessor for StaticDimension();
  v17 = *(v109 - 1);
  __chkstk_darwin(v109);
  v19 = &v107 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_10002849C(&qword_100975F00);
  __chkstk_darwin(v20 - 8);
  v108 = &v107 - v21;
  v22 = OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_itemLayoutContext;
  v23 = type metadata accessor for ItemLayoutContext();
  (*(*(v23 - 8) + 56))(&v5[v22], 1, 1, v23);
  *&v5[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_bottomSafeAreaDistance] = 0;
  v24 = OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_lockupContentBackgroundView;
  v25 = [objc_allocWithZone(UIView) init];
  v113 = objc_opt_self();
  v26 = [v113 systemBackgroundColor];
  [v25 setBackgroundColor:v26];

  *&v5[v24] = v25;
  *&v5[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_uberView] = 0;
  v27 = OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_titleLabel;
  type metadata accessor for DynamicTypeLabel();
  *&v5[v27] = DynamicTypeLabel.__allocating_init(frame:)();
  v28 = &v5[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_appStateMachine];
  *v28 = 0;
  v28[1] = 0;
  v29 = &v5[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_offerLabelPresenter];
  *v29 = 0u;
  v29[1] = 0u;
  v30 = OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_developerLabel;
  *&v5[v30] = DynamicTypeLabel.__allocating_init(frame:)();
  v31 = OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_taglineLabel;
  *&v5[v31] = DynamicTypeLabel.__allocating_init(frame:)();
  *&v5[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_tertiaryTitleLabel] = 0;
  v107 = OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_wordmarkView;
  v32 = type metadata accessor for Wordmark();
  (*(*(v32 - 8) + 56))(v108, 1, 1, v32);
  *v16 = UIFontTextStyleFootnote;
  (*(v14 + 104))(v16, enum case for FontSource.textStyle(_:), v13);
  *(&v122 + 1) = v13;
  v123 = &protocol witness table for FontSource;
  v33 = sub_1000056E0(&v121);
  (*(v14 + 16))(v33, v16, v13);
  v34 = UIFontTextStyleFootnote;
  StaticDimension.init(_:scaledLike:)();
  (*(v14 + 8))(v16, v13);
  (*(v114 + 104))(v112, enum case for WordmarkView.Alignment.center(_:), v115);
  v35 = v109;
  *(&v122 + 1) = v109;
  v123 = &protocol witness table for StaticDimension;
  v36 = sub_1000056E0(&v121);
  (*(v17 + 16))(v36, v19, v35);
  v37 = objc_allocWithZone(type metadata accessor for WordmarkView());
  v38 = WordmarkView.init(frame:wordmark:referenceLineHeight:alignment:)();
  (*(v17 + 8))(v19, v35);
  *&v5[v107] = v38;
  v39 = OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_offerButton;
  v40 = objc_allocWithZone(type metadata accessor for OfferButton());
  *&v5[v39] = sub_1000F5284(0);
  v41 = OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_offerSubtitleLabel;
  *&v5[v41] = DynamicTypeLabel.__allocating_init(frame:)();
  *&v5[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_disclosureArrow] = 0;
  *&v5[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_bannerView] = 0;
  *&v5[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_secondaryBannerView] = 0;
  *&v5[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_bannerViewHeight] = 0;
  *&v5[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_secondaryBannerViewHeight] = 0;
  v42 = OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_backgroundContentContainer;
  *&v5[v42] = [objc_allocWithZone(UIView) init];
  v43 = OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_blurEffect;
  *&v5[v43] = [objc_opt_self() effectWithStyle:7];
  *&v5[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_blurView] = 0;
  *&v5[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_darkeningOverlayEffectView] = 0;
  *&v5[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_blurGradientMaskView] = 0;
  *&v5[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_darkeningOverlayGradientMaskView] = 0;
  *&v5[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_backgroundContentContainerMaskView] = 0;
  *&v5[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_keylineView] = 0;
  v5[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_hasInlineUber] = 0;
  *&v5[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_shadowView] = 0;
  v44 = &v5[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_iconSize];
  *v44 = 0;
  v44[1] = 0;
  v45 = OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_iconView;
  type metadata accessor for ArtworkView();
  *&v5[v45] = static ArtworkView.iconArtworkView.getter();
  v5[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_hasExpandedOffer] = 0;
  v46 = &v5[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_expandedOfferTitleText];
  *v46 = 0;
  v46[1] = 0;
  v47 = &v5[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_expandedOfferSubtitleText];
  *v47 = 0;
  v47[1] = 0;
  v48 = OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_theme;
  v49 = enum case for ProductPageTheme.infer(_:);
  v50 = type metadata accessor for ProductPageTheme();
  (*(*(v50 - 8) + 104))(&v5[v48], v49, v50);
  *&v5[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_expandedOfferTitleLabel] = 0;
  *&v5[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_expandedOfferSubtitleLabel] = 0;
  *&v5[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_downloadProgressLabel] = 0;
  v5[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_isDownloadProgressVisible] = 0;
  makeNetworkInquiry()();
  v51 = &v5[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_networkObservation];
  *v51 = 0u;
  *(v51 + 1) = 0u;
  *(v51 + 4) = 0;
  v52 = &v5[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_developerTapHandler];
  *v52 = 0;
  v52[1] = 0;
  v5[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell____lazy_storage___changeSubtitleOnce] = 1;
  *&v5[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_lockupOfferAnimationCount] = 0;
  v120.receiver = v5;
  v120.super_class = ObjectType;
  v53 = objc_msgSendSuper2(&v120, "initWithFrame:", a1, a2, a3, a4);
  v54 = [v53 contentView];
  v55 = [v54 layer];

  [v55 setAllowsGroupBlending:0];
  v56 = OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_developerLabel;
  [*(v53 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_developerLabel) setHidden:1];
  v57 = OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_taglineLabel;
  [*(v53 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_taglineLabel) setHidden:1];
  [*(v53 + v56) setLineBreakMode:4];
  v58 = *(v53 + v56);
  sub_100005744(0, &qword_100970180);
  v59 = v58;
  v60 = static UIColor.secondaryText.getter();
  [v59 setTextColor:v60];

  *&v115 = v56;
  [*(v53 + v56) setUserInteractionEnabled:1];
  v61 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v53 action:"developerLabelTapped:"];
  v112 = v61;

  [*(v53 + v56) addGestureRecognizer:v61];
  [*(v53 + v57) setLineBreakMode:4];
  v62 = *(v53 + v57);
  v63 = static UIColor.secondaryText.getter();
  [v62 setTextColor:v63];

  [*(v53 + v57) setUserInteractionEnabled:1];
  v109 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v53 action:"taglineLabelTapped:"];
  v64 = *(v53 + v57);
  v65 = v57;
  v107 = v57;
  [v64 addGestureRecognizer:v109];
  v66 = OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_offerButton;
  swift_unknownObjectWeakAssign();
  v114 = OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_offerSubtitleLabel;
  v67 = *(v53 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_offerSubtitleLabel);
  v68 = static UIColor.secondaryText.getter();
  [v67 setTextColor:v68];

  v108 = OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_iconView;
  v69 = *(v53 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_iconView);
  v121 = 0u;
  v122 = 0u;
  v118 = 0u;
  v119 = 0u;
  v70 = v69;
  static AutomationSemantics.shelfItemSubComponent(itemKind:id:parentId:)();
  sub_10002B894(&v118, &unk_1009711D0);
  sub_10002B894(&v121, &unk_1009711D0);
  UIView.setAutomationSemantics(_:)();

  v71 = *(v110 + 8);
  v72 = v111;
  v71(v11, v111);
  v110 = OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_titleLabel;
  v73 = *(v53 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_titleLabel);
  v121 = 0u;
  v122 = 0u;
  v118 = 0u;
  v119 = 0u;
  v74 = v73;
  static AutomationSemantics.shelfItemSubComponent(itemKind:id:parentId:)();
  sub_10002B894(&v118, &unk_1009711D0);
  sub_10002B894(&v121, &unk_1009711D0);
  UIView.setAutomationSemantics(_:)();

  v71(v11, v72);
  v75 = *(v53 + v115);
  v121 = 0u;
  v122 = 0u;
  v118 = 0u;
  v119 = 0u;
  v76 = v75;
  static AutomationSemantics.shelfItemSubComponent(itemKind:id:parentId:)();
  sub_10002B894(&v118, &unk_1009711D0);
  sub_10002B894(&v121, &unk_1009711D0);
  UIView.setAutomationSemantics(_:)();

  v71(v11, v72);
  v77 = *(v53 + v65);
  v121 = 0u;
  v122 = 0u;
  v118 = 0u;
  v119 = 0u;
  v78 = v77;
  static AutomationSemantics.shelfItemSubComponent(itemKind:id:parentId:)();
  sub_10002B894(&v118, &unk_1009711D0);
  sub_10002B894(&v121, &unk_1009711D0);
  UIView.setAutomationSemantics(_:)();

  v71(v11, v72);
  v79 = *(v53 + v66);
  v121 = 0u;
  v122 = 0u;
  v118 = 0u;
  v119 = 0u;
  v80 = v79;
  static AutomationSemantics.shelfItemSubComponent(itemKind:id:parentId:)();
  sub_10002B894(&v118, &unk_1009711D0);
  sub_10002B894(&v121, &unk_1009711D0);
  UIView.setAutomationSemantics(_:)();

  v71(v11, v72);
  v81 = *(v53 + v114);
  v121 = 0u;
  v122 = 0u;
  v118 = 0u;
  v119 = 0u;
  v82 = v81;
  static AutomationSemantics.shelfItemSubComponent(itemKind:id:parentId:)();
  sub_10002B894(&v118, &unk_1009711D0);
  sub_10002B894(&v121, &unk_1009711D0);
  UIView.setAutomationSemantics(_:)();

  v71(v11, v72);
  v83 = [v53 contentView];
  v84 = v113;
  v85 = [v113 clearColor];
  [v83 setBackgroundColor:v85];

  v86 = OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_backgroundContentContainer;
  v87 = *(v53 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_backgroundContentContainer);
  v88 = [v84 clearColor];
  [v87 setBackgroundColor:v88];

  v89 = [v53 contentView];
  [v89 addSubview:*(v53 + v86)];

  v90 = [v53 contentView];
  [v90 addSubview:*(v53 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_lockupContentBackgroundView)];

  v91 = [v53 contentView];
  [v91 addSubview:*&v108[v53]];

  v92 = [v53 contentView];
  [v92 addSubview:*(v53 + v110)];

  v93 = [v53 contentView];
  [v93 addSubview:*(v53 + v115)];

  v94 = [v53 contentView];
  [v94 addSubview:*(v53 + v66)];

  v95 = [v53 contentView];
  [v95 addSubview:*(v53 + v114)];

  v96 = [v53 contentView];
  [v96 addSubview:*(v53 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_wordmarkView)];

  v97 = [v53 contentView];
  [v97 addSubview:*(v53 + v107)];

  sub_1004291F4();
  sub_10002C0AC(v53 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_networkInquiry, &v118);
  sub_10002A400(&v118, *(&v119 + 1));
  v98 = sub_100005744(0, &qword_1009729E0);
  v99 = static OS_dispatch_queue.main.getter();
  v117[3] = v98;
  v117[4] = &protocol witness table for OS_dispatch_queue;
  v117[0] = v99;
  swift_allocObject();
  swift_unknownObjectWeakInit();

  dispatch thunk of NetworkInquiry.observe(on:_:)();

  sub_100007000(v117);
  v100 = OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_networkObservation;
  swift_beginAccess();
  sub_100435E00(&v121, v53 + v100);
  swift_endAccess();
  sub_100007000(&v118);
  sub_10002849C(&qword_10097B110);
  v101 = swift_allocObject();
  v115 = xmmword_1007B10D0;
  *(v101 + 16) = xmmword_1007B10D0;
  *(v101 + 32) = type metadata accessor for UITraitLayoutDirection();
  *(v101 + 40) = &protocol witness table for UITraitLayoutDirection;
  v102 = ObjectType;
  *(&v122 + 1) = ObjectType;
  *&v121 = v53;
  v103 = v53;
  UIView.registerForTraitChanges(_:target:action:)();
  swift_unknownObjectRelease();

  sub_100007000(&v121);
  v104 = swift_allocObject();
  *(v104 + 16) = v115;
  *(v104 + 32) = type metadata accessor for UITraitUserInterfaceStyle();
  *(v104 + 40) = &protocol witness table for UITraitUserInterfaceStyle;
  *(&v122 + 1) = v102;
  *&v121 = v103;
  UIView.registerForTraitChanges(_:target:action:)();
  swift_unknownObjectRelease();

  sub_100007000(&v121);
  v105 = swift_allocObject();
  *(v105 + 16) = v115;
  *(v105 + 32) = type metadata accessor for UITraitHorizontalSizeClass();
  *(v105 + 40) = &protocol witness table for UITraitHorizontalSizeClass;
  UIView.registerForTraitChanges<A>(_:handler:)();

  swift_unknownObjectRelease();

  return v103;
}

void sub_1004291F4()
{
  v1 = type metadata accessor for ProductPageTheme();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v32[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_theme;
  swift_beginAccess();
  (*(v2 + 16))(v4, v0 + v5, v1);
  v6 = (*(v2 + 88))(v4, v1);
  if (v6 == enum case for ProductPageTheme.infer(_:))
  {
    sub_10042F218();
    return;
  }

  if (v6 == enum case for ProductPageTheme.blue(_:))
  {
    v7 = *(v0 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_expandedOfferTitleLabel);
    if (!v7)
    {
      goto LABEL_14;
    }

    v8 = qword_10096D6E8;
    v9 = v7;
    if (v8 != -1)
    {
      swift_once();
    }

    v10 = qword_1009CF518;
    goto LABEL_13;
  }

  if (v6 == enum case for ProductPageTheme.orange(_:))
  {
    v11 = *(v0 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_expandedOfferTitleLabel);
    if (!v11)
    {
      goto LABEL_14;
    }

    v12 = qword_10096D6F0;
    v9 = v11;
    if (v12 != -1)
    {
      swift_once();
    }

    v10 = qword_1009CF520;
LABEL_13:
    [v9 setTextColor:v10];

LABEL_14:
    v13 = *(v0 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_titleLabel);
    sub_100005744(0, &qword_100970180);
    v14 = v0;
    v15 = static UIColor.primaryText.getter();
    [v13 setTextColor:v15];

    v16 = *(v14 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_taglineLabel);
    v17 = static UIColor.secondaryText.getter();
    [v16 setTextColor:v17];

    v18 = *(v14 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_wordmarkView);
    v19 = static UIColor.secondaryText.getter();
    [v18 setTintColor:v19];

    v20 = OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_tertiaryTitleLabel;
    swift_beginAccess();
    v21 = *(v14 + v20);
    if (v21)
    {
      v22 = v21;
      v23 = static UIColor.tertiaryText.getter();
      [v22 setTextColor:v23];
    }

    return;
  }

  if (v6 == enum case for ProductPageTheme.white(_:))
  {
    v24 = *(v0 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_titleLabel);
    sub_100005744(0, &qword_100970180);
    v25 = v0;
    v26 = static UIColor.primaryText.getter();
    [v24 setTextColor:v26];

    v27 = *(v25 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_taglineLabel);
    if (qword_10096D6F8 != -1)
    {
      v31 = *(v25 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_taglineLabel);
      swift_once();
      v27 = v31;
    }

    v28 = qword_1009CF528;
    [v27 setTextColor:qword_1009CF528];
    [*(v25 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_wordmarkView) setTintColor:v28];
    v29 = OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_tertiaryTitleLabel;
    swift_beginAccess();
    v30 = *(v25 + v29);
    if (v30)
    {
      [v30 setTextColor:v28];
    }
  }

  else
  {
    sub_10042F218();
    (*(v2 + 8))(v4, v1);
  }
}

void sub_10042961C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_10002A400((Strong + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_networkInquiry), *(Strong + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_networkInquiry + 24));
    if ((dispatch thunk of NetworkInquiry.isLikelyReachable.getter() & 1) == 0)
    {
      v2 = v1[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_isDownloadProgressVisible];
      v1[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_isDownloadProgressVisible] = 0;
      sub_10042AF44(v2);
    }
  }
}

void sub_1004296B8()
{
  v1 = *&v0[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_blurView];
  if (v1)
  {
    [v1 removeFromSuperview];
  }

  v2 = *&v0[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_darkeningOverlayEffectView];
  if (v2)
  {
    [v2 removeFromSuperview];
  }

  v3 = *&v0[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_shadowView];
  if (v3)
  {
    [v3 removeFromSuperview];
  }

  v4 = *&v0[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_keylineView];
  if (v4)
  {
    [v4 removeFromSuperview];
  }

  if (v0[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_hasInlineUber] == 1)
  {
    v5 = [v0 traitCollection];
    v6 = UITraitCollection.isSizeClassCompact.getter();

    if (v6)
    {
      sub_10042B4A0();
    }

    else
    {
      sub_10042BF38();
    }

    sub_100427BCC();
  }
}

id sub_1004297D8()
{
  ObjectType = swift_getObjectType();
  if (*&v0[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_appStateMachine])
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v2 = v0;
    dispatch thunk of AppStateMachine.removeStateTransitionActions(for:)();

    swift_unknownObjectRelease();
  }

  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t type metadata accessor for ProductLockupCollectionViewCell()
{
  result = qword_100985678;
  if (!qword_100985678)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100429BD8(void *a1)
{
  v2 = a1;
  v3 = *(v1 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_uberView);
  if (v3)
  {
    v4 = *(*&v3[OBJC_IVAR____TtC8AppStore14UberHeaderView_contentView] + OBJC_IVAR____TtC8AppStore9MediaView_contentContainer);
    v14 = *(v1 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_uberView);
    if (a1)
    {
      sub_100435DB0(&qword_100973190, type metadata accessor for VideoView);
      v5 = v2;
      v6 = v14;
      v7 = [v5 superview];
      if (v7)
      {
        v8 = v7;
        sub_100005744(0, &qword_100972EB0);
        v9 = v4;
        v10 = static NSObject.== infix(_:_:)();

        if (v10)
        {
          [v5 removeFromSuperview];
        }
      }

      else
      {
      }
    }

    else
    {
      v11 = v3;
    }

    v12 = *&v4[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents];
    *&v4[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents] = v2;
    v13 = v2;
    sub_10047C6C8(v12);

    if (v2)
    {
      *&v13[qword_100988CB8 + 8] = &off_1008B4C68;
      swift_unknownObjectWeakAssign();
    }

    a1 = v14;
  }
}

uint64_t sub_100429D8C()
{
  v1 = *(v0 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_uberView);
  if (!v1)
  {
    return 0;
  }

  v2 = *(*(*(v1 + OBJC_IVAR____TtC8AppStore14UberHeaderView_contentView) + OBJC_IVAR____TtC8AppStore9MediaView_contentContainer) + OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents);
  if (!v2)
  {
    return 0;
  }

  type metadata accessor for VideoView();
  result = swift_dynamicCastClass();
  if (result)
  {
    v4 = result;
    v5 = v2;
    return v4;
  }

  return result;
}

uint64_t (*sub_100429E10(uint64_t *a1))(id *a1, char a2)
{
  v3 = OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_uberView;
  a1[1] = v1;
  a1[2] = v3;
  v4 = *(v1 + v3);
  if (v4 && (v5 = *(*(*(v4 + OBJC_IVAR____TtC8AppStore14UberHeaderView_contentView) + OBJC_IVAR____TtC8AppStore9MediaView_contentContainer) + OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents)) != 0)
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
  return sub_100429EC0;
}

uint64_t sub_100429EC0(id *a1, char a2)
{
  v2 = *a1;
  v3 = *(a1[2] + a1[1]);
  if (a2)
  {
    if (v3)
    {
      v4 = *(*&v3[OBJC_IVAR____TtC8AppStore14UberHeaderView_contentView] + OBJC_IVAR____TtC8AppStore9MediaView_contentContainer);
      v25 = *a1;
      if (v2)
      {
        sub_100435DB0(&qword_100973190, type metadata accessor for VideoView);
        v5 = v25;
        v6 = v3;
        v7 = [v5 superview];
        if (v7)
        {
          v8 = v7;
          sub_100005744(0, &qword_100972EB0);
          v9 = v4;
          v10 = static NSObject.== infix(_:_:)();

          if (v10)
          {
            [v5 removeFromSuperview];
          }
        }

        else
        {
        }
      }

      else
      {
        v18 = v3;
        v5 = 0;
      }

      v20 = *&v4[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents];
      *&v4[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents] = v25;
      v21 = v5;
      sub_10047C6C8(v20);

      if (v25)
      {
        *&v21[qword_100988CB8 + 8] = &off_1008B4C68;
        swift_unknownObjectWeakAssign();
      }
    }
  }

  else if (v3)
  {
    v11 = *(*&v3[OBJC_IVAR____TtC8AppStore14UberHeaderView_contentView] + OBJC_IVAR____TtC8AppStore9MediaView_contentContainer);
    v26 = *a1;
    if (v2)
    {
      sub_100435DB0(&qword_100973190, type metadata accessor for VideoView);
      v12 = v26;
      v13 = v3;
      v14 = [v12 superview];
      if (v14)
      {
        v15 = v14;
        sub_100005744(0, &qword_100972EB0);
        v16 = v11;
        v17 = static NSObject.== infix(_:_:)();

        if (v17)
        {
          [v12 removeFromSuperview];
        }
      }

      else
      {
      }
    }

    else
    {
      v19 = v3;
      v12 = 0;
    }

    v22 = *&v11[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents];
    *&v11[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents] = v26;
    v23 = v12;
    sub_10047C6C8(v22);

    if (v26)
    {
      *&v23[qword_100988CB8 + 8] = &off_1008B4C68;
      swift_unknownObjectWeakAssign();
    }
  }

  return _objc_release_x2();
}

void sub_10042A1FC()
{
  v1 = *&v0[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_downloadProgressLabel];
  if (v1)
  {
    v2 = v0;
    v3 = v0[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_hasInlineUber];
    sub_100005744(0, &qword_100970180);
    v10 = v1;
    v4 = static UIColor.secondaryText.getter();
    [v10 setTextColor:v4];

    if (v3 == 1)
    {
      if (qword_10096D740 != -1)
      {
        swift_once();
      }

      [v10 setFont:qword_1009CF5E0];
      v5 = [v2 contentView];
      v6 = [v5 traitCollection];

      [v6 userInterfaceStyle];
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v7 = String._bridgeToObjectiveC()();

      v8 = [v10 layer];
      v9 = v7;
      [v8 setCompositingFilter:v9];
    }

    else
    {
      if (qword_10096D738 != -1)
      {
        swift_once();
      }

      [v10 setFont:qword_1009CF5D8];
      v9 = [v10 layer];
      [v9 setCompositingFilter:0];
    }
  }
}

void sub_10042A450()
{
  v1 = v0;
  v2 = sub_10002849C(&qword_100972ED0);
  __chkstk_darwin(v2 - 8);
  v4 = &v20 - v3;
  v5 = *&v0[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_expandedOfferSubtitleLabel];
  if (v5)
  {
    v6 = v0[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_hasInlineUber];
    sub_100005744(0, &qword_100970180);
    v7 = v5;
    v8 = static UIColor.secondaryText.getter();
    [v7 setTextColor:v8];

    if (v6 == 1)
    {
      if (qword_10096DED8 != -1)
      {
        swift_once();
      }

      v9 = type metadata accessor for FontUseCase();
      v10 = sub_1000056A8(v9, qword_1009D0C08);
      v11 = *(v9 - 8);
      (*(v11 + 16))(v4, v10, v9);
      (*(v11 + 56))(v4, 0, 1, v9);
      dispatch thunk of DynamicTypeLabel.fontUseCase.setter();
      [v7 setTextAlignment:1];
      v12 = [v1 contentView];
      v13 = [v12 traitCollection];

      [v13 userInterfaceStyle];
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = String._bridgeToObjectiveC()();

      v15 = [v7 layer];
      v16 = v14;
      [v15 setCompositingFilter:v16];
    }

    else
    {
      if (qword_10096DED0 != -1)
      {
        swift_once();
      }

      v17 = type metadata accessor for FontUseCase();
      v18 = sub_1000056A8(v17, qword_1009D0BF0);
      v19 = *(v17 - 8);
      (*(v19 + 16))(v4, v18, v17);
      (*(v19 + 56))(v4, 0, 1, v17);
      dispatch thunk of DynamicTypeLabel.fontUseCase.setter();
      v16 = [v7 layer];
      [v16 setCompositingFilter:0];
    }
  }
}

void sub_10042A7C8(char a1)
{
  v2 = v1;
  v3 = a1 & 1;
  v4 = type metadata accessor for DirectionalTextAlignment();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10002849C(&qword_100972ED0);
  __chkstk_darwin(v8 - 8);
  v10 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v12 = __chkstk_darwin(v11).n128_u64[0];
  v14 = &v53 - v13;
  if (v2[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_hasExpandedOffer] != v3)
  {
    if (v2[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_hasExpandedOffer])
    {
      if (qword_10096DEC8 != -1)
      {
        swift_once();
      }

      v15 = type metadata accessor for FontUseCase();
      v16 = sub_1000056A8(v15, qword_1009D0BD8);
      v17 = *(v15 - 8);
      v18 = *(v17 + 16);
      v53 = v16;
      v60 = v18;
      v61 = v17 + 16;
      (v18)(v14);
      v19 = *(v17 + 56);
      v62 = v17 + 56;
      v59 = v19;
      v19(v14, 0, 1, v15);
      if (qword_10096D898 != -1)
      {
        swift_once();
      }

      v20 = sub_10002849C(&unk_100973B30);
      sub_1000056A8(v20, qword_1009CFA18);
      v63 = v2;
      v21 = v2;
      v57 = v20;
      Conditional.evaluate(with:)();

      v22 = *(v5 + 104);
      v56 = enum case for DirectionalTextAlignment.none(_:);
      v58 = v5 + 104;
      v55 = v22;
      v22(v7);
      v54 = type metadata accessor for DynamicTypeLabel();
      v23 = objc_allocWithZone(v54);
      v24 = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
      v25 = OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_expandedOfferTitleLabel;
      v26 = *&v21[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_expandedOfferTitleLabel];
      if (v26)
      {
        [v26 removeFromSuperview];
        v27 = *&v21[v25];
      }

      else
      {
        v27 = 0;
      }

      *&v21[v25] = v24;
      v31 = v24;

      v60(v14, v53, v15);
      v59(v14, 0, 1, v15);
      dispatch thunk of DynamicTypeLabel.fontUseCase.setter();
      v32 = [v21 contentView];
      [v32 addSubview:v31];

      [v21 setNeedsLayout];
      v33 = *&v21[v25];
      v34 = &selRef_setRequiresColorStatistics_;
      if (v33)
      {
        if (*&v21[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_expandedOfferTitleText + 8])
        {
          v35 = v33;

          v36 = String._bridgeToObjectiveC()();
        }

        else
        {
          v35 = v33;
          v36 = 0;
        }

        v34 = &selRef_setRequiresColorStatistics_;
        [v35 setText:v36];
      }

      if (v21[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_hasInlineUber] == 1)
      {
        if (qword_10096DED8 != -1)
        {
          swift_once();
        }

        v40 = qword_1009D0C08;
      }

      else
      {
        if (qword_10096DED0 != -1)
        {
          swift_once();
        }

        v40 = qword_1009D0BF0;
      }

      v41 = sub_1000056A8(v15, v40);
      v60(v10, v41, v15);
      v59(v10, 0, 1, v15);
      if (qword_10096D8A0 != -1)
      {
        swift_once();
      }

      sub_1000056A8(v57, qword_1009CFA30);
      v63 = v21;
      v42 = v21;
      Conditional.evaluate(with:)();

      v55(v7, v56, v4);
      v43 = objc_allocWithZone(v54);
      v44 = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
      v45 = OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_expandedOfferSubtitleLabel;
      v46 = *&v42[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_expandedOfferSubtitleLabel];
      if (v46)
      {
        [v46 removeFromSuperview];
        v47 = *&v42[v45];
      }

      else
      {
        v47 = 0;
      }

      *&v42[v45] = v44;
      v48 = v44;

      sub_10042A450();
      v49 = [v42 contentView];
      [v49 addSubview:v48];

      [v42 setNeedsLayout];
      v50 = *&v42[v45];
      if (v50)
      {
        if (*&v42[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_expandedOfferSubtitleText + 8])
        {
          v51 = v50;

          v52 = String._bridgeToObjectiveC()();
        }

        else
        {
          v51 = v50;
          v52 = 0;
        }

        [v51 v34[11]];
      }

      [*&v42[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_offerSubtitleLabel] setHidden:1];
      sub_1004291F4();
    }

    else
    {
      v28 = OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_expandedOfferTitleLabel;
      v29 = *&v2[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_expandedOfferTitleLabel];
      if (v29)
      {
        [v29 removeFromSuperview];
        v30 = *&v2[v28];
      }

      else
      {
        v30 = 0;
      }

      *&v2[v28] = 0;

      [v2 setNeedsLayout];
      v37 = OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_expandedOfferSubtitleLabel;
      v38 = *&v2[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_expandedOfferSubtitleLabel];
      if (v38)
      {
        [v38 removeFromSuperview];
        v39 = *&v2[v37];
      }

      else
      {
        v39 = 0;
      }

      *&v2[v37] = 0;

      [v2 setNeedsLayout];
    }

    [v2 setNeedsLayout];
  }
}

void sub_10042AF44(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_downloadProgressLabel);
  if (!v2)
  {
    return;
  }

  v3 = OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_isDownloadProgressVisible;
  if (*(v1 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_isDownloadProgressVisible) == (a1 & 1))
  {
    return;
  }

  v22 = v2;
  if ([v22 isHidden])
  {
    if ((*(v1 + v3) & 1) == 0)
    {

      return;
    }
  }

  else if (!*(v1 + v3))
  {
    v4 = 1.0;
    tx = 0.0;
    ty = 0.0;
    [v22 setHidden:{0, 0x3FF0000000000000, 0, 0, 0x3FF0000000000000}];
    goto LABEL_11;
  }

  v4 = 0.0;
  CGAffineTransformMakeTranslation(&aBlock, 0.0, 2.0);
  tx = aBlock.tx;
  ty = aBlock.ty;
  [v22 setHidden:{0, *&aBlock.a, *&aBlock.b, *&aBlock.c, *&aBlock.d}];
LABEL_11:
  [v22 setAlpha:v4];
  *&aBlock.a = v20;
  *&aBlock.c = v21;
  aBlock.tx = tx;
  aBlock.ty = ty;
  [v22 setTransform:&aBlock];
  v7 = *(v1 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_disclosureArrow);
  if (v7)
  {
    v7[OBJC_IVAR____TtC8AppStore11ChevronView_shouldAnimate] = (*(v1 + v3) & 1) == 0;
    v8 = v7;
    sub_10002C6BC();
  }

  if (*(v1 + v3))
  {
    v9 = 1;
  }

  else
  {
    v9 = 2;
  }

  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = v22;
  v12 = objc_allocWithZone(UIViewPropertyAnimator);
  *&aBlock.tx = sub_100435E70;
  *&aBlock.ty = v11;
  *&aBlock.a = _NSConcreteStackBlock;
  *&aBlock.b = 1107296256;
  *&aBlock.c = sub_100007A08;
  *&aBlock.d = &unk_1008C2B88;
  v13 = _Block_copy(&aBlock);
  v14 = v22;

  v15 = [v12 initWithDuration:v9 curve:v13 animations:0.2];
  _Block_release(v13);

  aBlock.a = 1.0;
  aBlock.b = 0.0;
  aBlock.c = 0.0;
  aBlock.d = 1.0;
  aBlock.tx = 0.0;
  aBlock.ty = 0.0;
  [v14 setTransform:&aBlock];

  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  *(v17 + 24) = v14;
  *&aBlock.tx = sub_100435E78;
  *&aBlock.ty = v17;
  *&aBlock.a = _NSConcreteStackBlock;
  *&aBlock.b = 1107296256;
  *&aBlock.c = sub_10007FFE8;
  *&aBlock.d = &unk_1008C2BD8;
  v18 = _Block_copy(&aBlock);
  v19 = v14;

  [v15 addCompletion:v18];
  _Block_release(v18);
  [v15 startAnimation];
}

void sub_10042B328(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_isDownloadProgressVisible;
    v6 = 0.0;
    if (*(Strong + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_isDownloadProgressVisible))
    {
      v6 = 1.0;
    }

    [a2 setAlpha:v6];
    if (v4[v5])
    {
      v7 = xmmword_1007C2720;
      v8 = xmmword_1007C2400;
      v9 = 0uLL;
    }

    else
    {
      CGAffineTransformMakeTranslation(&v10, 0.0, 2.0);
      v8 = *&v10.a;
      v7 = *&v10.c;
      v9 = *&v10.tx;
    }

    *&v10.a = v8;
    *&v10.c = v7;
    *&v10.tx = v9;
    [a2 setTransform:&v10];
  }
}

void sub_10042B404(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if ((*(Strong + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_isDownloadProgressVisible) & 1) == 0)
    {
      [a3 setHidden:1];
      [a3 setText:0];
      [v5 setNeedsLayout];
    }
  }
}

void sub_10042B4A0()
{
  v1 = v0;
  v2 = [objc_allocWithZone(UIVisualEffectView) init];
  v3 = OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_blurView;
  v4 = *(v0 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_blurView);
  *(v0 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_blurView) = v2;

  v5 = *(v0 + v3);
  if (v5)
  {
    sub_10002849C(&qword_100973210);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1007B15F0;
    v7 = qword_10096DBF0;
    v8 = v5;
    if (v7 != -1)
    {
      swift_once();
    }

    v9 = qword_100985600;
    *(v6 + 32) = qword_100985600;
    v10 = qword_10096DBF8;
    v11 = v9;
    if (v10 != -1)
    {
      swift_once();
    }

    v12 = qword_100985608;
    *(v6 + 40) = qword_100985608;
    sub_100005744(0, &qword_10097FB70);
    v13 = v12;
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v8 setBackgroundEffects:isa];
  }

  v15 = *(v1 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_keylineView);
  *(v1 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_keylineView) = 0;

  v16 = *(v1 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_shadowView);
  *(v1 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_shadowView) = 0;

  v17 = [objc_allocWithZone(UIVisualEffectView) init];
  sub_10002849C(&qword_100973210);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1007B0B70;
  if (qword_10096DC00 != -1)
  {
    swift_once();
  }

  v19 = qword_100985610;
  *(v18 + 32) = qword_100985610;
  sub_100005744(0, &qword_10097FB70);
  v20 = v19;
  v21 = Array._bridgeToObjectiveC()().super.isa;

  [v17 setBackgroundEffects:v21];

  v22 = *(v1 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_darkeningOverlayEffectView);
  v96 = OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_darkeningOverlayEffectView;
  *(v1 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_darkeningOverlayEffectView) = v17;
  v97 = v17;

  v23 = type metadata accessor for GradientView();
  v24 = [objc_allocWithZone(v23) init];
  v25 = OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_blurGradientMaskView;
  v26 = *(v1 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_blurGradientMaskView);
  *(v1 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_blurGradientMaskView) = v24;

  v27 = *(v1 + v25);
  v28 = &StringUserDefaultsDebugSetting;
  if (v27)
  {
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_1007BB060;
    v30 = objc_opt_self();
    v31 = v27;
    *(v29 + 32) = [v30 clearColor];
    v32 = [v30 blackColor];
    v33 = [v32 colorWithAlphaComponent:0.5];

    *(v29 + 40) = v33;
    v34 = [v30 blackColor];
    v35 = [v34 colorWithAlphaComponent:0.85];

    *(v29 + 48) = v35;
    v28 = &StringUserDefaultsDebugSetting;
    *(v29 + 56) = [v30 blackColor];
    *&v31[OBJC_IVAR____TtC8AppStore12GradientView_colors] = v29;

    sub_1001C0CEC();

    v36 = *(v1 + v25);
    if (v36)
    {
      v37 = v36;
      sub_1001C0B48(&off_1008AFAB0);

      v38 = *(v1 + v25);
      if (v38)
      {
        v39 = v38;
        v40 = [v39 layer];
        objc_opt_self();
        [swift_dynamicCastObjCClassUnconditional() setStartPoint:{0.5, 0.0}];

        v41 = *(v1 + v25);
        if (v41)
        {
          v42 = v41;
          v43 = [v42 layer];
          objc_opt_self();
          [swift_dynamicCastObjCClassUnconditional() setEndPoint:{0.5, 1.0}];
        }
      }
    }
  }

  v44 = *(v1 + v3);
  if (v44)
  {
    v45 = [v44 v28[43].base_prots];
    v46 = *(v1 + v25);
    if (v46)
    {
      v47 = [v46 v28[43].base_prots];
      objc_opt_self();
      v48 = swift_dynamicCastObjCClassUnconditional();
    }

    else
    {
      v48 = 0;
    }

    [v45 setMask:v48];
  }

  v49 = [objc_allocWithZone(v23) init];
  v50 = OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_darkeningOverlayGradientMaskView;
  v51 = *(v1 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_darkeningOverlayGradientMaskView);
  *(v1 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_darkeningOverlayGradientMaskView) = v49;

  v52 = *(v1 + v50);
  if (v52)
  {
    v53 = swift_allocObject();
    *(v53 + 16) = xmmword_1007BB060;
    v54 = objc_opt_self();
    v55 = v52;
    *(v53 + 32) = [v54 clearColor];
    v56 = [v54 blackColor];
    v57 = v23;
    v58 = v28;
    v59 = [v56 colorWithAlphaComponent:0.4];

    *(v53 + 40) = v59;
    v60 = [v54 blackColor];
    v61 = [v60 colorWithAlphaComponent:0.68];

    *(v53 + 48) = v61;
    v28 = v58;
    v23 = v57;
    v62 = [v54 blackColor];
    v63 = [v62 colorWithAlphaComponent:0.8];

    *(v53 + 56) = v63;
    *&v55[OBJC_IVAR____TtC8AppStore12GradientView_colors] = v53;

    sub_1001C0CEC();

    v64 = *(v1 + v50);
    if (v64)
    {
      v65 = v64;
      sub_1001C0B48(&off_1008AFAF0);

      v66 = *(v1 + v50);
      if (v66)
      {
        v67 = v66;
        v68 = [v67 v28[43].base_prots];
        objc_opt_self();
        [swift_dynamicCastObjCClassUnconditional() setStartPoint:{0.5, 0.0}];

        v69 = *(v1 + v50);
        if (v69)
        {
          v70 = v69;
          v71 = [v70 v28[43].base_prots];
          objc_opt_self();
          [swift_dynamicCastObjCClassUnconditional() setEndPoint:{0.5, 1.0}];
        }
      }
    }
  }

  v72 = *(v1 + v96);
  if (v72)
  {
    v73 = [v72 v28[43].base_prots];
    v74 = *(v1 + v50);
    if (v74)
    {
      v75 = [v74 v28[43].base_prots];
      objc_opt_self();
      v76 = swift_dynamicCastObjCClassUnconditional();
    }

    else
    {
      v76 = 0;
    }

    [v73 setMask:v76];
  }

  v77 = [objc_allocWithZone(v23) init];
  v78 = OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_backgroundContentContainerMaskView;
  v79 = *(v1 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_backgroundContentContainerMaskView);
  *(v1 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_backgroundContentContainerMaskView) = v77;

  v80 = *(v1 + v78);
  if (v80)
  {
    v81 = swift_allocObject();
    *(v81 + 16) = xmmword_1007B48F0;
    v82 = objc_opt_self();
    v83 = v80;
    *(v81 + 32) = [v82 blackColor];
    *(v81 + 40) = [v82 blackColor];
    *(v81 + 48) = [v82 blackColor];
    *&v83[OBJC_IVAR____TtC8AppStore12GradientView_colors] = v81;

    sub_1001C0CEC();

    v84 = *(v1 + v78);
    if (v84)
    {
      v85 = v84;
      sub_1001C0B48(&off_1008AFB30);

      v86 = *(v1 + v78);
      if (v86)
      {
        v87 = v86;
        v88 = [v87 v28[43].base_prots];
        objc_opt_self();
        [swift_dynamicCastObjCClassUnconditional() setStartPoint:{0.5, 0.0}];

        v89 = *(v1 + v78);
        if (v89)
        {
          v90 = v89;
          v91 = [v90 v28[43].base_prots];
          objc_opt_self();
          [swift_dynamicCastObjCClassUnconditional() setEndPoint:{0.5, 1.0}];
        }
      }
    }
  }

  v92 = [*(v1 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_backgroundContentContainer) v28[43].base_prots];
  v93 = *(v1 + v78);
  if (v93)
  {
    v94 = [v93 v28[43].base_prots];
    objc_opt_self();
    v95 = swift_dynamicCastObjCClassUnconditional();
  }

  else
  {
    v95 = 0;
  }

  v98 = v95;
  [v92 setMask:?];
}

void sub_10042BF38()
{
  v1 = v0;
  v2 = sub_10002849C(&unk_100981210);
  __chkstk_darwin(v2 - 8);
  v4 = &v36 - v3;
  v5 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:*(v1 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_blurEffect)];
  v6 = *(v1 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_blurView);
  *(v1 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_blurView) = v5;

  v7 = *(v1 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_darkeningOverlayEffectView);
  *(v1 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_darkeningOverlayEffectView) = 0;

  v8 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v9 = OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_keylineView;
  v10 = *(v1 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_keylineView);
  *(v1 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_keylineView) = v8;

  v11 = *(v1 + v9);
  if (v11)
  {
    v12 = objc_allocWithZone(UIColor);
    v13 = v11;
    v14 = [v12 initWithWhite:1.0 alpha:0.1];
    [v13 setBackgroundColor:v14];
  }

  type metadata accessor for ShadowView();
  v15 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v16 = OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_shadowView;
  v17 = *(v1 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_shadowView);
  *(v1 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_shadowView) = v15;

  v18 = *(v1 + v16);
  if (v18)
  {
    v19 = qword_10096DA50;
    v20 = v18;
    if (v19 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Shadow();
    v22 = sub_1000056A8(v21, qword_1009CFD50);
    v23 = *(v21 - 8);
    (*(v23 + 16))(v4, v22, v21);
    (*(v23 + 56))(v4, 0, 1, v21);
    dispatch thunk of ShadowView.shadow.setter();

    v24 = *(v1 + v16);
    if (v24)
    {
      v25 = [v24 layer];
      v26 = [*(v1 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_iconView) layer];
      v27 = [v26 maskedCorners];

      [v25 setMaskedCorners:v27];
      v28 = *(v1 + v16);
      if (v28)
      {
        v29 = *(v1 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_iconView);
        v30 = v28;
        [v29 _continuousCornerRadius];
        [v30 _setContinuousCornerRadius:?];

        v31 = *(v1 + v16);
        if (v31)
        {
          [v31 setAutoresizingMask:18];
        }
      }
    }
  }

  v32 = *(v1 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_blurGradientMaskView);
  *(v1 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_blurGradientMaskView) = 0;

  v33 = *(v1 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_darkeningOverlayGradientMaskView);
  *(v1 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_darkeningOverlayGradientMaskView) = 0;

  v34 = *(v1 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_backgroundContentContainerMaskView);
  *(v1 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_backgroundContentContainerMaskView) = 0;

  v35 = [*(v1 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_backgroundContentContainer) layer];
  [v35 setMask:0];
}

uint64_t sub_10042C2D8()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for LayoutRect();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v175 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v181 = type metadata accessor for FloatingPointRoundingRule();
  v179 = *(v181 - 8);
  *&v7 = __chkstk_darwin(v181).n128_u64[0];
  v180 = &v175 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v190.receiver = v1;
  v190.super_class = ObjectType;
  objc_msgSendSuper2(&v190, "layoutSubviews", v7);
  if ([*&v1[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_taglineLabel] isHidden])
  {
    v9 = *&v1[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_developerLabel];
    if ([v9 isHidden])
    {
      [v9 setHidden:0];
    }
  }

  v10 = &selRef_setRequiresColorStatistics_;
  v11 = [v1 traitCollection];
  v12 = UITraitCollection.prefersAccessibilityLayouts.getter();

  sub_100433694(v1, v1);
  sub_100433BEC(v1, v1);
  v13 = *&v1[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_bottomSafeAreaDistance] + *&v1[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_bottomSafeAreaDistance];
  v14 = [v1 contentView];
  [v14 bounds];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  v23 = v16 + 0.0;
  v24 = v18 + 0.0;
  v178 = v20;
  v25 = v20 + 0.0;
  v26 = v13 + v22;
  v27 = OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_hasInlineUber;
  if (v1[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_hasInlineUber] == 1)
  {
    v28 = [v1 traitCollection];
    v29 = UITraitCollection.isSizeClassRegular.getter();

    if (v29)
    {
      v30 = OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_blurView;
      v31 = *&v1[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_blurView];
      if (v31)
      {
        v32 = qword_10096D8B0;
        v33 = v31;
        if (v32 != -1)
        {
          swift_once();
        }

        v34 = sub_10002849C(&qword_100979010);
        sub_1000056A8(v34, qword_1009CFA60);
        v35 = v180;
        static Dimensions.defaultRoundingRule.getter();
        Conditional<>.value(in:rounded:)();
        v37 = v36;
        v38 = *(v179 + 8);
        *&v183 = v179 + 8;
        y = *&v38;
        v38(v35, v181);
        [v33 _setCornerRadius:v37];

        v39 = *&v1[v30];
        if (v39)
        {
          v40 = [v39 contentView];
          v41 = [v40 layer];

          if (qword_10096D8C8 != -1)
          {
            swift_once();
          }

          [v41 setBorderColor:qword_1009CFAA8];

          v42 = *&v1[v30];
          if (v42)
          {
            v43 = [v42 contentView];
            v44 = [v43 layer];

            if (qword_10096D8B8 != -1)
            {
              swift_once();
            }

            v45 = sub_10002849C(&qword_100979010);
            sub_1000056A8(v45, qword_1009CFA78);
            v46 = v180;
            static Dimensions.defaultRoundingRule.getter();
            Conditional<>.value(in:rounded:)();
            v48 = v47;
            (*&y)(v46, v181);
            v49 = [v1 traitCollection];
            [v49 displayScale];
            v51 = v50;

            [v44 setBorderWidth:v48 / v51];
          }
        }
      }
    }

    v185 = sub_10042D128(v189, v23, v24, v25, v26);
    v186 = v52;
    v187 = v53;
    v188 = v54;
    v55 = v13 + v52;
    v10 = &selRef_setRequiresColorStatistics_;
  }

  else
  {
    v56 = *&v1[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_blurView];
    if (v56)
    {
      v57 = [v56 contentView];
      v58 = [v57 layer];

      [v58 setBorderWidth:0.0];
    }

    if (v12)
    {
      v59 = sub_10042DDF0(v189, v23, v24, v25);
    }

    else
    {
      v59 = sub_10042E45C(v189, v23, v24, v25, v26);
    }

    v55 = v60;
    v185 = v59;
    v186 = v60;
    v187 = v61;
    v188 = v62;
  }

  v63 = v13;
  v191.origin.x = v23;
  v191.origin.y = v24;
  v191.size.width = v25;
  v191.size.height = v26;
  v64 = CGRectGetMaxY(v191) - v55;
  v192.origin.x = v23;
  v192.origin.y = v24;
  v192.size.width = v25;
  v192.size.height = v26;
  MinX = CGRectGetMinX(v192);
  v193.origin.y = v24;
  v66 = v23;
  v193.origin.x = v23;
  v193.size.width = v25;
  v193.size.height = v26;
  y = v193.origin.y;
  v67 = v55;
  Width = CGRectGetWidth(v193);
  sub_10002A400(v189, v189[3]);
  v176 = MinX;
  v177 = v64;
  v175 = Width;
  v69 = v67;
  dispatch thunk of Layout.placeChildren(relativeTo:in:)();
  (*(v4 + 8))(v6, v3);
  v70 = [v1 v10[35]];
  v71 = UITraitCollection.isSizeClassRegular.getter();

  v72 = &OBJC_IVAR____TtC8AppStore35LargeHeroBreakoutCollectionViewCell_headerLabel;
  v183 = v63;
  if ((v71 & 1) != 0 && v1[v27] == 1)
  {
    if (v26 >= v178)
    {
      v73 = v25;
    }

    else
    {
      v73 = v26;
    }

    if (v73 <= 31.0)
    {
      v74 = 0.0;
    }

    else
    {
      v74 = v73 * 0.5;
    }

    ArtworkView.frame.getter();
    v75 = CGRectGetMinY(v194) + -34.0;
    v76 = 30.0;
    if (v73 <= 60.0)
    {
      v76 = v74;
    }

    v77 = v75 - v76;
    v78 = v66;
    v195.origin.x = v66;
    v79 = y;
    v195.origin.y = y;
    v195.size.width = v25;
    v195.size.height = v26;
    MidY = CGRectGetMidY(v195);
    v81 = *&v1[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_uberView];
    if (v77 >= MidY)
    {
      v63 = v183;
      if (v81)
      {
        v82 = *(*(v81 + OBJC_IVAR____TtC8AppStore14UberHeaderView_contentView) + OBJC_IVAR____TtC8AppStore9MediaView_contentContainer);
        v91 = &v82[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_prominentPlayButtonCenterYOverride];
        v92 = v82[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_prominentPlayButtonCenterYOverride + 8];
        *v91 = 0;
        v91[8] = 1;
        if ((v92 & 1) == 0)
        {
          goto LABEL_45;
        }
      }
    }

    else
    {
      v63 = v183;
      if (v81)
      {
        v82 = *(*(v81 + OBJC_IVAR____TtC8AppStore14UberHeaderView_contentView) + OBJC_IVAR____TtC8AppStore9MediaView_contentContainer);
        v83 = &v82[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_prominentPlayButtonCenterYOverride];
        MidY = *&v82[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_prominentPlayButtonCenterYOverride];
        v84 = v82[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_prominentPlayButtonCenterYOverride + 8];
        *v83 = v77;
        *(v83 + 8) = 0;
        if ((v84 & 1) != 0 || v77 != MidY)
        {
LABEL_45:
          [v82 setNeedsLayout];
        }
      }
    }
  }

  else
  {
    v85 = *&v1[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_uberView];
    v78 = v66;
    v79 = y;
    if (v85)
    {
      v86 = *(*(*(v85 + OBJC_IVAR____TtC8AppStore14UberHeaderView_contentView) + OBJC_IVAR____TtC8AppStore9MediaView_contentContainer) + OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents);
      if (v86)
      {
        type metadata accessor for VideoView();
        v87 = swift_dynamicCastClass();
        if (v87)
        {
          v88 = v87 + qword_1009D21B8;
          v89 = *(v87 + qword_1009D21B8 + 16);
          *v88 = 0;
          *(v88 + 8) = 0;
          *(v88 + 16) = 1;
          if ((v89 & 1) == 0)
          {
            v90 = v86;
            sub_1004E1028();
          }
        }
      }
    }
  }

  v93 = *&v1[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_backgroundContentContainer];
  [v93 setFrame:{v78, v79, v25, v26}];
  v94 = OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_backgroundContentContainerMaskView;
  v95 = *&v1[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_backgroundContentContainerMaskView];
  if (v95)
  {
    v96 = v95;
    [v93 bounds];
    [v96 setFrame:?];
  }

  v97 = OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_uberView;
  v98 = *&v1[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_uberView];
  if (v1[v27] == 1)
  {
    if (v98)
    {
      v99 = v98;
      [v1 bounds];
      v100 = CGRectGetMinX(v196);
      [v1 bounds];
      v101 = CGRectGetWidth(v197);
      [v1 bounds];
      [v99 setFrame:{v100, 0.0, v101, v63 + CGRectGetHeight(v198)}];

      v102 = *&v1[v97];
      if (v102)
      {
        v103 = v102;
        v104 = [v1 traitCollection];
        v105 = UITraitCollection.isSizeClassRegular.getter();

        v106 = 418.0;
        if (v105)
        {
          v106 = 0.0;
        }

        *&v103[OBJC_IVAR____TtC8AppStore14UberHeaderView_reflectionOutset] = v106;
        v107 = *&v103[OBJC_IVAR____TtC8AppStore14UberHeaderView_contentView];
        v108 = *(v107 + OBJC_IVAR____TtC8AppStore9MediaView_reflectionAmount);
        *(v107 + OBJC_IVAR____TtC8AppStore9MediaView_reflectionAmount) = v106;
        if (v106 != v108)
        {
          sub_10047B37C();
        }
      }
    }

    v109 = *&v1[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_blurGradientMaskView];
    if (v109)
    {
      v110 = *&v1[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_blurView];
      v111 = v109;
      if (v110)
      {
        [v110 bounds];
      }

      else
      {
        v112 = 0.0;
        v113 = 0.0;
        v114 = 0.0;
        v115 = 0.0;
      }

      [v111 setFrame:{v112, v113, v114, v115}];
    }

    v128 = *&v1[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_darkeningOverlayGradientMaskView];
    if (v128)
    {
      v129 = *&v1[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_darkeningOverlayEffectView];
      v119 = v128;
      if (v129)
      {
        [v129 bounds];
      }

      else
      {
        v125 = 0.0;
        v127 = 0.0;
        v123 = 0.0;
        v126 = 0.0;
      }

      goto LABEL_71;
    }
  }

  else if (v98)
  {
    v116 = 0.0;
    if (*&v1[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_bannerViewHeight] != 0.0)
    {
      goto LABEL_64;
    }

    if (qword_10096D780 != -1)
    {
      swift_once();
    }

    sub_10002A400(qword_1009CF690, qword_1009CF6A8);
    v117 = v180;
    j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
    AnyDimension.value(in:rounded:)();
    v116 = v118;
    (*(v179 + 8))(v117, v181);
    v98 = *&v1[v97];
    v72 = &OBJC_IVAR____TtC8AppStore35LargeHeroBreakoutCollectionViewCell_headerLabel;
    if (v98)
    {
LABEL_64:
      v119 = v98;
      [v1 bounds];
      v120 = CGRectGetMinX(v199);
      [v1 bounds];
      v121 = CGRectGetWidth(v200);
      v201.origin.x = v176;
      v201.origin.y = v177;
      v201.size.width = v175;
      v201.size.height = v69;
      MinY = CGRectGetMinY(v201);
      v123 = v121;
      v124 = MinY;
      v125 = v120;
      v126 = v124 - v116;
      v127 = 0.0;
LABEL_71:
      [v119 setFrame:{v125, v127, v123, v126}];
    }
  }

  v130 = *&v1[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_lockupContentBackgroundView];
  v131 = [v1 contentView];
  [v131 bounds];
  v133 = v132;
  v135 = v134;
  v137 = v136;
  v139 = v138;

  v202.origin.x = v133;
  v202.origin.y = v135;
  v202.size.width = v137;
  v202.size.height = v139;
  v140 = CGRectGetMinX(v202);
  v141 = v72[95];
  v142 = *&v1[v141];
  v143 = 0.0;
  MaxY = 0.0;
  if (v142)
  {
    [v142 frame];
    MaxY = CGRectGetMaxY(v203);
  }

  v145 = [v1 contentView];
  [v145 bounds];
  v147 = v146;
  v149 = v148;
  v151 = v150;
  v153 = v152;

  v204.origin.x = v147;
  v204.origin.y = v149;
  v204.size.width = v151;
  v204.size.height = v153;
  v154 = CGRectGetWidth(v204);
  v155 = [v1 contentView];
  [v155 bounds];
  v157 = v156;
  v159 = v158;
  v161 = v160;
  v163 = v162;

  v205.origin.x = v157;
  v205.origin.y = v159;
  v205.size.width = v161;
  v205.size.height = v163;
  Height = CGRectGetHeight(v205);
  v165 = *&v1[v141];
  if (v165)
  {
    [v165 frame];
    v143 = CGRectGetMaxY(v206);
  }

  v166 = v183;
  [v130 setFrame:{v140, MaxY, v154, v183 + Height - v143}];
  v167 = *&v1[v94];
  if (v167)
  {
    v168 = v167;
    [v1 bounds];
    v169 = v166 + CGRectGetHeight(v207);
    v170 = *&v1[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_offerButton];
    v171 = type metadata accessor for OfferButton();
    v184.receiver = v170;
    v184.super_class = v171;
    objc_msgSendSuper2(&v184, "frame");
    v172 = CGRectGetMinY(v208) / v169;
    sub_10002849C(&unk_1009856C0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1007B1E00;
    *(inited + 32) = v172;
    *(inited + 40) = 1.0 - v166 / v169;
    *(inited + 48) = 0x3FF0000000000000;
    sub_1001C0B48(inited);
  }

  return sub_10002B894(&v185, &qword_1009856B8);
}

double sub_10042D128(uint64_t *a1, double a2, double a3, double a4, double a5)
{
  v6 = v5;
  v153 = a5;
  v148 = a1;
  v8 = type metadata accessor for FloatingPointRoundingRule();
  v149 = *(v8 - 8);
  v150 = v8;
  __chkstk_darwin(v8);
  v10 = &v134 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ProductLockupInlineUberLayout.Metrics(0);
  __chkstk_darwin(v11);
  v152 = &v134 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v134 - v14;
  *&v17 = __chkstk_darwin(v16).n128_u64[0];
  v19 = &v134 - v18;
  v20 = [v5 contentView];
  [v20 layoutMargins];

  v21 = [v6 contentView];
  [v21 layoutMargins];
  v23 = v22;

  v24 = *&v6[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_bottomSafeAreaDistance] + *&v6[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_bottomSafeAreaDistance];
  v25 = [v6 contentView];
  [v25 layoutMargins];
  v27 = v26;

  v28 = &v6[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_iconSize];
  v29 = *&v6[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_iconSize];
  v30 = *&v6[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_iconSize + 8];
  v147 = OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_bannerViewHeight;
  v31 = *&v6[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_bannerViewHeight];
  v146 = OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_secondaryBannerViewHeight;
  v32 = *&v6[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_secondaryBannerViewHeight];
  if (qword_10096D6D8 != -1)
  {
    swift_once();
  }

  v145 = sub_1000056A8(v11, qword_1009CF4E8);
  sub_100435C80(v145, v19, type metadata accessor for ProductLockupInlineUberLayout.Metrics);
  *(v19 + 4) = v29;
  *(v19 + 5) = v30;
  *(v19 + 1) = v23;
  *(v19 + 2) = v24;
  *(v19 + 3) = v27;
  *v19 = 0;
  v178 = &type metadata for CGFloat;
  v179 = &protocol witness table for CGFloat;
  *&v176 = v31;
  v33 = v11[15];
  sub_100007000(&v19[v33]);
  sub_100005A38(&v176, &v19[v33]);
  v178 = &type metadata for CGFloat;
  v179 = &protocol witness table for CGFloat;
  *&v176 = v32;
  v34 = v11[16];
  sub_100007000(&v19[v34]);
  sub_100005A38(&v176, &v19[v34]);
  *&v176 = *&v6[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_titleLabel];
  v151 = v176;
  v35 = [v6 traitCollection];
  v36 = UITraitCollection.isSizeClassRegular.getter();

  v37 = v19;
  if (v36)
  {
    static Dimensions.defaultRoundingRule.getter();
    Conditional<>.value(in:rounded:)();
    (*(v149 + 8))(v10, v150);
  }

  CGSize.subtracting(insets:)();
  CGSize.subtracting(insets:)();
  v38 = v151;
  [v151 measurementsWithFitting:v6 in:?];
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v47 = type metadata accessor for DynamicTypeLabel();
  v181.var0 = v40;
  v181.var1 = v42;
  v181.var2 = v44;
  v181.var3 = v46;
  v48 = LayoutTextView.estimatedNumberOfLines(from:)(v181);

  v150 = v37;
  if (v48 >= 2)
  {
    v49 = *v28;
    v50 = *(v28 + 1);
    v51 = *&v6[v147];
    v52 = *&v6[v146];
    sub_100435C80(v145, v15, type metadata accessor for ProductLockupInlineUberLayout.Metrics);
    *(v15 + 4) = v49;
    *(v15 + 5) = v50;
    *(v15 + 1) = v23;
    *(v15 + 2) = v24;
    *(v15 + 3) = v27;
    *v15 = 0;
    v178 = &type metadata for CGFloat;
    v179 = &protocol witness table for CGFloat;
    *&v176 = v51;
    v53 = v11[15];
    sub_100007000(&v15[v53]);
    sub_100005A38(&v176, &v15[v53]);
    v178 = &type metadata for CGFloat;
    v179 = &protocol witness table for CGFloat;
    *&v176 = v52;
    v54 = v11[16];
    sub_100007000(&v15[v54]);
    sub_100005A38(&v176, &v15[v54]);
    if (qword_10096D7F8 != -1)
    {
      swift_once();
    }

    v55 = sub_10002849C(&qword_100979010);
    v56 = sub_1000056A8(v55, qword_1009CF838);
    v57 = *(*(v55 - 8) + 24);
    v57(&v15[v11[7]], v56, v55);
    if (qword_10096D7E8 != -1)
    {
      swift_once();
    }

    v58 = sub_1000056A8(v55, qword_1009CF808);
    v57(&v15[v11[6]], v58, v55);
    if (qword_10096D810 != -1)
    {
      swift_once();
    }

    v59 = sub_1000056A8(v55, qword_1009CF880);
    v57(&v15[v11[8]], v59, v55);
    if (qword_10096D7B8 != -1)
    {
      swift_once();
    }

    v60 = sub_10002849C(&unk_100980420);
    v61 = sub_1000056A8(v60, qword_1009CF778);
    (*(*(v60 - 8) + 24))(&v15[v11[13]], v61, v60);
    v178 = &type metadata for CGFloat;
    v179 = &protocol witness table for CGFloat;
    *&v176 = 0x401C000000000000;
    v37 = v150;
    sub_100435D50(v150, type metadata accessor for ProductLockupInlineUberLayout.Metrics);
    v62 = v11[9];
    sub_100007000(&v15[v62]);
    sub_100005A38(&v176, &v15[v62]);
    sub_100435CE8(v15, v37, type metadata accessor for ProductLockupInlineUberLayout.Metrics);
    if (qword_10096D710 != -1)
    {
      swift_once();
    }

    v63 = sub_10002849C(&unk_100980410);
    sub_1000056A8(v63, qword_1009CF560);
    v175 = v6;
    v64 = v6;
    Conditional.evaluate(with:)();

    v65 = v176;
    v38 = v151;
    [v151 setFont:v176];
  }

  sub_100435C80(v37, v152, type metadata accessor for ProductLockupInlineUberLayout.Metrics);
  v66 = *&v6[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_keylineView];
  if (v66)
  {
    v146 = sub_100005744(0, &qword_100972EB0);
    v145 = &protocol witness table for UIView;
  }

  else
  {
    v145 = 0;
    v146 = 0;
  }

  v67 = *&v6[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_blurView];
  v68 = sub_100005744(0, &qword_100972EB0);
  v173 = v68;
  v174 = &protocol witness table for UIView;
  if (v67)
  {
    v69 = v66;
    v70 = v67;
  }

  else
  {
    v71 = objc_allocWithZone(UIView);
    v72 = v66;
    v70 = [v71 init];
  }

  *&v172 = v70;
  v151 = *&v6[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_darkeningOverlayEffectView];
  v147 = v66;
  if (v151)
  {
    v144 = sub_100005744(0, &qword_10097E628);
    v143 = &protocol witness table for UIView;
  }

  else
  {
    v143 = 0;
    v144 = 0;
  }

  v73 = *&v6[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_wordmarkView];
  v170 = type metadata accessor for WordmarkView();
  v171 = &protocol witness table for UIView;
  *&v169 = v73;
  v74 = *&v6[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_iconView];
  v167 = type metadata accessor for ArtworkView();
  v168 = &protocol witness table for UIView;
  *&v166 = v74;
  v164 = v47;
  v165 = &protocol witness table for UILabel;
  v162 = &protocol witness table for UILabel;
  *&v163 = v38;
  v75 = *&v6[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_taglineLabel];
  v149 = v47;
  v161 = v47;
  *&v160 = v75;
  v76 = *&v6[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_offerButton];
  v158 = type metadata accessor for OfferButton();
  v159 = &protocol witness table for UIView;
  *&v157 = v76;
  v77 = *&v6[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_expandedOfferSubtitleLabel];
  v78 = *&v6[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_downloadProgressLabel];
  v142 = v77;
  if (v78)
  {
    v79 = v77;
    v80 = v78;
    v81 = v67;
    v82 = v151;
    v83 = v73;
    v84 = v74;
    v85 = v75;
    v86 = v76;
    [v80 transform];
    v176 = 0x3FF0000000000000uLL;
    v177 = 0;
    v178 = 0x3FF0000000000000;
    v179 = 0;
    v180 = 0;
    if (static CGAffineTransform.== infix(_:_:)())
    {
      *(&v155 + 1) = v68;
      v156 = &protocol witness table for UIView;
      *&v154 = v80;
      v87 = v149;
      goto LABEL_32;
    }

    UIView.withUntransformedFrame.getter();
  }

  else
  {
    v156 = 0;
    v154 = 0u;
    v155 = 0u;
    v88 = v77;
    v89 = v67;
    v90 = v151;
    v91 = v73;
    v92 = v74;
    v93 = v75;
    v94 = v76;
  }

  v87 = v149;
LABEL_32:
  v95 = *&v6[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_disclosureArrow];
  if (v95)
  {
    v149 = type metadata accessor for ChevronView();
    v141 = &protocol witness table for UIView;
  }

  else
  {
    v141 = 0;
    v149 = 0;
  }

  v96 = *&v6[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_bannerView];
  v97 = *&v6[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_secondaryBannerView];
  v98 = *&v6[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_shadowView];
  if (v98)
  {
    v139 = type metadata accessor for ShadowView();
    v140 = &protocol witness table for UIView;
  }

  else
  {
    v139 = 0;
    v140 = 0;
  }

  if (v97)
  {
    v99 = v68;
  }

  else
  {
    v99 = 0;
  }

  if (v97)
  {
    v100 = &protocol witness table for UIView;
  }

  else
  {
    v100 = 0;
  }

  v137 = v100;
  v138 = v99;
  if (v96)
  {
    v101 = v68;
  }

  else
  {
    v101 = 0;
  }

  if (v96)
  {
    v102 = &protocol witness table for UIView;
  }

  else
  {
    v102 = 0;
  }

  v135 = v102;
  v136 = v101;
  v103 = v142;
  v104 = &protocol witness table for UILabel;
  if (!v142)
  {
    v104 = 0;
  }

  v134 = v104;
  if (!v142)
  {
    v87 = 0;
  }

  v105 = type metadata accessor for ProductLockupInlineUberLayout(0);
  v106 = v148;
  v148[3] = v105;
  v106[4] = sub_100435DB0(&qword_1009856D0, type metadata accessor for ProductLockupInlineUberLayout);
  v107 = sub_1000056E0(v106);
  sub_100435CE8(v152, v107, type metadata accessor for ProductLockupInlineUberLayout.Metrics);
  v108 = (v107 + v105[5]);
  v109 = v146;
  *v108 = v147;
  v108[1] = 0;
  v108[2] = 0;
  v108[3] = v109;
  v108[4] = v145;
  sub_100005A38(&v172, v107 + v105[6]);
  v110 = (v107 + v105[7]);
  *v110 = v151;
  v110[1] = 0;
  v111 = v143;
  v112 = v144;
  v110[2] = 0;
  v110[3] = v112;
  v110[4] = v111;
  sub_100005A38(&v169, v107 + v105[10]);
  sub_100005A38(&v166, v107 + v105[8]);
  sub_100005A38(&v163, v107 + v105[9]);
  sub_100005A38(&v160, v107 + v105[11]);
  v113 = v107 + v105[12];
  *(v113 + 4) = 0;
  *v113 = 0u;
  *(v113 + 1) = 0u;
  sub_100005A38(&v157, v107 + v105[13]);
  v114 = (v107 + v105[14]);
  *v114 = v103;
  v114[1] = 0;
  v114[2] = 0;
  v114[3] = v87;
  v114[4] = v134;
  v115 = v107 + v105[15];
  v116 = v155;
  *v115 = v154;
  *(v115 + 1) = v116;
  *(v115 + 4) = v156;
  v117 = (v107 + v105[16]);
  *v117 = v95;
  v117[1] = 0;
  v118 = v149;
  v117[2] = 0;
  v117[3] = v118;
  v117[4] = v141;
  v119 = (v107 + v105[17]);
  *v119 = v96;
  v119[1] = 0;
  v120 = v135;
  v121 = v136;
  v119[2] = 0;
  v119[3] = v121;
  v119[4] = v120;
  v122 = (v107 + v105[18]);
  *v122 = v97;
  v122[1] = 0;
  v123 = v137;
  v124 = v138;
  v122[2] = 0;
  v122[3] = v124;
  v122[4] = v123;
  v125 = (v107 + v105[19]);
  *v125 = v98;
  v125[1] = 0;
  v127 = v139;
  v126 = v140;
  v125[2] = 0;
  v125[3] = v127;
  v125[4] = v126;
  v128 = v98;
  v129 = v95;
  v130 = v96;
  v131 = v97;
  v132 = sub_100430850(v6, v107, a4);
  sub_100435D50(v150, type metadata accessor for ProductLockupInlineUberLayout.Metrics);
  return v132;
}

double sub_10042DDF0(uint64_t *a1, double a2, double a3, double a4)
{
  v5 = v4;
  v8 = type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0);
  __chkstk_darwin(v8);
  v10 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v11);
  v14 = &v71 - v13;
  v12.n128_u64[0] = *&v5[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_iconSize];
  v86 = v12;
  v12.n128_u64[0] = *&v5[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_iconSize + 8];
  v84 = v12;
  v12.n128_u64[0] = *&v5[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_bannerViewHeight];
  v85 = v12;
  v12.n128_u64[0] = *&v5[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_secondaryBannerViewHeight];
  v83 = v12;
  v15 = [v5 contentView];
  [v15 layoutMargins];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  if (qword_10096D6E0 != -1)
  {
    swift_once();
  }

  v24 = sub_1000056A8(v8, qword_1009CF500);
  __chkstk_darwin(v24);
  *&v25 = v86.n128_u64[0];
  *&v26 = v85.n128_u64[0];
  *(&v25 + 1) = v84.n128_u64[0];
  *(&v26 + 1) = v83.n128_u64[0];
  *(&v71 - 4) = v25;
  *(&v71 - 3) = v26;
  *(&v71 - 4) = v17;
  *(&v71 - 3) = v19;
  *(&v71 - 2) = v21;
  *(&v71 - 1) = v23;
  sub_100435DB0(&qword_1009856D8, type metadata accessor for ProductLockupAccessibilityLayout.Metrics);
  Copyable.copyWithOverrides(in:)();
  v27 = *&v5[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_downloadProgressLabel];
  if (v27)
  {
    v28 = v27;
    if (([v28 isHidden] & 1) == 0)
    {
      [v28 transform];
      v107 = 0x3FF0000000000000;
      v108 = 0;
      v109 = 0;
      v110 = 0x3FF0000000000000;
      v111 = 0;
      v112 = 0;
      if (static CGAffineTransform.== infix(_:_:)())
      {
        v105 = sub_100005744(0, &qword_100972EB0);
        v106 = &protocol witness table for UIView;

        v104[0] = v28;
      }

      else
      {
        UIView.withUntransformedFrame.getter();
      }

      goto LABEL_7;
    }
  }

  v29 = *&v5[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_offerSubtitleLabel];
  v105 = type metadata accessor for DynamicTypeLabel();
  v106 = &protocol witness table for UIView;
  v104[0] = v29;
  v30 = v29;
LABEL_7:
  v86.n128_u64[0] = v10;
  sub_100435C80(v14, v10, type metadata accessor for ProductLockupAccessibilityLayout.Metrics);
  v31 = *&v5[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_iconView];
  v102 = type metadata accessor for ArtworkView();
  v103 = &protocol witness table for UIView;
  v85.n128_u64[0] = v31;
  *&v101 = v31;
  v32 = *&v5[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_titleLabel];
  v33 = type metadata accessor for DynamicTypeLabel();
  v99 = v33;
  v100 = &protocol witness table for UILabel;
  v84.n128_u64[0] = v32;
  v97 = &protocol witness table for UILabel;
  *&v98 = v32;
  v34 = *&v5[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_developerLabel];
  v35 = *&v5[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_taglineLabel];
  v96 = v33;
  v82 = v35;
  v83.n128_u64[0] = v34;
  v94 = &protocol witness table for UILabel;
  *&v95 = v34;
  v93 = v33;
  *&v92 = v35;
  v36 = OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_tertiaryTitleLabel;
  swift_beginAccess();
  v37 = *&v5[v36];
  v38 = *&v5[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_offerButton];
  v90 = type metadata accessor for OfferButton();
  v91 = &protocol witness table for UIView;
  v81 = v38;
  *&v89 = v38;
  sub_10002C0AC(v104, v88);
  v39 = *&v5[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_expandedOfferTitleLabel];
  v40 = *&v5[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_expandedOfferSubtitleLabel];
  v80 = *&v5[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_bannerView];
  if (v80)
  {
    v78 = sub_100005744(0, &qword_100972EB0);
    v79 = &protocol witness table for UIView;
  }

  else
  {
    v78 = 0;
    v79 = 0;
  }

  v41 = *&v5[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_secondaryBannerView];
  v87 = v14;
  if (v41)
  {
    v76 = sub_100005744(0, &qword_100972EB0);
    v77 = &protocol witness table for UIView;
  }

  else
  {
    v76 = 0;
    v77 = 0;
  }

  if (v40)
  {
    v42 = v33;
  }

  else
  {
    v42 = 0;
  }

  if (v40)
  {
    v43 = &protocol witness table for UILabel;
  }

  else
  {
    v43 = 0;
  }

  v74 = v43;
  v75 = v42;
  if (v39)
  {
    v44 = &protocol witness table for UILabel;
  }

  else
  {
    v44 = 0;
  }

  v72 = v40;
  v73 = v44;
  if (v39)
  {
    v45 = v33;
  }

  else
  {
    v45 = 0;
  }

  v71 = v45;
  v46 = v37 == 0;
  v47 = v37;
  if (v37)
  {
    v48 = &protocol witness table for UILabel;
  }

  else
  {
    v48 = 0;
  }

  v49 = v39;
  if (v46)
  {
    v50 = 0;
  }

  else
  {
    v50 = v33;
  }

  v51 = type metadata accessor for ProductLockupAccessibilityLayout(0);
  a1[3] = v51;
  a1[4] = sub_100435DB0(&qword_10097E8C0, type metadata accessor for ProductLockupAccessibilityLayout);
  v52 = sub_1000056E0(a1);
  sub_100435CE8(v86.n128_i64[0], v52 + *(v51 + 64), type metadata accessor for ProductLockupAccessibilityLayout.Metrics);
  sub_100005A38(&v101, v52);
  sub_100005A38(&v98, (v52 + 5));
  sub_100005A38(&v95, (v52 + 10));
  sub_100005A38(&v92, (v52 + 15));
  v52[20] = v47;
  v52[21] = 0;
  v52[22] = 0;
  v52[23] = v50;
  v52[24] = v48;
  sub_100005A38(&v89, (v52 + 25));
  *(v52 + 15) = 0u;
  *(v52 + 16) = 0u;
  v52[34] = 0;
  sub_100005A38(v88, (v52 + 35));
  v52[40] = v49;
  v52[41] = 0;
  v53 = v71;
  v54 = v72;
  v52[42] = 0;
  v52[43] = v53;
  v52[44] = v73;
  v52[45] = v54;
  v52[46] = 0;
  v52[47] = 0;
  v55 = v74;
  v52[48] = v75;
  v52[49] = v55;
  v56 = v80;
  v52[50] = v80;
  v52[51] = 0;
  v58 = v78;
  v57 = v79;
  v52[52] = 0;
  v52[53] = v58;
  v52[54] = v57;
  v52[55] = v41;
  v52[56] = 0;
  v52[57] = 0;
  v59 = v77;
  v52[58] = v76;
  v52[59] = v59;
  v60 = v41;
  v61 = v85.n128_u64[0];
  v62 = v84.n128_u64[0];
  v63 = v83.n128_u64[0];
  v64 = v82;
  v65 = v47;
  v66 = v81;
  v67 = v49;
  v68 = v54;
  v69 = v56;
  sub_10043510C(v5, v52, a4);
  sub_100435D50(v87, type metadata accessor for ProductLockupAccessibilityLayout.Metrics);
  sub_100007000(v104);
  return a4;
}

double sub_10042E45C(uint64_t *a1, double a2, double a3, double a4, double a5)
{
  v6 = v5;
  v125 = a1;
  v9 = sub_10002849C(&unk_100987150);
  __chkstk_darwin(v9 - 8);
  v11 = &v108 - v10;
  v129 = type metadata accessor for ProductLockupLayout.Metrics(0);
  __chkstk_darwin(v129);
  v13 = &v108 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v108 - v15;
  __chkstk_darwin(v17);
  v19 = &v108 - v18;
  *&v126 = type metadata accessor for ProductLockupLayout.Metrics.OfferSubtitleMetrics(0);
  v20 = *(v126 - 8);
  *&v21 = __chkstk_darwin(v126).n128_u64[0];
  v23 = (&v108 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = *&v5[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_downloadProgressLabel];
  v25 = &selRef_setRequiresColorStatistics_;
  v127 = v13;
  v128 = v23;
  if (!v24)
  {
LABEL_4:
    v27 = [v6 v25[35]];
    sub_10030AEE4(v27, v19);

    sub_100435C80(&v19[*(v129 + 19)], v23, type metadata accessor for ProductLockupLayout.Metrics.OfferSubtitleMetrics);
    sub_100435D50(v19, type metadata accessor for ProductLockupLayout.Metrics);
    v28 = *&v6[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_offerSubtitleLabel];
    v147 = type metadata accessor for DynamicTypeLabel();
    v148 = &protocol witness table for UIView;
    v146[0] = v28;
    v29 = [v28 text];
    if (v29)
    {
      v30 = v29;
      v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v123 = v32;
      v124 = v31;
    }

    else
    {
      v123 = 0;
      v124 = 0;
    }

    v41 = v126;
    goto LABEL_19;
  }

  v26 = v24;
  if ([v26 isHidden])
  {

    v25 = &selRef_setRequiresColorStatistics_;
    goto LABEL_4;
  }

  v124 = v20;
  v23[3] = &type metadata for Double;
  v23[4] = &protocol witness table for Double;
  *v23 = 0;
  v33 = v23;
  if (qword_10096D738 != -1)
  {
    swift_once();
  }

  v149 = qword_1009CF5D8;
  v34 = v126;
  v35 = qword_1009CF5D8;
  sub_10002849C(&qword_100973F50);
  sub_100005744(0, &qword_1009730E0);
  Conditional<>.init(value:)();
  v36 = (v23 + *(v34 + 24));
  v36[3] = &type metadata for CGFloat;
  v36[4] = &protocol witness table for CGFloat;
  *v36 = 0x7FF0000000000000;
  if (qword_10096D838 != -1)
  {
    swift_once();
  }

  v37 = type metadata accessor for StaticDimension();
  v38 = sub_1000056A8(v37, qword_1009CF8F8);
  v39 = (v33 + *(v34 + 28));
  v39[3] = v37;
  v39[4] = &protocol witness table for StaticDimension;
  v40 = sub_1000056E0(v39);
  (*(*(v37 - 8) + 16))(v40, v38, v37);
  [v26 transform];
  v149 = 0x3FF0000000000000;
  v150 = 0;
  v151 = 0;
  v152 = 0x3FF0000000000000;
  v153 = 0;
  v154 = 0;
  if (static CGAffineTransform.== infix(_:_:)())
  {
    v147 = sub_100005744(0, &qword_100972EB0);
    v148 = &protocol witness table for UIView;
    v146[0] = v26;
  }

  else
  {
    UIView.withUntransformedFrame.getter();
  }

  v20 = v124;
  v42 = [v26 text];
  v23 = v128;
  v41 = v126;
  if (v42)
  {
    v43 = v42;
    v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v123 = v45;
    v124 = v44;
  }

  else
  {

    v123 = 0;
    v124 = 0;
  }

  v13 = v127;
LABEL_19:
  v126 = *&v6[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_iconSize];
  *&v46 = *&v6[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_bannerViewHeight];
  *(&v46 + 1) = *&v6[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_secondaryBannerViewHeight];
  v122 = v46;
  v47 = [v6 contentView];
  [v47 layoutMargins];
  v49 = v48;
  v51 = v50;
  v53 = v52;
  v55 = v54;

  sub_100435C80(v23, v11, type metadata accessor for ProductLockupLayout.Metrics.OfferSubtitleMetrics);
  (*(v20 + 56))(v11, 0, 1, v41);
  v56 = [v6 traitCollection];
  v57 = sub_10030AEE4(v56, v19);
  __chkstk_darwin(v57);
  v58 = v122;
  *(&v108 - 5) = v126;
  *(&v108 - 4) = v58;
  *(&v108 - 6) = v49;
  *(&v108 - 5) = v51;
  *(&v108 - 4) = v53;
  *(&v108 - 3) = v55;
  *(&v108 - 2) = v11;
  sub_100435DB0(&qword_1009856E8, type metadata accessor for ProductLockupLayout.Metrics);
  Copyable.copyWithOverrides(in:)();

  sub_100435D50(v19, type metadata accessor for ProductLockupLayout.Metrics);
  sub_10002B894(v11, &unk_100987150);
  v129 = v16;
  sub_100435C80(v16, v13, type metadata accessor for ProductLockupLayout.Metrics);
  v59 = *&v6[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_iconView];
  v144 = type metadata accessor for ArtworkView();
  v145 = &protocol witness table for UIView;
  *&v126 = v59;
  *&v143 = v59;
  v60 = *&v6[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_titleLabel];
  v61 = type metadata accessor for DynamicTypeLabel();
  v141 = v61;
  v142 = &protocol witness table for UILabel;
  v139 = &protocol witness table for UILabel;
  *&v140 = v60;
  v62 = *&v6[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_developerLabel];
  v63 = *&v6[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_taglineLabel];
  v138 = v61;
  v121 = v62;
  *&v122 = v60;
  v136 = &protocol witness table for UILabel;
  *&v137 = v62;
  v135 = v61;
  v120 = v63;
  *&v134 = v63;
  v64 = OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_tertiaryTitleLabel;
  swift_beginAccess();
  v65 = *&v6[v64];
  v66 = *&v6[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_offerButton];
  v132 = type metadata accessor for OfferButton();
  v133 = &protocol witness table for UIView;
  v119 = v66;
  *&v131 = v66;
  sub_10002C0AC(v146, v130);
  v67 = *&v6[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_expandedOfferTitleLabel];
  v68 = *&v6[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_expandedOfferSubtitleLabel];
  v117 = v6[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_hasExpandedOffer];
  v118 = *&v6[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_bannerView];
  if (v118)
  {
    v115 = sub_100005744(0, &qword_100972EB0);
    v116 = &protocol witness table for UIView;
  }

  else
  {
    v115 = 0;
    v116 = 0;
  }

  v69 = *&v6[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_secondaryBannerView];
  if (v69)
  {
    v113 = sub_100005744(0, &qword_100972EB0);
    v114 = &protocol witness table for UIView;
  }

  else
  {
    v113 = 0;
    v114 = 0;
  }

  if (v68)
  {
    v70 = v61;
  }

  else
  {
    v70 = 0;
  }

  if (v68)
  {
    v71 = &protocol witness table for UILabel;
  }

  else
  {
    v71 = 0;
  }

  v111 = v71;
  v112 = v70;
  if (v67)
  {
    v72 = &protocol witness table for UILabel;
  }

  else
  {
    v72 = 0;
  }

  if (v67)
  {
    v73 = v61;
  }

  else
  {
    v73 = 0;
  }

  v109 = v73;
  v110 = v72;
  if (v65)
  {
    v74 = &protocol witness table for UILabel;
  }

  else
  {
    v74 = 0;
  }

  if (v65)
  {
    v75 = v61;
  }

  else
  {
    v75 = 0;
  }

  v76 = type metadata accessor for ProductLockupLayout(0);
  v77 = v125;
  v125[3] = v76;
  v77[4] = sub_100435DB0(&qword_1009856F0, type metadata accessor for ProductLockupLayout);
  v78 = sub_1000056E0(v77);
  sub_100435CE8(v127, v78, type metadata accessor for ProductLockupLayout.Metrics);
  sub_100005A38(&v143, v78 + v76[5]);
  sub_100005A38(&v140, v78 + v76[6]);
  sub_100005A38(&v137, v78 + v76[7]);
  sub_100005A38(&v134, v78 + v76[8]);
  v79 = (v78 + v76[9]);
  *v79 = v65;
  v79[1] = 0;
  v79[2] = 0;
  v79[3] = v75;
  v79[4] = v74;
  v80 = v78 + v76[10];
  *(v80 + 4) = 0;
  *v80 = 0u;
  *(v80 + 1) = 0u;
  sub_100005A38(&v131, v78 + v76[11]);
  sub_100005A38(v130, v78 + v76[12]);
  v81 = (v78 + v76[13]);
  *v81 = v67;
  v81[1] = 0;
  v83 = v109;
  v82 = v110;
  v81[2] = 0;
  v81[3] = v83;
  v81[4] = v82;
  v84 = (v78 + v76[14]);
  *v84 = v68;
  v84[1] = 0;
  v85 = v111;
  v86 = v112;
  v84[2] = 0;
  v84[3] = v86;
  v84[4] = v85;
  *(v78 + v76[15]) = v117;
  v87 = (v78 + v76[16]);
  v88 = v123;
  *v87 = v124;
  v87[1] = v88;
  v89 = (v78 + v76[17]);
  v90 = v118;
  *v89 = v118;
  v89[1] = 0;
  v92 = v115;
  v91 = v116;
  v89[2] = 0;
  v89[3] = v92;
  v89[4] = v91;
  v93 = (v78 + v76[18]);
  *v93 = v69;
  v93[1] = 0;
  v95 = v113;
  v94 = v114;
  v93[2] = 0;
  v93[3] = v95;
  v93[4] = v94;
  v96 = v69;
  v97 = v126;
  v98 = v122;
  v99 = v121;
  v100 = v120;
  v101 = v65;
  v102 = v119;
  v103 = v67;
  v104 = v68;
  v105 = v90;
  v106 = sub_100431918(v6, v78, a4, a5);
  sub_100435D50(v129, type metadata accessor for ProductLockupLayout.Metrics);
  sub_100435D50(v128, type metadata accessor for ProductLockupLayout.Metrics.OfferSubtitleMetrics);
  sub_100007000(v146);
  return v106;
}

uint64_t sub_10042EF30(double *a1, uint64_t a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10)
{
  v20 = sub_10002849C(&unk_100987150);
  __chkstk_darwin(v20 - 8);
  v22 = &v29 - v21;
  v23 = type metadata accessor for ProductLockupLayout.Metrics.OfferSubtitleMetrics(0);
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v26 = &v29 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  a1[14] = a3;
  a1[15] = a4;
  v31 = &type metadata for CGFloat;
  v32 = &protocol witness table for CGFloat;
  *&v30 = a5;
  sub_100007000((a1 + 4));
  sub_100005A38(&v30, (a1 + 4));
  v31 = &type metadata for CGFloat;
  v32 = &protocol witness table for CGFloat;
  *&v30 = a6;
  sub_100007000((a1 + 9));
  sub_100005A38(&v30, (a1 + 9));
  *a1 = a7;
  a1[1] = a8;
  a1[2] = a9;
  a1[3] = a10;
  sub_100031660(a2, v22, &unk_100987150);
  if ((*(v24 + 48))(v22, 1, v23) == 1)
  {
    return sub_10002B894(v22, &unk_100987150);
  }

  sub_100435CE8(v22, v26, type metadata accessor for ProductLockupLayout.Metrics.OfferSubtitleMetrics);
  v28 = type metadata accessor for ProductLockupLayout.Metrics(0);
  return sub_100430708(v26, a1 + *(v28 + 76));
}

uint64_t sub_10042F168(double *a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9)
{
  a1[14] = a2;
  a1[15] = a3;
  v17 = &type metadata for CGFloat;
  v18 = &protocol witness table for CGFloat;
  *&v16 = a4;
  sub_100007000((a1 + 4));
  sub_100005A38(&v16, (a1 + 4));
  v17 = &type metadata for CGFloat;
  v18 = &protocol witness table for CGFloat;
  *&v16 = a5;
  sub_100007000((a1 + 9));
  result = sub_100005A38(&v16, (a1 + 9));
  *a1 = a6;
  a1[1] = a7;
  a1[2] = a8;
  a1[3] = a9;
  return result;
}

void sub_10042F218()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_expandedOfferTitleLabel);
  if (v2)
  {
    sub_100005744(0, &qword_100970180);
    v3 = v2;
    v4 = static UIColor.primaryText.getter();
    [v3 setTextColor:v4];
  }

  v5 = *(v1 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_titleLabel);
  sub_100005744(0, &qword_100970180);
  v6 = static UIColor.primaryText.getter();
  [v5 setTextColor:v6];

  v7 = *(v1 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_taglineLabel);
  v8 = static UIColor.secondaryText.getter();
  [v7 setTextColor:v8];

  v9 = *(v1 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_wordmarkView);
  v10 = static UIColor.secondaryText.getter();
  [v9 setTintColor:v10];

  v11 = OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_tertiaryTitleLabel;
  swift_beginAccess();
  v12 = *(v1 + v11);
  if (v12)
  {
    v13 = v12;
    v14 = static UIColor.tertiaryText.getter();
    [v13 setTextColor:v14];
  }
}

void sub_10042F38C(void *a1)
{
  v21.receiver = v1;
  v21.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v21, "applyLayoutAttributes:", a1);
  type metadata accessor for BaseCollectionViewLayoutAttributes();
  v3 = swift_dynamicCastClass();
  v4 = OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_uberView;
  v5 = *&v1[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_uberView];
  if (v3)
  {
    if (v5)
    {
      v6 = v3;
      v7 = *(v3 + OBJC_IVAR____TtC8AppStore34BaseCollectionViewLayoutAttributes_parallaxY);
      v8 = *(*(v5 + OBJC_IVAR____TtC8AppStore14UberHeaderView_contentView) + OBJC_IVAR____TtC8AppStore9MediaView_contentContainer);
      v9 = *&v8[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_parallaxY];
      *&v8[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_parallaxY] = v7;
      v10 = a1;
      if (v7 == v9)
      {
        v11 = *&v1[v4];
        if (!v11)
        {
          goto LABEL_14;
        }

        goto LABEL_16;
      }

      [v8 setNeedsLayout];
      v11 = *&v1[v4];
      if (v11)
      {
LABEL_16:
        v18 = *(v6 + OBJC_IVAR____TtC8AppStore34BaseCollectionViewLayoutAttributes_isRubberbanding);
        *(v11 + OBJC_IVAR____TtC8AppStore14UberHeaderView_isRubberbanding) = v18;
        v19 = *(v11 + OBJC_IVAR____TtC8AppStore14UberHeaderView_contentView);
        *(v19 + OBJC_IVAR____TtC8AppStore9MediaView_isRubberbanding) = v18;
        if (*(*(v19 + OBJC_IVAR____TtC8AppStore9MediaView_contentContainer) + OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents))
        {
          type metadata accessor for VideoView();
          v20 = swift_dynamicCastClass();
          if (v20)
          {
            *(v20 + qword_100988CD0) = v18;
          }
        }

        return;
      }
    }

    else
    {
      v17 = a1;
    }

LABEL_14:

    return;
  }

  if (v5)
  {
    v12 = *(*(v5 + OBJC_IVAR____TtC8AppStore14UberHeaderView_contentView) + OBJC_IVAR____TtC8AppStore9MediaView_contentContainer);
    v13 = *&v12[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_parallaxY];
    *&v12[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_parallaxY] = 0;
    if (v13 != 0.0)
    {
      [v12 setNeedsLayout];
    }

    v14 = *&v1[v4];
    if (v14)
    {
      *(v14 + OBJC_IVAR____TtC8AppStore14UberHeaderView_isRubberbanding) = 0;
      v15 = *(v14 + OBJC_IVAR____TtC8AppStore14UberHeaderView_contentView);
      *(v15 + OBJC_IVAR____TtC8AppStore9MediaView_isRubberbanding) = 0;
      if (*(*(v15 + OBJC_IVAR____TtC8AppStore9MediaView_contentContainer) + OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents))
      {
        type metadata accessor for VideoView();
        v16 = swift_dynamicCastClass();
        if (v16)
        {
          *(v16 + qword_100988CD0) = 0;
        }
      }
    }
  }
}

void sub_10042F71C()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  __chkstk_darwin(v0);
  v1 = type metadata accessor for DispatchTime();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = v19 - v6;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_taglineLabel;
    v11 = [*(Strong + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_taglineLabel) text];
    if (v11 && (v11, ([*&v9[v10] isHidden] & 1) != 0))
    {
      sub_100005744(0, &qword_1009729E0);
      v21 = static OS_dispatch_queue.main.getter();
      static DispatchTime.now()();
      + infix(_:_:)();
      v20 = *(v2 + 8);
      v20(v4, v1);
      v12 = *&v9[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_developerLabel];
      v13 = *&v9[v10];
      v14 = swift_allocObject();
      *(v14 + 16) = v13;
      *(v14 + 24) = v12;
      aBlock[4] = sub_10043076C;
      aBlock[5] = v14;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100007A08;
      aBlock[3] = &unk_1008C2A20;
      v19[1] = _Block_copy(aBlock);
      v22 = _swiftEmptyArrayStorage;
      sub_100435DB0(&qword_100976F50, &type metadata accessor for DispatchWorkItemFlags);
      v15 = v12;
      v16 = v13;
      v17 = v15;
      sub_10002849C(&unk_1009729F0);
      sub_1000079A4();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      type metadata accessor for DispatchWorkItem();
      swift_allocObject();
      DispatchWorkItem.init(flags:block:)();

      v18 = v21;
      OS_dispatch_queue.asyncAfter(deadline:execute:)();

      v20(v7, v1);
    }

    else
    {
    }
  }
}

void sub_10042FAA4(void *a1, void *a2)
{
  [a1 setAlpha:0.0];
  [a1 setHidden:0];
  v4 = objc_opt_self();
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a1;
  v16 = sub_100430774;
  v17 = v5;
  v12 = _NSConcreteStackBlock;
  v13 = 1107296256;
  v14 = sub_100007A08;
  v15 = &unk_1008C2A70;
  v6 = _Block_copy(&v12);
  v7 = a2;
  v8 = a1;

  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  v16 = sub_100369170;
  v17 = v9;
  v12 = _NSConcreteStackBlock;
  v13 = 1107296256;
  v14 = sub_100504C5C;
  v15 = &unk_1008C2AC0;
  v10 = _Block_copy(&v12);
  v11 = v7;

  [v4 animateWithDuration:v6 animations:v10 completion:1.0];
  _Block_release(v10);
  _Block_release(v6);
}

void sub_10042FC60(uint64_t a1, double a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      [v5 setAlpha:a2];
      --v2;
    }

    while (v2);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    [Strong setNeedsLayout];
  }
}

void sub_10042FCF8(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = *&Strong[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_lockupOfferAnimationCount];
    v8 = __OFSUB__(v7, 1);
    v9 = v7 - 1;
    if (v8)
    {
      __break(1u);
      return;
    }

    *&Strong[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_lockupOfferAnimationCount] = v9;
  }

  if ((a3 & 1) != 0 && (swift_beginAccess(), (v10 = swift_unknownObjectWeakLoadStrong()) != 0))
  {
    v11 = *&v10[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_lockupOfferAnimationCount];

    v12 = v11 == 0;
    v13 = *(a4 + 16);
    if (!v13)
    {
      return;
    }
  }

  else
  {
    v12 = 0;
    v13 = *(a4 + 16);
    if (!v13)
    {
      return;
    }
  }

  v14 = (a4 + 32);
  do
  {
    v15 = *v14++;
    [v15 setHidden:v12];
    --v13;
  }

  while (v13);
}

void sub_10042FF94()
{
  sub_100027FAC();
  if (v0 <= 0x3F)
  {
    type metadata accessor for ProductPageTheme();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void *sub_100430118()
{
  v1 = *(*v0 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_uberView);
  v2 = v1;
  return v1;
}

uint64_t (*sub_100430154(uint64_t **a1))()
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
  v2[4] = sub_100429E10(v2);
  return sub_1000B4CAC;
}

uint64_t sub_1004301C4()
{
  ObjectType = swift_getObjectType();
  v1 = sub_100435DB0(&qword_1009856B0, type metadata accessor for ProductLockupCollectionViewCell);

  return VideoViewProviding.someVideoView.getter(ObjectType, v1);
}

uint64_t sub_100430238(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = sub_100435DB0(&qword_1009856B0, type metadata accessor for ProductLockupCollectionViewCell);

  return VideoViewProviding.someVideoView.setter(a1, a2, ObjectType, v5);
}

uint64_t (*sub_1004302C4(uint64_t *a1))()
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
  sub_100435DB0(&qword_1009856B0, type metadata accessor for ProductLockupCollectionViewCell);
  *(v3 + 32) = VideoViewProviding.someVideoView.modify();
  return sub_1000C2700;
}

uint64_t sub_100430380(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_uberView);
  if (v2 && a1)
  {
    v3 = *&v2[OBJC_IVAR____TtC8AppStore14UberHeaderView_contentView];
    v5 = v2;
    v6 = [a1 superview];
    if (v6)
    {
      v7 = v6;
      v8 = *(v3 + OBJC_IVAR____TtC8AppStore9MediaView_contentContainer);
      sub_100005744(0, &qword_100972EB0);
      v9 = v8;
      v10 = static NSObject.== infix(_:_:)();

      v5 = v7;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

BOOL sub_100430530(void *a1, uint64_t a2, void *a3)
{
  v5 = type metadata accessor for FloatingPointRoundingRule();
  v6 = *(v5 - 8);
  *&v7 = __chkstk_darwin(v5).n128_u64[0];
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [a3 traitCollection];
  v11 = UITraitCollection.isSizeClassRegular.getter();

  if (v11)
  {
    type metadata accessor for ProductLockupInlineUberLayout.Metrics(0);
    static Dimensions.defaultRoundingRule.getter();
    Conditional<>.value(in:rounded:)();
    (*(v6 + 8))(v9, v5);
  }

  CGSize.subtracting(insets:)();
  CGSize.subtracting(insets:)();
  sub_10002A400(a1, a1[3]);
  sub_10002A400(a1, a1[3]);
  dispatch thunk of Measurable.measurements(fitting:in:)();
  return LayoutTextView.estimatedNumberOfLines(from:)(v14) > 1;
}

uint64_t sub_100430708(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProductLockupLayout.Metrics.OfferSubtitleMetrics(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

id sub_100430774()
{
  v1 = *(v0 + 24);
  [*(v0 + 16) setAlpha:0.0];

  return [v1 setAlpha:1.0];
}

uint64_t sub_1004307C0(void *a1, char a2, uint64_t a3)
{
  v5 = [a1 traitCollection];
  if ((a2 & 1) == 0 || (UITraitCollection.isSizeClassRegular.getter() & 1) != 0 || [*(a3 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_offerButton) isHidden])
  {
    v6 = UITraitCollection.prefersRightToLeftLayouts.getter();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 0;
    }
  }

  else
  {

    return 1;
  }
}

double sub_100430850(void *a1, uint64_t a2, double a3)
{
  v6 = sub_10002849C(&qword_100979010);
  v50 = *(v6 - 8);
  v51 = v6;
  __chkstk_darwin(v6);
  v49 = v45 - v7;
  v8 = type metadata accessor for FloatingPointRoundingRule();
  v9 = *(v8 - 8);
  *&v10 = __chkstk_darwin(v8).n128_u64[0];
  v12 = v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [a1 traitCollection];
  v14 = UITraitCollection.isSizeClassCompact.getter();

  v48 = v9;
  if ((v14 & 1) == 0)
  {
    v15 = type metadata accessor for ProductLockupInlineUberLayout.Metrics(0);
    sub_10002A400((a2 + v15[15]), *(a2 + v15[15] + 24));
    j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
    AnyDimension.value(in:rounded:)();
    v16 = *(v9 + 8);
    v16(v12, v8);
    sub_10002A400((a2 + v15[16]), *(a2 + v15[16] + 24));
    j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
    AnyDimension.value(in:rounded:)();
    v16(v12, v8);
    sub_10002A400((a2 + v15[17]), *(a2 + v15[17] + 24));
    j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
    v17 = v49;
    AnyDimension.value(in:rounded:)();
    v16(v12, v8);
    static Dimensions.defaultRoundingRule.getter();
    Conditional<>.value(in:rounded:)();
    v16(v12, v8);
    sub_10002849C(&unk_100980420);
    Conditional<>.value.getter();
    static Dimensions.defaultRoundingRule.getter();
    Conditional<>.value(in:rounded:)();
    v16(v12, v8);
    v9 = v48;
    (*(v50 + 8))(v17, v51);
  }

  CGSize.subtracting(insets:)();
  v19 = v18;
  v20 = [a1 traitCollection];
  v21 = UITraitCollection.isSizeClassRegular.getter();

  if (v21)
  {
    type metadata accessor for ProductLockupInlineUberLayout.Metrics(0);
    static Dimensions.defaultRoundingRule.getter();
    Conditional<>.value(in:rounded:)();
    (*(v9 + 8))(v12, v8);
  }

  v47 = v19;
  v22 = type metadata accessor for ProductLockupInlineUberLayout(0);
  sub_10002A400((a2 + *(v22 + 36)), *(a2 + *(v22 + 36) + 24));
  dispatch thunk of Measurable.measurements(fitting:in:)();
  v45[2] = v23;
  v45[4] = v24;
  v45[1] = v25;
  v45[3] = v26;
  v46 = v22;
  v27 = (a2 + *(v22 + 44));
  sub_10002A400(v27, v27[3]);
  dispatch thunk of Measurable.measurements(fitting:in:)();
  sub_10002A400(v27, v27[3]);
  if (dispatch thunk of LayoutView.hasContent.getter())
  {
    type metadata accessor for ProductLockupInlineUberLayout.Metrics(0);
    static Dimensions.defaultRoundingRule.getter();
    Conditional<>.value(in:rounded:)();
    v29 = v28;
    (*(v9 + 8))(v12, v8);
    v54[0] = v29;
    AnyDimension.topMargin(from:in:)();
  }

  sub_10072D10C(&v52);
  if (v53)
  {
    sub_100005A38(&v52, v54);
    sub_10002A400(v54, v55);
    dispatch thunk of Measurable.measurements(fitting:in:)();
    v30 = type metadata accessor for ProductLockupInlineUberLayout.Metrics(0);
    sub_10002A400((a2 + *(v30 + 44)), *(a2 + *(v30 + 44) + 24));
    AnyDimension.topMargin(from:in:)();
    sub_10002A400((a2 + *(v30 + 48)), *(a2 + *(v30 + 48) + 24));
    j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
    AnyDimension.value(in:rounded:)();
    (*(v9 + 8))(v12, v8);
    sub_100007000(v54);
  }

  else
  {
    sub_10002B894(&v52, &qword_100975610);
  }

  v31 = v50;
  sub_10072D10C(v54);
  v32 = v55;
  sub_10002B894(v54, &qword_100975610);
  if (!v32)
  {
    v33 = [a1 traitCollection];
    v34 = UITraitCollection.isSizeClassRegular.getter();

    if (v34 & 1) != 0 || (v35 = [a1 traitCollection], v36 = UITraitCollection.prefersAccessibilityLayouts.getter(), v35, (v36))
    {
      type metadata accessor for ProductLockupInlineUberLayout.Metrics(0);
      static Dimensions.defaultRoundingRule.getter();
      Conditional<>.value(in:rounded:)();
      (*(v9 + 8))(v12, v8);
    }
  }

  v37 = [a1 traitCollection];
  v38 = UITraitCollection.isSizeClassCompact.getter();

  if (v38)
  {
    sub_10072D10C(v54);
    sub_10002B894(v54, &qword_100975610);
  }

  v39 = type metadata accessor for ProductLockupInlineUberLayout.Metrics(0);
  sub_10002849C(&unk_100980420);
  v40 = v49;
  Conditional<>.value.getter();
  static Dimensions.defaultRoundingRule.getter();
  Conditional<>.value(in:rounded:)();
  v41 = *(v48 + 8);
  v41(v12, v8);
  (*(v31 + 8))(v40, v51);
  type metadata accessor for ProductLockupInlineUberLayout.Metrics(0);
  static Dimensions.defaultRoundingRule.getter();
  Conditional<>.value(in:rounded:)();
  v41(v12, v8);
  static Dimensions.defaultRoundingRule.getter();
  Conditional<>.value(in:rounded:)();
  v43 = v42;
  v41(v12, v8);
  v54[0] = v43;
  AnyDimension.topMargin(from:in:)();
  sub_10002A400((a2 + v39[9]), *(a2 + v39[9] + 24));
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  AnyDimension.value(in:rounded:)();
  v41(v12, v8);
  sub_10002A400((a2 + *(v46 + 52)), *(a2 + *(v46 + 52) + 24));
  Measurable.measuredSize(fitting:in:)();
  sub_10002A400((a2 + v39[15]), *(a2 + v39[15] + 24));
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  AnyDimension.value(in:rounded:)();
  v41(v12, v8);
  sub_10002A400((a2 + v39[16]), *(a2 + v39[16] + 24));
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  AnyDimension.value(in:rounded:)();
  v41(v12, v8);
  return a3;
}

double sub_100431390(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for FloatingPointRoundingRule();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002A400(a2 + 35, a2[38]);
  v8 = dispatch thunk of LayoutView.isHidden.getter();
  v9 = 0.0;
  v10 = 0.0;
  if ((v8 & 1) == 0)
  {
    sub_10002A400(a2 + 35, a2[38]);
    dispatch thunk of Measurable.measurements(fitting:in:)();
    v12 = v11;
    v9 = v13;
    v14 = a2 + *(type metadata accessor for ProductLockupAccessibilityLayout(0) + 64);
    v15 = type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0);
    sub_10002A400(&v14[*(v15 + 56)], *&v14[*(v15 + 56) + 24]);
    AnyDimension.topMargin(from:in:)();
    v10 = v12 - v9 + v16;
  }

  v46 = v10;
  sub_100031660((a2 + 40), &v48, &unk_10097E890);
  if (v49)
  {
    sub_100005A38(&v48, v50);
    sub_10002A400(v50, v51);
    dispatch thunk of Measurable.measurements(fitting:in:)();
    v18 = v17;
    v9 = v19;
    type metadata accessor for ProductLockupAccessibilityLayout(0);
    type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0);
    v47 = a1;
    sub_10002849C(&qword_100979010);
    Conditional.evaluate(with:)();
    v47 = v48;
    v20 = v18;
    AnyDimension.topMargin(from:in:)();
    v22 = v21;
    sub_100007000(v50);
    v45 = v9;
  }

  else
  {
    sub_10002B894(&v48, &unk_10097E890);
    v20 = JUMeasurementsZero[1];
    v45 = JUMeasurementsZero[3];
    v22 = 0.0;
  }

  sub_100031660((a2 + 45), &v48, &unk_10097E890);
  if (v49)
  {
    sub_100005A38(&v48, v50);
    sub_10002A400(v50, v51);
    dispatch thunk of Measurable.measurements(fitting:in:)();
    v24 = v23;
    v44 = v22;
    v9 = v25;
    v26 = a2 + *(type metadata accessor for ProductLockupAccessibilityLayout(0) + 64);
    v27 = type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0);
    sub_10002A400(&v26[*(v27 + 64)], *&v26[*(v27 + 64) + 24]);
    j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
    AnyDimension.value(in:rounded:)();
    v29 = v28;
    (*(v5 + 8))(v7, v4);
    *&v48 = v29;
    v22 = v44;
    AnyDimension.topMargin(from:in:)();
    v31 = v30;
    sub_100007000(v50);
    v32 = v9;
  }

  else
  {
    sub_10002B894(&v48, &unk_10097E890);
    v24 = JUMeasurementsZero[1];
    v32 = JUMeasurementsZero[3];
    v31 = 0.0;
  }

  sub_10002A400(a2 + 25, a2[28]);
  Measurable.measuredSize(fitting:in:)();
  v34 = v24 - v32 + v31 + v20 - v45 + v22 + v46 + v33;
  v35 = a2 + *(type metadata accessor for ProductLockupAccessibilityLayout(0) + 64);
  sub_10002A400(v35 + 9, *(v35 + 12));
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  AnyDimension.value(in:rounded:)();
  v37 = v36;
  v38 = *(v5 + 8);
  v38(v7, v4);
  v39 = v34 + v37;
  v40 = type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0);
  sub_10002A400(&v35[*(v40 + 68)], *&v35[*(v40 + 68) + 24]);
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  AnyDimension.value(in:rounded:)();
  v42 = v41;
  v38(v7, v4);
  return v9 + v39 + v42;
}

double sub_100431918(void *a1, uint64_t a2, double a3, double a4)
{
  v8 = type metadata accessor for FloatingPointRoundingRule();
  v9 = *(v8 - 8);
  *&v10 = __chkstk_darwin(v8).n128_u64[0];
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [a1 traitCollection];
  v14 = UITraitCollection.isSizeClassRegular.getter();

  sub_10002A400((a2 + 32), *(a2 + 56));
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  AnyDimension.value(in:rounded:)();
  v15 = *(v9 + 8);
  v15(v12, v8);
  sub_10002A400((a2 + 72), *(a2 + 96));
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  AnyDimension.value(in:rounded:)();
  v15(v12, v8);
  v16 = a3 - *(a2 + 8) - *(a2 + 24) - *(a2 + 112);
  v17 = type metadata accessor for ProductLockupLayout.Metrics(0);
  v19[0] = a1;
  sub_10002849C(&qword_100979010);
  Conditional.evaluate(with:)();
  sub_100431BFC(a1, a2, v16 - *&v19[1], a4);
  sub_10002A400((a2 + *(v17 + 96)), *(a2 + *(v17 + 96) + 24));
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  AnyDimension.value(in:rounded:)();
  v15(v12, v8);
  if (v14 & 1) == 0 && (*(a2 + *(type metadata accessor for ProductLockupLayout(0) + 60)))
  {
    sub_10043217C(a1, a2, a3, a4);
  }

  return a3;
}

double sub_100431BFC(void *a1, uint64_t a2, double a3, double a4)
{
  v8 = type metadata accessor for FloatingPointRoundingRule();
  v9 = *(v8 - 8);
  *&v10 = __chkstk_darwin(v8).n128_u64[0];
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [a1 traitCollection];
  v14 = UITraitCollection.isSizeClassRegular.getter();

  v44 = type metadata accessor for ProductLockupLayout(0);
  v15 = v44[10];
  sub_100031660(a2 + v15, v45, &qword_100975610);
  if (v46)
  {
    sub_10002A400(v45, v46);
    Measurable.measuredSize(fitting:in:)();
    v17 = v16;
    sub_100007000(v45);
  }

  else
  {
    sub_10002B894(v45, &qword_100975610);
    v17 = 0.0;
  }

  v18 = sub_1004330B4(a1, a2);
  sub_100031660(a2 + v15, v45, &qword_100975610);
  v19 = v46;
  sub_10002B894(v45, &qword_100975610);
  if (v19)
  {
    v20 = v44;
    if ((v14 & 1) == 0)
    {
      if (*(a2 + v44[15]))
      {
        v21 = type metadata accessor for ProductLockupLayout.Metrics(0);
        sub_10002A400((a2 + *(v21 + 92)), *(a2 + *(v21 + 92) + 24));
        j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
        AnyDimension.value(in:rounded:)();
        v23 = v22;
        (*(v9 + 8))(v12, v8);
        v18 = v18 + v17 + v23;
      }

LABEL_9:
      if (*(a2 + v20[15]))
      {
        return v18;
      }
    }
  }

  else
  {
    v20 = v44;
    if ((v14 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  v43 = *(a2 + 120);
  v24 = (a2 + v20[11]);
  sub_10002A400(v24, v24[3]);
  Measurable.measuredSize(fitting:in:)();
  v26 = v25;
  sub_100031660(a2 + v15, v45, &qword_100975610);
  v27 = v46;
  sub_10002B894(v45, &qword_100975610);
  if (v27)
  {
    v28 = type metadata accessor for ProductLockupLayout.Metrics(0);
    sub_10002A400((a2 + *(v28 + 80)), *(a2 + *(v28 + 80) + 24));
    j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
    AnyDimension.value(in:rounded:)();
    (*(v9 + 8))(v12, v8);
  }

  v29 = a2;
  v30 = v8;
  v41 = v29;
  v42 = type metadata accessor for ProductLockupLayout.Metrics(0);
  v31 = v29 + *(v42 + 76);
  v32 = type metadata accessor for ProductLockupLayout.Metrics.OfferSubtitleMetrics(0);
  sub_10002A400((v31 + *(v32 + 28)), *(v31 + *(v32 + 28) + 24));
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  AnyDimension.value(in:rounded:)();
  v33 = *(v9 + 8);
  v33(v12, v30);
  sub_10002A400((v31 + *(v32 + 24)), *(v31 + *(v32 + 24) + 24));
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  AnyDimension.value(in:rounded:)();
  v33(v12, v30);
  v34 = v41;
  sub_10002A400((v41 + v44[12]), *(v41 + v44[12] + 24));
  Measurable.measuredSize(fitting:in:)();
  v36 = v35;
  sub_10002A400(v24, v24[3]);
  if (dispatch thunk of LayoutView.isHidden.getter())
  {
    v26 = v36;
  }

  sub_10002A400((v34 + *(v42 + 72)), *(v34 + *(v42 + 72) + 24));
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  AnyDimension.value(in:rounded:)();
  v38 = v37;
  v33(v12, v30);
  if (v18 < v43 - v38 - v26)
  {
    v18 = v43 - v38 - v26;
  }

  return sub_10043217C(a1, v34, a3, a4) + v18;
}

double sub_10043217C(void *a1, uint64_t a2, double a3, double a4)
{
  v8 = type metadata accessor for FloatingPointRoundingRule();
  v41 = *(v8 - 8);
  *&v9 = __chkstk_darwin(v8).n128_u64[0];
  v11 = &v42[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [a1 traitCollection];
  v13 = UITraitCollection.isSizeClassRegular.getter();

  v14 = type metadata accessor for ProductLockupLayout(0);
  sub_10002A400((a2 + v14[11]), *(a2 + v14[11] + 24));
  Measurable.measuredSize(fitting:in:)();
  v16 = v15;
  v17 = type metadata accessor for ProductLockupLayout.Metrics(0);
  sub_10002A400((a2 + v17[18]), *(a2 + v17[18] + 24));
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  v18 = v8;
  v19 = v41;
  AnyDimension.value(in:rounded:)();
  v21 = v20;
  v22 = *(v19 + 8);
  v22(v11, v18);
  if ((v13 & 1) != 0 || *(a2 + v14[15]) == 1)
  {
    v23 = a2 + v17[19];
    v24 = type metadata accessor for ProductLockupLayout.Metrics.OfferSubtitleMetrics(0);
    sub_10002A400((v23 + *(v24 + 28)), *(v23 + *(v24 + 28) + 24));
    j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
    AnyDimension.value(in:rounded:)();
    v26 = v25;
    v22(v11, v18);
    sub_1004325B8(a1, a2, a3, a4, a3 - (v16 + v26));
    v28 = v27;
    v29 = sub_100432E38(a1, a2);
    if (v28 > v29)
    {
      v29 = v28;
    }
  }

  else
  {
    v30 = v14[10];
    sub_100031660(a2 + v30, v42, &qword_100975610);
    if (v43)
    {
      sub_10002A400(v42, v43);
      Measurable.measuredSize(fitting:in:)();
      v32 = v31;
      sub_100007000(v42);
    }

    else
    {
      sub_10002B894(v42, &qword_100975610);
      v32 = 0.0;
    }

    sub_100031660(a2 + v30, v42, &qword_100975610);
    v33 = v43;
    sub_10002B894(v42, &qword_100975610);
    if (v33)
    {
      sub_10002A400((a2 + v17[20]), *(a2 + v17[20] + 24));
      j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
      AnyDimension.value(in:rounded:)();
      v35 = v34;
      v22(v11, v18);
    }

    else
    {
      v35 = 0.0;
    }

    v36 = a2 + v17[19];
    v37 = type metadata accessor for ProductLockupLayout.Metrics.OfferSubtitleMetrics(0);
    sub_10002A400((v36 + *(v37 + 28)), *(v36 + *(v37 + 28) + 24));
    j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
    AnyDimension.value(in:rounded:)();
    v39 = v38;
    v22(v11, v18);
    sub_1004325B8(a1, a2, a3, a4, a3 - (v35 + v32 + v16 + v39));
  }

  return v21 + 0.0 + v29;
}

void sub_1004325B8(void *a1, uint64_t a2, double a3, double a4, double a5)
{
  v8 = type metadata accessor for LabelPlaceholderCompatibility();
  v82 = *(v8 - 8);
  v83 = v8;
  __chkstk_darwin(v8);
  v10 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v77 = &v71 - v12;
  v13 = type metadata accessor for FloatingPointRoundingRule();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v78 = &v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for CharacterSet();
  v80 = *(v16 - 8);
  v81 = v16;
  __chkstk_darwin(v16);
  v18 = &v71 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for ProductLockupLayout(0);
  v20 = (a2 + v19[11]);
  sub_10002A400(v20, v20[3]);
  Measurable.measuredSize(fitting:in:)();
  v21 = (a2 + v19[16]);
  v79 = v21[1];
  if (v79)
  {
    v74 = v14;
    v75 = v13;
    v76 = *v21;
    v22 = (a2 + *(type metadata accessor for ProductLockupLayout.Metrics(0) + 76));
    type metadata accessor for ProductLockupLayout.Metrics.OfferSubtitleMetrics(0);
    v84[0] = a1;
    sub_10002849C(&unk_100980410);
    v71 = v22;
    Conditional.evaluate(with:)();
    v23 = v87;
    v72 = v19;
    v24 = v19[15];
    v73 = a2;
    v25 = *(a2 + v24);
    sub_10002A400(v20, v20[3]);
    if (dispatch thunk of LayoutView.isHidden.getter())
    {
    }

    else
    {
      v26 = v25;
      v27 = objc_opt_self();
      v28 = v79;

      v29 = [v27 mainScreen];
      [v29 bounds];
      v31 = v30;
      v33 = v32;
      v35 = v34;
      v37 = v36;

      v88.origin.x = v31;
      v88.origin.y = v33;
      v88.size.width = v35;
      v88.size.height = v37;
      Width = CGRectGetWidth(v88);
      JUScreenClassGetPortraitWidth();
      v39 = v23;
      if (Width > v40 || (CharacterSet.init(charactersIn:)(), v84[0] = v76, v84[1] = v28, sub_10007FED4(), StringProtocol.rangeOfCharacter(from:options:range:)(), v42 = v41, v80[1](v18, v81), (v42)) && (!v26 || (v43 = [a1 traitCollection], v44 = UITraitCollection.isSizeClassRegular.getter(), v43, (v44)))
      {
        v45 = sub_100530150();
        v46 = *(v45 + 16);
        v80 = (v82 + 8);
        LODWORD(v81) = enum case for Feature.measurement_with_labelplaceholder(_:);
        v47 = v45 + 40;
        v82 = -v46;
        v48 = -1;
        while (v82 + v48 != -1)
        {
          if (++v48 >= *(v45 + 16))
          {
            __break(1u);
            return;
          }

          v49 = v47 + 16;
          v50 = a1;
          v51 = type metadata accessor for Feature();
          v85 = v51;
          v86 = sub_100435DB0(&qword_100972E50, &type metadata accessor for Feature);
          v52 = sub_1000056E0(v84);
          (*(*(v51 - 8) + 104))(v52, v81, v51);
          v53 = v39;

          v54 = v39;
          isFeatureEnabled(_:)();
          sub_100007000(v84);
          a1 = v50;
          LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
          sub_100435DB0(qword_100982720, &type metadata accessor for LabelPlaceholderCompatibility);
          v55 = v83;
          dispatch thunk of Measurable.measurements(fitting:in:)();
          v57 = v56;
          v58 = v55;
          v39 = v54;
          (*v80)(v10, v58);
          v47 = v49;
          if (v57 > a5)
          {

            goto LABEL_13;
          }
        }

        v64 = type metadata accessor for Feature();
        v85 = v64;
        v86 = sub_100435DB0(&qword_100972E50, &type metadata accessor for Feature);
        v65 = sub_1000056E0(v84);
        (*(*(v64 - 8) + 104))(v65, v81, v64);
        v66 = v39;
        isFeatureEnabled(_:)();
        sub_100007000(v84);
        v67 = v77;
        LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
        sub_100435DB0(qword_100982720, &type metadata accessor for LabelPlaceholderCompatibility);
        v68 = v83;
        dispatch thunk of Measurable.measurements(fitting:in:)();
        v70 = v69;

        (*v80)(v67, v68);
        v59 = v75;
        v60 = v74;
        v61 = v73;
        v62 = v72;
        if (v70 > a5)
        {
          goto LABEL_14;
        }
      }

      else
      {
LABEL_13:

        v59 = v75;
        v60 = v74;
        v61 = v73;
        v62 = v72;
LABEL_14:
        sub_10002A400((v61 + v62[12]), *(v61 + v62[12] + 24));
        dispatch thunk of Measurable.measurements(fitting:in:)();
        sub_10002A400(v71, v71[3]);
        v63 = v78;
        j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
        AnyDimension.value(in:rounded:)();
        (*(v60 + 8))(v63, v59);
      }
    }
  }
}

double sub_100432E38(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for FloatingPointRoundingRule();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ProductLockupLayout(0);
  sub_100031660(a2 + *(v7 + 52), &v22, &unk_10097E890);
  if (!v23)
  {
    sub_10002B894(&v22, &unk_10097E890);
    return 0.0;
  }

  sub_100005A38(&v22, v24);
  sub_100031660(a2 + *(v7 + 56), &v20, &unk_10097E890);
  if (!v21)
  {
    sub_10002B894(&v20, &unk_10097E890);
    sub_100007000(v24);
    return 0.0;
  }

  sub_100005A38(&v20, &v22);
  sub_10002A400(v24, v24[3]);
  dispatch thunk of Measurable.measurements(fitting:in:)();
  v9 = v8;
  v11 = v10;
  sub_10002A400(&v22, v23);
  dispatch thunk of Measurable.measurements(fitting:in:)();
  v13 = v12;
  v14 = type metadata accessor for ProductLockupLayout.Metrics(0);
  sub_10002A400((a2 + *(v14 + 84)), *(a2 + *(v14 + 84) + 24));
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  AnyDimension.value(in:rounded:)();
  v16 = v15;
  (*(v4 + 8))(v6, v3);
  v17 = v13 + v9 - v11 + v16;
  sub_100007000(&v22);
  sub_100007000(v24);
  return v17;
}

double sub_1004330B4(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for FloatingPointRoundingRule();
  v5 = *(v4 - 8);
  *&v6 = __chkstk_darwin(v4).n128_u64[0];
  v8 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a1 traitCollection];
  v54 = UITraitCollection.isSizeClassRegular.getter();

  v10 = type metadata accessor for ProductLockupLayout.Metrics(0);
  *&v55 = a1;
  v11 = sub_10002849C(&qword_100979010);
  Conditional.evaluate(with:)();
  v12 = *v58;
  v13 = v10;
  *&v55 = a1;
  v53 = v11;
  Conditional.evaluate(with:)();
  v14 = *v58;
  v15 = type metadata accessor for ProductLockupLayout(0);
  v16 = v15[10];
  sub_100031660(a2 + v16, v58, &qword_100975610);
  if (v59)
  {
    sub_10002A400(v58, v59);
    Measurable.measuredSize(fitting:in:)();
    sub_100007000(v58);
  }

  else
  {
    sub_10002B894(v58, &qword_100975610);
  }

  sub_100031660(a2 + v16, v58, &qword_100975610);
  v17 = v59;
  sub_10002B894(v58, &qword_100975610);
  if (v17)
  {
    sub_10002A400((a2 + *(v13 + 80)), *(a2 + *(v13 + 80) + 24));
    j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
    AnyDimension.value(in:rounded:)();
    (*(v5 + 8))(v8, v4);
  }

  v18 = (a2 + v15[6]);
  sub_10002A400(v18, v18[3]);
  dispatch thunk of Measurable.measurements(fitting:in:)();
  v21 = v20;
  v23 = v22;
  v24 = v19;
  v26 = v25;
  if (v12 - v19 > 0.0)
  {
    v27 = v12 - v19;
  }

  else
  {
    v27 = 0.0;
  }

  sub_10002A400(v18, v18[3]);
  dispatch thunk of LayoutTextView.languageAwareOutsets.getter();
  v29 = v23 - v26 + v27 + v28;
  sub_10002C0AC(v18, v58);
  *&v55 = a1;
  sub_10002849C(&unk_100973B30);
  Conditional.evaluate(with:)();
  v30 = v15[9];
  sub_100031660(a2 + v30, &v55, &unk_10097E890);
  sub_10002B894(&v55, &unk_10097E890);
  sub_10002A400(v58, v59);
  v60.var0 = v21;
  v60.var1 = v23;
  v60.var2 = v24;
  v60.var3 = v26;
  LayoutTextView.estimatedNumberOfLines(from:)(v60);
  sub_100007000(v58);
  v31 = (a2 + v15[8]);
  sub_10002A400(v31, v31[3]);
  dispatch thunk of LayoutTextView.numberOfLines.setter();
  v32 = (a2 + v15[7]);
  sub_10002A400(v32, v32[3]);
  dispatch thunk of LayoutTextView.numberOfLines.setter();
  sub_10002A400(v31, v31[3]);
  dispatch thunk of Measurable.measurements(fitting:in:)();
  v34 = v33;
  v36 = v35;
  v38 = v37;
  sub_10002A400(v32, v32[3]);
  dispatch thunk of Measurable.measurements(fitting:in:)();
  v40 = v39;
  v41 = v14 - v36 + v34 - v38;
  v44 = v14 - v42 + v43 - v39;
  if (v41 > v44)
  {
    v45 = v41;
  }

  else
  {
    v45 = v44;
  }

  v46 = v29 + v45;
  sub_100031660(a2 + v30, &v55, &unk_10097E890);
  if (v56)
  {
    sub_100005A38(&v55, v58);
    v57 = a1;
    Conditional.evaluate(with:)();
    v47 = *&v55;
    sub_10002A400(v58, v59);
    dispatch thunk of Measurable.measurements(fitting:in:)();
    v49 = v48;
    v46 = v46 + v47 - v50 + v51 - v48;
    sub_100007000(v58);
  }

  else
  {
    if (v41 >= v44)
    {
      v49 = v38;
    }

    else
    {
      v49 = v40;
    }

    sub_10002B894(&v55, &unk_10097E890);
  }

  return v46 + v49;
}

void sub_100433694(void *a1, uint64_t a2)
{
  v4 = sub_10002849C(&qword_100972ED0);
  __chkstk_darwin(v4 - 8);
  v6 = &v23 - v5;
  if (*(a2 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_hasInlineUber) == 1)
  {
    if (qword_10096D750 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for FontUseCase();
    v8 = sub_1000056A8(v7, qword_1009CF600);
    v9 = *(v7 - 8);
    (*(v9 + 16))(v6, v8, v7);
    (*(v9 + 56))(v6, 0, 1, v7);
    dispatch thunk of DynamicTypeLabel.fontUseCase.setter();
    v10 = *(a2 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_taglineLabel);
    if (qword_10096D720 != -1)
    {
      swift_once();
    }

    v11 = sub_10002849C(&unk_100980410);
    sub_1000056A8(v11, qword_1009CF590);
    v23 = a1;
    Conditional.evaluate(with:)();
    v12 = v24;
    [v10 setFont:v24];
  }

  else
  {
    if (qword_10096D748 != -1)
    {
      swift_once();
    }

    v13 = sub_10002849C(&unk_100970ED0);
    sub_1000056A8(v13, qword_1009CF5E8);
    v24 = a1;
    Conditional.evaluate(with:)();
    v14 = type metadata accessor for FontUseCase();
    v15 = *(*(v14 - 8) + 56);
    v15(v6, 0, 1, v14);
    dispatch thunk of DynamicTypeLabel.fontUseCase.setter();
    if (qword_10096D758 != -1)
    {
      swift_once();
    }

    sub_1000056A8(v13, qword_1009CF618);
    v24 = a1;
    Conditional.evaluate(with:)();
    v15(v6, 0, 1, v14);
    dispatch thunk of DynamicTypeLabel.fontUseCase.setter();
  }

  if (qword_10096D758 != -1)
  {
    swift_once();
  }

  v16 = sub_10002849C(&unk_100970ED0);
  sub_1000056A8(v16, qword_1009CF618);
  v24 = a1;
  Conditional.evaluate(with:)();
  v17 = type metadata accessor for FontUseCase();
  v18 = *(*(v17 - 8) + 56);
  v18(v6, 0, 1, v17);
  dispatch thunk of DynamicTypeLabel.fontUseCase.setter();
  if (qword_10096D770 != -1)
  {
    swift_once();
  }

  sub_1000056A8(v16, qword_1009CF660);
  v24 = a1;
  Conditional.evaluate(with:)();
  v18(v6, 0, 1, v17);
  dispatch thunk of DynamicTypeLabel.fontUseCase.setter();
  v19 = OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_tertiaryTitleLabel;
  swift_beginAccess();
  v20 = *(a2 + v19);
  if (v20)
  {
    v21 = qword_10096D768;
    v22 = v20;
    if (v21 != -1)
    {
      swift_once();
    }

    sub_1000056A8(v16, qword_1009CF648);
    v23 = a1;
    Conditional.evaluate(with:)();
    v18(v6, 0, 1, v17);
    dispatch thunk of DynamicTypeLabel.fontUseCase.setter();
  }
}

void sub_100433BEC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_titleLabel);
  if (*(a2 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_hasInlineUber) == 1)
  {
    if (qword_10096D880 != -1)
    {
      swift_once();
    }

    v5 = sub_10002849C(&unk_100973B30);
    v6 = qword_1009CF9D0;
  }

  else
  {
    if (qword_10096D878 != -1)
    {
      swift_once();
    }

    v5 = sub_10002849C(&unk_100973B30);
    v6 = qword_1009CF9B8;
  }

  sub_1000056A8(v5, v6);
  Conditional.evaluate(with:)();
  [v4 setNumberOfLines:v18];
  v7 = *(a2 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_offerSubtitleLabel);
  if (qword_10096D8A8 != -1)
  {
    swift_once();
  }

  v8 = sub_10002849C(&unk_100973B30);
  sub_1000056A8(v8, qword_1009CFA48);
  Conditional.evaluate(with:)();
  [v7 setNumberOfLines:v18];
  v9 = *(a2 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_developerLabel);
  if (qword_10096D888 != -1)
  {
    swift_once();
  }

  sub_1000056A8(v8, qword_1009CF9E8);
  Conditional.evaluate(with:)();
  [v9 setNumberOfLines:v18];
  v10 = *(a2 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_taglineLabel);
  Conditional.evaluate(with:)();
  [v10 setNumberOfLines:v18];
  v11 = OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_tertiaryTitleLabel;
  swift_beginAccess();
  v12 = *(a2 + v11);
  if (v12)
  {
    v13 = qword_10096D890;
    v14 = v12;
    if (v13 != -1)
    {
      swift_once();
    }

    sub_1000056A8(v8, qword_1009CFA00);
    Conditional.evaluate(with:)();
    [v14 setNumberOfLines:a1];
  }

  v15 = *(a2 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_downloadProgressLabel);
  if (v15)
  {
    v16 = qword_10096D870;
    v17 = v15;
    if (v16 != -1)
    {
      swift_once();
    }

    sub_1000056A8(v8, qword_1009CF9A0);
    Conditional.evaluate(with:)();
    [v17 setNumberOfLines:a1];
  }
}

void sub_100433F8C(uint64_t a1, uint64_t a2, int a3, void *a4, char *a5)
{
  LODWORD(v7) = a3;
  v10 = type metadata accessor for AutomationSemantics();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v41 = a4;
    v14 = OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_downloadProgressLabel;
    v15 = *&a5[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_downloadProgressLabel];
    if (v15)
    {
      goto LABEL_3;
    }

    v39 = a1;
    type metadata accessor for DynamicTypeLabel();
    v23 = DynamicTypeLabel.__allocating_init(frame:)();
    v24 = v23;
    v25 = *&a5[v14];
    *&a5[v14] = v23;
    if (v23)
    {
      v40 = v7;
      if (!v25)
      {
        v29 = v23;
        v30 = v24;
        if (v24)
        {
LABEL_22:
          v31 = v30;
          v32 = [a5 contentView];
          [v32 addSubview:v31];

          sub_10042A1FC();
          goto LABEL_23;
        }

LABEL_19:

LABEL_23:
        v7 = v25;
        goto LABEL_24;
      }

      v38 = v11;
      v26 = v23;
      v7 = v25;
      v37 = v26;
      v27 = static NSObject.== infix(_:_:)();

      if (v27)
      {

        v11 = v38;
LABEL_24:

        v24 = *&a5[v14];
        LOBYTE(v7) = v40;
        goto LABEL_25;
      }

      v11 = v38;
    }

    else
    {
      if (!v25)
      {
LABEL_25:
        if (!v24 || (memset(v43, 0, sizeof(v43)), memset(v42, 0, sizeof(v42)), v33 = v24, static AutomationSemantics.shelfItemSubComponent(itemKind:id:parentId:)(), sub_10002B894(v42, &unk_1009711D0), sub_10002B894(v43, &unk_1009711D0), UIView.setAutomationSemantics(_:)(), v33, (*(v11 + 8))(v13, v10), (v34 = *&a5[v14]) == 0) || ([v34 setHidden:v7 & 1], (v15 = *&a5[v14]) == 0))
        {
LABEL_28:
          [a5 setNeedsLayout];
          goto LABEL_29;
        }

LABEL_3:
        v16 = v15;
        v17 = String._bridgeToObjectiveC()();
        [v16 setText:v17];

        v18 = *&a5[v14];
        if (v18)
        {
          v19 = a5[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_hasExpandedOffer];
          v20 = v18;
          v21 = [v41 traitCollection];
          if ((a5[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_hasInlineUber] & 1) != 0 || (v19 & 1) != 0 && (UITraitCollection.isSizeClassRegular.getter() & 1) == 0)
          {

            v22 = 1;
          }

          else
          {
            v28 = UITraitCollection.prefersRightToLeftLayouts.getter();

            if (v28)
            {
              v22 = 2;
            }

            else
            {
              v22 = 0;
            }
          }

          [v20 setTextAlignment:v22];
        }

        goto LABEL_28;
      }

      v40 = v7;
      v7 = v25;
    }

    [v7 removeFromSuperview];
    v30 = *&a5[v14];
    if (v30)
    {
      goto LABEL_22;
    }

    goto LABEL_19;
  }

LABEL_29:
  v35 = a5[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_isDownloadProgressVisible];
  a5[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_isDownloadProgressVisible] = v7 & 1;
  sub_10042AF44(v35);
}

void sub_100434330(char a1, void *a2, char a3, char a4, uint64_t a5)
{
  v6 = v5;
  v53 = a2;
  v11 = type metadata accessor for LegacyAppState();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v51[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v15);
  v17 = &v51[-v16];
  v18 = type metadata accessor for AdamId();
  v19 = (*(*(v18 - 8) + 48))(a5, 1, v18);
  v54 = v11;
  v55 = v17;
  if (v19 == 1 || !*&v6[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_appStateMachine])
  {
    (*(v12 + 104))(v17, enum case for LegacyAppState.unknown(_:), v11);
  }

  else
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v11 = v54;
    v17 = v55;
    dispatch thunk of AppStateMachine.currentState.getter();
    swift_unknownObjectRelease();
  }

  v20 = *&v6[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_offerButton];
  [*&v20[OBJC_IVAR____TtC8AppStore11OfferButton_imageView] setContentMode:1];
  if (a4)
  {
    v21 = v20;
  }

  else
  {
    v20 = 0;
  }

  v22 = *&v6[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_downloadProgressLabel];
  if (v22 && v6[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_isDownloadProgressVisible] == 1)
  {
    goto LABEL_16;
  }

  (*(v12 + 16))(v14, v17, v11);
  v22 = *&v6[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_offerSubtitleLabel];
  v23 = [v22 text];
  if (v23)
  {
    v24 = v23;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v25;
  }

  else
  {
    v26 = 0;
  }

  v27 = LegacyAppState.isBuyable.getter();
  (*(v12 + 8))(v14, v11);
  if (v27)
  {
    if (v26)
    {

LABEL_16:
      v28 = v22;
      goto LABEL_19;
    }
  }

  else
  {
  }

  v22 = 0;
LABEL_19:
  sub_10002849C(&unk_100985700);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1007B1E00;
  v30 = *&v6[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_iconView];
  *(v29 + 32) = v30;
  *(v29 + 40) = v20;
  *(v29 + 48) = v22;
  v31 = v30;
  v32 = v31;
  if (a3)
  {
    v33 = a1 & 1;
    if (a1)
    {
      v34 = 0.0;
    }

    else
    {
      v34 = 1.0;
    }

    [v31 setAlpha:v34];
    [v32 setHidden:a1 & 1];

    v35 = *(v29 + 40);
    [v35 setAlpha:v34];
    [v35 setHidden:v33];

    v36 = *(v29 + 48);
    [v36 setAlpha:v34];
    [v36 setHidden:v33];

    [v6 setNeedsLayout];
LABEL_31:

    (*(v12 + 8))(v55, v54);
    return;
  }

  v37 = 0.0;
  if (a1)
  {
    v38 = 1.0;
  }

  else
  {
    v38 = 0.0;
  }

  [v31 setAlpha:v38];
  [v32 setHidden:0];

  v39 = *(v29 + 40);
  [v39 setAlpha:v38];
  [v39 setHidden:0];

  v40 = *(v29 + 48);
  [v40 setAlpha:v38];
  [v40 setHidden:0];

  v41 = *&v6[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_lockupOfferAnimationCount];
  v42 = __OFADD__(v41, 1);
  v43 = v41 + 1;
  if (!v42)
  {
    v52 = a1 & 1;
    if ((a1 & 1) == 0)
    {
      v37 = 1.0;
    }

    v44 = *&v53;
    *&v6[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_lockupOfferAnimationCount] = v43;
    v53 = objc_opt_self();
    v45 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v46 = swift_allocObject();
    *(v46 + 16) = v37;
    *(v46 + 24) = v29;
    *(v46 + 32) = v45;
    v60 = sub_100435E80;
    v61 = v46;
    aBlock = _NSConcreteStackBlock;
    v57 = 1107296256;
    v58 = sub_100007A08;
    v59 = &unk_1008C2C28;
    v47 = _Block_copy(&aBlock);

    v48 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v49 = swift_allocObject();
    *(v49 + 16) = v48;
    *(v49 + 24) = v52;
    *(v49 + 32) = v29;
    v60 = sub_100435E8C;
    v61 = v49;
    aBlock = _NSConcreteStackBlock;
    v57 = 1107296256;
    v58 = sub_100504C5C;
    v59 = &unk_1008C2C78;
    v50 = _Block_copy(&aBlock);

    [v53 animateWithDuration:4 delay:v47 options:v50 animations:v44 completion:0.0];
    _Block_release(v50);
    _Block_release(v47);
    goto LABEL_31;
  }

  __break(1u);
}

void sub_10043497C()
{
  v1 = v0;
  v2 = type metadata accessor for WordmarkView.Alignment();
  v47 = *(v2 - 8);
  v48 = v2;
  __chkstk_darwin(v2);
  v46 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for FontSource();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for StaticDimension();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10002849C(&qword_100975F00);
  __chkstk_darwin(v12 - 8);
  v45 = &v44 - v13;
  v14 = OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_itemLayoutContext;
  v15 = type metadata accessor for ItemLayoutContext();
  (*(*(v15 - 8) + 56))(v1 + v14, 1, 1, v15);
  *(v1 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_bottomSafeAreaDistance) = 0;
  v16 = OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_lockupContentBackgroundView;
  v17 = [objc_allocWithZone(UIView) init];
  v18 = [objc_opt_self() systemBackgroundColor];
  [v17 setBackgroundColor:v18];

  *(v1 + v16) = v17;
  *(v1 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_uberView) = 0;
  v19 = OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_titleLabel;
  type metadata accessor for DynamicTypeLabel();
  *(v1 + v19) = DynamicTypeLabel.__allocating_init(frame:)();
  v20 = (v1 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_appStateMachine);
  *v20 = 0;
  v20[1] = 0;
  v21 = (v1 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_offerLabelPresenter);
  *v21 = 0u;
  v21[1] = 0u;
  v22 = OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_developerLabel;
  *(v1 + v22) = DynamicTypeLabel.__allocating_init(frame:)();
  v23 = OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_taglineLabel;
  *(v1 + v23) = DynamicTypeLabel.__allocating_init(frame:)();
  *(v1 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_tertiaryTitleLabel) = 0;
  v44 = OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_wordmarkView;
  v24 = type metadata accessor for Wordmark();
  (*(*(v24 - 8) + 56))(v45, 1, 1, v24);
  *v7 = UIFontTextStyleFootnote;
  (*(v5 + 104))(v7, enum case for FontSource.textStyle(_:), v4);
  v50 = v4;
  v51 = &protocol witness table for FontSource;
  v25 = sub_1000056E0(v49);
  (*(v5 + 16))(v25, v7, v4);
  v26 = UIFontTextStyleFootnote;
  StaticDimension.init(_:scaledLike:)();
  (*(v5 + 8))(v7, v4);
  (*(v47 + 104))(v46, enum case for WordmarkView.Alignment.center(_:), v48);
  v50 = v8;
  v51 = &protocol witness table for StaticDimension;
  v27 = sub_1000056E0(v49);
  (*(v9 + 16))(v27, v11, v8);
  v28 = objc_allocWithZone(type metadata accessor for WordmarkView());
  v29 = WordmarkView.init(frame:wordmark:referenceLineHeight:alignment:)();
  (*(v9 + 8))(v11, v8);
  *(v1 + v44) = v29;
  v30 = OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_offerButton;
  v31 = objc_allocWithZone(type metadata accessor for OfferButton());
  *(v1 + v30) = sub_1000F5284(0);
  v32 = OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_offerSubtitleLabel;
  *(v1 + v32) = DynamicTypeLabel.__allocating_init(frame:)();
  *(v1 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_disclosureArrow) = 0;
  *(v1 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_bannerView) = 0;
  *(v1 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_secondaryBannerView) = 0;
  *(v1 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_bannerViewHeight) = 0;
  *(v1 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_secondaryBannerViewHeight) = 0;
  v33 = OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_backgroundContentContainer;
  *(v1 + v33) = [objc_allocWithZone(UIView) init];
  v34 = OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_blurEffect;
  *(v1 + v34) = [objc_opt_self() effectWithStyle:7];
  *(v1 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_blurView) = 0;
  *(v1 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_darkeningOverlayEffectView) = 0;
  *(v1 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_blurGradientMaskView) = 0;
  *(v1 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_darkeningOverlayGradientMaskView) = 0;
  *(v1 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_backgroundContentContainerMaskView) = 0;
  *(v1 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_keylineView) = 0;
  *(v1 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_hasInlineUber) = 0;
  *(v1 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_shadowView) = 0;
  v35 = (v1 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_iconSize);
  *v35 = 0;
  v35[1] = 0;
  v36 = OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_iconView;
  type metadata accessor for ArtworkView();
  *(v1 + v36) = static ArtworkView.iconArtworkView.getter();
  *(v1 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_hasExpandedOffer) = 0;
  v37 = (v1 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_expandedOfferTitleText);
  *v37 = 0;
  v37[1] = 0;
  v38 = (v1 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_expandedOfferSubtitleText);
  *v38 = 0;
  v38[1] = 0;
  v39 = OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_theme;
  v40 = enum case for ProductPageTheme.infer(_:);
  v41 = type metadata accessor for ProductPageTheme();
  (*(*(v41 - 8) + 104))(v1 + v39, v40, v41);
  *(v1 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_expandedOfferTitleLabel) = 0;
  *(v1 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_expandedOfferSubtitleLabel) = 0;
  *(v1 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_downloadProgressLabel) = 0;
  *(v1 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_isDownloadProgressVisible) = 0;
  makeNetworkInquiry()();
  v42 = v1 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_networkObservation;
  *v42 = 0u;
  *(v42 + 16) = 0u;
  *(v42 + 32) = 0;
  v43 = (v1 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_developerTapHandler);
  *v43 = 0;
  v43[1] = 0;
  *(v1 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell____lazy_storage___changeSubtitleOnce) = 1;
  *(v1 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_lockupOfferAnimationCount) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

double sub_10043510C(void *a1, void *a2, double a3)
{
  v6 = type metadata accessor for FloatingPointRoundingRule();
  v90 = *(v6 - 8);
  __chkstk_darwin(v6);
  v89 = v78 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = (a2 + *(type metadata accessor for ProductLockupAccessibilityLayout(0) + 64));
  v9 = *v8;
  v10 = a3 - v8[1] - v8[3];
  v85 = v8[2];
  v86 = v9;
  v11 = a3 - v9 - v85;
  v12 = [a1 traitCollection];
  v13 = UITraitCollection.isSizeClassRegular.getter();

  sub_100031660((a2 + 30), v100, &qword_100975610);
  if (v101)
  {
    sub_10002A400(v100, v101);
    Measurable.measuredSize(fitting:in:)();
    v15 = v14;
    sub_100007000(v100);
  }

  else
  {
    sub_10002B894(v100, &qword_100975610);
    v15 = 0.0;
  }

  sub_100031660((a2 + 30), v100, &qword_100975610);
  v16 = v101;
  sub_10002B894(v100, &qword_100975610);
  v91 = a2;
  v87 = v6;
  if (v16)
  {
    v17 = type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0);
    sub_10002A400((v8 + *(v17 + 48)), *(v8 + *(v17 + 48) + 24));
    v18 = v89;
    j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
    AnyDimension.value(in:rounded:)();
    v20 = v19;
    (*(v90 + 8))(v18, v6);
    if (v13)
    {
LABEL_6:
      v21 = v8;
      v22 = v10 - v15 - v20;
      goto LABEL_9;
    }
  }

  else
  {
    v20 = 0.0;
    if (v13)
    {
      goto LABEL_6;
    }
  }

  v21 = v8;
  v22 = v10;
LABEL_9:
  v88 = v22;
  v23 = v91;
  sub_10002A400(v91 + 5, v91[8]);
  dispatch thunk of Measurable.measurements(fitting:in:)();
  v25 = v24;
  v27 = v26;
  v28 = type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0);
  *&v98 = a1;
  sub_10002849C(&qword_100979010);
  Conditional.evaluate(with:)();
  *&v98 = v100[0];
  v83 = v25;
  v81 = v27;
  AnyDimension.topMargin(from:in:)();
  v80 = v29;
  sub_10002A400(v23 + 5, v23[8]);
  dispatch thunk of LayoutTextView.languageAwareOutsets.getter();
  v79 = v30;
  v31 = v23[13];
  v78[0] = (v23 + 10);
  sub_10002A400(v23 + 10, v31);
  dispatch thunk of Measurable.measurements(fitting:in:)();
  v33 = v32;
  v35 = v34;
  v36 = *(v28 + 36);
  v37 = v28;
  *&v98 = a1;
  v38 = v21;
  v78[1] = v36;
  Conditional.evaluate(with:)();
  *&v98 = v100[0];
  AnyDimension.topMargin(from:in:)();
  v39 = v11;
  v41 = v33 - v35 + v40;
  v42 = (v23 + 15);
  sub_10002A400(v23 + 15, v23[18]);
  v84 = v39;
  dispatch thunk of Measurable.measurements(fitting:in:)();
  v44 = v43;
  v46 = v45;
  v82 = v37;
  *&v98 = a1;
  Conditional.evaluate(with:)();
  *&v98 = v100[0];
  AnyDimension.topMargin(from:in:)();
  v48 = v44 - v46 + v47;
  if (v48 >= v41)
  {
    sub_10002C0AC(v42, &v98);
    v42 = v78[0];
  }

  else
  {
    sub_10002C0AC(v78[0], &v98);
  }

  sub_10002C0AC(v42, &v96);
  v95[0] = a1;
  Conditional.evaluate(with:)();
  v49 = v100[0];
  v95[0] = a1;
  Conditional.evaluate(with:)();
  v50 = v100[0];
  if (v48 >= v41)
  {
    v51 = v100[0];
  }

  else
  {
    v51 = v49;
  }

  v95[3] = &type metadata for CGFloat;
  v95[4] = &protocol witness table for CGFloat;
  v95[0] = v51;
  if (v48 >= v41)
  {
    v50 = v49;
  }

  v93 = &type metadata for CGFloat;
  v94 = &protocol witness table for CGFloat;
  *&v92 = v50;
  sub_100005A38(&v98, v100);
  sub_10002C0AC(v95, v102);
  sub_100005A38(&v96, &v103);
  sub_100005A38(&v92, &v104);
  sub_100007000(v95);
  sub_10002A400(v100, v101);
  dispatch thunk of Measurable.measurements(fitting:in:)();
  v53 = v52;
  v55 = v54;
  sub_10002A400(v102, v102[3]);
  AnyDimension.topMargin(from:in:)();
  v57 = v56;
  v58 = v91;
  sub_100031660((v91 + 20), &v96, &unk_10097E890);
  v59 = v87;
  if (v97)
  {
    sub_100005A38(&v96, &v98);
    sub_10002A400(&v98, v99);
    dispatch thunk of Measurable.measurements(fitting:in:)();
    v61 = v60;
    v63 = v62;
    v64 = v82;
    v95[0] = a1;
    Conditional.evaluate(with:)();
    v95[0] = v96;
    AnyDimension.topMargin(from:in:)();
    v66 = v61 - v63 + v65;
    sub_100007000(&v98);
    v67 = v90;
  }

  else
  {
    sub_10002B894(&v96, &unk_10097E890);
    v66 = 0.0;
    v67 = v90;
    v64 = v82;
  }

  v68 = v66 + v53 - v55 + v57 + v83 - v81 + v80 + v79 + v21[15];
  sub_10002A400((v21 + *(v64 + 52)), *(v21 + *(v64 + 52) + 24));
  v69 = v89;
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  AnyDimension.value(in:rounded:)();
  v71 = v70;
  v72 = *(v67 + 8);
  v72(v69, v59);
  v73 = v68 + v71 + sub_100431390(a1, v58);
  sub_10002A400(v38 + 4, *(v38 + 7));
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  AnyDimension.value(in:rounded:)();
  v75 = v74;
  v72(v69, v59);
  v76 = v85 + v86 + v73 + v75;
  sub_10002B894(v100, &qword_1009856E0);
  return v76;
}

id sub_100435978()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  __chkstk_darwin(v1);
  v2 = type metadata accessor for DispatchTime();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v0 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_developerLabel);
  result = [v7 isHidden];
  if (result)
  {
    if ((*(v0 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_hasInlineUber) & 1) == 0)
    {
      sub_100005744(0, &qword_1009729E0);
      v9 = static OS_dispatch_queue.main.getter();
      static DispatchTime.now()();
      v10 = *(v0 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_taglineLabel);
      v11 = swift_allocObject();
      *(v11 + 16) = v7;
      *(v11 + 24) = v10;
      aBlock[4] = sub_100435EB8;
      aBlock[5] = v11;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100007A08;
      aBlock[3] = &unk_1008C2B10;
      _Block_copy(aBlock);
      v14[1] = _swiftEmptyArrayStorage;
      sub_100435DB0(&qword_100976F50, &type metadata accessor for DispatchWorkItemFlags);
      v12 = v7;
      v13 = v10;
      sub_10002849C(&unk_1009729F0);
      sub_1000079A4();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      type metadata accessor for DispatchWorkItem();
      swift_allocObject();
      DispatchWorkItem.init(flags:block:)();

      OS_dispatch_queue.asyncAfter(deadline:execute:)();

      return (*(v3 + 8))(v6, v2);
    }
  }

  return result;
}

uint64_t sub_100435C80(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100435CE8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100435D50(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100435DB0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100435E00(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&qword_1009856F8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

double sub_100435ED8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v7 = *a1;
  ObjectType = swift_getObjectType();
  PageTraitEnvironment.pageColumnWidth.getter();

  return sub_1005397D8(v9, v7, a6, ObjectType);
}

id sub_100435F40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for ContingentOffer();
  v5 = swift_dynamicCastClass();
  if (v5)
  {
    v6 = v5;

    sub_100539A70(v6, a3);
  }

  else
  {
    type metadata accessor for OfferItem();
    v7 = swift_dynamicCastClass();
    if (!v7)
    {
      goto LABEL_6;
    }

    v8 = v7;

    sub_100539C84(v8, a3);
  }

LABEL_6:

  return [v3 setNeedsLayout];
}

uint64_t sub_100436158(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1004361A0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  ObjectType = swift_getObjectType();
  PageTraitEnvironment.pageColumnWidth.getter();
  v8 = v7;
  v9 = [a4 traitCollection];
  v10 = [v9 preferredContentSizeCategory];
  v11 = static UIContentSizeCategory.>= infix(_:_:)();

  if ((v11 & 1) == 0)
  {
    if (qword_10096D5D8 != -1)
    {
      swift_once();
    }

    sub_100438080(&unk_1009CEDC8, a4);
    if (qword_10096EBE0 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for AppPromotionCardLayout.Metrics(0);
    v16 = sub_1000056A8(v15, qword_1009D31A8);
    sub_10057992C(v16, a4);
    goto LABEL_28;
  }

  v12 = _swiftEmptyArrayStorage;
  v27 = _swiftEmptyArrayStorage;
  v13 = *(a1 + 16);
  if (v13)
  {
    v14 = a1 + 32;
    do
    {
      sub_10002C0AC(v14, v26);
      sub_100005A38(v26, v25);
      sub_10002849C(&qword_100973D50);
      type metadata accessor for AppPromotion();
      if ((swift_dynamicCast() & 1) != 0 && v25[5])
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v12 = v27;
      }

      v14 += 40;
      --v13;
    }

    while (v13);
  }

  if (!(v12 >> 62))
  {
    v17 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v17)
    {
      goto LABEL_17;
    }

LABEL_27:

LABEL_28:
    v23 = objc_opt_self();
    PageTraitEnvironment.pageColumnWidth.getter();
    v24 = [v23 absoluteDimension:?];
    static ComponentLayoutBuilder.columnGroup(separatedBy:itemHeight:groupWidth:rowCount:)();

    return;
  }

  v17 = _CocoaArrayWrapper.endIndex.getter();
  if (!v17)
  {
    goto LABEL_27;
  }

LABEL_17:
  if (v17 >= 1)
  {
    v18 = 0;
    v19 = 0.0;
    do
    {
      if ((v12 & 0xC000000000000001) != 0)
      {
        v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v20 = *(v12 + 8 * v18 + 32);
      }

      ++v18;
      sub_1005397D8(v8, v20, a4, ObjectType);
      v22 = v21;

      if (v19 <= v22)
      {
        v19 = v22;
      }
    }

    while (v17 != v18);
    goto LABEL_27;
  }

  __break(1u);
}

unint64_t sub_100436538()
{
  result = qword_100985758;
  if (!qword_100985758)
  {
    type metadata accessor for GameCenterLeaderboardsAction();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100985758);
  }

  return result;
}

uint64_t sub_100436590(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    type metadata accessor for GameCenter();
    v8 = a1;
    GameCenterLeaderboardsAction.bundleID.getter();
    static GameCenter.fetchGameRecord(for:with:)();

    v9 = swift_allocObject();
    v9[2] = a3;
    v9[3] = a2;
    v9[4] = a4;
    v10 = sub_100005744(0, &qword_1009729E0);
    swift_retain_n();

    v14[3] = v10;
    v14[4] = &protocol witness table for OS_dispatch_queue;
    v14[0] = static OS_dispatch_queue.main.getter();
    Promise.then(perform:orCatchError:on:)();

    return sub_100007000(v14);
  }

  else
  {
    if (qword_10096D120 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for OSLogger();
    sub_1000056A8(v12, qword_1009CE218);
    sub_10002849C(&unk_100972A10);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_1007B10D0;
    LogMessage.init(stringLiteral:)();
    Logger.error(_:)();

    sub_100437698();
    swift_allocError();
    *v13 = 0;
    Promise.reject(_:)();
  }
}

void sub_100436864(void **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *a1;
  v7 = [objc_allocWithZone(GKGameInternal) init];
  GameCenterLeaderboardsAction.bundleID.getter();
  v8 = String._bridgeToObjectiveC()();

  [v7 setBundleIdentifier:v8];

  v9 = [objc_allocWithZone(GKGame) initWithInternalRepresentation:v7];
  v10 = objc_opt_self();
  sub_10002849C(&qword_10096FC50);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1007B10D0;
  *(v11 + 32) = GameCenterLeaderboardsAction.leaderboardID.getter();
  *(v11 + 40) = v12;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = v6;
  v14[4] = a4;
  v18[4] = sub_100437700;
  v18[5] = v14;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 1107296256;
  v18[2] = sub_100437388;
  v18[3] = &unk_1008C2E20;
  v15 = _Block_copy(v18);
  v16 = v9;

  v17 = v6;

  [v10 loadLeaderboardsWithIDs:isa setIdentifier:0 game:v16 completionHandler:v15];
  _Block_release(v15);
}

uint64_t sub_100436A70(char *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v59 = a5;
  v57 = a4;
  v62 = a1;
  v63 = a3;
  v58 = type metadata accessor for FlowOrigin();
  v61 = *(v58 - 8);
  __chkstk_darwin(v58);
  v7 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for FlowAnimationBehavior();
  v60 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for FlowPresentationContext();
  v56 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ActionMetrics();
  __chkstk_darwin(v14 - 8);
  v16 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10002849C(&unk_1009767C0);
  __chkstk_darwin(v17 - 8);
  v19 = &v50 - v18;
  v20 = sub_10002849C(&qword_100982460);
  __chkstk_darwin(v20 - 8);
  v22 = &v50 - v21;
  v23 = type metadata accessor for FlowPage();
  __chkstk_darwin(v23);
  v26 = &v50 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    swift_errorRetain();
    if (qword_10096D120 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for OSLogger();
    sub_1000056A8(v27, qword_1009CE218);
    sub_10002849C(&unk_100972A10);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_1007B1890;
    LogMessage.init(stringLiteral:)();
    swift_getErrorValue();
    v28 = v64;
    v29 = v65;
    *(&v70 + 1) = v65;
    v30 = sub_1000056E0(&v69);
    (*(*(v29 - 8) + 16))(v30, v28, v29);
    static LogMessage.sensitive(_:)();
    sub_10003D444(&v69);
    Logger.error(_:)();

    Promise.reject(_:)();
  }

  v53 = v11;
  v54 = v16;
  v55 = v8;
  v33 = v60;
  v32 = v61;
  v34 = v62;
  if (v62)
  {
    if (v62 >> 62)
    {
      v51 = &v50 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
      v52 = v13;
      v47 = v25;
      result = _CocoaArrayWrapper.endIndex.getter();
      v25 = v47;
      v13 = v52;
      v26 = v51;
      if (result)
      {
LABEL_8:
        v52 = v13;
        v62 = v19;
        if ((v34 & 0xC000000000000001) != 0)
        {
          v35 = v25;
          v36 = v26;
          v37 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (!*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return result;
          }

          v35 = v25;
          v36 = v26;
          v37 = *(v34 + 32);
        }

        v38 = v37;
        v39 = v57;
        v71 = 0;
        v69 = 0u;
        v70 = 0u;
        v40 = *(v35 + 104);
        v51 = v36;
        v40(v36, enum case for FlowPage.gameCenterLeaderboards(_:), v23);
        v41 = type metadata accessor for URL();
        (*(*(v41 - 8) + 56))(v22, 1, 1, v41);
        v42 = type metadata accessor for ReferrerData();
        (*(*(v42 - 8) + 56))(v62, 1, 1, v42);
        v68 = &type metadata for GameCenterLeaderboardsPage;
        v66 = v38;
        v67 = v39;
        v43 = v38;
        v44 = v39;
        v45 = v43;
        v57 = v44;
        static ActionMetrics.notInstrumented.getter();
        (*(v56 + 104))(v52, enum case for FlowPresentationContext.infer(_:), v53);
        (*(v33 + 104))(v10, enum case for FlowAnimationBehavior.infer(_:), v55);
        (*(v32 + 104))(v7, enum case for FlowOrigin.inapp(_:), v58);
        static FlowActionPresentation.stackPush.getter();
        type metadata accessor for FlowAction();
        swift_allocObject();
        v46 = FlowAction.init(id:title:artwork:page:url:referrerUrl:referrerData:pageData:actionMetrics:presentationContext:animationBehavior:origin:presentationStyle:presentation:)();
        sub_1005D01FC(v46, 1, v59);
        Promise.pipe(to:)();
      }
    }

    else
    {
      result = *((v62 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
        goto LABEL_8;
      }
    }
  }

  if (qword_10096D120 != -1)
  {
    swift_once();
  }

  v48 = type metadata accessor for OSLogger();
  sub_1000056A8(v48, qword_1009CE218);
  sub_10002849C(&unk_100972A10);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1007B10D0;
  LogMessage.init(stringLiteral:)();
  Logger.error(_:)();

  sub_100437698();
  swift_allocError();
  *v49 = 1;
  Promise.reject(_:)();
}

uint64_t sub_100437388(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_100005744(0, &qword_1009848D8);
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v6 = a3;
  v5(v4, a3);
}

uint64_t sub_10043742C()
{
  if (qword_10096D120 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for OSLogger();
  sub_1000056A8(v0, qword_1009CE218);
  sub_10002849C(&unk_100972A10);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1007B10D0;
  LogMessage.init(stringLiteral:)();
  Logger.error(_:)();

  return Promise.reject(_:)();
}

uint64_t sub_100437584(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  sub_10002849C(&qword_1009764A0);
  v4 = Promise.__allocating_init()();
  type metadata accessor for GameCenter();
  v7[3] = sub_100005744(0, &qword_1009729E0);
  v7[4] = &protocol witness table for OS_dispatch_queue;
  v7[0] = static OS_dispatch_queue.main.getter();
  v5 = swift_allocObject();
  v5[2] = v4;
  v5[3] = v3;
  v5[4] = a2;

  static GameCenter.withLocalPlayer(on:_:)();

  sub_100007000(v7);
  return v4;
}

unint64_t sub_100437698()
{
  result = qword_100985760;
  if (!qword_100985760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100985760);
  }

  return result;
}

unint64_t sub_100437720()
{
  result = qword_100985768;
  if (!qword_100985768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100985768);
  }

  return result;
}

double static AppPromotionFormattedDateLayout.estimatedMeasurements(fitting:using:in:)(uint64_t a1, uint64_t a2)
{
  swift_getObjectType();

  return sub_100438080(a1, a2);
}

uint64_t AppPromotionFormattedDateLayout.Metrics.init(textTopSpace:textBottomSpace:liveIndicatorTrailingMargin:liveIndicatorSize:layoutMargins:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, double *a4@<X8>, double a5@<D0>, double a6@<D1>, double a7@<D2>, double a8@<D3>, double a9@<D4>, double a10@<D5>)
{
  sub_100005A38(a1, a4);
  sub_100005A38(a2, (a4 + 5));
  result = sub_100005A38(a3, (a4 + 10));
  a4[15] = a5;
  a4[16] = a6;
  a4[17] = a7;
  a4[18] = a8;
  a4[19] = a9;
  a4[20] = a10;
  return result;
}

uint64_t AppPromotionFormattedDateLayout.init(metrics:textLabel:liveIndicatorView:backgroundView:vibrancyView:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v21 = a6;
  v11 = type metadata accessor for Locale();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1002C9618(a1, v22);
  static Locale.storefront.getter();
  v15 = Locale.hasExtraTallWritingSystem.getter();
  (*(v12 + 8))(v14, v11);
  if (v15)
  {
    sub_10002A400(a2, a2[3]);
    LayoutTextView.withLanguageAwareOutsets.getter();
    sub_1002C9674(a1);
  }

  else
  {
    sub_1002C9674(a1);
    sub_10002C0AC(a2, &v22[10] + 8);
  }

  v16 = *(a3 + 16);
  v22[13] = *a3;
  v22[14] = v16;
  *&v22[15] = *(a3 + 32);
  v17 = *a4;
  *(&v22[16] + 8) = a4[1];
  *(&v22[15] + 8) = v17;
  *(&v22[17] + 1) = *(a4 + 4);
  *&v22[20] = *(a5 + 32);
  v18 = *(a5 + 16);
  v22[18] = *a5;
  v22[19] = v18;
  memcpy(v21, v22, 0x148uLL);
  return sub_100007000(a2);
}

uint64_t AppPromotionFormattedDateLayout.placeChildren(relativeTo:in:)(double a1, double a2, double a3, double a4)
{
  v9 = type metadata accessor for FloatingPointRoundingRule();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005FC74(v4 + 248, v54);
  if (v55)
  {
    sub_10002A400(v54, v55);
    dispatch thunk of LayoutView.frame.setter();
    sub_100007000(v54);
  }

  else
  {
    sub_10005FD2C(v54);
  }

  sub_10005FC74(v4 + 288, v54);
  if (v55)
  {
    sub_10002A400(v54, v55);
    dispatch thunk of LayoutView.frame.setter();
    sub_100007000(v54);
  }

  else
  {
    sub_10005FD2C(v54);
  }

  CGRect.subtracting(insets:)();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  sub_10005FC74(v4 + 208, &v52);
  v50 = a1;
  v51 = a3;
  v48 = a2;
  v49 = a4;
  v45 = v14;
  v44 = v16;
  v43 = v18;
  v42 = v20;
  if (!v53)
  {
    sub_10005FD2C(&v52);
    goto LABEL_11;
  }

  sub_100005A38(&v52, v54);
  sub_10002A400(v54, v55);
  if (dispatch thunk of LayoutView.isHidden.getter())
  {
    sub_100007000(v54);
LABEL_11:
    v47 = v14;
    v21 = v16;
    Height = v20;
    goto LABEL_13;
  }

  v23 = *(v4 + 120);
  sub_10002A400((v4 + 80), *(v4 + 104));
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  AnyDimension.value(in:rounded:)();
  v25 = v24;
  (*(v10 + 8))(v12, v9);
  v26 = v23 + v25;
  v56.origin.x = v14;
  v56.origin.y = v16;
  v56.size.width = v18;
  v56.size.height = v20;
  v47 = v26 + CGRectGetMinX(v56);
  v57.origin.x = v14;
  v57.origin.y = v16;
  v57.size.width = v18;
  v57.size.height = v20;
  MinY = CGRectGetMinY(v57);
  v58.origin.x = v14;
  v58.origin.y = v16;
  v58.size.width = v18;
  v58.size.height = v20;
  Width = CGRectGetWidth(v58);
  v59.size.width = v18;
  v18 = Width - v26;
  v59.origin.x = v14;
  v21 = MinY;
  v59.origin.y = v16;
  v59.size.height = v20;
  Height = CGRectGetHeight(v59);
  sub_100007000(v54);
LABEL_13:
  sub_10002A400((v4 + 168), *(v4 + 192));
  dispatch thunk of Measurable.measurements(fitting:in:)();
  v30 = v29;
  v32 = v31;
  sub_10002A400(v4, *(v4 + 24));
  AnyDimension.topMargin(from:in:)();
  v46 = v33;
  v34 = v47;
  v60.origin.x = v47;
  v60.origin.y = v21;
  v60.size.width = v18;
  v60.size.height = Height;
  MinX = CGRectGetMinX(v60);
  v61.origin.x = v34;
  v61.origin.y = v21;
  v61.size.width = v18;
  v61.size.height = Height;
  v36 = CGRectGetMinY(v61);
  v62.origin.x = v34;
  v62.origin.y = v21;
  v62.size.width = v18;
  v62.size.height = Height;
  v37 = CGRectGetWidth(v62);
  if (v37 >= v30)
  {
    v38 = v30;
  }

  else
  {
    v38 = v37;
  }

  v39 = v46 + v36;
  sub_10002A400((v4 + 168), *(v4 + 192));
  v47 = v32;
  CGRect.withLayoutDirection(in:relativeTo:)();
  dispatch thunk of LayoutView.frame.setter();
  sub_10005FC74(v4 + 208, &v52);
  if (v53)
  {
    sub_100005A38(&v52, v54);
    v46 = *(v4 + 120);
    v63.origin.x = MinX;
    v63.origin.y = v39;
    v63.size.width = v38;
    v40 = v47;
    v63.size.height = v47;
    CGRectGetMinY(v63);
    v64.origin.x = MinX;
    v64.origin.y = v39;
    v64.size.width = v38;
    v64.size.height = v40;
    CGRectGetHeight(v64);
    v65.origin.x = v45;
    v65.origin.y = v44;
    v65.size.width = v43;
    v65.size.height = v42;
    CGRectGetMinX(v65);
    sub_10002A400(v54, v55);
    CGRect.withLayoutDirection(in:relativeTo:)();
    dispatch thunk of LayoutView.frame.setter();
    sub_100007000(v54);
  }

  else
  {
    sub_10005FD2C(&v52);
  }

  return LayoutRect.init(representing:)();
}

uint64_t AppPromotionFormattedDateLayout.measurements(fitting:in:)(uint64_t a1)
{
  swift_getObjectType();

  return sub_1004383F0(a1, v1);
}

void AppPromotionFormattedDateLayout.Metrics.layoutMargins.setter(double a1, double a2, double a3, double a4)
{
  v4[17] = a1;
  v4[18] = a2;
  v4[19] = a3;
  v4[20] = a4;
}

double sub_100438080(uint64_t a1, uint64_t a2)
{
  v23 = a2;
  v24 = type metadata accessor for VerticalMarginsMeasurable();
  v3 = *(v24 - 8);
  __chkstk_darwin(v24);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for StackMeasurable.Axis();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for StackMeasurable();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 104))(v9, enum case for StackMeasurable.Axis.vertical(_:), v6, v12);
  sub_10002849C(&qword_100996330);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1007B1890;
  sub_10002C0AC(a1, v31);
  v16 = type metadata accessor for VerticalSpaceMeasurable();
  *(v15 + 56) = v16;
  *(v15 + 64) = &protocol witness table for VerticalSpaceMeasurable;
  sub_1000056E0((v15 + 32));
  VerticalSpaceMeasurable.init(_:multiplier:)();
  sub_10002C0AC(a1 + 40, v31);
  *(v15 + 96) = v16;
  *(v15 + 104) = &protocol witness table for VerticalSpaceMeasurable;
  sub_1000056E0((v15 + 72));
  VerticalSpaceMeasurable.init(_:multiplier:)();
  StackMeasurable.init(axis:skipEmptyChildren:children:)();
  v31[3] = v10;
  v31[4] = &protocol witness table for StackMeasurable;
  v17 = sub_1000056E0(v31);
  (*(v11 + 16))(v17, v14, v10);
  v18 = *(a1 + 136);
  v29 = &type metadata for CGFloat;
  v30 = &protocol witness table for CGFloat;
  v28 = v18;
  v19 = *(a1 + 152);
  v26 = &type metadata for CGFloat;
  v27 = &protocol witness table for CGFloat;
  v25 = v19;
  VerticalMarginsMeasurable.init(child:topMargin:bottomMargin:skipIfEmpty:shouldMeasureToBaseline:)();
  VerticalMarginsMeasurable.measurements(fitting:in:)();
  v21 = v20;
  (*(v3 + 8))(v5, v24);
  (*(v11 + 8))(v14, v10);
  return v21;
}

uint64_t sub_1004383F0(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for FloatingPointRoundingRule();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a2[17];
  v9[0] = a2[18];
  v9[1] = v7;
  CGSize.subtracting(insets:)();
  sub_10005FC74((a2 + 26), &v10);
  if (v11)
  {
    sub_100005A38(&v10, v12);
    sub_10002A400(v12, v12[3]);
    if ((dispatch thunk of LayoutView.isHidden.getter() & 1) == 0)
    {
      sub_10002A400(a2 + 10, a2[13]);
      j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
      AnyDimension.value(in:rounded:)();
      (*(v4 + 8))(v6, v3);
    }

    sub_100007000(v12);
  }

  else
  {
    sub_10005FD2C(&v10);
  }

  sub_10002A400(a2 + 21, a2[24]);
  dispatch thunk of Measurable.measurements(fitting:in:)();
  sub_10002A400(a2, a2[3]);
  AnyDimension.topMargin(from:in:)();
  sub_10002A400(a2 + 5, a2[8]);
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  AnyDimension.value(in:rounded:)();
  (*(v4 + 8))(v6, v3);
  return CGSize.adding(outsets:)();
}

uint64_t sub_1004386E4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 328))
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

uint64_t sub_10043872C(uint64_t result, int a2, int a3)
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
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *(result + 312) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 328) = 1;
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

    *(result + 328) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1004387E0(uint64_t a1)
{
  v29 = a1;
  v2 = type metadata accessor for InteractiveSectionBackgroundScrollObserver.State(0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v27 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v26 = &v25 - v6;
  v7 = sub_10002849C(&qword_10097E110);
  __chkstk_darwin(v7 - 8);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v25 - v11;
  v13 = sub_10002849C(&qword_10097E128);
  v14 = v13 - 8;
  __chkstk_darwin(v13);
  v16 = &v25 - v15;
  v17 = OBJC_IVAR____TtC8AppStore45InteractiveSectionBackgroundScrollCoordinator_currentState;
  swift_beginAccess();
  v18 = *(v14 + 56);
  v28 = v1;
  sub_100031660(v1 + v17, v16, &qword_10097E110);
  sub_100031660(v29, &v16[v18], &qword_10097E110);
  v19 = *(v3 + 48);
  if (v19(v16, 1, v2) == 1)
  {
    if (v19(&v16[v18], 1, v2) == 1)
    {
      return sub_10002B894(v16, &qword_10097E110);
    }

    goto LABEL_6;
  }

  sub_100031660(v16, v12, &qword_10097E110);
  if (v19(&v16[v18], 1, v2) == 1)
  {
    sub_1002B81D0(v12);
LABEL_6:
    v21 = &qword_10097E128;
    goto LABEL_13;
  }

  v22 = v26;
  sub_1002B816C(&v16[v18], v26);
  if (static ShelfBackground.== infix(_:_:)() & 1) != 0 && *&v12[*(v2 + 20)] == *(v22 + *(v2 + 20)) && (static IndexPath.== infix(_:_:)())
  {
    v23 = static ShelfBackground.== infix(_:_:)();
    sub_1002B81D0(v22);
    sub_1002B81D0(v12);
    result = sub_10002B894(v16, &qword_10097E110);
    if (v23)
    {
      return result;
    }

    goto LABEL_14;
  }

  sub_1002B81D0(v22);
  sub_1002B81D0(v12);
  v21 = &qword_10097E110;
LABEL_13:
  sub_10002B894(v16, v21);
LABEL_14:
  sub_100031660(v28 + v17, v9, &qword_10097E110);
  if (v19(v9, 1, v2) == 1)
  {
    return sub_10002B894(v9, &qword_10097E110);
  }

  v24 = v27;
  sub_1002B816C(v9, v27);
  sub_100438BC0();
  return sub_1002B81D0(v24);
}

uint64_t sub_100438BC0()
{
  v0 = type metadata accessor for IndexPath();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  IndexPath.init(item:section:)();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong || (v5 = Strong, type metadata accessor for InteractiveSectionBackgroundView(), static UICollectionReusableView.elementKind.getter(), v6 = String._bridgeToObjectiveC()(), , isa = IndexPath._bridgeToObjectiveC()().super.isa, v8 = [v5 _visibleDecorationViewOfKind:v6 atIndexPath:isa], v5, v6, isa, !v8) || (*&v16[0] = v8, sub_1002B8230(), sub_10002849C(&unk_10097E150), (swift_dynamicCast() & 1) == 0))
  {
    v19 = 0;
    memset(v18, 0, sizeof(v18));
  }

  sub_100438E58(v18);
  v9 = swift_unknownObjectWeakLoadStrong();
  if (!v9 || (v10 = v9, v11 = UICollectionElementKindSectionHeader, v12 = IndexPath._bridgeToObjectiveC()().super.isa, v13 = [v10 _visibleSupplementaryViewOfKind:v11 atIndexPath:v12], v10, v11, v12, !v13) || (v15[1] = v13, sub_1002B8230(), sub_10002849C(&unk_10097E150), (swift_dynamicCast() & 1) == 0))
  {
    v17 = 0;
    memset(v16, 0, sizeof(v16));
  }

  sub_100438E58(v16);
  (*(v1 + 8))(v3, v0);
  sub_10002B894(v16, &unk_10097E140);
  return sub_10002B894(v18, &unk_10097E140);
}

uint64_t sub_100438E58(uint64_t a1)
{
  v49 = sub_10002849C(&qword_10097E128);
  __chkstk_darwin(v49);
  v50 = &v43 - v3;
  v4 = sub_10002849C(&qword_10097E110);
  __chkstk_darwin(v4 - 8);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v43 - v8;
  __chkstk_darwin(v10);
  v12 = &v43 - v11;
  __chkstk_darwin(v13);
  v15 = (&v43 - v14);
  v16 = type metadata accessor for InteractiveSectionBackgroundScrollObserver.State(0);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v43 - v21;
  sub_100031660(a1, &v51, &unk_10097E140);
  if (!v52)
  {
    return sub_10002B894(&v51, &unk_10097E140);
  }

  v47 = v12;
  v48 = v22;
  sub_100177264(&v51, v54);
  v23 = OBJC_IVAR____TtC8AppStore45InteractiveSectionBackgroundScrollCoordinator_currentState;
  swift_beginAccess();
  sub_100031660(v1 + v23, v15, &qword_10097E110);
  v24 = *(v17 + 48);
  if (v24(v15, 1, v16) == 1)
  {
    v25 = &qword_10097E110;
    v26 = v15;
LABEL_21:
    sub_10002B894(v26, v25);
    return sub_100007000(v54);
  }

  v43 = v19;
  v44 = v6;
  v45 = a1;
  v46 = v1;
  v28 = v48;
  sub_1002B816C(v15, v48);
  v29 = v55;
  v30 = v56;
  sub_10002A400(v54, v55);
  v31 = v47;
  (*(v30 + 8))(v29, v30);
  sub_1002AE770(v28, v9);
  (*(v17 + 56))(v9, 0, 1, v16);
  v32 = v50;
  v33 = *(v49 + 48);
  sub_100031660(v31, v50, &qword_10097E110);
  sub_100031660(v9, v32 + v33, &qword_10097E110);
  if (v24(v32, 1, v16) == 1)
  {
    sub_10002B894(v9, &qword_10097E110);
    sub_10002B894(v31, &qword_10097E110);
    if (v24((v32 + v33), 1, v16) == 1)
    {
      sub_10002B894(v32, &qword_10097E110);
LABEL_8:
      sub_1002B81D0(v48);
      return sub_100007000(v54);
    }

    goto LABEL_11;
  }

  v34 = v44;
  sub_100031660(v32, v44, &qword_10097E110);
  if (v24((v32 + v33), 1, v16) == 1)
  {
    sub_10002B894(v9, &qword_10097E110);
    sub_10002B894(v47, &qword_10097E110);
    sub_1002B81D0(v34);
LABEL_11:
    sub_10002B894(v32, &qword_10097E128);
    v35 = v46;
    goto LABEL_18;
  }

  v36 = v43;
  sub_1002B816C(v32 + v33, v43);
  v37 = static ShelfBackground.== infix(_:_:)();
  v35 = v46;
  if (v37 & 1) != 0 && *(v34 + *(v16 + 20)) == *(v36 + *(v16 + 20)) && (static IndexPath.== infix(_:_:)())
  {
    v38 = static ShelfBackground.== infix(_:_:)();
    sub_1002B81D0(v36);
    sub_10002B894(v9, &qword_10097E110);
    sub_10002B894(v47, &qword_10097E110);
    sub_1002B81D0(v34);
    sub_10002B894(v32, &qword_10097E110);
    if (v38)
    {
      goto LABEL_8;
    }
  }

  else
  {
    sub_1002B81D0(v36);
    sub_10002B894(v9, &qword_10097E110);
    sub_10002B894(v47, &qword_10097E110);
    sub_1002B81D0(v34);
    sub_10002B894(v32, &qword_10097E110);
  }

LABEL_18:
  sub_100031660(v45, &v51, &unk_10097E140);
  v39 = v52;
  if (!v52)
  {
    sub_1002B81D0(v48);
    v25 = &unk_10097E140;
    v26 = &v51;
    goto LABEL_21;
  }

  v40 = v53;
  sub_10002A400(&v51, v52);
  v41 = *(v35 + 80);
  v42 = v48;
  (*(v40 + 16))(v48, v41, v39, v40);
  sub_1002B81D0(v42);
  sub_100007000(&v51);
  return sub_100007000(v54);
}

uint64_t sub_10043946C()
{
  swift_unknownObjectWeakDestroy();

  swift_unknownObjectRelease();
  sub_10002B894(v0 + OBJC_IVAR____TtC8AppStore45InteractiveSectionBackgroundScrollCoordinator_currentState, &qword_10097E110);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for InteractiveSectionBackgroundScrollCoordinator()
{
  result = qword_100985838;
  if (!qword_100985838)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10043954C()
{
  sub_1002AE2E8();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_100439620(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1002B6F50(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_10043969C(v6);
  return specialized ContiguousArray._endMutation()();
}

void sub_10043969C(uint64_t *a1)
{
  v2 = a1[1];
  v3 = _minimumMergeRunLength(_:)(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_10002849C(&unk_10097E130);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_1004399D4(v8, v9, a1, v4);
      *(v7 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1004397AC(0, v2, 1, a1);
  }
}

void sub_1004397AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v33 = type metadata accessor for IndexPath();
  __chkstk_darwin(v33);
  v32 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v27 - v11;
  v28 = a2;
  if (a3 != a2)
  {
    v13 = (v10 + 8);
    v34 = *a4;
    v14 = v34 + 8 * a3 - 8;
    v15 = a1 - a3;
LABEL_5:
    v30 = v14;
    v31 = a3;
    v16 = *(v34 + 8 * a3);
    v29 = v15;
    v17 = v15;
    while (1)
    {
      v18 = *v14;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v19 = [v16 indexPath];
      static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

      v20 = [v18 indexPath];
      v21 = v32;
      static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

      LOBYTE(v20) = static IndexPath.< infix(_:_:)();
      v22 = *v13;
      v23 = v21;
      v24 = v33;
      (*v13)(v23, v33);
      v22(v12, v24);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      if ((v20 & 1) == 0)
      {
LABEL_4:
        a3 = v31 + 1;
        v14 = v30 + 8;
        v15 = v29 - 1;
        if (v31 + 1 == v28)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v34)
      {
        break;
      }

      v25 = *v14;
      v16 = *(v14 + 8);
      *v14 = v16;
      *(v14 + 8) = v25;
      v14 -= 8;
      if (__CFADD__(v17++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1004399D4(unint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = v4;
  v111 = a1;
  v120 = type metadata accessor for IndexPath();
  __chkstk_darwin(v120);
  v119 = &v105 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v118 = &v105 - v12;
  v13 = a3[1];
  if (v13 < 1)
  {
    v15 = _swiftEmptyArrayStorage;
LABEL_88:
    v5 = *v111;
    if (!*v111)
    {
      goto LABEL_127;
    }

    a4 = v15;
    v16 = a3;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v100 = a4;
    }

    else
    {
LABEL_121:
      v100 = sub_1002B6D90(a4);
    }

    v121 = v100;
    v101 = *(v100 + 2);
    if (v101 >= 2)
    {
      while (*v16)
      {
        a4 = *&v100[2 * v101];
        v102 = v100;
        v103 = *&v100[2 * v101 + 3];
        sub_10043A25C((*v16 + 8 * a4), (*v16 + 8 * *&v100[2 * v101 + 2]), (*v16 + 8 * v103), v5);
        if (v6)
        {
          goto LABEL_99;
        }

        if (v103 < a4)
        {
          goto LABEL_114;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v102 = sub_1002B6D90(v102);
        }

        if (v101 - 2 >= *(v102 + 2))
        {
          goto LABEL_115;
        }

        v104 = &v102[2 * v101];
        *v104 = a4;
        v104[1] = v103;
        v121 = v102;
        sub_1002B6D04(v101 - 1);
        v100 = v121;
        v101 = *(v121 + 2);
        if (v101 <= 1)
        {
          goto LABEL_99;
        }
      }

      goto LABEL_125;
    }

LABEL_99:

    return;
  }

  v14 = 0;
  v117 = (v11 + 8);
  v15 = _swiftEmptyArrayStorage;
  v110 = a4;
  v106 = a3;
  while (1)
  {
    v16 = v14++;
    if (v14 < v13)
    {
      v115 = v13;
      v108 = v15;
      v109 = v6;
      v17 = *a3;
      v18 = *(*a3 + 8 * v14);
      v114 = 8 * v16;
      v19 = (v17 + 8 * v16);
      v20 = *v19;
      v5 = (v19 + 2);
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v21 = [v18 indexPath];
      v22 = v118;
      static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

      v23 = [v20 indexPath];
      v24 = v119;
      static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

      LODWORD(v116) = static IndexPath.< infix(_:_:)();
      v25 = *v117;
      v26 = v120;
      (*v117)(v24, v120);
      v25(v22, v26);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v107 = v16;
      v27 = (v16 + 2);
      while (1)
      {
        v14 = v115;
        if (v115 == v27)
        {
          break;
        }

        v28 = *(v5 - 8);
        v29 = *v5;
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        v30 = [v29 indexPath];
        v31 = v118;
        static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

        v32 = [v28 indexPath];
        v33 = v119;
        static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

        LODWORD(v32) = static IndexPath.< infix(_:_:)() & 1;
        v34 = v33;
        v35 = v120;
        v25(v34, v120);
        v25(v31, v35);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        ++v27;
        v5 += 8;
        if ((v116 & 1) != v32)
        {
          v14 = (v27 - 1);
          break;
        }
      }

      v15 = v108;
      v6 = v109;
      a4 = v110;
      v16 = v107;
      v36 = v114;
      if (v116)
      {
        if (v14 < v107)
        {
          goto LABEL_118;
        }

        a3 = v106;
        if (v107 < v14)
        {
          v37 = 8 * v14 - 8;
          v38 = v14;
          v39 = v107;
          do
          {
            if (v39 != --v38)
            {
              v41 = *a3;
              if (!*a3)
              {
                goto LABEL_124;
              }

              v40 = *(v41 + v36);
              *(v41 + v36) = *(v41 + v37);
              *(v41 + v37) = v40;
            }

            v39 = (v39 + 1);
            v37 -= 8;
            v36 += 8;
          }

          while (v39 < v38);
        }
      }

      else
      {
        a3 = v106;
      }
    }

    v42 = a3[1];
    if (v14 < v42)
    {
      if (__OFSUB__(v14, v16))
      {
        goto LABEL_117;
      }

      if (v14 - v16 < a4)
      {
        v43 = (v16 + a4);
        if (__OFADD__(v16, a4))
        {
          goto LABEL_119;
        }

        if (v43 >= v42)
        {
          v43 = a3[1];
        }

        if (v43 < v16)
        {
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (v14 != v43)
        {
          break;
        }
      }
    }

LABEL_36:
    if (v14 < v16)
    {
      goto LABEL_116;
    }

    v56 = v15;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v15 = v56;
    }

    else
    {
      v15 = sub_100034940(0, *(v56 + 16) + 1, 1, v56);
    }

    a4 = *(v15 + 2);
    v57 = *(v15 + 3);
    v5 = a4 + 1;
    if (a4 >= v57 >> 1)
    {
      v15 = sub_100034940((v57 > 1), a4 + 1, 1, v15);
    }

    *(v15 + 2) = v5;
    v58 = &v15[2 * a4];
    *(v58 + 4) = v16;
    *(v58 + 5) = v14;
    v59 = *v111;
    if (!*v111)
    {
      goto LABEL_126;
    }

    if (a4)
    {
      while (1)
      {
        v60 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v61 = *(v15 + 4);
          v62 = *(v15 + 5);
          v71 = __OFSUB__(v62, v61);
          v63 = v62 - v61;
          v64 = v71;
LABEL_56:
          if (v64)
          {
            goto LABEL_105;
          }

          v77 = &v15[2 * v5];
          v79 = *v77;
          v78 = *(v77 + 1);
          v80 = __OFSUB__(v78, v79);
          v81 = v78 - v79;
          v82 = v80;
          if (v80)
          {
            goto LABEL_108;
          }

          v83 = &v15[2 * v60 + 4];
          v85 = *v83;
          v84 = *(v83 + 1);
          v71 = __OFSUB__(v84, v85);
          v86 = v84 - v85;
          if (v71)
          {
            goto LABEL_111;
          }

          if (__OFADD__(v81, v86))
          {
            goto LABEL_112;
          }

          if (v81 + v86 >= v63)
          {
            if (v63 < v86)
            {
              v60 = v5 - 2;
            }

            goto LABEL_77;
          }

          goto LABEL_70;
        }

        v87 = &v15[2 * v5];
        v89 = *v87;
        v88 = *(v87 + 1);
        v71 = __OFSUB__(v88, v89);
        v81 = v88 - v89;
        v82 = v71;
LABEL_70:
        if (v82)
        {
          goto LABEL_107;
        }

        v90 = &v15[2 * v60];
        v92 = *(v90 + 4);
        v91 = *(v90 + 5);
        v71 = __OFSUB__(v91, v92);
        v93 = v91 - v92;
        if (v71)
        {
          goto LABEL_110;
        }

        if (v93 < v81)
        {
          goto LABEL_3;
        }

LABEL_77:
        a4 = v60 - 1;
        if (v60 - 1 >= v5)
        {
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if (!*a3)
        {
          goto LABEL_123;
        }

        v98 = v15;
        v5 = *&v15[2 * a4 + 4];
        v16 = *&v15[2 * v60 + 5];
        sub_10043A25C((*a3 + 8 * v5), (*a3 + 8 * *&v15[2 * v60 + 4]), (*a3 + 8 * v16), v59);
        if (v6)
        {
          goto LABEL_99;
        }

        if (v16 < v5)
        {
          goto LABEL_101;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v98 = sub_1002B6D90(v98);
        }

        if (a4 >= *(v98 + 2))
        {
          goto LABEL_102;
        }

        v99 = &v98[2 * a4];
        *(v99 + 4) = v5;
        *(v99 + 5) = v16;
        v121 = v98;
        a4 = &v121;
        sub_1002B6D04(v60);
        v15 = v121;
        v5 = *(v121 + 2);
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v65 = &v15[2 * v5 + 4];
      v66 = *(v65 - 64);
      v67 = *(v65 - 56);
      v71 = __OFSUB__(v67, v66);
      v68 = v67 - v66;
      if (v71)
      {
        goto LABEL_103;
      }

      v70 = *(v65 - 48);
      v69 = *(v65 - 40);
      v71 = __OFSUB__(v69, v70);
      v63 = v69 - v70;
      v64 = v71;
      if (v71)
      {
        goto LABEL_104;
      }

      v72 = &v15[2 * v5];
      v74 = *v72;
      v73 = *(v72 + 1);
      v71 = __OFSUB__(v73, v74);
      v75 = v73 - v74;
      if (v71)
      {
        goto LABEL_106;
      }

      v71 = __OFADD__(v63, v75);
      v76 = v63 + v75;
      if (v71)
      {
        goto LABEL_109;
      }

      if (v76 >= v68)
      {
        v94 = &v15[2 * v60 + 4];
        v96 = *v94;
        v95 = *(v94 + 1);
        v71 = __OFSUB__(v95, v96);
        v97 = v95 - v96;
        if (v71)
        {
          goto LABEL_113;
        }

        if (v63 < v97)
        {
          v60 = v5 - 2;
        }

        goto LABEL_77;
      }

      goto LABEL_56;
    }

LABEL_3:
    v13 = a3[1];
    a4 = v110;
    if (v14 >= v13)
    {
      goto LABEL_88;
    }
  }

  v108 = v15;
  v109 = v6;
  v116 = *a3;
  v44 = v116 + 8 * v14 - 8;
  v107 = v16;
  a4 = v16 - v14;
  v112 = v43;
LABEL_29:
  v114 = v44;
  v115 = v14;
  v5 = *(v116 + 8 * v14);
  v113 = a4;
  v45 = v44;
  while (1)
  {
    v46 = *v45;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v47 = [v5 indexPath];
    v48 = v118;
    static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

    v49 = [v46 indexPath];
    v50 = v119;
    static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

    LOBYTE(v49) = static IndexPath.< infix(_:_:)();
    v51 = *v117;
    v52 = v50;
    v53 = v120;
    (*v117)(v52, v120);
    v51(v48, v53);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    if ((v49 & 1) == 0)
    {
LABEL_28:
      v14 = v115 + 1;
      v44 = v114 + 8;
      a4 = v113 - 1;
      if ((v115 + 1) != v112)
      {
        goto LABEL_29;
      }

      v14 = v112;
      v15 = v108;
      v6 = v109;
      a3 = v106;
      v16 = v107;
      goto LABEL_36;
    }

    if (!v116)
    {
      break;
    }

    v54 = *v45;
    v5 = *(v45 + 8);
    *v45 = v5;
    *(v45 + 8) = v54;
    v45 -= 8;
    if (__CFADD__(a4++, 1))
    {
      goto LABEL_28;
    }
  }

  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
}

uint64_t sub_10043A25C(void **a1, void **a2, void **a3, void **a4)
{
  v51 = type metadata accessor for IndexPath();
  v8 = *(v51 - 8);
  __chkstk_darwin(v51);
  v50 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v49 = &v45 - v11;
  v12 = a2 - a1 + 7;
  if (a2 - a1 >= 0)
  {
    v12 = a2 - a1;
  }

  v13 = v12 >> 3;
  v14 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v14 = a3 - a2;
  }

  v15 = v14 >> 3;
  if (v13 >= v14 >> 3)
  {
    v52 = a1;
    a1 = a2;
    if (a4 != a2 || &a2[v15] <= a4)
    {
      memmove(a4, a2, 8 * v15);
    }

    v54 = &a4[v15];
    if (a3 - a2 >= 8 && a2 > v52)
    {
      v46 = a4;
      v47 = (v8 + 8);
LABEL_27:
      v45 = a1;
      v29 = a1 - 1;
      v30 = a3 - 1;
      v31 = v54;
      v48 = a1 - 1;
      do
      {
        v53 = v30;
        v32 = v30 + 1;
        v33 = *--v31;
        v34 = *v29;
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        v35 = [v33 indexPath];
        v36 = v49;
        static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

        v37 = [v34 indexPath];
        v38 = v50;
        static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

        LOBYTE(v37) = static IndexPath.< infix(_:_:)();
        v39 = *v47;
        v40 = v38;
        v41 = v51;
        (*v47)(v40, v51);
        v39(v36, v41);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        if (v37)
        {
          a4 = v46;
          a3 = v53;
          v43 = v48;
          if (v32 != v45)
          {
            *v53 = *v48;
          }

          if (v54 <= a4 || (a1 = v43, v43 <= v52))
          {
            a1 = v43;
            goto LABEL_39;
          }

          goto LABEL_27;
        }

        a4 = v46;
        v42 = v53;
        if (v32 != v54)
        {
          *v53 = *v31;
        }

        v30 = v42 - 1;
        v54 = v31;
        v29 = v48;
      }

      while (v31 > a4);
      v54 = v31;
      a1 = v45;
    }
  }

  else
  {
    if (a4 != a1 || &a1[v13] <= a4)
    {
      memmove(a4, a1, 8 * v13);
    }

    v54 = &a4[v13];
    if (a2 - a1 >= 8 && a2 < a3)
    {
      v53 = a3;
      v16 = (v8 + 8);
      while (1)
      {
        v52 = a1;
        v17 = *a2;
        v18 = *a4;
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        v19 = [v17 indexPath];
        v20 = v49;
        static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

        v21 = [v18 indexPath];
        v22 = v50;
        static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

        LOBYTE(v21) = static IndexPath.< infix(_:_:)();
        v23 = *v16;
        v24 = v22;
        v25 = v51;
        (*v16)(v24, v51);
        v23(v20, v25);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        if ((v21 & 1) == 0)
        {
          break;
        }

        v26 = a2;
        v27 = v52;
        v28 = v52 == a2++;
        if (!v28)
        {
          goto LABEL_17;
        }

LABEL_18:
        a1 = v27 + 1;
        if (a4 >= v54 || a2 >= v53)
        {
          goto LABEL_39;
        }
      }

      v26 = a4;
      v27 = v52;
      v28 = v52 == a4++;
      if (v28)
      {
        goto LABEL_18;
      }

LABEL_17:
      *v27 = *v26;
      goto LABEL_18;
    }
  }

LABEL_39:
  if (a1 != a4 || a1 >= (a4 + ((v54 - a4 + (v54 - a4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(a1, a4, 8 * (v54 - a4));
  }

  return 1;
}

uint64_t sub_10043A6F4(uint64_t a1, double a2, double a3, double a4, double a5, double a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  type metadata accessor for InteractiveSectionBackgroundScrollCoordinator();
  v21 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v22 = OBJC_IVAR____TtC8AppStore45InteractiveSectionBackgroundScrollCoordinator_currentState;
  v23 = type metadata accessor for InteractiveSectionBackgroundScrollObserver.State(0);
  (*(*(v23 - 8) + 56))(v21 + v22, 1, 1, v23);
  *(v21 + 16) = a1;
  *(v21 + 24) = a2;
  *(v21 + 32) = a3;
  *(v21 + 40) = a4;
  *(v21 + 48) = a5;
  *(v21 + 64) = a6;
  swift_unknownObjectWeakAssign();
  *(v21 + 88) = a8;
  *(v21 + 96) = a12;
  *(v21 + 80) = a9;
  swift_unknownObjectRetain();
  *(v21 + 56) = dispatch thunk of ShelfPresenter.rowsPerColumn(for:)();
  return v21;
}

void sub_10043A81C(void (**a1)(char *, uint64_t), double a2)
{
  v3 = v2;
  v96 = a1;
  v5 = sub_10002849C(&qword_10097E110);
  __chkstk_darwin(v5 - 8);
  v94 = v84 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v93 = v84 - v8;
  v9 = type metadata accessor for IndexPath();
  v103 = *(v9 - 8);
  __chkstk_darwin(v9);
  v98 = v84 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v95 = v84 - v12;
  __chkstk_darwin(v13);
  v99 = v84 - v14;
  __chkstk_darwin(v15);
  v100 = v84 - v16;
  __chkstk_darwin(v17);
  v101 = v84 - v18;
  v19 = type metadata accessor for ShelfBackground();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v91 = v84 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v97 = v84 - v23;
  __chkstk_darwin(v24);
  v102 = v84 - v25;
  __chkstk_darwin(v26);
  v28 = v84 - v27;
  __chkstk_darwin(v29);
  v31 = v84 - v30;
  v32 = *(v2 + 16);
  v33 = *(v2 + 88);
  v104 = v3;
  v34 = *(v3 + 96);
  ObjectType = swift_getObjectType();
  if (v32 >= dispatch thunk of ShelfPresenter.sectionCount.getter())
  {
    return;
  }

  v90 = v32;
  dispatch thunk of ShelfPresenter.background(for:)();
  (*(v20 + 104))(v28, enum case for ShelfBackground.interactive(_:), v19);
  v36 = static ShelfBackground.== infix(_:_:)();
  v92 = v20;
  v37 = *(v20 + 8);
  v37(v28, v19);
  v88 = v20 + 8;
  v87 = v37;
  v37(v31, v19);
  if ((v36 & 1) == 0)
  {
    return;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v39 = Strong;
  v84[3] = ObjectType;
  v84[2] = v33;
  v84[1] = v34;
  v85 = v19;
  v40 = *(v104 + 32);

  v105[0] = sub_1002B6EA8(v41);
  sub_100439620(v105);
  v42 = v105[0];
  v89 = v9;
  if ((v105[0] & 0x8000000000000000) != 0 || (v105[0] & 0x4000000000000000) != 0)
  {
LABEL_41:
    v43 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v43 = *(v105[0] + 16);
  }

  v86 = v39;
  if (v43)
  {
    if (v43 < 1)
    {
      goto LABEL_43;
    }

    v44 = 0;
    v96 = (v103 + 8);
    v84[0] = v103 + 32;
    v45 = _swiftEmptyArrayStorage;
    while (1)
    {
      if ((v42 & 0xC000000000000001) != 0)
      {
        v39 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v39 = *(v42 + 8 * v44 + 32);
        swift_unknownObjectRetain();
      }

      if ([v39 representedElementCategory])
      {
        goto LABEL_21;
      }

      [v39 frame];
      v46 = CGRectGetMinX(v106) - *(v104 + 64) - a2;
      [v39 frame];
      v47 = CGRectGetMaxX(v107) - a2;
      if (v46 > v47)
      {
        __break(1u);
LABEL_40:
        __break(1u);
        goto LABEL_41;
      }

      if (v46 > v40 || v40 >= v47)
      {
        goto LABEL_21;
      }

      v48 = v45;
      v49 = [v39 indexPath];
      v50 = v101;
      static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

      v51 = IndexPath.item.getter();
      (*v96)(v50, v89);
      v52 = *(v104 + 56);
      if (!v52)
      {
        goto LABEL_40;
      }

      v45 = v48;
      if (v51 == 0x8000000000000000 && v52 == -1)
      {
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);

        __break(1u);
        return;
      }

      if (v51 % v52)
      {
LABEL_21:
        swift_unknownObjectRelease();
      }

      else
      {
        v53 = [v39 indexPath];
        static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v45 = sub_10003421C(0, *(v48 + 2) + 1, 1, v48);
        }

        v55 = *(v45 + 2);
        v54 = *(v45 + 3);
        if (v55 >= v54 >> 1)
        {
          v45 = sub_10003421C(v54 > 1, v55 + 1, 1, v45);
        }

        swift_unknownObjectRelease();
        *(v45 + 2) = v55 + 1;
        (*(v103 + 32))(v45 + ((*(v103 + 80) + 32) & ~*(v103 + 80)) + *(v103 + 72) * v55, v100, v89);
      }

      if (v43 == ++v44)
      {
        goto LABEL_30;
      }
    }
  }

  v45 = _swiftEmptyArrayStorage;
LABEL_30:

  if (*(v45 + 2))
  {
    v56 = v103;
    v57 = v45 + ((*(v56 + 80) + 32) & ~*(v56 + 80));
    v58 = v95;
    v59 = v89;
    v101 = *(v103 + 16);
    (v101)(v95, v57, v89);

    v60 = v99;
    (*(v56 + 32))(v99, v58, v59);
    if (__OFADD__(IndexPath.item.getter(), *(v104 + 56)))
    {
      goto LABEL_44;
    }

    IndexPath.init(item:section:)();
    dispatch thunk of ShelfPresenter.interactiveShelfBackground(at:)();
    v61 = v97;
    dispatch thunk of ShelfPresenter.interactiveShelfBackground(at:)();
    v62 = v92;
    v63 = *(v92 + 16);
    v64 = v91;
    v65 = v85;
    v63(v91, v61, v85);
    LODWORD(v62) = (*(v62 + 88))(v64, v65);
    v66 = enum case for ShelfBackground.none(_:);
    v87(v64, v65);
    v67 = 1.0;
    if (v62 != v66)
    {
      v68 = *(v104 + 64);
      v69 = [v86 collectionViewLayout];
      isa = IndexPath._bridgeToObjectiveC()().super.isa;
      v71 = [v69 layoutAttributesForItemAtIndexPath:isa];

      v60 = v99;
      if (v71)
      {
        [v71 frame];
        v72 = CGRectGetMinX(v108) - v40 - a2;
        [v71 frame];
        Width = CGRectGetWidth(v109);

        v67 = (v72 + v68 + Width) / (v68 + Width);
        if (v67 >= 1.0)
        {
          v67 = 1.0;
        }
      }
    }

    v74 = v93;
    v75 = v85;
    v63(v93, v102, v85);
    v76 = type metadata accessor for InteractiveSectionBackgroundScrollObserver.State(0);
    v77 = v89;
    (v101)(v74 + v76[6], v60, v89);
    v78 = v97;
    v63((v74 + v76[7]), v97, v75);
    *(v74 + v76[5]) = v67;
    (*(*(v76 - 1) + 56))(v74, 0, 1, v76);
    v79 = OBJC_IVAR____TtC8AppStore45InteractiveSectionBackgroundScrollCoordinator_currentState;
    v80 = v104;
    swift_beginAccess();
    v81 = v94;
    sub_100031660(v80 + v79, v94, &qword_10097E110);
    swift_beginAccess();
    sub_1002B80FC(v74, v80 + v79);
    swift_endAccess();
    sub_1004387E0(v81);

    sub_10002B894(v81, &qword_10097E110);
    sub_10002B894(v74, &qword_10097E110);
    v82 = v87;
    v87(v78, v75);
    v82(v102, v75);
    v83 = *(v103 + 8);
    v83(v98, v77);
    v83(v60, v77);
  }

  else
  {
  }
}

uint64_t sub_10043B2F0()
{
  v0 = type metadata accessor for SystemImage();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10043B608();
  v4._countAndFlagsBits = 0x4E495F4E474953;
  v4._object = 0xE700000000000000;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  localizedString(_:comment:)(v4, v5);
  (*(v1 + 104))(v3, enum case for SystemImage.personCropCircle(_:), v0);
  static SystemImage.load(_:with:)();
  (*(v1 + 8))(v3, v0);
  memset(v7, 0, sizeof(v7));
  result = UICommand.init(title:subtitle:image:selectedImage:action:propertyList:alternates:discoverabilityTitle:attributes:state:)();
  qword_1009D0410 = result;
  return result;
}

uint64_t sub_10043B47C()
{
  v0 = type metadata accessor for SystemImage();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10043B608();
  v4._countAndFlagsBits = 0x54554F5F4E474953;
  v4._object = 0xE800000000000000;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  localizedString(_:comment:)(v4, v5);
  (*(v1 + 104))(v3, enum case for SystemImage.rectanglePortraitAndArrowRight(_:), v0);
  static SystemImage.load(_:with:)();
  (*(v1 + 8))(v3, v0);
  memset(v7, 0, sizeof(v7));
  result = UICommand.init(title:subtitle:image:selectedImage:action:propertyList:alternates:discoverabilityTitle:attributes:state:)();
  qword_1009D0418 = result;
  return result;
}

unint64_t sub_10043B608()
{
  result = qword_100985950;
  if (!qword_100985950)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100985950);
  }

  return result;
}

uint64_t sub_10043B654()
{
  v0 = type metadata accessor for SystemImage();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10043B608();
  v4._object = 0x8000000100813610;
  v4._countAndFlagsBits = 0xD000000000000022;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  localizedString(_:comment:)(v4, v5);
  (*(v1 + 104))(v3, enum case for SystemImage.appstore(_:), v0);
  static SystemImage.load(_:with:)();
  (*(v1 + 8))(v3, v0);
  memset(v7, 0, sizeof(v7));
  result = UICommand.init(title:subtitle:image:selectedImage:action:propertyList:alternates:discoverabilityTitle:attributes:state:)();
  qword_1009D0420 = result;
  return result;
}

uint64_t sub_10043B7E4()
{
  v0 = type metadata accessor for SystemImage();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10043B608();
  (*(v1 + 104))(v3, enum case for SystemImage.ant(_:), v0);
  static SystemImage.load(_:with:)();
  (*(v1 + 8))(v3, v0);
  memset(v5, 0, sizeof(v5));
  result = UICommand.init(title:subtitle:image:selectedImage:action:propertyList:alternates:discoverabilityTitle:attributes:state:)();
  qword_1009D0428 = result;
  return result;
}

uint64_t type metadata accessor for FadeOutDynamicTypeLabel()
{
  result = qword_100985968;
  if (!qword_100985968)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10043BA00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v26 = a7;
  v27 = a8;
  v25 = a5;
  v24 = a3;
  v11 = type metadata accessor for DirectionalTextAlignment();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10002849C(&qword_100972ED0);
  __chkstk_darwin(v15 - 8);
  v17 = &v24 - v16;
  v18 = objc_allocWithZone(v8);
  v19 = qword_100985958;
  v20 = objc_allocWithZone(type metadata accessor for InvertedGradientLayer());
  *&v18[v19] = [v20 init];
  v21 = &v18[qword_100985960];
  *v21 = 0;
  v21[8] = 1;
  sub_1003DB684(a1, v17);
  (*(v12 + 16))(v14, a6, v11);
  v22 = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  (*(v12 + 8))(a6, v11);
  sub_10025BAF0(a1);
  return v22;
}

void sub_10043BBE0()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for LabelPlaceholder();
  v61 = *(v3 - 8);
  v62 = v3;
  __chkstk_darwin(v3);
  v5 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = type metadata accessor for TextAppearance();
  v60 = *(v63 - 8);
  __chkstk_darwin(v63);
  v7 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v56 - v9;
  v11 = sub_10002849C(&qword_100972ED0);
  __chkstk_darwin(v11 - 8);
  v13 = &v56 - v12;
  v14 = type metadata accessor for FontUseCase();
  v15 = *(v14 - 8);
  *&v16 = __chkstk_darwin(v14).n128_u64[0];
  v18 = &v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64.receiver = v1;
  v64.super_class = ObjectType;
  objc_msgSendSuper2(&v64, "layoutSubviews", v16);
  v19 = [v1 text];
  if (!v19)
  {
    goto LABEL_4;
  }

  v20 = v19;
  v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;

  if (v1[qword_100985960 + 8])
  {

LABEL_4:
    v23 = [v1 layer];
    [v23 setMask:0];

    return;
  }

  v56 = v22;
  v58 = v10;
  v24 = *&v1[qword_100985960];
  dispatch thunk of DynamicTypeLabel.fontUseCase.getter();
  v25 = *(v15 + 48);
  if (v25(v13, 1, v14) == 1)
  {
    *v18 = UIFontTextStyleBody;
    *(v18 + 2) = 0;
    (*(v15 + 104))(v18, enum case for FontUseCase.preferredFont(_:), v14);
    v26 = v25(v13, 1, v14);
    v27 = UIFontTextStyleBody;
    if (v26 != 1)
    {
      sub_10025BAF0(v13);
    }
  }

  else
  {
    (*(v15 + 32))(v18, v13, v14);
  }

  sub_1000367E8();
  v28 = [v1 traitCollection];
  v29 = static UIFont.preferredFont(forUseWith:compatibleWith:)();

  (*(v15 + 8))(v18, v14);
  v30 = v29;
  [v1 bounds];
  CGRectGetWidth(v65);
  TextAppearance.init()();
  v31 = v58;
  TextAppearance.withFont(_:)();
  v32 = v60;
  v33 = v63;
  v57 = *(v60 + 8);
  v57(v7, v63);
  (*(v32 + 16))(v7, v31, v33);
  LabelPlaceholder.Options.init(rawValue:)();
  LabelPlaceholder.init(_:with:where:)();
  v34 = [v1 traitCollection];
  LabelPlaceholder.measure(toFit:with:)();
  v36 = v35;
  v38 = v37;

  (*(v61 + 8))(v5, v62);
  [v1 bounds];
  v66.size.width = v36;
  v66.size.height = v38;
  Height = CGRectGetHeight(v66);
  [v1 bounds];
  v40 = CGRectGetHeight(v67);
  v41 = [v1 layer];
  v42 = v41;
  if (v40 <= Height)
  {
    v44 = *&v1[qword_100985958];
    [v41 setMask:v44];

    [v30 lineHeight];
    *&v44[OBJC_IVAR____TtC8AppStoreP33_94B25735D188DA0572222549F0689D5E21InvertedGradientLayer_lineHeight] = v45;
    *&v44[OBJC_IVAR____TtC8AppStoreP33_94B25735D188DA0572222549F0689D5E21InvertedGradientLayer_gradientStart] = v24 + 20.0;
    *&v44[OBJC_IVAR____TtC8AppStoreP33_94B25735D188DA0572222549F0689D5E21InvertedGradientLayer_gradientEnd] = v24 + -5.0;
    v46 = v30;
    v47 = v31;
    v48 = [v1 textAlignment];
    v49 = [v1 traitCollection];
    v50 = UITraitCollection.prefersRightToLeftLayouts.getter();

    if (v50)
    {
      v51 = 0;
    }

    else
    {
      v51 = 2;
    }

    v52 = v48 == v51;
    v53 = [v1 traitCollection];
    v54 = UITraitCollection.prefersRightToLeftLayouts.getter();

    if ((v54 ^ v52))
    {
      v55 = 2;
    }

    else
    {
      v55 = 3;
    }

    *&v44[OBJC_IVAR____TtC8AppStoreP33_94B25735D188DA0572222549F0689D5E21InvertedGradientLayer_textDirection] = v55;
    [v1 bounds];
    [v44 setFrame:?];
    [v44 setNeedsDisplay];

    v43 = v47;
  }

  else
  {
    [v41 setMask:0];

    v43 = v31;
  }

  v57(v43, v63);
}

void sub_10043C278(void *a1)
{
  v1 = a1;
  sub_10043BBE0();
}

void sub_10043C2E8(CGContext *a1)
{
  v2 = v1;
  v4 = type metadata accessor for CGPathFillRule();
  v35 = *(v4 - 8);
  v36 = v4;
  __chkstk_darwin(v4);
  v34 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = objc_opt_self();
  v7 = [v6 blackColor];
  v8 = [v7 CGColor];

  CGContextSetFillColorWithColor(a1, v8);
  [v1 bounds];
  x = v42.origin.x;
  width = v42.size.width;
  v12 = v11 - *&v1[OBJC_IVAR____TtC8AppStoreP33_94B25735D188DA0572222549F0689D5E21InvertedGradientLayer_lineHeight];
  v37 = a1;
  v42.size.height = v12;
  CGContextFillRect(a1, v42);
  v13 = *&v1[OBJC_IVAR____TtC8AppStoreP33_94B25735D188DA0572222549F0689D5E21InvertedGradientLayer_textDirection];
  sub_10002849C(&qword_100973210);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1007B15F0;
  if (v13 == 3)
  {
    v15 = &selRef_blackColor;
  }

  else
  {
    v15 = &selRef_clearColor;
  }

  if (v13 == 3)
  {
    v16 = &selRef_clearColor;
  }

  else
  {
    v16 = &selRef_blackColor;
  }

  if (v13 == 3)
  {
    v17 = &unk_1008B0070;
  }

  else
  {
    v17 = &unk_1008B00A0;
  }

  v18 = [v6 *v15];
  v19 = [v18 CGColor];

  *(v14 + 32) = v19;
  v20 = [v6 *v16];
  v21 = [v20 CGColor];

  *(v14 + 40) = v21;
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  type metadata accessor for CGColor(0);
  v38 = DeviceRGB;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v24 = CGGradientCreateWithColors(v38, isa, v17);

  if (v24)
  {
    if (v13 == 3)
    {
      [v2 bounds];
      v25 = CGRectGetMaxX(v43) - *&v2[OBJC_IVAR____TtC8AppStoreP33_94B25735D188DA0572222549F0689D5E21InvertedGradientLayer_gradientStart];
      [v2 bounds];
      v26 = CGRectGetMaxX(v44) - *&v2[OBJC_IVAR____TtC8AppStoreP33_94B25735D188DA0572222549F0689D5E21InvertedGradientLayer_gradientEnd];
      v27 = 1;
    }

    else
    {
      v25 = *&v2[OBJC_IVAR____TtC8AppStoreP33_94B25735D188DA0572222549F0689D5E21InvertedGradientLayer_gradientEnd];
      v26 = *&v2[OBJC_IVAR____TtC8AppStoreP33_94B25735D188DA0572222549F0689D5E21InvertedGradientLayer_gradientStart];
      v27 = 2;
    }

    [v2 bounds];
    v46.size.height = CGRectGetHeight(v45);
    v29 = v37;
    v46.origin.x = x;
    v46.origin.y = v12;
    v46.size.width = width;
    CGContextAddRect(v37, v46);
    v31 = v34;
    v30 = v35;
    v32 = v36;
    (*(v35 + 104))(v34, enum case for CGPathFillRule.winding(_:), v36);
    CGContextRef.clip(using:)();
    (*(v30 + 8))(v31, v32);
    v40.y = 0.5;
    v41.y = 0.5;
    v40.x = v25;
    v41.x = v26;
    CGContextDrawLinearGradient(v29, v24, v40, v41, v27);
  }

  else
  {
    v28 = v38;
  }
}

id sub_10043C89C(void *a1)
{
  *&v1[OBJC_IVAR____TtC8AppStoreP33_94B25735D188DA0572222549F0689D5E21InvertedGradientLayer_lineHeight] = 0;
  *&v1[OBJC_IVAR____TtC8AppStoreP33_94B25735D188DA0572222549F0689D5E21InvertedGradientLayer_gradientStart] = 0;
  *&v1[OBJC_IVAR____TtC8AppStoreP33_94B25735D188DA0572222549F0689D5E21InvertedGradientLayer_gradientEnd] = 0;
  *&v1[OBJC_IVAR____TtC8AppStoreP33_94B25735D188DA0572222549F0689D5E21InvertedGradientLayer_textDirection] = 3;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for InvertedGradientLayer();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

id sub_10043C964()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InvertedGradientLayer();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10043C9C0()
{
  v0 = type metadata accessor for OSLogger.Subsystem();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OSLogger();
  sub_100005644(v4, qword_1009D0440);
  sub_1000056A8(v4, qword_1009D0440);
  if (qword_10096D108 != -1)
  {
    swift_once();
  }

  v5 = sub_1000056A8(v0, qword_1009CE1D0);
  (*(v1 + 16))(v3, v5, v0);
  return OSLogger.init(subsystem:category:)();
}

id sub_10043CB60(uint64_t a1)
{
  v2 = objc_opt_self();
  [v2 setFlushTimerEnabled:1];
  result = [v2 setDisableBackgroundMetrics:0];
  if (*(a1 + OBJC_IVAR____TtC8AppStore11AppDelegate_objectGraph))
  {
    type metadata accessor for AccountDeviceList();
    type metadata accessor for BaseObjectGraph();

    inject<A, B>(_:from:)();
    dispatch thunk of AccountDeviceList.allowFetches.setter();
  }

  return result;
}

void sub_10043CC28(uint64_t a1)
{
  v2 = type metadata accessor for URL();
  v24 = *(v2 - 8);
  v25 = v2;
  __chkstk_darwin(v2);
  v23 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for ReferrerData();
  v4 = *(v22 - 8);
  __chkstk_darwin(v22);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10002849C(&qword_100985B10);
  __chkstk_darwin(v7 - 8);
  v9 = &v19 - v8;
  v10 = type metadata accessor for AppStoreDeepLink();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_1001AF824(sub_1004438F8, v14);

  v15 = OBJC_IVAR____TtC8AppStore11AppDelegate_objectGraph;
  if (*(a1 + OBJC_IVAR____TtC8AppStore11AppDelegate_objectGraph))
  {
    type metadata accessor for ASKBagContract();

    BaseObjectGraph.optional<A>(_:)();

    if (v26)
    {
      static ResilientDeepLinkController.fetchLatestResilientDeepLink(bag:)();
      if ((*(v11 + 48))(v9, 1, v10) != 1)
      {
        (*(v11 + 32))(v13, v9, v10);
        type metadata accessor for MetricsActivity();
        v21 = v11;
        static MetricsActivity.current.getter();
        AppStoreDeepLink.referral.getter();
        dispatch thunk of MetricsActivity.setReferrerData(_:)();

        v20 = *(v4 + 8);
        v16 = v22;
        v20(v6, v22);
        v17 = v23;
        AppStoreDeepLink.url.getter();
        AppStoreDeepLink.referral.getter();
        sub_10043D93C(v17, v6);

        v20(v6, v16);
        (*(v24 + 8))(v17, v25);
        (*(v21 + 8))(v13, v10);
        if (!*(a1 + v15))
        {
          return;
        }

LABEL_8:
        type metadata accessor for UnifiedTabBadgingManager();

        BaseObjectGraph.optional<A>(_:)();

        v18 = v26;
        if (v26)
        {
          UnifiedTabBadgingManager.fetchInitalBadgesToDisplayPostLaunch()();
        }

        return;
      }

      sub_10002B894(v9, &qword_100985B10);
    }

    if (!*(a1 + v15))
    {
      return;
    }

    goto LABEL_8;
  }
}

uint64_t sub_10043D058()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + OBJC_IVAR____TtC8AppStore11AppDelegate_objectGraph);
    v2 = Strong;

    if (v1)
    {
      type metadata accessor for ASKBagContract();
      BaseObjectGraph.inject<A>(_:)();
    }
  }

  swift_beginAccess();
  v3 = swift_unknownObjectWeakLoadStrong();
  if (v3)
  {
    v4 = *(v3 + OBJC_IVAR____TtC8AppStore11AppDelegate_objectGraph);
    v5 = v3;

    if (v4)
    {
      type metadata accessor for SheetEngagementManager();
      BaseObjectGraph.inject<A>(_:)();

      SheetEngagementManager.requestAppLaunchSheet(bag:)();
    }
  }
}

uint64_t sub_10043D160(uint64_t a1)
{
  if (*(a1 + OBJC_IVAR____TtC8AppStore11AppDelegate_objectGraph))
  {
    v2 = OBJC_IVAR____TtC8AppStore11AppDelegate_isOnboardingFinished;
    if (*(a1 + OBJC_IVAR____TtC8AppStore11AppDelegate_isOnboardingFinished))
    {
      type metadata accessor for ASKBagContract();
      type metadata accessor for BaseObjectGraph();

      inject<A, B>(_:from:)();
      sub_10061E708(v6, 0);
      sub_10002849C(&unk_10097A950);
      v3 = Array.isNotEmpty.getter();

      if (v3)
      {
        *(a1 + v2) = 0;
      }
    }

    else
    {
    }

    sub_100007D1C(0);
  }

  else
  {
    if (qword_10096DC28 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for OSLogger();
    sub_1000056A8(v4, qword_1009D0440);
    sub_10002849C(&unk_100972A10);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_1007B10D0;
    LogMessage.init(stringLiteral:)();
    Logger.error(_:)();
  }
}

uint64_t sub_10043D394()
{
  v0 = swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_1001AF824(sub_1004438BC, v0);
}

uint64_t sub_10043D408()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + OBJC_IVAR____TtC8AppStore11AppDelegate_objectGraph);
    v2 = Strong;

    if (v1)
    {
      type metadata accessor for ASKBagContract();
      BaseObjectGraph.optional<A>(_:)();
    }
  }

  swift_beginAccess();
  v3 = swift_unknownObjectWeakLoadStrong();
  if (v3)
  {
    v4 = *(v3 + OBJC_IVAR____TtC8AppStore11AppDelegate_objectGraph);
    v5 = v3;

    if (v4)
    {
      type metadata accessor for SheetEngagementManager();
      BaseObjectGraph.inject<A>(_:)();

      SheetEngagementManager.requestAppLaunchSheet(bag:)();
    }
  }
}

void sub_10043D570(uint64_t a1)
{
  v2 = type metadata accessor for AppEnterMetricsEvent.EnterKind();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + OBJC_IVAR____TtC8AppStore11AppDelegate_objectGraph))
  {

    sub_100181084();
    type metadata accessor for InAppMessagesManager();
    type metadata accessor for BaseObjectGraph();
    inject<A, B>(_:from:)();
    v6 = *(v10 + 16);
    v7 = [objc_allocWithZone(IAMApplicationDidBecomeActiveEvent) init];
    [v6 receiveEvent:v7];

    (*(v3 + 104))(v5, enum case for AppEnterMetricsEvent.EnterKind.taskSwitch(_:), v2);
    sub_100005E5C(&qword_100985B28, 255, &type metadata accessor for AppEnterMetricsEvent.EnterKind);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    if (v10 == v9[0] && v11 == v9[1])
    {
      (*(v3 + 8))(v5, v2);
    }

    else
    {
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
      (*(v3 + 8))(v5, v2);

      if ((v8 & 1) == 0)
      {
LABEL_7:

        return;
      }
    }

    type metadata accessor for AppStoreEngagementManager();
    inject<A, B>(_:from:)();
    AppStoreEngagementManager.refreshBadgeIdentifiers(completion:)();

    goto LABEL_7;
  }
}

void sub_10043D824(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC8AppStore11AppDelegate_objectGraph);
  if (v1)
  {
    v2 = objc_opt_self();

    v3 = [v2 sharedApplication];
    sub_100181348(v1, v3);
  }
}

void sub_10043D93C(uint64_t a1, uint64_t a2)
{
  v47 = a2;
  v4 = sub_10002849C(&unk_100972A00);
  __chkstk_darwin(v4 - 8);
  v52 = v38 - v5;
  v50 = type metadata accessor for FlowPresentationContext();
  v48 = *(v50 - 8);
  __chkstk_darwin(v50);
  v51 = v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for FlowOrigin();
  v44 = *(v7 - 8);
  v45 = v7;
  __chkstk_darwin(v7);
  v49 = v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FlowAnimationBehavior();
  v42 = *(v9 - 8);
  v43 = v9;
  __chkstk_darwin(v9);
  v46 = v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ActionMetrics();
  __chkstk_darwin(v11 - 8);
  v12 = sub_10002849C(&unk_1009767C0);
  __chkstk_darwin(v12 - 8);
  v41 = v38 - v13;
  v14 = sub_10002849C(&qword_100982460);
  __chkstk_darwin(v14 - 8);
  v16 = v38 - v15;
  v17 = type metadata accessor for FlowPage();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for NavigationTab();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = v38 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_100583898())
  {

    sub_10043F4D8();
  }

  else
  {
    v25 = *(v2 + OBJC_IVAR____TtC8AppStore11AppDelegate_objectGraph);
    if (v25)
    {
      v40 = a1;
      type metadata accessor for ASKBagContract();

      v39 = v25;
      BaseObjectGraph.optional<A>(_:)();
      if (v55)
      {
        static ResilientDeepLinkController.removeNonResilientDeepLinks(bag:)();
      }

      v26 = *(v22 + 104);
      v38[1] = v24;
      v26(v24, enum case for NavigationTab.loading(_:), v21);
      sub_10002849C(&qword_100973210);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_1007B0B70;
      v57 = 0;
      v55 = 0u;
      v56 = 0u;
      (*(v18 + 104))(v20, enum case for FlowPage.unknown(_:), v17);
      v28 = type metadata accessor for URL();
      v29 = *(v28 - 8);
      (*(v29 + 16))(v16, v40, v28);
      (*(v29 + 56))(v16, 0, 1, v28);
      v30 = type metadata accessor for ReferrerData();
      v31 = *(v30 - 8);
      v32 = v41;
      (*(v31 + 16))(v41, v47, v30);
      (*(v31 + 56))(v32, 0, 1, v30);
      v53 = 0u;
      v54 = 0u;
      static ActionMetrics.notInstrumented.getter();
      (*(v42 + 104))(v46, enum case for FlowAnimationBehavior.never(_:), v43);
      (*(v44 + 104))(v49, enum case for FlowOrigin.external(_:), v45);
      (*(v48 + 104))(v51, enum case for FlowPresentationContext.infer(_:), v50);
      static FlowActionPresentation.stackPush.getter();
      type metadata accessor for FlowAction();
      swift_allocObject();
      *(v27 + 32) = FlowAction.init(id:title:artwork:page:url:referrerUrl:referrerData:pageData:actionMetrics:presentationContext:animationBehavior:origin:presentationStyle:presentation:)();
      static ActionMetrics.notInstrumented.getter();
      type metadata accessor for TabChangeAction();
      swift_allocObject();
      v33 = TabChangeAction.init(navigationTab:actions:popToRoot:presentationStyle:actionMetrics:)();
      v34 = sub_10002849C(&unk_100974490);
      v35 = v52;
      v36 = v39;
      BaseObjectGraph.injectIfAvailable<A>(_:)();
      v37 = *(v34 - 8);
      if ((*(v37 + 48))(v35, 1, v34) == 1)
      {

        sub_10002B894(v35, &unk_100972A00);
      }

      else
      {
        sub_1005FA0E4(v33, 1, v36, v35);

        (*(v37 + 8))(v35, v34);
      }
    }
  }
}

uint64_t sub_10043E15C()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ReferrerData();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MetricsActivity();
  static MetricsActivity.current.getter();
  AppStoreDeepLink.referral.getter();
  dispatch thunk of MetricsActivity.setReferrerData(_:)();

  v8 = *(v5 + 8);
  v8(v7, v4);
  AppStoreDeepLink.url.getter();
  AppStoreDeepLink.referral.getter();
  sub_10043D93C(v3, v7);
  v8(v7, v4);
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_10043E4AC(uint64_t result, void *a2)
{
  v2 = *(result + OBJC_IVAR____TtC8AppStore11AppDelegate_objectGraph);
  if (v2)
  {

    if (_sSo14NSUserActivityC8AppStoreE6handle04userB08asPartOfSbAB_9JetEngine15BaseObjectGraphCtFZ_0(a2, v2))
    {
      if (qword_10096D110 != -1)
      {
        swift_once();
      }
    }

    else if (qword_10096D110 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for OSLogger();
    sub_1000056A8(v4, qword_1009CE1E8);
    sub_10002849C(&unk_100972A10);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_1007B1890;
    LogMessage.init(stringLiteral:)();
    v6[3] = sub_100005744(0, &qword_100985B18);
    v6[0] = a2;
    v5 = a2;
    static LogMessage.traceableSensitive(_:)();
    sub_10002B894(v6, &unk_1009711D0);
    Logger.error(_:)();
  }

  return result;
}