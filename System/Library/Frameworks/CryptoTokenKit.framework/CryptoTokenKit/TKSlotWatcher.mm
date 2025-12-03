@interface TKSlotWatcher
- (BOOL)hasStarted;
- (TKSlotWatcher)initWithTokenRegistry:(id)registry;
- (void)dealloc;
- (void)removeSlotWatch:(id)watch;
- (void)setSlotWithName:(id)name endpoint:(id)endpoint type:(id)type reply:(id)reply;
- (void)startWithSlotServer:(id)server;
- (void)stop;
@end

@implementation TKSlotWatcher

- (TKSlotWatcher)initWithTokenRegistry:(id)registry
{
  registryCopy = registry;
  v9.receiver = self;
  v9.super_class = TKSlotWatcher;
  v6 = [(TKSlotWatcher *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_registry, registry);
  }

  return v7;
}

- (BOOL)hasStarted
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  WeakRetained = objc_loadWeakRetained(&selfCopy->_connection);
  v4 = WeakRetained != 0;

  objc_sync_exit(selfCopy);
  return v4;
}

- (void)startWithSlotServer:(id)server
{
  serverCopy = server;
  if (![(TKSlotWatcher *)self hasStarted])
  {
    v5 = +[NSMutableArray array];
    slots = self->_slots;
    self->_slots = v5;

    objc_storeWeak(&self->_connection, serverCopy);
    v7 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___TKProtocolSlotClient];
    WeakRetained = objc_loadWeakRetained(&self->_connection);
    [WeakRetained setRemoteObjectInterface:v7];

    v9 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___TKProtocolSlotClientNotification];
    v10 = objc_loadWeakRetained(&self->_connection);
    [v10 setExportedInterface:v9];

    v11 = objc_loadWeakRetained(&self->_connection);
    [v11 setExportedObject:self];

    v12 = objc_loadWeakRetained(&self->_connection);
    [v12 resume];

    v13 = objc_loadWeakRetained(&self->_connection);
    v14 = [v13 synchronousRemoteObjectProxyWithErrorHandler:&stru_100038B88];
    [v14 reportChangesForSlotType:0 reply:&stru_100038BA8];

    objc_initWeak(&location, self);
    v17 = _NSConcreteStackBlock;
    v18 = 3221225472;
    v19 = sub_10000C850;
    v20 = &unk_1000389A0;
    objc_copyWeak(&v21, &location);
    [serverCopy setInterruptionHandler:&v17];
    v15 = sub_10000B0B8();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      sub_10001EB50(v23, [(NSMutableArray *)self->_slots count:v17], v15);
    }

    if (![(NSMutableArray *)self->_slots count])
    {
      v16 = objc_loadWeakRetained(&self->_connection);
      [v16 invalidate];

      objc_storeWeak(&self->_connection, 0);
    }

    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);
  }
}

- (void)dealloc
{
  WeakRetained = objc_loadWeakRetained(&self->_connection);
  [WeakRetained invalidate];

  v4.receiver = self;
  v4.super_class = TKSlotWatcher;
  [(TKSlotWatcher *)&v4 dealloc];
}

- (void)setSlotWithName:(id)name endpoint:(id)endpoint type:(id)type reply:(id)reply
{
  nameCopy = name;
  endpointCopy = endpoint;
  typeCopy = type;
  replyCopy = reply;
  if (endpointCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v15 = [[TKSlotWatch alloc] initWithName:nameCopy endpoint:endpointCopy slotType:typeCopy watcher:selfCopy];
    if (v15)
    {
      [(NSMutableArray *)selfCopy->_slots addObject:v15];
      [(TKSlotWatch *)v15 startObserving];
      v16 = sub_10000B0B8();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        v17 = [(NSMutableArray *)selfCopy->_slots count];
        v18 = 138543874;
        v19 = typeCopy;
        v20 = 2114;
        v21 = nameCopy;
        v22 = 2048;
        v23 = v17;
        _os_log_debug_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "added slot: type=%{public}@, name=%{public}@ - total %lu slots", &v18, 0x20u);
      }
    }

    objc_sync_exit(selfCopy);
  }

  replyCopy[2](replyCopy);
}

- (void)removeSlotWatch:(id)watch
{
  watchCopy = watch;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ([(NSMutableArray *)selfCopy->_slots indexOfObject:watchCopy]!= 0x7FFFFFFFFFFFFFFFLL)
  {
    [(NSMutableArray *)selfCopy->_slots removeObject:watchCopy];
    v6 = sub_10000B0B8();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      name = [watchCopy name];
      sub_10001EC4C(name, v8, [(NSMutableArray *)selfCopy->_slots count], v6);
    }
  }

  objc_sync_exit(selfCopy);
}

- (void)stop
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  WeakRetained = objc_loadWeakRetained(&selfCopy->_connection);
  [WeakRetained invalidate];

  v5 = [(NSMutableArray *)selfCopy->_slots copy];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v11 + 1) + 8 * v9) remove];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  if ([(NSMutableArray *)selfCopy->_slots count])
  {
    v10 = +[NSAssertionHandler currentHandler];
    [v10 handleFailureInMethod:a2 object:selfCopy file:@"TKSlotWatcher.m" lineNumber:366 description:{@"%d slots still present after removing them", -[NSMutableArray count](selfCopy->_slots, "count")}];
  }

  objc_sync_exit(selfCopy);
}

@end