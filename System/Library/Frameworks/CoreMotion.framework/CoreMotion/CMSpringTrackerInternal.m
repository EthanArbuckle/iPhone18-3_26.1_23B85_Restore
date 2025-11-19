@interface CMSpringTrackerInternal
- (BOOL)_isTracking;
- (CMSpringTrackerInternal)init;
- (void)_handleStartStopResponse:(shared_ptr<CLConnectionMessage>)a3 handler:(id)a4;
- (void)_querySpringDataFromRecord:(id)a3 handler:(id)a4;
- (void)_startWithHandler:(id)a3;
- (void)_stopWithHandler:(id)a3;
- (void)_teardown;
- (void)dealloc;
@end

@implementation CMSpringTrackerInternal

- (CMSpringTrackerInternal)init
{
  v4.receiver = self;
  v4.super_class = CMSpringTrackerInternal;
  v2 = [(CMSpringTrackerInternal *)&v4 init];
  if (v2)
  {
    v2->fInternalQueue = dispatch_queue_create("com.apple.CoreMotion.CMSpringTracker", 0);
    operator new();
  }

  return 0;
}

- (void)dealloc
{
  dispatch_release(self->fInternalQueue);
  v3.receiver = self;
  v3.super_class = CMSpringTrackerInternal;
  [(CMSpringTrackerInternal *)&v3 dealloc];
}

- (void)_teardown
{
  self->fHandler = 0;
  if (self->fLocationdConnection)
  {
    v3 = MEMORY[0x19EAE71C0]();
    MEMORY[0x19EAE76F0](v3, 0xB0C40BC2CC919);
  }

  self->fLocationdConnection = 0;
}

- (BOOL)_isTracking
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  fInternalQueue = self->fInternalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B6578E0;
  block[3] = &unk_1E7533730;
  block[4] = &v6;
  dispatch_sync(fInternalQueue, block);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)_startWithHandler:(id)a3
{
  fInternalQueue = self->fInternalQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_19B657B08;
  v4[3] = &unk_1E7532B68;
  v4[4] = self;
  v4[5] = a3;
  dispatch_async(fInternalQueue, v4);
}

- (void)_stopWithHandler:(id)a3
{
  fInternalQueue = self->fInternalQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_19B657D8C;
  v4[3] = &unk_1E7532B68;
  v4[4] = self;
  v4[5] = a3;
  dispatch_async(fInternalQueue, v4);
}

- (void)_handleStartStopResponse:(shared_ptr<CLConnectionMessage>)a3 handler:(id)a4
{
  v28 = *MEMORY[0x1E69E9840];
  if (a3.var1)
  {
    var0 = a3.var0;
    v5 = objc_msgSend_copy(a3.var1, a2, a3.var0);
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v10 = objc_msgSend_setWithObjects_(v6, v9, v7, v8, 0);
    if (*var0 && (DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*var0, v10)) != 0)
    {
      v13 = objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v12, @"CMErrorMessage");
      if (v13)
      {
        v24[0] = MEMORY[0x1E69E9820];
        v24[1] = 3221225472;
        v24[2] = sub_19B65843C;
        v24[3] = &unk_1E7532B68;
        v24[4] = v13;
        v24[5] = v5;
        v14 = MEMORY[0x1E69E96A0];
        v15 = v24;
      }

      else
      {
        if (qword_1EAFE2B08 != -1)
        {
          dispatch_once(&qword_1EAFE2B08, &unk_1F0E3A928);
        }

        v20 = qword_1EAFE2B10;
        if (os_log_type_enabled(qword_1EAFE2B10, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_19B41C000, v20, OS_LOG_TYPE_FAULT, "Error parsing start / stop response.", buf, 2u);
        }

        v21 = sub_19B420058();
        if ((*(v21 + 160) & 0x80000000) == 0 || (*(v21 + 164) & 0x80000000) == 0 || (*(v21 + 168) & 0x80000000) == 0 || *(v21 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE2B08 != -1)
          {
            dispatch_once(&qword_1EAFE2B08, &unk_1F0E3A928);
          }

          v26 = 0;
          v22 = _os_log_send_and_compose_impl();
          sub_19B6BB7CC("Generic", 1, 0, 0, "[CMSpringTrackerInternal _handleStartStopResponse:handler:]", "CoreLocation: %s\n", v22);
          if (v22 != buf)
          {
            free(v22);
          }
        }

        v23[0] = MEMORY[0x1E69E9820];
        v23[1] = 3221225472;
        v23[2] = sub_19B6584D0;
        v23[3] = &unk_1E7532B40;
        v23[4] = v5;
        v14 = MEMORY[0x1E69E96A0];
        v15 = v23;
      }
    }

    else
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = sub_19B6583DC;
      block[3] = &unk_1E7532B40;
      block[4] = v5;
      v14 = MEMORY[0x1E69E96A0];
      v15 = block;
    }

    dispatch_async(v14, v15);
  }

  else
  {
    if (qword_1EAFE2B08 != -1)
    {
      dispatch_once(&qword_1EAFE2B08, &unk_1F0E3A928);
    }

    v16 = qword_1EAFE2B10;
    if (os_log_type_enabled(qword_1EAFE2B10, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v16, OS_LOG_TYPE_FAULT, "Error responding to start / stop tracking request, handler unavailable.", buf, 2u);
    }

    v17 = sub_19B420058();
    if ((*(v17 + 160) & 0x80000000) == 0 || (*(v17 + 164) & 0x80000000) == 0 || (*(v17 + 168) & 0x80000000) == 0 || *(v17 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2B08 != -1)
      {
        dispatch_once(&qword_1EAFE2B08, &unk_1F0E3A928);
      }

      v26 = 0;
      v18 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "[CMSpringTrackerInternal _handleStartStopResponse:handler:]", "CoreLocation: %s\n", v18);
      if (v18 != buf)
      {
        free(v18);
      }
    }
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (void)_querySpringDataFromRecord:(id)a3 handler:(id)a4
{
  fInternalQueue = self->fInternalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B6585A8;
  block[3] = &unk_1E7532C08;
  block[4] = a3;
  block[5] = self;
  block[6] = a4;
  dispatch_async(fInternalQueue, block);
}

@end