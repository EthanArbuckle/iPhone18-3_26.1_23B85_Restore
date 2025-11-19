@interface _PHPickerOverlayStorage
- (void)_pickerDidPerformCancelAction:(id)a3;
- (void)_pickerDidPerformConfirmationAction:(id)a3;
- (void)picker:(id)a3 didFinishPicking:(id)a4;
@end

@implementation _PHPickerOverlayStorage

- (void)picker:(id)a3 didFinishPicking:(id)a4
{
  sub_1D2133F88(0, &qword_1EC6CF198, off_1E83F6AC0);
  v6 = sub_1D215311C();
  v7 = a3;
  v8 = self;
  sub_1D2132294(v7, v6);
}

- (void)_pickerDidPerformConfirmationAction:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1D21325CC(v4);
}

- (void)_pickerDidPerformCancelAction:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1D21326C4(v4);
}

@end