@interface STStorageOtherCell
+ (id)specifierForOther;
- (void)refreshCellContentsWithSpecifier:(id)a3;
@end

@implementation STStorageOtherCell

+ (id)specifierForOther
{
  v2 = [PSSpecifier preferenceSpecifierNamed:&stru_2D2D0 target:0 set:0 get:0 detail:objc_opt_class() cell:2 edit:0];
  [v2 setProperty:objc_opt_class() forKey:PSCellClassKey];
  v3 = [NSNumber numberWithBool:1];
  [v2 setProperty:v3 forKey:PSEnabledKey];

  v4 = STStorageLocStr(@"OTHER");
  [v2 setProperty:v4 forKey:PSTitleKey];

  return v2;
}

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v7.receiver = self;
  v7.super_class = STStorageOtherCell;
  v4 = a3;
  [(STStorageOtherCell *)&v7 refreshCellContentsWithSpecifier:v4];
  STLoadTableIconForAppID();
  v5 = [v4 propertyForKey:PSTitleKey];
  [(STStorageOtherCell *)self setTitle:v5];

  v6 = [v4 propertyForKey:PSValueKey];

  -[STStorageOtherCell setSize:](self, "setSize:", [v6 longLongValue]);
  [(STStorageOtherCell *)self setInfo:0];
  [(STStorageOtherCell *)self setInfoHidden:1];
}

@end