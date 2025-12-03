@interface ComposeReviewViewController
- (_TtC18ASMessagesProvider27ComposeReviewViewController)initWithCoder:(id)coder;
- (_TtC18ASMessagesProvider27ComposeReviewViewController)initWithCompositionURL:(id)l;
- (_TtC18ASMessagesProvider27ComposeReviewViewController)initWithNibName:(id)name bundle:(id)bundle;
@end

@implementation ComposeReviewViewController

- (_TtC18ASMessagesProvider27ComposeReviewViewController)initWithCompositionURL:(id)l
{
  v4 = sub_BD88(&unk_93FD30);
  __chkstk_darwin(v4 - 8);
  v6 = &v10 - v5;
  if (l)
  {
    sub_757060();
    v7 = sub_7570A0();
    (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  }

  else
  {
    v8 = sub_7570A0();
    (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  }

  return sub_43435C(v6);
}

- (_TtC18ASMessagesProvider27ComposeReviewViewController)initWithNibName:(id)name bundle:(id)bundle
{
  ObjectType = swift_getObjectType();
  if (name)
  {
    sub_769240();
    bundleCopy = bundle;
    name = sub_769210();
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

- (_TtC18ASMessagesProvider27ComposeReviewViewController)initWithCoder:(id)coder
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