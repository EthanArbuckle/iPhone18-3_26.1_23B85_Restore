@interface BCRemoteManagedObjectIDMonitor
- (BCRemoteManagedObjectIDMonitor)initWithCoordinator:(id)a3 entityName:(id)a4 historyToken:(id)a5 predicate:(id)a6 mapProperty:(id)a7 propertiesOfInterest:(id)a8 observer:(id)a9;
- (BCRemoteManagedObjectIDMonitorObserver)observer;
- (BOOL)_objectHasChangesOfInterest:(id)a3;
- (id)_fetchPersistentHistoryWithHistoryToken:(id)a3;
- (id)description;
- (void)_persistentStoreRemoteDidChange:(id)a3;
- (void)dealloc;
@end

@implementation BCRemoteManagedObjectIDMonitor

- (BCRemoteManagedObjectIDMonitor)initWithCoordinator:(id)a3 entityName:(id)a4 historyToken:(id)a5 predicate:(id)a6 mapProperty:(id)a7 propertiesOfInterest:(id)a8 observer:(id)a9
{
  v16 = a3;
  v56 = a4;
  v54 = a5;
  v55 = a6;
  v17 = a7;
  v18 = a8;
  v19 = a9;
  v65.receiver = self;
  v65.super_class = BCRemoteManagedObjectIDMonitor;
  v20 = [(BCRemoteManagedObjectIDMonitor *)&v65 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_coordinator, a3);
    v22 = [v56 copy];
    entityName = v21->_entityName;
    v21->_entityName = v22;

    objc_storeStrong(&v21->_historyToken, a5);
    objc_storeStrong(&v21->_predicate, a6);
    v24 = [v17 copy];
    mapProperty = v21->_mapProperty;
    v21->_mapProperty = v24;

    v26 = [v18 copy];
    propertiesOfInterest = v21->_propertiesOfInterest;
    v21->_propertiesOfInterest = v26;

    objc_storeWeak(&v21->_observer, v19);
    v28 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v29 = dispatch_queue_create("BCRemoteManagedObjectIDMonitor.sync", v28);
    sync = v21->_sync;
    v21->_sync = v29;

    v31 = objc_alloc_init(NSMutableSet);
    currentObjectIdentifiers = v21->_currentObjectIdentifiers;
    v21->_currentObjectIdentifiers = v31;

    v33 = [v16 persistentStores];
    v34 = [v33 count] == 0;

    if (v34)
    {
      v53 = @"empty";
    }

    else
    {
      v35 = [v16 persistentStores];
      v36 = [v35 firstObject];
      v53 = [v36 identifier];
    }

    v37 = BCRemoteManagedObjectIDMonitorLog();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      v38 = [(BCRemoteManagedObjectIDMonitor *)v21 observer];
      v39 = [v38 remoteManagerObserverId];
      v40 = [(BCRemoteManagedObjectIDMonitor *)v21 historyToken];
      v41 = [v16 persistentStores];
      v42 = [v41 count];
      *buf = 138413826;
      *&buf[4] = v21;
      *&buf[12] = 2112;
      *&buf[14] = v16;
      *&buf[22] = 2112;
      v67 = v39;
      *v68 = 2112;
      *&v68[2] = v40;
      *&v68[10] = 2048;
      *&v68[12] = v42;
      v69 = 2112;
      v70 = v53;
      v71 = 2112;
      v72 = v55;
      _os_log_impl(&dword_0, v37, OS_LOG_TYPE_DEFAULT, "BCRemoteManagedObjectIDMonitor %@ initialized %@ with observer:%@ token:%@ storeCount:%lu persistentstoreID:(%@), predicate:%@", buf, 0x48u);
    }

    v43 = +[NSNotificationCenter defaultCenter];
    [v43 addObserver:v21 selector:"_persistentStoreRemoteDidChange:" name:NSPersistentStoreRemoteChangeNotification object:v21->_coordinator];

    v44 = [[NSManagedObjectContext alloc] initWithConcurrencyType:1];
    context = v21->_context;
    v21->_context = v44;

    [(NSManagedObjectContext *)v21->_context setPersistentStoreCoordinator:v21->_coordinator];
    [(NSManagedObjectContext *)v21->_context setUndoManager:0];
    [(NSManagedObjectContext *)v21->_context setMergePolicy:NSMergeByPropertyObjectTrumpMergePolicy];
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v67 = sub_3F760;
    *v68 = sub_3F770;
    *&v68[8] = 0;
    v46 = dispatch_semaphore_create(0);
    v47 = v21->_sync;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_3F778;
    block[3] = &unk_2C8838;
    v48 = v46;
    v62 = v48;
    v49 = v21;
    v63 = v49;
    v64 = buf;
    dispatch_async(v47, block);
    v50 = v21->_context;
    v57[0] = _NSConcreteStackBlock;
    v57[1] = 3221225472;
    v57[2] = sub_3F7C4;
    v57[3] = &unk_2C95A0;
    v58 = v49;
    v60 = buf;
    v51 = v48;
    v59 = v51;
    [(NSManagedObjectContext *)v50 performBlock:v57];

    _Block_object_dispose(buf, 8);
  }

  return v21;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:NSPersistentStoreRemoteChangeNotification object:self->_coordinator];

  v4.receiver = self;
  v4.super_class = BCRemoteManagedObjectIDMonitor;
  [(BCRemoteManagedObjectIDMonitor *)&v4 dealloc];
}

- (BOOL)_objectHasChangesOfInterest:(id)a3
{
  if (!self->_propertiesOfInterest)
  {
    return 1;
  }

  v3 = self;
  v4 = [a3 changedValues];
  v5 = [v4 allKeys];
  v6 = [NSSet setWithArray:v5];

  LOBYTE(v3) = [v6 intersectsSet:v3->_propertiesOfInterest];
  return v3;
}

- (void)_persistentStoreRemoteDidChange:(id)a3
{
  v4 = a3;
  v5 = _os_activity_create(&dword_0, "BCRemoteMonitorHistoryProcessing", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_3FBBC;
  v7[3] = &unk_2C7BE8;
  v8 = v4;
  v9 = self;
  v6 = v4;
  os_activity_apply(v5, v7);
}

- (id)_fetchPersistentHistoryWithHistoryToken:(id)a3
{
  v4 = a3;
  v5 = [NSPersistentHistoryChangeRequest fetchHistoryAfterToken:v4];
  v6 = [(BCRemoteManagedObjectIDMonitor *)self context];
  v15 = 0;
  v7 = [v6 executeRequest:v5 error:&v15];
  v8 = v15;

  v9 = BCRemoteManagedObjectIDMonitorLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    sub_1E5D88(v4, v7);
  }

  if (!v7)
  {
    v10 = BCRemoteManagedObjectIDMonitorLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1E5E2C();
    }
  }

  v11 = [v7 result];
  if ([v11 count])
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  return v12;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(BCRemoteManagedObjectIDMonitor *)self observer];
  v6 = [v5 remoteManagerObserverId];
  v7 = [(BCRemoteManagedObjectIDMonitor *)self entityName];
  v8 = [NSString stringWithFormat:@"<%@:%p observer:%@-%@>", v4, self, v6, v7];

  return v8;
}

- (BCRemoteManagedObjectIDMonitorObserver)observer
{
  WeakRetained = objc_loadWeakRetained(&self->_observer);

  return WeakRetained;
}

@end