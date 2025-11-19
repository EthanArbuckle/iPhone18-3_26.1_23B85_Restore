@interface WebNavigationController
- (_TtC23ShelfKitCollectionViews23WebNavigationController)initWithCoder:(id)a3;
- (_TtC23ShelfKitCollectionViews23WebNavigationController)initWithNavigationBarClass:(Class)a3 toolbarClass:(Class)a4;
- (_TtC23ShelfKitCollectionViews23WebNavigationController)initWithNibName:(id)a3 bundle:(id)a4;
- (_TtC23ShelfKitCollectionViews23WebNavigationController)initWithRootViewController:(id)a3;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation WebNavigationController

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_2FE880(a3, &selRef_viewWillAppear_, "Delaying storefront change notifications while WebView is visible.", &selRef_beginDelayingNotifications);
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4 = self;
  sub_2FE880(a3, &selRef_viewWillDisappear_, "Resuming storefront change notifications since the WebView is now dismissed.", &selRef_endDelayingNotifications);
}

- (_TtC23ShelfKitCollectionViews23WebNavigationController)initWithNavigationBarClass:(Class)a3 toolbarClass:(Class)a4
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  return [(WebNavigationController *)&v7 initWithNavigationBarClass:a3 toolbarClass:a4];
}

- (_TtC23ShelfKitCollectionViews23WebNavigationController)initWithRootViewController:(id)a3
{
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  return [(WebNavigationController *)&v5 initWithRootViewController:a3];
}

- (_TtC23ShelfKitCollectionViews23WebNavigationController)initWithNibName:(id)a3 bundle:(id)a4
{
  ObjectType = swift_getObjectType();
  if (a3)
  {
    sub_30C0D8();
    v8 = a4;
    a3 = sub_30C098();
  }

  else
  {
    v9 = a4;
  }

  v12.receiver = self;
  v12.super_class = ObjectType;
  v10 = [(WebNavigationController *)&v12 initWithNibName:a3 bundle:a4];

  return v10;
}

- (_TtC23ShelfKitCollectionViews23WebNavigationController)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v4 = a3;
  v5 = [(WebNavigationController *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end