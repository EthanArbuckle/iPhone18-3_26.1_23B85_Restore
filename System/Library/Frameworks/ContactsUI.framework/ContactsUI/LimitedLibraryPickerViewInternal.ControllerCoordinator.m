@interface LimitedLibraryPickerViewInternal.ControllerCoordinator
- (void)contactPicker:(id)a3 didSelectContacts:(id)a4;
- (void)contactPickerDidCancel:(id)a3;
@end

@implementation LimitedLibraryPickerViewInternal.ControllerCoordinator

- (void)contactPicker:(id)a3 didSelectContacts:(id)a4
{
  sub_199A7DDB0();
  v6 = sub_199DFA0CC();
  v7 = a3;
  v8 = self;
  sub_199AFE10C(v6);
}

- (void)contactPickerDidCancel:(id)a3
{
  v4 = a3;
  self;
  sub_199AFE448();
}

@end