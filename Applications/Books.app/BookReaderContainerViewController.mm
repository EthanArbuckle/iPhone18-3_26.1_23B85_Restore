@interface BookReaderContainerViewController
- (AEAssetOpenAnimating)contentOpenAnimator;
- (AEAssetViewControllerDelegate)assetViewControllerDelegate;
- (BCBookPositionProcessing)bookPositionProcessor;
- (BOOL)accessibilityPerformEscape;
- (BOOL)dismissShouldBegin:(id)begin;
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (BOOL)isPreordered;
- (BOOL)prefersHomeIndicatorAutoHidden;
- (BOOL)prefersStatusBarHidden;
- (NSArray)keyCommands;
- (REBuyBookServiceDelegate)serviceDelegate;
- (_TtC5Books33BookReaderContainerViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)targetForAction:(SEL)action withSender:(id)sender;
- (id)transitionContentView;
- (int64_t)pageCountIncludingUpsell;
- (int64_t)preferredStatusBarStyle;
- (unint64_t)supportedInterfaceOrientations;
- (void)_traitCollectionDidChangeWithSender:(id)sender previousTraitCollection:(id)collection;
- (void)assetViewControllerDidCloseAnimated:(BOOL)animated;
- (void)assetViewControllerDidEnterBackground;
- (void)assetViewControllerDidOpenAnimated:(BOOL)animated;
- (void)assetViewControllerPrepareForReload;
- (void)assetViewControllerWillEnterForeground;
- (void)assetViewControllerWillOpen;
- (void)buildContextTree:(id)tree;
- (void)buyBookWithCompletion:(id)completion;
- (void)close:(BOOL)close;
- (void)didPurchaseWithProductProfile:(id)profile completion:(id)completion;
- (void)dragToDismiss:(id)dismiss;
- (void)forceRepagination;
- (void)handleTapDuringPageTurn:(id)turn;
- (void)jumpToBeginningAnimated:(BOOL)animated;
- (void)open:(BOOL)open;
- (void)openToLocation:(id)location animated:(BOOL)animated;
- (void)readingLoupeSelectLine:(id)line;
- (void)saveStateClosing:(BOOL)closing;
- (void)saveStateClosing:(BOOL)closing suspending:(BOOL)suspending;
- (void)setAppAnalyticsAdditionalData:(id)data;
- (void)setAppIntentsInfo:(id)info;
- (void)setAssetIsPreordered:(id)preordered;
- (void)setBookPositionProcessor:(id)processor;
- (void)setBuyButtonProgress:(float)progress;
- (void)setFinishedForAssetID:(id)d;
- (void)setUpSellData:(id)data;
- (void)swipeToDismiss:(id)dismiss;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear;
- (void)viewSafeAreaInsetsDidChange;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation BookReaderContainerViewController

- (void)setUpSellData:(id)data
{
  v4 = *(self + OBJC_IVAR____TtC5Books33BookReaderContainerViewController_upSellData);
  *(self + OBJC_IVAR____TtC5Books33BookReaderContainerViewController_upSellData) = data;
  dataCopy = data;
}

- (void)setAppAnalyticsAdditionalData:(id)data
{
  v4 = *(self + OBJC_IVAR____TtC5Books33BookReaderContainerViewController_appAnalyticsAdditionalData);
  *(self + OBJC_IVAR____TtC5Books33BookReaderContainerViewController_appAnalyticsAdditionalData) = data;
  dataCopy = data;
}

- (void)setAppIntentsInfo:(id)info
{
  v5 = *(self + OBJC_IVAR____TtC5Books33BookReaderContainerViewController_appIntentsInfo);
  *(self + OBJC_IVAR____TtC5Books33BookReaderContainerViewController_appIntentsInfo) = info;
  sub_10000A7C4(0, &qword_100AEA140);
  infoCopy = info;
  selfCopy = self;
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

- (void)setBookPositionProcessor:(id)processor
{
  *(self + OBJC_IVAR____TtC5Books33BookReaderContainerViewController_bookPositionProcessor) = processor;
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
  selfCopy = self;
  sub_10055E960();
}

- (void)handleTapDuringPageTurn:(id)turn
{
  turnCopy = turn;
  selfCopy = self;
  sub_1005604F8();
}

- (void)viewDidLayoutSubviews
{
  v13.receiver = self;
  v13.super_class = type metadata accessor for BookReaderContainerViewController();
  v2 = v13.receiver;
  [(BookReaderContainerViewController *)&v13 viewDidLayoutSubviews];
  view = [v2 view];
  if (view)
  {
    v4 = view;
    [view frame];
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

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_100560910(appear);
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_100561354(disappear);
}

- (void)viewDidDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_100561504(disappear);
}

- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v9.receiver = self;
  v9.super_class = type metadata accessor for BookReaderContainerViewController();
  v6 = v9.receiver;
  windowCopy = window;
  [(BookReaderContainerViewController *)&v9 viewDidMoveToWindow:windowCopy shouldAppearOrDisappear:disappearCopy];
  if (windowCopy)
  {
    swift_getObjectType();
    sub_10079FA04();
  }

  viewIfLoaded = [v6 viewIfLoaded];
}

- (void)dragToDismiss:(id)dismiss
{
  dismissCopy = dismiss;
  selfCopy = self;
  sub_100561D84(dismissCopy);
}

- (void)swipeToDismiss:(id)dismiss
{
  dismissCopy = dismiss;
  selfCopy = self;
  if ([dismissCopy direction] == 8 && (sub_100562FB4() & 1) != 0)
  {
    sub_10056D8CC(1);
  }
}

- (void)readingLoupeSelectLine:(id)line
{
  lineCopy = line;
  selfCopy = self;
  sub_1005625A4(lineCopy);
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  recognizerCopy = recognizer;
  touchCopy = touch;
  selfCopy = self;
  v9 = sub_10056293C(recognizerCopy, touchCopy);

  return v9 & 1;
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  selfCopy = self;
  sub_100562C48(beginCopy);
  LOBYTE(self) = v6;

  return self & 1;
}

- (BOOL)accessibilityPerformEscape
{
  selfCopy = self;
  v3 = sub_1005633DC();

  return v3 & 1;
}

- (id)targetForAction:(SEL)action withSender:(id)sender
{
  if (sender)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_1007A3504();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v16, 0, sizeof(v16));
    selfCopy2 = self;
  }

  sub_100563600(action, v16, v17);

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
  selfCopy = self;
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

- (_TtC5Books33BookReaderContainerViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)didPurchaseWithProductProfile:(id)profile completion:(id)completion
{
  v6 = _Block_copy(completion);
  _Block_copy(v6);
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_10056DC20(profile, selfCopy, v6);
  _Block_release(v6);
  _Block_release(v6);
  swift_unknownObjectRelease();
}

- (void)setAssetIsPreordered:(id)preordered
{
  preorderedCopy = preordered;
  selfCopy = self;
  sub_10056470C(preordered);
}

- (void)assetViewControllerWillOpen
{
  selfCopy = self;
  sub_10056483C();
}

- (void)assetViewControllerDidOpenAnimated:(BOOL)animated
{
  selfCopy = self;
  sub_1006B1EC8();
}

- (void)assetViewControllerWillEnterForeground
{
  selfCopy = self;
  sub_100564B30();
}

- (void)assetViewControllerDidEnterBackground
{
  selfCopy = self;
  sub_100564CCC();
}

- (void)setFinishedForAssetID:(id)d
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if ([Strong respondsToSelector:"setFinishedForAssetID:"])
    {
      [v5 setFinishedForAssetID:d];
    }

    swift_unknownObjectRelease();
  }
}

- (void)setBuyButtonProgress:(float)progress
{
  selfCopy = self;
  sub_100564EBC(progress);
}

- (void)open:(BOOL)open
{
  selfCopy = self;
  sub_10056507C(open);
}

- (void)openToLocation:(id)location animated:(BOOL)animated
{
  animatedCopy = animated;
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectRetain();
  selfCopy = self;
  if (Strong)
  {
    [Strong assetViewController:selfCopy willOpen:animatedCopy];
    swift_unknownObjectRelease();
  }

  sub_1006C16C4(location);

  swift_unknownObjectRelease();
}

- (void)jumpToBeginningAnimated:(BOOL)animated
{
  selfCopy = self;
  sub_10070B5B4(1);
}

- (void)close:(BOOL)close
{
  closeCopy = close;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong assetViewController:self willClose:closeCopy];

    swift_unknownObjectRelease();
  }
}

- (void)saveStateClosing:(BOOL)closing
{
  selfCopy = self;
  sub_1004AADE4();
  sub_1004AC424(0);
}

- (void)saveStateClosing:(BOOL)closing suspending:(BOOL)suspending
{
  selfCopy = self;
  sub_10056536C(closing, suspending);
}

- (BOOL)dismissShouldBegin:(id)begin
{
  beginCopy = begin;
  selfCopy = self;
  LOBYTE(self) = sub_1005657AC(beginCopy);

  return self & 1;
}

- (void)assetViewControllerDidCloseAnimated:(BOOL)animated
{
  selfCopy = self;
  sub_1006C1888();
}

- (void)assetViewControllerPrepareForReload
{
  selfCopy = self;
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
  view = [*(self + OBJC_IVAR____TtC5Books33BookReaderContainerViewController_readerController) view];

  return view;
}

- (unint64_t)supportedInterfaceOrientations
{
  v3 = self + OBJC_IVAR____TtC5Books33BookReaderContainerViewController_orientationLocking;
  v4 = *(self + OBJC_IVAR____TtC5Books33BookReaderContainerViewController_orientationLocking + 8);
  ObjectType = swift_getObjectType();
  v6 = *(v4 + 16);
  selfCopy = self;
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
  selfCopy = self;
  v3 = sub_1005669D8();

  return v3 & 1;
}

- (BOOL)prefersStatusBarHidden
{
  selfCopy = self;
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
  selfCopy = self;
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

- (void)buyBookWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  _Block_copy(v4);
  selfCopy = self;
  sub_10056DD20(selfCopy, v4);
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

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v14.receiver = self;
  v14.super_class = type metadata accessor for BookReaderContainerViewController();
  swift_unknownObjectRetain();
  v7 = v14.receiver;
  [(BookReaderContainerViewController *)&v14 viewWillTransitionToSize:coordinator withTransitionCoordinator:width, height];
  view = [v7 view];
  if (view)
  {
    v9 = view;
    [view frame];
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
  view = [v2 view];
  if (view)
  {
    v5 = view;
    [view safeAreaInsets];
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

- (void)_traitCollectionDidChangeWithSender:(id)sender previousTraitCollection:(id)collection
{
  swift_unknownObjectRetain();
  collectionCopy = collection;
  selfCopy = self;
  sub_1007A3504();
  swift_unknownObjectRelease();
  sub_10056DEB0();

  sub_1000074E0(&v8);
}

- (void)buildContextTree:(id)tree
{
  sub_1007A2044();
  selfCopy = self;
  sub_100569C3C();
}

- (void)forceRepagination
{
  v3 = *(self + OBJC_IVAR____TtC5Books33BookReaderContainerViewController_bookProviderService);
  v4 = OBJC_IVAR___REBookProviderService_bookEntity;
  swift_beginAccess();
  sub_100009864(v3 + v4, v6);
  sub_10000E3E8(v6, v6[3]);
  selfCopy = self;
  sub_10079ECA4();
  sub_1000074E0(v6);
  swift_getObjectType();
  sub_10079F9A4();
}

@end