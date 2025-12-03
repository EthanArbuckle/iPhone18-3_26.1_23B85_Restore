@interface SQLiteConnectionOptions
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation SQLiteConnectionOptions

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