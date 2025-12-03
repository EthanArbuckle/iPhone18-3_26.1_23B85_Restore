@interface AASetupAssistantCreateResponse
- (NSNumber)status;
- (NSString)appleID;
- (NSString)personID;
- (NSString)statusMessage;
@end

@implementation AASetupAssistantCreateResponse

- (NSNumber)status
{
  responseDictionary = [(AAResponse *)self responseDictionary];
  v3 = [responseDictionary objectForKey:AASetupAssistantCreateStatusKey];

  return v3;
}

- (NSString)statusMessage
{
  responseDictionary = [(AAResponse *)self responseDictionary];
  v3 = [responseDictionary objectForKey:AASetupAssistantCreateStatusMessageKey];

  return v3;
}

- (NSString)personID
{
  responseDictionary = [(AAResponse *)self responseDictionary];
  v3 = [responseDictionary objectForKey:AASetupAssistantDSIDKey];

  return v3;
}

- (NSString)appleID
{
  responseDictionary = [(AAResponse *)self responseDictionary];
  v3 = [responseDictionary objectForKey:AASetupAssistantCreateAppleIDKey];

  return v3;
}

@end