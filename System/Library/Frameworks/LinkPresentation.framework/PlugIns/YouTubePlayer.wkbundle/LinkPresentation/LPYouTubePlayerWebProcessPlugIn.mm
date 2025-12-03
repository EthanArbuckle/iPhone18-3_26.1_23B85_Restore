@interface LPYouTubePlayerWebProcessPlugIn
- (id)webProcessPlugInBrowserContextController:(id)controller frame:(id)frame willSendRequestForResource:(unint64_t)resource request:(id)request redirectResponse:(id)response;
- (void)webProcessPlugIn:(id)in initializeWithObject:(id)object;
@end

@implementation LPYouTubePlayerWebProcessPlugIn

- (void)webProcessPlugIn:(id)in initializeWithObject:(id)object
{
  parameters = [in parameters];
  v6 = [parameters valueForKey:@"isMessagesOrMessagesViewService"];

  self->_isMessagesOrMessagesViewService = [v6 BOOLValue];
}

- (id)webProcessPlugInBrowserContextController:(id)controller frame:(id)frame willSendRequestForResource:(unint64_t)resource request:(id)request redirectResponse:(id)response
{
  requestCopy = request;
  v9 = requestCopy;
  if (self->_isMessagesOrMessagesViewService)
  {
    v10 = [requestCopy mutableCopy];
    [v10 setAttribution:1];
    [v10 setValue:@"https://mobilesms.apple.com" forHTTPHeaderField:@"Referer"];
  }

  else
  {
    v10 = requestCopy;
  }

  return v10;
}

@end