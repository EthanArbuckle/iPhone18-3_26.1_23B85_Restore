@interface ADTimerTransformer
- (id)aceCommandForSiriResponse:(id)a3 responseError:(id)a4 forRequestCommand:(id)a5;
- (void)getSiriRequestForClientBoundAceCommand:(id)a3 completionHandler:(id)a4;
@end

@implementation ADTimerTransformer

- (id)aceCommandForSiriResponse:(id)a3 responseError:(id)a4 forRequestCommand:(id)a5
{
  if (a4)
  {
    [a5 ad_aceResponseCommandGenericErrorRepresentation];
  }

  else
  {
    [a5 _ad_timerResponseForResponse:a3];
  }
  v5 = ;

  return v5;
}

- (void)getSiriRequestForClientBoundAceCommand:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = [a3 _ad_timerRequestRepresentation];
  (*(a4 + 2))(v6, v7);
}

@end