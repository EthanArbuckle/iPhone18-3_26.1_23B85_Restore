@interface WebNavigationController
- (_TtC5JSApp23WebNavigationController)initWithCoder:(id)coder;
- (_TtC5JSApp23WebNavigationController)initWithNavigationBarClass:(Class)class toolbarClass:(Class)toolbarClass;
- (_TtC5JSApp23WebNavigationController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtC5JSApp23WebNavigationController)initWithRootViewController:(id)controller;
@end

@implementation WebNavigationController

- (_TtC5JSApp23WebNavigationController)initWithNavigationBarClass:(Class)class toolbarClass:(Class)toolbarClass
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  return [(WebNavigationController *)&v7 initWithNavigationBarClass:class toolbarClass:toolbarClass];
}

- (_TtC5JSApp23WebNavigationController)initWithRootViewController:(id)controller
{
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  return [(WebNavigationController *)&v5 initWithRootViewController:controller];
}

- (_TtC5JSApp23WebNavigationController)initWithNibName:(id)name bundle:(id)bundle
{
  ObjectType = swift_getObjectType();
  if (name)
  {
    sub_843AC();
    bundleCopy = bundle;
    name = sub_8437C();
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

- (_TtC5JSApp23WebNavigationController)initWithCoder:(id)coder
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