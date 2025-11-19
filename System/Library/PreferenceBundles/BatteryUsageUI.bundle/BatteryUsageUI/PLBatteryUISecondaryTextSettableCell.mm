@interface PLBatteryUISecondaryTextSettableCell
- (void)refreshCellContentsWithSpecifier:(id)a3;
- (void)updateConfigurationUsingState:(id)a3;
@end

@implementation PLBatteryUISecondaryTextSettableCell

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v4.receiver = self;
  v4.super_class = PLBatteryUISecondaryTextSettableCell;
  [(PLBatteryUISecondaryTextSettableCell *)&v4 refreshCellContentsWithSpecifier:a3];
  [(PLBatteryUISecondaryTextSettableCell *)self setNeedsUpdateConfiguration];
}

- (void)updateConfigurationUsingState:(id)a3
{
  v4 = a3;
  v11 = [(PLBatteryUISecondaryTextSettableCell *)self specifier];
  v5 = [v4 copy];

  v6 = +[UIListContentConfiguration valueCellConfiguration];
  v7 = [v6 updatedConfigurationForState:v5];

  v8 = [v11 propertyForKey:@"PLBatteryUISecondaryTextSettableCellPrimaryTextKey"];
  [v7 setText:v8];
  v9 = [v11 propertyForKey:@"PLBatteryUISecondaryTextSettableCellSecondaryTextKey"];
  [v7 setSecondaryAttributedText:v9];

  [(PLBatteryUISecondaryTextSettableCell *)self setContentConfiguration:v7];
  v10 = [v11 identifier];
  [(PLBatteryUISecondaryTextSettableCell *)self setAccessibilityIdentifier:v10];

  [(PLBatteryUISecondaryTextSettableCell *)self setAccessibilityLabel:v8];
}

@end