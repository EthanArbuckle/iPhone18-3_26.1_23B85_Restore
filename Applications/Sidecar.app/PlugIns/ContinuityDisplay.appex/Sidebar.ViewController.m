@interface Sidebar.ViewController
- (_TtCO17ContinuityDisplay7Sidebar14ViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)_actionButtonPressed:(id)a3;
- (void)_stateButtonPressed:(id)a3;
- (void)_toggleButtonDown:(id)a3;
- (void)_toggleButtonUpIn:(id)a3;
- (void)loadView;
@end

@implementation Sidebar.ViewController

- (void)loadView
{
  v2 = self;
  sub_10001A5C8();
}

- (void)_actionButtonPressed:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10001B064(v4);
}

- (void)_stateButtonPressed:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10001B160(v4);
}

- (void)_toggleButtonDown:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10001B278(v4);
}

- (void)_toggleButtonUpIn:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10001B30C(v4);
}

- (_TtCO17ContinuityDisplay7Sidebar14ViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    sub_100057A50();
  }

  v5 = a4;
  sub_10001BE70();
}

@end