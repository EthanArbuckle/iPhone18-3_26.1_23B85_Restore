@interface SATimerGet
- (id)_ad_timerRequestRepresentation;
- (id)_ad_timerResponseForResponse:(id)a3;
@end

@implementation SATimerGet

- (id)_ad_timerResponseForResponse:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = objc_alloc_init(SATimerGetCompleted);
    v5 = objc_alloc_init(SATimerObject);
    v6 = [v3 timer];
    [v5 _ad_setTimer:v6];

    [v4 setTimer:v5];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_ad_timerRequestRepresentation
{
  v2 = objc_alloc_init(AFGetTimerRequest);

  return v2;
}

@end