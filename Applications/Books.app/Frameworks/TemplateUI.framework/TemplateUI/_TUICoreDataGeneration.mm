@interface _TUICoreDataGeneration
- (_TUICoreDataGeneration)initWithContext:(id)context fetchRequest:(id)request;
- (id)description;
- (void)captureTokenFromContext:(id)context;
- (void)performBlockAndWait:(id)wait;
@end

@implementation _TUICoreDataGeneration

- (_TUICoreDataGeneration)initWithContext:(id)context fetchRequest:(id)request
{
  contextCopy = context;
  requestCopy = request;
  v14.receiver = self;
  v14.super_class = _TUICoreDataGeneration;
  v8 = [(_TUICoreDataGeneration *)&v14 init];
  if (v8)
  {
    v9 = [requestCopy copy];
    fetchRequest = v8->_fetchRequest;
    v8->_fetchRequest = v9;

    v8->_fetchLock._os_unfair_lock_opaque = 0;
    persistentStoreCoordinator = [contextCopy persistentStoreCoordinator];
    coordinator = v8->_coordinator;
    v8->_coordinator = persistentStoreCoordinator;

    v8->_count = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v8;
}

- (void)captureTokenFromContext:(id)context
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_32484;
  v4[3] = &unk_25DCA0;
  v4[4] = self;
  contextCopy = context;
  v3 = contextCopy;
  [v3 performBlockAndWait:v4];
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [NSString stringWithFormat:@"<%@ qgt=%@>", v4, self->_token];

  return v5;
}

- (void)performBlockAndWait:(id)wait
{
  waitCopy = wait;
  os_unfair_lock_lock(&self->_fetchLock);
  if (!self->_context)
  {
    v5 = [[NSManagedObjectContext alloc] initWithConcurrencyType:1];
    context = self->_context;
    self->_context = v5;

    [(NSManagedObjectContext *)self->_context setPersistentStoreCoordinator:self->_coordinator];
    [(NSManagedObjectContext *)self->_context setUndoManager:0];
  }

  v7 = self->_context;
  if (self->_fetched)
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_32724;
    v11[3] = &unk_25EAA0;
    v11[4] = self;
    v12 = waitCopy;
    v8 = waitCopy;
    [(NSManagedObjectContext *)v7 performBlockAndWait:v11];
    v9 = v12;
  }

  else
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_326AC;
    v13[3] = &unk_25EA78;
    v13[4] = self;
    v14 = waitCopy;
    v10 = waitCopy;
    [(NSManagedObjectContext *)v7 performBlockAndWait:v13];
    self->_fetched = 1;
    v9 = v14;
  }

  os_unfair_lock_unlock(&self->_fetchLock);
}

@end