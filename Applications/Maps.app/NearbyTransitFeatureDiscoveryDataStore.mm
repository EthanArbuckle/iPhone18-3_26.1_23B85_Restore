@interface NearbyTransitFeatureDiscoveryDataStore
- (BOOL)hasUserEverAddedFavorite;
- (NearbyTransitFeatureDiscoveryDataStore)init;
- (NearbyTransitFeatureDiscoveryDataStore)initWithDictionary:(id)dictionary;
- (unint64_t)numberOfSessionsShown;
- (unint64_t)numberOfTimesDismissed;
- (void)_persistData;
- (void)_setInitialTipDisplayDate:(id)date;
- (void)_setUserDismissedTipOnDate:(id)date;
- (void)incrementSessionsShown;
- (void)setUserEverAddedFavorite:(BOOL)favorite;
- (void)userDismissedTip;
@end

@implementation NearbyTransitFeatureDiscoveryDataStore

- (BOOL)hasUserEverAddedFavorite
{
  v2 = [(NSMutableDictionary *)self->_defaultsDictionary objectForKeyedSubscript:@"NearbyTransitFeatureDiscoveryHasUserEverAddedFavorite"];
  v3 = v2;
  if (v2)
  {
    bOOLValue = [v2 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (unint64_t)numberOfTimesDismissed
{
  v2 = [(NSMutableDictionary *)self->_defaultsDictionary objectForKeyedSubscript:@"NearbyTransitFeatureDiscoveryDismissedCount"];
  v3 = v2;
  if (v2)
  {
    unsignedIntValue = [v2 unsignedIntValue];
  }

  else
  {
    unsignedIntValue = 0;
  }

  return unsignedIntValue;
}

- (unint64_t)numberOfSessionsShown
{
  v2 = [(NSMutableDictionary *)self->_defaultsDictionary objectForKeyedSubscript:@"NearbyTransitFeatureDiscoveryNumberSessionsShown"];
  v3 = v2;
  if (v2)
  {
    unsignedIntValue = [v2 unsignedIntValue];
  }

  else
  {
    unsignedIntValue = 0;
  }

  return unsignedIntValue;
}

- (NearbyTransitFeatureDiscoveryDataStore)init
{
  v3 = +[NSUserDefaults standardUserDefaults];
  v4 = [v3 dictionaryForKey:@"__internal__NearbyTransitTipInfoKey"];

  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = &__NSDictionary0__struct;
  }

  v6 = [(NearbyTransitFeatureDiscoveryDataStore *)self initWithDictionary:v5];

  return v6;
}

- (void)_setInitialTipDisplayDate:(id)date
{
  dateCopy = date;
  initialTipDisplayDate = [(NearbyTransitFeatureDiscoveryDataStore *)self initialTipDisplayDate];
  if (initialTipDisplayDate)
  {
    v6 = sub_10005F62C();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Setting initial display date even though one exists", v7, 2u);
    }
  }

  if (([dateCopy isEqualToDate:initialTipDisplayDate] & 1) == 0)
  {
    [(NSMutableDictionary *)self->_defaultsDictionary setObject:dateCopy forKeyedSubscript:@"NearbyTransitFeatureDiscoveryInitialTipDisplayDate"];
    [(NearbyTransitFeatureDiscoveryDataStore *)self _persistData];
  }
}

- (void)incrementSessionsShown
{
  initialTipDisplayDate = [(NearbyTransitFeatureDiscoveryDataStore *)self initialTipDisplayDate];

  if (!initialTipDisplayDate)
  {
    v4 = +[NSDate date];
    [(NSMutableDictionary *)self->_defaultsDictionary setObject:v4 forKeyedSubscript:@"NearbyTransitFeatureDiscoveryInitialTipDisplayDate"];
  }

  v5 = [NSNumber numberWithUnsignedInteger:[(NearbyTransitFeatureDiscoveryDataStore *)self numberOfSessionsShown]+ 1];
  [(NSMutableDictionary *)self->_defaultsDictionary setObject:v5 forKeyedSubscript:@"NearbyTransitFeatureDiscoveryNumberSessionsShown"];

  [(NearbyTransitFeatureDiscoveryDataStore *)self _persistData];
}

- (void)setUserEverAddedFavorite:(BOOL)favorite
{
  favoriteCopy = favorite;
  if ([(NearbyTransitFeatureDiscoveryDataStore *)self hasUserEverAddedFavorite]!= favorite)
  {
    v5 = [NSNumber numberWithBool:favoriteCopy];
    [(NSMutableDictionary *)self->_defaultsDictionary setObject:v5 forKeyedSubscript:@"NearbyTransitFeatureDiscoveryHasUserEverAddedFavorite"];

    [(NearbyTransitFeatureDiscoveryDataStore *)self _persistData];
  }
}

- (void)_setUserDismissedTipOnDate:(id)date
{
  dateCopy = date;
  v5 = [NSNumber numberWithUnsignedInteger:[(NearbyTransitFeatureDiscoveryDataStore *)self numberOfTimesDismissed]+ 1];
  [(NSMutableDictionary *)self->_defaultsDictionary setObject:v5 forKeyedSubscript:@"NearbyTransitFeatureDiscoveryDismissedCount"];

  [(NSMutableDictionary *)self->_defaultsDictionary setObject:dateCopy forKeyedSubscript:@"NearbyTransitFeatureDiscoveryLastDimissedDate"];

  [(NearbyTransitFeatureDiscoveryDataStore *)self _persistData];
}

- (void)userDismissedTip
{
  v3 = +[NSDate date];
  [(NearbyTransitFeatureDiscoveryDataStore *)self _setUserDismissedTipOnDate:v3];
}

- (void)_persistData
{
  v3 = +[NSUserDefaults standardUserDefaults];
  [v3 setObject:self->_defaultsDictionary forKey:@"__internal__NearbyTransitTipInfoKey"];
}

- (NearbyTransitFeatureDiscoveryDataStore)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v9.receiver = self;
  v9.super_class = NearbyTransitFeatureDiscoveryDataStore;
  v5 = [(NearbyTransitFeatureDiscoveryDataStore *)&v9 init];
  if (v5)
  {
    v6 = [dictionaryCopy mutableCopy];
    defaultsDictionary = v5->_defaultsDictionary;
    v5->_defaultsDictionary = v6;
  }

  return v5;
}

@end