@interface MapsSuggestionsNavdMapsAppLocationManager
+ (id)sharedLocationManager;
- (BOOL)hasLocationAccess;
- (MapsSuggestionsNavdMapsAppLocationManager)initWithName:(id)a3 queue:(id)a4;
@end

@implementation MapsSuggestionsNavdMapsAppLocationManager

- (BOOL)hasLocationAccess
{
  if ([CLLocationManager authorizationStatusForBundleIdentifier:MapsAppBundleId]- 3 > 1)
  {
    return 0;
  }

  v3 = [(MapsSuggestionsNavdLocationManager *)self locationManager];
  v4 = [v3 accuracyAuthorization] == 0;

  return v4;
}

- (MapsSuggestionsNavdMapsAppLocationManager)initWithName:(id)a3 queue:(id)a4
{
  v5.receiver = self;
  v5.super_class = MapsSuggestionsNavdMapsAppLocationManager;
  return [(MapsSuggestionsNavdLocationManager *)&v5 initWithName:a3 locationBundleID:MapsAppBundleId queue:a4];
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