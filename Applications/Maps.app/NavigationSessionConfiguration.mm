@interface NavigationSessionConfiguration
- (NavigationSessionConfiguration)initWithStartNavigationDetails:(id)details routeCollection:(id)collection traits:(id)traits isETAOnlyMode:(BOOL)mode;
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

- (NavigationSessionConfiguration)initWithStartNavigationDetails:(id)details routeCollection:(id)collection traits:(id)traits isETAOnlyMode:(BOOL)mode
{
  detailsCopy = details;
  collectionCopy = collection;
  traitsCopy = traits;
  v19.receiver = self;
  v19.super_class = NavigationSessionConfiguration;
  v14 = [(NavigationSessionConfiguration *)&v19 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_startNavigationDetails, details);
    objc_storeStrong(&v15->_routeCollection, collection);
    v16 = [traitsCopy copy];
    traits = v15->_traits;
    v15->_traits = v16;

    v15->_isETAOnlyMode = mode;
  }

  return v15;
}

@end