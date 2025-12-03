@interface CloudBookmarkStoreUserDefaultsStorage
- (CloudBookmarkStoreUserDefaultsStorage)initWithUserDefaults:(id)defaults type:(int64_t)type;
- (NSData)migrationStateEncodedRecordData;
- (id)migrationStateKey;
- (void)setMigrationStateEncodedRecordData:(id)data;
@end

@implementation CloudBookmarkStoreUserDefaultsStorage

- (CloudBookmarkStoreUserDefaultsStorage)initWithUserDefaults:(id)defaults type:(int64_t)type
{
  defaultsCopy = defaults;
  v12.receiver = self;
  v12.super_class = CloudBookmarkStoreUserDefaultsStorage;
  v8 = [(CloudBookmarkStoreUserDefaultsStorage *)&v12 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_defaults, defaults);
    v9->_type = type;
    v10 = v9;
  }

  return v9;
}

- (id)migrationStateKey
{
  if (self->_type)
  {
    return @"TabGroupMigrationStateEncodedRecordData";
  }

  else
  {
    return @"MigrationStateEncodedRecordData";
  }
}

- (NSData)migrationStateEncodedRecordData
{
  defaults = self->_defaults;
  migrationStateKey = [(CloudBookmarkStoreUserDefaultsStorage *)self migrationStateKey];
  v4 = [(NSUserDefaults *)defaults dataForKey:migrationStateKey];

  return v4;
}

- (void)setMigrationStateEncodedRecordData:(id)data
{
  defaults = self->_defaults;
  dataCopy = data;
  migrationStateKey = [(CloudBookmarkStoreUserDefaultsStorage *)self migrationStateKey];
  [(NSUserDefaults *)defaults setObject:dataCopy forKey:migrationStateKey];
}

@end