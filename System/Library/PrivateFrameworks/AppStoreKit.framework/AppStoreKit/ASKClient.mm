@interface ASKClient
+ (id)getStorefrontIdentifierPromise:(id)a3;
- (ASKClient)initWithRestrictions:(id)a3;
- (BOOL)canDevicePerformAppAction:(id)a3 withAppCapabilities:(id)a4;
- (BOOL)canUpdateNotificationAuthorizationStatus;
- (BOOL)isActivePairedWatchSystemVersionAtLeastMajorVersion:(id)a3 minorVersion:(id)a4 patchVersion:(id)a5;
- (BOOL)isAutomaticDownloadingEnabled;
- (CGSize)screenSize;
- (NSString)storefrontIdentifier;
- (id)isPairedSystemVersionAtLeast:(id)a3;
- (int64_t)maxAppContentRating;
- (void)accountStoreDidChange:(id)a3;
- (void)dealloc;
- (void)hostBundleIdDidChange:(id)a3;
- (void)remoteDownloadIdentifiersDidChange:(id)a3;
- (void)updateNotificationAuthorizationStatus;
@end

@implementation ASKClient

- (ASKClient)initWithRestrictions:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = ASKClient;
  v5 = [(ASKClient *)&v14 init];
  if (v5)
  {
    v6 = [MEMORY[0x1E6959A48] ams_sharedAccountStore];
    v7 = [ASKClient getStorefrontIdentifierPromise:v6];
    [(ASKClient *)v5 setStorefrontIdentifierPromise:v7];

    [(ASKClient *)v5 setRestrictions:v4];
    v8 = [MEMORY[0x1E696AD88] defaultCenter];
    [v8 addObserver:v5 selector:sel_accountStoreDidChange_ name:*MEMORY[0x1E69597D8] object:v6];

    v9 = [MEMORY[0x1E696AD88] defaultCenter];
    [v9 addObserver:v5 selector:sel_applicationDidForeground_ name:*MEMORY[0x1E69DDAB0] object:0];

    v10 = [MEMORY[0x1E696AD88] defaultCenter];
    v11 = +[_TtC11AppStoreKit21HostProcessIdentifier hostBundleIdDidChangeNotification];
    [v10 addObserver:v5 selector:sel_hostBundleIdDidChange_ name:v11 object:0];

    v12 = [MEMORY[0x1E696AD88] defaultCenter];
    [v12 addObserver:v5 selector:sel_remoteDownloadIdentifiersDidChange_ name:@"ASKClient.remoteDownloadIdentifiers.didChangeNotification" object:0];

    [(ASKClient *)v5 updateNotificationAuthorizationStatus];
  }

  return v5;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = ASKClient;
  [(ASKClient *)&v4 dealloc];
}

- (void)accountStoreDidChange:(id)a3
{
  v4 = [a3 object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v4;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    v5 = [ASKClient getStorefrontIdentifierPromise:v6];
    [(ASKClient *)self setStorefrontIdentifierPromise:v5];
  }

  else
  {
    NSLog(&cfstr_SSentNotificat.isa, "[ASKClient accountStoreDidChange:]");
  }
}

- (void)hostBundleIdDidChange:(id)a3
{
  v5 = +[_TtC11AppStoreKit21HostProcessIdentifier shared];
  v4 = [v5 hostBundleId];
  [(ASKClient *)self set_hostBundleId:v4];
}

- (void)remoteDownloadIdentifiersDidChange:(id)a3
{
  v5 = [a3 userInfo];
  v4 = [v5 objectForKeyedSubscript:@"ASKClient.remoteDownloadIdentifiers"];
  [(ASKClient *)self set_remoteDownloadIdentifiers:v4];
}

- (int64_t)maxAppContentRating
{
  v2 = [(ASKClient *)self restrictions];
  v3 = [v2 maximumAppContentRating];

  return v3;
}

- (CGSize)screenSize
{
  +[ASKMobileGestalt mainScreenSize];
  result.height = v3;
  result.width = v2;
  return result;
}

- (NSString)storefrontIdentifier
{
  v2 = [(ASKClient *)self storefrontIdentifierPromise];
  v3 = [v2 resultWithError:0];

  return v3;
}

+ (id)getStorefrontIdentifierPromise:(id)a3
{
  v3 = a3;
  v4 = [v3 ams_mediaType];
  v5 = [v3 ams_activeiTunesAccountForMediaType:v4];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __44__ASKClient_getStorefrontIdentifierPromise___block_invoke;
  v9[3] = &unk_1E870C7F0;
  v10 = v3;
  v6 = v3;
  v7 = [v5 continueWithBlock:v9];

  return v7;
}

id __44__ASKClient_getStorefrontIdentifierPromise___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [a2 ams_storefront];
  if (([v5 ams_hasDomain:*MEMORY[0x1E698C548] code:7] & 1) == 0)
  {
    v7 = [MEMORY[0x1E698C968] ask_generalLogConfig];
    if (!v7)
    {
      v7 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v8 = [v7 OSLogObject];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = [v5 domain];
      v14 = 138543618;
      v15 = v9;
      v16 = 1026;
      v17 = [v5 code];
      _os_log_impl(&dword_1E12FC000, v8, OS_LOG_TYPE_ERROR, "Could not get active iTunes accountError domain=%{public}@, code=%{public}d", &v14, 0x12u);
    }
  }

  if (v6)
  {
    v10 = [MEMORY[0x1E698CAD0] promiseWithResult:v6];
  }

  else
  {
    v11 = [*(a1 + 32) ams_fetchLocaliTunesAccount];
    v12 = [v11 thenWithBlock:&__block_literal_global_11];
    v10 = [v12 catchWithBlock:&__block_literal_global_34];
  }

  return v10;
}

id __44__ASKClient_getStorefrontIdentifierPromise___block_invoke_29(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E698CAD0];
  v3 = [a2 ams_storefront];
  v4 = [v2 promiseWithResult:v3];

  return v4;
}

id __44__ASKClient_getStorefrontIdentifierPromise___block_invoke_2(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = [MEMORY[0x1E698C968] ask_generalLogConfig];
  if (!v3)
  {
    v3 = [MEMORY[0x1E698C968] sharedConfig];
  }

  v4 = [v3 OSLogObject];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = [v2 domain];
    v8 = 138543618;
    v9 = v5;
    v10 = 1026;
    v11 = [v2 code];
    _os_log_impl(&dword_1E12FC000, v4, OS_LOG_TYPE_ERROR, "Could not get local iTunes accountError domain=%{public}@, code=%{public}d", &v8, 0x12u);
  }

  v6 = [MEMORY[0x1E698CAD0] promiseWithError:v2];

  return v6;
}

- (BOOL)isActivePairedWatchSystemVersionAtLeastMajorVersion:(id)a3 minorVersion:(id)a4 patchVersion:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = +[ASKMobileGestalt activePairedSystemVersion];
  if (v10)
  {
    v29 = v10;
    v11 = [v10 componentsSeparatedByString:@"."];
    if ([v11 count])
    {
      v12 = [v11 objectAtIndexedSubscript:0];
      v28 = [v12 integerValue];
    }

    else
    {
      v28 = 0;
    }

    if ([v11 count] < 2)
    {
      v15 = 0;
    }

    else
    {
      v14 = [v11 objectAtIndexedSubscript:1];
      v15 = [v14 integerValue];
    }

    if ([v11 count] < 3)
    {
      v17 = 0;
    }

    else
    {
      v16 = [v11 objectAtIndexedSubscript:2];
      v17 = [v16 integerValue];
    }

    v18 = [v7 toInt32];
    v19 = [v8 toInt32];
    v20 = [v9 toInt32];
    v21 = v9;
    v22 = v7;
    v23 = v20;
    v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld.%ld.%ld", v28, v15, v17];
    v27 = v23;
    v7 = v22;
    v9 = v21;
    v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld.%ld.%ld", v18, v19, v27];
    v13 = [v24 compare:v25 options:64] != -1;

    v10 = v29;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)isPairedSystemVersionAtLeast:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E696EB40] currentContext];
  if (!v4)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:{@"%s called with no active JSContext", "-[ASKClient isPairedSystemVersionAtLeast:]"}];
  }

  if ([v3 isString])
  {
    v5 = +[ASKMobileGestalt activePairedSystemVersion];
    v6 = __42__ASKClient_isPairedSystemVersionAtLeast___block_invoke(v5, v5);

    if (v6)
    {
      v7 = [v3 toString];
      v8 = __42__ASKClient_isPairedSystemVersionAtLeast___block_invoke(v7, v7);
      v9 = [v6 compare:v8 options:64] != -1;
    }

    else
    {
      v9 = 0;
    }

    v11 = [MEMORY[0x1E696EB58] valueWithBool:v9 inContext:v4];
  }

  else
    v6 = {;
    v10 = [MEMORY[0x1E696EB58] valueWithNewErrorFromMessage:v6 inContext:v4];
    [v4 setException:v10];

    v11 = [MEMORY[0x1E696EB58] valueWithUndefinedInContext:v4];
  }

  v12 = v11;

  return v12;
}

id __42__ASKClient_isPairedSystemVersionAtLeast___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = v2;
  if (!v2)
  {
    v8 = 0;
    goto LABEL_13;
  }

  v4 = [v2 componentsSeparatedByString:@"."];
  v5 = [v4 count];
  if (v5 >= 4)
  {
    v6 = [v4 subarrayWithRange:{0, 3}];
    v7 = v6;
LABEL_11:
    v8 = [v6 componentsJoinedByString:@"."];

    goto LABEL_12;
  }

  v9 = v5 - 3;
  if (v5 != 3)
  {
    v7 = [v4 mutableCopy];
    do
    {
      [v7 addObject:@"0"];
    }

    while (!__CFADD__(v9++, 1));
    v6 = v7;
    goto LABEL_11;
  }

  v8 = v3;
LABEL_12:

LABEL_13:

  return v8;
}

- (BOOL)canDevicePerformAppAction:(id)a3 withAppCapabilities:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (![v6 count] || !objc_msgSend(v5, "length"))
  {
    goto LABEL_14;
  }

  if (([@"install" isEqualToString:v5] & 1) == 0)
  {
    if ([@"update" isEqualToString:v5])
    {
      v7 = 1;
      goto LABEL_13;
    }

    if ([@"restore" isEqualToString:v5])
    {
      v7 = 2;
      goto LABEL_13;
    }

    if ([@"launch" isEqualToString:v5])
    {
      v7 = 3;
      goto LABEL_13;
    }

    if ([@"advertise" isEqualToString:v5])
    {
      v7 = 4;
      goto LABEL_13;
    }

LABEL_14:
    v8 = 1;
    goto LABEL_15;
  }

  v7 = 0;
LABEL_13:
  v8 = [MEMORY[0x1E698B490] isCapableOfAction:v7 capabilities:v6];
LABEL_15:

  return v8;
}

- (BOOL)isAutomaticDownloadingEnabled
{
  v2 = [MEMORY[0x1E6959A48] ams_sharedAccountStore];
  v3 = [v2 ams_activeiTunesAccount];

  v4 = [v3 accountPropertyForKey:@"automaticDownloadKinds"];
  v5 = [v4 containsObject:@"software"];

  return v5;
}

- (BOOL)canUpdateNotificationAuthorizationStatus
{
  if (canUpdateNotificationAuthorizationStatus_onceToken != -1)
  {
    [ASKClient canUpdateNotificationAuthorizationStatus];
  }

  if (canUpdateNotificationAuthorizationStatus_isExtension & 1) != 0 || (canUpdateNotificationAuthorizationStatus_isRunningTests)
  {
    v2 = 0;
  }

  else
  {
    v2 = canUpdateNotificationAuthorizationStatus_isXPCService ^ 1;
  }

  return v2 & 1;
}

void __53__ASKClient_canUpdateNotificationAuthorizationStatus__block_invoke()
{
  v0 = [MEMORY[0x1E696ABD0] extensionInfoForCurrentProcess];
  canUpdateNotificationAuthorizationStatus_isExtension = v0 != 0;

  v1 = [MEMORY[0x1E696AE30] processInfo];
  v2 = [v1 environment];
  v3 = [v2 objectForKeyedSubscript:@"XCTestConfigurationFilePath"];
  canUpdateNotificationAuthorizationStatus_isRunningTests = v3 != 0;

  v4 = [MEMORY[0x1E69C75D0] currentProcess];
  canUpdateNotificationAuthorizationStatus_isXPCService = [v4 isXPCService];
}

- (void)updateNotificationAuthorizationStatus
{
  if ([(ASKClient *)self canUpdateNotificationAuthorizationStatus])
  {
    v3 = [MEMORY[0x1E6983308] currentNotificationCenter];
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __50__ASKClient_updateNotificationAuthorizationStatus__block_invoke;
    v4[3] = &unk_1E870C818;
    v4[4] = self;
    [v3 getNotificationSettingsWithCompletionHandler:v4];
  }
}

uint64_t __50__ASKClient_updateNotificationAuthorizationStatus__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 authorizationStatus];
  v4 = *(a1 + 32);

  return [v4 setCurrentNotificationAuthorizationStatus:v3];
}

@end