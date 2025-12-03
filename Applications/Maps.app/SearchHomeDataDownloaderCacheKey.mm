@interface SearchHomeDataDownloaderCacheKey
- ($873BFAB23BBB6E2F0B0288ED2F935688)mapRect;
- (SearchHomeDataDownloaderCacheKey)initWithMapRect:(id)rect mapType:(unint64_t)type time:(double)time lprPowerType:(id)powerType;
@end

@implementation SearchHomeDataDownloaderCacheKey

- ($873BFAB23BBB6E2F0B0288ED2F935688)mapRect
{
  x = self->_mapRect.origin.x;
  y = self->_mapRect.origin.y;
  width = self->_mapRect.size.width;
  height = self->_mapRect.size.height;
  result.var1.var1 = height;
  result.var1.var0 = width;
  result.var0.var1 = y;
  result.var0.var0 = x;
  return result;
}

- (SearchHomeDataDownloaderCacheKey)initWithMapRect:(id)rect mapType:(unint64_t)type time:(double)time lprPowerType:(id)powerType
{
  var1 = rect.var1.var1;
  var0 = rect.var1.var0;
  v11 = rect.var0.var1;
  v12 = rect.var0.var0;
  v14.receiver = self;
  v14.super_class = SearchHomeDataDownloaderCacheKey;
  result = [(SearchHomeDataDownloaderCacheKey *)&v14 init];
  if (result)
  {
    result->_mapRect.origin.x = v12;
    result->_mapRect.origin.y = v11;
    result->_mapRect.size.width = var0;
    result->_mapRect.size.height = var1;
    result->_mapType = type;
    result->_timestamp = time;
    result->_lprPowerType = powerType;
  }

  return result;
}

@end