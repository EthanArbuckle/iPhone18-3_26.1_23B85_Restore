@interface STStorageUsageAppHeaderCell
+ (id)specifierForStorageApp:(id)a3;
- (void)refreshCellContentsWithSpecifier:(id)a3;
@end

@implementation STStorageUsageAppHeaderCell

+ (id)specifierForStorageApp:(id)a3
{
  v3 = a3;
  v4 = [PSSpecifier preferenceSpecifierNamed:&stru_AD3C8 target:0 set:0 get:0 detail:0 cell:-1 edit:0];
  [v4 setProperty:objc_opt_class() forKey:PSCellClassKey];
  v5 = [NSNumber numberWithBool:1];
  [v4 setProperty:v5 forKey:PSEnabledKey];

  [v4 setProperty:v3 forKey:STStorageAppKey];

  return v4;
}

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v11.receiver = self;
  v11.super_class = STStorageUsageAppHeaderCell;
  v4 = a3;
  [(STStorageUsageAppHeaderCell *)&v11 refreshCellContentsWithSpecifier:v4];
  v5 = [v4 propertyForKey:{STStorageAppKey, v11.receiver, v11.super_class}];

  v6 = [v5 usageBundle];
  if (v6 || [v5 isPseudoApp])
  {
    v7 = [v5 name];
    [(STStorageUsageAppHeaderCell *)self setTitle:v7];

    [(STStorageUsageAppHeaderCell *)self setInfo:0];
    v8 = [v5 vendorName];
    v9 = v8;
    if (v8)
    {
      v10 = v8;
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