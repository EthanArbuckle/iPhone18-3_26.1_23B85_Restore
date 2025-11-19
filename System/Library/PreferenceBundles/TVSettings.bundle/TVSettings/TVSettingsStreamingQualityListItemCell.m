@interface TVSettingsStreamingQualityListItemCell
- (id)_subtitleForSpecifier:(id)a3;
@end

@implementation TVSettingsStreamingQualityListItemCell

- (id)_subtitleForSpecifier:(id)a3
{
  v4 = a3;
  v29.receiver = self;
  v29.super_class = TVSettingsStreamingQualityListItemCell;
  v5 = [(TVSettingsStreamingQualityListItemCell *)&v29 _tableView];
  v6 = [v5 dataSource];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v28.receiver = self;
    v28.super_class = TVSettingsStreamingQualityListItemCell;
    v8 = [(TVSettingsStreamingQualityListItemCell *)&v28 _tableView];
    v9 = [v8 dataSource];
    v10 = [v9 title];

    v11 = @"PLAYBACK_QUALITY_LOW_WIFI_SUBTITLE";
    if (v10)
    {
      v12 = [NSBundle bundleForClass:objc_opt_class()];
      v13 = [v12 localizedStringForKey:@"CELLULAR_QUALITY_PLAYBACK_SELECTION_TITLE" value:&stru_21328 table:@"TVSettings"];
      v14 = v13;
      v15 = v13 ? v13 : &stru_21328;
      v16 = [v10 isEqualToString:v15];

      if (v16)
      {
        v11 = @"PLAYBACK_QUALITY_AUTO_SUBTITLE";
      }
    }
  }

  else
  {
    v11 = @"PLAYBACK_QUALITY_LOW_WIFI_SUBTITLE";
  }

  v17 = [v4 name];
  v18 = [NSBundle bundleForClass:objc_opt_class()];
  v19 = [v18 localizedStringForKey:@"PLAYBACK_QUALITY_HIGH_TITLE" value:&stru_21328 table:@"TVSettings"];
  v20 = v19;
  if (v19)
  {
    v21 = v19;
  }

  else
  {
    v21 = &stru_21328;
  }

  v22 = [v17 isEqualToString:v21];

  v23 = [NSBundle bundleForClass:objc_opt_class()];
  v24 = v23;
  if (v22)
  {
    v25 = @"PLAYBACK_QUALITY_HIGH_SUBTITLE";
  }

  else
  {
    v25 = v11;
  }

  v26 = [v23 localizedStringForKey:v25 value:&stru_21328 table:@"TVSettings"];

  return v26;
}

@end