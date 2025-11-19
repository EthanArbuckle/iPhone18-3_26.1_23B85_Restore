@interface _NSXPCRemoteTransport
- (_NSXPCRemoteTransport)initWithConnection:(id)a3;
- (_NSXPCRemoteTransport)initWithRemoteService:(id)a3 name:(id)a4 queue:(id)a5 mode:(unint64_t)a6;
- (void)dealloc;
@end

@implementation _NSXPCRemoteTransport

- (_NSXPCRemoteTransport)initWithConnection:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v11.receiver = self;
  v11.super_class = _NSXPCRemoteTransport;
  v4 = [(_NSXPCRemoteTransport *)&v11 init];
  if (_MergedGlobals_111 != -1)
  {
    dispatch_once(&_MergedGlobals_111, &__block_literal_global_36);
  }

  v5 = xpc_retain(a3);
  v4->_connection = v5;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __44___NSXPCRemoteTransport_initWithConnection___block_invoke;
  v10[3] = &unk_1E69F5440;
  v10[4] = v4;
  _xpc_remote_connection_set_event_handler(v5, v10, v6, v7, v8);
  return v4;
}

- (_NSXPCRemoteTransport)initWithRemoteService:(id)a3 name:(id)a4 queue:(id)a5 mode:(unint64_t)a6
{
  v20 = *MEMORY[0x1E69E9840];
  v19.receiver = self;
  v19.super_class = _NSXPCRemoteTransport;
  v11 = [(_NSXPCRemoteTransport *)&v19 init];
  if (_MergedGlobals_111 != -1)
  {
    dispatch_once(&_MergedGlobals_111, &__block_literal_global_36);
  }

  v12 = off_1ED43F9A8(a3, a5, a6);
  v11->_connection = v12;
  if (!v12)
  {
    v17 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: Unable to connect to the specified name (%@). No connection was created.", _NSMethodExceptionProem(v11, a2), a4), 0}];
    objc_exception_throw(v17);
  }

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __63___NSXPCRemoteTransport_initWithRemoteService_name_queue_mode___block_invoke;
  v18[3] = &unk_1E69F5440;
  v18[4] = v11;
  _xpc_remote_connection_set_event_handler(v12, v18, v13, v14, v15);
  return v11;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];
  xpc_release(self->_connection);
  _Block_release(self->_errorHandler);
  _Block_release(self->_messageHandler);
  v3.receiver = self;
  v3.super_class = _NSXPCRemoteTransport;
  [(_NSXPCRemoteTransport *)&v3 dealloc];
}

@end