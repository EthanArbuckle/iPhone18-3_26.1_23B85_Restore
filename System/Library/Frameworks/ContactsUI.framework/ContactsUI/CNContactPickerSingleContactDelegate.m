@interface CNContactPickerSingleContactDelegate
- (CNContactPickerSingleContactDelegate)initWithTargetViewController:(id)a3;
- (CNLimitedAccessContactPickerViewController)targetViewController;
- (void)contactPicker:(id)a3 didSelectContact:(id)a4;
- (void)contactPickerDidCancel:(id)a3;
@end

@implementation CNContactPickerSingleContactDelegate

- (CNLimitedAccessContactPickerViewController)targetViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_targetViewController);

  return WeakRetained;
}

- (void)contactPickerDidCancel:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_targetViewController);
  [WeakRetained contactPickerDidCancel:v4];
}

- (void)contactPicker:(id)a3 didSelectContact:(id)a4
{
  v6 = a4;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_targetViewController);
  [WeakRetained contactPicker:v7 didSelectContact:v6];
}

- (CNContactPickerSingleContactDelegate)initWithTargetViewController:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CNContactPickerSingleContactDelegate;
  v5 = [(CNContactPickerSingleContactDelegate *)&v9 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_targetViewController, v4);
    v7 = v6;
  }

  return v6;
}

@end