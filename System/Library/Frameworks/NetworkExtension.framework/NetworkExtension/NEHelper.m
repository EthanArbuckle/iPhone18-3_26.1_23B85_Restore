@interface NEHelper
- (NEHelper)initWithDelegateClassID:(int)a3 queue:(id)a4 additionalProperties:(id)a5;
- (void)dealloc;
- (void)sendRequest:(id)a3 responseHandler:(id)a4;
@end

@implementation NEHelper

- (void)sendRequest:(id)a3 responseHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  os_unfair_lock_lock(&self->_lock);
  if (self)
  {
    os_unfair_lock_assert_owner(&self->_lock);
    connection = self->_connection;
    if (connection)
    {
LABEL_3:
      v10 = connection;
      goto LABEL_8;
    }

    Property = objc_getProperty(self, v8, 48, 1);
    mach_service = xpc_connection_create_mach_service("com.apple.nehelper", Property, 2uLL);
    v13 = mach_service;
    if (mach_service && MEMORY[0x1BFAFC5E0](mach_service) == MEMORY[0x1E69E9E68])
    {
      objc_initWeak(&location, self);
      handler[0] = MEMORY[0x1E69E9820];
      handler[1] = 3221225472;
      handler[2] = __25__NEHelper_getConnection__block_invoke;
      handler[3] = &unk_1E7F07A50;
      handler[4] = self;
      objc_copyWeak(&v33, &location);
      v21 = v13;
      v32 = v21;
      xpc_connection_set_event_handler(v21, handler);
      xpc_connection_resume(v21);
      additionalProperties = self->_additionalProperties;
      if (additionalProperties)
      {
        v23 = additionalProperties;
        v24 = _CFXPCCreateXPCObjectFromCFObject();
      }

      else
      {
        v24 = xpc_dictionary_create(0, 0, 0);
      }

      xpc_dictionary_set_uint64(v24, "delegate-class-id", self->_classID);
      xpc_connection_send_message(v21, v24);
      v25 = self->_connection;
      self->_connection = v21;
      v26 = v21;

      objc_destroyWeak(&v33);
      objc_destroyWeak(&location);
      connection = self->_connection;
      goto LABEL_3;
    }
  }

  v10 = 0;
LABEL_8:
  os_unfair_lock_unlock(&self->_lock);
  if (v7)
  {
    if (v10)
    {
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __40__NEHelper_sendRequest_responseHandler___block_invoke_2;
      aBlock[3] = &unk_1E7F07A78;
      aBlock[4] = self;
      v28 = v7;
      v14 = _Block_copy(aBlock);
      if ([(NEHelper *)self isSynchronous])
      {
        v16 = xpc_connection_send_message_with_reply_sync(v10, v6);
        v14[2](v14, v16);
      }

      else
      {
        if (self)
        {
          v19 = objc_getProperty(self, v15, 40, 1);
        }

        else
        {
          v19 = 0;
        }

        xpc_connection_send_message_with_reply(v10, v6, v19, v14);
      }

      v20 = v28;
LABEL_25:

      goto LABEL_26;
    }

    v17 = ne_log_obj();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      LOWORD(handler[0]) = 0;
      _os_log_error_impl(&dword_1BA83C000, v17, OS_LOG_TYPE_ERROR, "Failed to send a message to nehelper: connection is nil", handler, 2u);
    }

    if (![(NEHelper *)self isSynchronous])
    {
      if (self)
      {
        self = objc_getProperty(self, v18, 40, 1);
      }

      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __40__NEHelper_sendRequest_responseHandler___block_invoke;
      block[3] = &unk_1E7F0B600;
      v30 = v7;
      dispatch_async(&self->super, block);
      v20 = v30;
      goto LABEL_25;
    }

    (*(v7 + 2))(v7, 0, 5, 0);
  }

  else if (v10)
  {
    xpc_connection_send_message(v10, v6);
  }

LABEL_26:
}

void __40__NEHelper_sendRequest_responseHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (v3 && MEMORY[0x1BFAFC5E0](v3) == MEMORY[0x1E69E9E80])
  {
    xpc_dictionary_get_int64(v4, "result-code");
    v7 = xpc_dictionary_get_value(v4, "result-data");
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v5 = MEMORY[0x1BFAFC400](v4);
    v6 = ne_log_obj();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 32);
      if (v9)
      {
        LODWORD(v9) = *(v9 + 16);
      }

      v10[0] = 67109378;
      v10[1] = v9;
      v11 = 2080;
      v12 = v5;
      _os_log_error_impl(&dword_1BA83C000, v6, OS_LOG_TYPE_ERROR, "Failed to send a %d message to nehelper: %s", v10, 0x12u);
    }

    free(v5);
    (*(*(a1 + 40) + 16))();
  }

  v8 = *MEMORY[0x1E69E9840];
}

void __25__NEHelper_getConnection__block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  Property = *(a1 + 32);
  if (Property)
  {
    Property = objc_getProperty(Property, v3, 40, 1);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __25__NEHelper_getConnection__block_invoke_2;
  block[3] = &unk_1E7F08670;
  v6 = Property;
  objc_copyWeak(&v11, (a1 + 48));
  v9 = v4;
  v10 = *(a1 + 40);
  v7 = v4;
  dispatch_async(v6, block);

  objc_destroyWeak(&v11);
}

void __25__NEHelper_getConnection__block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained && *(a1 + 32))
  {
    if (MEMORY[0x1BFAFC5E0]() == MEMORY[0x1E69E9E98])
    {
      v5 = ne_log_obj();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        string = xpc_dictionary_get_string(*(a1 + 32), *MEMORY[0x1E69E9E28]);
        v11 = 136315138;
        v12 = string;
        _os_log_impl(&dword_1BA83C000, v5, OS_LOG_TYPE_DEFAULT, "Lost connection to nehelper: %s", &v11, 0xCu);
      }

      os_unfair_lock_lock(WeakRetained + 2);
      xpc_connection_cancel(*(a1 + 40));
      v7 = *&WeakRetained[8]._os_unfair_lock_opaque;
      *&WeakRetained[8]._os_unfair_lock_opaque = 0;

      os_unfair_lock_unlock(WeakRetained + 2);
    }

    else if (*(a1 + 32) && MEMORY[0x1BFAFC5E0]() == MEMORY[0x1E69E9E80])
    {
      v3 = [(os_unfair_lock_s *)WeakRetained incomingMessageHandler];

      if (v3)
      {
        v4 = [(os_unfair_lock_s *)WeakRetained incomingMessageHandler];
        v4[2](v4, *(a1 + 32));
      }

      else
      {
        v9 = MEMORY[0x1BFAFC400](*(a1 + 32));
        v10 = ne_log_obj();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v11 = 136315138;
          v12 = v9;
          _os_log_impl(&dword_1BA83C000, v10, OS_LOG_TYPE_DEFAULT, "Got an unexpected message on the nehelper connection: %s", &v11, 0xCu);
        }

        free(v9);
      }
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)dealloc
{
  if (self)
  {
    connection = self->_connection;
    if (connection)
    {
      xpc_connection_cancel(connection);
      objc_storeStrong(&self->_connection, 0);
    }
  }

  v4.receiver = self;
  v4.super_class = NEHelper;
  [(NEHelper *)&v4 dealloc];
}

- (NEHelper)initWithDelegateClassID:(int)a3 queue:(id)a4 additionalProperties:(id)a5
{
  v9 = a4;
  v10 = a5;
  v17.receiver = self;
  v17.super_class = NEHelper;
  v11 = [(NEHelper *)&v17 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_queue, a4);
    v13 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v14 = dispatch_queue_create("NEHelper connection queue", v13);
    connectionQueue = v12->_connectionQueue;
    v12->_connectionQueue = v14;

    v12->_lock._os_unfair_lock_opaque = 0;
    v12->_classID = a3;
    objc_storeStrong(&v12->_additionalProperties, a5);
  }

  return v12;
}

@end