@interface FRNewsSportsSyncSetting
+ (id)userDefaultSyncSetting;
+ (void)updateUserDefaultsSyncSetting:(id)setting;
- (FRNewsSportsSyncSetting)initWithSource:(unint64_t)source enabled:(BOOL)enabled dateModified:(id)modified;
- (id)description;
@end

@implementation FRNewsSportsSyncSetting

- (FRNewsSportsSyncSetting)initWithSource:(unint64_t)source enabled:(BOOL)enabled dateModified:(id)modified
{
  modifiedCopy = modified;
  v13.receiver = self;
  v13.super_class = FRNewsSportsSyncSetting;
  v10 = [(FRNewsSportsSyncSetting *)&v13 init];
  v11 = v10;
  if (v10)
  {
    v10->_source = source;
    v10->_enabled = enabled;
    objc_storeStrong(&v10->_dateModified, modified);
  }

  return v11;
}

- (id)description
{
  v3 = [NSString alloc];
  source = [(FRNewsSportsSyncSetting *)self source];
  v5 = @"userDefaults";
  if (source == 1)
  {
    v5 = @"watchlist";
  }

  v6 = v5;
  isEnabled = [(FRNewsSportsSyncSetting *)self isEnabled];
  dateModified = [(FRNewsSportsSyncSetting *)self dateModified];
  v9 = [v3 initWithFormat:@"{source=%@, enabled=%d, date=%@}", v6, isEnabled, dateModified];

  return v9;
}

+ (id)userDefaultSyncSetting
{
  v2 = NewsCoreUserDefaults();
  v3 = [v2 BOOLForKey:FCSportsFavoritesSyncSettingPreferenceKey];
  objc_opt_class();
  v4 = [v2 objectForKey:FCSportsFavoritesSyncSettingPreferenceDateModifiedKey];
  v5 = FCDynamicCast();

  v6 = [[FRNewsSportsSyncSetting alloc] initWithSource:0 enabled:v3 dateModified:v5];

  return v6;
}

+ (void)updateUserDefaultsSyncSetting:(id)setting
{
  settingCopy = setting;
  v6 = NewsCoreUserDefaults();
  isEnabled = [settingCopy isEnabled];
  [v6 setBool:isEnabled forKey:FCSportsFavoritesSyncSettingPreferenceKey];
  dateModified = [settingCopy dateModified];

  [v6 setObject:dateModified forKey:FCSportsFavoritesSyncSettingPreferenceDateModifiedKey];
}

@end