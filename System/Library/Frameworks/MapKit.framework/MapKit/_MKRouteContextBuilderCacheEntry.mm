@interface _MKRouteContextBuilderCacheEntry
- (_MKRouteContextBuilderCacheEntry)initWithRoutes:(id)routes;
@end

@implementation _MKRouteContextBuilderCacheEntry

- (_MKRouteContextBuilderCacheEntry)initWithRoutes:(id)routes
{
  routesCopy = routes;
  v9.receiver = self;
  v9.super_class = _MKRouteContextBuilderCacheEntry;
  v5 = [(_MKRouteContextBuilderCacheEntry *)&v9 init];
  if (v5)
  {
    v6 = [routesCopy _geo_compactMap:&__block_literal_global_10202];
    routeIDs = v5->_routeIDs;
    v5->_routeIDs = v6;
  }

  return v5;
}

@end