@interface _MKRouteContextBuilderCacheEntry
- (_MKRouteContextBuilderCacheEntry)initWithRoutes:(id)a3;
@end

@implementation _MKRouteContextBuilderCacheEntry

- (_MKRouteContextBuilderCacheEntry)initWithRoutes:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = _MKRouteContextBuilderCacheEntry;
  v5 = [(_MKRouteContextBuilderCacheEntry *)&v9 init];
  if (v5)
  {
    v6 = [v4 _geo_compactMap:&__block_literal_global_10202];
    routeIDs = v5->_routeIDs;
    v5->_routeIDs = v6;
  }

  return v5;
}

@end