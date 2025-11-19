@interface B389AppleIDViewController
- (_TtC18SharingViewService25B389AppleIDViewController)initWithMainController:(id)a3;
- (void)dismissPressed;
- (void)openSettingsPressed;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation B389AppleIDViewController

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_10005838C(a3);
}

- (void)openSettingsPressed
{
  v2 = self;
  sub_100058D14();
}

- (void)dismissPressed
{
  v2 = self;
  sub_100058F34();
}

- (_TtC18SharingViewService25B389AppleIDViewController)initWithMainController:(id)a3
{
  v3 = a3;
  v4 = sub_1000667D8(v3);

  return v4;
}

@end