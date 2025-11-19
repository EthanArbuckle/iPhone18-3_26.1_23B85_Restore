@interface ServiceNavigationController
- (BOOL)shouldAutorotate;
- (UIViewController)childViewControllerForStatusBarStyle;
- (_TtC7Sidecar27ServiceNavigationController)initWithNavigationBarClass:(Class)a3 toolbarClass:(Class)a4;
- (unint64_t)supportedInterfaceOrientations;
@end

@implementation ServiceNavigationController

- (BOOL)shouldAutorotate
{
  v2 = self;
  v3 = sub_10000E954();

  return v3 & 1;
}

- (unint64_t)supportedInterfaceOrientations
{
  v2 = self;
  v3 = sub_10000E9E4();

  return v3;
}

- (UIViewController)childViewControllerForStatusBarStyle
{
  v2 = self;
  v3 = sub_10000EA84();

  return v3;
}

- (_TtC7Sidecar27ServiceNavigationController)initWithNavigationBarClass:(Class)a3 toolbarClass:(Class)a4
{
  if (!a3)
  {
    ObjCClassMetadata = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v6 = 0;
    return sub_10000EABC(ObjCClassMetadata, v6);
  }

  ObjCClassMetadata = swift_getObjCClassMetadata();
  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v6 = swift_getObjCClassMetadata();
  return sub_10000EABC(ObjCClassMetadata, v6);
}

@end