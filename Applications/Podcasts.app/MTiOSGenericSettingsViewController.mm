@interface MTiOSGenericSettingsViewController
- (id)optionsTableViewControllerWithOption:(id)a3;
- (id)tableView:(id)a3 willSelectRowAtIndexPath:(id)a4;
- (void)configureCell:(id)a3 atIndexPath:(id)a4 withDescription:(id)a5 inGroupWithIdentifier:(id)a6;
- (void)dismissKeyboard:(id)a3;
- (void)setCell:(id)a3 enabled:(BOOL)a4 withDescription:(id)a5;
- (void)textFieldDidBeginEditing:(id)a3;
- (void)textFieldDidEndEditing:(id)a3;
@end

@implementation MTiOSGenericSettingsViewController

- (void)configureCell:(id)a3 atIndexPath:(id)a4 withDescription:(id)a5 inGroupWithIdentifier:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v26.receiver = self;
  v26.super_class = MTiOSGenericSettingsViewController;
  [(MTGenericSettingsViewController *)&v26 configureCell:v10 atIndexPath:v11 withDescription:v12 inGroupWithIdentifier:v13];
  if ([v12 type] == 6)
  {
    v14 = v12;
    v15 = v10;
    [v15 setDelegate:self];
    v16 = [v15 textField];
    v17 = [v14 value];
    [v16 setText:v17];

    v18 = [v15 textField];
    v19 = [v14 placeholder];
    [v18 setPlaceholder:v19];

    v20 = [v15 textField];
    [v20 setReturnKeyType:9];

    [v15 setSelectionStyle:0];
    objc_initWeak(&location, self);
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_100058DBC;
    v22[3] = &unk_1004D81C0;
    objc_copyWeak(&v24, &location);
    v21 = v14;
    v23 = v21;
    [v15 setTextChanged:v22];

    objc_destroyWeak(&v24);
    objc_destroyWeak(&location);
  }
}

- (void)setCell:(id)a3 enabled:(BOOL)a4 withDescription:(id)a5
{
  v6 = a4;
  v8 = a3;
  v12.receiver = self;
  v12.super_class = MTiOSGenericSettingsViewController;
  v9 = a5;
  [(MTGenericSettingsViewController *)&v12 setCell:v8 enabled:v6 withDescription:v9];
  v10 = [v9 type];

  if (v10 == 6)
  {
    v11 = [v8 textField];
    [v11 setEnabled:v6];
  }
}

- (id)tableView:(id)a3 willSelectRowAtIndexPath:(id)a4
{
  v6 = a4;
  v12.receiver = self;
  v12.super_class = MTiOSGenericSettingsViewController;
  v7 = [(MTGenericSettingsViewController *)&v12 tableView:a3 willSelectRowAtIndexPath:v6];
  if (v7)
  {
    v8 = [(MTGenericSettingsViewController *)self settingAtIndexPath:v6];
    v9 = [v8 type];
    v10 = 0;
    if (v9 && v9 != 6)
    {
      v10 = v6;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)textFieldDidBeginEditing:(id)a3
{
  v4 = a3;
  v5 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"dismissKeyboard:"];
  tap = self->_tap;
  self->_tap = v5;

  [(UITapGestureRecognizer *)self->_tap setCancelsTouchesInView:0];
  activeTextField = self->_activeTextField;
  self->_activeTextField = v4;
  v8 = v4;

  v9 = [(MTiOSGenericSettingsViewController *)self tableView];
  [v9 addGestureRecognizer:self->_tap];
}

- (void)textFieldDidEndEditing:(id)a3
{
  activeTextField = self->_activeTextField;
  self->_activeTextField = 0;

  v5 = [(MTiOSGenericSettingsViewController *)self tableView];
  [v5 removeGestureRecognizer:self->_tap];
}

- (void)dismissKeyboard:(id)a3
{
  [(UITextField *)self->_activeTextField resignFirstResponder];
  activeTextField = self->_activeTextField;
  self->_activeTextField = 0;
}

- (id)optionsTableViewControllerWithOption:(id)a3
{
  v3 = a3;
  v4 = [[MTOptionsTableViewController alloc] initWithOption:v3 largeTitleDisplayMode:2];

  return v4;
}

@end