@interface AASetupAssistantAuthenticateRequest
- (id)urlString;
@end

@implementation AASetupAssistantAuthenticateRequest

- (id)urlString
{
  v2 = +[AASetupAssistantService urlConfiguration];
  authenticateURL = [v2 authenticateURL];

  return authenticateURL;
}

@end