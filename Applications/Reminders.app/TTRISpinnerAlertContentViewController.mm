@interface TTRISpinnerAlertContentViewController
- (_TtC9Reminders37TTRISpinnerAlertContentViewController)initWithCoder:(id)coder;
- (_TtC9Reminders37TTRISpinnerAlertContentViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewDidLoad;
@end

@implementation TTRISpinnerAlertContentViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1005E2E00();
}

- (_TtC9Reminders37TTRISpinnerAlertContentViewController)initWithNibName:(id)name bundle:(id)bundle
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
  v10 = [(TTRISpinnerAlertContentViewController *)&v12 initWithNibName:name bundle:bundle];

  return v10;
}

- (_TtC9Reminders37TTRISpinnerAlertContentViewController)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  coderCopy = coder;
  v5 = [(TTRISpinnerAlertContentViewController *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end