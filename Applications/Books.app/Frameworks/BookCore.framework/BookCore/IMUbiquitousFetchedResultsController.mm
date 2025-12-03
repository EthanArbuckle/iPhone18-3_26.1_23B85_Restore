@interface IMUbiquitousFetchedResultsController
- (IMUbiquitousFetchedResultsController)initWithFetchRequest:(id)request managedObjectContext:(id)context sectionNameKeyPath:(id)path cacheName:(id)name;
- (void)coordinatorWillRemoveStore:(id)store;
- (void)dealloc;
@end

@implementation IMUbiquitousFetchedResultsController

- (IMUbiquitousFetchedResultsController)initWithFetchRequest:(id)request managedObjectContext:(id)context sectionNameKeyPath:(id)path cacheName:(id)name
{
  v11.receiver = self;
  v11.super_class = IMUbiquitousFetchedResultsController;
  v6 = [(IMUbiquitousFetchedResultsController *)&v11 initWithFetchRequest:request managedObjectContext:context sectionNameKeyPath:path cacheName:name];
  if (v6)
  {
    v7 = +[NSOperationQueue currentQueue];
    queue = v6->_queue;
    v6->_queue = v7;

    v9 = +[NSNotificationCenter defaultCenter];
    [v9 addObserver:v6 selector:"coordinatorWillRemoveStore:" name:NSPersistentStoreCoordinatorStoresDidChangeNotification object:0];
  }

  return v6;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:NSPersistentStoreCoordinatorStoresDidChangeNotification object:0];

  v4.receiver = self;
  v4.super_class = IMUbiquitousFetchedResultsController;
  [(IMUbiquitousFetchedResultsController *)&v4 dealloc];
}

- (void)coordinatorWillRemoveStore:(id)store
{
  object = [store object];
  persistentStoreCoordinator = [object persistentStoreCoordinator];
  managedObjectContext = [(IMUbiquitousFetchedResultsController *)self managedObjectContext];
  persistentStoreCoordinator2 = [managedObjectContext persistentStoreCoordinator];
  v8 = [persistentStoreCoordinator isEqual:persistentStoreCoordinator2];

  if (v8)
  {
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_17C344;
    v15[3] = &unk_2C7D40;
    v15[4] = self;
    v9 = objc_retainBlock(v15);
    v10 = +[NSOperationQueue currentQueue];
    queue = [(IMUbiquitousFetchedResultsController *)self queue];

    if (v10 == queue)
    {
      (v9[2])(v9);
    }

    else
    {
      v12 = [NSBlockOperation blockOperationWithBlock:v9];
      [v12 setQueuePriority:8];
      queue2 = [(IMUbiquitousFetchedResultsController *)self queue];
      v14 = [NSArray arrayWithObject:v12];
      [queue2 addOperations:v14 waitUntilFinished:1];
    }
  }
}

@end