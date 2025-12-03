@interface TVSettingsStreamingQualityListItemCell
- (id)_subtitleForSpecifier:(id)specifier;
@end

@implementation TVSettingsStreamingQualityListItemCell

- (id)_subtitleForSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v29.receiver = self;
  v29.super_class = TVSettingsStreamingQualityListItemCell;
  _tableView = [(TVSettingsStreamingQualityListItemCell *)&v29 _tableView];
  dataSource = [_tableView dataSource];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v28.receiver = self;
    v28.super_class = TVSettingsStreamingQualityListItemCell;
    _tableView2 = [(TVSettingsStreamingQualityListItemCell *)&v28 _tableView];
    dataSource2 = [_tableView2 dataSource];
    title = [dataSource2 title];

    v11 = @"PLAYBACK_QUALITY_LOW_WIFI_SUBTITLE";
    if (title)
    {
      v12 = [NSBundle bundleForClass:objc_opt_class()];
      v13 = [v12 localizedStringForKey:@"CELLULAR_QUALITY_PLAYBACK_SELECTION_TITLE" value:&stru_21328 table:@"TVSettings"];
      v14 = v13;
      v15 = v13 ? v13 : &stru_21328;
      v16 = [title isEqualToString:v15];

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

  name = [specifierCopy name];
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

  v22 = [name isEqualToString:v21];

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