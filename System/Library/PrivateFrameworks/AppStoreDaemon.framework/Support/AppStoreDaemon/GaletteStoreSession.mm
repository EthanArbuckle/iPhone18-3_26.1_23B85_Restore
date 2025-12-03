@interface GaletteStoreSession
- (BOOL)needsThirdPartyPurchaseConfirmationWithBundleID:(id)d;
- (GaletteStoreSession)initWithConnection:(id)connection;
- (id)appForBundleID:(id)d;
- (int64_t)modeForBundleID:(id)d;
@end

@implementation GaletteStoreSession

- (GaletteStoreSession)initWithConnection:(id)connection
{
  connectionCopy = connection;
  v8.receiver = self;
  v8.super_class = GaletteStoreSession;
  v5 = [(GaletteStoreSession *)&v8 init];
  connection = v5->_connection;
  v5->_connection = connectionCopy;

  return v5;
}

- (BOOL)needsThirdPartyPurchaseConfirmationWithBundleID:(id)d
{
  dCopy = d;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  connection = [(GaletteStoreSession *)self connection];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10034DBE8;
  v8[3] = &unk_10051DEB8;
  v6 = dCopy;
  v9 = v6;
  v10 = &v11;
  sub_10022C3C4(connection, @"SELECT * FROM pending_galette_confirmation WHERE bundle_id = ?;", v8);

  LOBYTE(connection) = *(v12 + 24);
  _Block_object_dispose(&v11, 8);

  return connection;
}

- (int64_t)modeForBundleID:(id)d
{
  dCopy = d;
  v5 = [SQLiteComparisonPredicate predicateWithProperty:@"bundle_id" equalToValue:dCopy];
  v6 = sub_1002D3F5C(GaletteAppEntity, self->_connection, v5);
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10034DD5C;
  v9[3] = &unk_10051B010;
  v9[4] = &v10;
  [v6 enumerateMemoryEntitiesUsingBlock:v9];
  v7 = v11[3];
  _Block_object_dispose(&v10, 8);

  return v7;
}

- (id)appForBundleID:(id)d
{
  dCopy = d;
  v5 = [SQLiteComparisonPredicate predicateWithProperty:@"bundle_id" equalToValue:dCopy];
  v6 = sub_1002D3F5C(GaletteAppEntity, self->_connection, v5);
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = sub_10034DF24;
  v14 = sub_10034DF34;
  v15 = 0;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10034DF3C;
  v9[3] = &unk_10051B010;
  v9[4] = &v10;
  [v6 enumerateMemoryEntitiesUsingBlock:v9];
  v7 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v7;
}

@end