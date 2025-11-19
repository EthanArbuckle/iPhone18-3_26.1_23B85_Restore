@interface UIKitNavigationController
- (NSArray)_swiftui_viewControllers;
- (_TtC7SwiftUI25UIKitNavigationController)initWithNavigationBarClass:(Class)a3 toolbarClass:(Class)a4;
- (_TtC7SwiftUI25UIKitNavigationController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)_observeScrollViewDidScroll:(id)a3;
- (void)_observeScrollViewGeometryAffectingContentBottomDidChange:(id)a3;
- (void)_swiftui_pushViewController:(id)a3 animated:(BOOL)a4;
- (void)_swiftui_setViewControllers:(id)a3;
- (void)_swiftui_setViewControllers:(id)a3 animated:(BOOL)a4;
- (void)pushViewController:(id)a3 animated:(BOOL)a4;
- (void)setViewControllers:(id)a3 animated:(BOOL)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation UIKitNavigationController

- (void)setViewControllers:(id)a3 animated:(BOOL)a4
{
  type metadata accessor for UIViewController();
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = self;
  UIKitNavigationController.setViewControllers(_:animated:)(v6, a4);
}

- (void)viewWillLayoutSubviews
{
  v2 = self;
  UIKitNavigationController.viewWillLayoutSubviews()();
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v7.receiver = self;
  v7.super_class = type metadata accessor for UIKitNavigationController();
  v4 = v7.receiver;
  [(UIKitNavigationController *)&v7 viewDidAppear:v3];
  if (![v4 delegate])
  {
    goto LABEL_4;
  }

  ObjectType = swift_getObjectType();
  v6 = swift_conformsToProtocol2();
  if (v6)
  {
    (*(v6 + 8))(v4, v3, ObjectType, v6);
    swift_unknownObjectRelease();
LABEL_4:

    return;
  }

  swift_unknownObjectRelease();
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  swift_unknownObjectRetain();
  v8 = self;
  UIKitNavigationController.viewWillTransition(to:with:)(a4, width, height);
  swift_unknownObjectRelease();
}

- (void)_observeScrollViewDidScroll:(id)a3
{
  v4 = a3;
  v5 = self;
  UIKitNavigationController._observeScrollViewDidScroll(_:)(v4);
}

- (void)_observeScrollViewGeometryAffectingContentBottomDidChange:(id)a3
{
  v4 = a3;
  v5 = self;
  UIKitNavigationController._observeScrollViewGeometryAffectingContentBottomDidChange(_:)(v4);
}

- (void)pushViewController:(id)a3 animated:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  UIKitNavigationController.pushViewController(_:animated:)(v6, a4);
}

- (NSArray)_swiftui_viewControllers
{
  v2 = self;
  isa = [(UIKitNavigationController *)v2 viewControllers];
  if (!isa)
  {
    type metadata accessor for UIViewController();
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  return isa;
}

- (void)_swiftui_setViewControllers:(id)a3
{
  v5 = OBJC_IVAR____TtC7SwiftUI25UIKitNavigationController_allowsNavigationControllerMutations;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC7SwiftUI25UIKitNavigationController_allowsNavigationControllerMutations) = 1;
  v6 = self;
  [(UIKitNavigationController *)v6 setViewControllers:a3];
  *(&self->super.super.super.super.isa + v5) = 0;
}

- (void)_swiftui_setViewControllers:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v7 = OBJC_IVAR____TtC7SwiftUI25UIKitNavigationController_allowsNavigationControllerMutations;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC7SwiftUI25UIKitNavigationController_allowsNavigationControllerMutations) = 1;
  v8 = self;
  [(UIKitNavigationController *)v8 setViewControllers:a3 animated:v4];
  *(&self->super.super.super.super.isa + v7) = 0;
}

- (void)_swiftui_pushViewController:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v7 = OBJC_IVAR____TtC7SwiftUI25UIKitNavigationController_allowsNavigationControllerMutations;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC7SwiftUI25UIKitNavigationController_allowsNavigationControllerMutations) = 1;
  v8 = self;
  [(UIKitNavigationController *)v8 pushViewController:a3 animated:v4];
  *(&self->super.super.super.super.isa + v7) = 0;
}

- (_TtC7SwiftUI25UIKitNavigationController)initWithNavigationBarClass:(Class)a3 toolbarClass:(Class)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC7SwiftUI25UIKitNavigationController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end