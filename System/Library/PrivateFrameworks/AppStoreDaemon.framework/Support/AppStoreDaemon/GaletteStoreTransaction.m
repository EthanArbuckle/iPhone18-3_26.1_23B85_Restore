@interface GaletteStoreTransaction
- (BOOL)_removeBundleIDFromPendingConfirmation:(id)a3 outError:(id *)a4;
- (BOOL)confirmThirdPartyPurchasesForBundleID:(id)a3;
- (BOOL)handleAppUninstalled:(id)a3;
- (BOOL)removeAppForBundleID:(id)a3;
- (BOOL)setNeedsThirdPartyPurchasesConfirmationForBundleID:(id)a3;
- (void)insertApp:(id)a3;
@end

@implementation GaletteStoreTransaction

- (BOOL)confirmThirdPartyPurchasesForBundleID:(id)a3
{
  v4 = a3;
  v9 = 0;
  v5 = [(GaletteStoreTransaction *)self _removeBundleIDFromPendingConfirmation:v4 outError:&v9];
  v6 = v9;
  if (!v5)
  {
    v7 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v11 = v4;
      v12 = 2114;
      v13 = v6;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Failed to confirm third party purchases for %{public}@: %{public}@", buf, 0x16u);
    }
  }

  return v5;
}

- (BOOL)handleAppUninstalled:(id)a3
{
  v4 = a3;
  v9 = 0;
  v5 = [(GaletteStoreTransaction *)self _removeBundleIDFromPendingConfirmation:v4 outError:&v9];
  v6 = v9;
  if (!v5)
  {
    v7 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v11 = v4;
      v12 = 2114;
      v13 = v6;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Failed to remove bundleID for app uninstall %{public}@: %{public}@", buf, 0x16u);
    }
  }

  return v5;
}

- (void)insertApp:(id)a3
{
  v4 = a3;
  v5 = [GaletteAppEntity alloc];
  if (v4)
  {
    v6 = v4[2];
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  v8 = [(GaletteStoreSession *)self connection];
  v10 = [(SQLiteEntity *)v5 initWithPropertyValues:v7 onConnection:v8];

  v9 = +[GaletteAppMemoryEntity defaultProperties];
  sub_10023DF24(v4, v10);
}

- (BOOL)removeAppForBundleID:(id)a3
{
  v4 = [SQLiteComparisonPredicate predicateWithProperty:@"bundle_id" equalToValue:a3];
  v5 = [(GaletteStoreSession *)self connection];
  v6 = sub_1002D3F5C(GaletteAppEntity, v5, v4);

  LOBYTE(v5) = [v6 deleteAllEntities];
  return v5;
}

- (BOOL)setNeedsThirdPartyPurchasesConfirmationForBundleID:(id)a3
{
  v4 = a3;
  v5 = [(GaletteStoreSession *)self connection];
  v13 = 0;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1003BC8B4;
  v11[3] = &unk_10051B0F0;
  v6 = v4;
  v12 = v6;
  v7 = sub_10022C810(v5, @"INSERT INTO pending_galette_confirmation (bundle_id) VALUES (?);", &v13, v11);
  v8 = v13;

  if ((v7 & 1) == 0)
  {
    v9 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v15 = v6;
      v16 = 2114;
      v17 = v8;
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Failed to set needs third party purchases confirmation for %{public}@: %{public}@", buf, 0x16u);
    }
  }

  return v7;
}

- (BOOL)_removeBundleIDFromPendingConfirmation:(id)a3 outError:(id *)a4
{
  v6 = a3;
  v7 = [(GaletteStoreSession *)self connection];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1003BC990;
  v10[3] = &unk_10051B0F0;
  v11 = v6;
  v8 = v6;
  LOBYTE(a4) = sub_10022C810(v7, @"DELETE FROM pending_galette_confirmation WHERE bundle_id = ?;", a4, v10);

  return a4;
}

@end