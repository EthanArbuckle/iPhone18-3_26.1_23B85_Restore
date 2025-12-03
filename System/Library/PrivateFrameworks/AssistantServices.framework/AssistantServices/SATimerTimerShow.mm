@interface SATimerTimerShow
- (id)_ad_timerRequestRepresentation;
- (id)_ad_timerResponseForResponse:(id)response;
@end

@implementation SATimerTimerShow

- (id)_ad_timerResponseForResponse:(id)response
{
  responseCopy = response;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = objc_alloc_init(SACommandSucceeded);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_ad_timerRequestRepresentation
{
  v2 = objc_alloc_init(AFShowTimerRequest);

  return v2;
}

@end