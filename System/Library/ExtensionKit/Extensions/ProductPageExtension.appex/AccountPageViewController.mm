@interface AccountPageViewController
- (_TtC20ProductPageExtension25AccountPageViewController)initWithAccountURL:(id)a3;
- (_TtC20ProductPageExtension25AccountPageViewController)initWithCoder:(id)a3;
- (_TtC20ProductPageExtension25AccountPageViewController)initWithNibName:(id)a3 bundle:(id)a4;
@end

@implementation AccountPageViewController

- (_TtC20ProductPageExtension25AccountPageViewController)initWithAccountURL:(id)a3
{
  ObjectType = swift_getObjectType();
  v6 = sub_10000A5D4(&unk_1009435D0);
  __chkstk_darwin(v6 - 8);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v19 - v10;
  if (a3)
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

- (_TtC20ProductPageExtension25AccountPageViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  ObjectType = swift_getObjectType();
  if (a3)
  {
    sub_10076FF9C();
    v8 = a4;
    a3 = sub_10076FF6C();
  }

  else
  {
    v9 = a4;
  }

  v12.receiver = self;
  v12.super_class = ObjectType;
  v10 = [(AccountPageViewController *)&v12 initWithNibName:a3 bundle:a4];

  return v10;
}

- (_TtC20ProductPageExtension25AccountPageViewController)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v4 = a3;
  v5 = [(AccountPageViewController *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end