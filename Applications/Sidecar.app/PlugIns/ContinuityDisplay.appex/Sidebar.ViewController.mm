@interface Sidebar.ViewController
- (_TtCO17ContinuityDisplay7Sidebar14ViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)_actionButtonPressed:(id)pressed;
- (void)_stateButtonPressed:(id)pressed;
- (void)_toggleButtonDown:(id)down;
- (void)_toggleButtonUpIn:(id)in;
- (void)loadView;
@end

@implementation Sidebar.ViewController

- (void)loadView
{
  selfCopy = self;
  sub_10001A5C8();
}

- (void)_actionButtonPressed:(id)pressed
{
  pressedCopy = pressed;
  selfCopy = self;
  sub_10001B064(pressedCopy);
}

- (void)_stateButtonPressed:(id)pressed
{
  pressedCopy = pressed;
  selfCopy = self;
  sub_10001B160(pressedCopy);
}

- (void)_toggleButtonDown:(id)down
{
  downCopy = down;
  selfCopy = self;
  sub_10001B278(downCopy);
}

- (void)_toggleButtonUpIn:(id)in
{
  inCopy = in;
  selfCopy = self;
  sub_10001B30C(inCopy);
}

- (_TtCO17ContinuityDisplay7Sidebar14ViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_100057A50();
  }

  bundleCopy = bundle;
  sub_10001BE70();
}

@end