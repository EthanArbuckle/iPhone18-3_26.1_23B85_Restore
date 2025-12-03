@interface NSPersistentHistoryTransaction
- (id)bc_changeTypeToString:(int64_t)string;
- (void)bc_getManagedObjectsWith:(id)with entityName:(id)name inserted:(id *)inserted updated:(id *)updated tombstones:(id *)tombstones;
- (void)bc_logChanges;
@end

@implementation NSPersistentHistoryTransaction

- (id)bc_changeTypeToString:(int64_t)string
{
  if (string < 3)
  {
    return off_2C9620[string];
  }

  [NSException raise:NSGenericException format:@"Unexpected NSPersistentHistoryChangeType.", v3, v4];
  return 0;
}

- (void)bc_getManagedObjectsWith:(id)with entityName:(id)name inserted:(id *)inserted updated:(id *)updated tombstones:(id *)tombstones
{
  withCopy = with;
  nameCopy = name;
  changes = [(NSPersistentHistoryTransaction *)self changes];
  v11 = [changes count];
  v49 = +[NSMutableArray array];
  v12 = +[NSMutableArray array];
  v13 = +[NSMutableArray array];
  v14 = BCRemoteManagedObjectIDMonitorLog();
  selfCopy = self;
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    timestamp = [(NSPersistentHistoryTransaction *)self timestamp];
    v16 = [timestamp description];
    *buf = 138544130;
    v59 = v16;
    v60 = 2048;
    transactionNumber = [(NSPersistentHistoryTransaction *)self transactionNumber];
    v62 = 2048;
    v63 = v11;
    v64 = 2112;
    v65 = nameCopy;
    _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "bc_getManagedObjectsWith %{public}@ Processing transaction#:(%lld) changeCount:%lu entityName:%@", buf, 0x2Au);
  }

  [(NSPersistentHistoryTransaction *)self bc_logChanges];
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  obj = changes;
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
        v19 = withCopy;
        if (*v52 != v44)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v51 + 1) + 8 * v18);
        v21 = objc_autoreleasePoolPush();
        changedObjectID = [(NSPersistentHistoryTransaction *)v20 changedObjectID];
        entity = [changedObjectID entity];
        name = [entity name];
        v25 = [name isEqualToString:nameCopy];

        if (!v25)
        {
          tombstone = BCRemoteManagedObjectIDMonitorLog();
          if (os_log_type_enabled(tombstone, OS_LOG_TYPE_DEFAULT))
          {
            changedObjectID2 = [(NSPersistentHistoryTransaction *)v20 changedObjectID];
            changedObjectID3 = [(NSPersistentHistoryTransaction *)v20 changedObjectID];
            entity2 = [changedObjectID3 entity];
            name2 = [entity2 name];
            *buf = 138412802;
            v59 = selfCopy;
            v60 = 2112;
            transactionNumber = changedObjectID2;
            v62 = 2112;
            v63 = name2;
            _os_log_impl(&dword_0, tombstone, OS_LOG_TYPE_DEFAULT, "%@ Skipping history transaction id:%@ with entity (%@)", buf, 0x20u);
          }

          goto LABEL_21;
        }

        if ([(NSPersistentHistoryTransaction *)v20 changeType]&& [(NSPersistentHistoryTransaction *)v20 changeType]!= &dword_0 + 1)
        {
          tombstone = [(NSPersistentHistoryTransaction *)v20 tombstone];
          if (tombstone)
          {
            [v49 addObject:tombstone];
LABEL_21:
            withCopy = v19;
            goto LABEL_25;
          }

          v39 = BCRemoteManagedObjectIDMonitorLog();
          withCopy = v19;
          if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
          {
            *buf = v41;
            v59 = v20;
            _os_log_error_impl(&dword_0, v39, OS_LOG_TYPE_ERROR, "bc_getManagedObjectsWith Change contains deletion but no tombstone. Change: %@", buf, 0xCu);
          }
        }

        else
        {
          changedObjectID4 = [(NSPersistentHistoryTransaction *)v20 changedObjectID];
          tombstone = [v19 existingObjectWithID:changedObjectID4 error:0];

          entity3 = [tombstone entity];
          name3 = [entity3 name];
          v30 = [name3 isEqualToString:nameCopy];

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

            [v31 addObject:tombstone];
          }

          else
          {
            v36 = BCRemoteManagedObjectIDMonitorLog();
            if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
            {
              sub_1E5EA8(v55, v20, &v56, v36);
            }
          }

          withCopy = v19;
          [v19 refreshObject:tombstone mergeChanges:0];
        }

LABEL_25:

        [withCopy processPendingChanges];
        objc_autoreleasePoolPop(v21);
        v37 = v12;
        *updated = v12;
        v38 = v13;
        *inserted = v13;
        *tombstones = v49;
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
  changes = [(NSPersistentHistoryTransaction *)self changes];
  v5 = [changes countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(changes);
        }

        v9 = -[NSPersistentHistoryTransaction bc_changeTypeToString:](self, "bc_changeTypeToString:", [*(*(&v11 + 1) + 8 * v8) changeType]);
        [v3 addObject:v9];

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [changes countByEnumeratingWithState:&v11 objects:v15 count:16];
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