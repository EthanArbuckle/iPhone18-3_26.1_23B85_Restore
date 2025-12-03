@interface CMAltimeterInternal
+ (BOOL)_bundleBeforeTCCCheck;
+ (BOOL)_bundleBeforeTCCCheck:(id)check;
- (CMAltimeterInternal)init;
- (id).cxx_construct;
- (void)_handleAbsoluteAltitudeUpdate:(shared_ptr<CLConnectionMessage>)update;
- (void)_handleCompanionRelativeElevationUpdate:(shared_ptr<CLConnectionMessage>)update;
- (void)_queryElevationProfileFromDate:(id)date toDate:(id)toDate withBatchSize:(unint64_t)size fromRecordId:(int)id withHandler:(id)handler;
- (void)_queryElevationProfileFromDate:(id)date toDate:(id)toDate withBatchSize:(unint64_t)size withHandler:(id)handler;
- (void)_querySignificantElevationChangeFromDate:(id)date toDate:(id)toDate withHandler:(id)handler;
- (void)_releaseHandlerObjects;
- (void)_startAbsoluteAltitudeUpdatesToQueue:(id)queue withHandler:(id)handler;
- (void)_startCompanionRelativeElevationUpdatesToQueue:(id)queue withHandler:(id)handler;
- (void)_startElevationUpdatesWithHandler:(id)handler;
- (void)_startRelativeAltitudeUpdates;
- (void)_startSignificantElevationUpdatesWithHandler:(id)handler;
- (void)_stopAbsoluteAltitudeUpdates;
- (void)_stopCompanionRelativeElevationUpdates;
- (void)_stopElevationUpdates;
- (void)_stopRelativeAltitudeUpdates;
- (void)_stopSignificantElevationUpdates;
- (void)_teardown;
- (void)dealloc;
@end

@implementation CMAltimeterInternal

- (CMAltimeterInternal)init
{
  v5.receiver = self;
  v5.super_class = CMAltimeterInternal;
  v2 = [(CMAltimeterInternal *)&v5 init];
  v3 = v2;
  if (v2)
  {
    *(&v2->fBaseAltimeterSample.acceleration + 12) = 0;
    v2->fRelativeAltimeterHandler = 0;
    v2->fRelativeAltimeterQueue = 0;
    v2->fFilteredPressureDispatcher = 0;
    v2->fPressureSamples.__size_ = dispatch_queue_create("com.apple.CoreMotion.CMAltimeterInternalQueue", 0);
    v3->fInternalQueue = dispatch_queue_create("com.apple.CoreMotion.CMAltimeterAppQueue", 0);
    operator new();
  }

  return 0;
}

- (void)dealloc
{
  _Block_release(self->fLocationdConnection);
  self->fLocationdConnection = 0;
  _Block_release(self->fHandler);
  self->fHandler = 0;
  dispatch_release(self->fPressureSamples.__size_);
  self->fPressureSamples.__size_ = 0;
  dispatch_release(self->fInternalQueue);
  self->fInternalQueue = 0;
  v3.receiver = self;
  v3.super_class = CMAltimeterInternal;
  [(CMAltimeterInternal *)&v3 dealloc];
}

- (void)_teardown
{
  fAppQueue = self->fAppQueue;
  sub_19B428B50(&__p, "kCLConnectionMessageSignificantElevationUpdate");
  CLConnectionClient::setHandlerForMessage();
  if (v6 < 0)
  {
    operator delete(__p);
  }

  if (self->fAppQueue)
  {
    v4 = MEMORY[0x19EAE71C0]();
    MEMORY[0x19EAE76F0](v4, 0xB0C40BC2CC919);
  }

  self->fAppQueue = 0;
}

- (void)_startElevationUpdatesWithHandler:(id)handler
{
  size = self->fPressureSamples.__size_;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_19B7711C4;
  v4[3] = &unk_1E7532B68;
  v4[4] = self;
  v4[5] = handler;
  dispatch_async(size, v4);
}

- (void)_stopElevationUpdates
{
  size = self->fPressureSamples.__size_;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B771378;
  block[3] = &unk_1E7532988;
  block[4] = self;
  dispatch_async(size, block);
}

- (void)_startSignificantElevationUpdatesWithHandler:(id)handler
{
  size = self->fPressureSamples.__size_;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_19B77152C;
  v4[3] = &unk_1E7532B68;
  v4[4] = self;
  v4[5] = handler;
  dispatch_async(size, v4);
}

- (void)_stopSignificantElevationUpdates
{
  size = self->fPressureSamples.__size_;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B7716E0;
  block[3] = &unk_1E7532988;
  block[4] = self;
  dispatch_async(size, block);
}

- (void)_querySignificantElevationChangeFromDate:(id)date toDate:(id)toDate withHandler:(id)handler
{
  size = self->fPressureSamples.__size_;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_19B771884;
  v6[3] = &unk_1E7533678;
  v6[4] = self;
  v6[5] = date;
  v6[6] = toDate;
  v6[7] = handler;
  dispatch_async(size, v6);
}

- (void)_queryElevationProfileFromDate:(id)date toDate:(id)toDate withBatchSize:(unint64_t)size fromRecordId:(int)id withHandler:(id)handler
{
  size = self->fPressureSamples.__size_;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_19B772160;
  v8[3] = &unk_1E7535F10;
  v8[4] = date;
  v8[5] = toDate;
  v8[7] = handler;
  v8[8] = size;
  idCopy = id;
  v8[6] = self;
  dispatch_async(size, v8);
}

- (void)_queryElevationProfileFromDate:(id)date toDate:(id)toDate withBatchSize:(unint64_t)size withHandler:(id)handler
{
  size = self->fPressureSamples.__size_;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B772A30;
  block[3] = &unk_1E7535F38;
  block[4] = self;
  block[5] = date;
  block[7] = handler;
  block[8] = size;
  block[6] = toDate;
  dispatch_async(size, block);
}

+ (BOOL)_bundleBeforeTCCCheck
{
  v3 = objc_msgSend_mainBundle(MEMORY[0x1E696AAE8], a2, v2);
  v6 = objc_msgSend_infoDictionary(v3, v4, v5);
  v8 = objc_msgSend_objectForKeyedSubscript_(v6, v7, @"DTPlatformVersion");

  return MEMORY[0x1EEE66B58](CMAltimeterInternal, sel__bundleBeforeTCCCheck_, v8);
}

+ (BOOL)_bundleBeforeTCCCheck:(id)check
{
  v33 = *MEMORY[0x1E69E9840];
  if (check)
  {
    if (qword_1EAFE2850 != -1)
    {
      dispatch_once(&qword_1EAFE2850, &unk_1F0E3B708);
    }

    v4 = qword_1EAFE2870;
    if (os_log_type_enabled(qword_1EAFE2870, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v32 = objc_msgSend_UTF8String(check, v5, v6);
      _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_DEBUG, "app sdk version, %s", buf, 0xCu);
    }

    v7 = sub_19B420058();
    if (*(v7 + 160) > 1 || *(v7 + 164) > 1 || *(v7 + 168) > 1 || *(v7 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2850 != -1)
      {
        dispatch_once(&qword_1EAFE2850, &unk_1F0E3B708);
      }

      objc_msgSend_UTF8String(check, v9, v10);
      v11 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "+[CMAltimeterInternal _bundleBeforeTCCCheck:]", "CoreLocation: %s\n", v11);
      if (v11 != buf)
      {
        free(v11);
      }
    }

    v12 = objc_msgSend_componentsSeparatedByString_(check, v8, @".");
    if (objc_msgSend_count(v12, v13, v14))
    {
      v16 = objc_msgSend_objectAtIndexedSubscript_(v12, v15, 0);
      if (objc_msgSend_intValue(v16, v17, v18) >= 17)
      {
        v22 = objc_msgSend_objectAtIndexedSubscript_(v12, v19, 0);
        if (objc_msgSend_intValue(v22, v23, v24) > 17)
        {
          result = 0;
          goto LABEL_17;
        }

        if (objc_msgSend_count(v12, v25, v26) >= 2)
        {
          v28 = objc_msgSend_objectAtIndexedSubscript_(v12, v27, 1);
          result = objc_msgSend_intValue(v28, v29, v30) < 5;
          goto LABEL_17;
        }
      }
    }
  }

  result = 1;
LABEL_17:
  v21 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)_startRelativeAltitudeUpdates
{
  if ((sub_19B421620() & 0x2000000000) != 0)
  {
    size = self->fPressureSamples.__size_;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_19B772D84;
    block[3] = &unk_1E7532988;
    block[4] = self;
    dispatch_async(size, block);
  }
}

- (void)_stopRelativeAltitudeUpdates
{
  size = self->fPressureSamples.__size_;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B772F10;
  block[3] = &unk_1E7532988;
  block[4] = self;
  dispatch_async(size, block);
}

- (void)_releaseHandlerObjects
{
  *&self->fStopRelativeAltitudeUpdates = 0;
  _Block_release(self->fAbsoluteAltitudeClientQueue);
  self->fAbsoluteAltitudeClientQueue = 0;

  self->fAbsoluteAltitudeClientHandler = 0;
  _Block_release(self->fCompanionRelativeElevationClientQueue);
  self->fCompanionRelativeElevationClientQueue = 0;
}

- (void)_startAbsoluteAltitudeUpdatesToQueue:(id)queue withHandler:(id)handler
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_19B773118;
  v4[3] = &unk_1E7532C80;
  v4[5] = self;
  v4[6] = handler;
  v4[4] = queue;
  objc_msgSend_tccServiceMotionAccessWithBlock_(CMMotionUtils, a2, v4);
}

- (void)_stopAbsoluteAltitudeUpdates
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = sub_19B773358;
  v2[3] = &unk_1E7532988;
  v2[4] = self;
  objc_msgSend_tccServiceMotionAccessWithBlock_(CMMotionUtils, a2, v2);
}

- (void)_handleAbsoluteAltitudeUpdate:(shared_ptr<CLConnectionMessage>)update
{
  v38 = *MEMORY[0x1E69E9840];
  if (!*update.var0)
  {
    if (qword_1EAFE2840 != -1)
    {
      dispatch_once(&qword_1EAFE2840, &unk_1F0E3B6E8);
    }

    v24 = qword_1EAFE2860;
    if (os_log_type_enabled(qword_1EAFE2860, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v24, OS_LOG_TYPE_ERROR, "Error; NULL message received in AbsoluteAltimeter update", buf, 2u);
    }

    v25 = sub_19B420058();
    if ((*(v25 + 160) & 0x80000000) != 0 && (*(v25 + 164) & 0x80000000) != 0 && (*(v25 + 168) & 0x80000000) != 0 && !*(v25 + 152))
    {
      goto LABEL_37;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2840 != -1)
    {
      dispatch_once(&qword_1EAFE2840, &unk_1F0E3B6E8);
    }

    LOWORD(v34) = 0;
LABEL_35:
    v23 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 0, "[CMAltimeterInternal _handleAbsoluteAltitudeUpdate:]", "CoreLocation: %s\n", v23);
    if (v23 == buf)
    {
      goto LABEL_37;
    }

    goto LABEL_36;
  }

  var0 = update.var0;
  v5 = MEMORY[0x1E695DFD8];
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v10 = objc_msgSend_setWithObjects_(v5, v9, v6, v7, v8, 0);
  DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*var0, v10);
  if (!DictionaryOfClasses)
  {
    if (qword_1EAFE2840 != -1)
    {
      dispatch_once(&qword_1EAFE2840, &unk_1F0E3B6E8);
    }

    v26 = qword_1EAFE2860;
    if (os_log_type_enabled(qword_1EAFE2860, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v26, OS_LOG_TYPE_ERROR, "Error; NULL dictionary received in AbsoluteAltimeter update", buf, 2u);
    }

    v27 = sub_19B420058();
    if ((*(v27 + 160) & 0x80000000) != 0 && (*(v27 + 164) & 0x80000000) != 0 && (*(v27 + 168) & 0x80000000) != 0 && !*(v27 + 152))
    {
      goto LABEL_37;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2840 != -1)
    {
      dispatch_once(&qword_1EAFE2840, &unk_1F0E3B6E8);
    }

    LOWORD(v34) = 0;
    goto LABEL_35;
  }

  v13 = DictionaryOfClasses;
  v14 = objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v12, @"CMErrorMessage");
  if (v14)
  {
    v16 = v14;
    if (qword_1EAFE2840 != -1)
    {
      dispatch_once(&qword_1EAFE2840, &unk_1F0E3B6E8);
    }

    v17 = qword_1EAFE2860;
    if (os_log_type_enabled(qword_1EAFE2860, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v37 = objc_msgSend_intValue(v16, v18, v19);
      _os_log_impl(&dword_19B41C000, v17, OS_LOG_TYPE_ERROR, "Error %d received in AbsoluteAltimeter update", buf, 8u);
    }

    v20 = sub_19B420058();
    if ((*(v20 + 160) & 0x80000000) != 0 && (*(v20 + 164) & 0x80000000) != 0 && (*(v20 + 168) & 0x80000000) != 0 && !*(v20 + 152))
    {
      goto LABEL_37;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2840 != -1)
    {
      dispatch_once(&qword_1EAFE2840, &unk_1F0E3B6E8);
    }

    v34 = 67109120;
    v35 = objc_msgSend_intValue(v16, v21, v22);
    v23 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 0, "[CMAltimeterInternal _handleAbsoluteAltitudeUpdate:]", "CoreLocation: %s\n", v23);
    if (v23 == buf)
    {
      goto LABEL_37;
    }

LABEL_36:
    free(v23);
    goto LABEL_37;
  }

  v29 = objc_msgSend_objectForKeyedSubscript_(v13, v15, @"CMAbsoluteAltitudeKey");
  if (v29)
  {
    size = self->fPressureSamples.__size_;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_19B773AD4;
    block[3] = &unk_1E7532A00;
    block[4] = self;
    block[5] = v29;
    dispatch_async(size, block);
    goto LABEL_37;
  }

  if (qword_1EAFE2840 != -1)
  {
    dispatch_once(&qword_1EAFE2840, &unk_1F0E3B6E8);
  }

  v31 = qword_1EAFE2860;
  if (os_log_type_enabled(qword_1EAFE2860, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v31, OS_LOG_TYPE_ERROR, "Error; NULL data received in AbsoluteAltimeter update", buf, 2u);
  }

  v32 = sub_19B420058();
  if ((*(v32 + 160) & 0x80000000) == 0 || (*(v32 + 164) & 0x80000000) == 0 || (*(v32 + 168) & 0x80000000) == 0 || *(v32 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2840 != -1)
    {
      dispatch_once(&qword_1EAFE2840, &unk_1F0E3B6E8);
    }

    LOWORD(v34) = 0;
    goto LABEL_35;
  }

LABEL_37:
  v28 = *MEMORY[0x1E69E9840];
}

- (void)_startCompanionRelativeElevationUpdatesToQueue:(id)queue withHandler:(id)handler
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_19B773C68;
  v4[3] = &unk_1E7532C80;
  v4[5] = self;
  v4[6] = handler;
  v4[4] = queue;
  objc_msgSend_tccServiceMotionAccessWithBlock_(CMMotionUtils, a2, v4);
}

- (void)_stopCompanionRelativeElevationUpdates
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = sub_19B773E9C;
  v2[3] = &unk_1E7532988;
  v2[4] = self;
  objc_msgSend_tccServiceMotionAccessWithBlock_(CMMotionUtils, a2, v2);
}

- (void)_handleCompanionRelativeElevationUpdate:(shared_ptr<CLConnectionMessage>)update
{
  v38 = *MEMORY[0x1E69E9840];
  if (!*update.var0)
  {
    if (qword_1EAFE2850 != -1)
    {
      dispatch_once(&qword_1EAFE2850, &unk_1F0E3B708);
    }

    v24 = qword_1EAFE2870;
    if (os_log_type_enabled(qword_1EAFE2870, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v24, OS_LOG_TYPE_ERROR, "Error; NULL message received in CompanionRelativeElevation update", buf, 2u);
    }

    v25 = sub_19B420058();
    if ((*(v25 + 160) & 0x80000000) != 0 && (*(v25 + 164) & 0x80000000) != 0 && (*(v25 + 168) & 0x80000000) != 0 && !*(v25 + 152))
    {
      goto LABEL_37;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2850 != -1)
    {
      dispatch_once(&qword_1EAFE2850, &unk_1F0E3B708);
    }

    LOWORD(v34) = 0;
LABEL_35:
    v23 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 0, "[CMAltimeterInternal _handleCompanionRelativeElevationUpdate:]", "CoreLocation: %s\n", v23);
    if (v23 == buf)
    {
      goto LABEL_37;
    }

    goto LABEL_36;
  }

  var0 = update.var0;
  v5 = MEMORY[0x1E695DFD8];
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v10 = objc_msgSend_setWithObjects_(v5, v9, v6, v7, v8, 0);
  DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*var0, v10);
  if (!DictionaryOfClasses)
  {
    if (qword_1EAFE2850 != -1)
    {
      dispatch_once(&qword_1EAFE2850, &unk_1F0E3B708);
    }

    v26 = qword_1EAFE2870;
    if (os_log_type_enabled(qword_1EAFE2870, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v26, OS_LOG_TYPE_ERROR, "Error; NULL dictionary received in CompanionRelativeElevation update", buf, 2u);
    }

    v27 = sub_19B420058();
    if ((*(v27 + 160) & 0x80000000) != 0 && (*(v27 + 164) & 0x80000000) != 0 && (*(v27 + 168) & 0x80000000) != 0 && !*(v27 + 152))
    {
      goto LABEL_37;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2850 != -1)
    {
      dispatch_once(&qword_1EAFE2850, &unk_1F0E3B708);
    }

    LOWORD(v34) = 0;
    goto LABEL_35;
  }

  v13 = DictionaryOfClasses;
  v14 = objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v12, @"CMErrorMessage");
  if (v14)
  {
    v16 = v14;
    if (qword_1EAFE2850 != -1)
    {
      dispatch_once(&qword_1EAFE2850, &unk_1F0E3B708);
    }

    v17 = qword_1EAFE2870;
    if (os_log_type_enabled(qword_1EAFE2870, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v37 = objc_msgSend_intValue(v16, v18, v19);
      _os_log_impl(&dword_19B41C000, v17, OS_LOG_TYPE_ERROR, "Error %d received in CompanionRelativeElevation update", buf, 8u);
    }

    v20 = sub_19B420058();
    if ((*(v20 + 160) & 0x80000000) != 0 && (*(v20 + 164) & 0x80000000) != 0 && (*(v20 + 168) & 0x80000000) != 0 && !*(v20 + 152))
    {
      goto LABEL_37;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2850 != -1)
    {
      dispatch_once(&qword_1EAFE2850, &unk_1F0E3B708);
    }

    v34 = 67109120;
    v35 = objc_msgSend_intValue(v16, v21, v22);
    v23 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 0, "[CMAltimeterInternal _handleCompanionRelativeElevationUpdate:]", "CoreLocation: %s\n", v23);
    if (v23 == buf)
    {
      goto LABEL_37;
    }

LABEL_36:
    free(v23);
    goto LABEL_37;
  }

  v29 = objc_msgSend_objectForKeyedSubscript_(v13, v15, @"CMCompanionRelativeElevationKey");
  if (v29)
  {
    size = self->fPressureSamples.__size_;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_19B774604;
    block[3] = &unk_1E7532A00;
    block[4] = self;
    block[5] = v29;
    dispatch_async(size, block);
    goto LABEL_37;
  }

  if (qword_1EAFE2840 != -1)
  {
    dispatch_once(&qword_1EAFE2840, &unk_1F0E3B6E8);
  }

  v31 = qword_1EAFE2860;
  if (os_log_type_enabled(qword_1EAFE2860, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v31, OS_LOG_TYPE_ERROR, "Error; NULL data received in CompanionRelativeElevation update", buf, 2u);
  }

  v32 = sub_19B420058();
  if ((*(v32 + 160) & 0x80000000) == 0 || (*(v32 + 164) & 0x80000000) == 0 || (*(v32 + 168) & 0x80000000) == 0 || *(v32 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2840 != -1)
    {
      dispatch_once(&qword_1EAFE2840, &unk_1F0E3B6E8);
    }

    LOWORD(v34) = 0;
    goto LABEL_35;
  }

LABEL_37:
  v28 = *MEMORY[0x1E69E9840];
}

- (id).cxx_construct
{
  *(self + 5) = 0u;
  *(self + 6) = 0u;
  *(self + 4) = 0u;
  return self;
}

@end