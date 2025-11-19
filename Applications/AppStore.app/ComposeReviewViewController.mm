@interface ComposeReviewViewController
- (_TtC8AppStore27ComposeReviewViewController)initWithCoder:(id)a3;
- (_TtC8AppStore27ComposeReviewViewController)initWithCompositionURL:(id)a3;
- (_TtC8AppStore27ComposeReviewViewController)initWithNibName:(id)a3 bundle:(id)a4;
@end

@implementation ComposeReviewViewController

- (_TtC8AppStore27ComposeReviewViewController)initWithCompositionURL:(id)a3
{
  v4 = sub_10002849C(&qword_100982460);
  __chkstk_darwin(v4 - 8);
  v6 = &v10 - v5;
  if (a3)
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

- (_TtC8AppStore27ComposeReviewViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  ObjectType = swift_getObjectType();
  if (a3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = a4;
    a3 = String._bridgeToObjectiveC()();
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

- (_TtC8AppStore27ComposeReviewViewController)initWithCoder:(id)a3
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