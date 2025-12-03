@interface AALoginDelegatesResponse
+ (id)_privacySensitiveKeys;
- (NSDictionary)responseParameters;
- (NSNumber)status;
- (NSString)altDSID;
- (NSString)dsid;
- (NSString)statusMessage;
- (id)augmentedResponseParametersForServiceIdentifier:(id)identifier withAppleID:(id)d password:(id)password DSID:(id)iD altDSID:(id)sID;
- (id)privacySensitiveResponseBody;
- (id)responseParametersForServiceIdentifier:(id)identifier;
@end

@implementation AALoginDelegatesResponse

- (NSNumber)status
{
  responseDictionary = [(AAResponse *)self responseDictionary];
  v3 = [responseDictionary objectForKey:@"status"];

  return v3;
}

- (NSString)statusMessage
{
  responseDictionary = [(AAResponse *)self responseDictionary];
  v3 = [responseDictionary objectForKey:@"status-message"];

  return v3;
}

- (NSDictionary)responseParameters
{
  responseDictionary = [(AAResponse *)self responseDictionary];
  v3 = [responseDictionary objectForKey:@"delegates"];

  return v3;
}

- (id)responseParametersForServiceIdentifier:(id)identifier
{
  identifierCopy = identifier;
  responseParameters = [(AALoginDelegatesResponse *)self responseParameters];
  v6 = [responseParameters objectForKey:identifierCopy];

  return v6;
}

- (NSString)dsid
{
  responseDictionary = [(AAResponse *)self responseDictionary];
  v3 = [responseDictionary objectForKey:@"dsid"];

  return v3;
}

- (NSString)altDSID
{
  responseParameters = [(AALoginDelegatesResponse *)self responseParameters];
  v3 = [responseParameters objectForKeyedSubscript:@"com.apple.mobileme"];
  v4 = [v3 objectForKeyedSubscript:@"service-data"];
  v5 = [v4 objectForKeyedSubscript:@"appleAccountInfo"];
  v6 = [v5 objectForKeyedSubscript:@"aDsID"];

  return v6;
}

- (id)augmentedResponseParametersForServiceIdentifier:(id)identifier withAppleID:(id)d password:(id)password DSID:(id)iD altDSID:(id)sID
{
  dCopy = d;
  passwordCopy = password;
  iDCopy = iD;
  sIDCopy = sID;
  v16 = [(AALoginDelegatesResponse *)self responseParametersForServiceIdentifier:identifier];
  v17 = [v16 objectForKeyedSubscript:@"service-data"];
  v18 = [v17 mutableCopy];

  if (!v18)
  {
    v18 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  v19 = [v16 objectForKeyedSubscript:@"status"];

  if (v19)
  {
    v20 = [v16 objectForKeyedSubscript:@"status"];
    [v18 setObject:v20 forKeyedSubscript:@"status"];
  }

  v21 = [v16 objectForKeyedSubscript:@"status-message"];

  if (v21)
  {
    v22 = [v16 objectForKeyedSubscript:@"status-message"];
    [v18 setObject:v22 forKeyedSubscript:@"status-message"];
  }

  if (dCopy)
  {
    [v18 setObject:dCopy forKeyedSubscript:@"appleIDEnteredByUser"];
  }

  if (passwordCopy)
  {
    [v18 setObject:passwordCopy forKeyedSubscript:@"password"];
  }

  if (iDCopy)
  {
    [v18 setObject:iDCopy forKeyedSubscript:@"dsid"];
  }

  if (sIDCopy)
  {
    [v18 setObject:sIDCopy forKeyedSubscript:@"altDSID"];
  }

  v23 = [v18 copy];

  return v23;
}

+ (id)_privacySensitiveKeys
{
  if (_privacySensitiveKeys_onceToken_375 != -1)
  {
    +[AALoginDelegatesResponse _privacySensitiveKeys];
  }

  v3 = _privacySensitiveKeys_keysToRedact_374;

  return v3;
}

void __49__AALoginDelegatesResponse__privacySensitiveKeys__block_invoke()
{
  v4[18] = *MEMORY[0x1E69E9840];
  v4[0] = @"age-category";
  v4[1] = @"alternate-dsid";
  v4[2] = @"auth-token";
  v4[3] = @"base-phone-number";
  v4[4] = @"firstName";
  v4[5] = @"fullName";
  v4[6] = @"fullName";
  v4[7] = @"FullUserName";
  v4[8] = @"lastName";
  v4[9] = @"middleName";
  v4[10] = @"profile-id";
  v4[11] = @"pushToken";
  v4[12] = @"realm-user-id";
  v4[13] = @"uri";
  v4[14] = @"aDsID";
  v4[15] = @"dsid";
  v4[16] = @"dsPrsID";
  v4[17] = @"tokens";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:18];
  v1 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:v0];
  v2 = _privacySensitiveKeys_keysToRedact_374;
  _privacySensitiveKeys_keysToRedact_374 = v1;

  v3 = *MEMORY[0x1E69E9840];
}

- (id)privacySensitiveResponseBody
{
  responseDictionary = [(AAResponse *)self responseDictionary];

  if (responseDictionary)
  {
    v4 = [AAPrivacySensitiveDictionaryLog alloc];
    responseDictionary2 = [(AAResponse *)self responseDictionary];
    v6 = +[AALoginDelegatesResponse _privacySensitiveKeys];
    v7 = [(AAPrivacySensitiveDictionaryLog *)v4 initWithDictionary:responseDictionary2 forKeys:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end