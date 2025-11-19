@interface CMMagicMountManager
- (CMMagicMountManager)init;
- (CMMagicMountStateStruct)currentMagicMountState;
- (id)initPrivate;
- (void)dealloc;
- (void)deallocPrivate;
- (void)feedMountStatus:(int64_t)a3 apAwake:(BOOL)a4 simulated:(BOOL)a5 timestamp:(double)a6;
- (void)onMagicMountData:(const MagicMountState *)a3;
- (void)sendMagicMountStateToClientPrivate;
- (void)setAPWakesAllowed:(BOOL)a3;
- (void)setAPWakesAllowedPrivate:(BOOL)a3;
- (void)setMagicMountConfiguration:(int64_t)a3;
- (void)simulateMagicMountEvent:(int64_t)a3 delay:(double)a4;
- (void)startMagicMountUpdatesPrivateToQueue:(id)a3 withHandler:(id)a4;
- (void)startMagicMountUpdatesToQueue:(id)a3 withHandler:(id)a4;
- (void)stopMagicMountUpdates;
- (void)stopMagicMountUpdatesPrivate;
@end

@implementation CMMagicMountManager

- (CMMagicMountManager)init
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3052000000;
  v10 = sub_19B428B10;
  v11 = sub_19B429080;
  v12 = 0;
  v3 = sub_19B420D84();
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_19B758D00;
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
  v4.receiver = self;
  v4.super_class = CMMagicMountManager;
  v2 = [(CMMagicMountManager *)&v4 init];
  if (v2)
  {
    v2->_internal = objc_opt_new();
  }

  return v2;
}

- (void)dealloc
{
  v6[0] = 0;
  v6[1] = v6;
  v6[2] = 0x3052000000;
  v6[3] = sub_19B428B10;
  v6[4] = sub_19B429080;
  v6[5] = self;
  v3 = sub_19B420D84();
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_19B758E88;
  v5[3] = &unk_1E7533730;
  v5[4] = v6;
  sub_19B420C9C(v3, v5);
  v4.receiver = self;
  v4.super_class = CMMagicMountManager;
  [(CMMagicMountManager *)&v4 dealloc];
  _Block_object_dispose(v6, 8);
}

- (void)deallocPrivate
{
  objc_msgSend_stopMagicMountUpdatesPrivate(self, a2, v2);
  objc_msgSend_teardownPrivate(self->_internal, v4, v5);
  internal = self->_internal;
}

- (void)startMagicMountUpdatesToQueue:(id)a3 withHandler:(id)a4
{
  v15 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE2988 != -1)
  {
    dispatch_once(&qword_1EAFE2988, &unk_1F0E3B598);
  }

  v7 = qword_1EAFE2990;
  if (os_log_type_enabled(qword_1EAFE2990, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v7, OS_LOG_TYPE_DEFAULT, "Starting magic mount updates", buf, 2u);
  }

  v8 = sub_19B420058();
  if (*(v8 + 160) > 1 || *(v8 + 164) > 1 || *(v8 + 168) > 1 || *(v8 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2988 != -1)
    {
      dispatch_once(&qword_1EAFE2988, &unk_1F0E3B598);
    }

    v13 = 0;
    v9 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMagicMountManager startMagicMountUpdatesToQueue:withHandler:]", "CoreLocation: %s\n", v9);
    if (v9 != buf)
    {
      free(v9);
    }
  }

  v10 = sub_19B420D84();
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_19B7590F0;
  v12[3] = &unk_1E7532C08;
  v12[4] = self;
  v12[5] = a3;
  v12[6] = a4;
  sub_19B420C9C(v10, v12);
  v11 = *MEMORY[0x1E69E9840];
}

- (void)stopMagicMountUpdates
{
  v11 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE2988 != -1)
  {
    dispatch_once(&qword_1EAFE2988, &unk_1F0E3B598);
  }

  v3 = qword_1EAFE2990;
  if (os_log_type_enabled(qword_1EAFE2990, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_DEFAULT, "Stopping magic mount updates", buf, 2u);
  }

  v4 = sub_19B420058();
  if (*(v4 + 160) > 1 || *(v4 + 164) > 1 || *(v4 + 168) > 1 || *(v4 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2988 != -1)
    {
      dispatch_once(&qword_1EAFE2988, &unk_1F0E3B598);
    }

    v9 = 0;
    v5 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMagicMountManager stopMagicMountUpdates]", "CoreLocation: %s\n", v5);
    if (v5 != buf)
    {
      free(v5);
    }
  }

  v6 = sub_19B420D84();
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_19B759304;
  v8[3] = &unk_1E7532988;
  v8[4] = self;
  sub_19B420C9C(v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

- (void)setMagicMountConfiguration:(int64_t)a3
{
  v15 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE2988 != -1)
  {
    dispatch_once(&qword_1EAFE2988, &unk_1F0E3B598);
  }

  v5 = qword_1EAFE2990;
  if (os_log_type_enabled(qword_1EAFE2990, OS_LOG_TYPE_DEFAULT))
  {
    magicMountConfiguration = self->_magicMountConfiguration;
    *buf = 134349312;
    v12 = magicMountConfiguration;
    v13 = 2050;
    v14 = a3;
    _os_log_impl(&dword_19B41C000, v5, OS_LOG_TYPE_DEFAULT, "setMagicMountConfiguration: %{public}ld -> %{public}ld", buf, 0x16u);
  }

  v7 = sub_19B420058();
  if (*(v7 + 160) > 1 || *(v7 + 164) > 1 || *(v7 + 168) > 1 || *(v7 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2988 != -1)
    {
      dispatch_once(&qword_1EAFE2988, &unk_1F0E3B598);
    }

    v10 = self->_magicMountConfiguration;
    v8 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMagicMountManager setMagicMountConfiguration:]", "CoreLocation: %s\n", v8);
    if (v8 != buf)
    {
      free(v8);
    }
  }

  self->_magicMountConfiguration = a3;
  v9 = *MEMORY[0x1E69E9840];
}

- (void)setAPWakesAllowed:(BOOL)a3
{
  v14 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE2988 != -1)
  {
    dispatch_once(&qword_1EAFE2988, &unk_1F0E3B598);
  }

  v5 = qword_1EAFE2990;
  if (os_log_type_enabled(qword_1EAFE2990, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v5, OS_LOG_TYPE_DEFAULT, "Changing the AP wakes setting for magic mount events", buf, 2u);
  }

  v6 = sub_19B420058();
  if (*(v6 + 160) > 1 || *(v6 + 164) > 1 || *(v6 + 168) > 1 || *(v6 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2988 != -1)
    {
      dispatch_once(&qword_1EAFE2988, &unk_1F0E3B598);
    }

    v12 = 0;
    v7 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMagicMountManager setAPWakesAllowed:]", "CoreLocation: %s\n", v7);
    if (v7 != buf)
    {
      free(v7);
    }
  }

  v8 = sub_19B420D84();
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_19B75970C;
  v10[3] = &unk_1E75337D0;
  v10[4] = self;
  v11 = a3;
  sub_19B420C9C(v8, v10);
  v9 = *MEMORY[0x1E69E9840];
}

- (void)sendMagicMountStateToClientPrivate
{
  v23 = *MEMORY[0x1E69E9840];
  sub_19B420D84();
  sub_19B44B9A0();
  internal = self->_internal;
  if (*(internal + 4) && *(internal + 3))
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(internal + 1);
    if (v5 == 0.0)
    {
      __assert_rtn("[CMMagicMountManager sendMagicMountStateToClientPrivate]", "CMMagicMountManager.mm", 252, "timestampSecs != 0.");
    }

    v6 = v4;
    v7 = *(internal + 2);
    v8 = [CMMagicMountState alloc];
    v10 = objc_msgSend_initWithMountStatus_timestamp_(v8, v9, v7, v5);
    if (qword_1EAFE2988 != -1)
    {
      dispatch_once(&qword_1EAFE2988, &unk_1F0E3B598);
    }

    v11 = qword_1EAFE2990;
    if (os_log_type_enabled(qword_1EAFE2990, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v22 = v10;
      _os_log_impl(&dword_19B41C000, v11, OS_LOG_TYPE_DEFAULT, "Sending to client: %{public}@", buf, 0xCu);
    }

    v12 = sub_19B420058();
    if (*(v12 + 160) > 1 || *(v12 + 164) > 1 || *(v12 + 168) > 1 || *(v12 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2988 != -1)
      {
        dispatch_once(&qword_1EAFE2988, &unk_1F0E3B598);
      }

      v19 = 138543362;
      v20 = v10;
      v14 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMagicMountManager sendMagicMountStateToClientPrivate]", "CoreLocation: %s\n", v14);
      if (v14 != buf)
      {
        free(v14);
      }
    }

    v16 = *(internal + 3);
    v15 = *(internal + 4);
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = sub_19B7599C0;
    v18[3] = &unk_1E7532B90;
    v18[4] = v10;
    v18[5] = v16;
    objc_msgSend_addOperationWithBlock_(v15, v13, v18);

    objc_autoreleasePoolPop(v6);
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)onMagicMountData:(const MagicMountState *)a3
{
  v29 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    if (qword_1EAFE2988 != -1)
    {
      dispatch_once(&qword_1EAFE2988, &unk_1F0E3B598);
    }

    v5 = qword_1EAFE2990;
    if (os_log_type_enabled(qword_1EAFE2990, OS_LOG_TYPE_INFO))
    {
      var1 = a3->var1;
      var2 = a3->var2;
      var3 = a3->var3;
      var0 = a3->var0;
      *buf = 67240960;
      v22 = var1;
      v23 = 1026;
      v24 = var2;
      v25 = 1026;
      v26 = var3;
      v27 = 2050;
      v28 = var0;
      _os_log_impl(&dword_19B41C000, v5, OS_LOG_TYPE_INFO, "Incoming magic mount state, mountStatus,%{public}u, isAPAwake,%{public}u, isSimulated,%{public}u, timestampSecs,%{public}f", buf, 0x1Eu);
    }

    v10 = sub_19B420058();
    if (*(v10 + 160) > 1 || *(v10 + 164) > 1 || *(v10 + 168) > 1 || *(v10 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2988 != -1)
      {
        dispatch_once(&qword_1EAFE2988, &unk_1F0E3B598);
      }

      v17 = a3->var1;
      v18 = a3->var2;
      v19 = a3->var3;
      v20 = a3->var0;
      v12 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMagicMountManager onMagicMountData:]", "CoreLocation: %s\n", v12);
      if (v12 != buf)
      {
        free(v12);
      }
    }

    objc_msgSend_feedMountStatus_apAwake_simulated_timestamp_(self, v11, a3->var1, a3->var2, a3->var3, a3->var0);
  }

  else
  {
    if (qword_1EAFE2988 != -1)
    {
      dispatch_once(&qword_1EAFE2988, &unk_1F0E3B598);
    }

    v13 = qword_1EAFE2990;
    if (os_log_type_enabled(qword_1EAFE2990, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v13, OS_LOG_TYPE_ERROR, "Invalid data parameter!", buf, 2u);
    }

    v14 = sub_19B420058();
    if ((*(v14 + 160) & 0x80000000) == 0 || (*(v14 + 164) & 0x80000000) == 0 || (*(v14 + 168) & 0x80000000) == 0 || *(v14 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2988 != -1)
      {
        dispatch_once(&qword_1EAFE2988, &unk_1F0E3B598);
      }

      v15 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "[CMMagicMountManager onMagicMountData:]", "CoreLocation: %s\n", v15);
      if (v15 != buf)
      {
        free(v15);
      }
    }
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (CMMagicMountStateStruct)currentMagicMountState
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x4012000000;
  v12 = sub_19B759E5C;
  v13 = nullsub_189;
  v14 = &unk_19B840009;
  v15 = 0;
  v16 = 0;
  v3 = sub_19B420D84();
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_19B759E6C;
  v8[3] = &unk_1E75338E8;
  v8[4] = self;
  v8[5] = &v9;
  sub_19B420C9C(v3, v8);
  v4 = v10[6];
  v5 = *(v10 + 7);
  _Block_object_dispose(&v9, 8);
  v6 = v4;
  v7 = v5;
  result.mountStatus = v7;
  result.timestamp = v6;
  return result;
}

- (void)simulateMagicMountEvent:(int64_t)a3 delay:(double)a4
{
  v5 = a3;
  if (qword_1EAFE3AB8 != -1)
  {
    dispatch_once(&qword_1EAFE3AB8, &unk_1F0E29340);
  }

  v6 = qword_1EAFE3AB0 + 32;

  sub_19B74570C(v6, v5, a4);
}

- (void)feedMountStatus:(int64_t)a3 apAwake:(BOOL)a4 simulated:(BOOL)a5 timestamp:(double)a6
{
  v11 = sub_19B420D84();
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_19B759FA4;
  v12[3] = &unk_1E7535BD8;
  v12[4] = self;
  v12[5] = a3;
  *&v12[6] = a6;
  v13 = a4;
  v14 = a5;
  sub_19B420C9C(v11, v12);
}

- (void)startMagicMountUpdatesPrivateToQueue:(id)a3 withHandler:(id)a4
{
  sub_19B420D84();
  sub_19B44B9A0();
  internal = self->_internal;
  if ((sub_19B421620() & 0x400) != 0)
  {
    v10 = internal[4];
    if (v10 != a3)
    {

      internal[4] = a3;
    }

    v11 = internal[3];
    if (v11 != a4)
    {

      internal[3] = objc_msgSend_copy(a4, v12, v13);
    }

    if (!internal[5] && (sub_19B421620() & 0x400) != 0)
    {
      operator new();
    }

    *(internal + 64) = 1;
    objc_msgSend_sendServiceRequestPrivate(internal, v8, v9);
    if ((*(internal + 65) & 1) == 0)
    {

      MEMORY[0x1EEE66B58](internal, sel_sendAPWakesRequestPrivate, v14);
    }
  }
}

- (void)stopMagicMountUpdatesPrivate
{
  sub_19B420D84();
  sub_19B44B9A0();
  internal = self->_internal;
  if ((sub_19B421620() & 0x400) != 0)
  {
    if ((*(internal + 65) & 1) == 0)
    {
      objc_msgSend_setAPWakesAllowedPrivate_(self, v4, 1);
    }

    if (*(internal + 64) == 1)
    {
      *(internal + 64) = 0;
      objc_msgSend_sendServiceRequestPrivate(internal, v4, v5);
    }

    if (*(internal + 5))
    {
      if (qword_1EAFE3AB8 != -1)
      {
        dispatch_once(&qword_1EAFE3AB8, &unk_1F0E29340);
      }

      sub_19B426A14(qword_1EAFE3AB0, 0, *(internal + 5));
      v6 = *(internal + 5);
      if (v6)
      {
        (*(*v6 + 8))(v6);
      }

      *(internal + 5) = 0;
    }

    *(internal + 4) = 0;
    *(internal + 1) = 0;
    *(internal + 2) = 0;
    *(internal + 3) = 0;
  }
}

- (void)setAPWakesAllowedPrivate:(BOOL)a3
{
  v3 = a3;
  v13 = *MEMORY[0x1E69E9840];
  sub_19B420D84();
  sub_19B44B9A0();
  internal = self->_internal;
  if ((sub_19B421620() & 0x400) == 0)
  {
    goto LABEL_19;
  }

  if ((internal[64] & 1) == 0)
  {
    internal[65] = v3;
    if (qword_1EAFE2988 != -1)
    {
      dispatch_once(&qword_1EAFE2988, &unk_1F0E3B598);
    }

    v8 = qword_1EAFE2990;
    if (os_log_type_enabled(qword_1EAFE2990, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v8, OS_LOG_TYPE_DEBUG, "Client hasn't called startMagicMountUpdates yet, holding request until this happens", buf, 2u);
    }

    v9 = sub_19B420058();
    if (*(v9 + 160) > 1 || *(v9 + 164) > 1 || *(v9 + 168) > 1 || *(v9 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2988 != -1)
      {
        dispatch_once(&qword_1EAFE2988, &unk_1F0E3B598);
      }

      v10 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMagicMountManager setAPWakesAllowedPrivate:]", "CoreLocation: %s\n", v10);
      if (v10 != buf)
      {
        free(v10);
      }
    }

    goto LABEL_19;
  }

  if (internal[65] == v3)
  {
LABEL_19:
    v11 = *MEMORY[0x1E69E9840];
    return;
  }

  internal[65] = v3;
  v7 = *MEMORY[0x1E69E9840];

  MEMORY[0x1EEE66B58](internal, sel_sendAPWakesRequestPrivate, v6);
}

@end