@interface HPRFSessionTrackerAppCyclingPowerZoneCell
- (void)refreshCellContentsWithSpecifier:(id)specifier;
@end

@implementation HPRFSessionTrackerAppCyclingPowerZoneCell

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v21 = [specifierCopy propertyForKey:@"HPRFSessionTrackerAppCyclingPowerZoneCellEditableKey"];
  v5 = [specifierCopy propertyForKey:@"HPRFSessionTrackerAppCyclingPowerZoneCellTitleKey"];
  v6 = [specifierCopy propertyForKey:@"HPRFSessionTrackerAppCyclingPowerZoneCellDisplayRangeKey"];
  v7 = [specifierCopy propertyForKey:@"HPRFSessionTrackerAppCyclingPowerZoneCellPercentageRangeKey"];

  v8 = [NSAttributedString alloc];
  v24 = NSForegroundColorAttributeName;
  v9 = +[UIColor systemGrayColor];
  v25 = v9;
  v10 = [NSDictionary dictionaryWithObjects:&v25 forKeys:&v24 count:1];
  v11 = [v8 initWithString:v7 attributes:v10];

  v12 = [NSMutableAttributedString alloc];
  v22 = NSForegroundColorAttributeName;
  v13 = +[UIColor whiteColor];
  v23 = v13;
  v14 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];
  v15 = [v12 initWithString:v5 attributes:v14];

  v16 = [[NSAttributedString alloc] initWithString:@"  "];
  [v15 appendAttributedString:v16];

  [v15 appendAttributedString:v11];
  titleLabel = [(HPRFSessionTrackerAppCyclingPowerZoneCell *)self titleLabel];
  [titleLabel setAttributedText:v15];

  valueLabel = [(HPRFSessionTrackerAppCyclingPowerZoneCell *)self valueLabel];
  [valueLabel setText:v6];

  v19 = +[UIColor whiteColor];
  valueLabel2 = [(HPRFSessionTrackerAppCyclingPowerZoneCell *)self valueLabel];
  [valueLabel2 setTextColor:v19];

  if ([v21 BOOLValue])
  {
    [(HPRFSessionTrackerAppCyclingPowerZoneCell *)self setAccessoryType:1];
  }

  -[HPRFSessionTrackerAppCyclingPowerZoneCell setCellEnabled:](self, "setCellEnabled:", [v21 BOOLValue]);
}

@end