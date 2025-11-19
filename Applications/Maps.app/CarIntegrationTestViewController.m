@interface CarIntegrationTestViewController
- (_TtC4Maps32CarIntegrationTestViewController)initWithCoder:(id)a3;
- (_TtC4Maps32CarIntegrationTestViewController)initWithNibName:(id)a3 bundle:(id)a4;
@end

@implementation CarIntegrationTestViewController

- (_TtC4Maps32CarIntegrationTestViewController)initWithNibName:(id)a3 bundle:(id)a4
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
  v10 = [(CarHostingViewController *)&v12 initWithNibName:a3 bundle:a4];

  return v10;
}

- (_TtC4Maps32CarIntegrationTestViewController)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v4 = a3;
  v5 = [(CarHostingViewController *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end