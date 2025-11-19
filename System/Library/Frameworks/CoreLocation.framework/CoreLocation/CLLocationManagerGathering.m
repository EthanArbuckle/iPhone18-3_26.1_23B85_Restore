@interface CLLocationManagerGathering
- (CLLocationManagerGathering)init;
- (CLLocationManagerGathering)initWithQueue:(id)a3;
- (id)getConnection;
- (id)getRemoteObjectProxy;
- (void)configure:(id)a3 withCompletionHandler:(id)a4;
- (void)dealloc;
- (void)fetchAdvertisementsDetailedWithHandler:(id)a3;
- (void)fetchAdvertisementsWithHandler:(id)a3;
@end

@implementation CLLocationManagerGathering

- (CLLocationManagerGathering)init
{
  v3 = dispatch_queue_create([objc_msgSend(MEMORY[0x1E696AEC0] stringWithFormat:@"_CLLocationManagerGatheringProxy, %p", self), "UTF8String"], 0);
  v4 = [(CLLocationManagerGathering *)self initWithQueue:v3];
  dispatch_release(v3);
  return v4;
}

- (CLLocationManagerGathering)initWithQueue:(id)a3
{
  if (!a3)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  v7.receiver = self;
  v7.super_class = CLLocationManagerGathering;
  v5 = [(CLLocationManagerGathering *)&v7 init];
  if (v5)
  {
    v5->_queue = a3;
  }

  return v5;
}

- (void)dealloc
{
  [(NSXPCConnection *)[(CLLocationManagerGathering *)self connection] invalidate];
  [(CLLocationManagerGathering *)self setConnection:0];
  queue = self->_queue;
  if (queue)
  {
    dispatch_release(queue);
    self->_queue = 0;
  }

  v4.receiver = self;
  v4.super_class = CLLocationManagerGathering;
  [(CLLocationManagerGathering *)&v4 dealloc];
}

- (id)getConnection
{
  v29 = *MEMORY[0x1E69E9840];
  result = self->_connection;
  if (!result)
  {
    if (qword_1EAFE46D8 != -1)
    {
      dispatch_once(&qword_1EAFE46D8, &unk_1F0E6B960);
    }

    v4 = qword_1EAFE4710;
    if (os_log_type_enabled(qword_1EAFE4710, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v4, OS_LOG_TYPE_DEBUG, "Creating new connection...", buf, 2u);
    }

    v5 = sub_19B87DD40();
    if (*(v5 + 160) > 1 || *(v5 + 164) > 1 || *(v5 + 168) > 1 || *(v5 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D8 != -1)
      {
        dispatch_once(&qword_1EAFE46D8, &unk_1F0E6B960);
      }

      LOWORD(location) = 0;
      v6 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "[CLLocationManagerGathering getConnection]", "CoreLocation: %s\n", v6);
      if (v6 != buf)
      {
        free(v6);
      }
    }

    v7 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.locationd.gathering" options:4096];
    self->_connection = v7;
    if (v7)
    {
      [(NSXPCConnection *)v7 _setQueue:self->_queue];
      -[NSXPCConnection setExportedInterface:](self->_connection, "setExportedInterface:", [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F0EAC8C8]);
      [(NSXPCConnection *)self->_connection setExportedObject:self];
      -[NSXPCConnection setRemoteObjectInterface:](self->_connection, "setRemoteObjectInterface:", [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F0EAC928]);
      v8 = [(NSXPCConnection *)self->_connection remoteObjectInterface];
      v9 = MEMORY[0x1E695DFD8];
      v10 = objc_opt_class();
      -[NSXPCInterface setClasses:forSelector:argumentIndex:ofReply:](v8, "setClasses:forSelector:argumentIndex:ofReply:", [v9 setWithObjects:{v10, objc_opt_class(), 0}], sel_fetchAdvertisementsWithCompletion_, 0, 1);
      v11 = [(NSXPCConnection *)self->_connection remoteObjectInterface];
      v12 = MEMORY[0x1E695DFD8];
      v13 = objc_opt_class();
      -[NSXPCInterface setClasses:forSelector:argumentIndex:ofReply:](v11, "setClasses:forSelector:argumentIndex:ofReply:", [v12 setWithObjects:{v13, objc_opt_class(), 0}], sel_fetchAdvertisementsDetailedWithCompletion_, 0, 1);
      v14 = [(NSXPCConnection *)self->_connection serviceName];
      connection = self->_connection;
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = sub_19B8E23A4;
      v27[3] = &unk_1E753CC90;
      v27[4] = v14;
      [(NSXPCConnection *)connection setInterruptionHandler:v27];
      objc_initWeak(&location, self);
      v16 = self->_connection;
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = sub_19B8E2570;
      v24[3] = &unk_1E753D618;
      v24[4] = v14;
      objc_copyWeak(&v25, &location);
      [(NSXPCConnection *)v16 setInvalidationHandler:v24];
      [(NSXPCConnection *)self->_connection activate];
      if (qword_1EAFE46D8 != -1)
      {
        dispatch_once(&qword_1EAFE46D8, &unk_1F0E6B960);
      }

      v17 = qword_1EAFE4710;
      if (os_log_type_enabled(qword_1EAFE4710, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_19B873000, v17, OS_LOG_TYPE_DEBUG, "Creating new connection... activated!", buf, 2u);
      }

      v18 = sub_19B87DD40();
      if (*(v18 + 160) > 1 || *(v18 + 164) > 1 || *(v18 + 168) > 1 || *(v18 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46D8 != -1)
        {
          dispatch_once(&qword_1EAFE46D8, &unk_1F0E6B960);
        }

        v19 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 2, "[CLLocationManagerGathering getConnection]", "CoreLocation: %s\n", v19);
        if (v19 != buf)
        {
          free(v19);
        }
      }

      objc_destroyWeak(&v25);
      objc_destroyWeak(&location);
      result = self->_connection;
    }

    else
    {
      if (qword_1EAFE46D8 != -1)
      {
        dispatch_once(&qword_1EAFE46D8, &unk_1F0E6B960);
      }

      v20 = qword_1EAFE4710;
      if (os_log_type_enabled(qword_1EAFE4710, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_19B873000, v20, OS_LOG_TYPE_DEFAULT, "NSXPCConnection failed to init", buf, 2u);
      }

      v21 = sub_19B87DD40();
      if (*(v21 + 160) > 1 || *(v21 + 164) > 1 || *(v21 + 168) > 1 || *(v21 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46D8 != -1)
        {
          dispatch_once(&qword_1EAFE46D8, &unk_1F0E6B960);
        }

        LOWORD(location) = 0;
        v22 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 2, "[CLLocationManagerGathering getConnection]", "CoreLocation: %s\n", v22);
        if (v22 != buf)
        {
          free(v22);
        }
      }

      result = 0;
    }
  }

  v23 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)getRemoteObjectProxy
{
  v2 = [(CLLocationManagerGathering *)self getConnection];

  return [v2 remoteObjectProxyWithErrorHandler:&unk_1F0E6B940];
}

- (void)fetchAdvertisementsWithHandler:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE46D8 != -1)
  {
    dispatch_once(&qword_1EAFE46D8, &unk_1F0E6B960);
  }

  v6 = qword_1EAFE4710;
  if (os_log_type_enabled(qword_1EAFE4710, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_19B873000, v6, OS_LOG_TYPE_DEBUG, "fetchAdvertisementsWithHandler", buf, 2u);
  }

  v7 = sub_19B87DD40();
  if (*(v7 + 160) > 1 || *(v7 + 164) > 1 || *(v7 + 168) > 1 || *(v7 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D8 != -1)
    {
      dispatch_once(&qword_1EAFE46D8, &unk_1F0E6B960);
    }

    v12 = 0;
    v8 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "[CLLocationManagerGathering fetchAdvertisementsWithHandler:]", "CoreLocation: %s\n", v8);
    if (v8 != buf)
    {
      free(v8);
    }
  }

  queue = self->_queue;
  if (!queue)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
    queue = self->_queue;
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B8E2CF4;
  block[3] = &unk_1E753D688;
  block[4] = self;
  block[5] = a3;
  dispatch_async(queue, block);
  v10 = *MEMORY[0x1E69E9840];
}

- (void)fetchAdvertisementsDetailedWithHandler:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE46D8 != -1)
  {
    dispatch_once(&qword_1EAFE46D8, &unk_1F0E6B960);
  }

  v6 = qword_1EAFE4710;
  if (os_log_type_enabled(qword_1EAFE4710, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_19B873000, v6, OS_LOG_TYPE_DEBUG, "fetchAdvertisementsDetailedWithHandler", buf, 2u);
  }

  v7 = sub_19B87DD40();
  if (*(v7 + 160) > 1 || *(v7 + 164) > 1 || *(v7 + 168) > 1 || *(v7 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D8 != -1)
    {
      dispatch_once(&qword_1EAFE46D8, &unk_1F0E6B960);
    }

    v12 = 0;
    v8 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "[CLLocationManagerGathering fetchAdvertisementsDetailedWithHandler:]", "CoreLocation: %s\n", v8);
    if (v8 != buf)
    {
      free(v8);
    }
  }

  queue = self->_queue;
  if (!queue)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
    queue = self->_queue;
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B8E3284;
  block[3] = &unk_1E753D688;
  block[4] = self;
  block[5] = a3;
  dispatch_async(queue, block);
  v10 = *MEMORY[0x1E69E9840];
}

- (void)configure:(id)a3 withCompletionHandler:(id)a4
{
  v16 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE46D8 != -1)
  {
    dispatch_once(&qword_1EAFE46D8, &unk_1F0E6B960);
  }

  v8 = qword_1EAFE4710;
  if (os_log_type_enabled(qword_1EAFE4710, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_19B873000, v8, OS_LOG_TYPE_DEBUG, "configure:withCompletionHandler:", buf, 2u);
  }

  v9 = sub_19B87DD40();
  if (*(v9 + 160) > 1 || *(v9 + 164) > 1 || *(v9 + 168) > 1 || *(v9 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D8 != -1)
    {
      dispatch_once(&qword_1EAFE46D8, &unk_1F0E6B960);
    }

    v14 = 0;
    v10 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "[CLLocationManagerGathering configure:withCompletionHandler:]", "CoreLocation: %s\n", v10);
    if (v10 != buf)
    {
      free(v10);
    }
  }

  queue = self->_queue;
  if (!queue)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
    queue = self->_queue;
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B8E3844;
  block[3] = &unk_1E753D000;
  block[4] = self;
  block[5] = a4;
  block[6] = a3;
  dispatch_async(queue, block);
  v12 = *MEMORY[0x1E69E9840];
}

@end