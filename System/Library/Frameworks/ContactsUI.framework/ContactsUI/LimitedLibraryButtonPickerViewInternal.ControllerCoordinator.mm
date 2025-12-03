@interface LimitedLibraryButtonPickerViewInternal.ControllerCoordinator
- (void)contactPicker:(id)picker didSelectContact:(id)contact;
- (void)contactPickerDidCancel:(id)cancel;
@end

@implementation LimitedLibraryButtonPickerViewInternal.ControllerCoordinator

- (void)contactPicker:(id)picker didSelectContact:(id)contact
{
  pickerCopy = picker;
  contactCopy = contact;
  self;
  sub_199AFD8A8(contactCopy);
}

- (void)contactPickerDidCancel:(id)cancel
{
  cancelCopy = cancel;
  self;
  sub_199AFDA78();
}

@end