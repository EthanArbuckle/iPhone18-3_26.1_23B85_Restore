@interface CMFlickGestureManager
+ (BOOL)isAvailable;
+ (id)sharedManager;
- (CMFlickGestureManager)init;
- (void)connect;
- (void)dealloc;
- (void)deallocPrivate;
- (void)feedFlickGestureEvent:(int64_t)a3 timestamp:(double)a4;
- (void)logClientEventWithType:(id)a3 payload:(id)a4;
- (void)onFlickGestureData:(const FlickGestureState *)a3;
- (void)onNotification:(id)a3;
- (void)sendEventToClientPrivate;
- (void)sendServiceRequestPrivate;
- (void)startService;
- (void)startUpdatesPrivateToQueue:(id)a3 withHandler:(id)a4;
- (void)startUpdatesToQueue:(id)a3 withHandler:(id)a4;
- (void)stopService;
- (void)stopUpdates;
- (void)stopUpdatesPrivate;
@end

@implementation CMFlickGestureManager

+ (BOOL)isAvailable
{
  if (qword_1ED71D368 != -1)
  {
    dispatch_once(&qword_1ED71D368, &unk_1F0E3ABA0);
  }

  return ((sub_19B421620() & 0x2000000000000000) != 0) | byte_1ED71D350 & 1;
}

- (CMFlickGestureManager)init
{
  v4.receiver = self;
  v4.super_class = CMFlickGestureManager;
  v2 = [(CMFlickGestureManager *)&v4 init];
  if (v2)
  {
    v2->_internal = objc_alloc_init(CMFlickGestureManagerInternal);
  }

  return v2;
}

+ (id)sharedManager
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B69B728;
  block[3] = &unk_1E7532988;
  block[4] = a1;
  if (qword_1ED71D358 != -1)
  {
    dispatch_once(&qword_1ED71D358, block);
  }

  return qword_1ED71D360;
}

- (void)dealloc
{
  v6[0] = 0;
  v6[1] = v6;
  v6[2] = 0x3052000000;
  v6[3] = sub_19B428A9C;
  v6[4] = sub_19B429034;
  v6[5] = self;
  v3 = sub_19B420D84();
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_19B69BA14;
  v5[3] = &unk_1E7533730;
  v5[4] = v6;
  sub_19B420C9C(v3, v5);
  v4.receiver = self;
  v4.super_class = CMFlickGestureManager;
  [(CMFlickGestureManager *)&v4 dealloc];
  _Block_object_dispose(v6, 8);
}

- (void)deallocPrivate
{
  objc_msgSend_stopUpdatesPrivate(self, a2, v2);
  objc_msgSend_teardownPrivate(self->_internal, v4, v5);
  internal = self->_internal;
}

- (void)connect
{
  internal = self->_internal;
  if (!internal[3])
  {
    internal[4] = dispatch_queue_create("com.apple.CoreMotion.CMFlickGestureManager", 0);
    operator new();
  }
}

- (void)sendServiceRequestPrivate
{
  v9[1] = *MEMORY[0x1E69E9840];
  sub_19B420D84();
  sub_19B44B9A0();
  objc_msgSend_connect(self, v3, v4);
  v5 = *(self->_internal + 40);
  v8 = @"CMFlickServiceEnable";
  v9[0] = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v6, v5);
  objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v7, v9, &v8, 1);
  sub_19B639BD4();
}

- (void)startService
{
  v3 = sub_19B420D84();
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_19B69C5AC;
  v4[3] = &unk_1E7532988;
  v4[4] = self;
  sub_19B421668(v3, v4);
}

- (void)stopService
{
  v3 = sub_19B420D84();
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_19B69C940;
  v4[3] = &unk_1E7532988;
  v4[4] = self;
  sub_19B421668(v3, v4);
}

- (void)startUpdatesToQueue:(id)a3 withHandler:(id)a4
{
  v7 = sub_19B420D84();
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_19B69CCE8;
  v8[3] = &unk_1E7532C08;
  v8[4] = self;
  v8[5] = a3;
  v8[6] = a4;
  sub_19B421668(v7, v8);
}

- (void)stopUpdates
{
  v3 = sub_19B420D84();
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_19B69CD74;
  v4[3] = &unk_1E7532988;
  v4[4] = self;
  sub_19B421668(v3, v4);
}

- (void)startUpdatesPrivateToQueue:(id)a3 withHandler:(id)a4
{
  v26 = *MEMORY[0x1E69E9840];
  sub_19B420D84();
  sub_19B44B9A0();
  internal = self->_internal;
  if (objc_msgSend_isAvailable(CMFlickGestureManager, v8, v9))
  {
    if (qword_1EAFE2968 != -1)
    {
      dispatch_once(&qword_1EAFE2968, &unk_1F0E27B40);
    }

    v10 = off_1EAFE2970;
    if (os_log_type_enabled(off_1EAFE2970, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v10, OS_LOG_TYPE_DEFAULT, "Starting flick gesture updates.", buf, 2u);
    }

    v11 = sub_19B420058();
    if (*(v11 + 160) > 1 || *(v11 + 164) > 1 || *(v11 + 168) > 1 || *(v11 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2968 != -1)
      {
        dispatch_once(&qword_1EAFE2968, &unk_1F0E27B40);
      }

      v12 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMFlickGestureManager startUpdatesPrivateToQueue:withHandler:]", "CoreLocation: %s\n", v12);
      if (v12 != buf)
      {
        free(v12);
      }
    }

    v13 = internal[2];
    if (v13 != a3)
    {

      internal[2] = a3;
    }

    v14 = internal[1];
    if (v14 != a4)
    {

      internal[1] = objc_msgSend_copy(a4, v15, v16);
    }

    if (!internal[8] && (sub_19B421620() & 0x2000000000000000) != 0)
    {
      operator new();
    }

    if ((internal[9] & 1) == 0)
    {
      if (qword_1EAFE2968 != -1)
      {
        dispatch_once(&qword_1EAFE2968, &unk_1F0E27B40);
      }

      v17 = off_1EAFE2970;
      if (os_log_type_enabled(off_1EAFE2970, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v17, OS_LOG_TYPE_INFO, "Registering for notifications.", buf, 2u);
      }

      v18 = sub_19B420058();
      if (*(v18 + 160) > 1 || *(v18 + 164) > 1 || *(v18 + 168) > 1 || *(v18 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2968 != -1)
        {
          dispatch_once(&qword_1EAFE2968, &unk_1F0E27B40);
        }

        v21 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 2, "[CMFlickGestureManager startUpdatesPrivateToQueue:withHandler:]", "CoreLocation: %s\n", v21);
        if (v21 != buf)
        {
          free(v21);
        }
      }

      *(internal + 72) = 1;
      v22 = objc_msgSend_defaultCenter(MEMORY[0x1E696ABB0], v19, v20);
      objc_msgSend_addObserver_selector_name_object_suspensionBehavior_(v22, v23, self, sel_onNotification_, @"CMFlickGestureEventSendNotification", 0, 4);
    }
  }

  v24 = *MEMORY[0x1E69E9840];
}

- (void)sendEventToClientPrivate
{
  v26 = *MEMORY[0x1E69E9840];
  sub_19B420D84();
  sub_19B44B9A0();
  internal = self->_internal;
  if (*(internal + 2))
  {
    v4 = objc_autoreleasePoolPush();
    v5 = [CMFlickGestureEvent alloc];
    v7 = objc_msgSend_initWithEventType_timestamp_(v5, v6, *(internal + 7), internal[6]);
    if (qword_1EAFE2968 != -1)
    {
      dispatch_once(&qword_1EAFE2968, &unk_1F0E27B40);
    }

    v8 = off_1EAFE2970;
    if (os_log_type_enabled(off_1EAFE2970, OS_LOG_TYPE_DEFAULT))
    {
      v9 = mach_absolute_time();
      *buf = 138543618;
      v23 = v7;
      v24 = 2050;
      v25 = sub_19B41E070(v9);
      _os_log_impl(&dword_19B41C000, v8, OS_LOG_TYPE_DEFAULT, "Sending flick event to client: %{public}@,now,%{public}f", buf, 0x16u);
    }

    v10 = sub_19B420058();
    if (*(v10 + 160) > 1 || *(v10 + 164) > 1 || *(v10 + 168) > 1 || *(v10 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2968 != -1)
      {
        dispatch_once(&qword_1EAFE2968, &unk_1F0E27B40);
      }

      v12 = mach_absolute_time();
      v18 = 138543618;
      v19 = v7;
      v20 = 2050;
      v21 = sub_19B41E070(v12);
      v13 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMFlickGestureManager sendEventToClientPrivate]", "CoreLocation: %s\n", v13);
      if (v13 != buf)
      {
        free(v13);
      }
    }

    v15 = *(internal + 1);
    v14 = *(internal + 2);
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = sub_19B69D488;
    v17[3] = &unk_1E7532B90;
    v17[4] = v7;
    v17[5] = v15;
    objc_msgSend_addOperationWithBlock_(v14, v11, v17);

    objc_autoreleasePoolPop(v4);
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)stopUpdatesPrivate
{
  v21 = *MEMORY[0x1E69E9840];
  sub_19B420D84();
  sub_19B44B9A0();
  internal = self->_internal;
  if (objc_msgSend_isAvailable(CMFlickGestureManager, v4, v5))
  {
    if (qword_1EAFE2968 != -1)
    {
      dispatch_once(&qword_1EAFE2968, &unk_1F0E27B40);
    }

    v6 = off_1EAFE2970;
    if (os_log_type_enabled(off_1EAFE2970, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_DEFAULT, "Stopping flick gesture updates", buf, 2u);
    }

    v7 = sub_19B420058();
    if (*(v7 + 160) > 1 || *(v7 + 164) > 1 || *(v7 + 168) > 1 || *(v7 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2968 != -1)
      {
        dispatch_once(&qword_1EAFE2968, &unk_1F0E27B40);
      }

      v8 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMFlickGestureManager stopUpdatesPrivate]", "CoreLocation: %s\n", v8);
      if (v8 != buf)
      {
        free(v8);
      }
    }

    if (internal[8])
    {
      if (qword_1EAFE3B48 != -1)
      {
        dispatch_once(&qword_1EAFE3B48, &unk_1F0E2A240);
      }

      sub_19B426A14(qword_1EAFE3B40, 0, internal[8]);
      v9 = internal[8];
      if (v9)
      {
        (*(*v9 + 8))(v9);
      }

      internal[8] = 0;
    }

    if (*(internal + 72) == 1)
    {
      if (qword_1EAFE2968 != -1)
      {
        dispatch_once(&qword_1EAFE2968, &unk_1F0E27B40);
      }

      v10 = off_1EAFE2970;
      if (os_log_type_enabled(off_1EAFE2970, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v10, OS_LOG_TYPE_INFO, "Unregistering for notifications.", buf, 2u);
      }

      v11 = sub_19B420058();
      if (*(v11 + 160) > 1 || *(v11 + 164) > 1 || *(v11 + 168) > 1 || *(v11 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2968 != -1)
        {
          dispatch_once(&qword_1EAFE2968, &unk_1F0E27B40);
        }

        v14 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 2, "[CMFlickGestureManager stopUpdatesPrivate]", "CoreLocation: %s\n", v14);
        if (v14 != buf)
        {
          free(v14);
        }
      }

      *(internal + 72) = 0;
      v15 = objc_msgSend_defaultCenter(MEMORY[0x1E696ABB0], v12, v13);
      objc_msgSend_removeObserver_name_object_(v15, v16, self, @"CMFlickGestureEventSendNotification", 0);
    }

    v17 = internal[2];
    if (v17)
    {

      internal[2] = 0;
    }

    v18 = internal[1];
    if (v18)
    {

      internal[1] = 0;
    }
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (void)onNotification:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE2968 != -1)
  {
    dispatch_once(&qword_1EAFE2968, &unk_1F0E27B40);
  }

  v3 = off_1EAFE2970;
  if (os_log_type_enabled(off_1EAFE2970, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_INFO, "Incoming flick event notification", buf, 2u);
  }

  v4 = sub_19B420058();
  if (*(v4 + 160) > 1 || *(v4 + 164) > 1 || *(v4 + 168) > 1 || *(v4 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2968 != -1)
    {
      dispatch_once(&qword_1EAFE2968, &unk_1F0E27B40);
    }

    v5 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMFlickGestureManager onNotification:]", "CoreLocation: %s\n", v5);
    if (v5 != buf)
    {
      free(v5);
    }
  }

  if (qword_1EAFE3B48 != -1)
  {
    dispatch_once(&qword_1EAFE3B48, &unk_1F0E2A240);
  }

  sub_19B6B37F0(qword_1EAFE3B40 + 32, 1, 1.0);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)onFlickGestureData:(const FlickGestureState *)a3
{
  v25 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    if (qword_1EAFE2968 != -1)
    {
      dispatch_once(&qword_1EAFE2968, &unk_1F0E27B40);
    }

    v5 = off_1EAFE2970;
    if (os_log_type_enabled(off_1EAFE2970, OS_LOG_TYPE_INFO))
    {
      var1 = a3->var1;
      var2 = a3->var2;
      var0 = a3->var0;
      *buf = 67240704;
      v20 = var1;
      v21 = 1026;
      v22 = var2;
      v23 = 2050;
      v24 = var0;
      _os_log_impl(&dword_19B41C000, v5, OS_LOG_TYPE_INFO, "Incoming flick gesture event, gestureState,%{public}u, isSimulated,%{public}u, timestampSecs,%{public}f", buf, 0x18u);
    }

    v9 = sub_19B420058();
    if (*(v9 + 160) > 1 || *(v9 + 164) > 1 || *(v9 + 168) > 1 || *(v9 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2968 != -1)
      {
        dispatch_once(&qword_1EAFE2968, &unk_1F0E27B40);
      }

      v16 = a3->var1;
      v17 = a3->var2;
      v18 = a3->var0;
      v11 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMFlickGestureManager onFlickGestureData:]", "CoreLocation: %s\n", v11);
      if (v11 != buf)
      {
        free(v11);
      }
    }

    if (a3->var1 == 1)
    {
      objc_msgSend_feedFlickGestureEvent_timestamp_(self, v10, 1, a3->var0);
    }
  }

  else
  {
    if (qword_1EAFE2968 != -1)
    {
      dispatch_once(&qword_1EAFE2968, &unk_1F0E27B40);
    }

    v12 = off_1EAFE2970;
    if (os_log_type_enabled(off_1EAFE2970, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v12, OS_LOG_TYPE_ERROR, "Invalid data parameter!", buf, 2u);
    }

    v13 = sub_19B420058();
    if ((*(v13 + 160) & 0x80000000) == 0 || (*(v13 + 164) & 0x80000000) == 0 || (*(v13 + 168) & 0x80000000) == 0 || *(v13 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2968 != -1)
      {
        dispatch_once(&qword_1EAFE2968, &unk_1F0E27B40);
      }

      v14 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "[CMFlickGestureManager onFlickGestureData:]", "CoreLocation: %s\n", v14);
      if (v14 != buf)
      {
        free(v14);
      }
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)feedFlickGestureEvent:(int64_t)a3 timestamp:(double)a4
{
  v7 = sub_19B420D84();
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_19B69DE6C;
  v8[3] = &unk_1E7533448;
  v8[4] = self;
  v8[5] = a3;
  *&v8[6] = a4;
  sub_19B421668(v7, v8);
}

- (void)logClientEventWithType:(id)a3 payload:(id)a4
{
  v14 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE2968 != -1)
  {
    dispatch_once(&qword_1EAFE2968, &unk_1F0E27B40);
  }

  v6 = off_1EAFE2970;
  if (os_log_type_enabled(off_1EAFE2970, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v11 = a3;
    v12 = 2112;
    v13 = a4;
    _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_DEFAULT, "Type %@, Payload: %@", buf, 0x16u);
  }

  v7 = sub_19B420058();
  if (*(v7 + 160) > 1 || *(v7 + 164) > 1 || *(v7 + 168) > 1 || *(v7 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2968 != -1)
    {
      dispatch_once(&qword_1EAFE2968, &unk_1F0E27B40);
    }

    v8 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMFlickGestureManager logClientEventWithType:payload:]", "CoreLocation: %s\n", v8);
    if (v8 != buf)
    {
      free(v8);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

@end