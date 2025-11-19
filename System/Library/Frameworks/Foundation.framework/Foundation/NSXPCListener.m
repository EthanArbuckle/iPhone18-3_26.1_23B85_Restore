@interface NSXPCListener
+ (NSXPCListener)anonymousListener;
+ (NSXPCListener)serviceListener;
+ (id)_UUID;
+ (void)enableTransactions;
- (NSXPCListener)initWithMachServiceName:(NSString *)name;
- (NSXPCListener)initWithServiceName:(id)a3;
- (NSXPCListenerEndpoint)endpoint;
- (id)__initWithoutRemoteConnection;
- (id)_initShared;
- (id)_initWithRemoteName:(id)a3;
- (id)_xpcConnection;
- (id)description;
- (id)serviceName;
- (void)__receiveRemoteConnection:(id)a3;
- (void)_setQueue:(id)a3;
- (void)activate;
- (void)dealloc;
- (void)invalidate;
- (void)resume;
- (void)setDelegate:(id)delegate;
- (void)setOptions:(unint64_t)a3;
- (void)suspend;
@end

@implementation NSXPCListener

- (id)serviceName
{
  v2 = self->_serviceName;

  return v2;
}

- (void)resume
{
  if (self->_remote)
  {
    v5 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: Remote connections do not support this method.", _NSMethodExceptionProem(self, a2)), 0}];
    objc_exception_throw(v5);
  }

  if ((atomic_fetch_or(&self->_state, 0x10u) & 0x10) == 0)
  {
    CFRetain(self);
  }

  if (+[NSXPCListener serviceListener]== self)
  {
    xpc_main(service_connection_handler);
  }

  if ((atomic_fetch_and(&self->_state, 0xF7u) & 8) != 0)
  {
    v4 = [(NSString *)self->_serviceName UTF8String];

    MEMORY[0x1EEE74DD0](v4, additional_service_handler, 0);
  }

  else
  {
    xpc = self->_connection.xpc;
    if (xpc)
    {

      xpc_connection_resume(xpc);
    }
  }
}

+ (NSXPCListener)serviceListener
{
  v3[5] = *MEMORY[0x1E69E9840];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __32__NSXPCListener_serviceListener__block_invoke;
  v3[3] = &unk_1E69F2C00;
  v3[4] = a1;
  if (_MergedGlobals_154 != -1)
  {
    dispatch_once(&_MergedGlobals_154, v3);
  }

  return qword_1ED4402D0;
}

- (NSXPCListenerEndpoint)endpoint
{
  if (self->_remote)
  {
    v6 = [NSString stringWithFormat:@"%@: Remote connections do not support this method.", _NSMethodExceptionProem(self, a2)];
    goto LABEL_8;
  }

  v4 = [[NSXPCListenerEndpoint alloc] _initWithConnection:self->_connection.xpc];
  if (!v4)
  {
    v6 = [NSString stringWithFormat:@"%@: The listener connection must be resumed to create an endpoint.", _NSMethodExceptionProem(self, a2)];
LABEL_8:
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v6 userInfo:0]);
  }

  return v4;
}

uint64_t __32__NSXPCListener_serviceListener__block_invoke(uint64_t a1)
{
  result = [objc_alloc(*(a1 + 32)) _initShared];
  qword_1ED4402D0 = result;
  return result;
}

- (id)_initShared
{
  v7 = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = NSXPCListener;
  v2 = [(NSXPCListener *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_remote = 0;
    v4 = MEMORY[0x1E69E96A0];
    v3->_userQueue = MEMORY[0x1E69E96A0];
    dispatch_retain(v4);
  }

  return v3;
}

+ (NSXPCListener)anonymousListener
{
  v2 = [[NSXPCListener alloc] initWithServiceName:&stru_1EEEFDF90];

  return v2;
}

- (void)invalidate
{
  p_state = &self->_state;
  if ((atomic_fetch_or(&self->_state, 0x20u) & 0x20) == 0)
  {
    xpc = self->_connection.xpc;
    if (self->_remote)
    {
      if (xpc)
      {
        _xpc_remote_connection_cancel(xpc);
      }
    }

    else if (xpc)
    {
      xpc_connection_cancel(xpc);
    }
  }

  if ((atomic_fetch_and(p_state, 0xEFu) & 0x10) != 0)
  {

    CFRelease(self);
  }
}

- (void)dealloc
{
  v7 = *MEMORY[0x1E69E9840];
  userQueue = self->_userQueue;
  if (userQueue)
  {
    dispatch_release(userQueue);
  }

  xpc = self->_connection.xpc;
  if (xpc)
  {
    xpc_release(xpc);
  }

  v5 = atomic_load(&self->_delegate);
  v6.receiver = self;
  v6.super_class = NSXPCListener;
  [(NSXPCListener *)&v6 dealloc];
}

- (id)description
{
  v4 = *MEMORY[0x1E69E9840];
  v3.receiver = self;
  v3.super_class = NSXPCListener;
  return [NSString stringWithFormat:@"%@ service: %@", [(NSXPCListener *)&v3 description], self->_serviceName];
}

+ (id)_UUID
{
  result = getenv("LaunchInstanceID");
  if (result)
  {
    v3 = [[NSUUID alloc] initWithUUIDString:[NSString stringWithUTF8String:result]];

    return v3;
  }

  return result;
}

- (void)activate
{
  if ((atomic_fetch_or(&self->_state, 0x10u) & 0x10) == 0)
  {
    CFRetain(self);
  }

  if (+[NSXPCListener serviceListener]== self)
  {
    xpc_main(service_connection_handler);
  }

  if ((atomic_fetch_and(&self->_state, 0xF7u) & 8) != 0)
  {
    v5 = [(NSString *)self->_serviceName UTF8String];

    MEMORY[0x1EEE74DD0](v5, additional_service_handler, 0);
  }

  else
  {
    xpc = self->_connection.xpc;
    if (self->_remote)
    {
      if (xpc)
      {
        v4 = _xpc_remote_connection_activate;

        v4();
      }
    }

    else if (xpc)
    {

      xpc_connection_activate(xpc);
    }
  }
}

- (NSXPCListener)initWithServiceName:(id)a3
{
  handler[5] = *MEMORY[0x1E69E9840];
  v15.receiver = self;
  v15.super_class = NSXPCListener;
  v5 = [(NSXPCListener *)&v15 init];
  v6 = v5;
  if (v5)
  {
    if (a3)
    {
      v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v8 = qos_class_main();
      v9 = dispatch_queue_attr_make_with_qos_class(v7, v8, 0);
      v6->_userQueue = dispatch_queue_create("com.apple.NSXPCListener.main", v9);
      if (![a3 isEqualToString:&stru_1EEEFDF90])
      {
        atomic_fetch_or_explicit(&v6->_state, 8u, memory_order_relaxed);
        v6->_serviceName = [a3 copy];
        atomic_store(v6, &_additionalListener);
        return v6;
      }

      v10 = xpc_connection_create(0, v6->_userQueue);
      v6->_connection.xpc = v10;
      if (v10)
      {
        xpc_connection_set_target_queue(v10, v6->_userQueue);
        xpc = v6->_connection.xpc;
        handler[0] = MEMORY[0x1E69E9820];
        handler[1] = 3221225472;
        handler[2] = ___setupListenerConnection_block_invoke;
        handler[3] = &unk_1E69F5440;
        handler[4] = v6;
        xpc_connection_set_event_handler(xpc, handler);
        return v6;
      }

      v13 = [NSString stringWithFormat:@"%@: Unable to create anonymous listener connection with name %@", _NSMethodExceptionProem(v6, a2), a3];
    }

    else
    {
      v13 = [NSString stringWithFormat:@"%@: The name argument is required. To create an anonymous connection, use a zero-length string.", _NSMethodExceptionProem(v5, a2), v14];
    }

    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v13 userInfo:0]);
  }

  return v6;
}

- (NSXPCListener)initWithMachServiceName:(NSString *)name
{
  handler[5] = *MEMORY[0x1E69E9840];
  v15.receiver = self;
  v15.super_class = NSXPCListener;
  v5 = [(NSXPCListener *)&v15 init];
  v6 = v5;
  if (v5)
  {
    if (name)
    {
      v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v8 = qos_class_main();
      v9 = dispatch_queue_attr_make_with_qos_class(v7, v8, 0);
      v6->_userQueue = dispatch_queue_create([objc_msgSend(@"com.apple.NSXPCListener.service." stringByAppendingString:{name), "UTF8String"}], v9);
      v6->_serviceName = [(NSString *)name copy];
      mach_service = xpc_connection_create_mach_service([(NSString *)name UTF8String], v6->_userQueue, 1uLL);
      v6->_connection.xpc = mach_service;
      if (mach_service)
      {
        xpc_connection_set_target_queue(mach_service, v6->_userQueue);
        xpc = v6->_connection.xpc;
        handler[0] = MEMORY[0x1E69E9820];
        handler[1] = 3221225472;
        handler[2] = ___setupListenerConnection_block_invoke;
        handler[3] = &unk_1E69F5440;
        handler[4] = v6;
        xpc_connection_set_event_handler(xpc, handler);
        return v6;
      }

      v13 = [NSString stringWithFormat:@"%@: Unable to create connection with name %@", _NSMethodExceptionProem(v6, a2), name];
    }

    else
    {
      v13 = [NSString stringWithFormat:@"%@: The name argument is required.", _NSMethodExceptionProem(v5, a2), v14];
    }

    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v13 userInfo:0]);
  }

  return v6;
}

- (id)_initWithRemoteName:(id)a3
{
  v20[5] = *MEMORY[0x1E69E9840];
  _NSXPCConnectionInitRemoteXPC();
  v19.receiver = self;
  v19.super_class = NSXPCListener;
  v6 = [(NSXPCListener *)&v19 init];
  v7 = v6;
  if (v6)
  {
    if (a3)
    {
      v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v9 = qos_class_main();
      v10 = dispatch_queue_attr_make_with_qos_class(v8, v9, 0);
      v7->_userQueue = dispatch_queue_create([objc_msgSend(@"com.apple.NSXPCListener.remote." stringByAppendingString:{a3), "UTF8String"}], v10);
      v7->_serviceName = [a3 copy];
      v7->_remote = 1;
      v11 = (_xpc_remote_connection_create_remote_service_listener)([a3 UTF8String], v7->_userQueue, 0);
      v7->_connection.xpc = v11;
      if (v11)
      {
        _xpc_remote_connection_set_target_queue(v11, v7->_userQueue);
        xpc = v7->_connection.xpc;
        v20[0] = MEMORY[0x1E69E9820];
        v20[1] = 3221225472;
        v20[2] = ___setupRemoteListenerConnection_block_invoke;
        v20[3] = &unk_1E69F5440;
        v20[4] = v7;
        _xpc_remote_connection_set_event_handler(xpc, v20, v13, v14, v15);
        return v7;
      }

      v17 = [NSString stringWithFormat:@"%@: Unable to create remote connection with name %@", _NSMethodExceptionProem(v7, a2), a3];
    }

    else
    {
      v17 = [NSString stringWithFormat:@"%@: The name argument is required.", _NSMethodExceptionProem(v6, a2), v18];
    }

    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v17 userInfo:0]);
  }

  return v7;
}

- (id)__initWithoutRemoteConnection
{
  v14[5] = *MEMORY[0x1E69E9840];
  _NSXPCConnectionInitRemoteXPC();
  v13.receiver = self;
  v13.super_class = NSXPCListener;
  v3 = [(NSXPCListener *)&v13 init];
  if (v3)
  {
    v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v5 = qos_class_main();
    v6 = dispatch_queue_attr_make_with_qos_class(v4, v5, 0);
    v7 = dispatch_queue_create([@"com.apple.NSXPCListener.remote.__initWithoutRemoteConnection" UTF8String], v6);
    v3->_userQueue = v7;
    v3->_serviceName = @"__initWithoutRemoteConnection";
    v3->_remote = 1;
    _xpc_remote_connection_set_target_queue(v3->_connection.xpc, v7);
    xpc = v3->_connection.xpc;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = ___setupRemoteListenerConnection_block_invoke;
    v14[3] = &unk_1E69F5440;
    v14[4] = v3;
    _xpc_remote_connection_set_event_handler(xpc, v14, v9, v10, v11);
  }

  return v3;
}

- (void)__receiveRemoteConnection:(id)a3
{
  if (self->_remote)
  {
    service_connection_handler_make_remote_connection(self, a3);
  }
}

- (void)suspend
{
  if (self->_remote)
  {
    v3 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: Remote connections do not support this method.", _NSMethodExceptionProem(self, a2)), 0}];
    objc_exception_throw(v3);
  }

  xpc = self->_connection.xpc;
  if (xpc)
  {

    xpc_connection_suspend(xpc);
  }
}

- (void)setDelegate:(id)delegate
{
  p_delegate = &self->_delegate;
  v5 = atomic_load(&self->_delegate);
  v6 = v5;
  if (delegate)
  {
    v7 = [NSValue valueWithWeakObject:delegate];
  }

  else
  {
    v7 = 0;
  }

  atomic_store(v7, p_delegate);
}

- (void)setOptions:(unint64_t)a3
{
  v3 = a3;
  if ((a3 & 0x100) != 0)
  {
    if (self->_remote)
    {
      goto LABEL_9;
    }

    xpc_connection_set_legacy();
  }

  if ((v3 & 0x1000) == 0)
  {
    return;
  }

  if (self->_remote)
  {
LABEL_9:
    v7 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: Remote connections do not support this method.", _NSMethodExceptionProem(self, a2)), 0}];
    objc_exception_throw(v7);
  }

  xpc = self->_connection.xpc;

  MEMORY[0x1EEE74B08](xpc);
}

- (void)_setQueue:(id)a3
{
  if (!a3)
  {
    v9 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: The queue parameter is NULL, which is invalid", _NSMethodExceptionProem(self, a2)), 0}];
    objc_exception_throw(v9);
  }

  userQueue = self->_userQueue;
  if (userQueue)
  {
    v6 = userQueue == a3;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    dispatch_retain(a3);
    xpc = self->_connection.xpc;
    v8 = self->_userQueue;
    self->_userQueue = a3;
    if (self->_remote)
    {
      if (xpc)
      {
        _xpc_remote_connection_set_target_queue(xpc, a3);
      }
    }

    else if (xpc)
    {
      xpc_connection_set_target_queue(xpc, a3);
    }

    dispatch_release(v8);
  }
}

- (id)_xpcConnection
{
  if (self->_remote)
  {
    v3 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: Remote connections do not support this method.", _NSMethodExceptionProem(self, a2)), 0}];
    objc_exception_throw(v3);
  }

  return self->_connection.xpc;
}

+ (void)enableTransactions
{
  if (enableTransactions_onceToken != -1)
  {
    dispatch_once(&enableTransactions_onceToken, &__block_literal_global_88);
  }
}

@end