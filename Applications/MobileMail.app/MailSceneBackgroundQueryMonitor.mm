@interface MailSceneBackgroundQueryMonitor
+ (OS_os_log)log;
- (MailSceneBackgroundQueryMonitor)initWithMessageListItems:(id)items messageList:(id)list messageRepository:(id)repository changeTypes:(int64_t)types;
- (MailSceneBackgroundQueryMonitor)initWithQuery:(id)query repository:(id)repository changeTypes:(int64_t)types;
- (MailSceneBackgroundResultHandler)handler;
- (NSString)ef_publicDescription;
- (void)_changeOccurred:(int64_t)occurred;
- (void)beginMonitoringWithHandler:(id)handler;
- (void)collection:(id)collection addedItemIDs:(id)ds after:(id)after;
- (void)collection:(id)collection addedItemIDs:(id)ds before:(id)before;
- (void)collection:(id)collection changedItemIDs:(id)ds;
- (void)collection:(id)collection deletedItemIDs:(id)ds;
- (void)collection:(id)collection movedItemIDs:(id)ds after:(id)after;
- (void)collection:(id)collection movedItemIDs:(id)ds before:(id)before;
- (void)collection:(id)collection replacedExistingItemID:(id)d withNewItemID:(id)iD;
- (void)collectionDidFinishInitialLoad:(id)load;
- (void)endMonitoring;
@end

@implementation MailSceneBackgroundQueryMonitor

+ (OS_os_log)log
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100129B3C;
  block[3] = &unk_10064C4F8;
  block[4] = self;
  if (qword_1006DD140 != -1)
  {
    dispatch_once(&qword_1006DD140, block);
  }

  v2 = qword_1006DD138;

  return v2;
}

- (MailSceneBackgroundQueryMonitor)initWithQuery:(id)query repository:(id)repository changeTypes:(int64_t)types
{
  queryCopy = query;
  repositoryCopy = repository;
  v14.receiver = self;
  v14.super_class = MailSceneBackgroundQueryMonitor;
  v11 = [(MailSceneBackgroundQueryMonitor *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_changeTypes = types;
    objc_storeStrong(&v11->_query, query);
    objc_storeStrong(&v12->_repository, repository);
  }

  return v12;
}

- (MailSceneBackgroundQueryMonitor)initWithMessageListItems:(id)items messageList:(id)list messageRepository:(id)repository changeTypes:(int64_t)types
{
  itemsCopy = items;
  listCopy = list;
  v28 = itemsCopy;
  repositoryCopy = repository;
  v12 = [itemsCopy ef_compactMapSelector:"displayMessageObjectID"];
  query = [listCopy query];
  predicate = [query predicate];

  selfCopy = 0;
  if ([v12 count] && predicate)
  {
    [EMMessage predicateForMessagesWithObjectIDs:v12];
    v32 = v31 = predicate;
    v26 = v32;
    v16 = [NSArray arrayWithObjects:&v31 count:2];
    v27 = [NSCompoundPredicate andPredicateWithSubpredicates:v16];

    v17 = [EMMessageListItemPredicates sortDescriptorForDateAscending:0];
    v18 = [v12 count];
    ef_publicDescription = [listCopy ef_publicDescription];
    v20 = [NSString stringWithFormat:@"MailSceneBackgroundQueryMonitor query of %lu items originating from %@", v18, ef_publicDescription];

    v21 = [EMQuery alloc];
    v22 = objc_opt_class();
    v30 = v17;
    v23 = [NSArray arrayWithObjects:&v30 count:1];
    v24 = [v21 initWithTargetClass:v22 predicate:v27 sortDescriptors:v23 queryOptions:0 label:v20];

    self = [(MailSceneBackgroundQueryMonitor *)self initWithQuery:v24 repository:repositoryCopy changeTypes:types];
    selfCopy = self;
  }

  return selfCopy;
}

- (void)beginMonitoringWithHandler:(id)handler
{
  handlerCopy = handler;
  [(MailSceneBackgroundQueryMonitor *)self setHandler:handlerCopy];
  collection = [(MailSceneBackgroundQueryMonitor *)self collection];

  if (!collection)
  {
    v6 = [EMQueryingCollection alloc];
    query = [(MailSceneBackgroundQueryMonitor *)self query];
    repository = [(MailSceneBackgroundQueryMonitor *)self repository];
    v9 = [v6 initWithQuery:query repository:repository];
    [(MailSceneBackgroundQueryMonitor *)self setCollection:v9];

    collection2 = [(MailSceneBackgroundQueryMonitor *)self collection];
    [collection2 beginObserving:self];

    v11 = +[MailSceneBackgroundQueryMonitor log];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      collection3 = [(MailSceneBackgroundQueryMonitor *)self collection];
      v13 = 138412290;
      v14 = collection3;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Created and started observing collection: %@", &v13, 0xCu);
    }
  }
}

- (void)endMonitoring
{
  [(MailSceneBackgroundQueryMonitor *)self setHandler:0];
  [(MailSceneBackgroundQueryMonitor *)self setCompletedInitialLoad:0];
  collection = [(MailSceneBackgroundQueryMonitor *)self collection];
  [collection stopObserving:self];

  [(MailSceneBackgroundQueryMonitor *)self setCollection:0];
}

- (void)_changeOccurred:(int64_t)occurred
{
  v5 = sub_10012A3F0(occurred);
  if (![(MailSceneBackgroundQueryMonitor *)self completedInitialLoad]|| (occurred & ~[(MailSceneBackgroundQueryMonitor *)self changeTypes]) != 0)
  {
    if ([(MailSceneBackgroundQueryMonitor *)self completedInitialLoad])
    {
      handler = +[MailSceneBackgroundQueryMonitor log];
      if (os_log_type_enabled(handler, OS_LOG_TYPE_INFO))
      {
        v8 = sub_10012A3F0([(MailSceneBackgroundQueryMonitor *)self changeTypes]);
        v9 = 138543618;
        v10 = v5;
        v11 = 2114;
        v12 = v8;
        _os_log_impl(&_mh_execute_header, handler, OS_LOG_TYPE_INFO, "Change occurred: %{public}@. Ignoring since we are only reacting to %{public}@", &v9, 0x16u);
      }
    }

    else
    {
      handler = +[MailSceneBackgroundQueryMonitor log];
      if (os_log_type_enabled(handler, OS_LOG_TYPE_INFO))
      {
        v9 = 138543362;
        v10 = v5;
        _os_log_impl(&_mh_execute_header, handler, OS_LOG_TYPE_INFO, "Change occurred: %{public}@. Ignoring since initial load has not completed.", &v9, 0xCu);
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

    handler = [(MailSceneBackgroundQueryMonitor *)self handler];
    [handler monitor:self requestsAction:[(MailSceneBackgroundQueryMonitor *)self action]];
  }
}

- (void)collection:(id)collection addedItemIDs:(id)ds before:(id)before
{
  dsCopy = ds;
  v7 = +[MailSceneBackgroundQueryMonitor log];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_1004895C4(&v8, [dsCopy count]);
  }

  [(MailSceneBackgroundQueryMonitor *)self _changeOccurred:1];
}

- (void)collection:(id)collection addedItemIDs:(id)ds after:(id)after
{
  dsCopy = ds;
  v7 = +[MailSceneBackgroundQueryMonitor log];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_1004895C4(&v8, [dsCopy count]);
  }

  [(MailSceneBackgroundQueryMonitor *)self _changeOccurred:1];
}

- (void)collection:(id)collection movedItemIDs:(id)ds before:(id)before
{
  dsCopy = ds;
  v7 = +[MailSceneBackgroundQueryMonitor log];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_1004895FC(&v8, [dsCopy count]);
  }

  [(MailSceneBackgroundQueryMonitor *)self _changeOccurred:2];
}

- (void)collection:(id)collection movedItemIDs:(id)ds after:(id)after
{
  dsCopy = ds;
  v7 = +[MailSceneBackgroundQueryMonitor log];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_1004895FC(&v8, [dsCopy count]);
  }

  [(MailSceneBackgroundQueryMonitor *)self _changeOccurred:2];
}

- (void)collection:(id)collection changedItemIDs:(id)ds
{
  dsCopy = ds;
  v6 = +[MailSceneBackgroundQueryMonitor log];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_100489634(&v7, [dsCopy count]);
  }

  [(MailSceneBackgroundQueryMonitor *)self _changeOccurred:4];
}

- (void)collection:(id)collection deletedItemIDs:(id)ds
{
  dsCopy = ds;
  v6 = +[MailSceneBackgroundQueryMonitor log];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_10048966C(&v7, [dsCopy count]);
  }

  [(MailSceneBackgroundQueryMonitor *)self _changeOccurred:8];
}

- (void)collection:(id)collection replacedExistingItemID:(id)d withNewItemID:(id)iD
{
  v6 = [MailSceneBackgroundQueryMonitor log:collection];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_1004896A4(v6);
  }

  [(MailSceneBackgroundQueryMonitor *)self _changeOccurred:16];
}

- (void)collectionDidFinishInitialLoad:(id)load
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