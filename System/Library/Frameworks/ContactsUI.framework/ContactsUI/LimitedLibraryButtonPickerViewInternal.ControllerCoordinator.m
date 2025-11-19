@interface LimitedLibraryButtonPickerViewInternal.ControllerCoordinator
- (void)contactPicker:(id)a3 didSelectContact:(id)a4;
- (void)contactPickerDidCancel:(id)a3;
@end

@implementation LimitedLibraryButtonPickerViewInternal.ControllerCoordinator

- (void)contactPicker:(id)a3 didSelectContact:(id)a4
{
  v6 = a3;
  v7 = a4;
  self;
  sub_199AFD8A8(v7);
}

- (void)contactPickerDidCancel:(id)a3
{
  v4 = a3;
  self;
  sub_199AFDA78();
}

@end