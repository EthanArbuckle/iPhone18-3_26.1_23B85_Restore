@interface ADSettingsTransformer
- (id)aceCommandForSiriResponse:(id)response responseError:(id)error forRequestCommand:(id)command;
- (void)getSiriRequestForClientBoundAceCommand:(id)command completionHandler:(id)handler;
@end

@implementation ADSettingsTransformer

- (id)aceCommandForSiriResponse:(id)response responseError:(id)error forRequestCommand:(id)command
{
  if (error)
  {
    [command ad_aceResponseCommandGenericErrorRepresentation];
  }

  else
  {
    [command _ad_aceSettingsResponseCommandRepresentationForSiriResponse:response];
  }
  v5 = ;

  return v5;
}

- (void)getSiriRequestForClientBoundAceCommand:(id)command completionHandler:(id)handler
{
  handlerCopy = handler;
  _ad_settingsRequestRepresentation = [command _ad_settingsRequestRepresentation];
  (*(handler + 2))(handlerCopy, _ad_settingsRequestRepresentation);
}

@end