@interface AccountPageViewController
- (_TtC8AppStore25AccountPageViewController)initWithAccountURL:(id)a3;
- (_TtC8AppStore25AccountPageViewController)initWithCoder:(id)a3;
- (_TtC8AppStore25AccountPageViewController)initWithNibName:(id)a3 bundle:(id)a4;
@end

@implementation AccountPageViewController

- (_TtC8AppStore25AccountPageViewController)initWithAccountURL:(id)a3
{
  ObjectType = swift_getObjectType();
  v6 = sub_10002849C(&qword_100982460);
  __chkstk_darwin(v6 - 8);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v19 - v10;
  if (a3)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = type metadata accessor for URL();
    (*(*(v12 - 8) + 56))(v11, 0, 1, v12);
  }

  else
  {
    v12 = type metadata accessor for URL();
    (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  }

  sub_1000417F0(v11, v8);
  type metadata accessor for URL();
  v13 = *(v12 - 8);
  v15 = 0;
  if ((*(v13 + 48))(v8, 1, v12) != 1)
  {
    URL._bridgeToObjectiveC()(v14);
    v15 = v16;
    (*(v13 + 8))(v8, v12);
  }

  v19.receiver = self;
  v19.super_class = ObjectType;
  v17 = [(AccountPageViewController *)&v19 initWithAccountURL:v15];

  sub_10022C934(v11);
  return v17;
}

- (_TtC8AppStore25AccountPageViewController)initWithNibName:(id)a3 bundle:(id)a4
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
  v10 = [(AccountPageViewController *)&v12 initWithNibName:a3 bundle:a4];

  return v10;
}

- (_TtC8AppStore25AccountPageViewController)initWithCoder:(id)a3
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