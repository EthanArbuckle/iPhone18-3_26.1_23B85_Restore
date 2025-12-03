@interface AccountStatusHandlerMail
- (id)_getStatusInfoFromIncomingAccount:(id)account;
- (id)_getStatusInfoFromOutgoingAccount:(id)account;
- (id)getStatusInfoFromAccount:(id)account;
- (id)getStatusKeyPathFromAccount:(id)account;
@end

@implementation AccountStatusHandlerMail

- (id)getStatusKeyPathFromAccount:(id)account
{
  v3 = [account objectForKeyedSubscript:@"RemoteManagementPrimaryAccountIdentifier"];
  v4 = &RMModelStatusItemAccountListMailIncoming;
  if (v3)
  {
    v4 = &RMModelStatusItemAccountListMailOutgoing;
  }

  v5 = *v4;
  v6 = *v4;

  return v5;
}

- (id)getStatusInfoFromAccount:(id)account
{
  accountCopy = account;
  v5 = [accountCopy objectForKeyedSubscript:@"RemoteManagementPrimaryAccountIdentifier"];
  if (v5)
  {
    [(AccountStatusHandlerMail *)self _getStatusInfoFromOutgoingAccount:accountCopy];
  }

  else
  {
    [(AccountStatusHandlerMail *)self _getStatusInfoFromIncomingAccount:accountCopy];
  }
  v6 = ;

  return v6;
}

- (id)_getStatusInfoFromIncomingAccount:(id)account
{
  accountCopy = account;
  identifier = [accountCopy identifier];
  v5 = [RMModelStatusAccountListMailIncoming buildRequiredOnlyWithIdentifier:identifier];

  v6 = [accountCopy objectForKeyedSubscript:@"RemoteManagementConfigurationIdentifier"];
  [v5 setStatusDeclarationIdentifier:v6];

  accountDescription = [accountCopy accountDescription];
  [v5 setStatusVisibleName:accountDescription];

  v8 = [accountCopy objectForKeyedSubscript:ACAccountPropertyHostname];
  [v5 setStatusHostname:v8];

  v9 = [accountCopy objectForKeyedSubscript:ACAccountPropertyPortNumber];
  if ([v9 intValue])
  {
    [v5 setStatusPort:v9];
  }

  username = [accountCopy username];
  [v5 setStatusUsername:username];

  v11 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [accountCopy isEnabledForDataclass:ACAccountDataclassMail]);
  [v5 setStatusIsMailEnabled:v11];

  v12 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [accountCopy isEnabledForDataclass:ACAccountDataclassNotes]);
  [v5 setStatusAreNotesEnabled:v12];

  v13 = [v5 serializeWithType:1];

  return v13;
}

- (id)_getStatusInfoFromOutgoingAccount:(id)account
{
  accountCopy = account;
  identifier = [accountCopy identifier];
  v5 = [RMModelStatusAccountListMailOutgoing buildRequiredOnlyWithIdentifier:identifier];

  v6 = [accountCopy objectForKeyedSubscript:@"RemoteManagementConfigurationIdentifier"];
  [v5 setStatusDeclarationIdentifier:v6];

  accountDescription = [accountCopy accountDescription];
  [v5 setStatusVisibleName:accountDescription];

  v8 = [accountCopy objectForKeyedSubscript:ACAccountPropertyHostname];
  [v5 setStatusHostname:v8];

  v9 = [accountCopy objectForKeyedSubscript:ACAccountPropertyPortNumber];
  if ([v9 intValue])
  {
    [v5 setStatusPort:v9];
  }

  username = [accountCopy username];
  [v5 setStatusUsername:username];

  v11 = [v5 serializeWithType:1];

  return v11;
}

@end