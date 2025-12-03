@interface LSEligibilityCacheEligibilityResolver
- (id)eligibilityForDomain:(unint64_t)domain error:(id *)error;
@end

@implementation LSEligibilityCacheEligibilityResolver

- (id)eligibilityForDomain:(unint64_t)domain error:(id *)error
{
  v6 = LaunchServices::EligibilityCache::shared(self);
  v7 = LaunchServices::EligibilityCache::cachedAnswerForDomain(v6, domain, error);
  if (v8)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithLongLong:v7];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end