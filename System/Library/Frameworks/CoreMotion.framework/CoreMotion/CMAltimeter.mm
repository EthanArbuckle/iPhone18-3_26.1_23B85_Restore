@interface CMAltimeter
+ (BOOL)isAbsoluteAltitudeAvailable;
+ (BOOL)isCompanionRelativeElevationAvailable;
+ (BOOL)isRelativeAltitudeAvailable;
+ (BOOL)isSignificantElevationAvailable;
+ (void)initialize;
- (CMAltimeter)init;
- (id)initPrivate;
- (void)dealloc;
- (void)deallocPrivate;
- (void)onFilteredPressure:(const Sample *)a3;
- (void)queryElevationProfileFromDate:(id)a3 toDate:(id)a4 withBatchSize:(unint64_t)a5 withHandler:(id)a6;
- (void)querySignificantElevationChangeFromDate:(id)a3 toDate:(id)a4 withHandler:(id)a5;
- (void)startAbsoluteAltitudeUpdatesToQueue:(NSOperationQueue *)queue withHandler:(CMAbsoluteAltitudeHandler)handler;
- (void)startCompanionRelativeElevationUpdatesToQueue:(id)a3 withHandler:(id)a4;
- (void)startRelativeAltitudeUpdatesPrivateToQueue:(id)a3 withHandler:(id)a4;
- (void)startRelativeAltitudeUpdatesToQueue:(NSOperationQueue *)queue withHandler:(CMAltitudeHandler)handler;
- (void)startSignificantElevationUpdatesWithHandler:(id)a3;
- (void)stopRelativeAltitudeUpdates;
- (void)stopRelativeAltitudeUpdatesPrivate;
- (void)stopSignificantElevationUpdates;
@end

@implementation CMAltimeter

+ (void)initialize
{
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
  }
}

- (CMAltimeter)init
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3052000000;
  v10 = sub_19B428B40;
  v11 = sub_19B4290A4;
  v12 = 0;
  v3 = sub_19B420D84();
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_19B7748C4;
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
  v4.super_class = CMAltimeter;
  v2 = [(CMAltimeter *)&v4 init];
  if (v2)
  {
    v2->_internal = objc_alloc_init(CMAltimeterInternal);
  }

  return v2;
}

- (void)dealloc
{
  v6[0] = 0;
  v6[1] = v6;
  v6[2] = 0x3052000000;
  v6[3] = sub_19B428B40;
  v6[4] = sub_19B4290A4;
  v6[5] = self;
  v3 = sub_19B420D84();
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_19B774A4C;
  v5[3] = &unk_1E7533730;
  v5[4] = v6;
  sub_19B420C9C(v3, v5);
  v4.receiver = self;
  v4.super_class = CMAltimeter;
  [(CMAltimeter *)&v4 dealloc];
  _Block_object_dispose(v6, 8);
}

- (void)deallocPrivate
{
  internal = self->_internal;
  v4 = objc_autoreleasePoolPush();
  objc_msgSend_cancelAllOperations(internal[3], v5, v6);
  objc_msgSend_stopRelativeAltitudeUpdatesPrivate(self, v7, v8);

  objc_autoreleasePoolPop(v4);
}

+ (BOOL)isRelativeAltitudeAvailable
{
  sub_19B421798();
  if ((sub_19B439CEC() & 0xFFFFFFFE) == 0x32)
  {
    return 0;
  }

  if (qword_1EAFE3A78 != -1)
  {
    dispatch_once(&qword_1EAFE3A78, &unk_1F0E28E80);
  }

  return qword_1EAFE3A98 != 0;
}

+ (BOOL)isSignificantElevationAvailable
{
  sub_19B421798();
  sub_19B421798();
  result = 0;
  if (sub_19B43B6EC())
  {
    sub_19B421798();
    if ((sub_19B421620() & 0x10000000) != 0)
    {
      return 1;
    }
  }

  return result;
}

- (void)startRelativeAltitudeUpdatesToQueue:(NSOperationQueue *)queue withHandler:(CMAltitudeHandler)handler
{
  v23 = *MEMORY[0x1E69E9840];
  if (objc_msgSend_isRelativeAltitudeAvailable(CMAltimeter, a2, queue))
  {
    if (objc_msgSend__bundleBeforeTCCCheck(CMAltimeterInternal, v7, v8) && (v11 = objc_msgSend_mainBundle(MEMORY[0x1E696AAE8], v9, v10), v14 = objc_msgSend_infoDictionary(v11, v12, v13), !objc_msgSend_objectForKeyedSubscript_(v14, v15, @"NSMotionUsageDescription")))
    {
      if (qword_1EAFE2850 != -1)
      {
        dispatch_once(&qword_1EAFE2850, &unk_1F0E3B708);
      }

      v17 = qword_1EAFE2870;
      if (os_log_type_enabled(qword_1EAFE2870, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v17, OS_LOG_TYPE_ERROR, "App does not have NSMotionUsageDescription, do not vend relative altimeter", buf, 2u);
      }

      v18 = sub_19B420058();
      if ((*(v18 + 160) & 0x80000000) == 0 || (*(v18 + 164) & 0x80000000) == 0 || (*(v18 + 168) & 0x80000000) == 0 || *(v18 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2850 != -1)
        {
          dispatch_once(&qword_1EAFE2850, &unk_1F0E3B708);
        }

        v21 = 0;
        v19 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 0, "[CMAltimeter startRelativeAltitudeUpdatesToQueue:withHandler:]", "CoreLocation: %s\n", v19);
        if (v19 != buf)
        {
          free(v19);
        }
      }
    }

    else
    {
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = sub_19B774DB4;
      v20[3] = &unk_1E75344C0;
      v20[5] = queue;
      v20[6] = handler;
      v20[4] = self;
      objc_msgSend_tccServiceMotionAccessWithBlock_(CMMotionUtils, v9, v20);
    }
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)stopRelativeAltitudeUpdates
{
  v20 = *MEMORY[0x1E69E9840];
  if (objc_msgSend_isRelativeAltitudeAvailable(CMAltimeter, a2, v2))
  {
    if (objc_msgSend__bundleBeforeTCCCheck(CMAltimeterInternal, v4, v5) && (v8 = objc_msgSend_mainBundle(MEMORY[0x1E696AAE8], v6, v7), v11 = objc_msgSend_infoDictionary(v8, v9, v10), !objc_msgSend_objectForKeyedSubscript_(v11, v12, @"NSMotionUsageDescription")))
    {
      if (qword_1EAFE2850 != -1)
      {
        dispatch_once(&qword_1EAFE2850, &unk_1F0E3B708);
      }

      v14 = qword_1EAFE2870;
      if (os_log_type_enabled(qword_1EAFE2870, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v14, OS_LOG_TYPE_DEFAULT, "App does not have NSMotionUsageDescription, do not vend relative altimeter", buf, 2u);
      }

      v15 = sub_19B420058();
      if (*(v15 + 160) > 1 || *(v15 + 164) > 1 || *(v15 + 168) > 1 || *(v15 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2850 != -1)
        {
          dispatch_once(&qword_1EAFE2850, &unk_1F0E3B708);
        }

        v18 = 0;
        v16 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 2, "[CMAltimeter stopRelativeAltitudeUpdates]", "CoreLocation: %s\n", v16);
        if (v16 != buf)
        {
          free(v16);
        }
      }
    }

    else
    {
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = sub_19B775108;
      v17[3] = &unk_1E7532988;
      v17[4] = self;
      objc_msgSend_tccServiceMotionAccessWithBlock_(CMMotionUtils, v6, v17);
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)startSignificantElevationUpdatesWithHandler:(id)a3
{
  if (!a3)
  {
    v6 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, 0);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v6, v7, a2, self, @"CMAltimeter.mm", 984, @"Invalid parameter not satisfying: %@", @"handler");
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_19B77526C;
  v8[3] = &unk_1E7532B68;
  v8[4] = self;
  v8[5] = a3;
  objc_msgSend_tccServiceMotionAccessWithBlock_(CMMotionUtils, a2, v8);
}

- (void)stopSignificantElevationUpdates
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = sub_19B7752F0;
  v2[3] = &unk_1E7532988;
  v2[4] = self;
  objc_msgSend_tccServiceMotionAccessWithBlock_(CMMotionUtils, a2, v2);
}

- (void)querySignificantElevationChangeFromDate:(id)a3 toDate:(id)a4 withHandler:(id)a5
{
  if (a3)
  {
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_6:
    v12 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, a3);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v12, v13, a2, self, @"CMAltimeter.mm", 1000, @"Invalid parameter not satisfying: %@", @"toDate");
    if (a5)
    {
      goto LABEL_4;
    }

LABEL_7:
    v14 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, a3);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v14, v15, a2, self, @"CMAltimeter.mm", 1001, @"Invalid parameter not satisfying: %@", @"handler");
    goto LABEL_4;
  }

  v10 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, 0);
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v10, v11, a2, self, @"CMAltimeter.mm", 999, @"Invalid parameter not satisfying: %@", @"fromDate");
  if (!a4)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (!a5)
  {
    goto LABEL_7;
  }

LABEL_4:
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = sub_19B775460;
  v16[3] = &unk_1E7533678;
  v16[4] = self;
  v16[5] = a3;
  v16[6] = a4;
  v16[7] = a5;
  objc_msgSend_tccServiceMotionAccessWithBlock_(CMMotionUtils, a2, v16);
}

- (void)startRelativeAltitudeUpdatesPrivateToQueue:(id)a3 withHandler:(id)a4
{
  if (a3)
  {
    if (a4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v13 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, 0);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v13, v14, a2, self, @"CMAltimeter.mm", 1016, @"Invalid parameter not satisfying: %@", @"queue");
    if (a4)
    {
      goto LABEL_3;
    }
  }

  v15 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, a3);
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v15, v16, a2, self, @"CMAltimeter.mm", 1017, @"Invalid parameter not satisfying: %@", @"handler");
LABEL_3:
  internal = self->_internal;
  if (objc_msgSend_isRelativeAltitudeAvailable(CMAltimeter, a2, a3))
  {
    v9 = internal[3];
    if (v9 != a3)
    {

      internal[3] = a3;
    }

    v10 = internal[2];
    if (v10 != a4)
    {

      internal[2] = objc_msgSend_copy(a4, v11, v12);
    }

    if (!internal[1])
    {
      operator new();
    }
  }
}

- (void)stopRelativeAltitudeUpdatesPrivate
{
  internal = self->_internal;
  if (!objc_msgSend_isRelativeAltitudeAvailable(CMAltimeter, a2, v2))
  {
    return;
  }

  v4 = *(internal + 9);
  v5 = *(internal + 10);
  *(internal + 13) = 0;
  v6 = (v5 - v4) >> 3;
  if (v6 >= 3)
  {
    do
    {
      operator delete(*v4);
      v7 = *(internal + 10);
      v4 = (*(internal + 9) + 8);
      *(internal + 9) = v4;
      v6 = (v7 - v4) >> 3;
    }

    while (v6 > 2);
  }

  if (v6 == 1)
  {
    v8 = 512;
    goto LABEL_8;
  }

  if (v6 == 2)
  {
    v8 = 1024;
LABEL_8:
    *(internal + 12) = v8;
  }

  if (*(internal + 1))
  {
    if (qword_1EAFE3A78 != -1)
    {
      dispatch_once(&qword_1EAFE3A78, &unk_1F0E28E80);
    }

    sub_19B426A14(qword_1EAFE3A98, 0, *(internal + 1));
    v9 = *(internal + 1);
    if (v9)
    {
      (*(*v9 + 8))(v9);
    }

    *(internal + 1) = 0;
  }

  v10 = *(internal + 3);
  if (v10)
  {

    *(internal + 3) = 0;
  }

  v11 = *(internal + 2);
  if (v11)
  {

    *(internal + 2) = 0;
  }

  *(internal + 52) = 0;
}

- (void)onFilteredPressure:(const Sample *)a3
{
  __p[205] = *MEMORY[0x1E69E9840];
  internal = self->_internal;
  v5 = *(internal + 13);
  if (v5 >= 3)
  {
    ++*(internal + 12);
    *(internal + 13) = v5 - 1;
    sub_19B420490((internal + 16), 1);
  }

  sub_19B420408((internal + 16), &a3->acceleration.x);
  v6 = *(internal + 9);
  if (*(internal + 10) == v6)
  {
    memset(__p, 0, 24);
  }

  else
  {
    v7 = *(internal + 12);
    v8 = (v7 >> 7) & 0x1FFFFFFFFFFFFF8;
    v9 = *(v6 + v8) + 4 * (v7 & 0x3FF);
    v10 = *(internal + 13) + v7;
    v11 = (v10 >> 7) & 0x1FFFFFFFFFFFFF8;
    v12 = *(v6 + v11) + 4 * (v10 & 0x3FF);
    memset(__p, 0, 24);
    if (v12 != v9)
    {
      v13 = ((v12 - *(v6 + v11)) >> 2) + ((v11 - v8) << 7);
      v14 = v9 - *(v6 + v8);
      if (v13 != v14 >> 2)
      {
        sub_19B4C4F6C(__p, v13 - (v14 >> 2));
      }
    }
  }

  v15 = sub_19B66BB08(0, 0);
  internal[14] = v15;
  if ((sub_19B421620() & 0x2000000000) == 0 && internal[14] <= 150.0)
  {
    if ((internal[13] & 1) == 0)
    {
      *(internal + 52) = 1;
      *(internal + 2) = *&a3->timestamp;
      internal[12] = (1.0 - powf((v15 * 1000.0) / 101320.0, 0.19026)) * 44331.0;
    }

    if (*(internal + 3) && *(internal + 2))
    {
      v16 = objc_autoreleasePoolPush();
      v17 = [CMAltitudeData alloc];
      *&v18 = v15 * 1000.0;
      *&v19 = internal[12];
      v22 = objc_msgSend_initWithAltitude_andTimestamp_atBaseAltitude_(v17, v20, v21, v18, a3->timestamp, v19);
      v24 = *(internal + 2);
      v23 = *(internal + 3);
      v56[0] = MEMORY[0x1E69E9820];
      v56[1] = 3221225472;
      v56[2] = sub_19B775C1C;
      v56[3] = &unk_1E7532B90;
      v56[4] = v22;
      v56[5] = v24;
      objc_msgSend_addOperationWithBlock_(v23, v25, v56);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E2A500);
      }

      v26 = off_1ED71C828;
      if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_DEBUG))
      {
        v29 = objc_msgSend_relativeAltitude(v22, v27, v28);
        objc_msgSend_doubleValue(v29, v30, v31);
        v33 = v32;
        v36 = objc_msgSend_pressure(v22, v34, v35);
        objc_msgSend_doubleValue(v36, v37, v38);
        LODWORD(__p[0]) = 134218240;
        *(__p + 4) = v33;
        WORD2(__p[1]) = 2048;
        *(&__p[1] + 6) = v39;
        _os_log_impl(&dword_19B41C000, v26, OS_LOG_TYPE_DEBUG, "relativeAltitude,%f,pressure,%f", __p, 0x16u);
      }

      v40 = sub_19B420058();
      if (*(v40 + 160) > 1 || *(v40 + 164) > 1 || *(v40 + 168) > 1 || *(v40 + 152))
      {
        bzero(__p, 0x65CuLL);
        if (qword_1ED71C820 != -1)
        {
          dispatch_once(&qword_1ED71C820, &unk_1F0E2A500);
        }

        v43 = objc_msgSend_relativeAltitude(v22, v41, v42);
        objc_msgSend_doubleValue(v43, v44, v45);
        v47 = v46;
        v50 = objc_msgSend_pressure(v22, v48, v49);
        objc_msgSend_doubleValue(v50, v51, v52);
        v57 = 134218240;
        v58 = v47;
        v59 = 2048;
        v60 = v53;
        v54 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 2, "[CMAltimeter onFilteredPressure:]", "CoreLocation: %s\n", v54);
        if (v54 != __p)
        {
          free(v54);
        }
      }

      objc_autoreleasePoolPop(v16);
    }
  }

  v55 = *MEMORY[0x1E69E9840];
}

+ (BOOL)isAbsoluteAltitudeAvailable
{
  v8 = *MEMORY[0x1E69E9840];
  if ((sub_19B423E34() & 0x10) != 0 && (sub_19B421798(), (sub_19B421620() & 0x10000000000000) != 0))
  {
    result = 1;
  }

  else
  {
    if (qword_1EAFE2850 != -1)
    {
      dispatch_once(&qword_1EAFE2850, &unk_1F0E3B708);
    }

    v2 = qword_1EAFE2870;
    if (os_log_type_enabled(qword_1EAFE2870, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v2, OS_LOG_TYPE_DEFAULT, "altimeter not supported", buf, 2u);
    }

    v3 = sub_19B420058();
    if (*(v3 + 160) > 1 || *(v3 + 164) > 1 || *(v3 + 168) > 1 || *(v3 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2850 != -1)
      {
        dispatch_once(&qword_1EAFE2850, &unk_1F0E3B708);
      }

      v4 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "+[CMAltimeter isAbsoluteAltitudeAvailable]", "CoreLocation: %s\n", v4);
      if (v4 != buf)
      {
        free(v4);
      }
    }

    result = 0;
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)startAbsoluteAltitudeUpdatesToQueue:(NSOperationQueue *)queue withHandler:(CMAbsoluteAltitudeHandler)handler
{
  if (objc_msgSend_isAbsoluteAltitudeAvailable(CMAltimeter, a2, queue))
  {
    internal = self->_internal;

    MEMORY[0x1EEE66B58](internal, sel__startAbsoluteAltitudeUpdatesToQueue_withHandler_, queue);
  }
}

+ (BOOL)isCompanionRelativeElevationAvailable
{
  v8 = *MEMORY[0x1E69E9840];
  if ((sub_19B423E34() & 0x10) != 0 && (sub_19B421798(), (sub_19B421620() & 0x10000000000000) != 0))
  {
    result = 1;
  }

  else
  {
    if (qword_1EAFE2850 != -1)
    {
      dispatch_once(&qword_1EAFE2850, &unk_1F0E3B708);
    }

    v2 = qword_1EAFE2870;
    if (os_log_type_enabled(qword_1EAFE2870, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v2, OS_LOG_TYPE_ERROR, "altimeter not supported", buf, 2u);
    }

    v3 = sub_19B420058();
    if ((*(v3 + 160) & 0x80000000) == 0 || (*(v3 + 164) & 0x80000000) == 0 || (*(v3 + 168) & 0x80000000) == 0 || *(v3 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2850 != -1)
      {
        dispatch_once(&qword_1EAFE2850, &unk_1F0E3B708);
      }

      v4 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "+[CMAltimeter isCompanionRelativeElevationAvailable]", "CoreLocation: %s\n", v4);
      if (v4 != buf)
      {
        free(v4);
      }
    }

    result = 0;
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)startCompanionRelativeElevationUpdatesToQueue:(id)a3 withHandler:(id)a4
{
  if (objc_msgSend_isCompanionRelativeElevationAvailable(CMAltimeter, a2, a3))
  {
    internal = self->_internal;

    MEMORY[0x1EEE66B58](internal, sel__startCompanionRelativeElevationUpdatesToQueue_withHandler_, a3);
  }
}

- (void)queryElevationProfileFromDate:(id)a3 toDate:(id)a4 withBatchSize:(unint64_t)a5 withHandler:(id)a6
{
  if (a3)
  {
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_6:
    v14 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, a3);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v14, v15, a2, self, @"CMAltimeter.mm", 1193, @"Invalid parameter not satisfying: %@", @"toDate");
    if (a6)
    {
      goto LABEL_4;
    }

LABEL_7:
    v16 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, a3);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v16, v17, a2, self, @"CMAltimeter.mm", 1194, @"Invalid parameter not satisfying: %@", @"handler");
    goto LABEL_4;
  }

  v12 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, 0);
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v12, v13, a2, self, @"CMAltimeter.mm", 1192, @"Invalid parameter not satisfying: %@", @"fromDate");
  if (!a4)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (!a6)
  {
    goto LABEL_7;
  }

LABEL_4:
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = sub_19B776218;
  v18[3] = &unk_1E7535F38;
  v18[4] = self;
  v18[5] = a3;
  v18[7] = a6;
  v18[8] = a5;
  v18[6] = a4;
  objc_msgSend_tccServiceMotionAccessWithBlock_(CMMotionUtils, a2, v18);
}

@end