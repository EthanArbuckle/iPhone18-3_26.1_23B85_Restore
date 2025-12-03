@interface ADHealthTransformer
- (id)aceCommandForSiriResponse:(id)response responseError:(id)error forRequestCommand:(id)command;
- (void)getSiriRequestForClientBoundAceCommand:(id)command completionHandler:(id)handler;
@end

@implementation ADHealthTransformer

- (id)aceCommandForSiriResponse:(id)response responseError:(id)error forRequestCommand:(id)command
{
  if (error)
  {
    [command ad_aceResponseCommandGenericErrorRepresentation];
  }

  else
  {
    [command _ad_transformedHealthSuccessResponse];
  }
  v5 = ;

  return v5;
}

- (void)getSiriRequestForClientBoundAceCommand:(id)command completionHandler:(id)handler
{
  handlerCopy = handler;
  _ad_transformedShowActivityRequest = [command _ad_transformedShowActivityRequest];
  (*(handler + 2))(handlerCopy, _ad_transformedShowActivityRequest);
}

@end