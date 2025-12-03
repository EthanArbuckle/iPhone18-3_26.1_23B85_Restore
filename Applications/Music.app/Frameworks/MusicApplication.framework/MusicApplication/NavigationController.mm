@interface NavigationController
- (NSArray)viewControllers;
- (UINavigationControllerDelegate)delegate;
- (_TtC16MusicApplication20NavigationController)initWithCoder:(id)coder;
- (_TtC16MusicApplication20NavigationController)initWithNavigationBarClass:(Class)class toolbarClass:(Class)toolbarClass;
- (_TtC16MusicApplication20NavigationController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtC16MusicApplication20NavigationController)initWithRootViewController:(id)controller;
- (void)attachPalette:(id)palette isPinned:(BOOL)pinned;
- (void)detachPalette:(id)palette;
- (void)navigationController:(id)controller didShowViewController:(id)viewController;
- (void)navigationController:(id)controller willShowViewController:(id)viewController animated:(BOOL)animated;
- (void)pushViewController:(id)controller animated:(BOOL)animated;
- (void)pushViewController:(id)controller overrideTraitCollection:(id)collection animated:(BOOL)animated;
- (void)setDelegate:(id)delegate;
- (void)setViewControllers:(id)controllers;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation NavigationController

- (_TtC16MusicApplication20NavigationController)initWithRootViewController:(id)controller
{
  controllerCopy = controller;
  v5 = [(NavigationController *)self init];
  [(NavigationController *)v5 pushViewController:controllerCopy animated:0];

  return v5;
}

- (_TtC16MusicApplication20NavigationController)initWithNavigationBarClass:(Class)class toolbarClass:(Class)toolbarClass
{
  if (!class)
  {
    ObjCClassMetadata = 0;
    if (toolbarClass)
    {
      goto LABEL_3;
    }

LABEL_5:
    v6 = 0;
    return sub_18D3D8(ObjCClassMetadata, v6);
  }

  ObjCClassMetadata = swift_getObjCClassMetadata();
  if (!toolbarClass)
  {
    goto LABEL_5;
  }

LABEL_3:
  v6 = swift_getObjCClassMetadata();
  return sub_18D3D8(ObjCClassMetadata, v6);
}

- (_TtC16MusicApplication20NavigationController)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC16MusicApplication20NavigationController__pushingViewController) = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC16MusicApplication20NavigationController_existingTopPalette) = 0;
  result = sub_ABAFD0();
  __break(1u);
  return result;
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  sub_18D540();
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_18D824();
}

- (UINavigationControllerDelegate)delegate
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for NavigationController();
  delegate = [(NavigationController *)&v4 delegate];

  return delegate;
}

- (void)setDelegate:(id)delegate
{
  if (delegate)
  {
    if (delegate == self)
    {
      v4.receiver = self;
      v4.super_class = type metadata accessor for NavigationController();
      [(NavigationController *)&v4 setDelegate:delegate];
    }
  }
}

- (NSArray)viewControllers
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for NavigationController();
  v2 = v6.receiver;
  viewControllers = [(NavigationController *)&v6 viewControllers];
  if (viewControllers)
  {
    isa = viewControllers;
  }

  else
  {
    sub_13C80(0, &qword_DE7500);
    sub_AB9760();
    isa = sub_AB9740().super.isa;
  }

  return isa;
}

- (void)setViewControllers:(id)controllers
{
  sub_13C80(0, &qword_DE7500);
  v5 = sub_AB9760();
  controllersCopy = controllers;
  selfCopy = self;
  sub_18EF2C(v5);
}

- (void)attachPalette:(id)palette isPinned:(BOOL)pinned
{
  paletteCopy = palette;
  selfCopy = self;
  sub_18DB6C(palette, pinned);
}

- (void)detachPalette:(id)palette
{
  paletteCopy = palette;
  selfCopy = self;
  sub_18DDBC(palette);
}

- (void)pushViewController:(id)controller animated:(BOOL)animated
{
  controllerCopy = controller;
  selfCopy = self;
  sub_18E140(controllerCopy, animated);
}

- (void)pushViewController:(id)controller overrideTraitCollection:(id)collection animated:(BOOL)animated
{
  controllerCopy = controller;
  collectionCopy = collection;
  selfCopy = self;
  sub_18E27C(controllerCopy, collection, animated);
}

- (void)navigationController:(id)controller willShowViewController:(id)viewController animated:(BOOL)animated
{
  animatedCopy = animated;
  viewControllerCopy = viewController;
  selfCopy = self;
  navigationItem = [viewControllerCopy navigationItem];
  v10 = sub_38720C() & 1;

  if (v10 != [(NavigationController *)selfCopy isNavigationBarHidden])
  {
    [(NavigationController *)selfCopy setNavigationBarHidden:v10 animated:animatedCopy];
  }

  navigationItem2 = [viewControllerCopy navigationItem];
  traitCollection = [viewControllerCopy traitCollection];
  sub_18EA30(navigationItem2);
}

- (void)navigationController:(id)controller didShowViewController:(id)viewController
{
  selfCopy = self;
  v5 = [(NavigationController *)selfCopy existingPaletteForEdge:2];
  v6 = *(&selfCopy->super.super.super.super.super.isa + OBJC_IVAR____TtC16MusicApplication20NavigationController_existingTopPalette);
  *(&selfCopy->super.super.super.super.super.isa + OBJC_IVAR____TtC16MusicApplication20NavigationController_existingTopPalette) = v5;
}

- (_TtC16MusicApplication20NavigationController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end