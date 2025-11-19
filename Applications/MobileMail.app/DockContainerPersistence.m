@interface DockContainerPersistence
+ (id)log;
- (DockContainerPersistence)initWithRecoveryDelegate:(id)a3;
- (DockContainerPersistenceRecoveryDelegate)recoveryDelegate;
- (id)requestDockedStates;
- (void)_beginLoadFromDisk;
- (void)_notifyObserversOfChange:(id)a3 sender:(id)a4;
- (void)_saveToDisk;
- (void)migrateDockContainerDraftsToWindowsIfNeeded:(id)a3;
- (void)pushNewDockedState:(id)a3 sender:(id)a4;
- (void)recoverAbandonedDrafts;
- (void)registerObserver:(id)a3;
- (void)removeDockedStateWithIdentifier:(id)a3 sender:(id)a4;
- (void)removeObserver:(id)a3;
@end

@implementation DockContainerPersistence

- (void)_beginLoadFromDisk
{
  v3 = [(DockContainerPersistence *)self queue];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10000B1B4;
  v4[3] = &unk_10064C7E8;
  v4[4] = self;
  [v3 performBlock:v4];
}

+ (id)log
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000B3B8;
  block[3] = &unk_10064C4F8;
  block[4] = a1;
  if (qword_1006DCE70 != -1)
  {
    dispatch_once(&qword_1006DCE70, block);
  }

  v2 = qword_1006DCE68;

  return v2;
}

- (void)recoverAbandonedDrafts
{
  v3 = [(DockContainerPersistence *)self recoveryCancelable];
  [v3 cancel];

  v4 = [(DockContainerPersistence *)self queue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100019B78;
  v6[3] = &unk_10064E780;
  v6[4] = self;
  v5 = [v4 performCancelableBlock:v6];
  [(DockContainerPersistence *)self setRecoveryCancelable:v5];
}

- (DockContainerPersistence)initWithRecoveryDelegate:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = DockContainerPersistence;
  v5 = [(DockContainerPersistence *)&v14 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_recoveryDelegate, v4);
    v7 = objc_alloc_init(NSMutableArray);
    dockedStates = v6->_dockedStates;
    v6->_dockedStates = v7;

    v9 = [[NSHashTable alloc] initWithOptions:5 capacity:3];
    observers = v6->_observers;
    v6->_observers = v9;

    v11 = [EFScheduler serialDispatchQueueSchedulerWithName:@"DockContainerPersistenceQueue"];
    queue = v6->_queue;
    v6->_queue = v11;

    [(DockContainerPersistence *)v6 _beginLoadFromDisk];
  }

  return v6;
}

- (id)requestDockedStates
{
  v3 = [(DockContainerPersistence *)self queue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100099784;
  v6[3] = &unk_10064E650;
  v6[4] = self;
  v4 = [EFFuture onScheduler:v3 futureWithBlock:v6];

  return v4;
}

- (void)pushNewDockedState:(id)a3 sender:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(DockContainerPersistence *)self queue];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000999F8;
  v16[3] = &unk_10064E6A0;
  v9 = v6;
  v17 = v9;
  v18 = self;
  v10 = [EFFuture onScheduler:v8 futureWithBlock:v16];

  v11 = [(DockContainerPersistence *)self queue];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100099C04;
  v14[3] = &unk_10064E6C8;
  v14[4] = self;
  v12 = v7;
  v15 = v12;
  [v10 onScheduler:v11 addSuccessBlock:v14];

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100099C14;
  v13[3] = &unk_10064E6F0;
  v13[4] = self;
  [v10 addSuccessBlock:v13];
}

- (void)removeDockedStateWithIdentifier:(id)a3 sender:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = [(DockContainerPersistence *)self queue];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100099E2C;
    v14[3] = &unk_10064E6A0;
    v14[4] = self;
    v15 = v6;
    v9 = [EFFuture onScheduler:v8 futureWithBlock:v14];

    v10 = [(DockContainerPersistence *)self queue];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100099FF0;
    v12[3] = &unk_10064E6C8;
    v12[4] = self;
    v13 = v7;
    [v9 onScheduler:v10 addSuccessBlock:v12];

    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10009A000;
    v11[3] = &unk_10064E6F0;
    v11[4] = self;
    [v9 addSuccessBlock:v11];
  }
}

- (void)registerObserver:(id)a3
{
  v4 = a3;
  v5 = [(DockContainerPersistence *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10009A0E4;
  v7[3] = &unk_10064C660;
  v7[4] = self;
  v6 = v4;
  v8 = v6;
  [v5 performBlock:v7];
}

- (void)removeObserver:(id)a3
{
  v4 = a3;
  v5 = [(DockContainerPersistence *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10009A338;
  v7[3] = &unk_10064C660;
  v7[4] = self;
  v6 = v4;
  v8 = v6;
  [v5 performBlock:v7];
}

- (void)_notifyObserversOfChange:(id)a3 sender:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(DockContainerPersistence *)self observers];
  v9 = [v8 allObjects];

  v10 = +[EFScheduler mainThreadScheduler];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10009A66C;
  v14[3] = &unk_10064E348;
  v11 = v7;
  v15 = v11;
  v12 = v9;
  v16 = v12;
  v17 = self;
  v13 = v6;
  v18 = v13;
  [v10 performBlock:v14];
}

- (void)_saveToDisk
{
  v3 = [(DockContainerPersistence *)self activeWriteCancelable];

  if (v3)
  {
    v4 = [(DockContainerPersistence *)self activeWriteCancelable];
    [v4 cancel];
  }

  v5 = [(DockContainerPersistence *)self dockedStates];
  v6 = [v5 copy];

  v7 = [(DockContainerPersistence *)self queue];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10009A9BC;
  v10[3] = &unk_10064E780;
  v8 = v6;
  v11 = v8;
  v9 = [v7 performCancelableBlock:v10];
  [(DockContainerPersistence *)self setActiveWriteCancelable:v9];
}

- (void)migrateDockContainerDraftsToWindowsIfNeeded:(id)a3
{
  v4 = a3;
  v5 = +[DockContainerPersistence log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v11 = [v4 count];
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Migrate %lu docked drafts", buf, 0xCu);
  }

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10009AC44;
  v7[3] = &unk_10064E6C8;
  v6 = v4;
  v8 = v6;
  v9 = self;
  [MFBayAdoption migrateDockedDrafts:v6 completion:v7];
}

- (DockContainerPersistenceRecoveryDelegate)recoveryDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_recoveryDelegate);

  return WeakRetained;
}

@end