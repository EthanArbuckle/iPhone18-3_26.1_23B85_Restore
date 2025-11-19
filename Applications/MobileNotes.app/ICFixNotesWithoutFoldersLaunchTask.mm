@interface ICFixNotesWithoutFoldersLaunchTask
- (void)fixNotesWithNilFolderWithContext:(id)a3;
- (void)fixNotesWithPlaceholderFoldersWithContext:(id)a3;
- (void)runLaunchTask;
@end

@implementation ICFixNotesWithoutFoldersLaunchTask

- (void)runLaunchTask
{
  [(ICWorkerContextLaunchTask *)self workerContext];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1001265D4;
  v4[3] = &unk_100645BA0;
  v5 = v4[4] = self;
  v3 = v5;
  [v3 performBlockAndWait:v4];
}

- (void)fixNotesWithNilFolderWithContext:(id)a3
{
  v3 = a3;
  v4 = os_log_create("com.apple.notes", "LaunchTask");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_1004E09DC(v4);
  }

  v5 = [NSPredicate predicateWithFormat:@"folder == nil"];
  v45[0] = v5;
  v6 = +[ICCloudSyncingObject predicateForVisibleObjects];
  v45[1] = v6;
  v7 = [NSArray arrayWithObjects:v45 count:2];

  v29 = v7;
  v28 = [NSCompoundPredicate andPredicateWithSubpredicates:v7];
  v8 = [ICNote notesMatchingPredicate:"notesMatchingPredicate:context:" context:?];
  v9 = os_log_create("com.apple.notes", "LaunchTask");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    sub_1004E0A20(v8);
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v27 = v8;
  obj = [v8 copy];
  v10 = [obj countByEnumeratingWithState:&v32 objects:v44 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v33;
    v30 = v3;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v33 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v32 + 1) + 8 * i);
        v15 = [v14 account];
        v16 = [v15 defaultFolder];
        if (!v15)
        {
          v17 = os_log_create("com.apple.notes", "LaunchTask");
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
          {
            sub_1004E0A9C(v42, v14, &v43, v17);
          }

          v15 = [ICAccount defaultAccountInContext:v3];
          v18 = [v15 defaultFolder];

          v16 = v18;
        }

        v19 = os_log_create("com.apple.notes", "LaunchTask");
        v20 = v19;
        if (v16)
        {
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
          {
            v22 = [v14 ic_loggingDescription];
            v23 = [v16 identifier];
            v24 = [v15 identifier];
            *buf = 138412802;
            v37 = v22;
            v38 = 2112;
            v39 = v23;
            v40 = 2112;
            v41 = v24;
            _os_log_debug_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "Moving note %@ without a folder to the default folder %@ in account %@.", buf, 0x20u);

            v3 = v30;
          }

          [v14 setFolder:v16];
          v21 = +[NSDate date];
          [v14 setFolderModificationDate:v21];

          [v14 updateChangeCountWithReason:@"Moved to default folder"];
        }

        else
        {
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            v25 = [v14 ic_loggingDescription];
            v26 = [v15 identifier];
            *buf = 138412546;
            v37 = v25;
            v38 = 2112;
            v39 = v26;
            _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Couldn't move note %@ without a folder because default folder is nil in account %@.", buf, 0x16u);
          }
        }
      }

      v11 = [obj countByEnumeratingWithState:&v32 objects:v44 count:16];
    }

    while (v11);
  }

  [v3 ic_save];
}

- (void)fixNotesWithPlaceholderFoldersWithContext:(id)a3
{
  v3 = a3;
  v4 = os_log_create("com.apple.notes", "LaunchTask");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_1004E0B14(v4);
  }

  v5 = [NSPredicate predicateWithFormat:@"folder != nil"];
  v40[0] = v5;
  v6 = [NSPredicate predicateWithFormat:@"folder.needsInitialFetchFromCloud == YES"];
  v40[1] = v6;
  v7 = [NSPredicate predicateWithFormat:@"markedForDeletion == NO"];
  v40[2] = v7;
  v8 = [NSPredicate predicateWithFormat:@"needsInitialFetchFromCloud == NO"];
  v40[3] = v8;
  v9 = [NSArray arrayWithObjects:v40 count:4];

  v26 = v9;
  v25 = [NSCompoundPredicate andPredicateWithSubpredicates:v9];
  v27 = v3;
  v10 = [ICNote notesMatchingPredicate:"notesMatchingPredicate:context:" context:?];
  v11 = os_log_create("com.apple.notes", "LaunchTask");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    sub_1004E0B58(v10);
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v24 = v10;
  v12 = [v10 copy];
  v13 = [v12 countByEnumeratingWithState:&v29 objects:v39 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v30;
    v28 = v12;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v30 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v29 + 1) + 8 * i);
        v18 = [v17 account];
        v19 = [v17 folder];
        v20 = os_log_create("com.apple.notes", "LaunchTask");
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          v21 = [v17 ic_loggingDescription];
          v22 = [v19 identifier];
          v23 = [v18 identifier];
          *buf = 138412802;
          v34 = v21;
          v35 = 2112;
          v36 = v22;
          v37 = 2112;
          v38 = v23;
          _os_log_debug_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "Fetching note %@ and its placeholder folder %@ in account %@.", buf, 0x20u);

          v12 = v28;
        }

        [v19 setNeedsToBeFetchedFromCloud:1];
        [v17 setNeedsToBeFetchedFromCloud:1];
      }

      v14 = [v12 countByEnumeratingWithState:&v29 objects:v39 count:16];
    }

    while (v14);
  }

  [v27 ic_save];
}

@end