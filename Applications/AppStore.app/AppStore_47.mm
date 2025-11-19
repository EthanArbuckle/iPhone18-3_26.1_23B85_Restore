uint64_t sub_100544610(unint64_t *a1, void (*a2)(uint64_t))
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

char *sub_100544658(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = type metadata accessor for CornerStyle();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10002849C(&unk_100981210);
  __chkstk_darwin(v15 - 8);
  v17 = &v38 - v16;
  v18 = OBJC_IVAR____TtC8AppStore53CondensedAdLockupWithIconBackgroundCollectionViewCell_itemLayoutContext;
  v19 = type metadata accessor for ItemLayoutContext();
  (*(*(v19 - 8) + 56))(&v5[v18], 1, 1, v19);
  v20 = OBJC_IVAR____TtC8AppStore53CondensedAdLockupWithIconBackgroundCollectionViewCell_condensedAdLockupWithIconBackgroundView;
  type metadata accessor for CondensedAdLockupWithIconBackgroundView();
  *&v5[v20] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v21 = OBJC_IVAR____TtC8AppStore53CondensedAdLockupWithIconBackgroundCollectionViewCell_shadowView;
  type metadata accessor for ShadowView();
  *&v5[v21] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v5[OBJC_IVAR____TtC8AppStore53CondensedAdLockupWithIconBackgroundCollectionViewCell_impressionsCalculator] = 0;
  v22 = &v5[OBJC_IVAR____TtC8AppStore53CondensedAdLockupWithIconBackgroundCollectionViewCell_impressionsUpdateBlock];
  *v22 = 0;
  *(v22 + 1) = 0;
  v38.receiver = v5;
  v38.super_class = ObjectType;
  v23 = objc_msgSendSuper2(&v38, "initWithFrame:", a1, a2, a3, a4);
  v24 = OBJC_IVAR____TtC8AppStore53CondensedAdLockupWithIconBackgroundCollectionViewCell_shadowView;
  v25 = *&v23[OBJC_IVAR____TtC8AppStore53CondensedAdLockupWithIconBackgroundCollectionViewCell_shadowView];
  v26 = qword_10096DAE0;
  v27 = v23;
  v28 = v25;
  if (v26 != -1)
  {
    swift_once();
  }

  v29 = type metadata accessor for Shadow();
  v30 = sub_1000056A8(v29, qword_1009CFF00);
  v31 = *(v29 - 8);
  (*(v31 + 16))(v17, v30, v29);
  (*(v31 + 56))(v17, 0, 1, v29);
  dispatch thunk of ShadowView.shadow.setter();

  v32 = *&v23[v24];
  (*(v12 + 104))(v14, enum case for CornerStyle.continuous(_:), v11);
  v33 = v32;
  dispatch thunk of ShadowView.setCorner(radius:style:)();

  (*(v12 + 8))(v14, v11);
  [v27 addSubview:*&v23[v24]];
  v34 = [v27 contentView];
  [v34 setClipsToBounds:1];

  v35 = OBJC_IVAR____TtC8AppStore53CondensedAdLockupWithIconBackgroundCollectionViewCell_condensedAdLockupWithIconBackgroundView;
  [*&v27[OBJC_IVAR____TtC8AppStore53CondensedAdLockupWithIconBackgroundCollectionViewCell_condensedAdLockupWithIconBackgroundView] setClipsToBounds:1];
  v36 = [v27 contentView];

  [v36 addSubview:*&v27[v35]];
  return v27;
}

uint64_t sub_100544BD0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PageGrid();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CondensedAdLockupWithIconBackground();
  sub_100545724(&qword_10098B2A8, &type metadata accessor for CondensedAdLockupWithIconBackground);
  result = ItemLayoutContext.typedModel<A>(as:)();
  v9 = v11;
  if (v11)
  {
    swift_getKeyPath();
    ItemLayoutContext.subscript.getter();

    sub_10003A82C(v9, v7, a2);
    (*(v5 + 8))(v7, v4);
    [v2 setNeedsLayout];
  }

  return result;
}

void sub_100544D64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10002849C(&qword_100973D30);
  __chkstk_darwin(v4 - 8);
  v6 = &v14[-v5 - 8];
  v7 = type metadata accessor for ImpressionMetrics();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v14[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_10002C0AC(a3, v14);
      sub_10002849C(&qword_100973D50);
      type metadata accessor for CondensedAdLockupWithIconBackground();
      if (swift_dynamicCast())
      {
        CondensedAdLockupWithIconBackground.lockup.getter();

        Lockup.impressionMetrics.getter();
        if ((*(v8 + 48))(v6, 1, v7) == 1)
        {

          sub_10002B894(v6, &qword_100973D30);
        }

        else
        {
          (*(v8 + 32))(v10, v6, v7);
          [v12 bounds];
          ImpressionsCalculator.addElement(_:at:)();

          (*(v8 + 8))(v10, v7);
        }
      }

      else
      {
      }
    }

    else
    {
    }
  }
}

uint64_t type metadata accessor for CondensedAdLockupWithIconBackgroundCollectionViewCell()
{
  result = qword_10098B298;
  if (!qword_10098B298)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1005450DC()
{
  sub_100027FAC();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_100545190(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100545724(&qword_100974780, type metadata accessor for CondensedAdLockupWithIconBackgroundCollectionViewCell);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_100545228@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8AppStore53CondensedAdLockupWithIconBackgroundCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  return sub_10009768C(v1 + v3, a1);
}

uint64_t sub_100545280(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8AppStore53CondensedAdLockupWithIconBackgroundCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  sub_10009761C(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_100545340()
{
  v1 = v0;
  v4.receiver = v0;
  v4.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v4, "prepareForReuse");
  ArtworkView.image.setter();
  v2 = OBJC_IVAR____TtC8AppStore53CondensedAdLockupWithIconBackgroundCollectionViewCell_impressionsCalculator;
  swift_beginAccess();
  *&v1[v2] = 0;
}

uint64_t sub_10054541C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8AppStore53CondensedAdLockupWithIconBackgroundCollectionViewCell_impressionsCalculator;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1005454D4()
{
  v1 = (v0 + OBJC_IVAR____TtC8AppStore53CondensedAdLockupWithIconBackgroundCollectionViewCell_impressionsUpdateBlock);
  swift_beginAccess();
  v2 = *v1;
  sub_10000827C(*v1);
  return v2;
}

uint64_t sub_100545530(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC8AppStore53CondensedAdLockupWithIconBackgroundCollectionViewCell_impressionsUpdateBlock);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return sub_10001F63C(v6);
}

void (*sub_1005455F0(uint64_t a1))()
{
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = swift_allocObject();
  swift_weakInit();
  sub_10002C0AC(a1, v6);
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;
  sub_100005A38(v6, v4 + 32);
  return sub_10054576C;
}

uint64_t sub_100545724(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_100545778()
{
  v1 = OBJC_IVAR____TtC8AppStore53CondensedAdLockupWithIconBackgroundCollectionViewCell_itemLayoutContext;
  v2 = type metadata accessor for ItemLayoutContext();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtC8AppStore53CondensedAdLockupWithIconBackgroundCollectionViewCell_condensedAdLockupWithIconBackgroundView;
  type metadata accessor for CondensedAdLockupWithIconBackgroundView();
  *(v0 + v3) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v4 = OBJC_IVAR____TtC8AppStore53CondensedAdLockupWithIconBackgroundCollectionViewCell_shadowView;
  type metadata accessor for ShadowView();
  *(v0 + v4) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v0 + OBJC_IVAR____TtC8AppStore53CondensedAdLockupWithIconBackgroundCollectionViewCell_impressionsCalculator) = 0;
  v5 = (v0 + OBJC_IVAR____TtC8AppStore53CondensedAdLockupWithIconBackgroundCollectionViewCell_impressionsUpdateBlock);
  *v5 = 0;
  v5[1] = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_10054588C()
{
  qword_10098B2C8 = &type metadata for Double;
  unk_10098B2D0 = &protocol witness table for Double;
  qword_10098B2B0 = 0;
  qword_10098B2F0 = &type metadata for Double;
  unk_10098B2F8 = &protocol witness table for Double;
  qword_10098B2D8 = 0x4028000000000000;
  qword_10098B318 = &type metadata for Double;
  unk_10098B320 = &protocol witness table for Double;
  qword_10098B300 = 0x4014000000000000;
  qword_10098B340 = &type metadata for Double;
  unk_10098B348 = &protocol witness table for Double;
  qword_10098B328 = 0x4041000000000000;
}

void sub_1005458D4()
{
  qword_10098B368 = &type metadata for Double;
  unk_10098B370 = &protocol witness table for Double;
  qword_10098B350 = 0;
  qword_10098B390 = &type metadata for Double;
  unk_10098B398 = &protocol witness table for Double;
  qword_10098B378 = 0x4024000000000000;
  qword_10098B3B8 = &type metadata for Double;
  unk_10098B3C0 = &protocol witness table for Double;
  qword_10098B3A0 = 0x4014000000000000;
  qword_10098B3E0 = &type metadata for Double;
  unk_10098B3E8 = &protocol witness table for Double;
  qword_10098B3C8 = 0x4014000000000000;
}

char *sub_100545918(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  *&v2[OBJC_IVAR____TtC8AppStore27ArcadeWelcomeViewController_overlayViewController] = 0;
  *&v2[OBJC_IVAR____TtC8AppStore27ArcadeWelcomeViewController_objectGraph] = a2;
  *&v2[OBJC_IVAR____TtC8AppStore27ArcadeWelcomeViewController_presenter] = a1;
  v7 = &v2[OBJC_IVAR____TtC8AppStore27ArcadeWelcomeViewController_lifecycleObserver];
  *(v7 + 3) = type metadata accessor for ArcadeWelcomePagePresenter();
  *(v7 + 4) = &protocol witness table for BasePresenter;
  *v7 = a1;
  type metadata accessor for ArtworkLoader();
  type metadata accessor for BaseObjectGraph();
  swift_retain_n();

  inject<A, B>(_:from:)();
  *&v3[OBJC_IVAR____TtC8AppStore27ArcadeWelcomeViewController_artworkLoader] = v21[0];
  type metadata accessor for ImpressionsCalculator();
  BaseObjectGraph.optional<A>(_:)();
  *&v3[OBJC_IVAR____TtC8AppStore27ArcadeWelcomeViewController_impressionsCalculator] = v21[0];
  v8 = [objc_opt_self() currentTraitCollection];
  v9 = [v8 userInterfaceIdiom];

  if (v9 == 1)
  {
    if (qword_10096E8D0 != -1)
    {
      swift_once();
    }

    v10 = &qword_10098B350;
  }

  else
  {
    if (qword_10096E8C8 != -1)
    {
      swift_once();
    }

    v10 = &qword_10098B2B0;
  }

  sub_100073D84(v10, v21);
  sub_100073D84(v21, v20);
  v11 = objc_allocWithZone(type metadata accessor for ArcadeWelcomePageView());
  *&v3[OBJC_IVAR____TtC8AppStore27ArcadeWelcomeViewController_pageView] = sub_10007325C(v20);
  v19.receiver = v3;
  v19.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v19, "initWithNibName:bundle:", 0, 0);
  v13 = v12;
  if (*&v12[OBJC_IVAR____TtC8AppStore27ArcadeWelcomeViewController_impressionsCalculator])
  {
    v14 = v12;

    ImpressionsCalculator.isVisible.setter();
  }

  else
  {
    v16 = v12;
  }

  sub_1005471E4(&qword_10098B460, v15, type metadata accessor for ArcadeWelcomeViewController);
  v17 = v13;
  dispatch thunk of ArcadeWelcomePagePresenter.view.setter();

  sub_100073DE0(v21);
  *(*&v17[OBJC_IVAR____TtC8AppStore27ArcadeWelcomeViewController_pageView] + OBJC_IVAR____TtC8AppStore21ArcadeWelcomePageView_delegate + 8) = &off_1008C8078;
  swift_unknownObjectWeakAssign();

  return v17;
}

void sub_100545C70()
{
  v20.receiver = v0;
  v20.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v20, "viewWillLayoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC8AppStore27ArcadeWelcomeViewController_pageView];
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_9;
  }

  v3 = v2;
  [v2 bounds];

  v4 = [v0 view];
  if (!v4)
  {
LABEL_9:
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v5 = v4;
  [v4 safeAreaInsets];

  CGRect.subtracting(insets:)();
  [v1 setFrame:?];
  v6 = *&v0[OBJC_IVAR____TtC8AppStore27ArcadeWelcomeViewController_overlayViewController];
  if (!v6)
  {
    return;
  }

  v7 = v6;
  v8 = [v7 view];
  if (!v8)
  {
    goto LABEL_10;
  }

  v9 = v8;
  v10 = [v0 view];
  if (!v10)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v11 = v10;
  [v10 bounds];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;

  [v9 setFrame:{v13, v15, v17, v19}];
}

id sub_100545E80()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for StoreViewControllerLifecycleEvent();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13.receiver = v1;
  v13.super_class = ObjectType;
  objc_msgSendSuper2(&v13, "viewDidLoad", v5);
  sub_10002A400(&v1[OBJC_IVAR____TtC8AppStore27ArcadeWelcomeViewController_lifecycleObserver], *&v1[OBJC_IVAR____TtC8AppStore27ArcadeWelcomeViewController_lifecycleObserver + 24]);
  (*(v4 + 104))(v7, enum case for StoreViewControllerLifecycleEvent.didLoad(_:), v3);
  dispatch thunk of StoreViewControllerLifecycleObserver.observe(lifecycleEvent:)();
  (*(v4 + 8))(v7, v3);
  result = [v1 view];
  if (result)
  {
    v9 = result;
    sub_100028BB8();
    v10 = static UIColor.defaultBackground.getter();
    [v9 setBackgroundColor:v10];

    result = [v1 view];
    if (result)
    {
      v11 = result;
      [result addSubview:*&v1[OBJC_IVAR____TtC8AppStore27ArcadeWelcomeViewController_pageView]];

      dispatch thunk of BasePresenter.didLoad()();
      v12 = [v1 navigationItem];
      [v12 setLargeTitleDisplayMode:2];

      return [v1 setTitle:0];
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1005460F0(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for StoreViewControllerLifecycleEvent();
  v6 = *(v5 - 8);
  *&v7 = __chkstk_darwin(v5).n128_u64[0];
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15.receiver = v2;
  v15.super_class = ObjectType;
  objc_msgSendSuper2(&v15, "viewWillAppear:", a1 & 1, v7);
  sub_10002A400(&v2[OBJC_IVAR____TtC8AppStore27ArcadeWelcomeViewController_lifecycleObserver], *&v2[OBJC_IVAR____TtC8AppStore27ArcadeWelcomeViewController_lifecycleObserver + 24]);
  (*(v6 + 104))(v9, enum case for StoreViewControllerLifecycleEvent.willAppear(_:), v5);
  dispatch thunk of StoreViewControllerLifecycleObserver.observe(lifecycleEvent:)();
  (*(v6 + 8))(v9, v5);
  v10 = [v2 navigationController];
  if (v10)
  {
    v11 = v10;
    [v10 setNavigationBarHidden:1 animated:0];
  }

  v12 = [v2 modalPresentationStyle];
  v13 = [v2 view];
  v14 = v13;
  if (v12 == 2)
  {
    if (v13)
    {
      [v13 setLayoutMargins:{20.0, 0.0, 0.0, 0.0}];
LABEL_8:

      return;
    }

    __break(1u);
  }

  else if (v13)
  {
    [v13 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
    goto LABEL_8;
  }

  __break(1u);
}

void sub_100546350(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for StoreViewControllerLifecycleEvent();
  v10 = *(v9 - 8);
  *&v11 = __chkstk_darwin(v9).n128_u64[0];
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17.receiver = v2;
  v17.super_class = ObjectType;
  objc_msgSendSuper2(&v17, "viewDidAppear:", a1 & 1, v11);
  sub_10002A400(&v2[OBJC_IVAR____TtC8AppStore27ArcadeWelcomeViewController_lifecycleObserver], *&v2[OBJC_IVAR____TtC8AppStore27ArcadeWelcomeViewController_lifecycleObserver + 24]);
  (*(v10 + 104))(v13, enum case for StoreViewControllerLifecycleEvent.didAppear(_:), v9);
  dispatch thunk of StoreViewControllerLifecycleObserver.observe(lifecycleEvent:)();
  (*(v10 + 8))(v13, v9);
  if (dispatch thunk of BasePresenter.pendingPageRender.getter())
  {
    Date.init()();
    Date.timeIntervalSince1970.getter();
    (*(v6 + 8))(v8, v5);
    PendingPageRender.appearTime.setter();
  }

  ArtworkLoader.isOccluded.setter();
  v14 = objc_opt_self();
  v15 = [v14 defaultCenter];
  [v15 addObserver:v2 selector:"appEnteredWhileAppeared" name:UIApplicationDidBecomeActiveNotification object:0];

  v16 = [v14 defaultCenter];
  [v16 addObserver:v2 selector:"appExitedWhileAppeared" name:UIApplicationDidEnterBackgroundNotification object:0];
}

void sub_10054667C(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for Date();
  v21 = *(v5 - 8);
  v22 = v5;
  __chkstk_darwin(v5);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ViewWillDisappearReason();
  __chkstk_darwin(v8 - 8);
  v9 = sub_10002849C(&qword_1009729C8);
  __chkstk_darwin(v9 - 8);
  v11 = &v21 - v10;
  v12 = type metadata accessor for StoreViewControllerLifecycleEvent();
  v13 = *(v12 - 8);
  *&v14 = __chkstk_darwin(v12).n128_u64[0];
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23.receiver = v2;
  v23.super_class = ObjectType;
  objc_msgSendSuper2(&v23, "viewWillDisappear:", a1 & 1, v14);
  sub_10002A400(&v2[OBJC_IVAR____TtC8AppStore27ArcadeWelcomeViewController_lifecycleObserver], *&v2[OBJC_IVAR____TtC8AppStore27ArcadeWelcomeViewController_lifecycleObserver + 24]);
  static ViewWillDisappearReason.inferred(for:)();
  (*(v13 + 104))(v16, enum case for StoreViewControllerLifecycleEvent.willDisappear(_:), v12);
  dispatch thunk of StoreViewControllerLifecycleObserver.observe(lifecycleEvent:)();
  (*(v13 + 8))(v16, v12);
  if (dispatch thunk of BasePresenter.pendingPageRender.getter())
  {
    static ViewWillDisappearReason.inferred(for:)();
    Date.init()();
    Date.timeIntervalSince1970.getter();
    (*(v21 + 8))(v7, v22);
    PendingPageRender.DisappearTimeAndReason.init(reason:timeInterval:)();
    v17 = type metadata accessor for PendingPageRender.DisappearTimeAndReason();
    (*(*(v17 - 8) + 56))(v11, 0, 1, v17);
    PendingPageRender.disappearTime.setter();
  }

  if (*&v2[OBJC_IVAR____TtC8AppStore27ArcadeWelcomeViewController_impressionsCalculator])
  {
    ImpressionsCalculator.isVisible.setter();
  }

  ArtworkLoader.isOccluded.setter();
  v18 = objc_opt_self();
  v19 = [v18 defaultCenter];
  [v19 removeObserver:v2 name:UIApplicationDidBecomeActiveNotification object:0];

  v20 = [v18 defaultCenter];
  [v20 removeObserver:v2 name:UIApplicationDidEnterBackgroundNotification object:0];
}

uint64_t sub_100546C10(char *a1, uint64_t a2, unsigned int *a3)
{
  v5 = type metadata accessor for StoreViewControllerLifecycleEvent();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002A400(&a1[OBJC_IVAR____TtC8AppStore27ArcadeWelcomeViewController_lifecycleObserver], *&a1[OBJC_IVAR____TtC8AppStore27ArcadeWelcomeViewController_lifecycleObserver + 24]);
  (*(v6 + 104))(v8, *a3, v5);
  v9 = a1;
  dispatch thunk of StoreViewControllerLifecycleObserver.observe(lifecycleEvent:)();

  return (*(v6 + 8))(v8, v5);
}

void sub_100546E80()
{
  v0 = type metadata accessor for JULoadingViewController.PresentationContext();
  __chkstk_darwin(v0 - 8);
  static JULoadingViewController.PresentationContext.placeholder.getter();
  v1 = objc_allocWithZone(type metadata accessor for JULoadingViewController());
  v2 = JULoadingViewController.init(label:presentationContext:pageRenderMetrics:)();
  sub_10054722C(v2);
}

void sub_100546F38()
{
  type metadata accessor for JUContentUnavailableViewController();
  sub_1005471E4(&qword_10098B468, 255, &type metadata accessor for ArcadeWelcomePagePresenter);
  swift_errorRetain();

  v0 = JUContentUnavailableViewController.init(error:from:includeMetrics:retry:)();
  sub_10054722C(v0);
}

uint64_t sub_100547018(uint64_t a1)
{
  v3 = sub_10002849C(&unk_100972A00);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  v6 = *(v1 + OBJC_IVAR____TtC8AppStore27ArcadeWelcomeViewController_objectGraph);
  v7 = sub_10002849C(&unk_100974490);
  BaseObjectGraph.injectIfAvailable<A>(_:)();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v5, 1, v7) == 1)
  {
    return sub_1000F40E0(v5);
  }

  sub_1005F9AF4(a1, 1, v6, v5);

  return (*(v8 + 8))(v5, v7);
}

uint64_t sub_1005471E4(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

id sub_10054722C(void *a1)
{
  v3 = OBJC_IVAR____TtC8AppStore27ArcadeWelcomeViewController_overlayViewController;
  v4 = *&v1[OBJC_IVAR____TtC8AppStore27ArcadeWelcomeViewController_overlayViewController];
  static ViewControllerContainment.remove(_:)();

  v5 = *&v1[v3];
  *&v1[v3] = a1;
  v6 = a1;

  result = [v1 view];
  if (result)
  {
    v8 = result;
    [result bounds];

    static ViewControllerContainment.add(_:to:frame:)();
    v9 = *&v1[OBJC_IVAR____TtC8AppStore27ArcadeWelcomeViewController_pageView];
    v10 = *&v1[v3] != 0;

    return [v9 setHidden:v10];
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_100547334(unint64_t a1)
{
  v56 = type metadata accessor for Artwork.Crop();
  v3 = *(v56 - 8);
  __chkstk_darwin(v56);
  v55 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = type metadata accessor for Artwork.URLTemplate();
  v5 = *(v61 - 8);
  __chkstk_darwin(v61);
  v60 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10002849C(&qword_100982460);
  __chkstk_darwin(v7 - 8);
  v9 = &v39 - v8;
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v64 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = (a1 >> 62);
  if (a1 >> 62)
  {
    goto LABEL_47;
  }

  v14 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  sub_100548338(v14);
  v15 = OBJC_IVAR____TtC8AppStore20AnnotationImagesView_imageViews;
  swift_beginAccess();
  v62 = *(v1 + v15);
  v40 = v1;
  if (v13)
  {
    v13 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v13 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v13)
  {
    v58 = a1 & 0xFFFFFFFFFFFFFF8;
    v59 = a1 & 0xC000000000000001;
    v1 = (v62 & 0xFFFFFFFFFFFFFF8);
    if (v62 < 0)
    {
      v16 = v62;
    }

    else
    {
      v16 = v62 & 0xFFFFFFFFFFFFFF8;
    }

    v39 = v16;
    v54 = v62 & 0xC000000000000001;
    v53 = (v5 + 8);
    v52 = (v11 + 48);
    v50 = (v11 + 32);
    v42 = "_TtC8AppStore11BundleImage";
    v51 = (v11 + 8);
    v45 = (v3 + 8);
    v17 = 4;
    v57 = v62 >> 62;
    v41 = xmmword_1007B1890;
    v46 = v62 & 0xFFFFFFFFFFFFFF8;
    v43 = a1;
    v49 = v10;
    v48 = v9;
    v47 = v13;
    do
    {
      v5 = v17 - 4;
      if (v59)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        v3 = (v17 - 3);
        if (__OFADD__(v5, 1))
        {
          goto LABEL_44;
        }
      }

      else
      {
        if (v5 >= *(v58 + 16))
        {
          goto LABEL_45;
        }

        v3 = (v17 - 3);
        if (__OFADD__(v5, 1))
        {
LABEL_44:
          __break(1u);
LABEL_45:
          __break(1u);
LABEL_46:
          __break(1u);
LABEL_47:
          v14 = _CocoaArrayWrapper.endIndex.getter();
          goto LABEL_3;
        }
      }

      if (v57)
      {
        if (v5 == _CocoaArrayWrapper.endIndex.getter())
        {
LABEL_38:

          break;
        }
      }

      else if (v5 == v1[2])
      {
        goto LABEL_38;
      }

      v63 = v3;
      if (v54)
      {
        v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v5 >= v1[2])
        {
          goto LABEL_46;
        }

        v18 = *(v62 + 8 * v17);
      }

      v11 = v18;
      v19 = v60;
      Artwork.template.getter();
      Artwork.URLTemplate.rawValue.getter();
      (*v53)(v19, v61);
      URL.init(string:)();

      if ((*v52)(v9, 1, v10) == 1)
      {

        return sub_10002B894(v9, &qword_100982460);
      }

      (*v50)(v64, v9, v10);
      v20 = URL.host.getter();
      if (!v21)
      {

LABEL_43:

        return (*v51)(v64, v10);
      }

      v22 = v20;
      v23 = v21;
      if ((dispatch thunk of Artwork.isBundleImage.getter() & 1) == 0)
      {

        goto LABEL_43;
      }

      v24.value.super.super.isa = 0;
      v25 = Artwork.configuration(with:)(v24);
      if (qword_10096D8F8 != -1)
      {
        swift_once();
      }

      v26 = qword_1009809A0;
      v27 = v25;
      v28 = String._bridgeToObjectiveC()();
      v29 = [objc_opt_self() imageNamed:v28 inBundle:v26 withConfiguration:{v27, v39}];

      if (!v29)
      {
        if (qword_10096D110 != -1)
        {
          swift_once();
        }

        v30 = type metadata accessor for OSLogger();
        v44 = sub_1000056A8(v30, qword_1009CE1E8);
        sub_10002849C(&unk_100972A10);
        type metadata accessor for LogMessage();
        *(swift_allocObject() + 16) = v41;
        LogMessage.init(stringLiteral:)();
        v65[3] = &type metadata for String;
        v65[0] = v22;
        v65[1] = v23;

        static LogMessage.sensitive(_:)();
        sub_10002B894(v65, &unk_1009711D0);
        Logger.error(_:)();

        v29 = [objc_allocWithZone(UIImage) init];
        a1 = v43;
      }

      v10 = v49;
      (*v51)(v64, v49);
      [v29 size];
      if (qword_10096E8D8 != -1)
      {
        swift_once();
      }

      v31 = type metadata accessor for AnnotationImagesLayout.Metrics();
      sub_1000056A8(v31, qword_1009D29A0);
      AnnotationImagesLayout.Metrics.artworkSize.getter();
      v3 = v55;
      Artwork.crop.getter();
      Artwork.Crop.preferredContentMode.getter();
      (*v45)(v3, v56);
      CGSize.fitting(_:mode:)();
      [v11 setFrame:{0.0, 0.0, v32, v33}];
      v34 = v29;
      v35 = [v11 layer];
      [v35 removeAllAnimations];

      v36 = v34;
      [v11 setImage:v36];

      ++v17;
      v13 = v47;
      v9 = v48;
      v1 = v46;
    }

    while (v63 != v47);
  }

  v37 = v40;
  [v40 invalidateIntrinsicContentSize];
  return [v37 setNeedsLayout];
}

uint64_t sub_100547CA0(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_100548D14(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v3 + 24 * a1;
    v7 = *(v6 + 32);
    v8 = v5 - 1;
    memmove((v6 + 32), (v6 + 56), 24 * (v5 - 1 - a1));
    *(v3 + 16) = v8;
    *v1 = v3;
    return v7;
  }

  return result;
}

uint64_t sub_100547D48(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
  {
    result = sub_100548D64(v3);
    v3 = result;
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
    memmove(((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 32), ((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 40), 8 * (v5 - 1 - a1));
    *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) = v6;
    *v1 = v3;
    return v7;
  }

  return result;
}

unint64_t sub_100547DD8()
{
  if (!(*v0 >> 62))
  {
    result = *((*v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }

LABEL_3:
    result = sub_100549074();
    if (result)
    {
      return result;
    }

    if (*v0 >> 62)
    {
      v4 = _CocoaArrayWrapper.endIndex.getter();
      v3 = __OFSUB__(v4, 1);
      result = v4 - 1;
      if (!v3)
      {
        return sub_100547D48(result);
      }
    }

    else
    {
      v2 = *((*v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v3 = __OFSUB__(v2, 1);
      result = v2 - 1;
      if (!v3)
      {
        return sub_100547D48(result);
      }
    }

    __break(1u);
    return result;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (result)
  {
    goto LABEL_3;
  }

  return result;
}

uint64_t sub_100548018()
{
  v0 = type metadata accessor for AnnotationImagesLayout.Metrics();
  sub_100005644(v0, qword_1009D29A0);
  sub_1000056A8(v0, qword_1009D29A0);
  return AnnotationImagesLayout.Metrics.init(horizontalSpacing:verticalSpacing:artworkSize:)();
}

id sub_1005481BC(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = sub_10002849C(&qword_10098B4C0);
  __chkstk_darwin(v4);
  *&v1[OBJC_IVAR____TtC8AppStore20AnnotationImagesView_imageViews] = _swiftEmptyArrayStorage;
  type metadata accessor for AnnotationImagesView.AnnotationImageView();
  ViewRecycler.init()();
  sub_100548C64();
  ReusePool.init(recycler:limit:)();
  v12.receiver = v1;
  v12.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v12, "initWithCoder:", a1);
  v6 = v5;
  if (v5)
  {
    left = UIEdgeInsetsZero.left;
    bottom = UIEdgeInsetsZero.bottom;
    right = UIEdgeInsetsZero.right;
    v10 = v5;
    [v10 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  }

  return v6;
}

uint64_t sub_100548338(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8AppStore20AnnotationImagesView_imageViews;
  swift_beginAccess();
  v4 = *&v1[v3];
  if (v4 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result == a1)
    {
      return result;
    }
  }

  else
  {
    result = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result == a1)
    {
      return result;
    }
  }

  v6 = *&v1[v3];
  if (v6 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter() > a1)
    {
      goto LABEL_5;
    }
  }

  else if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
  {
LABEL_5:
    swift_beginAccess();
    v7 = sub_100547DD8();
    result = swift_endAccess();
    if (!v7)
    {
      __break(1u);
      return result;
    }

    [v7 removeFromSuperview];
    swift_beginAccess();
    sub_10002849C(&qword_10098B4F8);
    ReusePool.recycle(_:)();
    swift_endAccess();
    goto LABEL_13;
  }

  swift_beginAccess();
  sub_10002849C(&qword_10098B4F8);
  ReusePool.dequeue(or:)();
  swift_endAccess();
  swift_beginAccess();
  v7 = v8;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*&v1[v3] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v1[v3] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  [v1 addSubview:v7];
LABEL_13:

  return sub_100548338(a1);
}

uint64_t sub_100548734()
{
  ObjectType = swift_getObjectType();
  v17 = type metadata accessor for LayoutRect();
  v2 = *(v17 - 8);
  __chkstk_darwin(v17);
  v4 = v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AnnotationImagesLayout.Metrics();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[0] = type metadata accessor for AnnotationImagesLayout();
  v9 = *(v16[0] - 8);
  *&v10 = __chkstk_darwin(v16[0]).n128_u64[0];
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18.receiver = v0;
  v18.super_class = ObjectType;
  v16[1] = ObjectType;
  objc_msgSendSuper2(&v18, "layoutSubviews", v10);
  swift_beginAccess();

  sub_1002A627C(v13);

  if (qword_10096E8D8 != -1)
  {
    swift_once();
  }

  v14 = sub_1000056A8(v5, qword_1009D29A0);
  (*(v6 + 16))(v8, v14, v5);
  AnnotationImagesLayout.init(views:metrics:)();
  LayoutMarginsAware<>.layoutFrame.getter();
  AnnotationImagesLayout.placeChildren(relativeTo:in:)();
  (*(v2 + 8))(v4, v17);
  return (*(v9 + 8))(v12, v16[0]);
}

id sub_100548A38@<X0>(void *a1@<X8>)
{
  type metadata accessor for AnnotationImagesView.AnnotationImageView();
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *a1 = result;
  return result;
}

uint64_t type metadata accessor for AnnotationImagesView()
{
  result = qword_10098B4A8;
  if (!qword_10098B4A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100548B54()
{
  sub_100548BF4();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100548BF4()
{
  if (!qword_10098B4B8)
  {
    sub_10002D1A8(&qword_10098B4C0);
    sub_100548C64();
    v0 = type metadata accessor for ReusePool();
    if (!v1)
    {
      atomic_store(v0, &qword_10098B4B8);
    }
  }
}

unint64_t sub_100548C64()
{
  result = qword_10098B4C8;
  if (!qword_10098B4C8)
  {
    sub_10002D1A8(&qword_10098B4C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10098B4C8);
  }

  return result;
}

uint64_t sub_100548D64(unint64_t a1)
{
  if (a1 >> 62)
  {
    _CocoaArrayWrapper.endIndex.getter();
  }

  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

uint64_t (*sub_100548DDC(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {

LABEL_5:
    *v3 = v4;
    return sub_10054996C;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_100548E5C(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_100549968;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_100548EDC(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {

LABEL_5:
    *v3 = v4;
    return sub_100548F5C;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_100548F64(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = swift_unknownObjectRetain();
LABEL_5:
    *v3 = v4;
    return sub_100548FE4;
  }

  __break(1u);
  return result;
}

void (*sub_100548FEC(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_10054906C;
  }

  __break(1u);
  return result;
}

uint64_t sub_100549074()
{
  v1 = *v0;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || (v1 & 0x8000000000000000) != 0 || (v1 & 0x4000000000000000) != 0)
  {
    result = sub_100548D64(v1);
    v1 = result;
  }

  v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v3)
  {
    v4 = v3 - 1;
    result = *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v4 + 0x20);
    *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10) = v4;
    *v0 = v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1005490D8(unint64_t a1, uint64_t a2)
{
  v46 = type metadata accessor for Artwork.Crop();
  v4 = *(v46 - 8);
  __chkstk_darwin(v46);
  v45 = v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Artwork.URLTemplate();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10002849C(&qword_100982460);
  __chkstk_darwin(v10 - 8);
  v12 = v37 - v11;
  v54 = type metadata accessor for URL();
  v13 = *(v54 - 8);
  __chkstk_darwin(v54);
  v15 = v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    v16 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v16 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v17 = _swiftEmptyArrayStorage;
  if (!v16)
  {
    goto LABEL_28;
  }

  v56 = _swiftEmptyArrayStorage;
  v53 = v16;
  result = specialized ContiguousArray.reserveCapacity(_:)();
  if (v53 < 0)
  {
    __break(1u);
    return result;
  }

  v50 = v15;
  v37[1] = a2;
  v19 = 0;
  v51 = (v7 + 8);
  v52 = a1 & 0xC000000000000001;
  v20 = (v13 + 48);
  v47 = (v13 + 8);
  v48 = (v13 + 32);
  v39 = "_TtC8AppStore11BundleImage";
  v43 = (v4 + 8);
  v38 = xmmword_1007B1890;
  v44 = a1;
  v49 = v6;
  v42 = (v13 + 48);
  do
  {
    v21 = v54;
    if (v52)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
    }

    Artwork.template.getter();
    Artwork.URLTemplate.rawValue.getter();
    (*v51)(v9, v6);
    URL.init(string:)();

    if ((*v20)(v12, 1, v21) == 1)
    {
      sub_10002B894(v12, &qword_100982460);
LABEL_7:
      type metadata accessor for LayoutViewPlaceholder();
      swift_allocObject();
      LayoutViewPlaceholder.init(representing:)();
      goto LABEL_8;
    }

    v22 = v50;
    (*v48)(v50, v12, v21);
    v23 = URL.host.getter();
    if (!v24)
    {
      (*v47)(v22, v21);
LABEL_26:
      v6 = v49;
      goto LABEL_7;
    }

    v25 = v23;
    v26 = v24;
    if ((dispatch thunk of Artwork.isBundleImage.getter() & 1) == 0)
    {

      (*v47)(v50, v21);
      goto LABEL_26;
    }

    v27.value.super.super.isa = 0;
    v28 = Artwork.configuration(with:)(v27);
    if (qword_10096D8F8 != -1)
    {
      swift_once();
    }

    v29 = qword_1009809A0;
    v30 = v28;
    v31 = String._bridgeToObjectiveC()();
    v32 = [objc_opt_self() imageNamed:v31 inBundle:v29 withConfiguration:v30];

    if (!v32)
    {
      v41 = v30;
      if (qword_10096D110 != -1)
      {
        swift_once();
      }

      v33 = type metadata accessor for OSLogger();
      v40 = sub_1000056A8(v33, qword_1009CE1E8);
      sub_10002849C(&unk_100972A10);
      type metadata accessor for LogMessage();
      *(swift_allocObject() + 16) = v38;
      LogMessage.init(stringLiteral:)();
      v55[3] = &type metadata for String;
      v55[0] = v25;
      v55[1] = v26;

      static LogMessage.sensitive(_:)();
      sub_10002B894(v55, &unk_1009711D0);
      Logger.error(_:)();

      v32 = [objc_allocWithZone(UIImage) init];
      v30 = v41;
    }

    (*v47)(v50, v54);
    [v32 size];
    if (qword_10096E8D8 != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for AnnotationImagesLayout.Metrics();
    sub_1000056A8(v34, qword_1009D29A0);
    AnnotationImagesLayout.Metrics.artworkSize.getter();
    v35 = v45;
    Artwork.crop.getter();
    Artwork.Crop.preferredContentMode.getter();
    (*v43)(v35, v46);
    CGSize.fitting(_:mode:)();
    type metadata accessor for LayoutViewPlaceholder();
    swift_allocObject();
    LayoutViewPlaceholder.init(representing:)();

    v6 = v49;
    v20 = v42;
LABEL_8:

    ++v19;
    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
  }

  while (v53 != v19);
  v17 = v56;
LABEL_28:
  sub_1002A5678(v17);

  if (qword_10096E8D8 != -1)
  {
    swift_once();
  }

  v36 = type metadata accessor for AnnotationImagesLayout.Metrics();
  sub_1000056A8(v36, qword_1009D29A0);
  static AnnotationImagesLayout.measurements(for:fitting:metrics:in:)();
}

char *sub_100549970(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtC8AppStore42ArcadeDownloadPackCategoriesViewController_pageView;
  type metadata accessor for ArcadeDownloadPackCategoriesPageView();
  *&v2[v5] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v6 = OBJC_IVAR____TtC8AppStore42ArcadeDownloadPackCategoriesViewController_continueButton;
  *&v2[v6] = [objc_opt_self() boldButton];
  v7 = OBJC_IVAR____TtC8AppStore42ArcadeDownloadPackCategoriesViewController_skipButton;
  *&v2[v7] = [objc_opt_self() linkButton];
  *&v2[OBJC_IVAR____TtC8AppStore42ArcadeDownloadPackCategoriesViewController_presenter] = a1;
  v8 = *&v2[v5];
  swift_retain_n();
  v9 = v8;

  v10 = sub_10054A374(a1, v9, a2, v2, &off_1008C4888);
  sub_10054A328(&qword_10098B558);
  v11 = v10;

  dispatch thunk of ArcadeDownloadPackCategoriesPagePresenter.view.setter();

  [*&v11[OBJC_IVAR____TtC8AppStore42ArcadeDownloadPackCategoriesViewController_continueButton] addTarget:v11 action:"didTapContinueButton" forControlEvents:64];
  [*&v11[OBJC_IVAR____TtC8AppStore42ArcadeDownloadPackCategoriesViewController_skipButton] addTarget:v11 action:"didTapSkipButton" forControlEvents:64];

  return v11;
}

void sub_100549CAC(uint64_t a1)
{
  v2 = v1;
  type metadata accessor for ArtworkLoader();
  type metadata accessor for BaseObjectGraph();
  inject<A, B>(_:from:)();
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_100486524(a1, v17, sub_10054A474, v4);

  v5 = *&v1[OBJC_IVAR____TtC8AppStore42ArcadeDownloadPackCategoriesViewController_continueButton];
  ArcadeDownloadPackCategoriesPage.primaryAction.getter();
  Action.title.getter();
  v7 = v6;

  if (v7)
  {
    v8 = String._bridgeToObjectiveC()();
  }

  else
  {
    v8 = 0;
  }

  [v5 setTitle:v8 forState:0];

  v9 = *&v2[OBJC_IVAR____TtC8AppStore42ArcadeDownloadPackCategoriesViewController_skipButton];
  ArcadeDownloadPackCategoriesPage.dismissAction.getter();
  Action.title.getter();
  v11 = v10;

  if (v11)
  {
    v12 = String._bridgeToObjectiveC()();
  }

  else
  {
    v12 = 0;
  }

  [v9 setTitle:v12 forState:0];

  v13 = String._bridgeToObjectiveC()();
  [v5 setAccessibilityIdentifier:v13];

  v14 = String._bridgeToObjectiveC()();
  [v9 setAccessibilityIdentifier:v14];

  v15 = [v2 buttonTray];
  [v15 addButton:v5];

  v16 = [v2 buttonTray];
  [v16 addButton:v9];

  sub_1005D9478();
}

uint64_t sub_100549F4C()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;

    dispatch thunk of ArcadeDownloadPackCategoriesPagePresenter.toggle(category:)();
  }

  return result;
}

id sub_100549FCC()
{
  v1 = [v0 buttonTray];
  ArcadeDownloadPackCategoriesPagePresenterViewState.countTitle.getter();
  v2 = String._bridgeToObjectiveC()();

  [v1 setCaptionText:v2 style:2];

  v3 = ArcadeDownloadPackCategoriesPagePresenterViewState.categorySelectionEnabled.getter();
  sub_10049A824(v3 & 1);
  v4 = *&v0[OBJC_IVAR____TtC8AppStore42ArcadeDownloadPackCategoriesViewController_continueButton];
  v5 = ArcadeDownloadPackCategoriesPagePresenterViewState.primaryButtonEnabled.getter() & 1;

  return [v4 setEnabled:v5];
}

uint64_t sub_10054A0B4()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC8AppStore32ArcadeDownloadPackViewController_objectGraph];
  type metadata accessor for ArcadeDownloadPackSuggestionsPagePresenter();
  swift_allocObject();
  swift_retain_n();

  ArcadeDownloadPackSuggestionsPagePresenter.init(objectGraph:categories:subscriptionStatus:)();
  v3 = objc_allocWithZone(type metadata accessor for ArcadeDownloadPackSuggestionsViewController());

  v5 = sub_10042275C(v4, v2);
  v6 = [v1 navigationController];
  if (v6)
  {
    v7 = v6;
    [v6 pushViewController:v5 animated:1];
  }
}

void sub_10054A1C4()
{

  v1 = *(v0 + OBJC_IVAR____TtC8AppStore42ArcadeDownloadPackCategoriesViewController_skipButton);
}

uint64_t sub_10054A328(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ArcadeDownloadPackCategoriesViewController();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_10054A374(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5)
{
  *&a4[OBJC_IVAR____TtC8AppStore32ArcadeDownloadPackViewController_overlayViewController] = 0;
  *&a4[OBJC_IVAR____TtC8AppStore32ArcadeDownloadPackViewController_presenter] = a1;
  *&a4[OBJC_IVAR____TtC8AppStore32ArcadeDownloadPackViewController_objectGraph] = a3;
  v7 = &a4[OBJC_IVAR____TtC8AppStore32ArcadeDownloadPackViewController_pageView];
  *v7 = a2;
  *(v7 + 1) = a5;
  v8 = &a4[OBJC_IVAR____TtC8AppStore32ArcadeDownloadPackViewController_lifecycleObserver];
  *(v8 + 3) = type metadata accessor for BasePresenter();
  *(v8 + 4) = &protocol witness table for BasePresenter;
  *v8 = a1;
  swift_retain_n();

  v9 = String._bridgeToObjectiveC()();
  v12.receiver = a4;
  v12.super_class = type metadata accessor for ArcadeDownloadPackViewController();
  v10 = objc_msgSendSuper2(&v12, "initWithTitle:detailText:icon:contentLayout:", v9, 0, 0, 2);

  return v10;
}

uint64_t sub_10054A47C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v59 = a5;
  v60 = a6;
  v9 = sub_10002849C(&qword_10098B560);
  __chkstk_darwin(v9 - 8);
  v54 = &v50 - v10;
  v64 = type metadata accessor for Dependency();
  v11 = *(v64 - 8);
  __chkstk_darwin(v64);
  v57 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v50 = &v50 - v14;
  v15 = type metadata accessor for MetricsPipeline();
  v68 = *(v15 - 8);
  __chkstk_darwin(v15);
  v55 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v69 = &v50 - v18;
  type metadata accessor for ArtworkLoader();
  BaseObjectGraph.optional<A>(_:)();
  v19 = v70;
  if (!v70)
  {
    result = dispatch thunk of BaseObjectGraph.noMemberFound<A>(toSatisfy:)();
    __break(1u);
    return result;
  }

  swift_allocObject();

  v58 = v19;
  v20 = ArtworkLoader.init(parent:)();
  v21 = sub_10002849C(&qword_1009844F0);
  v22 = *(v11 + 72);
  v63 = v11;
  v23 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v53 = 2 * v22;
  v52 = v21;
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1007B1890;
  v67 = v23;
  *&v70 = v20;
  v56 = v20;

  Dependency.init<A>(satisfying:with:)();
  sub_10002849C(&unk_100973270);
  type metadata accessor for LinkPresentationProvider();
  *&v70 = swift_allocObject();
  swift_allocObject();
  *&v70 = LinkLoader.init(_:)();
  Dependency.init<A>(satisfying:with:)();
  v73 = v24;
  v61 = a4;
  v62 = a1;
  if (a2)
  {
    swift_getObjectType();
    if (swift_conformsToProtocol2())
    {
      swift_unknownObjectRetain();
      dispatch thunk of MetricsPagePresenter.metricsPipeline.getter();
      v25 = dispatch thunk of MetricsPagePresenter.impressionsTracker.getter();
      v51 = v26;
      v66 = v25;
      swift_unknownObjectRetain();
      v27 = dispatch thunk of MetricsPagePresenter.impressionsCalculator.getter();
      swift_unknownObjectRelease();
      goto LABEL_7;
    }
  }

  type metadata accessor for ASKBagContract();
  type metadata accessor for BaseObjectGraph();
  inject<A, B>(_:from:)();
  ASKBagContract.impressionableViewablePercentage.getter();
  inject<A, B>(_:from:)();
  type metadata accessor for BasicImpressionsTracker();
  ASKBagContract.impressionableThreshold.getter();
  v28 = BasicImpressionsTracker.__allocating_init(threshold:)();
  type metadata accessor for ImpressionsCalculator();
  swift_allocObject();
  swift_retain_n();
  v66 = v28;
  v27 = ImpressionsCalculator.init(impressionableThreshold:tracker:)();

  if (a2)
  {
    v51 = &protocol witness table for BasicImpressionsTracker;
LABEL_7:
    swift_getObjectType();
    v29 = swift_conformsToProtocol2();
    v65 = v27;
    if (v29)
    {
      type metadata accessor for InlineUnifiedMessagePresenter();
      swift_getObjectType();
      swift_unknownObjectRetain();

      *&v70 = dispatch thunk of InlineUnifiedMessageProvidingPresenter.inlineUnifiedMessagePresenter.getter();
      v30 = v50;
      Dependency.init<A>(satisfying:with:)();
      v32 = *(v24 + 16);
      v31 = *(v24 + 24);
      if (v32 >= v31 >> 1)
      {
        v24 = sub_10003474C(v31 > 1, v32 + 1, 1, v24);
      }

      v33 = v67;
      swift_unknownObjectRelease();
      *(v24 + 16) = v32 + 1;
      (*(v63 + 32))(v24 + v33 + v32 * v22, v30, v64);
      v73 = v24;
    }

    else
    {
    }

    goto LABEL_13;
  }

  v51 = &protocol witness table for BasicImpressionsTracker;
  v65 = v27;
LABEL_13:
  v50 = (8 * v22);
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_1007B5370;
  type metadata accessor for VideoViewManager();
  v72 = 0;
  v70 = 0u;
  v71 = 0u;
  v34 = v68;
  v35 = v69;
  v36 = *(v68 + 16);
  v37 = v54;
  v36(v54, v69, v15);
  (*(v34 + 56))(v37, 0, 1, v15);
  swift_allocObject();
  *&v70 = VideoViewManager.init(networkInquiry:metricsPipeline:)();
  Dependency.init<A>(satisfying:with:)();
  v38 = type metadata accessor for VideoPlaybackCoordinator();
  type metadata accessor for AutoPlayVideoSettingsManager();
  v39 = static AutoPlayVideoSettingsManager.shared.getter();
  dispatch thunk of AutoPlayVideoSettingsManager.isAutoPlayEnabled.getter();

  v40 = v55;
  v36(v55, v35, v15);
  v41 = objc_allocWithZone(v38);
  *&v70 = VideoPlaybackCoordinator.init(isGlobalAutoPlayEnabled:metricsPipeline:)();
  Dependency.init<A>(satisfying:with:)();
  *&v70 = [objc_allocWithZone(type metadata accessor for PlaybackCoordinator()) init];
  Dependency.init<A>(satisfying:with:)();
  v36(v40, v35, v15);
  Dependency.init<A>(satisfying:with:)();
  sub_10002849C(&qword_100977128);
  *&v70 = v66;
  *(&v70 + 1) = v51;
  Dependency.init<A>(satisfying:with:)();
  type metadata accessor for ImpressionsCalculator();
  *&v70 = v65;
  Dependency.init<A>(satisfying:with:)();
  type metadata accessor for TodayCardOverlayReusePool();
  swift_allocObject();
  *&v70 = sub_100472D20(25);
  Dependency.init<A>(satisfying:with:)();
  type metadata accessor for TodayCardGridTracker();
  v42 = swift_allocObject();
  *(v42 + 16) = sub_100398804(&_swiftEmptyArrayStorage);
  *&v70 = v42;
  Dependency.init<A>(satisfying:with:)();
  sub_100394804(v52);
  type metadata accessor for ThreeDimensionalAppIconSnapshotter();
  swift_allocObject();

  *&v70 = ThreeDimensionalAppIconSnapshotter.init(_:)();
  v43 = v57;
  Dependency.init<A>(satisfying:with:)();
  v44 = v73;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v44 = sub_10003474C(0, *(v44 + 2) + 1, 1, v44);
  }

  v45 = v61;
  v47 = *(v44 + 2);
  v46 = *(v44 + 3);
  if (v47 >= v46 >> 1)
  {
    v44 = sub_10003474C(v46 > 1, v47 + 1, 1, v44);
  }

  *(v44 + 2) = v47 + 1;
  (*(v63 + 32))(&v44[v67 + v47 * v22], v43, v64);
  type metadata accessor for BaseObjectGraph();

  BaseObjectGraph.__allocating_init(name:_:)();
  *&v70 = v44;
  sub_10002849C(&qword_100984B10);
  sub_100412FF4();
  dispatch thunk of BaseObjectGraph.adding<A>(allDependencies:)();

  *&v70 = v45;
  dispatch thunk of BaseObjectGraph.adding<A>(allDependencies:)();

  v48 = dispatch thunk of BaseObjectGraph.adding(allDependenciesOf:)();

  swift_unknownObjectRelease();

  (*(v68 + 8))(v69, v15);
  return v48;
}

uint64_t sub_10054AED8(void *a1)
{
  if (*v1 == *a1)
  {
    return static AnyHashable.== infix(_:_:)();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10054AF64()
{
  sub_10003D614(v0 + 16);

  return swift_deallocClassInstance();
}

Swift::Int sub_10054AFC0()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  (*(*v1 + 104))(v3);
  return Hasher._finalize()();
}

Swift::Int sub_10054B068()
{
  Hasher.init(_seed:)();
  (*(**v0 + 104))(v2);
  return Hasher._finalize()();
}

unint64_t sub_10054B118()
{
  result = qword_10098B620;
  if (!qword_10098B620)
  {
    type metadata accessor for DebugSetting();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10098B620);
  }

  return result;
}

double sub_10054B1B8(uint64_t a1)
{
  v2 = sub_10002849C(&qword_100972ED0);
  __chkstk_darwin(v2 - 8);
  v4 = &v66 - v3;
  v5 = type metadata accessor for AspectRatio();
  v74 = *(v5 - 8);
  __chkstk_darwin(v5);
  v73 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PageGrid.Direction();
  v72 = *(v7 - 8);
  __chkstk_darwin(v7);
  v71 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v66 - v10;
  v12 = type metadata accessor for PageGrid();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v66 - v17;
  type metadata accessor for FramedVideo();
  sub_10054BE08(&qword_10098B640, &type metadata accessor for FramedVideo);
  ItemLayoutContext.typedModel<A>(as:)();
  if (!aBlock[0])
  {
    return 0.0;
  }

  v70 = v5;
  v68 = v4;

  v19 = FramedMedia.isFullWidth.getter();
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  v20 = (v13 + 8);
  v69 = a1;
  if (v19)
  {
    PageGrid.componentMeasuringSize(spanning:)();
    v22 = v21;
    (*v20)(v18, v12);
  }

  else
  {
    PageGrid.containerWidth.getter();
    v24 = *v20;
    (*v20)(v18, v12);
    v67 = v24;
    swift_getKeyPath();
    ItemLayoutContext.subscript.getter();

    PageGrid.containerHeight.getter();
    v24(v15, v12);
    v25 = v72;
    (*(v72 + 104))(v11, enum case for PageGrid.Direction.vertical(_:), v7);
    swift_getKeyPath();
    ItemLayoutContext.subscript.getter();

    PageGrid.safeAreaInsets.getter();
    v26 = v67;
    v67(v15, v12);
    (*(v25 + 16))(v71, v11, v7);
    sub_10069F96C(0.0);
    PageGrid.init(name:direction:containerSize:readableContentInsets:safeAreaInsets:requiresAdditionalSafeAreaMargins:breakpoints:)();
    (*(v25 + 8))(v11, v7);
    PageGrid.componentMeasuringSize(spanning:)();
    v22 = v27;
    v26(v18, v12);
  }

  v28 = FramedVideo.artwork.getter();
  v29 = v70;
  if (v28)
  {
    Artwork.size.getter();
    v30 = v73;
    AspectRatio.init(_:_:)();
    AspectRatio.height(fromWidth:)();
    v32 = v31;
    (*(v74 + 8))(v30, v29);
    v33 = FramedMedia.isFullWidth.getter();

    if (v22 >= v32)
    {
      v34 = v32;
    }

    else
    {
      v34 = v22;
    }

    if (v33)
    {
      v34 = v32;
    }

    v23 = v34 + 0.0;
  }

  else
  {
    v23 = 0.0;
  }

  v35 = FramedMedia.caption.getter();
  v36 = [v35 length];

  if (v36 < 1)
  {

    return v23;
  }

  CGSize.subtracting(insets:)();
  FramedMedia.ordinal.getter();
  if (v37)
  {
    if (qword_10096E228 != -1)
    {
      swift_once();
    }

    v38 = type metadata accessor for FontUseCase();
    sub_1000056A8(v38, qword_1009D15F8);
    swift_getKeyPath();
    ItemLayoutContext.subscript.getter();

    v39 = type metadata accessor for Feature();
    v77 = v39;
    v78 = sub_10054BE08(&qword_100972E50, &type metadata accessor for Feature);
    v40 = sub_1000056E0(aBlock);
    (*(*(v39 - 8) + 104))(v40, enum case for Feature.measurement_with_labelplaceholder(_:), v39);
    isFeatureEnabled(_:)();
    sub_100007000(aBlock);
    static LabelPlaceholderCompatibility.measurements(text:fontUseCase:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:fitting:in:shouldUseLabelPlaceholder:)();
    swift_unknownObjectRelease();
  }

  v41 = FramedMedia.caption.getter();

  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  v42 = v80;
  v43 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v41];
  v44 = [v41 length];
  v45 = swift_allocObject();
  *(v45 + 16) = 0;
  *(v45 + 24) = v42;
  *(v45 + 32) = v43;
  *(v45 + 40) = 1;
  v46 = swift_allocObject();
  v46[2] = sub_10010279C;
  v46[3] = v45;
  v78 = sub_1001027AC;
  v79 = v46;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1006606C4;
  v77 = &unk_1008C8108;
  v47 = _Block_copy(aBlock);
  v48 = v42;
  v49 = v43;

  [v41 enumerateAttributesInRange:0 options:v44 usingBlock:{0x100000, v47}];

  _Block_release(v47);
  LOBYTE(v41) = swift_isEscapingClosureAtFileLocation();

  if (v41)
  {
    __break(1u);
    goto LABEL_29;
  }

  v50 = qword_10096E220;
  v46 = v49;
  if (v50 != -1)
  {
LABEL_29:
    swift_once();
  }

  v51 = type metadata accessor for FontUseCase();
  v52 = sub_1000056A8(v51, qword_1009D15E0);
  v53 = *(v51 - 8);
  v54 = v68;
  (*(v53 + 16))(v68, v52, v51);
  (*(v53 + 56))(v54, 0, 1, v51);
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  v55 = type metadata accessor for Feature();
  v77 = v55;
  v78 = sub_10054BE08(&qword_100972E50, &type metadata accessor for Feature);
  v56 = sub_1000056E0(aBlock);
  (*(*(v55 - 8) + 104))(v56, enum case for Feature.measurement_with_labelplaceholder(_:), v55);
  isFeatureEnabled(_:)();
  sub_100007000(aBlock);
  static LabelPlaceholderCompatibility.measurements(attributedText:fontUseCase:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:fitting:in:shouldUseLabelPlaceholder:)();
  v58 = v57;

  swift_unknownObjectRelease();
  sub_10025BAF0(v54);
  if (qword_10096E690 != -1)
  {
    swift_once();
  }

  v59 = type metadata accessor for StaticDimension();
  sub_1000056A8(v59, qword_1009D2368);
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  AnyDimension.topMargin(from:in:)();
  v61 = v60;
  swift_unknownObjectRelease();
  v62 = v58 + v23 + v61;
  if (qword_10096E698 != -1)
  {
    swift_once();
  }

  sub_1000056A8(v59, qword_1009D2380);
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  AnyDimension.bottomMargin(from:in:)();
  v64 = v63;
  swift_unknownObjectRelease();

  return v62 + v64;
}

uint64_t sub_10054BE08(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10054BE64()
{
  result = qword_10098B648;
  if (!qword_10098B648)
  {
    type metadata accessor for ClearAppUsageDataAction();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10098B648);
  }

  return result;
}

uint64_t sub_10054BEC4()
{
  v0 = type metadata accessor for ActionOutcome();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for OnDevicePersonalizationDataManager();
  type metadata accessor for BaseObjectGraph();
  inject<A, B>(_:from:)();
  v4 = v9;
  OnDevicePersonalizationDataManager.clearData()();
  type metadata accessor for AppStoreOnDeviceRecommendationsManager();
  inject<A, B>(_:from:)();
  v5 = v9;
  dispatch thunk of AppStoreOnDeviceRecommendationsManager.clearData()();
  sub_10002849C(&qword_1009764A0);
  (*(v1 + 104))(v3, enum case for ActionOutcome.performed(_:), v0);
  v6 = Promise.__allocating_init(value:)();

  return v6;
}

uint64_t sub_10054C054()
{
  v0 = type metadata accessor for FloatingPointRoundingRule();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10096E6B8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for StaticDimension();
  sub_1000056A8(v4, qword_1009D2448);
  static Dimensions.defaultRoundingRule.getter();
  AnyDimension.value(in:rounded:)();
  v6 = v5;
  (*(v1 + 8))(v3, v0);
  return v6;
}

unint64_t sub_10054C22C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v49 = type metadata accessor for PrivacyHeaderLayout.Metrics();
  v48 = *(v49 - 8);
  __chkstk_darwin(v49);
  v51 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = type metadata accessor for PrivacyHeaderLayout();
  v53 = *(v54 - 8);
  __chkstk_darwin(v54);
  v52 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = type metadata accessor for LabelPlaceholderCompatibility();
  v9 = *(v59 - 8);
  __chkstk_darwin(v59);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for FontUseCase();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100005744(0, &qword_1009730E0);
  if (qword_10096E070 != -1)
  {
    swift_once();
  }

  v16 = sub_1000056A8(v12, qword_1009D10D0);
  v55 = a5;
  v17 = [a5 traitCollection];
  v60 = static UIFont.preferredFont(forUseWith:compatibleWith:)();

  (*(v13 + 16))(v15, v16, v12);
  v18 = type metadata accessor for DynamicTypeLinkedLabel();
  v19 = objc_allocWithZone(v18);
  v20 = sub_1002F5B8C(v15, 0, 0);
  PrivacyHeader.bodyText.getter();
  v21 = LinkableText.linkedSubstrings.getter();
  v22 = sub_1000D6F24(v21, sub_1000C17B0);

  v23 = LinkableText.styledText.getter();
  sub_1002F6004(v23, 0, v22);

  result = PrivacyHeader.supplementaryItems.getter();
  v25 = result;
  if (result >> 62)
  {
    v45 = result;
    result = _CocoaArrayWrapper.endIndex.getter();
    v25 = v45;
    v26 = result;
  }

  else
  {
    v26 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v50 = a1;
  v47 = v18;
  v46 = v20;
  if (v26)
  {
    if (v26 < 1)
    {
      __break(1u);
      return result;
    }

    v27 = 0;
    v57 = v25 & 0xC000000000000001;
    v56 = enum case for Feature.measurement_with_labelplaceholder(_:);
    v28 = _swiftEmptyArrayStorage;
    v58 = v25;
    do
    {
      if (v57)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
      }

      PrivacyHeaderSupplementaryItem.bodyText.getter();
      LinkableText.styledText.getter();

      v29 = v60;
      v30 = dispatch thunk of StyledText.asAttributedString(using:)();

      v31 = type metadata accessor for Feature();
      v68 = v31;
      v69 = sub_10054D394(&qword_100972E50, &type metadata accessor for Feature);
      v32 = sub_1000056E0(v67);
      (*(*(v31 - 8) + 104))(v32, v56, v31);
      v33 = v30;
      v34 = v29;
      isFeatureEnabled(_:)();
      sub_100007000(v67);
      LabelPlaceholderCompatibility.init(attributedText:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
      LabelPlaceholderCompatibility.layoutTextView.getter();
      (*(v9 + 8))(v11, v59);
      sub_10002C0AC(v67, &v64);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v28 = sub_1000337A4(0, *(v28 + 2) + 1, 1, v28);
      }

      v36 = *(v28 + 2);
      v35 = *(v28 + 3);
      if (v36 >= v35 >> 1)
      {
        v28 = sub_1000337A4((v35 > 1), v36 + 1, 1, v28);
      }

      ++v27;

      sub_100007000(v67);
      *(v28 + 2) = v36 + 1;
      sub_100005A38(&v64, &v28[5 * v36 + 4]);
    }

    while (v26 != v27);
  }

  else
  {
    v28 = _swiftEmptyArrayStorage;
  }

  v37 = [v55 traitCollection];
  static Separator.thickness(compatibleWith:)();

  v38 = type metadata accessor for LayoutViewPlaceholder();
  swift_allocObject();
  v39 = LayoutViewPlaceholder.init(representing:)();
  if (qword_10096E5A0 != -1)
  {
    swift_once();
  }

  v40 = v49;
  v41 = sub_1000056A8(v49, qword_1009D1FD8);
  (*(v48 + 16))(v51, v41, v40);
  PrivacyHeader.isDetailHeader.getter();
  v68 = v47;
  v69 = &protocol witness table for UIView;
  v67[0] = v46;
  v42 = v46;
  sub_1002A4AF4(v28);

  v65 = v38;
  v66 = &protocol witness table for LayoutViewPlaceholder;
  v63 = &protocol witness table for LayoutViewPlaceholder;
  *&v64 = v39;
  v62 = v38;
  v61 = v39;
  swift_retain_n();
  v43 = v52;
  PrivacyHeaderLayout.init(metrics:isDetailHeader:bodyLabel:supplementaryItemLabels:topSeparatorView:middleSeparatorView:actionButtons:)();
  sub_10054D394(&unk_10097E560, &type metadata accessor for PrivacyHeaderLayout);
  v44 = v54;
  dispatch thunk of Measurable.measurements(fitting:in:)();

  return (*(v53 + 8))(v43, v44);
}

size_t sub_10054CAA8(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v4 = v3;
  v7 = type metadata accessor for Separator.Position();
  v8 = *(v7 - 8);
  v62 = v7;
  v63 = v8;
  __chkstk_darwin(v7);
  v58 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10002849C(&unk_100970E10);
  __chkstk_darwin(v10 - 8);
  v59 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v61 = &v58 - v13;
  v68 = sub_10002849C(&qword_100973288);
  v14 = *(v68 - 8);
  __chkstk_darwin(v68);
  v67 = &v58 - v15;
  v16 = sub_10002849C(&unk_100993020);
  __chkstk_darwin(v16 - 8);
  v18 = &v58 - v17;
  v70[0] = PrivacyHeader.bodyText.getter();
  type metadata accessor for LinkableText();
  v19 = type metadata accessor for BaseObjectGraph();
  sub_10054D394(&qword_100973290, &type metadata accessor for LinkableText);
  v69 = a3;
  v66 = v19;
  ComponentModel.pairedWith<A>(objectGraph:)();

  v20 = sub_10002849C(&unk_100993030);
  (*(*(v20 - 8) + 56))(v18, 0, 1, v20);
  v21 = OBJC_IVAR____TtC8AppStore31PrivacyHeaderCollectionViewCell_bodyText;
  swift_beginAccess();
  sub_1000C112C(v18, v4 + v21, &unk_100993020);
  swift_endAccess();
  sub_1004C3F10();
  sub_10002B894(v18, &unk_100993020);
  LOBYTE(v19) = PrivacyHeader.isDetailHeader.getter();
  *(v4 + OBJC_IVAR____TtC8AppStore31PrivacyHeaderCollectionViewCell_isDetailHeader) = v19 & 1;
  v22 = *(v4 + OBJC_IVAR____TtC8AppStore31PrivacyHeaderCollectionViewCell_bodyLabel);
  sub_100005744(0, &qword_100970180);
  if (v19)
  {
    v23 = static UIColor.primaryText.getter();
  }

  else
  {
    v23 = static UIColor.secondaryText.getter();
  }

  v24 = *(v22 + qword_10097F920);
  *(v22 + qword_10097F920) = v23;
  v25 = v23;
  if ((static NSObject.== infix(_:_:)() & 1) == 0)
  {
    sub_1002F63D4();
  }

  v26 = PrivacyHeader.supplementaryItems.getter();
  if (v26 >> 62)
  {
    v57 = v26;
    v27 = _CocoaArrayWrapper.endIndex.getter();
    v26 = v57;
  }

  else
  {
    v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v64 = v4;
  v60 = a1;
  if (v27)
  {
    v28 = v26;
    v70[0] = _swiftEmptyArrayStorage;
    result = sub_100144004(0, v27 & ~(v27 >> 63), 0);
    if (v27 < 0)
    {
      __break(1u);
      return result;
    }

    v30 = 0;
    v31 = v70[0];
    v32 = v28;
    v65 = v28 & 0xC000000000000001;
    v33 = v28;
    v34 = v27;
    do
    {
      if (v65)
      {
        v35 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v35 = *(v32 + 8 * v30 + 32);
      }

      v73 = v35;
      type metadata accessor for PrivacyHeaderSupplementaryItem();
      sub_10054D394(&qword_100973298, &type metadata accessor for PrivacyHeaderSupplementaryItem);
      v36 = v67;
      ComponentModel.pairedWith<A>(objectGraph:)();

      v70[0] = v31;
      v38 = *(v31 + 2);
      v37 = *(v31 + 3);
      if (v38 >= v37 >> 1)
      {
        sub_100144004(v37 > 1, v38 + 1, 1);
        v31 = v70[0];
      }

      ++v30;
      *(v31 + 2) = v38 + 1;
      (*(v14 + 32))(v31 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v38, v36, v68);
      v32 = v33;
    }

    while (v34 != v30);

    v4 = v64;
  }

  else
  {

    v31 = _swiftEmptyArrayStorage;
  }

  sub_1004C56C0();
  v39 = OBJC_IVAR____TtC8AppStore31PrivacyHeaderCollectionViewCell_supplementaryItems;
  *(v4 + OBJC_IVAR____TtC8AppStore31PrivacyHeaderCollectionViewCell_supplementaryItems) = v31;

  sub_1004C41B4();
  if (PrivacyHeader.isDetailHeader.getter())
  {
    v40 = *(v63 + 104);
    v63 += 104;
    v41 = v58;
    LODWORD(v68) = enum case for Separator.Position.top(_:);
    v67 = v40;
    (v40)(v58);
    v42 = type metadata accessor for ZeroDimension();
    v71 = v42;
    v72 = &protocol witness table for ZeroDimension;
    sub_1000056E0(v70);
    static ZeroDimension.zero.getter();
    v43 = v61;
    Separator.init(position:leadingInset:trailingInset:verticalOutset:)();
    v44 = type metadata accessor for Separator();
    v45 = 1;
    v69 = *(*(v44 - 8) + 56);
    v69(v43, 0, 1, v44);
    v46 = OBJC_IVAR____TtC8AppStore31PrivacyHeaderCollectionViewCell_topSeparator;
    swift_beginAccess();
    sub_1000C112C(v43, v64 + v46, &unk_100970E10);
    swift_endAccess();
    sub_1004C4970();
    v47 = v64;
    sub_10002B894(v43, &unk_100970E10);
    if (*(*(v47 + v39) + 16))
    {
      (v67)(v41, v68, v62);
      v71 = v42;
      v72 = &protocol witness table for ZeroDimension;
      sub_1000056E0(v70);
      static ZeroDimension.zero.getter();
      v48 = v59;
      Separator.init(position:leadingInset:trailingInset:verticalOutset:)();
      v45 = 0;
    }

    else
    {
      v48 = v59;
    }

    v69(v48, v45, 1, v44);
    v56 = OBJC_IVAR____TtC8AppStore31PrivacyHeaderCollectionViewCell_middleSeparator;
    swift_beginAccess();
    v54 = v47 + v56;
    v55 = v48;
  }

  else
  {
    v49 = type metadata accessor for Separator();
    v50 = *(*(v49 - 8) + 56);
    v48 = v61;
    v50(v61, 1, 1, v49);
    v51 = OBJC_IVAR____TtC8AppStore31PrivacyHeaderCollectionViewCell_topSeparator;
    swift_beginAccess();
    sub_1000C112C(v48, v64 + v51, &unk_100970E10);
    swift_endAccess();
    sub_1004C4970();
    sub_10002B894(v48, &unk_100970E10);
    v50(v48, 1, 1, v49);
    v52 = v64;
    v53 = OBJC_IVAR____TtC8AppStore31PrivacyHeaderCollectionViewCell_middleSeparator;
    swift_beginAccess();
    v54 = v52 + v53;
    v55 = v48;
  }

  sub_1000C112C(v55, v54, &unk_100970E10);
  swift_endAccess();
  sub_1004C4984();
  return sub_10002B894(v48, &unk_100970E10);
}

uint64_t sub_10054D394(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10054D488(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_10054D620()
{
  v1 = [v0 collectionView];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 panGestureRecognizer];

    [v3 removeTarget:v0 action:0];
  }

  v5.receiver = v0;
  v5.super_class = type metadata accessor for ScreenshotGalleryCollectionViewFlowLayout();
  return objc_msgSendSuper2(&v5, "dealloc");
}

uint64_t type metadata accessor for ScreenshotGalleryCollectionViewFlowLayout()
{
  result = qword_10098B710;
  if (!qword_10098B710)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10054D7C8()
{
  v7.receiver = v0;
  v7.super_class = type metadata accessor for ScreenshotGalleryCollectionViewFlowLayout();
  objc_msgSendSuper2(&v7, "prepareLayout");
  v1 = [v0 collectionView];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 panGestureRecognizer];

    [v3 removeTarget:v0 action:0];
  }

  v4 = [v0 collectionView];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 panGestureRecognizer];

    [v6 addTarget:v0 action:"panGestureRecognizedBy:"];
  }
}

void sub_10054D9D4(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = sub_10002849C(&unk_10097DAE0);
  __chkstk_darwin(v10 - 8);
  v12 = v74 - v11;
  v13 = type metadata accessor for IndexPath();
  v14 = *(v13 - 8);
  *&v15 = __chkstk_darwin(v13).n128_u64[0];
  v17 = v74 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = [v4 collectionView];
  if (!v18)
  {
    goto LABEL_14;
  }

  v19 = v18;
  [v19 bounds];
  v20 = [v4 layoutAttributesForElementsInRect:?];
  if (!v20 || ((v21 = v20, sub_10025A08C(), v22 = static Array._unconditionallyBridgeFromObjectiveC(_:)(), v21, v22 >> 62) ? (v23 = _CocoaArrayWrapper.endIndex.getter()) : (v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10)), , !v23))
  {

LABEL_14:
    v36 = type metadata accessor for ScreenshotGalleryCollectionViewFlowLayout();
    v78.receiver = v5;
    v78.super_class = v36;
    objc_msgSendSuper2(&v78, "targetContentOffsetForProposedContentOffset:withScrollingVelocity:", a1, a2, a3, a4);
    return;
  }

  v24 = type metadata accessor for ScreenshotGalleryCollectionViewFlowLayout();
  v77.receiver = v5;
  v77.super_class = v24;
  objc_msgSendSuper2(&v77, "targetContentOffsetForProposedContentOffset:withScrollingVelocity:", a1, a2, a3, a4);
  v26 = v25;
  v27 = [v19 numberOfItemsInSection:0];
  v28 = v27 - 1;
  if (v27 < 1)
  {
    goto LABEL_23;
  }

  v74[1] = v26;
  [v19 frame];
  v30 = v29 + a1;
  [v5 collectionViewContentSize];
  if (v30 >= v31)
  {
    goto LABEL_23;
  }

  v32 = [v19 traitCollection];
  v33 = UITraitCollection.prefersRightToLeftLayouts.getter();

  v76 = v33;
  if (v33)
  {
    v34 = v28;
  }

  else
  {
    v34 = 0;
  }

  if (a1 > 0.0)
  {
    v35 = 0.0;
    v75 = xmmword_1007B1890;
    do
    {
      sub_10002849C(&qword_100980550);
      v38 = swift_allocObject();
      *(v38 + 16) = v75;
      *(v38 + 32) = 0;
      *(v38 + 40) = v34;
      IndexPath.init(arrayLiteral:)();
      isa = IndexPath._bridgeToObjectiveC()().super.isa;
      (*(v14 + 8))(v17, v13);
      v40 = [v5 layoutAttributesForItemAtIndexPath:isa];

      if (!v40)
      {
        goto LABEL_23;
      }

      [v40 bounds];
      v42 = v41;
      v44 = v43;
      v46 = v45;
      v48 = v47;

      v79.origin.x = v42;
      v79.origin.y = v44;
      v79.size.width = v46;
      v79.size.height = v48;
      Width = CGRectGetWidth(v79);
      if (v35 + Width * 0.5 >= a1)
      {
        break;
      }

      [v5 minimumLineSpacing];
      if (v76)
      {
        v37 = __OFSUB__(v34--, 1);
        if (v37)
        {
          __break(1u);
          goto LABEL_45;
        }
      }

      else
      {
        v37 = __OFADD__(v34++, 1);
        if (v37)
        {
          __break(1u);
          goto LABEL_23;
        }
      }

      v35 = v35 + Width + v50;
    }

    while (v35 < a1);
  }

  v51 = OBJC_IVAR____TtC8AppStore41ScreenshotGalleryCollectionViewFlowLayout_indexPathAtInitialScroll;
  swift_beginAccess();
  sub_10022BA04(v5 + v51, v12);
  if ((*(v14 + 48))(v12, 1, v13))
  {
    sub_10022BA74(v12);
    v52 = &selRef__setDefaultAttributes_;
    goto LABEL_40;
  }

  v53 = IndexPath.item.getter();
  sub_10022BA74(v12);
  v52 = &selRef__setDefaultAttributes_;
  if (v34 != v53)
  {
    goto LABEL_40;
  }

  if (!((a3 >= 0.0) | v76 & 1))
  {
LABEL_31:
    if (!__OFSUB__(v34, 1))
    {
      v34 = (v34 - 1) & ~((v34 - 1) >> 63);
      goto LABEL_40;
    }

LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  if (a3 <= 0.0)
  {
    if (a3 < 0.0 && ((v76 ^ 1) & 1) == 0)
    {
      goto LABEL_35;
    }

LABEL_40:
    sub_10002849C(&qword_100980550);
    v55 = swift_allocObject();
    *(v55 + 16) = xmmword_1007B1890;
    *(v55 + 32) = 0;
    *(v55 + 40) = v34;
    IndexPath.init(arrayLiteral:)();
    v56 = IndexPath._bridgeToObjectiveC()().super.isa;
    (*(v14 + 8))(v17, v13);
    v57 = [v5 layoutAttributesForItemAtIndexPath:v56];

    if (v57)
    {
      [v57 frame];
      v59 = v58;
      v61 = v60;
      v63 = v62;
      v65 = v64;

      [v19 v52[378]];
      v67 = v66;
      v69 = v68;
      v71 = v70;
      v73 = v72;

      v80.origin.x = v67;
      v80.origin.y = v69;
      v80.size.width = v71;
      v80.size.height = v73;
      CGRectGetWidth(v80);
      v81.origin.x = v59;
      v81.origin.y = v61;
      v81.size.width = v63;
      v81.size.height = v65;
      CGRectGetWidth(v81);

      return;
    }

LABEL_23:

    return;
  }

  if (v76)
  {
    goto LABEL_31;
  }

LABEL_35:
  v54 = [v19 numberOfItemsInSection:0];
  if (__OFSUB__(v54, 1))
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  if (!__OFADD__(v34, 1))
  {
    if (v34 + 1 >= v54 - 1)
    {
      v34 = v54 - 1;
    }

    else
    {
      ++v34;
    }

    goto LABEL_40;
  }

LABEL_47:
  __break(1u);
}

id sub_10054E078(void *a1)
{
  v3 = sub_10002849C(&unk_10097DAE0);
  __chkstk_darwin(v3 - 8);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v7 = __chkstk_darwin(v6).n128_u64[0];
  v9 = &v30 - v8;
  result = [a1 state];
  if (result == 1)
  {
    v11 = [v1 collectionView];
    if (v11)
    {
      v12 = v11;
      v13 = [v1 collectionView];
      if (v13)
      {
        v14 = v13;
        [v14 bounds];
        MidX = CGRectGetMidX(v31);
        [v14 bounds];
        v17 = v16;
        v19 = v18;
        v21 = v20;
        v23 = v22;

        v32.origin.x = v17;
        v32.origin.y = v19;
        v32.size.width = v21;
        v32.size.height = v23;
        MidY = CGRectGetMidY(v32);
      }

      else
      {
        MidX = 0.0;
        MidY = 0.0;
      }

      v26 = [v12 indexPathForItemAtPoint:{MidX, MidY}];

      if (v26)
      {
        static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

        v27 = type metadata accessor for IndexPath();
        (*(*(v27 - 8) + 56))(v5, 0, 1, v27);
      }

      else
      {
        v28 = type metadata accessor for IndexPath();
        (*(*(v28 - 8) + 56))(v5, 1, 1, v28);
      }

      sub_1003CB070(v5, v9);
    }

    else
    {
      v25 = type metadata accessor for IndexPath();
      (*(*(v25 - 8) + 56))(v9, 1, 1, v25);
    }

    v29 = OBJC_IVAR____TtC8AppStore41ScreenshotGalleryCollectionViewFlowLayout_indexPathAtInitialScroll;
    swift_beginAccess();
    sub_1000F4070(v9, v1 + v29);
    return swift_endAccess();
  }

  return result;
}

id sub_10054E380(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (*(a3 + 16))(a3, a1, a2);

  return v3;
}

id sub_10054E3C4(uint64_t a1, uint64_t a2, void *a3)
{
  aBlock[4] = a1;
  aBlock[5] = a2;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1002E9BD4;
  aBlock[3] = &unk_1008C8248;
  v5 = _Block_copy(aBlock);

  v11.receiver = v3;
  v11.super_class = type metadata accessor for SearchResultsCollectionCompositionalLayout();
  v6 = objc_msgSendSuper2(&v11, "initWithSectionProvider:configuration:", v5, a3);
  _Block_release(v5);
  type metadata accessor for SearchTransparencyView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = v6;
  static UICollectionReusableView.elementKind.getter();
  v9 = String._bridgeToObjectiveC()();

  [v8 registerClass:ObjCClassFromMetadata forDecorationViewOfKind:v9];

  return v8;
}

double sub_10054E5B8()
{
  v1 = v0;
  v2 = type metadata accessor for PageGrid();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v27 - v7;
  __chkstk_darwin(v9);
  v11 = &v27 - v10;
  v12 = type metadata accessor for SearchResultsCollectionCompositionalLayout();
  v27.receiver = v0;
  v27.super_class = v12;
  objc_msgSendSuper2(&v27, "collectionViewContentSize");
  v14 = v13;
  v15 = [v0 collectionView];
  if (!v15)
  {
    return v14;
  }

  v16 = v15;
  v17 = [v0 collectionView];
  if (!v17 || (v18 = v17, v19 = [v17 delegate], v18, !v19))
  {

    return v14;
  }

  swift_getObjectType();
  if (!swift_conformsToProtocol2())
  {

    swift_unknownObjectRelease();
    return v14;
  }

  sub_10027356C(v16);
  swift_unknownObjectRelease();
  (*(v3 + 32))(v11, v8, v2);
  v20 = [v1 collectionView];
  if (!v20 || (v21 = v20, v22 = [v20 delegate], v21, !v22))
  {

LABEL_12:
    (*(v3 + 8))(v11, v2);
    return v14;
  }

  swift_getObjectType();
  if (!swift_conformsToProtocol2())
  {

    swift_unknownObjectRelease();
    goto LABEL_12;
  }

  v23 = dispatch thunk of SearchResultsDiffablePagePresenter.transparencyLink.getter();
  if (v23)
  {
    v24 = v23;
    sub_10027356C(v16);
    static CGFloat.allColumns.getter();
    PageGrid.componentMeasuringSize(spanning:)();
    sub_100273BA4(v25, v24, v16);
    swift_unknownObjectRelease();

    (*(v3 + 8))(v5, v2);
  }

  else
  {
    swift_unknownObjectRelease();
  }

  PageGrid.interRowSpace.getter();

  (*(v3 + 8))(v11, v2);
  return v14;
}

uint64_t sub_10054E8F4(double a1)
{
  v2 = v1;
  v61 = sub_10002849C(&qword_100980740);
  __chkstk_darwin(v61);
  v5 = &v50 - v4;
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v65 = &v50 - v11;
  v12 = sub_10002849C(&unk_10097DAE0);
  __chkstk_darwin(v12 - 8);
  v14 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v50 - v16;
  __chkstk_darwin(v18);
  v63 = &v50 - v19;
  v20 = sub_10054F3C0(a1);
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v27 = type metadata accessor for SearchResultsCollectionCompositionalLayout();
  v67.receiver = v1;
  v67.super_class = v27;
  result = objc_msgSendSuper2(&v67, "layoutAttributesForElementsInRect:", v20, v22, v24, v26);
  if (!result)
  {
    return result;
  }

  v29 = result;
  sub_10025A08C();
  v55 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v30 = [v2 collectionView];
  if (!v30)
  {
    return v55;
  }

  v31 = v30;
  v32 = [v30 delegate];

  if (!v32)
  {
    return v55;
  }

  swift_getObjectType();
  if (!swift_conformsToProtocol2())
  {
    swift_unknownObjectRelease();
    return v55;
  }

  sub_1002733FC(v63);
  v66 = _swiftEmptyArrayStorage;
  if (v55 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
      goto LABEL_7;
    }

LABEL_30:
    v49 = _swiftEmptyArrayStorage;
LABEL_31:
    swift_unknownObjectRelease();

    sub_10002B894(v63, &unk_10097DAE0);
    return v49;
  }

  result = *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_30;
  }

LABEL_7:
  v50 = v32;
  v54 = v14;
  v52 = v9;
  v62 = v2;
  if (result >= 1)
  {
    v33 = 0;
    v34 = v55;
    v58 = (v7 + 16);
    v59 = v55 & 0xC000000000000001;
    v57 = (v7 + 56);
    v35 = (v7 + 48);
    v51 = (v7 + 32);
    v64 = (v7 + 8);
    v56 = (v7 + 48);
    v60 = result;
    while (1)
    {
      v36 = v59 ? specialized _ArrayBuffer._getElementSlowPath(_:)() : *(v34 + 8 * v33 + 32);
      v37 = v36;
      v38 = [v36 indexPath];
      v39 = v65;
      static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

      (*v58)(v17, v39, v6);
      (*v57)(v17, 0, 1, v6);
      v40 = *(v61 + 48);
      sub_10022BA04(v17, v5);
      sub_10022BA04(v63, &v5[v40]);
      v41 = *v35;
      if ((*v35)(v5, 1, v6) == 1)
      {
        break;
      }

      v42 = v54;
      sub_10022BA04(v5, v54);
      if (v41(&v5[v40], 1, v6) == 1)
      {
        sub_10002B894(v17, &unk_10097DAE0);
        (*v64)(v42, v6);
        v34 = v55;
LABEL_17:
        sub_10002B894(v5, &qword_100980740);
        goto LABEL_23;
      }

      v43 = v52;
      (*v51)(v52, &v5[v40], v6);
      sub_1003288F8();
      v53 = dispatch thunk of static Equatable.== infix(_:_:)();
      v44 = *v64;
      (*v64)(v43, v6);
      sub_10002B894(v17, &unk_10097DAE0);
      v44(v42, v6);
      sub_10002B894(v5, &unk_10097DAE0);
      v34 = v55;
      if (v53)
      {
        goto LABEL_19;
      }

LABEL_23:
      sub_10054F4D4(v37);
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v66 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v66 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      ++v33;
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      (*v64)(v65, v6);
      v35 = v56;
      if (v60 == v33)
      {
        v49 = v66;
        goto LABEL_31;
      }
    }

    sub_10002B894(v17, &unk_10097DAE0);
    if (v41(&v5[v40], 1, v6) == 1)
    {
      sub_10002B894(v5, &unk_10097DAE0);
LABEL_19:
      type metadata accessor for SearchTransparencyView();
      static UICollectionReusableView.elementKind.getter();
      v45 = String._bridgeToObjectiveC()();

      isa = IndexPath._bridgeToObjectiveC()().super.isa;
      v47 = [v62 layoutAttributesForDecorationViewOfKind:v45 atIndexPath:isa];

      if (v47)
      {
        v48 = v47;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v66 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v66 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      }

      goto LABEL_23;
    }

    goto LABEL_17;
  }

  __break(1u);
  return result;
}

double sub_10054F3C0(double a1)
{
  v3 = [v1 collectionView];
  if (v3)
  {
    v4 = v3;
    v5 = [v1 collectionView];
    if (v5 && (v6 = v5, v7 = [v5 delegate], v6, v7))
    {
      swift_getObjectType();
      if (swift_conformsToProtocol2())
      {
        sub_10027384C(v4);
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

  return a1;
}

id sub_10054F4D4(void *a1)
{
  v2 = v1;
  v28 = a1;
  v3 = sub_10002849C(&unk_10097DAE0);
  __chkstk_darwin(v3 - 8);
  v5 = &v27 - v4;
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v11 = __chkstk_darwin(v10).n128_u64[0];
  v13 = &v27 - v12;
  v14 = [v1 collectionView];
  if (v14)
  {
    v15 = v14;
    v16 = [v1 collectionView];
    if (v16 && (v17 = v16, v18 = [v16 delegate], v17, v18))
    {
      swift_getObjectType();
      if (swift_conformsToProtocol2())
      {
        sub_1002733FC(v5);
        swift_unknownObjectRelease();
        if ((*(v7 + 48))(v5, 1, v6) == 1)
        {

LABEL_9:
          sub_10002B894(v5, &unk_10097DAE0);
          goto LABEL_10;
        }

        (*(v7 + 32))(v13, v5, v6);
        v21 = [v28 indexPath];
        static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

        LOBYTE(v21) = static IndexPath.> infix(_:_:)();
        v22 = *(v7 + 8);
        v22(v9, v6);
        if ((v21 & 1) == 0)
        {
          v22(v13, v6);

          goto LABEL_10;
        }

        sub_10025A08C();
        v23 = NSCopying.makeCopy()();
        v24 = [v2 collectionView];
        if (v24)
        {
          v25 = v24;
          v26 = [v24 delegate];

          if (v26)
          {
            swift_getObjectType();
            if (!swift_conformsToProtocol2())
            {

              swift_unknownObjectRelease();
              goto LABEL_20;
            }

            sub_10027384C(v15);
            swift_unknownObjectRelease();
            [v23 frame];
            [v23 setFrame:?];
          }
        }

LABEL_20:
        v22(v13, v6);
        return v23;
      }

      swift_unknownObjectRelease();
    }

    else
    {
    }

    (*(v7 + 56))(v5, 1, 1, v6);
    goto LABEL_9;
  }

LABEL_10:
  v19 = v28;

  return v19;
}

id sub_10054F8AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v69 = a2;
  v70 = a1;
  v6 = type metadata accessor for PageGrid();
  v65 = *(v6 - 8);
  v66 = v6;
  __chkstk_darwin(v6);
  v63 = &v59[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v64 = &v59[-v9];
  v10 = type metadata accessor for IndexPath();
  v68 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v59[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_10002849C(&qword_100980740);
  __chkstk_darwin(v13);
  v15 = &v59[-v14];
  v16 = sub_10002849C(&unk_10097DAE0);
  __chkstk_darwin(v16 - 8);
  v18 = &v59[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v19);
  v21 = &v59[-v20];
  __chkstk_darwin(v22);
  v24 = &v59[-v23];
  v67 = a3;
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v26 = type metadata accessor for SearchResultsCollectionCompositionalLayout();
  v71.receiver = v4;
  v71.super_class = v26;
  v27 = objc_msgSendSuper2(&v71, "layoutAttributesForItemAtIndexPath:", isa);

  if (!v27)
  {
    return 0;
  }

  v28 = [v4 collectionView];
  if (!v28)
  {
    goto LABEL_19;
  }

  v62 = v28;
  v29 = [v4 collectionView];
  if (!v29 || (v30 = v29, v31 = [v29 delegate], v30, !v31))
  {

LABEL_19:
    return 0;
  }

  swift_getObjectType();
  if (!swift_conformsToProtocol2())
  {

    swift_unknownObjectRelease();
    return 0;
  }

  v61 = v31;
  type metadata accessor for SearchTransparencyView();
  if (static UICollectionReusableView.elementKind.getter() == v70 && v32 == v69)
  {
  }

  else
  {
    v33 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v33 & 1) == 0)
    {
LABEL_18:

      swift_unknownObjectRelease();
      goto LABEL_19;
    }
  }

  v34 = v68;
  (*(v68 + 16))(v24, v67, v10);
  (*(v34 + 56))(v24, 0, 1, v10);
  sub_1002733FC(v21);
  v35 = *(v13 + 48);
  sub_10022BA04(v24, v15);
  sub_10022BA04(v21, &v15[v35]);
  v36 = *(v34 + 48);
  if (v36(v15, 1, v10) != 1)
  {
    sub_10022BA04(v15, v18);
    if (v36(&v15[v35], 1, v10) != 1)
    {
      v38 = v68;
      (*(v68 + 32))(v12, &v15[v35], v10);
      sub_1003288F8();
      v60 = dispatch thunk of static Equatable.== infix(_:_:)();
      v39 = *(v38 + 8);
      v39(v12, v10);
      sub_10002B894(v21, &unk_10097DAE0);
      sub_10002B894(v24, &unk_10097DAE0);
      v39(v18, v10);
      sub_10002B894(v15, &unk_10097DAE0);
      if (v60)
      {
        goto LABEL_22;
      }

      goto LABEL_18;
    }

    sub_10002B894(v21, &unk_10097DAE0);
    sub_10002B894(v24, &unk_10097DAE0);
    (*(v68 + 8))(v18, v10);
    goto LABEL_17;
  }

  sub_10002B894(v21, &unk_10097DAE0);
  sub_10002B894(v24, &unk_10097DAE0);
  if (v36(&v15[v35], 1, v10) != 1)
  {
LABEL_17:
    sub_10002B894(v15, &qword_100980740);
    goto LABEL_18;
  }

  sub_10002B894(v15, &unk_10097DAE0);
LABEL_22:
  v40 = String._bridgeToObjectiveC()();
  v41 = IndexPath._bridgeToObjectiveC()().super.isa;
  v42 = [objc_opt_self() layoutAttributesForDecorationViewOfKind:v40 withIndexPath:v41];

  v43 = v64;
  v44 = v62;
  sub_10027356C(v62);
  PageGrid.horizontalMargins.getter();
  v46 = v45;
  [v27 frame];
  MaxY = CGRectGetMaxY(v72);
  PageGrid.interRowSpace.getter();
  v49 = v48;
  v50 = dispatch thunk of SearchResultsDiffablePagePresenter.transparencyLink.getter();
  if (v50)
  {
    v51 = v50;
    v52 = v63;
    sub_10027356C(v44);
    static CGFloat.allColumns.getter();
    PageGrid.componentMeasuringSize(spanning:)();
    v54 = sub_100273BA4(v53, v51, v44);
    v56 = v55;

    v58 = v65;
    v57 = v66;
    (*(v65 + 8))(v52, v66);
  }

  else
  {
    v54 = 0.0;
    v56 = 0.0;
    v58 = v65;
    v57 = v66;
  }

  [v42 setFrame:{v46, MaxY + v49, v54, v56}];
  swift_unknownObjectRelease();

  (*(v58 + 8))(v43, v57);
  return v42;
}

id sub_10055015C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SearchResultsCollectionCompositionalLayout();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_1005501B4()
{
  v1 = (*(*(v0 + 16) + 16))();

  return v1;
}

uint64_t type metadata accessor for TodayCardLabelsView()
{
  result = qword_10098B808;
  if (!qword_10098B808)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_1005502C4()
{
  [v0 layoutIfNeeded];
  v1 = v0[qword_10098B7B8];
  v2 = *&v0[qword_10098B7C8];
  if ([*&v2[OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label] isHidden] & 1) != 0 || (v3 = *&v0[qword_10098B7D0], (objc_msgSend(*&v3[OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label], "isHidden")))
  {
    v4 = *&v0[qword_10098B7D0];
    v5 = OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label;
    if ([*&v4[OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label] isHidden] & 1) != 0 || (v0[qword_10098B7E8])
    {
      if (([*&v4[v5] isHidden] & 1) != 0 || v0[qword_10098B7E8] != 1)
      {
        v10 = *&v0[qword_10098B7D8];
        if (([v10 isHidden] & 1) == 0)
        {
          [v10 frame];
LABEL_19:
          MaxY = CGRectGetMaxY(*&v6);
          return MaxY + 20.0;
        }

        [v0 bounds];
      }

      else
      {
        [v4 frame];
        if (v1 != 4)
        {
          goto LABEL_19;
        }
      }

      return CGRectGetMinY(*&v6);
    }

    else
    {
      [v4 frame];
      result = CGRectGetMinY(v18);
      if (v1 != 4)
      {
        return result + 20.0;
      }
    }
  }

  else
  {
    if (v1 != 4)
    {
      [v3 frame];
      MaxY = CGRectGetMinY(v19);
      return MaxY + 20.0;
    }

    [v2 frame];

    return CGRectGetMaxY(*&v12);
  }

  return result;
}

uint64_t sub_1005504B4()
{
  v0 = sub_1005525E8();
  v1 = v0;
  v2 = v0 & 0xFFFFFFFFFFFFFF8;
  if (v0 >> 62)
  {
LABEL_21:
    v3 = _CocoaArrayWrapper.endIndex.getter();
    if (!v3)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v3 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      goto LABEL_22;
    }
  }

  v4 = 0;
  v5 = _swiftEmptyArrayStorage;
  do
  {
    v6 = v4;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v6 >= *(v2 + 16))
        {
          goto LABEL_20;
        }

        v7 = *(v1 + 8 * v6 + 32);
      }

      v8 = v7;
      v4 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      v9 = [v7 text];
      if (v9)
      {
        break;
      }

      ++v6;
      if (v4 == v3)
      {
        goto LABEL_22;
      }
    }

    v10 = v9;
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v12;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = sub_100033E38(0, *(v5 + 2) + 1, 1, v5);
    }

    v14 = *(v5 + 2);
    v13 = *(v5 + 3);
    if (v14 >= v13 >> 1)
    {
      v5 = sub_100033E38((v13 > 1), v14 + 1, 1, v5);
    }

    *(v5 + 2) = v14 + 1;
    v15 = &v5[2 * v14];
    *(v15 + 4) = v11;
    *(v15 + 5) = v18;
  }

  while (v4 != v3);
LABEL_22:

  sub_10002849C(&unk_100977380);
  sub_10015872C();
  v16 = BidirectionalCollection<>.joined(separator:)();

  return v16;
}

void sub_10055069C()
{
  v1 = OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_applyPendingFontChange;
  v2 = *(*(v0 + qword_10098B7C8) + OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_applyPendingFontChange);
  if (v2)
  {

    v2(v3);
    sub_10001F63C(v2);
    v1 = OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_applyPendingFontChange;
  }

  v4 = *(*(v0 + qword_10098B7D0) + v1);
  if (v4)
  {

    v4(v5);
    sub_10001F63C(v4);
    v1 = OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_applyPendingFontChange;
  }

  v6 = *(*(v0 + qword_10098B7E0) + v1);
  if (v6)
  {

    v6(v7);

    sub_10001F63C(v6);
  }
}

void sub_100550798(uint64_t a1, char a2)
{
  v4 = type metadata accessor for TodayCard.Style();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    (*(v5 + 104))(v8, enum case for TodayCard.Style.white(_:), v4, v6);
    sub_100553A5C(&qword_100972DC0, &type metadata accessor for TodayCard.Style);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    if (v10[2] == v10[0] && v10[3] == v10[1])
    {
      v9 = 1;
    }

    else if (_stringCompareWithSmolCheck(_:_:expecting:)())
    {
      v9 = 1;
    }

    else
    {
      v9 = 2;
    }

    (*(v5 + 8))(v8, v4);

    [v2 setOverrideUserInterfaceStyle:v9];
    sub_100551E70();
  }

  else
  {
    [v2 setOverrideUserInterfaceStyle:{0, v6.n128_f64[0]}];

    sub_100551E70();
  }
}

void sub_1005509BC()
{
  if (qword_10096E8E0 != -1)
  {
    swift_once();
  }

  v0 = qword_10098B758;
  v1 = objc_opt_self();
  v2 = v0;
  v3 = [v1 preferredFontDescriptorWithTextStyle:v2];
  v4 = [v3 fontDescriptorWithSymbolicTraits:2];
  v5 = objc_opt_self();
  if (v4)
  {
    v6 = [v5 fontWithDescriptor:v4 size:0.0];

    v3 = v4;
  }

  else
  {
    v6 = [v5 fontWithDescriptor:v3 size:0.0];
  }

  qword_10098B760 = v6;
}

id sub_100550B10()
{
  result = [objc_opt_self() systemFontOfSize:43.0 weight:UIFontWeightHeavy];
  qword_10098B778 = result;
  return result;
}

void sub_100550B7C()
{
  if (qword_10096E908 != -1)
  {
    swift_once();
  }

  v0 = qword_10098B780;
  v1 = objc_opt_self();
  v2 = v0;
  v3 = [v1 preferredFontDescriptorWithTextStyle:v2];
  v4 = [objc_opt_self() fontWithDescriptor:v3 size:0.0];

  qword_10098B788 = v4;
}

void sub_100550C90(uint64_t a1, void *a2, void **a3, void *a4)
{
  if (*a2 != -1)
  {
    v12 = a3;
    swift_once();
    a3 = v12;
  }

  v5 = *a3;
  v6 = objc_opt_self();
  v7 = v5;
  v8 = [v6 preferredFontDescriptorWithTextStyle:v7];
  v9 = [v8 fontDescriptorWithSymbolicTraits:32770];
  v10 = objc_opt_self();
  if (v9)
  {
    v11 = [v10 fontWithDescriptor:v9 size:0.0];

    v8 = v9;
  }

  else
  {
    v11 = [v10 fontWithDescriptor:v8 size:0.0];
  }

  *a4 = v11;
}

char *sub_100550DDC(uint64_t a1, _OWORD *a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  *&v76 = type metadata accessor for AutomationSemantics();
  v75 = *(v76 - 8);
  __chkstk_darwin(v76);
  v74 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3[qword_10098B7B8] = 7;
  v3[qword_10098B7C0] = 7;
  v7 = qword_10098B7D8;
  *&v3[v7] = [objc_allocWithZone(UIImageView) init];
  v3[qword_10098B7E8] = 0;
  v3[qword_10098B7F8] = 0;
  v3[qword_10098B800] = 0;
  v8 = *(a1 + 8);
  v9 = *(a1 + 24);
  v10 = *(a1 + 40);
  v11 = *(a1 + 56);
  v12 = *(a1 + 72);
  v13 = *(a1 + 88);
  v14 = &v3[qword_10098B7F0];
  v15 = *(a1 + 16);
  *v14 = *a1;
  v14[1] = v15;
  v16 = *(a1 + 80);
  v14[4] = *(a1 + 64);
  v14[5] = v16;
  v17 = *(a1 + 48);
  v14[2] = *(a1 + 32);
  v14[3] = v17;
  v18 = &v3[qword_10098B7B0];
  v19 = a2[1];
  *v18 = *a2;
  v18[1] = v19;
  *(v18 + 25) = *(a2 + 25);
  sub_10002849C(&qword_10098B860);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007B73E0;
  *(inited + 32) = 5;
  v21 = qword_10096E8F8;
  v82 = v8;

  v81 = v9;

  v80 = v10;

  v79 = v11;

  v78 = v12;

  v77 = v13;

  if (v21 != -1)
  {
    swift_once();
  }

  v22 = qword_10098B770;
  *(inited + 40) = qword_10098B770;
  *(inited + 48) = 2;
  *(inited + 56) = v22;
  *(inited + 64) = 3;
  *(inited + 72) = v22;
  *(inited + 80) = 0;
  *(inited + 88) = v22;
  *(inited + 96) = 1;
  *(inited + 104) = v22;
  *(inited + 112) = 6;
  v23 = qword_10096E930;
  v24 = v22;
  if (v23 != -1)
  {
    swift_once();
  }

  v25 = qword_10098B7A8;
  *(inited + 120) = qword_10098B7A8;
  *(inited + 128) = 4;
  v26 = qword_10096E920;
  v27 = v25;
  if (v26 != -1)
  {
    swift_once();
  }

  v28 = qword_10098B798;
  *(inited + 136) = qword_10098B798;
  v29 = sub_100397304(inited);
  swift_setDeallocating();
  v30 = v28;
  sub_10002849C(&qword_10098B868);
  swift_arrayDestroy();
  v31 = type metadata accessor for TodayTransitioningLabelView();
  v32 = objc_allocWithZone(v31);
  *&v3[qword_10098B7D0] = sub_10006CFBC(v29, v24);
  v33 = sub_100397304(_swiftEmptyArrayStorage);
  if (qword_10096E910 != -1)
  {
    swift_once();
  }

  v34 = qword_10098B788;
  objc_allocWithZone(v31);
  *&v3[qword_10098B7E0] = sub_10006CFBC(v33, v34);
  v35 = sub_100397304(_swiftEmptyArrayStorage);
  if (qword_10096E8E8 != -1)
  {
    swift_once();
  }

  v36 = qword_10098B760;
  v37 = objc_allocWithZone(v31);
  *&v3[qword_10098B7C8] = sub_10006CFBC(v35, v36);
  v88.receiver = v3;
  v88.super_class = ObjectType;
  v38 = objc_msgSendSuper2(&v88, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v39 = [v38 layer];
  [v39 setAllowsGroupBlending:0];

  v40 = qword_10098B7D0;
  *(*&v38[qword_10098B7D0] + OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_disableAnimatedFontChange) = 1;
  v41 = *&v38[qword_10098B7C8];
  v42 = qword_10098B7C8;
  v73 = qword_10098B7C8;
  *(v41 + OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_disableAnimatedFontChange) = 1;
  v43 = *&v38[qword_10098B7E0];
  v44 = qword_10098B7E0;
  v72 = qword_10098B7E0;
  *(v43 + OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_disableAnimatedFontChange) = 1;
  v45 = *(v41 + OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label);
  sub_100005744(0, &qword_100970180);
  v46 = v45;
  v47 = static UIColor.secondaryText.getter();
  [v46 setTextColor:v47];

  v48 = *&v38[v40];
  v71 = v40;
  v49 = *(v48 + OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label);
  v50 = static UIColor.primaryText.getter();
  [v49 setTextColor:v50];

  v51 = *(*&v38[v44] + OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label);
  v52 = static UIColor.secondaryText.getter();
  [v51 setTextColor:v52];

  v53 = qword_10098B7D8;
  [*&v38[qword_10098B7D8] setContentMode:1];
  v54 = *(*&v38[v42] + OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label);
  v87 = 0u;
  v86 = 0u;
  v85 = 0u;
  v84 = 0u;
  v55 = v54;
  v56 = v74;
  static AutomationSemantics.shelfItemSubComponent(itemKind:id:parentId:)();
  sub_10002B894(&v84, &unk_1009711D0);
  sub_10002B894(&v86, &unk_1009711D0);
  UIView.setAutomationSemantics(_:)();

  v57 = *(v75 + 8);
  v58 = v76;
  v57(v56, v76);
  v59 = *(*&v38[v40] + OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label);
  v87 = 0u;
  v86 = 0u;
  v85 = 0u;
  v84 = 0u;
  v60 = v59;
  static AutomationSemantics.shelfItemSubComponent(itemKind:id:parentId:)();
  sub_10002B894(&v84, &unk_1009711D0);
  sub_10002B894(&v86, &unk_1009711D0);
  UIView.setAutomationSemantics(_:)();

  v57(v56, v58);
  v61 = *&v38[v53];
  v62 = v53;
  v87 = 0u;
  v86 = 0u;
  v85 = 0u;
  v84 = 0u;
  v63 = v61;
  static AutomationSemantics.shelfItemSubComponent(itemKind:id:parentId:)();
  sub_10002B894(&v84, &unk_1009711D0);
  sub_10002B894(&v86, &unk_1009711D0);
  UIView.setAutomationSemantics(_:)();

  v57(v56, v58);
  v64 = v72;
  v65 = *(*&v38[v72] + OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label);
  v87 = 0u;
  v86 = 0u;
  v85 = 0u;
  v84 = 0u;
  v66 = v65;
  static AutomationSemantics.shelfItemSubComponent(itemKind:id:parentId:)();
  sub_10002B894(&v84, &unk_1009711D0);
  sub_10002B894(&v86, &unk_1009711D0);
  UIView.setAutomationSemantics(_:)();

  v57(v56, v58);
  [v38 addSubview:*&v38[v73]];
  [v38 addSubview:*&v38[v71]];
  [v38 addSubview:*&v38[v62]];
  [v38 addSubview:*&v38[v64]];
  sub_10002849C(&qword_10097B110);
  v67 = swift_allocObject();
  v76 = xmmword_1007B10D0;
  *(v67 + 16) = xmmword_1007B10D0;
  *(v67 + 32) = type metadata accessor for UITraitPreferredContentSizeCategory();
  *(v67 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  *(&v87 + 1) = ObjectType;
  *&v86 = v38;
  UIView.registerForTraitChanges(_:target:action:)();
  swift_unknownObjectRelease();

  sub_100007000(&v86);
  v68 = swift_allocObject();
  *(v68 + 16) = v76;
  *(v68 + 32) = type metadata accessor for UITraitLegibilityWeight();
  *(v68 + 40) = &protocol witness table for UITraitLegibilityWeight;
  UIView.registerForTraitChanges<A>(_:handler:)();

  swift_unknownObjectRelease();

  return v38;
}

id sub_10055189C()
{
  v1 = v0;
  v2 = *&v0[qword_10098B7C8];
  v3 = qword_10098B7B8;
  v4 = *(v2 + OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_sizeCategory);
  v5 = v1[qword_10098B7B8];
  *(v2 + OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_sizeCategory) = v5;
  sub_10006D97C(v4, v5);
  v6 = *&v1[qword_10098B7D0];
  v7 = *(v6 + OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_sizeCategory);
  v8 = v1[v3];
  *(v6 + OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_sizeCategory) = v8;
  sub_10006D97C(v7, v8);
  v9 = *&v1[qword_10098B7E0];
  v10 = *(v9 + OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_sizeCategory);
  v11 = v1[v3];
  *(v9 + OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_sizeCategory) = v11;
  sub_10006D97C(v10, v11);

  return [v1 setNeedsLayout];
}

id sub_100551950()
{
  v1 = v0;
  v2 = *&v0[qword_10098B7C8];
  v3 = &v0[qword_10098B7F0];
  v4 = *&v0[qword_10098B7F0];

  v5 = [v0 traitCollection];
  v6 = [v5 preferredContentSizeCategory];

  v7 = v4(v6);

  *(v2 + OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_numberOfLines) = v7;
  v8 = *(v2 + OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_fadeInLabel);
  if (!v8)
  {
    v8 = *(v2 + OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label);
  }

  [v8 setNumberOfLines:v7];
  v9 = *&v1[qword_10098B7D0];
  v10 = *(v3 + 10);

  v11 = [v1 traitCollection];
  v12 = [v11 preferredContentSizeCategory];

  v13 = v10(v12);

  *(v9 + OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_numberOfLines) = v13;
  v14 = *(v9 + OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_fadeInLabel);
  if (!v14)
  {
    v14 = *(v9 + OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label);
  }

  [v14 setNumberOfLines:v13];
  v15 = *&v1[qword_10098B7E0];
  v16 = *(v3 + 6);

  v17 = [v1 traitCollection];
  v18 = [v17 preferredContentSizeCategory];

  v19 = v16(v18);

  *(v15 + OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_numberOfLines) = v19;
  v20 = *(v15 + OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_fadeInLabel);
  if (v20)
  {
    [v20 setNumberOfLines:v19];
  }

  else
  {
    [*(v15 + OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label) setNumberOfLines:v19];
  }

  v21 = *(v3 + 2);
  v22 = *(v2 + OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label);

  v23 = [v1 traitCollection];
  v24 = [v23 preferredContentSizeCategory];

  v25 = v21(v24);

  [v22 setMaximumContentSizeCategory:v25];

  v26 = *(v3 + 4);
  v27 = *(v9 + OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label);

  v28 = [v1 traitCollection];
  v29 = [v28 preferredContentSizeCategory];

  v30 = v26(v29);

  [v27 setMaximumContentSizeCategory:v30];

  v31 = *(v3 + 8);
  v32 = *(v15 + OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label);

  v33 = [v1 traitCollection];
  v34 = [v33 preferredContentSizeCategory];

  v35 = v31(v34);

  [v32 setMaximumContentSizeCategory:v35];

  return [v1 setNeedsLayout];
}

void sub_100551D80()
{
  v1 = *(v0 + qword_10098B7C8);
  v2 = *(v0 + qword_10098B800);
  v3 = &OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_isTransitioning;
  *(v1 + OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_isTransitioning) = v2;
  if (v2 == 1)
  {
    *(*(v0 + qword_10098B7D0) + OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_isTransitioning) = 1;
    v4 = *(v0 + qword_10098B7E0);
  }

  else
  {
    *(v1 + OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_labelRequiresUnanimatedLayout) = 0;
    v5 = *(v0 + qword_10098B7D0);
    *(v5 + OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_isTransitioning) = v2;
    *(v5 + OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_labelRequiresUnanimatedLayout) = 0;
    v4 = *(v0 + qword_10098B7E0);
    *(v4 + OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_isTransitioning) = v2;
    v3 = &OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_labelRequiresUnanimatedLayout;
    LOBYTE(v2) = 0;
  }

  *(v4 + *v3) = v2;
}

void sub_100551E28(void *a1)
{
  v1 = a1;
  sub_100551950();
}

void sub_100551E70()
{
  if ([v0 overrideUserInterfaceStyle])
  {
    [v0 overrideUserInterfaceStyle];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v1 = String._bridgeToObjectiveC()();

    v2 = [*&v0[qword_10098B7C8] layer];
    [v2 setCompositingFilter:v1];

    v4 = [*&v0[qword_10098B7E0] layer];
    [v4 setCompositingFilter:v1];
  }

  else
  {
    v3 = [*&v0[qword_10098B7C8] layer];
    [v3 setCompositingFilter:0];

    v4 = [*&v0[qword_10098B7E0] layer];
    [v4 setCompositingFilter:0];
  }
}

id sub_100551FDC@<X0>(uint64_t *a1@<X8>)
{
  v20 = *(v1 + qword_10098B7B0 + 16);
  v21 = *(v1 + qword_10098B7B0);
  v3 = *(v1 + qword_10098B7B0 + 32);
  v4 = *(v1 + qword_10098B7C8);
  v5 = *(v1 + qword_10098B7D0);
  v6 = *(v1 + qword_10098B7B0 + 40);
  v7 = *&v5[OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label];
  v23 = type metadata accessor for DynamicTypeLabel();
  v24 = &protocol witness table for UILabel;
  *&v22 = v7;
  v8 = *(v1 + qword_10098B7D8);
  v9 = v4;
  v10 = v5;
  v11 = v7;
  v12 = [v8 image];
  if (v12)
  {

    v13 = sub_100005744(0, &qword_100973120);
    v14 = v8;
    v15 = &protocol witness table for UIView;
  }

  else
  {
    v13 = 0;
    v15 = 0;
    v8 = 0;
  }

  v19 = *(v1 + qword_10098B7E0);
  v16 = *(v1 + qword_10098B7E8);
  a1[3] = &type metadata for TodayCardLabelsLayout;
  a1[4] = sub_100553998();
  v17 = swift_allocObject();
  *a1 = v17;
  *(v17 + 16) = v21;
  *(v17 + 32) = v20;
  *(v17 + 48) = v3;
  *(v17 + 56) = v6;
  *(v17 + 64) = v9;
  *(v17 + 72) = v10;
  sub_100005A38(&v22, v17 + 80);
  *(v17 + 120) = v8;
  *(v17 + 128) = 0;
  *(v17 + 136) = 0;
  *(v17 + 144) = v13;
  *(v17 + 152) = v15;
  *(v17 + 160) = v19;
  *(v17 + 168) = v16;

  return v19;
}

void sub_100552188(void *a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  sub_10002A400(a1, a1[3]);
  v4 = UIMutableTraits.preferredContentSizeCategory.getter();
  v6 = v3();

  if (v6)
  {
    sub_10002A400(a1, a1[3]);
    v5 = UIMutableTraits.preferredContentSizeCategory.getter();
    if (static UIContentSizeCategory.< infix(_:_:)())
    {
      v6;
    }

    sub_100047650(a1, a1[3]);
    UIMutableTraits.preferredContentSizeCategory.setter();
  }
}

void sub_1005522A4(void *a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  sub_10002A400(a1, a1[3]);
  v4 = UIMutableTraits.preferredContentSizeCategory.getter();
  v6 = v3();

  if (v6)
  {
    sub_10002A400(a1, a1[3]);
    v5 = UIMutableTraits.preferredContentSizeCategory.getter();
    if (static UIContentSizeCategory.< infix(_:_:)())
    {
      v6;
    }

    sub_100047650(a1, a1[3]);
    UIMutableTraits.preferredContentSizeCategory.setter();
  }
}

void sub_1005523C0(void *a1, uint64_t a2)
{
  v3 = *(a2 + 64);
  sub_10002A400(a1, a1[3]);
  v4 = UIMutableTraits.preferredContentSizeCategory.getter();
  v6 = v3();

  if (v6)
  {
    sub_10002A400(a1, a1[3]);
    v5 = UIMutableTraits.preferredContentSizeCategory.getter();
    if (static UIContentSizeCategory.< infix(_:_:)())
    {
      v6;
    }

    sub_100047650(a1, a1[3]);
    UIMutableTraits.preferredContentSizeCategory.setter();
  }
}

id sub_1005524DC(void *a1)
{
  v1 = a1;
  sub_1005504B4();
  v3 = v2;

  if (v3)
  {
    v4 = String._bridgeToObjectiveC()();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void sub_100552554(void *a1, uint64_t a2, NSString a3)
{
  ObjectType = swift_getObjectType();
  if (a3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = a1;
    a3 = String._bridgeToObjectiveC()();
  }

  else
  {
    v7 = a1;
  }

  v8.receiver = a1;
  v8.super_class = ObjectType;
  objc_msgSendSuper2(&v8, "setAccessibilityLabel:", a3);
}

double *sub_1005525E8()
{
  sub_10002849C(&qword_100973210);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007B48F0;
  v2 = *(v0 + qword_10098B7C8);
  *(inited + 32) = v2;
  v3 = *(v0 + qword_10098B7D0);
  *(inited + 40) = v3;
  v4 = *(v0 + qword_10098B7E0);
  *(inited + 48) = v4;
  v21 = _swiftEmptyArrayStorage;
  v5 = inited & 0xC000000000000001;
  v6 = v2;
  v7 = v3;
  v8 = v4;
  if ((inited & 0xC000000000000001) != 0)
  {
    goto LABEL_33;
  }

  if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_32;
  }

  for (i = v6; ; i = specialized _ArrayBuffer._getElementSlowPath(_:)())
  {
    v10 = i;
    if ([i isHidden] & 1) != 0 || (objc_msgSend(*&v10[OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label], "isHidden"))
    {

      if (v5)
      {
        goto LABEL_18;
      }
    }

    else
    {
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      if (v5)
      {
LABEL_18:
        v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        goto LABEL_9;
      }
    }

    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
    {
      goto LABEL_32;
    }

    v11 = *(inited + 40);
LABEL_9:
    v12 = v11;
    if ([v11 isHidden] & 1) != 0 || (objc_msgSend(*&v12[OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label], "isHidden"))
    {

      if (v5)
      {
        break;
      }

      goto LABEL_12;
    }

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    if (v5)
    {
      break;
    }

LABEL_12:
    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 3uLL)
    {
      v13 = *(inited + 48);
      goto LABEL_14;
    }

LABEL_32:
    __break(1u);
LABEL_33:
    ;
  }

  v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_14:
  v14 = v13;
  if ([v13 isHidden] & 1) != 0 || (objc_msgSend(*&v14[OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label], "isHidden"))
  {
  }

  else
  {
    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
  }

  swift_setDeallocating();
  swift_arrayDestroy();
  if ((v21 & 0x8000000000000000) != 0 || (v21 & 0x4000000000000000) != 0)
  {
    v15 = _CocoaArrayWrapper.endIndex.getter();
    if (v15)
    {
      goto LABEL_25;
    }

    goto LABEL_35;
  }

  v15 = *(v21 + 2);
  if (!v15)
  {
LABEL_35:

    return _swiftEmptyArrayStorage;
  }

LABEL_25:
  result = specialized ContiguousArray.reserveCapacity(_:)();
  if (v15 < 0)
  {
    __break(1u);
  }

  else
  {
    v17 = 0;
    do
    {
      if ((v21 & 0xC000000000000001) != 0)
      {
        v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v18 = *&v21[v17 + 4];
      }

      v19 = v18;
      ++v17;
      v20 = *&v18[OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label];

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    while (v15 != v17);

    return _swiftEmptyArrayStorage;
  }

  return result;
}

Class sub_10055295C(void *a1)
{
  v1 = a1;
  v2 = sub_1005525E8();
  sub_1002A62C4(v2);

  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

void sub_1005529E4(void *a1, uint64_t a2, Class isa, SEL *a4)
{
  ObjectType = swift_getObjectType();
  if (isa)
  {
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = a1;
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v9 = a1;
  }

  v10.receiver = a1;
  v10.super_class = ObjectType;
  objc_msgSendSuper2(&v10, *a4, isa);
}

uint64_t sub_100552AB8()
{
}

uint64_t sub_100552B80(uint64_t a1)
{
}

uint64_t sub_100552C54(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_100552C9C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100552D28(uint64_t a1)
{
  v2 = type metadata accessor for StringCharacteristics();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10002849C(&qword_100972DB8);
  __chkstk_darwin(v6 - 8);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v35 - v10;
  sub_1005539EC(a1, &v35 - v10);
  v12 = *(v3 + 48);
  v13 = v12(v11, 1, v2);
  v36 = v3;
  if (v13 == 1)
  {
    sub_10002B894(v11, &qword_100972DB8);
    v14 = 0;
  }

  else
  {
    static StringCharacteristics.legacyExtraTallCharacters.getter();
    sub_100553A5C(&qword_10097C368, &type metadata accessor for StringCharacteristics);
    v14 = dispatch thunk of SetAlgebra.isSuperset(of:)();
    v15 = *(v3 + 8);
    v15(v5, v2);
    v15(v11, v2);
  }

  sub_1005539EC(a1, v8);
  if (v12(v8, 1, v2) != 1)
  {
    static StringCharacteristics.accentedCharacters.getter();
    sub_100553A5C(&qword_10097C368, &type metadata accessor for StringCharacteristics);
    v17 = dispatch thunk of SetAlgebra.isSuperset(of:)();
    v18 = *(v36 + 8);
    v18(v5, v2);
    v18(v8, v2);
    if (v14)
    {
      v19 = 52.0;
    }

    else
    {
      v19 = 44.0;
    }

    if ((v14 | v17))
    {
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  sub_10002B894(v8, &qword_100972DB8);
  if ((v14 & 1) == 0)
  {
LABEL_11:
    v16 = 0x4042000000000000;
    goto LABEL_12;
  }

  v16 = 0x404A000000000000;
LABEL_12:
  v19 = *&v16;
LABEL_13:
  v20 = [objc_allocWithZone(NSMutableParagraphStyle) init];
  [v20 setMaximumLineHeight:v19];
  sub_10002849C(&unk_100973960);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007B1E00;
  *(inited + 32) = NSFontAttributeName;
  v22 = qword_10096E900;
  v23 = NSFontAttributeName;
  if (v22 != -1)
  {
    swift_once();
  }

  v24 = qword_10098B778;
  v25 = sub_100005744(0, &qword_1009730E0);
  *(inited + 40) = v24;
  *(inited + 64) = v25;
  *(inited + 72) = NSParagraphStyleAttributeName;
  v26 = sub_100005744(0, &unk_100976610);
  *(inited + 80) = v20;
  *(inited + 104) = v26;
  *(inited + 112) = kCTBaselineOffsetAttributeName;
  v27 = objc_allocWithZone(NSNumber);
  v28 = v24;
  v29 = NSParagraphStyleAttributeName;
  v30 = v20;
  v31 = kCTBaselineOffsetAttributeName;
  v32 = [v27 initWithDouble:{fmin(v19 + -43.0, 0.0)}];
  *(inited + 144) = sub_100005744(0, &qword_10097FB80);
  *(inited + 120) = v32;
  v33 = sub_100397150(inited);
  swift_setDeallocating();
  sub_10002849C(&unk_100970EC0);
  swift_arrayDestroy();

  return v33;
}

unint64_t sub_100553240(uint64_t *a1, void **a2)
{
  sub_10002849C(&unk_100973960);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007B1E00;
  *(inited + 32) = NSFontAttributeName;
  v5 = *a1;
  v6 = NSFontAttributeName;
  if (v5 != -1)
  {
    swift_once();
  }

  v7 = *a2;
  v8 = sub_100005744(0, &qword_1009730E0);
  *(inited + 40) = v7;
  *(inited + 64) = v8;
  *(inited + 72) = NSParagraphStyleAttributeName;
  v9 = objc_allocWithZone(NSParagraphStyle);
  v10 = v7;
  v11 = NSParagraphStyleAttributeName;
  v12 = [v9 init];
  v13 = sub_100005744(0, &unk_100993000);
  *(inited + 80) = v12;
  *(inited + 104) = v13;
  *(inited + 112) = kCTBaselineOffsetAttributeName;
  v14 = objc_allocWithZone(NSNumber);
  v15 = kCTBaselineOffsetAttributeName;
  v16 = [v14 initWithDouble:0.0];
  *(inited + 144) = sub_100005744(0, &qword_10097FB80);
  *(inited + 120) = v16;
  v17 = sub_100397150(inited);
  swift_setDeallocating();
  sub_10002849C(&unk_100970EC0);
  swift_arrayDestroy();
  return v17;
}

id sub_1005533F0(_BYTE *a1)
{
  v3 = *&a1[qword_10098B7B0 + 32];
  v4 = a1[qword_10098B7B0 + 40];
  v5 = &v1[qword_10098B7B0];
  v6 = *&a1[qword_10098B7B0 + 16];
  *v5 = *&a1[qword_10098B7B0];
  *(v5 + 1) = v6;
  *(v5 + 4) = v3;
  v5[40] = v4;
  [v1 setNeedsLayout];
  v1[qword_10098B7E8] = a1[qword_10098B7E8];
  v7 = *&v1[qword_10098B7D0];
  *(v7 + OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_disableAnimatedFontChange) = 1;
  v8 = v7;
  v51 = *&v1[qword_10098B7C8];
  v9 = OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label;
  v50 = *&a1[qword_10098B7C8];
  v10 = *(v50 + OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label);
  v11 = *(v51 + OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label);
  v12 = [v10 text];
  [v11 setText:v12];

  v13 = OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label;
  v14 = *(v8 + OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label);
  v15 = v8;
  v16 = *&a1[qword_10098B7D0];
  v17 = *(v16 + OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label);
  v18 = v14;
  v19 = [v17 attributedText];
  [v18 setAttributedText:v19];

  v49 = v15;
  v20 = *(v16 + v13);
  v21 = *(v15 + v13);
  [v21 setAdjustsFontSizeToFitWidth:{objc_msgSend(v20, "adjustsFontSizeToFitWidth")}];

  v22 = *(v16 + v13);
  v23 = *(v15 + v13);
  [v22 minimumScaleFactor];
  [v23 setMinimumScaleFactor:?];

  v24 = *&v1[qword_10098B7D8];
  v46 = v24;
  v47 = *&a1[qword_10098B7D8];
  v25 = [v47 image];
  [v24 setImage:v25];

  v26 = *&v1[qword_10098B7E0];
  v27 = OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label;
  v28 = *&a1[qword_10098B7E0];
  v29 = *(v28 + OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label);
  v30 = *(v26 + OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label);
  v31 = [v29 text];
  [v30 setText:v31];

  v32 = *(v50 + v9);
  v33 = *(v51 + v9);
  [v33 setHidden:{objc_msgSend(v32, "isHidden")}];

  v34 = *(v16 + v13);
  v35 = *(v49 + v13);
  [v35 setHidden:{objc_msgSend(v34, "isHidden")}];

  [v46 setHidden:{objc_msgSend(v47, "isHidden")}];
  v36 = *(v26 + v27);
  v37 = *(v28 + v27);
  v38 = v36;
  [v38 setHidden:{objc_msgSend(v37, "isHidden")}];

  v39 = *&a1[qword_10098B7F0 + 88];
  v40 = &v1[qword_10098B7F0];
  v41 = *&a1[qword_10098B7F0 + 8];
  v42 = *&a1[qword_10098B7F0 + 24];
  v45 = *&a1[qword_10098B7F0 + 40];
  v43 = *&a1[qword_10098B7F0 + 56];
  *v48 = *&a1[qword_10098B7F0 + 72];
  *v40 = *&a1[qword_10098B7F0];
  *(v40 + 8) = v41;
  *(v40 + 24) = v42;
  *(v40 + 40) = v45;
  *(v40 + 56) = v43;
  *(v40 + 72) = *v48;
  *(v40 + 11) = v39;
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();

  sub_100551950();

  [v1 setOverrideUserInterfaceStyle:{objc_msgSend(a1, "overrideUserInterfaceStyle")}];
  sub_100551E70();

  return [v1 setNeedsLayout];
}

void sub_1005538D4()
{
  *(v0 + qword_10098B7B8) = 7;
  *(v0 + qword_10098B7C0) = 7;
  v1 = qword_10098B7D8;
  *(v0 + v1) = [objc_allocWithZone(UIImageView) init];
  *(v0 + qword_10098B7E8) = 0;
  *(v0 + qword_10098B7F8) = 0;
  *(v0 + qword_10098B800) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

unint64_t sub_100553998()
{
  result = qword_10098B858;
  if (!qword_10098B858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10098B858);
  }

  return result;
}

uint64_t sub_1005539EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&qword_100972DB8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100553A5C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100553AAC()
{
  AnyHashable.hash(into:)();
  v1 = String.hash(into:)();
  v2 = *(v0 + 72);
  if (v2 && (v2(v1), v3))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

uint64_t sub_100553B50(void *a1)
{
  if (*v1 != *a1)
  {
    return 0;
  }

  v2 = v1;
  if ((static AnyHashable.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for PromptActionDebugSetting();
  result = swift_dynamicCastClass();
  if (!result)
  {
    return result;
  }

  if (*(result + 56) != v1[7] || *(result + 64) != v1[8])
  {
    v5 = result;
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();
    result = v5;
    if ((v6 & 1) == 0)
    {
      return 0;
    }
  }

  v7 = *(result + 72);
  if (!v7)
  {
    v17 = v2[9];

    if (!v17)
    {
      goto LABEL_25;
    }

    v17(v18);
    v16 = v19;
    goto LABEL_18;
  }

  v9 = v7(v8);
  v11 = v10;
  v12 = v2[9];
  if (!v12)
  {
    if (!v10)
    {
      goto LABEL_25;
    }

    goto LABEL_21;
  }

  v13 = v9;
  v14 = v12();
  v16 = v15;
  if (!v11)
  {
LABEL_18:

    if (!v16)
    {
      return 1;
    }

    goto LABEL_22;
  }

  if (!v15)
  {
LABEL_21:

LABEL_22:

    return 0;
  }

  if (v13 == v14 && v11 == v15)
  {

LABEL_25:

    return 1;
  }

  v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

  return v20 & 1;
}

uint64_t sub_100553D2C()
{

  sub_10001F63C(*(v0 + 72));
}

uint64_t sub_100553D64()
{
  sub_10003D614(v0 + 16);

  sub_10001F63C(*(v0 + 72));

  return swift_deallocClassInstance();
}

uint64_t sub_100553DF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v14 = type metadata accessor for UUID();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v7 + 56) = a1;
  *(v7 + 64) = a2;
  *(v7 + 72) = a3;
  *(v7 + 80) = a4;
  *(v7 + 88) = a5;
  *(v7 + 96) = a6;
  sub_10000827C(a3);

  UUID.init()();
  v18 = UUID.uuidString.getter();
  v20 = v19;
  (*(v15 + 8))(v17, v14);
  v23[1] = v18;
  v23[2] = v20;
  AnyHashable.init<A>(_:)();
  v21 = v25;
  *(v7 + 16) = v24;
  *(v7 + 32) = v21;
  *(v7 + 48) = v26;
  return v7;
}

uint64_t sub_100553FBC(void *a1, uint64_t a2)
{
  v5 = sub_10002849C(&qword_10096FB10);
  __chkstk_darwin(v5 - 8);
  v11 = a1;
  sub_1001F16B4();
  a1;
  sub_10002849C(&qword_10098B9E8);
  if (swift_dynamicCast())
  {
    sub_100005A38(v9, v12);
    v6 = v13;
    v7 = v14;
    sub_10002A400(v12, v13);
    (*(v7 + 8))(a2, *(v2 + 16), v6, v7);
    UICollectionViewCell.backgroundConfiguration.setter();
    return sub_100007000(v12);
  }

  else
  {
    v10 = 0;
    memset(v9, 0, sizeof(v9));
    return sub_100554104(v9);
  }
}

uint64_t sub_100554104(uint64_t a1)
{
  v2 = sub_10002849C(&unk_10098B9F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_1005541B8()
{
  v0 = type metadata accessor for SmallBreakoutLayout.Metrics();
  __chkstk_darwin(v0 - 8);
  v2 = v18 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for SmallBreakoutLayout();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PageGrid();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  PageGrid.componentMeasuringSize(spanning:)();
  (*(v8 + 8))(v10, v7);
  v11 = sub_100079F24();
  sub_100128864(v11, v2);
  swift_getObjectType();
  swift_unknownObjectRetain();
  sub_100129BEC();
  swift_unknownObjectRelease();
  v12 = type metadata accessor for LayoutViewPlaceholder();
  swift_allocObject();
  v13 = LayoutViewPlaceholder.init(representing:)();
  v18[10] = v12;
  v18[11] = &protocol witness table for LayoutViewPlaceholder;
  v18[7] = v13;
  swift_allocObject();
  v14 = LayoutViewPlaceholder.init(representing:)();
  v18[5] = v12;
  v18[6] = &protocol witness table for LayoutViewPlaceholder;
  v18[2] = v14;
  SmallBreakoutLayout.init(metrics:iconView:detailsView:)();
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  sub_100554500(&qword_10098D0B0, &type metadata accessor for SmallBreakoutLayout);
  dispatch thunk of Measurable.measurements(fitting:in:)();
  v16 = v15;
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  (*(v4 + 8))(v6, v3);
  return v16;
}

uint64_t sub_100554500(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100554548(uint64_t a1, uint64_t a2)
{
  v2 = *((*(a2 + 16))() + OBJC_IVAR____TtC8AppStore35TodayCardCollectionElementsObserver_isMotionEnabled);

  return v2;
}

void sub_100554590(char a1, uint64_t a2, uint64_t a3)
{
  *((*(a3 + 16))(a2, a3) + OBJC_IVAR____TtC8AppStore35TodayCardCollectionElementsObserver_isMotionEnabled) = a1;

  sub_100554608(a2, a3);
}

void sub_100554608(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  (*(a2 + 8))();
  type metadata accessor for VideoPlaybackCoordinator();
  BaseObjectGraph.inject<A>(_:)();

  v5 = v23;
  v21 = a1;
  v22 = v3;
  v20 = *(v3 + 16);
  LODWORD(v3) = *(v20(a1, v3) + OBJC_IVAR____TtC8AppStore35TodayCardCollectionElementsObserver_isMotionEnabled);

  if (v3 == 1)
  {
    dispatch thunk of VideoPlaybackCoordinator.resumeAutoPlayVideo()();
  }

  else
  {
    v6 = [v2 view];
    if (v6)
    {
      v7 = v6;
      if (dispatch thunk of VideoPlaybackCoordinator.isPlaying(in:)())
      {
        dispatch thunk of VideoPlaybackCoordinator.pauseAutoPlayVideo()();
      }
    }
  }

  v8 = [v2 collectionView];
  if (!v8)
  {
    goto LABEL_21;
  }

  v19 = v8;
  v9 = [v8 visibleCells];
  sub_1001F16B4();
  v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v10 >> 62))
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11)
    {
      goto LABEL_10;
    }

LABEL_20:

    v5 = v23;
LABEL_21:

    return;
  }

  v11 = _CocoaArrayWrapper.endIndex.getter();
  if (!v11)
  {
    goto LABEL_20;
  }

LABEL_10:
  if (v11 >= 1)
  {
    for (i = 0; i != v11; ++i)
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v13 = *(v10 + 8 * i + 32);
      }

      v14 = v13;
      swift_getObjectType();
      v15 = swift_conformsToProtocol2();
      if (v15)
      {
        if (v14)
        {
          v16 = v15;
          ObjectType = swift_getObjectType();
          v18 = *(v20(v21, v22) + OBJC_IVAR____TtC8AppStore35TodayCardCollectionElementsObserver_isMotionEnabled);

          (*(v16 + 192))(v18, ObjectType, v16);
        }
      }
    }

    goto LABEL_20;
  }

  __break(1u);
}

void sub_100554884(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for VideoPlaybackCoordinator();
  (*(a3 + 8))(a2, a3);
  type metadata accessor for BaseObjectGraph();
  inject<A, B>(_:from:)();

  dispatch thunk of VideoPlaybackCoordinator.shouldLoopSingleVideo.setter();
}

uint64_t sub_100554928(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v4();
  Strong = swift_unknownObjectWeakLoadStrong();

  if (Strong)
  {
    v7 = [Strong layer];
    CATransform3DMakeScale(&v8, 1.0, 1.0, 1.0);
    [v7 setTransform:&v8];

    (v4)(a1, a2);
    swift_unknownObjectWeakAssign();
  }

  return result;
}

void sub_100554A24(void *a1, CGFloat a2)
{
  v3 = [a1 layer];
  CATransform3DMakeScale(&v4, a2, a2, 1.0);
  [v3 setTransform:&v4];
}

uint64_t sub_100554A98@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8AppStore32UnifiedMessageCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  return sub_10009768C(v1 + v3, a1);
}

uint64_t sub_100554AF4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8AppStore32UnifiedMessageCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  sub_10009761C(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_100554BBC()
{
  type metadata accessor for UnifiedMessage();
  sub_100554C60();
  result = ItemLayoutContext.typedModel<A>(as:)();
  if (v6)
  {
    v2 = UnifiedMessage.placement.getter();
    v4 = v3;

    v5 = (v0 + OBJC_IVAR____TtC8AppStore32UnifiedMessageCollectionViewCell_placement);
    swift_beginAccess();
    *v5 = v2;
    v5[1] = v4;
  }

  return result;
}

unint64_t sub_100554C60()
{
  result = qword_10098BA08;
  if (!qword_10098BA08)
  {
    type metadata accessor for UnifiedMessage();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10098BA08);
  }

  return result;
}

void sub_100554CB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v25 = a2;
  v7 = sub_10002849C(&qword_100973D30);
  __chkstk_darwin(v7 - 8);
  v9 = &v25 - v8;
  v10 = type metadata accessor for ImpressionMetrics();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC8AppStore28GuidedSearchTokenPaletteView_containerImpressionMetrics;
  swift_beginAccess();
  sub_1005585A4(a3, &v4[v14]);
  swift_endAccess();
  v15 = OBJC_IVAR____TtC8AppStore28GuidedSearchTokenPaletteView_impressionCalculator;
  swift_beginAccess();
  *&v4[v15] = a1;

  sub_100031660(a3, v9, &qword_100973D30);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {

    sub_10002B894(v9, &qword_100973D30);
  }

  else
  {
    (*(v11 + 32))(v13, v9, v10);

    [v4 bounds];
    ImpressionsCalculator.addElement(_:at:)();
    (*(v11 + 8))(v13, v10);
  }

  v16 = OBJC_IVAR____TtC8AppStore28GuidedSearchTokenPaletteView_collectionView;
  v17 = *&v4[OBJC_IVAR____TtC8AppStore28GuidedSearchTokenPaletteView_collectionView];
  if (!v17)
  {
    __break(1u);
    goto LABEL_13;
  }

  type metadata accessor for NestedCollectionViewImpressionsCoordinator();
  swift_allocObject();
  v18 = v17;
  v19 = NestedCollectionViewImpressionsCoordinator.init(collectionView:)();
  v20 = OBJC_IVAR____TtC8AppStore28GuidedSearchTokenPaletteView_impressionsCoordinator;
  *&v4[OBJC_IVAR____TtC8AppStore28GuidedSearchTokenPaletteView_impressionsCoordinator] = v19;

  if (*&v4[v20])
  {

    dispatch thunk of NestedCollectionViewImpressionsCoordinator.models.setter();

    if (*&v4[v20])
    {

      dispatch thunk of NestedCollectionViewImpressionsCoordinator.impressionsCalculator.setter();
    }
  }

  type metadata accessor for ImpressionsScrollObserver();
  swift_allocObject();

  v21 = ImpressionsScrollObserver.init(_:)();
  v22 = OBJC_IVAR____TtC8AppStore28GuidedSearchTokenPaletteView_impressionsScrollObserver;
  *&v4[OBJC_IVAR____TtC8AppStore28GuidedSearchTokenPaletteView_impressionsScrollObserver] = v21;

  if (*&v4[v22])
  {
    v23 = *&v4[v16];
    if (v23)
    {

      v24 = v23;
      ImpressionsScrollObserver.didScroll(in:)(v24);

      return;
    }

LABEL_13:
    __break(1u);
  }
}

void sub_100554FF4(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = type metadata accessor for AutomationSemantics();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = &v4[OBJC_IVAR____TtC8AppStore28GuidedSearchTokenPaletteView_onSelect];
  *v14 = 0;
  *(v14 + 1) = 0;
  *&v4[OBJC_IVAR____TtC8AppStore28GuidedSearchTokenPaletteView_collectionView] = 0;
  v15 = &v4[OBJC_IVAR____TtC8AppStore28GuidedSearchTokenPaletteView_previousLayoutWidth];
  *v15 = 0;
  v15[8] = 1;
  *&v4[OBJC_IVAR____TtC8AppStore28GuidedSearchTokenPaletteView_impressionCalculator] = 0;
  *&v4[OBJC_IVAR____TtC8AppStore28GuidedSearchTokenPaletteView_impressionsCoordinator] = 0;
  *&v4[OBJC_IVAR____TtC8AppStore28GuidedSearchTokenPaletteView_impressionsScrollObserver] = 0;
  v16 = OBJC_IVAR____TtC8AppStore28GuidedSearchTokenPaletteView_containerImpressionMetrics;
  v17 = type metadata accessor for ImpressionMetrics();
  (*(*(v17 - 8) + 56))(&v4[v16], 1, 1, v17);
  *&v4[OBJC_IVAR____TtC8AppStore28GuidedSearchTokenPaletteView_tokens] = _swiftEmptyArrayStorage;
  *&v4[OBJC_IVAR____TtC8AppStore28GuidedSearchTokenPaletteView_layout] = [objc_allocWithZone(type metadata accessor for GuidedSearchTokenPaletteCollectionViewLayout()) init];
  v47.receiver = v4;
  v47.super_class = ObjectType;
  v18 = objc_msgSendSuper2(&v47, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v22 = v18;
  [v22 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v23 = OBJC_IVAR____TtC8AppStore28GuidedSearchTokenPaletteView_layout;
  *(*&v22[OBJC_IVAR____TtC8AppStore28GuidedSearchTokenPaletteView_layout] + OBJC_IVAR____TtC8AppStore44GuidedSearchTokenPaletteCollectionViewLayout_layoutDelegate + 8) = &off_1008C83C0;
  swift_unknownObjectWeakAssign();
  v24 = [objc_allocWithZone(UICollectionView) initWithFrame:*&v22[v23] collectionViewLayout:{0.0, 0.0, 0.0, 0.0}];
  v25 = OBJC_IVAR____TtC8AppStore28GuidedSearchTokenPaletteView_collectionView;
  v26 = *&v22[OBJC_IVAR____TtC8AppStore28GuidedSearchTokenPaletteView_collectionView];
  *&v22[OBJC_IVAR____TtC8AppStore28GuidedSearchTokenPaletteView_collectionView] = v24;
  v27 = v24;

  if (!v27)
  {
    __break(1u);
    goto LABEL_14;
  }

  v28 = [objc_opt_self() clearColor];
  [v27 setBackgroundColor:v28];

  v29 = *&v22[v25];
  if (!v29)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  [v29 setDataSource:v22];
  v30 = *&v22[v25];
  if (!v30)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  [v30 setDelegate:v22];
  v31 = *&v22[v25];
  if (!v31)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  [v31 setShowsHorizontalScrollIndicator:0];
  v32 = *&v22[v25];
  if (!v32)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  [v32 setShowsVerticalScrollIndicator:0];
  v33 = *&v22[v25];
  if (!v33)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  [v33 setBouncesHorizontally:1];
  v34 = *&v22[v25];
  if (!v34)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  [v34 setClipsToBounds:0];
  if (!*&v22[v25])
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  [v22 addSubview:?];
  v35 = *&v22[v25];
  if (!v35)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v36 = v10;
  v45[1] = ObjectType;
  [v35 setPreservesSuperviewLayoutMargins:1];
  v37 = *&v22[v25];
  if (!v37)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  type metadata accessor for GuidedSearchTokenCell();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v39 = v37;
  static UICollectionReusableView.defaultReuseIdentifier.getter();
  v40 = String._bridgeToObjectiveC()();

  [v39 registerClass:ObjCClassFromMetadata forCellWithReuseIdentifier:v40];

  v41 = *&v22[v25];
  if (v41)
  {
    memset(v46, 0, sizeof(v46));
    v42 = v41;
    static AutomationSemantics.page(name:id:)();
    sub_10002B894(v46, &unk_1009711D0);
    UIView.setAutomationSemantics(_:)();

    (*(v11 + 8))(v13, v36);
    v43 = [v22 traitCollection];

    [*&v22[v23] invalidateLayout];
    sub_10002849C(&qword_10097B110);
    v44 = swift_allocObject();
    *(v44 + 16) = xmmword_1007B1890;
    *(v44 + 32) = type metadata accessor for UITraitHorizontalSizeClass();
    *(v44 + 40) = &protocol witness table for UITraitHorizontalSizeClass;
    *(v44 + 48) = type metadata accessor for UITraitPreferredContentSizeCategory();
    *(v44 + 56) = &protocol witness table for UITraitPreferredContentSizeCategory;
    UIView.registerForTraitChanges<A>(_:handler:)();

    swift_unknownObjectRelease();

    return;
  }

LABEL_23:
  __break(1u);
}

void sub_1005555C0()
{
  v1 = v0;
  v10.receiver = v0;
  v10.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v10, "layoutSubviews");
  v2 = *&v0[OBJC_IVAR____TtC8AppStore28GuidedSearchTokenPaletteView_collectionView];
  if (v2)
  {
    v3 = v2;
    [v1 bounds];
    Width = CGRectGetWidth(v11);

    [v3 setFrame:{0.0, 0.0, Width, 60.0}];
    v5 = [v1 traitCollection];
    v6 = UITraitCollection.isSizeClassRegular.getter();

    if ((v6 & 1) != 0 && (v1[OBJC_IVAR____TtC8AppStore28GuidedSearchTokenPaletteView_previousLayoutWidth + 8] & 1) == 0)
    {
      v7 = *&v1[OBJC_IVAR____TtC8AppStore28GuidedSearchTokenPaletteView_previousLayoutWidth];
      [v1 bounds];
      if (v7 <= 834.0 == CGRectGetWidth(v12) > 834.0)
      {

        [*&v1[OBJC_IVAR____TtC8AppStore28GuidedSearchTokenPaletteView_layout] invalidateLayout];
      }
    }

    [v1 bounds];
    v8 = CGRectGetWidth(v13);
    v9 = &v1[OBJC_IVAR____TtC8AppStore28GuidedSearchTokenPaletteView_previousLayoutWidth];
    *v9 = v8;
    *(v9 + 8) = 0;
  }

  else
  {
    __break(1u);
  }
}

void sub_1005557FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(a1 + OBJC_IVAR____TtC8AppStore28GuidedSearchTokenPaletteView_tokens) = a2;

  if (*(a3 + 16))
  {
    v8 = *(a1 + OBJC_IVAR____TtC8AppStore28GuidedSearchTokenPaletteView_collectionView);
    if (!v8)
    {
      __break(1u);
      goto LABEL_11;
    }

    type metadata accessor for IndexPath();
    v9 = v8;
    isa = Array._bridgeToObjectiveC()().super.isa;
    [v9 deleteItemsAtIndexPaths:isa];
  }

  if (!*(a5 + 16))
  {
    return;
  }

  v11 = *(a1 + OBJC_IVAR____TtC8AppStore28GuidedSearchTokenPaletteView_collectionView);
  if (!v11)
  {
LABEL_11:
    __break(1u);
    return;
  }

  type metadata accessor for IndexPath();
  v12 = v11;
  v13 = Array._bridgeToObjectiveC()().super.isa;
  [v12 insertItemsAtIndexPaths:v13];
}

void sub_100555938(uint64_t a1, char a2)
{
  if (a2)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v3 = Strong;
      sub_100555994();
    }
  }
}

void sub_100555994()
{
  if (*(*(v0 + OBJC_IVAR____TtC8AppStore28GuidedSearchTokenPaletteView_layout) + OBJC_IVAR____TtC8AppStore44GuidedSearchTokenPaletteCollectionViewLayout_pinningEnabled) == 1)
  {
    v1 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v2 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v3 = objc_opt_self();
    v10 = sub_100558630;
    v11 = v1;
    v6 = _NSConcreteStackBlock;
    v7 = 1107296256;
    v8 = sub_100007A08;
    v9 = &unk_1008C84C0;
    v4 = _Block_copy(&v6);

    v10 = sub_100558638;
    v11 = v2;
    v6 = _NSConcreteStackBlock;
    v7 = 1107296256;
    v8 = sub_100504C5C;
    v9 = &unk_1008C84E8;
    v5 = _Block_copy(&v6);

    [v3 animateWithDuration:0 delay:v4 usingSpringWithDamping:v5 initialSpringVelocity:0.3 options:0.0 animations:27.0 completion:0.0];
    _Block_release(v5);
    _Block_release(v4);
  }
}

void sub_100555B8C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + OBJC_IVAR____TtC8AppStore28GuidedSearchTokenPaletteView_collectionView);
    v2 = Strong;
    v3 = v1;

    if (v1)
    {
      [v3 setContentOffset:{0.0, 0.0}];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_100555C1C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC8AppStore28GuidedSearchTokenPaletteView_layout);

    v2[OBJC_IVAR____TtC8AppStore44GuidedSearchTokenPaletteCollectionViewLayout_pinningEnabled] = 0;
  }

  swift_beginAccess();
  v3 = swift_unknownObjectWeakLoadStrong();
  if (v3)
  {
    v4 = v3;
    v5 = *(v3 + OBJC_IVAR____TtC8AppStore28GuidedSearchTokenPaletteView_layout);

    [v5 invalidateLayout];
  }
}

uint64_t type metadata accessor for GuidedSearchTokenPaletteView()
{
  result = qword_10098BA80;
  if (!qword_10098BA80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100555DF0()
{
  sub_1000E0A08();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

id sub_100556030(void *a1)
{
  type metadata accessor for GuidedSearchTokenCell();
  static UICollectionReusableView.defaultReuseIdentifier.getter();
  v2 = String._bridgeToObjectiveC()();

  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v4 = [a1 dequeueReusableCellWithReuseIdentifier:v2 forIndexPath:isa];

  v5 = swift_dynamicCastClass();
  if (v5)
  {
    v6 = v5;
    v4 = v4;
    sub_100556158(v13);
    v7 = v14;
    if (v14)
    {
      v9 = v13[1];
      v8 = v13[2];
      v10 = v13[0];
      v11 = v15;

      sub_100084F00(v10, v9, v8, v7, v11 & 1);

      return v6;
    }

    else
    {
    }
  }

  return v4;
}

uint64_t sub_100556158@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8AppStore28GuidedSearchTokenPaletteView_tokens;
  v4 = *(*(v1 + OBJC_IVAR____TtC8AppStore28GuidedSearchTokenPaletteView_tokens) + 16);
  result = IndexPath.row.getter();
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  if (result < 0 || result >= v4)
  {
    goto LABEL_6;
  }

  result = IndexPath.row.getter();
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v11 = *(v1 + v3);
    if (result < *(v11 + 16))
    {
      v12 = v11 + 40 * result;
      v7 = *(v12 + 32);
      v8 = *(v12 + 40);
      v9 = *(v12 + 48);
      v10 = *(v12 + 56);
      v6 = *(v12 + 64);

LABEL_6:
      *a1 = v7;
      *(a1 + 8) = v8;
      *(a1 + 16) = v9;
      *(a1 + 24) = v10;
      *(a1 + 32) = v6;
      return result;
    }
  }

  __break(1u);
  return result;
}

__n128 sub_10055674C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100556760(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_1005567A8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1005567FC()
{
  v1 = *(v0 + OBJC_IVAR____TtC8AppStore28GuidedSearchTokenPaletteView_tokens);
  v2 = *(v1 + 16);

  v4 = 0;
LABEL_2:
  v5 = 40 * v4;
  while (1)
  {
    if (v2 == v4)
    {

      v15 = _swiftEmptyArrayStorage[2];

      return *&v15;
    }

    if (v4 >= *(v1 + 16))
    {
      break;
    }

    ++v4;
    v6 = v5 + 40;
    v7 = *(v1 + v5 + 64);
    v5 += 40;
    if (v7)
    {
      v9 = *(v1 + v6 - 8);
      v8 = *(v1 + v6);
      v11 = *(v1 + v6 + 8);
      v10 = *(v1 + v6 + 16);

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_100144248(0, *&_swiftEmptyArrayStorage[2] + 1, 1);
      }

      v13 = _swiftEmptyArrayStorage[2];
      v12 = _swiftEmptyArrayStorage[3];
      if (*&v13 >= *&v12 >> 1)
      {
        result = sub_100144248((*&v12 > 1uLL), *&v13 + 1, 1);
      }

      *&_swiftEmptyArrayStorage[2] = *&v13 + 1;
      v14 = &_swiftEmptyArrayStorage[5 * *&v13];
      *(v14 + 4) = v9;
      *(v14 + 5) = v8;
      *(v14 + 6) = v11;
      *(v14 + 7) = v10;
      *(v14 + 64) = 1;
      goto LABEL_2;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10055694C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  v10 = *(a2 + 32);
  if (v3)
  {
    if (!v7)
    {
      return 0;
    }

    v11 = *a1 == *a2 && v3 == v7;
    if (!v11 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  v12 = v4 == v8 && v5 == v9;
  if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    return v6 ^ v10 ^ 1u;
  }

  return 0;
}

id sub_100556A00(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    goto LABEL_6;
  }

  sub_1000367E8();
  if (qword_10096CF50 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for FontUseCase();
  sub_1000056A8(v2, qword_1009CDB68);
  v3 = static UIFont.preferredFont(forUseWith:in:)();
  v4 = [objc_opt_self() configurationWithFont:v3 scale:2];

  v5 = String._bridgeToObjectiveC()();
  v6 = [objc_opt_self() _systemImageNamed:v5 withConfiguration:v4];

  if (v6)
  {
    v7 = objc_allocWithZone(NSMutableAttributedString);
    v8 = String._bridgeToObjectiveC()();
    v9 = [v7 initWithString:v8];

    v10 = [objc_opt_self() textAttachmentWithImage:v6];
    v11 = [objc_opt_self() attributedStringWithAttachment:v10];

    [v9 appendAttributedString:v11];
    v12 = objc_allocWithZone(NSAttributedString);
    v13 = String._bridgeToObjectiveC()();
    v14 = [v12 initWithString:v13];

    [v9 appendAttributedString:v14];
    v15 = objc_allocWithZone(NSAttributedString);
    v16 = String._bridgeToObjectiveC()();
    v17 = [v15 initWithString:v16];

    [v9 appendAttributedString:v17];
    v18 = [objc_allocWithZone(NSAttributedString) initWithAttributedString:v9];
  }

  else
  {
LABEL_6:
    v19 = objc_allocWithZone(NSAttributedString);
    v9 = String._bridgeToObjectiveC()();
    v18 = [v19 initWithString:v9];
  }

  return v18;
}

double sub_100556CC8(void *a1, int a2, void *a3)
{
  v28 = a2;
  v5 = type metadata accessor for FloatingPointRoundingRule();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v27[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for LabelPlaceholderCompatibility();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v27[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1000367E8();
  v13 = qword_10096CF50;
  v14 = a1;
  if (v13 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for FontUseCase();
  sub_1000056A8(v15, qword_1009CDB68);
  static UIFont.preferredFont(forUseWith:in:)();
  v16 = type metadata accessor for Feature();
  v30 = v16;
  v31 = sub_100085D7C();
  v17 = sub_1000056E0(v29);
  (*(*(v16 - 8) + 104))(v17, enum case for Feature.measurement_with_labelplaceholder(_:), v16);
  isFeatureEnabled(_:)();
  sub_100007000(v29);
  LabelPlaceholderCompatibility.init(attributedText:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  LabelPlaceholderCompatibility.layoutTextView.getter();
  (*(v10 + 8))(v12, v9);
  sub_10002A400(v29, v30);
  Measurable.measuredSize(fitting:in:)();
  CGSize.adding(outsets:)();
  (*(v6 + 104))(v8, enum case for FloatingPointRoundingRule.up(_:), v5);
  CGSize.rounded(_:)();
  v19 = v18;
  (*(v6 + 8))(v8, v5);
  v20 = [a3 traitCollection];
  v21 = sub_100085B8C();

  if (v28)
  {
    [v21 size];
    v23 = v22;

    v24 = v23 + 5.0;
  }

  else
  {

    v24 = 0.0;
  }

  v25 = v19 + v24;
  sub_100007000(v29);
  return v25;
}

id sub_100557064(char *a1)
{
  v2 = *&a1[OBJC_IVAR____TtC8AppStore28GuidedSearchTokenPaletteView_layout];

  return [v2 invalidateLayout];
}

uint64_t sub_1005570C0(int64_t a1, unsigned __int8 *a2)
{
  v68 = sub_10002849C(&qword_10096FDD0);
  v67 = *(v68 - 8);
  __chkstk_darwin(v68);
  v71 = &v64 - v4;
  v74 = type metadata accessor for IndexPath();
  v82 = *(v74 - 8);
  __chkstk_darwin(v74);
  v66 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v84 = &v64 - v7;
  __chkstk_darwin(v8);
  v78 = &v64 - v9;
  v10 = sub_10002849C(&qword_10098BAA0);
  __chkstk_darwin(v10);
  v81 = &v64 - v11;
  v75 = sub_10002849C(&qword_10098BAA8);
  v70 = *(v75 - 8);
  __chkstk_darwin(v75);
  v69 = &v64 - v12;
  v13 = *(a1 + 16);
  v14 = &_swiftEmptyArrayStorage;
  v80 = v13;
  v76 = a1;
  v77 = a2;
  if (v13)
  {
    v86[0] = &_swiftEmptyArrayStorage;
    sub_100144128(0, v13, 0);
    v14 = v86[0];
    v15 = (a1 + 56);
    do
    {
      v17 = *(v15 - 1);
      v16 = *v15;
      v86[0] = v14;
      v19 = *(v14 + 2);
      v18 = *(v14 + 3);

      if (v19 >= v18 >> 1)
      {
        sub_100144128((v18 > 1), v19 + 1, 1);
        v14 = v86[0];
      }

      *(v14 + 2) = v19 + 1;
      v20 = &v14[2 * v19];
      *(v20 + 4) = v17;
      *(v20 + 5) = v16;
      v15 += 5;
      --v13;
    }

    while (v13);
    a2 = v77;
  }

  v21 = *(a2 + 2);
  v22 = &_swiftEmptyArrayStorage;
  v64 = v21;
  if (v21)
  {
    v86[0] = &_swiftEmptyArrayStorage;
    sub_100144128(0, v21, 0);
    v22 = v86[0];
    v23 = (a2 + 56);
    v24 = v21;
    do
    {
      v26 = *(v23 - 1);
      v25 = *v23;
      v86[0] = v22;
      v28 = *(v22 + 2);
      v27 = *(v22 + 3);

      if (v28 >= v27 >> 1)
      {
        sub_100144128((v27 > 1), v28 + 1, 1);
        v22 = v86[0];
      }

      *(v22 + 2) = v28 + 1;
      v29 = &v22[2 * v28];
      *(v29 + 4) = v26;
      *(v29 + 5) = v25;
      v23 += 5;
      --v24;
    }

    while (v24);
  }

  v86[0] = v22;
  v86[4] = v14;
  sub_10002849C(&unk_100977380);
  sub_100097060(&qword_100973110, &unk_100977380);
  v30 = v69;
  BidirectionalCollection<>.difference<A>(from:)();

  v31 = v81;
  (*(v70 + 16))(v81, v30, v75);
  v32 = *(v10 + 36);
  sub_100097060(&unk_10098BAB0, &qword_10098BAA8);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  if (*(v31 + v32) == v86[0])
  {
    v72 = &_swiftEmptyArrayStorage;
    v85 = &_swiftEmptyArrayStorage;
  }

  else
  {
    v79 = (v82 + 32);
    v85 = &_swiftEmptyArrayStorage;
    v72 = &_swiftEmptyArrayStorage;
    do
    {
      while (1)
      {
        v54 = dispatch thunk of Collection.subscript.read();
        v56 = *(v55 + 33);
        v83 = *(v55 + 16);
        DebugMenuPage.debugSettingsProviders.getter();
        v54(v86, 0);
        dispatch thunk of Collection.formIndex(after:)();
        if (v56 == 1)
        {
          break;
        }

        IndexPath.init(item:section:)();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v85 = sub_10003421C(0, *(v85 + 2) + 1, 1, v85);
        }

        v58 = *(v85 + 2);
        v57 = *(v85 + 3);
        if (v58 >= v57 >> 1)
        {
          v85 = sub_10003421C(v57 > 1, v58 + 1, 1, v85);
        }

        sub_100558640();
        v59 = v84;
        v60 = v85;
        *(v85 + 2) = v58 + 1;
        (*(v82 + 32))(v60 + ((*(v82 + 80) + 32) & ~*(v82 + 80)) + *(v82 + 72) * v58, v59, v74);
        v31 = v81;
        dispatch thunk of Collection.endIndex.getter();
        if (*(v31 + v32) == v86[0])
        {
          goto LABEL_14;
        }
      }

      IndexPath.init(item:section:)();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v72 = sub_10003421C(0, *(v72 + 2) + 1, 1, v72);
      }

      v62 = *(v72 + 2);
      v61 = *(v72 + 3);
      if (v62 >= v61 >> 1)
      {
        v72 = sub_10003421C(v61 > 1, v62 + 1, 1, v72);
      }

      sub_100558640();
      v63 = v72;
      *(v72 + 2) = v62 + 1;
      (*(v82 + 32))(v63 + ((*(v82 + 80) + 32) & ~*(v82 + 80)) + *(v82 + 72) * v62, v78, v74);
      v31 = v81;
      dispatch thunk of Collection.endIndex.getter();
    }

    while (*(v31 + v32) != v86[0]);
  }

LABEL_14:
  result = sub_10002B894(v31, &qword_10098BAA0);
  v34 = v80;
  if (!v80)
  {
    v73 = &_swiftEmptyArrayStorage;
LABEL_62:
    (*(v70 + 8))(v69, v75);
    return v72;
  }

  v35 = 0;
  v78 = (v76 + 32);
  v65 = (v82 + 32);
  v77 += 64;
  v73 = &_swiftEmptyArrayStorage;
  v76 = v64 + 1;
  while (2)
  {
    if (v35 >= v34)
    {
      __break(1u);
    }

    else if (!__OFADD__(v35, 1))
    {
      v84 = v35 + 1;
      v36 = v77;
      v79 = v35;
      v37 = &v78[40 * v35];
      v38 = *(v37 + 1);
      v81 = *v37;
      v83 = v38;
      v40 = *(v37 + 2);
      v39 = *(v37 + 3);
      LODWORD(v82) = v37[32];
      v41 = v76;
      while (1)
      {
        if (!--v41)
        {
          goto LABEL_17;
        }

        v42 = *(v36 - 4);
        v43 = *(v36 - 3);
        v45 = *(v36 - 2);
        v44 = *(v36 - 1);
        v46 = *v36;
        v47 = v45 == v40 && v44 == v39;
        v48 = v47;
        if (v47)
        {
          break;
        }

        v36 += 40;
        result = _stringCompareWithSmolCheck(_:_:expecting:)();
        if (result)
        {
          v49 = v83;
          if (v83)
          {
            goto LABEL_31;
          }

LABEL_37:
          if (v43)
          {
            goto LABEL_40;
          }

          goto LABEL_38;
        }
      }

      v45 = v40;
      v49 = v83;
      if (!v83)
      {
        goto LABEL_37;
      }

LABEL_31:
      if (!v43)
      {
        goto LABEL_41;
      }

      result = v81;
      if (v81 == v42 && v49 == v43 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
      {
LABEL_38:
        if (v48 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
        {
          if (v82 == v46)
          {
LABEL_17:
            v35 = v84;
            v34 = v80;
            if (v84 == v80)
            {
              goto LABEL_62;
            }

            continue;
          }
        }
      }

LABEL_40:

LABEL_41:

      IndexPath.init(item:section:)();
      v50 = v71 + *(v68 + 48);
      (*v65)();
      *v50 = v42;
      *(v50 + 8) = v43;
      *(v50 + 16) = v45;
      *(v50 + 24) = v44;
      *(v50 + 32) = v46;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v73 = sub_1000341F8(0, *(v73 + 2) + 1, 1, v73);
      }

      v34 = v80;
      v35 = v84;
      v52 = *(v73 + 2);
      v51 = *(v73 + 3);
      if (v52 >= v51 >> 1)
      {
        v73 = sub_1000341F8(v51 > 1, v52 + 1, 1, v73);
      }

      v53 = v73;
      *(v73 + 2) = v52 + 1;
      result = sub_1000476A0(v71, v53 + ((*(v67 + 80) + 32) & ~*(v67 + 80)) + *(v67 + 72) * v52, &qword_10096FDD0);
      if (v35 != v34)
      {
        continue;
      }

      goto LABEL_62;
    }

    break;
  }

  __break(1u);
  return result;
}

void sub_100557B44(unsigned __int8 *a1)
{
  v2 = v1;
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10002849C(&unk_10098BA90);
  __chkstk_darwin(v8 - 8);
  v10 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v64 = &v54 - v12;
  v65 = v2;

  v13 = sub_1005570C0(v55, a1);
  v56 = v14;
  v57 = v13;
  v16 = v15;
  v17 = *(v15 + 16);
  if (v17)
  {
    v54 = a1;
    v62 = (v5 + 32);
    v63 = OBJC_IVAR____TtC8AppStore28GuidedSearchTokenPaletteView_collectionView;
    v58 = (v5 + 8);

    v18 = 0;
    v60 = v10;
    v61 = v16;
    v59 = v17;
    while (1)
    {
      v19 = v64;
      if (v18 == v17)
      {
        v20 = sub_10002849C(&qword_10096FDD0);
        (*(*(v20 - 8) + 56))(v10, 1, 1, v20);
        v66 = v17;
      }

      else
      {
        if ((v18 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_23:
          __break(1u);
LABEL_24:
          __break(1u);
LABEL_25:
          __break(1u);
LABEL_26:
          __break(1u);
          return;
        }

        if (v18 >= *(v16 + 16))
        {
          goto LABEL_23;
        }

        v21 = v4;
        v22 = v16;
        v23 = v18;
        v24 = sub_10002849C(&qword_10096FDD0);
        v25 = *(v24 - 8);
        sub_100031660(v22 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v23, v10, &qword_10096FDD0);
        v66 = v23 + 1;
        v16 = v22;
        v4 = v21;
        (*(v25 + 56))(v10, 0, 1, v24);
      }

      sub_1000476A0(v10, v19, &unk_10098BA90);
      v26 = sub_10002849C(&qword_10096FDD0);
      if ((*(*(v26 - 8) + 48))(v19, 1, v26) == 1)
      {

        a1 = v54;
        break;
      }

      v27 = v19 + *(v26 + 48);
      v28 = *v27;
      v29 = *(v27 + 8);
      v31 = *(v27 + 16);
      v30 = *(v27 + 24);
      v32 = *(v27 + 32);
      v33 = v19;
      v34 = v4;
      (*v62)(v7, v33, v4);
      v35 = *&v65[v63];
      if (!v35)
      {
        goto LABEL_24;
      }

      v36 = v35;
      isa = IndexPath._bridgeToObjectiveC()().super.isa;
      v38 = [v36 cellForItemAtIndexPath:isa];

      if (v38)
      {
        type metadata accessor for GuidedSearchTokenCell();
        if (swift_dynamicCastClass())
        {
          sub_100084F00(v28, v29, v31, v30, v32);
        }

        v4 = v34;
        (*v58)(v7, v34);
      }

      else
      {
        v4 = v34;
        (*v58)(v7, v34);
      }

      v10 = v60;
      v16 = v61;
      v17 = v59;
      v18 = v66;
    }
  }

  v39 = *(v57 + 16);
  if (v39)
  {
    v40 = *&v65[OBJC_IVAR____TtC8AppStore28GuidedSearchTokenPaletteView_collectionView];
    if (!v40)
    {
      goto LABEL_26;
    }

    v41 = v40;
    [v41 contentOffset];
    [v41 setContentOffset:0 animated:?];

    *(*&v65[OBJC_IVAR____TtC8AppStore28GuidedSearchTokenPaletteView_layout] + OBJC_IVAR____TtC8AppStore44GuidedSearchTokenPaletteCollectionViewLayout_pinningEnabled) = 1;
  }

  v42 = *&v65[OBJC_IVAR____TtC8AppStore28GuidedSearchTokenPaletteView_collectionView];
  if (!v42)
  {
    goto LABEL_25;
  }

  v43 = v39 != 0;
  v44 = v42;

  v45 = swift_allocObject();
  v46 = v65;
  v45[2] = v65;
  v45[3] = a1;
  v47 = v56;
  v45[4] = v57;
  v45[5] = v16;
  v45[6] = v47;
  v48 = swift_allocObject();
  *(v48 + 16) = sub_100558614;
  *(v48 + 24) = v45;
  v71 = sub_10006F094;
  v72 = v48;
  aBlock = _NSConcreteStackBlock;
  v68 = 1107296256;
  v69 = sub_1000489A8;
  v70 = &unk_1008C8420;
  v49 = _Block_copy(&aBlock);
  v50 = v46;

  v51 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v52 = swift_allocObject();
  *(v52 + 16) = v43;
  *(v52 + 24) = v51;
  v71 = sub_100558624;
  v72 = v52;
  aBlock = _NSConcreteStackBlock;
  v68 = 1107296256;
  v69 = sub_100504C5C;
  v70 = &unk_1008C8498;
  v53 = _Block_copy(&aBlock);

  [v44 performBatchUpdates:v49 completion:v53];
  _Block_release(v53);
  _Block_release(v49);
}

void sub_10055822C()
{
  v1 = (v0 + OBJC_IVAR____TtC8AppStore28GuidedSearchTokenPaletteView_onSelect);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore28GuidedSearchTokenPaletteView_collectionView) = 0;
  v2 = v0 + OBJC_IVAR____TtC8AppStore28GuidedSearchTokenPaletteView_previousLayoutWidth;
  *v2 = 0;
  *(v2 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC8AppStore28GuidedSearchTokenPaletteView_impressionCalculator) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore28GuidedSearchTokenPaletteView_impressionsCoordinator) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore28GuidedSearchTokenPaletteView_impressionsScrollObserver) = 0;
  v3 = OBJC_IVAR____TtC8AppStore28GuidedSearchTokenPaletteView_containerImpressionMetrics;
  v4 = type metadata accessor for ImpressionMetrics();
  (*(*(v4 - 8) + 56))(v0 + v3, 1, 1, v4);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_10055832C(void *a1)
{
  v3 = sub_10002849C(&qword_100973D30);
  __chkstk_darwin(v3 - 8);
  v5 = &v13[-v4];
  v6 = type metadata accessor for ImpressionMetrics();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v13[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = OBJC_IVAR____TtC8AppStore28GuidedSearchTokenPaletteView_containerImpressionMetrics;
  swift_beginAccess();
  sub_100031660(v1 + v10, v5, &qword_100973D30);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    result = sub_10002B894(v5, &qword_100973D30);
  }

  else
  {
    (*(v7 + 32))(v9, v5, v6);
    v12 = OBJC_IVAR____TtC8AppStore28GuidedSearchTokenPaletteView_impressionCalculator;
    swift_beginAccess();
    if (*(v1 + v12))
    {
      swift_endAccess();

      [a1 frame];
      ImpressionsCalculator.increaseImpressionableFrame(forElement:by:isContainer:)();

      result = (*(v7 + 8))(v9, v6);
    }

    else
    {
      (*(v7 + 8))(v9, v6);
      result = swift_endAccess();
    }
  }

  if (*(v1 + OBJC_IVAR____TtC8AppStore28GuidedSearchTokenPaletteView_impressionsCoordinator))
  {

    dispatch thunk of NestedCollectionViewImpressionsCoordinator.register(for:at:)();
  }

  return result;
}

uint64_t sub_1005585A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&qword_100973D30);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

char *sub_100558660(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC8AppStore31TodayDebugSectionBackgroundView_sectionTypeIndicator;
  *&v4[v9] = [objc_allocWithZone(UIView) init];
  v17.receiver = v4;
  v17.super_class = type metadata accessor for TodayDebugSectionBackgroundView();
  v10 = objc_msgSendSuper2(&v17, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v14 = v10;
  [v14 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v14 addSubview:*&v14[OBJC_IVAR____TtC8AppStore31TodayDebugSectionBackgroundView_sectionTypeIndicator]];
  v15 = [v14 layer];
  [v15 setZPosition:1000.0];

  return v14;
}

void sub_1005588F0(uint64_t a1)
{
  v2 = type metadata accessor for Shelf.ContentsMetadata();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10002849C(&unk_1009731F0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v20 - v8;
  v21 = type metadata accessor for TodaySectionDisplayOptions();
  v10 = *(v21 - 8);
  __chkstk_darwin(v21);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = a1;
  ShelfLayoutContext.shelf.getter();
  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  (*(v7 + 8))(v9, v6);
  if ((*(v3 + 88))(v5, v2) == enum case for Shelf.ContentsMetadata.todaySection(_:))
  {
    (*(v3 + 96))(v5, v2);
    v13 = v5;
    v14 = v21;
    (*(v10 + 32))(v12, v13, v21);
    v15 = v23;
    v16 = *&v23[OBJC_IVAR____TtC8AppStore31TodayDebugSectionBackgroundView_sectionTypeIndicator];
    v17 = TodaySectionDisplayOptions.debugSectionTypeIndicatorColor.getter();
    [v16 setBackgroundColor:v17];

    sub_100558D7C();
    ShelfLayoutSpacingProvider.topPaddingValue(in:)();
    ShelfLayoutSpacingProvider.bottomPaddingValue(in:)();
    static UIEdgeInsets.vertical(top:bottom:)();
    [v15 setLayoutMargins:?];
    (*(v10 + 8))(v12, v14);
  }

  else
  {
    (*(v3 + 8))(v5, v2);
    v18 = *&v23[OBJC_IVAR____TtC8AppStore31TodayDebugSectionBackgroundView_sectionTypeIndicator];
    v19 = [objc_opt_self() clearColor];
    [v18 setBackgroundColor:v19];
  }
}

id sub_100558D14()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TodayDebugSectionBackgroundView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_100558D7C()
{
  result = qword_10098BAF0;
  if (!qword_10098BAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10098BAF0);
  }

  return result;
}

void sub_100558DD0(id a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC8AppStore26SearchResultBackgroundView_borderColor);
  *(v1 + OBJC_IVAR____TtC8AppStore26SearchResultBackgroundView_borderColor) = a1;
  if (!a1)
  {
    if (!v3)
    {
      return;
    }

    v7 = v3;
    goto LABEL_8;
  }

  v7 = v3;
  if (!v3)
  {
    a1 = a1;
    goto LABEL_8;
  }

  sub_100028BB8();
  a1 = a1;
  v4 = v7;
  v5 = static NSObject.== infix(_:_:)();

  if ((v5 & 1) == 0)
  {
LABEL_8:
    sub_100559118();

    v6 = v7;
    goto LABEL_9;
  }

  v6 = v4;
LABEL_9:
}

uint64_t sub_100558EB0(uint64_t result)
{
  v2 = *(v1 + OBJC_IVAR____TtC8AppStore26SearchResultBackgroundView_backgroundGradientColors);
  *(v1 + OBJC_IVAR____TtC8AppStore26SearchResultBackgroundView_backgroundGradientColors) = result;
  if (!result)
  {
    if (!v2)
    {
      return result;
    }

    goto LABEL_6;
  }

  if (!v2 || (v3 = , v4 = sub_1006E21AC(v3, v2), , (v4 & 1) == 0))
  {
LABEL_6:
    sub_100559220();
  }
}

void sub_100558F48(void *a1)
{
  v10.receiver = v1;
  v10.super_class = type metadata accessor for SearchResultBackgroundView();
  objc_msgSendSuper2(&v10, "applyLayoutAttributes:", a1);
  type metadata accessor for SearchCollectionLayoutAttributes();
  v3 = swift_dynamicCastClass();
  if (v3)
  {
    v4 = v3;
    v5 = a1;
    v6 = [v1 layer];
    [v6 setCornerRadius:*(v4 + OBJC_IVAR____TtC8AppStore32SearchCollectionLayoutAttributes_cornerRadius)];

    [v1 setBackgroundColor:*(v4 + OBJC_IVAR____TtC8AppStore32SearchCollectionLayoutAttributes_backgroundColor)];
    v7 = *(v4 + OBJC_IVAR____TtC8AppStore32SearchCollectionLayoutAttributes_borderColor);
    v8 = v7;
    sub_100558DD0(v7);

    sub_100558EB0(v9);
  }
}

void sub_1005590C0(void *a1, uint64_t a2, const char **a3)
{
  v6.receiver = a1;
  v6.super_class = type metadata accessor for SearchResultBackgroundView();
  v4 = *a3;
  v5 = v6.receiver;
  objc_msgSendSuper2(&v6, v4);
  sub_100559118();
  sub_100559220();
}

void sub_100559118()
{
  v1 = [v0 layer];
  v2 = v1;
  v3 = OBJC_IVAR____TtC8AppStore26SearchResultBackgroundView_borderColor;
  v4 = 1.0;
  if (!*&v0[OBJC_IVAR____TtC8AppStore26SearchResultBackgroundView_borderColor])
  {
    v4 = 0.0;
  }

  [v1 setBorderWidth:v4];

  v5 = [v0 layer];
  v6 = *&v0[v3];
  if (v6)
  {
    v7 = [v6 CGColor];
  }

  else
  {
    v7 = 0;
  }

  [v5 setBorderColor:v7];

  v8 = [v0 layer];
  [v8 setNeedsDisplay];
}

char *sub_100559220()
{
  v1 = *&v0[OBJC_IVAR____TtC8AppStore26SearchResultBackgroundView_backgroundGradientColors];
  v2 = &off_10098B000;
  if (!v1)
  {
    v5 = OBJC_IVAR____TtC8AppStore26SearchResultBackgroundView_gradientLayer;
    v6 = *&v0[OBJC_IVAR____TtC8AppStore26SearchResultBackgroundView_gradientLayer];
    if (v6)
    {
      [v6 removeFromSuperlayer];
      v7 = *&v0[v5];
    }

    else
    {
      v7 = 0;
    }

    *&v0[v5] = 0;

    goto LABEL_25;
  }

  v3 = OBJC_IVAR____TtC8AppStore26SearchResultBackgroundView_gradientLayer;
  v4 = *&v0[OBJC_IVAR____TtC8AppStore26SearchResultBackgroundView_gradientLayer];
  if (v4)
  {
  }

  else
  {
    v8 = objc_allocWithZone(CAGradientLayer);

    v9 = [v8 init];
    v10 = [v0 layer];
    [v10 addSublayer:v9];

    v11 = *&v0[v3];
    *&v0[v3] = v9;

    v4 = *&v0[v3];
    if (!v4)
    {
LABEL_19:

      goto LABEL_25;
    }
  }

  v12 = v4;
  v13 = [v0 layer];
  [v13 bounds];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  [v12 setFrame:{v15, v17, v19, v21}];
  v22 = *&v0[v3];
  if (!v22)
  {
    goto LABEL_19;
  }

  if (v1 >> 62)
  {
    v23 = _CocoaArrayWrapper.endIndex.getter();
    if (v23)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v23 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v23)
    {
LABEL_10:
      v35 = v0;
      v38 = _swiftEmptyArrayStorage;
      v24 = v22;
      result = sub_100143FA4(0, v23 & ~(v23 >> 63), 0);
      if (v23 < 0)
      {
        __break(1u);
        return result;
      }

      v26 = 0;
      v27 = v38;
      do
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v28 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v28 = *(v1 + 8 * v26 + 32);
        }

        v29 = v28;
        v30 = [v28 CGColor];
        type metadata accessor for CGColor(0);
        v37 = v31;

        *&v36 = v30;
        v38 = v27;
        v33 = *(v27 + 2);
        v32 = *(v27 + 3);
        if (v33 >= v32 >> 1)
        {
          sub_100143FA4((v32 > 1), v33 + 1, 1);
          v0 = v35;
          v27 = v38;
        }

        ++v26;
        *(v27 + 2) = v33 + 1;
        sub_100056164(&v36, &v27[4 * v33 + 4]);
      }

      while (v23 != v26);

      v2 = &off_10098B000;
      goto LABEL_24;
    }
  }

  v24 = v22;

LABEL_24:
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v24 setColors:isa];

LABEL_25:
  result = *(v2[353] + v0);
  if (result)
  {
    return [result setNeedsDisplay];
  }

  return result;
}

id sub_1005595E4(void *a1)
{
  *&v1[OBJC_IVAR____TtC8AppStore26SearchResultBackgroundView_borderColor] = 0;
  *&v1[OBJC_IVAR____TtC8AppStore26SearchResultBackgroundView_backgroundGradientColors] = 0;
  *&v1[OBJC_IVAR____TtC8AppStore26SearchResultBackgroundView_gradientLayer] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for SearchResultBackgroundView();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

id sub_100559698()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SearchResultBackgroundView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100559824(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v141 = a3;
  v122 = type metadata accessor for OfferLabelStyle();
  v121 = *(v122 - 8);
  __chkstk_darwin(v122);
  v120 = &v114 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v119 = &v114 - v6;
  v7 = sub_10002849C(&unk_100970E00);
  __chkstk_darwin(v7 - 8);
  v134 = &v114 - v8;
  v133 = type metadata accessor for OfferButtonSubtitlePosition();
  v128 = *(v133 - 8);
  __chkstk_darwin(v133);
  v130 = &v114 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = sub_10002849C(&unk_1009701A0);
  v131 = *(v132 - 8);
  __chkstk_darwin(v132);
  v129 = &v114 - v10;
  v11 = sub_10002849C(&unk_100973230);
  __chkstk_darwin(v11 - 8);
  v127 = &v114 - v12;
  v13 = sub_10002849C(&qword_100975F00);
  __chkstk_darwin(v13 - 8);
  v126 = &v114 - v14;
  v15 = type metadata accessor for AdamId();
  v16 = *(v15 - 8);
  v135 = v15;
  v136 = v16;
  __chkstk_darwin(v15);
  v123 = &v114 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v142 = &v114 - v19;
  v20 = type metadata accessor for AppShowcaseType();
  v137 = *(v20 - 8);
  v138 = v20;
  __chkstk_darwin(v20);
  v124 = &v114 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v125 = &v114 - v23;
  v24 = sub_10002849C(&unk_100973A50);
  __chkstk_darwin(v24 - 8);
  v118 = &v114 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v117 = &v114 - v27;
  v28 = sub_10002849C(&qword_100982460);
  __chkstk_darwin(v28 - 8);
  v30 = &v114 - v29;
  v31 = type metadata accessor for VideoControls();
  __chkstk_darwin(v31 - 8);
  __chkstk_darwin(v32);
  v33 = sub_10002849C(&unk_1009732A0);
  __chkstk_darwin(v33 - 8);
  v35 = &v114 - v34;
  v36 = type metadata accessor for VideoFillMode();
  v37 = *(v36 - 8);
  __chkstk_darwin(v36);
  v39 = &v114 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = type metadata accessor for VideoConfiguration();
  v115 = *(v116 - 8);
  __chkstk_darwin(v116);
  v41 = &v114 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = AppShowcase.lockup.getter();
  v139 = a1;
  v140 = v42;
  if (AppShowcase.video.getter())
  {
    (*(v37 + 104))(v39, enum case for VideoFillMode.scaleAspectFill(_:), v36);
    Video.preview.getter();
    Artwork.size.getter();
    AspectRatio.init(_:_:)();

    v43 = type metadata accessor for AspectRatio();
    (*(*(v43 - 8) + 56))(v35, 0, 1, v43);
    Video.playbackControls.getter();
    Video.autoPlayPlaybackControls.getter();
    Video.canPlayFullScreen.getter();
    Video.allowsAutoPlay.getter();
    Video.looping.getter();
    VideoConfiguration.init(fillMode:aspectRatio:playbackControls:autoPlayPlaybackControls:canPlayFullScreen:allowsAutoPlay:looping:roundedCorners:deviceCornerRadiusFactor:)();
    type metadata accessor for VideoViewManager();
    BaseObjectGraph.inject<A>(_:)();
    Video.playbackId.getter();
    Video.videoUrl.getter();
    v44 = type metadata accessor for URL();
    (*(*(v44 - 8) + 56))(v30, 0, 1, v44);
    v45 = v117;
    Video.templateMediaEvent.getter();
    v46 = v118;
    Video.templateClickEvent.getter();
    type metadata accessor for VideoView();
    sub_10055AC54(&qword_100973190, type metadata accessor for VideoView);
    v47 = dispatch thunk of VideoViewManager.videoView<A>(with:videoUrl:configuration:templateMediaEvent:templateClickEvent:asPartOf:)();
    sub_10002B894(v46, &unk_100973A50);
    sub_10002B894(v45, &unk_100973A50);
    sub_10002B894(v30, &qword_100982460);
    sub_10002B894(&v144, &qword_10096FB90);
    v48 = v143;
    sub_100105720();
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
  v53 = AppShowcase.video.getter();
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
  AppShowcase.type.getter();
  v59 = OBJC_IVAR____TtC8AppStore29AppShowcaseCollectionViewCell_showcaseType;
  swift_beginAccess();
  v61 = v137;
  v60 = v138;
  v62 = *(v137 + 24);
  v62(&v54[v59], v58, v138);
  swift_endAccess();
  v63 = *&v54[OBJC_IVAR____TtC8AppStore29AppShowcaseCollectionViewCell_lockupView];
  v64 = v124;
  (*(v61 + 16))(v124, &v54[v59], v60);
  v65 = OBJC_IVAR____TtC8AppStore21AppShowcaseLockupView_type;
  swift_beginAccess();
  v62(&v63[v65], v64, v60);
  swift_endAccess();
  sub_10029850C();
  v66 = *(v61 + 8);
  v66(v64, v60);
  [v54 setNeedsLayout];
  v66(v58, v60);
  Lockup.title.getter();
  v68 = v67;
  AppShowcase.descriptionText.getter();
  v138 = v69;
  v70 = Lockup.offerDisplayProperties.getter();
  v124 = Lockup.crossLinkTitle.getter();
  v137 = v71;
  v118 = Lockup.crossLinkSubtitle.getter();
  v73 = v72;
  Lockup.adamId.getter();
  v74 = sub_10029BA78(v52);
  v139 = Lockup.buttonAction.getter();
  v75 = *&v63[OBJC_IVAR____TtC8AppStore21AppShowcaseLockupView_titleLabel];
  v125 = v68;
  if (v68)
  {
    v76 = String._bridgeToObjectiveC()();
  }

  else
  {
    v76 = 0;
  }

  v77 = v126;
  [v75 setText:v76];

  v78 = *&v63[OBJC_IVAR____TtC8AppStore21AppShowcaseLockupView_descriptionLabel];
  if (v138)
  {
    v79 = String._bridgeToObjectiveC()();
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
    v81 = type metadata accessor for Wordmark();
    v82 = *(v81 - 8);
    (*(v82 + 104))(v77, v80, v81);
    (*(v82 + 56))(v77, 0, 1, v81);
    sub_100028BB8();
    v83 = static UIColor.primaryText.getter();
    sub_100295658(v77, v83);
  }

  else
  {
    v84 = type metadata accessor for Wordmark();
    (*(*(v84 - 8) + 56))(v77, 1, 1, v84);
    sub_100295658(v77, 0);
  }

  v85 = v135;
  sub_10002B894(v77, &qword_100975F00);
  v86 = sub_10002849C(&unk_100973240);
  v87 = v127;
  (*(*(v86 - 8) + 56))(v127, 1, 1, v86);
  v88 = v128;
  v89 = v133;
  (*(v128 + 104))(v130, enum case for OfferButtonSubtitlePosition.below(_:), v133);
  (*(v88 + 56))(v134, 1, 1, v89);
  sub_10055AC54(&qword_100987130, &type metadata accessor for OfferButtonSubtitlePosition);
  v90 = v129;
  AccessibilityConditional.init(value:axValue:)();
  sub_10064AFA4(v70, v139, 0, v87, v90, v141, 0, 0);
  (*(v131 + 8))(v90, v132);
  sub_10002B894(v87, &unk_100973230);
  if (v137)
  {
    v91 = v85;
    v92 = v126;
    if (v126)
    {
      v93 = v123;
      (*(v136 + 16))(v123, v142, v91);
      sub_10002849C(&unk_100973AF0);
      type metadata accessor for BaseObjectGraph();
      inject<A, B>(_:from:)();
      v94 = v144;
      type metadata accessor for CrossLinkPresenter();
      swift_allocObject();
      v95 = v63;
      v96 = v93;
      v97 = &StringUserDefaultsDebugSetting;
      v98 = CrossLinkPresenter.init(adamId:title:subtitle:includeBetaApps:view:appStateController:)(v96, v124, v137, v118, v92, 0, v63, &off_1008BBFC8, v94, *(&v94 + 1));
      v99 = OBJC_IVAR____TtC8AppStore21AppShowcaseLockupView_crossLinkPresenter;
      swift_beginAccess();
      *&v95[v99] = v98;

      goto LABEL_24;
    }
  }

  else
  {

    v91 = v85;
  }

  v100 = OBJC_IVAR____TtC8AppStore21AppShowcaseLockupView_crossLinkPresenter;
  swift_beginAccess();
  *&v63[v100] = 0;

  sub_10029B160(0, 0);
  v97 = &StringUserDefaultsDebugSetting;
LABEL_24:
  *&v63[OBJC_IVAR____TtC8AppStore21AppShowcaseLockupView_offerDisplayProperties] = v70;

  if (v70)
  {

    v101 = v119;
    OfferDisplayProperties.offerLabelStyle.getter();
    v102 = v121;
    v103 = v120;
    v104 = v122;
    (*(v121 + 104))(v120, enum case for OfferLabelStyle.none(_:), v122);
    sub_10055AC54(&unk_100987B00, &type metadata accessor for OfferLabelStyle);
    v105 = dispatch thunk of static Equatable.== infix(_:_:)();
    v106 = *(v102 + 8);
    v106(v103, v104);
    v106(v101, v104);
    if ((v105 & 1) == 0)
    {

      OfferDisplayProperties.adamId.getter();
      sub_10002849C(&unk_100973AF0);
      type metadata accessor for BaseObjectGraph();
      inject<A, B>(_:from:)();
      type metadata accessor for ASKBagContract();
      inject<A, B>(_:from:)();
      ASKBagContract.arePreordersCancellable.getter();

      v108 = type metadata accessor for OfferLabelPresenter();
      swift_allocObject();
      v109 = OfferLabelPresenter.init(offerDisplayProperties:adamId:appStateController:arePreordersCancellable:)();
      *(&v145 + 1) = v108;
      *&v144 = v109;
      v110 = OBJC_IVAR____TtC8AppStore21AppShowcaseLockupView_offerLabelPresenter;
      swift_beginAccess();

      sub_100283DDC(&v144, &v63[v110]);
      swift_endAccess();
      v111 = objc_opt_self();
      v112 = [v111 areAnimationsEnabled];
      [v111 setAnimationsEnabled:0];
      sub_10055AC54(&qword_10098BB88, type metadata accessor for AppShowcaseLockupView);
      swift_unknownObjectRetain();
      OfferLabelPresenter.view.setter();
      [v63 layoutIfNeeded];
      [v111 setAnimationsEnabled:v112];

      goto LABEL_29;
    }
  }

  v144 = 0u;
  v145 = 0u;
  v107 = OBJC_IVAR____TtC8AppStore21AppShowcaseLockupView_offerLabelPresenter;
  swift_beginAccess();
  sub_100283DDC(&v144, &v63[v107]);
  swift_endAccess();
  sub_10006C904(0, 0);
  [v63 v97[41].base_meths];

LABEL_29:

  (*(v136 + 8))(v142, v91);
  [v143 v97[41].base_meths];
}

uint64_t sub_10055AC54(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10055AC9C(uint64_t a1, void *a2, uint64_t a3)
{
  v67 = a3;
  v62 = a2;
  v60 = type metadata accessor for AspectRatio();
  v3 = *(v60 - 8);
  __chkstk_darwin(v60);
  v66 = &v40[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v54 = type metadata accessor for Artwork.Style();
  v5 = *(v54 - 8);
  __chkstk_darwin(v54);
  v53 = &v40[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v52 = &v40[-v8];
  __chkstk_darwin(v9);
  v51 = &v40[-v10];
  v11 = type metadata accessor for AppShowcaseType();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v57 = &v40[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v14);
  v16 = &v40[-v15];
  __chkstk_darwin(v17);
  v56 = &v40[-v18];
  __chkstk_darwin(v19);
  v49 = &v40[-v20];
  v21 = Shelf.items.getter();
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

    sub_100005A38(v71, v70);
    sub_10002C0AC(v70, v68);
    sub_10002849C(&qword_100973D50);
    type metadata accessor for AppShowcase();
    if ((swift_dynamicCast() & 1) == 0)
    {
      v69 = 0;
    }

    result = sub_100007000(v70);
    if (v69)
    {
      v25 = v62;
      [v62 pageMarginInsets];
      [v25 pageMarginInsets];
      AppShowcase.lockup.getter();
      v26 = Lockup.icon.getter();

      if (v26)
      {
        v27 = v49;
        AppShowcase.type.getter();
        v28 = v56;
        (*v48)(v56, v27, v11);
        v29 = (*v65)(v28, v11);
        v63 = v24;
        if (v29 != v64 && v29 != v47 && v29 != v41)
        {
          (*v55)(v56, v11);
        }

        v30 = v52;
        Artwork.style.getter();
        v31 = v53;
        v32 = v54;
        (*v45)(v53, v46, v54);
        v33 = v51;
        Artwork.Style.orIfUnspecified(_:)();
        v34 = *v44;
        (*v44)(v31, v32);
        v34(v30, v32);
        Artwork.Style.iconWidth(fromHeight:)();
        Artwork.config(_:mode:prefersLayeredImage:)();
        ArtworkLoader.prefetchArtwork(using:)();

        v34(v33, v32);
        v16 = v50;
        v24 = v63;
      }

      if (!AppShowcase.video.getter())
      {

        goto LABEL_3;
      }

      Video.preview.getter();

      Artwork.size.getter();
      Artwork.size.getter();
      AspectRatio.init(_:_:)();
      AppShowcase.type.getter();
      v35 = AspectRatio.isLandscape.getter();
      v36 = v57;
      (*v43)(v57, v16, v11);
      v37 = (*v65)(v36, v11);
      if (v37 == v64)
      {
        if (v35)
        {
          goto LABEL_30;
        }

        if (qword_10096D0A0 == -1)
        {
LABEL_29:
          sub_1000056A8(v60, qword_100974548);
          AspectRatio.width(fromHeight:)();
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
        if (qword_10096D0A0 == -1)
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
      AspectRatio.height(fromWidth:)();
      Artwork.config(_:mode:prefersLayeredImage:)();
      ArtworkLoader.prefetchArtwork(using:)();

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

    sub_10002C0AC(v58 + 40 * v24++, &v73);
    goto LABEL_9;
  }

  __break(1u);
LABEL_35:
  __break(1u);
  return result;
}

uint64_t sub_10055B618(uint64_t a1)
{
  v2 = type metadata accessor for ProductDescriptionLayout.Metrics();
  __chkstk_darwin(v2 - 8);
  v4 = &v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ProductDescriptionLayout();
  v67 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PageGrid();
  v65 = *(v8 - 8);
  v66 = v8;
  __chkstk_darwin(v8);
  v64 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10002849C(&qword_10097C3F8);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v51 - v12;
  type metadata accessor for ProductDescription();
  sub_10055BE48(&unk_10097C380, &type metadata accessor for ProductDescription);
  result = ItemLayoutContext.typedModel<A>(as:)();
  v15 = aBlock[0];
  if (aBlock[0])
  {
    v63 = v5;
    sub_100135E58();
    v68 = a1;
    ItemLayoutContext.typedState<A>(as:)();
    StateLens<A>.currentValue.getter();
    v16 = aBlock[0];
    v61 = v10;
    v62 = v7;
    v59 = v4;
    v60 = v11;
    v58 = v13;
    v55 = v15;
    if (LOBYTE(aBlock[0]) == 2)
    {
      ProductDescription.paragraph.getter();
      v16 = Paragraph.isCollapsed.getter();
    }

    v57 = ProductDescription.paragraph.getter();
    if (v16)
    {
      v17 = Paragraph.collapsedText.getter();
      v54 = 3;
    }

    else
    {
      v17 = Paragraph.text.getter();
      v54 = 0;
    }

    v18 = [sub_100079F24() traitCollection];
    swift_unknownObjectRelease();
    v19 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v17];
    v20 = [v17 length];
    v21 = swift_allocObject();
    *(v21 + 16) = 0;
    *(v21 + 24) = v18;
    *(v21 + 32) = v19;
    *(v21 + 40) = 1;
    v22 = swift_allocObject();
    *(v22 + 16) = sub_10010279C;
    *(v22 + 24) = v21;
    v78 = sub_1001027AC;
    v79 = v22;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1006606C4;
    v77 = &unk_1008C85C8;
    v23 = _Block_copy(aBlock);
    v24 = v18;
    v25 = v19;

    v56 = v17;
    [v17 enumerateAttributesInRange:0 options:v20 usingBlock:{0x100000, v23}];

    _Block_release(v23);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }

    else
    {
      v27 = v25;
      v28 = ProductDescription.tags.getter();
      v29 = ProductDescription.numberOfTagRowsStandard.getter();
      v30 = ProductDescription.numberOfTagRowsAX.getter();
      if (ProductDescription.developerAction.getter())
      {
        v31 = Action.title.getter();
        v52 = v32;
        v53 = v31;
      }

      else
      {
        v52 = 0;
        v53 = 0;
      }

      v33 = sub_100079F24();
      swift_getKeyPath();
      v34 = v64;
      ItemLayoutContext.subscript.getter();

      PageGrid.componentMeasuringSize(spanning:)();
      (*(v65 + 8))(v34, v66);
      v35 = swift_allocObject();
      v36 = v54;
      *(v35 + 16) = v27;
      *(v35 + 24) = v36;
      v37 = type metadata accessor for LayoutViewPlaceholder();
      swift_allocObject();
      v38 = v27;
      v39 = LayoutViewPlaceholder.init(measureWith:)();
      v77 = v37;
      v78 = &protocol witness table for LayoutViewPlaceholder;
      aBlock[0] = v39;
      v40 = swift_allocObject();
      v40[2] = v28;
      v40[3] = v29;
      v40[4] = v30;
      v40[5] = v33;
      swift_allocObject();

      swift_unknownObjectRetain();
      v41 = LayoutViewPlaceholder.init(measureWith:)();
      v75[3] = v37;
      v75[4] = &protocol witness table for LayoutViewPlaceholder;
      v75[0] = v41;
      v42 = type metadata accessor for DeveloperLinkView();
      v43 = swift_allocObject();
      v44 = v52;
      v45 = v53;
      v43[2] = v42;
      v43[3] = v45;
      v43[4] = v44;
      swift_allocObject();
      v46 = LayoutViewPlaceholder.init(measureWith:)();
      v74[3] = v37;
      v74[4] = &protocol witness table for LayoutViewPlaceholder;
      v74[0] = v46;
      type metadata accessor for RibbonBarItem();
      LOBYTE(v42) = Array.isNotEmpty.getter();

      if (v42)
      {
        sub_10002C0AC(v75, v72);
      }

      else
      {
        v73 = 0;
        memset(v72, 0, sizeof(v72));
      }

      v47 = v62;
      v48 = v60;
      v49 = v58;
      sub_100129F58(v59);
      sub_10002C0AC(aBlock, &v71);
      sub_10002C0AC(v75, &v70);
      sub_10002C0AC(v74, &v69);
      ProductDescriptionLayout.init(metrics:bodyText:tagRibbon:developerLink:)();
      sub_10055BE48(&qword_10097C400, &type metadata accessor for ProductDescriptionLayout);
      v50 = v63;
      dispatch thunk of Measurable.measurements(fitting:in:)();

      swift_unknownObjectRelease();

      (*(v67 + 8))(v47, v50);
      sub_10005FD2C(v72);
      (*(v48 + 8))(v49, v61);
      sub_100007000(v74);
      sub_100007000(v75);
      return sub_100007000(aBlock);
    }
  }

  return result;
}

uint64_t sub_10055BE48(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t CrossLinkLockupLayout.Metrics.init(artworkSize:artworkMargin:subtitleSpace:numberOfLines:offerButtonSize:offerButtonMargin:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X8>, double a6@<D0>, double a7@<D1>, double a8@<D2>, double a9@<D3>)
{
  *a5 = a6;
  *(a5 + 8) = a7;
  sub_100005A38(a1, a5 + 16);
  sub_100005A38(a2, a5 + 56);
  *(a5 + 96) = a3;
  *(a5 + 104) = a8;
  *(a5 + 112) = a9;

  return sub_100005A38(a4, a5 + 120);
}

uint64_t CrossLinkLockupLayout.init(metrics:artworkView:lockupView:crossLinkTitleText:crossLinkSubtitleText:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, uint64_t a6@<X8>)
{
  sub_100141008(a1, a6 + 160);
  sub_10002A400(a2, a2[3]);
  LayoutView.withMeasurements(representing:)();
  sub_100141064(a1);
  sub_100005A38(a3, a6 + 40);
  sub_100005A38(a4, a6 + 80);
  sub_100005A38(a5, a6 + 120);

  return sub_100007000(a2);
}

uint64_t CrossLinkLockupLayout.placeChildren(relativeTo:in:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v11 = [a1 traitCollection];
  v12 = UITraitCollection.prefersAccessibilityLayouts.getter();

  if (v12)
  {

    return sub_10055C118(a2, a3, a4, a5, a6);
  }

  else
  {

    return sub_10055C65C(a2, a3, a4, a5, a6);
  }
}

__n128 CrossLinkLockupLayout.Metrics.init(byCopying:)@<Q0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v2 = *(a1 + 112);
  a2[6] = *(a1 + 96);
  a2[7] = v2;
  v3 = *(a1 + 144);
  a2[8] = *(a1 + 128);
  a2[9] = v3;
  v4 = *(a1 + 48);
  a2[2] = *(a1 + 32);
  a2[3] = v4;
  v5 = *(a1 + 80);
  a2[4] = *(a1 + 64);
  a2[5] = v5;
  result = *a1;
  v7 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v7;
  return result;
}

uint64_t sub_10055C118@<X0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  v28 = a1;
  v27 = type metadata accessor for LayoutRect();
  v26 = *(v27 - 8);
  __chkstk_darwin(v27);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for AppStore.CenteredThreeLineTextLayout();
  v24 = *(v25 - 8);
  __chkstk_darwin(v25);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for FloatingPointRoundingRule();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32.origin.x = a2;
  v32.origin.y = a3;
  v32.size.width = a4;
  v32.size.height = a5;
  MinY = CGRectGetMinY(v32);
  sub_10002A400(v5, *(v5 + 3));
  if ((dispatch thunk of LayoutView.isHidden.getter() & 1) == 0)
  {
    v33.origin.x = a2;
    v33.origin.y = a3;
    v33.size.width = a4;
    v33.size.height = a5;
    MinX = CGRectGetMinX(v33);
    v20 = v5[20];
    v21 = v5[21];
    sub_10002A400(v5, *(v5 + 3));
    CGRect.withLayoutDirection(in:relativeTo:)();
    dispatch thunk of LayoutView.frame.setter();
    v34.origin.x = MinX;
    v34.origin.y = MinY;
    v34.size.width = v20;
    v34.size.height = v21;
    CGRectGetMaxY(v34);
    sub_10002A400(v5 + 22, *(v5 + 25));
    j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
    AnyDimension.value(in:rounded:)();
    (*(v15 + 8))(v17, v14);
  }

  v35.origin.x = a2;
  v35.origin.y = a3;
  v35.size.width = a4;
  v35.size.height = a5;
  CGRectGetMinX(v35);
  v36.origin.x = a2;
  v36.origin.y = a3;
  v36.size.width = a4;
  v36.size.height = a5;
  CGRectGetWidth(v36);
  v37.origin.x = a2;
  v37.origin.y = a3;
  v37.size.width = a4;
  v37.size.height = a5;
  CGRectGetMaxY(v37);
  sub_10002A400(v5 + 5, *(v5 + 8));
  CGRect.withLayoutDirection(in:relativeTo:)();
  dispatch thunk of LayoutView.frame.setter();
  v38.origin.x = a2;
  v38.origin.y = a3;
  v38.size.width = a4;
  v38.size.height = a5;
  CGRectGetMaxY(v38);
  sub_10002A400(v5 + 35, *(v5 + 38));
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  AnyDimension.value(in:rounded:)();
  (*(v15 + 8))(v17, v14);
  v39.origin.x = a2;
  v39.origin.y = a3;
  v39.size.width = a4;
  v39.size.height = a5;
  CGRectGetMinX(v39);
  v40.origin.x = a2;
  v40.origin.y = a3;
  v40.size.width = a4;
  v40.size.height = a5;
  CGRectGetWidth(v40);
  CGRect.withLayoutDirection(in:relativeTo:)();
  sub_10002C0AC((v5 + 10), v31);
  sub_10002C0AC((v5 + 15), v30);
  sub_10002C0AC((v5 + 27), v29);
  AppStore.CenteredThreeLineTextLayout.init(primaryText:secondaryText:secondarySpace:numberOfLines:)();
  AppStore.CenteredThreeLineTextLayout.placeChildren(relativeTo:in:)();
  (*(v26 + 8))(v11, v27);
  LayoutRect.init(representing:)();
  return (*(v24 + 8))(v13, v25);
}

uint64_t sub_10055C65C@<X0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  v29 = a1;
  v28 = type metadata accessor for LayoutRect();
  v27 = *(v28 - 8);
  __chkstk_darwin(v28);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for AppStore.CenteredThreeLineTextLayout();
  v25 = *(v26 - 8);
  __chkstk_darwin(v26);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for FloatingPointRoundingRule();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33.origin.x = a2;
  v33.origin.y = a3;
  v33.size.width = a4;
  v33.size.height = a5;
  CGRectGetMinX(v33);
  sub_10002A400(v5, *(v5 + 24));
  if ((dispatch thunk of LayoutView.isHidden.getter() & 1) == 0)
  {
    v34.origin.x = a2;
    v34.origin.y = a3;
    v34.size.width = a4;
    v34.size.height = a5;
    MinX = CGRectGetMinX(v34);
    v35.origin.x = a2;
    v35.origin.y = a3;
    v35.size.width = a4;
    v35.size.height = a5;
    MidY = CGRectGetMidY(v35);
    v21 = *(v5 + 160);
    v20 = *(v5 + 168);
    v22 = floor(MidY + v20 * -0.5);
    sub_10002A400(v5, *(v5 + 24));
    CGRect.withLayoutDirection(in:relativeTo:)();
    dispatch thunk of LayoutView.frame.setter();
    v36.origin.x = MinX;
    v36.origin.y = v22;
    v36.size.width = v21;
    v36.size.height = v20;
    CGRectGetMaxX(v36);
    sub_10002A400((v5 + 176), *(v5 + 200));
    j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
    AnyDimension.value(in:rounded:)();
    (*(v15 + 8))(v17, v14);
  }

  v37.origin.x = a2;
  v37.origin.y = a3;
  v37.size.width = a4;
  v37.size.height = a5;
  CGRectGetMaxX(v37);
  v38.origin.x = a2;
  v38.origin.y = a3;
  v38.size.width = a4;
  v38.size.height = a5;
  CGRectGetMinY(v38);
  v39.origin.x = a2;
  v39.origin.y = a3;
  v39.size.width = a4;
  v39.size.height = a5;
  CGRectGetHeight(v39);
  sub_10002A400((v5 + 40), *(v5 + 64));
  CGRect.withLayoutDirection(in:relativeTo:)();
  dispatch thunk of LayoutView.frame.setter();
  sub_10002A400((v5 + 280), *(v5 + 304));
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  AnyDimension.value(in:rounded:)();
  (*(v15 + 8))(v17, v14);
  v40.origin.x = a2;
  v40.origin.y = a3;
  v40.size.width = a4;
  v40.size.height = a5;
  CGRectGetMinY(v40);
  v41.origin.x = a2;
  v41.origin.y = a3;
  v41.size.width = a4;
  v41.size.height = a5;
  CGRectGetHeight(v41);
  CGRect.withLayoutDirection(in:relativeTo:)();
  sub_10002C0AC(v5 + 80, v32);
  sub_10002C0AC(v5 + 120, v31);
  sub_10002C0AC(v5 + 216, v30);
  AppStore.CenteredThreeLineTextLayout.init(primaryText:secondaryText:secondarySpace:numberOfLines:)();
  AppStore.CenteredThreeLineTextLayout.placeChildren(relativeTo:in:)();
  (*(v27 + 8))(v11, v28);
  LayoutRect.init(representing:)();
  return (*(v25 + 8))(v13, v26);
}

uint64_t sub_10055CBAC(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v10 = sub_10055CE24();
  v11.n128_f64[0] = a4;
  v12.n128_f64[0] = a5;

  return EstimatedMeasurable<>.measurements(fitting:in:)(a1, a2, v10, a3, v11, v12);
}

unint64_t sub_10055CC1C()
{
  result = qword_10098BB98;
  if (!qword_10098BB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10098BB98);
  }

  return result;
}

uint64_t sub_10055CC78(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 320))
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

uint64_t sub_10055CCC0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 312) = 0;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 320) = 1;
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

    *(result + 320) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10055CD64(uint64_t a1, int a2)
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

uint64_t sub_10055CDAC(uint64_t result, int a2, int a3)
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

unint64_t sub_10055CE24()
{
  result = qword_10098BBA0;
  if (!qword_10098BBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10098BBA0);
  }

  return result;
}

uint64_t sub_10055CED8(uint64_t a1, uint64_t *a2, void **a3)
{
  v5 = type metadata accessor for FontSource();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = (&v15[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for StaticDimension();
  sub_100005644(v9, a2);
  sub_1000056A8(v9, a2);
  v10 = *a3;
  *v8 = v10;
  (*(v6 + 104))(v8, enum case for FontSource.textStyle(_:), v5);
  v15[3] = v5;
  v15[4] = &protocol witness table for FontSource;
  v11 = sub_1000056E0(v15);
  (*(v6 + 16))(v11, v8, v5);
  v12 = v10;
  StaticDimension.init(_:scaledLike:)();
  return (*(v6 + 8))(v8, v5);
}

char *sub_10055D048(double a1, double a2, double a3, double a4)
{
  v9 = sub_10002849C(&qword_100972ED0);
  __chkstk_darwin(v9 - 8);
  v11 = (&v66 - v10);
  v12 = type metadata accessor for HeroCarouselItemOverlay.DisplayOptions.TextColorOverrides();
  __chkstk_darwin(v12 - 8);
  v13 = type metadata accessor for HeroCarouselItemOverlay.DisplayOptions.Placement();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v66 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for HeroCarouselItemOverlay.DisplayOptions.TextAlignment();
  v18 = __chkstk_darwin(v17);
  (*(v20 + 104))(&v66 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for HeroCarouselItemOverlay.DisplayOptions.TextAlignment.center(_:), v18);
  (*(v14 + 104))(v16, enum case for HeroCarouselItemOverlay.DisplayOptions.Placement.leading(_:), v13);
  HeroCarouselItemOverlay.DisplayOptions.TextColorOverrides.init()();
  HeroCarouselItemOverlay.DisplayOptions.init(textAlignment:horizontalPlacement:textColorOverrides:isOverDarkContent:)();
  v21 = OBJC_IVAR____TtC8AppStore23CarouselItemTextOverlay_badgeLabel;
  type metadata accessor for DynamicTypeLabel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *&v4[v21] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v23 = OBJC_IVAR____TtC8AppStore23CarouselItemTextOverlay_titleLabel;
  *&v4[v23] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v24 = OBJC_IVAR____TtC8AppStore23CarouselItemTextOverlay_callToActionLabel;
  *&v4[v24] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v25 = OBJC_IVAR____TtC8AppStore23CarouselItemTextOverlay_tapGestureRecognizer;
  *&v4[v25] = [objc_allocWithZone(UITapGestureRecognizer) init];
  v26 = &v4[OBJC_IVAR____TtC8AppStore23CarouselItemTextOverlay_selectionHandler];
  v27 = type metadata accessor for CarouselItemTextOverlay();
  *v26 = 0;
  *(v26 + 1) = 0;
  v70.receiver = v4;
  v70.super_class = v27;
  v28 = objc_msgSendSuper2(&v70, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v32 = v28;
  [v32 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v32 setOverrideUserInterfaceStyle:2];
  [v32 setMaximumContentSizeCategory:UIContentSizeCategoryExtraExtraExtraLarge];
  v33 = OBJC_IVAR____TtC8AppStore23CarouselItemTextOverlay_badgeLabel;
  v34 = qword_10096E3D0;
  v35 = *&v32[OBJC_IVAR____TtC8AppStore23CarouselItemTextOverlay_badgeLabel];
  if (v34 != -1)
  {
    swift_once();
  }

  v36 = type metadata accessor for FontUseCase();
  v37 = sub_1000056A8(v36, qword_1009D1AF0);
  v38 = *(v36 - 8);
  v39 = *(v38 + 16);
  v39(v11, v37, v36);
  v68 = *(v38 + 56);
  v68(v11, 0, 1, v36);
  dispatch thunk of DynamicTypeLabel.fontUseCase.setter();

  [*&v32[v33] setNumberOfLines:1];
  v40 = *&v32[v33];
  v41 = objc_opt_self();
  v42 = v40;
  v67 = v41;
  v43 = [v41 secondaryLabelColor];
  v44 = v33;
  v45 = v43;
  [v42 setTextColor:v43];

  v69 = v44;
  v46 = [*&v32[v44] layer];
  [v46 setCompositingFilter:kCAFilterPlusL];

  v47 = OBJC_IVAR____TtC8AppStore23CarouselItemTextOverlay_titleLabel;
  v48 = qword_10096E3E0;
  v49 = *&v32[OBJC_IVAR____TtC8AppStore23CarouselItemTextOverlay_titleLabel];
  if (v48 != -1)
  {
    swift_once();
  }

  v50 = sub_1000056A8(v36, qword_1009D1B20);
  v39(v11, v50, v36);
  v51 = v68;
  v68(v11, 0, 1, v36);
  dispatch thunk of DynamicTypeLabel.fontUseCase.setter();

  [*&v32[v47] setNumberOfLines:2];
  v52 = *&v32[v47];
  v66 = v47;
  v53 = v67;
  v54 = [v67 labelColor];
  [v52 setTextColor:v54];

  v55 = OBJC_IVAR____TtC8AppStore23CarouselItemTextOverlay_callToActionLabel;
  v56 = *&v32[OBJC_IVAR____TtC8AppStore23CarouselItemTextOverlay_callToActionLabel];
  *v11 = UIFontTextStyleFootnote;
  v11[1] = UIFontWeightBold;
  (*(v38 + 104))(v11, enum case for FontUseCase.preferredFontDerivative(_:), v36);
  v51(v11, 0, 1, v36);
  v57 = v56;
  v58 = UIFontTextStyleFootnote;
  dispatch thunk of DynamicTypeLabel.fontUseCase.setter();

  [*&v32[v55] setNumberOfLines:1];
  v59 = *&v32[v55];
  v60 = [v53 labelColor];
  [v59 setTextColor:v60];

  v61 = OBJC_IVAR____TtC8AppStore23CarouselItemTextOverlay_tapGestureRecognizer;
  [*&v32[OBJC_IVAR____TtC8AppStore23CarouselItemTextOverlay_tapGestureRecognizer] setEnabled:0];
  v62 = *&v32[v61];
  v63 = v32;
  [v62 addTarget:v63 action:"handleSelection:"];
  v64 = *&v32[v61];
  [v64 setDelegate:v63];

  [v63 addGestureRecognizer:*&v32[v61]];
  [v63 addSubview:*&v32[v69]];
  [v63 addSubview:*&v32[v66]];
  [v63 addSubview:*&v32[v55]];
  sub_10055E5BC();

  return v63;
}

uint64_t sub_10055D990@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v56 = a1;
  ObjectType = swift_getObjectType();
  v57 = type metadata accessor for VerticalStack();
  v59 = *(v57 - 8);
  __chkstk_darwin(v57);
  v4 = &v51[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v53 = &v51[-v6];
  __chkstk_darwin(v7);
  v54 = &v51[-v8];
  __chkstk_darwin(v9);
  v55 = &v51[-v10];
  v11 = type metadata accessor for HeroCarouselItemOverlay.DisplayOptions.TextAlignment();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v51[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v15);
  v17 = &v51[-v16];
  v18 = type metadata accessor for HeroCarouselItemOverlay.DisplayOptions();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v51[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = OBJC_IVAR____TtC8AppStore23CarouselItemTextOverlay_displayOptions;
  swift_beginAccess();
  (*(v19 + 16))(v21, &v2[v22], v18);
  HeroCarouselItemOverlay.DisplayOptions.textAlignment.getter();
  (*(v19 + 8))(v21, v18);
  (*(v12 + 104))(v14, enum case for HeroCarouselItemOverlay.DisplayOptions.TextAlignment.center(_:), v11);
  sub_10055F0E4();
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v60[0] == v63 && v60[1] == v64)
  {
    v52 = 1;
  }

  else
  {
    v52 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v23 = *(v12 + 8);
  v23(v14, v11);
  v23(v17, v11);

  VerticalStack.init(with:)();
  v24 = *&v2[OBJC_IVAR____TtC8AppStore23CarouselItemTextOverlay_badgeLabel];
  v25 = type metadata accessor for DynamicTypeLabel();
  v61 = v25;
  v62 = &protocol witness table for UILabel;
  v60[0] = v24;
  v26 = swift_allocObject();
  v27 = v4;
  v28 = ObjectType;
  *(v26 + 16) = v2;
  *(v26 + 24) = v28;
  v29 = v24;
  v30 = v2;
  v31 = v53;
  VerticalStack.adding(_:with:)();

  v32 = *(v59 + 8);
  v33 = v57;
  v32(v27, v57);
  sub_100007000(v60);
  v34 = *&v30[OBJC_IVAR____TtC8AppStore23CarouselItemTextOverlay_titleLabel];
  v61 = v25;
  v62 = &protocol witness table for UILabel;
  v60[0] = v34;
  v35 = swift_allocObject();
  *(v35 + 16) = v30;
  *(v35 + 24) = v28;
  v36 = v30;
  v37 = v34;
  v38 = v54;
  VerticalStack.adding(_:with:)();

  v32(v31, v33);
  sub_100007000(v60);
  v39 = *&v36[OBJC_IVAR____TtC8AppStore23CarouselItemTextOverlay_callToActionLabel];
  v61 = v25;
  v62 = &protocol witness table for UILabel;
  v60[0] = v39;
  v40 = swift_allocObject();
  v41 = ObjectType;
  *(v40 + 16) = v36;
  *(v40 + 24) = v41;
  v42 = v36;
  v43 = v39;
  v44 = v55;
  VerticalStack.adding(_:with:)();

  v32(v38, v33);
  sub_100007000(v60);
  if (v52)
  {
    v61 = v33;
    v62 = &protocol witness table for VerticalStack;
    v45 = sub_1000056E0(v60);
    (*(v59 + 16))(v45, v44, v33);
    static Center.Axis.horizontal.getter();
    v46 = type metadata accessor for Center();
    v47 = v56;
    v56[3] = v46;
    v47[4] = &protocol witness table for Center;
    sub_1000056E0(v47);
    Center.init(_:filling:)();
    return (v32)(v44, v33);
  }

  else
  {
    v49 = v56;
    v56[3] = v33;
    v49[4] = &protocol witness table for VerticalStack;
    v50 = sub_1000056E0(v49);
    return (*(v59 + 32))(v50, v44, v33);
  }
}

uint64_t sub_10055DFA4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v22 = a6;
  v23 = a5;
  v8 = type metadata accessor for HeroCarouselItemOverlay.DisplayOptions.TextAlignment();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for HeroCarouselItemOverlay.DisplayOptions();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtC8AppStore23CarouselItemTextOverlay_displayOptions;
  swift_beginAccess();
  (*(v13 + 16))(v15, a2 + v16, v12);
  HeroCarouselItemOverlay.DisplayOptions.textAlignment.getter();
  (*(v13 + 8))(v15, v12);
  HeroCarouselItemOverlay.DisplayOptions.TextAlignment.verticalStackAlignment.getter();
  (*(v9 + 8))(v11, v8);
  VerticalStack.Properties.alignment.setter();
  v17 = static VerticalStack.Edge.top.getter();
  VerticalStack.Edge.init(rawValue:)();
  VerticalStack.Edge.init(rawValue:)();
  if (VerticalStack.Edge.init(rawValue:)() != v17)
  {
    VerticalStack.Edge.init(rawValue:)();
  }

  VerticalStack.Properties.edgesAlignedToBaseline.setter();
  if (*a4 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for StaticDimension();
  v19 = sub_1000056A8(v18, v23);
  v24[3] = v18;
  v24[4] = &protocol witness table for StaticDimension;
  v20 = sub_1000056E0(v24);
  (*(*(v18 - 8) + 16))(v20, v19, v18);
  return VerticalStack.Properties.topSpacing.setter();
}

uint64_t sub_10055E23C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for HeroCarouselItemOverlay.DisplayOptions.TextAlignment();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for HeroCarouselItemOverlay.DisplayOptions();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC8AppStore23CarouselItemTextOverlay_displayOptions;
  swift_beginAccess();
  (*(v8 + 16))(v10, a2 + v11, v7);
  HeroCarouselItemOverlay.DisplayOptions.textAlignment.getter();
  (*(v8 + 8))(v10, v7);
  HeroCarouselItemOverlay.DisplayOptions.TextAlignment.verticalStackAlignment.getter();
  (*(v4 + 8))(v6, v3);
  VerticalStack.Properties.alignment.setter();
  sub_10002849C(&qword_10097B040);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007B1890;
  v13 = static VerticalStack.Edge.top.getter();
  *(inited + 32) = v13;
  v14 = static VerticalStack.Edge.bottom.getter();
  *(inited + 40) = v14;
  VerticalStack.Edge.init(rawValue:)();
  VerticalStack.Edge.init(rawValue:)();
  if (VerticalStack.Edge.init(rawValue:)() != v13)
  {
    VerticalStack.Edge.init(rawValue:)();
  }

  VerticalStack.Edge.init(rawValue:)();
  if (VerticalStack.Edge.init(rawValue:)() != v14)
  {
    VerticalStack.Edge.init(rawValue:)();
  }

  VerticalStack.Properties.edgesAlignedToBaseline.setter();
  if (qword_10096E948 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for StaticDimension();
  v16 = sub_1000056A8(v15, qword_10098BBE0);
  v23 = v15;
  v24 = &protocol witness table for StaticDimension;
  v17 = sub_1000056E0(v22);
  v18 = *(*(v15 - 8) + 16);
  v18(v17, v16, v15);
  VerticalStack.Properties.topSpacing.setter();
  if (qword_10096E950 != -1)
  {
    swift_once();
  }

  v19 = sub_1000056A8(v15, qword_10098BBF8);
  v23 = v15;
  v24 = &protocol witness table for StaticDimension;
  v20 = sub_1000056E0(v22);
  v18(v20, v19, v15);
  return VerticalStack.Properties.bottomSpacing.setter();
}

id sub_10055E5BC()
{
  v1 = v0;
  v47 = type metadata accessor for HeroCarouselItemOverlay.DisplayOptions.TextColorOverrides();
  v55 = *(v47 - 8);
  __chkstk_darwin(v47);
  v50 = &v45 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v48 = &v45 - v4;
  __chkstk_darwin(v5);
  v45 = &v45 - v6;
  v7 = type metadata accessor for HeroCarouselItemOverlay.DisplayOptions.TextAlignment();
  v53 = *(v7 - 8);
  v54 = v7;
  __chkstk_darwin(v7);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for HeroCarouselItemOverlay.DisplayOptions();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v49 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v46 = &v45 - v14;
  __chkstk_darwin(v15);
  v52 = &v45 - v16;
  __chkstk_darwin(v17);
  v19 = &v45 - v18;
  v20 = OBJC_IVAR____TtC8AppStore23CarouselItemTextOverlay_displayOptions;
  swift_beginAccess();
  v21 = *(v11 + 16);
  (v21)(v19, &v0[v20], v10);
  HeroCarouselItemOverlay.DisplayOptions.textAlignment.getter();
  v22 = *(v11 + 8);
  v22(v19, v10);
  v23 = [v0 traitCollection];
  v24 = HeroCarouselItemOverlay.DisplayOptions.TextAlignment.textAlignment(with:)();

  v53[1](v9, v54);
  v25 = *&v1[OBJC_IVAR____TtC8AppStore23CarouselItemTextOverlay_badgeLabel];
  v51 = v24;
  [v25 setTextAlignment:v24];
  v53 = v21;
  v54 = v20;
  v26 = &v1[v20];
  v27 = v1;
  v28 = v52;
  (v21)(v52, v26, v10);
  v29 = v45;
  HeroCarouselItemOverlay.DisplayOptions.textColorOverrides.getter();
  v30 = v28;
  v31 = v10;
  v52 = (v11 + 8);
  v22(v30, v10);
  v32 = HeroCarouselItemOverlay.DisplayOptions.TextColorOverrides.badgeColor.getter();
  v33 = *(v55 + 8);
  v34 = v47;
  v55 += 8;
  v33(v29, v47);
  if (!v32)
  {
    v32 = [objc_opt_self() secondaryLabelColor];
  }

  [v25 setTextColor:v32];

  v35 = *&v27[OBJC_IVAR____TtC8AppStore23CarouselItemTextOverlay_titleLabel];
  [v35 setTextAlignment:v51];
  v36 = v46;
  v37 = v31;
  (v53)(v46, &v27[v54], v31);
  v38 = v48;
  HeroCarouselItemOverlay.DisplayOptions.textColorOverrides.getter();
  v22(v36, v37);
  v39 = HeroCarouselItemOverlay.DisplayOptions.TextColorOverrides.titleColor.getter();
  v33(v38, v34);
  if (!v39)
  {
    v39 = [objc_opt_self() labelColor];
  }

  [v35 setTextColor:v39];

  v40 = *&v27[OBJC_IVAR____TtC8AppStore23CarouselItemTextOverlay_callToActionLabel];
  [v40 setTextAlignment:v51];
  v41 = v49;
  (v53)(v49, &v27[v54], v37);
  v42 = v50;
  HeroCarouselItemOverlay.DisplayOptions.textColorOverrides.getter();
  v22(v41, v37);
  v43 = HeroCarouselItemOverlay.DisplayOptions.TextColorOverrides.callToActionColor.getter();
  v33(v42, v34);
  if (!v43)
  {
    v43 = [objc_opt_self() labelColor];
  }

  [v40 setTextColor:v43];

  return [v27 setNeedsLayout];
}

id sub_10055EC10()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CarouselItemTextOverlay();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for CarouselItemTextOverlay()
{
  result = qword_10098BC60;
  if (!qword_10098BC60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10055ED5C()
{
  result = type metadata accessor for HeroCarouselItemOverlay.DisplayOptions();
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

uint64_t sub_10055EE08(uint64_t a1, uint64_t a2)
{
  v4 = (v2 + OBJC_IVAR____TtC8AppStore23CarouselItemTextOverlay_selectionHandler);
  v5 = *(v2 + OBJC_IVAR____TtC8AppStore23CarouselItemTextOverlay_selectionHandler);
  *v4 = a1;
  v4[1] = a2;
  sub_10000827C(a1);
  sub_10000827C(a1);
  sub_10001F63C(v5);
  v6 = *(v2 + OBJC_IVAR____TtC8AppStore23CarouselItemTextOverlay_tapGestureRecognizer);
  if (a1)
  {
    sub_10001F63C(a1);
  }

  [v6 setEnabled:a1 != 0];

  return sub_10001F63C(a1);
}

id sub_10055EEBC()
{
  v1 = v0;
  v2 = type metadata accessor for HeroCarouselItemOverlay.DisplayOptions();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  HeroCarouselItemOverlay.displayOptions.getter();
  v6 = OBJC_IVAR____TtC8AppStore23CarouselItemTextOverlay_displayOptions;
  swift_beginAccess();
  (*(v3 + 24))(&v1[v6], v5, v2);
  swift_endAccess();
  sub_10055E5BC();
  (*(v3 + 8))(v5, v2);
  v7 = *&v1[OBJC_IVAR____TtC8AppStore23CarouselItemTextOverlay_badgeLabel];
  HeroCarouselItemOverlay.badgeText.getter();
  if (v8)
  {
    v9 = String._bridgeToObjectiveC()();
  }

  else
  {
    v9 = 0;
  }

  [v7 setText:v9];

  v10 = *&v1[OBJC_IVAR____TtC8AppStore23CarouselItemTextOverlay_titleLabel];
  HeroCarouselItemOverlay.titleText.getter();
  if (v11)
  {
    v12 = String._bridgeToObjectiveC()();
  }

  else
  {
    v12 = 0;
  }

  [v10 setText:v12];

  v13 = *&v1[OBJC_IVAR____TtC8AppStore23CarouselItemTextOverlay_callToActionLabel];
  v14 = HeroCarouselItemOverlay.callToActionText.getter();
  v16 = sub_100255060(v14, v15, [v1 effectiveUserInterfaceLayoutDirection]);

  [v13 setAttributedText:v16];

  return [v1 setNeedsLayout];
}

unint64_t sub_10055F0E4()
{
  result = qword_10097B030;
  if (!qword_10097B030)
  {
    type metadata accessor for HeroCarouselItemOverlay.DisplayOptions.TextAlignment();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10097B030);
  }

  return result;
}

void sub_10055F1BC()
{
  v1 = type metadata accessor for HeroCarouselItemOverlay.DisplayOptions.TextColorOverrides();
  __chkstk_darwin(v1 - 8);
  v2 = type metadata accessor for HeroCarouselItemOverlay.DisplayOptions.Placement();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for HeroCarouselItemOverlay.DisplayOptions.TextAlignment();
  v7 = __chkstk_darwin(v6);
  (*(v9 + 104))(&v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for HeroCarouselItemOverlay.DisplayOptions.TextAlignment.center(_:), v7);
  (*(v3 + 104))(v5, enum case for HeroCarouselItemOverlay.DisplayOptions.Placement.leading(_:), v2);
  HeroCarouselItemOverlay.DisplayOptions.TextColorOverrides.init()();
  HeroCarouselItemOverlay.DisplayOptions.init(textAlignment:horizontalPlacement:textColorOverrides:isOverDarkContent:)();
  v10 = OBJC_IVAR____TtC8AppStore23CarouselItemTextOverlay_badgeLabel;
  type metadata accessor for DynamicTypeLabel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *(v0 + v10) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v12 = OBJC_IVAR____TtC8AppStore23CarouselItemTextOverlay_titleLabel;
  *(v0 + v12) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v13 = OBJC_IVAR____TtC8AppStore23CarouselItemTextOverlay_callToActionLabel;
  *(v0 + v13) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v14 = OBJC_IVAR____TtC8AppStore23CarouselItemTextOverlay_tapGestureRecognizer;
  *(v0 + v14) = [objc_allocWithZone(UITapGestureRecognizer) init];
  v15 = (v0 + OBJC_IVAR____TtC8AppStore23CarouselItemTextOverlay_selectionHandler);
  *v15 = 0;
  v15[1] = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

Swift::Void __swiftcall UIImageView.show(image:isAnimationPermitted:)(UIImage_optional image, Swift::Bool isAnimationPermitted)
{
  v3 = v2;
  isa = image.value.super.isa;
  if (!image.is_nil)
  {
    goto LABEL_4;
  }

  v5 = [v3 image];
  if (v5)
  {

LABEL_4:
    v6 = 0;
    goto LABEL_5;
  }

  v6 = 1;
LABEL_5:
  v7 = [v3 layer];
  [v7 removeAllAnimations];

  if (isa)
  {
    if (v6)
    {
      v8 = isa;
      [v3 setAlpha:0.0];
      [v3 setImage:v8];
      sub_100005744(0, &qword_100970F30);
      v9 = static UIViewPropertyAnimator.fadeInPropertyAnimator.getter();
      v10 = swift_allocObject();
      *(v10 + 16) = v3;
      v15[4] = sub_10006038C;
      v15[5] = v10;
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 1107296256;
      v15[2] = sub_100007A08;
      v15[3] = &unk_1008C8860;
      v11 = _Block_copy(v15);
      v12 = v3;

      [v9 addAnimations:v11];
      _Block_release(v11);
      [v9 startAnimation];

      return;
    }

    v13 = v3;
    v14 = isa;
  }

  else
  {
    v13 = v3;
    v14 = 0;
  }

  [v13 setImage:v14];
}

unint64_t sub_10055F664()
{
  result = qword_10098BC70;
  if (!qword_10098BC70)
  {
    sub_100005744(255, &qword_100973120);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10098BC70);
  }

  return result;
}

id sub_10055F6CC()
{
  v1 = [v0 image];

  return v1;
}

void sub_10055F704(void *a1)
{
  [v1 setImage:a1];
}

void (*sub_10055F74C(void *a1))(id *a1)
{
  a1[1] = v1;
  *a1 = [v1 image];
  return sub_10055F7A8;
}

void sub_10055F7A8(id *a1)
{
  v1 = *a1;
  [a1[1] setImage:?];
}

uint64_t sub_10055F7F4(uint64_t a1)
{
  v54 = a1;
  v59 = sub_10002849C(&qword_100979358);
  v64 = *(v59 - 8);
  __chkstk_darwin(v59);
  v53 = v46 - v1;
  v2 = sub_10002849C(&qword_100970EE0);
  __chkstk_darwin(v2 - 8);
  v65 = v46 - v3;
  v66 = type metadata accessor for PageGrid.HorizontalMargins();
  v4 = *(v66 - 8);
  __chkstk_darwin(v66);
  v6 = (v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_10002849C(&qword_100970EE8);
  __chkstk_darwin(v7 - 8);
  v67 = v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v46 - v10;
  __chkstk_darwin(v12);
  v14 = v46 - v13;
  __chkstk_darwin(v15);
  v17 = v46 - v16;
  sub_10002849C(&qword_100970EF0);
  v18 = *(type metadata accessor for PageGrid.Breakpoint() - 8);
  v58 = *(v18 + 72);
  v19 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v20 = swift_allocObject();
  v50 = v20;
  *(v20 + 16) = xmmword_1007B23A0;
  v62 = v20 + v19;
  v73 = 0x3FF0000000000000;
  sub_10005E808();
  PageGrid.DirectionalValue.init(_:)();
  v73 = 0x4020000000000000;
  v71 = 0x4030000000000000;
  PageGrid.DirectionalValue.init(horizontal:vertical:)();
  v73 = 0x4030000000000000;
  v71 = 0x4034000000000000;
  PageGrid.DirectionalValue.init(horizontal:vertical:)();
  __asm { FMOV            V0.2D, #16.0 }

  *v6 = _Q0;
  v57 = enum case for PageGrid.HorizontalMargins.absolute(_:);
  v26 = *(v4 + 104);
  v61 = v4 + 104;
  v63 = v26;
  v26(v6);
  left = UIEdgeInsetsZero.left;
  LOBYTE(v73) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v73 = 0;
  PageGrid.DirectionalValue.init(_:)();
  v60 = v14;
  v46[0] = v11;
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  v73 = 0x3FF0000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v73 = 0x4024000000000000;
  v71 = 0x4034000000000000;
  PageGrid.DirectionalValue.init(horizontal:vertical:)();
  v73 = 0x4030000000000000;
  v71 = 0x4034000000000000;
  PageGrid.DirectionalValue.init(horizontal:vertical:)();
  __asm { FMOV            V0.2D, #20.0 }

  *v6 = _Q0;
  v56 = v6;
  v29 = v57;
  v30 = v66;
  v63(v6, v57, v66);
  LOBYTE(v73) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v73 = 0;
  PageGrid.DirectionalValue.init(_:)();
  v31 = v58;
  v55 = v17;
  top = UIEdgeInsetsZero.top;
  v48 = left;
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  v52 = 2 * v31;
  v73 = 0x3FF8000000000000;
  v71 = 0x4000000000000000;
  PageGrid.DirectionalValue.init(horizontal:vertical:)();
  v73 = 0x4034000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v73 = 0x4030000000000000;
  v71 = 0x4034000000000000;
  PageGrid.DirectionalValue.init(horizontal:vertical:)();
  v47 = vdupq_n_s64(0x4041000000000000uLL);
  v32 = v56;
  *v56 = v47;
  v33 = v63;
  v63(v32, v29, v30);
  LOBYTE(v73) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v73 = 0;
  PageGrid.DirectionalValue.init(_:)();
  v34 = v52;
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  v46[1] = v34 + v31;
  v75 = 0x4000000000000000;
  v73 = 0;
  v74 = 1;
  v71 = 0x3FF0000000000000;
  v72 = 0;
  v52 = sub_1001E8728();
  v35 = v53;
  AccessibilityConditional.init(value:ax1To3Value:ax4To5Value:)();
  v36 = v59;
  AccessibilityConditional.value(for:)();
  v37 = *(v64 + 8);
  v64 += 8;
  v51 = v37;
  v37(v35, v36);
  v71 = v73;
  PageGrid.DirectionalValue.init(_:)();
  v73 = 0x4034000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v73 = 0x4030000000000000;
  v71 = 0x4034000000000000;
  PageGrid.DirectionalValue.init(horizontal:vertical:)();
  v38 = v56;
  *v56 = v47;
  v39 = v57;
  v33(v38, v57, v66);
  static UIEdgeInsets.horizontal(left:right:)();
  LOBYTE(v73) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v73 = 0;
  PageGrid.DirectionalValue.init(_:)();
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  v75 = 0x4000000000000000;
  v40 = 4 * v58;
  v73 = 0;
  v74 = 1;
  v71 = 0x3FF0000000000000;
  v72 = 0;
  v41 = v53;
  AccessibilityConditional.init(value:ax1To3Value:ax4To5Value:)();
  v42 = v59;
  AccessibilityConditional.value(for:)();
  v51(v41, v42);
  v71 = v73;
  PageGrid.DirectionalValue.init(_:)();
  v73 = 0x4038000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v73 = 0x4030000000000000;
  v71 = 0x4034000000000000;
  PageGrid.DirectionalValue.init(horizontal:vertical:)();
  v47 = vdupq_n_s64(0x404A000000000000uLL);
  v43 = v56;
  *v56 = v47;
  v63(v43, v39, v66);
  LOBYTE(v73) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v73 = 0;
  PageGrid.DirectionalValue.init(_:)();
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  v73 = 0x4008000000000000;
  v58 += v40;
  v75 = 0x4000000000000000;
  v70 = 0x4000000000000000;
  v71 = 0x4008000000000000;
  v68 = 0x4000000000000000;
  v69 = 0x4000000000000000;
  AccessibilityConditional.init(value:ax1Value:ax2Value:ax3Value:ax4Value:ax5Value:)();
  v44 = v59;
  AccessibilityConditional.value(for:)();
  v51(v41, v44);
  v71 = v73;
  PageGrid.DirectionalValue.init(_:)();
  v73 = 0x4038000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v73 = 0x4030000000000000;
  v71 = 0x4034000000000000;
  PageGrid.DirectionalValue.init(horizontal:vertical:)();
  *v43 = v47;
  v63(v43, v57, v66);
  LOBYTE(v73) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v73 = 0;
  PageGrid.DirectionalValue.init(_:)();
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  return v50;
}

uint64_t sub_10056053C()
{
  v0 = type metadata accessor for PageGrid();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Artwork();
  sub_1005606C0(&qword_100975050, &type metadata accessor for Artwork);
  result = ItemLayoutContext.typedModel<A>(as:)();
  if (v5[1])
  {
    swift_getKeyPath();
    ItemLayoutContext.subscript.getter();

    PageGrid.componentMeasuringSize(spanning:)();
    (*(v1 + 8))(v3, v0);
    Artwork.size.getter();
    Artwork.size.getter();
  }

  return result;
}

uint64_t sub_1005606C0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_100560790()
{
  v8.receiver = v0;
  v8.super_class = type metadata accessor for TransitionViewContainer();
  objc_msgSendSuper2(&v8, "layoutSubviews");
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = [Strong superview];

    if (v3)
    {
      sub_100028004();
      v4 = v0;
      v5 = static NSObject.== infix(_:_:)();

      if (v5)
      {
        v6 = swift_unknownObjectWeakLoadStrong();
        if (v6)
        {
          v7 = v6;
          [v4 bounds];
          [v7 setFrame:?];
        }
      }
    }
  }
}

void sub_1005608A8(void *a1)
{
  v1 = a1;
  sub_100560790();
}

id sub_100560918()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TransitionViewContainer();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10056099C()
{
  swift_unknownObjectWeakInit();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

char *sub_100560A3C(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtC8AppStore38BrandedAppTodayCardNoArtBackgroundView_style;
  v11 = type metadata accessor for Artwork.Style();
  (*(*(v11 - 8) + 56))(&v4[v10], 1, 1, v11);
  *&v4[OBJC_IVAR____TtC8AppStore38BrandedAppTodayCardNoArtBackgroundView_image] = 0;
  v12 = [objc_allocWithZone(CALayer) init];
  *&v4[OBJC_IVAR____TtC8AppStore38BrandedAppTodayCardNoArtBackgroundView_imageLayer] = v12;
  v13 = [objc_allocWithZone(CAGradientLayer) init];
  *&v4[OBJC_IVAR____TtC8AppStore38BrandedAppTodayCardNoArtBackgroundView_gradientLayer] = v13;
  v33.receiver = v4;
  v33.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v33, "initWithFrame:", a1, a2, a3, a4);
  [v14 setClipsToBounds:1];
  v15 = OBJC_IVAR____TtC8AppStore38BrandedAppTodayCardNoArtBackgroundView_imageLayer;
  [*&v14[OBJC_IVAR____TtC8AppStore38BrandedAppTodayCardNoArtBackgroundView_imageLayer] setMasksToBounds:1];
  LODWORD(v16) = 1053609165;
  [*&v14[v15] setOpacity:v16];
  v17 = *&v14[v15];
  CATransform3DMakeRotation(&v32, -0.523598776, 0.0, 0.0, 1.0);
  [v17 setTransform:&v32];

  v18 = [v14 layer];
  [v18 addSublayer:*&v14[v15]];

  v19 = OBJC_IVAR____TtC8AppStore38BrandedAppTodayCardNoArtBackgroundView_gradientLayer;
  v20 = *&v14[OBJC_IVAR____TtC8AppStore38BrandedAppTodayCardNoArtBackgroundView_gradientLayer];
  sub_10002849C(&qword_1009701B0);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1007B1890;
  sub_100028BB8();
  v22 = v20;
  isa = UIColor.init(_colorLiteralRed:green:blue:alpha:)(0.0, 0.0, 0.0, 0.0).super.isa;
  v24 = [(objc_class *)isa CGColor];

  type metadata accessor for CGColor(0);
  v26 = v25;
  *(v21 + 56) = v25;
  *(v21 + 32) = v24;
  v27 = UIColor.init(_colorLiteralRed:green:blue:alpha:)(0.47451, 0.47451, 0.47451, 0.5).super.isa;
  v28 = [(objc_class *)v27 CGColor];

  *(v21 + 88) = v26;
  *(v21 + 64) = v28;
  v29 = Array._bridgeToObjectiveC()().super.isa;

  [v22 setColors:v29];

  [*&v14[v19] setStartPoint:{0.5, 0.0}];
  [*&v14[v19] setEndPoint:{0.5, 1.0}];
  v30 = [v14 layer];

  [v30 addSublayer:*&v14[v19]];
  return v14;
}

id sub_100560E80()
{
  v1 = *&v0[OBJC_IVAR____TtC8AppStore38BrandedAppTodayCardNoArtBackgroundView_imageLayer];
  v2 = *&v0[OBJC_IVAR____TtC8AppStore38BrandedAppTodayCardNoArtBackgroundView_image];
  if (v2 && (v3 = [v2 CGImage]) != 0)
  {
    v6 = v3;
    type metadata accessor for CGImage(0);
    v4 = _bridgeAnythingToObjectiveC<A>(_:)();
  }

  else
  {
    v4 = 0;
  }

  [v1 setContents:v4];
  swift_unknownObjectRelease();
  return [v0 setNeedsLayout];
}

id sub_100560F38()
{
  ObjectType = swift_getObjectType();
  v2 = type metadata accessor for CornerStyle();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v32 - v7;
  v9 = sub_10002849C(&unk_100987160);
  __chkstk_darwin(v9 - 8);
  v11 = &v32 - v10;
  v12 = type metadata accessor for Artwork.Style();
  v13 = *(v12 - 8);
  *&v14 = __chkstk_darwin(v12).n128_u64[0];
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33.receiver = v0;
  v33.super_class = ObjectType;
  objc_msgSendSuper2(&v33, "layoutSubviews", v14);
  [v0 bounds];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  [*&v0[OBJC_IVAR____TtC8AppStore38BrandedAppTodayCardNoArtBackgroundView_gradientLayer] setFrame:?];
  if (!*&v0[OBJC_IVAR____TtC8AppStore38BrandedAppTodayCardNoArtBackgroundView_image])
  {
    return [*&v0[OBJC_IVAR____TtC8AppStore38BrandedAppTodayCardNoArtBackgroundView_imageLayer] setFrame:{0.0, 0.0, 0.0, 0.0}];
  }

  v25 = objc_opt_self();
  [v25 begin];
  v32 = v25;
  [v25 setDisableActions:1];
  v26 = OBJC_IVAR____TtC8AppStore38BrandedAppTodayCardNoArtBackgroundView_style;
  swift_beginAccess();
  sub_1005615EC(&v0[v26], v11);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_10056165C(v11);
    v27 = *&v0[OBJC_IVAR____TtC8AppStore38BrandedAppTodayCardNoArtBackgroundView_imageLayer];
    [v27 setContinuousCorners:0];
    [v27 setCornerRadius:0.0];
  }

  else
  {
    (*(v13 + 32))(v16, v11, v12);
    v27 = *&v0[OBJC_IVAR____TtC8AppStore38BrandedAppTodayCardNoArtBackgroundView_imageLayer];
    Artwork.Style.cornerStyle.getter();
    (*(v3 + 104))(v5, enum case for CornerStyle.continuous(_:), v2);
    v29 = static CornerStyle.== infix(_:_:)();
    v30 = *(v3 + 8);
    v30(v5, v2);
    v30(v8, v2);
    [v27 setContinuousCorners:v29 & 1];
    Artwork.Style.iconCornerRadius(for:isPlaceholder:)();
    [v27 setCornerRadius:?];
    (*(v13 + 8))(v16, v12);
  }

  [v27 setBounds:{0.0, 0.0, 230.0, 230.0}];
  v34.origin.x = v18;
  v34.origin.y = v20;
  v34.size.width = v22;
  v34.size.height = v24;
  v31 = CGRectGetMaxX(v34) + -115.0 + 79.0;
  v35.origin.x = v18;
  v35.origin.y = v20;
  v35.size.width = v22;
  v35.size.height = v24;
  [v27 setPosition:{v31, CGRectGetMinY(v35) + 115.0 + 13.0}];
  return [v32 commit];
}

uint64_t type metadata accessor for BrandedAppTodayCardNoArtBackgroundView()
{
  result = qword_10098BD38;
  if (!qword_10098BD38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1005614EC()
{
  sub_100561594();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100561594()
{
  if (!qword_10098BD48)
  {
    type metadata accessor for Artwork.Style();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_10098BD48);
    }
  }
}