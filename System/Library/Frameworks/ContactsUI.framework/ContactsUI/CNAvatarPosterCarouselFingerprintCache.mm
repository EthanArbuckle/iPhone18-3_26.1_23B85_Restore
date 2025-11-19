@interface CNAvatarPosterCarouselFingerprintCache
+ (id)cacheKeyForContact:(id)a3;
+ (id)cacheWithCapacity:(unint64_t)a3 contactStore:(id)a4;
+ (id)cacheWithCapacity:(unint64_t)a3 contactStore:(id)a4 resourceScheduler:(id)a5;
- (CNAvatarPosterCarouselFingerprintCache)initWithCache:(id)a3 contactStore:(id)a4;
- (id)fingerprintForKey:(id)a3;
- (void)invalidateFingerprintsForContactIdentifiers:(id)a3;
- (void)removeObjectForCacheKey:(id)a3;
- (void)removeObjectForContact:(id)a3;
- (void)setFingerprint:(id)a3 forKey:(id)a4;
@end

@implementation CNAvatarPosterCarouselFingerprintCache

- (void)invalidateFingerprintsForContactIdentifiers:(id)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __86__CNAvatarPosterCarouselFingerprintCache_invalidateFingerprintsForContactIdentifiers___block_invoke;
  v3[3] = &unk_1E74E6A60;
  v3[4] = self;
  [a3 _cn_each:v3];
}

void __86__CNAvatarPosterCarouselFingerprintCache_invalidateFingerprintsForContactIdentifiers___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [objc_opt_class() cacheKeyForContactIdentifier:v3];

  [*(a1 + 32) removeObjectForCacheKey:v4];
}

- (void)removeObjectForCacheKey:(id)a3
{
  v5 = a3;
  if (((*(*MEMORY[0x1E6996568] + 16))() & 1) == 0)
  {
    v4 = [(CNAvatarPosterCarouselFingerprintCache *)self cache];
    [v4 setObject:0 forKey:v5];
  }
}

- (void)removeObjectForContact:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() cacheKeyForContact:v4];

  [(CNAvatarPosterCarouselFingerprintCache *)self removeObjectForCacheKey:v5];
}

- (id)fingerprintForKey:(id)a3
{
  v4 = a3;
  v5 = [(CNAvatarPosterCarouselFingerprintCache *)self cache];
  v6 = [v5 objectForKey:v4];

  return v6;
}

- (void)setFingerprint:(id)a3 forKey:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CNAvatarPosterCarouselFingerprintCache *)self cache];
  [v8 setObject:v7 forKey:v6];
}

- (CNAvatarPosterCarouselFingerprintCache)initWithCache:(id)a3 contactStore:(id)a4
{
  v7 = a3;
  v8 = a4;
  v15.receiver = self;
  v15.super_class = CNAvatarPosterCarouselFingerprintCache;
  v9 = [(CNAvatarPosterCarouselFingerprintCache *)&v15 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_cache, a3);
    v11 = [objc_alloc(MEMORY[0x1E6996A80]) initWithContactStore:v8 delegate:v10];
    changeHistoryListener = v10->_changeHistoryListener;
    v10->_changeHistoryListener = v11;

    [(CNAvatarCacheChangeListener *)v10->_changeHistoryListener start];
    v13 = v10;
  }

  return v10;
}

+ (id)cacheWithCapacity:(unint64_t)a3 contactStore:(id)a4 resourceScheduler:(id)a5
{
  v15[1] = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E6996660];
  v7 = a5;
  v8 = a4;
  v9 = [v6 alloc];
  v10 = [MEMORY[0x1E6996660] boundingStrategyWithCapacity:100];
  v15[0] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
  v12 = [v9 initWithBoundingStrategies:v11 resourceScheduler:v7];

  v13 = [[CNAvatarPosterCarouselFingerprintCache alloc] initWithCache:v12 contactStore:v8];

  return v13;
}

+ (id)cacheWithCapacity:(unint64_t)a3 contactStore:(id)a4
{
  v5 = MEMORY[0x1E6996818];
  v6 = a4;
  v7 = [v5 synchronousSerialDispatchQueueWithName:@"com.apple.contactsui.CNAvatarPosterCarouselFingerprintCache"];
  v8 = [CNAvatarPosterCarouselFingerprintCache cacheWithCapacity:a3 contactStore:v6 resourceScheduler:v7];

  return v8;
}

+ (id)cacheKeyForContact:(id)a3
{
  v3 = a3;
  v4 = objc_opt_class();
  v5 = [v3 identifier];

  v6 = [v4 cacheKeyForContactIdentifier:v5];

  return v6;
}

@end