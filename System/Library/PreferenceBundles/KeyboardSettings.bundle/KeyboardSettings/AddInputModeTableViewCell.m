@interface AddInputModeTableViewCell
- (AddInputModeTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5;
- (void)refreshCellContentsWithSpecifier:(id)a3;
@end

@implementation AddInputModeTableViewCell

- (AddInputModeTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5
{
  v8.receiver = self;
  v8.super_class = AddInputModeTableViewCell;
  v6 = [(AddInputModeTableViewCell *)&v8 initWithStyle:a3 reuseIdentifier:a4 specifier:?];
  if (v6)
  {
    if (![a5 propertyForKey:@"TIKBAllIdentifiersKey"])
    {
      [a5 propertyForKey:PSIDKey];
      if ([UIKeyboardInputModeGetVariant() length])
      {
        [-[AddInputModeTableViewCell detailTextLabel](v6 "detailTextLabel")];
      }
    }
  }

  return v6;
}

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v5.receiver = self;
  v5.super_class = AddInputModeTableViewCell;
  [(AddInputModeTableViewCell *)&v5 refreshCellContentsWithSpecifier:?];
  if (![a3 propertyForKey:@"TIKBAllIdentifiersKey"])
  {
    [a3 propertyForKey:PSIDKey];
    if ([UIKeyboardInputModeGetVariant() length])
    {
      [-[AddInputModeTableViewCell detailTextLabel](self "detailTextLabel")];
    }
  }
}

@end