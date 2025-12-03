@interface STStorageCalcCell
+ (id)specifierForCalc;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
@end

@implementation STStorageCalcCell

+ (id)specifierForCalc
{
  v2 = [PSSpecifier preferenceSpecifierNamed:&stru_2D2D0 target:0 set:0 get:0 detail:0 cell:4 edit:0];
  [v2 setProperty:objc_opt_class() forKey:PSCellClassKey];
  v3 = [NSNumber numberWithBool:1];
  v4 = PSEnabledKey;
  [v2 setProperty:v3 forKey:PSEnabledKey];

  v5 = STStorageLocStr(@"CALCULATING");
  [v2 setProperty:v5 forKey:PSTitleKey];

  [v2 setProperty:&__kCFBooleanFalse forKey:v4];

  return v2;
}

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  v6.receiver = self;
  v6.super_class = STStorageCalcCell;
  specifierCopy = specifier;
  [(STStorageCalcCell *)&v6 refreshCellContentsWithSpecifier:specifierCopy];
  STLoadTableIconForAppID();
  v5 = [specifierCopy propertyForKey:PSTitleKey];

  [(STStorageCalcCell *)self setTitle:v5];
  [(STStorageCalcCell *)self setSize:0];
  [(STStorageCalcCell *)self setInfoHidden:1];
  [(STStorageCalcCell *)self setEnabled:0];
}

@end