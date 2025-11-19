@interface AccountStatusHandlerMail
- (id)_getStatusInfoFromIncomingAccount:(id)a3;
- (id)_getStatusInfoFromOutgoingAccount:(id)a3;
- (id)getStatusInfoFromAccount:(id)a3;
- (id)getStatusKeyPathFromAccount:(id)a3;
@end

@implementation AccountStatusHandlerMail

- (id)getStatusKeyPathFromAccount:(id)a3
{
  v3 = [a3 objectForKeyedSubscript:@"RemoteManagementPrimaryAccountIdentifier"];
  v4 = &RMModelStatusItemAccountListMailIncoming;
  if (v3)
  {
    v4 = &RMModelStatusItemAccountListMailOutgoing;
  }

  v5 = *v4;
  v6 = *v4;

  return v5;
}

- (id)getStatusInfoFromAccount:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"RemoteManagementPrimaryAccountIdentifier"];
  if (v5)
  {
    [(AccountStatusHandlerMail *)self _getStatusInfoFromOutgoingAccount:v4];
  }

  else
  {
    [(AccountStatusHandlerMail *)self _getStatusInfoFromIncomingAccount:v4];
  }
  v6 = ;

  return v6;
}

- (id)_getStatusInfoFromIncomingAccount:(id)a3
{
  v3 = a3;
  v4 = [v3 identifier];
  v5 = [RMModelStatusAccountListMailIncoming buildRequiredOnlyWithIdentifier:v4];

  v6 = [v3 objectForKeyedSubscript:@"RemoteManagementConfigurationIdentifier"];
  [v5 setStatusDeclarationIdentifier:v6];

  v7 = [v3 accountDescription];
  [v5 setStatusVisibleName:v7];

  v8 = [v3 objectForKeyedSubscript:ACAccountPropertyHostname];
  [v5 setStatusHostname:v8];

  v9 = [v3 objectForKeyedSubscript:ACAccountPropertyPortNumber];
  if ([v9 intValue])
  {
    [v5 setStatusPort:v9];
  }

  v10 = [v3 username];
  [v5 setStatusUsername:v10];

  v11 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 isEnabledForDataclass:ACAccountDataclassMail]);
  [v5 setStatusIsMailEnabled:v11];

  v12 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 isEnabledForDataclass:ACAccountDataclassNotes]);
  [v5 setStatusAreNotesEnabled:v12];

  v13 = [v5 serializeWithType:1];

  return v13;
}

- (id)_getStatusInfoFromOutgoingAccount:(id)a3
{
  v3 = a3;
  v4 = [v3 identifier];
  v5 = [RMModelStatusAccountListMailOutgoing buildRequiredOnlyWithIdentifier:v4];

  v6 = [v3 objectForKeyedSubscript:@"RemoteManagementConfigurationIdentifier"];
  [v5 setStatusDeclarationIdentifier:v6];

  v7 = [v3 accountDescription];
  [v5 setStatusVisibleName:v7];

  v8 = [v3 objectForKeyedSubscript:ACAccountPropertyHostname];
  [v5 setStatusHostname:v8];

  v9 = [v3 objectForKeyedSubscript:ACAccountPropertyPortNumber];
  if ([v9 intValue])
  {
    [v5 setStatusPort:v9];
  }

  v10 = [v3 username];
  [v5 setStatusUsername:v10];

  v11 = [v5 serializeWithType:1];

  return v11;
}

@end