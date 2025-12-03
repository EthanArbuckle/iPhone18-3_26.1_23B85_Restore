@interface _AAUIRawImageAndCropRectCache
+ (id)_cacheStore;
+ (id)entryForPersonID:(id)d;
+ (void)setEntry:(id)entry forPersonID:(id)d;
@end

@implementation _AAUIRawImageAndCropRectCache

+ (id)_cacheStore
{
  if (_cacheStore_onceToken != -1)
  {
    +[_AAUIRawImageAndCropRectCache _cacheStore];
  }

  v3 = _cacheStore_rawImageAndCropRectCache;

  return v3;
}

+ (id)entryForPersonID:(id)d
{
  dCopy = d;
  _cacheStore = [self _cacheStore];
  objc_sync_enter(_cacheStore);
  v6 = [_cacheStore objectForKeyedSubscript:dCopy];
  objc_sync_exit(_cacheStore);

  return v6;
}

+ (void)setEntry:(id)entry forPersonID:(id)d
{
  entryCopy = entry;
  dCopy = d;
  _cacheStore = [self _cacheStore];
  objc_sync_enter(_cacheStore);
  [_cacheStore setObject:entryCopy forKeyedSubscript:dCopy];
  objc_sync_exit(_cacheStore);
}

@end