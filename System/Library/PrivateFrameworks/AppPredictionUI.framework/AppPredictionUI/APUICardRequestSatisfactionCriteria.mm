@interface APUICardRequestSatisfactionCriteria
+ (id)compactSatisfactionCriteria;
+ (id)customIntentSatisfactionCriteria;
+ (id)generalSatisfactionCriteria;
- (BOOL)canSatisfyCardRequest:(id)request;
@end

@implementation APUICardRequestSatisfactionCriteria

+ (id)generalSatisfactionCriteria
{
  v2 = objc_alloc_init(self);

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

- (BOOL)canSatisfyCardRequest:(id)request
{
  content = [request content];
  if (content && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    apui_isSupportedForCardRequests = [objc_opt_class() apui_isSupportedForCardRequests];
  }

  else
  {
    apui_isSupportedForCardRequests = 0;
  }

  return apui_isSupportedForCardRequests;
}

@end