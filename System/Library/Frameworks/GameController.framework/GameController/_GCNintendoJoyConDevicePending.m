@interface _GCNintendoJoyConDevicePending
- (_GCNintendoJoyConDevicePending)init;
- (_GCNintendoJoyConDevicePending)initWithHIDService:(id)a3 manager:(id)a4;
- (void)_onqueue_prepareDeviceWithConnection:(uint64_t)a1;
- (void)dealloc;
- (void)setDriverConnection:(id)a3 invalidatingPrevious:(BOOL)a4;
- (void)setFilterConnection:(id)a3 invalidatingPrevious:(BOOL)a4;
@end

@implementation _GCNintendoJoyConDevicePending

- (_GCNintendoJoyConDevicePending)initWithHIDService:(id)a3 manager:(id)a4
{
  v7 = a3;
  v8 = a4;
  v24.receiver = self;
  v24.super_class = _GCNintendoJoyConDevicePending;
  v9 = [(_GCNintendoJoyConDevicePending *)&v24 init];
  if (!v7)
  {
    [_GCNintendoJoyConDevicePending initWithHIDService:a2 manager:v9];
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_5:
    [_GCNintendoJoyConDevicePending initWithHIDService:a2 manager:v9];
    goto LABEL_3;
  }

  if (!v8)
  {
    goto LABEL_5;
  }

LABEL_3:
  v10 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, -1);
  v11 = dispatch_queue_create("NintendoJoyConDevice.Pending", v10);
  queue = v9->_queue;
  v9->_queue = v11;

  serviceInfo = v9->_serviceInfo;
  v9->_serviceInfo = v7;
  v14 = v7;

  manager = v9->_manager;
  v9->_manager = v8;
  v16 = v8;

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

- (void)setDriverConnection:(id)a3 invalidatingPrevious:(BOOL)a4
{
  v7 = a3;
  v8 = self;
  objc_sync_enter(v8);
  if ([v7 isEqual:v8->_driverConnection])
  {
    objc_sync_exit(v8);
  }

  else
  {
    v9 = v8->_driverConnection;
    [(_GCNintendoJoyConDevicePending *)v8 willChangeValueForKey:@"driverConnection"];
    objc_setProperty_atomic(v8, a2, v7, 48);
    [(_GCNintendoJoyConDevicePending *)v8 didChangeValueForKey:@"driverConnection"];
    objc_sync_exit(v8);

    queue = v8->_queue;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __75___GCNintendoJoyConDevicePending_setDriverConnection_invalidatingPrevious___block_invoke;
    v12[3] = &unk_1E841AC48;
    v12[4] = v8;
    v13 = v7;
    v14 = v9;
    v15 = a4;
    v11 = v9;
    dispatch_async(queue, v12);
  }
}

- (void)_onqueue_prepareDeviceWithConnection:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 8));
    v4 = _os_activity_create(&dword_1D2CD5000, "[JoyCon Physical Device (Pending)] Prepare Device", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(v4, &state);
    if (v3)
    {
      if ([v3 isInvalid] & 1) != 0 || (objc_msgSend(*(a1 + 24), "isCancelled"))
      {
        goto LABEL_18;
      }

      v5 = [*(a1 + 56) stringPropertyForKey:@"JoyConControllerType"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if ([v5 isEqualToString:@"Joy-Con (L)"])
        {
          v6 = 1;
LABEL_10:

          v7 = [[_GCNintendoJoyConDevice alloc] initWithHIDDevice:*(a1 + 56) manager:*(a1 + 32) type:v6];
LABEL_11:
          if (objc_opt_respondsToSelector())
          {
            [(_GCNintendoJoyConDevice *)v7 setDriverConnection:*(a1 + 48)];
          }

          if ((objc_opt_respondsToSelector() & 1) != 0 && *(a1 + 40))
          {
            [(_GCNintendoJoyConDevice *)v7 setFilterConnection:?];
          }

          [*(a1 + 24) succeedWithResult:v7];
          goto LABEL_17;
        }

        if ([v5 isEqualToString:@"Joy-Con (R)"])
        {
          v6 = 2;
          goto LABEL_10;
        }

        if ([v5 isEqualToString:@"Pro Controller"] & 1) != 0 || (objc_msgSend(v5, "isEqualToString:", @"NES Controller (L)") & 1) != 0 || (objc_msgSend(v5, "isEqualToString:", @"NES Controller (R)") & 1) != 0 || (objc_msgSend(v5, "isEqualToString:", @"SNES Controller") & 1) != 0 || (objc_msgSend(v5, "isEqualToString:", @"N64 Controller"))
        {

          v7 = [[_GCDefaultPhysicalDevice alloc] initWithHIDDevice:*(a1 + 56) manager:*(a1 + 32)];
          [(_GCNintendoJoyConDevice *)v7 setDelegate:objc_opt_class()];
          goto LABEL_11;
        }
      }

      if (!gc_isInternalBuild())
      {
        goto LABEL_18;
      }

      v7 = getGCLogger();
      if (os_log_type_enabled(&v7->super, OS_LOG_TYPE_ERROR))
      {
        [(_GCNintendoJoyConDevicePending *)a1 _onqueue_prepareDeviceWithConnection:?];
      }
    }

    else
    {
      v7 = [MEMORY[0x1E696AAA8] currentHandler];
      [(_GCNintendoJoyConDevice *)v7 handleFailureInMethod:sel__onqueue_prepareDeviceWithConnection_ object:a1 file:@"_GCNintendoJoyConDevicePending.m" lineNumber:158 description:@"Invalid parameter not satisfying: %s", "connection != nil"];
    }

LABEL_17:

LABEL_18:
    os_activity_scope_leave(&state);
  }
}

- (void)setFilterConnection:(id)a3 invalidatingPrevious:(BOOL)a4
{
  v7 = a3;
  v8 = self;
  objc_sync_enter(v8);
  if ([v7 isEqual:v8->_filterConnection])
  {
    objc_sync_exit(v8);
  }

  else
  {
    v9 = v8->_filterConnection;
    [(_GCNintendoJoyConDevicePending *)v8 willChangeValueForKey:@"filterConnection"];
    objc_setProperty_atomic(v8, a2, v7, 40);
    [(_GCNintendoJoyConDevicePending *)v8 didChangeValueForKey:@"filterConnection"];
    objc_sync_exit(v8);

    queue = v8->_queue;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __75___GCNintendoJoyConDevicePending_setFilterConnection_invalidatingPrevious___block_invoke;
    v12[3] = &unk_1E841AC48;
    v12[4] = v8;
    v13 = v7;
    v14 = v9;
    v15 = a4;
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