@interface CMHeadphoneActivityManager
- (BOOL)isActivityAvailable;
- (BOOL)mslLoggingEnabled;
- (CMHeadphoneActivityManager)init;
- (void)dealloc;
- (void)notifyDeviceConnectedEventToClientPrivate;
- (void)notifyDeviceDisconnectedEventToClientPrivate;
- (void)onActivityPrivate:(id)private error:(id)error;
- (void)onStatusEventPrivate:(id)private;
- (void)pauseActivityStreamingPrivate;
- (void)pauseStatusStreamingPrivate;
- (void)resumeActivityStreamingPrivate;
- (void)resumeStatusStreamingPrivate;
- (void)startActivityUpdatesPrivateToQueue:(id)queue withHandler:(id)handler;
- (void)startActivityUpdatesToQueue:(id)queue withHandler:(id)handler;
- (void)startMslLoggingWithFilenamePrefix:(id)prefix filePath:(id)path;
- (void)startStatusUpdatesPrivateToQueue:(id)queue withHandler:(id)handler;
- (void)startStatusUpdatesToQueue:(id)queue withHandler:(id)handler;
- (void)stopActivityUpdates;
- (void)stopActivityUpdatesPrivate;
- (void)stopMslLogging;
- (void)stopStatusUpdates;
- (void)stopStatusUpdatesPrivate;
@end

@implementation CMHeadphoneActivityManager

- (CMHeadphoneActivityManager)init
{
  v4.receiver = self;
  v4.super_class = CMHeadphoneActivityManager;
  v2 = [(CMHeadphoneActivityManager *)&v4 init];
  if (v2)
  {
    v2->_internal = objc_opt_new();
  }

  return v2;
}

- (void)dealloc
{
  dispatch_queue_set_specific(self->_internal->_dispatchQueue, &unk_1EAFE39F0, &unk_1EAFE39F0, 0);
  if (dispatch_get_specific(&unk_1EAFE39F0) == &unk_1EAFE39F0)
  {
    objc_msgSend_pauseActivityStreamingPrivate(self, v3, v4);
    objc_msgSend_pauseStatusStreamingPrivate(self, v6, v7);
    objc_msgSend_stopMslLoggingPrivate(self->_internal, v8, v9);
  }

  else
  {
    dispatchQueue = self->_internal->_dispatchQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_19B736898;
    block[3] = &unk_1E7532988;
    block[4] = self;
    dispatch_sync(dispatchQueue, block);
  }

  v10.receiver = self;
  v10.super_class = CMHeadphoneActivityManager;
  [(CMHeadphoneActivityManager *)&v10 dealloc];
}

- (BOOL)isActivityAvailable
{
  if (qword_1ED71D638 != -1)
  {
    dispatch_once(&qword_1ED71D638, &unk_1F0E27B80);
  }

  return byte_1ED71D630;
}

- (void)startActivityUpdatesToQueue:(id)queue withHandler:(id)handler
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_19B736A14;
  v4[3] = &unk_1E7532C08;
  v4[4] = self;
  v4[5] = queue;
  v4[6] = handler;
  objc_msgSend_tccServiceMotionAccessAllowingMacWithBlock_(CMMotionUtils, a2, v4);
}

- (void)stopActivityUpdates
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = sub_19B736B24;
  v2[3] = &unk_1E7532988;
  v2[4] = self;
  objc_msgSend_tccServiceMotionAccessAllowingMacWithBlock_(CMMotionUtils, a2, v2);
}

- (void)startStatusUpdatesToQueue:(id)queue withHandler:(id)handler
{
  dispatchQueue = self->_internal->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B736C20;
  block[3] = &unk_1E7532C08;
  block[4] = self;
  block[5] = queue;
  block[6] = handler;
  dispatch_async(dispatchQueue, block);
}

- (void)stopStatusUpdates
{
  dispatchQueue = self->_internal->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B736CA8;
  block[3] = &unk_1E7532988;
  block[4] = self;
  dispatch_sync(dispatchQueue, block);
}

- (BOOL)mslLoggingEnabled
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  dispatchQueue = self->_internal->_dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_19B736D60;
  v5[3] = &unk_1E7533708;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)startMslLoggingWithFilenamePrefix:(id)prefix filePath:(id)path
{
  dispatchQueue = self->_internal->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B736E14;
  block[3] = &unk_1E7535040;
  block[4] = self;
  block[5] = prefix;
  block[6] = path;
  dispatch_async(dispatchQueue, block);
}

- (void)stopMslLogging
{
  dispatchQueue = self->_internal->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B736EA0;
  block[3] = &unk_1E7532988;
  block[4] = self;
  dispatch_sync(dispatchQueue, block);
}

- (void)startActivityUpdatesPrivateToQueue:(id)queue withHandler:(id)handler
{
  dispatch_assert_queue_V2(self->_internal->_dispatchQueue);
  if (objc_msgSend_isActivityAvailable(self, v7, v8))
  {
    if (!self->_internal->_activityActive)
    {
      self->_internal->_activityCallbackQueue = queue;
      self->_internal->_activityHandler = objc_msgSend_copy(handler, v9, v10);
      objc_msgSend_resumeActivityStreamingPrivate(self, v11, v12);
      self->_internal->_activityActive = 1;
    }
  }
}

- (void)stopActivityUpdatesPrivate
{
  dispatch_assert_queue_V2(self->_internal->_dispatchQueue);
  if (objc_msgSend_isActivityAvailable(self, v3, v4) && self->_internal->_activityActive)
  {
    objc_msgSend_pauseActivityStreamingPrivate(self, v5, v6);
    self->_internal->_activityActive = 0;

    self->_internal->_activityCallbackQueue = 0;
    self->_internal->_activityHandler = 0;
    internal = self->_internal;

    MEMORY[0x1EEE66B58](internal, sel_disconnectActivity, v7);
  }
}

- (void)resumeActivityStreamingPrivate
{
  dispatch_assert_queue_V2(self->_internal->_dispatchQueue);
  if (objc_msgSend_isActivityAvailable(self, v3, v4))
  {
    internal = self->_internal;
    if (!internal->_activityStreaming)
    {
      objc_msgSend_connectActivity(internal, v5, v6);
      v9 = objc_msgSend_archivedDataWithRootObject_requiringSecureCoding_error_(MEMORY[0x1E696ACC8], v8, MEMORY[0x1E695E0F8], 1, 0);
      objc_initWeak(&location, self);
      activityConnectionClient = self->_internal->_activityConnectionClient;
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = sub_19B737128;
      v11[3] = &unk_1E7535990;
      objc_copyWeak(&v12, &location);
      sub_19B60A584(activityConnectionClient, @"kRMStartStreamingHeadphoneActivity", v9, v11);
      self->_internal->_activityStreaming = 1;
      objc_destroyWeak(&v12);
      objc_destroyWeak(&location);
    }
  }
}

- (void)pauseActivityStreamingPrivate
{
  dispatch_assert_queue_V2(self->_internal->_dispatchQueue);
  if (objc_msgSend_isActivityAvailable(self, v3, v4))
  {
    internal = self->_internal;
    if (internal->_activityStreaming)
    {
      internal->_activityStreaming = 0;
      sub_19B60AC5C(self->_internal->_activityConnectionClient);
      if ((objc_msgSend_hasConnectionClients(self, v6, v7) & 1) == 0)
      {

        objc_msgSend_notifyDeviceDisconnectedEventToClientPrivate(self, v8, v9);
      }
    }
  }
}

- (void)onActivityPrivate:(id)private error:(id)error
{
  dispatch_assert_queue_V2(self->_internal->_dispatchQueue);
  Current = CFAbsoluteTimeGetCurrent();
  internal = self->_internal;
  if (Current >= internal->_startTime)
  {
    activityHandler = internal->_activityHandler;
    if (activityHandler)
    {
      v11 = (private | error) == 0;
    }

    else
    {
      v11 = 1;
    }

    if (!v11)
    {
      activityCallbackQueue = internal->_activityCallbackQueue;
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = sub_19B737454;
      v13[3] = &unk_1E7532C08;
      v13[4] = private;
      v13[5] = error;
      v13[6] = activityHandler;
      objc_msgSend_addOperationWithBlock_(activityCallbackQueue, v7, v13);
    }
  }
}

- (void)startStatusUpdatesPrivateToQueue:(id)queue withHandler:(id)handler
{
  dispatch_assert_queue_V2(self->_internal->_dispatchQueue);
  if (objc_msgSend_isStatusAvailable(self, v7, v8))
  {
    if (!self->_internal->_statusActive)
    {
      self->_internal->_statusCallbackQueue = queue;
      self->_internal->_statusHandler = objc_msgSend_copy(handler, v9, v10);
      objc_msgSend_resumeStatusStreamingPrivate(self, v11, v12);
      self->_internal->_statusActive = 1;
    }
  }
}

- (void)stopStatusUpdatesPrivate
{
  dispatch_assert_queue_V2(self->_internal->_dispatchQueue);
  if (objc_msgSend_isStatusAvailable(self, v3, v4))
  {
    if (self->_internal->_statusActive)
    {
      objc_msgSend_pauseStatusStreamingPrivate(self, v5, v6);
      self->_internal->_statusActive = 0;

      self->_internal->_statusCallbackQueue = 0;
      self->_internal->_statusHandler = 0;
      if ((objc_msgSend_hasConnectionClients(self, v7, v8) & 1) == 0)
      {
        internal = self->_internal;

        MEMORY[0x1EEE66B58](internal, sel_disconnectStatus, v9);
      }
    }
  }
}

- (void)resumeStatusStreamingPrivate
{
  v18[1] = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_internal->_dispatchQueue);
  if (objc_msgSend_isStatusAvailable(self, v3, v4))
  {
    internal = self->_internal;
    if (!internal->_statusStreaming)
    {
      objc_msgSend_connectStatus(internal, v5, v6);
      v17 = @"RequireActivitySupport";
      v18[0] = MEMORY[0x1E695E118];
      v9 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v8, v18, &v17, 1);
      v11 = objc_msgSend_archivedDataWithRootObject_requiringSecureCoding_error_(MEMORY[0x1E696ACC8], v10, v9, 1, 0);
      objc_initWeak(&location, self);
      statusConnectionClient = self->_internal->_statusConnectionClient;
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = sub_19B73790C;
      v14[3] = &unk_1E7535990;
      objc_copyWeak(&v15, &location);
      sub_19B60A584(statusConnectionClient, @"kRMStartStreamingHeadphoneStatus", v11, v14);
      self->_internal->_statusStreaming = 1;
      objc_destroyWeak(&v15);
      objc_destroyWeak(&location);
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)pauseStatusStreamingPrivate
{
  dispatch_assert_queue_V2(self->_internal->_dispatchQueue);
  if (objc_msgSend_isStatusAvailable(self, v3, v4))
  {
    internal = self->_internal;
    if (internal->_statusStreaming)
    {
      internal->_statusStreaming = 0;
      sub_19B60AC5C(self->_internal->_statusConnectionClient);
      if ((objc_msgSend_hasConnectionClients(self, v6, v7) & 1) == 0)
      {

        objc_msgSend_notifyDeviceDisconnectedEventToClientPrivate(self, v8, v9);
      }
    }
  }
}

- (void)onStatusEventPrivate:(id)private
{
  v20 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_internal->_dispatchQueue);
  v6 = objc_msgSend_objectForKeyedSubscript_(private, v5, @"EventType");
  if (objc_msgSend_isEqualToString_(v6, v7, @"Connect"))
  {
    self->_internal->_startTime = CFAbsoluteTimeGetCurrent() + 1.0;
    v10 = *MEMORY[0x1E69E9840];

    MEMORY[0x1EEE66B58](self, sel_notifyDeviceConnectedEventToClientPrivate, v9);
  }

  else if (objc_msgSend_isEqualToString_(v6, v8, @"Disconnect"))
  {
    self->_internal->_startTime = 1.79769313e308;
    v13 = *MEMORY[0x1E69E9840];

    objc_msgSend_notifyDeviceDisconnectedEventToClientPrivate(self, v11, v12);
  }

  else
  {
    if (qword_1ED71C800 != -1)
    {
      dispatch_once(&qword_1ED71C800, &unk_1F0E3B3A8);
    }

    v14 = off_1ED71C808;
    if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v19 = v6;
      _os_log_impl(&dword_19B41C000, v14, OS_LOG_TYPE_ERROR, "[CMHeadphoneActivityManager] Unknown eventType: %{public}@", buf, 0xCu);
    }

    v15 = sub_19B420058();
    if ((*(v15 + 160) & 0x80000000) == 0 || (*(v15 + 164) & 0x80000000) == 0 || (*(v15 + 168) & 0x80000000) == 0 || *(v15 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C800 != -1)
      {
        dispatch_once(&qword_1ED71C800, &unk_1F0E3B3A8);
      }

      v16 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "[CMHeadphoneActivityManager onStatusEventPrivate:]", "CoreLocation: %s\n", v16);
      if (v16 != buf)
      {
        free(v16);
      }
    }

    v17 = *MEMORY[0x1E69E9840];
  }
}

- (void)notifyDeviceConnectedEventToClientPrivate
{
  v14 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_internal->_dispatchQueue);
  if (!self->_internal->_deviceConnected)
  {
    if (qword_1ED71C800 != -1)
    {
      dispatch_once(&qword_1ED71C800, &unk_1F0E3B3A8);
    }

    v3 = off_1ED71C808;
    if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_DEFAULT, "[CMHeadphoneActivityManager] Device connected", buf, 2u);
    }

    v4 = sub_19B420058();
    if (*(v4 + 160) > 1 || *(v4 + 164) > 1 || *(v4 + 168) > 1 || *(v4 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C800 != -1)
      {
        dispatch_once(&qword_1ED71C800, &unk_1F0E3B3A8);
      }

      v12 = 0;
      v6 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMHeadphoneActivityManager notifyDeviceConnectedEventToClientPrivate]", "CoreLocation: %s\n", v6);
      if (v6 != buf)
      {
        free(v6);
      }
    }

    self->_internal->_deviceConnected = 1;
    internal = self->_internal;
    statusHandler = internal->_statusHandler;
    if (statusHandler)
    {
      statusCallbackQueue = internal->_statusCallbackQueue;
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = sub_19B737F5C;
      v11[3] = &unk_1E7532B40;
      v11[4] = statusHandler;
      objc_msgSend_addOperationWithBlock_(statusCallbackQueue, v5, v11);
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)notifyDeviceDisconnectedEventToClientPrivate
{
  v14 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_internal->_dispatchQueue);
  if (self->_internal->_deviceConnected)
  {
    if (qword_1ED71C800 != -1)
    {
      dispatch_once(&qword_1ED71C800, &unk_1F0E3B3A8);
    }

    v3 = off_1ED71C808;
    if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_DEFAULT, "[CMHeadphoneActivityManager] Device disconnected", buf, 2u);
    }

    v4 = sub_19B420058();
    if (*(v4 + 160) > 1 || *(v4 + 164) > 1 || *(v4 + 168) > 1 || *(v4 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C800 != -1)
      {
        dispatch_once(&qword_1ED71C800, &unk_1F0E3B3A8);
      }

      v12 = 0;
      v6 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMHeadphoneActivityManager notifyDeviceDisconnectedEventToClientPrivate]", "CoreLocation: %s\n", v6);
      if (v6 != buf)
      {
        free(v6);
      }
    }

    self->_internal->_deviceConnected = 0;
    internal = self->_internal;
    statusHandler = internal->_statusHandler;
    if (statusHandler)
    {
      statusCallbackQueue = internal->_statusCallbackQueue;
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = sub_19B738358;
      v11[3] = &unk_1E7532B40;
      v11[4] = statusHandler;
      objc_msgSend_addOperationWithBlock_(statusCallbackQueue, v5, v11);
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

@end