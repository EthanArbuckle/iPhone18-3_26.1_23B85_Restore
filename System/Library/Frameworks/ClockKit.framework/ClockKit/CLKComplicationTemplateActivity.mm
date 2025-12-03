@interface CLKComplicationTemplateActivity
+ (id)activityTemplateWithFamily:(int64_t)family;
- (CLKComplicationTemplateActivity)initWithFamily:(int64_t)family;
- (id)copyWithZone:(_NSZone *)zone;
- (void)_enumerateFloatKeysWithBlock:(id)block;
@end

@implementation CLKComplicationTemplateActivity

- (CLKComplicationTemplateActivity)initWithFamily:(int64_t)family
{
  v5.receiver = self;
  v5.super_class = CLKComplicationTemplateActivity;
  result = [(CLKComplicationTemplate *)&v5 initPrivate];
  if (result)
  {
    result->_family = family;
  }

  return result;
}

+ (id)activityTemplateWithFamily:(int64_t)family
{
  v3 = [[self alloc] initWithFamily:family];

  return v3;
}

- (void)_enumerateFloatKeysWithBlock:(id)block
{
  blockCopy = block;
  v4 = 0;
  blockCopy[2](blockCopy, @"movePercentComplete", 1, 0, &v4);
  if ((v4 & 1) == 0)
  {
    blockCopy[2](blockCopy, @"exercisePercentComplete", 1, 0, &v4);
    if ((v4 & 1) == 0)
    {
      blockCopy[2](blockCopy, @"standPercentComplete", 1, 0, &v4);
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5.receiver = self;
  v5.super_class = CLKComplicationTemplateActivity;
  result = [(CLKComplicationTemplate *)&v5 copyWithZone:zone];
  *(result + 9) = self->_family;
  *(result + 11) = *&self->_movePercentComplete;
  *(result + 12) = *&self->_exercisePercentComplete;
  *(result + 13) = *&self->_standPercentComplete;
  *(result + 80) = self->_hideDots;
  return result;
}

@end