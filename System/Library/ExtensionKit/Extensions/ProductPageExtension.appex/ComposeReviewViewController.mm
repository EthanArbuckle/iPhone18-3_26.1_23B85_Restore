@interface ComposeReviewViewController
- (_TtC20ProductPageExtension27ComposeReviewViewController)initWithCoder:(id)coder;
- (_TtC20ProductPageExtension27ComposeReviewViewController)initWithCompositionURL:(id)l;
- (_TtC20ProductPageExtension27ComposeReviewViewController)initWithNibName:(id)name bundle:(id)bundle;
@end

@implementation ComposeReviewViewController

- (_TtC20ProductPageExtension27ComposeReviewViewController)initWithCompositionURL:(id)l
{
  v4 = sub_10000A5D4(&unk_1009435D0);
  __chkstk_darwin(v4 - 8);
  v6 = &v10 - v5;
  if (l)
  {
    sub_10075DB3C();
    v7 = sub_10075DB7C();
    (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  }

  else
  {
    v8 = sub_10075DB7C();
    (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  }

  return sub_1001B83D8(v6);
}

- (_TtC20ProductPageExtension27ComposeReviewViewController)initWithNibName:(id)name bundle:(id)bundle
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
  v10 = [(ComposeReviewViewController *)&v12 initWithNibName:name bundle:bundle];

  return v10;
}

- (_TtC20ProductPageExtension27ComposeReviewViewController)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  coderCopy = coder;
  v5 = [(ComposeReviewViewController *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end