@interface CNContactPickerViewControllerWrapper.Coordinator
- (_TtCV10ContactsUI36CNContactPickerViewControllerWrapper11Coordinator)init;
- (void)contactPicker:(id)picker didSelectContact:(id)contact;
- (void)contactPickerDidCancel:(id)cancel;
@end

@implementation CNContactPickerViewControllerWrapper.Coordinator

- (void)contactPicker:(id)picker didSelectContact:(id)contact
{
  v6 = *(&self->super.isa + OBJC_IVAR____TtCV10ContactsUI36CNContactPickerViewControllerWrapper11Coordinator_onContactSelected);
  contactCopy = contact;
  selfCopy = self;

  v6(contact);
}

- (void)contactPickerDidCancel:(id)cancel
{
  v3 = *(&self->super.isa + OBJC_IVAR____TtCV10ContactsUI36CNContactPickerViewControllerWrapper11Coordinator_onContactSelected);
  selfCopy = self;

  v3(0);
}

- (_TtCV10ContactsUI36CNContactPickerViewControllerWrapper11Coordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end