@interface SQLiteConnectionOptions
- (BOOL)isInMemoryDatabase;
- (SQLiteConnectionOptions)initWithDatabasePath:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)initInMemoryDatabaseWithName:(id)a3;
@end

@implementation SQLiteConnectionOptions

- (SQLiteConnectionOptions)initWithDatabasePath:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SQLiteConnectionOptions;
  v5 = [(SQLiteConnectionOptions *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    databasePath = v5->_databasePath;
    v5->_databasePath = v6;

    [(SQLiteConnectionOptions *)v5 setCacheSizeWithNumberOfKilobytes:64];
  }

  return v5;
}

- (id)initInMemoryDatabaseWithName:(id)a3
{
  v4 = a3;
  v5 = +[SQLiteConnectionOptions inMemoryDatabaseFlag];
  v6 = +[SQLiteConnectionOptions inMemoryDatabaseSharedCacheFlag];
  v7 = [NSString stringWithFormat:@"file:%@?%@&%@", v4, v5, v6];

  v8 = [(SQLiteConnectionOptions *)self initWithDatabasePath:v7];
  return v8;
}

- (BOOL)isInMemoryDatabase
{
  databasePath = self->_databasePath;
  v3 = +[SQLiteConnectionOptions inMemoryDatabaseFlag];
  LOBYTE(databasePath) = [(NSString *)databasePath containsString:v3];

  return databasePath;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (v5)
  {
    v5[2] = self->_cacheSize;
    v7 = [(NSString *)self->_databasePath copyWithZone:a3];
    v8 = v6[3];
    v6[3] = v7;

    v9 = [(NSString *)self->_encryptionKeyId copyWithZone:a3];
    v10 = v6[4];
    v6[4] = v9;

    *(v6 + 8) = self->_readOnly;
  }

  return v6;
}

@end