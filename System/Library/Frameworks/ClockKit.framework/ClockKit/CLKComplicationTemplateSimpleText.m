@interface CLKComplicationTemplateSimpleText
+ (id)templateWithTextProvider:(id)a3;
- (CLKComplicationTemplateSimpleText)initWithTextProvider:(id)a3;
@end

@implementation CLKComplicationTemplateSimpleText

- (CLKComplicationTemplateSimpleText)initWithTextProvider:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = CLKComplicationTemplateSimpleText;
  v5 = [(CLKComplicationTemplate *)&v8 initPrivate];
  v6 = v5;
  if (v5)
  {
    [(CLKComplicationTemplateSimpleText *)v5 setTextProvider:v4];
  }

  return v6;
}

+ (id)templateWithTextProvider:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithTextProvider:v4];

  return v5;
}

@end