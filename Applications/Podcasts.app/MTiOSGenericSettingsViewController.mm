@interface MTiOSGenericSettingsViewController
- (id)optionsTableViewControllerWithOption:(id)option;
- (id)tableView:(id)view willSelectRowAtIndexPath:(id)path;
- (void)configureCell:(id)cell atIndexPath:(id)path withDescription:(id)description inGroupWithIdentifier:(id)identifier;
- (void)dismissKeyboard:(id)keyboard;
- (void)setCell:(id)cell enabled:(BOOL)enabled withDescription:(id)description;
- (void)textFieldDidBeginEditing:(id)editing;
- (void)textFieldDidEndEditing:(id)editing;
@end

@implementation MTiOSGenericSettingsViewController

- (void)configureCell:(id)cell atIndexPath:(id)path withDescription:(id)description inGroupWithIdentifier:(id)identifier
{
  cellCopy = cell;
  pathCopy = path;
  descriptionCopy = description;
  identifierCopy = identifier;
  v26.receiver = self;
  v26.super_class = MTiOSGenericSettingsViewController;
  [(MTGenericSettingsViewController *)&v26 configureCell:cellCopy atIndexPath:pathCopy withDescription:descriptionCopy inGroupWithIdentifier:identifierCopy];
  if ([descriptionCopy type] == 6)
  {
    v14 = descriptionCopy;
    v15 = cellCopy;
    [v15 setDelegate:self];
    textField = [v15 textField];
    value = [v14 value];
    [textField setText:value];

    textField2 = [v15 textField];
    placeholder = [v14 placeholder];
    [textField2 setPlaceholder:placeholder];

    textField3 = [v15 textField];
    [textField3 setReturnKeyType:9];

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

- (void)setCell:(id)cell enabled:(BOOL)enabled withDescription:(id)description
{
  enabledCopy = enabled;
  cellCopy = cell;
  v12.receiver = self;
  v12.super_class = MTiOSGenericSettingsViewController;
  descriptionCopy = description;
  [(MTGenericSettingsViewController *)&v12 setCell:cellCopy enabled:enabledCopy withDescription:descriptionCopy];
  type = [descriptionCopy type];

  if (type == 6)
  {
    textField = [cellCopy textField];
    [textField setEnabled:enabledCopy];
  }
}

- (id)tableView:(id)view willSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  v12.receiver = self;
  v12.super_class = MTiOSGenericSettingsViewController;
  v7 = [(MTGenericSettingsViewController *)&v12 tableView:view willSelectRowAtIndexPath:pathCopy];
  if (v7)
  {
    v8 = [(MTGenericSettingsViewController *)self settingAtIndexPath:pathCopy];
    type = [v8 type];
    v10 = 0;
    if (type && type != 6)
    {
      v10 = pathCopy;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)textFieldDidBeginEditing:(id)editing
{
  editingCopy = editing;
  v5 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"dismissKeyboard:"];
  tap = self->_tap;
  self->_tap = v5;

  [(UITapGestureRecognizer *)self->_tap setCancelsTouchesInView:0];
  activeTextField = self->_activeTextField;
  self->_activeTextField = editingCopy;
  v8 = editingCopy;

  tableView = [(MTiOSGenericSettingsViewController *)self tableView];
  [tableView addGestureRecognizer:self->_tap];
}

- (void)textFieldDidEndEditing:(id)editing
{
  activeTextField = self->_activeTextField;
  self->_activeTextField = 0;

  tableView = [(MTiOSGenericSettingsViewController *)self tableView];
  [tableView removeGestureRecognizer:self->_tap];
}

- (void)dismissKeyboard:(id)keyboard
{
  [(UITextField *)self->_activeTextField resignFirstResponder];
  activeTextField = self->_activeTextField;
  self->_activeTextField = 0;
}

- (id)optionsTableViewControllerWithOption:(id)option
{
  optionCopy = option;
  v4 = [[MTOptionsTableViewController alloc] initWithOption:optionCopy largeTitleDisplayMode:2];

  return v4;
}

@end