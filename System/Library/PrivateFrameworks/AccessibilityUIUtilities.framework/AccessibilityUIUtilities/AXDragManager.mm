@interface AXDragManager
- (AXDragManager)initWithMachServiceName:(id)name;
- (AXDragManagerDelegate)delegate;
- (BOOL)_shouldAllowEndpointVendForRequestingConnection:(id)connection;
- (BOOL)isDragActive;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (id)endpointForRequestingConnection:(id)connection fromEndpointVendor:(id)vendor;
- (void)cancelDrag;
- (void)dragSession:(id)session movedToPoint:(CGPoint)point byRequestor:(id)requestor;
- (void)dragSessionChanged:(id)changed toStatus:(id)status;
- (void)dragSessionEnded:(id)ended withOperation:(unint64_t)operation;
- (void)dragSessionWasTerminated:(id)terminated;
- (void)drop;
- (void)moveToAndDropAtPoint:(CGPoint)point;
- (void)moveToPoint:(CGPoint)point;
- (void)setDragSession:(id)session;
- (void)waitForDragStartFromPid:(int)pid completionHandler:(id)handler;
@end

@implementation AXDragManager

- (AXDragManager)initWithMachServiceName:(id)name
{
  nameCopy = name;
  v19.receiver = self;
  v19.super_class = AXDragManager;
  v5 = [(AXDragManager *)&v19 init];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x1E696B0D8]) initWithMachServiceName:nameCopy];
    v7 = [[AXDragEndpointVendor alloc] initWithXPCListener:v6];
    vendor = v5->_vendor;
    v5->_vendor = v7;

    [(AXDragEndpointVendor *)v5->_vendor setDelegate:v5];
    anonymousListener = [MEMORY[0x1E696B0D8] anonymousListener];
    endpointListener = v5->_endpointListener;
    v5->_endpointListener = anonymousListener;

    [(NSXPCListener *)v5->_endpointListener setDelegate:v5];
    array = [MEMORY[0x1E695DF70] array];
    activeSessions = v5->_activeSessions;
    v5->_activeSessions = array;

    v13 = [nameCopy stringByAppendingFormat:@"-DragStateQueue"];
    v14 = dispatch_queue_create([v13 UTF8String], 0);
    dragStateQueue = v5->_dragStateQueue;
    v5->_dragStateQueue = v14;

    v5->_pidForDrag = -1;
    [(AXDragEndpointVendor *)v5->_vendor resume];
    [(NSXPCListener *)v5->_endpointListener resume];
    v16 = [nameCopy copy];
    machServiceName = v5->_machServiceName;
    v5->_machServiceName = v16;
  }

  return v5;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  v17 = *MEMORY[0x1E69E9840];
  connectionCopy = connection;
  v6 = AXLogDragging();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [AXDragManager listener:connectionCopy shouldAcceptNewConnection:?];
  }

  v7 = [connectionCopy valueForEntitlement:@"com.apple.backboardd.detachTouches"];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && ([v7 BOOLValue])
  {
    v8 = [[AXDragSession alloc] initWithDruidConnection:connectionCopy];
    [(AXDragSession *)v8 setManager:self];
    [(NSMutableArray *)self->_activeSessions addObject:v8];
    dragStateQueue = self->_dragStateQueue;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __52__AXDragManager_listener_shouldAcceptNewConnection___block_invoke;
    v13[3] = &unk_1E812DD68;
    v13[4] = self;
    v14 = v8;
    v10 = v8;
    dispatch_async(dragStateQueue, v13);

    v11 = 1;
  }

  else
  {
    v10 = AXLogDragging();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      processIdentifier = [connectionCopy processIdentifier];
      _os_log_impl(&dword_1C0DFB000, v10, OS_LOG_TYPE_DEFAULT, "Process %d, you are not druid. Go away.", buf, 8u);
    }

    v11 = 0;
  }

  return v11;
}

uint64_t __52__AXDragManager_listener_shouldAcceptNewConnection___block_invoke(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) pidForDrag];
  v4 = AXLogDragging();
  v5 = v4;
  if (v3 == -1)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __52__AXDragManager_listener_shouldAcceptNewConnection___block_invoke_cold_2();
    }

    [*(a1 + 40) abort];
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      __52__AXDragManager_listener_shouldAcceptNewConnection___block_invoke_cold_1(v2);
    }

    [*(a1 + 32) setPidForDrag:0xFFFFFFFFLL];
    v6 = [*(a1 + 32) dragStartTimer];
    [v6 cancel];

    [*(a1 + 32) setDragSession:*(a1 + 40)];
    [*(a1 + 40) setDelegate:*(a1 + 32)];
    [*(a1 + 40) resume];
    v7 = [*(a1 + 32) delegate];
    LOBYTE(v6) = objc_opt_respondsToSelector();

    if (v6)
    {
      v8 = [*v2 delegate];
      [v8 didStartDragForDragManager:*v2];
    }

    v9 = [*v2 dragStartCompletionHandler];

    if (v9)
    {
      v10 = [*v2 dragStartCompletionHandler];
      v10[2](v10, 1);
    }
  }

  return [*v2 setDragStartCompletionHandler:0];
}

- (BOOL)_shouldAllowEndpointVendForRequestingConnection:(id)connection
{
  connectionCopy = connection;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  dragStateQueue = self->_dragStateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__AXDragManager__shouldAllowEndpointVendForRequestingConnection___block_invoke;
  block[3] = &unk_1E812DDD8;
  block[4] = self;
  v9 = connectionCopy;
  v10 = &v11;
  v6 = connectionCopy;
  dispatch_sync(dragStateQueue, block);
  LOBYTE(dragStateQueue) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return dragStateQueue;
}

void __65__AXDragManager__shouldAllowEndpointVendForRequestingConnection___block_invoke(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) pidForDrag];
  v4 = (a1 + 40);
  if (v3 == [*(a1 + 40) processIdentifier])
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
    v5 = AXLogDragging();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      __65__AXDragManager__shouldAllowEndpointVendForRequestingConnection___block_invoke_cold_2(v2);
    }
  }

  else
  {
    v5 = AXLogDragging();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __65__AXDragManager__shouldAllowEndpointVendForRequestingConnection___block_invoke_cold_1(v4, v2, v5);
    }
  }
}

- (id)endpointForRequestingConnection:(id)connection fromEndpointVendor:(id)vendor
{
  connectionCopy = connection;
  v6 = AXLogDragging();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [AXDragManager endpointForRequestingConnection:connectionCopy fromEndpointVendor:?];
  }

  if ([(AXDragManager *)self _shouldAllowEndpointVendForRequestingConnection:connectionCopy])
  {
    endpoint = [(NSXPCListener *)self->_endpointListener endpoint];
  }

  else
  {
    v8 = AXLogDragging();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [AXDragManager endpointForRequestingConnection:connectionCopy fromEndpointVendor:v8];
    }

    endpoint = 0;
  }

  return endpoint;
}

- (void)waitForDragStartFromPid:(int)pid completionHandler:(id)handler
{
  handlerCopy = handler;
  v7 = AXLogDragging();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [AXDragManager waitForDragStartFromPid:completionHandler:];
  }

  dragStateQueue = self->_dragStateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__AXDragManager_waitForDragStartFromPid_completionHandler___block_invoke;
  block[3] = &unk_1E812DE00;
  pidCopy = pid;
  block[4] = self;
  v11 = handlerCopy;
  v9 = handlerCopy;
  dispatch_async(dragStateQueue, block);
}

void __59__AXDragManager_waitForDragStartFromPid_completionHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setPidForDrag:*(a1 + 48)];
  v2 = [*(a1 + 32) dragStartCompletionHandler];

  if (v2)
  {
    v3 = AXLogDragging();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __59__AXDragManager_waitForDragStartFromPid_completionHandler___block_invoke_cold_1();
    }

    v4 = [*(a1 + 32) dragStartCompletionHandler];
    v4[2](v4, 0);
  }

  [*(a1 + 32) setDragStartCompletionHandler:*(a1 + 40)];
  v5 = [*(a1 + 32) dragStartTimer];

  if (!v5)
  {
    v6 = [objc_alloc(MEMORY[0x1E6988780]) initWithTargetSerialQueue:*(*(a1 + 32) + 32)];
    [*(a1 + 32) setDragStartTimer:v6];
  }

  v7 = [*(a1 + 32) dragStartTimer];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __59__AXDragManager_waitForDragStartFromPid_completionHandler___block_invoke_294;
  v8[3] = &unk_1E812DCA8;
  v8[4] = *(a1 + 32);
  [v7 afterDelay:v8 processBlock:5.0];
}

void __59__AXDragManager_waitForDragStartFromPid_completionHandler___block_invoke_294(uint64_t a1)
{
  v2 = AXLogDragging();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __59__AXDragManager_waitForDragStartFromPid_completionHandler___block_invoke_294_cold_1();
  }

  [*(a1 + 32) setPidForDrag:0xFFFFFFFFLL];
  v3 = [*(a1 + 32) dragStartCompletionHandler];

  if (v3)
  {
    v4 = [*(a1 + 32) dragStartCompletionHandler];
    v4[2](v4, 0);
  }
}

- (void)setDragSession:(id)session
{
  sessionCopy = session;
  dragSession = self->_dragSession;
  p_dragSession = &self->_dragSession;
  v6 = dragSession;
  if (dragSession != sessionCopy)
  {
    [(AXDragSession *)v6 cancel];
    objc_storeStrong(p_dragSession, session);
  }

  MEMORY[0x1EEE66BB8]();
}

- (BOOL)isDragActive
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  dragStateQueue = self->_dragStateQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __29__AXDragManager_isDragActive__block_invoke;
  v5[3] = &unk_1E812DE28;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dragStateQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __29__AXDragManager_isDragActive__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) dragSession];
  *(*(*(a1 + 40) + 8) + 24) = v2 != 0;
}

- (void)cancelDrag
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __27__AXDragManager_cancelDrag__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) dragSession];
  [v1 cancel];
}

- (void)moveToPoint:(CGPoint)point
{
  dragStateQueue = self->_dragStateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __29__AXDragManager_moveToPoint___block_invoke;
  block[3] = &unk_1E812DE78;
  block[4] = self;
  pointCopy = point;
  dispatch_async(dragStateQueue, block);
}

void __29__AXDragManager_moveToPoint___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) dragSession];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __29__AXDragManager_moveToPoint___block_invoke_2;
  v6[3] = &unk_1E812DE50;
  v8 = *(a1 + 40);
  v7 = v2;
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = v2;
  [v5 moveToPoint:0 forRequestor:v6 completion:{v3, v4}];
}

void __29__AXDragManager_moveToPoint___block_invoke_2(uint64_t a1, int a2)
{
  v4 = AXLogDragging();
  v5 = v4;
  if (a2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      __29__AXDragManager_moveToPoint___block_invoke_2_cold_2(a1);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __29__AXDragManager_moveToPoint___block_invoke_2_cold_1();
  }
}

- (void)drop
{
  dragStateQueue = self->_dragStateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __21__AXDragManager_drop__block_invoke;
  block[3] = &unk_1E812DCA8;
  block[4] = self;
  dispatch_async(dragStateQueue, block);
}

void __21__AXDragManager_drop__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) dragSession];
  [v1 drop];

  v2 = AXLogDragging();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __21__AXDragManager_drop__block_invoke_cold_1();
  }
}

- (void)moveToAndDropAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  v6 = AXLogDragging();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [(AXDragManager *)x moveToAndDropAtPoint:?];
  }

  dragStateQueue = self->_dragStateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38__AXDragManager_moveToAndDropAtPoint___block_invoke;
  block[3] = &unk_1E812DE78;
  block[4] = self;
  *&block[5] = x;
  *&block[6] = y;
  dispatch_async(dragStateQueue, block);
}

void __38__AXDragManager_moveToAndDropAtPoint___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) dragSession];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __38__AXDragManager_moveToAndDropAtPoint___block_invoke_2;
  v6[3] = &unk_1E812DEA0;
  v8 = *(a1 + 40);
  v6[4] = *(a1 + 32);
  v7 = v2;
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = v2;
  [v5 moveToPoint:0 forRequestor:v6 completion:{v3, v4}];
}

void __38__AXDragManager_moveToAndDropAtPoint___block_invoke_2(uint64_t a1, int a2)
{
  v4 = AXLogDragging();
  v5 = v4;
  if (a2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      __38__AXDragManager_moveToAndDropAtPoint___block_invoke_2_cold_2(a1);
    }

    v6 = dispatch_time(0, 1000000000);
    v7 = *(*(a1 + 32) + 32);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __38__AXDragManager_moveToAndDropAtPoint___block_invoke_296;
    block[3] = &unk_1E812DCA8;
    v9 = *(a1 + 40);
    dispatch_after(v6, v7, block);
    v5 = v9;
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __38__AXDragManager_moveToAndDropAtPoint___block_invoke_2_cold_1();
  }
}

void __38__AXDragManager_moveToAndDropAtPoint___block_invoke_296(uint64_t a1)
{
  [*(a1 + 32) drop];
  v1 = AXLogDragging();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
  {
    __21__AXDragManager_drop__block_invoke_cold_1();
  }
}

- (void)dragSession:(id)session movedToPoint:(CGPoint)point byRequestor:(id)requestor
{
  y = point.y;
  x = point.x;
  sessionCopy = session;
  dragStateQueue = self->_dragStateQueue;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __54__AXDragManager_dragSession_movedToPoint_byRequestor___block_invoke;
  v11[3] = &unk_1E812DEC8;
  v12 = sessionCopy;
  selfCopy = self;
  v14 = x;
  v15 = y;
  v10 = sessionCopy;
  dispatch_async(dragStateQueue, v11);
}

void __54__AXDragManager_dragSession_movedToPoint_byRequestor___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) dragSession];

  v4 = AXLogDragging();
  v5 = v4;
  if (v2 != v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __54__AXDragManager_dragSession_movedToPoint_byRequestor___block_invoke_cold_1();
    }

    goto LABEL_8;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __54__AXDragManager_dragSession_movedToPoint_byRequestor___block_invoke_cold_2(a1);
  }

  v6 = [*(a1 + 40) delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v5 = [*(a1 + 40) delegate];
    [v5 dragManager:*(a1 + 40) didMoveDragToPoint:{*(a1 + 48), *(a1 + 56)}];
LABEL_8:
  }
}

- (void)dragSessionChanged:(id)changed toStatus:(id)status
{
  changedCopy = changed;
  statusCopy = status;
  dragStateQueue = self->_dragStateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__AXDragManager_dragSessionChanged_toStatus___block_invoke;
  block[3] = &unk_1E812DEF0;
  v12 = changedCopy;
  selfCopy = self;
  v14 = statusCopy;
  v9 = statusCopy;
  v10 = changedCopy;
  dispatch_async(dragStateQueue, block);
}

void __45__AXDragManager_dragSessionChanged_toStatus___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) dragSession];

  v4 = AXLogDragging();
  v5 = v4;
  if (v2 != v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __45__AXDragManager_dragSessionChanged_toStatus___block_invoke_cold_1();
    }

    goto LABEL_8;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __45__AXDragManager_dragSessionChanged_toStatus___block_invoke_cold_2();
  }

  v6 = [*(a1 + 40) delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v5 = [*(a1 + 40) delegate];
    [v5 dragManager:*(a1 + 40) didChangeDragToStatus:*(a1 + 48)];
LABEL_8:
  }
}

- (void)dragSessionEnded:(id)ended withOperation:(unint64_t)operation
{
  endedCopy = ended;
  dragStateQueue = self->_dragStateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__AXDragManager_dragSessionEnded_withOperation___block_invoke;
  block[3] = &unk_1E812DF18;
  v10 = endedCopy;
  selfCopy = self;
  operationCopy = operation;
  v8 = endedCopy;
  dispatch_async(dragStateQueue, block);
}

void __48__AXDragManager_dragSessionEnded_withOperation___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) dragSession];

  v4 = AXLogDragging();
  v5 = v4;
  if (v2 != v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __48__AXDragManager_dragSessionEnded_withOperation___block_invoke_cold_1();
    }

    goto LABEL_8;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __48__AXDragManager_dragSessionEnded_withOperation___block_invoke_cold_2();
  }

  v6 = [*(a1 + 40) delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v5 = [*(a1 + 40) delegate];
    [v5 dragManager:*(a1 + 40) didEndDragOperation:*(a1 + 48)];
LABEL_8:
  }
}

- (void)dragSessionWasTerminated:(id)terminated
{
  terminatedCopy = terminated;
  dragStateQueue = self->_dragStateQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __42__AXDragManager_dragSessionWasTerminated___block_invoke;
  v7[3] = &unk_1E812DD68;
  v8 = terminatedCopy;
  selfCopy = self;
  v6 = terminatedCopy;
  dispatch_async(dragStateQueue, v7);
}

void __42__AXDragManager_dragSessionWasTerminated___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) dragSession];

  v4 = AXLogDragging();
  v5 = v4;
  if (v2 != v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __42__AXDragManager_dragSessionWasTerminated___block_invoke_cold_1();
    }

    goto LABEL_8;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __42__AXDragManager_dragSessionWasTerminated___block_invoke_cold_2();
  }

  [*(a1 + 40) setDragSession:0];
  v6 = [*(a1 + 40) delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v5 = [*(a1 + 40) delegate];
    [v5 didTerminateDragForDragManager:*(a1 + 40)];
LABEL_8:
  }
}

- (AXDragManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)listener:(void *)a1 shouldAcceptNewConnection:.cold.1(void *a1)
{
  [a1 processIdentifier];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 8u);
}

void __52__AXDragManager_listener_shouldAcceptNewConnection___block_invoke_cold_1(id *a1)
{
  [*a1 pidForDrag];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 8u);
}

void __52__AXDragManager_listener_shouldAcceptNewConnection___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __65__AXDragManager__shouldAllowEndpointVendForRequestingConnection___block_invoke_cold_1(id *a1, id *a2, NSObject *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = [*a1 processIdentifier];
  v6 = [*a2 pidForDrag];
  v7[0] = 67109376;
  v7[1] = v5;
  v8 = 1024;
  v9 = v6;
  _os_log_error_impl(&dword_1C0DFB000, a3, OS_LOG_TYPE_ERROR, "Unexpectedly received endpoint request from connection with pid: %i. Expected pid: %i", v7, 0xEu);
}

void __65__AXDragManager__shouldAllowEndpointVendForRequestingConnection___block_invoke_cold_2(id *a1)
{
  [*a1 pidForDrag];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 8u);
}

- (void)endpointForRequestingConnection:(void *)a1 fromEndpointVendor:.cold.1(void *a1)
{
  [a1 processIdentifier];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 8u);
}

- (void)endpointForRequestingConnection:(void *)a1 fromEndpointVendor:(NSObject *)a2 .cold.2(void *a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  [a1 processIdentifier];
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(&dword_1C0DFB000, a2, OS_LOG_TYPE_ERROR, "Not giving app with pid %d a drag endpoint.", v3, 8u);
}

- (void)waitForDragStartFromPid:completionHandler:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
}

void __59__AXDragManager_waitForDragStartFromPid_completionHandler___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __59__AXDragManager_waitForDragStartFromPid_completionHandler___block_invoke_294_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __29__AXDragManager_moveToPoint___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __29__AXDragManager_moveToPoint___block_invoke_2_cold_2(uint64_t a1)
{
  v1 = NSStringFromCGPoint(*(a1 + 40));
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __21__AXDragManager_drop__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)moveToAndDropAtPoint:(double)a1 .cold.1(double a1, double a2)
{
  v2 = NSStringFromCGPoint(*&a1);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);
}

void __38__AXDragManager_moveToAndDropAtPoint___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __38__AXDragManager_moveToAndDropAtPoint___block_invoke_2_cold_2(CGPoint *a1)
{
  v1 = NSStringFromCGPoint(a1[3]);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __54__AXDragManager_dragSession_movedToPoint_byRequestor___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_6(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __54__AXDragManager_dragSession_movedToPoint_byRequestor___block_invoke_cold_2(CGPoint *a1)
{
  v1 = NSStringFromCGPoint(a1[3]);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __45__AXDragManager_dragSessionChanged_toStatus___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_6(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __45__AXDragManager_dragSessionChanged_toStatus___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __48__AXDragManager_dragSessionEnded_withOperation___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_6(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __48__AXDragManager_dragSessionEnded_withOperation___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __42__AXDragManager_dragSessionWasTerminated___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_6(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __42__AXDragManager_dragSessionWasTerminated___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

@end