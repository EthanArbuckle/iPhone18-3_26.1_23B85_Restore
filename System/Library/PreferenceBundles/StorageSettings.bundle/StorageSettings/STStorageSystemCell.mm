@interface STStorageSystemCell
+ (id)specifierForSystem;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
@end

@implementation STStorageSystemCell

+ (id)specifierForSystem
{
  v2 = STSizeOfSystemVolume();
  v3 = [PSSpecifier preferenceSpecifierNamed:&stru_2D2D0 target:0 set:0 get:0 detail:objc_opt_class() cell:2 edit:0];
  [v3 setProperty:objc_opt_class() forKey:PSCellClassKey];
  v4 = [NSNumber numberWithBool:1];
  [v3 setProperty:v4 forKey:PSEnabledKey];

  v5 = STNameForCategoryKey();
  [v3 setProperty:v5 forKey:PSTitleKey];

  v6 = [NSNumber numberWithLongLong:v2];
  [v3 setProperty:v6 forKey:PSValueKey];

  return v3;
}

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  v7.receiver = self;
  v7.super_class = STStorageSystemCell;
  specifierCopy = specifier;
  [(STStorageSystemCell *)&v7 refreshCellContentsWithSpecifier:specifierCopy];
  STLoadTableIconForAppID();
  v5 = [specifierCopy propertyForKey:PSTitleKey];
  [(STStorageSystemCell *)self setTitle:v5];

  v6 = [specifierCopy propertyForKey:PSValueKey];

  -[STStorageSystemCell setSize:](self, "setSize:", [v6 longLongValue]);
  [(STStorageSystemCell *)self setInfoHidden:1];
}

@end