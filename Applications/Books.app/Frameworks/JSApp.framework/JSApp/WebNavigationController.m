@interface WebNavigationController
- (_TtC5JSApp23WebNavigationController)initWithCoder:(id)a3;
- (_TtC5JSApp23WebNavigationController)initWithNavigationBarClass:(Class)a3 toolbarClass:(Class)a4;
- (_TtC5JSApp23WebNavigationController)initWithNibName:(id)a3 bundle:(id)a4;
- (_TtC5JSApp23WebNavigationController)initWithRootViewController:(id)a3;
@end

@implementation WebNavigationController

- (_TtC5JSApp23WebNavigationController)initWithNavigationBarClass:(Class)a3 toolbarClass:(Class)a4
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  return [(WebNavigationController *)&v7 initWithNavigationBarClass:a3 toolbarClass:a4];
}

- (_TtC5JSApp23WebNavigationController)initWithRootViewController:(id)a3
{
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  return [(WebNavigationController *)&v5 initWithRootViewController:a3];
}

- (_TtC5JSApp23WebNavigationController)initWithNibName:(id)a3 bundle:(id)a4
{
  ObjectType = swift_getObjectType();
  if (a3)
  {
    sub_843AC();
    v8 = a4;
    a3 = sub_8437C();
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

- (_TtC5JSApp23WebNavigationController)initWithCoder:(id)a3
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