@interface BKRootBarCoordinator
- (BKRootBarCoordinator)init;
- (BKRootBarCoordinator)initWithSceneController:(id)controller presentersProvider:(id)provider viewControllerProvider:(id)controllerProvider;
- (BKRootBarItem)selectedItem;
- (BKRootBarStandardItemsProcessing)standardItemsManager;
- (BOOL)hasStandardItemWithIdentifier:(id)identifier;
- (UINavigationController)selectedNavigationController;
- (UIViewController)hostingViewController;
- (UIViewController)selectedTopViewController;
- (id)coordinatedViewControllersFor:(id)for;
- (id)currentTitleForRootBarItem:(id)item;
- (id)donationTargets;
- (id)navigationControllerForIdentifier:(id)identifier;
- (id)topViewControllerForIdentifier:(id)identifier;
- (void)dismissCardStackForCurrentlySelected;
- (void)dockMiniPlayer:(id)player;
- (void)presentFullPlayer:(id)player completion:(id)completion;
- (void)presentFullPlayerWithCompletion:(id)completion;
- (void)registerFullPlayer:(id)player;
- (void)selectWithIdentifier:(id)identifier isUserAction:(BOOL)action;
- (void)setIsMiniPlayerHidden:(BOOL)hidden;
- (void)setMiniPlayerViewController:(id)controller;
- (void)undockMiniPlayer;
- (void)willMoveTo:(id)to;
- (void)windowSceneTraitCollectionDidChangeFrom:(id)from to:(id)to;
@end

@implementation BKRootBarCoordinator

- (BKRootBarCoordinator)initWithSceneController:(id)controller presentersProvider:(id)provider viewControllerProvider:(id)controllerProvider
{
  controllerCopy = controller;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  return sub_10001EC5C(controllerCopy, provider, controllerProvider);
}

- (void)willMoveTo:(id)to
{
  toCopy = to;
  selfCopy = self;
  sub_10002318C(toCopy);
}

- (void)windowSceneTraitCollectionDidChangeFrom:(id)from to:(id)to
{
  fromCopy = from;
  toCopy = to;
  selfCopy = self;
  sub_1000257BC(fromCopy, toCopy);
}

- (BKRootBarItem)selectedItem
{
  selfCopy = self;
  v3 = sub_100029810();

  return v3;
}

- (BKRootBarStandardItemsProcessing)standardItemsManager
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)setMiniPlayerViewController:(id)controller
{
  v6 = *(&self->super.isa + OBJC_IVAR___BKRootBarCoordinator_miniPlayerViewController);
  *(&self->super.isa + OBJC_IVAR___BKRootBarCoordinator_miniPlayerViewController) = controller;
  controllerCopy = controller;
  selfCopy = self;
  sub_10023F940(v6);
}

- (void)setIsMiniPlayerHidden:(BOOL)hidden
{
  v3 = *(&self->super.isa + OBJC_IVAR___BKRootBarCoordinator_isMiniPlayerHidden);
  *(&self->super.isa + OBJC_IVAR___BKRootBarCoordinator_isMiniPlayerHidden) = hidden;
  selfCopy = self;
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
  selfCopy = self;
  v3 = sub_1002401E4();

  return v3;
}

- (UIViewController)selectedTopViewController
{
  selfCopy = self;
  v3 = sub_1002402D8();

  return v3;
}

- (void)selectWithIdentifier:(id)identifier isUserAction:(BOOL)action
{
  v6 = sub_1007A2254();
  v8 = v7;
  selfCopy = self;
  sub_10024042C(v6, v8, action);
}

- (BOOL)hasStandardItemWithIdentifier:(id)identifier
{
  v4 = sub_1007A2254();
  v6 = v5;
  selfCopy = self;
  LOBYTE(v4) = sub_1002407E0(v4, v6);

  return v4 & 1;
}

- (id)navigationControllerForIdentifier:(id)identifier
{
  v4 = sub_1007A2254();
  v6 = v5;
  selfCopy = self;
  v8 = sub_1002409BC(v4, v6);

  return v8;
}

- (id)topViewControllerForIdentifier:(id)identifier
{
  v4 = sub_1007A2254();
  v6 = v5;
  v7 = *(&self->super.isa + OBJC_IVAR___BKRootBarCoordinator_activeRootBarKind);
  if ((v7 & 0x8000000000000000) != 0)
  {
    v12 = (v7 & 0x7FFFFFFFFFFFFFFFLL);
    v13 = *&v12[OBJC_IVAR___BKSplitViewController_contentHostingController];
    selfCopy = self;
    v15 = v12;
    v9 = v13;
    v16._countAndFlagsBits = v4;
    v16._object = v6;
    v11 = SplitViewContentHostingController.topViewController(forIdentifier:)(v16);
  }

  else
  {
    selfCopy2 = self;
    v9 = v7;
    v10._countAndFlagsBits = v4;
    v10._object = v6;
    v11 = TabBarController.topViewController(forIdentifier:)(v10);
  }

  return v11;
}

- (id)currentTitleForRootBarItem:(id)item
{
  itemCopy = item;
  selfCopy = self;
  RootBarItem.title.getter(v8);

  sub_100242AE0(v8);
  v6 = sub_1007A2214();

  return v6;
}

- (void)dismissCardStackForCurrentlySelected
{
  selfCopy = self;
  sub_100240D94();
}

- (void)dockMiniPlayer:(id)player
{
  playerCopy = player;
  selfCopy = self;
  sub_1002410E8(playerCopy);
}

- (void)undockMiniPlayer
{
  selfCopy = self;
  sub_100241220();
}

- (void)presentFullPlayer:(id)player completion:(id)completion
{
  v6 = _Block_copy(completion);
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

  playerCopy = player;
  selfCopy = self;
  sub_100241310(playerCopy, v6, v7);
  sub_100007020(v6);
}

- (void)presentFullPlayerWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
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

  selfCopy = self;
  sub_100241610(v7, v6);
  sub_100007020(v7);
}

- (void)registerFullPlayer:(id)player
{
  v4 = *(&self->super.isa + OBJC_IVAR___BKRootBarCoordinator_fullPlayerViewController);
  *(&self->super.isa + OBJC_IVAR___BKRootBarCoordinator_fullPlayerViewController) = player;
  playerCopy = player;
}

- (id)coordinatedViewControllersFor:(id)for
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