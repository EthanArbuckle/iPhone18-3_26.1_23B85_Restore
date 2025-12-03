@interface SATimerGet
- (id)_ad_timerRequestRepresentation;
- (id)_ad_timerResponseForResponse:(id)response;
@end

@implementation SATimerGet

- (id)_ad_timerResponseForResponse:(id)response
{
  responseCopy = response;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = objc_alloc_init(SATimerGetCompleted);
    v5 = objc_alloc_init(SATimerObject);
    timer = [responseCopy timer];
    [v5 _ad_setTimer:timer];

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