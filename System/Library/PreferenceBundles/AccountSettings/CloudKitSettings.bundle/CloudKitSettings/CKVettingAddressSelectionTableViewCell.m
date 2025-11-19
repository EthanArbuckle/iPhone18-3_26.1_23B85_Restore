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
  v3 = [(CKVettingAddressSelectionTableViewCell *)self spinner];
  [v3 stopAnimating];

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
  v3 = [(CKVettingAddressSelectionTableViewCell *)self accessoryView];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [(CKVettingAddressSelectionTableViewCell *)self accessoryView];
  }

  else
  {
    v5 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:100];
    [v5 setHidesWhenStopped:1];
  }

  [(CKVettingAddressSelectionTableViewCell *)self setAccessoryView:v5];
  [(CKVettingAddressSelectionTableViewCell *)self setSpinner:v5];
  [v5 startAnimating];
}

- (id)address
{
  v4 = [(CKVettingAddressSelectionTableViewCell *)self email];
  v5 = [v4 length];

  if (v5)
  {
    v6 = [(CKVettingAddressSelectionTableViewCell *)self email];
  }

  else
  {
    v7 = [(CKVettingAddressSelectionTableViewCell *)self number];
    v8 = [v7 length];

    if (v8)
    {
      v6 = [(CKVettingAddressSelectionTableViewCell *)self number];
    }

    else
    {
      v9 = +[NSAssertionHandler currentHandler];
      [v9 handleFailureInMethod:a2 object:self file:@"CKVettingAddressSelectionController.m" lineNumber:100 description:{@"Vetting cell without email or phone number: %@", self}];

      v6 = &stru_14980;
    }
  }

  return v6;
}

@end