@interface CLKComplicationTemplateBreathing
+ (id)breathingTemplateWithFamily:(int64_t)family;
- (CLKComplicationTemplateBreathing)initWithFamily:(int64_t)family;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation CLKComplicationTemplateBreathing

- (CLKComplicationTemplateBreathing)initWithFamily:(int64_t)family
{
  v5.receiver = self;
  v5.super_class = CLKComplicationTemplateBreathing;
  result = [(CLKComplicationTemplate *)&v5 initPrivate];
  if (result)
  {
    result->_family = family;
  }

  return result;
}

+ (id)breathingTemplateWithFamily:(int64_t)family
{
  v3 = [[self alloc] initWithFamily:family];

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5.receiver = self;
  v5.super_class = CLKComplicationTemplateBreathing;
  result = [(CLKComplicationTemplate *)&v5 copyWithZone:zone];
  *(result + 9) = self->_family;
  return result;
}

@end