@interface AASetupAssistantSetupDelegatesResponse
- (NSDictionary)responseParameters;
- (NSNumber)status;
- (NSString)dsid;
- (NSString)statusMessage;
- (id)responseParametersForServiceIdentifier:(id)identifier;
@end

@implementation AASetupAssistantSetupDelegatesResponse

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

- (NSDictionary)responseParameters
{
  responseDictionary = [(AAResponse *)self responseDictionary];
  v3 = [responseDictionary objectForKey:AASetupAssistantResponseParametersKey];

  return v3;
}

- (id)responseParametersForServiceIdentifier:(id)identifier
{
  identifierCopy = identifier;
  responseParameters = [(AASetupAssistantSetupDelegatesResponse *)self responseParameters];
  v6 = [responseParameters objectForKey:identifierCopy];

  return v6;
}

- (NSString)dsid
{
  responseDictionary = [(AAResponse *)self responseDictionary];
  v3 = [responseDictionary objectForKey:AASetupAssistantDSIDKey];

  return v3;
}

@end