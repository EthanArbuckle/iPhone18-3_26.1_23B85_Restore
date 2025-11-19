@interface WatchSyncedPreferences
- (BOOL)isEqual:(id)a3;
- (NSArray)writtenDefaults;
- (WatchSyncedPreferences)initWithCopy:(id)a3;
- (WatchSyncedPreferences)initWithDefaults:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)_forEachKeyAndValueWithBlock:(id)a3;
- (void)synchronize;
@end

@implementation WatchSyncedPreferences

- (WatchSyncedPreferences)initWithDefaults:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = WatchSyncedPreferences;
  v6 = [(WatchSyncedPreferences *)&v10 init];
  if (v6)
  {
    v7 = objc_opt_new();
    manager = v6->_manager;
    v6->_manager = v7;

    objc_storeStrong(&v6->_defaults, a3);
    [(WatchSyncedPreferences *)v6 loadValuesFromDefaults];
  }

  return v6;
}

- (WatchSyncedPreferences)initWithCopy:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = WatchSyncedPreferences;
  v5 = [(WatchSyncedPreferences *)&v9 init];
  if (v5)
  {
    v6 = objc_opt_new();
    manager = v5->_manager;
    v5->_manager = v6;

    objc_storeStrong(&v5->_defaults, v4[2]);
  }

  return v5;
}

- (NSArray)writtenDefaults
{
  v2 = [(WatchSyncedPreferences *)self defaults];
  v5 = v2;
  v3 = [NSArray arrayWithObjects:&v5 count:1];

  return v3;
}

- (void)_forEachKeyAndValueWithBlock:(id)a3
{
  v15 = a3;
  v4 = [(WatchSyncedPreferences *)self _keys];
  v5 = [(WatchSyncedPreferences *)self _values];
  v6 = [v4 count];
  v7 = [v5 count];
  if (v6 >= v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = v6;
  }

  if (v8)
  {
    v9 = 0;
    do
    {
      v10 = [v4 objectAtIndexedSubscript:v9];
      v11 = [v5 objectAtIndexedSubscript:v9];
      v15[2](v15, v10, v11, v9);

      ++v9;
      v12 = [v4 count];
      v13 = [v5 count];
      if (v12 >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = v12;
      }
    }

    while (v9 < v14);
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(WatchSyncedPreferences *)v5 _keys];
      v7 = [(WatchSyncedPreferences *)v5 _values];
      v8 = [(WatchSyncedPreferences *)self _keys];
      v9 = [v8 count];
      if (v9 == [v6 count])
      {
        v10 = [(WatchSyncedPreferences *)self _values];
        v11 = [v10 count];
        v12 = [v7 count];

        if (v11 == v12)
        {
          v19 = 0;
          v20 = &v19;
          v21 = 0x2020000000;
          v22 = 1;
          v15[0] = _NSConcreteStackBlock;
          v15[1] = 3221225472;
          v15[2] = sub_1B1F4;
          v15[3] = &unk_7FE18;
          v18 = &v19;
          v16 = v6;
          v17 = v7;
          [(WatchSyncedPreferences *)self _forEachKeyAndValueWithBlock:v15];
          v13 = *(v20 + 24);

          _Block_object_dispose(&v19, 8);
LABEL_10:

          goto LABEL_11;
        }
      }

      else
      {
      }

      v13 = 0;
      goto LABEL_10;
    }

    v13 = 0;
  }

LABEL_11:

  return v13 & 1;
}

- (unint64_t)hash
{
  v3 = [(WatchSyncedPreferences *)self _keys];
  v4 = [v3 hash];
  v5 = [(WatchSyncedPreferences *)self _values];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (id)description
{
  v8 = _NSConcreteStackBlock;
  v9 = 3221225472;
  v10 = sub_1B458;
  v11 = &unk_7FE40;
  v12 = objc_opt_new();
  v3 = v12;
  [(WatchSyncedPreferences *)self _forEachKeyAndValueWithBlock:&v8];
  v4 = objc_opt_class();
  v5 = [v3 componentsJoinedByString:{@", "}];
  v6 = [NSString stringWithFormat:@"<%@: %p> %@", v4, self, v5, v8, v9, v10, v11];

  return v6;
}

- (void)synchronize
{
  v3 = [(WatchSyncedPreferences *)self writtenDefaults];
  v4 = MAPSGetPreferencesSyncLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v12 = self;
    v13 = 2114;
    v14 = v3;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_INFO, "Saving %@ to %{public}@", buf, 0x16u);
  }

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1B640;
  v9[3] = &unk_7FE40;
  v10 = v3;
  v5 = v3;
  [(WatchSyncedPreferences *)self _forEachKeyAndValueWithBlock:v9];
  manager = self->_manager;
  v7 = [(WatchSyncedPreferences *)self _keys];
  v8 = [NSSet setWithArray:v7];
  [(NPSManager *)manager synchronizeUserDefaultsDomain:@"com.apple.Maps" keys:v8 container:@"com.apple.Maps"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());

  return [v4 initWithCopy:self];
}

@end