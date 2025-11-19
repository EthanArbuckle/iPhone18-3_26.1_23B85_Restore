@interface FBANoBugSessionAlertViewController
+ (void)showInController:(id)a3 forDevice:(id)a4;
- (_TtC18Feedback_Assistant34FBANoBugSessionAlertViewController)initWithCoder:(id)a3;
- (_TtC18Feedback_Assistant34FBANoBugSessionAlertViewController)initWithNibName:(id)a3 bundle:(id)a4;
@end

@implementation FBANoBugSessionAlertViewController

+ (void)showInController:(id)a3 forDevice:(id)a4
{
  v5 = a3;
  v6 = a4;
  sub_10004BFF0(v5);
}

- (_TtC18Feedback_Assistant34FBANoBugSessionAlertViewController)initWithNibName:(id)a3 bundle:(id)a4
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
  v11.super_class = type metadata accessor for FBANoBugSessionAlertViewController();
  v9 = [(FBANoBugSessionAlertViewController *)&v11 initWithNibName:v7 bundle:a4];

  return v9;
}

- (_TtC18Feedback_Assistant34FBANoBugSessionAlertViewController)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for FBANoBugSessionAlertViewController();
  v4 = a3;
  v5 = [(FBANoBugSessionAlertViewController *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end