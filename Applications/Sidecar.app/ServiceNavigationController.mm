@interface ServiceNavigationController
- (BOOL)shouldAutorotate;
- (UIViewController)childViewControllerForStatusBarStyle;
- (_TtC7Sidecar27ServiceNavigationController)initWithNavigationBarClass:(Class)class toolbarClass:(Class)toolbarClass;
- (unint64_t)supportedInterfaceOrientations;
@end

@implementation ServiceNavigationController

- (BOOL)shouldAutorotate
{
  selfCopy = self;
  v3 = sub_10000E954();

  return v3 & 1;
}

- (unint64_t)supportedInterfaceOrientations
{
  selfCopy = self;
  v3 = sub_10000E9E4();

  return v3;
}

- (UIViewController)childViewControllerForStatusBarStyle
{
  selfCopy = self;
  v3 = sub_10000EA84();

  return v3;
}

- (_TtC7Sidecar27ServiceNavigationController)initWithNavigationBarClass:(Class)class toolbarClass:(Class)toolbarClass
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
    return sub_10000EABC(ObjCClassMetadata, v6);
  }

  ObjCClassMetadata = swift_getObjCClassMetadata();
  if (!toolbarClass)
  {
    goto LABEL_5;
  }

LABEL_3:
  v6 = swift_getObjCClassMetadata();
  return sub_10000EABC(ObjCClassMetadata, v6);
}

@end