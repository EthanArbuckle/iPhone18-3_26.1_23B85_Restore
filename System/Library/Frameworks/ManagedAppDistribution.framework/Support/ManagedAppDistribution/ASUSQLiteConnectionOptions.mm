@interface ASUSQLiteConnectionOptions
- (ASUSQLiteConnectionOptions)initWithDatabasePath:(id)path;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation ASUSQLiteConnectionOptions

- (ASUSQLiteConnectionOptions)initWithDatabasePath:(id)path
{
  pathCopy = path;
  v9.receiver = self;
  v9.super_class = ASUSQLiteConnectionOptions;
  v5 = [(ASUSQLiteConnectionOptions *)&v9 init];
  if (v5)
  {
    v6 = [pathCopy copy];
    databasePath = v5->_databasePath;
    v5->_databasePath = v6;

    [(ASUSQLiteConnectionOptions *)v5 setCacheSizeWithNumberOfKilobytes:64];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (v5)
  {
    v5[2] = self->_cacheSize;
    v7 = [(NSString *)self->_databasePath copyWithZone:zone];
    v8 = v6[3];
    v6[3] = v7;

    v9 = [(NSString *)self->_encryptionKeyId copyWithZone:zone];
    v10 = v6[4];
    v6[4] = v9;

    *(v6 + 8) = self->_readOnly;
  }

  return v6;
}

@end