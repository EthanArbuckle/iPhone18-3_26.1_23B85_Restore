@interface CNTonePickerController
- (CNTonePickerController)initWithAlertType:(int64_t)a3 activityAlert:(id)a4;
- (void)cancelButton:(id)a3;
- (void)doneButton:(id)a3;
@end

@implementation CNTonePickerController

- (void)cancelButton:(id)a3
{
  v4 = [(CNTonePickerController *)self delegate];
  [v4 pickerDidCancel:self];

  [(CNTonePickerController *)self dismissViewControllerAnimated:1 completion:0];
}

- (void)doneButton:(id)a3
{
  v4 = objc_alloc(MEMORY[0x1E695CD18]);
  v5 = [(CNTonePickerController *)self tonePicker];
  v6 = [v5 selectedToneIdentifier];
  v7 = [(CNTonePickerController *)self tonePicker];
  v8 = [v7 selectedVibrationIdentifier];
  v9 = [(CNTonePickerController *)self tonePicker];
  v11 = [v4 initWithSound:v6 vibration:v8 ignoreMute:{objc_msgSend(v9, "ignoreMute")}];

  v10 = [(CNTonePickerController *)self delegate];
  [v10 picker:self didPickItem:v11];

  [(CNTonePickerController *)self dismissViewControllerAnimated:1 completion:0];
}

- (CNTonePickerController)initWithAlertType:(int64_t)a3 activityAlert:(id)a4
{
  v7 = a4;
  if ((a3 - 3) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v30 = [MEMORY[0x1E696AAA8] currentHandler];
    [v30 handleFailureInMethod:a2 object:self file:@"CNTonePickerController.m" lineNumber:29 description:@"Only call and text alerts are allowed"];
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
    v11 = [[v9 alloc] initWithAlertType:a3];
    tonePicker = v8->_tonePicker;
    v8->_tonePicker = v11;

    v13 = CNContactsUIBundle();
    v14 = v13;
    if (a3 == 1)
    {
      v15 = [v13 localizedStringForKey:@"EDIT_RINGTONE" value:&stru_1F0CE7398 table:@"Localized"];
      v16 = [(TKTonePickerViewController *)v8->_tonePicker navigationItem];
      [v16 setTitle:v15];

      [(TKTonePickerViewController *)v8->_tonePicker setShowsNone:0];
    }

    else
    {
      v17 = [v13 localizedStringForKey:@"EDIT_TEXTTONE" value:&stru_1F0CE7398 table:@"Localized"];
      v18 = [(TKTonePickerViewController *)v8->_tonePicker navigationItem];
      [v18 setTitle:v17];

      [(TKTonePickerViewController *)v8->_tonePicker setShowsNone:1];
      [(TKTonePickerViewController *)v8->_tonePicker setNoneAtTop:1];
    }

    [(TKTonePickerViewController *)v8->_tonePicker setShowsIgnoreMute:1];
    -[TKTonePickerViewController setIgnoreMute:](v8->_tonePicker, "setIgnoreMute:", [v7 ignoreMute]);
    v19 = +[CNCapabilitiesManager defaultCapabilitiesManager];
    -[TKTonePickerViewController setShowsVibrations:](v8->_tonePicker, "setShowsVibrations:", [v19 hasVibratorCapability]);

    [(TKTonePickerViewController *)v8->_tonePicker setShowsDefault:1];
    v20 = [v7 sound];
    [(TKTonePickerViewController *)v8->_tonePicker setSelectedToneIdentifier:v20];

    v21 = [v7 vibration];
    [(TKTonePickerViewController *)v8->_tonePicker setSelectedVibrationIdentifier:v21];

    v22 = objc_alloc_init(CNToneKitPickerStyleProvider);
    [(TKTonePickerViewController *)v8->_tonePicker setStyleProvider:v22];

    v23 = [(CNTonePickerController *)v8 navigationBar];
    [v23 _cnui_applyContactStyle];

    v24 = [(TKTonePickerViewController *)v8->_tonePicker tableView];
    [v24 _cnui_applyContactStyle];

    v25 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:0 target:v8 action:sel_doneButton_];
    v26 = [(TKTonePickerViewController *)v8->_tonePicker navigationItem];
    [v26 setRightBarButtonItem:v25];

    v27 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:v8 action:sel_cancelButton_];
    v28 = [(TKTonePickerViewController *)v8->_tonePicker navigationItem];
    [v28 setLeftBarButtonItem:v27];

    [(CNTonePickerController *)v8 pushViewController:v8->_tonePicker animated:0];
  }

  return v8;
}

@end