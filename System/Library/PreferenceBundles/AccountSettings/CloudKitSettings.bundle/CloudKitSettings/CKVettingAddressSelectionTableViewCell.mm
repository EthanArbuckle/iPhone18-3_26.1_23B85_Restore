@interface CKVettingAddressSelectionTableViewCell
- (id)address;
- (void)clearSpinner;
- (void)deselect;
- (void)select;
- (void)startSpinner;
@end

@implementation CKVettingAddressSelectionTableViewCell

- (void)clearSpinner
{
  spinner = [(CKVettingAddressSelectionTableViewCell *)self spinner];
  [spinner stopAnimating];

  [(CKVettingAddressSelectionTableViewCell *)self setAccessoryView:0];
}

- (void)select
{
  [(CKVettingAddressSelectionTableViewCell *)self clearSpinner];
  [(CKVettingAddressSelectionTableViewCell *)self setAccessoryType:3];

  [(CKVettingAddressSelectionTableViewCell *)self setSelected:1 animated:1];
}

- (void)deselect
{
  [(CKVettingAddressSelectionTableViewCell *)self clearSpinner];
  [(CKVettingAddressSelectionTableViewCell *)self setAccessoryType:0];

  [(CKVettingAddressSelectionTableViewCell *)self setSelected:0 animated:1];
}

- (void)startSpinner
{
  accessoryView = [(CKVettingAddressSelectionTableViewCell *)self accessoryView];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    accessoryView2 = [(CKVettingAddressSelectionTableViewCell *)self accessoryView];
  }

  else
  {
    accessoryView2 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:100];
    [accessoryView2 setHidesWhenStopped:1];
  }

  [(CKVettingAddressSelectionTableViewCell *)self setAccessoryView:accessoryView2];
  [(CKVettingAddressSelectionTableViewCell *)self setSpinner:accessoryView2];
  [accessoryView2 startAnimating];
}

- (id)address
{
  email = [(CKVettingAddressSelectionTableViewCell *)self email];
  v5 = [email length];

  if (v5)
  {
    email2 = [(CKVettingAddressSelectionTableViewCell *)self email];
  }

  else
  {
    number = [(CKVettingAddressSelectionTableViewCell *)self number];
    v8 = [number length];

    if (v8)
    {
      email2 = [(CKVettingAddressSelectionTableViewCell *)self number];
    }

    else
    {
      v9 = +[NSAssertionHandler currentHandler];
      [v9 handleFailureInMethod:a2 object:self file:@"CKVettingAddressSelectionController.m" lineNumber:100 description:{@"Vetting cell without email or phone number: %@", self}];

      email2 = &stru_14980;
    }
  }

  return email2;
}

@end