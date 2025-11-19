@interface AASetupAssistantUpdateRequest
- (id)urlString;
@end

@implementation AASetupAssistantUpdateRequest

- (id)urlString
{
  v2 = +[AASetupAssistantService urlConfiguration];
  v3 = [v2 updateAppleIDURL];

  return v3;
}

@end