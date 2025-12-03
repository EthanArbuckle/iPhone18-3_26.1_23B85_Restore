@interface CMVO2MaxRetrocomputeManager
- (CMVO2MaxRetrocomputeManager)init;
- (void)connect;
- (void)dealloc;
- (void)disconnect;
- (void)retrocomputeStateWithHandler:(id)handler;
- (void)retrocomputeStatusWithHandler:(id)handler;
- (void)startRetrocomputeStatusUpdates;
- (void)stopRetrocomputeStatusUpdates;
- (void)triggerRetrocomputeWithHandler:(id)handler;
@end

@implementation CMVO2MaxRetrocomputeManager

- (CMVO2MaxRetrocomputeManager)init
{
  v4.receiver = self;
  v4.super_class = CMVO2MaxRetrocomputeManager;
  v2 = [(CMVO2MaxRetrocomputeManager *)&v4 init];
  if (v2)
  {
    v2->fStartedUpdates = 0;
    v2->fInternalQueue = dispatch_queue_create("com.apple.CoreMotion.CMVO2MaxRetrocomputeManager", 0);
    operator new();
  }

  return 0;
}

- (void)dealloc
{
  objc_msgSend_disconnect(self, a2, v2);
  v4.receiver = self;
  v4.super_class = CMVO2MaxRetrocomputeManager;
  [(CMVO2MaxRetrocomputeManager *)&v4 dealloc];
}

- (void)connect
{
  fLocationdConnection = self->fLocationdConnection;
  CLConnectionClient::setDefaultMessageHandler();
  objc_initWeak(&location, self);
  v4 = self->fLocationdConnection;
  objc_copyWeak(&v5, &location);
  CLConnectionClient::setInterruptionHandler();
  CLConnectionClient::start(self->fLocationdConnection);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)disconnect
{
  fLocationdConnection = self->fLocationdConnection;
  if (fLocationdConnection)
  {
    v4 = MEMORY[0x19EAE71C0](fLocationdConnection, a2);
    MEMORY[0x19EAE76F0](v4, 0xB0C40BC2CC919);
    self->fLocationdConnection = 0;
    dispatch_release(self->fInternalQueue);
    self->fInternalQueue = 0;
  }
}

- (void)retrocomputeStatusWithHandler:(id)handler
{
  v21 = *MEMORY[0x1E69E9840];
  if (!handler)
  {
    v14 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, 0);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v14, v15, a2, self, @"CMVO2MaxRetrocomputeManager.mm", 96, @"Invalid parameter not satisfying: %@", @"handler");
  }

  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  if (sub_19B43B6EC())
  {
    if (self->fLocationdConnection)
    {
      objc_msgSend_copy(handler, v5, v6);
      sub_19B5B64E0();
    }

    if (qword_1EAFE2788 != -1)
    {
      dispatch_once(&qword_1EAFE2788, &unk_1F0E27C20);
    }

    v8 = qword_1EAFE27C0;
    if (os_log_type_enabled(qword_1EAFE27C0, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v8, OS_LOG_TYPE_ERROR, "Error in retrocomputeStatusWithHandler: invalid locationd connection", buf, 2u);
    }

    v9 = sub_19B420058();
    if ((*(v9 + 160) & 0x80000000) == 0 || (*(v9 + 164) & 0x80000000) == 0 || (*(v9 + 168) & 0x80000000) == 0 || *(v9 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2788 != -1)
      {
        dispatch_once(&qword_1EAFE2788, &unk_1F0E27C20);
      }

      v11 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "[CMVO2MaxRetrocomputeManager retrocomputeStatusWithHandler:]", "CoreLocation: %s\n", v11);
      if (v11 != buf)
      {
        free(v11);
      }
    }

    v7 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], v10, @"CMErrorDomain", 103, 0);
  }

  else
  {
    v7 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], v5, @"CMErrorDomain", 109, 0);
  }

  (*(handler + 2))(handler, v17[3], 0, 0, v7);
  _Block_object_dispose(&v16, 8);
  v12 = *MEMORY[0x1E69E9840];
}

- (void)retrocomputeStateWithHandler:(id)handler
{
  v20 = *MEMORY[0x1E69E9840];
  if (!handler)
  {
    v17 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, 0);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v17, v18, a2, self, @"CMVO2MaxRetrocomputeManager.mm", 161, @"Invalid parameter not satisfying: %@", @"handler");
  }

  if (sub_19B43B6EC())
  {
    if (self->fLocationdConnection)
    {
      objc_msgSend_copy(handler, v5, v6);
      sub_19B5B64E0();
    }

    if (qword_1EAFE2788 != -1)
    {
      dispatch_once(&qword_1EAFE2788, &unk_1F0E27C20);
    }

    v10 = qword_1EAFE27C0;
    if (os_log_type_enabled(qword_1EAFE27C0, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v10, OS_LOG_TYPE_ERROR, "Error in retrocomputeStateWithHandler: invalid locationd connection", buf, 2u);
    }

    v11 = sub_19B420058();
    if ((*(v11 + 160) & 0x80000000) == 0 || (*(v11 + 164) & 0x80000000) == 0 || (*(v11 + 168) & 0x80000000) == 0 || *(v11 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2788 != -1)
      {
        dispatch_once(&qword_1EAFE2788, &unk_1F0E27C20);
      }

      v13 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "[CMVO2MaxRetrocomputeManager retrocomputeStateWithHandler:]", "CoreLocation: %s\n", v13);
      if (v13 != buf)
      {
        free(v13);
      }
    }

    v14 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], v12, @"CMErrorDomain", 103, 0);
    (*(handler + 2))(handler, 0, v14);
    v15 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v7 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], v5, @"CMErrorDomain", 109, 0);
    v8 = *(handler + 2);
    v9 = *MEMORY[0x1E69E9840];

    v8(handler, 0, v7);
  }
}

- (void)triggerRetrocomputeWithHandler:(id)handler
{
  v13 = *MEMORY[0x1E69E9840];
  if (sub_19B43B6EC())
  {
    objc_msgSend_copy(handler, v4, v5);
    sub_19B686CD4();
  }

  if (qword_1EAFE2788 != -1)
  {
    dispatch_once(&qword_1EAFE2788, &unk_1F0E27C20);
  }

  v6 = qword_1EAFE27C0;
  if (os_log_type_enabled(qword_1EAFE27C0, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_DEBUG, "VO2MaxRetrocompute only enabled on iPhone", buf, 2u);
  }

  v7 = sub_19B420058();
  if (*(v7 + 160) > 1 || *(v7 + 164) > 1 || *(v7 + 168) > 1 || *(v7 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2788 != -1)
    {
      dispatch_once(&qword_1EAFE2788, &unk_1F0E27C20);
    }

    v9 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMVO2MaxRetrocomputeManager triggerRetrocomputeWithHandler:]", "CoreLocation: %s\n", v9);
    if (v9 != buf)
    {
      free(v9);
    }
  }

  v10 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], v8, @"CMErrorDomain", 109, 0);
  (*(handler + 2))(handler, v10);
  v11 = *MEMORY[0x1E69E9840];
}

- (void)startRetrocomputeStatusUpdates
{
  v18 = *MEMORY[0x1E69E9840];
  if (sub_19B43B6EC())
  {
    if (qword_1EAFE2788 != -1)
    {
      dispatch_once(&qword_1EAFE2788, &unk_1F0E27C20);
    }

    v3 = qword_1EAFE27C0;
    if (os_log_type_enabled(qword_1EAFE27C0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_DEFAULT, "Starting retrocompute status updates", buf, 2u);
    }

    v4 = sub_19B420058();
    if (*(v4 + 160) > 1 || *(v4 + 164) > 1 || *(v4 + 168) > 1 || *(v4 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2788 != -1)
      {
        dispatch_once(&qword_1EAFE2788, &unk_1F0E27C20);
      }

      v16 = 0;
      v5 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMVO2MaxRetrocomputeManager startRetrocomputeStatusUpdates]", "CoreLocation: %s\n", v5);
      if (v5 != buf)
      {
        free(v5);
      }
    }

    fInternalQueue = self->fInternalQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_19B6AACC8;
    block[3] = &unk_1E7532988;
    block[4] = self;
    dispatch_async(fInternalQueue, block);
  }

  else
  {
    if (qword_1EAFE2788 != -1)
    {
      dispatch_once(&qword_1EAFE2788, &unk_1F0E27C20);
    }

    v7 = qword_1EAFE27C0;
    if (os_log_type_enabled(qword_1EAFE27C0, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v7, OS_LOG_TYPE_DEBUG, "Not starting retrocompute status updates; VO2MaxRetrocompute is not enabled on this platform", buf, 2u);
    }

    v8 = sub_19B420058();
    if (*(v8 + 160) > 1 || *(v8 + 164) > 1 || *(v8 + 168) > 1 || *(v8 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2788 != -1)
      {
        dispatch_once(&qword_1EAFE2788, &unk_1F0E27C20);
      }

      v16 = 0;
      v9 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMVO2MaxRetrocomputeManager startRetrocomputeStatusUpdates]", "CoreLocation: %s\n", v9);
      if (v9 != buf)
      {
        free(v9);
      }
    }

    objc_loadWeak(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      Weak = objc_loadWeak(&self->_delegate);
      v12 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], v11, @"CMErrorDomain", 109, 0);
      objc_msgSend_vo2MaxRetrocomputeManager_updateFailedWithError_(Weak, v13, self, v12);
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)stopRetrocomputeStatusUpdates
{
  v14 = *MEMORY[0x1E69E9840];
  if (sub_19B43B6EC())
  {
    if (qword_1EAFE2788 != -1)
    {
      dispatch_once(&qword_1EAFE2788, &unk_1F0E27C20);
    }

    v3 = qword_1EAFE27C0;
    if (os_log_type_enabled(qword_1EAFE27C0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_DEFAULT, "Stopping retrocompute status updates", buf, 2u);
    }

    v4 = sub_19B420058();
    if (*(v4 + 160) > 1 || *(v4 + 164) > 1 || *(v4 + 168) > 1 || *(v4 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2788 != -1)
      {
        dispatch_once(&qword_1EAFE2788, &unk_1F0E27C20);
      }

      v12 = 0;
      v5 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMVO2MaxRetrocomputeManager stopRetrocomputeStatusUpdates]", "CoreLocation: %s\n", v5);
      if (v5 != buf)
      {
        free(v5);
      }
    }

    fInternalQueue = self->fInternalQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_19B6AB77C;
    block[3] = &unk_1E7532988;
    block[4] = self;
    dispatch_async(fInternalQueue, block);
  }

  else
  {
    if (qword_1EAFE2788 != -1)
    {
      dispatch_once(&qword_1EAFE2788, &unk_1F0E27C20);
    }

    v7 = qword_1EAFE27C0;
    if (os_log_type_enabled(qword_1EAFE27C0, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v7, OS_LOG_TYPE_DEBUG, "Not attempting to stop retrocompute status updates; VO2MaxRetrocompute is not enabled on this platform", buf, 2u);
    }

    v8 = sub_19B420058();
    if (*(v8 + 160) > 1 || *(v8 + 164) > 1 || *(v8 + 168) > 1 || *(v8 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2788 != -1)
      {
        dispatch_once(&qword_1EAFE2788, &unk_1F0E27C20);
      }

      v12 = 0;
      v9 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMVO2MaxRetrocomputeManager stopRetrocomputeStatusUpdates]", "CoreLocation: %s\n", v9);
      if (v9 != buf)
      {
        free(v9);
      }
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

@end