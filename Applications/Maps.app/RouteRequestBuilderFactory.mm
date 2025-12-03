@interface RouteRequestBuilderFactory
- (BOOL)useMetricSystem;
- (GEOCountryConfiguration)countryConfiguration;
- (GEOLocation)currentUserLocation;
- (NSString)voiceLanguageIdentifier;
- (RouteRequestBuilderFactory)initWithTransportTypeRequestInfoProvider:(id)provider waypointSet:(id)set;
- (id)_routeAttributesBuilders;
- (id)makeRouteRequestBuilder;
- (unint64_t)navigationMode;
- (void)setCountryConfiguration:(id)configuration;
- (void)setVoiceLanguageIdentifier:(id)identifier;
@end

@implementation RouteRequestBuilderFactory

- (id)_routeAttributesBuilders
{
  v3 = +[NSMutableArray array];
  v4 = [DefaultRouteAttributesBuilder alloc];
  waypointSet = [(RouteRequestBuilderFactory *)self waypointSet];
  destination = [waypointSet destination];
  countryConfiguration = [(RouteRequestBuilderFactory *)self countryConfiguration];
  voiceLanguageIdentifier = [(RouteRequestBuilderFactory *)self voiceLanguageIdentifier];
  v9 = [(DefaultRouteAttributesBuilder *)v4 initWithDestination:destination countryConfiguration:countryConfiguration voiceLanguageIdentifier:voiceLanguageIdentifier useMetricSystem:[(RouteRequestBuilderFactory *)self useMetricSystem]];

  [v3 addObject:v9];
  transportTypeRequestInfoProvider = [(RouteRequestBuilderFactory *)self transportTypeRequestInfoProvider];
  v11 = [transportTypeRequestInfoProvider makeRouteAttributesBuilderWithNavigationMode:{-[RouteRequestBuilderFactory navigationMode](self, "navigationMode")}];

  [v3 addObject:v11];

  return v3;
}

- (id)makeRouteRequestBuilder
{
  v16 = [RouteRequestBuilder alloc];
  waypointSet = [(RouteRequestBuilderFactory *)self waypointSet];
  transportTypeRequestInfoProvider = [(RouteRequestBuilderFactory *)self transportTypeRequestInfoProvider];
  maximumRouteCount = [transportTypeRequestInfoProvider maximumRouteCount];
  _routeAttributesBuilders = [(RouteRequestBuilderFactory *)self _routeAttributesBuilders];
  currentUserLocation = [(RouteRequestBuilderFactory *)self currentUserLocation];
  initiator = [(RouteRequestBuilderFactory *)self initiator];
  traits = [(RouteRequestBuilderFactory *)self traits];
  isResumingMultipointRoute = [(RouteRequestBuilderFactory *)self isResumingMultipointRoute];
  resumeRouteHandle = [(RouteRequestBuilderFactory *)self resumeRouteHandle];
  persistentData = [(RouteRequestBuilderFactory *)self persistentData];
  LOBYTE(v15) = isResumingMultipointRoute;
  v13 = [(RouteRequestBuilder *)v16 initWithWaypointSet:waypointSet maximumRouteCount:maximumRouteCount routeAttributesBuilders:_routeAttributesBuilders currentUserLocation:currentUserLocation initiator:initiator traits:traits isResumingMultipointRoute:v15 resumeRouteHandle:resumeRouteHandle persistentData:persistentData];

  return v13;
}

- (unint64_t)navigationMode
{
  waypointSet = [(RouteRequestBuilderFactory *)self waypointSet];
  origin = [waypointSet origin];
  isCurrentLocation = [origin isCurrentLocation];

  return isCurrentLocation;
}

- (GEOLocation)currentUserLocation
{
  v2 = +[MKLocationManager sharedLocationManager];
  if ([v2 hasLocation] && (objc_msgSend(v2, "isLastLocationStale") & 1) == 0)
  {
    currentLocation = [v2 currentLocation];
  }

  else
  {
    currentLocation = 0;
  }

  return currentLocation;
}

- (NSString)voiceLanguageIdentifier
{
  voiceLanguageIdentifier = self->_voiceLanguageIdentifier;
  if (voiceLanguageIdentifier)
  {
    currentVoiceLanguage = voiceLanguageIdentifier;
  }

  else
  {
    v4 = +[MNNavigationService sharedService];
    currentVoiceLanguage = [v4 currentVoiceLanguage];
  }

  return currentVoiceLanguage;
}

- (void)setVoiceLanguageIdentifier:(id)identifier
{
  identifierCopy = identifier;
  voiceLanguageIdentifier = self->_voiceLanguageIdentifier;
  if (voiceLanguageIdentifier != identifierCopy)
  {
    v9 = identifierCopy;
    v6 = [(NSString *)voiceLanguageIdentifier isEqualToString:identifierCopy];
    identifierCopy = v9;
    if ((v6 & 1) == 0)
    {
      v7 = [(NSString *)v9 copy];
      v8 = self->_voiceLanguageIdentifier;
      self->_voiceLanguageIdentifier = v7;

      identifierCopy = v9;
    }
  }
}

- (GEOCountryConfiguration)countryConfiguration
{
  countryConfiguration = self->_countryConfiguration;
  if (countryConfiguration)
  {
    v3 = countryConfiguration;
  }

  else
  {
    v3 = +[GEOCountryConfiguration sharedConfiguration];
  }

  return v3;
}

- (void)setCountryConfiguration:(id)configuration
{
  configurationCopy = configuration;
  countryConfiguration = self->_countryConfiguration;
  p_countryConfiguration = &self->_countryConfiguration;
  if (countryConfiguration != configurationCopy)
  {
    v8 = configurationCopy;
    objc_storeStrong(p_countryConfiguration, configuration);
    configurationCopy = v8;
  }
}

- (BOOL)useMetricSystem
{
  if (self->_useMetricSystemWasManuallySet)
  {
    return self->_useMetricSystem;
  }

  v3 = +[NSLocale currentLocale];
  _navigation_distanceUsesMetricSystem = [v3 _navigation_distanceUsesMetricSystem];

  return _navigation_distanceUsesMetricSystem;
}

- (RouteRequestBuilderFactory)initWithTransportTypeRequestInfoProvider:(id)provider waypointSet:(id)set
{
  providerCopy = provider;
  setCopy = set;
  v12.receiver = self;
  v12.super_class = RouteRequestBuilderFactory;
  v9 = [(RouteRequestBuilderFactory *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_transportTypeRequestInfoProvider, provider);
    objc_storeStrong(&v10->_waypointSet, set);
  }

  return v10;
}

@end