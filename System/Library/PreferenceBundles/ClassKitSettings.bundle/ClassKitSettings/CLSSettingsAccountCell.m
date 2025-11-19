@interface CLSSettingsAccountCell
- (CLSSettingsAccountCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)refreshCellContentsWithSpecifier:(id)a3;
- (void)setValue:(id)a3;
@end

@implementation CLSSettingsAccountCell

- (CLSSettingsAccountCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v8.receiver = self;
  v8.super_class = CLSSettingsAccountCell;
  v4 = [(CLSSettingsAccountCell *)&v8 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    [(CLSSettingsAccountCell *)v4 setSelectionStyle:0];
    [(CLSSettingsAccountCell *)v5 setUserInteractionEnabled:0];
    v6 = [(CLSSettingsAccountCell *)v5 valueLabel];
    [v6 setAdjustsFontSizeToFitWidth:1];
    [v6 setMinimumScaleFactor:0.823529412];
  }

  return v5;
}

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v4.receiver = self;
  v4.super_class = CLSSettingsAccountCell;
  [(CLSSettingsAccountCell *)&v4 refreshCellContentsWithSpecifier:a3];
  [(CLSSettingsAccountCell *)self setAccessoryType:0];
}

- (void)setValue:(id)a3
{
  v5.receiver = self;
  v5.super_class = CLSSettingsAccountCell;
  [(CLSSettingsAccountCell *)&v5 setValue:a3];
  v4 = [(CLSSettingsAccountCell *)self titleLabel];
  [v4 sizeToFit];
}

@end