@interface MapsOfflineHelper
+ (MapsOfflineHelper)sharedHelper;
- (BOOL)offlineServiceRunning;
- (id)init_internal;
- (void)_updateForcedOffline;
- (void)startServiceIfEnabled;
- (void)valueChangedForGEOConfigKey:(id)a3;
@end

@implementation MapsOfflineHelper

+ (MapsOfflineHelper)sharedHelper
{
  if (qword_10195CD48 != -1)
  {
    dispatch_once(&qword_10195CD48, &stru_101624230);
  }

  v3 = qword_10195CD40;

  return v3;
}

- (id)init_internal
{
  v7.receiver = self;
  v7.super_class = MapsOfflineHelper;
  v2 = [(MapsOfflineHelper *)&v7 init];
  if (v2)
  {
    v3 = geo_isolater_create();
    completionIsolater = v2->_completionIsolater;
    v2->_completionIsolater = v3;

    _GEOConfigAddDelegateListenerForKey();
    [(MapsOfflineHelper *)v2 _updateForcedOffline];
    v5 = v2;
  }

  return v2;
}

- (void)_updateForcedOffline
{
  BOOL = GEOConfigGetBOOL();
  v3 = +[GEOOfflineService shared];
  v4 = v3;
  if (BOOL)
  {
    [v3 setStateForcedOffline];
  }

  else
  {
    [v3 setStateAuto];
  }
}

- (void)startServiceIfEnabled
{
  v2 = +[GEOOfflineService shared];
  [v2 startServiceIfEnabled];
}

- (void)valueChangedForGEOConfigKey:(id)a3
{
  if (a3.var0 == 569 && a3.var1 == &unk_101642C20)
  {
    [(MapsOfflineHelper *)self _updateForcedOffline];
  }
}

- (BOOL)offlineServiceRunning
{
  v2 = +[GEOOfflineService shared];
  v3 = [v2 isUsingOffline];

  return v3;
}

@end