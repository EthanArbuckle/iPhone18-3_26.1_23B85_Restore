@interface AMSMediaSharedProperties
+ (NSMapTable)sharedPropertiesMapTable;
+ (OS_dispatch_queue)accessQueue;
+ (id)_propertiesForClientIdentifier:(id)a3 account:(id)a4 bag:(id)a5 clientInfo:(id)a6 URLKnownToBeTrusted:(BOOL)a7;
+ (id)propertiesForMarketingItemTask:(id)a3;
+ (id)propertiesForMediaTask:(id)a3;
+ (id)propertiesForMercuryCacheFetchTask:(id)a3;
+ (id)propertiesForNotificationSettingsTask:(id)a3;
+ (id)propertiesForRatingsTask:(id)a3;
+ (id)propertiesForStorefrontsTask:(id)a3;
+ (id)propertiesForUserNotificationSettingsTask:(id)a3;
- (id)_initWithClientIdentifier:(id)a3 account:(id)a4 bag:(id)a5 clientInfo:(id)a6 URLKnownToBeTrusted:(BOOL)a7;
@end

@implementation AMSMediaSharedProperties

+ (OS_dispatch_queue)accessQueue
{
  if (_MergedGlobals_125 != -1)
  {
    dispatch_once(&_MergedGlobals_125, &__block_literal_global_81);
  }

  v3 = qword_1ED6E2DC8;

  return v3;
}

void __39__AMSMediaSharedProperties_accessQueue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(MEMORY[0x1E69E96A8], DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.AppleMediaServices.AMSMediaSharedProperties", v2);
  v1 = qword_1ED6E2DC8;
  qword_1ED6E2DC8 = v0;
}

+ (NSMapTable)sharedPropertiesMapTable
{
  v2 = [a1 accessQueue];
  dispatch_assert_queue_V2(v2);

  if (qword_1ED6E2DD0 != -1)
  {
    dispatch_once(&qword_1ED6E2DD0, &__block_literal_global_8_0);
  }

  v3 = qword_1ED6E2DD8;

  return v3;
}

uint64_t __52__AMSMediaSharedProperties_sharedPropertiesMapTable__block_invoke()
{
  qword_1ED6E2DD8 = [MEMORY[0x1E696AD18] mapTableWithKeyOptions:0 valueOptions:5];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)propertiesForMarketingItemTask:(id)a3
{
  v4 = a3;
  v5 = [v4 clientIdentifier];
  v6 = [v4 account];
  v7 = [v4 bag];
  v8 = [v4 clientInfo];

  v9 = [a1 _propertiesForClientIdentifier:v5 account:v6 bag:v7 clientInfo:v8 URLKnownToBeTrusted:0];

  return v9;
}

+ (id)propertiesForMediaTask:(id)a3
{
  v4 = a3;
  v5 = [v4 clientIdentifier];
  v6 = [v4 account];
  v7 = [v4 bag];
  v8 = [v4 clientInfo];
  v9 = [v4 URLKnownToBeTrusted];

  v10 = [a1 _propertiesForClientIdentifier:v5 account:v6 bag:v7 clientInfo:v8 URLKnownToBeTrusted:v9];

  return v10;
}

+ (id)propertiesForMercuryCacheFetchTask:(id)a3
{
  v4 = a3;
  v5 = [v4 clientIdentifier];
  v6 = [v4 account];
  v7 = [v4 bag];
  v8 = [v4 clientInfo];

  v9 = [a1 _propertiesForClientIdentifier:v5 account:v6 bag:v7 clientInfo:v8 URLKnownToBeTrusted:0];

  return v9;
}

+ (id)propertiesForRatingsTask:(id)a3
{
  v4 = a3;
  v5 = [v4 clientIdentifier];
  v6 = [v4 bag];

  v7 = [a1 _propertiesForClientIdentifier:v5 account:0 bag:v6 clientInfo:0 URLKnownToBeTrusted:0];

  return v7;
}

+ (id)propertiesForStorefrontsTask:(id)a3
{
  v4 = a3;
  v5 = [v4 clientIdentifier];
  v6 = [v4 bag];

  v7 = [a1 _propertiesForClientIdentifier:v5 account:0 bag:v6 clientInfo:0 URLKnownToBeTrusted:0];

  return v7;
}

+ (id)propertiesForNotificationSettingsTask:(id)a3
{
  v4 = a3;
  v5 = [v4 account];
  v6 = [v4 bag];
  v7 = [v4 clientInfo];

  v8 = [a1 _propertiesForClientIdentifier:@"com.apple.AppleMediaServices" account:v5 bag:v6 clientInfo:v7 URLKnownToBeTrusted:0];

  return v8;
}

+ (id)propertiesForUserNotificationSettingsTask:(id)a3
{
  v4 = a3;
  v5 = [v4 clientIdentifier];
  v6 = [v4 account];
  v7 = [v4 bag];
  v8 = [v4 clientInfo];

  v9 = [a1 _propertiesForClientIdentifier:v5 account:v6 bag:v7 clientInfo:v8 URLKnownToBeTrusted:0];

  return v9;
}

- (id)_initWithClientIdentifier:(id)a3 account:(id)a4 bag:(id)a5 clientInfo:(id)a6 URLKnownToBeTrusted:(BOOL)a7
{
  v7 = a7;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v25.receiver = self;
  v25.super_class = AMSMediaSharedProperties;
  v16 = [(AMSMediaSharedProperties *)&v25 init];
  if (v16)
  {
    v17 = [MEMORY[0x1E695AC80] defaultSessionConfiguration];
    v18 = [[AMSURLSession alloc] initWithConfiguration:v17];
    v19 = [[AMSMediaTokenService alloc] initWithClientIdentifier:v12 bag:v14];
    [(AMSMediaTokenService *)v19 setAccount:v13];
    [(AMSMediaTokenService *)v19 setClientInfo:v15];
    [(AMSMediaTokenService *)v19 setSession:v18];
    [(AMSMediaTokenService *)v19 setURLKnownToBeTrusted:v7];
    v20 = [[AMSMediaProtocolHandler alloc] initWithTokenService:v19];
    [(AMSURLSession *)v18 setProtocolHandler:v20];
    session = v16->_session;
    v16->_session = v18;
    v22 = v18;

    tokenService = v16->_tokenService;
    v16->_tokenService = v19;
  }

  return v16;
}

+ (id)_propertiesForClientIdentifier:(id)a3 account:(id)a4 bag:(id)a5 clientInfo:(id)a6 URLKnownToBeTrusted:(BOOL)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = __Block_byref_object_copy__39;
  v38 = __Block_byref_object_dispose__39;
  v39 = 0;
  v16 = [a1 accessQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __102__AMSMediaSharedProperties__propertiesForClientIdentifier_account_bag_clientInfo_URLKnownToBeTrusted___block_invoke;
  block[3] = &unk_1E73B73A0;
  v32 = &v34;
  v33 = a1;
  v17 = v12;
  v31 = v17;
  dispatch_sync(v16, block);

  v18 = v35[5];
  if (!v18)
  {
    v19 = [a1 accessQueue];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __102__AMSMediaSharedProperties__propertiesForClientIdentifier_account_bag_clientInfo_URLKnownToBeTrusted___block_invoke_2;
    v22[3] = &unk_1E73B8E68;
    v27 = &v34;
    v28 = a1;
    v23 = v17;
    v24 = v13;
    v25 = v14;
    v26 = v15;
    v29 = a7;
    dispatch_barrier_sync(v19, v22);

    v18 = v35[5];
  }

  v20 = v18;

  _Block_object_dispose(&v34, 8);

  return v20;
}

void __102__AMSMediaSharedProperties__propertiesForClientIdentifier_account_bag_clientInfo_URLKnownToBeTrusted___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 48) sharedPropertiesMapTable];
  v2 = [v5 objectForKey:*(a1 + 32)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __102__AMSMediaSharedProperties__propertiesForClientIdentifier_account_bag_clientInfo_URLKnownToBeTrusted___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 72) sharedPropertiesMapTable];
  v3 = [v2 objectForKey:*(a1 + 32)];
  v4 = *(*(a1 + 64) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  if (!*(*(*(a1 + 64) + 8) + 40))
  {
    v6 = [[AMSMediaSharedProperties alloc] _initWithClientIdentifier:*(a1 + 32) account:*(a1 + 40) bag:*(a1 + 48) clientInfo:*(a1 + 56) URLKnownToBeTrusted:*(a1 + 80)];
    v7 = *(*(a1 + 64) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    v9 = [*(a1 + 72) sharedPropertiesMapTable];
    [v9 setObject:*(*(*(a1 + 64) + 8) + 40) forKey:*(a1 + 32)];
  }
}

@end