@interface CMSedentaryTimer_Internal
- (BOOL)_isActive;
- (CMSedentaryTimer_Internal)init;
- (void)_handleAlarmDataResponse:(shared_ptr<CLConnectionMessage>)a3 withHandler:(id)a4;
- (void)_handleStartStopTimerResponse:(shared_ptr<CLConnectionMessage>)a3 withHandler:(id)a4;
- (void)_registerForAlarmsWithHandler:(id)a3;
- (void)_teardown;
- (void)dealloc;
@end

@implementation CMSedentaryTimer_Internal

- (CMSedentaryTimer_Internal)init
{
  v4.receiver = self;
  v4.super_class = CMSedentaryTimer_Internal;
  v2 = [(CMSedentaryTimer_Internal *)&v4 init];
  if (v2)
  {
    v2->fClientQueue = dispatch_queue_create("com.apple.CoreMotion.CMSedentaryTimer.client", 0);
    v2->fDaemonQueue = dispatch_queue_create("com.apple.CoreMotion.CMSedentaryTimer.daemon", 0);
    operator new();
  }

  return 0;
}

- (void)dealloc
{
  dispatch_release(self->fClientQueue);
  dispatch_release(self->fDaemonQueue);
  v3.receiver = self;
  v3.super_class = CMSedentaryTimer_Internal;
  [(CMSedentaryTimer_Internal *)&v3 dealloc];
}

- (void)_teardown
{
  fLocationdConnection = self->fLocationdConnection;
  if (fLocationdConnection)
  {
    MEMORY[0x19EAE71C0](fLocationdConnection, a2);

    JUMPOUT(0x19EAE76F0);
  }
}

- (BOOL)_isActive
{
  v14 = *MEMORY[0x1E69E9840];
  if (qword_1ED71C830 != -1)
  {
    dispatch_once(&qword_1ED71C830, &unk_1F0E28BA0);
  }

  v3 = off_1ED71C838;
  if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_DEFAULT, "[SedentaryTimerTriage] SedentaryAlarm _isActive.", buf, 2u);
  }

  v4 = sub_19B420058();
  if (*(v4 + 160) > 1 || *(v4 + 164) > 1 || *(v4 + 168) > 1 || *(v4 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C830 != -1)
    {
      dispatch_once(&qword_1ED71C830, &unk_1F0E28BA0);
    }

    v12 = 0;
    v5 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMSedentaryTimer_Internal _isActive]", "CoreLocation: %s\n", v5);
    if (v5 != buf)
    {
      free(v5);
    }
  }

  fDaemonQueue = self->fDaemonQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B5CDF54;
  block[3] = &unk_1E7532988;
  block[4] = self;
  dispatch_sync(fDaemonQueue, block);
  result = objc_msgSend_isTimerArmed(self, v7, v8);
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)_handleStartStopTimerResponse:(shared_ptr<CLConnectionMessage>)a3 withHandler:(id)a4
{
  var1 = a3.var1;
  var0 = a3.var0;
  v44 = *MEMORY[0x1E69E9840];
  v7 = MEMORY[0x1E695DFD8];
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v11 = objc_msgSend_setWithObjects_(v7, v10, v8, v9, 0);
  if (*var0 && (DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*var0, v11)) != 0)
  {
    v14 = objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v13, @"CMErrorMessage");
    if (v14)
    {
      fClientQueue = self->fClientQueue;
      v40[0] = MEMORY[0x1E69E9820];
      v40[1] = 3221225472;
      v40[2] = sub_19B5CEE34;
      v40[3] = &unk_1E7532B68;
      v40[4] = v14;
      v40[5] = var1;
      v16 = v40;
    }

    else
    {
      if (qword_1ED71C830 != -1)
      {
        dispatch_once(&qword_1ED71C830, &unk_1F0E28BA0);
      }

      v21 = off_1ED71C838;
      if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v21, OS_LOG_TYPE_FAULT, "SedentaryAlarm,Error start / stop response.", buf, 2u);
      }

      v22 = sub_19B420058();
      if ((*(v22 + 160) & 0x80000000) == 0 || (*(v22 + 164) & 0x80000000) == 0 || (*(v22 + 168) & 0x80000000) == 0 || *(v22 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED71C830 != -1)
        {
          dispatch_once(&qword_1ED71C830, &unk_1F0E28BA0);
        }

        v42 = 0;
        v23 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 0, "[CMSedentaryTimer_Internal _handleStartStopTimerResponse:withHandler:]", "CoreLocation: %s\n", v23);
        if (v23 != buf)
        {
          free(v23);
        }
      }

      fClientQueue = self->fClientQueue;
      v39[0] = MEMORY[0x1E69E9820];
      v39[1] = 3221225472;
      v39[2] = sub_19B5CF058;
      v39[3] = &unk_1E7532B40;
      v39[4] = var1;
      v16 = v39;
    }

    dispatch_async(fClientQueue, v16);
    if (objc_msgSend_intValue(v14, v24, v25) == 100)
    {
      if (qword_1ED71C830 != -1)
      {
        dispatch_once(&qword_1ED71C830, &unk_1F0E28BA0);
      }

      v26 = off_1ED71C838;
      if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v26, OS_LOG_TYPE_DEFAULT, "[SedentaryTimerTriage] SedentaryAlarm _handleStartStopTimerResponse CMErrorNULL.", buf, 2u);
      }

      v27 = sub_19B420058();
      if (*(v27 + 160) > 1 || *(v27 + 164) > 1 || *(v27 + 168) > 1 || *(v27 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED71C830 != -1)
        {
          dispatch_once(&qword_1ED71C830, &unk_1F0E28BA0);
        }

        v42 = 0;
        v28 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 2, "[CMSedentaryTimer_Internal _handleStartStopTimerResponse:withHandler:]", "CoreLocation: %s\n", v28);
        if (v28 != buf)
        {
          free(v28);
        }
      }

      v29 = CLConnectionMessage::name(*var0);
      if (*(v29 + 23) < 0 && *(v29 + 8) == 39 && !memcmp(*v29, "kCLConnectionMessageSedentaryTimerStart", 0x27uLL))
      {
        objc_msgSend_setTimerArmed_(self, v30, 1);
        if (qword_1ED71C830 != -1)
        {
          dispatch_once(&qword_1ED71C830, &unk_1F0E28BA0);
        }

        v35 = off_1ED71C838;
        if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_19B41C000, v35, OS_LOG_TYPE_DEFAULT, "[SedentaryTimerTriage] SedentaryAlarm _handleStartStopTimerResponse timer is armed.", buf, 2u);
        }

        v36 = sub_19B420058();
        if (*(v36 + 160) > 1 || *(v36 + 164) > 1 || *(v36 + 168) > 1 || *(v36 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1ED71C830 == -1)
          {
            goto LABEL_68;
          }

          goto LABEL_73;
        }
      }

      else
      {
        v31 = CLConnectionMessage::name(*var0);
        if (*(v31 + 23) < 0 && *(v31 + 8) == 38 && !memcmp(*v31, "kCLConnectionMessageSedentaryTimerStop", 0x26uLL))
        {
          objc_msgSend_setTimerArmed_(self, v32, 0);
          if (qword_1ED71C830 != -1)
          {
            dispatch_once(&qword_1ED71C830, &unk_1F0E28BA0);
          }

          v33 = off_1ED71C838;
          if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_19B41C000, v33, OS_LOG_TYPE_DEFAULT, "[SedentaryTimerTriage] SedentaryAlarm _handleStartStopTimerResponse timer is not armed.", buf, 2u);
          }

          v34 = sub_19B420058();
          if (*(v34 + 160) > 1 || *(v34 + 164) > 1 || *(v34 + 168) > 1 || *(v34 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1ED71C830 == -1)
            {
LABEL_68:
              v42 = 0;
              v37 = _os_log_send_and_compose_impl();
              sub_19B6BB7CC("Generic", 1, 0, 2, "[CMSedentaryTimer_Internal _handleStartStopTimerResponse:withHandler:]", "CoreLocation: %s\n", v37);
              if (v37 != buf)
              {
                free(v37);
              }

              goto LABEL_70;
            }

LABEL_73:
            dispatch_once(&qword_1ED71C830, &unk_1F0E28BA0);
            goto LABEL_68;
          }
        }
      }
    }
  }

  else
  {
    if (qword_1ED71C830 != -1)
    {
      dispatch_once(&qword_1ED71C830, &unk_1F0E28BA0);
    }

    v17 = off_1ED71C838;
    if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v17, OS_LOG_TYPE_DEFAULT, "[SedentaryTimerTriage] SedentaryAlarm _handleStartStopTimerResponse dispatching handler.", buf, 2u);
    }

    v18 = sub_19B420058();
    if (*(v18 + 160) > 1 || *(v18 + 164) > 1 || *(v18 + 168) > 1 || *(v18 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C830 != -1)
      {
        dispatch_once(&qword_1ED71C830, &unk_1F0E28BA0);
      }

      v42 = 0;
      v19 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMSedentaryTimer_Internal _handleStartStopTimerResponse:withHandler:]", "CoreLocation: %s\n", v19);
      if (v19 != buf)
      {
        free(v19);
      }
    }

    v20 = self->fClientQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_19B5CEC4C;
    block[3] = &unk_1E7532B40;
    block[4] = var1;
    dispatch_async(v20, block);
  }

LABEL_70:
  v38 = *MEMORY[0x1E69E9840];
}

- (void)_handleAlarmDataResponse:(shared_ptr<CLConnectionMessage>)a3 withHandler:(id)a4
{
  var1 = a3.var1;
  var0 = a3.var0;
  v42 = *MEMORY[0x1E69E9840];
  v7 = MEMORY[0x1E695DFD8];
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v13 = objc_msgSend_setWithObjects_(v7, v12, v8, v9, v10, v11, 0);
  if (*var0 && (DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*var0, v13)) != 0)
  {
    v16 = DictionaryOfClasses;
    v17 = objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v15, @"CMErrorMessage");
    v19 = objc_msgSend_objectForKeyedSubscript_(v16, v18, @"CMSedentaryTimerAlarmData");
    if (v17)
    {
      if (qword_1ED71C830 != -1)
      {
        dispatch_once(&qword_1ED71C830, &unk_1F0E28BA0);
      }

      v20 = off_1ED71C838;
      if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v20, OS_LOG_TYPE_DEFAULT, "[SedentaryTimerTriage] SedentaryAlarm _handleAlarmDataResponse error.", buf, 2u);
      }

      v21 = sub_19B420058();
      if (*(v21 + 160) > 1 || *(v21 + 164) > 1 || *(v21 + 168) > 1 || *(v21 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED71C830 != -1)
        {
          dispatch_once(&qword_1ED71C830, &unk_1F0E28BA0);
        }

        v40 = 0;
        v22 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 2, "[CMSedentaryTimer_Internal _handleAlarmDataResponse:withHandler:]", "CoreLocation: %s\n", v22);
        if (v22 != buf)
        {
          free(v22);
        }
      }

      fClientQueue = self->fClientQueue;
      v38[0] = MEMORY[0x1E69E9820];
      v38[1] = 3221225472;
      v38[2] = sub_19B5CFA20;
      v38[3] = &unk_1E7532B68;
      v38[4] = v17;
      v38[5] = var1;
      v24 = v38;
    }

    else
    {
      v29 = v19;
      if (v19)
      {
        if (qword_1ED71C830 != -1)
        {
          dispatch_once(&qword_1ED71C830, &unk_1F0E28BA0);
        }

        v30 = off_1ED71C838;
        if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_19B41C000, v30, OS_LOG_TYPE_DEFAULT, "[SedentaryTimerTriage] SedentaryAlarm _handleAlarmDataResponse alarmDataArray.", buf, 2u);
        }

        v31 = sub_19B420058();
        if (*(v31 + 160) > 1 || *(v31 + 164) > 1 || *(v31 + 168) > 1 || *(v31 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1ED71C830 != -1)
          {
            dispatch_once(&qword_1ED71C830, &unk_1F0E28BA0);
          }

          v40 = 0;
          v32 = _os_log_send_and_compose_impl();
          sub_19B6BB7CC("Generic", 1, 0, 2, "[CMSedentaryTimer_Internal _handleAlarmDataResponse:withHandler:]", "CoreLocation: %s\n", v32);
          if (v32 != buf)
          {
            free(v32);
          }
        }

        fClientQueue = self->fClientQueue;
        v37[0] = MEMORY[0x1E69E9820];
        v37[1] = 3221225472;
        v37[2] = sub_19B5CFD8C;
        v37[3] = &unk_1E7532B90;
        v37[4] = v29;
        v37[5] = var1;
        v24 = v37;
      }

      else
      {
        if (qword_1ED71C830 != -1)
        {
          dispatch_once(&qword_1ED71C830, &unk_1F0E28BA0);
        }

        v33 = off_1ED71C838;
        if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_19B41C000, v33, OS_LOG_TYPE_FAULT, "SedentaryAlarm,Error parsing alarm data.", buf, 2u);
        }

        v34 = sub_19B420058();
        if ((*(v34 + 160) & 0x80000000) == 0 || (*(v34 + 164) & 0x80000000) == 0 || (*(v34 + 168) & 0x80000000) == 0 || *(v34 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1ED71C830 != -1)
          {
            dispatch_once(&qword_1ED71C830, &unk_1F0E28BA0);
          }

          v40 = 0;
          v35 = _os_log_send_and_compose_impl();
          sub_19B6BB7CC("Generic", 1, 0, 0, "[CMSedentaryTimer_Internal _handleAlarmDataResponse:withHandler:]", "CoreLocation: %s\n", v35);
          if (v35 != buf)
          {
            free(v35);
          }
        }

        fClientQueue = self->fClientQueue;
        v36[0] = MEMORY[0x1E69E9820];
        v36[1] = 3221225472;
        v36[2] = sub_19B5CFF50;
        v36[3] = &unk_1E7532B40;
        v36[4] = var1;
        v24 = v36;
      }
    }
  }

  else
  {
    if (qword_1ED71C830 != -1)
    {
      dispatch_once(&qword_1ED71C830, &unk_1F0E28BA0);
    }

    v25 = off_1ED71C838;
    if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v25, OS_LOG_TYPE_DEFAULT, "[SedentaryTimerTriage] SedentaryAlarm _handleAlarmDataResponse nil response dispatching handler.", buf, 2u);
    }

    v26 = sub_19B420058();
    if (*(v26 + 160) > 1 || *(v26 + 164) > 1 || *(v26 + 168) > 1 || *(v26 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C830 != -1)
      {
        dispatch_once(&qword_1ED71C830, &unk_1F0E28BA0);
      }

      v40 = 0;
      v27 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMSedentaryTimer_Internal _handleAlarmDataResponse:withHandler:]", "CoreLocation: %s\n", v27);
      if (v27 != buf)
      {
        free(v27);
      }
    }

    fClientQueue = self->fClientQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_19B5CF834;
    block[3] = &unk_1E7532B40;
    block[4] = var1;
    v24 = block;
  }

  dispatch_async(fClientQueue, v24);
  v28 = *MEMORY[0x1E69E9840];
}

- (void)_registerForAlarmsWithHandler:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  if (qword_1ED71C830 != -1)
  {
    dispatch_once(&qword_1ED71C830, &unk_1F0E28BA0);
  }

  v4 = off_1ED71C838;
  if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_DEFAULT, "[SedentaryTimerTriage] SedentaryAlarm _registerForAlarmsWithHandler.", buf, 2u);
  }

  v5 = sub_19B420058();
  if (*(v5 + 160) > 1 || *(v5 + 164) > 1 || *(v5 + 168) > 1 || *(v5 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C830 != -1)
    {
      dispatch_once(&qword_1ED71C830, &unk_1F0E28BA0);
    }

    v6 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMSedentaryTimer_Internal _registerForAlarmsWithHandler:]", "CoreLocation: %s\n", v6);
    if (v6 != buf)
    {
      free(v6);
    }
  }

  fLocationdConnection = self->fLocationdConnection;
  sub_19B428B50(buf, "kCLConnectionMessageSedentaryTimerAlarm");
  CLConnectionClient::setHandlerForMessage();
  if (v10 < 0)
  {
    operator delete(*buf);
  }

  v8 = *MEMORY[0x1E69E9840];
}

@end