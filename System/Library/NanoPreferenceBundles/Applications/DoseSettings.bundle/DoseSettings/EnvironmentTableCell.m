@interface EnvironmentTableCell
- (EnvironmentTableCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5;
- (void)refreshCellContentsWithSpecifier:(id)a3;
@end

@implementation EnvironmentTableCell

- (EnvironmentTableCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5
{
  v12.receiver = self;
  v12.super_class = EnvironmentTableCell;
  v5 = [(EnvironmentTableCell *)&v12 initWithStyle:a3 reuseIdentifier:a4 specifier:a5];
  if (v5)
  {
    v6 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
    v7 = [(EnvironmentTableCell *)v5 titleLabel];
    [v7 setFont:v6];

    v8 = [UIFont preferredFontForTextStyle:UIFontTextStyleCaption1];
    v9 = [(EnvironmentTableCell *)v5 detailTextLabel];
    [v9 setFont:v8];

    v10 = [(EnvironmentTableCell *)v5 detailTextLabel];
    [v10 setNumberOfLines:0];

    [(EnvironmentTableCell *)v5 setAccessoryView:0];
  }

  return v5;
}

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v9.receiver = self;
  v9.super_class = EnvironmentTableCell;
  v4 = a3;
  [(EnvironmentTableCell *)&v9 refreshCellContentsWithSpecifier:v4];
  v5 = [v4 propertyForKey:{@"EDSpecifierTitleKey", v9.receiver, v9.super_class}];
  v6 = [(EnvironmentTableCell *)self titleLabel];
  [v6 setText:v5];

  v7 = [v4 propertyForKey:@"EDSpecifierSubtitleKey"];

  v8 = [(EnvironmentTableCell *)self detailTextLabel];
  [v8 setText:v7];
}

@end