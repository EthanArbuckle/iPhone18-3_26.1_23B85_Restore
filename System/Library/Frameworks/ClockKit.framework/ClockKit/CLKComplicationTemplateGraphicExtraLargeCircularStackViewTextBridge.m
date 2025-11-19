@interface CLKComplicationTemplateGraphicExtraLargeCircularStackViewTextBridge
- (id)serializableCopyWithImageProviders:(id)a3;
- (id)viewDataKeyForSwiftUIViewKey:(id)a3;
@end

@implementation CLKComplicationTemplateGraphicExtraLargeCircularStackViewTextBridge

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
  v5 = [CLKComplicationTemplateGraphicExtraLargeCircularStackImage alloc];
  v6 = [v4 objectForKeyedSubscript:@"contentData"];

  v7 = [(CLKComplicationTemplateGraphicExtraLargeCircularStackViewTextBridge *)self textProvider];
  v8 = [(CLKComplicationTemplateGraphicExtraLargeCircularStackImage *)v5 initWithLine1ImageProvider:v6 line2TextProvider:v7];

  [(CLKComplicationTemplate *)v8 setSdkVersion:[(CLKComplicationTemplate *)self sdkVersion]];

  return v8;
}

@end