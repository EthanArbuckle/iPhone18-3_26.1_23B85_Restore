@interface AASetupAssistantAuthenticateRequest
- (id)urlString;
@end

@implementation AASetupAssistantAuthenticateRequest

- (id)urlString
{
  v2 = +[AASetupAssistantService urlConfiguration];
  v3 = [v2 authenticateURL];

  return v3;
}

@end