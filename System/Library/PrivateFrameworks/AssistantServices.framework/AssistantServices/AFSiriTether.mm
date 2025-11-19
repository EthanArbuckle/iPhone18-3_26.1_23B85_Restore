@interface AFSiriTether
- (AFSiriTether)init;
- (AFSiriTether)initWithInstanceContext:(id)a3;
- (id)_connection;
- (void)_attach:(id)a3;
- (void)_attachmentStatusUpdate:(BOOL)a3;
- (void)_connectionInterrupted:(id)a3;
- (void)_connectionInvalid:(id)a3;
- (void)_listenForLaunchNotification;
- (void)_logEvent:(id)a3;
- (void)attach:(id)a3;
- (void)dealloc;
- (void)setAttachmentStatusChangedHandler:(id)a3;
- (void)waitForAttachment:(double)a3;
@end

@implementation AFSiriTether

- (void)_logEvent:(id)a3
{
  v4 = a3;
  pendingEvents = self->_pendingEvents;
  v12 = v4;
  if (self->_isAttached)
  {
    if ([(NSMutableArray *)pendingEvents count])
    {
      v6 = self->_pendingEvents;
      self->_pendingEvents = 0;
      v7 = v6;

      v8 = +[AFAnalytics sharedAnalytics];
      [v8 logEvents:v7];
    }

    v9 = +[AFAnalytics sharedAnalytics];
    [v9 logEvent:v12];
  }

  else
  {
    if (!pendingEvents)
    {
      v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v11 = self->_pendingEvents;
      self->_pendingEvents = v10;

      v4 = v12;
      pendingEvents = self->_pendingEvents;
    }

    [(NSMutableArray *)pendingEvents addObject:v4];
  }
}

- (void)_listenForLaunchNotification
{
  v16 = *MEMORY[0x1E69E9840];
  if (self->_notifyToken == -1)
  {
    out_token = -1;
    objc_initWeak(&location, self);
    EffectiveNotification = AFNotifyGetEffectiveNotification("com.apple.siri.daemon_launched", self->_instanceContext);
    queue = self->_queue;
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __44__AFSiriTether__listenForLaunchNotification__block_invoke;
    handler[3] = &unk_1E7347870;
    objc_copyWeak(&v9, &location);
    v5 = notify_register_dispatch(EffectiveNotification, &out_token, queue, handler);
    if (v5)
    {
      v6 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v13 = "[AFSiriTether _listenForLaunchNotification]";
        v14 = 1024;
        v15 = v5;
        _os_log_error_impl(&dword_1912FE000, v6, OS_LOG_TYPE_ERROR, "%s Notify register failed %u", buf, 0x12u);
      }
    }

    else
    {
      self->_notifyToken = out_token;
    }

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }

  v7 = *MEMORY[0x1E69E9840];
}

void __44__AFSiriTether__listenForLaunchNotification__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained attach:0];
}

- (void)_attachmentStatusUpdate:(BOOL)a3
{
  v14 = *MEMORY[0x1E69E9840];
  if (self->_isAttached != a3)
  {
    v3 = a3;
    v5 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      v10 = 136315394;
      v11 = "[AFSiriTether _attachmentStatusUpdate:]";
      v12 = 1024;
      v13 = v3;
      _os_log_impl(&dword_1912FE000, v5, OS_LOG_TYPE_INFO, "%s %d", &v10, 0x12u);
    }

    self->_isAttached = v3;
    if (v3)
    {
      v6 = 1922;
    }

    else
    {
      v6 = 1923;
    }

    v7 = AFAnalyticsEventCreateCurrent(v6, 0);
    [(AFSiriTether *)self _logEvent:v7];

    attachmentStatusChangedHandler = self->_attachmentStatusChangedHandler;
    if (attachmentStatusChangedHandler)
    {
      attachmentStatusChangedHandler[2](attachmentStatusChangedHandler, self->_isAttached);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)_attach:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (self->_isAttached)
  {
    if (v4)
    {
      (*(v4 + 2))(v4, 1);
    }
  }

  else
  {
    [(AFSiriTether *)self _listenForLaunchNotification];
    v6 = [(AFSiriTether *)self _connection];
    if (v6)
    {
      v7 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        *&buf[4] = "[AFSiriTether _attach:]";
        _os_log_impl(&dword_1912FE000, v7, OS_LOG_TYPE_INFO, "%s Sending attachment message", buf, 0xCu);
      }

      *buf = "attach";
      values = xpc_BOOL_create(1);
      v8 = xpc_dictionary_create(buf, &values, 1uLL);
      queue = self->_queue;
      handler[0] = MEMORY[0x1E69E9820];
      handler[1] = 3221225472;
      handler[2] = __24__AFSiriTether__attach___block_invoke;
      handler[3] = &unk_1E7348638;
      handler[4] = self;
      v12 = v5;
      xpc_connection_send_message_with_reply(v6, v8, queue, handler);
    }

    else if (v5)
    {
      v5[2](v5, 0);
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

uint64_t __24__AFSiriTether__attach___block_invoke(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x193AFBC20](a2);
  v4 = AFSiriLogContextConnection;
  v5 = os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO);
  v6 = MEMORY[0x1E69E9E80];
  if (v5)
  {
    v10 = 136315394;
    v11 = "[AFSiriTether _attach:]_block_invoke";
    v12 = 1024;
    v13 = v3 == MEMORY[0x1E69E9E80];
    _os_log_impl(&dword_1912FE000, v4, OS_LOG_TYPE_INFO, "%s Attachment Reply %d", &v10, 0x12u);
  }

  v7 = *(a1 + 40);
  if (v7)
  {
    (*(v7 + 16))(v7, v3 == v6);
  }

  result = [*(a1 + 32) _attachmentStatusUpdate:v3 == v6];
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)_connectionInvalid:(id)a3
{
  connection = self->_connection;
  if (connection == a3 && connection != 0)
  {
    xpc_connection_cancel(connection);
    v6 = self->_connection;
    self->_connection = 0;

    [(AFSiriTether *)self _attachmentStatusUpdate:0];
  }
}

- (void)_connectionInterrupted:(id)a3
{
  if (self->_connection == a3)
  {
    [(AFSiriTether *)self _attachmentStatusUpdate:0];
  }
}

- (id)_connection
{
  v18 = *MEMORY[0x1E69E9840];
  connection = self->_connection;
  if (!connection)
  {
    v4 = [(AFInstanceContext *)self->_instanceContext createXPCConnectionForMachService:AFSiriTetherMachService targetQueue:self->_queue flags:0];
    if (v4)
    {
      objc_initWeak(location, self);
      objc_initWeak(&from, v4);
      handler[0] = MEMORY[0x1E69E9820];
      handler[1] = 3221225472;
      handler[2] = __27__AFSiriTether__connection__block_invoke;
      handler[3] = &unk_1E7347840;
      objc_copyWeak(&v12, location);
      objc_copyWeak(&v13, &from);
      xpc_connection_set_event_handler(v4, handler);
      xpc_connection_activate(v4);
      objc_destroyWeak(&v13);
      objc_destroyWeak(&v12);
      objc_destroyWeak(&from);
      objc_destroyWeak(location);
    }

    else
    {
      v5 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
      {
        instanceContext = self->_instanceContext;
        *location = 136315394;
        *&location[4] = "[AFSiriTether _connection]";
        v16 = 2112;
        v17 = instanceContext;
        _os_log_error_impl(&dword_1912FE000, v5, OS_LOG_TYPE_ERROR, "%s Unable to create XPC connection from %@.", location, 0x16u);
      }
    }

    v7 = self->_connection;
    p_connection = &self->_connection;
    *p_connection = v4;

    connection = *p_connection;
  }

  v8 = *MEMORY[0x1E69E9840];

  return connection;
}

void __27__AFSiriTether__connection__block_invoke(uint64_t a1, uint64_t a2)
{
  if (MEMORY[0x193AFBC20](a2) == MEMORY[0x1E69E9E98])
  {
    if (a2 == MEMORY[0x1E69E9E18])
    {
      WeakRetained = objc_loadWeakRetained((a1 + 32));
      v4 = objc_loadWeakRetained((a1 + 40));
      [WeakRetained _connectionInterrupted:v4];
    }

    else
    {
      if (a2 != MEMORY[0x1E69E9E20])
      {
        return;
      }

      WeakRetained = objc_loadWeakRetained((a1 + 32));
      v4 = objc_loadWeakRetained((a1 + 40));
      [WeakRetained _connectionInvalid:v4];
    }
  }
}

- (void)setAttachmentStatusChangedHandler:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __50__AFSiriTether_setAttachmentStatusChangedHandler___block_invoke;
  v7[3] = &unk_1E7349838;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

void __50__AFSiriTether_setAttachmentStatusChangedHandler___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x193AFB7B0](*(a1 + 40));
  v3 = *(a1 + 32);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)waitForAttachment:(double)a3
{
  v28 = *MEMORY[0x1E69E9840];
  if (a3 > 0.0 && (v5 = dispatch_group_create()) != 0)
  {
    v6 = v5;
    dispatch_group_enter(v5);
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __34__AFSiriTether_waitForAttachment___block_invoke;
    v22[3] = &unk_1E7347818;
    v7 = v6;
    v23 = v7;
    [(AFSiriTether *)self attach:v22];
    v8 = AFAnalyticsEventCreateCurrent(1918, 0);
    v9 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v25 = "[AFSiriTether waitForAttachment:]";
      v26 = 2048;
      v27 = a3;
      _os_log_impl(&dword_1912FE000, v9, OS_LOG_TYPE_INFO, "%s Waiting for attachment %lf", buf, 0x16u);
    }

    v10 = dispatch_time(0, (a3 * 1000000000.0));
    v11 = dispatch_group_wait(v7, v10);
    v12 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v25 = "[AFSiriTether waitForAttachment:]";
      v26 = 1024;
      LODWORD(v27) = v11 == 0;
      _os_log_impl(&dword_1912FE000, v12, OS_LOG_TYPE_INFO, "%s Wait finished %d", buf, 0x12u);
    }

    v13 = AFAnalyticsEventCreateCurrent(1919, 0);
    queue = self->_queue;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __34__AFSiriTether_waitForAttachment___block_invoke_8;
    v19[3] = &unk_1E73494B0;
    v19[4] = self;
    v20 = v8;
    v21 = v13;
    v15 = v13;
    v16 = v8;
    dispatch_async(queue, v19);

    v17 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v18 = *MEMORY[0x1E69E9840];

    [(AFSiriTether *)self attach:0];
  }
}

uint64_t __34__AFSiriTether_waitForAttachment___block_invoke_8(uint64_t a1)
{
  [*(a1 + 32) _logEvent:*(a1 + 40)];
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);

  return [v2 _logEvent:v3];
}

- (void)attach:(id)a3
{
  v4 = a3;
  v5 = AFAnalyticsEventCreateCurrent(1920, 0);
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __23__AFSiriTether_attach___block_invoke;
  block[3] = &unk_1E73496E8;
  block[4] = self;
  v10 = v5;
  v11 = v4;
  v7 = v4;
  v8 = v5;
  dispatch_async(queue, block);
}

void __23__AFSiriTether_attach___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _logEvent:*(a1 + 40)];
  v2 = *(a1 + 32);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __23__AFSiriTether_attach___block_invoke_2;
  v3[3] = &unk_1E73477F0;
  v3[4] = v2;
  v4 = *(a1 + 48);
  [v2 _attach:v3];
}

uint64_t __23__AFSiriTether_attach___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  v10 = @"attached";
  v5 = [MEMORY[0x1E696AD98] numberWithBool:a2];
  v11[0] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v7 = AFAnalyticsEventCreateCurrent(1921, v6);
  [v4 _logEvent:v7];

  result = *(a1 + 40);
  if (result)
  {
    result = (*(result + 16))(result, a2);
  }

  v9 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)dealloc
{
  notifyToken = self->_notifyToken;
  if (notifyToken != -1)
  {
    notify_cancel(notifyToken);
  }

  v4.receiver = self;
  v4.super_class = AFSiriTether;
  [(AFSiriTether *)&v4 dealloc];
}

- (AFSiriTether)initWithInstanceContext:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = AFSiriTether;
  v5 = [(AFSiriTether *)&v12 init];
  if (v5)
  {
    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create(0, v6);

    queue = v5->_queue;
    v5->_queue = v7;

    v5->_notifyToken = -1;
    if (v4)
    {
      v9 = v4;
    }

    else
    {
      v9 = +[AFInstanceContext defaultContext];
    }

    instanceContext = v5->_instanceContext;
    v5->_instanceContext = v9;
  }

  return v5;
}

- (AFSiriTether)init
{
  v3 = +[AFInstanceContext currentContext];
  v4 = [(AFSiriTether *)self initWithInstanceContext:v3];

  return v4;
}

@end