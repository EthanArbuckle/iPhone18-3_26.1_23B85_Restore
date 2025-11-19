@interface NavigationSessionConfiguration
- (NavigationSessionConfiguration)initWithStartNavigationDetails:(id)a3 routeCollection:(id)a4 traits:(id)a5 isETAOnlyMode:(BOOL)a6;
- (SharedTripSuggestionsPrefetchContext)sharedTripPrefetchContext;
- (id)description;
@end

@implementation NavigationSessionConfiguration

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [NSString stringWithFormat:@"<%@: %p, startNavigationDetails:%@, routeCollection:%@, isETAOnlyMode:%d>", v4, self, self->_startNavigationDetails, self->_routeCollection, self->_isETAOnlyMode];

  return v5;
}

- (SharedTripSuggestionsPrefetchContext)sharedTripPrefetchContext
{
  sharedTripPrefetchContext = self->_sharedTripPrefetchContext;
  if (!sharedTripPrefetchContext)
  {
    v4 = objc_alloc_init(SharedTripSuggestionsPrefetchContext);
    v5 = self->_sharedTripPrefetchContext;
    self->_sharedTripPrefetchContext = v4;

    sharedTripPrefetchContext = self->_sharedTripPrefetchContext;
  }

  return sharedTripPrefetchContext;
}

- (NavigationSessionConfiguration)initWithStartNavigationDetails:(id)a3 routeCollection:(id)a4 traits:(id)a5 isETAOnlyMode:(BOOL)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v19.receiver = self;
  v19.super_class = NavigationSessionConfiguration;
  v14 = [(NavigationSessionConfiguration *)&v19 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_startNavigationDetails, a3);
    objc_storeStrong(&v15->_routeCollection, a4);
    v16 = [v13 copy];
    traits = v15->_traits;
    v15->_traits = v16;

    v15->_isETAOnlyMode = a6;
  }

  return v15;
}

@end