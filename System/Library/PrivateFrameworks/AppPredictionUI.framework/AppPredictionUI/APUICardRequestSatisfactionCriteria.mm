@interface APUICardRequestSatisfactionCriteria
+ (id)compactSatisfactionCriteria;
+ (id)customIntentSatisfactionCriteria;
+ (id)generalSatisfactionCriteria;
- (BOOL)canSatisfyCardRequest:(id)a3;
@end

@implementation APUICardRequestSatisfactionCriteria

+ (id)generalSatisfactionCriteria
{
  v2 = objc_alloc_init(a1);

  return v2;
}

+ (id)compactSatisfactionCriteria
{
  v2 = objc_alloc_init(_APUICardRequestCompactSatisfactionCriteria);

  return v2;
}

+ (id)customIntentSatisfactionCriteria
{
  v2 = objc_alloc_init(_APUICardRequestCustomIntentSatisfactionCriteria);

  return v2;
}

- (BOOL)canSatisfyCardRequest:(id)a3
{
  v3 = [a3 content];
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = [objc_opt_class() apui_isSupportedForCardRequests];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end