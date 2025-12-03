@interface STStorageUsageAppHeaderCell
+ (id)specifierForStorageApp:(id)app;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
@end

@implementation STStorageUsageAppHeaderCell

+ (id)specifierForStorageApp:(id)app
{
  appCopy = app;
  v4 = [PSSpecifier preferenceSpecifierNamed:&stru_2D2D0 target:0 set:0 get:0 detail:0 cell:-1 edit:0];
  [v4 setProperty:objc_opt_class() forKey:PSCellClassKey];
  v5 = [NSNumber numberWithBool:1];
  [v4 setProperty:v5 forKey:PSEnabledKey];

  [v4 setProperty:appCopy forKey:STStorageAppKey];

  return v4;
}

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  v11.receiver = self;
  v11.super_class = STStorageUsageAppHeaderCell;
  specifierCopy = specifier;
  [(STStorageUsageAppHeaderCell *)&v11 refreshCellContentsWithSpecifier:specifierCopy];
  v5 = [specifierCopy propertyForKey:{STStorageAppKey, v11.receiver, v11.super_class}];

  usageBundle = [v5 usageBundle];
  if (usageBundle || [v5 isPseudoApp])
  {
    name = [v5 name];
    [(STStorageUsageAppHeaderCell *)self setTitle:name];

    [(STStorageUsageAppHeaderCell *)self setInfo:0];
    vendorName = [v5 vendorName];
    v9 = vendorName;
    if (vendorName)
    {
      v10 = vendorName;
    }

    else
    {
      v10 = vendorAppleInc;
    }

    [(STStorageUsageAppHeaderCell *)self setVendor:v10];

    [(STStorageUsageAppHeaderCell *)self setInfoHidden:1];
  }

  [(STStorageUsageAppHeaderCell *)self setNeedsDisplay];
}

@end