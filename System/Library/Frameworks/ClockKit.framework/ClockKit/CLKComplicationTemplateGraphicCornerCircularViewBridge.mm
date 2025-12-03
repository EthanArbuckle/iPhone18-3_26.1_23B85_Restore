@interface CLKComplicationTemplateGraphicCornerCircularViewBridge
- (id)serializableCopyWithImageProviders:(id)providers;
- (id)viewDataKeyForSwiftUIViewKey:(id)key;
@end

@implementation CLKComplicationTemplateGraphicCornerCircularViewBridge

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
  v5 = [CLKComplicationTemplateGraphicCornerCircularImage alloc];
  v6 = [providersCopy objectForKeyedSubscript:@"contentData"];

  v7 = [(CLKComplicationTemplateGraphicCornerCircularImage *)v5 initWithImageProvider:v6];
  [(CLKComplicationTemplate *)v7 setSdkVersion:[(CLKComplicationTemplate *)self sdkVersion]];

  return v7;
}

@end