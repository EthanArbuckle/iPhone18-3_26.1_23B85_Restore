@interface TTRUtilitarianSmallFlatComplicationTemplateGenerator
- (id)templateForTimelineModelEntry:(id)entry;
@end

@implementation TTRUtilitarianSmallFlatComplicationTemplateGenerator

- (id)templateForTimelineModelEntry:(id)entry
{
  v3 = [CLKSimpleTextProvider textProviderWithText:&stru_10758];
  v4 = [TTRComplicationAsset imageForFamily:7];
  if (v4)
  {
    v5 = [CLKImageProvider imageProviderWithOnePieceImage:v4];
    [v5 setForegroundAccentImage:v4];
  }

  else
  {
    v6 = +[REMLog ui];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      sub_7AF4(v6);
    }

    v5 = 0;
  }

  v7 = [[CLKComplicationTemplateUtilitarianSmallFlat alloc] initWithTextProvider:v3 imageProvider:v5];

  return v7;
}

@end