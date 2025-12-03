@interface CNContactPickerSingleContactDelegate
- (CNContactPickerSingleContactDelegate)initWithTargetViewController:(id)controller;
- (CNLimitedAccessContactPickerViewController)targetViewController;
- (void)contactPicker:(id)picker didSelectContact:(id)contact;
- (void)contactPickerDidCancel:(id)cancel;
@end

@implementation CNContactPickerSingleContactDelegate

- (CNLimitedAccessContactPickerViewController)targetViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_targetViewController);

  return WeakRetained;
}

- (void)contactPickerDidCancel:(id)cancel
{
  cancelCopy = cancel;
  WeakRetained = objc_loadWeakRetained(&self->_targetViewController);
  [WeakRetained contactPickerDidCancel:cancelCopy];
}

- (void)contactPicker:(id)picker didSelectContact:(id)contact
{
  contactCopy = contact;
  pickerCopy = picker;
  WeakRetained = objc_loadWeakRetained(&self->_targetViewController);
  [WeakRetained contactPicker:pickerCopy didSelectContact:contactCopy];
}

- (CNContactPickerSingleContactDelegate)initWithTargetViewController:(id)controller
{
  controllerCopy = controller;
  v9.receiver = self;
  v9.super_class = CNContactPickerSingleContactDelegate;
  v5 = [(CNContactPickerSingleContactDelegate *)&v9 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_targetViewController, controllerCopy);
    v7 = v6;
  }

  return v6;
}

@end