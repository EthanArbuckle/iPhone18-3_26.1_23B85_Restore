@interface CLKComplicationTemplateDigitalTime
+ (id)templateWithMetadata:(id)a3;
- (CLKComplicationTemplateDigitalTime)initWithMetadata:(id)a3;
@end

@implementation CLKComplicationTemplateDigitalTime

- (CLKComplicationTemplateDigitalTime)initWithMetadata:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = CLKComplicationTemplateDigitalTime;
  v5 = [(CLKComplicationTemplate *)&v8 initPrivate];
  v6 = v5;
  if (v5)
  {
    [(CLKComplicationTemplate *)v5 setMetadata:v4];
  }

  return v6;
}

+ (id)templateWithMetadata:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithMetadata:v4];

  return v5;
}

@end