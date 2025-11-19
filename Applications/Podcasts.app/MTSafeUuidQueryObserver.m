@interface MTSafeUuidQueryObserver
- (MTSafeUuidQueryObserver)initWithFetchRequest:(id)a3 managedObjectContext:(id)a4;
- (id)addResultsChangedHandler:(id)a3;
- (void)controller:(id)a3 didChangeObject:(id)a4 atIndexPath:(id)a5 forChangeType:(unint64_t)a6 newIndexPath:(id)a7;
- (void)controllerWillChangeContent:(id)a3;
- (void)notifyObservers;
- (void)startObserving;
@end

@implementation MTSafeUuidQueryObserver

- (void)startObserving
{
  v4.receiver = self;
  v4.super_class = MTSafeUuidQueryObserver;
  [(MTSafeUuidQueryObserver *)&v4 startObserving];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000FA754;
  v3[3] = &unk_1004DAFB0;
  v3[4] = self;
  [(MTSafeUuidQueryObserver *)self results:v3];
}

- (MTSafeUuidQueryObserver)initWithFetchRequest:(id)a3 managedObjectContext:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_opt_new();
  currentItems = self->currentItems;
  self->currentItems = v8;

  v12.receiver = self;
  v12.super_class = MTSafeUuidQueryObserver;
  v10 = [(MTSafeUuidQueryObserver *)&v12 initWithFetchRequest:v7 managedObjectContext:v6];

  return v10;
}

- (id)addResultsChangedHandler:(id)a3
{
  v4 = objc_retainBlock(a3);
  v7.receiver = self;
  v7.super_class = MTSafeUuidQueryObserver;
  v5 = [(MTSafeUuidQueryObserver *)&v7 addResultsChangedHandler:v4];

  return v5;
}

- (void)notifyObservers
{
  v3 = [(NSMutableSet *)self->currentItems mutableCopy];
  [v3 intersectSet:self->currentInserts];
  [(NSMutableSet *)self->currentInserts minusSet:v3];
  [(NSMutableSet *)self->currentUpdates unionSet:v3];
  [(NSMutableSet *)self->currentDeletes intersectSet:self->currentItems];
  [(NSMutableSet *)self->currentUpdates intersectSet:self->currentItems];
  [(NSMutableSet *)self->currentItems unionSet:self->currentInserts];
  [(NSMutableSet *)self->currentItems minusSet:self->currentDeletes];
  v4 = [(NSMutableSet *)self->currentInserts copy];
  v5 = [(NSMutableSet *)self->currentDeletes copy];
  v6 = [(NSMutableSet *)self->currentUpdates copy];
  currentInserts = self->currentInserts;
  self->currentInserts = 0;

  currentDeletes = self->currentDeletes;
  self->currentDeletes = 0;

  currentUpdates = self->currentUpdates;
  self->currentUpdates = 0;

  if ([v6 count] || objc_msgSend(v4, "count") || objc_msgSend(v5, "count"))
  {
    v10 = [(MTSafeUuidQueryObserver *)self handlers];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000FA9E8;
    v11[3] = &unk_1004DC368;
    v12 = v5;
    v13 = v4;
    v14 = v6;
    [v10 enumerateKeysAndObjectsUsingBlock:v11];
  }
}

- (void)controllerWillChangeContent:(id)a3
{
  v4 = objc_opt_new();
  currentInserts = self->currentInserts;
  self->currentInserts = v4;

  v6 = objc_opt_new();
  currentDeletes = self->currentDeletes;
  self->currentDeletes = v6;

  v8 = objc_opt_new();
  currentUpdates = self->currentUpdates;
  self->currentUpdates = v8;
}

- (void)controller:(id)a3 didChangeObject:(id)a4 atIndexPath:(id)a5 forChangeType:(unint64_t)a6 newIndexPath:(id)a7
{
  v9 = a4;
  v10 = [v9 valueForKey:@"uuid"];
  if (v10)
  {
    if (a6 == 2)
    {
      v11 = 16;
    }

    else if (a6 == 1)
    {
      v11 = 8;
    }

    else
    {
      v11 = 24;
    }

    [*&self->MTBaseQueryObserver_opaque[v11] addObject:v10];
  }

  else
  {
    v12 = _MTLogCategoryDatabase();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412290;
      v14 = v9;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "MTSafeUUIDQueryObserver has no UUID for object %@", &v13, 0xCu);
    }
  }
}

@end