@interface CLKComplicationTemplateBreathing
+ (id)breathingTemplateWithFamily:(int64_t)a3;
- (CLKComplicationTemplateBreathing)initWithFamily:(int64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation CLKComplicationTemplateBreathing

- (CLKComplicationTemplateBreathing)initWithFamily:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = CLKComplicationTemplateBreathing;
  result = [(CLKComplicationTemplate *)&v5 initPrivate];
  if (result)
  {
    result->_family = a3;
  }

  return result;
}

+ (id)breathingTemplateWithFamily:(int64_t)a3
{
  v3 = [[a1 alloc] initWithFamily:a3];

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5.receiver = self;
  v5.super_class = CLKComplicationTemplateBreathing;
  result = [(CLKComplicationTemplate *)&v5 copyWithZone:a3];
  *(result + 9) = self->_family;
  return result;
}

@end