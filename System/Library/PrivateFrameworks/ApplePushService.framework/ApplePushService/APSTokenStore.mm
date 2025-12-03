@interface APSTokenStore
- (APSTokenStore)initWithEnvironment:(id)environment allowInMemoryCache:(BOOL)cache;
- (BOOL)isAppSpecificTokenValidWithDomain:(id)domain token:(id)token tokenServiceSuffix:(id)suffix user:(id)user error:(id *)error;
- (BOOL)isAppSpecificTokenValidWithDomain:(id)domain token:(id)token user:(id)user error:(id *)error;
- (BOOL)isMatchingTokenInKeychain:(id)keychain user:(id)user error:(id *)error;
- (id)_cachedTokensForUser:(id)user andService:(id)service;
- (id)_copyTokenForDomain:(id)domain appSpecificIdentifier:(id)identifier tokenServiceSuffix:(id)suffix user:(id)user;
- (id)copyAppSpecificIdentifierWithTopic:(id)topic identifier:(id)identifier user:(id)user;
- (id)copyAppSpecificTokensWithDomain:(id)domain forTopic:(id)topic tokenServiceSuffix:(id)suffix user:(id)user returnRef:(BOOL)ref error:(id *)error;
- (id)copyTokenForDomain:(id)domain appSpecificIdentifier:(id)identifier tokenServiceSuffix:(id)suffix user:(id)user;
- (id)description;
- (id)deserializedPersistedData:(id)data forInfo:(id)info outPersistedInfo:(id *)persistedInfo;
- (id)deserializedPersistedData:(id)data withType:(int64_t)type outPersistedInfo:(id *)info;
- (id)serializeInfo:(id)info withToken:(id)token;
- (id)suffixForInfo:(id)info;
- (id)systemTokenInfoForUser:(id)user;
- (id)tokenForInfo:(id)info user:(id)user persistedInfo:(id *)persistedInfo;
- (id)tokenInfoArrayForTopic:(id)topic user:(id)user;
- (id)tokensForTopic:(id)topic user:(id)user error:(id *)error;
- (void)_cacheTokens:(id)tokens forUser:(id)user andService:(id)service;
- (void)_clearCacheForUser:(id)user andService:(id)service;
- (void)deleteAppSpecificTokensWithDomain:(id)domain forTopic:(id)topic user:(id)user;
- (void)deleteAppSpecificTokensWithDomain:(id)domain tokenServiceSuffix:(id)suffix user:(id)user;
- (void)deleteAppSpecificTokensWithRefArray:(id)array;
- (void)deleteAppTokensForUser:(id)user;
- (void)setSystemToken:(id)token forUser:(id)user;
- (void)setSystemTokenInfo:(id)info forUser:(id)user;
- (void)setToken:(id)token forInfo:(id)info user:(id)user;
- (void)setTokenData:(__CFData *)data withDomain:(id)domain appSpecificIdentifier:(id)identifier tokenServiceSuffix:(id)suffix user:(id)user topic:(id)topic;
@end

@implementation APSTokenStore

- (id)description
{
  v3 = objc_opt_class();
  environment = [(APSTokenStore *)self environment];
  name = [environment name];
  v6 = [NSString stringWithFormat:@"<%@:%p %@>", v3, self, name];;

  return v6;
}

- (APSTokenStore)initWithEnvironment:(id)environment allowInMemoryCache:(BOOL)cache
{
  cacheCopy = cache;
  environmentCopy = environment;
  v13.receiver = self;
  v13.super_class = APSTokenStore;
  v8 = [(APSTokenStore *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_environment, environment);
    if (cacheCopy)
    {
      v10 = objc_alloc_init(NSMutableDictionary);
      perAppTokensByUserThenService = v9->_perAppTokensByUserThenService;
      v9->_perAppTokensByUserThenService = v10;
    }
  }

  return v9;
}

- (void)setSystemToken:(id)token forUser:(id)user
{
  userCopy = user;
  tokenCopy = token;
  environment = [(APSTokenStore *)self environment];
  domain = [environment domain];
  [(APSTokenStore *)self setTokenData:tokenCopy withDomain:domain appSpecificIdentifier:0 tokenServiceSuffix:&stru_10018F6A0 user:userCopy topic:0];
}

- (void)setSystemTokenInfo:(id)info forUser:(id)user
{
  infoCopy = info;
  userCopy = user;
  v8 = +[APSLog courier];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    environment = [(APSTokenStore *)self environment];
    name = [environment name];
    systemToken = [infoCopy systemToken];
    v16 = 138412802;
    v17 = name;
    v18 = 2112;
    v19 = systemToken;
    v20 = 2048;
    tokenType = [infoCopy tokenType];
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "APSTokenStore setting system token in keychain for environment %@, token: %@, type: %ld", &v16, 0x20u);
  }

  if (infoCopy)
  {
    serializeSystemTokenInfo = [infoCopy serializeSystemTokenInfo];
  }

  else
  {
    v13 = +[APSLog courier];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v16) = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "APSTokenStore storing no token in keychain", &v16, 2u);
    }

    serializeSystemTokenInfo = 0;
  }

  environment2 = [(APSTokenStore *)self environment];
  domain = [environment2 domain];
  [(APSTokenStore *)self setTokenData:serializeSystemTokenInfo withDomain:domain appSpecificIdentifier:0 tokenServiceSuffix:&stru_10018F6A0 user:userCopy topic:0];
}

- (id)systemTokenInfoForUser:(id)user
{
  userCopy = user;
  v5 = +[APSLog courier];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    environment = [(APSTokenStore *)self environment];
    name = [environment name];
    v15 = 138412290;
    v16 = name;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "APSTokenStore fetching system token from keychain, environment: %@", &v15, 0xCu);
  }

  environment2 = [(APSTokenStore *)self environment];
  domain = [environment2 domain];
  v10 = [(APSTokenStore *)self copyTokenForDomain:domain appSpecificIdentifier:0 tokenServiceSuffix:&stru_10018F6A0 user:userCopy];

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

    [(APSTokenStore *)self setSystemTokenInfo:v11 forUser:userCopy];
  }

  return v11;
}

- (void)deleteAppTokensForUser:(id)user
{
  userCopy = user;
  environment = [(APSTokenStore *)self environment];
  domain = [environment domain];
  [(APSTokenStore *)self deleteAppSpecificTokensWithDomain:domain tokenServiceSuffix:@" user:PerAppToken.v0", userCopy];

  environment2 = [(APSTokenStore *)self environment];
  domain2 = [environment2 domain];
  [(APSTokenStore *)self deleteAppSpecificTokensWithDomain:domain2 tokenServiceSuffix:@" user:ExtendedAppToken.v1", userCopy];
}

- (void)setToken:(id)token forInfo:(id)info user:(id)user
{
  tokenCopy = token;
  infoCopy = info;
  userCopy = user;
  if (tokenCopy && ![infoCopy type])
  {
    environment = [(APSTokenStore *)self environment];
    domain = [environment domain];
    topic = [infoCopy topic];
    [(APSTokenStore *)self deleteAppSpecificTokensWithDomain:domain forTopic:topic user:userCopy];
  }

  topic2 = [infoCopy topic];
  identifier = [infoCopy identifier];
  v16 = [(APSTokenStore *)self copyAppSpecificIdentifierWithTopic:topic2 identifier:identifier user:userCopy];

  if (!tokenCopy)
  {
    v19 = 0;
LABEL_12:
    environment2 = [(APSTokenStore *)self environment];
    domain2 = [environment2 domain];
    v22 = [(APSTokenStore *)self suffixForInfo:infoCopy];
    topic3 = [infoCopy topic];
    [(APSTokenStore *)self setTokenData:v19 withDomain:domain2 appSpecificIdentifier:v16 tokenServiceSuffix:v22 user:userCopy topic:topic3];

    goto LABEL_13;
  }

  baseToken = [infoCopy baseToken];

  if (!baseToken)
  {
    v18 = +[APSLog courier];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
    {
      sub_100108728(self, v18);
    }
  }

  v19 = [(APSTokenStore *)self serializeInfo:infoCopy withToken:tokenCopy];
  if (v19)
  {
    goto LABEL_12;
  }

LABEL_13:
}

- (id)tokenForInfo:(id)info user:(id)user persistedInfo:(id *)persistedInfo
{
  infoCopy = info;
  userCopy = user;
  topic = [infoCopy topic];
  identifier = [infoCopy identifier];
  v12 = [(APSTokenStore *)self copyAppSpecificIdentifierWithTopic:topic identifier:identifier user:userCopy];

  environment = [(APSTokenStore *)self environment];
  domain = [environment domain];
  v15 = [(APSTokenStore *)self suffixForInfo:infoCopy];
  v16 = [(APSTokenStore *)self copyTokenForDomain:domain appSpecificIdentifier:v12 tokenServiceSuffix:v15 user:userCopy];

  if (v16)
  {
    v17 = [(APSTokenStore *)self deserializedPersistedData:v16 forInfo:infoCopy outPersistedInfo:persistedInfo];
  }

  else if (persistedInfo)
  {
    v18 = infoCopy;
    v17 = 0;
    *persistedInfo = infoCopy;
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (id)tokensForTopic:(id)topic user:(id)user error:(id *)error
{
  topicCopy = topic;
  userCopy = user;
  domain = [(APSEnvironment *)self->_environment domain];
  v44 = 0;
  v10 = [(APSTokenStore *)self copyAppSpecificTokensWithDomain:domain forTopic:topicCopy user:userCopy returnRef:0 error:&v44];
  v11 = v44;

  v12 = &__NSArray0__struct;
  if (v10)
  {
    v12 = v10;
  }

  v13 = v12;

  domain2 = [(APSEnvironment *)self->_environment domain];
  v43 = 0;
  v34 = topicCopy;
  v15 = [(APSTokenStore *)self copyAppSpecificTokensWithDomain:domain2 forTopic:topicCopy tokenServiceSuffix:@" user:ExtendedAppToken.v1" returnRef:userCopy error:0, &v43];
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

  if (error && v11 && v32)
  {
    v29 = v11;
    *error = v11;
  }

  v30 = [v16 copy];

  return v30;
}

- (id)tokenInfoArrayForTopic:(id)topic user:(id)user
{
  topicCopy = topic;
  userCopy = user;
  domain = [(APSEnvironment *)self->_environment domain];
  v9 = [(APSTokenStore *)self copyAppSpecificTokensWithDomain:domain forTopic:topicCopy tokenServiceSuffix:@" user:ExtendedAppToken.v1" returnRef:userCopy error:0, 0];

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

- (BOOL)isMatchingTokenInKeychain:(id)keychain user:(id)user error:(id *)error
{
  userCopy = user;
  keychainCopy = keychain;
  environment = [(APSTokenStore *)self environment];
  domain = [environment domain];
  LOBYTE(error) = [(APSTokenStore *)self isAppSpecificTokenValidWithDomain:domain token:keychainCopy user:userCopy error:error];

  return error;
}

- (id)suffixForInfo:(id)info
{
  type = [info type];
  if (type > 2)
  {
    return &stru_10018F6A0;
  }

  else
  {
    return off_100186860[type];
  }
}

- (id)serializeInfo:(id)info withToken:(id)token
{
  tokenCopy = token;
  infoCopy = info;
  dictionaryRepresentation = [infoCopy dictionaryRepresentation];
  v8 = [dictionaryRepresentation mutableCopy];

  [v8 setObject:tokenCopy forKeyedSubscript:@"APSTokenPersistenceKey"];
  type = [infoCopy type];

  v10 = [NSNumber numberWithInteger:type];
  [v8 setObject:v10 forKeyedSubscript:@"APSTypePersistenceKey"];

  v11 = [NSKeyedArchiver archivedDataWithRootObject:v8 requiringSecureCoding:1 error:0];

  return v11;
}

- (id)deserializedPersistedData:(id)data forInfo:(id)info outPersistedInfo:(id *)persistedInfo
{
  infoCopy = info;
  dataCopy = data;
  v10 = -[APSTokenStore deserializedPersistedData:withType:outPersistedInfo:](self, "deserializedPersistedData:withType:outPersistedInfo:", dataCopy, [infoCopy type], persistedInfo);

  if (![infoCopy type] && !*persistedInfo)
  {
    v11 = [APSAppTokenInfo alloc];
    dictionaryRepresentation = [infoCopy dictionaryRepresentation];
    *persistedInfo = [v11 initWithDictionary:dictionaryRepresentation];
  }

  return v10;
}

- (id)deserializedPersistedData:(id)data withType:(int64_t)type outPersistedInfo:(id *)info
{
  dataCopy = data;
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = [NSSet setWithObjects:v8, v9, v10, objc_opt_class(), 0];
  v24 = 0;
  v12 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v11 fromData:dataCopy error:&v24];
  v13 = v24;

  if (!v12 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    if (type || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v22 = 0;
    }

    else
    {
      v22 = dataCopy;
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
    if (info)
    {
      *info = 0;
    }

    goto LABEL_19;
  }

  if (info)
  {
    v21 = v18;
    *info = v19;
  }

  v22 = v14;
LABEL_19:

LABEL_20:

  return v22;
}

- (BOOL)isAppSpecificTokenValidWithDomain:(id)domain token:(id)token user:(id)user error:(id *)error
{
  v21 = 0;
  userCopy = user;
  tokenCopy = token;
  domainCopy = domain;
  v13 = [(APSTokenStore *)self isAppSpecificTokenValidWithDomain:domainCopy token:tokenCopy tokenServiceSuffix:@" user:PerAppToken.v0" error:userCopy, &v21];
  v14 = v21;
  v20 = 0;
  v15 = [(APSTokenStore *)self isAppSpecificTokenValidWithDomain:domainCopy token:tokenCopy tokenServiceSuffix:@" user:ExtendedAppToken.v1" error:userCopy, &v20];

  v16 = v20;
  v17 = v16;
  if (error && v14 && v16)
  {
    v18 = v14;
    *error = v14;
  }

  return (v13 | v15) & 1;
}

- (BOOL)isAppSpecificTokenValidWithDomain:(id)domain token:(id)token tokenServiceSuffix:(id)suffix user:(id)user error:(id *)error
{
  domainCopy = domain;
  tokenCopy = token;
  suffixCopy = suffix;
  userCopy = user;
  if (tokenCopy)
  {
    suffixCopy = [[NSString alloc] initWithFormat:@"%@%@", domainCopy, suffixCopy];
    v17 = [(APSTokenStore *)self _cachedTokensForUser:userCopy andService:suffixCopy];
    v18 = +[APSLog courier];
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
    if (v17)
    {
      if (v19)
      {
        *buf = 138413314;
        selfCopy4 = self;
        v51 = 2112;
        v52 = domainCopy;
        v53 = 2112;
        v54 = tokenCopy;
        v55 = 2112;
        v56 = suffixCopy;
        v57 = 2048;
        v58 = [v17 count];
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%@: isAppSpecificTokenValid %@ %@ %@ - using cache {count: %llu}", buf, 0x34u);
      }

      LOBYTE(v18) = [v17 containsObject:tokenCopy];
LABEL_42:

      goto LABEL_43;
    }

    errorCopy = error;
    if (v19)
    {
      *buf = 138413058;
      selfCopy4 = self;
      v51 = 2112;
      v52 = domainCopy;
      v53 = 2112;
      v54 = tokenCopy;
      v55 = 2112;
      v56 = suffixCopy;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%@: isAppSpecificTokenValid %@ %@ %@", buf, 0x2Au);
    }

    Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    CFDictionaryAddValue(Mutable, kSecClass, kSecClassGenericPassword);
    CFDictionaryAddValue(Mutable, kSecAttrAccessGroup, APSBundleIdentifier);
    CFDictionaryAddValue(Mutable, kSecAttrService, suffixCopy);
    CFDictionaryAddValue(Mutable, kSecMatchLimit, kSecMatchLimitAll);
    CFDictionaryAddValue(Mutable, kSecReturnData, kCFBooleanTrue);
    if ([userCopy isDefaultUser])
    {
      v21 = +[APSMultiUserMode sharedInstance];
      isMultiUser = [v21 isMultiUser];

      if (isMultiUser)
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
        selfCopy4 = self;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "%@: SecItemCopyMatching() returned no items found.", buf, 0xCu);
      }

      if (!errorCopy)
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
      if (!errorCopy)
      {
        goto LABEL_23;
      }

      v26 = APSErrorDomain;
      v27 = v24;
    }

    *errorCopy = [NSError errorWithDomain:v26 code:v27 userInfo:0];
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
      v39 = suffixCopy;
      v40 = userCopy;
      v42 = domainCopy;
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
          v35 = [v34 isEqualToData:tokenCopy];

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
      domainCopy = v42;
      suffixCopy = v39;
      userCopy = v40;
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
      selfCopy4 = self;
      v51 = 2112;
      if (v18)
      {
        v37 = @"YES";
      }

      v52 = tokenCopy;
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

- (id)copyAppSpecificTokensWithDomain:(id)domain forTopic:(id)topic tokenServiceSuffix:(id)suffix user:(id)user returnRef:(BOOL)ref error:(id *)error
{
  refCopy = ref;
  domainCopy = domain;
  topicCopy = topic;
  suffixCopy = suffix;
  userCopy = user;
  v15 = +[APSLog courier];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413058;
    selfCopy5 = self;
    v64 = 2112;
    v65 = domainCopy;
    v66 = 2112;
    v67 = topicCopy;
    v68 = 2112;
    v69 = suffixCopy;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%@: copyAppSpecificTokensWithDomain %@ %@ %@", buf, 0x2Au);
  }

  v48 = suffixCopy;
  suffixCopy = [[NSString alloc] initWithFormat:@"%@%@", domainCopy, suffixCopy];
  Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(Mutable, kSecClass, kSecClassGenericPassword);
  CFDictionaryAddValue(Mutable, kSecAttrAccessGroup, APSBundleIdentifier);
  v46 = suffixCopy;
  CFDictionaryAddValue(Mutable, kSecAttrService, suffixCopy);
  CFDictionaryAddValue(Mutable, kSecMatchLimit, kSecMatchLimitAll);
  CFDictionaryAddValue(Mutable, kSecReturnAttributes, kCFBooleanTrue);
  CFDictionaryAddValue(Mutable, kSecReturnPersistentRef, kCFBooleanTrue);
  if ([userCopy isDefaultUser])
  {
    v18 = +[APSMultiUserMode sharedInstance];
    isMultiUser = [v18 isMultiUser];

    if (isMultiUser)
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
      selfCopy5 = self;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "%@: SecItemCopyMatching() returned no items found.", buf, 0xCu);
    }

    if (!error)
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
      selfCopy5 = self;
      v64 = 2048;
      v65 = v21;
      v66 = 2112;
      v67 = domainCopy;
      _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%@: SecItemCopyMatching() failed: %ld - copyAppSpecificTokensWithDomain %@", buf, 0x20u);
    }

    result = 0;
    if (!error)
    {
      goto LABEL_17;
    }

    v23 = APSErrorDomain;
    v24 = v21;
  }

  *error = [NSError errorWithDomain:v23 code:v24 userInfo:0];
LABEL_17:
  cf = Mutable;
  v47 = userCopy;
  v26 = result;
  v27 = [(APSTokenStore *)self _copyHashForString:topicCopy];
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
          selfCopy5 = self;
          v64 = 2112;
          v65 = domainCopy;
          v66 = 2112;
          v67 = topicCopy;
          v68 = 2112;
          v69 = v36;
          _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "%@: copyAppSpecificTokensWithDomain - %@ for topic %@ account %@", buf, 0x2Au);
        }

        v39 = [v35 objectForKeyedSubscript:kSecValuePersistentRef];
        if (refCopy)
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
            selfCopy5 = self;
            v64 = 2112;
            v65 = v39;
            v66 = 2048;
            v67 = v42;
            v68 = 2112;
            v69 = domainCopy;
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

- (id)copyAppSpecificIdentifierWithTopic:(id)topic identifier:(id)identifier user:(id)user
{
  identifierCopy = identifier;
  v8 = [(APSTokenStore *)self _copyHashForString:topic];
  v9 = [[NSString alloc] initWithFormat:@"%@, %@", identifierCopy, v8];

  return v9;
}

- (void)deleteAppSpecificTokensWithRefArray:(id)array
{
  arrayCopy = array;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = [arrayCopy countByEnumeratingWithState:&v15 objects:v27 count:16];
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
          objc_enumerationMutation(arrayCopy);
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
            selfCopy = self;
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
      v6 = [arrayCopy countByEnumeratingWithState:&v15 objects:v27 count:16];
    }

    while (v6);
  }
}

- (void)deleteAppSpecificTokensWithDomain:(id)domain forTopic:(id)topic user:(id)user
{
  domainCopy = domain;
  topicCopy = topic;
  userCopy = user;
  v11 = +[APSLog courier];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    selfCopy = self;
    v16 = 2112;
    v17 = domainCopy;
    v18 = 2112;
    v19 = topicCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%@: deleteAppSpecificTokens - %@ for topic %@", buf, 0x20u);
  }

  v12 = [(APSTokenStore *)self copyAppSpecificTokensWithDomain:domainCopy forTopic:topicCopy user:userCopy returnRef:1 error:0];
  v13 = [[NSString alloc] initWithFormat:@"%@%@", domainCopy, @", PerAppToken.v0"];
  [(APSTokenStore *)self _clearCacheForUser:userCopy andService:v13];

  [(APSTokenStore *)self deleteAppSpecificTokensWithRefArray:v12];
}

- (void)setTokenData:(__CFData *)data withDomain:(id)domain appSpecificIdentifier:(id)identifier tokenServiceSuffix:(id)suffix user:(id)user topic:(id)topic
{
  domainCopy = domain;
  identifierCopy = identifier;
  suffixCopy = suffix;
  userCopy = user;
  v17 = +[APSLog courier];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413058;
    selfCopy2 = self;
    v30 = 2112;
    v31 = domainCopy;
    v32 = 2112;
    dataCopy = data;
    v34 = 2112;
    dataCopy2 = identifierCopy;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%@: setTokenForDomain %@ tokenData %@ appSpecificIdentifier %@", buf, 0x2Au);
  }

  Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(Mutable, kSecClass, kSecClassGenericPassword);
  CFDictionaryAddValue(Mutable, kSecAttrAccessGroup, APSBundleIdentifier);
  if ([userCopy isDefaultUser])
  {
    v19 = +[APSMultiUserMode sharedInstance];
    isMultiUser = [v19 isMultiUser];

    if (isMultiUser)
    {
      CFDictionaryAddValue(Mutable, kSecUseSystemKeychain, kCFBooleanTrue);
    }
  }

  if (identifierCopy)
  {
    CFDictionaryAddValue(Mutable, kSecAttrAccount, identifierCopy);
    suffixCopy = [[NSString alloc] initWithFormat:@"%@%@", domainCopy, suffixCopy];
  }

  else
  {
    suffixCopy = [[NSString alloc] initWithFormat:@"%@%@", domainCopy, &stru_10018F6A0];
  }

  v22 = suffixCopy;
  [(APSTokenStore *)self _clearCacheForUser:userCopy andService:suffixCopy];
  CFDictionaryAddValue(Mutable, kSecAttrService, v22);
  if (data)
  {
    CFDictionaryAddValue(Mutable, kSecAttrAccessible, kSecAttrAccessibleAlwaysThisDeviceOnly);
    CFDictionaryAddValue(Mutable, kSecValueData, data);
    v23 = SecItemAdd(Mutable, 0);
    if (v23 == -25299)
    {
      v27 = suffixCopy;
      v24 = +[APSLog courier];
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138413058;
        selfCopy2 = self;
        v30 = 2112;
        v31 = domainCopy;
        v32 = 2112;
        dataCopy = identifierCopy;
        v34 = 2112;
        dataCopy2 = data;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "%@: SecResult shows duplicate item, trying to update it. setTokenForDomain %@ appSpecificIdentifier %@  tokenData %@", buf, 0x2Au);
      }

      CFDictionaryRemoveValue(Mutable, kSecValueData);
      v25 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      CFDictionaryAddValue(v25, kSecValueData, data);
      v23 = SecItemUpdate(Mutable, v25);
      CFRelease(v25);
      suffixCopy = v27;
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

- (void)deleteAppSpecificTokensWithDomain:(id)domain tokenServiceSuffix:(id)suffix user:(id)user
{
  domainCopy = domain;
  suffixCopy = suffix;
  userCopy = user;
  v11 = +[APSLog courier];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    selfCopy = self;
    v20 = 2112;
    v21 = domainCopy;
    v22 = 2112;
    v23 = suffixCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%@: deleteAppSpecificTokens - domain %@ tokenServiceSuffix %@", buf, 0x20u);
  }

  suffixCopy = [[NSString alloc] initWithFormat:@"%@%@", domainCopy, suffixCopy];
  [(APSTokenStore *)self _clearCacheForUser:userCopy andService:suffixCopy];
  Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(Mutable, kSecClass, kSecClassGenericPassword);
  CFDictionaryAddValue(Mutable, kSecAttrAccessGroup, APSBundleIdentifier);
  CFDictionaryAddValue(Mutable, kSecAttrService, suffixCopy);
  isDefaultUser = [userCopy isDefaultUser];

  if (isDefaultUser)
  {
    v15 = +[APSMultiUserMode sharedInstance];
    isMultiUser = [v15 isMultiUser];

    if (isMultiUser)
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

- (id)copyTokenForDomain:(id)domain appSpecificIdentifier:(id)identifier tokenServiceSuffix:(id)suffix user:(id)user
{
  domainCopy = domain;
  identifierCopy = identifier;
  suffixCopy = suffix;
  userCopy = user;
  v14 = [(APSTokenStore *)self _copyTokenForDomain:domainCopy appSpecificIdentifier:identifierCopy tokenServiceSuffix:suffixCopy user:userCopy];
  if (!v14)
  {
    v14 = [(APSTokenStore *)self _copyTokenForDomain:domainCopy appSpecificIdentifier:identifierCopy tokenServiceSuffix:suffixCopy user:userCopy];
  }

  return v14;
}

- (id)_copyTokenForDomain:(id)domain appSpecificIdentifier:(id)identifier tokenServiceSuffix:(id)suffix user:(id)user
{
  domainCopy = domain;
  identifierCopy = identifier;
  suffixCopy = suffix;
  userCopy = user;
  v12 = +[APSLog courier];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413058;
    selfCopy2 = self;
    v51 = 2112;
    v52 = domainCopy;
    v53 = 2112;
    v54 = identifierCopy;
    v55 = 2112;
    v56 = suffixCopy;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%@: copyTokenForDomain %@ %@ %@", buf, 0x2Au);
  }

  Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(Mutable, kSecClass, kSecClassGenericPassword);
  CFDictionaryAddValue(Mutable, kSecAttrAccessGroup, APSBundleIdentifier);
  if ([userCopy isDefaultUser])
  {
    v14 = +[APSMultiUserMode sharedInstance];
    isMultiUser = [v14 isMultiUser];

    if (isMultiUser)
    {
      CFDictionaryAddValue(Mutable, kSecUseSystemKeychain, kCFBooleanTrue);
    }
  }

  if (identifierCopy)
  {
    CFDictionaryAddValue(Mutable, kSecAttrAccount, identifierCopy);
    v16 = [NSString alloc];
    v36 = suffixCopy;
  }

  else
  {
    v16 = [NSString alloc];
    v36 = &stru_10018F6A0;
  }

  v17 = [v16 initWithFormat:@"%@%@", domainCopy, v36];
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
  if (!(identifierCopy | result))
  {
    v20 = sub_100004328(@"APSPublicTokens", [userCopy isDefaultUser]);
    if (v20)
    {
      v21 = v20;
      v22 = CFGetTypeID(v20);
      if (v22 == CFDictionaryGetTypeID())
      {
        v38 = v17;
        v39 = suffixCopy;
        v40 = identifierCopy;
        v23 = +[APSLog courier];
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          selfCopy2 = self;
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
              environment = [(APSTokenStore *)self environment];
              domain = [environment domain];
              [(APSTokenStore *)self setTokenData:v31 withDomain:domain appSpecificIdentifier:0 tokenServiceSuffix:&stru_10018F6A0 user:userCopy topic:0];

              if (!result && Value && [domainCopy isEqualToString:v29])
              {
                result = CFRetain(Value);
              }
            }

            v26 = [v24 countByEnumeratingWithState:&v43 objects:v48 count:16];
          }

          while (v26);
        }

        sub_100005394(@"APSPublicTokens", 0, [userCopy isDefaultUser]);
        sub_1000054B8([userCopy isDefaultUser]);
        suffixCopy = v39;
        identifierCopy = v40;
        v21 = v37;
        v17 = v38;
      }

      CFRelease(v21);
    }
  }

  v34 = result;

  return v34;
}

- (void)_clearCacheForUser:(id)user andService:(id)service
{
  userCopy = user;
  serviceCopy = service;
  if (self->_perAppTokensByUserThenService)
  {
    v8 = +[APSLog courier];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412802;
      selfCopy = self;
      v14 = 2112;
      v15 = userCopy;
      v16 = 2112;
      v17 = serviceCopy;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%@: dropping cache {user: %@, service: %@}", &v12, 0x20u);
    }

    perAppTokensByUserThenService = self->_perAppTokensByUserThenService;
    name = [userCopy name];
    v11 = [(NSMutableDictionary *)perAppTokensByUserThenService objectForKeyedSubscript:name];
    [v11 removeObjectForKey:serviceCopy];
  }
}

- (id)_cachedTokensForUser:(id)user andService:(id)service
{
  perAppTokensByUserThenService = self->_perAppTokensByUserThenService;
  if (perAppTokensByUserThenService)
  {
    serviceCopy = service;
    name = [user name];
    v8 = [perAppTokensByUserThenService objectForKeyedSubscript:name];

    perAppTokensByUserThenService = [v8 objectForKeyedSubscript:serviceCopy];
  }

  return perAppTokensByUserThenService;
}

- (void)_cacheTokens:(id)tokens forUser:(id)user andService:(id)service
{
  tokensCopy = tokens;
  userCopy = user;
  serviceCopy = service;
  perAppTokensByUserThenService = self->_perAppTokensByUserThenService;
  if (perAppTokensByUserThenService)
  {
    name = [userCopy name];
    v13 = [(NSMutableDictionary *)perAppTokensByUserThenService objectForKeyedSubscript:name];

    if (!v13)
    {
      v13 = objc_alloc_init(NSMutableDictionary);
      v14 = self->_perAppTokensByUserThenService;
      name2 = [userCopy name];
      [(NSMutableDictionary *)v14 setObject:v13 forKeyedSubscript:name2];
    }

    v16 = +[APSLog courier];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138413058;
      selfCopy = self;
      v19 = 2112;
      v20 = userCopy;
      v21 = 2112;
      v22 = serviceCopy;
      v23 = 2048;
      v24 = [tokensCopy count];
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%@: storing cache {user: %@, service: %@, count: %llu}", &v17, 0x2Au);
    }

    [v13 setObject:tokensCopy forKeyedSubscript:serviceCopy];
  }
}

@end