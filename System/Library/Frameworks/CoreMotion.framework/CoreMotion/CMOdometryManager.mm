@interface CMOdometryManager
+ (BOOL)isAvailable;
- (CMOdometryManager)init;
- (id)initPrivate;
- (void)dealloc;
- (void)deallocPrivate;
- (void)enableMotionSimulationPrivate:(BOOL)a3;
- (void)feedOdometryData:(const InertialOdometryData *)a3;
- (void)sendOdometryToClientPrivate;
- (void)setOdometryUpdateInterval:(double)a3;
- (void)setOdometryUpdateIntervalPrivate:(double)a3;
- (void)setupBIO;
- (void)startOdometryUpdatesPrivateUsingReferenceFrame:(unint64_t)a3 toQueue:(id)a4 withHandler:(id)a5;
- (void)startOdometryUpdatesToQueue:(id)a3 withHandler:(id)a4;
- (void)startOdometryUpdatesUsingReferenceFrame:(unint64_t)a3 toQueue:(id)a4 withHandler:(id)a5;
- (void)stopBackgroundUpdatesPrivate;
- (void)stopOdometryUpdates;
- (void)stopOdometryUpdatesPrivate;
- (void)teardownBIO;
@end

@implementation CMOdometryManager

+ (BOOL)isAvailable
{
  if (sub_19B5F9308())
  {
    return 1;
  }

  if (qword_1ED71C988 != -1)
  {
    dispatch_once(&qword_1ED71C988, &unk_1F0E28FE0);
  }

  if (qword_1ED71C990 != -1)
  {
    dispatch_once(&qword_1ED71C990, &unk_1F0E3A400);
  }

  result = 1;
  if ((dword_1ED71C97C - 99) >= 0x23)
  {
    return dword_1ED71C97C == 280;
  }

  return result;
}

- (CMOdometryManager)init
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3052000000;
  v10 = sub_19B428A8C;
  v11 = sub_19B429028;
  v12 = 0;
  v3 = sub_19B420D84();
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_19B67E7F8;
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
  v6.receiver = self;
  v6.super_class = CMOdometryManager;
  v2 = [(CMOdometryManager *)&v6 init];
  if (v2)
  {
    v2->_internal = objc_opt_new();
    objc_msgSend_setupBIO(v2, v3, v4);
  }

  return v2;
}

- (void)dealloc
{
  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x3052000000;
  v8[3] = sub_19B428A8C;
  v8[4] = sub_19B429028;
  v8[5] = self;
  v3 = sub_19B420D84();
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_19B67E990;
  v7[3] = &unk_1E7533730;
  v7[4] = v8;
  sub_19B420C9C(v3, v7);
  objc_msgSend_teardownBIO(self, v4, v5);
  v6.receiver = self;
  v6.super_class = CMOdometryManager;
  [(CMOdometryManager *)&v6 dealloc];
  _Block_object_dispose(v8, 8);
}

- (void)deallocPrivate
{
  objc_msgSend_stopOdometryUpdatesPrivate(self, a2, v2);
  internal = self->_internal;
}

- (void)setupBIO
{
  self->_backgroundInertialOdometryQueue = 0;
  self->_referenceFrameBIO = 1;
  self->_backgroundInertialOdometryHandler = 0;
  self->_xpcQueue = dispatch_queue_create("com.apple.CoreMotion.CMOdometryManagerPrivateQueue", 0);
  operator new();
}

- (void)teardownBIO
{
  self->_backgroundInertialOdometryHandler = 0;

  self->_backgroundInertialOdometryQueue = 0;
  sub_19B42C54C(&self->_locationdConnection, 0);
  xpcQueue = self->_xpcQueue;
  self->_xpcQueue = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B67EFEC;
  block[3] = &unk_1E7532988;
  block[4] = xpcQueue;
  dispatch_async(xpcQueue, block);
}

- (void)startOdometryUpdatesToQueue:(id)a3 withHandler:(id)a4
{
  v7 = sub_19B420D84();
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_19B67F084;
  v8[3] = &unk_1E7532C08;
  v8[4] = self;
  v8[5] = a3;
  v8[6] = a4;
  sub_19B420C9C(v7, v8);
}

- (void)startOdometryUpdatesUsingReferenceFrame:(unint64_t)a3 toQueue:(id)a4 withHandler:(id)a5
{
  v9 = sub_19B420D84();
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_19B67F12C;
  v10[3] = &unk_1E7533780;
  v10[4] = self;
  v10[5] = a4;
  v10[6] = a5;
  v10[7] = a3;
  sub_19B420C9C(v9, v10);
}

- (void)stopOdometryUpdates
{
  v3 = sub_19B420D84();
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_19B67F1B8;
  v4[3] = &unk_1E7532988;
  v4[4] = self;
  sub_19B420C9C(v3, v4);
}

- (void)setOdometryUpdateInterval:(double)a3
{
  v5 = sub_19B420D84();
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_19B67F258;
  v6[3] = &unk_1E7533490;
  v6[4] = self;
  *&v6[5] = a3;
  sub_19B420C9C(v5, v6);
}

- (void)setOdometryUpdateIntervalPrivate:(double)a3
{
  v13 = *MEMORY[0x1E69E9840];
  internal = self->_internal;
  v5 = 0.1;
  if (a3 >= 0.1)
  {
    v5 = a3;
  }

  *(internal + 32) = v5;
  if (*(internal + 31))
  {
    if (qword_1EAFE2A88 != -1)
    {
      dispatch_once(&qword_1EAFE2A88, &unk_1F0E28AE0);
    }

    v6 = qword_1EAFE2A90;
    if (os_log_type_enabled(qword_1EAFE2A90, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134349056;
      v12 = a3;
      _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_DEFAULT, "Requesting CMOdometry updates with interval: %{public}f", buf, 0xCu);
    }

    v7 = sub_19B420058();
    if (*(v7 + 160) > 1 || *(v7 + 164) > 1 || *(v7 + 168) > 1 || *(v7 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2A88 != -1)
      {
        dispatch_once(&qword_1EAFE2A88, &unk_1F0E28AE0);
      }

      v8 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMOdometryManager setOdometryUpdateIntervalPrivate:]", "CoreLocation: %s\n", v8);
      if (v8 != buf)
      {
        free(v8);
      }
    }

    v9 = sub_19B6F7F00();
    sub_19B44E2F8(v9, 0, *(internal + 31), internal + 256);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)sendOdometryToClientPrivate
{
  v68[1] = *MEMORY[0x1E69E9840];
  sub_19B420D84();
  sub_19B44B9A0();
  internal = self->_internal;
  if (*(internal + 34) && *(internal + 33))
  {
    v4 = objc_autoreleasePoolPush();
    v8 = internal[15];
    if (v8 == 0.0)
    {
      __assert_rtn("[CMOdometryManager sendOdometryToClientPrivate]", "CMOdometryManager.mm", 270, "timestampSecs != 0.");
    }

    v9 = v4;
    v10 = *(internal + 33);
    v11 = *(internal + 2);
    if (v11 >= *(internal + 25))
    {
      v62 = v4;
      if (v11 >= *(internal + 20))
      {
        if (*(internal + 22) <= v11)
        {
          *&v7 = *(internal + 34) - *(internal + 6);
          v60 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v5, v6, v7);
          v11 = *(internal + 2);
        }

        else
        {
          v60 = 0;
        }

        if (*(internal + 23) <= v11)
        {
          *&v7 = *(internal + 35) - *(internal + 7);
          v59 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v5, v6, v7);
          v11 = *(internal + 2);
        }

        else
        {
          v59 = 0;
        }

        if (*(internal + 24) <= v11)
        {
          *&v7 = *(internal + 36) - *(internal + 8);
          v22 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v5, v6, v7);
        }

        else
        {
          v22 = 0;
        }
      }

      else
      {
        if (qword_1EAFE2A88 != -1)
        {
          dispatch_once(&qword_1EAFE2A88, &unk_1F0E28AE0);
        }

        v19 = qword_1EAFE2A90;
        if (os_log_type_enabled(qword_1EAFE2A90, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_19B41C000, v19, OS_LOG_TYPE_INFO, "Position rollover", buf, 2u);
        }

        v20 = sub_19B420058();
        if (*(v20 + 160) > 1 || *(v20 + 164) > 1 || *(v20 + 168) > 1 || *(v20 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE2A88 != -1)
          {
            dispatch_once(&qword_1EAFE2A88, &unk_1F0E28AE0);
          }

          v64 = 0;
          v21 = _os_log_send_and_compose_impl();
          sub_19B6BB7CC("Generic", 1, 0, 2, "[CMOdometryManager sendOdometryToClientPrivate]", "CoreLocation: %s\n", v21);
          if (v21 != buf)
          {
            free(v21);
          }
        }

        v22 = 0;
        v59 = 0;
        v60 = 0;
      }

      v61 = v10;
      if (*(internal + 2) >= *(internal + 21))
      {
        *&v7 = *(internal + 37) - *(internal + 9);
        v28 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v5, v6, v7);
        *&v29 = *(internal + 38) - *(internal + 10);
        v27 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v30, v31, v29);
        *&v32 = *(internal + 39) - *(internal + 11);
        v26 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v33, v34, v32);
      }

      else
      {
        if (qword_1EAFE2A88 != -1)
        {
          dispatch_once(&qword_1EAFE2A88, &unk_1F0E28AE0);
        }

        v23 = qword_1EAFE2A90;
        if (os_log_type_enabled(qword_1EAFE2A90, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_19B41C000, v23, OS_LOG_TYPE_INFO, "Velocity rollover", buf, 2u);
        }

        v24 = sub_19B420058();
        if (*(v24 + 160) > 1 || *(v24 + 164) > 1 || *(v24 + 168) > 1 || *(v24 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE2A88 != -1)
          {
            dispatch_once(&qword_1EAFE2A88, &unk_1F0E28AE0);
          }

          v64 = 0;
          v25 = _os_log_send_and_compose_impl();
          sub_19B6BB7CC("Generic", 1, 0, 2, "[CMOdometryManager sendOdometryToClientPrivate]", "CoreLocation: %s\n", v25);
          if (v25 != buf)
          {
            free(v25);
          }
        }

        v26 = 0;
        v27 = 0;
        v28 = 0;
      }

      v35 = [CMOdometry alloc];
      LODWORD(v36) = *(internal + 52);
      v39 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v37, v38, v36);
      LODWORD(v40) = *(internal + 53);
      v43 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v41, v42, v40);
      LODWORD(v44) = *(internal + 54);
      v47 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v45, v46, v44);
      LODWORD(v48) = *(internal + 55);
      v51 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v49, v50, v48);
      LODWORD(v52) = *(internal + 56);
      v54 = objc_msgSend_initWithDeltaPositionX_deltaPositionY_deltaPositionZ_deltaVelocityX_deltaVelocityY_deltaVelocityZ_quaternionX_quaternionY_quaternionZ_quaternionW_rotationArbitraryToTrueNorth_staticFlag_timestamp_(v35, v53, v60, v59, v22, v28, v27, v26, v52, v8, v39, v43, v47, v51, 0);
      v16 = v54;
      if (*(internal + 30) == 8)
      {
        objc_msgSend_rotateArbitraryToTrueNorth(v54, v55, v56);
      }

      v57 = *(internal + 34);
      v63[0] = MEMORY[0x1E69E9820];
      v63[1] = 3221225472;
      v63[2] = sub_19B67FAF0;
      v63[3] = &unk_1E7532B90;
      v63[4] = v16;
      v63[5] = v61;
      objc_msgSend_addOperationWithBlock_(v57, v55, v63);
      v9 = v62;
    }

    else
    {
      v12 = objc_alloc(MEMORY[0x1E696ABC0]);
      v67 = *MEMORY[0x1E696A578];
      v68[0] = @"Reference frame has changed for the incoming delta position updates due to unexpected DeviceMotion reinitialization.";
      v14 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v13, v68, &v67, 1);
      v16 = objc_msgSend_initWithDomain_code_userInfo_(v12, v15, @"CMErrorDomainPrivate", 103, v14);
      v17 = *(internal + 34);
      v65[0] = MEMORY[0x1E69E9820];
      v65[1] = 3221225472;
      v65[2] = sub_19B67FAD8;
      v65[3] = &unk_1E7532B90;
      v65[4] = v16;
      v65[5] = v10;
      objc_msgSend_addOperationWithBlock_(v17, v18, v65);
    }

    objc_autoreleasePoolPop(v9);
  }

  v58 = *MEMORY[0x1E69E9840];
}

- (void)feedOdometryData:(const InertialOdometryData *)a3
{
  v13 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v5 = sub_19B420D84();
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = sub_19B67FD08;
    v10[3] = &unk_1E7533490;
    v10[4] = self;
    v10[5] = a3;
    sub_19B420C9C(v5, v10);
  }

  else
  {
    if (qword_1EAFE2A88 != -1)
    {
      dispatch_once(&qword_1EAFE2A88, &unk_1F0E28AE0);
    }

    v6 = qword_1EAFE2A90;
    if (os_log_type_enabled(qword_1EAFE2A90, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_ERROR, "Invalid data parameter!", buf, 2u);
    }

    v7 = sub_19B420058();
    if ((*(v7 + 160) & 0x80000000) == 0 || (*(v7 + 164) & 0x80000000) == 0 || (*(v7 + 168) & 0x80000000) == 0 || *(v7 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2A88 != -1)
      {
        dispatch_once(&qword_1EAFE2A88, &unk_1F0E28AE0);
      }

      v11 = 0;
      v8 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "[CMOdometryManager feedOdometryData:]", "CoreLocation: %s\n", v8);
      if (v8 != buf)
      {
        free(v8);
      }
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)startOdometryUpdatesPrivateUsingReferenceFrame:(unint64_t)a3 toQueue:(id)a4 withHandler:(id)a5
{
  v27 = *MEMORY[0x1E69E9840];
  sub_19B420D84();
  sub_19B44B9A0();
  internal = self->_internal;
  if (!+[CMOdometryManager isAvailable]_0())
  {
    if (qword_1EAFE2A88 != -1)
    {
      dispatch_once(&qword_1EAFE2A88, &unk_1F0E28AE0);
    }

    v17 = qword_1EAFE2A90;
    if (os_log_type_enabled(qword_1EAFE2A90, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v17, OS_LOG_TYPE_ERROR, "InertialOdometry not available", buf, 2u);
    }

    v18 = sub_19B420058();
    if ((*(v18 + 160) & 0x80000000) != 0 && (*(v18 + 164) & 0x80000000) != 0 && (*(v18 + 168) & 0x80000000) != 0 && !*(v18 + 152))
    {
      goto LABEL_51;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2A88 == -1)
    {
LABEL_49:
      v23 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "[CMOdometryManager startOdometryUpdatesPrivateUsingReferenceFrame:toQueue:withHandler:]", "CoreLocation: %s\n", v23);
      if (v23 != buf)
      {
        free(v23);
      }

      goto LABEL_51;
    }

LABEL_58:
    dispatch_once(&qword_1EAFE2A88, &unk_1F0E28AE0);
    goto LABEL_49;
  }

  if (internal[32] <= 0.0)
  {
    if (qword_1EAFE2A88 != -1)
    {
      dispatch_once(&qword_1EAFE2A88, &unk_1F0E28AE0);
    }

    v19 = qword_1EAFE2A90;
    if (os_log_type_enabled(qword_1EAFE2A90, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v19, OS_LOG_TYPE_ERROR, "Invalid update interval", buf, 2u);
    }

    v20 = sub_19B420058();
    if ((*(v20 + 160) & 0x80000000) != 0 && (*(v20 + 164) & 0x80000000) != 0 && (*(v20 + 168) & 0x80000000) != 0 && !*(v20 + 152))
    {
      goto LABEL_51;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2A88 == -1)
    {
      goto LABEL_49;
    }

    goto LABEL_58;
  }

  if (a3 == 1 || a3 == 8)
  {
    if (qword_1EAFE2A88 != -1)
    {
      dispatch_once(&qword_1EAFE2A88, &unk_1F0E28AE0);
    }

    v10 = qword_1EAFE2A90;
    if (os_log_type_enabled(qword_1EAFE2A90, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67240192;
      v26 = a3;
      _os_log_impl(&dword_19B41C000, v10, OS_LOG_TYPE_DEFAULT, "Starting InertialOdometry updates with reference frame: %{public}d", buf, 8u);
    }

    v11 = sub_19B420058();
    if (*(v11 + 160) > 1 || *(v11 + 164) > 1 || *(v11 + 168) > 1 || *(v11 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2A88 != -1)
      {
        dispatch_once(&qword_1EAFE2A88, &unk_1F0E28AE0);
      }

      v12 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMOdometryManager startOdometryUpdatesPrivateUsingReferenceFrame:toQueue:withHandler:]", "CoreLocation: %s\n", v12);
      if (v12 != buf)
      {
        free(v12);
      }
    }

    *(internal + 30) = a3;
    v13 = *(internal + 34);
    if (v13 != a4)
    {

      *(internal + 34) = a4;
    }

    v14 = *(internal + 33);
    if (v14 != a5)
    {

      *(internal + 33) = objc_msgSend_copy(a5, v15, v16);
    }

    if (!*(internal + 31))
    {
      operator new();
    }

    goto LABEL_51;
  }

  if (qword_1EAFE2A88 != -1)
  {
    dispatch_once(&qword_1EAFE2A88, &unk_1F0E28AE0);
  }

  v21 = qword_1EAFE2A90;
  if (os_log_type_enabled(qword_1EAFE2A90, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v21, OS_LOG_TYPE_ERROR, "Invalid reference frame", buf, 2u);
  }

  v22 = sub_19B420058();
  if ((*(v22 + 160) & 0x80000000) == 0 || (*(v22 + 164) & 0x80000000) == 0 || (*(v22 + 168) & 0x80000000) == 0 || *(v22 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2A88 == -1)
    {
      goto LABEL_49;
    }

    goto LABEL_58;
  }

LABEL_51:
  v24 = *MEMORY[0x1E69E9840];
}

- (void)stopOdometryUpdatesPrivate
{
  v13 = *MEMORY[0x1E69E9840];
  sub_19B420D84();
  sub_19B44B9A0();
  internal = self->_internal;
  if (+[CMOdometryManager isAvailable]_0())
  {
    if (*(internal + 31))
    {
      v4 = sub_19B6F7F00();
      sub_19B426A14(v4, 0, *(internal + 31));
      v5 = *(internal + 31);
      if (v5)
      {
        (*(*v5 + 8))(v5);
      }

      *(internal + 31) = 0;
      if (qword_1EAFE2A88 != -1)
      {
        dispatch_once(&qword_1EAFE2A88, &unk_1F0E28AE0);
      }

      v6 = qword_1EAFE2A90;
      if (os_log_type_enabled(qword_1EAFE2A90, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_DEFAULT, "Stopping InertialOdometry updates", buf, 2u);
      }

      v7 = sub_19B420058();
      if (*(v7 + 160) > 1 || *(v7 + 164) > 1 || *(v7 + 168) > 1 || *(v7 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2A88 != -1)
        {
          dispatch_once(&qword_1EAFE2A88, &unk_1F0E28AE0);
        }

        v8 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 2, "[CMOdometryManager stopOdometryUpdatesPrivate]", "CoreLocation: %s\n", v8);
        if (v8 != buf)
        {
          free(v8);
        }
      }
    }

    v9 = *(internal + 34);
    if (v9)
    {

      *(internal + 34) = 0;
    }

    v10 = *(internal + 33);
    if (v10)
    {

      *(internal + 33) = 0;
    }

    internal[232] = 0;
    *(internal + 216) = 0u;
    *(internal + 200) = 0u;
    *(internal + 184) = 0u;
    *(internal + 168) = 0u;
    *(internal + 152) = 0u;
    *(internal + 136) = 0u;
    *(internal + 120) = 0u;
    *(internal + 104) = 0u;
    *(internal + 88) = 0u;
    *(internal + 72) = 0u;
    *(internal + 56) = 0u;
    *(internal + 40) = 0u;
    *(internal + 24) = 0u;
    *(internal + 8) = 0u;
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)stopBackgroundUpdatesPrivate
{
  if (+[CMOdometryManager isAvailable]_0())
  {
    objc_initWeak(&location, self);
    xpcQueue = self->_xpcQueue;
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = sub_19B681088;
    v4[3] = &unk_1E7533F88;
    objc_copyWeak(&v5, &location);
    dispatch_async(xpcQueue, v4);
    objc_destroyWeak(&v5);
    objc_destroyWeak(&location);
  }
}

- (void)enableMotionSimulationPrivate:(BOOL)a3
{
  if (+[CMOdometryManager isAvailable]_0())
  {
    objc_initWeak(&location, self);
    xpcQueue = self->_xpcQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_19B6813D4;
    block[3] = &unk_1E7533FB0;
    objc_copyWeak(&v7, &location);
    v8 = a3;
    dispatch_async(xpcQueue, block);
    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
  }
}

@end