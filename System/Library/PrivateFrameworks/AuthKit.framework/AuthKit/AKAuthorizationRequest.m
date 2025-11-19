@interface AKAuthorizationRequest
- (ACAccount)authkitAccount;
- (AKAuthorizationRequest)init;
- (AKAuthorizationRequest)initWithAltDSID:(id)a3;
- (AKAuthorizationRequest)initWithCoder:(id)a3;
- (id)_sanitizedCopy;
- (id)altDSID;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
- (void)setNonce:(id)a3;
- (void)setState:(id)a3;
@end

@implementation AKAuthorizationRequest

- (AKAuthorizationRequest)init
{
  v7 = a2;
  v8 = 0;
  v6.receiver = self;
  v6.super_class = AKAuthorizationRequest;
  v8 = [(AKCredentialRequest *)&v6 init];
  objc_storeStrong(&v8, v8);
  if (v8)
  {
    v2 = objc_opt_new();
    requestedScopes = v8->_requestedScopes;
    v8->_requestedScopes = v2;
    MEMORY[0x1E69E5920](requestedScopes);
  }

  v5 = MEMORY[0x1E69E5928](v8);
  objc_storeStrong(&v8, 0);
  return v5;
}

- (AKAuthorizationRequest)initWithAltDSID:(id)a3
{
  v10 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v10;
  v10 = 0;
  v8.receiver = v3;
  v8.super_class = AKAuthorizationRequest;
  v10 = [(AKCredentialRequest *)&v8 init];
  objc_storeStrong(&v10, v10);
  if (v10)
  {
    objc_storeStrong(&v10->_altDSID, location[0]);
    v4 = objc_opt_new();
    requestedScopes = v10->_requestedScopes;
    v10->_requestedScopes = v4;
    MEMORY[0x1E69E5920](requestedScopes);
  }

  v7 = MEMORY[0x1E69E5928](v10);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v10, 0);
  return v7;
}

- (AKAuthorizationRequest)initWithCoder:(id)a3
{
  v62 = &v65;
  v65 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v65;
  v65 = 0;
  v63.receiver = v3;
  v63.super_class = AKAuthorizationRequest;
  v65 = [(AKCredentialRequest *)&v63 initWithCoder:location[0]];
  objc_storeStrong(&v65, v65);
  if (v65)
  {
    v43 = location[0];
    v47 = 0x1E695D000uLL;
    v42 = MEMORY[0x1E695DFD8];
    v48 = 0x1E695D000uLL;
    v41 = objc_opt_class();
    v59 = 0x1E696A000uLL;
    v44 = [v42 setWithObjects:{v41, objc_opt_class(), 0}];
    v4 = [v43 decodeObjectOfClasses:? forKey:?];
    requestedScopes = v65->_requestedScopes;
    v65->_requestedScopes = v4;
    MEMORY[0x1E69E5920](requestedScopes);
    MEMORY[0x1E69E5920](v44);
    v45 = location[0];
    v6 = *(v59 + 3776);
    v7 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"AKApplicationState"];
    state = v65->_state;
    v65->_state = v7;
    MEMORY[0x1E69E5920](state);
    v46 = location[0];
    v9 = *(v59 + 3776);
    v10 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"AKApplicationNonce"];
    nonce = v65->_nonce;
    v65->_nonce = v10;
    MEMORY[0x1E69E5920](nonce);
    v54 = location[0];
    v53 = *(v47 + 4056);
    v52 = objc_opt_class();
    v12 = *(v48 + 3784);
    v49 = objc_opt_class();
    v13 = *(v59 + 3776);
    v50 = objc_opt_class();
    v51 = objc_opt_class();
    v55 = [v53 setWithObjects:{v52, v49, v50, v51, objc_opt_class(), 0}];
    v14 = [v54 decodeObjectOfClasses:? forKey:?];
    appProvidedData = v65->_appProvidedData;
    v65->_appProvidedData = v14;
    MEMORY[0x1E69E5920](appProvidedData);
    MEMORY[0x1E69E5920](v55);
    v56 = location[0];
    v16 = *(v59 + 3776);
    v17 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"AKClientID"];
    clientID = v65->_clientID;
    v65->_clientID = v17;
    MEMORY[0x1E69E5920](clientID);
    v57 = location[0];
    v19 = *(v59 + 3776);
    v20 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"AKTeamID"];
    teamID = v65->_teamID;
    v65->_teamID = v20;
    MEMORY[0x1E69E5920](teamID);
    v22 = [location[0] decodeIntegerForKey:@"AKAuthorizationStatus"];
    v65->_existingStatus = v22;
    v58 = location[0];
    v23 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"AKAuthorizationAccount"];
    authkitAccount = v65->_authkitAccount;
    v65->_authkitAccount = v23;
    MEMORY[0x1E69E5920](authkitAccount);
    v25 = [location[0] decodeBoolForKey:@"AKAuthorizationIsSilentAppTransfer"];
    v65->_isSilentAppTransfer = v25;
    v26 = [location[0] decodeBoolForKey:@"AKAuthorizationIsEligibleForUpgradeFromPassword"];
    v65->_isEligibleForUpgradeFromPassword = v26;
    v27 = [location[0] decodeBoolForKey:@"AKClientAuthenticatedExternallyWithPassword"];
    v28 = v59;
    v65->_clientAuthenticatedExternallyWithPassword = v27;
    v60 = location[0];
    v29 = *(v28 + 3776);
    v30 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"AKExternalAuthToken"];
    externalAuthToken = v65->_externalAuthToken;
    v65->_externalAuthToken = v30;
    MEMORY[0x1E69E5920](externalAuthToken);
    v32 = [location[0] decodeBoolForKey:@"AKAuthorizationShouldHideCreateOption"];
    v65->_shouldHideCreateOption = v32;
    v33 = [location[0] decodeBoolForKey:@"AKHasSharedAccountsKey"];
    v65->_hasSharedAccounts = v33;
    v34 = [location[0] decodeBoolForKey:@"AKSimulateAuthorizationForSharedAccountKey"];
    v65->_isAuthorizingUsingSharedAccount = v34;
    v61 = location[0];
    v35 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"AKSharedAccountKey"];
    sharedAccount = v65->_sharedAccount;
    v65->_sharedAccount = v35;
    MEMORY[0x1E69E5920](sharedAccount);
  }

  v38 = &v65;
  v40 = MEMORY[0x1E69E5928](v65);
  obj = 0;
  objc_storeStrong(location, 0);
  objc_storeStrong(v38, obj);
  return v40;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v22 = self;
  v21[2] = a2;
  v21[1] = a3;
  v20.receiver = self;
  v20.super_class = AKAuthorizationRequest;
  v21[0] = [(AKCredentialRequest *)&v20 copyWithZone:a3];
  v3 = [(ACAccount *)v22->_authkitAccount copy];
  v4 = *(v21[0] + 7);
  *(v21[0] + 7) = v3;
  MEMORY[0x1E69E5920](v4);
  v5 = [(NSArray *)v22->_requestedScopes copy];
  v6 = *(v21[0] + 10);
  *(v21[0] + 10) = v5;
  MEMORY[0x1E69E5920](v6);
  v7 = [(NSString *)v22->_state copy];
  v8 = *(v21[0] + 12);
  *(v21[0] + 12) = v7;
  MEMORY[0x1E69E5920](v8);
  v9 = [(NSString *)v22->_nonce copy];
  v10 = *(v21[0] + 13);
  *(v21[0] + 13) = v9;
  MEMORY[0x1E69E5920](v10);
  v11 = [(NSDictionary *)v22->_appProvidedData copy];
  v12 = *(v21[0] + 11);
  *(v21[0] + 11) = v11;
  MEMORY[0x1E69E5920](v12);
  v13 = [(NSString *)v22->_clientID copy];
  v14 = *(v21[0] + 14);
  *(v21[0] + 14) = v13;
  MEMORY[0x1E69E5920](v14);
  v15 = [(NSString *)v22->_teamID copy];
  v16 = *(v21[0] + 15);
  *(v21[0] + 15) = v15;
  MEMORY[0x1E69E5920](v16);
  *(v21[0] + 16) = v22->_existingStatus;
  *(v21[0] + 40) = v22->_isSilentAppTransfer;
  *(v21[0] + 44) = v22->_isEligibleForUpgradeFromPassword;
  *(v21[0] + 41) = v22->_clientAuthenticatedExternallyWithPassword;
  objc_storeStrong(v21[0] + 8, v22->_externalAuthToken);
  *(v21[0] + 45) = v22->_shouldHideCreateOption;
  *(v21[0] + 42) = v22->_hasSharedAccounts;
  [v21[0] set_isAuthorizingUsingSharedAccount:v22->_isAuthorizingUsingSharedAccount];
  v18 = [(AKSignInWithAppleAccount *)v22->_sharedAccount copy];
  [v21[0] set_sharedAccount:?];
  MEMORY[0x1E69E5920](v18);
  v19 = MEMORY[0x1E69E5928](v21[0]);
  objc_storeStrong(v21, 0);
  return v19;
}

- (id)_sanitizedCopy
{
  v7 = self;
  v6[1] = a2;
  v6[0] = objc_alloc_init(AKAuthorizationRequest);
  v3 = [(AKCredentialRequest *)v7 userIdentifier];
  [v6[0] setUserIdentifier:?];
  MEMORY[0x1E69E5920](v3);
  v4 = [(AKCredentialRequest *)v7 requestIdentifier];
  [v6[0] setRequestIdentifier:?];
  MEMORY[0x1E69E5920](v4);
  [v6[0] setRequestedScopes:v7->_requestedScopes];
  [v6[0] setState:v7->_state];
  [v6[0] setNonce:v7->_nonce];
  [v6[0] set_clientAuthenticatedExternallyWithPassword:v7->_clientAuthenticatedExternallyWithPassword];
  [v6[0] set_externalAuthToken:v7->_externalAuthToken];
  [v6[0] set_hasSharedAccounts:v7->_hasSharedAccounts];
  [v6[0] set_isAuthorizingUsingSharedAccount:v7->_isAuthorizingUsingSharedAccount];
  [v6[0] set_sharedAccount:v7->_sharedAccount];
  v5 = MEMORY[0x1E69E5928](v6[0]);
  objc_storeStrong(v6, 0);

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3.receiver = v5;
  v3.super_class = AKAuthorizationRequest;
  [(AKCredentialRequest *)&v3 encodeWithCoder:location[0]];
  [location[0] encodeObject:v5->_requestedScopes forKey:@"AKRequestedScopes"];
  [location[0] encodeObject:v5->_state forKey:@"AKApplicationState"];
  [location[0] encodeObject:v5->_nonce forKey:@"AKApplicationNonce"];
  [location[0] encodeObject:v5->_appProvidedData forKey:@"AKAppProvidedData"];
  [location[0] encodeObject:v5->_clientID forKey:@"AKClientID"];
  [location[0] encodeObject:v5->_teamID forKey:@"AKTeamID"];
  [location[0] encodeObject:v5->_authkitAccount forKey:@"AKAuthorizationAccount"];
  [location[0] encodeInteger:v5->_existingStatus forKey:@"AKAuthorizationStatus"];
  [location[0] encodeBool:v5->_isSilentAppTransfer forKey:@"AKAuthorizationIsSilentAppTransfer"];
  [location[0] encodeBool:v5->_isEligibleForUpgradeFromPassword forKey:@"AKAuthorizationIsEligibleForUpgradeFromPassword"];
  [location[0] encodeBool:v5->_clientAuthenticatedExternallyWithPassword forKey:@"AKClientAuthenticatedExternallyWithPassword"];
  [location[0] encodeObject:v5->_externalAuthToken forKey:@"AKExternalAuthToken"];
  [location[0] encodeBool:v5->_shouldHideCreateOption forKey:@"AKAuthorizationShouldHideCreateOption"];
  [location[0] encodeBool:v5->_hasSharedAccounts forKey:@"AKHasSharedAccountsKey"];
  [location[0] encodeBool:v5->_isAuthorizingUsingSharedAccount forKey:@"AKSimulateAuthorizationForSharedAccountKey"];
  [location[0] encodeObject:v5->_sharedAccount forKey:@"AKSharedAccountKey"];
  objc_storeStrong(location, 0);
}

- (ACAccount)authkitAccount
{
  if (!self->_authkitAccount && self->_altDSID)
  {
    v6 = +[AKAccountManager sharedInstance];
    v2 = [(AKAccountManager *)v6 authKitAccountWithAltDSID:self->_altDSID error:0];
    authkitAccount = self->_authkitAccount;
    self->_authkitAccount = v2;
    MEMORY[0x1E69E5920](authkitAccount);
    MEMORY[0x1E69E5920](v6);
  }

  v4 = self->_authkitAccount;

  return v4;
}

- (id)altDSID
{
  if (!self->_altDSID && self->_authkitAccount)
  {
    v6 = +[AKAccountManager sharedInstance];
    v2 = [(AKAccountManager *)v6 altDSIDForAccount:self->_authkitAccount];
    altDSID = self->_altDSID;
    self->_altDSID = v2;
    MEMORY[0x1E69E5920](altDSID);
    MEMORY[0x1E69E5920](v6);
  }

  v4 = self->_altDSID;

  return v4;
}

- (id)description
{
  v11 = MEMORY[0x1E696AEC0];
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  v15 = [(AKCredentialRequest *)self requestIdentifier];
  v14 = [(AKCredentialRequest *)self transactionID];
  clientID = self->_clientID;
  teamID = self->_teamID;
  v13 = [(AKCredentialRequest *)self userIdentifier];
  v4 = [(AKAuthorizationRequest *)self altDSID];
  v12 = v4;
  v5 = @"YES";
  if (self->_shouldHideCreateOption)
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  if (self->_hasSharedAccounts)
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  if (!self->_isAuthorizingUsingSharedAccount)
  {
    v5 = @"NO";
  }

  v16 = [v11 stringWithFormat:@"<%@: %p {\n\trequestIdentifier: %@, \n\ttransactionID: %@, \n\tclientID: %@, \n\tteamID: %@, \n\tuserIdentifier: %@, \n\taltDSID: %@, \n\tstate: %@, \n\tnonce: %@, \n\trequestedScopes: %@, \n\tappProvidedData: %@, \n\tisSilentAppTransfer: %d, \n\tisEligibleForUpgradeFromPassword: %d, \n\tshouldHideCreationOption: %@, \n\thasSharedAccounts: %@, \n\tsimulateAuthorizationForSharedAccount: %@, \n}>", v3, self, v15, v14, clientID, teamID, v13, v4, self->_state, self->_nonce, self->_requestedScopes, self->_appProvidedData, self->_isSilentAppTransfer, self->_isEligibleForUpgradeFromPassword, v6, v7, v5];
  MEMORY[0x1E69E5920](v12);
  MEMORY[0x1E69E5920](v13);
  MEMORY[0x1E69E5920](v14);
  MEMORY[0x1E69E5920](v15);
  MEMORY[0x1E69E5920](v3);

  return v16;
}

- (void)setState:(id)a3
{
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if ([location[0] length] > 0x100)
  {
    v3 = [location[0] substringToIndex:256];
    v4 = location[0];
    location[0] = v3;
    MEMORY[0x1E69E5920](v4);
  }

  objc_storeStrong(&v6->_state, location[0]);
  objc_storeStrong(location, 0);
}

- (void)setNonce:(id)a3
{
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if ([location[0] length] > 0x100)
  {
    v3 = [location[0] substringToIndex:256];
    v4 = location[0];
    location[0] = v3;
    MEMORY[0x1E69E5920](v4);
  }

  objc_storeStrong(&v6->_nonce, location[0]);
  objc_storeStrong(location, 0);
}

@end