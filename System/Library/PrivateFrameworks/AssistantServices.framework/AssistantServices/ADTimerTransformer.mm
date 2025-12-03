@interface ADTimerTransformer
- (id)aceCommandForSiriResponse:(id)response responseError:(id)error forRequestCommand:(id)command;
- (void)getSiriRequestForClientBoundAceCommand:(id)command completionHandler:(id)handler;
@end

@implementation ADTimerTransformer

- (id)aceCommandForSiriResponse:(id)response responseError:(id)error forRequestCommand:(id)command
{
  if (error)
  {
    [command ad_aceResponseCommandGenericErrorRepresentation];
  }

  else
  {
    [command _ad_timerResponseForResponse:response];
  }
  v5 = ;

  return v5;
}

- (void)getSiriRequestForClientBoundAceCommand:(id)command completionHandler:(id)handler
{
  handlerCopy = handler;
  _ad_timerRequestRepresentation = [command _ad_timerRequestRepresentation];
  (*(handler + 2))(handlerCopy, _ad_timerRequestRepresentation);
}

@end