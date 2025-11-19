@interface CSLPRFLiveActivitiesBacklightPrivacySettingsDataSource
- (CSLPRFLiveActivitiesBacklightPrivacySettingsDataSource)init;
- (CSLPRFLiveActivitiesBacklightPrivacySettingsDataSourceDelegate)delegate;
- (void)dealloc;
- (void)setPrivacyDuringAlwaysOnForLiveActivities:(BOOL)a3;
- (void)settingsModel:(id)a3 didAddSettings:(id)a4;
- (void)settingsModel:(id)a3 didChangeGlobalSettings:(id)a4;
- (void)settingsModel:(id)a3 didRemoveSettings:(id)a4;
- (void)settingsModel:(id)a3 didUpdateSettings:(id)a4;
@end

@implementation CSLPRFLiveActivitiesBacklightPrivacySettingsDataSource

- (CSLPRFLiveActivitiesBacklightPrivacySettingsDataSource)init
{
  v10.receiver = self;
  v10.super_class = CSLPRFLiveActivitiesBacklightPrivacySettingsDataSource;
  v2 = [(CSLPRFLiveActivitiesBacklightPrivacySettingsDataSource *)&v10 init];
  if (v2)
  {
    v3 = [CSLPRFPerApplicationSettingsModel alloc];
    v4 = [CSLPRFApplicationLibrary sharedLibraryForLocation:2];
    v5 = [v3 initWithApplicationLibrary:v4 perApplicationSettingsClass:objc_opt_class()];
    settingsModel = v2->_settingsModel;
    v2->_settingsModel = v5;

    v7 = [(CSLPRFPerApplicationSettingsModel *)v2->_settingsModel globalSettings];
    globalSettings = v2->_globalSettings;
    v2->_globalSettings = v7;
  }

  return v2;
}

- (void)dealloc
{
  [(CSLPRFLiveActivitiesBacklightPrivacySettingsDataSource *)self invalidate];
  v3.receiver = self;
  v3.super_class = CSLPRFLiveActivitiesBacklightPrivacySettingsDataSource;
  [(CSLPRFLiveActivitiesBacklightPrivacySettingsDataSource *)&v3 dealloc];
}

- (void)setPrivacyDuringAlwaysOnForLiveActivities:(BOOL)a3
{
  globalSettings = self->_globalSettings;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_2950;
  v4[3] = &unk_35560;
  v5 = a3;
  [(CSLPRFAppBacklightPrivacySettings *)globalSettings updateSettingsWithBlock:v4];
}

- (void)settingsModel:(id)a3 didAddSettings:(id)a4
{
  v5 = [(CSLPRFLiveActivitiesBacklightPrivacySettingsDataSource *)self delegate:a3];

  if (v5)
  {
    v6 = [(CSLPRFLiveActivitiesBacklightPrivacySettingsDataSource *)self delegate];
    [v6 dataSourceDidUpdate:self];
  }
}

- (void)settingsModel:(id)a3 didChangeGlobalSettings:(id)a4
{
  v5 = [(CSLPRFLiveActivitiesBacklightPrivacySettingsDataSource *)self delegate:a3];

  if (v5)
  {
    v6 = [(CSLPRFLiveActivitiesBacklightPrivacySettingsDataSource *)self delegate];
    [v6 dataSourceDidUpdate:self];
  }
}

- (void)settingsModel:(id)a3 didRemoveSettings:(id)a4
{
  v5 = [(CSLPRFLiveActivitiesBacklightPrivacySettingsDataSource *)self delegate:a3];

  if (v5)
  {
    v6 = [(CSLPRFLiveActivitiesBacklightPrivacySettingsDataSource *)self delegate];
    [v6 dataSourceDidUpdate:self];
  }
}

- (void)settingsModel:(id)a3 didUpdateSettings:(id)a4
{
  v5 = [(CSLPRFLiveActivitiesBacklightPrivacySettingsDataSource *)self delegate:a3];

  if (v5)
  {
    v6 = [(CSLPRFLiveActivitiesBacklightPrivacySettingsDataSource *)self delegate];
    [v6 dataSourceDidUpdate:self];
  }
}

- (CSLPRFLiveActivitiesBacklightPrivacySettingsDataSourceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end