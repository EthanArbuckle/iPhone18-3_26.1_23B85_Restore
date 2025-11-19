@interface FloatingToolbarViewController
- (_TtC9Shortcuts29FloatingToolbarViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)keyboardWillChange:(id)a3;
- (void)viewDidLoad;
@end

@implementation FloatingToolbarViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_1000133E8();
}

- (void)keyboardWillChange:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100048960(v4);
}

- (_TtC9Shortcuts29FloatingToolbarViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v5 = a4;
  sub_100048D6C();
}

@end