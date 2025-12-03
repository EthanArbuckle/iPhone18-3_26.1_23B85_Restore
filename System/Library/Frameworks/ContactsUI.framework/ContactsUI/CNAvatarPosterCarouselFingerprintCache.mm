@interface CNAvatarPosterCarouselFingerprintCache
+ (id)cacheKeyForContact:(id)contact;
+ (id)cacheWithCapacity:(unint64_t)capacity contactStore:(id)store;
+ (id)cacheWithCapacity:(unint64_t)capacity contactStore:(id)store resourceScheduler:(id)scheduler;
- (CNAvatarPosterCarouselFingerprintCache)initWithCache:(id)cache contactStore:(id)store;
- (id)fingerprintForKey:(id)key;
- (void)invalidateFingerprintsForContactIdentifiers:(id)identifiers;
- (void)removeObjectForCacheKey:(id)key;
- (void)removeObjectForContact:(id)contact;
- (void)setFingerprint:(id)fingerprint forKey:(id)key;
@end

@implementation CNAvatarPosterCarouselFingerprintCache

- (void)invalidateFingerprintsForContactIdentifiers:(id)identifiers
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __86__CNAvatarPosterCarouselFingerprintCache_invalidateFingerprintsForContactIdentifiers___block_invoke;
  v3[3] = &unk_1E74E6A60;
  v3[4] = self;
  [identifiers _cn_each:v3];
}

void __86__CNAvatarPosterCarouselFingerprintCache_invalidateFingerprintsForContactIdentifiers___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [objc_opt_class() cacheKeyForContactIdentifier:v3];

  [*(a1 + 32) removeObjectForCacheKey:v4];
}

- (void)removeObjectForCacheKey:(id)key
{
  keyCopy = key;
  if (((*(*MEMORY[0x1E6996568] + 16))() & 1) == 0)
  {
    cache = [(CNAvatarPosterCarouselFingerprintCache *)self cache];
    [cache setObject:0 forKey:keyCopy];
  }
}

- (void)removeObjectForContact:(id)contact
{
  contactCopy = contact;
  v5 = [objc_opt_class() cacheKeyForContact:contactCopy];

  [(CNAvatarPosterCarouselFingerprintCache *)self removeObjectForCacheKey:v5];
}

- (id)fingerprintForKey:(id)key
{
  keyCopy = key;
  cache = [(CNAvatarPosterCarouselFingerprintCache *)self cache];
  v6 = [cache objectForKey:keyCopy];

  return v6;
}

- (void)setFingerprint:(id)fingerprint forKey:(id)key
{
  keyCopy = key;
  fingerprintCopy = fingerprint;
  cache = [(CNAvatarPosterCarouselFingerprintCache *)self cache];
  [cache setObject:fingerprintCopy forKey:keyCopy];
}

- (CNAvatarPosterCarouselFingerprintCache)initWithCache:(id)cache contactStore:(id)store
{
  cacheCopy = cache;
  storeCopy = store;
  v15.receiver = self;
  v15.super_class = CNAvatarPosterCarouselFingerprintCache;
  v9 = [(CNAvatarPosterCarouselFingerprintCache *)&v15 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_cache, cache);
    v11 = [objc_alloc(MEMORY[0x1E6996A80]) initWithContactStore:storeCopy delegate:v10];
    changeHistoryListener = v10->_changeHistoryListener;
    v10->_changeHistoryListener = v11;

    [(CNAvatarCacheChangeListener *)v10->_changeHistoryListener start];
    v13 = v10;
  }

  return v10;
}

+ (id)cacheWithCapacity:(unint64_t)capacity contactStore:(id)store resourceScheduler:(id)scheduler
{
  v15[1] = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E6996660];
  schedulerCopy = scheduler;
  storeCopy = store;
  v9 = [v6 alloc];
  v10 = [MEMORY[0x1E6996660] boundingStrategyWithCapacity:100];
  v15[0] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
  v12 = [v9 initWithBoundingStrategies:v11 resourceScheduler:schedulerCopy];

  v13 = [[CNAvatarPosterCarouselFingerprintCache alloc] initWithCache:v12 contactStore:storeCopy];

  return v13;
}

+ (id)cacheWithCapacity:(unint64_t)capacity contactStore:(id)store
{
  v5 = MEMORY[0x1E6996818];
  storeCopy = store;
  v7 = [v5 synchronousSerialDispatchQueueWithName:@"com.apple.contactsui.CNAvatarPosterCarouselFingerprintCache"];
  v8 = [CNAvatarPosterCarouselFingerprintCache cacheWithCapacity:capacity contactStore:storeCopy resourceScheduler:v7];

  return v8;
}

+ (id)cacheKeyForContact:(id)contact
{
  contactCopy = contact;
  v4 = objc_opt_class();
  identifier = [contactCopy identifier];

  v6 = [v4 cacheKeyForContactIdentifier:identifier];

  return v6;
}

@end