@interface RemoteAlertRootViewController
- (_TtC28LocalAuthenticationUIService29RemoteAlertRootViewController)initWithCoder:(id)a3;
- (_TtC28LocalAuthenticationUIService29RemoteAlertRootViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (_TtC28LocalAuthenticationUIService29RemoteAlertRootViewController)initWithScene:(id)a3;
@end

@implementation RemoteAlertRootViewController

- (_TtC28LocalAuthenticationUIService29RemoteAlertRootViewController)initWithScene:(id)a3
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for RemoteAlertRootViewController();
  return [(RemoteAlertRootViewController *)&v5 initWithScene:a3];
}

- (_TtC28LocalAuthenticationUIService29RemoteAlertRootViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = a4;
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    v8 = a4;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for RemoteAlertRootViewController();
  v9 = [(RemoteAlertRootViewController *)&v11 initWithNibName:v7 bundle:a4];

  return v9;
}

- (_TtC28LocalAuthenticationUIService29RemoteAlertRootViewController)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for RemoteAlertRootViewController();
  v4 = a3;
  v5 = [(RemoteAlertRootViewController *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end