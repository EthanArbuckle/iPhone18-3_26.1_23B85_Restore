@interface MailSceneBackgroundQueryMonitor
+ (OS_os_log)log;
- (MailSceneBackgroundQueryMonitor)initWithMessageListItems:(id)a3 messageList:(id)a4 messageRepository:(id)a5 changeTypes:(int64_t)a6;
- (MailSceneBackgroundQueryMonitor)initWithQuery:(id)a3 repository:(id)a4 changeTypes:(int64_t)a5;
- (MailSceneBackgroundResultHandler)handler;
- (NSString)ef_publicDescription;
- (void)_changeOccurred:(int64_t)a3;
- (void)beginMonitoringWithHandler:(id)a3;
- (void)collection:(id)a3 addedItemIDs:(id)a4 after:(id)a5;
- (void)collection:(id)a3 addedItemIDs:(id)a4 before:(id)a5;
- (void)collection:(id)a3 changedItemIDs:(id)a4;
- (void)collection:(id)a3 deletedItemIDs:(id)a4;
- (void)collection:(id)a3 movedItemIDs:(id)a4 after:(id)a5;
- (void)collection:(id)a3 movedItemIDs:(id)a4 before:(id)a5;
- (void)collection:(id)a3 replacedExistingItemID:(id)a4 withNewItemID:(id)a5;
- (void)collectionDidFinishInitialLoad:(id)a3;
- (void)endMonitoring;
@end

@implementation MailSceneBackgroundQueryMonitor

+ (OS_os_log)log
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100129B3C;
  block[3] = &unk_10064C4F8;
  block[4] = a1;
  if (qword_1006DD140 != -1)
  {
    dispatch_once(&qword_1006DD140, block);
  }

  v2 = qword_1006DD138;

  return v2;
}

- (MailSceneBackgroundQueryMonitor)initWithQuery:(id)a3 repository:(id)a4 changeTypes:(int64_t)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = MailSceneBackgroundQueryMonitor;
  v11 = [(MailSceneBackgroundQueryMonitor *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_changeTypes = a5;
    objc_storeStrong(&v11->_query, a3);
    objc_storeStrong(&v12->_repository, a4);
  }

  return v12;
}

- (MailSceneBackgroundQueryMonitor)initWithMessageListItems:(id)a3 messageList:(id)a4 messageRepository:(id)a5 changeTypes:(int64_t)a6
{
  v10 = a3;
  v11 = a4;
  v28 = v10;
  v29 = a5;
  v12 = [v10 ef_compactMapSelector:"displayMessageObjectID"];
  v13 = [v11 query];
  v14 = [v13 predicate];

  v15 = 0;
  if ([v12 count] && v14)
  {
    [EMMessage predicateForMessagesWithObjectIDs:v12];
    v32 = v31 = v14;
    v26 = v32;
    v16 = [NSArray arrayWithObjects:&v31 count:2];
    v27 = [NSCompoundPredicate andPredicateWithSubpredicates:v16];

    v17 = [EMMessageListItemPredicates sortDescriptorForDateAscending:0];
    v18 = [v12 count];
    v19 = [v11 ef_publicDescription];
    v20 = [NSString stringWithFormat:@"MailSceneBackgroundQueryMonitor query of %lu items originating from %@", v18, v19];

    v21 = [EMQuery alloc];
    v22 = objc_opt_class();
    v30 = v17;
    v23 = [NSArray arrayWithObjects:&v30 count:1];
    v24 = [v21 initWithTargetClass:v22 predicate:v27 sortDescriptors:v23 queryOptions:0 label:v20];

    self = [(MailSceneBackgroundQueryMonitor *)self initWithQuery:v24 repository:v29 changeTypes:a6];
    v15 = self;
  }

  return v15;
}

- (void)beginMonitoringWithHandler:(id)a3
{
  v4 = a3;
  [(MailSceneBackgroundQueryMonitor *)self setHandler:v4];
  v5 = [(MailSceneBackgroundQueryMonitor *)self collection];

  if (!v5)
  {
    v6 = [EMQueryingCollection alloc];
    v7 = [(MailSceneBackgroundQueryMonitor *)self query];
    v8 = [(MailSceneBackgroundQueryMonitor *)self repository];
    v9 = [v6 initWithQuery:v7 repository:v8];
    [(MailSceneBackgroundQueryMonitor *)self setCollection:v9];

    v10 = [(MailSceneBackgroundQueryMonitor *)self collection];
    [v10 beginObserving:self];

    v11 = +[MailSceneBackgroundQueryMonitor log];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = [(MailSceneBackgroundQueryMonitor *)self collection];
      v13 = 138412290;
      v14 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Created and started observing collection: %@", &v13, 0xCu);
    }
  }
}

- (void)endMonitoring
{
  [(MailSceneBackgroundQueryMonitor *)self setHandler:0];
  [(MailSceneBackgroundQueryMonitor *)self setCompletedInitialLoad:0];
  v3 = [(MailSceneBackgroundQueryMonitor *)self collection];
  [v3 stopObserving:self];

  [(MailSceneBackgroundQueryMonitor *)self setCollection:0];
}

- (void)_changeOccurred:(int64_t)a3
{
  v5 = sub_10012A3F0(a3);
  if (![(MailSceneBackgroundQueryMonitor *)self completedInitialLoad]|| (a3 & ~[(MailSceneBackgroundQueryMonitor *)self changeTypes]) != 0)
  {
    if ([(MailSceneBackgroundQueryMonitor *)self completedInitialLoad])
    {
      v7 = +[MailSceneBackgroundQueryMonitor log];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = sub_10012A3F0([(MailSceneBackgroundQueryMonitor *)self changeTypes]);
        v9 = 138543618;
        v10 = v5;
        v11 = 2114;
        v12 = v8;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Change occurred: %{public}@. Ignoring since we are only reacting to %{public}@", &v9, 0x16u);
      }
    }

    else
    {
      v7 = +[MailSceneBackgroundQueryMonitor log];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v9 = 138543362;
        v10 = v5;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Change occurred: %{public}@. Ignoring since initial load has not completed.", &v9, 0xCu);
      }
    }
  }

  else
  {
    v6 = +[MailSceneBackgroundQueryMonitor log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138543362;
      v10 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Change occurred: %{public}@. Notifying handler...", &v9, 0xCu);
    }

    v7 = [(MailSceneBackgroundQueryMonitor *)self handler];
    [v7 monitor:self requestsAction:[(MailSceneBackgroundQueryMonitor *)self action]];
  }
}

- (void)collection:(id)a3 addedItemIDs:(id)a4 before:(id)a5
{
  v6 = a4;
  v7 = +[MailSceneBackgroundQueryMonitor log];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_1004895C4(&v8, [v6 count]);
  }

  [(MailSceneBackgroundQueryMonitor *)self _changeOccurred:1];
}

- (void)collection:(id)a3 addedItemIDs:(id)a4 after:(id)a5
{
  v6 = a4;
  v7 = +[MailSceneBackgroundQueryMonitor log];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_1004895C4(&v8, [v6 count]);
  }

  [(MailSceneBackgroundQueryMonitor *)self _changeOccurred:1];
}

- (void)collection:(id)a3 movedItemIDs:(id)a4 before:(id)a5
{
  v6 = a4;
  v7 = +[MailSceneBackgroundQueryMonitor log];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_1004895FC(&v8, [v6 count]);
  }

  [(MailSceneBackgroundQueryMonitor *)self _changeOccurred:2];
}

- (void)collection:(id)a3 movedItemIDs:(id)a4 after:(id)a5
{
  v6 = a4;
  v7 = +[MailSceneBackgroundQueryMonitor log];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_1004895FC(&v8, [v6 count]);
  }

  [(MailSceneBackgroundQueryMonitor *)self _changeOccurred:2];
}

- (void)collection:(id)a3 changedItemIDs:(id)a4
{
  v5 = a4;
  v6 = +[MailSceneBackgroundQueryMonitor log];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_100489634(&v7, [v5 count]);
  }

  [(MailSceneBackgroundQueryMonitor *)self _changeOccurred:4];
}

- (void)collection:(id)a3 deletedItemIDs:(id)a4
{
  v5 = a4;
  v6 = +[MailSceneBackgroundQueryMonitor log];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_10048966C(&v7, [v5 count]);
  }

  [(MailSceneBackgroundQueryMonitor *)self _changeOccurred:8];
}

- (void)collection:(id)a3 replacedExistingItemID:(id)a4 withNewItemID:(id)a5
{
  v6 = [MailSceneBackgroundQueryMonitor log:a3];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_1004896A4(v6);
  }

  [(MailSceneBackgroundQueryMonitor *)self _changeOccurred:16];
}

- (void)collectionDidFinishInitialLoad:(id)a3
{
  v4 = +[MailSceneBackgroundQueryMonitor log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_1004896E8(v4);
  }

  [(MailSceneBackgroundQueryMonitor *)self setCompletedInitialLoad:1];
}

- (NSString)ef_publicDescription
{
  v3 = objc_opt_class();
  v4 = sub_10012A3F0([(MailSceneBackgroundQueryMonitor *)self changeTypes]);
  v5 = [NSString stringWithFormat:@"<%@: %p> observingChanges=%@", v3, self, v4];

  return v5;
}

- (MailSceneBackgroundResultHandler)handler
{
  WeakRetained = objc_loadWeakRetained(&self->_handler);

  return WeakRetained;
}

@end