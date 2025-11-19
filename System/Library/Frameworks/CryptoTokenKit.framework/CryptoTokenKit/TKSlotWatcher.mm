@interface TKSlotWatcher
- (BOOL)hasStarted;
- (TKSlotWatcher)initWithTokenRegistry:(id)a3;
- (void)dealloc;
- (void)removeSlotWatch:(id)a3;
- (void)setSlotWithName:(id)a3 endpoint:(id)a4 type:(id)a5 reply:(id)a6;
- (void)startWithSlotServer:(id)a3;
- (void)stop;
@end

@implementation TKSlotWatcher

- (TKSlotWatcher)initWithTokenRegistry:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = TKSlotWatcher;
  v6 = [(TKSlotWatcher *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_registry, a3);
  }

  return v7;
}

- (BOOL)hasStarted
{
  v2 = self;
  objc_sync_enter(v2);
  WeakRetained = objc_loadWeakRetained(&v2->_connection);
  v4 = WeakRetained != 0;

  objc_sync_exit(v2);
  return v4;
}

- (void)startWithSlotServer:(id)a3
{
  v4 = a3;
  if (![(TKSlotWatcher *)self hasStarted])
  {
    v5 = +[NSMutableArray array];
    slots = self->_slots;
    self->_slots = v5;

    objc_storeWeak(&self->_connection, v4);
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
    [v4 setInterruptionHandler:&v17];
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

- (void)setSlotWithName:(id)a3 endpoint:(id)a4 type:(id)a5 reply:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (v11)
  {
    v14 = self;
    objc_sync_enter(v14);
    v15 = [[TKSlotWatch alloc] initWithName:v10 endpoint:v11 slotType:v12 watcher:v14];
    if (v15)
    {
      [(NSMutableArray *)v14->_slots addObject:v15];
      [(TKSlotWatch *)v15 startObserving];
      v16 = sub_10000B0B8();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        v17 = [(NSMutableArray *)v14->_slots count];
        v18 = 138543874;
        v19 = v12;
        v20 = 2114;
        v21 = v10;
        v22 = 2048;
        v23 = v17;
        _os_log_debug_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "added slot: type=%{public}@, name=%{public}@ - total %lu slots", &v18, 0x20u);
      }
    }

    objc_sync_exit(v14);
  }

  v13[2](v13);
}

- (void)removeSlotWatch:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  if ([(NSMutableArray *)v5->_slots indexOfObject:v4]!= 0x7FFFFFFFFFFFFFFFLL)
  {
    [(NSMutableArray *)v5->_slots removeObject:v4];
    v6 = sub_10000B0B8();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v7 = [v4 name];
      sub_10001EC4C(v7, v8, [(NSMutableArray *)v5->_slots count], v6);
    }
  }

  objc_sync_exit(v5);
}

- (void)stop
{
  v3 = self;
  objc_sync_enter(v3);
  WeakRetained = objc_loadWeakRetained(&v3->_connection);
  [WeakRetained invalidate];

  v5 = [(NSMutableArray *)v3->_slots copy];
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

  if ([(NSMutableArray *)v3->_slots count])
  {
    v10 = +[NSAssertionHandler currentHandler];
    [v10 handleFailureInMethod:a2 object:v3 file:@"TKSlotWatcher.m" lineNumber:366 description:{@"%d slots still present after removing them", -[NSMutableArray count](v3->_slots, "count")}];
  }

  objc_sync_exit(v3);
}

@end