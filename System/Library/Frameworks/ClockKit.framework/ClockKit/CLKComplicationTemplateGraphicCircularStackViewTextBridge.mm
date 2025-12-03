@interface CLKComplicationTemplateGraphicCircularStackViewTextBridge
- (id)serializableCopyWithImageProviders:(id)providers;
- (id)viewDataKeyForSwiftUIViewKey:(id)key;
@end

@implementation CLKComplicationTemplateGraphicCircularStackViewTextBridge

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
  v5 = [CLKComplicationTemplateGraphicCircularStackImage alloc];
  v6 = [providersCopy objectForKeyedSubscript:@"contentData"];

  textProvider = [(CLKComplicationTemplateGraphicCircularStackViewTextBridge *)self textProvider];
  v8 = [(CLKComplicationTemplateGraphicCircularStackImage *)v5 initWithLine1ImageProvider:v6 line2TextProvider:textProvider];

  [(CLKComplicationTemplate *)v8 setSdkVersion:[(CLKComplicationTemplate *)self sdkVersion]];

  return v8;
}

@end