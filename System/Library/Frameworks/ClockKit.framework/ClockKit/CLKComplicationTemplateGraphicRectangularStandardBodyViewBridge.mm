@interface CLKComplicationTemplateGraphicRectangularStandardBodyViewBridge
- (id)serializableCopyWithImageProviders:(id)providers;
- (id)viewDataKeyForSwiftUIViewKey:(id)key;
- (void)_enumerateTextProviderKeysWithBlock:(id)block;
@end

@implementation CLKComplicationTemplateGraphicRectangularStandardBodyViewBridge

- (void)_enumerateTextProviderKeysWithBlock:(id)block
{
  blockCopy = block;
  v4 = 0;
  blockCopy[2](blockCopy, @"headerTextProvider", 0, 1, &v4);
  if ((v4 & 1) == 0)
  {
    blockCopy[2](blockCopy, @"body1TextProvider", 0, 1, &v4);
    if ((v4 & 1) == 0)
    {
      blockCopy[2](blockCopy, @"body2TextProvider", 1, 1, &v4);
    }
  }
}

- (id)viewDataKeyForSwiftUIViewKey:(id)key
{
  if ([key isEqualToString:@"headerLabel"])
  {
    return @"headerLabelData";
  }

  else
  {
    return 0;
  }
}

- (id)serializableCopyWithImageProviders:(id)providers
{
  providersCopy = providers;
  v5 = [CLKComplicationTemplateGraphicRectangularStandardBody alloc];
  v6 = [providersCopy objectForKeyedSubscript:@"headerLabelData"];

  headerTextProvider = [(CLKComplicationTemplateGraphicRectangularStandardBodyViewBridge *)self headerTextProvider];
  body1TextProvider = [(CLKComplicationTemplateGraphicRectangularStandardBodyViewBridge *)self body1TextProvider];
  body2TextProvider = [(CLKComplicationTemplateGraphicRectangularStandardBodyViewBridge *)self body2TextProvider];
  v10 = [(CLKComplicationTemplateGraphicRectangularStandardBody *)v5 initWithHeaderImageProvider:v6 headerTextProvider:headerTextProvider body1TextProvider:body1TextProvider body2TextProvider:body2TextProvider];

  [(CLKComplicationTemplate *)v10 setSdkVersion:[(CLKComplicationTemplate *)self sdkVersion]];

  return v10;
}

@end