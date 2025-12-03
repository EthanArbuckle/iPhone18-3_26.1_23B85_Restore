@interface B389AppleIDViewController
- (_TtC18SharingViewService25B389AppleIDViewController)initWithMainController:(id)controller;
- (void)dismissPressed;
- (void)openSettingsPressed;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation B389AppleIDViewController

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_10005838C(appear);
}

- (void)openSettingsPressed
{
  selfCopy = self;
  sub_100058D14();
}

- (void)dismissPressed
{
  selfCopy = self;
  sub_100058F34();
}

- (_TtC18SharingViewService25B389AppleIDViewController)initWithMainController:(id)controller
{
  controllerCopy = controller;
  v4 = sub_1000667D8(controllerCopy);

  return v4;
}

@end