@interface CLKComplicationTemplateGraphicRectangularFullViewBridge
- (id)serializableCopyWithImageProviders:(id)a3;
- (id)viewDataKeyForSwiftUIViewKey:(id)a3;
@end

@implementation CLKComplicationTemplateGraphicRectangularFullViewBridge

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
  v5 = [CLKComplicationTemplateGraphicRectangularFullImage alloc];
  v6 = [v4 objectForKeyedSubscript:@"contentData"];

  v7 = [(CLKComplicationTemplateGraphicRectangularFullImage *)v5 initWithImageProvider:v6];
  [(CLKComplicationTemplate *)v7 setSdkVersion:[(CLKComplicationTemplate *)self sdkVersion]];

  return v7;
}

@end