@interface AFAssistedDisambiguationRules
+ (id)defaultRules;
- (double)weightForEvent:(id)event;
@end

@implementation AFAssistedDisambiguationRules

- (double)weightForEvent:(id)event
{
  date = [event date];
  [date timeIntervalSinceNow];
  v6 = v5;

  if (v6 <= -900.0)
  {
    return 1.0 / [(AFAssistedDisambiguationRules *)self decisionDepth];
  }

  result = 1.0;
  if (v6 >= 0.0)
  {
    return 1.0 / [(AFAssistedDisambiguationRules *)self decisionDepth];
  }

  return result;
}

+ (id)defaultRules
{
  v2 = objc_alloc_init(AFAssistedDisambiguationRules);

  return v2;
}

@end