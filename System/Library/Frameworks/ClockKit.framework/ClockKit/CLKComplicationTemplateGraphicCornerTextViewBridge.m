@interface CLKComplicationTemplateGraphicCornerTextViewBridge
- (id)serializableCopyWithImageProviders:(id)a3;
- (id)viewDataKeyForSwiftUIViewKey:(id)a3;
@end

@implementation CLKComplicationTemplateGraphicCornerTextViewBridge

- (id)viewDataKeyForSwiftUIViewKey:(id)a3
{
  if ([a3 isEqualToString:@"label"])
  {
    return @"labelData";
  }

  else
  {
    return 0;
  }
}

- (id)serializableCopyWithImageProviders:(id)a3
{
  v4 = a3;
  v5 = [CLKComplicationTemplateGraphicCornerTextImage alloc];
  v6 = [(CLKComplicationTemplateGraphicCornerTextViewBridge *)self textProvider];
  v7 = [v4 objectForKeyedSubscript:@"labelData"];

  v8 = [(CLKComplicationTemplateGraphicCornerTextImage *)v5 initWithTextProvider:v6 imageProvider:v7];
  [(CLKComplicationTemplate *)v8 setSdkVersion:[(CLKComplicationTemplate *)self sdkVersion]];

  return v8;
}

@end