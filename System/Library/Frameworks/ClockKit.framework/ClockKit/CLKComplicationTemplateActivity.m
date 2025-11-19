@interface CLKComplicationTemplateActivity
+ (id)activityTemplateWithFamily:(int64_t)a3;
- (CLKComplicationTemplateActivity)initWithFamily:(int64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)_enumerateFloatKeysWithBlock:(id)a3;
@end

@implementation CLKComplicationTemplateActivity

- (CLKComplicationTemplateActivity)initWithFamily:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = CLKComplicationTemplateActivity;
  result = [(CLKComplicationTemplate *)&v5 initPrivate];
  if (result)
  {
    result->_family = a3;
  }

  return result;
}

+ (id)activityTemplateWithFamily:(int64_t)a3
{
  v3 = [[a1 alloc] initWithFamily:a3];

  return v3;
}

- (void)_enumerateFloatKeysWithBlock:(id)a3
{
  v3 = a3;
  v4 = 0;
  v3[2](v3, @"movePercentComplete", 1, 0, &v4);
  if ((v4 & 1) == 0)
  {
    v3[2](v3, @"exercisePercentComplete", 1, 0, &v4);
    if ((v4 & 1) == 0)
    {
      v3[2](v3, @"standPercentComplete", 1, 0, &v4);
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5.receiver = self;
  v5.super_class = CLKComplicationTemplateActivity;
  result = [(CLKComplicationTemplate *)&v5 copyWithZone:a3];
  *(result + 9) = self->_family;
  *(result + 11) = *&self->_movePercentComplete;
  *(result + 12) = *&self->_exercisePercentComplete;
  *(result + 13) = *&self->_standPercentComplete;
  *(result + 80) = self->_hideDots;
  return result;
}

@end