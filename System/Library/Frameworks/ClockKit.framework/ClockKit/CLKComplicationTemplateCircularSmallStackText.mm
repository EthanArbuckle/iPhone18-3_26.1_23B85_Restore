@interface CLKComplicationTemplateCircularSmallStackText
+ (CLKComplicationTemplateCircularSmallStackText)templateWithLine1TextProvider:(CLKTextProvider *)line1TextProvider line2TextProvider:(CLKTextProvider *)line2TextProvider;
- (CLKComplicationTemplateCircularSmallStackText)initWithLine1TextProvider:(CLKTextProvider *)line1TextProvider line2TextProvider:(CLKTextProvider *)line2TextProvider;
- (void)_enumerateTextProviderKeysWithBlock:(id)block;
@end

@implementation CLKComplicationTemplateCircularSmallStackText

- (CLKComplicationTemplateCircularSmallStackText)initWithLine1TextProvider:(CLKTextProvider *)line1TextProvider line2TextProvider:(CLKTextProvider *)line2TextProvider
{
  v6 = line1TextProvider;
  v7 = line2TextProvider;
  v11.receiver = self;
  v11.super_class = CLKComplicationTemplateCircularSmallStackText;
  initPrivate = [(CLKComplicationTemplate *)&v11 initPrivate];
  v9 = initPrivate;
  if (initPrivate)
  {
    [(CLKComplicationTemplateCircularSmallStackText *)initPrivate setLine1TextProvider:v6];
    [(CLKComplicationTemplateCircularSmallStackText *)v9 setLine2TextProvider:v7];
  }

  return v9;
}

+ (CLKComplicationTemplateCircularSmallStackText)templateWithLine1TextProvider:(CLKTextProvider *)line1TextProvider line2TextProvider:(CLKTextProvider *)line2TextProvider
{
  v6 = line2TextProvider;
  v7 = line1TextProvider;
  v8 = [[self alloc] initWithLine1TextProvider:v7 line2TextProvider:v6];

  return v8;
}

- (void)_enumerateTextProviderKeysWithBlock:(id)block
{
  blockCopy = block;
  v4 = 0;
  blockCopy[2](blockCopy, @"line1TextProvider", 0, 1, &v4);
  if ((v4 & 1) == 0)
  {
    blockCopy[2](blockCopy, @"line2TextProvider", 0, 1, &v4);
  }
}

@end