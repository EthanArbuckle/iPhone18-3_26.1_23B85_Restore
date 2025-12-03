@interface WatchSyncedPreferences
- (BOOL)isEqual:(id)equal;
- (NSArray)writtenDefaults;
- (WatchSyncedPreferences)initWithCopy:(id)copy;
- (WatchSyncedPreferences)initWithDefaults:(id)defaults;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)_forEachKeyAndValueWithBlock:(id)block;
- (void)synchronize;
@end

@implementation WatchSyncedPreferences

- (WatchSyncedPreferences)initWithDefaults:(id)defaults
{
  defaultsCopy = defaults;
  v10.receiver = self;
  v10.super_class = WatchSyncedPreferences;
  v6 = [(WatchSyncedPreferences *)&v10 init];
  if (v6)
  {
    v7 = objc_opt_new();
    manager = v6->_manager;
    v6->_manager = v7;

    objc_storeStrong(&v6->_defaults, defaults);
    [(WatchSyncedPreferences *)v6 loadValuesFromDefaults];
  }

  return v6;
}

- (WatchSyncedPreferences)initWithCopy:(id)copy
{
  copyCopy = copy;
  v9.receiver = self;
  v9.super_class = WatchSyncedPreferences;
  v5 = [(WatchSyncedPreferences *)&v9 init];
  if (v5)
  {
    v6 = objc_opt_new();
    manager = v5->_manager;
    v5->_manager = v6;

    objc_storeStrong(&v5->_defaults, copyCopy[2]);
  }

  return v5;
}

- (NSArray)writtenDefaults
{
  defaults = [(WatchSyncedPreferences *)self defaults];
  v5 = defaults;
  v3 = [NSArray arrayWithObjects:&v5 count:1];

  return v3;
}

- (void)_forEachKeyAndValueWithBlock:(id)block
{
  blockCopy = block;
  _keys = [(WatchSyncedPreferences *)self _keys];
  _values = [(WatchSyncedPreferences *)self _values];
  v6 = [_keys count];
  v7 = [_values count];
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
      v10 = [_keys objectAtIndexedSubscript:v9];
      v11 = [_values objectAtIndexedSubscript:v9];
      blockCopy[2](blockCopy, v10, v11, v9);

      ++v9;
      v12 = [_keys count];
      v13 = [_values count];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      _keys = [(WatchSyncedPreferences *)v5 _keys];
      _values = [(WatchSyncedPreferences *)v5 _values];
      _keys2 = [(WatchSyncedPreferences *)self _keys];
      v9 = [_keys2 count];
      if (v9 == [_keys count])
      {
        _values2 = [(WatchSyncedPreferences *)self _values];
        v11 = [_values2 count];
        v12 = [_values count];

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
          v16 = _keys;
          v17 = _values;
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
  _keys = [(WatchSyncedPreferences *)self _keys];
  v4 = [_keys hash];
  _values = [(WatchSyncedPreferences *)self _values];
  v6 = [_values hash];

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
  writtenDefaults = [(WatchSyncedPreferences *)self writtenDefaults];
  v4 = MAPSGetPreferencesSyncLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    selfCopy = self;
    v13 = 2114;
    v14 = writtenDefaults;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_INFO, "Saving %@ to %{public}@", buf, 0x16u);
  }

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1B640;
  v9[3] = &unk_7FE40;
  v10 = writtenDefaults;
  v5 = writtenDefaults;
  [(WatchSyncedPreferences *)self _forEachKeyAndValueWithBlock:v9];
  manager = self->_manager;
  _keys = [(WatchSyncedPreferences *)self _keys];
  v8 = [NSSet setWithArray:_keys];
  [(NPSManager *)manager synchronizeUserDefaultsDomain:@"com.apple.Maps" keys:v8 container:@"com.apple.Maps"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());

  return [v4 initWithCopy:self];
}

@end