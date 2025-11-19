@interface MiniPlayerHostingTabBarController
- (BKDockableMiniPlayer)miniPlayerViewController;
- (NSArray)viewControllers;
- (NSMutableArray)mutableChildViewControllers;
- (_TtC5Books33MiniPlayerHostingTabBarController)initWithNibName:(id)a3 bundle:(id)a4;
- (_TtC5Books33MiniPlayerHostingTabBarController)initWithTabs:(id)a3;
- (id)_viewControllersInTabBar;
- (void)_rebuildTabBarItemsAnimated:(BOOL)a3;
- (void)_updateLayoutForTraitCollection:(id)a3;
- (void)bc_setPreferredTabBarScrollEdgeAppearance:(id)a3;
- (void)dockMiniPlayer:(id)a3;
- (void)setMiniPlayerViewController:(id)a3;
- (void)setMutableChildViewControllers:(id)a3;
- (void)setViewControllers:(id)a3;
- (void)undockMiniPlayer;
- (void)viewDidLayoutSubviews;
- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation MiniPlayerHostingTabBarController

- (_TtC5Books33MiniPlayerHostingTabBarController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    v5 = sub_1007A2254();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return MiniPlayerHostingTabBarController.init(nibName:bundle:)(v5, v7, a4);
}

- (void)_updateLayoutForTraitCollection:(id)a3
{
  v5 = OBJC_IVAR____TtC5Books33MiniPlayerHostingTabBarController_isRebuildingTabBarItems;
  v6 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC5Books33MiniPlayerHostingTabBarController_isRebuildingTabBarItems);
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC5Books33MiniPlayerHostingTabBarController_isRebuildingTabBarItems) = 1;
  v8.receiver = self;
  v8.super_class = type metadata accessor for MiniPlayerHostingTabBarController();
  v7 = v8.receiver;
  [(MiniPlayerHostingTabBarController *)&v8 _updateLayoutForTraitCollection:a3];
  *(&self->super.super.super.super.isa + v5) = v6;
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = type metadata accessor for MiniPlayerHostingTabBarController();
  v4 = v5.receiver;
  [(MiniPlayerHostingTabBarController *)&v5 viewWillAppear:v3];
  sub_100023FDC(v3);
}

- (NSArray)viewControllers
{
  v2 = self;
  MiniPlayerHostingTabBarController.viewControllers.getter();
  v4 = v3;

  if (v4)
  {
    sub_10000A7C4(0, &qword_100AD7CB0);
    v5.super.isa = sub_1007A25D4().super.isa;
  }

  else
  {
    v5.super.isa = 0;
  }

  return v5.super.isa;
}

- (NSMutableArray)mutableChildViewControllers
{
  v2 = self;
  v3 = MiniPlayerHostingTabBarController.mutableChildViewControllers.getter();

  return v3;
}

- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4
{
  v4 = self;
  _s5Books33MiniPlayerHostingTabBarControllerC11viewDidMove2to23shouldAppearOrDisappearySo8UIWindowCSg_SbtF_0();
}

- (void)_rebuildTabBarItemsAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = OBJC_IVAR____TtC5Books33MiniPlayerHostingTabBarController_isRebuildingTabBarItems;
  v6 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC5Books33MiniPlayerHostingTabBarController_isRebuildingTabBarItems);
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC5Books33MiniPlayerHostingTabBarController_isRebuildingTabBarItems) = 1;
  v8.receiver = self;
  v8.super_class = type metadata accessor for MiniPlayerHostingTabBarController();
  v7 = v8.receiver;
  [(MiniPlayerHostingTabBarController *)&v8 _rebuildTabBarItemsAnimated:v3];
  *(&self->super.super.super.super.isa + v5) = v6;
}

- (id)_viewControllersInTabBar
{
  v2 = self;
  MiniPlayerHostingTabBarController._viewControllersInTabBar()();

  sub_10000A7C4(0, &qword_100AD7CB0);
  v3.super.isa = sub_1007A25D4().super.isa;

  return v3.super.isa;
}

- (void)viewDidLayoutSubviews
{
  v20.receiver = self;
  v20.super_class = type metadata accessor for MiniPlayerHostingTabBarController();
  v2 = v20.receiver;
  [(MiniPlayerHostingTabBarController *)&v20 viewDidLayoutSubviews];
  v3 = sub_100021C08();
  v5 = v4;
  ObjectType = swift_getObjectType();
  v7 = [v2 tabBar];
  [v7 frame];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v21.origin.x = v9;
  v21.origin.y = v11;
  v21.size.width = v13;
  v21.size.height = v15;
  Height = CGRectGetHeight(v21);
  v17 = (*(v5 + 32))(v19, ObjectType, v5);
  *(v18 + 16) = Height;
  v17(v19, 0);

  _s5Books33MiniPlayerHostingTabBarControllerC11viewDidMove2to23shouldAppearOrDisappearySo8UIWindowCSg_SbtF_0();
}

- (void)bc_setPreferredTabBarScrollEdgeAppearance:(id)a3
{
  v6 = a3;
  v5 = self;
  sub_10058C820(a3);
}

- (BKDockableMiniPlayer)miniPlayerViewController
{
  v3 = OBJC_IVAR____TtC5Books33MiniPlayerHostingTabBarController_miniPlayerViewController;
  swift_beginAccess();
  return *(&self->super.super.super.super.isa + v3);
}

- (void)setMiniPlayerViewController:(id)a3
{
  v5 = OBJC_IVAR____TtC5Books33MiniPlayerHostingTabBarController_miniPlayerViewController;
  swift_beginAccess();
  v6 = *(&self->super.super.super.super.isa + v5);
  *(&self->super.super.super.super.isa + v5) = a3;
  v7 = a3;
  v8 = self;
  sub_100583104(v6);
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = type metadata accessor for MiniPlayerHostingTabBarController();
  v4 = v5.receiver;
  [(MiniPlayerHostingTabBarController *)&v5 viewWillDisappear:v3];
  sub_100023FDC(v3 | 0x40);
}

- (void)setViewControllers:(id)a3
{
  isa = a3;
  if (a3)
  {
    sub_10000A7C4(0, &qword_100AD7CB0);
    sub_1007A25E4();
    v5 = self;
    isa = sub_1007A25D4().super.isa;
  }

  else
  {
    v6 = self;
  }

  v7.receiver = self;
  v7.super_class = type metadata accessor for MiniPlayerHostingTabBarController();
  [(MiniPlayerHostingTabBarController *)&v7 setViewControllers:isa];
}

- (void)setMutableChildViewControllers:(id)a3
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for MiniPlayerHostingTabBarController();
  [(MiniPlayerHostingTabBarController *)&v4 setMutableChildViewControllers:a3];
}

- (_TtC5Books33MiniPlayerHostingTabBarController)initWithTabs:(id)a3
{
  sub_10000A7C4(0, &qword_100AEB148);
  sub_1007A25E4();
  return MiniPlayerHostingTabBarController.init(tabs:)();
}

- (void)dockMiniPlayer:(id)a3
{
  v4 = a3;
  v5 = self;
  MiniPlayerHostingTabBarController.dockMiniPlayer(_:)(v4);
}

- (void)undockMiniPlayer
{
  v3 = OBJC_IVAR____TtC5Books33MiniPlayerHostingTabBarController_miniPlayerViewController;
  swift_beginAccess();
  v4 = *(&self->super.super.super.super.isa + v3);
  *(&self->super.super.super.super.isa + v3) = 0;
  v5 = self;
  sub_100583104(v4);
}

@end