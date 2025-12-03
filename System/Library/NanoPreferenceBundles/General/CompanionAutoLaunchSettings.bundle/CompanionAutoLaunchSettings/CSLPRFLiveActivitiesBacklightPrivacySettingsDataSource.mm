@interface CSLPRFLiveActivitiesBacklightPrivacySettingsDataSource
- (CSLPRFLiveActivitiesBacklightPrivacySettingsDataSource)init;
- (CSLPRFLiveActivitiesBacklightPrivacySettingsDataSourceDelegate)delegate;
- (void)dealloc;
- (void)setPrivacyDuringAlwaysOnForLiveActivities:(BOOL)activities;
- (void)settingsModel:(id)model didAddSettings:(id)settings;
- (void)settingsModel:(id)model didChangeGlobalSettings:(id)settings;
- (void)settingsModel:(id)model didRemoveSettings:(id)settings;
- (void)settingsModel:(id)model didUpdateSettings:(id)settings;
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

    globalSettings = [(CSLPRFPerApplicationSettingsModel *)v2->_settingsModel globalSettings];
    globalSettings = v2->_globalSettings;
    v2->_globalSettings = globalSettings;
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

- (void)setPrivacyDuringAlwaysOnForLiveActivities:(BOOL)activities
{
  globalSettings = self->_globalSettings;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_2950;
  v4[3] = &unk_35560;
  activitiesCopy = activities;
  [(CSLPRFAppBacklightPrivacySettings *)globalSettings updateSettingsWithBlock:v4];
}

- (void)settingsModel:(id)model didAddSettings:(id)settings
{
  v5 = [(CSLPRFLiveActivitiesBacklightPrivacySettingsDataSource *)self delegate:model];

  if (v5)
  {
    delegate = [(CSLPRFLiveActivitiesBacklightPrivacySettingsDataSource *)self delegate];
    [delegate dataSourceDidUpdate:self];
  }
}

- (void)settingsModel:(id)model didChangeGlobalSettings:(id)settings
{
  v5 = [(CSLPRFLiveActivitiesBacklightPrivacySettingsDataSource *)self delegate:model];

  if (v5)
  {
    delegate = [(CSLPRFLiveActivitiesBacklightPrivacySettingsDataSource *)self delegate];
    [delegate dataSourceDidUpdate:self];
  }
}

- (void)settingsModel:(id)model didRemoveSettings:(id)settings
{
  v5 = [(CSLPRFLiveActivitiesBacklightPrivacySettingsDataSource *)self delegate:model];

  if (v5)
  {
    delegate = [(CSLPRFLiveActivitiesBacklightPrivacySettingsDataSource *)self delegate];
    [delegate dataSourceDidUpdate:self];
  }
}

- (void)settingsModel:(id)model didUpdateSettings:(id)settings
{
  v5 = [(CSLPRFLiveActivitiesBacklightPrivacySettingsDataSource *)self delegate:model];

  if (v5)
  {
    delegate = [(CSLPRFLiveActivitiesBacklightPrivacySettingsDataSource *)self delegate];
    [delegate dataSourceDidUpdate:self];
  }
}

- (CSLPRFLiveActivitiesBacklightPrivacySettingsDataSourceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end