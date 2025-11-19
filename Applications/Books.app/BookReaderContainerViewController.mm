@interface BookReaderContainerViewController
- (AEAssetOpenAnimating)contentOpenAnimator;
- (AEAssetViewControllerDelegate)assetViewControllerDelegate;
- (BCBookPositionProcessing)bookPositionProcessor;
- (BOOL)accessibilityPerformEscape;
- (BOOL)dismissShouldBegin:(id)a3;
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (BOOL)isPreordered;
- (BOOL)prefersHomeIndicatorAutoHidden;
- (BOOL)prefersStatusBarHidden;
- (NSArray)keyCommands;
- (REBuyBookServiceDelegate)serviceDelegate;
- (_TtC5Books33BookReaderContainerViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)targetForAction:(SEL)a3 withSender:(id)a4;
- (id)transitionContentView;
- (int64_t)pageCountIncludingUpsell;
- (int64_t)preferredStatusBarStyle;
- (unint64_t)supportedInterfaceOrientations;
- (void)_traitCollectionDidChangeWithSender:(id)a3 previousTraitCollection:(id)a4;
- (void)assetViewControllerDidCloseAnimated:(BOOL)a3;
- (void)assetViewControllerDidEnterBackground;
- (void)assetViewControllerDidOpenAnimated:(BOOL)a3;
- (void)assetViewControllerPrepareForReload;
- (void)assetViewControllerWillEnterForeground;
- (void)assetViewControllerWillOpen;
- (void)buildContextTree:(id)a3;
- (void)buyBookWithCompletion:(id)a3;
- (void)close:(BOOL)a3;
- (void)didPurchaseWithProductProfile:(id)a3 completion:(id)a4;
- (void)dragToDismiss:(id)a3;
- (void)forceRepagination;
- (void)handleTapDuringPageTurn:(id)a3;
- (void)jumpToBeginningAnimated:(BOOL)a3;
- (void)open:(BOOL)a3;
- (void)openToLocation:(id)a3 animated:(BOOL)a4;
- (void)readingLoupeSelectLine:(id)a3;
- (void)saveStateClosing:(BOOL)a3;
- (void)saveStateClosing:(BOOL)a3 suspending:(BOOL)a4;
- (void)setAppAnalyticsAdditionalData:(id)a3;
- (void)setAppIntentsInfo:(id)a3;
- (void)setAssetIsPreordered:(id)a3;
- (void)setBookPositionProcessor:(id)a3;
- (void)setBuyButtonProgress:(float)a3;
- (void)setFinishedForAssetID:(id)a3;
- (void)setUpSellData:(id)a3;
- (void)swipeToDismiss:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4;
- (void)viewSafeAreaInsetsDidChange;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation BookReaderContainerViewController

- (void)setUpSellData:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC5Books33BookReaderContainerViewController_upSellData);
  *(self + OBJC_IVAR____TtC5Books33BookReaderContainerViewController_upSellData) = a3;
  v3 = a3;
}

- (void)setAppAnalyticsAdditionalData:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC5Books33BookReaderContainerViewController_appAnalyticsAdditionalData);
  *(self + OBJC_IVAR____TtC5Books33BookReaderContainerViewController_appAnalyticsAdditionalData) = a3;
  v3 = a3;
}

- (void)setAppIntentsInfo:(id)a3
{
  v5 = *(self + OBJC_IVAR____TtC5Books33BookReaderContainerViewController_appIntentsInfo);
  *(self + OBJC_IVAR____TtC5Books33BookReaderContainerViewController_appIntentsInfo) = a3;
  sub_10000A7C4(0, &qword_100AEA140);
  v6 = a3;
  v7 = self;
  if ((sub_1007A3184() & 1) == 0)
  {
    type metadata accessor for BookReaderContainerViewController();
    sub_1007A3004();
  }
}

- (BCBookPositionProcessing)bookPositionProcessor
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)setBookPositionProcessor:(id)a3
{
  *(self + OBJC_IVAR____TtC5Books33BookReaderContainerViewController_bookPositionProcessor) = a3;
  swift_unknownObjectRetain();

  swift_unknownObjectRelease();
}

- (REBuyBookServiceDelegate)serviceDelegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (AEAssetViewControllerDelegate)assetViewControllerDelegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (AEAssetOpenAnimating)contentOpenAnimator
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_10055E960();
}

- (void)handleTapDuringPageTurn:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1005604F8();
}

- (void)viewDidLayoutSubviews
{
  v13.receiver = self;
  v13.super_class = type metadata accessor for BookReaderContainerViewController();
  v2 = v13.receiver;
  [(BookReaderContainerViewController *)&v13 viewDidLayoutSubviews];
  v3 = [v2 view];
  if (v3)
  {
    v4 = v3;
    [v3 frame];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;

    [*&v2[OBJC_IVAR____TtC5Books33BookReaderContainerViewController_bookReaderHostEnvironmentProvider] setFrame:{v6, v8, v10, v12}];
  }

  else
  {
    __break(1u);
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_100560910(a3);
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4 = self;
  sub_100561354(a3);
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4 = self;
  sub_100561504(a3);
}

- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4
{
  v4 = a4;
  v9.receiver = self;
  v9.super_class = type metadata accessor for BookReaderContainerViewController();
  v6 = v9.receiver;
  v7 = a3;
  [(BookReaderContainerViewController *)&v9 viewDidMoveToWindow:v7 shouldAppearOrDisappear:v4];
  if (v7)
  {
    swift_getObjectType();
    sub_10079FA04();
  }

  v8 = [v6 viewIfLoaded];
}

- (void)dragToDismiss:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100561D84(v4);
}

- (void)swipeToDismiss:(id)a3
{
  v4 = a3;
  v5 = self;
  if ([v4 direction] == 8 && (sub_100562FB4() & 1) != 0)
  {
    sub_10056D8CC(1);
  }
}

- (void)readingLoupeSelectLine:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1005625A4(v4);
}

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_10056293C(v6, v7);

  return v9 & 1;
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100562C48(v4);
  LOBYTE(self) = v6;

  return self & 1;
}

- (BOOL)accessibilityPerformEscape
{
  v2 = self;
  v3 = sub_1005633DC();

  return v3 & 1;
}

- (id)targetForAction:(SEL)a3 withSender:(id)a4
{
  if (a4)
  {
    v6 = self;
    swift_unknownObjectRetain();
    sub_1007A3504();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v16, 0, sizeof(v16));
    v7 = self;
  }

  sub_100563600(a3, v16, v17);

  sub_100007840(v16, &unk_100AD5B40);
  v8 = v18;
  if (v18)
  {
    v9 = sub_10000E3E8(v17, v18);
    v10 = *(v8 - 8);
    v11 = __chkstk_darwin(v9);
    v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v10 + 16))(v13, v11);
    v14 = sub_1007A3AA4();
    (*(v10 + 8))(v13, v8);
    sub_1000074E0(v17);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (NSArray)keyCommands
{
  v2 = self;
  v3 = sub_100563C5C();

  if (v3)
  {
    sub_10000A7C4(0, &qword_100ADA970);
    v4.super.isa = sub_1007A25D4().super.isa;
  }

  else
  {
    v4.super.isa = 0;
  }

  return v4.super.isa;
}

- (_TtC5Books33BookReaderContainerViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)didPurchaseWithProductProfile:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  _Block_copy(v6);
  swift_unknownObjectRetain();
  v7 = self;
  sub_10056DC20(a3, v7, v6);
  _Block_release(v6);
  _Block_release(v6);
  swift_unknownObjectRelease();
}

- (void)setAssetIsPreordered:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_10056470C(a3);
}

- (void)assetViewControllerWillOpen
{
  v2 = self;
  sub_10056483C();
}

- (void)assetViewControllerDidOpenAnimated:(BOOL)a3
{
  v3 = self;
  sub_1006B1EC8();
}

- (void)assetViewControllerWillEnterForeground
{
  v2 = self;
  sub_100564B30();
}

- (void)assetViewControllerDidEnterBackground
{
  v2 = self;
  sub_100564CCC();
}

- (void)setFinishedForAssetID:(id)a3
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if ([Strong respondsToSelector:"setFinishedForAssetID:"])
    {
      [v5 setFinishedForAssetID:a3];
    }

    swift_unknownObjectRelease();
  }
}

- (void)setBuyButtonProgress:(float)a3
{
  v4 = self;
  sub_100564EBC(a3);
}

- (void)open:(BOOL)a3
{
  v4 = self;
  sub_10056507C(a3);
}

- (void)openToLocation:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectRetain();
  v8 = self;
  if (Strong)
  {
    [Strong assetViewController:v8 willOpen:v4];
    swift_unknownObjectRelease();
  }

  sub_1006C16C4(a3);

  swift_unknownObjectRelease();
}

- (void)jumpToBeginningAnimated:(BOOL)a3
{
  v3 = self;
  sub_10070B5B4(1);
}

- (void)close:(BOOL)a3
{
  v3 = a3;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong assetViewController:self willClose:v3];

    swift_unknownObjectRelease();
  }
}

- (void)saveStateClosing:(BOOL)a3
{
  v3 = self;
  sub_1004AADE4();
  sub_1004AC424(0);
}

- (void)saveStateClosing:(BOOL)a3 suspending:(BOOL)a4
{
  v6 = self;
  sub_10056536C(a3, a4);
}

- (BOOL)dismissShouldBegin:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = sub_1005657AC(v4);

  return self & 1;
}

- (void)assetViewControllerDidCloseAnimated:(BOOL)a3
{
  v3 = self;
  sub_1006C1888();
}

- (void)assetViewControllerPrepareForReload
{
  v2 = self;
  sub_1004AC424(1);
}

- (int64_t)pageCountIncludingUpsell
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    swift_unknownObjectRelease();
    return 1;
  }

  return result;
}

- (id)transitionContentView
{
  v2 = [*(self + OBJC_IVAR____TtC5Books33BookReaderContainerViewController_readerController) view];

  return v2;
}

- (unint64_t)supportedInterfaceOrientations
{
  v3 = self + OBJC_IVAR____TtC5Books33BookReaderContainerViewController_orientationLocking;
  v4 = *(self + OBJC_IVAR____TtC5Books33BookReaderContainerViewController_orientationLocking + 8);
  ObjectType = swift_getObjectType();
  v6 = *(v4 + 16);
  v7 = self;
  if (v6(ObjectType, v4))
  {
    v8 = *(v3 + 1);
    v9 = swift_getObjectType();
    v10 = (*(v8 + 24))(v9, v8);

    if ((v10 - 1) >= 4)
    {
      return 0;
    }

    else
    {
      return qword_100831220[v10 - 1];
    }
  }

  else
  {

    return 26;
  }
}

- (BOOL)prefersHomeIndicatorAutoHidden
{
  v2 = self;
  v3 = sub_1005669D8();

  return v3 & 1;
}

- (BOOL)prefersStatusBarHidden
{
  v2 = self;
  v3 = sub_100566B30();

  return v3 & 1;
}

- (int64_t)preferredStatusBarStyle
{
  v3 = self + OBJC_IVAR____TtC5Books33BookReaderContainerViewController_statusBarStateProvider;
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return 1;
  }

  v4 = *(v3 + 1);
  ObjectType = swift_getObjectType();
  v6 = *(v4 + 16);
  v7 = self;
  LOBYTE(v4) = v6(ObjectType, v4);
  swift_unknownObjectRelease();

  if (v4)
  {
    return 3;
  }

  else
  {
    return 1;
  }
}

- (void)buyBookWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
  _Block_copy(v4);
  v5 = self;
  sub_10056DD20(v5, v4);
  _Block_release(v4);
  _Block_release(v4);
}

- (BOOL)isPreordered
{
  v2 = *(self + OBJC_IVAR____TtC5Books33BookReaderContainerViewController_bookProviderService);
  v3 = OBJC_IVAR___REBookProviderService_bookEntity;
  swift_beginAccess();
  sub_100009864(v2 + v3, v5);
  sub_10000E3E8(v5, v5[3]);
  LOBYTE(v2) = sub_10079EBB4();
  sub_1000074E0(v5);
  return v2 & 1;
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v14.receiver = self;
  v14.super_class = type metadata accessor for BookReaderContainerViewController();
  swift_unknownObjectRetain();
  v7 = v14.receiver;
  [(BookReaderContainerViewController *)&v14 viewWillTransitionToSize:a4 withTransitionCoordinator:width, height];
  v8 = [v7 view];
  if (v8)
  {
    v9 = v8;
    [v8 frame];
    v11 = v10;
    v13 = v12;

    [*&v7[OBJC_IVAR____TtC5Books33BookReaderContainerViewController_bookReaderHostEnvironmentProvider] setFrame:{v11, v13, width, height}];
    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

- (void)viewSafeAreaInsetsDidChange
{
  v14.receiver = self;
  v14.super_class = type metadata accessor for BookReaderContainerViewController();
  v2 = v14.receiver;
  [(BookReaderContainerViewController *)&v14 viewSafeAreaInsetsDidChange];
  v3 = *&v2[OBJC_IVAR____TtC5Books33BookReaderContainerViewController_bookReaderHostEnvironmentProvider];
  v4 = [v2 view];
  if (v4)
  {
    v5 = v4;
    [v4 safeAreaInsets];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;

    [v3 setSafeAreaInsets:{v7, v9, v11, v13}];
  }

  else
  {
    __break(1u);
  }
}

- (void)_traitCollectionDidChangeWithSender:(id)a3 previousTraitCollection:(id)a4
{
  swift_unknownObjectRetain();
  v6 = a4;
  v7 = self;
  sub_1007A3504();
  swift_unknownObjectRelease();
  sub_10056DEB0();

  sub_1000074E0(&v8);
}

- (void)buildContextTree:(id)a3
{
  sub_1007A2044();
  v4 = self;
  sub_100569C3C();
}

- (void)forceRepagination
{
  v3 = *(self + OBJC_IVAR____TtC5Books33BookReaderContainerViewController_bookProviderService);
  v4 = OBJC_IVAR___REBookProviderService_bookEntity;
  swift_beginAccess();
  sub_100009864(v3 + v4, v6);
  sub_10000E3E8(v6, v6[3]);
  v5 = self;
  sub_10079ECA4();
  sub_1000074E0(v6);
  swift_getObjectType();
  sub_10079F9A4();
}

@end