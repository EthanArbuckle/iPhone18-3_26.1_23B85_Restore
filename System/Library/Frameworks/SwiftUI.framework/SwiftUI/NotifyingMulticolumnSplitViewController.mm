@interface NotifyingMulticolumnSplitViewController
- (UIViewController)childViewControllerForStatusBarHidden;
- (_TtC7SwiftUI39NotifyingMulticolumnSplitViewController)initWithCoder:(id)a3;
- (_TtC7SwiftUI39NotifyingMulticolumnSplitViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (_TtC7SwiftUI39NotifyingMulticolumnSplitViewController)initWithStyle:(int64_t)a3;
- (id)makeDetailNavigationControllerWithRoot:(id)a3;
- (void)showDetailViewController:(id)a3 sender:(id)a4;
@end

@implementation NotifyingMulticolumnSplitViewController

- (void)showDetailViewController:(id)a3 sender:(id)a4
{
  if (a4)
  {
    v6 = a3;
    v7 = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    v8 = a3;
    v9 = self;
  }

  NotifyingMulticolumnSplitViewController.showDetailViewController(_:sender:)(a3, v10);

  outlined destroy of Any?(v10);
}

- (id)makeDetailNavigationControllerWithRoot:(id)a3
{
  type metadata accessor for StyleContextSplitViewNavigationController<NoStyleContext>(0, &lazy cache variable for type metadata for StyleContextSplitViewNavigationController<NoStyleContext>, MEMORY[0x1E697E428], MEMORY[0x1E697E420], type metadata accessor for StyleContextSplitViewNavigationController);
  v5 = [objc_allocWithZone(v4) initWithRootViewController_];

  return v5;
}

- (UIViewController)childViewControllerForStatusBarHidden
{
  v2 = self;
  v3 = NotifyingMulticolumnSplitViewController.childForStatusBarHidden.getter();

  return v3;
}

- (_TtC7SwiftUI39NotifyingMulticolumnSplitViewController)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v4 = a3;
  v5 = [(NotifyingMulticolumnSplitViewController *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

- (_TtC7SwiftUI39NotifyingMulticolumnSplitViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  ObjectType = swift_getObjectType();
  if (a3)
  {
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;
    v11 = a4;
    a3 = MEMORY[0x18D00C850](v8, v10);
  }

  else
  {
    v12 = a4;
  }

  v15.receiver = self;
  v15.super_class = ObjectType;
  v13 = [(NotifyingMulticolumnSplitViewController *)&v15 initWithNibName:a3 bundle:a4];

  return v13;
}

- (_TtC7SwiftUI39NotifyingMulticolumnSplitViewController)initWithStyle:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  return [(NotifyingMulticolumnSplitViewController *)&v5 initWithStyle:a3];
}

@end