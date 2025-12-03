@interface ClarityRootController
- (_TtC12ClarityBoard21ClarityRootController)initWithNibName:(id)name bundle:(id)bundle;
- (void)keyboardDidShowWithNotification:(id)notification;
- (void)keyboardWillHideWithNotification:(id)notification;
- (void)viewDidLoad;
@end

@implementation ClarityRootController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_10002863C();
}

- (void)keyboardWillHideWithNotification:(id)notification
{
  notificationCopy = notification;
  selfCopy = self;
  sub_1000288F0(notificationCopy);
}

- (void)keyboardDidShowWithNotification:(id)notification
{
  notificationCopy = notification;
  selfCopy = self;
  sub_100028B88(notificationCopy);
}

- (_TtC12ClarityBoard21ClarityRootController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return sub_100029D34(v5, v7, bundle);
}

@end