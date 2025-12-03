@interface CLKComplicationTemplateGraphicRectangularLargeViewBridge
- (id)serializableCopyWithImageProviders:(id)providers;
- (id)viewDataKeyForSwiftUIViewKey:(id)key;
@end

@implementation CLKComplicationTemplateGraphicRectangularLargeViewBridge

- (id)viewDataKeyForSwiftUIViewKey:(id)key
{
  if ([key isEqualToString:@"content"])
  {
    return @"contentData";
  }

  else
  {
    return 0;
  }
}

- (id)serializableCopyWithImageProviders:(id)providers
{
  providersCopy = providers;
  v5 = [CLKComplicationTemplateGraphicRectangularLargeImage alloc];
  headerTextProvider = [(CLKComplicationTemplateGraphicRectangularLargeViewBridge *)self headerTextProvider];
  v7 = [providersCopy objectForKeyedSubscript:@"contentData"];

  v8 = [(CLKComplicationTemplateGraphicRectangularLargeImage *)v5 initWithTextProvider:headerTextProvider imageProvider:v7];
  [(CLKComplicationTemplate *)v8 setSdkVersion:[(CLKComplicationTemplate *)self sdkVersion]];

  return v8;
}

@end