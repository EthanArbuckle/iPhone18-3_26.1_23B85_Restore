@interface ADMapsTransformer
- (id)aceCommandForSiriResponse:(id)response responseError:(id)error forRequestCommand:(id)command;
- (void)getSiriRequestForClientBoundAceCommand:(id)command completionHandler:(id)handler;
@end

@implementation ADMapsTransformer

- (id)aceCommandForSiriResponse:(id)response responseError:(id)error forRequestCommand:(id)command
{
  if (error)
  {
    [command ad_aceResponseCommandGenericErrorRepresentation];
  }

  else
  {
    [command _ad_transformedMapsSuccessResponse];
  }
  v5 = ;

  return v5;
}

- (void)getSiriRequestForClientBoundAceCommand:(id)command completionHandler:(id)handler
{
  handlerCopy = handler;
  _ad_transformedMapsRequest = [command _ad_transformedMapsRequest];
  (*(handler + 2))(handlerCopy, _ad_transformedMapsRequest);
}

@end