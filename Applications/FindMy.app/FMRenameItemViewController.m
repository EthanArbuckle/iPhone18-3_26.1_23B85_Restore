@interface FMRenameItemViewController
- (void)dismissKeyboard;
- (void)saveRole;
- (void)scrollViewDidScroll:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation FMRenameItemViewController

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v7.receiver = self;
  v7.super_class = type metadata accessor for FMRenameItemViewController();
  v4 = v7.receiver;
  [(FMSettingsUpdateViewController *)&v7 viewWillAppear:v3];
  v5 = *(*&v4[OBJC_IVAR____TtC6FindMy24FMMediatedViewController_mediator] + 24);

  v6 = sub_1003F366C(v4, v5);

  *&v4[OBJC_IVAR____TtC6FindMy26FMRenameItemViewController_devicesSubscription] = v6;

  sub_1000C6AE8();
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = type metadata accessor for FMRenameItemViewController();
  v4 = v6.receiver;
  [(FMRenameItemViewController *)&v6 viewDidAppear:v3];
  v5 = *&v4[OBJC_IVAR____TtC6FindMy26FMRenameItemViewController_customRoleView];
  *(v5 + OBJC_IVAR____TtC6FindMy16FMCustomRoleView_emojiPickerEnabled) = 1;
  [*(v5 + OBJC_IVAR____TtC6FindMy16FMCustomRoleView_emojiBackground) setUserInteractionEnabled:{1, v6.receiver, v6.super_class}];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4 = self;
  sub_1000C6170(a3);
}

- (void)dismissKeyboard
{
  v2 = self;
  sub_1000C73E4();
}

- (void)scrollViewDidScroll:(id)a3
{
  v3 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC6FindMy26FMRenameItemViewController_scrollHandler);
  if (v3)
  {
    v5 = a3;
    v6 = self;
    sub_100062900(v3);
    v3(v5);

    sub_10001835C(v3);
  }
}

- (void)saveRole
{
  v2 = self;
  sub_1000C7BFC();
}

@end