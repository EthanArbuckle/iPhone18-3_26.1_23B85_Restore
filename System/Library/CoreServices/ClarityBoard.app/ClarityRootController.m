@interface ClarityRootController
- (_TtC12ClarityBoard21ClarityRootController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)keyboardDidShowWithNotification:(id)a3;
- (void)keyboardWillHideWithNotification:(id)a3;
- (void)viewDidLoad;
@end

@implementation ClarityRootController

- (void)viewDidLoad
{
  v2 = self;
  sub_10002863C();
}

- (void)keyboardWillHideWithNotification:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1000288F0(v4);
}

- (void)keyboardDidShowWithNotification:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100028B88(v4);
}

- (_TtC12ClarityBoard21ClarityRootController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return sub_100029D34(v5, v7, a4);
}

@end