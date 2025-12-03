@interface MapsSuggestionsNavdMapsAppLocationManager
+ (id)sharedLocationManager;
- (BOOL)hasLocationAccess;
- (MapsSuggestionsNavdMapsAppLocationManager)initWithName:(id)name queue:(id)queue;
@end

@implementation MapsSuggestionsNavdMapsAppLocationManager

- (BOOL)hasLocationAccess
{
  if ([CLLocationManager authorizationStatusForBundleIdentifier:MapsAppBundleId]- 3 > 1)
  {
    return 0;
  }

  locationManager = [(MapsSuggestionsNavdLocationManager *)self locationManager];
  v4 = [locationManager accuracyAuthorization] == 0;

  return v4;
}

- (MapsSuggestionsNavdMapsAppLocationManager)initWithName:(id)name queue:(id)queue
{
  v5.receiver = self;
  v5.super_class = MapsSuggestionsNavdMapsAppLocationManager;
  return [(MapsSuggestionsNavdLocationManager *)&v5 initWithName:name locationBundleID:MapsAppBundleId queue:queue];
}

+ (id)sharedLocationManager
{
  if (qword_10195E160 != -1)
  {
    dispatch_once(&qword_10195E160, &stru_101631D30);
  }

  v3 = qword_10195E158;

  return v3;
}

@end