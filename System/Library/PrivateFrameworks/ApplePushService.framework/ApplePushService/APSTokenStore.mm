@interface APSTokenStore
- (APSTokenStore)initWithEnvironment:(id)a3 allowInMemoryCache:(BOOL)a4;
- (BOOL)isAppSpecificTokenValidWithDomain:(id)a3 token:(id)a4 tokenServiceSuffix:(id)a5 user:(id)a6 error:(id *)a7;
- (BOOL)isAppSpecificTokenValidWithDomain:(id)a3 token:(id)a4 user:(id)a5 error:(id *)a6;
- (BOOL)isMatchingTokenInKeychain:(id)a3 user:(id)a4 error:(id *)a5;
- (id)_cachedTokensForUser:(id)a3 andService:(id)a4;
- (id)_copyTokenForDomain:(id)a3 appSpecificIdentifier:(id)a4 tokenServiceSuffix:(id)a5 user:(id)a6;
- (id)copyAppSpecificIdentifierWithTopic:(id)a3 identifier:(id)a4 user:(id)a5;
- (id)copyAppSpecificTokensWithDomain:(id)a3 forTopic:(id)a4 tokenServiceSuffix:(id)a5 user:(id)a6 returnRef:(BOOL)a7 error:(id *)a8;
- (id)copyTokenForDomain:(id)a3 appSpecificIdentifier:(id)a4 tokenServiceSuffix:(id)a5 user:(id)a6;
- (id)description;
- (id)deserializedPersistedData:(id)a3 forInfo:(id)a4 outPersistedInfo:(id *)a5;
- (id)deserializedPersistedData:(id)a3 withType:(int64_t)a4 outPersistedInfo:(id *)a5;
- (id)serializeInfo:(id)a3 withToken:(id)a4;
- (id)suffixForInfo:(id)a3;
- (id)systemTokenInfoForUser:(id)a3;
- (id)tokenForInfo:(id)a3 user:(id)a4 persistedInfo:(id *)a5;
- (id)tokenInfoArrayForTopic:(id)a3 user:(id)a4;
- (id)tokensForTopic:(id)a3 user:(id)a4 error:(id *)a5;
- (void)_cacheTokens:(id)a3 forUser:(id)a4 andService:(id)a5;
- (void)_clearCacheForUser:(id)a3 andService:(id)a4;
- (void)deleteAppSpecificTokensWithDomain:(id)a3 forTopic:(id)a4 user:(id)a5;
- (void)deleteAppSpecificTokensWithDomain:(id)a3 tokenServiceSuffix:(id)a4 user:(id)a5;
- (void)deleteAppSpecificTokensWithRefArray:(id)a3;
- (void)deleteAppTokensForUser:(id)a3;
- (void)setSystemToken:(id)a3 forUser:(id)a4;
- (void)setSystemTokenInfo:(id)a3 forUser:(id)a4;
- (void)setToken:(id)a3 forInfo:(id)a4 user:(id)a5;
- (void)setTokenData:(__CFData *)a3 withDomain:(id)a4 appSpecificIdentifier:(id)a5 tokenServiceSuffix:(id)a6 user:(id)a7 topic:(id)a8;
@end

@implementation APSTokenStore

- (id)description
{
  v3 = objc_opt_class();
  v4 = [(APSTokenStore *)self environment];
  v5 = [v4 name];
  v6 = [NSString stringWithFormat:@"<%@:%p %@>", v3, self, v5];;

  return v6;
}

- (APSTokenStore)initWithEnvironment:(id)a3 allowInMemoryCache:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  v13.receiver = self;
  v13.super_class = APSTokenStore;
  v8 = [(APSTokenStore *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_environment, a3);
    if (v4)
    {
      v10 = objc_alloc_init(NSMutableDictionary);
      perAppTokensByUserThenService = v9->_perAppTokensByUserThenService;
      v9->_perAppTokensByUserThenService = v10;
    }
  }

  return v9;
}

- (void)setSystemToken:(id)a3 forUser:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [(APSTokenStore *)self environment];
  v8 = [v9 domain];
  [(APSTokenStore *)self setTokenData:v7 withDomain:v8 appSpecificIdentifier:0 tokenServiceSuffix:&stru_10018F6A0 user:v6 topic:0];
}

- (void)setSystemTokenInfo:(id)a3 forUser:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[APSLog courier];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [(APSTokenStore *)self environment];
    v10 = [v9 name];
    v11 = [v6 systemToken];
    v16 = 138412802;
    v17 = v10;
    v18 = 2112;
    v19 = v11;
    v20 = 2048;
    v21 = [v6 tokenType];
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "APSTokenStore setting system token in keychain for environment %@, token: %@, type: %ld", &v16, 0x20u);
  }

  if (v6)
  {
    v12 = [v6 serializeSystemTokenInfo];
  }

  else
  {
    v13 = +[APSLog courier];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v16) = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "APSTokenStore storing no token in keychain", &v16, 2u);
    }

    v12 = 0;
  }

  v14 = [(APSTokenStore *)self environment];
  v15 = [v14 domain];
  [(APSTokenStore *)self setTokenData:v12 withDomain:v15 appSpecificIdentifier:0 tokenServiceSuffix:&stru_10018F6A0 user:v7 topic:0];
}

- (id)systemTokenInfoForUser:(id)a3
{
  v4 = a3;
  v5 = +[APSLog courier];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(APSTokenStore *)self environment];
    v7 = [v6 name];
    v15 = 138412290;
    v16 = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "APSTokenStore fetching system token from keychain, environment: %@", &v15, 0xCu);
  }

  v8 = [(APSTokenStore *)self environment];
  v9 = [v8 domain];
  v10 = [(APSTokenStore *)self copyTokenForDomain:v9 appSpecificIdentifier:0 tokenServiceSuffix:&stru_10018F6A0 user:v4];

  v11 = [APSSystemTokenInfo systemTokenInfoFromData:v10];
  if ([v11 tokenType] == 2)
  {
    v12 = +[APSDaemon identityUtilities];
    [v11 setTokenType:{objc_msgSend(v12, "albertIdentitySupported") ^ 1}];

    if (+[APSSimulatorSupport isSimulator])
    {
      [v11 setTokenType:1];
    }

    v13 = +[APSLog courier];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v15) = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "APSTokenStore migrating token to new token info!", &v15, 2u);
    }

    [(APSTokenStore *)self setSystemTokenInfo:v11 forUser:v4];
  }

  return v11;
}

- (void)deleteAppTokensForUser:(id)a3
{
  v4 = a3;
  v5 = [(APSTokenStore *)self environment];
  v6 = [v5 domain];
  [(APSTokenStore *)self deleteAppSpecificTokensWithDomain:v6 tokenServiceSuffix:@" user:PerAppToken.v0", v4];

  v8 = [(APSTokenStore *)self environment];
  v7 = [v8 domain];
  [(APSTokenStore *)self deleteAppSpecificTokensWithDomain:v7 tokenServiceSuffix:@" user:ExtendedAppToken.v1", v4];
}

- (void)setToken:(id)a3 forInfo:(id)a4 user:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v8 && ![v9 type])
  {
    v11 = [(APSTokenStore *)self environment];
    v12 = [v11 domain];
    v13 = [v9 topic];
    [(APSTokenStore *)self deleteAppSpecificTokensWithDomain:v12 forTopic:v13 user:v10];
  }

  v14 = [v9 topic];
  v15 = [v9 identifier];
  v16 = [(APSTokenStore *)self copyAppSpecificIdentifierWithTopic:v14 identifier:v15 user:v10];

  if (!v8)
  {
    v19 = 0;
LABEL_12:
    v20 = [(APSTokenStore *)self environment];
    v21 = [v20 domain];
    v22 = [(APSTokenStore *)self suffixForInfo:v9];
    v23 = [v9 topic];
    [(APSTokenStore *)self setTokenData:v19 withDomain:v21 appSpecificIdentifier:v16 tokenServiceSuffix:v22 user:v10 topic:v23];

    goto LABEL_13;
  }

  v17 = [v9 baseToken];

  if (!v17)
  {
    v18 = +[APSLog courier];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
    {
      sub_100108728(self, v18);
    }
  }

  v19 = [(APSTokenStore *)self serializeInfo:v9 withToken:v8];
  if (v19)
  {
    goto LABEL_12;
  }

LABEL_13:
}

- (id)tokenForInfo:(id)a3 user:(id)a4 persistedInfo:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [v8 topic];
  v11 = [v8 identifier];
  v12 = [(APSTokenStore *)self copyAppSpecificIdentifierWithTopic:v10 identifier:v11 user:v9];

  v13 = [(APSTokenStore *)self environment];
  v14 = [v13 domain];
  v15 = [(APSTokenStore *)self suffixForInfo:v8];
  v16 = [(APSTokenStore *)self copyTokenForDomain:v14 appSpecificIdentifier:v12 tokenServiceSuffix:v15 user:v9];

  if (v16)
  {
    v17 = [(APSTokenStore *)self deserializedPersistedData:v16 forInfo:v8 outPersistedInfo:a5];
  }

  else if (a5)
  {
    v18 = v8;
    v17 = 0;
    *a5 = v8;
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (id)tokensForTopic:(id)a3 user:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [(APSEnvironment *)self->_environment domain];
  v44 = 0;
  v10 = [(APSTokenStore *)self copyAppSpecificTokensWithDomain:v9 forTopic:v7 user:v8 returnRef:0 error:&v44];
  v11 = v44;

  v12 = &__NSArray0__struct;
  if (v10)
  {
    v12 = v10;
  }

  v13 = v12;

  v14 = [(APSEnvironment *)self->_environment domain];
  v43 = 0;
  v34 = v7;
  v15 = [(APSTokenStore *)self copyAppSpecificTokensWithDomain:v14 forTopic:v7 tokenServiceSuffix:@" user:ExtendedAppToken.v1" returnRef:v8 error:0, &v43];
  v32 = v43;

  v16 = [v13 mutableCopy];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v17 = v13;
  v18 = [v17 countByEnumeratingWithState:&v39 objects:v46 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v40;
    do
    {
      for (i = 0; i != v19; i = i + 1)
      {
        if (*v40 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = [(APSTokenStore *)self deserializedPersistedData:*(*(&v39 + 1) + 8 * i) withType:0 outPersistedInfo:0];
        if (v22)
        {
          [v16 addObject:v22];
        }
      }

      v19 = [v17 countByEnumeratingWithState:&v39 objects:v46 count:16];
    }

    while (v19);
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v23 = v15;
  v24 = [v23 countByEnumeratingWithState:&v35 objects:v45 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v36;
    do
    {
      for (j = 0; j != v25; j = j + 1)
      {
        if (*v36 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v28 = [(APSTokenStore *)self deserializedPersistedData:*(*(&v35 + 1) + 8 * j) withType:1 outPersistedInfo:0];
        if (v28)
        {
          [v16 addObject:v28];
        }
      }

      v25 = [v23 countByEnumeratingWithState:&v35 objects:v45 count:16];
    }

    while (v25);
  }

  if (a5 && v11 && v32)
  {
    v29 = v11;
    *a5 = v11;
  }

  v30 = [v16 copy];

  return v30;
}

- (id)tokenInfoArrayForTopic:(id)a3 user:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(APSEnvironment *)self->_environment domain];
  v9 = [(APSTokenStore *)self copyAppSpecificTokensWithDomain:v8 forTopic:v6 tokenServiceSuffix:@" user:ExtendedAppToken.v1" returnRef:v7 error:0, 0];

  v10 = objc_alloc_init(NSMutableArray);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v11 = v9;
  v12 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v23;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v23 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v22 + 1) + 8 * i);
        v21 = 0;
        v17 = [(APSTokenStore *)self deserializedPersistedData:v16 withType:1 outPersistedInfo:&v21];
        v18 = v21;
        if (v18)
        {
          [v10 addObject:v18];
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v13);
  }

  v19 = [v10 copy];

  return v19;
}

- (BOOL)isMatchingTokenInKeychain:(id)a3 user:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [(APSTokenStore *)self environment];
  v11 = [v10 domain];
  LOBYTE(a5) = [(APSTokenStore *)self isAppSpecificTokenValidWithDomain:v11 token:v9 user:v8 error:a5];

  return a5;
}

- (id)suffixForInfo:(id)a3
{
  v3 = [a3 type];
  if (v3 > 2)
  {
    return &stru_10018F6A0;
  }

  else
  {
    return off_100186860[v3];
  }
}

- (id)serializeInfo:(id)a3 withToken:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v6 dictionaryRepresentation];
  v8 = [v7 mutableCopy];

  [v8 setObject:v5 forKeyedSubscript:@"APSTokenPersistenceKey"];
  v9 = [v6 type];

  v10 = [NSNumber numberWithInteger:v9];
  [v8 setObject:v10 forKeyedSubscript:@"APSTypePersistenceKey"];

  v11 = [NSKeyedArchiver archivedDataWithRootObject:v8 requiringSecureCoding:1 error:0];

  return v11;
}

- (id)deserializedPersistedData:(id)a3 forInfo:(id)a4 outPersistedInfo:(id *)a5
{
  v8 = a4;
  v9 = a3;
  v10 = -[APSTokenStore deserializedPersistedData:withType:outPersistedInfo:](self, "deserializedPersistedData:withType:outPersistedInfo:", v9, [v8 type], a5);

  if (![v8 type] && !*a5)
  {
    v11 = [APSAppTokenInfo alloc];
    v12 = [v8 dictionaryRepresentation];
    *a5 = [v11 initWithDictionary:v12];
  }

  return v10;
}

- (id)deserializedPersistedData:(id)a3 withType:(int64_t)a4 outPersistedInfo:(id *)a5
{
  v7 = a3;
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = [NSSet setWithObjects:v8, v9, v10, objc_opt_class(), 0];
  v24 = 0;
  v12 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v11 fromData:v7 error:&v24];
  v13 = v24;

  if (!v12 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    if (a4 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v22 = 0;
    }

    else
    {
      v22 = v7;
    }

    goto LABEL_20;
  }

  v14 = [v12 objectForKeyedSubscript:@"APSTokenPersistenceKey"];
  v15 = [v12 objectForKeyedSubscript:@"APSTypePersistenceKey"];
  v16 = v15;
  if (!v15 || (v17 = [v15 intValue], v17 > 2))
  {
    v19 = 0;
    goto LABEL_17;
  }

  v18 = [objc_alloc(*off_100186878[v17]) initWithDictionary:v12];
  v19 = v18;
  if (v18)
  {
    v20 = v14 == 0;
  }

  else
  {
    v20 = 1;
  }

  if (v20)
  {
LABEL_17:
    v22 = 0;
    if (a5)
    {
      *a5 = 0;
    }

    goto LABEL_19;
  }

  if (a5)
  {
    v21 = v18;
    *a5 = v19;
  }

  v22 = v14;
LABEL_19:

LABEL_20:

  return v22;
}

- (BOOL)isAppSpecificTokenValidWithDomain:(id)a3 token:(id)a4 user:(id)a5 error:(id *)a6
{
  v21 = 0;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [(APSTokenStore *)self isAppSpecificTokenValidWithDomain:v12 token:v11 tokenServiceSuffix:@" user:PerAppToken.v0" error:v10, &v21];
  v14 = v21;
  v20 = 0;
  v15 = [(APSTokenStore *)self isAppSpecificTokenValidWithDomain:v12 token:v11 tokenServiceSuffix:@" user:ExtendedAppToken.v1" error:v10, &v20];

  v16 = v20;
  v17 = v16;
  if (a6 && v14 && v16)
  {
    v18 = v14;
    *a6 = v14;
  }

  return (v13 | v15) & 1;
}

- (BOOL)isAppSpecificTokenValidWithDomain:(id)a3 token:(id)a4 tokenServiceSuffix:(id)a5 user:(id)a6 error:(id *)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  if (v13)
  {
    v16 = [[NSString alloc] initWithFormat:@"%@%@", v12, v14];
    v17 = [(APSTokenStore *)self _cachedTokensForUser:v15 andService:v16];
    v18 = +[APSLog courier];
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
    if (v17)
    {
      if (v19)
      {
        *buf = 138413314;
        v50 = self;
        v51 = 2112;
        v52 = v12;
        v53 = 2112;
        v54 = v13;
        v55 = 2112;
        v56 = v14;
        v57 = 2048;
        v58 = [v17 count];
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%@: isAppSpecificTokenValid %@ %@ %@ - using cache {count: %llu}", buf, 0x34u);
      }

      LOBYTE(v18) = [v17 containsObject:v13];
LABEL_42:

      goto LABEL_43;
    }

    v41 = a7;
    if (v19)
    {
      *buf = 138413058;
      v50 = self;
      v51 = 2112;
      v52 = v12;
      v53 = 2112;
      v54 = v13;
      v55 = 2112;
      v56 = v14;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%@: isAppSpecificTokenValid %@ %@ %@", buf, 0x2Au);
    }

    Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    CFDictionaryAddValue(Mutable, kSecClass, kSecClassGenericPassword);
    CFDictionaryAddValue(Mutable, kSecAttrAccessGroup, APSBundleIdentifier);
    CFDictionaryAddValue(Mutable, kSecAttrService, v16);
    CFDictionaryAddValue(Mutable, kSecMatchLimit, kSecMatchLimitAll);
    CFDictionaryAddValue(Mutable, kSecReturnData, kCFBooleanTrue);
    if ([v15 isDefaultUser])
    {
      v21 = +[APSMultiUserMode sharedInstance];
      v22 = [v21 isMultiUser];

      if (v22)
      {
        CFDictionaryAddValue(Mutable, kSecUseSystemKeychain, kCFBooleanTrue);
      }
    }

    result = 0;
    v23 = SecItemCopyMatching(Mutable, &result);
    if (v23 == -25300)
    {
      v28 = +[APSLog courier];
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v50 = self;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "%@: SecItemCopyMatching() returned no items found.", buf, 0xCu);
      }

      if (!v41)
      {
        goto LABEL_23;
      }

      v26 = APSErrorDomain;
      v27 = -25300;
    }

    else
    {
      v24 = v23;
      if (!v23)
      {
        goto LABEL_23;
      }

      v25 = +[APSLog courier];
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        sub_1001087A0();
      }

      result = 0;
      if (!v41)
      {
        goto LABEL_23;
      }

      v26 = APSErrorDomain;
      v27 = v24;
    }

    *v41 = [NSError errorWithDomain:v26 code:v27 userInfo:0];
LABEL_23:
    CFRelease(Mutable);
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v29 = result;
    v30 = [v29 countByEnumeratingWithState:&v43 objects:v48 count:16];
    if (v30)
    {
      v31 = v30;
      v39 = v16;
      v40 = v15;
      v42 = v12;
      v32 = *v44;
      while (2)
      {
        for (i = 0; i != v31; i = i + 1)
        {
          if (*v44 != v32)
          {
            objc_enumerationMutation(v29);
          }

          v34 = -[APSTokenStore deserializedPersistedData:withType:outPersistedInfo:](self, "deserializedPersistedData:withType:outPersistedInfo:", *(*(&v43 + 1) + 8 * i), [@" ExtendedAppToken.v1"], 0);
          v35 = [v34 isEqualToData:v13];

          if (v35)
          {
            LODWORD(v18) = 1;
            goto LABEL_33;
          }
        }

        v31 = [v29 countByEnumeratingWithState:&v43 objects:v48 count:16];
        if (v31)
        {
          continue;
        }

        break;
      }

      LODWORD(v18) = 0;
LABEL_33:
      v12 = v42;
      v16 = v39;
      v15 = v40;
    }

    else
    {
      LODWORD(v18) = 0;
    }

    v36 = +[APSLog courier];
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      v37 = @"NO";
      *buf = 138412802;
      v50 = self;
      v51 = 2112;
      if (v18)
      {
        v37 = @"YES";
      }

      v52 = v13;
      v53 = 2112;
      v54 = v37;
      _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "%@: isAppSpecificTokenValid? %@ found cached token %@", buf, 0x20u);
    }

    if (result)
    {
      CFRelease(result);
    }

    v17 = 0;
    goto LABEL_42;
  }

  LOBYTE(v18) = 0;
LABEL_43:

  return v18;
}

- (id)copyAppSpecificTokensWithDomain:(id)a3 forTopic:(id)a4 tokenServiceSuffix:(id)a5 user:(id)a6 returnRef:(BOOL)a7 error:(id *)a8
{
  v54 = a7;
  v12 = a3;
  v51 = a4;
  v13 = a5;
  v14 = a6;
  v15 = +[APSLog courier];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413058;
    v63 = self;
    v64 = 2112;
    v65 = v12;
    v66 = 2112;
    v67 = v51;
    v68 = 2112;
    v69 = v13;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%@: copyAppSpecificTokensWithDomain %@ %@ %@", buf, 0x2Au);
  }

  v48 = v13;
  v16 = [[NSString alloc] initWithFormat:@"%@%@", v12, v13];
  Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(Mutable, kSecClass, kSecClassGenericPassword);
  CFDictionaryAddValue(Mutable, kSecAttrAccessGroup, APSBundleIdentifier);
  v46 = v16;
  CFDictionaryAddValue(Mutable, kSecAttrService, v16);
  CFDictionaryAddValue(Mutable, kSecMatchLimit, kSecMatchLimitAll);
  CFDictionaryAddValue(Mutable, kSecReturnAttributes, kCFBooleanTrue);
  CFDictionaryAddValue(Mutable, kSecReturnPersistentRef, kCFBooleanTrue);
  if ([v14 isDefaultUser])
  {
    v18 = +[APSMultiUserMode sharedInstance];
    v19 = [v18 isMultiUser];

    if (v19)
    {
      CFDictionaryAddValue(Mutable, kSecUseSystemKeychain, kCFBooleanTrue);
    }
  }

  result = 0;
  v20 = SecItemCopyMatching(Mutable, &result);
  if (v20 == -25300)
  {
    v25 = +[APSLog courier];
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v63 = self;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "%@: SecItemCopyMatching() returned no items found.", buf, 0xCu);
    }

    if (!a8)
    {
      goto LABEL_17;
    }

    v23 = APSErrorDomain;
    v24 = -25300;
  }

  else
  {
    v21 = v20;
    if (!v20)
    {
      goto LABEL_17;
    }

    v22 = +[APSLog courier];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v63 = self;
      v64 = 2048;
      v65 = v21;
      v66 = 2112;
      v67 = v12;
      _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%@: SecItemCopyMatching() failed: %ld - copyAppSpecificTokensWithDomain %@", buf, 0x20u);
    }

    result = 0;
    if (!a8)
    {
      goto LABEL_17;
    }

    v23 = APSErrorDomain;
    v24 = v21;
  }

  *a8 = [NSError errorWithDomain:v23 code:v24 userInfo:0];
LABEL_17:
  cf = Mutable;
  v47 = v14;
  v26 = result;
  v27 = [(APSTokenStore *)self _copyHashForString:v51];
  v28 = +[NSMutableArray array];
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v29 = v26;
  v30 = [v29 countByEnumeratingWithState:&v56 objects:v61 count:16];
  if (!v30)
  {
    goto LABEL_40;
  }

  v31 = v30;
  v32 = *v57;
  v33 = kSecAttrAccount;
  v49 = v27;
  v50 = v29;
  v53 = *v57;
  do
  {
    for (i = 0; i != v31; i = i + 1)
    {
      if (*v57 != v32)
      {
        objc_enumerationMutation(v29);
      }

      v35 = *(*(&v56 + 1) + 8 * i);
      v36 = [v35 objectForKeyedSubscript:v33];
      if ([v36 containsString:v27])
      {
        if (!v28)
        {
          v28 = objc_alloc_init(NSMutableArray);
        }

        v37 = v31;
        v38 = +[APSLog courier];
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138413058;
          v63 = self;
          v64 = 2112;
          v65 = v12;
          v66 = 2112;
          v67 = v51;
          v68 = 2112;
          v69 = v36;
          _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "%@: copyAppSpecificTokensWithDomain - %@ for topic %@ account %@", buf, 0x2Au);
        }

        v39 = [v35 objectForKeyedSubscript:kSecValuePersistentRef];
        if (v54)
        {
          [v28 addObject:v39];
LABEL_37:

          v31 = v37;
          v33 = kSecAttrAccount;
          v32 = v53;
          goto LABEL_38;
        }

        v55 = 0;
        v40 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        CFDictionaryAddValue(v40, kSecValuePersistentRef, v39);
        CFDictionaryAddValue(v40, kSecReturnData, kCFBooleanTrue);
        v41 = SecItemCopyMatching(v40, &v55);
        if (v41)
        {
          v42 = v41;
          v43 = +[APSLog courier];
          if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
          {
            *buf = 138413058;
            v63 = self;
            v64 = 2112;
            v65 = v39;
            v66 = 2048;
            v67 = v42;
            v68 = 2112;
            v69 = v12;
            _os_log_error_impl(&_mh_execute_header, v43, OS_LOG_TYPE_ERROR, "%@: SecItemCopyMatching() failed for persistenRef %@ with error: %ld - copyAppSpecificTokensWithDomain %@", buf, 0x2Au);
          }

          v27 = v49;
          v29 = v50;
LABEL_35:
        }

        else
        {
          v43 = v55;
          v27 = v49;
          v29 = v50;
          if (v55)
          {
            [v28 addObject:v55];
            goto LABEL_35;
          }
        }

        CFRelease(v40);
        goto LABEL_37;
      }

LABEL_38:
    }

    v31 = [v29 countByEnumeratingWithState:&v56 objects:v61 count:16];
  }

  while (v31);
LABEL_40:

  if (result)
  {
    CFRelease(result);
  }

  CFRelease(cf);

  return v28;
}

- (id)copyAppSpecificIdentifierWithTopic:(id)a3 identifier:(id)a4 user:(id)a5
{
  v7 = a4;
  v8 = [(APSTokenStore *)self _copyHashForString:a3];
  v9 = [[NSString alloc] initWithFormat:@"%@, %@", v7, v8];

  return v9;
}

- (void)deleteAppSpecificTokensWithRefArray:(id)a3
{
  v3 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v15 objects:v27 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = *v16;
    *&v5 = 138412802;
    v13 = v5;
    do
    {
      v8 = 0;
      do
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v15 + 1) + 8 * v8);
        v25 = kSecValuePersistentRef;
        v26 = v9;
        v10 = [NSDictionary dictionaryWithObjects:&v26 forKeys:&v25 count:1, v13];
        v11 = SecItemDelete(v10);

        if (v11)
        {
          v12 = +[APSLog courier];
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            *buf = v13;
            v20 = self;
            v21 = 2048;
            v22 = v11;
            v23 = 2112;
            v24 = v9;
            _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%@: SecItemDelete() failed: %ld - deleteAppSpecificTokensWithArray persistentRef %@", buf, 0x20u);
          }
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v3 countByEnumeratingWithState:&v15 objects:v27 count:16];
    }

    while (v6);
  }
}

- (void)deleteAppSpecificTokensWithDomain:(id)a3 forTopic:(id)a4 user:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = +[APSLog courier];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v15 = self;
    v16 = 2112;
    v17 = v8;
    v18 = 2112;
    v19 = v9;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%@: deleteAppSpecificTokens - %@ for topic %@", buf, 0x20u);
  }

  v12 = [(APSTokenStore *)self copyAppSpecificTokensWithDomain:v8 forTopic:v9 user:v10 returnRef:1 error:0];
  v13 = [[NSString alloc] initWithFormat:@"%@%@", v8, @", PerAppToken.v0"];
  [(APSTokenStore *)self _clearCacheForUser:v10 andService:v13];

  [(APSTokenStore *)self deleteAppSpecificTokensWithRefArray:v12];
}

- (void)setTokenData:(__CFData *)a3 withDomain:(id)a4 appSpecificIdentifier:(id)a5 tokenServiceSuffix:(id)a6 user:(id)a7 topic:(id)a8
{
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = +[APSLog courier];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413058;
    v29 = self;
    v30 = 2112;
    v31 = v13;
    v32 = 2112;
    v33 = a3;
    v34 = 2112;
    v35 = v14;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%@: setTokenForDomain %@ tokenData %@ appSpecificIdentifier %@", buf, 0x2Au);
  }

  Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(Mutable, kSecClass, kSecClassGenericPassword);
  CFDictionaryAddValue(Mutable, kSecAttrAccessGroup, APSBundleIdentifier);
  if ([v16 isDefaultUser])
  {
    v19 = +[APSMultiUserMode sharedInstance];
    v20 = [v19 isMultiUser];

    if (v20)
    {
      CFDictionaryAddValue(Mutable, kSecUseSystemKeychain, kCFBooleanTrue);
    }
  }

  if (v14)
  {
    CFDictionaryAddValue(Mutable, kSecAttrAccount, v14);
    v21 = [[NSString alloc] initWithFormat:@"%@%@", v13, v15];
  }

  else
  {
    v21 = [[NSString alloc] initWithFormat:@"%@%@", v13, &stru_10018F6A0];
  }

  v22 = v21;
  [(APSTokenStore *)self _clearCacheForUser:v16 andService:v21];
  CFDictionaryAddValue(Mutable, kSecAttrService, v22);
  if (a3)
  {
    CFDictionaryAddValue(Mutable, kSecAttrAccessible, kSecAttrAccessibleAlwaysThisDeviceOnly);
    CFDictionaryAddValue(Mutable, kSecValueData, a3);
    v23 = SecItemAdd(Mutable, 0);
    if (v23 == -25299)
    {
      v27 = v15;
      v24 = +[APSLog courier];
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138413058;
        v29 = self;
        v30 = 2112;
        v31 = v13;
        v32 = 2112;
        v33 = v14;
        v34 = 2112;
        v35 = a3;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "%@: SecResult shows duplicate item, trying to update it. setTokenForDomain %@ appSpecificIdentifier %@  tokenData %@", buf, 0x2Au);
      }

      CFDictionaryRemoveValue(Mutable, kSecValueData);
      v25 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      CFDictionaryAddValue(v25, kSecValueData, a3);
      v23 = SecItemUpdate(Mutable, v25);
      CFRelease(v25);
      v15 = v27;
    }

    if (v23)
    {
      v26 = +[APSLog courier];
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        sub_100108808();
      }

LABEL_20:
    }
  }

  else if (SecItemDelete(Mutable))
  {
    v26 = +[APSLog courier];
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      sub_100108870();
    }

    goto LABEL_20;
  }

  CFRelease(Mutable);
}

- (void)deleteAppSpecificTokensWithDomain:(id)a3 tokenServiceSuffix:(id)a4 user:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = +[APSLog courier];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v19 = self;
    v20 = 2112;
    v21 = v8;
    v22 = 2112;
    v23 = v9;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%@: deleteAppSpecificTokens - domain %@ tokenServiceSuffix %@", buf, 0x20u);
  }

  v12 = [[NSString alloc] initWithFormat:@"%@%@", v8, v9];
  [(APSTokenStore *)self _clearCacheForUser:v10 andService:v12];
  Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(Mutable, kSecClass, kSecClassGenericPassword);
  CFDictionaryAddValue(Mutable, kSecAttrAccessGroup, APSBundleIdentifier);
  CFDictionaryAddValue(Mutable, kSecAttrService, v12);
  v14 = [v10 isDefaultUser];

  if (v14)
  {
    v15 = +[APSMultiUserMode sharedInstance];
    v16 = [v15 isMultiUser];

    if (v16)
    {
      CFDictionaryAddValue(Mutable, kSecUseSystemKeychain, kCFBooleanTrue);
    }
  }

  if (SecItemDelete(Mutable))
  {
    v17 = +[APSLog courier];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_1001088D8();
    }
  }

  CFRelease(Mutable);
}

- (id)copyTokenForDomain:(id)a3 appSpecificIdentifier:(id)a4 tokenServiceSuffix:(id)a5 user:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(APSTokenStore *)self _copyTokenForDomain:v10 appSpecificIdentifier:v11 tokenServiceSuffix:v12 user:v13];
  if (!v14)
  {
    v14 = [(APSTokenStore *)self _copyTokenForDomain:v10 appSpecificIdentifier:v11 tokenServiceSuffix:v12 user:v13];
  }

  return v14;
}

- (id)_copyTokenForDomain:(id)a3 appSpecificIdentifier:(id)a4 tokenServiceSuffix:(id)a5 user:(id)a6
{
  v41 = a3;
  v10 = a4;
  v11 = a5;
  v42 = a6;
  v12 = +[APSLog courier];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413058;
    v50 = self;
    v51 = 2112;
    v52 = v41;
    v53 = 2112;
    v54 = v10;
    v55 = 2112;
    v56 = v11;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%@: copyTokenForDomain %@ %@ %@", buf, 0x2Au);
  }

  Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(Mutable, kSecClass, kSecClassGenericPassword);
  CFDictionaryAddValue(Mutable, kSecAttrAccessGroup, APSBundleIdentifier);
  if ([v42 isDefaultUser])
  {
    v14 = +[APSMultiUserMode sharedInstance];
    v15 = [v14 isMultiUser];

    if (v15)
    {
      CFDictionaryAddValue(Mutable, kSecUseSystemKeychain, kCFBooleanTrue);
    }
  }

  if (v10)
  {
    CFDictionaryAddValue(Mutable, kSecAttrAccount, v10);
    v16 = [NSString alloc];
    v36 = v11;
  }

  else
  {
    v16 = [NSString alloc];
    v36 = &stru_10018F6A0;
  }

  v17 = [v16 initWithFormat:@"%@%@", v41, v36];
  CFDictionaryAddValue(Mutable, kSecAttrService, v17);
  CFDictionaryAddValue(Mutable, kSecReturnData, kCFBooleanTrue);
  result = 0;
  v18 = SecItemCopyMatching(Mutable, &result);
  if (v18 != -25300 && v18)
  {
    v19 = +[APSLog courier];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_100108940();
    }
  }

  CFRelease(Mutable);
  if (!(v10 | result))
  {
    v20 = sub_100004328(@"APSPublicTokens", [v42 isDefaultUser]);
    if (v20)
    {
      v21 = v20;
      v22 = CFGetTypeID(v20);
      if (v22 == CFDictionaryGetTypeID())
      {
        v38 = v17;
        v39 = v11;
        v40 = v10;
        v23 = +[APSLog courier];
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v50 = self;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "%@: Migrating tokens to the keychain", buf, 0xCu);
        }

        v45 = 0u;
        v46 = 0u;
        v43 = 0u;
        v44 = 0u;
        v37 = v21;
        v24 = v21;
        v25 = [v24 countByEnumeratingWithState:&v43 objects:v48 count:16];
        if (v25)
        {
          v26 = v25;
          v27 = *v44;
          do
          {
            for (i = 0; i != v26; i = i + 1)
            {
              if (*v44 != v27)
              {
                objc_enumerationMutation(v24);
              }

              v29 = *(*(&v43 + 1) + 8 * i);
              Value = CFDictionaryGetValue(v24, v29);
              v31 = result;
              v32 = [(APSTokenStore *)self environment];
              v33 = [v32 domain];
              [(APSTokenStore *)self setTokenData:v31 withDomain:v33 appSpecificIdentifier:0 tokenServiceSuffix:&stru_10018F6A0 user:v42 topic:0];

              if (!result && Value && [v41 isEqualToString:v29])
              {
                result = CFRetain(Value);
              }
            }

            v26 = [v24 countByEnumeratingWithState:&v43 objects:v48 count:16];
          }

          while (v26);
        }

        sub_100005394(@"APSPublicTokens", 0, [v42 isDefaultUser]);
        sub_1000054B8([v42 isDefaultUser]);
        v11 = v39;
        v10 = v40;
        v21 = v37;
        v17 = v38;
      }

      CFRelease(v21);
    }
  }

  v34 = result;

  return v34;
}

- (void)_clearCacheForUser:(id)a3 andService:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (self->_perAppTokensByUserThenService)
  {
    v8 = +[APSLog courier];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412802;
      v13 = self;
      v14 = 2112;
      v15 = v6;
      v16 = 2112;
      v17 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%@: dropping cache {user: %@, service: %@}", &v12, 0x20u);
    }

    perAppTokensByUserThenService = self->_perAppTokensByUserThenService;
    v10 = [v6 name];
    v11 = [(NSMutableDictionary *)perAppTokensByUserThenService objectForKeyedSubscript:v10];
    [v11 removeObjectForKey:v7];
  }
}

- (id)_cachedTokensForUser:(id)a3 andService:(id)a4
{
  perAppTokensByUserThenService = self->_perAppTokensByUserThenService;
  if (perAppTokensByUserThenService)
  {
    v6 = a4;
    v7 = [a3 name];
    v8 = [perAppTokensByUserThenService objectForKeyedSubscript:v7];

    perAppTokensByUserThenService = [v8 objectForKeyedSubscript:v6];
  }

  return perAppTokensByUserThenService;
}

- (void)_cacheTokens:(id)a3 forUser:(id)a4 andService:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  perAppTokensByUserThenService = self->_perAppTokensByUserThenService;
  if (perAppTokensByUserThenService)
  {
    v12 = [v9 name];
    v13 = [(NSMutableDictionary *)perAppTokensByUserThenService objectForKeyedSubscript:v12];

    if (!v13)
    {
      v13 = objc_alloc_init(NSMutableDictionary);
      v14 = self->_perAppTokensByUserThenService;
      v15 = [v9 name];
      [(NSMutableDictionary *)v14 setObject:v13 forKeyedSubscript:v15];
    }

    v16 = +[APSLog courier];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138413058;
      v18 = self;
      v19 = 2112;
      v20 = v9;
      v21 = 2112;
      v22 = v10;
      v23 = 2048;
      v24 = [v8 count];
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%@: storing cache {user: %@, service: %@, count: %llu}", &v17, 0x2Au);
    }

    [v13 setObject:v8 forKeyedSubscript:v10];
  }
}

@end