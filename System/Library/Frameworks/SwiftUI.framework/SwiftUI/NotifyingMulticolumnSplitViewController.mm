@interface NotifyingMulticolumnSplitViewController
- (UIViewController)childViewControllerForStatusBarHidden;
- (_TtC7SwiftUI39NotifyingMulticolumnSplitViewController)initWithCoder:(id)coder;
- (_TtC7SwiftUI39NotifyingMulticolumnSplitViewController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtC7SwiftUI39NotifyingMulticolumnSplitViewController)initWithStyle:(int64_t)style;
- (id)makeDetailNavigationControllerWithRoot:(id)root;
- (void)showDetailViewController:(id)controller sender:(id)sender;
@end

@implementation NotifyingMulticolumnSplitViewController

- (void)showDetailViewController:(id)controller sender:(id)sender
{
  if (sender)
  {
    controllerCopy = controller;
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    controllerCopy2 = controller;
    selfCopy2 = self;
  }

  NotifyingMulticolumnSplitViewController.showDetailViewController(_:sender:)(controller, v10);

  outlined destroy of Any?(v10);
}

- (id)makeDetailNavigationControllerWithRoot:(id)root
{
  type metadata accessor for StyleContextSplitViewNavigationController<NoStyleContext>(0, &lazy cache variable for type metadata for StyleContextSplitViewNavigationController<NoStyleContext>, MEMORY[0x1E697E428], MEMORY[0x1E697E420], type metadata accessor for StyleContextSplitViewNavigationController);
  initWithRootViewController_ = [objc_allocWithZone(v4) initWithRootViewController_];

  return initWithRootViewController_;
}

- (UIViewController)childViewControllerForStatusBarHidden
{
  selfCopy = self;
  v3 = NotifyingMulticolumnSplitViewController.childForStatusBarHidden.getter();

  return v3;
}

- (_TtC7SwiftUI39NotifyingMulticolumnSplitViewController)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  coderCopy = coder;
  v5 = [(NotifyingMulticolumnSplitViewController *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

- (_TtC7SwiftUI39NotifyingMulticolumnSplitViewController)initWithNibName:(id)name bundle:(id)bundle
{
  ObjectType = swift_getObjectType();
  if (name)
  {
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;
    bundleCopy = bundle;
    name = MEMORY[0x18D00C850](v8, v10);
  }

  else
  {
    bundleCopy2 = bundle;
  }

  v15.receiver = self;
  v15.super_class = ObjectType;
  v13 = [(NotifyingMulticolumnSplitViewController *)&v15 initWithNibName:name bundle:bundle];

  return v13;
}

- (_TtC7SwiftUI39NotifyingMulticolumnSplitViewController)initWithStyle:(int64_t)style
{
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  return [(NotifyingMulticolumnSplitViewController *)&v5 initWithStyle:style];
}

@end