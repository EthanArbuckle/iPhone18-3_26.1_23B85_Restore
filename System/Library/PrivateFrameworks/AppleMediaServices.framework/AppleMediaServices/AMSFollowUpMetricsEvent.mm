@interface AMSFollowUpMetricsEvent
+ (id)eventFromMetricsDictionary:(id)dictionary;
@end

@implementation AMSFollowUpMetricsEvent

+ (id)eventFromMetricsDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = [objc_alloc(objc_opt_class()) initWithTopic:@"xp_amp_followup"];
  v5 = v4;
  if (dictionaryCopy)
  {
    [v4 addPropertiesWithDictionary:dictionaryCopy];
  }

  return v5;
}

@end