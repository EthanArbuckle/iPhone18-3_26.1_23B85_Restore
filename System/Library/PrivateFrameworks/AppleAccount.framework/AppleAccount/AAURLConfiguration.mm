@interface AAURLConfiguration
+ (AARemoteServer)remoteServer;
+ (id)_urlConfigurationWithError:(id *)error;
+ (id)itemForKey:(id)key error:(id *)error;
+ (int64_t)beneficiaryDurationBeforeNotSetupCFU;
+ (int64_t)beneficiaryStaleInviteDuration;
+ (void)setRemoteServer:(id)server;
- (AAURLConfiguration)init;
- (AAURLConfiguration)initWithCoder:(id)coder;
- (AAURLConfiguration)initWithDictionary:(id)dictionary;
- (NSArray)urlsStoringCookies;
- (NSNumber)absintheEnable;
- (NSNumber)apsProdEnvironment;
- (NSNumber)homepodSetupiCloudTerms;
- (NSNumber)preProxTermsEnabled;
- (NSNumber)termsUIType;
- (NSNumber)usePDS;
- (id)_envStringForKey:(id)key;
- (id)_urlStringForKey:(id)key;
- (id)description;
- (id)urlForEndpoint:(id)endpoint;
@end

@implementation AAURLConfiguration

+ (AARemoteServer)remoteServer
{
  if (remoteServer_onceToken != -1)
  {
    +[AAURLConfiguration remoteServer];
  }

  v3 = _AAURLConfigurationRemoteServer;

  return v3;
}

void __34__AAURLConfiguration_remoteServer__block_invoke()
{
  if (!_AAURLConfigurationRemoteServer)
  {
    _AAURLConfigurationRemoteServer = +[AARemoteServer sharedServer];

    MEMORY[0x1EEE66BB8]();
  }
}

+ (void)setRemoteServer:(id)server
{
  serverCopy = server;
  if (!serverCopy)
  {
    [(AAURLConfiguration *)a2 setRemoteServer:self];
  }

  v6 = _AAURLConfigurationRemoteServer;
  _AAURLConfigurationRemoteServer = serverCopy;
}

- (AAURLConfiguration)init
{
  [(AAURLConfiguration *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (AAURLConfiguration)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  if (!dictionaryCopy)
  {
    [(AAURLConfiguration *)a2 initWithDictionary:?];
  }

  v10.receiver = self;
  v10.super_class = AAURLConfiguration;
  v6 = [(AAURLConfiguration *)&v10 init];
  if (v6)
  {
    v7 = [dictionaryCopy copy];
    dictionary = v6->_dictionary;
    v6->_dictionary = v7;
  }

  return v6;
}

- (AAURLConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = AAURLConfiguration;
  v5 = [(AAURLConfiguration *)&v15 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = [v6 setWithObjects:{v7, v8, v9, v10, objc_opt_class(), 0}];
    v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"configuration-dictionary"];
    dictionary = v5->_dictionary;
    v5->_dictionary = v12;
  }

  return v5;
}

- (id)urlForEndpoint:(id)endpoint
{
  dictionary = self->_dictionary;
  endpointCopy = endpoint;
  v5 = [(NSDictionary *)dictionary objectForKeyedSubscript:@"urls"];
  v6 = [v5 objectForKeyedSubscript:endpointCopy];

  if (v6)
  {
    v7 = [MEMORY[0x1E695DFF8] URLWithString:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (NSNumber)absintheEnable
{
  objc_opt_class();
  v3 = [(NSDictionary *)self->_dictionary objectForKeyedSubscript:@"configuration"];
  v4 = [v3 objectForKeyedSubscript:@"abs-enable"];
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSNumber)termsUIType
{
  objc_opt_class();
  v3 = [(NSDictionary *)self->_dictionary objectForKeyedSubscript:@"configuration"];
  v4 = [v3 objectForKeyedSubscript:@"terms-ui-type"];
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSNumber)homepodSetupiCloudTerms
{
  objc_opt_class();
  v3 = [(NSDictionary *)self->_dictionary objectForKeyedSubscript:@"configuration"];
  v4 = [v3 objectForKeyedSubscript:@"homepod-setup-icloud-terms"];
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSNumber)usePDS
{
  objc_opt_class();
  v3 = [(NSDictionary *)self->_dictionary objectForKeyedSubscript:@"configuration"];
  v4 = [v3 objectForKeyedSubscript:@"use-pds"];
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSNumber)apsProdEnvironment
{
  objc_opt_class();
  v3 = [(NSDictionary *)self->_dictionary objectForKeyedSubscript:@"configuration"];
  v4 = [v3 objectForKeyedSubscript:@"aps-environment-is-production"];
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSNumber)preProxTermsEnabled
{
  v2 = [(NSDictionary *)self->_dictionary objectForKeyedSubscript:@"configuration"];
  v3 = [v2 objectForKeyedSubscript:@"terms-pre-prox-setup"];

  if ([v3 count])
  {
    objc_opt_class();
    v4 = MEMORY[0x1E696AD98];
    v5 = +[AADeviceInfo currentInfo];
    osName = [v5 osName];
    v7 = [v4 numberWithBool:{objc_msgSend(v3, "containsObject:", osName)}];
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = &unk_1F2F24B68;
  }

  return v8;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p %@>", v5, self, self->_dictionary];

  return v6;
}

+ (id)itemForKey:(id)key error:(id *)error
{
  v21[1] = *MEMORY[0x1E69E9840];
  keyCopy = key;
  v19 = 0;
  v7 = [self _urlConfigurationWithError:&v19];
  v8 = v19;
  v9 = v8;
  if (error && v8)
  {
    v10 = v8;
    v11 = 0;
    *error = v9;
  }

  else
  {
    v12 = [v7 _urlStringForKey:keyCopy];
    v11 = v12;
    if (error && !v12)
    {
      v13 = MEMORY[0x1E696ABC0];
      v20 = *MEMORY[0x1E696A578];
      v14 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
      v15 = [v14 localizedStringForKey:@"ICLOUD_CONFIG_ERROR" value:0 table:@"Localizable"];
      v21[0] = v15;
      v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:&v20 count:1];
      *error = [v13 errorWithDomain:@"com.apple.appleaccount" code:-2 userInfo:v16];
    }
  }

  v17 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (id)_urlConfigurationWithError:(id *)error
{
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__7;
  v24 = __Block_byref_object_dispose__7;
  v25 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__7;
  v18 = __Block_byref_object_dispose__7;
  v19 = 0;
  v5 = dispatch_semaphore_create(0);
  remoteServer = [self remoteServer];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __61__AAURLConfiguration_Deprecated___urlConfigurationWithError___block_invoke;
  v10[3] = &unk_1E7C9C130;
  v12 = &v20;
  v13 = &v14;
  v7 = v5;
  v11 = v7;
  [remoteServer configurationWithCompletion:v10];

  dispatch_semaphore_wait(v7, 0xFFFFFFFFFFFFFFFFLL);
  if (error)
  {
    *error = v15[5];
  }

  v8 = v21[5];

  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v20, 8);

  return v8;
}

void __61__AAURLConfiguration_Deprecated___urlConfigurationWithError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_semaphore_signal(*(a1 + 32));
}

- (NSArray)urlsStoringCookies
{
  objc_opt_class();
  v3 = [(NSDictionary *)self->_dictionary objectForKeyedSubscript:@"cookieDomainUrls"];
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_envStringForKey:(id)key
{
  keyCopy = key;
  objc_opt_class();
  v5 = [(NSDictionary *)self->_dictionary objectForKeyedSubscript:@"env"];
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  objc_opt_class();
  v7 = [v6 objectForKeyedSubscript:keyCopy];

  v8 = v7;
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_urlStringForKey:(id)key
{
  keyCopy = key;
  objc_opt_class();
  v5 = [(NSDictionary *)self->_dictionary objectForKeyedSubscript:@"urls"];
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  objc_opt_class();
  v7 = [v6 objectForKeyedSubscript:keyCopy];

  v8 = v7;
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (int64_t)beneficiaryStaleInviteDuration
{
  v2 = [MEMORY[0x1E698DDF8] bagForAltDSID:0];
  inheritanceConfiguration = [v2 inheritanceConfiguration];

  v4 = [inheritanceConfiguration objectForKeyedSubscript:AAInheritanceConfigStaleInviteDurationKey[0]];
  v5 = v4;
  if (v4)
  {
    integerValue = [v4 integerValue];
    if (integerValue >= 0)
    {
      v7 = integerValue;
    }

    else
    {
      v7 = -integerValue;
    }
  }

  else
  {
    v8 = _AALogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      +[(AAURLConfiguration(Deprecated) *)v8];
    }

    v7 = 43200;
  }

  return v7;
}

+ (int64_t)beneficiaryDurationBeforeNotSetupCFU
{
  v2 = [MEMORY[0x1E698DDF8] bagForAltDSID:0];
  inheritanceConfiguration = [v2 inheritanceConfiguration];

  v4 = [inheritanceConfiguration objectForKeyedSubscript:AAInheritanceConfigDurationBeforeNotSetupCFUKey];
  v5 = v4;
  if (v4)
  {
    integerValue = [v4 integerValue];
    if (integerValue >= 0)
    {
      v7 = integerValue;
    }

    else
    {
      v7 = -integerValue;
    }
  }

  else
  {
    v8 = _AALogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      +[(AAURLConfiguration(Deprecated) *)v8];
    }

    v7 = 86400;
  }

  return v7;
}

+ (void)setRemoteServer:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"AAURLConfiguration.m" lineNumber:42 description:{@"Invalid parameter not satisfying: %@", @"remoteServer"}];
}

- (void)initWithDictionary:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"AAURLConfiguration.m" lineNumber:57 description:{@"Invalid parameter not satisfying: %@", @"dictionary"}];
}

@end