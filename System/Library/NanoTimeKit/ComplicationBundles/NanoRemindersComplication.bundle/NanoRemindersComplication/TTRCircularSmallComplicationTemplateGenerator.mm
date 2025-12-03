@interface TTRCircularSmallComplicationTemplateGenerator
- (id)templateForTimelineModelEntry:(id)entry;
@end

@implementation TTRCircularSmallComplicationTemplateGenerator

- (id)templateForTimelineModelEntry:(id)entry
{
  v3 = [TTRComplicationAsset imageForFamily:0];
  if (!v3)
  {
    v4 = +[REMLog ui];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_7B38(v4);
    }

    v3 = +[UIImage ttr_placeholderForInvalidImage];
  }

  v5 = [CLKImageProvider imageProviderWithOnePieceImage:v3];
  v6 = [[CLKComplicationTemplateCircularSmallSimpleImage alloc] initWithImageProvider:v5];

  return v6;
}

@end