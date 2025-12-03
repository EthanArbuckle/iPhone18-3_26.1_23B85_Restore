@interface PLBatteryUISecondaryTextSettableCell
- (void)refreshCellContentsWithSpecifier:(id)specifier;
- (void)updateConfigurationUsingState:(id)state;
@end

@implementation PLBatteryUISecondaryTextSettableCell

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  v4.receiver = self;
  v4.super_class = PLBatteryUISecondaryTextSettableCell;
  [(PLBatteryUISecondaryTextSettableCell *)&v4 refreshCellContentsWithSpecifier:specifier];
  [(PLBatteryUISecondaryTextSettableCell *)self setNeedsUpdateConfiguration];
}

- (void)updateConfigurationUsingState:(id)state
{
  stateCopy = state;
  specifier = [(PLBatteryUISecondaryTextSettableCell *)self specifier];
  v5 = [stateCopy copy];

  v6 = +[UIListContentConfiguration valueCellConfiguration];
  v7 = [v6 updatedConfigurationForState:v5];

  v8 = [specifier propertyForKey:@"PLBatteryUISecondaryTextSettableCellPrimaryTextKey"];
  [v7 setText:v8];
  v9 = [specifier propertyForKey:@"PLBatteryUISecondaryTextSettableCellSecondaryTextKey"];
  [v7 setSecondaryAttributedText:v9];

  [(PLBatteryUISecondaryTextSettableCell *)self setContentConfiguration:v7];
  identifier = [specifier identifier];
  [(PLBatteryUISecondaryTextSettableCell *)self setAccessibilityIdentifier:identifier];

  [(PLBatteryUISecondaryTextSettableCell *)self setAccessibilityLabel:v8];
}

@end