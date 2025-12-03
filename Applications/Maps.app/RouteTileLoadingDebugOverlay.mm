@interface RouteTileLoadingDebugOverlay
- ($873BFAB23BBB6E2F0B0288ED2F935688)boundingMapRect;
- (CLLocationCoordinate2D)coordinate;
- (RouteTileLoadingDebugOverlay)init;
- (void)addCachedTileKey:(uint64_t)key;
- (void)addFailedKey:(uint64_t)key;
- (void)addLoadedTileKey:(uint64_t)key;
@end

@implementation RouteTileLoadingDebugOverlay

- (void)addFailedKey:(uint64_t)key
{
  os_unfair_lock_lock((self + 32));
  [*(self + 24) addKey:key];

  os_unfair_lock_unlock((self + 32));
}

- (void)addCachedTileKey:(uint64_t)key
{
  os_unfair_lock_lock((self + 32));
  [*(self + 16) addKey:key];
  [*(self + 24) removeKey:key];

  os_unfair_lock_unlock((self + 32));
}

- (void)addLoadedTileKey:(uint64_t)key
{
  os_unfair_lock_lock((self + 32));
  [*(self + 8) addKey:key];
  [*(self + 24) removeKey:key];

  os_unfair_lock_unlock((self + 32));
}

- ($873BFAB23BBB6E2F0B0288ED2F935688)boundingMapRect
{
  x = MKMapRectWorld.origin.x;
  y = MKMapRectWorld.origin.y;
  width = MKMapRectWorld.size.width;
  height = MKMapRectWorld.size.height;
  result.var1.var1 = height;
  result.var1.var0 = width;
  result.var0.var1 = y;
  result.var0.var0 = x;
  return result;
}

- (CLLocationCoordinate2D)coordinate
{
  v4 = CLLocationCoordinate2DMake(0.0, 0.0);
  longitude = v4.longitude;
  latitude = v4.latitude;
  result.longitude = longitude;
  result.latitude = latitude;
  return result;
}

- (RouteTileLoadingDebugOverlay)init
{
  v11.receiver = self;
  v11.super_class = RouteTileLoadingDebugOverlay;
  v2 = [(RouteTileLoadingDebugOverlay *)&v11 init];
  if (v2)
  {
    v3 = [[GEOTileKeyList alloc] initWithCapacity:1000];
    loadedKeys = v2->_loadedKeys;
    v2->_loadedKeys = v3;

    v5 = [[GEOTileKeyList alloc] initWithCapacity:1000];
    cachedKeys = v2->_cachedKeys;
    v2->_cachedKeys = v5;

    v7 = [[GEOTileKeyList alloc] initWithCapacity:100];
    failedKeys = v2->_failedKeys;
    v2->_failedKeys = v7;

    v2->_lock._os_unfair_lock_opaque = 0;
    v9 = v2;
  }

  return v2;
}

@end