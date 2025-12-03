@interface AccountPageViewController
- (_TtC20ProductPageExtension25AccountPageViewController)initWithAccountURL:(id)l;
- (_TtC20ProductPageExtension25AccountPageViewController)initWithCoder:(id)coder;
- (_TtC20ProductPageExtension25AccountPageViewController)initWithNibName:(id)name bundle:(id)bundle;
@end

@implementation AccountPageViewController

- (_TtC20ProductPageExtension25AccountPageViewController)initWithAccountURL:(id)l
{
  ObjectType = swift_getObjectType();
  v6 = sub_10000A5D4(&unk_1009435D0);
  __chkstk_darwin(v6 - 8);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v19 - v10;
  if (l)
  {
    sub_10075DB3C();
    v12 = sub_10075DB7C();
    (*(*(v12 - 8) + 56))(v11, 0, 1, v12);
  }

  else
  {
    v12 = sub_10075DB7C();
    (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  }

  sub_100050CC0(v11, v8);
  sub_10075DB7C();
  v13 = *(v12 - 8);
  v15 = 0;
  if ((*(v13 + 48))(v8, 1, v12) != 1)
  {
    sub_10075DB1C(v14);
    v15 = v16;
    (*(v13 + 8))(v8, v12);
  }

  v19.receiver = self;
  v19.super_class = ObjectType;
  v17 = [(AccountPageViewController *)&v19 initWithAccountURL:v15];

  sub_1001B82AC(v11);
  return v17;
}

- (_TtC20ProductPageExtension25AccountPageViewController)initWithNibName:(id)name bundle:(id)bundle
{
  ObjectType = swift_getObjectType();
  if (name)
  {
    sub_10076FF9C();
    bundleCopy = bundle;
    name = sub_10076FF6C();
  }

  else
  {
    bundleCopy2 = bundle;
  }

  v12.receiver = self;
  v12.super_class = ObjectType;
  v10 = [(AccountPageViewController *)&v12 initWithNibName:name bundle:bundle];

  return v10;
}

- (_TtC20ProductPageExtension25AccountPageViewController)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  coderCopy = coder;
  v5 = [(AccountPageViewController *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end