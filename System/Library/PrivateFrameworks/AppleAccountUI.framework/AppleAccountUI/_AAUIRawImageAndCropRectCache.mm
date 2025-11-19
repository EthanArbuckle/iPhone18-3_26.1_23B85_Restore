@interface _AAUIRawImageAndCropRectCache
+ (id)_cacheStore;
+ (id)entryForPersonID:(id)a3;
+ (void)setEntry:(id)a3 forPersonID:(id)a4;
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

+ (id)entryForPersonID:(id)a3
{
  v4 = a3;
  v5 = [a1 _cacheStore];
  objc_sync_enter(v5);
  v6 = [v5 objectForKeyedSubscript:v4];
  objc_sync_exit(v5);

  return v6;
}

+ (void)setEntry:(id)a3 forPersonID:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = [a1 _cacheStore];
  objc_sync_enter(v7);
  [v7 setObject:v8 forKeyedSubscript:v6];
  objc_sync_exit(v7);
}

@end