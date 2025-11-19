@interface CMDeviceOrientationManager
+ (void)initialize;
- (CMDeviceOrientationManager)init;
- (id)deviceOrientationBlocking;
- (id)initPrivate;
- (id)stringForOrientation:(int)a3;
- (void)dealloc;
- (void)deallocPrivate;
- (void)onDeviceOrientation:(const Sample *)a3;
- (void)onMotionPreferencesUpdated;
- (void)onNotification:(id)a3;
- (void)setDeviceOrientationCallbackModePrivate:(int)a3;
- (void)signalAndReleaseSemaphoreIfNecessaryPrivate;
- (void)startDeviceOrientationUpdatesPrivateToQueue:(id)a3 withHandler:(id)a4;
- (void)startDeviceOrientationUpdatesToQueue:(id)a3 withHandler:(id)a4;
- (void)stopDeviceOrientationUpdates;
- (void)stopDeviceOrientationUpdatesPrivate;
- (void)updateAggregateDictionaryPrivate;
@end

@implementation CMDeviceOrientationManager

- (id)deviceOrientationBlocking
{
  v63 = *MEMORY[0x1E69E9840];
  if (qword_1ED71C7B0 != -1)
  {
    dispatch_once(&qword_1ED71C7B0, &unk_1F0E29FA0);
  }

  v3 = off_1ED71C7C0;
  if (os_log_type_enabled(off_1ED71C7C0, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_INFO, "Received deviceOrientationBlocking", buf, 2u);
  }

  v4 = sub_19B420058();
  if (*(v4 + 160) > 1 || *(v4 + 164) > 1 || *(v4 + 168) > 1 || *(v4 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C7B0 != -1)
    {
      dispatch_once(&qword_1ED71C7B0, &unk_1F0E29FA0);
    }

    LOWORD(v49) = 0;
    v5 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMDeviceOrientationManager deviceOrientationBlocking]", "CoreLocation: %s\n", v5);
    if (v5 != buf)
    {
      free(v5);
    }
  }

  kdebug_trace();
  internal = self->_internal;
  if ((internal[13] & 0x80000000) == 0)
  {
    v9 = [CMDeviceOrientation alloc];
    v10 = internal[13];
    Current = CFAbsoluteTimeGetCurrent();
    v13 = objc_msgSend_initWithOrientation_andTimestamp_(v9, v12, v10, Current);
LABEL_32:
    v29 = v13;
    goto LABEL_33;
  }

  if (objc_msgSend_orientationNotificationsDisabled(self, v6, v7))
  {
    if (qword_1ED71C7B0 != -1)
    {
      dispatch_once(&qword_1ED71C7B0, &unk_1F0E29FA0);
    }

    v14 = off_1ED71C7C0;
    if (os_log_type_enabled(off_1ED71C7C0, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v14, OS_LOG_TYPE_FAULT, "Notifications disabled", buf, 2u);
    }

    v15 = sub_19B420058();
    if ((*(v15 + 160) & 0x80000000) == 0 || (*(v15 + 164) & 0x80000000) == 0 || (*(v15 + 168) & 0x80000000) == 0 || *(v15 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7B0 != -1)
      {
        dispatch_once(&qword_1ED71C7B0, &unk_1F0E29FA0);
      }

      LOWORD(v49) = 0;
      v16 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "[CMDeviceOrientationManager deviceOrientationBlocking]", "CoreLocation: %s\n", v16);
      if (v16 != buf)
      {
        free(v16);
      }
    }

    v17 = [CMDeviceOrientation alloc];
    v13 = objc_msgSend_initWithOrientation_andTimestamp_(v17, v18, 0, 0.0);
    goto LABEL_32;
  }

  if ((sub_19B421620() & 0x80) != 0)
  {
    v23 = sub_19B4484E8();
    v24 = COERCE_DOUBLE(sub_19B448530(v23, 0));
    v26 = v25;
    os_unfair_lock_lock(internal + 2);
    *(internal + 8) = v24;
    *(internal + 9) = v26;
    os_unfair_lock_unlock(internal + 2);
    v27 = [CMDeviceOrientation alloc];
    v13 = objc_msgSend_initWithOrientation_andTimestamp_(v27, v28, v26, v24);
    goto LABEL_32;
  }

  os_unfair_lock_lock(internal + 2);
  v19 = *(internal + 8);
  v20 = internal[18];
  os_unfair_lock_unlock(internal + 2);
  if (v20)
  {
    v21 = [CMDeviceOrientation alloc];
    v13 = objc_msgSend_initWithOrientation_andTimestamp_(v21, v22, v20, v19);
    goto LABEL_32;
  }

  v49 = 0;
  v50 = &v49;
  v51 = 0x3052000000;
  v52 = sub_19B428AEC;
  v53 = sub_19B429070;
  v54 = 0;
  v32 = sub_19B420D84();
  v48[0] = MEMORY[0x1E69E9820];
  v48[1] = 3221225472;
  v48[2] = sub_19B71FC2C;
  v48[3] = &unk_1E75338E8;
  v48[4] = internal;
  v48[5] = &v49;
  sub_19B420C9C(v32, v48);
  if (v50[5])
  {
    if (qword_1ED71C7B0 != -1)
    {
      dispatch_once(&qword_1ED71C7B0, &unk_1F0E29FA0);
    }

    v33 = off_1ED71C7C0;
    if (os_log_type_enabled(off_1ED71C7C0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v33, OS_LOG_TYPE_DEFAULT, "Waiting for the first orientation to come in", buf, 2u);
    }

    v34 = sub_19B420058();
    if (*(v34 + 160) > 1 || *(v34 + 164) > 1 || *(v34 + 168) > 1 || *(v34 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7B0 != -1)
      {
        dispatch_once(&qword_1ED71C7B0, &unk_1F0E29FA0);
      }

      LOWORD(v55) = 0;
      v35 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMDeviceOrientationManager deviceOrientationBlocking]", "CoreLocation: %s\n", v35);
      if (v35 != buf)
      {
        free(v35);
      }
    }

    v36 = v50[5];
    v37 = dispatch_time(0, 1000000000);
    if (dispatch_semaphore_wait(v36, v37))
    {
      if (qword_1ED71C7B0 != -1)
      {
        dispatch_once(&qword_1ED71C7B0, &unk_1F0E29FA0);
      }

      v38 = off_1ED71C7C0;
      if (os_log_type_enabled(off_1ED71C7C0, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v38, OS_LOG_TYPE_ERROR, "Orientation blocking: timeout exceeded!", buf, 2u);
      }

      v39 = sub_19B420058();
      if ((*(v39 + 160) & 0x80000000) == 0 || (*(v39 + 164) & 0x80000000) == 0 || (*(v39 + 168) & 0x80000000) == 0 || *(v39 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED71C7B0 != -1)
        {
          dispatch_once(&qword_1ED71C7B0, &unk_1F0E29FA0);
        }

        LOWORD(v55) = 0;
        v40 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 0, "[CMDeviceOrientationManager deviceOrientationBlocking]", "CoreLocation: %s\n", v40);
        if (v40 != buf)
        {
          free(v40);
        }
      }
    }

    dispatch_release(v50[5]);
    v50[5] = 0;
  }

  os_unfair_lock_lock(internal + 2);
  v41 = *(internal + 8);
  v42 = internal[18];
  os_unfair_lock_unlock(internal + 2);
  kdebug_trace();
  if (qword_1ED71C7B0 != -1)
  {
    dispatch_once(&qword_1ED71C7B0, &unk_1F0E29FA0);
  }

  v43 = off_1ED71C7C0;
  if (os_log_type_enabled(off_1ED71C7C0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67240448;
    v60 = v42;
    v61 = 2050;
    v62 = v41;
    _os_log_impl(&dword_19B41C000, v43, OS_LOG_TYPE_DEFAULT, "Got latest sample: %{public}d @ %{public}f", buf, 0x12u);
  }

  v44 = sub_19B420058();
  if (*(v44 + 160) > 1 || *(v44 + 164) > 1 || *(v44 + 168) > 1 || *(v44 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C7B0 != -1)
    {
      dispatch_once(&qword_1ED71C7B0, &unk_1F0E29FA0);
    }

    v55 = 67240448;
    v56 = v42;
    v57 = 2050;
    v58 = v41;
    v45 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMDeviceOrientationManager deviceOrientationBlocking]", "CoreLocation: %s\n", v45);
    if (v45 != buf)
    {
      free(v45);
    }
  }

  if (v41 <= 0.0)
  {
    v29 = 0;
  }

  else
  {
    v46 = [CMDeviceOrientation alloc];
    v29 = objc_msgSend_initWithOrientation_andTimestamp_(v46, v47, v42, v41);
  }

  _Block_object_dispose(&v49, 8);
LABEL_33:
  v30 = *MEMORY[0x1E69E9840];
  return v29;
}

- (void)stopDeviceOrientationUpdates
{
  v22 = *MEMORY[0x1E69E9840];
  internal = self->_internal;
  if (qword_1ED71C7B0 != -1)
  {
    dispatch_once(&qword_1ED71C7B0, &unk_1F0E29FA0);
  }

  v4 = off_1ED71C7C0;
  if (os_log_type_enabled(off_1ED71C7C0, OS_LOG_TYPE_DEFAULT))
  {
    v5 = internal[18];
    v6 = internal[22];
    *buf = 67240448;
    v19 = v5;
    v20 = 1026;
    v21 = v6;
    _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_DEFAULT, "Stopping orientation updates, latest %{public}d, last significant %{public}d", buf, 0xEu);
  }

  v7 = sub_19B420058();
  if (*(v7 + 160) > 1 || *(v7 + 164) > 1 || *(v7 + 168) > 1 || *(v7 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C7B0 != -1)
    {
      dispatch_once(&qword_1ED71C7B0, &unk_1F0E29FA0);
    }

    v8 = internal[18];
    v9 = internal[22];
    v14 = 67240448;
    v15 = v8;
    v16 = 1026;
    v17 = v9;
    v10 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMDeviceOrientationManager stopDeviceOrientationUpdates]", "CoreLocation: %s\n", v10);
    if (v10 != buf)
    {
      free(v10);
    }
  }

  v11 = sub_19B420D84();
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_19B44988C;
  v13[3] = &unk_1E7532988;
  v13[4] = self;
  sub_19B420C9C(v11, v13);
  v12 = *MEMORY[0x1E69E9840];
}

- (void)stopDeviceOrientationUpdatesPrivate
{
  internal = self->_internal;
  if (objc_msgSend_isDeviceOrientationAvailable(self, a2, v2))
  {
    if (internal[2])
    {
      v7 = sub_19B4484E8();
      sub_19B426A14(v7, 0, internal[2]);
      v8 = internal[2];
      if (v8)
      {
        (*(*v8 + 8))(v8);
      }

      internal[2] = 0;
    }

    v9 = internal[4];
    if (v9)
    {

      internal[4] = 0;
    }

    v10 = internal[3];
    if (v10)
    {

      internal[3] = 0;
    }

    objc_msgSend_signalAndReleaseSemaphoreIfNecessaryPrivate(self, v5, v6);
    *(internal + 5) = *(internal + 4);
    v11 = mach_absolute_time();
    *(internal + 8) = sub_19B41E070(v11);
    *(internal + 18) = 0;

    objc_msgSend_updateAggregateDictionaryPrivate(self, v12, v13);
  }
}

- (void)updateAggregateDictionaryPrivate
{
  internal = self->_internal;
  v3 = *(internal + 22);
  if (*(internal + 18) != v3)
  {
    v4 = objc_msgSend_stringForOrientation_(self, a2, *(internal + 22));
    if (MEMORY[0x1EEE83328])
    {
      v6 = (internal[8] - internal[10]);
      if (v3)
      {
        v7 = v4 == 0;
      }

      else
      {
        v7 = 1;
      }

      if (!v7 && v6 >= 1)
      {
        objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v5, @"%@.%@Time", @"com.apple.CoreMotion.DeviceOrientation", v4);
        ADClientAddValueForScalarKey();
      }
    }
  }
}

- (void)signalAndReleaseSemaphoreIfNecessaryPrivate
{
  internal = self->_internal;
  v3 = *(internal + 5);
  if (v3)
  {
    if ((*(internal + 48) & 1) == 0)
    {
      dispatch_semaphore_signal(v3);
      *(internal + 48) = 1;
      v3 = *(internal + 5);
    }

    dispatch_release(v3);
    *(internal + 5) = 0;
  }
}

+ (void)initialize
{
  v17 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == a1)
  {
    v5 = objc_msgSend_currentThread(MEMORY[0x1E696AF00], v3, v4);
    if (objc_msgSend_isMainThread(v5, v6, v7) && (objc_msgSend_isMultiThreaded(MEMORY[0x1E696AF00], v8, v9) & 1) == 0)
    {
      objc_msgSend_detachNewThreadSelector_toTarget_withObject_(MEMORY[0x1E696AF00], v10, sel_dummySelector_, a1, 0);
    }

    if (!qword_1ED71C900)
    {
      Main = CFRunLoopGetMain();
      sub_19B429D10(Main);
    }

    if (qword_1ED71C7B0 != -1)
    {
      dispatch_once(&qword_1ED71C7B0, &unk_1F0E29FA0);
    }

    v12 = off_1ED71C7C0;
    if (os_log_type_enabled(off_1ED71C7C0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v12, OS_LOG_TYPE_DEFAULT, "Orientation Manager initialized", buf, 2u);
    }

    v13 = sub_19B420058();
    if (*(v13 + 160) > 1 || *(v13 + 164) > 1 || *(v13 + 168) > 1 || *(v13 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7B0 != -1)
      {
        dispatch_once(&qword_1ED71C7B0, &unk_1F0E29FA0);
      }

      v14 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "+[CMDeviceOrientationManager initialize]", "CoreLocation: %s\n", v14);
      if (v14 != buf)
      {
        free(v14);
      }
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (CMDeviceOrientationManager)init
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3052000000;
  v10 = sub_19B428AEC;
  v11 = sub_19B429070;
  v12 = 0;
  v3 = sub_19B420D84();
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_19B71E7C4;
  v6[3] = &unk_1E7533708;
  v6[4] = self;
  v6[5] = &v7;
  sub_19B420C9C(v3, v6);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (id)initPrivate
{
  v7.receiver = self;
  v7.super_class = CMDeviceOrientationManager;
  v2 = [(CMDeviceOrientationManager *)&v7 init];
  if (v2)
  {
    v2->_internal = objc_alloc_init(CMDeviceOrientationManagerInternal);
    objc_msgSend_onMotionPreferencesUpdated(v2, v3, v4);
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, sub_19B71E888, @"com.apple.backboardd.loggingchanged", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  return v2;
}

- (void)dealloc
{
  v6[0] = 0;
  v6[1] = v6;
  v6[2] = 0x3052000000;
  v6[3] = sub_19B428AEC;
  v6[4] = sub_19B429070;
  v6[5] = self;
  v3 = sub_19B420D84();
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_19B71E9FC;
  v5[3] = &unk_1E7533730;
  v5[4] = v6;
  sub_19B420C9C(v3, v5);
  v4.receiver = self;
  v4.super_class = CMDeviceOrientationManager;
  [(CMDeviceOrientationManager *)&v4 dealloc];
  _Block_object_dispose(v6, 8);
}

- (void)deallocPrivate
{
  internal = self->_internal;
  v4 = objc_autoreleasePoolPush();
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"com.apple.backboardd.loggingchanged", 0);
  if (internal[56] == 1)
  {
    v8 = objc_msgSend_defaultCenter(MEMORY[0x1E696ABB0], v6, v7);
    objc_msgSend_removeObserver_(v8, v9, self);
  }

  objc_msgSend_stopDeviceOrientationUpdatesPrivate(self, v6, v7);

  objc_autoreleasePoolPop(v4);
}

- (void)onMotionPreferencesUpdated
{
  v30 = *MEMORY[0x1E69E9840];
  internal = self->_internal;
  v4 = sub_19B420D84();
  v5 = *(v4 + 24);
  v6 = *(v4 + 32);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v7 = sub_19B432FD8(v5, "OrientationCallbackMode", internal + 13);
  if (v6)
  {
    sub_19B41FFEC(v6);
  }

  if ((v7 & 1) == 0)
  {
    *(internal + 13) = -1;
  }

  v8 = sub_19B420D84();
  v9 = *(v8 + 24);
  v10 = *(v8 + 32);
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v13 = sub_19B438CCC(v9, "EnableOrientationNotification", internal + 56);
  if (v10)
  {
    sub_19B41FFEC(v10);
  }

  if (v13)
  {
    if (internal[56])
    {
      v14 = objc_msgSend_defaultCenter(MEMORY[0x1E696ABB0], v11, v12);
      objc_msgSend_addObserver_selector_name_object_suspensionBehavior_(v14, v15, self, sel_onNotification_, @"CMSetDeviceOrientationNotification", 0, 4);
      goto LABEL_16;
    }
  }

  else
  {
    internal[56] = 0;
  }

  v16 = objc_msgSend_defaultCenter(MEMORY[0x1E696ABB0], v11, v12);
  objc_msgSend_removeObserver_(v16, v17, self);
LABEL_16:
  if (qword_1ED71C7B0 != -1)
  {
    dispatch_once(&qword_1ED71C7B0, &unk_1F0E29FA0);
  }

  v18 = off_1ED71C7C0;
  if (os_log_type_enabled(off_1ED71C7C0, OS_LOG_TYPE_DEFAULT))
  {
    v19 = *(internal + 13);
    v20 = internal[56];
    *buf = 67240448;
    v27 = v19;
    v28 = 1026;
    v29 = v20;
    _os_log_impl(&dword_19B41C000, v18, OS_LOG_TYPE_DEFAULT, "OrientationCallbackMode,%{public}d,EnableOrientationNotification,%{public}d", buf, 0xEu);
  }

  v21 = sub_19B420058();
  if (*(v21 + 160) > 1 || *(v21 + 164) > 1 || *(v21 + 168) > 1 || *(v21 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C7B0 != -1)
    {
      dispatch_once(&qword_1ED71C7B0, &unk_1F0E29FA0);
    }

    v24 = *(internal + 13);
    v25 = internal[56];
    v22 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMDeviceOrientationManager onMotionPreferencesUpdated]", "CoreLocation: %s\n", v22);
    if (v22 != buf)
    {
      free(v22);
    }
  }

  v23 = *MEMORY[0x1E69E9840];
}

- (void)onNotification:(id)a3
{
  v5 = sub_19B420D84();
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_19B71EE18;
  v6[3] = &unk_1E7532A00;
  v6[4] = a3;
  v6[5] = self;
  sub_19B420C9C(v5, v6);
}

- (void)startDeviceOrientationUpdatesToQueue:(id)a3 withHandler:(id)a4
{
  v26 = *MEMORY[0x1E69E9840];
  internal = self->_internal;
  if (qword_1ED71C7B0 != -1)
  {
    dispatch_once(&qword_1ED71C7B0, &unk_1F0E29FA0);
  }

  v8 = off_1ED71C7C0;
  if (os_log_type_enabled(off_1ED71C7C0, OS_LOG_TYPE_DEFAULT))
  {
    v9 = internal[13];
    v10 = *(internal + 56);
    *buf = 67240448;
    v23 = v9;
    v24 = 1026;
    v25 = v10;
    _os_log_impl(&dword_19B41C000, v8, OS_LOG_TYPE_DEFAULT, "Starting orientation updates, callback mode %{public}d, enable %{public}d", buf, 0xEu);
  }

  v11 = sub_19B420058();
  if (*(v11 + 160) > 1 || *(v11 + 164) > 1 || *(v11 + 168) > 1 || *(v11 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C7B0 != -1)
    {
      dispatch_once(&qword_1ED71C7B0, &unk_1F0E29FA0);
    }

    v12 = internal[13];
    v13 = *(internal + 56);
    v18 = 67240448;
    v19 = v12;
    v20 = 1026;
    v21 = v13;
    v14 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMDeviceOrientationManager startDeviceOrientationUpdatesToQueue:withHandler:]", "CoreLocation: %s\n", v14);
    if (v14 != buf)
    {
      free(v14);
    }
  }

  kdebug_trace();
  v15 = sub_19B420D84();
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = sub_19B71F2F4;
  v17[3] = &unk_1E7532C08;
  v17[4] = self;
  v17[5] = a3;
  v17[6] = a4;
  sub_19B420C9C(v15, v17);
  v16 = *MEMORY[0x1E69E9840];
}

- (void)startDeviceOrientationUpdatesPrivateToQueue:(id)a3 withHandler:(id)a4
{
  internal = self->_internal;
  if (objc_msgSend_isDeviceOrientationAvailable(self, a2, a3))
  {
    v8 = internal[4];
    if (v8 != a3)
    {

      internal[4] = a3;
    }

    v9 = internal[3];
    if (v9 != a4)
    {

      internal[3] = objc_msgSend_copy(a4, v10, v11);
    }

    if (!internal[2])
    {
      operator new();
    }

    objc_initWeak(&location, self);
    v12 = sub_19B420D84();
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = sub_19B71F504;
    v13[3] = &unk_1E7533528;
    objc_copyWeak(&v14, &location);
    v13[4] = internal;
    sub_19B421668(v12, v13);
    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }
}

- (void)setDeviceOrientationCallbackModePrivate:(int)a3
{
  *(self->_internal + 13) = a3;
  v4 = sub_19B420D84();
  v5 = *(v4 + 24);
  v6 = *(v4 + 32);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v7 = a3;
  sub_19B5EF4EC(v5, "OrientationCallbackMode", &v7);
  if (v6)
  {
    sub_19B41FFEC(v6);
  }
}

- (void)onDeviceOrientation:(const Sample *)a3
{
  v59 = *MEMORY[0x1E69E9840];
  if (objc_msgSend_orientationNotificationsDisabled(self, a2, a3))
  {
    if (qword_1ED71C7B0 != -1)
    {
      dispatch_once(&qword_1ED71C7B0, &unk_1F0E29FA0);
    }

    v5 = off_1ED71C7C0;
    if (os_log_type_enabled(off_1ED71C7C0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v5, OS_LOG_TYPE_DEFAULT, "Notifications disabled", buf, 2u);
    }

    v6 = sub_19B420058();
    if (*(v6 + 160) > 1 || *(v6 + 164) > 1 || *(v6 + 168) > 1 || *(v6 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7B0 != -1)
      {
        dispatch_once(&qword_1ED71C7B0, &unk_1F0E29FA0);
      }

      LOWORD(v47) = 0;
      v7 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMDeviceOrientationManager onDeviceOrientation:]", "CoreLocation: %s\n", v7);
      if (v7 != buf)
      {
        free(v7);
      }
    }
  }

  else
  {
    internal = self->_internal;
    if (qword_1ED71C7B0 != -1)
    {
      dispatch_once(&qword_1ED71C7B0, &unk_1F0E29FA0);
    }

    v9 = off_1ED71C7C0;
    if (os_log_type_enabled(off_1ED71C7C0, OS_LOG_TYPE_DEFAULT))
    {
      v11 = objc_msgSend_stringForOrientation_(self, v10, internal[18]);
      v13 = objc_msgSend_stringForOrientation_(self, v12, LODWORD(a3->acceleration.x));
      timestamp = a3->timestamp;
      *buf = 138543874;
      v54 = v11;
      v55 = 2114;
      v56 = v13;
      v57 = 2050;
      v58 = timestamp;
      _os_log_impl(&dword_19B41C000, v9, OS_LOG_TYPE_DEFAULT, "Received orientation. (%{public}@ to %{public}@) Timestamp %{public}f", buf, 0x20u);
    }

    v15 = sub_19B420058();
    if (*(v15 + 160) > 1 || *(v15 + 164) > 1 || *(v15 + 168) > 1 || *(v15 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7B0 != -1)
      {
        dispatch_once(&qword_1ED71C7B0, &unk_1F0E29FA0);
      }

      v17 = objc_msgSend_stringForOrientation_(self, v16, internal[18]);
      v19 = objc_msgSend_stringForOrientation_(self, v18, LODWORD(a3->acceleration.x));
      v20 = a3->timestamp;
      v47 = 138543874;
      v48 = v17;
      v49 = 2114;
      v50 = v19;
      v51 = 2050;
      v52 = v20;
      v21 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMDeviceOrientationManager onDeviceOrientation:]", "CoreLocation: %s\n", v21);
      if (v21 != buf)
      {
        free(v21);
      }
    }

    *(internal + 5) = *(internal + 4);
    os_unfair_lock_lock(internal + 2);
    *(internal + 4) = *&a3->timestamp;
    os_unfair_lock_unlock(internal + 2);
    p_acceleration = &a3->acceleration;
    x_low = LODWORD(a3->acceleration.x);
    kdebug_trace();
    if ((internal[12] & 1) == 0)
    {
      dispatch_semaphore_signal(*(internal + 5));
      *(internal + 48) = 1;
    }

    if (*(internal + 4) && *(internal + 3))
    {
      objc_msgSend_updateAggregateDictionaryPrivate(self, v24, v25);
      v26 = objc_autoreleasePoolPush();
      v28 = (internal + 13);
      v27 = internal[13];
      v29 = [CMDeviceOrientation alloc];
      if (v27 == -1)
      {
        v31 = &a3->acceleration;
      }

      else
      {
        v31 = (internal + 13);
      }

      v32 = objc_msgSend_initWithOrientation_andTimestamp_(v29, v30, LODWORD(v31->x), a3->timestamp);
      if (qword_1ED71C7B0 != -1)
      {
        dispatch_once(&qword_1ED71C7B0, &unk_1F0E29FA0);
      }

      v33 = off_1ED71C7C0;
      if (os_log_type_enabled(off_1ED71C7C0, OS_LOG_TYPE_DEFAULT))
      {
        v35 = objc_msgSend_stringForOrientation_(self, v34, LODWORD(p_acceleration->x));
        v36 = *v28;
        *buf = 138543618;
        v54 = v35;
        v55 = 1026;
        LODWORD(v56) = v36;
        _os_log_impl(&dword_19B41C000, v33, OS_LOG_TYPE_DEFAULT, "Updating client handler: Orientation %{public}@, Callback mode: %{public}d", buf, 0x12u);
      }

      v37 = sub_19B420058();
      if (*(v37 + 160) > 1 || *(v37 + 164) > 1 || *(v37 + 168) > 1 || *(v37 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED71C7B0 != -1)
        {
          dispatch_once(&qword_1ED71C7B0, &unk_1F0E29FA0);
        }

        v40 = objc_msgSend_stringForOrientation_(self, v39, LODWORD(p_acceleration->x));
        v41 = *v28;
        v47 = 138543618;
        v48 = v40;
        v49 = 1026;
        LODWORD(v50) = v41;
        v42 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 2, "[CMDeviceOrientationManager onDeviceOrientation:]", "CoreLocation: %s\n", v42);
        if (v42 != buf)
        {
          free(v42);
        }
      }

      v44 = *(internal + 3);
      v43 = *(internal + 4);
      v46[0] = MEMORY[0x1E69E9820];
      v46[1] = 3221225472;
      v46[2] = sub_19B71FC14;
      v46[3] = &unk_1E7532B90;
      v46[4] = v32;
      v46[5] = v44;
      objc_msgSend_addOperationWithBlock_(v43, v38, v46);

      objc_autoreleasePoolPop(v26);
    }
  }

  v45 = *MEMORY[0x1E69E9840];
}

- (id)stringForOrientation:(int)a3
{
  v3 = MEMORY[0x1E696AEC0];
  v5 = sub_19B449494(a3);

  return objc_msgSend_stringWithUTF8String_(v3, v4, v5);
}

@end