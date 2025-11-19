@interface PersonalHotspotDataUsageRootSpecifier
- (BillingPeriodSource)billingPeriodSource;
- (PersonalHotspotDataUsageRootSpecifier)init;
- (id)dataUsageString;
- (unint64_t)dataUsage;
@end

@implementation PersonalHotspotDataUsageRootSpecifier

- (PersonalHotspotDataUsageRootSpecifier)init
{
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = SFLocalizableWAPIStringKeyForKey();
  v5 = [v3 localizedStringForKey:v4 value:&stru_C668 table:@"PersonalHotspotDataUsage"];

  v15.receiver = self;
  v15.super_class = PersonalHotspotDataUsageRootSpecifier;
  v6 = [(PersonalHotspotDataUsageRootSpecifier *)&v15 initWithName:v5 target:0 set:0 get:0 detail:0 cell:4 edit:0];
  if (!v6)
  {
LABEL_14:
    v13 = v6;
    goto LABEL_15;
  }

  v7 = +[PersonalHotspotDataUsageCache sharedInstance];
  v8 = [(PersonalHotspotDataUsageRootSpecifier *)v6 billingPeriodSource];
  if (v8)
  {
    v9 = [(PersonalHotspotDataUsageRootSpecifier *)v6 billingPeriodSource];
    v10 = [v7 hotspotClientIDsForPeriod:objc_msgSend(v9 mruMap:{"selectedPeriod"), 0}];
  }

  else
  {
    v10 = [v7 hotspotClientIDsForPeriod:0 mruMap:0];
  }

  if ([v10 count])
  {
    [(PersonalHotspotDataUsageRootSpecifier *)v6 setTarget:v6];
    *&v6->PSSpecifier_opaque[OBJC_IVAR___PSSpecifier_getter] = "dataUsageString";
    if ([v10 count])
    {
      v11 = 2;
    }

    else
    {
      v11 = 4;
    }

    [(PersonalHotspotDataUsageRootSpecifier *)v6 setCellType:v11];
    if ([v10 count])
    {
      v12 = objc_opt_class();
    }

    else
    {
      v12 = 0;
    }

    [(PersonalHotspotDataUsageRootSpecifier *)v6 setDetailControllerClass:v12];
    [(PersonalHotspotDataUsageRootSpecifier *)v6 setProperty:objc_opt_class() forKey:PSCellClassKey];
    [(PersonalHotspotDataUsageRootSpecifier *)v6 setProperty:@"com.apple.graphic-icon.personal-hotspot" forKey:PSIconUTTypeIdentifierKey];
    [(PersonalHotspotDataUsageRootSpecifier *)v6 setProperty:&__kCFBooleanTrue forKey:PSLazyIconLoading];
    [(PersonalHotspotDataUsageRootSpecifier *)v6 setProperty:&__kCFBooleanTrue forKey:PSLazyIconDontUnload];

    goto LABEL_14;
  }

  v13 = 0;
LABEL_15:

  return v13;
}

- (unint64_t)dataUsage
{
  v3 = +[PersonalHotspotDataUsageCache sharedInstance];
  v4 = [(PersonalHotspotDataUsageRootSpecifier *)self billingPeriodSource];
  if (v4)
  {
    v5 = [(PersonalHotspotDataUsageRootSpecifier *)self billingPeriodSource];
    v6 = [v3 totalHotspotClientUsageForPeriod:{objc_msgSend(v5, "selectedPeriod")}];
  }

  else
  {
    v6 = [v3 totalHotspotClientUsageForPeriod:0];
  }

  return v6;
}

- (id)dataUsageString
{
  v2 = [(PersonalHotspotDataUsageRootSpecifier *)self dataUsage];
  if (v2)
  {
    v3 = usageSizeString(v2);
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = &stru_C668;
  }

  v5 = v4;

  return v4;
}

- (BillingPeriodSource)billingPeriodSource
{
  WeakRetained = objc_loadWeakRetained(&self->_billingPeriodSource);

  return WeakRetained;
}

@end