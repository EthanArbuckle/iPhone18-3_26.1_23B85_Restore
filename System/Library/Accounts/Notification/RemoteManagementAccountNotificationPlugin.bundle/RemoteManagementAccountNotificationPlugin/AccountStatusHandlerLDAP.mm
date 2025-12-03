@interface AccountStatusHandlerLDAP
- (id)getStatusInfoFromAccount:(id)account;
@end

@implementation AccountStatusHandlerLDAP

- (id)getStatusInfoFromAccount:(id)account
{
  accountCopy = account;
  identifier = [accountCopy identifier];
  v5 = [RMModelStatusAccountListLDAP buildRequiredOnlyWithIdentifier:identifier];

  v6 = [accountCopy objectForKeyedSubscript:@"RemoteManagementConfigurationIdentifier"];
  [v5 setStatusDeclarationIdentifier:v6];

  accountDescription = [accountCopy accountDescription];
  [v5 setStatusVisibleName:accountDescription];

  v8 = [DAAccount daAccountSubclassWithBackingAccountInfo:accountCopy];
  host = [v8 host];
  [v5 setStatusHostname:host];

  port = [v8 port];
  if (port)
  {
    v11 = [NSNumber numberWithInteger:port];
    [v5 setStatusPort:v11];
  }

  username = [accountCopy username];
  [v5 setStatusUsername:username];

  v13 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [accountCopy isEnabledForDataclass:kASSAccountDataclassContactsSearch]);
  [v5 setStatusIsEnabled:v13];

  v14 = [v5 serializeWithType:1];

  return v14;
}

@end