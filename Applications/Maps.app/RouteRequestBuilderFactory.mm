@interface RouteRequestBuilderFactory
- (BOOL)useMetricSystem;
- (GEOCountryConfiguration)countryConfiguration;
- (GEOLocation)currentUserLocation;
- (NSString)voiceLanguageIdentifier;
- (RouteRequestBuilderFactory)initWithTransportTypeRequestInfoProvider:(id)a3 waypointSet:(id)a4;
- (id)_routeAttributesBuilders;
- (id)makeRouteRequestBuilder;
- (unint64_t)navigationMode;
- (void)setCountryConfiguration:(id)a3;
- (void)setVoiceLanguageIdentifier:(id)a3;
@end

@implementation RouteRequestBuilderFactory

- (id)_routeAttributesBuilders
{
  v3 = +[NSMutableArray array];
  v4 = [DefaultRouteAttributesBuilder alloc];
  v5 = [(RouteRequestBuilderFactory *)self waypointSet];
  v6 = [v5 destination];
  v7 = [(RouteRequestBuilderFactory *)self countryConfiguration];
  v8 = [(RouteRequestBuilderFactory *)self voiceLanguageIdentifier];
  v9 = [(DefaultRouteAttributesBuilder *)v4 initWithDestination:v6 countryConfiguration:v7 voiceLanguageIdentifier:v8 useMetricSystem:[(RouteRequestBuilderFactory *)self useMetricSystem]];

  [v3 addObject:v9];
  v10 = [(RouteRequestBuilderFactory *)self transportTypeRequestInfoProvider];
  v11 = [v10 makeRouteAttributesBuilderWithNavigationMode:{-[RouteRequestBuilderFactory navigationMode](self, "navigationMode")}];

  [v3 addObject:v11];

  return v3;
}

- (id)makeRouteRequestBuilder
{
  v16 = [RouteRequestBuilder alloc];
  v3 = [(RouteRequestBuilderFactory *)self waypointSet];
  v4 = [(RouteRequestBuilderFactory *)self transportTypeRequestInfoProvider];
  v5 = [v4 maximumRouteCount];
  v6 = [(RouteRequestBuilderFactory *)self _routeAttributesBuilders];
  v7 = [(RouteRequestBuilderFactory *)self currentUserLocation];
  v8 = [(RouteRequestBuilderFactory *)self initiator];
  v9 = [(RouteRequestBuilderFactory *)self traits];
  v10 = [(RouteRequestBuilderFactory *)self isResumingMultipointRoute];
  v11 = [(RouteRequestBuilderFactory *)self resumeRouteHandle];
  v12 = [(RouteRequestBuilderFactory *)self persistentData];
  LOBYTE(v15) = v10;
  v13 = [(RouteRequestBuilder *)v16 initWithWaypointSet:v3 maximumRouteCount:v5 routeAttributesBuilders:v6 currentUserLocation:v7 initiator:v8 traits:v9 isResumingMultipointRoute:v15 resumeRouteHandle:v11 persistentData:v12];

  return v13;
}

- (unint64_t)navigationMode
{
  v2 = [(RouteRequestBuilderFactory *)self waypointSet];
  v3 = [v2 origin];
  v4 = [v3 isCurrentLocation];

  return v4;
}

- (GEOLocation)currentUserLocation
{
  v2 = +[MKLocationManager sharedLocationManager];
  if ([v2 hasLocation] && (objc_msgSend(v2, "isLastLocationStale") & 1) == 0)
  {
    v3 = [v2 currentLocation];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSString)voiceLanguageIdentifier
{
  voiceLanguageIdentifier = self->_voiceLanguageIdentifier;
  if (voiceLanguageIdentifier)
  {
    v3 = voiceLanguageIdentifier;
  }

  else
  {
    v4 = +[MNNavigationService sharedService];
    v3 = [v4 currentVoiceLanguage];
  }

  return v3;
}

- (void)setVoiceLanguageIdentifier:(id)a3
{
  v4 = a3;
  voiceLanguageIdentifier = self->_voiceLanguageIdentifier;
  if (voiceLanguageIdentifier != v4)
  {
    v9 = v4;
    v6 = [(NSString *)voiceLanguageIdentifier isEqualToString:v4];
    v4 = v9;
    if ((v6 & 1) == 0)
    {
      v7 = [(NSString *)v9 copy];
      v8 = self->_voiceLanguageIdentifier;
      self->_voiceLanguageIdentifier = v7;

      v4 = v9;
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

- (void)setCountryConfiguration:(id)a3
{
  v5 = a3;
  countryConfiguration = self->_countryConfiguration;
  p_countryConfiguration = &self->_countryConfiguration;
  if (countryConfiguration != v5)
  {
    v8 = v5;
    objc_storeStrong(p_countryConfiguration, a3);
    v5 = v8;
  }
}

- (BOOL)useMetricSystem
{
  if (self->_useMetricSystemWasManuallySet)
  {
    return self->_useMetricSystem;
  }

  v3 = +[NSLocale currentLocale];
  v4 = [v3 _navigation_distanceUsesMetricSystem];

  return v4;
}

- (RouteRequestBuilderFactory)initWithTransportTypeRequestInfoProvider:(id)a3 waypointSet:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = RouteRequestBuilderFactory;
  v9 = [(RouteRequestBuilderFactory *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_transportTypeRequestInfoProvider, a3);
    objc_storeStrong(&v10->_waypointSet, a4);
  }

  return v10;
}

@end