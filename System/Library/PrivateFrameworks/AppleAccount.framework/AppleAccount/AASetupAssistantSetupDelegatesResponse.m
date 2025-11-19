@interface AASetupAssistantSetupDelegatesResponse
- (NSDictionary)responseParameters;
- (NSNumber)status;
- (NSString)dsid;
- (NSString)statusMessage;
- (id)responseParametersForServiceIdentifier:(id)a3;
@end

@implementation AASetupAssistantSetupDelegatesResponse

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

- (NSDictionary)responseParameters
{
  v2 = [(AAResponse *)self responseDictionary];
  v3 = [v2 objectForKey:AASetupAssistantResponseParametersKey];

  return v3;
}

- (id)responseParametersForServiceIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(AASetupAssistantSetupDelegatesResponse *)self responseParameters];
  v6 = [v5 objectForKey:v4];

  return v6;
}

- (NSString)dsid
{
  v2 = [(AAResponse *)self responseDictionary];
  v3 = [v2 objectForKey:AASetupAssistantDSIDKey];

  return v3;
}

@end