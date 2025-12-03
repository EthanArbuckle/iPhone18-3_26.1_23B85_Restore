@interface CLKComplicationTemplateGraphicExtraLargeCircularViewBridge
- (id)serializableCopyWithImageProviders:(id)providers;
- (id)viewDataKeyForSwiftUIViewKey:(id)key;
@end

@implementation CLKComplicationTemplateGraphicExtraLargeCircularViewBridge

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
  v5 = [CLKComplicationTemplateGraphicExtraLargeCircularImage alloc];
  v6 = [providersCopy objectForKeyedSubscript:@"contentData"];

  v7 = [(CLKComplicationTemplateGraphicExtraLargeCircularImage *)v5 initWithImageProvider:v6];
  [(CLKComplicationTemplate *)v7 setSdkVersion:[(CLKComplicationTemplate *)self sdkVersion]];

  return v7;
}

@end