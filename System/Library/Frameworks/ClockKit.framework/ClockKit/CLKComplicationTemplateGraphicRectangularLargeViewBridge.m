@interface CLKComplicationTemplateGraphicRectangularLargeViewBridge
- (id)serializableCopyWithImageProviders:(id)a3;
- (id)viewDataKeyForSwiftUIViewKey:(id)a3;
@end

@implementation CLKComplicationTemplateGraphicRectangularLargeViewBridge

- (id)viewDataKeyForSwiftUIViewKey:(id)a3
{
  if ([a3 isEqualToString:@"content"])
  {
    return @"contentData";
  }

  else
  {
    return 0;
  }
}

- (id)serializableCopyWithImageProviders:(id)a3
{
  v4 = a3;
  v5 = [CLKComplicationTemplateGraphicRectangularLargeImage alloc];
  v6 = [(CLKComplicationTemplateGraphicRectangularLargeViewBridge *)self headerTextProvider];
  v7 = [v4 objectForKeyedSubscript:@"contentData"];

  v8 = [(CLKComplicationTemplateGraphicRectangularLargeImage *)v5 initWithTextProvider:v6 imageProvider:v7];
  [(CLKComplicationTemplate *)v8 setSdkVersion:[(CLKComplicationTemplate *)self sdkVersion]];

  return v8;
}

@end