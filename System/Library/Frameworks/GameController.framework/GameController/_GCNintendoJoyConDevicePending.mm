@interface _GCNintendoJoyConDevicePending
- (_GCNintendoJoyConDevicePending)init;
- (_GCNintendoJoyConDevicePending)initWithHIDService:(id)service manager:(id)manager;
- (void)_onqueue_prepareDeviceWithConnection:(uint64_t)connection;
- (void)dealloc;
- (void)setDriverConnection:(id)connection invalidatingPrevious:(BOOL)previous;
- (void)setFilterConnection:(id)connection invalidatingPrevious:(BOOL)previous;
@end

@implementation _GCNintendoJoyConDevicePending

- (_GCNintendoJoyConDevicePending)initWithHIDService:(id)service manager:(id)manager
{
  serviceCopy = service;
  managerCopy = manager;
  v24.receiver = self;
  v24.super_class = _GCNintendoJoyConDevicePending;
  v9 = [(_GCNintendoJoyConDevicePending *)&v24 init];
  if (!serviceCopy)
  {
    [_GCNintendoJoyConDevicePending initWithHIDService:a2 manager:v9];
    if (managerCopy)
    {
      goto LABEL_3;
    }

LABEL_5:
    [_GCNintendoJoyConDevicePending initWithHIDService:a2 manager:v9];
    goto LABEL_3;
  }

  if (!managerCopy)
  {
    goto LABEL_5;
  }

LABEL_3:
  v10 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, -1);
  v11 = dispatch_queue_create("NintendoJoyConDevice.Pending", v10);
  queue = v9->_queue;
  v9->_queue = v11;

  serviceInfo = v9->_serviceInfo;
  v9->_serviceInfo = serviceCopy;
  v14 = serviceCopy;

  manager = v9->_manager;
  v9->_manager = managerCopy;
  v16 = managerCopy;

  v17 = MEMORY[0x1E69A06D0];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __61___GCNintendoJoyConDevicePending_initWithHIDService_manager___block_invoke;
  v22[3] = &unk_1E841A9A8;
  v18 = v9;
  v23 = v18;
  v19 = [v17 futureWithBlock:v22];
  deviceFuture = v18->_deviceFuture;
  v18->_deviceFuture = v19;

  return v18;
}

- (_GCNintendoJoyConDevicePending)init
{
  [(_GCNintendoJoyConDevicePending *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (void)dealloc
{
  [(GCPromise *)self->_devicePromise cancel];
  v3.receiver = self;
  v3.super_class = _GCNintendoJoyConDevicePending;
  [(_GCNintendoJoyConDevicePending *)&v3 dealloc];
}

- (void)setDriverConnection:(id)connection invalidatingPrevious:(BOOL)previous
{
  connectionCopy = connection;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ([connectionCopy isEqual:selfCopy->_driverConnection])
  {
    objc_sync_exit(selfCopy);
  }

  else
  {
    v9 = selfCopy->_driverConnection;
    [(_GCNintendoJoyConDevicePending *)selfCopy willChangeValueForKey:@"driverConnection"];
    objc_setProperty_atomic(selfCopy, a2, connectionCopy, 48);
    [(_GCNintendoJoyConDevicePending *)selfCopy didChangeValueForKey:@"driverConnection"];
    objc_sync_exit(selfCopy);

    queue = selfCopy->_queue;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __75___GCNintendoJoyConDevicePending_setDriverConnection_invalidatingPrevious___block_invoke;
    v12[3] = &unk_1E841AC48;
    v12[4] = selfCopy;
    v13 = connectionCopy;
    v14 = v9;
    previousCopy = previous;
    v11 = v9;
    dispatch_async(queue, v12);
  }
}

- (void)_onqueue_prepareDeviceWithConnection:(uint64_t)connection
{
  v3 = a2;
  if (connection)
  {
    dispatch_assert_queue_V2(*(connection + 8));
    v4 = _os_activity_create(&dword_1D2CD5000, "[JoyCon Physical Device (Pending)] Prepare Device", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(v4, &state);
    if (v3)
    {
      if ([v3 isInvalid] & 1) != 0 || (objc_msgSend(*(connection + 24), "isCancelled"))
      {
        goto LABEL_18;
      }

      v5 = [*(connection + 56) stringPropertyForKey:@"JoyConControllerType"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if ([v5 isEqualToString:@"Joy-Con (L)"])
        {
          v6 = 1;
LABEL_10:

          currentHandler = [[_GCNintendoJoyConDevice alloc] initWithHIDDevice:*(connection + 56) manager:*(connection + 32) type:v6];
LABEL_11:
          if (objc_opt_respondsToSelector())
          {
            [(_GCNintendoJoyConDevice *)currentHandler setDriverConnection:*(connection + 48)];
          }

          if ((objc_opt_respondsToSelector() & 1) != 0 && *(connection + 40))
          {
            [(_GCNintendoJoyConDevice *)currentHandler setFilterConnection:?];
          }

          [*(connection + 24) succeedWithResult:currentHandler];
          goto LABEL_17;
        }

        if ([v5 isEqualToString:@"Joy-Con (R)"])
        {
          v6 = 2;
          goto LABEL_10;
        }

        if ([v5 isEqualToString:@"Pro Controller"] & 1) != 0 || (objc_msgSend(v5, "isEqualToString:", @"NES Controller (L)") & 1) != 0 || (objc_msgSend(v5, "isEqualToString:", @"NES Controller (R)") & 1) != 0 || (objc_msgSend(v5, "isEqualToString:", @"SNES Controller") & 1) != 0 || (objc_msgSend(v5, "isEqualToString:", @"N64 Controller"))
        {

          currentHandler = [[_GCDefaultPhysicalDevice alloc] initWithHIDDevice:*(connection + 56) manager:*(connection + 32)];
          [(_GCNintendoJoyConDevice *)currentHandler setDelegate:objc_opt_class()];
          goto LABEL_11;
        }
      }

      if (!gc_isInternalBuild())
      {
        goto LABEL_18;
      }

      currentHandler = getGCLogger();
      if (os_log_type_enabled(&currentHandler->super, OS_LOG_TYPE_ERROR))
      {
        [(_GCNintendoJoyConDevicePending *)connection _onqueue_prepareDeviceWithConnection:?];
      }
    }

    else
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [(_GCNintendoJoyConDevice *)currentHandler handleFailureInMethod:sel__onqueue_prepareDeviceWithConnection_ object:connection file:@"_GCNintendoJoyConDevicePending.m" lineNumber:158 description:@"Invalid parameter not satisfying: %s", "connection != nil"];
    }

LABEL_17:

LABEL_18:
    os_activity_scope_leave(&state);
  }
}

- (void)setFilterConnection:(id)connection invalidatingPrevious:(BOOL)previous
{
  connectionCopy = connection;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ([connectionCopy isEqual:selfCopy->_filterConnection])
  {
    objc_sync_exit(selfCopy);
  }

  else
  {
    v9 = selfCopy->_filterConnection;
    [(_GCNintendoJoyConDevicePending *)selfCopy willChangeValueForKey:@"filterConnection"];
    objc_setProperty_atomic(selfCopy, a2, connectionCopy, 40);
    [(_GCNintendoJoyConDevicePending *)selfCopy didChangeValueForKey:@"filterConnection"];
    objc_sync_exit(selfCopy);

    queue = selfCopy->_queue;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __75___GCNintendoJoyConDevicePending_setFilterConnection_invalidatingPrevious___block_invoke;
    v12[3] = &unk_1E841AC48;
    v12[4] = selfCopy;
    v13 = connectionCopy;
    v14 = v9;
    previousCopy = previous;
    v11 = v9;
    dispatch_async(queue, v12);
  }
}

- (void)initWithHIDService:(uint64_t)a1 manager:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"_GCNintendoJoyConDevicePending.m" lineNumber:42 description:{@"Invalid parameter not satisfying: %s", "serviceInfo != nil"}];
}

- (void)initWithHIDService:(uint64_t)a1 manager:(uint64_t)a2 .cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"_GCNintendoJoyConDevicePending.m" lineNumber:43 description:{@"Invalid parameter not satisfying: %s", "manager != nil"}];
}

- (void)_onqueue_prepareDeviceWithConnection:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1D2CD5000, a2, OS_LOG_TYPE_ERROR, "%@ Missing controller type", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end