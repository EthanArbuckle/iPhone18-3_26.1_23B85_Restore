@interface EnvironmentTableCell
- (EnvironmentTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
@end

@implementation EnvironmentTableCell

- (EnvironmentTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
{
  v12.receiver = self;
  v12.super_class = EnvironmentTableCell;
  v5 = [(EnvironmentTableCell *)&v12 initWithStyle:style reuseIdentifier:identifier specifier:specifier];
  if (v5)
  {
    v6 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
    titleLabel = [(EnvironmentTableCell *)v5 titleLabel];
    [titleLabel setFont:v6];

    v8 = [UIFont preferredFontForTextStyle:UIFontTextStyleCaption1];
    detailTextLabel = [(EnvironmentTableCell *)v5 detailTextLabel];
    [detailTextLabel setFont:v8];

    detailTextLabel2 = [(EnvironmentTableCell *)v5 detailTextLabel];
    [detailTextLabel2 setNumberOfLines:0];

    [(EnvironmentTableCell *)v5 setAccessoryView:0];
  }

  return v5;
}

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  v9.receiver = self;
  v9.super_class = EnvironmentTableCell;
  specifierCopy = specifier;
  [(EnvironmentTableCell *)&v9 refreshCellContentsWithSpecifier:specifierCopy];
  v5 = [specifierCopy propertyForKey:{@"EDSpecifierTitleKey", v9.receiver, v9.super_class}];
  titleLabel = [(EnvironmentTableCell *)self titleLabel];
  [titleLabel setText:v5];

  v7 = [specifierCopy propertyForKey:@"EDSpecifierSubtitleKey"];

  detailTextLabel = [(EnvironmentTableCell *)self detailTextLabel];
  [detailTextLabel setText:v7];
}

@end