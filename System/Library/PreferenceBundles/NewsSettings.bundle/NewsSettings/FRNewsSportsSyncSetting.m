@interface FRNewsSportsSyncSetting
+ (id)userDefaultSyncSetting;
+ (void)updateUserDefaultsSyncSetting:(id)a3;
- (FRNewsSportsSyncSetting)initWithSource:(unint64_t)a3 enabled:(BOOL)a4 dateModified:(id)a5;
- (id)description;
@end

@implementation FRNewsSportsSyncSetting

- (FRNewsSportsSyncSetting)initWithSource:(unint64_t)a3 enabled:(BOOL)a4 dateModified:(id)a5
{
  v9 = a5;
  v13.receiver = self;
  v13.super_class = FRNewsSportsSyncSetting;
  v10 = [(FRNewsSportsSyncSetting *)&v13 init];
  v11 = v10;
  if (v10)
  {
    v10->_source = a3;
    v10->_enabled = a4;
    objc_storeStrong(&v10->_dateModified, a5);
  }

  return v11;
}

- (id)description
{
  v3 = [NSString alloc];
  v4 = [(FRNewsSportsSyncSetting *)self source];
  v5 = @"userDefaults";
  if (v4 == 1)
  {
    v5 = @"watchlist";
  }

  v6 = v5;
  v7 = [(FRNewsSportsSyncSetting *)self isEnabled];
  v8 = [(FRNewsSportsSyncSetting *)self dateModified];
  v9 = [v3 initWithFormat:@"{source=%@, enabled=%d, date=%@}", v6, v7, v8];

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

+ (void)updateUserDefaultsSyncSetting:(id)a3
{
  v3 = a3;
  v6 = NewsCoreUserDefaults();
  v4 = [v3 isEnabled];
  [v6 setBool:v4 forKey:FCSportsFavoritesSyncSettingPreferenceKey];
  v5 = [v3 dateModified];

  [v6 setObject:v5 forKey:FCSportsFavoritesSyncSettingPreferenceDateModifiedKey];
}

@end