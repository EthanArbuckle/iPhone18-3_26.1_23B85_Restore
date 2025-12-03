@interface AASetupAssistantUpdateRequest
- (id)urlString;
@end

@implementation AASetupAssistantUpdateRequest

- (id)urlString
{
  v2 = +[AASetupAssistantService urlConfiguration];
  updateAppleIDURL = [v2 updateAppleIDURL];

  return updateAppleIDURL;
}

@end