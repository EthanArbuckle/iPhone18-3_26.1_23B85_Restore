@interface SCATCameraPointPickerEditableTableCellWithStepper
- (void)_updateTextFieldWidth:(id)width;
- (void)textFieldDidBeginEditing:(id)editing;
- (void)textFieldDidEndEditing:(id)editing;
@end

@implementation SCATCameraPointPickerEditableTableCellWithStepper

- (void)textFieldDidBeginEditing:(id)editing
{
  v5.receiver = self;
  v5.super_class = SCATCameraPointPickerEditableTableCellWithStepper;
  editingCopy = editing;
  [(AXUISettingsEditableTableCellWithStepper *)&v5 textFieldDidEndEditing:editingCopy];
  [(SCATCameraPointPickerEditableTableCellWithStepper *)self _updateTextFieldWidth:editingCopy, v5.receiver, v5.super_class];
}

- (void)textFieldDidEndEditing:(id)editing
{
  v5.receiver = self;
  v5.super_class = SCATCameraPointPickerEditableTableCellWithStepper;
  editingCopy = editing;
  [(AXUISettingsEditableTableCellWithStepper *)&v5 textFieldDidEndEditing:editingCopy];
  [(SCATCameraPointPickerEditableTableCellWithStepper *)self _updateTextFieldWidth:editingCopy, v5.receiver, v5.super_class];
}

- (void)_updateTextFieldWidth:(id)width
{
  widthCopy = width;
  [widthCopy frame];
  [widthCopy setFrame:?];
}

@end