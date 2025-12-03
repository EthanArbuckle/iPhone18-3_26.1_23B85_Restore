@interface SATimerSet
- (id)_ad_timerRequestRepresentation;
- (id)_ad_timerResponseForResponse:(id)response;
@end

@implementation SATimerSet

- (id)_ad_timerResponseForResponse:(id)response
{
  responseCopy = response;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = objc_alloc_init(SATimerSetCompleted);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_ad_timerRequestRepresentation
{
  v3 = objc_alloc_init(AFSetTimerRequest);
  timer = [(SATimerSet *)self timer];
  v5 = [timer _ad_timerWithState:1];
  [v3 setTimer:v5];

  return v3;
}

@end