@interface CLKComplicationTemplateCircularSmallStackText
+ (CLKComplicationTemplateCircularSmallStackText)templateWithLine1TextProvider:(CLKTextProvider *)line1TextProvider line2TextProvider:(CLKTextProvider *)line2TextProvider;
- (CLKComplicationTemplateCircularSmallStackText)initWithLine1TextProvider:(CLKTextProvider *)line1TextProvider line2TextProvider:(CLKTextProvider *)line2TextProvider;
- (void)_enumerateTextProviderKeysWithBlock:(id)a3;
@end

@implementation CLKComplicationTemplateCircularSmallStackText

- (CLKComplicationTemplateCircularSmallStackText)initWithLine1TextProvider:(CLKTextProvider *)line1TextProvider line2TextProvider:(CLKTextProvider *)line2TextProvider
{
  v6 = line1TextProvider;
  v7 = line2TextProvider;
  v11.receiver = self;
  v11.super_class = CLKComplicationTemplateCircularSmallStackText;
  v8 = [(CLKComplicationTemplate *)&v11 initPrivate];
  v9 = v8;
  if (v8)
  {
    [(CLKComplicationTemplateCircularSmallStackText *)v8 setLine1TextProvider:v6];
    [(CLKComplicationTemplateCircularSmallStackText *)v9 setLine2TextProvider:v7];
  }

  return v9;
}

+ (CLKComplicationTemplateCircularSmallStackText)templateWithLine1TextProvider:(CLKTextProvider *)line1TextProvider line2TextProvider:(CLKTextProvider *)line2TextProvider
{
  v6 = line2TextProvider;
  v7 = line1TextProvider;
  v8 = [[a1 alloc] initWithLine1TextProvider:v7 line2TextProvider:v6];

  return v8;
}

- (void)_enumerateTextProviderKeysWithBlock:(id)a3
{
  v3 = a3;
  v4 = 0;
  v3[2](v3, @"line1TextProvider", 0, 1, &v4);
  if ((v4 & 1) == 0)
  {
    v3[2](v3, @"line2TextProvider", 0, 1, &v4);
  }
}

@end