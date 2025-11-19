@interface HomePodSetupLeftRightViewController
- (_TtC14HDSViewService35HomePodSetupLeftRightViewController)initWithContentView:(id)a3;
- (void)leftButtonPressed:(id)a3;
- (void)rightButtonPressed:(id)a3;
- (void)viewDidLoad;
@end

@implementation HomePodSetupLeftRightViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_100068440();
}

- (void)leftButtonPressed:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1000695E8("HomePodSetupLeftRight: User tapped on left speaker button", 6);
}

- (void)rightButtonPressed:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1000695E8("HomePodSetupLeftRight: User tapped on right speaker button", 7);
}

- (_TtC14HDSViewService35HomePodSetupLeftRightViewController)initWithContentView:(id)a3
{
  v4 = a3;
  v5 = sub_100069740(a3);

  return v5;
}

@end