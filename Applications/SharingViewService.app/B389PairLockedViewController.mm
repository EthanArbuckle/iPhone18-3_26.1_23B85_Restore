@interface B389PairLockedViewController
- (_TtC18SharingViewService28B389PairLockedViewController)initWithMainController:(id)controller;
- (void)dismissPressed;
- (void)learnMorePressed;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation B389PairLockedViewController

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_10005A8A8(appear);
}

- (void)learnMorePressed
{
  selfCopy = self;
  sub_10005B794();
}

- (void)dismissPressed
{
  selfCopy = self;
  sub_10005BC08();
}

- (_TtC18SharingViewService28B389PairLockedViewController)initWithMainController:(id)controller
{
  controllerCopy = controller;
  v4 = sub_10006691C(controllerCopy);

  return v4;
}

@end