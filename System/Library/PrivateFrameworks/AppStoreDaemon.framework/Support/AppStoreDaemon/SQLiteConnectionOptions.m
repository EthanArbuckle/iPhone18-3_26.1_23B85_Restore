@interface SQLiteConnectionOptions
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation SQLiteConnectionOptions

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