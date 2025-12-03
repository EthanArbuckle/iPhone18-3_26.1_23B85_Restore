@interface BaseTabBarController
- (BOOL)isNowPlayingPresented;
- (NSMutableArray)mutableChildViewControllers;
- (_TtC12NowPlayingUI20BaseTabBarController)initWithTabs:(id)tabs;
- (id)_viewControllersInTabBar;
- (void)_rebuildTabBarItemsAnimated:(BOOL)animated;
- (void)_setViewControllers:(id)controllers animated:(BOOL)animated;
- (void)_updateLayoutForTraitCollection:(id)collection;
- (void)setMutableChildViewControllers:(id)controllers;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation BaseTabBarController

- (void)viewDidLoad
{
  selfCopy = self;
  BaseTabBarController.viewDidLoad()();
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  BaseTabBarController.viewDidLayoutSubviews()();
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  v9.is_nil = selfCopy;
  v7 = selfCopy;
  v9.value.super.isa = change;
  BaseTabBarController.traitCollectionDidChange(_:)(v9);
}

- (BOOL)isNowPlayingPresented
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v3 = Strong;
  if (Strong)
  {
  }

  return v3 != 0;
}

- (void)_setViewControllers:(id)controllers animated:(BOOL)animated
{
  sub_2B860(0, &qword_1C89D0);
  v6 = sub_1449DC();
  selfCopy = self;
  BaseTabBarController._setViewControllers(_:animated:)(v6, animated);
}

- (id)_viewControllersInTabBar
{
  selfCopy = self;
  BaseTabBarController._viewControllersInTabBar()();

  sub_2B860(0, &qword_1C89D0);
  v3.super.isa = sub_1449CC().super.isa;

  return v3.super.isa;
}

- (void)_rebuildTabBarItemsAnimated:(BOOL)animated
{
  animatedCopy = animated;
  v5 = OBJC_IVAR____TtC12NowPlayingUI20BaseTabBarController_isRebuildingTabBarItems;
  v6 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC12NowPlayingUI20BaseTabBarController_isRebuildingTabBarItems);
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC12NowPlayingUI20BaseTabBarController_isRebuildingTabBarItems) = 1;
  v8.receiver = self;
  v8.super_class = type metadata accessor for BaseTabBarController();
  v7 = v8.receiver;
  [(BaseTabBarController *)&v8 _rebuildTabBarItemsAnimated:animatedCopy];
  *(&self->super.super.super.super.isa + v5) = v6;
}

- (void)_updateLayoutForTraitCollection:(id)collection
{
  v5 = OBJC_IVAR____TtC12NowPlayingUI20BaseTabBarController_isRebuildingTabBarItems;
  v6 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC12NowPlayingUI20BaseTabBarController_isRebuildingTabBarItems);
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC12NowPlayingUI20BaseTabBarController_isRebuildingTabBarItems) = 1;
  v8.receiver = self;
  v8.super_class = type metadata accessor for BaseTabBarController();
  v7 = v8.receiver;
  [(BaseTabBarController *)&v8 _updateLayoutForTraitCollection:collection];
  *(&self->super.super.super.super.isa + v5) = v6;
}

- (NSMutableArray)mutableChildViewControllers
{
  selfCopy = self;
  v3 = BaseTabBarController.mutableChildViewControllers.getter();

  return v3;
}

- (void)setMutableChildViewControllers:(id)controllers
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for BaseTabBarController();
  [(BaseTabBarController *)&v4 setMutableChildViewControllers:controllers];
}

- (_TtC12NowPlayingUI20BaseTabBarController)initWithTabs:(id)tabs
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end