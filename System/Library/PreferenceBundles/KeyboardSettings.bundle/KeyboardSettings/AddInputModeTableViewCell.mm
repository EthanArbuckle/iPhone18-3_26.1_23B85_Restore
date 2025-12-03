@interface AddInputModeTableViewCell
- (AddInputModeTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
@end

@implementation AddInputModeTableViewCell

- (AddInputModeTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
{
  v8.receiver = self;
  v8.super_class = AddInputModeTableViewCell;
  v6 = [(AddInputModeTableViewCell *)&v8 initWithStyle:style reuseIdentifier:identifier specifier:?];
  if (v6)
  {
    if (![specifier propertyForKey:@"TIKBAllIdentifiersKey"])
    {
      [specifier propertyForKey:PSIDKey];
      if ([UIKeyboardInputModeGetVariant() length])
      {
        [-[AddInputModeTableViewCell detailTextLabel](v6 "detailTextLabel")];
      }
    }
  }

  return v6;
}

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  v5.receiver = self;
  v5.super_class = AddInputModeTableViewCell;
  [(AddInputModeTableViewCell *)&v5 refreshCellContentsWithSpecifier:?];
  if (![specifier propertyForKey:@"TIKBAllIdentifiersKey"])
  {
    [specifier propertyForKey:PSIDKey];
    if ([UIKeyboardInputModeGetVariant() length])
    {
      [-[AddInputModeTableViewCell detailTextLabel](self "detailTextLabel")];
    }
  }
}

@end