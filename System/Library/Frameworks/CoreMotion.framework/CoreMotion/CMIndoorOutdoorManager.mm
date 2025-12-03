@interface CMIndoorOutdoorManager
+ (BOOL)isIndoorOutdoorStateAvailable;
- (CMIndoorOutdoorManager)init;
- (void)dealloc;
- (void)lastKnownIndoorOutdoorStateWithHandler:(id)handler;
- (void)setDelegate:(id)delegate;
- (void)startIndoorOutdoorUpdates;
- (void)stopIndoorOutdoorUpdates;
@end

@implementation CMIndoorOutdoorManager

+ (BOOL)isIndoorOutdoorStateAvailable
{
  sub_19B421798();
  sub_19B421798();

  return sub_19B43B6EC();
}

- (CMIndoorOutdoorManager)init
{
  v4.receiver = self;
  v4.super_class = CMIndoorOutdoorManager;
  v2 = [(CMIndoorOutdoorManager *)&v4 init];
  if (v2)
  {
    v2->_internal = objc_opt_new();
  }

  return v2;
}

- (void)dealloc
{
  internalQueue = self->_internal->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B65B6A4;
  block[3] = &unk_1E7532988;
  block[4] = self;
  dispatch_sync(internalQueue, block);

  v4.receiver = self;
  v4.super_class = CMIndoorOutdoorManager;
  [(CMIndoorOutdoorManager *)&v4 dealloc];
}

- (void)setDelegate:(id)delegate
{
  objc_storeWeak(&self->_delegate, delegate);
  self->_internal->_delegate = delegate;
  self->_internal->_sender = self;
}

- (void)startIndoorOutdoorUpdates
{
  v17 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE2A78 != -1)
  {
    dispatch_once(&qword_1EAFE2A78, &unk_1F0E27E20);
  }

  v3 = qword_1EAFE2A80;
  if (os_log_type_enabled(qword_1EAFE2A80, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_DEFAULT, "IndoorOutdoor, starting indoor/outdoor updates", buf, 2u);
  }

  v4 = sub_19B420058();
  if (*(v4 + 160) > 1 || *(v4 + 164) > 1 || *(v4 + 168) > 1 || *(v4 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2A78 != -1)
    {
      dispatch_once(&qword_1EAFE2A78, &unk_1F0E27E20);
    }

    v5 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMIndoorOutdoorManager startIndoorOutdoorUpdates]", "CoreLocation: %s\n", v5);
    if (v5 != buf)
    {
      free(v5);
    }
  }

  v6 = objc_opt_class();
  if (objc_msgSend_isIndoorOutdoorStateAvailable(v6, v7, v8))
  {
    objc_msgSend__startIndoorOutdoorUpdates(self->_internal, v9, v10);
  }

  else
  {
    objc_loadWeak(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      v12 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], v11, @"CMErrorDomain", 109, 0);
      Weak = objc_loadWeak(&self->_delegate);
      objc_msgSend_indoorOutdoorManager_failedToStartUpdatesWithError_(Weak, v14, self, v12);
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)stopIndoorOutdoorUpdates
{
  v10 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE2A78 != -1)
  {
    dispatch_once(&qword_1EAFE2A78, &unk_1F0E27E20);
  }

  v3 = qword_1EAFE2A80;
  if (os_log_type_enabled(qword_1EAFE2A80, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_DEFAULT, "IndoorOutdoor, stopping indoor/outdoor updates", buf, 2u);
  }

  v4 = sub_19B420058();
  if (*(v4 + 160) > 1 || *(v4 + 164) > 1 || *(v4 + 168) > 1 || *(v4 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2A78 != -1)
    {
      dispatch_once(&qword_1EAFE2A78, &unk_1F0E27E20);
    }

    v7 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMIndoorOutdoorManager stopIndoorOutdoorUpdates]", "CoreLocation: %s\n", v7);
    if (v7 != buf)
    {
      free(v7);
    }
  }

  objc_msgSend__stopIndoorOutdoorUpdates(self->_internal, v5, v6);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)lastKnownIndoorOutdoorStateWithHandler:(id)handler
{
  v15 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE2A78 != -1)
  {
    dispatch_once(&qword_1EAFE2A78, &unk_1F0E27E20);
  }

  v5 = qword_1EAFE2A80;
  if (os_log_type_enabled(qword_1EAFE2A80, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v5, OS_LOG_TYPE_DEBUG, "IndoorOutdoor, getting last known state", buf, 2u);
  }

  v6 = sub_19B420058();
  if (*(v6 + 160) > 1 || *(v6 + 164) > 1 || *(v6 + 168) > 1 || *(v6 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2A78 != -1)
    {
      dispatch_once(&qword_1EAFE2A78, &unk_1F0E27E20);
    }

    v7 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMIndoorOutdoorManager lastKnownIndoorOutdoorStateWithHandler:]", "CoreLocation: %s\n", v7);
    if (v7 != buf)
    {
      free(v7);
    }
  }

  v8 = objc_opt_class();
  if (objc_msgSend_isIndoorOutdoorStateAvailable(v8, v9, v10))
  {
    objc_msgSend__lastKnownIndoorOutdoorStateWithHandler_(self->_internal, v11, handler);
  }

  else
  {
    v12 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], v11, @"CMErrorDomain", 109, 0);
    (*(handler + 2))(handler, 0, v12);
  }

  v13 = *MEMORY[0x1E69E9840];
}

@end