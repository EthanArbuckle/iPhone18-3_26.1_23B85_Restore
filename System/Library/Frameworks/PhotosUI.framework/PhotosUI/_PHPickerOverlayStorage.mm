@interface _PHPickerOverlayStorage
- (void)_pickerDidPerformCancelAction:(id)action;
- (void)_pickerDidPerformConfirmationAction:(id)action;
- (void)picker:(id)picker didFinishPicking:(id)picking;
@end

@implementation _PHPickerOverlayStorage

- (void)picker:(id)picker didFinishPicking:(id)picking
{
  sub_1D2133F88(0, &qword_1EC6CF198, off_1E83F6AC0);
  v6 = sub_1D215311C();
  pickerCopy = picker;
  selfCopy = self;
  sub_1D2132294(pickerCopy, v6);
}

- (void)_pickerDidPerformConfirmationAction:(id)action
{
  actionCopy = action;
  selfCopy = self;
  sub_1D21325CC(actionCopy);
}

- (void)_pickerDidPerformCancelAction:(id)action
{
  actionCopy = action;
  selfCopy = self;
  sub_1D21326C4(actionCopy);
}

@end