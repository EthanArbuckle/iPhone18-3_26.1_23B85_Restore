@interface PocketAPI
+ (id)pkt_hashForConsumerKey:(id)key accessToken:(id)token;
+ (id)sharedAPI;
- (BOOL)handleOpenURL:(id)l;
- (BOOL)isLoggedIn;
- (NSString)URLScheme;
- (PocketAPI)init;
- (id)pkt_actionDictionaryWithName:(id)name parameters:(id)parameters;
- (id)pkt_deviceName;
- (id)pkt_deviceOSVersion;
- (id)pkt_loadCurrentLoginFromDefaults;
- (id)pkt_userAgent;
- (id)saveOperationWithURL:(id)l handler:(id)handler;
- (id)saveOperationWithURL:(id)l title:(id)title handler:(id)handler;
- (id)saveOperationWithURL:(id)l title:(id)title tweetID:(id)d delegate:(id)delegate;
- (id)saveOperationWithURL:(id)l title:(id)title tweetID:(id)d handler:(id)handler;
- (unint64_t)appID;
- (void)dealloc;
- (void)loginWithDelegate:(id)delegate;
- (void)loginWithHandler:(id)handler;
- (void)logout;
- (void)pkt_loggedInWithUsername:(id)username token:(id)token;
- (void)pkt_migrateAccountToAccessTokenWithUsername:(id)username password:(id)password delegate:(id)delegate;
- (void)pkt_migrateAccountToAccessTokenWithUsername:(id)username password:(id)password handler:(id)handler;
- (void)pkt_saveCurrentLoginToDefaults;
- (void)pkt_setKeychainValue:(id)value forKey:(id)key serviceName:(id)name;
- (void)saveURL:(id)l delegate:(id)delegate;
- (void)saveURL:(id)l handler:(id)handler;
- (void)saveURL:(id)l withTitle:(id)title delegate:(id)delegate;
- (void)saveURL:(id)l withTitle:(id)title handler:(id)handler;
- (void)saveURL:(id)l withTitle:(id)title tweetID:(id)d delegate:(id)delegate;
- (void)saveURL:(id)l withTitle:(id)title tweetID:(id)d handler:(id)handler;
- (void)setConsumerKey:(id)key;
- (void)setOperationQueue:(id)queue;
- (void)setURLScheme:(id)scheme;
@end

@implementation PocketAPI

- (id)pkt_deviceOSVersion
{
  currentDevice = [MEMORY[0x277D79F18] currentDevice];

  return [currentDevice systemVersion];
}

- (id)pkt_deviceName
{
  size = 0;
  sysctlbyname("hw.machine", 0, &size, 0, 0);
  v2 = malloc_type_malloc(size, 0x6334355BuLL);
  sysctlbyname("hw.machine", v2, &size, 0, 0);
  v3 = [MEMORY[0x277CCACA8] stringWithCString:v2 encoding:4];
  free(v2);
  v4 = @"iFPGA";
  if (([v3 isEqualToString:@"iFPGA"] & 1) == 0)
  {
    if ([v3 isEqualToString:{@"iPhone1, 1"}])
    {
      return @"iPhone 1G";
    }

    else if ([v3 isEqualToString:{@"iPhone1, 2"}])
    {
      return @"iPhone 3G";
    }

    else if ([v3 hasPrefix:@"iPhone2"])
    {
      return @"iPhone 3GS";
    }

    else if ([v3 hasPrefix:@"iPhone3"])
    {
      return @"iPhone 4";
    }

    else if ([v3 hasPrefix:@"iPhone4"])
    {
      return @"iPhone 4S";
    }

    else if ([v3 hasPrefix:@"iPod1"])
    {
      return @"iPod touch 1G";
    }

    else if ([v3 hasPrefix:@"iPod2"])
    {
      return @"iPod touch 2G";
    }

    else if ([v3 hasPrefix:@"iPod3"])
    {
      return @"iPod touch 3G";
    }

    else if ([v3 hasPrefix:@"iPod4"])
    {
      return @"iPod touch 4G";
    }

    else if ([v3 hasPrefix:@"iPad1"])
    {
      return @"iPad 1G";
    }

    else if ([v3 hasPrefix:@"iPad2"])
    {
      return @"iPad 2G";
    }

    else if ([v3 hasPrefix:@"iPad3"])
    {
      return @"iPad 3G";
    }

    else if ([v3 hasPrefix:@"AppleTV2"])
    {
      return @"Apple TV 2G";
    }

    else if ([v3 hasPrefix:@"iPhone"])
    {
      return @"Unknown iPhone";
    }

    else if ([v3 hasPrefix:@"iPod"])
    {
      return @"Unknown iPod touch";
    }

    else if ([v3 hasPrefix:@"iPad"])
    {
      return @"Unknown iPad";
    }

    else if (([v3 hasSuffix:@"86"] & 1) != 0 || objc_msgSend(v3, "isEqual:", @"x86_64"))
    {
      if ([objc_msgSend(MEMORY[0x277D79F18] "currentDevice")] == 1)
      {
        return @"iPad Simulator";
      }

      else
      {
        return @"iPhone Simulator";
      }
    }

    else
    {
      return @"Unknown iOS Device";
    }
  }

  return v4;
}

- (id)pkt_userAgent
{
  result = self->userAgent;
  if (!result)
  {
    v4 = [objc_msgSend(MEMORY[0x277CCA8D8] "mainBundle")];
    v5 = [v4 objectForKey:@"CFBundleDisplayName"];
    if (!v5)
    {
      v5 = [v4 objectForKey:*MEMORY[0x277CBED50]];
    }

    v6 = [v4 objectForKey:@"CFBundleVersion"];
    pkt_deviceName = [(PocketAPI *)self pkt_deviceName];
    pkt_deviceOSVersion = [(PocketAPI *)self pkt_deviceOSVersion];
    v9 = [objc_msgSend(MEMORY[0x277D79F18] "currentDevice")];
    v10 = [objc_msgSend(MEMORY[0x277D79F18] "currentDevice")];
    v11 = @"Mobile";
    if (v10 == 1)
    {
      v11 = @"Tablet";
    }

    v12 = &stru_2850323E8;
    if (v5)
    {
      v13 = v5;
    }

    else
    {
      v13 = &stru_2850323E8;
    }

    if (v6)
    {
      v14 = v6;
    }

    else
    {
      v14 = &stru_2850323E8;
    }

    if (v9)
    {
      v15 = v9;
    }

    else
    {
      v15 = &stru_2850323E8;
    }

    if (pkt_deviceOSVersion)
    {
      v16 = pkt_deviceOSVersion;
    }

    else
    {
      v16 = &stru_2850323E8;
    }

    if (pkt_deviceName)
    {
      v12 = pkt_deviceName;
    }

    result = [objc_msgSend(MEMORY[0x277CBEA60] arrayWithObjects:{@"PocketSDK:1.0.2", v13, v14, v15, v16, @"Apple", v12, v11, @"App Store", 0), "componentsJoinedByString:", @";"}];
    self->userAgent = result;
  }

  return result;
}

- (id)pkt_actionDictionaryWithName:(id)name parameters:(id)parameters
{
  if (!name)
  {
    return 0;
  }

  v5 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:parameters];
  [v5 setObject:name forKey:@"action"];
  v6 = MEMORY[0x277CCABB0];
  [objc_msgSend(MEMORY[0x277CBEAA8] "date")];
  [v5 setObject:objc_msgSend(v6 forKey:{"numberWithInteger:", v7), @"time"}];
  return v5;
}

- (void)pkt_migrateAccountToAccessTokenWithUsername:(id)username password:(id)password handler:(id)handler
{
  v8 = [PocketAPIBlockDelegate delegateWithLoginHandler:handler];

  [(PocketAPI *)self pkt_migrateAccountToAccessTokenWithUsername:username password:password delegate:v8];
}

- (void)pkt_migrateAccountToAccessTokenWithUsername:(id)username password:(id)password delegate:(id)delegate
{
  v13 = objc_alloc_init(PocketAPIOperation);
  [(PocketAPIOperation *)v13 setAPI:self];
  [(PocketAPIOperation *)v13 setDelegate:delegate];
  [(PocketAPIOperation *)v13 setDomain:10];
  [(PocketAPIOperation *)v13 setHTTPMethod:1];
  [(PocketAPIOperation *)v13 setAPIMethod:@"authorize"];
  v9 = [objc_msgSend(MEMORY[0x277CBEAF8] "preferredLanguages")];
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  v11 = [currentLocale objectForKey:*MEMORY[0x277CBE690]];
  v12 = [objc_msgSend(MEMORY[0x277CBEBB0] "systemTimeZone")];
  -[PocketAPIOperation setArguments:](v13, "setArguments:", [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{username, @"username", password, @"password", @"credentials", @"grant_type", v9, @"locale", v11, @"country", objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"%i", v12 / 60), @"timezone", 0}]);
  [(NSOperationQueue *)self->operationQueue addOperation:v13];
}

- (void)pkt_saveCurrentLoginToDefaults
{
  currentLogin = self->currentLogin;
  if (currentLogin)
  {
    v3 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:currentLogin requiringSecureCoding:1 error:0];
    if (v3)
    {
      v4 = v3;
      v5 = objc_alloc_init(MEMORY[0x277CBEBD0]);
      [v5 setObject:v4 forKey:@"PocketAPICurrentLogin"];
      [v5 synchronize];
    }
  }
}

- (id)pkt_loadCurrentLoginFromDefaults
{
  v2 = objc_alloc_init(MEMORY[0x277CBEBD0]);
  v3 = [v2 dataForKey:@"PocketAPICurrentLogin"];
  if (v3)
  {
    v3 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v3 error:0];
    if (v3)
    {
      [v2 removeObjectForKey:@"PocketAPICurrentLogin"];
      [v2 synchronize];
    }
  }

  return v3;
}

- (void)logout
{
  [(PocketAPI *)self willChangeValueForKey:@"username"];
  [(PocketAPI *)self willChangeValueForKey:@"isLoggedIn"];
  [(PocketAPI *)self pkt_setKeychainValue:0 forKey:@"username"];
  [(PocketAPI *)self pkt_setKeychainValue:0 forKey:@"token"];
  [(PocketAPI *)self pkt_setKeychainValue:0 forKey:@"tokenDigest"];
  [(PocketAPI *)self didChangeValueForKey:@"isLoggedIn"];

  [(PocketAPI *)self didChangeValueForKey:@"username"];
}

- (void)pkt_loggedInWithUsername:(id)username token:(id)token
{
  [(PocketAPI *)self willChangeValueForKey:@"username"];
  [(PocketAPI *)self willChangeValueForKey:@"isLoggedIn"];
  [(PocketAPI *)self pkt_setKeychainValue:username forKey:@"username"];
  [(PocketAPI *)self pkt_setKeychainValue:token forKey:@"token"];
  -[PocketAPI pkt_setKeychainValue:forKey:](self, "pkt_setKeychainValue:forKey:", [objc_opt_class() pkt_hashForConsumerKey:-[PocketAPI consumerKey](self accessToken:{"consumerKey"), token}], @"tokenDigest");
  [(PocketAPI *)self didChangeValueForKey:@"isLoggedIn"];

  [(PocketAPI *)self didChangeValueForKey:@"username"];
}

- (id)saveOperationWithURL:(id)l title:(id)title tweetID:(id)d handler:(id)handler
{
  v10 = [PocketAPIBlockDelegate delegateWithSaveHandler:handler];

  return [(PocketAPI *)self saveOperationWithURL:l title:title tweetID:d delegate:v10];
}

- (id)saveOperationWithURL:(id)l title:(id)title handler:(id)handler
{
  v8 = [PocketAPIBlockDelegate delegateWithSaveHandler:handler];

  return [(PocketAPI *)self saveOperationWithURL:l title:title delegate:v8];
}

- (id)saveOperationWithURL:(id)l handler:(id)handler
{
  v6 = [PocketAPIBlockDelegate delegateWithSaveHandler:handler];

  return [(PocketAPI *)self saveOperationWithURL:l delegate:v6];
}

- (void)saveURL:(id)l withTitle:(id)title tweetID:(id)d handler:(id)handler
{
  v10 = [PocketAPIBlockDelegate delegateWithSaveHandler:handler];

  [(PocketAPI *)self saveURL:l withTitle:title tweetID:d delegate:v10];
}

- (void)saveURL:(id)l withTitle:(id)title handler:(id)handler
{
  v8 = [PocketAPIBlockDelegate delegateWithSaveHandler:handler];

  [(PocketAPI *)self saveURL:l withTitle:title delegate:v8];
}

- (void)saveURL:(id)l handler:(id)handler
{
  v6 = [PocketAPIBlockDelegate delegateWithSaveHandler:handler];

  [(PocketAPI *)self saveURL:l delegate:v6];
}

- (void)loginWithHandler:(id)handler
{
  v4 = [PocketAPIBlockDelegate delegateWithLoginHandler:handler];

  [(PocketAPI *)self loginWithDelegate:v4];
}

- (id)saveOperationWithURL:(id)l title:(id)title tweetID:(id)d delegate:(id)delegate
{
  if (!l || ![l absoluteString])
  {
    return 0;
  }

  v11 = MEMORY[0x277CCABB0];
  [objc_msgSend(MEMORY[0x277CBEAA8] "date")];
  v13 = [v11 numberWithInteger:v12];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  [dictionary setObject:v13 forKey:@"time"];
  [dictionary setObject:objc_msgSend(l forKey:{"absoluteString"), @"url"}];
  if (title)
  {
    [dictionary setObject:title forKey:@"title"];
  }

  if (d && ([d isEqualToString:&stru_2850323E8] & 1) == 0 && (objc_msgSend(d, "isEqualToString:", @"0") & 1) == 0)
  {
    [dictionary setObject:d forKey:@"ref_id"];
  }

  v15 = [dictionary copy];

  return [(PocketAPI *)self methodOperationWithAPIMethod:@"add" forHTTPMethod:1 arguments:v15 delegate:delegate];
}

- (void)saveURL:(id)l withTitle:(id)title tweetID:(id)d delegate:(id)delegate
{
  operationQueue = self->operationQueue;
  v7 = [(PocketAPI *)self saveOperationWithURL:l title:title tweetID:d delegate:delegate];

  [(NSOperationQueue *)operationQueue addOperation:v7];
}

- (void)saveURL:(id)l withTitle:(id)title delegate:(id)delegate
{
  operationQueue = self->operationQueue;
  v6 = [(PocketAPI *)self saveOperationWithURL:l title:title delegate:delegate];

  [(NSOperationQueue *)operationQueue addOperation:v6];
}

- (void)saveURL:(id)l delegate:(id)delegate
{
  operationQueue = self->operationQueue;
  v5 = [(PocketAPI *)self saveOperationWithURL:l delegate:delegate];

  [(NSOperationQueue *)operationQueue addOperation:v5];
}

- (void)loginWithDelegate:(id)delegate
{
  v5 = self->currentLogin;
  v6 = [[PocketAPILogin alloc] initWithAPI:self delegate:delegate];
  self->currentLogin = v6;
  [(PocketAPILogin *)v6 fetchRequestToken];

  [(PocketAPI *)self pkt_saveCurrentLoginToDefaults];
}

- (BOOL)isLoggedIn
{
  username = [(PocketAPI *)self username];
  pkt_getToken = [(PocketAPI *)self pkt_getToken];
  LOBYTE(v5) = 0;
  if (username)
  {
    if (pkt_getToken)
    {
      v5 = [(NSString *)username length];
      if (v5)
      {
        LOBYTE(v5) = [pkt_getToken length] != 0;
      }
    }
  }

  return v5;
}

- (unint64_t)appID
{
  if (![(PocketAPI *)self consumerKey])
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v3 = [(NSString *)[(PocketAPI *)self consumerKey] componentsSeparatedByString:@"-"];
  if (!v3)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v4 = v3;
  if (![(NSArray *)v3 count])
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v5 = [(NSArray *)v4 objectAtIndex:0];
  if (!v5)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v6 = v5;
  if (![v5 length])
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  return [v6 integerValue];
}

- (BOOL)handleOpenURL:(id)l
{
  v5 = [objc_msgSend(l "scheme")];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEAC0] pkt_dictionaryByParsingURLEncodedFormString:{objc_msgSend(l, "query")}];
    currentLogin = self->currentLogin;
    if ([objc_msgSend(l "path")] && objc_msgSend(v6, "objectForKey:", @"code"))
    {
      v8 = [v6 objectForKey:@"code"];
      currentLogin = [[PocketAPILogin alloc] initWithAPI:self delegate:0];
      [(PocketAPILogin *)currentLogin _setRequestToken:v8];
      [(PocketAPILogin *)currentLogin _setReverseAuth:1];
    }

    if (!currentLogin)
    {
      currentLogin = [(PocketAPI *)self pkt_loadCurrentLoginFromDefaults];
    }

    v9 = currentLogin;
    self->currentLogin = v9;
    [(PocketAPILogin *)v9 convertRequestTokenToAccessToken];
    [(PocketAPI *)self pkt_saveCurrentLoginToDefaults];
  }

  return v5;
}

- (void)dealloc
{
  [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
  [(NSOperationQueue *)self->operationQueue waitUntilAllOperationsAreFinished];

  self->operationQueue = 0;
  self->consumerKey = 0;

  self->URLScheme = 0;
  self->userAgent = 0;
  v3.receiver = self;
  v3.super_class = PocketAPI;
  [(PocketAPI *)&v3 dealloc];
}

- (void)setOperationQueue:(id)queue
{
  if (self->consumerKey)
  {
    NSLog(&cfstr_ErrorPocketapi.isa, a2);
  }

  self->operationQueue = queue;
}

- (void)setURLScheme:(id)scheme
{
  schemeCopy = scheme;

  self->URLScheme = scheme;
}

- (NSString)URLScheme
{
  if (self->URLScheme)
  {
    return self->URLScheme;
  }

  else
  {
    return [MEMORY[0x277CCACA8] stringWithFormat:@"pocketapp%lu", -[PocketAPI appID](self, "appID")];
  }
}

- (void)setConsumerKey:(id)key
{
  keyCopy = key;

  self->consumerKey = key;
  if (key && !self->URLScheme)
  {
    [(PocketAPI *)self setURLScheme:[(PocketAPI *)self URLScheme]];
  }

  if (-[PocketAPI isLoggedIn](self, "isLoggedIn") && ([-[PocketAPI pkt_getKeychainValueForKey:](self pkt_getKeychainValueForKey:{@"tokenDigest", "isEqualToString:", objc_msgSend(objc_opt_class(), "pkt_hashForConsumerKey:accessToken:", -[PocketAPI consumerKey](self, "consumerKey"), -[PocketAPI pkt_getToken](self, "pkt_getToken"))}] & 1) == 0)
  {
    NSLog(&cfstr_ErrorTheAccess.isa);

    [(PocketAPI *)self logout];
  }
}

- (PocketAPI)init
{
  v4.receiver = self;
  v4.super_class = PocketAPI;
  v2 = [(PocketAPI *)&v4 init];
  if (v2)
  {
    v2->operationQueue = objc_alloc_init(MEMORY[0x277CCABD8]);
    if (sSharedAPI != v2)
    {
      -[PocketAPI setConsumerKey:](v2, "setConsumerKey:", [sSharedAPI consumerKey]);
    }
  }

  return v2;
}

+ (id)pkt_hashForConsumerKey:(id)key accessToken:(id)token
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = [objc_msgSend(MEMORY[0x277CCACA8] stringWithFormat:@"%@-%@", key, token), "dataUsingEncoding:", 4];
  CC_SHA1([v4 bytes], objc_msgSend(v4, "length"), md);
  v5 = [MEMORY[0x277CCAB68] stringWithCapacity:20];
  for (i = 0; i != 20; ++i)
  {
    [v5 appendFormat:@"%02x", md[i]];
  }

  v7 = *MEMORY[0x277D85DE8];
  return v5;
}

+ (id)sharedAPI
{
  objc_sync_enter(self);
  if (!sSharedAPI)
  {
    sSharedAPI = [self alloc];
    [sSharedAPI init];
  }

  objc_sync_exit(self);
  return sSharedAPI;
}

- (void)pkt_setKeychainValue:(id)value forKey:(id)key serviceName:(id)name
{
  if (value)
  {
    [PocketAPIKeychainUtils storeUsername:key andPassword:value forServiceName:name updateExisting:1 error:0];
  }

  else
  {
    [PocketAPIKeychainUtils deleteItemForUsername:key andServiceName:name error:0];
  }
}

@end