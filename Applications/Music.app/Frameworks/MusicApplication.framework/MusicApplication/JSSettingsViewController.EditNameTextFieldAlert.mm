@interface JSSettingsViewController.EditNameTextFieldAlert
- (_TtCC16MusicApplication24JSSettingsViewControllerP33_7919D88BB8212442612DA538E61A458122EditNameTextFieldAlert)initWithCoder:(id)coder;
- (_TtCC16MusicApplication24JSSettingsViewControllerP33_7919D88BB8212442612DA538E61A458122EditNameTextFieldAlert)initWithNibName:(id)name bundle:(id)bundle;
- (void)textFieldDidChange:(id)change;
@end

@implementation JSSettingsViewController.EditNameTextFieldAlert

- (_TtCC16MusicApplication24JSSettingsViewControllerP33_7919D88BB8212442612DA538E61A458122EditNameTextFieldAlert)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtCC16MusicApplication24JSSettingsViewControllerP33_7919D88BB8212442612DA538E61A458122EditNameTextFieldAlert_doneAction) = 0;
  v3 = (&self->super.super.super.super.isa + OBJC_IVAR____TtCC16MusicApplication24JSSettingsViewControllerP33_7919D88BB8212442612DA538E61A458122EditNameTextFieldAlert_currentName);
  *v3 = 0;
  v3[1] = 0;
  result = sub_ABAFD0();
  __break(1u);
  return result;
}

- (void)textFieldDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_3FE9FC(changeCopy);
}

- (_TtCC16MusicApplication24JSSettingsViewControllerP33_7919D88BB8212442612DA538E61A458122EditNameTextFieldAlert)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end