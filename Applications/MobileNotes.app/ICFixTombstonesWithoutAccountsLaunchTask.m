@interface ICFixTombstonesWithoutAccountsLaunchTask
- (void)fixTombstonesWithNilAccountWithContext:(id)a3;
- (void)runLaunchTask;
@end

@implementation ICFixTombstonesWithoutAccountsLaunchTask

- (void)runLaunchTask
{
  [(ICWorkerContextLaunchTask *)self workerContext];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100128850;
  v4[3] = &unk_100645BA0;
  v5 = v4[4] = self;
  v3 = v5;
  [v3 performBlockAndWait:v4];
}

- (void)fixTombstonesWithNilAccountWithContext:(id)a3
{
  v3 = a3;
  v4 = os_log_create("com.apple.notes", "LaunchTask");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_1004E0DE0(v4);
  }

  v5 = [NSPredicate predicateWithFormat:@"account == nil"];
  v38[0] = v5;
  v6 = [NSPredicate predicateWithFormat:@"markedForDeletion == NO"];
  v38[1] = v6;
  v7 = [NSArray arrayWithObjects:v38 count:2];

  v8 = [NSCompoundPredicate andPredicateWithSubpredicates:v7];
  v9 = [ICLegacyTombstone ic_objectsMatchingPredicate:v8 context:v3];
  v10 = os_log_create("com.apple.notes", "LaunchTask");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    sub_1004E0E24(v9);
  }

  v11 = [ICAccount allActiveCloudKitAccountsInContext:v3];
  if ([v11 count] == 1)
  {
    v12 = [v11 lastObject];
    if (v12)
    {
      v13 = v12;
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v14 = [v9 copy];
      v15 = [v14 countByEnumeratingWithState:&v29 objects:v37 count:16];
      if (v15)
      {
        v16 = v15;
        v24 = v11;
        v25 = v9;
        v26 = v8;
        v27 = v7;
        v28 = v3;
        v17 = *v30;
        do
        {
          for (i = 0; i != v16; i = i + 1)
          {
            if (*v30 != v17)
            {
              objc_enumerationMutation(v14);
            }

            v19 = *(*(&v29 + 1) + 8 * i);
            v20 = [v19 account];
            if (!v20)
            {
              v21 = os_log_create("com.apple.notes", "LaunchTask");
              if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
              {
                v22 = [v19 ic_loggingDescription];
                v23 = [0 identifier];
                *buf = 138412546;
                v34 = v22;
                v35 = 2112;
                v36 = v23;
                _os_log_debug_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEBUG, "Found tombstone %@ without an account, will move to account %@.", buf, 0x16u);
              }

              [v19 setAccount:v13];
            }
          }

          v16 = [v14 countByEnumeratingWithState:&v29 objects:v37 count:16];
        }

        while (v16);
        v7 = v27;
        v3 = v28;
        v9 = v25;
        v8 = v26;
        v11 = v24;
      }

LABEL_23:

      goto LABEL_24;
    }
  }

  if ([v9 count])
  {
    v14 = os_log_create("com.apple.notes", "LaunchTask");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      sub_1004E0EA0(v9);
    }

    v13 = v14;
    goto LABEL_23;
  }

LABEL_24:
  [v3 ic_save];
}

@end