@interface CloudBookmarkStoreUserDefaultsStorage
- (CloudBookmarkStoreUserDefaultsStorage)initWithUserDefaults:(id)a3 type:(int64_t)a4;
- (NSData)migrationStateEncodedRecordData;
- (id)migrationStateKey;
- (void)setMigrationStateEncodedRecordData:(id)a3;
@end

@implementation CloudBookmarkStoreUserDefaultsStorage

- (CloudBookmarkStoreUserDefaultsStorage)initWithUserDefaults:(id)a3 type:(int64_t)a4
{
  v7 = a3;
  v12.receiver = self;
  v12.super_class = CloudBookmarkStoreUserDefaultsStorage;
  v8 = [(CloudBookmarkStoreUserDefaultsStorage *)&v12 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_defaults, a3);
    v9->_type = a4;
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
  v3 = [(CloudBookmarkStoreUserDefaultsStorage *)self migrationStateKey];
  v4 = [(NSUserDefaults *)defaults dataForKey:v3];

  return v4;
}

- (void)setMigrationStateEncodedRecordData:(id)a3
{
  defaults = self->_defaults;
  v5 = a3;
  v6 = [(CloudBookmarkStoreUserDefaultsStorage *)self migrationStateKey];
  [(NSUserDefaults *)defaults setObject:v5 forKey:v6];
}

@end