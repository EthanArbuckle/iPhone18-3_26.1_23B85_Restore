@interface NSPersistentHistoryTransaction
- (id)bc_changeTypeToString:(int64_t)a3;
- (void)bc_getManagedObjectsWith:(id)a3 entityName:(id)a4 inserted:(id *)a5 updated:(id *)a6 tombstones:(id *)a7;
- (void)bc_logChanges;
@end

@implementation NSPersistentHistoryTransaction

- (id)bc_changeTypeToString:(int64_t)a3
{
  if (a3 < 3)
  {
    return off_2C9620[a3];
  }

  [NSException raise:NSGenericException format:@"Unexpected NSPersistentHistoryChangeType.", v3, v4];
  return 0;
}

- (void)bc_getManagedObjectsWith:(id)a3 entityName:(id)a4 inserted:(id *)a5 updated:(id *)a6 tombstones:(id *)a7
{
  v9 = a3;
  v50 = a4;
  v10 = [(NSPersistentHistoryTransaction *)self changes];
  v11 = [v10 count];
  v49 = +[NSMutableArray array];
  v12 = +[NSMutableArray array];
  v13 = +[NSMutableArray array];
  v14 = BCRemoteManagedObjectIDMonitorLog();
  v42 = self;
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [(NSPersistentHistoryTransaction *)self timestamp];
    v16 = [v15 description];
    *buf = 138544130;
    v59 = v16;
    v60 = 2048;
    v61 = [(NSPersistentHistoryTransaction *)self transactionNumber];
    v62 = 2048;
    v63 = v11;
    v64 = 2112;
    v65 = v50;
    _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "bc_getManagedObjectsWith %{public}@ Processing transaction#:(%lld) changeCount:%lu entityName:%@", buf, 0x2Au);
  }

  [(NSPersistentHistoryTransaction *)self bc_logChanges];
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  obj = v10;
  v48 = [obj countByEnumeratingWithState:&v51 objects:v57 count:16];
  if (v48)
  {
    v44 = *v52;
    *&v17 = 138412290;
    v41 = v17;
    do
    {
      v18 = 0;
      do
      {
        v19 = v9;
        if (*v52 != v44)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v51 + 1) + 8 * v18);
        v21 = objc_autoreleasePoolPush();
        v22 = [(NSPersistentHistoryTransaction *)v20 changedObjectID];
        v23 = [v22 entity];
        v24 = [v23 name];
        v25 = [v24 isEqualToString:v50];

        if (!v25)
        {
          v27 = BCRemoteManagedObjectIDMonitorLog();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            v32 = [(NSPersistentHistoryTransaction *)v20 changedObjectID];
            v33 = [(NSPersistentHistoryTransaction *)v20 changedObjectID];
            v34 = [v33 entity];
            v35 = [v34 name];
            *buf = 138412802;
            v59 = v42;
            v60 = 2112;
            v61 = v32;
            v62 = 2112;
            v63 = v35;
            _os_log_impl(&dword_0, v27, OS_LOG_TYPE_DEFAULT, "%@ Skipping history transaction id:%@ with entity (%@)", buf, 0x20u);
          }

          goto LABEL_21;
        }

        if ([(NSPersistentHistoryTransaction *)v20 changeType]&& [(NSPersistentHistoryTransaction *)v20 changeType]!= &dword_0 + 1)
        {
          v27 = [(NSPersistentHistoryTransaction *)v20 tombstone];
          if (v27)
          {
            [v49 addObject:v27];
LABEL_21:
            v9 = v19;
            goto LABEL_25;
          }

          v39 = BCRemoteManagedObjectIDMonitorLog();
          v9 = v19;
          if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
          {
            *buf = v41;
            v59 = v20;
            _os_log_error_impl(&dword_0, v39, OS_LOG_TYPE_ERROR, "bc_getManagedObjectsWith Change contains deletion but no tombstone. Change: %@", buf, 0xCu);
          }
        }

        else
        {
          v26 = [(NSPersistentHistoryTransaction *)v20 changedObjectID];
          v27 = [v19 existingObjectWithID:v26 error:0];

          v28 = [v27 entity];
          v29 = [v28 name];
          v30 = [v29 isEqualToString:v50];

          if (v30)
          {
            if ([(NSPersistentHistoryTransaction *)v20 changeType])
            {
              v31 = v12;
            }

            else
            {
              v31 = v13;
            }

            [v31 addObject:v27];
          }

          else
          {
            v36 = BCRemoteManagedObjectIDMonitorLog();
            if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
            {
              sub_1E5EA8(v55, v20, &v56, v36);
            }
          }

          v9 = v19;
          [v19 refreshObject:v27 mergeChanges:0];
        }

LABEL_25:

        [v9 processPendingChanges];
        objc_autoreleasePoolPop(v21);
        v37 = v12;
        *a6 = v12;
        v38 = v13;
        *a5 = v13;
        *a7 = v49;
        v18 = v18 + 1;
      }

      while (v48 != v18);
      v40 = [obj countByEnumeratingWithState:&v51 objects:v57 count:16];
      v48 = v40;
    }

    while (v40);
  }
}

- (void)bc_logChanges
{
  v3 = objc_alloc_init(NSMutableArray);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [(NSPersistentHistoryTransaction *)self changes];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = -[NSPersistentHistoryTransaction bc_changeTypeToString:](self, "bc_changeTypeToString:", [*(*(&v11 + 1) + 8 * v8) changeType]);
        [v3 addObject:v9];

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v10 = BCRemoteManagedObjectIDMonitorLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    sub_1E5F20(self);
  }
}

@end