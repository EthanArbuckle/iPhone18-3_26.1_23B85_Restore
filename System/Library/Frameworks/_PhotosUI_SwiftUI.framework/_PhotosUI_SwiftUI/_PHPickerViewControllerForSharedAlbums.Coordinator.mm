@interface _PHPickerViewControllerForSharedAlbums.Coordinator
- (void)_picker:(id)_picker didFinishPicking:(id)picking error:(id)error;
- (void)_pickerDidPerformConfirmationAction:(void *)action;
- (void)picker:(id)picker didFinishPicking:(id)picking;
@end

@implementation _PHPickerViewControllerForSharedAlbums.Coordinator

- (void)_pickerDidPerformConfirmationAction:(void *)action
{
  actionCopy = action;
  selfCopy = self;
  sub_1D29AB904();
}

- (void)picker:(id)picker didFinishPicking:(id)picking
{
  sub_1D29AEB78(0, &qword_1EC6FDC10, 0x1E69790F0);
  sub_1D29C43D4();
}

- (void)_picker:(id)_picker didFinishPicking:(id)picking error:(id)error
{
  pickingCopy = picking;
  if (picking)
  {
    sub_1D29AEB78(0, &qword_1EC6FDC10, 0x1E69790F0);
    pickingCopy = sub_1D29C43D4();
  }

  _pickerCopy = _picker;
  errorCopy = error;
  selfCopy = self;
  sub_1D29AB9A4(selfCopy, pickingCopy, error);
}

@end