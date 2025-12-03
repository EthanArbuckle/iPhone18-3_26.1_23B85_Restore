@interface CLSSettingsAccountCell
- (CLSSettingsAccountCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
- (void)setValue:(id)value;
@end

@implementation CLSSettingsAccountCell

- (CLSSettingsAccountCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v8.receiver = self;
  v8.super_class = CLSSettingsAccountCell;
  v4 = [(CLSSettingsAccountCell *)&v8 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    [(CLSSettingsAccountCell *)v4 setSelectionStyle:0];
    [(CLSSettingsAccountCell *)v5 setUserInteractionEnabled:0];
    valueLabel = [(CLSSettingsAccountCell *)v5 valueLabel];
    [valueLabel setAdjustsFontSizeToFitWidth:1];
    [valueLabel setMinimumScaleFactor:0.823529412];
  }

  return v5;
}

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  v4.receiver = self;
  v4.super_class = CLSSettingsAccountCell;
  [(CLSSettingsAccountCell *)&v4 refreshCellContentsWithSpecifier:specifier];
  [(CLSSettingsAccountCell *)self setAccessoryType:0];
}

- (void)setValue:(id)value
{
  v5.receiver = self;
  v5.super_class = CLSSettingsAccountCell;
  [(CLSSettingsAccountCell *)&v5 setValue:value];
  titleLabel = [(CLSSettingsAccountCell *)self titleLabel];
  [titleLabel sizeToFit];
}

@end