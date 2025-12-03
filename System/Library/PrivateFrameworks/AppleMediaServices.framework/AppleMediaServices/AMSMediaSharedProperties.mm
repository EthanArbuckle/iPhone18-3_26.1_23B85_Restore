@interface AMSMediaSharedProperties
+ (NSMapTable)sharedPropertiesMapTable;
+ (OS_dispatch_queue)accessQueue;
+ (id)_propertiesForClientIdentifier:(id)identifier account:(id)account bag:(id)bag clientInfo:(id)info URLKnownToBeTrusted:(BOOL)trusted;
+ (id)propertiesForMarketingItemTask:(id)task;
+ (id)propertiesForMediaTask:(id)task;
+ (id)propertiesForMercuryCacheFetchTask:(id)task;
+ (id)propertiesForNotificationSettingsTask:(id)task;
+ (id)propertiesForRatingsTask:(id)task;
+ (id)propertiesForStorefrontsTask:(id)task;
+ (id)propertiesForUserNotificationSettingsTask:(id)task;
- (id)_initWithClientIdentifier:(id)identifier account:(id)account bag:(id)bag clientInfo:(id)info URLKnownToBeTrusted:(BOOL)trusted;
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
  accessQueue = [self accessQueue];
  dispatch_assert_queue_V2(accessQueue);

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

+ (id)propertiesForMarketingItemTask:(id)task
{
  taskCopy = task;
  clientIdentifier = [taskCopy clientIdentifier];
  account = [taskCopy account];
  v7 = [taskCopy bag];
  clientInfo = [taskCopy clientInfo];

  v9 = [self _propertiesForClientIdentifier:clientIdentifier account:account bag:v7 clientInfo:clientInfo URLKnownToBeTrusted:0];

  return v9;
}

+ (id)propertiesForMediaTask:(id)task
{
  taskCopy = task;
  clientIdentifier = [taskCopy clientIdentifier];
  account = [taskCopy account];
  v7 = [taskCopy bag];
  clientInfo = [taskCopy clientInfo];
  uRLKnownToBeTrusted = [taskCopy URLKnownToBeTrusted];

  v10 = [self _propertiesForClientIdentifier:clientIdentifier account:account bag:v7 clientInfo:clientInfo URLKnownToBeTrusted:uRLKnownToBeTrusted];

  return v10;
}

+ (id)propertiesForMercuryCacheFetchTask:(id)task
{
  taskCopy = task;
  clientIdentifier = [taskCopy clientIdentifier];
  account = [taskCopy account];
  v7 = [taskCopy bag];
  clientInfo = [taskCopy clientInfo];

  v9 = [self _propertiesForClientIdentifier:clientIdentifier account:account bag:v7 clientInfo:clientInfo URLKnownToBeTrusted:0];

  return v9;
}

+ (id)propertiesForRatingsTask:(id)task
{
  taskCopy = task;
  clientIdentifier = [taskCopy clientIdentifier];
  v6 = [taskCopy bag];

  v7 = [self _propertiesForClientIdentifier:clientIdentifier account:0 bag:v6 clientInfo:0 URLKnownToBeTrusted:0];

  return v7;
}

+ (id)propertiesForStorefrontsTask:(id)task
{
  taskCopy = task;
  clientIdentifier = [taskCopy clientIdentifier];
  v6 = [taskCopy bag];

  v7 = [self _propertiesForClientIdentifier:clientIdentifier account:0 bag:v6 clientInfo:0 URLKnownToBeTrusted:0];

  return v7;
}

+ (id)propertiesForNotificationSettingsTask:(id)task
{
  taskCopy = task;
  account = [taskCopy account];
  v6 = [taskCopy bag];
  clientInfo = [taskCopy clientInfo];

  v8 = [self _propertiesForClientIdentifier:@"com.apple.AppleMediaServices" account:account bag:v6 clientInfo:clientInfo URLKnownToBeTrusted:0];

  return v8;
}

+ (id)propertiesForUserNotificationSettingsTask:(id)task
{
  taskCopy = task;
  clientIdentifier = [taskCopy clientIdentifier];
  account = [taskCopy account];
  v7 = [taskCopy bag];
  clientInfo = [taskCopy clientInfo];

  v9 = [self _propertiesForClientIdentifier:clientIdentifier account:account bag:v7 clientInfo:clientInfo URLKnownToBeTrusted:0];

  return v9;
}

- (id)_initWithClientIdentifier:(id)identifier account:(id)account bag:(id)bag clientInfo:(id)info URLKnownToBeTrusted:(BOOL)trusted
{
  trustedCopy = trusted;
  identifierCopy = identifier;
  accountCopy = account;
  bagCopy = bag;
  infoCopy = info;
  v25.receiver = self;
  v25.super_class = AMSMediaSharedProperties;
  v16 = [(AMSMediaSharedProperties *)&v25 init];
  if (v16)
  {
    defaultSessionConfiguration = [MEMORY[0x1E695AC80] defaultSessionConfiguration];
    v18 = [[AMSURLSession alloc] initWithConfiguration:defaultSessionConfiguration];
    v19 = [[AMSMediaTokenService alloc] initWithClientIdentifier:identifierCopy bag:bagCopy];
    [(AMSMediaTokenService *)v19 setAccount:accountCopy];
    [(AMSMediaTokenService *)v19 setClientInfo:infoCopy];
    [(AMSMediaTokenService *)v19 setSession:v18];
    [(AMSMediaTokenService *)v19 setURLKnownToBeTrusted:trustedCopy];
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

+ (id)_propertiesForClientIdentifier:(id)identifier account:(id)account bag:(id)bag clientInfo:(id)info URLKnownToBeTrusted:(BOOL)trusted
{
  identifierCopy = identifier;
  accountCopy = account;
  bagCopy = bag;
  infoCopy = info;
  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = __Block_byref_object_copy__39;
  v38 = __Block_byref_object_dispose__39;
  v39 = 0;
  accessQueue = [self accessQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __102__AMSMediaSharedProperties__propertiesForClientIdentifier_account_bag_clientInfo_URLKnownToBeTrusted___block_invoke;
  block[3] = &unk_1E73B73A0;
  v32 = &v34;
  selfCopy = self;
  v17 = identifierCopy;
  v31 = v17;
  dispatch_sync(accessQueue, block);

  v18 = v35[5];
  if (!v18)
  {
    accessQueue2 = [self accessQueue];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __102__AMSMediaSharedProperties__propertiesForClientIdentifier_account_bag_clientInfo_URLKnownToBeTrusted___block_invoke_2;
    v22[3] = &unk_1E73B8E68;
    v27 = &v34;
    selfCopy2 = self;
    v23 = v17;
    v24 = accountCopy;
    v25 = bagCopy;
    v26 = infoCopy;
    trustedCopy = trusted;
    dispatch_barrier_sync(accessQueue2, v22);

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