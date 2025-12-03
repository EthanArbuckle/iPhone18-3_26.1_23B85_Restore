@interface CLKComplicationTemplateGraphicCornerTextViewBridge
- (id)serializableCopyWithImageProviders:(id)providers;
- (id)viewDataKeyForSwiftUIViewKey:(id)key;
@end

@implementation CLKComplicationTemplateGraphicCornerTextViewBridge

- (id)viewDataKeyForSwiftUIViewKey:(id)key
{
  if ([key isEqualToString:@"label"])
  {
    return @"labelData";
  }

  else
  {
    return 0;
  }
}

- (id)serializableCopyWithImageProviders:(id)providers
{
  providersCopy = providers;
  v5 = [CLKComplicationTemplateGraphicCornerTextImage alloc];
  textProvider = [(CLKComplicationTemplateGraphicCornerTextViewBridge *)self textProvider];
  v7 = [providersCopy objectForKeyedSubscript:@"labelData"];

  v8 = [(CLKComplicationTemplateGraphicCornerTextImage *)v5 initWithTextProvider:textProvider imageProvider:v7];
  [(CLKComplicationTemplate *)v8 setSdkVersion:[(CLKComplicationTemplate *)self sdkVersion]];

  return v8;
}

@end