@interface ComposeReviewViewController
- (_TtC22SubscribePageExtension27ComposeReviewViewController)initWithCoder:(id)coder;
- (_TtC22SubscribePageExtension27ComposeReviewViewController)initWithCompositionURL:(id)l;
- (_TtC22SubscribePageExtension27ComposeReviewViewController)initWithNibName:(id)name bundle:(id)bundle;
@end

@implementation ComposeReviewViewController

- (_TtC22SubscribePageExtension27ComposeReviewViewController)initWithCompositionURL:(id)l
{
  v4 = sub_10000C518(&unk_100923970);
  __chkstk_darwin(v4 - 8);
  v6 = &v10 - v5;
  if (l)
  {
    sub_100741224();
    v7 = sub_100741264();
    (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  }

  else
  {
    v8 = sub_100741264();
    (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  }

  return sub_1001449BC(v6);
}

- (_TtC22SubscribePageExtension27ComposeReviewViewController)initWithNibName:(id)name bundle:(id)bundle
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
  v10 = [(ComposeReviewViewController *)&v12 initWithNibName:name bundle:bundle];

  return v10;
}

- (_TtC22SubscribePageExtension27ComposeReviewViewController)initWithCoder:(id)coder
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