@interface CNContactPickerViewControllerWrapper.Coordinator
- (_TtCV13AskToMessages36CNContactPickerViewControllerWrapper11Coordinator)init;
- (void)contactPicker:(id)a3 didSelectContact:(id)a4;
- (void)contactPickerDidCancel:(id)a3;
@end

@implementation CNContactPickerViewControllerWrapper.Coordinator

- (void)contactPicker:(id)a3 didSelectContact:(id)a4
{
  v7 = *(&self->super.isa + OBJC_IVAR____TtCV13AskToMessages36CNContactPickerViewControllerWrapper11Coordinator_onContactSelected);
  v6 = *&self->onContactSelected[OBJC_IVAR____TtCV13AskToMessages36CNContactPickerViewControllerWrapper11Coordinator_onContactSelected];
  v8 = a4;
  v9 = self;

  v7(a4);
}

- (void)contactPickerDidCancel:(id)a3
{
  v3 = *(&self->super.isa + OBJC_IVAR____TtCV13AskToMessages36CNContactPickerViewControllerWrapper11Coordinator_onContactSelected);
  v4 = *&self->onContactSelected[OBJC_IVAR____TtCV13AskToMessages36CNContactPickerViewControllerWrapper11Coordinator_onContactSelected];
  v5 = self;

  v3(0);
}

- (_TtCV13AskToMessages36CNContactPickerViewControllerWrapper11Coordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end