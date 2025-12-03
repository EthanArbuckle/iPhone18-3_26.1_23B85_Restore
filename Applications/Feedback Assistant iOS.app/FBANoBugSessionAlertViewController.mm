@interface FBANoBugSessionAlertViewController
+ (void)showInController:(id)controller forDevice:(id)device;
- (_TtC18Feedback_Assistant34FBANoBugSessionAlertViewController)initWithCoder:(id)coder;
- (_TtC18Feedback_Assistant34FBANoBugSessionAlertViewController)initWithNibName:(id)name bundle:(id)bundle;
@end

@implementation FBANoBugSessionAlertViewController

+ (void)showInController:(id)controller forDevice:(id)device
{
  controllerCopy = controller;
  deviceCopy = device;
  sub_10004BFF0(controllerCopy);
}

- (_TtC18Feedback_Assistant34FBANoBugSessionAlertViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    bundleCopy = bundle;
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    bundleCopy2 = bundle;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for FBANoBugSessionAlertViewController();
  v9 = [(FBANoBugSessionAlertViewController *)&v11 initWithNibName:v7 bundle:bundle];

  return v9;
}

- (_TtC18Feedback_Assistant34FBANoBugSessionAlertViewController)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for FBANoBugSessionAlertViewController();
  coderCopy = coder;
  v5 = [(FBANoBugSessionAlertViewController *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end