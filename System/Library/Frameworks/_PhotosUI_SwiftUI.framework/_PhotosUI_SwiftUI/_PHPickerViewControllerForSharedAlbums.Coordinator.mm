@interface _PHPickerViewControllerForSharedAlbums.Coordinator
- (void)_picker:(id)a3 didFinishPicking:(id)a4 error:(id)a5;
- (void)_pickerDidPerformConfirmationAction:(void *)a3;
- (void)picker:(id)a3 didFinishPicking:(id)a4;
@end

@implementation _PHPickerViewControllerForSharedAlbums.Coordinator

- (void)_pickerDidPerformConfirmationAction:(void *)a3
{
  v4 = a3;
  v5 = a1;
  sub_1D29AB904();
}

- (void)picker:(id)a3 didFinishPicking:(id)a4
{
  sub_1D29AEB78(0, &qword_1EC6FDC10, 0x1E69790F0);
  sub_1D29C43D4();
}

- (void)_picker:(id)a3 didFinishPicking:(id)a4 error:(id)a5
{
  v6 = a4;
  if (a4)
  {
    sub_1D29AEB78(0, &qword_1EC6FDC10, 0x1E69790F0);
    v6 = sub_1D29C43D4();
  }

  v9 = a3;
  v10 = a5;
  v11 = self;
  sub_1D29AB9A4(v11, v6, a5);
}

@end