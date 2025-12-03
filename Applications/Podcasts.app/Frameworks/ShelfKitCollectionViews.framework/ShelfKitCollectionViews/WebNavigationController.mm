@interface WebNavigationController
- (_TtC23ShelfKitCollectionViews23WebNavigationController)initWithCoder:(id)coder;
- (_TtC23ShelfKitCollectionViews23WebNavigationController)initWithNavigationBarClass:(Class)class toolbarClass:(Class)toolbarClass;
- (_TtC23ShelfKitCollectionViews23WebNavigationController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtC23ShelfKitCollectionViews23WebNavigationController)initWithRootViewController:(id)controller;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation WebNavigationController

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_2FE880(appear, &selRef_viewWillAppear_, "Delaying storefront change notifications while WebView is visible.", &selRef_beginDelayingNotifications);
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_2FE880(disappear, &selRef_viewWillDisappear_, "Resuming storefront change notifications since the WebView is now dismissed.", &selRef_endDelayingNotifications);
}

- (_TtC23ShelfKitCollectionViews23WebNavigationController)initWithNavigationBarClass:(Class)class toolbarClass:(Class)toolbarClass
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  return [(WebNavigationController *)&v7 initWithNavigationBarClass:class toolbarClass:toolbarClass];
}

- (_TtC23ShelfKitCollectionViews23WebNavigationController)initWithRootViewController:(id)controller
{
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  return [(WebNavigationController *)&v5 initWithRootViewController:controller];
}

- (_TtC23ShelfKitCollectionViews23WebNavigationController)initWithNibName:(id)name bundle:(id)bundle
{
  ObjectType = swift_getObjectType();
  if (name)
  {
    sub_30C0D8();
    bundleCopy = bundle;
    name = sub_30C098();
  }

  else
  {
    bundleCopy2 = bundle;
  }

  v12.receiver = self;
  v12.super_class = ObjectType;
  v10 = [(WebNavigationController *)&v12 initWithNibName:name bundle:bundle];

  return v10;
}

- (_TtC23ShelfKitCollectionViews23WebNavigationController)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  coderCopy = coder;
  v5 = [(WebNavigationController *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end