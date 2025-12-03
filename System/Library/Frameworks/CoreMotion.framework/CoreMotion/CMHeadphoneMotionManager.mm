@interface CMHeadphoneMotionManager
- (BOOL)hasConnectionClients;
- (BOOL)isDeviceMotionAvailable;
- (CMHeadphoneMotionManager)init;
- (id)delegateQueuePrivate;
- (void)applyInitialReferencePrivate:(id)private;
- (void)dealloc;
- (void)notifyDeviceConnectedEventToClientPrivate;
- (void)notifyDeviceDisconnectedEventToClientPrivate;
- (void)onDeviceMotionPrivate:(id)private;
- (void)onStatusEventPrivate:(id)private;
- (void)pauseDeviceMotionStreamingPrivate;
- (void)pauseStatusStreamingPrivate;
- (void)resumeDeviceMotionStreamingPrivate;
- (void)resumeStatusStreamingPrivate;
- (void)startConnectionStatusUpdates;
- (void)startDeviceMotionUpdates;
- (void)startDeviceMotionUpdatesPrivateToQueue:(id)queue withHandler:(id)handler;
- (void)startDeviceMotionUpdatesToQueue:(NSOperationQueue *)queue withHandler:(CMHeadphoneDeviceMotionHandler)handler;
- (void)startStatusUpdatesPrivate;
- (void)stopConnectionStatusUpdates;
- (void)stopDeviceMotionUpdates;
- (void)stopDeviceMotionUpdatesPrivate;
- (void)stopStatusUpdatesPrivate;
@end

@implementation CMHeadphoneMotionManager

- (CMHeadphoneMotionManager)init
{
  v4.receiver = self;
  v4.super_class = CMHeadphoneMotionManager;
  v2 = [(CMHeadphoneMotionManager *)&v4 init];
  if (v2)
  {
    v2->_internal = objc_opt_new();
  }

  return v2;
}

- (void)dealloc
{
  dispatch_queue_set_specific(self->_internal->_dispatchQueue, &unk_1EAFE39F8, &unk_1EAFE39F8, 0);
  if (dispatch_get_specific(&unk_1EAFE39F8) == &unk_1EAFE39F8)
  {
    objc_msgSend_pauseDeviceMotionStreamingPrivate(self, v3, v4);
    objc_msgSend_pauseStatusStreamingPrivate(self, v6, v7);
  }

  else
  {
    dispatchQueue = self->_internal->_dispatchQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_19B73E2C8;
    block[3] = &unk_1E7532988;
    block[4] = self;
    dispatch_sync(dispatchQueue, block);
  }

  v8.receiver = self;
  v8.super_class = CMHeadphoneMotionManager;
  [(CMHeadphoneMotionManager *)&v8 dealloc];
}

- (BOOL)isDeviceMotionAvailable
{
  if (qword_1ED71D658 != -1)
  {
    dispatch_once(&qword_1ED71D658, &unk_1F0E3B3E8);
  }

  return byte_1ED71D650;
}

- (void)startDeviceMotionUpdates
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = sub_19B73E438;
  v2[3] = &unk_1E7532988;
  v2[4] = self;
  objc_msgSend_tccServiceMotionAccessAllowingMacWithBlock_(CMMotionUtils, a2, v2);
}

- (void)startDeviceMotionUpdatesToQueue:(NSOperationQueue *)queue withHandler:(CMHeadphoneDeviceMotionHandler)handler
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_19B73E53C;
  v4[3] = &unk_1E7532C08;
  v4[4] = self;
  v4[5] = queue;
  v4[6] = handler;
  objc_msgSend_tccServiceMotionAccessAllowingMacWithBlock_(CMMotionUtils, a2, v4);
}

- (void)stopDeviceMotionUpdates
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = sub_19B73E64C;
  v2[3] = &unk_1E7532988;
  v2[4] = self;
  objc_msgSend_tccServiceMotionAccessAllowingMacWithBlock_(CMMotionUtils, a2, v2);
}

- (void)startConnectionStatusUpdates
{
  dispatchQueue = self->_internal->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B73E744;
  block[3] = &unk_1E7532988;
  block[4] = self;
  dispatch_sync(dispatchQueue, block);
}

- (void)stopConnectionStatusUpdates
{
  dispatchQueue = self->_internal->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B73E7C4;
  block[3] = &unk_1E7532988;
  block[4] = self;
  dispatch_sync(dispatchQueue, block);
}

- (BOOL)hasConnectionClients
{
  Weak = objc_loadWeak(&self->_delegate);
  internal = self->_internal;
  v5 = Weak && internal->_statusActive || internal->_deviceMotionActive;
  return v5 & 1;
}

- (id)delegateQueuePrivate
{
  result = self->_internal->_callbackQueue;
  if (!result)
  {
    return objc_msgSend_mainQueue(MEMORY[0x1E696ADC8], a2, v2);
  }

  return result;
}

- (void)startDeviceMotionUpdatesPrivateToQueue:(id)queue withHandler:(id)handler
{
  dispatch_assert_queue_V2(self->_internal->_dispatchQueue);
  if (objc_msgSend_isDeviceMotionAvailable(self, v7, v8))
  {
    if (!self->_internal->_deviceMotionActive)
    {
      self->_internal->_callbackQueue = queue;
      self->_internal->_callbackHandler = objc_msgSend_copy(handler, v9, v10);
      objc_msgSend_resumeDeviceMotionStreamingPrivate(self, v11, v12);
      self->_internal->_deviceMotionActive = 1;
    }
  }
}

- (void)stopDeviceMotionUpdatesPrivate
{
  dispatch_assert_queue_V2(self->_internal->_dispatchQueue);
  if (objc_msgSend_isDeviceMotionAvailable(self, v3, v4))
  {
    internal = self->_internal;
    if (internal->_deviceMotionActive)
    {
      internal->_deviceMotionActive = 0;
      objc_msgSend_pauseDeviceMotionStreamingPrivate(self, v5, v6);

      self->_internal->_callbackQueue = 0;
      self->_internal->_callbackHandler = 0;
      objc_msgSend_setDeviceMotion_(self->_internal, v8, 0);
      v11 = self->_internal;

      objc_msgSend_disconnect(v11, v9, v10);
    }
  }
}

- (void)resumeDeviceMotionStreamingPrivate
{
  dispatch_assert_queue_V2(self->_internal->_dispatchQueue);
  if (objc_msgSend_isDeviceMotionAvailable(self, v3, v4))
  {
    internal = self->_internal;
    if (!internal->_deviceMotionStreaming)
    {
      objc_msgSend_connect(internal, v5, v6);
      objc_msgSend_resumeStatusStreamingPrivate(self, v8, v9);
      v11 = objc_msgSend_archivedDataWithRootObject_requiringSecureCoding_error_(MEMORY[0x1E696ACC8], v10, &unk_1F0E6A458, 1, 0);
      objc_initWeak(&location, self);
      connectionClient = self->_internal->_connectionClient;
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = sub_19B73EA98;
      v13[3] = &unk_1E7535990;
      objc_copyWeak(&v14, &location);
      sub_19B60A584(connectionClient, @"kRMStartStreamingHeadphoneMotion", v11, v13);
      self->_internal->_deviceMotionStreaming = 1;
      objc_destroyWeak(&v14);
      objc_destroyWeak(&location);
    }
  }
}

- (void)pauseDeviceMotionStreamingPrivate
{
  dispatch_assert_queue_V2(self->_internal->_dispatchQueue);
  if (objc_msgSend_isDeviceMotionAvailable(self, v3, v4))
  {
    internal = self->_internal;
    if (internal->_deviceMotionStreaming)
    {
      sub_19B60AC5C(internal->_connectionClient);
      self->_internal->_deviceMotionStreaming = 0;
      if ((objc_msgSend_hasConnectionClients(self, v6, v7) & 1) == 0)
      {
        objc_msgSend_pauseStatusStreamingPrivate(self, v8, v9);
        objc_msgSend_notifyDeviceDisconnectedEventToClientPrivate(self, v10, v11);
      }

      CFAbsoluteTimeGetCurrent();
      v12 = self->_internal->_firstValidDeviceMotionTimestamp - self->_internal->_deviceConnectionTimestamp;
      AnalyticsSendEventLazy();
    }
  }
}

- (void)onDeviceMotionPrivate:(id)private
{
  dispatch_assert_queue_V2(self->_internal->_dispatchQueue);
  if (objc_msgSend_isInitialized(private, v5, v6))
  {
    objc_msgSend_applyInitialReferencePrivate_(self, v7, private);
    objc_msgSend_setDeviceMotion_(self->_internal, v8, private);
    if (private)
    {
      internal = self->_internal;
      callbackHandler = internal->_callbackHandler;
      if (callbackHandler)
      {
        callbackQueue = internal->_callbackQueue;
        v13[0] = MEMORY[0x1E69E9820];
        v13[1] = 3221225472;
        v13[2] = sub_19B73EFBC;
        v13[3] = &unk_1E7532B68;
        v13[4] = private;
        v13[5] = callbackHandler;
        objc_msgSend_addOperationWithBlock_(callbackQueue, v9, v13);
      }
    }
  }
}

- (void)applyInitialReferencePrivate:(id)private
{
  v53 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_internal->_dispatchQueue);
  if (!objc_msgSend_initialReferenceAttitude(self->_internal, v5, v6))
  {
    v9 = objc_msgSend_attitude(private, v7, v8);
    objc_msgSend_quaternion(v9, v10, v11);
    v48[0] = v12;
    v15 = objc_msgSend_attitude(private, v13, v14);
    objc_msgSend_quaternion(v15, v16, v17);
    v48[1] = v18;
    v21 = objc_msgSend_attitude(private, v19, v20);
    objc_msgSend_quaternion(v21, v22, v23);
    v48[2] = v24;
    v27 = objc_msgSend_attitude(private, v25, v26);
    objc_msgSend_quaternion(v27, v28, v29);
    v48[3] = v30;
    sub_19B43F0AC(v47, v48);
    v31 = [CMAttitude alloc];
    v34 = objc_msgSend_initWithQuaternion_(v31, v32, v33, v47[0], v47[1], v47[2], v47[3]);
    objc_msgSend_setInitialReferenceAttitude_(self->_internal, v35, v34);
    self->_internal->_firstValidDeviceMotionTimestamp = CFAbsoluteTimeGetCurrent();
    if (qword_1ED71C800 != -1)
    {
      dispatch_once(&qword_1ED71C800, &unk_1F0E3B408);
    }

    v36 = off_1ED71C808;
    if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_DEFAULT))
    {
      v37 = self->_internal->_firstValidDeviceMotionTimestamp - self->_internal->_deviceConnectionTimestamp;
      *buf = 134349056;
      v52 = v37;
      _os_log_impl(&dword_19B41C000, v36, OS_LOG_TYPE_DEFAULT, "[CMHeadphoneMotionManager] Initial reference attitude is set after %{public}.3f sec from connection", buf, 0xCu);
    }

    v38 = sub_19B420058();
    if (*(v38 + 160) > 1 || *(v38 + 164) > 1 || *(v38 + 168) > 1 || *(v38 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C800 != -1)
      {
        dispatch_once(&qword_1ED71C800, &unk_1F0E3B408);
      }

      v39 = self->_internal->_firstValidDeviceMotionTimestamp - self->_internal->_deviceConnectionTimestamp;
      v49 = 134349056;
      v50 = v39;
      v40 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMHeadphoneMotionManager applyInitialReferencePrivate:]", "CoreLocation: %s\n", v40);
      if (v40 != buf)
      {
        free(v40);
      }
    }
  }

  v41 = objc_msgSend_attitude(private, v7, v8);
  v44 = objc_msgSend_initialReferenceAttitude(self->_internal, v42, v43);
  objc_msgSend_multiplyByInverseOfAttitude_(v41, v45, v44);
  v46 = *MEMORY[0x1E69E9840];
}

- (void)startStatusUpdatesPrivate
{
  dispatch_assert_queue_V2(self->_internal->_dispatchQueue);
  if (objc_msgSend_isDeviceMotionAvailable(self, v3, v4))
  {
    if (!self->_internal->_statusActive)
    {
      objc_msgSend_resumeStatusStreamingPrivate(self, v5, v6);
      self->_internal->_statusActive = 1;
    }
  }
}

- (void)stopStatusUpdatesPrivate
{
  dispatch_assert_queue_V2(self->_internal->_dispatchQueue);
  if (objc_msgSend_isDeviceMotionAvailable(self, v3, v4))
  {
    internal = self->_internal;
    if (internal->_statusActive && !internal->_deviceMotionActive)
    {
      objc_msgSend_pauseStatusStreamingPrivate(self, v5, v6);
      self->_internal->_statusActive = 0;
      if ((objc_msgSend_hasConnectionClients(self, v8, v9) & 1) == 0)
      {
        v11 = self->_internal;

        MEMORY[0x1EEE66B58](v11, sel_disconnectStatus, v10);
      }
    }
  }
}

- (void)resumeStatusStreamingPrivate
{
  dispatch_assert_queue_V2(self->_internal->_dispatchQueue);
  if (objc_msgSend_isDeviceMotionAvailable(self, v3, v4))
  {
    internal = self->_internal;
    if (!internal->_statusStreaming)
    {
      objc_msgSend_connectStatus(internal, v5, v6);
      v9 = objc_msgSend_archivedDataWithRootObject_requiringSecureCoding_error_(MEMORY[0x1E696ACC8], v8, MEMORY[0x1E695E0F8], 1, 0);
      objc_initWeak(&location, self);
      statusConnectionClient = self->_internal->_statusConnectionClient;
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = sub_19B73F654;
      v11[3] = &unk_1E7535990;
      objc_copyWeak(&v12, &location);
      sub_19B60A584(statusConnectionClient, @"kRMStartStreamingHeadphoneStatus", v9, v11);
      self->_internal->_statusStreaming = 1;
      objc_destroyWeak(&v12);
      objc_destroyWeak(&location);
    }
  }
}

- (void)pauseStatusStreamingPrivate
{
  dispatch_assert_queue_V2(self->_internal->_dispatchQueue);
  if (objc_msgSend_isDeviceMotionAvailable(self, v3, v4))
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
  v18 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_objectForKeyedSubscript_(private, a2, @"EventType");
  if (objc_msgSend_isEqualToString_(v4, v5, @"Connect"))
  {
    objc_msgSend_setInitialReferenceAttitude_(self->_internal, v6, 0);
    self->_internal->_deviceConnectionTimestamp = CFAbsoluteTimeGetCurrent();
    v8 = *MEMORY[0x1E69E9840];

    MEMORY[0x1EEE66B58](self, sel_notifyDeviceConnectedEventToClientPrivate, v7);
  }

  else if (objc_msgSend_isEqualToString_(v4, v6, @"Disconnect"))
  {
    self->_internal->_deviceConnectionTimestamp = 0.0;
    v11 = *MEMORY[0x1E69E9840];

    objc_msgSend_notifyDeviceDisconnectedEventToClientPrivate(self, v9, v10);
  }

  else
  {
    if (qword_1ED71C800 != -1)
    {
      dispatch_once(&qword_1ED71C800, &unk_1F0E3B408);
    }

    v12 = off_1ED71C808;
    if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v17 = v4;
      _os_log_impl(&dword_19B41C000, v12, OS_LOG_TYPE_ERROR, "[CMHeadphoneMotionManager] Unknown eventType: %{public}@", buf, 0xCu);
    }

    v13 = sub_19B420058();
    if ((*(v13 + 160) & 0x80000000) == 0 || (*(v13 + 164) & 0x80000000) == 0 || (*(v13 + 168) & 0x80000000) == 0 || *(v13 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C800 != -1)
      {
        dispatch_once(&qword_1ED71C800, &unk_1F0E3B408);
      }

      v14 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "[CMHeadphoneMotionManager onStatusEventPrivate:]", "CoreLocation: %s\n", v14);
      if (v14 != buf)
      {
        free(v14);
      }
    }

    v15 = *MEMORY[0x1E69E9840];
  }
}

- (void)notifyDeviceConnectedEventToClientPrivate
{
  v4 = objc_msgSend_delegateQueuePrivate(self, a2, v2);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_19B73FAE0;
  v6[3] = &unk_1E7532988;
  v6[4] = self;
  objc_msgSend_addOperationWithBlock_(v4, v5, v6);
}

- (void)notifyDeviceDisconnectedEventToClientPrivate
{
  v4 = objc_msgSend_delegateQueuePrivate(self, a2, v2);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_19B73FD5C;
  v6[3] = &unk_1E7532988;
  v6[4] = self;
  objc_msgSend_addOperationWithBlock_(v4, v5, v6);
}

@end