@interface REBookReaderModuleHost
- (AEAssetViewControllerDelegate)assetViewControllerDelegate;
- (BCAppIntentsAssetViewControllerInfo)appIntentsInfo;
- (BOOL)dismissShouldBegin:(id)begin;
- (BOOL)prefersStatusBarHiddenDuringTransition;
- (BOOL)snapshotDuringLiveResize;
- (REBookReaderModuleHost)initWithHostEnvironmentProvider:(id)provider book:(id)book annotationProvider:(id)annotationProvider storeController:(id)controller styleManager:(id)manager engagementManager:(id)engagementManager;
- (REBookReaderModuleHost)initWithNibName:(id)name bundle:(id)bundle;
- (id)targetForAction:(SEL)action withSender:(id)sender;
- (id)transitionContentView;
- (int64_t)pageCountIncludingUpsell;
- (unint64_t)supportedInterfaceOrientations;
- (void)assetViewControllerDidCloseAnimated:(BOOL)animated;
- (void)assetViewControllerDidEnterBackground;
- (void)assetViewControllerDidOpenAnimated:(BOOL)animated;
- (void)assetViewControllerPrepareForReload;
- (void)assetViewControllerUpdateCloseStateTypeIfNeeded;
- (void)assetViewControllerUpdateToolbars;
- (void)assetViewControllerUpdateToolbarsAfterOpenAnimation;
- (void)assetViewControllerUpdateToolbarsForOpenAnimation;
- (void)assetViewControllerWillAddView;
- (void)assetViewControllerWillEnterForeground;
- (void)assetViewControllerWillOpen;
- (void)close:(BOOL)close;
- (void)didPurchaseWithProductProfile:(id)profile completion:(id)completion;
- (void)forceRepagination;
- (void)jumpToBeginningAnimated:(BOOL)animated;
- (void)open:(BOOL)open;
- (void)openToLocation:(id)location animated:(BOOL)animated;
- (void)requestClose:(BOOL)close;
- (void)saveStateClosing:(BOOL)closing;
- (void)saveStateClosing:(BOOL)closing suspending:(BOOL)suspending;
- (void)setAppAnalyticsAdditionalData:(id)data;
- (void)setAppIntentsInfo:(id)info;
- (void)setAssetIsPreordered:(id)preordered;
- (void)setAssetViewControllerDelegate:(id)delegate;
- (void)setBookPositionProcessor:(id)processor;
- (void)setBuyButtonProgress:(float)progress;
- (void)setContentOpenAnimator:(id)animator;
- (void)setFinishedForAssetID:(id)d;
- (void)setUpSellData:(id)data;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear;
- (void)viewIsAppearing:(BOOL)appearing;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation REBookReaderModuleHost

- (AEAssetViewControllerDelegate)assetViewControllerDelegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)setAssetViewControllerDelegate:(id)delegate
{
  swift_unknownObjectRetain();
  selfCopy = self;
  BookReaderModuleHost.assetViewControllerDelegate.setter();
}

- (void)setContentOpenAnimator:(id)animator
{
  v5 = OBJC_IVAR___REBookReaderModuleHost_contentOpenAnimator;
  swift_beginAccess();
  *(self + v5) = animator;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
}

- (BCAppIntentsAssetViewControllerInfo)appIntentsInfo
{
  v3 = OBJC_IVAR___REBookReaderModuleHost_appIntentsInfo;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setAppIntentsInfo:(id)info
{
  swift_getObjectType();
  v5 = OBJC_IVAR___REBookReaderModuleHost_appIntentsInfo;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = info;
  infoCopy = info;
  selfCopy = self;

  sub_1007A3004();
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

  BookReaderModuleHost.target(forAction:withSender:)(action, v16, &v17);

  sub_1000230BC(v16);
  v8 = v18;
  if (v18)
  {
    v9 = sub_10000E3E8(&v17, v18);
    v10 = *(v8 - 8);
    v11 = __chkstk_darwin(v9);
    v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v10 + 16))(v13, v11);
    v14 = sub_1007A3AA4();
    (*(v10 + 8))(v13, v8);
    sub_1000074E0(&v17);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (BOOL)snapshotDuringLiveResize
{
  selfCopy = self;
  v3 = sub_1005AA0A0();
  v4 = v3;
  if (v3)
  {
    if ([v3 respondsToSelector:"snapshotDuringLiveResize"])
    {
      v5 = v4;
      LOBYTE(v4) = [v5 snapshotDuringLiveResize];
    }

    else
    {
      LOBYTE(v4) = 0;
    }
  }

  return v4;
}

- (void)open:(BOOL)open
{
  selfCopy = self;
  BookReaderModuleHost.open(_:)(open);
}

- (void)openToLocation:(id)location animated:(BOOL)animated
{
  swift_unknownObjectRetain();
  selfCopy = self;
  BookReaderModuleHost.open(toLocation:animated:)(location, animated);
  swift_unknownObjectRelease();
}

- (void)jumpToBeginningAnimated:(BOOL)animated
{
  selfCopy = self;
  BookReaderModuleHost.jumpToBeginning(animated:)(animated);
}

- (void)close:(BOOL)close
{
  selfCopy = self;
  BookReaderModuleHost.close(_:)(close);
}

- (void)saveStateClosing:(BOOL)closing
{
  selfCopy = self;
  BookReaderModuleHost.saveStateClosing(_:)(closing);
}

- (void)saveStateClosing:(BOOL)closing suspending:(BOOL)suspending
{
  selfCopy = self;
  BookReaderModuleHost.saveStateClosing(_:suspending:)(closing, suspending);
}

- (BOOL)dismissShouldBegin:(id)begin
{
  v3 = *(self + OBJC_IVAR___REBookReaderModuleHost_readerModuleViewController);
  if (v3)
  {
    return [v3 dismissShouldBegin:begin];
  }

  else
  {
    return [begin proposedBeginState];
  }
}

- (void)assetViewControllerUpdateToolbars
{
  selfCopy = self;
  BookReaderModuleHost.assetViewControllerUpdateToolbars()();
}

- (void)assetViewControllerUpdateCloseStateTypeIfNeeded
{
  selfCopy = self;
  BookReaderModuleHost.assetViewControllerUpdateCloseStateTypeIfNeeded()();
}

- (void)assetViewControllerUpdateToolbarsAfterOpenAnimation
{
  selfCopy = self;
  BookReaderModuleHost.assetViewControllerUpdateToolbarsAfterOpenAnimation()();
}

- (void)assetViewControllerUpdateToolbarsForOpenAnimation
{
  selfCopy = self;
  BookReaderModuleHost.assetViewControllerUpdateToolbarsForOpenAnimation()();
}

- (void)assetViewControllerWillAddView
{
  selfCopy = self;
  BookReaderModuleHost.assetViewControllerWillAddView()();
}

- (void)assetViewControllerPrepareForReload
{
  selfCopy = self;
  BookReaderModuleHost.assetViewControllerPrepareForReload()();
}

- (void)setAssetIsPreordered:(id)preordered
{
  preorderedCopy = preordered;
  selfCopy = self;
  v9.is_nil = selfCopy;
  v7 = selfCopy;
  v9.value.super.super.isa = preordered;
  BookReaderModuleHost.setAssetIsPreordered(_:)(v9);
}

- (void)assetViewControllerWillOpen
{
  selfCopy = self;
  BookReaderModuleHost.assetViewControllerWillOpen()();
}

- (void)assetViewControllerDidOpenAnimated:(BOOL)animated
{
  selfCopy = self;
  BookReaderModuleHost.assetViewControllerDidOpen(animated:)(animated);
}

- (void)assetViewControllerWillEnterForeground
{
  selfCopy = self;
  BookReaderModuleHost.assetViewControllerWillEnterForeground()();
}

- (void)assetViewControllerDidEnterBackground
{
  selfCopy = self;
  BookReaderModuleHost.assetViewControllerDidEnterBackground()();
}

- (void)assetViewControllerDidCloseAnimated:(BOOL)animated
{
  selfCopy = self;
  BookReaderModuleHost.assetViewControllerDidClose(animated:)(animated);
}

- (int64_t)pageCountIncludingUpsell
{
  v2 = *(self + OBJC_IVAR___REBookReaderModuleHost_readerModuleViewController);
  if (!v2)
  {
    return 1;
  }

  if (([*(self + OBJC_IVAR___REBookReaderModuleHost_readerModuleViewController) respondsToSelector:"pageCountIncludingUpsell"] & 1) == 0)
  {
    return 0;
  }

  return [v2 pageCountIncludingUpsell];
}

- (void)didPurchaseWithProductProfile:(id)profile completion:(id)completion
{
  v6 = _Block_copy(completion);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  swift_unknownObjectRetain();
  selfCopy = self;
  BookReaderModuleHost.didPurchase(withProductProfile:completion:)(profile, sub_1002427EC, v7);
  swift_unknownObjectRelease();
}

- (void)setBuyButtonProgress:(float)progress
{
  selfCopy = self;
  BookReaderModuleHost.setBuyButtonProgress(_:)(progress);
}

- (void)requestClose:(BOOL)close
{
  selfCopy = self;
  BookReaderModuleHost.requestClose(_:)(close);
}

- (void)setBookPositionProcessor:(id)processor
{
  swift_unknownObjectRetain();
  selfCopy = self;
  BookReaderModuleHost.bookPositionProcessor.setter(processor);
}

- (REBookReaderModuleHost)initWithHostEnvironmentProvider:(id)provider book:(id)book annotationProvider:(id)annotationProvider storeController:(id)controller styleManager:(id)manager engagementManager:(id)engagementManager
{
  ObjectType = swift_getObjectType();
  sub_1007A1774();
  swift_unknownObjectRetain();
  bookCopy = book;
  annotationProviderCopy = annotationProvider;
  controllerCopy = controller;
  managerCopy = manager;
  engagementManagerCopy = engagementManager;
  v20 = sub_1007A1764();
  v21 = objc_allocWithZone(ObjectType);
  v22 = sub_1005A76B0(provider, bookCopy, annotationProviderCopy, controllerCopy, managerCopy, engagementManagerCopy, v20);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v22;
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  swift_unknownObjectRetain();
  selfCopy = self;
  BookReaderModuleHost.viewWillTransition(to:with:)(coordinator, width, height);
  swift_unknownObjectRelease();
}

- (void)viewIsAppearing:(BOOL)appearing
{
  appearingCopy = appearing;
  ObjectType = swift_getObjectType();
  selfCopy = self;
  sub_1005A54F0();
  v7.receiver = selfCopy;
  v7.super_class = ObjectType;
  [(REBookReaderModuleHost *)&v7 viewIsAppearing:appearingCopy];
  [(REBookReaderModuleHost *)selfCopy bc_analyticsVisibilityUpdateSubtree];
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v6.receiver = self;
  v6.super_class = swift_getObjectType();
  v4 = v6.receiver;
  [(REBookReaderModuleHost *)&v6 viewDidAppear:appearCopy];
  [v4 bc_analyticsVisibilityUpdateSubtree];
  swift_getObjectType();
  traitCollection = [v4 traitCollection];
  sub_1007A17B4();
}

- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v6.receiver = self;
  v6.super_class = swift_getObjectType();
  [(REBookReaderModuleHost *)&v6 viewDidMoveToWindow:window shouldAppearOrDisappear:disappearCopy];
}

- (unint64_t)supportedInterfaceOrientations
{
  v2 = *(self + OBJC_IVAR___REBookReaderModuleHost_readerModuleViewController);
  if (v2)
  {
    return [v2 supportedInterfaceOrientations];
  }

  else
  {
    return 30;
  }
}

- (REBookReaderModuleHost)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)transitionContentView
{
  if (*(self + OBJC_IVAR___REBookReaderModuleHost_readerModuleViewController))
  {
    self = *(self + OBJC_IVAR___REBookReaderModuleHost_readerModuleViewController);
  }

  view = [(REBookReaderModuleHost *)self view];

  return view;
}

- (BOOL)prefersStatusBarHiddenDuringTransition
{
  selfCopy = self;
  v3 = BookReaderModuleHost.prefersStatusBarHiddenDuringTransition()();

  return v3;
}

- (void)setUpSellData:(id)data
{
  v3 = *(self + OBJC_IVAR___REBookReaderModuleHost_readerModuleViewController);
  if (v3)
  {
    [v3 setUpSellData:data];
  }
}

- (void)setAppAnalyticsAdditionalData:(id)data
{
  v3 = *(self + OBJC_IVAR___REBookReaderModuleHost_readerModuleViewController);
  if (v3)
  {
    [v3 setAppAnalyticsAdditionalData:data];
  }
}

- (void)forceRepagination
{
  v2 = *(self + OBJC_IVAR___REBookReaderModuleHost_readerModuleViewController);
  if (v2)
  {
    [v2 forceRepagination];
  }
}

- (void)setFinishedForAssetID:(id)d
{
  v3 = *(self + OBJC_IVAR___REBookReaderModuleHost_readerModuleViewController);
  if (v3 && ([*(self + OBJC_IVAR___REBookReaderModuleHost_readerModuleViewController) respondsToSelector:"setFinishedForAssetID:"] & 1) != 0)
  {

    [v3 setFinishedForAssetID:d];
  }
}

@end