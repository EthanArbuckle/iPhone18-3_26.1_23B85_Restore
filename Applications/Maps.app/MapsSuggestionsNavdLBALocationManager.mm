@interface MapsSuggestionsNavdLBALocationManager
+ (id)sharedLocationManager;
- (BOOL)hasLocationAccess;
- (MapsSuggestionsNavdLBALocationManager)initWithName:(id)name queue:(id)queue;
@end

@implementation MapsSuggestionsNavdLBALocationManager

- (BOOL)hasLocationAccess
{
  v3 = [CLLocationManager authorizationStatusForBundlePath:@"/System/Library/LocationBundles/NavdLocationBundleiOS.bundle"]- 5;
  v4 = [CLLocationManager authorizationStatusForBundleIdentifier:MapsAppBundleId]- 5;
  if (v3 < 0xFFFFFFFE || v4 < 0xFFFFFFFE)
  {
    return 0;
  }

  locationManager = [(MapsSuggestionsNavdLocationManager *)self locationManager];
  v6 = [locationManager accuracyAuthorization] == 0;

  return v6;
}

- (MapsSuggestionsNavdLBALocationManager)initWithName:(id)name queue:(id)queue
{
  v5.receiver = self;
  v5.super_class = MapsSuggestionsNavdLBALocationManager;
  return [(MapsSuggestionsNavdLocationManager *)&v5 initWithName:name locationBundlePath:@"/System/Library/LocationBundles/NavdLocationBundleiOS.bundle" queue:queue];
}

+ (id)sharedLocationManager
{
  if (qword_10195EA60 != -1)
  {
    dispatch_once(&qword_10195EA60, &stru_10164D238);
  }

  v3 = qword_10195EA58;

  return v3;
}

@end