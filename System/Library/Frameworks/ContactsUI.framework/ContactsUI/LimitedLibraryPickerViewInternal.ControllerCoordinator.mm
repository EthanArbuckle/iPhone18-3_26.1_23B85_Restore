@interface LimitedLibraryPickerViewInternal.ControllerCoordinator
- (void)contactPicker:(id)picker didSelectContacts:(id)contacts;
- (void)contactPickerDidCancel:(id)cancel;
@end

@implementation LimitedLibraryPickerViewInternal.ControllerCoordinator

- (void)contactPicker:(id)picker didSelectContacts:(id)contacts
{
  sub_199A7DDB0();
  v6 = sub_199DFA0CC();
  pickerCopy = picker;
  selfCopy = self;
  sub_199AFE10C(v6);
}

- (void)contactPickerDidCancel:(id)cancel
{
  cancelCopy = cancel;
  self;
  sub_199AFE448();
}

@end