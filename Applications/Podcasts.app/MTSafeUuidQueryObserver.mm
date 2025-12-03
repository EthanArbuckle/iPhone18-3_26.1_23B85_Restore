@interface MTSafeUuidQueryObserver
- (MTSafeUuidQueryObserver)initWithFetchRequest:(id)request managedObjectContext:(id)context;
- (id)addResultsChangedHandler:(id)handler;
- (void)controller:(id)controller didChangeObject:(id)object atIndexPath:(id)path forChangeType:(unint64_t)type newIndexPath:(id)indexPath;
- (void)controllerWillChangeContent:(id)content;
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

- (MTSafeUuidQueryObserver)initWithFetchRequest:(id)request managedObjectContext:(id)context
{
  contextCopy = context;
  requestCopy = request;
  v8 = objc_opt_new();
  currentItems = self->currentItems;
  self->currentItems = v8;

  v12.receiver = self;
  v12.super_class = MTSafeUuidQueryObserver;
  v10 = [(MTSafeUuidQueryObserver *)&v12 initWithFetchRequest:requestCopy managedObjectContext:contextCopy];

  return v10;
}

- (id)addResultsChangedHandler:(id)handler
{
  v4 = objc_retainBlock(handler);
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
    handlers = [(MTSafeUuidQueryObserver *)self handlers];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000FA9E8;
    v11[3] = &unk_1004DC368;
    v12 = v5;
    v13 = v4;
    v14 = v6;
    [handlers enumerateKeysAndObjectsUsingBlock:v11];
  }
}

- (void)controllerWillChangeContent:(id)content
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

- (void)controller:(id)controller didChangeObject:(id)object atIndexPath:(id)path forChangeType:(unint64_t)type newIndexPath:(id)indexPath
{
  objectCopy = object;
  v10 = [objectCopy valueForKey:@"uuid"];
  if (v10)
  {
    if (type == 2)
    {
      v11 = 16;
    }

    else if (type == 1)
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
      v14 = objectCopy;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "MTSafeUUIDQueryObserver has no UUID for object %@", &v13, 0xCu);
    }
  }
}

@end