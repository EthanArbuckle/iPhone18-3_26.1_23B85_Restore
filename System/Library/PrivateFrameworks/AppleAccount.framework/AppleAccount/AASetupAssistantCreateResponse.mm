@interface AASetupAssistantCreateResponse
- (NSNumber)status;
- (NSString)appleID;
- (NSString)personID;
- (NSString)statusMessage;
@end

@implementation AASetupAssistantCreateResponse

- (NSNumber)status
{
  v2 = [(AAResponse *)self responseDictionary];
  v3 = [v2 objectForKey:AASetupAssistantCreateStatusKey];

  return v3;
}

- (NSString)statusMessage
{
  v2 = [(AAResponse *)self responseDictionary];
  v3 = [v2 objectForKey:AASetupAssistantCreateStatusMessageKey];

  return v3;
}

- (NSString)personID
{
  v2 = [(AAResponse *)self responseDictionary];
  v3 = [v2 objectForKey:AASetupAssistantDSIDKey];

  return v3;
}

- (NSString)appleID
{
  v2 = [(AAResponse *)self responseDictionary];
  v3 = [v2 objectForKey:AASetupAssistantCreateAppleIDKey];

  return v3;
}

@end