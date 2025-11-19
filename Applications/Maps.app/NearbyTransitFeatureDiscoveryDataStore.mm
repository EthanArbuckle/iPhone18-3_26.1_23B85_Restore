@interface NearbyTransitFeatureDiscoveryDataStore
- (BOOL)hasUserEverAddedFavorite;
- (NearbyTransitFeatureDiscoveryDataStore)init;
- (NearbyTransitFeatureDiscoveryDataStore)initWithDictionary:(id)a3;
- (unint64_t)numberOfSessionsShown;
- (unint64_t)numberOfTimesDismissed;
- (void)_persistData;
- (void)_setInitialTipDisplayDate:(id)a3;
- (void)_setUserDismissedTipOnDate:(id)a3;
- (void)incrementSessionsShown;
- (void)setUserEverAddedFavorite:(BOOL)a3;
- (void)userDismissedTip;
@end

@implementation NearbyTransitFeatureDiscoveryDataStore

- (BOOL)hasUserEverAddedFavorite
{
  v2 = [(NSMutableDictionary *)self->_defaultsDictionary objectForKeyedSubscript:@"NearbyTransitFeatureDiscoveryHasUserEverAddedFavorite"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 BOOLValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (unint64_t)numberOfTimesDismissed
{
  v2 = [(NSMutableDictionary *)self->_defaultsDictionary objectForKeyedSubscript:@"NearbyTransitFeatureDiscoveryDismissedCount"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 unsignedIntValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (unint64_t)numberOfSessionsShown
{
  v2 = [(NSMutableDictionary *)self->_defaultsDictionary objectForKeyedSubscript:@"NearbyTransitFeatureDiscoveryNumberSessionsShown"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 unsignedIntValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
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

- (void)_setInitialTipDisplayDate:(id)a3
{
  v4 = a3;
  v5 = [(NearbyTransitFeatureDiscoveryDataStore *)self initialTipDisplayDate];
  if (v5)
  {
    v6 = sub_10005F62C();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Setting initial display date even though one exists", v7, 2u);
    }
  }

  if (([v4 isEqualToDate:v5] & 1) == 0)
  {
    [(NSMutableDictionary *)self->_defaultsDictionary setObject:v4 forKeyedSubscript:@"NearbyTransitFeatureDiscoveryInitialTipDisplayDate"];
    [(NearbyTransitFeatureDiscoveryDataStore *)self _persistData];
  }
}

- (void)incrementSessionsShown
{
  v3 = [(NearbyTransitFeatureDiscoveryDataStore *)self initialTipDisplayDate];

  if (!v3)
  {
    v4 = +[NSDate date];
    [(NSMutableDictionary *)self->_defaultsDictionary setObject:v4 forKeyedSubscript:@"NearbyTransitFeatureDiscoveryInitialTipDisplayDate"];
  }

  v5 = [NSNumber numberWithUnsignedInteger:[(NearbyTransitFeatureDiscoveryDataStore *)self numberOfSessionsShown]+ 1];
  [(NSMutableDictionary *)self->_defaultsDictionary setObject:v5 forKeyedSubscript:@"NearbyTransitFeatureDiscoveryNumberSessionsShown"];

  [(NearbyTransitFeatureDiscoveryDataStore *)self _persistData];
}

- (void)setUserEverAddedFavorite:(BOOL)a3
{
  v3 = a3;
  if ([(NearbyTransitFeatureDiscoveryDataStore *)self hasUserEverAddedFavorite]!= a3)
  {
    v5 = [NSNumber numberWithBool:v3];
    [(NSMutableDictionary *)self->_defaultsDictionary setObject:v5 forKeyedSubscript:@"NearbyTransitFeatureDiscoveryHasUserEverAddedFavorite"];

    [(NearbyTransitFeatureDiscoveryDataStore *)self _persistData];
  }
}

- (void)_setUserDismissedTipOnDate:(id)a3
{
  v4 = a3;
  v5 = [NSNumber numberWithUnsignedInteger:[(NearbyTransitFeatureDiscoveryDataStore *)self numberOfTimesDismissed]+ 1];
  [(NSMutableDictionary *)self->_defaultsDictionary setObject:v5 forKeyedSubscript:@"NearbyTransitFeatureDiscoveryDismissedCount"];

  [(NSMutableDictionary *)self->_defaultsDictionary setObject:v4 forKeyedSubscript:@"NearbyTransitFeatureDiscoveryLastDimissedDate"];

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

- (NearbyTransitFeatureDiscoveryDataStore)initWithDictionary:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = NearbyTransitFeatureDiscoveryDataStore;
  v5 = [(NearbyTransitFeatureDiscoveryDataStore *)&v9 init];
  if (v5)
  {
    v6 = [v4 mutableCopy];
    defaultsDictionary = v5->_defaultsDictionary;
    v5->_defaultsDictionary = v6;
  }

  return v5;
}

@end