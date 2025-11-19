@interface ASUSQLiteConnectionOptions
- (ASUSQLiteConnectionOptions)initWithDatabasePath:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation ASUSQLiteConnectionOptions

- (ASUSQLiteConnectionOptions)initWithDatabasePath:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = ASUSQLiteConnectionOptions;
  v5 = [(ASUSQLiteConnectionOptions *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    databasePath = v5->_databasePath;
    v5->_databasePath = v6;

    [(ASUSQLiteConnectionOptions *)v5 setCacheSizeWithNumberOfKilobytes:64];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (v5)
  {
    *(v5 + 16) = self->_cacheSize;
    v7 = [(NSString *)self->_databasePath copyWithZone:a3];
    v8 = *(v6 + 24);
    *(v6 + 24) = v7;

    v9 = [(NSString *)self->_encryptionKeyId copyWithZone:a3];
    v10 = *(v6 + 32);
    *(v6 + 32) = v9;

    *(v6 + 8) = self->_readOnly;
  }

  return v6;
}

@end