@interface CMPocketStateManager
+ (BOOL)isPocketStateAvailable;
+ (BOOL)isPocketStateSupported;
- (CMPocketStateManager)init;
- (id)externalStateToString:(int64_t)string;
- (int)translateExternalState:(int64_t)state;
- (int64_t)translateInternalState:(int)state;
- (void)_disableDispatcher;
- (void)_prepareDispatcher;
- (void)addToAggdScalarWithName:(id)name andScalar:(unint64_t)scalar;
- (void)dealloc;
- (void)onNotification:(id)notification;
- (void)onPocketStateUpdated:(int)updated;
- (void)queryStateOntoQueue:(id)queue andMonitorFor:(double)for withTimeout:(double)timeout andHandler:(id)handler;
- (void)setDelegate:(id)delegate;
@end

@implementation CMPocketStateManager

+ (BOOL)isPocketStateAvailable
{
  v10 = *MEMORY[0x1E69E9840];
  if (qword_1ED71D608 != -1)
  {
    dispatch_once(&qword_1ED71D608, &unk_1F0E285E0);
  }

  if (byte_1ED71D600 == 1)
  {
    if (qword_1EAFE2848 != -1)
    {
      dispatch_once(&qword_1EAFE2848, &unk_1F0E28A80);
    }

    v3 = qword_1EAFE2868;
    if (os_log_type_enabled(qword_1EAFE2868, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_DEFAULT, "Pocket state disabled by defaults write", buf, 2u);
    }

    v4 = sub_19B420058();
    if (*(v4 + 160) > 1 || *(v4 + 164) > 1 || *(v4 + 168) > 1 || *(v4 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2848 != -1)
      {
        dispatch_once(&qword_1EAFE2848, &unk_1F0E28A80);
      }

      v5 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "+[CMPocketStateManager isPocketStateAvailable]", "CoreLocation: %s\n", v5);
      if (v5 != buf)
      {
        free(v5);
      }
    }

    v6 = *MEMORY[0x1E69E9840];
    return 0;
  }

  else
  {
    v8 = *MEMORY[0x1E69E9840];

    return objc_msgSend_isPocketStateSupported(CMPocketStateManager, a2, v2);
  }
}

+ (BOOL)isPocketStateSupported
{
  sub_19B421798();
  if (sub_19B43B6EC())
  {
    return 1;
  }

  sub_19B421798();

  return sub_19B4426E4();
}

- (CMPocketStateManager)init
{
  v8.receiver = self;
  v8.super_class = CMPocketStateManager;
  v2 = [(CMPocketStateManager *)&v8 init];
  if (v2)
  {
    v2->fQueryBlocks = objc_opt_new();
    v2->fQueryTimer = 0;
    v2->fPrivateQueue = dispatch_queue_create("com.apple.CoreMotion.CMPocketStatePrivateQueue", 0);
    v2->fCachedState = 0;
    objc_initWeak(&location, v2);
    fPrivateQueue = v2->fPrivateQueue;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_19B723974;
    v5[3] = &unk_1E7533F88;
    objc_copyWeak(&v6, &location);
    dispatch_async(fPrivateQueue, v5);
    objc_destroyWeak(&v6);
    objc_destroyWeak(&location);
  }

  return v2;
}

- (void)_prepareDispatcher
{
  if (qword_1EAFE3628 != -1)
  {
    dispatch_once(&qword_1EAFE3628, &unk_1F0E2A000);
  }

  if (!self->fDispatcher.__ptr_)
  {
    *&self->fMaxMonitorTime = qword_1EAFE34B0;
    operator new();
  }
}

- (void)dealloc
{
  if (objc_msgSend_isPocketStateAvailable(CMPocketStateManager, a2, v2))
  {
    v6 = objc_msgSend_defaultCenter(MEMORY[0x1E696ABB0], v4, v5);
    objc_msgSend_removeObserver_name_object_(v6, v7, self, @"CMSetPocketStateNotification", 0);
    if (self->fDispatcher.__ptr_)
    {
      v8 = sub_19B6787A4();
      sub_19B426A14(v8, 0, self->fDispatcher.__ptr_);
    }
  }

  fQueryBlocks = self->fQueryBlocks;
  if (fQueryBlocks)
  {
  }

  fQueryTimer = self->fQueryTimer;
  if (fQueryTimer)
  {
    dispatch_source_cancel(fQueryTimer);
    dispatch_release(self->fQueryTimer);
    self->fQueryTimer = 0;
  }

  dispatch_release(self->fPrivateQueue);
  v11.receiver = self;
  v11.super_class = CMPocketStateManager;
  [(CMPocketStateManager *)&v11 dealloc];
}

- (void)setDelegate:(id)delegate
{
  objc_storeWeak(&self->_delegate, delegate);
  fCachedState = self->fCachedState;

  MEMORY[0x1EEE66B58](self, sel_onPocketStateUpdated_, fCachedState);
}

- (void)_disableDispatcher
{
  v11 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE2848 != -1)
  {
    dispatch_once(&qword_1EAFE2848, &unk_1F0E28A80);
  }

  v3 = qword_1EAFE2868;
  if (os_log_type_enabled(qword_1EAFE2868, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_DEFAULT, "disabling dispatcher", buf, 2u);
  }

  v4 = sub_19B420058();
  if (*(v4 + 160) > 1 || *(v4 + 164) > 1 || *(v4 + 168) > 1 || *(v4 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2848 != -1)
    {
      dispatch_once(&qword_1EAFE2848, &unk_1F0E28A80);
    }

    v9 = 0;
    v5 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMPocketStateManager _disableDispatcher]", "CoreLocation: %s\n", v5);
    if (v5 != buf)
    {
      free(v5);
    }
  }

  fPrivateQueue = self->fPrivateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B723F64;
  block[3] = &unk_1E7532988;
  block[4] = self;
  dispatch_sync(fPrivateQueue, block);
  v7 = *MEMORY[0x1E69E9840];
}

- (int64_t)translateInternalState:(int)state
{
  if ((state - 1) > 3)
  {
    return 0;
  }

  else
  {
    return qword_19B7BD1F0[state - 1];
  }
}

- (int)translateExternalState:(int64_t)state
{
  if ((state - 1) > 2)
  {
    return 3;
  }

  else
  {
    return dword_19B7BD210[state - 1];
  }
}

- (id)externalStateToString:(int64_t)string
{
  if (string > 3)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E7535800[string];
  }
}

- (void)addToAggdScalarWithName:(id)name andScalar:(unint64_t)scalar
{
  if (MEMORY[0x1EEE83328])
  {
    fPrivateQueue = self->fPrivateQueue;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_19B7240A4;
    v5[3] = &unk_1E7533490;
    v5[4] = name;
    v5[5] = scalar;
    dispatch_async(fPrivateQueue, v5);
  }
}

- (void)queryStateOntoQueue:(id)queue andMonitorFor:(double)for withTimeout:(double)timeout andHandler:(id)handler
{
  v29 = *MEMORY[0x1E69E9840];
  if (objc_msgSend_isPocketStateAvailable(CMPocketStateManager, a2, queue) & 1) != 0 || (objc_msgSend_isPocketStateSupported(CMPocketStateManager, v11, v12))
  {
    if (qword_1EAFE2848 != -1)
    {
      dispatch_once(&qword_1EAFE2848, &unk_1F0E28A80);
    }

    v13 = qword_1EAFE2868;
    if (os_log_type_enabled(qword_1EAFE2868, OS_LOG_TYPE_DEFAULT))
    {
      v14 = mach_absolute_time();
      *buf = 134217984;
      v28 = sub_19B41E070(v14);
      _os_log_impl(&dword_19B41C000, v13, OS_LOG_TYPE_DEFAULT, "QueryRequest,%f", buf, 0xCu);
    }

    v15 = sub_19B420058();
    if (*(v15 + 160) > 1 || *(v15 + 164) > 1 || *(v15 + 168) > 1 || *(v15 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2848 != -1)
      {
        dispatch_once(&qword_1EAFE2848, &unk_1F0E28A80);
      }

      v16 = mach_absolute_time();
      v25 = 134217984;
      v26 = sub_19B41E070(v16);
      v17 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMPocketStateManager queryStateOntoQueue:andMonitorFor:withTimeout:andHandler:]", "CoreLocation: %s\n", v17);
      if (v17 != buf)
      {
        free(v17);
      }
    }

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.CoreMotion.PocketState.queryStart", 0, 0, 4u);
    fPrivateQueue = self->fPrivateQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_19B7246C4;
    block[3] = &unk_1E75339B0;
    block[4] = self;
    block[5] = queue;
    block[6] = handler;
    *&block[7] = timeout;
    *&block[8] = for;
    dispatch_sync(fPrivateQueue, block);
  }

  else
  {
    if (qword_1EAFE2848 != -1)
    {
      dispatch_once(&qword_1EAFE2848, &unk_1F0E28A80);
    }

    v21 = qword_1EAFE2868;
    if (os_log_type_enabled(qword_1EAFE2868, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v21, OS_LOG_TYPE_FAULT, "Pocket state query is called on an unsupported platform", buf, 2u);
    }

    v22 = sub_19B420058();
    if ((*(v22 + 160) & 0x80000000) == 0 || (*(v22 + 164) & 0x80000000) == 0 || (*(v22 + 168) & 0x80000000) == 0 || *(v22 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2848 != -1)
      {
        dispatch_once(&qword_1EAFE2848, &unk_1F0E28A80);
      }

      LOWORD(v25) = 0;
      v23 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "[CMPocketStateManager queryStateOntoQueue:andMonitorFor:withTimeout:andHandler:]", "CoreLocation: %s\n", v23);
      if (v23 != buf)
      {
        free(v23);
      }
    }
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (void)onNotification:(id)notification
{
  v5 = sub_19B420D84();
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_19B72551C;
  v6[3] = &unk_1E7532A00;
  v6[4] = notification;
  v6[5] = self;
  sub_19B420C9C(v5, v6);
}

- (void)onPocketStateUpdated:(int)updated
{
  fPrivateQueue = self->fPrivateQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_19B7257CC;
  v4[3] = &unk_1E75357E0;
  v4[4] = self;
  updatedCopy = updated;
  dispatch_async(fPrivateQueue, v4);
}

@end