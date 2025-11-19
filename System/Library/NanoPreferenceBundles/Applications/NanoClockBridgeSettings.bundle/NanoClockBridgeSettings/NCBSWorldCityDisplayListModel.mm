@interface NCBSWorldCityDisplayListModel
+ (id)sharedInstance;
- (NCBSWorldCityDisplayListModel)init;
- (id)_cachedCityAtIndex:(unint64_t)a3;
- (id)cityDisplayAbbreviationForIndex:(unint64_t)a3;
- (id)cityDisplayNameForIndex:(unint64_t)a3;
- (void)_fetchCitiesAndNotify:(BOOL)a3;
- (void)_notifyClientsOfChange;
- (void)dealloc;
@end

@implementation NCBSWorldCityDisplayListModel

+ (id)sharedInstance
{
  if (qword_11530 != -1)
  {
    sub_60D4();
  }

  v3 = qword_11528;

  return v3;
}

- (NCBSWorldCityDisplayListModel)init
{
  v6.receiver = self;
  v6.super_class = NCBSWorldCityDisplayListModel;
  v2 = [(NCBSWorldCityDisplayListModel *)&v6 init];
  if (v2)
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, handleMobileTimerPrefsChange, @"NanoMobileTimerWorldClockPreferencesChangedNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, handleMobileTimerPrefsChange, MobileTimerUserPreferencesAndLocalNotificationsChanged, v2, CFNotificationSuspensionBehaviorDeliverImmediately);
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, handleMobileTimerPrefsChange, MobileTimerUserPreferencesChanged, v2, CFNotificationSuspensionBehaviorDeliverImmediately);
    CFPreferencesAppSynchronize(MobileTimerAppID);
    v4 = +[NSNotificationCenter defaultCenter];
    [v4 addObserver:v2 selector:"handleAbbreviationStoreChange:" name:NTKCustomWorldCityAbbreviationsChangedNotification object:0];

    [(NCBSWorldCityDisplayListModel *)v2 _fetchCitiesAndNotify:0];
  }

  return v2;
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self];

  v5.receiver = self;
  v5.super_class = NCBSWorldCityDisplayListModel;
  [(NCBSWorldCityDisplayListModel *)&v5 dealloc];
}

- (id)cityDisplayNameForIndex:(unint64_t)a3
{
  v3 = [(NCBSWorldCityDisplayListModel *)self _cachedCityAtIndex:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 name];
  }

  else
  {
    v5 = &stru_C6C0;
  }

  return v5;
}

- (id)cityDisplayAbbreviationForIndex:(unint64_t)a3
{
  v3 = [(NCBSWorldCityDisplayListModel *)self _cachedCityAtIndex:a3];
  if (v3)
  {
    v4 = NTKWorldClockCityAbbreviation();
  }

  else
  {
    v4 = &stru_C6C0;
  }

  return v4;
}

- (void)_fetchCitiesAndNotify:(BOOL)a3
{
  v3 = a3;
  v7 = +[WorldClockManager sharedManager];
  [v7 loadCities];
  v5 = [v7 cities];
  cachedCities = self->_cachedCities;
  self->_cachedCities = v5;

  if (v3)
  {
    [(NCBSWorldCityDisplayListModel *)self _notifyClientsOfChange];
  }
}

- (id)_cachedCityAtIndex:(unint64_t)a3
{
  if ([(NSArray *)self->_cachedCities count]<= a3)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(NSArray *)self->_cachedCities objectAtIndexedSubscript:a3];
  }

  return v5;
}

- (void)_notifyClientsOfChange
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 postNotificationName:@"NCBSWorldCityDisplayListChangedNotification" object:self];
}

@end