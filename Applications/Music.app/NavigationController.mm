@interface NavigationController
- (NSArray)viewControllers;
- (UINavigationControllerDelegate)delegate;
- (_TtC5Music20NavigationController)initWithCoder:(id)coder;
- (_TtC5Music20NavigationController)initWithNavigationBarClass:(Class)class toolbarClass:(Class)toolbarClass;
- (_TtC5Music20NavigationController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtC5Music20NavigationController)initWithRootViewController:(id)controller;
- (void)attachPalette:(id)palette isPinned:(BOOL)pinned;
- (void)detachPalette:(id)palette;
- (void)navigationController:(id)controller didShowViewController:(id)viewController;
- (void)navigationController:(id)controller willShowViewController:(id)viewController animated:(BOOL)animated;
- (void)pushViewController:(id)controller animated:(BOOL)animated;
- (void)setDelegate:(id)delegate;
- (void)setViewControllers:(id)controllers;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation NavigationController

- (_TtC5Music20NavigationController)initWithRootViewController:(id)controller
{
  controllerCopy = controller;
  v5 = [(NavigationController *)self init];
  [(NavigationController *)v5 pushViewController:controllerCopy animated:0];

  return v5;
}

- (_TtC5Music20NavigationController)initWithNavigationBarClass:(Class)class toolbarClass:(Class)toolbarClass
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
    return sub_10003765C(ObjCClassMetadata, v6);
  }

  ObjCClassMetadata = swift_getObjCClassMetadata();
  if (!toolbarClass)
  {
    goto LABEL_5;
  }

LABEL_3:
  v6 = swift_getObjCClassMetadata();
  return sub_10003765C(ObjCClassMetadata, v6);
}

- (NSArray)viewControllers
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for NavigationController();
  v2 = v5.receiver;
  isa = [(NavigationController *)&v5 viewControllers];
  if (!isa)
  {
    sub_100009F78(0, &qword_101183D40);
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  return isa;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_100038A14();
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

- (UINavigationControllerDelegate)delegate
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for NavigationController();
  delegate = [(NavigationController *)&v4 delegate];

  return delegate;
}

- (void)navigationController:(id)controller willShowViewController:(id)viewController animated:(BOOL)animated
{
  animatedCopy = animated;
  viewControllerCopy = viewController;
  selfCopy = self;
  navigationItem = [viewControllerCopy navigationItem];
  v9 = sub_10005A544() & 1;

  if (v9 != [(NavigationController *)selfCopy isNavigationBarHidden])
  {
    [(NavigationController *)selfCopy setNavigationBarHidden:v9 animated:animatedCopy];
  }
}

- (void)viewDidLayoutSubviews
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for NavigationController();
  v2 = v6.receiver;
  [(NavigationController *)&v6 viewDidLayoutSubviews];
  topViewController = [v2 topViewController];
  if (topViewController)
  {
    v4 = topViewController;
    navigationItem = [topViewController navigationItem];
    sub_100796418(navigationItem);
  }
}

- (_TtC5Music20NavigationController)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC5Music20NavigationController__pushingViewController) = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC5Music20NavigationController_existingTopPalette) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)setViewControllers:(id)controllers
{
  sub_100009F78(0, &qword_101183D40);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_1007966E4(v4);
}

- (void)attachPalette:(id)palette isPinned:(BOOL)pinned
{
  paletteCopy = palette;
  selfCopy = self;
  sub_1007968E4(palette, pinned);
}

- (void)detachPalette:(id)palette
{
  paletteCopy = palette;
  selfCopy = self;
  sub_100796B34(palette);
}

- (void)pushViewController:(id)controller animated:(BOOL)animated
{
  controllerCopy = controller;
  selfCopy = self;
  sub_100796EB8(controllerCopy, animated);
}

- (void)navigationController:(id)controller didShowViewController:(id)viewController
{
  selfCopy = self;
  v5 = [(NavigationController *)selfCopy existingPaletteForEdge:2];
  v6 = *(&selfCopy->super.super.super.super.super.isa + OBJC_IVAR____TtC5Music20NavigationController_existingTopPalette);
  *(&selfCopy->super.super.super.super.super.isa + OBJC_IVAR____TtC5Music20NavigationController_existingTopPalette) = v5;
}

- (_TtC5Music20NavigationController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end