@interface ADServer
+ (id)sharedInstance;
+ (void)initialize;
- (ADServer)init;
- (BOOL)shouldRestoreConfiguration;
- (id)deserializeMessage:(id)a3 error:(id *)a4;
- (id)serializeMessage:(id)a3;
- (id)serverURLForMessageClass:(Class)a3 serverURL:(id)a4;
- (void)URLSession:(id)a3 task:(id)a4 didCompleteWithError:(id)a5;
- (void)buildConfigurationDictionary:(id)a3;
- (void)handleRequest:(id)a3 serverURL:(id)a4 responseHandler:(id)a5;
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
  block[4] = a1;
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
    v3 = [MEMORY[0x277CCAD38] ephemeralSessionConfiguration];
    v4 = +[ADCoreSettings sharedInstance];
    [v4 NSURLConnectionTimeout];
    [v3 setTimeoutIntervalForRequest:?];

    v5 = +[ADCoreSettings sharedInstance];
    [v5 NSURLTransactionTimeout];
    [v3 setTimeoutIntervalForResource:?];

    v6 = [objc_alloc(MEMORY[0x277CCACD8]) initWithMemoryCapacity:0 diskCapacity:0 diskPath:0];
    [v3 setURLCache:v6];
    v7 = [MEMORY[0x277CCAD30] sessionWithConfiguration:v3 delegate:v2 delegateQueue:0];
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
  v3 = [v2 defaultConfigurationServerURL];
  v4 = [v3 absoluteString];

  v5 = [v4 isEqualToString:@"https://cf-invalid.iad.apple.com/adserver"];
  if (v5)
  {
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"The Configuration Message has been disabled in Internal Settings."];
    _ADLog(@"iAdInternalLogging", v6, 0);
  }

  v7 = v5 ^ 1;

  return v7;
}

- (void)buildConfigurationDictionary:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEAA8] AD_maxServerTime];
  v5 = [MEMORY[0x277CBEB38] dictionary];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v26 = v3;
  obj = [v3 theConfigurations];
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
        if (v11 < v4)
        {
          [v10 expirationDate];
          v4 = v12;
        }

        v13 = [v10 bundleId];
        v14 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v10, "requestType")}];
        v15 = [v10 baseUrl];
        v16 = [MEMORY[0x277CBEBC0] URLWithString:v15];
        v17 = [v5 objectForKeyedSubscript:v13];
        if (!v17)
        {
          v17 = [MEMORY[0x277CBEB38] dictionary];
          [v5 setObject:v17 forKeyedSubscript:v13];
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
          [v17 setObject:v16 forKeyedSubscript:v14];
        }
      }

      v7 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v7);
  }

  objc_storeStrong(&self->_configurations, v5);
  self->_configurationExpirationTime = v4;
  if ([v26 hasResourceConnectProxyURL])
  {
    v19 = [v26 resourceConnectProxyURL];
    resourceConnectProxyURL = self->_resourceConnectProxyURL;
    self->_resourceConnectProxyURL = v19;
  }

  v21 = MEMORY[0x277CCACA8];
  v22 = [(NSDictionary *)self->_configurations AD_jsonString];
  v23 = [v21 stringWithFormat:@"Configuration Dictionary: %@", v22];
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
  v2 = [(ADServer *)self configurations];
  ADSaveToPromotedContentKeychain(v2, @"APServerConfigurationSettings.serverConfigRecord");
}

- (void)saveProxyURL
{
  v2 = [(ADServer *)self resourceConnectProxyURL];
  ADSaveToPromotedContentKeychain(v2, @"APProxySettings.resourceConnectProxyURL");
}

- (id)serializeMessage:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() options];
  v5 = [v4 objectForKeyedSubscript:@"messageIndex"];

  v6 = objc_opt_new();
  [v3 writeTo:v6];

  v7 = [v6 data];
  v11 = bswap32([v5 integerValue]);
  v10 = bswap32([v7 length]);
  v8 = [MEMORY[0x277CBEB28] data];
  [v8 appendBytes:&v11 length:4];
  [v8 appendBytes:&v10 length:4];
  [v8 appendData:v7];

  return v8;
}

- (id)deserializeMessage:(id)a3 error:(id *)a4
{
  v15[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = v5;
  if (!v5 || [v5 length] <= 7)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%@] ERROR: We cannot deserialize data less than 8 bytes: %@", objc_opt_class(), v6];
    _ADLog(@"iAdServerRequestLogging", v7, 16);

LABEL_4:
    a4 = 0;
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
    a4 = [v6 subdataWithRange:{8, v10}];
  }

  else if (a4)
  {
    v11 = MEMORY[0x277CCA9B8];
    v14 = *MEMORY[0x277CCA450];
    v15[0] = @"Bad protocol response header; is the server up-to-date?";
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    *a4 = [v11 errorWithDomain:@"com.apple.AdPlatforms" code:1 userInfo:v12];

    goto LABEL_4;
  }

LABEL_5:

  v8 = *MEMORY[0x277D85DE8];

  return a4;
}

- (id)serverURLForMessageClass:(Class)a3 serverURL:(id)a4
{
  v6 = a4;
  v7 = +[ADCoreSettings sharedInstance];
  v8 = [(ADServer *)self configurations];
  if (v8)
  {
    v9 = [v7 bundleIdentifier];
    v10 = [v8 objectForKeyedSubscript:v9];
    if (v10)
    {
      v11 = [(objc_class *)a3 options];
      v12 = [v11 objectForKeyedSubscript:@"messageIndex"];

      v13 = [v10 objectForKeyedSubscript:v12];
      v14 = v13;
      if (v13)
      {
        v15 = v13;

        v6 = v15;
      }
    }
  }

  v16 = [(objc_class *)a3 options];
  v17 = [v16 objectForKeyedSubscript:@"URLSuffix"];

  v18 = [(objc_class *)a3 options];
  v19 = [v18 objectForKeyedSubscript:@"messageProtocolVersion"];

  if (!v19)
  {
    v20 = ADAdsOptions();
    v19 = [v20 objectForKeyedSubscript:@"protocolVersion"];
  }

  v21 = [v6 URLByAppendingPathComponent:v19];
  v22 = [v21 URLByAppendingPathComponent:v17];

  v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"serverURLForMessageClass %@ %@ ", a3, v22];
  _ADLog(@"iAdServerRequestLogging", v23, 0);

  return v22;
}

- (void)handleRequest:(id)a3 serverURL:(id)a4 responseHandler:(id)a5
{
  v73[6] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v66 = a5;
  if (!v66)
  {
    v10 = MEMORY[0x277CCACA8];
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    v13 = [v10 stringWithFormat:@"[%@] How in the world is the completionHandler nil?!!?!", v12];
    _ADLog(@"iAdServerRequestLogging", v13, 16);
  }

  v14 = [(ADServer *)self serverURLForMessageClass:objc_opt_class() serverURL:v9];

  v15 = +[ADCoreSettings sharedInstance];
  v16 = MEMORY[0x277CCAB70];
  [v15 adServerTimeoutInterval];
  v67 = v14;
  v69 = [v16 requestWithURL:v14 cachePolicy:0 timeoutInterval:?];
  [v69 setHTTPMethod:@"POST"];
  v17 = [v15 deviceModel];

  if (v17)
  {
    v18 = [v15 deviceModel];
  }

  else
  {
    v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"Missing deviceModel"];
    _ADLog(@"iAdServerRequestLogging", v19, 16);

    v18 = @"MISSING_DEVICE_MODEL";
  }

  v20 = [v15 osVersionAndBuild];

  if (v20)
  {
    v21 = [v15 osVersionAndBuild];
  }

  else
  {
    v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"Missing osVersionAndBuild"];
    _ADLog(@"iAdServerRequestLogging", v22, 16);

    v21 = @"MISSING_VERSION_AND_BUILD";
  }

  v23 = [v15 bundleIdentifier];

  if (v23)
  {
    v24 = [v15 bundleIdentifier];
  }

  else
  {
    v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"Missing bundleIdentifier"];
    _ADLog(@"iAdServerRequestLogging", v25, 16);

    v24 = @"MISSING_BUNDLE_IDENTIFIER";
  }

  v64 = self;
  v26 = [v15 iTunesStorefront];

  v65 = v8;
  v27 = v24;
  if (v26)
  {
    v68 = [v15 iTunesStorefront];
  }

  else
  {
    v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"Missing iTunesStorefront"];
    _ADLog(@"iAdServerRequestLogging", v28, 16);

    v68 = @"MISSING_ITUNES_STOREFRONT";
  }

  v29 = [MEMORY[0x277CBEAA8] date];
  v30 = [v29 AD_toServerTime];

  v31 = [MEMORY[0x277CCACA8] stringWithFormat:@"%f", *&v30];
  v32 = MEMORY[0x277CCACA8];
  v33 = [v15 deviceModel];
  v34 = [v15 osVersionAndBuild];
  v35 = [v15 bundleIdentifier];
  v36 = [v15 iTunesStorefront];
  v37 = [v32 stringWithFormat:@"%@ %@; %@; %@", v33, v34, v35, v36];;

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
  v73[3] = v18;
  v72[4] = @"os_Version";
  v72[5] = @"storefront";
  v60 = v21;
  v73[4] = v21;
  v73[5] = v68;
  v38 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v73 forKeys:v72 count:6];
  [v69 setAllHTTPHeaderFields:v38];

  v39 = objc_opt_class();
  if (v39 == objc_opt_class())
  {
    v40 = +[ADCoreSettings sharedInstance];
    v41 = [v40 isPersonalizedAdsEnabled];

    if (v41)
    {
      v42 = @"false";
    }

    else
    {
      v42 = @"true";
    }

    [v69 addValue:v42 forHTTPHeaderField:@"limitAdTracking"];
  }

  v43 = [MEMORY[0x277CBEB38] dictionary];
  v44 = [v69 allHTTPHeaderFields];
  [v43 setObject:v44 forKey:@"headers"];

  v45 = [v65 dictionaryRepresentation];
  [v43 setObject:v45 forKey:@"body"];

  v46 = MEMORY[0x277CCACA8];
  v47 = objc_opt_class();
  v48 = objc_opt_class();
  v49 = [v69 URL];
  v50 = [v49 absoluteString];
  v51 = [v43 AD_jsonString];
  v52 = [v46 stringWithFormat:@"[%@ handleRequest]: Sending request %@ to AdPlatforms %@ with object: %@", v47, v48, v50, v51];
  _ADLog(@"iAdServerRequestLogging", v52, 0);

  v53 = +[ADIDManager sharedInstance];
  v54 = objc_opt_class();
  [v53 logIDs:{@"[%@ handleRequest]: IDs for %@", v54, objc_opt_class()}];

  v55 = [(ADServer *)v64 serializeMessage:v65];
  v56 = [(ADServer *)v64 session];
  v70[0] = MEMORY[0x277D85DD0];
  v70[1] = 3221225472;
  v70[2] = __52__ADServer_handleRequest_serverURL_responseHandler___block_invoke;
  v70[3] = &unk_278C55408;
  v70[4] = v64;
  v71 = v66;
  v57 = v66;
  v58 = [v56 uploadTaskWithRequest:v69 fromData:v55 completionHandler:v70];

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

- (void)URLSession:(id)a3 task:(id)a4 didCompleteWithError:(id)a5
{
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"URLSession %@ task %@ didCompleteWithError %@", a3, a4, a5];
  _ADLog(@"iAdServerRequestLogging", v5, 16);
}

@end