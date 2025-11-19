@interface CNContactPickerViewControllerWrapper.Coordinator
- (_TtCV10ContactsUI36CNContactPickerViewControllerWrapper11Coordinator)init;
- (void)contactPicker:(id)a3 didSelectContact:(id)a4;
- (void)contactPickerDidCancel:(id)a3;
@end

@implementation CNContactPickerViewControllerWrapper.Coordinator

- (void)contactPicker:(id)a3 didSelectContact:(id)a4
{
  v6 = *(&self->super.isa + OBJC_IVAR____TtCV10ContactsUI36CNContactPickerViewControllerWrapper11Coordinator_onContactSelected);
  v7 = a4;
  v8 = self;

  v6(a4);
}

- (void)contactPickerDidCancel:(id)a3
{
  v3 = *(&self->super.isa + OBJC_IVAR____TtCV10ContactsUI36CNContactPickerViewControllerWrapper11Coordinator_onContactSelected);
  v4 = self;

  v3(0);
}

- (_TtCV10ContactsUI36CNContactPickerViewControllerWrapper11Coordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end