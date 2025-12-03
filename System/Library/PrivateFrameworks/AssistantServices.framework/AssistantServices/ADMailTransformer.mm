@interface ADMailTransformer
- (id)aceCommandForSiriResponse:(id)response responseError:(id)error forRequestCommand:(id)command;
- (void)getSiriRequestForClientBoundAceCommand:(id)command completionHandler:(id)handler;
@end

@implementation ADMailTransformer

- (id)aceCommandForSiriResponse:(id)response responseError:(id)error forRequestCommand:(id)command
{
  if (error)
  {
    [command ad_aceResponseCommandGenericErrorRepresentation];
  }

  else
  {
    [command _ad_transformedMailSuccessResponse];
  }
  v5 = ;

  return v5;
}

- (void)getSiriRequestForClientBoundAceCommand:(id)command completionHandler:(id)handler
{
  handlerCopy = handler;
  _ad_transformedSendEmailRequest = [command _ad_transformedSendEmailRequest];
  (*(handler + 2))(handlerCopy, _ad_transformedSendEmailRequest);
}

@end