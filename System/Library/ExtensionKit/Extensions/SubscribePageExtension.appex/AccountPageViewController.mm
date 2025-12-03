@interface AccountPageViewController
- (_TtC22SubscribePageExtension25AccountPageViewController)initWithAccountURL:(id)l;
- (_TtC22SubscribePageExtension25AccountPageViewController)initWithCoder:(id)coder;
- (_TtC22SubscribePageExtension25AccountPageViewController)initWithNibName:(id)name bundle:(id)bundle;
@end

@implementation AccountPageViewController

- (_TtC22SubscribePageExtension25AccountPageViewController)initWithAccountURL:(id)l
{
  ObjectType = swift_getObjectType();
  v6 = sub_10000C518(&unk_100923970);
  __chkstk_darwin(v6 - 8);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v19 - v10;
  if (l)
  {
    sub_100741224();
    v12 = sub_100741264();
    (*(*(v12 - 8) + 56))(v11, 0, 1, v12);
  }

  else
  {
    v12 = sub_100741264();
    (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  }

  sub_1000497C4(v11, v8);
  sub_100741264();
  v13 = *(v12 - 8);
  v15 = 0;
  if ((*(v13 + 48))(v8, 1, v12) != 1)
  {
    sub_100741204(v14);
    v15 = v16;
    (*(v13 + 8))(v8, v12);
  }

  v19.receiver = self;
  v19.super_class = ObjectType;
  v17 = [(AccountPageViewController *)&v19 initWithAccountURL:v15];

  sub_100144D70(v11);
  return v17;
}

- (_TtC22SubscribePageExtension25AccountPageViewController)initWithNibName:(id)name bundle:(id)bundle
{
  ObjectType = swift_getObjectType();
  if (name)
  {
    sub_100753094();
    bundleCopy = bundle;
    name = sub_100753064();
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

- (_TtC22SubscribePageExtension25AccountPageViewController)initWithCoder:(id)coder
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