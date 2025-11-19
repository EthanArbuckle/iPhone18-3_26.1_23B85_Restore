@interface SATimerPause
- (id)_ad_timerRequestRepresentation;
- (id)_ad_timerResponseForResponse:(id)a3;
@end

@implementation SATimerPause

- (id)_ad_timerResponseForResponse:(id)a3
{
  v3 = a3;
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