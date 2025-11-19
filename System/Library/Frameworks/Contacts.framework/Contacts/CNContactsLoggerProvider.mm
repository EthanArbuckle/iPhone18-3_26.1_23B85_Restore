@interface CNContactsLoggerProvider
+ (CNContactsLoggerProvider)defaultProvider;
- (CNAPITriageLogger)apiTriageLogger;
- (CNContactsLogger)contactsLogger;
- (CNFavoritesLogger)favoritesLogger;
- (CNGeminiLogger)geminiLogger;
- (CNImageUtilitiesLogger)imageUtilitiesLogger;
- (CNRegulatoryLogger)regulatoryLogger;
- (CNSpotlightIndexingLogger)spotlightIndexingLogger;
@end

@implementation CNContactsLoggerProvider

+ (CNContactsLoggerProvider)defaultProvider
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__CNContactsLoggerProvider_defaultProvider__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (defaultProvider_cn_once_token_0 != -1)
  {
    dispatch_once(&defaultProvider_cn_once_token_0, block);
  }

  v2 = defaultProvider_cn_once_object_0;

  return v2;
}

uint64_t __43__CNContactsLoggerProvider_defaultProvider__block_invoke(uint64_t a1)
{
  defaultProvider_cn_once_object_0 = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x1EEE66BB8]();
}

id __42__CNContactsLoggerProvider_contactsLogger__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  if (!v2)
  {
    v3 = objc_alloc_init(_CNContactsLogger);
    v4 = *(a1 + 32);
    v5 = *(v4 + 8);
    *(v4 + 8) = v3;

    v2 = *(*(a1 + 32) + 8);
  }

  return v2;
}

- (CNContactsLogger)contactsLogger
{
  v2 = cn_objectResultWithObjectLock();

  return v2;
}

- (CNAPITriageLogger)apiTriageLogger
{
  v2 = cn_objectResultWithObjectLock();

  return v2;
}

id __43__CNContactsLoggerProvider_apiTriageLogger__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 48);
  if (!v2)
  {
    v3 = objc_alloc_init(CNAPITriageLogger);
    v4 = *(a1 + 32);
    v5 = *(v4 + 48);
    *(v4 + 48) = v3;

    v2 = *(*(a1 + 32) + 48);
  }

  return v2;
}

- (CNFavoritesLogger)favoritesLogger
{
  v2 = cn_objectResultWithObjectLock();

  return v2;
}

id __43__CNContactsLoggerProvider_favoritesLogger__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  if (!v2)
  {
    v3 = objc_alloc_init(_CNFavoritesLogger);
    v4 = *(a1 + 32);
    v5 = *(v4 + 32);
    *(v4 + 32) = v3;

    v2 = *(*(a1 + 32) + 32);
  }

  return v2;
}

- (CNSpotlightIndexingLogger)spotlightIndexingLogger
{
  v2 = cn_objectResultWithObjectLock();

  return v2;
}

id __51__CNContactsLoggerProvider_spotlightIndexingLogger__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  if (!v2)
  {
    v3 = objc_alloc_init(_CNSpotlightIndexingLogger);
    v4 = *(a1 + 32);
    v5 = *(v4 + 16);
    *(v4 + 16) = v3;

    v2 = *(*(a1 + 32) + 16);
  }

  return v2;
}

- (CNRegulatoryLogger)regulatoryLogger
{
  v2 = cn_objectResultWithObjectLock();

  return v2;
}

id __44__CNContactsLoggerProvider_regulatoryLogger__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 24);
  if (!v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E6996800]) initWithAuditToken:0 assumedIdentity:0];
    v4 = *(a1 + 32);
    v5 = *(v4 + 24);
    *(v4 + 24) = v3;

    v2 = *(*(a1 + 32) + 24);
  }

  return v2;
}

- (CNGeminiLogger)geminiLogger
{
  v2 = cn_objectResultWithObjectLock();

  return v2;
}

id __40__CNContactsLoggerProvider_geminiLogger__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 40);
  if (!v2)
  {
    v3 = objc_alloc_init(_CNGeminiLogger);
    v4 = *(a1 + 32);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    v2 = *(*(a1 + 32) + 40);
  }

  return v2;
}

- (CNImageUtilitiesLogger)imageUtilitiesLogger
{
  v2 = cn_objectResultWithObjectLock();

  return v2;
}

id __48__CNContactsLoggerProvider_imageUtilitiesLogger__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 56);
  if (!v2)
  {
    v3 = objc_alloc_init(_CNImageUtilitiesLogger);
    v4 = *(a1 + 32);
    v5 = *(v4 + 56);
    *(v4 + 56) = v3;

    v2 = *(*(a1 + 32) + 56);
  }

  return v2;
}

@end