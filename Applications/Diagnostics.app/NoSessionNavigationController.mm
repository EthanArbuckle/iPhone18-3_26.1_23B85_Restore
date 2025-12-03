@interface NoSessionNavigationController
- (_TtC11Diagnostics29NoSessionNavigationController)initWithCoder:(id)coder;
- (_TtC11Diagnostics29NoSessionNavigationController)initWithNavigationBarClass:(Class)class toolbarClass:(Class)toolbarClass;
- (_TtC11Diagnostics29NoSessionNavigationController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtC11Diagnostics29NoSessionNavigationController)initWithRootViewController:(id)controller;
- (void)viewDidLoad;
@end

@implementation NoSessionNavigationController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1001307F0();
}

- (_TtC11Diagnostics29NoSessionNavigationController)initWithNavigationBarClass:(Class)class toolbarClass:(Class)toolbarClass
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for NoSessionNavigationController();
  return [(NoSessionNavigationController *)&v7 initWithNavigationBarClass:class toolbarClass:toolbarClass];
}

- (_TtC11Diagnostics29NoSessionNavigationController)initWithRootViewController:(id)controller
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for NoSessionNavigationController();
  return [(NoSessionNavigationController *)&v5 initWithRootViewController:controller];
}

- (_TtC11Diagnostics29NoSessionNavigationController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    bundleCopy = bundle;
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    bundleCopy2 = bundle;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for NoSessionNavigationController();
  v9 = [(NoSessionNavigationController *)&v11 initWithNibName:v7 bundle:bundle];

  return v9;
}

- (_TtC11Diagnostics29NoSessionNavigationController)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for NoSessionNavigationController();
  coderCopy = coder;
  v5 = [(NoSessionNavigationController *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end