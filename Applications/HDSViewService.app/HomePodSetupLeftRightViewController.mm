@interface HomePodSetupLeftRightViewController
- (_TtC14HDSViewService35HomePodSetupLeftRightViewController)initWithContentView:(id)view;
- (void)leftButtonPressed:(id)pressed;
- (void)rightButtonPressed:(id)pressed;
- (void)viewDidLoad;
@end

@implementation HomePodSetupLeftRightViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_100068440();
}

- (void)leftButtonPressed:(id)pressed
{
  pressedCopy = pressed;
  selfCopy = self;
  sub_1000695E8("HomePodSetupLeftRight: User tapped on left speaker button", 6);
}

- (void)rightButtonPressed:(id)pressed
{
  pressedCopy = pressed;
  selfCopy = self;
  sub_1000695E8("HomePodSetupLeftRight: User tapped on right speaker button", 7);
}

- (_TtC14HDSViewService35HomePodSetupLeftRightViewController)initWithContentView:(id)view
{
  viewCopy = view;
  v5 = sub_100069740(view);

  return v5;
}

@end