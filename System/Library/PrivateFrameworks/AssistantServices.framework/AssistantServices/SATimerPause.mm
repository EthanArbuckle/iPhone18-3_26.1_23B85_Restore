@interface SATimerPause
- (id)_ad_timerRequestRepresentation;
- (id)_ad_timerResponseForResponse:(id)response;
@end

@implementation SATimerPause

- (id)_ad_timerResponseForResponse:(id)response
{
  responseCopy = response;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = objc_alloc_init(SATimerPauseCompleted);
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
  [v3 setState:3];
  [v2 setTimer:v3];

  return v2;
}

@end