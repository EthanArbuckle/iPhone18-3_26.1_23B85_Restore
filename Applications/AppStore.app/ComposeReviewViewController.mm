@interface ComposeReviewViewController
- (_TtC8AppStore27ComposeReviewViewController)initWithCoder:(id)coder;
- (_TtC8AppStore27ComposeReviewViewController)initWithCompositionURL:(id)l;
- (_TtC8AppStore27ComposeReviewViewController)initWithNibName:(id)name bundle:(id)bundle;
@end

@implementation ComposeReviewViewController

- (_TtC8AppStore27ComposeReviewViewController)initWithCompositionURL:(id)l
{
  v4 = sub_10002849C(&qword_100982460);
  __chkstk_darwin(v4 - 8);
  v6 = &v10 - v5;
  if (l)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = type metadata accessor for URL();
    (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  }

  else
  {
    v8 = type metadata accessor for URL();
    (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  }

  return sub_100476DB0(v6);
}

- (_TtC8AppStore27ComposeReviewViewController)initWithNibName:(id)name bundle:(id)bundle
{
  ObjectType = swift_getObjectType();
  if (name)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    bundleCopy = bundle;
    name = String._bridgeToObjectiveC()();
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

- (_TtC8AppStore27ComposeReviewViewController)initWithCoder:(id)coder
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