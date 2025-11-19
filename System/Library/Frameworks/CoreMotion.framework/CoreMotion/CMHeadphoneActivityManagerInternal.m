@interface CMHeadphoneActivityManagerInternal
- (BOOL)mslLoggingEnabledPrivate;
- (CMHeadphoneActivityManagerInternal)init;
- (id).cxx_construct;
- (void)connectActivity;
- (void)connectStatus;
- (void)dealloc;
- (void)disconnectActivity;
- (void)disconnectStatus;
- (void)onAudioAccessoryDeviceMotion:(const void *)a3;
- (void)startMslLoggingPrivateWithFilenamePrefix:(id)a3 filePath:(id)a4;
- (void)stopMslLoggingPrivate;
- (void)updatePreferences;
@end

@implementation CMHeadphoneActivityManagerInternal

- (CMHeadphoneActivityManagerInternal)init
{
  v5.receiver = self;
  v5.super_class = CMHeadphoneActivityManagerInternal;
  v2 = [(CMHeadphoneActivityManagerInternal *)&v5 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v2->_dispatchQueue = dispatch_queue_create("com.apple.CoreMotion.CMHeadphoneActivityManager", v3);
    v2->_activityConnectionClient = 0;
    v2->_statusConnectionClient = 0;
    *&v2->_activityActive = 0;
    *&v2->_statusActive = 0;
    v2->_deviceConnected = 0;
    v2->_startTime = 0.0;
  }

  return v2;
}

- (void)dealloc
{
  dispatch_release(self->_dispatchQueue);
  v3.receiver = self;
  v3.super_class = CMHeadphoneActivityManagerInternal;
  [(CMHeadphoneActivityManagerInternal *)&v3 dealloc];
}

- (void)connectActivity
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!self->_activityConnectionClient)
  {
    v3 = sub_19B60A1A4([RMConnectionClient alloc], self->_dispatchQueue, @"com.apple.relatived.public", &unk_1F0E2A100);
    self->_activityConnectionClient = v3;

    sub_19B60A904(v3);
  }
}

- (void)disconnectActivity
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  sub_19B60AD88(self->_activityConnectionClient);

  self->_activityConnectionClient = 0;
}

- (void)connectStatus
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!self->_statusConnectionClient)
  {
    v3 = sub_19B60A1A4([RMConnectionClient alloc], self->_dispatchQueue, @"com.apple.relatived.status", &unk_1F0E3B368);
    self->_statusConnectionClient = v3;

    sub_19B60A904(v3);
  }
}

- (void)disconnectStatus
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  sub_19B60AD88(self->_statusConnectionClient);

  self->_statusConnectionClient = 0;
}

- (void)updatePreferences
{
  v2 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_dispatchQueue);
  operator new();
}

- (BOOL)mslLoggingEnabledPrivate
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  objc_msgSend_updatePreferences(self, v3, v4);
  return self->_enableMSL;
}

- (void)startMslLoggingPrivateWithFilenamePrefix:(id)a3 filePath:(id)a4
{
  v16 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_dispatchQueue);
  objc_msgSend_updatePreferences(self, v7, v8);
  if (self->_enableMSL)
  {
    if (qword_1ED71C800 != -1)
    {
      dispatch_once(&qword_1ED71C800, &unk_1F0E3B3A8);
    }

    v9 = off_1ED71C808;
    if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v9, OS_LOG_TYPE_DEFAULT, "[CMHeadphoneActivityManager] Starting MSL Logging", buf, 2u);
    }

    v10 = sub_19B420058();
    if (*(v10 + 160) > 1 || *(v10 + 164) > 1 || *(v10 + 168) > 1 || *(v10 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C800 != -1)
      {
        dispatch_once(&qword_1ED71C800, &unk_1F0E3B3A8);
      }

      v12 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMHeadphoneActivityManagerInternal startMslLoggingPrivateWithFilenamePrefix:filePath:]", "CoreLocation: %s\n", v12);
      if (v12 != buf)
      {
        free(v12);
      }
    }

    objc_msgSend_cStringUsingEncoding_(a3, v11, 1);
    objc_msgSend_cStringUsingEncoding_(a4, v13, 1);
    operator new();
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)stopMslLoggingPrivate
{
  v18 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (self->_enableMSL)
  {
    if (qword_1ED71C800 != -1)
    {
      dispatch_once(&qword_1ED71C800, &unk_1F0E3B3A8);
    }

    v3 = off_1ED71C808;
    if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_DEFAULT, "[CMHeadphoneActivityManager] Stopping MSL Logging.", buf, 2u);
    }

    v4 = sub_19B420058();
    if (*(v4 + 160) > 1 || *(v4 + 164) > 1 || *(v4 + 168) > 1 || *(v4 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C800 != -1)
      {
        dispatch_once(&qword_1ED71C800, &unk_1F0E3B3A8);
      }

      v5 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMHeadphoneActivityManagerInternal stopMslLoggingPrivate]", "CoreLocation: %s\n", v5);
      if (v5 != buf)
      {
        free(v5);
      }
    }

    if (self->_accessoryAccelerometerDispatcher.__ptr_)
    {
      v6 = sub_19B7170A0();
      sub_19B426A14(v6, 0, self->_accessoryAccelerometerDispatcher.__ptr_);
      ptr = self->_accessoryAccelerometerDispatcher.__ptr_;
      self->_accessoryAccelerometerDispatcher.__ptr_ = 0;
      if (ptr)
      {
        (*(ptr->var0 + 1))(ptr);
      }
    }

    if (self->_accessoryGyroDispatcher.__ptr_)
    {
      v8 = sub_19B793B00();
      sub_19B426A14(v8, 0, self->_accessoryGyroDispatcher.__ptr_);
      v9 = self->_accessoryGyroDispatcher.__ptr_;
      self->_accessoryGyroDispatcher.__ptr_ = 0;
      if (v9)
      {
        (*(v9->var0 + 1))(v9);
      }
    }

    if (self->_accessoryDeviceMotionDispatcher.__ptr_)
    {
      v10 = sub_19B6D6344();
      sub_19B426A14(v10, 0, self->_accessoryDeviceMotionDispatcher.__ptr_);
      v11 = self->_accessoryDeviceMotionDispatcher.__ptr_;
      self->_accessoryDeviceMotionDispatcher.__ptr_ = 0;
      if (v11)
      {
        (*(v11->var0 + 1))(v11);
      }
    }

    if (self->_accessoryDeviceMotionConfigDispatcher.__ptr_)
    {
      v12 = sub_19B6D6344();
      sub_19B426A14(v12, 2, self->_accessoryDeviceMotionConfigDispatcher.__ptr_);
      v13 = self->_accessoryDeviceMotionConfigDispatcher.__ptr_;
      self->_accessoryDeviceMotionConfigDispatcher.__ptr_ = 0;
      if (v13)
      {
        (*(v13->var0 + 1))(v13);
      }
    }

    if (self->_deviceMotionDispatcher.__ptr_)
    {
      v14 = sub_19B424AE0();
      sub_19B425248(v14, self->_deviceMotionDispatcher.__ptr_);
      v15 = self->_deviceMotionDispatcher.__ptr_;
      self->_deviceMotionDispatcher.__ptr_ = 0;
      if (v15)
      {
        (*(v15->var0 + 1))(v15);
      }
    }

    sub_19B5C6594(&self->fLogger, 0);
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)onAudioAccessoryDeviceMotion:(const void *)a3
{
  v25 = *MEMORY[0x1E69E9840];
  ptr = self->fLogger.__ptr_;
  if (ptr)
  {
    sub_19B5E57B8(ptr, a3);
  }

  if (qword_1ED71C7B8 != -1)
  {
    dispatch_once(&qword_1ED71C7B8, &unk_1F0E3B388);
  }

  v6 = qword_1ED71C7C8;
  if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a3 + 141);
    v8 = *(a3 + 32);
    v9 = *(a3 + 33);
    v10 = *(a3 + 34);
    *buf = 67240961;
    *&buf[4] = v7;
    v21[0] = 2049;
    *&v21[1] = v8;
    v21[5] = 2049;
    v22 = v9;
    v23 = 2049;
    v24 = v10;
    _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_DEBUG, "[CMHeadphoneActivityManager] Received DM6 packet,activity,%{public}u,gyro bias,[%{private}.4f,%{private}.4f,%{private}.4f]", buf, 0x26u);
  }

  v11 = sub_19B420058();
  if (*(v11 + 160) > 1 || *(v11 + 164) > 1 || *(v11 + 168) > 1 || *(v11 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E3B388);
    }

    v16 = *(a3 + 141);
    v17 = *(a3 + 32);
    v18 = *(a3 + 33);
    v19 = *(a3 + 34);
    v12 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMHeadphoneActivityManagerInternal onAudioAccessoryDeviceMotion:]", "CoreLocation: %s\n", v12);
    if (v12 != buf)
    {
      free(v12);
    }
  }

  if (!self->_isGyroBiasValid && *(a3 + 140) == 1)
  {
    v13 = *(a3 + 34);
    v14 = *(a3 + 16);
    operator new();
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (id).cxx_construct
{
  *(self + 11) = 0;
  *(self + 120) = 0u;
  *(self + 136) = 0u;
  *(self + 152) = 0u;
  return self;
}

@end