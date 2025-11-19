@interface TVSettingsDownloadQualityListItemCell
- (id)_subtitleForSpecifier:(id)a3;
@end

@implementation TVSettingsDownloadQualityListItemCell

- (id)_subtitleForSpecifier:(id)a3
{
  v3 = [a3 name];
  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"DOWNLOAD_QUALITY_HIGH_TITLE" value:&stru_21328 table:@"TVSettings"];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = &stru_21328;
  }

  v8 = [v3 isEqualToString:v7];

  v9 = [NSBundle bundleForClass:objc_opt_class()];
  v10 = v9;
  if (v8)
  {
    v11 = @"DOWNLOAD_QUALITY_HIGH_SUBTITLE";
  }

  else
  {
    v11 = @"DOWNLOAD_QUALITY_LOW_SUBTITLE";
  }

  v12 = [v9 localizedStringForKey:v11 value:&stru_21328 table:@"TVSettings"];

  return v12;
}

@end