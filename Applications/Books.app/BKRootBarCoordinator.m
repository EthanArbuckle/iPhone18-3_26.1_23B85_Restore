@interface BKRootBarCoordinator
- (BKRootBarCoordinator)init;
- (BKRootBarCoordinator)initWithSceneController:(id)a3 presentersProvider:(id)a4 viewControllerProvider:(id)a5;
- (BKRootBarItem)selectedItem;
- (BKRootBarStandardItemsProcessing)standardItemsManager;
- (BOOL)hasStandardItemWithIdentifier:(id)a3;
- (UINavigationController)selectedNavigationController;
- (UIViewController)hostingViewController;
- (UIViewController)selectedTopViewController;
- (id)coordinatedViewControllersFor:(id)a3;
- (id)currentTitleForRootBarItem:(id)a3;
- (id)donationTargets;
- (id)navigationControllerForIdentifier:(id)a3;
- (id)topViewControllerForIdentifier:(id)a3;
- (void)dismissCardStackForCurrentlySelected;
- (void)dockMiniPlayer:(id)a3;
- (void)presentFullPlayer:(id)a3 completion:(id)a4;
- (void)presentFullPlayerWithCompletion:(id)a3;
- (void)registerFullPlayer:(id)a3;
- (void)selectWithIdentifier:(id)a3 isUserAction:(BOOL)a4;
- (void)setIsMiniPlayerHidden:(BOOL)a3;
- (void)setMiniPlayerViewController:(id)a3;
- (void)undockMiniPlayer;
- (void)willMoveTo:(id)a3;
- (void)windowSceneTraitCollectionDidChangeFrom:(id)a3 to:(id)a4;
@end

@implementation BKRootBarCoordinator

- (BKRootBarCoordinator)initWithSceneController:(id)a3 presentersProvider:(id)a4 viewControllerProvider:(id)a5
{
  v7 = a3;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  return sub_10001EC5C(v7, a4, a5);
}

- (void)willMoveTo:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10002318C(v4);
}

- (void)windowSceneTraitCollectionDidChangeFrom:(id)a3 to:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1000257BC(v6, v7);
}

- (BKRootBarItem)selectedItem
{
  v2 = self;
  v3 = sub_100029810();

  return v3;
}

- (BKRootBarStandardItemsProcessing)standardItemsManager
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)setMiniPlayerViewController:(id)a3
{
  v6 = *(&self->super.isa + OBJC_IVAR___BKRootBarCoordinator_miniPlayerViewController);
  *(&self->super.isa + OBJC_IVAR___BKRootBarCoordinator_miniPlayerViewController) = a3;
  v4 = a3;
  v5 = self;
  sub_10023F940(v6);
}

- (void)setIsMiniPlayerHidden:(BOOL)a3
{
  v3 = *(&self->super.isa + OBJC_IVAR___BKRootBarCoordinator_isMiniPlayerHidden);
  *(&self->super.isa + OBJC_IVAR___BKRootBarCoordinator_isMiniPlayerHidden) = a3;
  v4 = self;
  sub_10023FACC(v3);
}

- (BKRootBarCoordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (UIViewController)hostingViewController
{
  v2 = *(&self->super.isa + OBJC_IVAR___BKRootBarCoordinator_activeRootBarKind);
  if ((v2 & 0x8000000000000000) != 0)
  {
    v2 = *(*((v2 & 0x7FFFFFFFFFFFFFFFLL) + OBJC_IVAR___BKSplitViewController_contentHostingController) + OBJC_IVAR___BKSplitViewContentHostingController_viewController);
  }

  return v2;
}

- (UINavigationController)selectedNavigationController
{
  v2 = self;
  v3 = sub_1002401E4();

  return v3;
}

- (UIViewController)selectedTopViewController
{
  v2 = self;
  v3 = sub_1002402D8();

  return v3;
}

- (void)selectWithIdentifier:(id)a3 isUserAction:(BOOL)a4
{
  v6 = sub_1007A2254();
  v8 = v7;
  v9 = self;
  sub_10024042C(v6, v8, a4);
}

- (BOOL)hasStandardItemWithIdentifier:(id)a3
{
  v4 = sub_1007A2254();
  v6 = v5;
  v7 = self;
  LOBYTE(v4) = sub_1002407E0(v4, v6);

  return v4 & 1;
}

- (id)navigationControllerForIdentifier:(id)a3
{
  v4 = sub_1007A2254();
  v6 = v5;
  v7 = self;
  v8 = sub_1002409BC(v4, v6);

  return v8;
}

- (id)topViewControllerForIdentifier:(id)a3
{
  v4 = sub_1007A2254();
  v6 = v5;
  v7 = *(&self->super.isa + OBJC_IVAR___BKRootBarCoordinator_activeRootBarKind);
  if ((v7 & 0x8000000000000000) != 0)
  {
    v12 = (v7 & 0x7FFFFFFFFFFFFFFFLL);
    v13 = *&v12[OBJC_IVAR___BKSplitViewController_contentHostingController];
    v14 = self;
    v15 = v12;
    v9 = v13;
    v16._countAndFlagsBits = v4;
    v16._object = v6;
    v11 = SplitViewContentHostingController.topViewController(forIdentifier:)(v16);
  }

  else
  {
    v8 = self;
    v9 = v7;
    v10._countAndFlagsBits = v4;
    v10._object = v6;
    v11 = TabBarController.topViewController(forIdentifier:)(v10);
  }

  return v11;
}

- (id)currentTitleForRootBarItem:(id)a3
{
  v4 = a3;
  v5 = self;
  RootBarItem.title.getter(v8);

  sub_100242AE0(v8);
  v6 = sub_1007A2214();

  return v6;
}

- (void)dismissCardStackForCurrentlySelected
{
  v2 = self;
  sub_100240D94();
}

- (void)dockMiniPlayer:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1002410E8(v4);
}

- (void)undockMiniPlayer
{
  v2 = self;
  sub_100241220();
}

- (void)presentFullPlayer:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  if (v6)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    v6 = sub_100242C8C;
  }

  else
  {
    v7 = 0;
  }

  v8 = a3;
  v9 = self;
  sub_100241310(v8, v6, v7);
  sub_100007020(v6);
}

- (void)presentFullPlayerWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
  if (v4)
  {
    v5 = v4;
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    v7 = sub_1002427EC;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v8 = self;
  sub_100241610(v7, v6);
  sub_100007020(v7);
}

- (void)registerFullPlayer:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR___BKRootBarCoordinator_fullPlayerViewController);
  *(&self->super.isa + OBJC_IVAR___BKRootBarCoordinator_fullPlayerViewController) = a3;
  v3 = a3;
}

- (id)coordinatedViewControllersFor:(id)a3
{
  sub_1001F1160(&qword_100AF7240);
  v3.super.isa = sub_1007A25D4().super.isa;

  return v3.super.isa;
}

- (id)donationTargets
{
  type metadata accessor for PresentationDonationTarget();
  v2.super.isa = sub_1007A25D4().super.isa;

  return v2.super.isa;
}

@end