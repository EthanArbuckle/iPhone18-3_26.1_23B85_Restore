@interface TTRUtilitarianSmallComplicationTemplateGenerator
- (id)templateForTimelineModelEntry:(id)a3;
@end

@implementation TTRUtilitarianSmallComplicationTemplateGenerator

- (id)templateForTimelineModelEntry:(id)a3
{
  v3 = [TTRComplicationAsset imageForFamily:6];
  if (!v3)
  {
    v4 = +[REMLog ui];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_7AF4(v4);
    }

    v3 = +[UIImage ttr_placeholderForInvalidImage];
  }

  v5 = [CLKImageProvider imageProviderWithOnePieceImage:v3];
  [v5 setForegroundAccentImage:v3];
  v6 = [[CLKComplicationTemplateUtilitarianSmallSquare alloc] initWithImageProvider:v5];

  return v6;
}

@end