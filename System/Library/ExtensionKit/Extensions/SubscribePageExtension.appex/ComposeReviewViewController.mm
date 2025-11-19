@interface ComposeReviewViewController
- (_TtC22SubscribePageExtension27ComposeReviewViewController)initWithCoder:(id)a3;
- (_TtC22SubscribePageExtension27ComposeReviewViewController)initWithCompositionURL:(id)a3;
- (_TtC22SubscribePageExtension27ComposeReviewViewController)initWithNibName:(id)a3 bundle:(id)a4;
@end

@implementation ComposeReviewViewController

- (_TtC22SubscribePageExtension27ComposeReviewViewController)initWithCompositionURL:(id)a3
{
  v4 = sub_10000C518(&unk_100923970);
  __chkstk_darwin(v4 - 8);
  v6 = &v10 - v5;
  if (a3)
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

- (_TtC22SubscribePageExtension27ComposeReviewViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  ObjectType = swift_getObjectType();
  if (a3)
  {
    sub_100753094();
    v8 = a4;
    a3 = sub_100753064();
  }

  else
  {
    v9 = a4;
  }

  v12.receiver = self;
  v12.super_class = ObjectType;
  v10 = [(ComposeReviewViewController *)&v12 initWithNibName:a3 bundle:a4];

  return v10;
}

- (_TtC22SubscribePageExtension27ComposeReviewViewController)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v4 = a3;
  v5 = [(ComposeReviewViewController *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end