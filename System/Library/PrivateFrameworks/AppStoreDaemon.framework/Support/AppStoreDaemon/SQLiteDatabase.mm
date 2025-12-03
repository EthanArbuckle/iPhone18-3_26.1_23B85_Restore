@interface SQLiteDatabase
- (BOOL)connectionNeedsResetForCorruption:(id)corruption;
- (BOOL)connectionNeedsResetForReopen:(id)reopen;
@end

@implementation SQLiteDatabase

- (BOOL)connectionNeedsResetForReopen:(id)reopen
{
  reopenCopy = reopen;
  dispatch_assert_queue_V2(self->_transactionQueue);
  v5 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    if (reopenCopy)
    {
      Property = reopenCopy[8];
      v9 = Property;
      if (Property)
      {
        Property = objc_getProperty(Property, v8, 24, 1);
      }
    }

    else
    {
      v9 = 0;
      Property = 0;
    }

    v10 = Property;
    v11 = 138543362;
    v12 = v10;
    _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Requring all stores to migrate after truncating corrupt database at: %{public}@", &v11, 0xCu);
  }

  NSResetHashTable(self->_migratedStores);
  return 1;
}

- (BOOL)connectionNeedsResetForCorruption:(id)corruption
{
  corruptionCopy = corruption;
  dispatch_assert_queue_V2(self->_transactionQueue);
  if (corruptionCopy)
  {
    Property = corruptionCopy[8];
    v7 = Property;
    if (Property)
    {
      Property = objc_getProperty(Property, v6, 24, 1);
    }
  }

  else
  {
    v7 = 0;
    Property = 0;
  }

  v8 = Property;

  v9 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v19 = v8;
    _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Exiting after deleting corrupt database at: %{public}@", buf, 0xCu);
  }

  if (corruptionCopy)
  {
    sub_10022C29C(corruptionCopy);
  }

  v17 = 0;
  sub_1002DC91C(v8, &v17);
  v10 = v17;
  if (v10)
  {
    v11 = v10;
    v12 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v19 = v11;
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Error when deleting corrupt database, renaming database instead: %{public}@", buf, 0xCu);
    }

    v16 = 0;
    sub_1002DC6E0(v8, &v16);
    v13 = v16;
    if (v13)
    {
      v14 = v13;
      v15 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v19 = v14;
        _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Error when renaming database: %{public}@", buf, 0xCu);
      }
    }
  }

  exit(0);
}

@end