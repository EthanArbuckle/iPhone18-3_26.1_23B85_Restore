@interface UIKitNavigationController
- (NSArray)_swiftui_viewControllers;
- (_TtC7SwiftUI25UIKitNavigationController)initWithNavigationBarClass:(Class)class toolbarClass:(Class)toolbarClass;
- (_TtC7SwiftUI25UIKitNavigationController)initWithNibName:(id)name bundle:(id)bundle;
- (void)_observeScrollViewDidScroll:(id)scroll;
- (void)_observeScrollViewGeometryAffectingContentBottomDidChange:(id)change;
- (void)_swiftui_pushViewController:(id)controller animated:(BOOL)animated;
- (void)_swiftui_setViewControllers:(id)controllers;
- (void)_swiftui_setViewControllers:(id)controllers animated:(BOOL)animated;
- (void)pushViewController:(id)controller animated:(BOOL)animated;
- (void)setViewControllers:(id)controllers animated:(BOOL)animated;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation UIKitNavigationController

- (void)setViewControllers:(id)controllers animated:(BOOL)animated
{
  type metadata accessor for UIViewController();
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  UIKitNavigationController.setViewControllers(_:animated:)(v6, animated);
}

- (void)viewWillLayoutSubviews
{
  selfCopy = self;
  UIKitNavigationController.viewWillLayoutSubviews()();
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v7.receiver = self;
  v7.super_class = type metadata accessor for UIKitNavigationController();
  v4 = v7.receiver;
  [(UIKitNavigationController *)&v7 viewDidAppear:appearCopy];
  if (![v4 delegate])
  {
    goto LABEL_4;
  }

  ObjectType = swift_getObjectType();
  v6 = swift_conformsToProtocol2();
  if (v6)
  {
    (*(v6 + 8))(v4, appearCopy, ObjectType, v6);
    swift_unknownObjectRelease();
LABEL_4:

    return;
  }

  swift_unknownObjectRelease();
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  swift_unknownObjectRetain();
  selfCopy = self;
  UIKitNavigationController.viewWillTransition(to:with:)(coordinator, width, height);
  swift_unknownObjectRelease();
}

- (void)_observeScrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  selfCopy = self;
  UIKitNavigationController._observeScrollViewDidScroll(_:)(scrollCopy);
}

- (void)_observeScrollViewGeometryAffectingContentBottomDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  UIKitNavigationController._observeScrollViewGeometryAffectingContentBottomDidChange(_:)(changeCopy);
}

- (void)pushViewController:(id)controller animated:(BOOL)animated
{
  controllerCopy = controller;
  selfCopy = self;
  UIKitNavigationController.pushViewController(_:animated:)(controllerCopy, animated);
}

- (NSArray)_swiftui_viewControllers
{
  selfCopy = self;
  isa = [(UIKitNavigationController *)selfCopy viewControllers];
  if (!isa)
  {
    type metadata accessor for UIViewController();
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  return isa;
}

- (void)_swiftui_setViewControllers:(id)controllers
{
  v5 = OBJC_IVAR____TtC7SwiftUI25UIKitNavigationController_allowsNavigationControllerMutations;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC7SwiftUI25UIKitNavigationController_allowsNavigationControllerMutations) = 1;
  selfCopy = self;
  [(UIKitNavigationController *)selfCopy setViewControllers:controllers];
  *(&self->super.super.super.super.isa + v5) = 0;
}

- (void)_swiftui_setViewControllers:(id)controllers animated:(BOOL)animated
{
  animatedCopy = animated;
  v7 = OBJC_IVAR____TtC7SwiftUI25UIKitNavigationController_allowsNavigationControllerMutations;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC7SwiftUI25UIKitNavigationController_allowsNavigationControllerMutations) = 1;
  selfCopy = self;
  [(UIKitNavigationController *)selfCopy setViewControllers:controllers animated:animatedCopy];
  *(&self->super.super.super.super.isa + v7) = 0;
}

- (void)_swiftui_pushViewController:(id)controller animated:(BOOL)animated
{
  animatedCopy = animated;
  v7 = OBJC_IVAR____TtC7SwiftUI25UIKitNavigationController_allowsNavigationControllerMutations;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC7SwiftUI25UIKitNavigationController_allowsNavigationControllerMutations) = 1;
  selfCopy = self;
  [(UIKitNavigationController *)selfCopy pushViewController:controller animated:animatedCopy];
  *(&self->super.super.super.super.isa + v7) = 0;
}

- (_TtC7SwiftUI25UIKitNavigationController)initWithNavigationBarClass:(Class)class toolbarClass:(Class)toolbarClass
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC7SwiftUI25UIKitNavigationController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end