@interface TTRGraphicCircularComplicationTemplateGenerator
- (CLKComplicationTemplateGraphicCircular)complicationTemplate;
@end

@implementation TTRGraphicCircularComplicationTemplateGenerator

- (CLKComplicationTemplateGraphicCircular)complicationTemplate
{
  v2 = [TTRComplicationAsset imageForFamily:2];
  if (!v2)
  {
    v3 = +[REMLog ui];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_7DCC(v3);
    }

    v2 = +[UIImage ttr_placeholderForInvalidImage];
  }

  v4 = [CLKFullColorImageProvider providerWithFullColorImage:v2 monochromeFilterType:1];
  v5 = [[CLKComplicationTemplateGraphicCircularImage alloc] initWithImageProvider:v4];
  v8 = NTKRichComplicationViewUsePlatterKey;
  v9 = &__kCFBooleanTrue;
  v6 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];
  [v5 setMetadata:v6];

  return v5;
}

@end