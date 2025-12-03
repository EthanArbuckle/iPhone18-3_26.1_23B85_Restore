@interface CNTonePickerController
- (CNTonePickerController)initWithAlertType:(int64_t)type activityAlert:(id)alert;
- (void)cancelButton:(id)button;
- (void)doneButton:(id)button;
@end

@implementation CNTonePickerController

- (void)cancelButton:(id)button
{
  delegate = [(CNTonePickerController *)self delegate];
  [delegate pickerDidCancel:self];

  [(CNTonePickerController *)self dismissViewControllerAnimated:1 completion:0];
}

- (void)doneButton:(id)button
{
  v4 = objc_alloc(MEMORY[0x1E695CD18]);
  tonePicker = [(CNTonePickerController *)self tonePicker];
  selectedToneIdentifier = [tonePicker selectedToneIdentifier];
  tonePicker2 = [(CNTonePickerController *)self tonePicker];
  selectedVibrationIdentifier = [tonePicker2 selectedVibrationIdentifier];
  tonePicker3 = [(CNTonePickerController *)self tonePicker];
  v11 = [v4 initWithSound:selectedToneIdentifier vibration:selectedVibrationIdentifier ignoreMute:{objc_msgSend(tonePicker3, "ignoreMute")}];

  delegate = [(CNTonePickerController *)self delegate];
  [delegate picker:self didPickItem:v11];

  [(CNTonePickerController *)self dismissViewControllerAnimated:1 completion:0];
}

- (CNTonePickerController)initWithAlertType:(int64_t)type activityAlert:(id)alert
{
  alertCopy = alert;
  if ((type - 3) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"CNTonePickerController.m" lineNumber:29 description:@"Only call and text alerts are allowed"];
  }

  v31.receiver = self;
  v31.super_class = CNTonePickerController;
  v8 = [(CNTonePickerController *)&v31 initWithNibName:0 bundle:0];
  if (v8)
  {
    v33 = 0;
    v34 = &v33;
    v35 = 0x2050000000;
    v9 = getTKTonePickerViewControllerClass_softClass;
    v36 = getTKTonePickerViewControllerClass_softClass;
    if (!getTKTonePickerViewControllerClass_softClass)
    {
      v32[0] = MEMORY[0x1E69E9820];
      v32[1] = 3221225472;
      v32[2] = __getTKTonePickerViewControllerClass_block_invoke;
      v32[3] = &unk_1E74E7518;
      v32[4] = &v33;
      __getTKTonePickerViewControllerClass_block_invoke(v32);
      v9 = v34[3];
    }

    v10 = v9;
    _Block_object_dispose(&v33, 8);
    v11 = [[v9 alloc] initWithAlertType:type];
    tonePicker = v8->_tonePicker;
    v8->_tonePicker = v11;

    v13 = CNContactsUIBundle();
    v14 = v13;
    if (type == 1)
    {
      v15 = [v13 localizedStringForKey:@"EDIT_RINGTONE" value:&stru_1F0CE7398 table:@"Localized"];
      navigationItem = [(TKTonePickerViewController *)v8->_tonePicker navigationItem];
      [navigationItem setTitle:v15];

      [(TKTonePickerViewController *)v8->_tonePicker setShowsNone:0];
    }

    else
    {
      v17 = [v13 localizedStringForKey:@"EDIT_TEXTTONE" value:&stru_1F0CE7398 table:@"Localized"];
      navigationItem2 = [(TKTonePickerViewController *)v8->_tonePicker navigationItem];
      [navigationItem2 setTitle:v17];

      [(TKTonePickerViewController *)v8->_tonePicker setShowsNone:1];
      [(TKTonePickerViewController *)v8->_tonePicker setNoneAtTop:1];
    }

    [(TKTonePickerViewController *)v8->_tonePicker setShowsIgnoreMute:1];
    -[TKTonePickerViewController setIgnoreMute:](v8->_tonePicker, "setIgnoreMute:", [alertCopy ignoreMute]);
    v19 = +[CNCapabilitiesManager defaultCapabilitiesManager];
    -[TKTonePickerViewController setShowsVibrations:](v8->_tonePicker, "setShowsVibrations:", [v19 hasVibratorCapability]);

    [(TKTonePickerViewController *)v8->_tonePicker setShowsDefault:1];
    sound = [alertCopy sound];
    [(TKTonePickerViewController *)v8->_tonePicker setSelectedToneIdentifier:sound];

    vibration = [alertCopy vibration];
    [(TKTonePickerViewController *)v8->_tonePicker setSelectedVibrationIdentifier:vibration];

    v22 = objc_alloc_init(CNToneKitPickerStyleProvider);
    [(TKTonePickerViewController *)v8->_tonePicker setStyleProvider:v22];

    navigationBar = [(CNTonePickerController *)v8 navigationBar];
    [navigationBar _cnui_applyContactStyle];

    tableView = [(TKTonePickerViewController *)v8->_tonePicker tableView];
    [tableView _cnui_applyContactStyle];

    v25 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:0 target:v8 action:sel_doneButton_];
    navigationItem3 = [(TKTonePickerViewController *)v8->_tonePicker navigationItem];
    [navigationItem3 setRightBarButtonItem:v25];

    v27 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:v8 action:sel_cancelButton_];
    navigationItem4 = [(TKTonePickerViewController *)v8->_tonePicker navigationItem];
    [navigationItem4 setLeftBarButtonItem:v27];

    [(CNTonePickerController *)v8 pushViewController:v8->_tonePicker animated:0];
  }

  return v8;
}

@end