@interface AVTTwoLevelsImageCache
- (AVTTwoLevelsImageCache)initWithFirstLevelCache:(id)cache secondLevelCache:(id)levelCache environment:(id)environment;
- (BOOL)resourceExistsInCacheForItem:(id)item scope:(id)scope;
- (id)imageForItem:(id)item scope:(id)scope;
- (id)imageForItem:(id)item scope:(id)scope cacheMissHandler:(id)handler;
@end

@implementation AVTTwoLevelsImageCache

- (AVTTwoLevelsImageCache)initWithFirstLevelCache:(id)cache secondLevelCache:(id)levelCache environment:(id)environment
{
  cacheCopy = cache;
  levelCacheCopy = levelCache;
  v13.receiver = self;
  v13.super_class = AVTTwoLevelsImageCache;
  v10 = [(AVTTwoLevelsImageCache *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_firstLevelCache, cache);
    objc_storeStrong(&v11->_secondLevelCache, levelCache);
  }

  return v11;
}

- (id)imageForItem:(id)item scope:(id)scope cacheMissHandler:(id)handler
{
  itemCopy = item;
  handlerCopy = handler;
  scopeCopy = scope;
  firstLevelCache = [(AVTTwoLevelsImageCache *)self firstLevelCache];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __62__AVTTwoLevelsImageCache_imageForItem_scope_cacheMissHandler___block_invoke;
  v16[3] = &unk_1E7F3C748;
  v16[4] = self;
  v17 = itemCopy;
  v18 = handlerCopy;
  v12 = handlerCopy;
  v13 = itemCopy;
  v14 = [firstLevelCache imageForItem:v13 scope:scopeCopy cacheMissHandler:v16];

  return v14;
}

id __62__AVTTwoLevelsImageCache_imageForItem_scope_cacheMissHandler___block_invoke(void *a1, uint64_t a2, void *a3)
{
  v4 = a1[4];
  v5 = a3;
  v6 = [v4 secondLevelCache];
  v7 = [v6 imageForItem:a1[5] scope:v5 cacheMissHandler:a1[6]];

  return v7;
}

- (id)imageForItem:(id)item scope:(id)scope
{
  scopeCopy = scope;
  itemCopy = item;
  firstLevelCache = [(AVTTwoLevelsImageCache *)self firstLevelCache];
  v9 = [firstLevelCache imageForItem:itemCopy scope:scopeCopy];

  return v9;
}

- (BOOL)resourceExistsInCacheForItem:(id)item scope:(id)scope
{
  itemCopy = item;
  scopeCopy = scope;
  firstLevelCache = [(AVTTwoLevelsImageCache *)self firstLevelCache];
  if ([firstLevelCache resourceExistsInCacheForItem:itemCopy scope:scopeCopy])
  {
    v9 = 1;
  }

  else
  {
    secondLevelCache = [(AVTTwoLevelsImageCache *)self secondLevelCache];
    v9 = [secondLevelCache resourceExistsInCacheForItem:itemCopy scope:scopeCopy];
  }

  return v9;
}

@end