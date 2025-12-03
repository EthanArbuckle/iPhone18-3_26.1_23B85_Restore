@interface ADServer
+ (id)sharedInstance;
+ (void)initialize;
- (ADServer)init;
- (BOOL)shouldRestoreConfiguration;
- (id)deserializeMessage:(id)message error:(id *)error;
- (id)serializeMessage:(id)message;
- (id)serverURLForMessageClass:(Class)class serverURL:(id)l;
- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error;
- (void)buildConfigurationDictionary:(id)dictionary;
- (void)handleRequest:(id)request serverURL:(id)l responseHandler:(id)handler;
- (void)restoreConfiguration;
- (void)saveConfig;
- (void)saveProxyURL;
@end

@implementation ADServer

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __26__ADServer_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance__onceToken_3 != -1)
  {
    dispatch_once(&sharedInstance__onceToken_3, block);
  }

  v2 = sharedInstance__instance_3;

  return v2;
}

uint64_t __26__ADServer_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  sharedInstance__instance_3 = objc_alloc_init(objc_opt_class());

  return MEMORY[0x2821F96F8]();
}

+ (void)initialize
{
  v2 = objc_alloc_init(MEMORY[0x277CCABD8]);
  v3 = _staticWorkQueue;
  _staticWorkQueue = v2;

  [_staticWorkQueue setName:@"com.apple.queue.adplatforms.serial"];
  v4 = _staticWorkQueue;

  [v4 setMaxConcurrentOperationCount:1];
}

- (ADServer)init
{
  v9.receiver = self;
  v9.super_class = ADServer;
  v2 = [(ADServer *)&v9 init];
  if (v2)
  {
    ephemeralSessionConfiguration = [MEMORY[0x277CCAD38] ephemeralSessionConfiguration];
    v4 = +[ADCoreSettings sharedInstance];
    [v4 NSURLConnectionTimeout];
    [ephemeralSessionConfiguration setTimeoutIntervalForRequest:?];

    v5 = +[ADCoreSettings sharedInstance];
    [v5 NSURLTransactionTimeout];
    [ephemeralSessionConfiguration setTimeoutIntervalForResource:?];

    v6 = [objc_alloc(MEMORY[0x277CCACD8]) initWithMemoryCapacity:0 diskCapacity:0 diskPath:0];
    [ephemeralSessionConfiguration setURLCache:v6];
    v7 = [MEMORY[0x277CCAD30] sessionWithConfiguration:ephemeralSessionConfiguration delegate:v2 delegateQueue:0];
    [(ADServer *)v2 setSession:v7];

    v2->_configurationExpirationTime = [MEMORY[0x277CBEAA8] AD_maxServerTime];
    if ([(ADServer *)v2 shouldRestoreConfiguration])
    {
      [(ADServer *)v2 restoreConfiguration];
    }
  }

  return v2;
}

- (BOOL)shouldRestoreConfiguration
{
  if (!MGGetBoolAnswer())
  {
    return 1;
  }

  v2 = +[ADCoreSettings sharedInstance];
  defaultConfigurationServerURL = [v2 defaultConfigurationServerURL];
  absoluteString = [defaultConfigurationServerURL absoluteString];

  v5 = [absoluteString isEqualToString:@"https://cf-invalid.iad.apple.com/adserver"];
  if (v5)
  {
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"The Configuration Message has been disabled in Internal Settings."];
    _ADLog(@"iAdInternalLogging", v6, 0);
  }

  v7 = v5 ^ 1;

  return v7;
}

- (void)buildConfigurationDictionary:(id)dictionary
{
  v33 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  aD_maxServerTime = [MEMORY[0x277CBEAA8] AD_maxServerTime];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v26 = dictionaryCopy;
  obj = [dictionaryCopy theConfigurations];
  v6 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v29;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v29 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v28 + 1) + 8 * i);
        [v10 expirationDate];
        if (v11 < aD_maxServerTime)
        {
          [v10 expirationDate];
          aD_maxServerTime = v12;
        }

        bundleId = [v10 bundleId];
        v14 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v10, "requestType")}];
        baseUrl = [v10 baseUrl];
        v16 = [MEMORY[0x277CBEBC0] URLWithString:baseUrl];
        dictionary2 = [dictionary objectForKeyedSubscript:bundleId];
        if (!dictionary2)
        {
          dictionary2 = [MEMORY[0x277CBEB38] dictionary];
          [dictionary setObject:dictionary2 forKeyedSubscript:bundleId];
        }

        if (v14)
        {
          v18 = v16 == 0;
        }

        else
        {
          v18 = 1;
        }

        if (!v18)
        {
          [dictionary2 setObject:v16 forKeyedSubscript:v14];
        }
      }

      v7 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v7);
  }

  objc_storeStrong(&self->_configurations, dictionary);
  self->_configurationExpirationTime = aD_maxServerTime;
  if ([v26 hasResourceConnectProxyURL])
  {
    resourceConnectProxyURL = [v26 resourceConnectProxyURL];
    resourceConnectProxyURL = self->_resourceConnectProxyURL;
    self->_resourceConnectProxyURL = resourceConnectProxyURL;
  }

  v21 = MEMORY[0x277CCACA8];
  aD_jsonString = [(NSDictionary *)self->_configurations AD_jsonString];
  v23 = [v21 stringWithFormat:@"Configuration Dictionary: %@", aD_jsonString];
  _ADLog(@"iAdServerRequestLogging", v23, 0);

  v24 = *MEMORY[0x277D85DE8];
}

- (void)restoreConfiguration
{
  v7 = 0;
  v3 = ADCopyDataFromKeychain(@"ADConfigurationsKeychainKey", &v7);
  v4 = v3;
  if (v7)
  {
    v5 = 1;
  }

  else
  {
    v5 = v3 == 0;
  }

  if (!v5)
  {
    v6 = [[ADConfigurationResponse alloc] initWithData:v3];
    [(ADServer *)self buildConfigurationDictionary:v6];
  }
}

- (void)saveConfig
{
  configurations = [(ADServer *)self configurations];
  ADSaveToPromotedContentKeychain(configurations, @"APServerConfigurationSettings.serverConfigRecord");
}

- (void)saveProxyURL
{
  resourceConnectProxyURL = [(ADServer *)self resourceConnectProxyURL];
  ADSaveToPromotedContentKeychain(resourceConnectProxyURL, @"APProxySettings.resourceConnectProxyURL");
}

- (id)serializeMessage:(id)message
{
  messageCopy = message;
  options = [objc_opt_class() options];
  v5 = [options objectForKeyedSubscript:@"messageIndex"];

  v6 = objc_opt_new();
  [messageCopy writeTo:v6];

  data = [v6 data];
  v11 = bswap32([v5 integerValue]);
  v10 = bswap32([data length]);
  data2 = [MEMORY[0x277CBEB28] data];
  [data2 appendBytes:&v11 length:4];
  [data2 appendBytes:&v10 length:4];
  [data2 appendData:data];

  return data2;
}

- (id)deserializeMessage:(id)message error:(id *)error
{
  v15[1] = *MEMORY[0x277D85DE8];
  messageCopy = message;
  v6 = messageCopy;
  if (!messageCopy || [messageCopy length] <= 7)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%@] ERROR: We cannot deserialize data less than 8 bytes: %@", objc_opt_class(), v6];
    _ADLog(@"iAdServerRequestLogging", v7, 16);

LABEL_4:
    error = 0;
    goto LABEL_5;
  }

  v13 = 0;
  [v6 getBytes:&v13 + 4 range:{0, 4}];
  HIDWORD(v13) = bswap32(HIDWORD(v13));
  [v6 getBytes:&v13 range:{4, 4}];
  v10 = bswap32(v13);
  LODWORD(v13) = v10;
  if (v10 + 8 <= [v6 length])
  {
    error = [v6 subdataWithRange:{8, v10}];
  }

  else if (error)
  {
    v11 = MEMORY[0x277CCA9B8];
    v14 = *MEMORY[0x277CCA450];
    v15[0] = @"Bad protocol response header; is the server up-to-date?";
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    *error = [v11 errorWithDomain:@"com.apple.AdPlatforms" code:1 userInfo:v12];

    goto LABEL_4;
  }

LABEL_5:

  v8 = *MEMORY[0x277D85DE8];

  return error;
}

- (id)serverURLForMessageClass:(Class)class serverURL:(id)l
{
  lCopy = l;
  v7 = +[ADCoreSettings sharedInstance];
  configurations = [(ADServer *)self configurations];
  if (configurations)
  {
    bundleIdentifier = [v7 bundleIdentifier];
    v10 = [configurations objectForKeyedSubscript:bundleIdentifier];
    if (v10)
    {
      options = [(objc_class *)class options];
      v12 = [options objectForKeyedSubscript:@"messageIndex"];

      v13 = [v10 objectForKeyedSubscript:v12];
      v14 = v13;
      if (v13)
      {
        v15 = v13;

        lCopy = v15;
      }
    }
  }

  options2 = [(objc_class *)class options];
  v17 = [options2 objectForKeyedSubscript:@"URLSuffix"];

  options3 = [(objc_class *)class options];
  v19 = [options3 objectForKeyedSubscript:@"messageProtocolVersion"];

  if (!v19)
  {
    v20 = ADAdsOptions();
    v19 = [v20 objectForKeyedSubscript:@"protocolVersion"];
  }

  v21 = [lCopy URLByAppendingPathComponent:v19];
  v22 = [v21 URLByAppendingPathComponent:v17];

  v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"serverURLForMessageClass %@ %@ ", class, v22];
  _ADLog(@"iAdServerRequestLogging", v23, 0);

  return v22;
}

- (void)handleRequest:(id)request serverURL:(id)l responseHandler:(id)handler
{
  v73[6] = *MEMORY[0x277D85DE8];
  requestCopy = request;
  lCopy = l;
  handlerCopy = handler;
  if (!handlerCopy)
  {
    v10 = MEMORY[0x277CCACA8];
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    v13 = [v10 stringWithFormat:@"[%@] How in the world is the completionHandler nil?!!?!", v12];
    _ADLog(@"iAdServerRequestLogging", v13, 16);
  }

  v14 = [(ADServer *)self serverURLForMessageClass:objc_opt_class() serverURL:lCopy];

  v15 = +[ADCoreSettings sharedInstance];
  v16 = MEMORY[0x277CCAB70];
  [v15 adServerTimeoutInterval];
  v67 = v14;
  v69 = [v16 requestWithURL:v14 cachePolicy:0 timeoutInterval:?];
  [v69 setHTTPMethod:@"POST"];
  deviceModel = [v15 deviceModel];

  if (deviceModel)
  {
    deviceModel2 = [v15 deviceModel];
  }

  else
  {
    v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"Missing deviceModel"];
    _ADLog(@"iAdServerRequestLogging", v19, 16);

    deviceModel2 = @"MISSING_DEVICE_MODEL";
  }

  osVersionAndBuild = [v15 osVersionAndBuild];

  if (osVersionAndBuild)
  {
    osVersionAndBuild2 = [v15 osVersionAndBuild];
  }

  else
  {
    v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"Missing osVersionAndBuild"];
    _ADLog(@"iAdServerRequestLogging", v22, 16);

    osVersionAndBuild2 = @"MISSING_VERSION_AND_BUILD";
  }

  bundleIdentifier = [v15 bundleIdentifier];

  if (bundleIdentifier)
  {
    bundleIdentifier2 = [v15 bundleIdentifier];
  }

  else
  {
    v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"Missing bundleIdentifier"];
    _ADLog(@"iAdServerRequestLogging", v25, 16);

    bundleIdentifier2 = @"MISSING_BUNDLE_IDENTIFIER";
  }

  selfCopy = self;
  iTunesStorefront = [v15 iTunesStorefront];

  v65 = requestCopy;
  v27 = bundleIdentifier2;
  if (iTunesStorefront)
  {
    iTunesStorefront2 = [v15 iTunesStorefront];
  }

  else
  {
    v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"Missing iTunesStorefront"];
    _ADLog(@"iAdServerRequestLogging", v28, 16);

    iTunesStorefront2 = @"MISSING_ITUNES_STOREFRONT";
  }

  date = [MEMORY[0x277CBEAA8] date];
  aD_toServerTime = [date AD_toServerTime];

  v31 = [MEMORY[0x277CCACA8] stringWithFormat:@"%f", *&aD_toServerTime];
  v32 = MEMORY[0x277CCACA8];
  deviceModel3 = [v15 deviceModel];
  osVersionAndBuild3 = [v15 osVersionAndBuild];
  bundleIdentifier3 = [v15 bundleIdentifier];
  iTunesStorefront3 = [v15 iTunesStorefront];
  v37 = [v32 stringWithFormat:@"%@ %@; %@; %@", deviceModel3, osVersionAndBuild3, bundleIdentifier3, iTunesStorefront3];;

  v72[0] = @"timestamp";
  v72[1] = @"User-Agent";
  v62 = v37;
  v63 = v31;
  v73[0] = v31;
  v73[1] = v37;
  v72[2] = @"bundleID";
  v72[3] = @"device";
  v61 = v27;
  v73[2] = v27;
  v73[3] = deviceModel2;
  v72[4] = @"os_Version";
  v72[5] = @"storefront";
  v60 = osVersionAndBuild2;
  v73[4] = osVersionAndBuild2;
  v73[5] = iTunesStorefront2;
  v38 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v73 forKeys:v72 count:6];
  [v69 setAllHTTPHeaderFields:v38];

  v39 = objc_opt_class();
  if (v39 == objc_opt_class())
  {
    v40 = +[ADCoreSettings sharedInstance];
    isPersonalizedAdsEnabled = [v40 isPersonalizedAdsEnabled];

    if (isPersonalizedAdsEnabled)
    {
      v42 = @"false";
    }

    else
    {
      v42 = @"true";
    }

    [v69 addValue:v42 forHTTPHeaderField:@"limitAdTracking"];
  }

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  allHTTPHeaderFields = [v69 allHTTPHeaderFields];
  [dictionary setObject:allHTTPHeaderFields forKey:@"headers"];

  dictionaryRepresentation = [v65 dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKey:@"body"];

  v46 = MEMORY[0x277CCACA8];
  v47 = objc_opt_class();
  v48 = objc_opt_class();
  v49 = [v69 URL];
  absoluteString = [v49 absoluteString];
  aD_jsonString = [dictionary AD_jsonString];
  v52 = [v46 stringWithFormat:@"[%@ handleRequest]: Sending request %@ to AdPlatforms %@ with object: %@", v47, v48, absoluteString, aD_jsonString];
  _ADLog(@"iAdServerRequestLogging", v52, 0);

  v53 = +[ADIDManager sharedInstance];
  v54 = objc_opt_class();
  [v53 logIDs:{@"[%@ handleRequest]: IDs for %@", v54, objc_opt_class()}];

  v55 = [(ADServer *)selfCopy serializeMessage:v65];
  session = [(ADServer *)selfCopy session];
  v70[0] = MEMORY[0x277D85DD0];
  v70[1] = 3221225472;
  v70[2] = __52__ADServer_handleRequest_serverURL_responseHandler___block_invoke;
  v70[3] = &unk_278C55408;
  v70[4] = selfCopy;
  v71 = handlerCopy;
  v57 = handlerCopy;
  v58 = [session uploadTaskWithRequest:v69 fromData:v55 completionHandler:v70];

  [v58 resume];
  v59 = *MEMORY[0x277D85DE8];
}

void __52__ADServer_handleRequest_serverURL_responseHandler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v29[1] = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    v10 = v9;
    v11 = 0;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = v8;
      v13 = [v12 MIMEType];
      if ([v13 hasPrefix:@"text"])
      {
        v14 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v7 encoding:4];
        v15 = MEMORY[0x277CCA9B8];
        v16 = [v12 statusCode];
        v28 = *MEMORY[0x277CCA450];
        v29[0] = v14;
        v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:&v28 count:1];
        v10 = [v15 errorWithDomain:@"com.apple.AdPlatforms" code:v16 userInfo:v17];

        v11 = 0;
        v7 = 0;
      }

      else if ([v13 hasPrefix:@"application/octet-stream"])
      {
        v18 = *(a1 + 32);
        v27 = 0;
        v11 = [v18 deserializeMessage:v7 error:&v27];
        v10 = v27;
      }

      else
      {
        v11 = 0;
        v10 = 0;
      }
    }

    else
    {
      v11 = 0;
      v10 = 0;
    }
  }

  v19 = *(a1 + 40);
  if (v19)
  {
    v20 = _staticWorkQueue;
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __52__ADServer_handleRequest_serverURL_responseHandler___block_invoke_2;
    v22[3] = &unk_278C553E0;
    v26 = v19;
    v23 = v11;
    v24 = v8;
    v25 = v10;
    [v20 addOperationWithBlock:v22];
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error
{
  error = [MEMORY[0x277CCACA8] stringWithFormat:@"URLSession %@ task %@ didCompleteWithError %@", session, task, error];
  _ADLog(@"iAdServerRequestLogging", error, 16);
}

@end