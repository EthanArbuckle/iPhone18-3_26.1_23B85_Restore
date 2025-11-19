@interface ACAccountCredential
+ (ACAccountCredential)credentialWithOAuthToken:(id)a3 tokenSecret:(id)a4;
+ (ACAccountCredential)credentialWithPassword:(id)a3;
+ (BOOL)credentialPolicyIsMixedForAccountTypeIdentifier:(id)a3;
+ (NSSet)allSupportedKeys;
+ (id)additionalServiceSegmentForAccountTypeIdentifier:(id)a3;
+ (id)credentialPolicyForAccountTypeIdentifier:(id)a3 key:(id)a4 clientID:(id)a5;
+ (id)nonPersistentKeysForAccountTypeIdentifier:(id)a3 credentialType:(id)a4;
+ (id)supportedKeysForAccountTypeIdentifier:(id)a3 credentialType:(id)a4;
- (ACAccountCredential)init;
- (ACAccountCredential)initWithCoder:(id)a3;
- (ACAccountCredential)initWithOAuth2Token:(NSString *)token refreshToken:(NSString *)refreshToken expiryDate:(NSDate *)expiryDate;
- (ACAccountCredential)initWithOAuthToken:(NSString *)token tokenSecret:(NSString *)secret;
- (ACAccountCredential)initWithPassword:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NSDate)expiryDate;
- (NSDate)tokenExpiryDate;
- (NSSet)dirtyProperties;
- (NSString)description;
- (id)_encodeProtobuf;
- (id)_encodeProtobufData;
- (id)_initWithProtobuf:(id)a3;
- (id)_initWithProtobufData:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)credentialItemForKey:(id)a3;
- (unint64_t)hash;
- (void)_clearDirtyProperties;
- (void)_markPropertyDirty:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setCredentialItem:(id)a3 forKey:(id)a4;
- (void)setCredentialType:(id)a3;
- (void)setExpiryDate:(id)a3;
- (void)setTokenExpiryDate:(id)a3;
@end

@implementation ACAccountCredential

- (ACAccountCredential)init
{
  v6.receiver = self;
  v6.super_class = ACAccountCredential;
  v2 = [(ACAccountCredential *)&v6 init];
  v3 = v2;
  if (v2)
  {
    credentialItems = v2->_credentialItems;
    v2->_credentialItems = MEMORY[0x1E695E0F8];
  }

  return v3;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  credentialType = self->_credentialType;
  v5 = [(NSDictionary *)self->_credentialItems allKeys];
  v6 = [v5 componentsJoinedByString:{@", "}];
  v7 = [v3 stringWithFormat:@"<ACAccountCredential:'%@'-(%@)(TouchID:%d)>", credentialType, v6, self->_requiresTouchID];

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      credentialType = self->_credentialType;
      v7 = [(ACAccountCredential *)v5 credentialType];
      v8 = v7;
      if (credentialType == v7)
      {
      }

      else
      {
        v9 = self->_credentialType;
        v10 = [(ACAccountCredential *)v5 credentialType];
        LODWORD(v9) = [(NSString *)v9 isEqual:v10];

        if (!v9)
        {
          v11 = 0;
LABEL_13:

          goto LABEL_14;
        }
      }

      credentialItems = self->_credentialItems;
      v13 = [(ACAccountCredential *)v5 credentialItems];
      if (credentialItems == v13)
      {
        v11 = 1;
      }

      else
      {
        v14 = self->_credentialItems;
        v15 = [(ACAccountCredential *)v5 credentialItems];
        v11 = [(NSDictionary *)v14 isEqual:v15];
      }

      goto LABEL_13;
    }

    v11 = 0;
  }

LABEL_14:

  return v11 & 1;
}

- (unint64_t)hash
{
  v6.receiver = self;
  v6.super_class = ACAccountCredential;
  v3 = [(ACAccountCredential *)&v6 hash];
  v4 = [(NSDictionary *)self->_credentialItems hash];
  return v3 + v4 + [(NSString *)self->_credentialType hash];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSDictionary *)self->_credentialItems copyWithZone:a3];
  v7 = *(v5 + 8);
  *(v5 + 8) = v6;

  v8 = [(NSString *)self->_credentialType copyWithZone:a3];
  v9 = *(v5 + 16);
  *(v5 + 16) = v8;

  v10 = [(NSMutableSet *)self->_dirtyProperties mutableCopyWithZone:a3];
  v11 = *(v5 + 24);
  *(v5 + 24) = v10;

  *(v5 + 40) = self->_requiresTouchID;
  WeakRetained = objc_loadWeakRetained(&self->_owningAccount);
  objc_storeWeak((v5 + 32), WeakRetained);

  return v5;
}

- (ACAccountCredential)initWithOAuth2Token:(NSString *)token refreshToken:(NSString *)refreshToken expiryDate:(NSDate *)expiryDate
{
  v8 = token;
  v9 = refreshToken;
  v10 = expiryDate;
  v17.receiver = self;
  v17.super_class = ACAccountCredential;
  v11 = [(ACAccountCredential *)&v17 init];
  v12 = v11;
  if (v11)
  {
    credentialItems = v11->_credentialItems;
    v11->_credentialItems = MEMORY[0x1E695E0F8];

    [(ACAccountCredential *)v12 setOauthToken:v8];
    [(ACAccountCredential *)v12 setOauthRefreshToken:v9];
    [(ACAccountCredential *)v12 setExpiryDate:v10];
    v14 = [@"oauth2" copy];
    credentialType = v12->_credentialType;
    v12->_credentialType = v14;
  }

  return v12;
}

- (ACAccountCredential)initWithOAuthToken:(NSString *)token tokenSecret:(NSString *)secret
{
  v6 = token;
  v7 = secret;
  v14.receiver = self;
  v14.super_class = ACAccountCredential;
  v8 = [(ACAccountCredential *)&v14 init];
  v9 = v8;
  if (v8)
  {
    credentialItems = v8->_credentialItems;
    v8->_credentialItems = MEMORY[0x1E695E0F8];

    [(ACAccountCredential *)v9 setOauthToken:v6];
    [(ACAccountCredential *)v9 setOauthTokenSecret:v7];
    v11 = [@"oauth" copy];
    credentialType = v9->_credentialType;
    v9->_credentialType = v11;
  }

  return v9;
}

- (ACAccountCredential)initWithPassword:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = ACAccountCredential;
  v5 = [(ACAccountCredential *)&v11 init];
  v6 = v5;
  if (v5)
  {
    credentialItems = v5->_credentialItems;
    v5->_credentialItems = MEMORY[0x1E695E0F8];

    [(ACAccountCredential *)v6 setPassword:v4];
    v8 = [@"password" copy];
    credentialType = v6->_credentialType;
    v6->_credentialType = v8;
  }

  return v6;
}

+ (ACAccountCredential)credentialWithOAuthToken:(id)a3 tokenSecret:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [objc_alloc(objc_opt_class()) initWithOAuthToken:v6 tokenSecret:v5];

  return v7;
}

+ (ACAccountCredential)credentialWithPassword:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(objc_opt_class()) initWithPassword:v3];

  return v4;
}

+ (NSSet)allSupportedKeys
{
  if (allSupportedKeys_onceToken != -1)
  {
    +[ACAccountCredential allSupportedKeys];
  }

  v3 = allSupportedKeys_keys;

  return v3;
}

void __39__ACAccountCredential_allSupportedKeys__block_invoke()
{
  v5[36] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E695DFD8];
  v5[0] = @"oauth-token";
  v5[1] = @"oauth-token-secret";
  v5[2] = @"oath-refresh-token";
  v5[3] = @"oauth-expiry-date";
  v5[4] = @"password";
  v5[5] = @"purpose";
  v5[6] = @"token";
  v5[7] = @"oauth-token-nosync";
  v5[8] = @"oauth-graphAPI-token";
  v5[9] = @"rpassword";
  v5[10] = @"old-password";
  v5[11] = @"find-my-iphone-token";
  v5[12] = @"find-my-iphone-app-token";
  v5[13] = @"find-my-iphone-siri-token";
  v5[14] = @"maps-token";
  v5[15] = @"hsa-token";
  v5[16] = @"find-my-friends-token";
  v5[17] = @"find-my-friends-app-token";
  v5[18] = @"token-expiry-date";
  v5[19] = @"heartbeat-token";
  v5[20] = @"heartbeat-token-creation";
  v5[21] = @"continuation-key";
  v5[22] = @"continuation-key-creation";
  v5[23] = @"password-reset-token";
  v5[24] = @"password-reset-token-creation";
  v5[25] = @"password-reset-token-backup";
  v5[26] = @"yahoo-xympki-token";
  v5[27] = @"yahoo-xympki-cookie-y";
  v5[28] = @"yahoo-xympki-cookie-t";
  v5[29] = @"yahoo-xympki-cookie-crumb";
  v5[30] = @"tencent-weibo-client-consumer-key";
  v5[31] = @"container-user-id";
  v5[32] = @"cloudkit-token";
  v5[33] = @"mdm-server-token";
  v5[34] = @"search-party-token";
  v5[35] = @"key-transparency-token";
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:36];
  v2 = [v0 setWithArray:v1];
  v3 = allSupportedKeys_keys;
  allSupportedKeys_keys = v2;

  v4 = *MEMORY[0x1E69E9840];
}

+ (id)supportedKeysForAccountTypeIdentifier:(id)a3 credentialType:(id)a4
{
  v40[8] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if ([v5 isEqualToString:@"com.apple.account.idms"])
  {
    v40[0] = @"token";
    v40[1] = @"heartbeat-token";
    v40[2] = @"heartbeat-token-creation";
    v40[3] = @"continuation-key";
    v40[4] = @"continuation-key-creation";
    v40[5] = @"password-reset-token";
    v40[6] = @"password-reset-token-creation";
    v40[7] = @"password-reset-token-backup";
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:8];
LABEL_15:
    v13 = v7;
    goto LABEL_16;
  }

  if ([v5 isEqualToString:@"com.apple.account.FaceTime"] || objc_msgSend(v5, "isEqualToString:", @"com.apple.account.Madrid"))
  {
    v8 = MEMORY[0x1E695DEC8];
    v9 = @"password";
LABEL_6:
    v23 = v9;
    v24 = 0;
LABEL_12:
    v12 = @"token";
LABEL_13:
    [v8 arrayWithObjects:{v12, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37}];
    v7 = LABEL_14:;
    goto LABEL_15;
  }

  if ([v5 isEqualToString:@"com.apple.account.GameCenter"] || objc_msgSend(v5, "isEqualToString:", @"com.apple.account.IdentityServices"))
  {
    v8 = MEMORY[0x1E695DEC8];
    v25 = 0;
LABEL_10:
    v10 = @"rpassword";
    v11 = @"password";
LABEL_11:
    v23 = v11;
    v24 = v10;
    goto LABEL_12;
  }

  if ([v5 isEqualToString:@"com.apple.account.DeviceLocator"])
  {
    v8 = MEMORY[0x1E695DEC8];
    v25 = 0;
    v10 = @"find-my-iphone-siri-token";
    v11 = @"find-my-iphone-app-token";
    goto LABEL_11;
  }

  if ([v5 isEqualToString:@"com.apple.account.FindMyFriends"])
  {
    [MEMORY[0x1E695DEC8] arrayWithObjects:{@"find-my-friends-app-token", @"find-my-friends-token", 0, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37}];
    goto LABEL_14;
  }

  if ([v5 isEqualToString:@"com.apple.account.AppleAccount"])
  {
    v8 = MEMORY[0x1E695DEC8];
    v36 = @"key-transparency-token";
    v37 = 0;
    v34 = @"find-my-iphone-siri-token";
    v35 = @"search-party-token";
    v32 = @"find-my-friends-app-token";
    v33 = @"mdm-server-token";
    v30 = @"cloudkit-token";
    v31 = @"find-my-friends-token";
    v28 = @"maps-token";
    v29 = @"hsa-token";
    v26 = @"find-my-iphone-token";
    v27 = @"find-my-iphone-app-token";
    v25 = @"old-password";
    goto LABEL_10;
  }

  if (([v5 isEqualToString:@"com.apple.account.iTunesStore"] & 1) != 0 || objc_msgSend(v5, "isEqualToString:", @"com.apple.account.iTunesStore.sandbox"))
  {
    v8 = MEMORY[0x1E695DEC8];
    v23 = @"rpassword";
    v24 = 0;
LABEL_28:
    v12 = @"password";
    goto LABEL_13;
  }

  if ([v5 isEqualToString:@"com.apple.account.tencentweibo"])
  {
    v8 = MEMORY[0x1E695DEC8];
    v27 = @"oauth-token-nosync";
    v28 = 0;
    v16 = @"tencent-weibo-client-consumer-key";
LABEL_31:
    v25 = @"purpose";
    v26 = v16;
    v17 = @"oauth-expiry-date";
LABEL_35:
    v18 = @"oath-refresh-token";
LABEL_36:
    v23 = v18;
    v24 = v17;
LABEL_37:
    v12 = @"oauth-token";
    goto LABEL_13;
  }

  if ([v5 isEqualToString:@"com.apple.account.Google"])
  {
    v8 = MEMORY[0x1E695DEC8];
    v26 = @"oauth-token-nosync";
    v27 = 0;
    v25 = @"oauth-expiry-date";
LABEL_34:
    v17 = @"password";
    goto LABEL_35;
  }

  if ([v5 isEqualToString:@"com.apple.account.Yahoo"])
  {
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:{@"oauth-token", @"oath-refresh-token", @"oauth-token-nosync", @"password", @"oauth-expiry-date", 0}];
    v39[0] = @"yahoo-xympki-token";
    v39[1] = @"yahoo-xympki-cookie-y";
    v39[2] = @"yahoo-xympki-cookie-t";
    v39[3] = @"yahoo-xympki-cookie-crumb";
    v20 = MEMORY[0x1E695DEC8];
    v21 = v39;
LABEL_42:
    v22 = [v20 arrayWithObjects:v21 count:4];
    v13 = [v19 arrayByAddingObjectsFromArray:v22];

    goto LABEL_16;
  }

  if ([v5 isEqualToString:@"com.apple.account.aol"])
  {
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:{@"oauth-token", @"oath-refresh-token", @"oauth-token-nosync", @"password", @"oauth-expiry-date", 0}];
    v38[0] = @"yahoo-xympki-token";
    v38[1] = @"yahoo-xympki-cookie-y";
    v38[2] = @"yahoo-xympki-cookie-t";
    v38[3] = @"yahoo-xympki-cookie-crumb";
    v20 = MEMORY[0x1E695DEC8];
    v21 = v38;
    goto LABEL_42;
  }

  if ([v5 isEqualToString:@"com.apple.account.Hotmail"])
  {
    v8 = MEMORY[0x1E695DEC8];
    v25 = @"oauth-graphAPI-token";
    v26 = 0;
    goto LABEL_34;
  }

  if ([v5 isEqualToString:@"com.apple.account.Exchange"])
  {
    v8 = MEMORY[0x1E695DEC8];
    v28 = @"oauth-graphAPI-token";
    v29 = 0;
    v27 = @"password";
LABEL_47:
    v16 = @"oauth-token-nosync";
    goto LABEL_31;
  }

  if ([v6 isEqualToString:@"oauth"])
  {
    v8 = MEMORY[0x1E695DEC8];
    v25 = 0;
    v17 = @"oauth-token-nosync";
    v18 = @"oauth-token-secret";
    goto LABEL_36;
  }

  if ([v6 isEqualToString:@"password"])
  {
    v8 = MEMORY[0x1E695DEC8];
    v23 = 0;
    goto LABEL_28;
  }

  if ([v6 isEqualToString:@"oauth2"])
  {
    v8 = MEMORY[0x1E695DEC8];
    v27 = 0;
    goto LABEL_47;
  }

  if ([v6 isEqualToString:@"Kerberos"])
  {
    goto LABEL_55;
  }

  if ([v6 isEqualToString:@"yahoo-xympki-tokens"])
  {
    [MEMORY[0x1E695DEC8] arrayWithObjects:{@"yahoo-xympki-token", @"yahoo-xympki-cookie-y", @"yahoo-xympki-cookie-t", @"yahoo-xympki-cookie-crumb", 0, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37}];
    goto LABEL_14;
  }

  if ([v6 isEqualToString:@"token"])
  {
LABEL_55:
    v8 = MEMORY[0x1E695DEC8];
    v23 = 0;
    goto LABEL_12;
  }

  if ([v6 isEqualToString:@"hybrid"])
  {
    v8 = MEMORY[0x1E695DEC8];
    v26 = @"password";
    v27 = 0;
    v24 = @"token";
    v25 = @"oath-refresh-token";
    v23 = @"oauth-token-secret";
    goto LABEL_37;
  }

  if ([v6 isEqualToString:@"appleid-authentication"])
  {
    v8 = MEMORY[0x1E695DEC8];
    v9 = @"token-expiry-date";
    goto LABEL_6;
  }

  v13 = 0;
LABEL_16:

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

+ (id)nonPersistentKeysForAccountTypeIdentifier:(id)a3 credentialType:(id)a4
{
  v4 = a3;
  if ([v4 isEqualToString:@"com.apple.account.FaceTime"] || objc_msgSend(v4, "isEqualToString:", @"com.apple.account.Madrid"))
  {
    [MEMORY[0x1E695DEC8] arrayWithObjects:{@"password", 0, v7, v8, v9, v10}];
    v5 = LABEL_7:;
    goto LABEL_8;
  }

  if ([v4 isEqualToString:@"com.apple.account.IdentityServices"] || objc_msgSend(v4, "isEqualToString:", @"com.apple.account.GameCenter"))
  {
    goto LABEL_6;
  }

  if ([v4 isEqualToString:@"com.apple.account.AppleAccount"])
  {
    [MEMORY[0x1E695DEC8] arrayWithObjects:{@"password", @"rpassword", @"old-password", @"find-my-iphone-token", @"hsa-token", 0}];
    goto LABEL_7;
  }

  if (([v4 isEqualToString:@"com.apple.account.iTunesStore"] & 1) != 0 || objc_msgSend(v4, "isEqualToString:", @"com.apple.account.iTunesStore.sandbox"))
  {
LABEL_6:
    [MEMORY[0x1E695DEC8] arrayWithObjects:{@"password", @"rpassword", 0, v8, v9, v10}];
    goto LABEL_7;
  }

  v5 = 0;
LABEL_8:

  return v5;
}

- (ACAccountCredential)initWithCoder:(id)a3
{
  v4 = a3;
  v23.receiver = self;
  v23.super_class = ACAccountCredential;
  v5 = [(ACAccountCredential *)&v23 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = [v6 setWithObjects:{v7, v8, objc_opt_class(), 0}];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"credentialItems"];
    v11 = [v10 copy];
    credentialItems = v5->_credentialItems;
    v5->_credentialItems = v11;

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"credentialType"];
    v14 = [v13 copy];
    credentialType = v5->_credentialType;
    v5->_credentialType = v14;

    v16 = MEMORY[0x1E695DFD8];
    v17 = objc_opt_class();
    v18 = [v16 setWithObjects:{v17, objc_opt_class(), 0}];
    v19 = [v4 decodeObjectOfClasses:v18 forKey:@"dirtyProperties"];
    dirtyProperties = v5->_dirtyProperties;
    v5->_dirtyProperties = v19;

    v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_requiresTouchID"];
    v5->_requiresTouchID = [v21 BOOLValue];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  credentialItems = self->_credentialItems;
  v5 = a3;
  [v5 encodeObject:credentialItems forKey:@"credentialItems"];
  [v5 encodeObject:self->_credentialType forKey:@"credentialType"];
  [v5 encodeObject:self->_dirtyProperties forKey:@"dirtyProperties"];
  v6 = [MEMORY[0x1E696AD98] numberWithBool:self->_requiresTouchID];
  [v5 encodeObject:v6 forKey:@"_requiresTouchID"];
}

- (id)_initWithProtobuf:(id)a3
{
  v38 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(ACAccountCredential *)self init];
  if (v5)
  {
    v32 = v4;
    v6 = v4;
    v7 = [v6 credentialType];
    v8 = [v7 copy];
    credentialType = v5->_credentialType;
    v5->_credentialType = v8;

    v5->_requiresTouchID = [v6 requiresTouchID];
    v10 = [v6 dirtyProperties];

    if (v10)
    {
      v11 = objc_alloc(MEMORY[0x1E695DFA8]);
      v12 = [v6 dirtyProperties];
      v13 = [v11 initWithArray:v12];
      dirtyProperties = v5->_dirtyProperties;
      v5->_dirtyProperties = v13;
    }

    v15 = objc_alloc(MEMORY[0x1E695DF90]);
    v16 = [v6 credentialItems];
    v17 = [v15 initWithCapacity:{objc_msgSend(v16, "count")}];

    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v18 = [v6 credentialItems];
    v19 = [v18 countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v34;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v34 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v33 + 1) + 8 * i);
          v24 = [v23 value];
          v25 = [ACZeroingString stringWithString:v24];
          v26 = [v23 key];
          [v17 setObject:v25 forKeyedSubscript:v26];
        }

        v20 = [v18 countByEnumeratingWithState:&v33 objects:v37 count:16];
      }

      while (v20);
    }

    v27 = [v17 copy];
    credentialItems = v5->_credentialItems;
    v5->_credentialItems = v27;

    v29 = v5;
    v4 = v32;
  }

  v30 = *MEMORY[0x1E69E9840];
  return v5;
}

- (id)_initWithProtobufData:(id)a3
{
  v5 = a3;
  if (![v5 length])
  {
    [(ACAccountCredential *)a2 _initWithProtobufData:?];
  }

  if ([v5 length])
  {
    v6 = [[ACProtobufAccountCredential alloc] initWithData:v5];
    if (v6)
    {
      self = [(ACAccountCredential *)self _initWithProtobuf:v6];
      v7 = self;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_encodeProtobuf
{
  v3 = objc_opt_new();
  [v3 setCredentialType:self->_credentialType];
  [v3 setRequiresTouchID:self->_requiresTouchID];
  v4 = [(NSMutableSet *)self->_dirtyProperties allObjects];
  v5 = [v4 mutableCopy];
  [v3 setDirtyProperties:v5];

  v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSDictionary count](self->_credentialItems, "count")}];
  credentialItems = self->_credentialItems;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __38__ACAccountCredential__encodeProtobuf__block_invoke;
  v10[3] = &unk_1E7977108;
  v11 = v6;
  v8 = v6;
  [(NSDictionary *)credentialItems enumerateKeysAndObjectsUsingBlock:v10];
  [v3 setCredentialItems:v8];

  return v3;
}

void __38__ACAccountCredential__encodeProtobuf__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = a2;
  v7 = [[ACProtobufKeyValuePair alloc] initWithValue:v5 forKey:v6];

  [v4 addObject:v7];
}

- (id)_encodeProtobufData
{
  v2 = [(ACAccountCredential *)self _encodeProtobuf];
  v3 = [v2 data];

  return v3;
}

- (NSSet)dirtyProperties
{
  v2 = [(NSMutableSet *)self->_dirtyProperties copy];

  return v2;
}

- (void)_markPropertyDirty:(id)a3
{
  v4 = a3;
  dirtyProperties = self->_dirtyProperties;
  v10 = v4;
  if (!dirtyProperties)
  {
    v6 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:1];
    v7 = self->_dirtyProperties;
    self->_dirtyProperties = v6;

    v4 = v10;
    dirtyProperties = self->_dirtyProperties;
  }

  [(NSMutableSet *)dirtyProperties addObject:v4];
  WeakRetained = objc_loadWeakRetained(&self->_owningAccount);

  if (WeakRetained)
  {
    v9 = objc_loadWeakRetained(&self->_owningAccount);
    [v9 _markCredentialDirty];
  }
}

- (void)_clearDirtyProperties
{
  dirtyProperties = self->_dirtyProperties;
  self->_dirtyProperties = 0;
  MEMORY[0x1EEE66BB8]();
}

- (id)credentialItemForKey:(id)a3
{
  v3 = [(NSDictionary *)self->_credentialItems objectForKey:a3];
  if (v3)
  {
    v4 = [MEMORY[0x1E696AEC0] _newZStringWithString:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setCredentialItem:(id)a3 forKey:(id)a4
{
  v12 = a3;
  v6 = a4;
  v7 = self;
  objc_sync_enter(v7);
  v8 = [(NSDictionary *)v7->_credentialItems mutableCopy];
  if (v12)
  {
    v9 = [[ACZeroingString alloc] initWithString:v12];
    [v8 setObject:v9 forKey:v6];
  }

  else
  {
    [v8 removeObjectForKey:v6];
  }

  v10 = [v8 copy];
  credentialItems = v7->_credentialItems;
  v7->_credentialItems = v10;

  objc_sync_exit(v7);
  [(ACAccountCredential *)v7 _markPropertyDirty:@"credentialItems"];
}

- (NSDate)expiryDate
{
  v2 = [(ACAccountCredential *)self credentialItemForKey:@"oauth-expiry-date"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v4 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:?];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setExpiryDate:(id)a3
{
  [a3 timeIntervalSinceReferenceDate];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%f", v4];
  [(ACAccountCredential *)self setCredentialItem:v5 forKey:@"oauth-expiry-date"];
}

- (NSDate)tokenExpiryDate
{
  v2 = [(ACAccountCredential *)self credentialItemForKey:@"token-expiry-date"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v4 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:?];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setTokenExpiryDate:(id)a3
{
  [a3 timeIntervalSinceReferenceDate];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%f", v4];
  [(ACAccountCredential *)self setCredentialItem:v5 forKey:@"token-expiry-date"];
}

- (void)setCredentialType:(id)a3
{
  v4 = [a3 copy];
  credentialType = self->_credentialType;
  self->_credentialType = v4;

  [(ACAccountCredential *)self _markPropertyDirty:@"credentialType"];
}

+ (id)credentialPolicyForAccountTypeIdentifier:(id)a3 key:(id)a4 clientID:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v8 isEqualToString:@"com.apple.account.AppleIDAuthentication"])
  {
    if ([v10 isEqualToString:@"com.apple.gs.idms.pet"])
    {
LABEL_3:
      v11 = MEMORY[0x1E697ABE8];
LABEL_13:
      v12 = *v11;
      goto LABEL_14;
    }

LABEL_10:
    v11 = MEMORY[0x1E697ABE0];
    goto LABEL_13;
  }

  if ([v8 isEqualToString:@"com.apple.account.FindMyFriends"])
  {
    if ([v9 isEqualToString:@"find-my-friends-token"])
    {
      goto LABEL_12;
    }

    if ([v9 isEqualToString:@"find-my-friends-app-token"])
    {
      goto LABEL_10;
    }
  }

  if ([v8 isEqualToString:@"com.apple.account.DeviceLocator"])
  {
    if ([v9 isEqualToString:@"find-my-iphone-siri-token"] || objc_msgSend(v9, "isEqualToString:", @"find-my-iphone-app-token"))
    {
      goto LABEL_10;
    }

LABEL_12:
    v11 = MEMORY[0x1E697ABF8];
    goto LABEL_13;
  }

  if ([v8 isEqualToString:@"com.apple.account.HolidayCalendar"])
  {
    goto LABEL_12;
  }

  if (([v8 isEqualToString:@"com.apple.account.Exchange"] & 1) != 0 || objc_msgSend(v8, "isEqualToString:", @"com.apple.account.Hotmail"))
  {
    goto LABEL_3;
  }

  v14 = [a1 nonPersistentKeysForAccountTypeIdentifier:v8 credentialType:0];
  v15 = [v14 containsObject:v9];
  v16 = MEMORY[0x1E697ABE8];
  if (!v15)
  {
    v16 = MEMORY[0x1E697ABE0];
  }

  v12 = *v16;

LABEL_14:

  return v12;
}

+ (BOOL)credentialPolicyIsMixedForAccountTypeIdentifier:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"com.apple.account.FindMyFriends"])
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 isEqualToString:@"com.apple.account.DeviceLocator"];
  }

  return v4;
}

+ (id)additionalServiceSegmentForAccountTypeIdentifier:(id)a3
{
  v3 = a3;
  if (([v3 isEqualToString:@"com.apple.account.Yahoo"] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"com.apple.twitter") & 1) != 0 || objc_msgSend(v3, "isEqualToString:", @"com.apple.account.aol"))
  {
    v4 = @"com.apple.iOS";
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_initWithProtobufData:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ACAccountCredential.m" lineNumber:358 description:{@"Invalid parameter not satisfying: %@", @"data.length != 0"}];
}

@end