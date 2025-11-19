@interface BaseTabBarController
- (BOOL)isNowPlayingPresented;
- (NSMutableArray)mutableChildViewControllers;
- (_TtC12NowPlayingUI20BaseTabBarController)initWithTabs:(id)a3;
- (id)_viewControllersInTabBar;
- (void)_rebuildTabBarItemsAnimated:(BOOL)a3;
- (void)_setViewControllers:(id)a3 animated:(BOOL)a4;
- (void)_updateLayoutForTraitCollection:(id)a3;
- (void)setMutableChildViewControllers:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation BaseTabBarController

- (void)viewDidLoad
{
  v2 = self;
  BaseTabBarController.viewDidLoad()();
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  BaseTabBarController.viewDidLayoutSubviews()();
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  v9.is_nil = v6;
  v7 = v6;
  v9.value.super.isa = a3;
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

- (void)_setViewControllers:(id)a3 animated:(BOOL)a4
{
  sub_2B860(0, &qword_1C89D0);
  v6 = sub_1449DC();
  v7 = self;
  BaseTabBarController._setViewControllers(_:animated:)(v6, a4);
}

- (id)_viewControllersInTabBar
{
  v2 = self;
  BaseTabBarController._viewControllersInTabBar()();

  sub_2B860(0, &qword_1C89D0);
  v3.super.isa = sub_1449CC().super.isa;

  return v3.super.isa;
}

- (void)_rebuildTabBarItemsAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = OBJC_IVAR____TtC12NowPlayingUI20BaseTabBarController_isRebuildingTabBarItems;
  v6 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC12NowPlayingUI20BaseTabBarController_isRebuildingTabBarItems);
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC12NowPlayingUI20BaseTabBarController_isRebuildingTabBarItems) = 1;
  v8.receiver = self;
  v8.super_class = type metadata accessor for BaseTabBarController();
  v7 = v8.receiver;
  [(BaseTabBarController *)&v8 _rebuildTabBarItemsAnimated:v3];
  *(&self->super.super.super.super.isa + v5) = v6;
}

- (void)_updateLayoutForTraitCollection:(id)a3
{
  v5 = OBJC_IVAR____TtC12NowPlayingUI20BaseTabBarController_isRebuildingTabBarItems;
  v6 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC12NowPlayingUI20BaseTabBarController_isRebuildingTabBarItems);
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC12NowPlayingUI20BaseTabBarController_isRebuildingTabBarItems) = 1;
  v8.receiver = self;
  v8.super_class = type metadata accessor for BaseTabBarController();
  v7 = v8.receiver;
  [(BaseTabBarController *)&v8 _updateLayoutForTraitCollection:a3];
  *(&self->super.super.super.super.isa + v5) = v6;
}

- (NSMutableArray)mutableChildViewControllers
{
  v2 = self;
  v3 = BaseTabBarController.mutableChildViewControllers.getter();

  return v3;
}

- (void)setMutableChildViewControllers:(id)a3
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for BaseTabBarController();
  [(BaseTabBarController *)&v4 setMutableChildViewControllers:a3];
}

- (_TtC12NowPlayingUI20BaseTabBarController)initWithTabs:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end