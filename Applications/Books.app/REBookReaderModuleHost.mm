@interface REBookReaderModuleHost
- (AEAssetViewControllerDelegate)assetViewControllerDelegate;
- (BCAppIntentsAssetViewControllerInfo)appIntentsInfo;
- (BOOL)dismissShouldBegin:(id)a3;
- (BOOL)prefersStatusBarHiddenDuringTransition;
- (BOOL)snapshotDuringLiveResize;
- (REBookReaderModuleHost)initWithHostEnvironmentProvider:(id)a3 book:(id)a4 annotationProvider:(id)a5 storeController:(id)a6 styleManager:(id)a7 engagementManager:(id)a8;
- (REBookReaderModuleHost)initWithNibName:(id)a3 bundle:(id)a4;
- (id)targetForAction:(SEL)a3 withSender:(id)a4;
- (id)transitionContentView;
- (int64_t)pageCountIncludingUpsell;
- (unint64_t)supportedInterfaceOrientations;
- (void)assetViewControllerDidCloseAnimated:(BOOL)a3;
- (void)assetViewControllerDidEnterBackground;
- (void)assetViewControllerDidOpenAnimated:(BOOL)a3;
- (void)assetViewControllerPrepareForReload;
- (void)assetViewControllerUpdateCloseStateTypeIfNeeded;
- (void)assetViewControllerUpdateToolbars;
- (void)assetViewControllerUpdateToolbarsAfterOpenAnimation;
- (void)assetViewControllerUpdateToolbarsForOpenAnimation;
- (void)assetViewControllerWillAddView;
- (void)assetViewControllerWillEnterForeground;
- (void)assetViewControllerWillOpen;
- (void)close:(BOOL)a3;
- (void)didPurchaseWithProductProfile:(id)a3 completion:(id)a4;
- (void)forceRepagination;
- (void)jumpToBeginningAnimated:(BOOL)a3;
- (void)open:(BOOL)a3;
- (void)openToLocation:(id)a3 animated:(BOOL)a4;
- (void)requestClose:(BOOL)a3;
- (void)saveStateClosing:(BOOL)a3;
- (void)saveStateClosing:(BOOL)a3 suspending:(BOOL)a4;
- (void)setAppAnalyticsAdditionalData:(id)a3;
- (void)setAppIntentsInfo:(id)a3;
- (void)setAssetIsPreordered:(id)a3;
- (void)setAssetViewControllerDelegate:(id)a3;
- (void)setBookPositionProcessor:(id)a3;
- (void)setBuyButtonProgress:(float)a3;
- (void)setContentOpenAnimator:(id)a3;
- (void)setFinishedForAssetID:(id)a3;
- (void)setUpSellData:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4;
- (void)viewIsAppearing:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation REBookReaderModuleHost

- (AEAssetViewControllerDelegate)assetViewControllerDelegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)setAssetViewControllerDelegate:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  BookReaderModuleHost.assetViewControllerDelegate.setter();
}

- (void)setContentOpenAnimator:(id)a3
{
  v5 = OBJC_IVAR___REBookReaderModuleHost_contentOpenAnimator;
  swift_beginAccess();
  *(self + v5) = a3;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
}

- (BCAppIntentsAssetViewControllerInfo)appIntentsInfo
{
  v3 = OBJC_IVAR___REBookReaderModuleHost_appIntentsInfo;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setAppIntentsInfo:(id)a3
{
  swift_getObjectType();
  v5 = OBJC_IVAR___REBookReaderModuleHost_appIntentsInfo;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = a3;
  v7 = a3;
  v8 = self;

  sub_1007A3004();
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

  BookReaderModuleHost.target(forAction:withSender:)(a3, v16, &v17);

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
  v2 = self;
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

- (void)open:(BOOL)a3
{
  v4 = self;
  BookReaderModuleHost.open(_:)(a3);
}

- (void)openToLocation:(id)a3 animated:(BOOL)a4
{
  swift_unknownObjectRetain();
  v7 = self;
  BookReaderModuleHost.open(toLocation:animated:)(a3, a4);
  swift_unknownObjectRelease();
}

- (void)jumpToBeginningAnimated:(BOOL)a3
{
  v4 = self;
  BookReaderModuleHost.jumpToBeginning(animated:)(a3);
}

- (void)close:(BOOL)a3
{
  v4 = self;
  BookReaderModuleHost.close(_:)(a3);
}

- (void)saveStateClosing:(BOOL)a3
{
  v4 = self;
  BookReaderModuleHost.saveStateClosing(_:)(a3);
}

- (void)saveStateClosing:(BOOL)a3 suspending:(BOOL)a4
{
  v6 = self;
  BookReaderModuleHost.saveStateClosing(_:suspending:)(a3, a4);
}

- (BOOL)dismissShouldBegin:(id)a3
{
  v3 = *(self + OBJC_IVAR___REBookReaderModuleHost_readerModuleViewController);
  if (v3)
  {
    return [v3 dismissShouldBegin:a3];
  }

  else
  {
    return [a3 proposedBeginState];
  }
}

- (void)assetViewControllerUpdateToolbars
{
  v2 = self;
  BookReaderModuleHost.assetViewControllerUpdateToolbars()();
}

- (void)assetViewControllerUpdateCloseStateTypeIfNeeded
{
  v2 = self;
  BookReaderModuleHost.assetViewControllerUpdateCloseStateTypeIfNeeded()();
}

- (void)assetViewControllerUpdateToolbarsAfterOpenAnimation
{
  v2 = self;
  BookReaderModuleHost.assetViewControllerUpdateToolbarsAfterOpenAnimation()();
}

- (void)assetViewControllerUpdateToolbarsForOpenAnimation
{
  v2 = self;
  BookReaderModuleHost.assetViewControllerUpdateToolbarsForOpenAnimation()();
}

- (void)assetViewControllerWillAddView
{
  v2 = self;
  BookReaderModuleHost.assetViewControllerWillAddView()();
}

- (void)assetViewControllerPrepareForReload
{
  v2 = self;
  BookReaderModuleHost.assetViewControllerPrepareForReload()();
}

- (void)setAssetIsPreordered:(id)a3
{
  v5 = a3;
  v6 = self;
  v9.is_nil = v6;
  v7 = v6;
  v9.value.super.super.isa = a3;
  BookReaderModuleHost.setAssetIsPreordered(_:)(v9);
}

- (void)assetViewControllerWillOpen
{
  v2 = self;
  BookReaderModuleHost.assetViewControllerWillOpen()();
}

- (void)assetViewControllerDidOpenAnimated:(BOOL)a3
{
  v4 = self;
  BookReaderModuleHost.assetViewControllerDidOpen(animated:)(a3);
}

- (void)assetViewControllerWillEnterForeground
{
  v2 = self;
  BookReaderModuleHost.assetViewControllerWillEnterForeground()();
}

- (void)assetViewControllerDidEnterBackground
{
  v2 = self;
  BookReaderModuleHost.assetViewControllerDidEnterBackground()();
}

- (void)assetViewControllerDidCloseAnimated:(BOOL)a3
{
  v4 = self;
  BookReaderModuleHost.assetViewControllerDidClose(animated:)(a3);
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

- (void)didPurchaseWithProductProfile:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  swift_unknownObjectRetain();
  v8 = self;
  BookReaderModuleHost.didPurchase(withProductProfile:completion:)(a3, sub_1002427EC, v7);
  swift_unknownObjectRelease();
}

- (void)setBuyButtonProgress:(float)a3
{
  v4 = self;
  BookReaderModuleHost.setBuyButtonProgress(_:)(a3);
}

- (void)requestClose:(BOOL)a3
{
  v4 = self;
  BookReaderModuleHost.requestClose(_:)(a3);
}

- (void)setBookPositionProcessor:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  BookReaderModuleHost.bookPositionProcessor.setter(a3);
}

- (REBookReaderModuleHost)initWithHostEnvironmentProvider:(id)a3 book:(id)a4 annotationProvider:(id)a5 storeController:(id)a6 styleManager:(id)a7 engagementManager:(id)a8
{
  ObjectType = swift_getObjectType();
  sub_1007A1774();
  swift_unknownObjectRetain();
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = sub_1007A1764();
  v21 = objc_allocWithZone(ObjectType);
  v22 = sub_1005A76B0(a3, v15, v16, v17, v18, v19, v20);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v22;
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  swift_unknownObjectRetain();
  v8 = self;
  BookReaderModuleHost.viewWillTransition(to:with:)(a4, width, height);
  swift_unknownObjectRelease();
}

- (void)viewIsAppearing:(BOOL)a3
{
  v3 = a3;
  ObjectType = swift_getObjectType();
  v6 = self;
  sub_1005A54F0();
  v7.receiver = v6;
  v7.super_class = ObjectType;
  [(REBookReaderModuleHost *)&v7 viewIsAppearing:v3];
  [(REBookReaderModuleHost *)v6 bc_analyticsVisibilityUpdateSubtree];
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = swift_getObjectType();
  v4 = v6.receiver;
  [(REBookReaderModuleHost *)&v6 viewDidAppear:v3];
  [v4 bc_analyticsVisibilityUpdateSubtree];
  swift_getObjectType();
  v5 = [v4 traitCollection];
  sub_1007A17B4();
}

- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4
{
  v4 = a4;
  v6.receiver = self;
  v6.super_class = swift_getObjectType();
  [(REBookReaderModuleHost *)&v6 viewDidMoveToWindow:a3 shouldAppearOrDisappear:v4];
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

- (REBookReaderModuleHost)initWithNibName:(id)a3 bundle:(id)a4
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

  v2 = [(REBookReaderModuleHost *)self view];

  return v2;
}

- (BOOL)prefersStatusBarHiddenDuringTransition
{
  v2 = self;
  v3 = BookReaderModuleHost.prefersStatusBarHiddenDuringTransition()();

  return v3;
}

- (void)setUpSellData:(id)a3
{
  v3 = *(self + OBJC_IVAR___REBookReaderModuleHost_readerModuleViewController);
  if (v3)
  {
    [v3 setUpSellData:a3];
  }
}

- (void)setAppAnalyticsAdditionalData:(id)a3
{
  v3 = *(self + OBJC_IVAR___REBookReaderModuleHost_readerModuleViewController);
  if (v3)
  {
    [v3 setAppAnalyticsAdditionalData:a3];
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

- (void)setFinishedForAssetID:(id)a3
{
  v3 = *(self + OBJC_IVAR___REBookReaderModuleHost_readerModuleViewController);
  if (v3 && ([*(self + OBJC_IVAR___REBookReaderModuleHost_readerModuleViewController) respondsToSelector:"setFinishedForAssetID:"] & 1) != 0)
  {

    [v3 setFinishedForAssetID:a3];
  }
}

@end