@interface SATimerCancel
- (id)_ad_timerRequestRepresentation;
- (id)_ad_timerResponseForResponse:(id)response;
@end

@implementation SATimerCancel

- (id)_ad_timerResponseForResponse:(id)response
{
  responseCopy = response;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = objc_alloc_init(SATimerCancelCompleted);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_ad_timerRequestRepresentation
{
  v2 = objc_alloc_init(AFSetTimerRequest);
  v3 = objc_alloc_init(STTimer);
  [v3 setState:2];
  [v2 setTimer:v3];

  return v2;
}

@end