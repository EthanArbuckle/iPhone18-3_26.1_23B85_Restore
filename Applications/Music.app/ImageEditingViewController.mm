@interface ImageEditingViewController
- (_TtC11MusicCoreUI26ImageEditingViewController)initWithCoder:(id)coder;
- (_TtC11MusicCoreUI26ImageEditingViewController)initWithNavigationBarClass:(Class)class toolbarClass:(Class)toolbarClass;
- (_TtC11MusicCoreUI26ImageEditingViewController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtC11MusicCoreUI26ImageEditingViewController)initWithRootViewController:(id)controller;
@end

@implementation ImageEditingViewController

- (_TtC11MusicCoreUI26ImageEditingViewController)initWithNavigationBarClass:(Class)class toolbarClass:(Class)toolbarClass
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for ImageEditingViewController();
  return [(ImageEditingViewController *)&v7 initWithNavigationBarClass:class toolbarClass:toolbarClass];
}

- (_TtC11MusicCoreUI26ImageEditingViewController)initWithRootViewController:(id)controller
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for ImageEditingViewController();
  return [(ImageEditingViewController *)&v5 initWithRootViewController:controller];
}

- (_TtC11MusicCoreUI26ImageEditingViewController)initWithNibName:(id)name bundle:(id)bundle
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
  v11.super_class = type metadata accessor for ImageEditingViewController();
  v9 = [(ImageEditingViewController *)&v11 initWithNibName:v7 bundle:bundle];

  return v9;
}

- (_TtC11MusicCoreUI26ImageEditingViewController)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for ImageEditingViewController();
  coderCopy = coder;
  v5 = [(ImageEditingViewController *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end