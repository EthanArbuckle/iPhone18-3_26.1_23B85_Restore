@interface GEODirectionsRequest
- (NSString)cacheKey;
@end

@implementation GEODirectionsRequest

- (NSString)cacheKey
{
  v3 = +[PersistenceManager sharedManager];
  waypointTypeds = [(GEODirectionsRequest *)self waypointTypeds];
  v5 = [v3 cacheKeyForWaypoints:waypointTypeds];

  return v5;
}

@end