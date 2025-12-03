@interface BKPaginationOperation
- (BKPaginationOperationController)paginationOperationController;
- (BOOL)isJobGenerationValid;
- (id)init:(id)init paginationOperationController:(id)controller annotationProvider:(id)provider;
- (void)cancel;
- (void)main;
- (void)performBackgroundAnnotationsBlockAndWait:(id)wait;
- (void)performBlockAndWait:(id)wait;
@end

@implementation BKPaginationOperation

- (id)init:(id)init paginationOperationController:(id)controller annotationProvider:(id)provider
{
  initCopy = init;
  controllerCopy = controller;
  providerCopy = provider;
  v12 = [(BKPaginationOperation *)self init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_job, init);
    persistentStoreCoordinator = [controllerCopy persistentStoreCoordinator];
    psc = v13->_psc;
    v13->_psc = persistentStoreCoordinator;

    bookObjectID = [controllerCopy bookObjectID];
    bookObjectID = v13->_bookObjectID;
    v13->_bookObjectID = bookObjectID;

    bookDatabaseKey = [controllerCopy bookDatabaseKey];
    v19 = [bookDatabaseKey copy];
    bookDatabaseKey = v13->_bookDatabaseKey;
    v13->_bookDatabaseKey = v19;

    objc_storeWeak(&v13->_paginationOperationController, controllerCopy);
    objc_storeStrong(&v13->_annotationProvider, provider);
  }

  return v13;
}

- (BOOL)isJobGenerationValid
{
  selfCopy = self;
  paginationOperationController = [(BKPaginationOperation *)self paginationOperationController];
  jobGeneration = [paginationOperationController jobGeneration];
  LOBYTE(selfCopy) = jobGeneration == [(BKPaginationJob *)selfCopy->_job jobGeneration];

  return selfCopy;
}

- (void)performBlockAndWait:(id)wait
{
  waitCopy = wait;
  if (waitCopy)
  {
    v5 = self->_operationMoc;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_885DC;
    v7[3] = &unk_1E3258;
    v8 = v5;
    v9 = waitCopy;
    v6 = v5;
    [(NSManagedObjectContext *)v6 performBlockAndWait:v7];
  }
}

- (void)performBackgroundAnnotationsBlockAndWait:(id)wait
{
  waitCopy = wait;
  if (waitCopy)
  {
    annotationProvider = [(BKPaginationOperation *)self annotationProvider];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_886D4;
    v6[3] = &unk_1E4C70;
    v7 = waitCopy;
    [annotationProvider performBlockOnUserSideQueueAndWait:v6];
  }
}

- (void)cancel
{
  objc_storeWeak(&self->_paginationOperationController, 0);
  v3.receiver = self;
  v3.super_class = BKPaginationOperation;
  [(BKPaginationOperation *)&v3 cancel];
}

- (void)main
{
  v3 = objc_autoreleasePoolPush();
  if ([(BKPaginationOperation *)self needsBookManagedObjectContext])
  {
    v4 = [[NSManagedObjectContext alloc] initWithConcurrencyType:1];
    operationMoc = self->_operationMoc;
    self->_operationMoc = v4;

    [(NSManagedObjectContext *)self->_operationMoc setPersistentStoreCoordinator:self->_psc];
    [(NSManagedObjectContext *)self->_operationMoc setMergePolicy:NSRollbackMergePolicy];
  }

  if (([(BKPaginationOperation *)self isCancelled]& 1) == 0)
  {
    [(BKPaginationOperation *)self execute];
  }

  v6 = self->_operationMoc;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_888B8;
  v8[3] = &unk_1E2BD0;
  v8[4] = self;
  [(NSManagedObjectContext *)v6 performBlockAndWait:v8];
  v7 = self->_operationMoc;
  self->_operationMoc = 0;

  objc_storeWeak(&self->_paginationOperationController, 0);
  objc_autoreleasePoolPop(v3);
}

- (BKPaginationOperationController)paginationOperationController
{
  WeakRetained = objc_loadWeakRetained(&self->_paginationOperationController);

  return WeakRetained;
}

@end