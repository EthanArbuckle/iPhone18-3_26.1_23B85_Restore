@interface CLKComplicationTemplateGraphicExtraLargeCircularStackViewTextBridge
- (id)serializableCopyWithImageProviders:(id)providers;
- (id)viewDataKeyForSwiftUIViewKey:(id)key;
@end

@implementation CLKComplicationTemplateGraphicExtraLargeCircularStackViewTextBridge

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
  v5 = [CLKComplicationTemplateGraphicExtraLargeCircularStackImage alloc];
  v6 = [providersCopy objectForKeyedSubscript:@"contentData"];

  textProvider = [(CLKComplicationTemplateGraphicExtraLargeCircularStackViewTextBridge *)self textProvider];
  v8 = [(CLKComplicationTemplateGraphicExtraLargeCircularStackImage *)v5 initWithLine1ImageProvider:v6 line2TextProvider:textProvider];

  [(CLKComplicationTemplate *)v8 setSdkVersion:[(CLKComplicationTemplate *)self sdkVersion]];

  return v8;
}

@end