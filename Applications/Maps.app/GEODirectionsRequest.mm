@interface GEODirectionsRequest
- (NSString)cacheKey;
@end

@implementation GEODirectionsRequest

- (NSString)cacheKey
{
  v3 = +[PersistenceManager sharedManager];
  v4 = [(GEODirectionsRequest *)self waypointTypeds];
  v5 = [v3 cacheKeyForWaypoints:v4];

  return v5;
}

@end