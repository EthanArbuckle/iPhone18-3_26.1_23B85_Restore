@interface CMMotionAlarmManagerInternal
+ (id)instance;
- (BOOL)_acknowledgeAlarm:(id)alarm error:(id *)error;
- (BOOL)_registerAlarm:(id)alarm error:(id *)error;
- (BOOL)_unregisterAlarm:(id)alarm error:(id *)error;
- (CMMotionAlarmManagerInternal)init;
- (void)_handleAlarmFire:(id)fire;
- (void)_startListeners;
- (void)_stopListeners;
- (void)_teardown;
- (void)dealloc;
@end

@implementation CMMotionAlarmManagerInternal

- (CMMotionAlarmManagerInternal)init
{
  v4.receiver = self;
  v4.super_class = CMMotionAlarmManagerInternal;
  v2 = [(CMMotionAlarmManagerInternal *)&v4 init];
  if (v2)
  {
    v2->fInternalQueue = dispatch_queue_create("com.apple.CoreMotion.CMMotionAlarmManager", 0);
    operator new();
  }

  return 0;
}

+ (id)instance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B679D60;
  block[3] = &unk_1E7532988;
  block[4] = self;
  if (qword_1ED71D300 != -1)
  {
    dispatch_once(&qword_1ED71D300, block);
  }

  return qword_1ED71D308;
}

- (void)dealloc
{
  objc_msgSend__teardown(self, a2, v2);
  v4.receiver = self;
  v4.super_class = CMMotionAlarmManagerInternal;
  [(CMMotionAlarmManagerInternal *)&v4 dealloc];
}

- (void)_teardown
{
  v11 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE27A0 != -1)
  {
    dispatch_once(&qword_1EAFE27A0, &unk_1F0E3A9E0);
  }

  v3 = qword_1EAFE27D8;
  if (os_log_type_enabled(qword_1EAFE27D8, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_INFO, "Tearing down CMMotionAlarmManagerInternal", buf, 2u);
  }

  v4 = sub_19B420058();
  if (*(v4 + 160) > 1 || *(v4 + 164) > 1 || *(v4 + 168) > 1 || *(v4 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE27A0 != -1)
    {
      dispatch_once(&qword_1EAFE27A0, &unk_1F0E3A9E0);
    }

    v7 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMotionAlarmManagerInternal _teardown]", "CoreLocation: %s\n", v7);
    if (v7 != buf)
    {
      free(v7);
    }
  }

  objc_msgSend__stopListeners(self, v5, v6);
  dispatch_release(self->fInternalQueue);
  if (self->fLocationdConnection)
  {
    v8 = MEMORY[0x19EAE71C0]();
    MEMORY[0x19EAE76F0](v8, 0xB0C40BC2CC919);
  }

  self->fLocationdConnection = 0;

  self->fAlarms = 0;
  v9 = *MEMORY[0x1E69E9840];
}

- (void)_startListeners
{
  fInternalQueue = self->fInternalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B67A030;
  block[3] = &unk_1E7532988;
  block[4] = self;
  dispatch_async(fInternalQueue, block);
}

- (void)_stopListeners
{
  fInternalQueue = self->fInternalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B67A310;
  block[3] = &unk_1E7532988;
  block[4] = self;
  dispatch_sync(fInternalQueue, block);
}

- (BOOL)_registerAlarm:(id)alarm error:(id *)error
{
  v46 = *MEMORY[0x1E69E9840];
  objc_sync_enter(self);
  if (objc_msgSend_manager(alarm, v7, v8) && (v11 = objc_msgSend_manager(alarm, v9, v10), objc_msgSend_delegate(v11, v12, v13)))
  {
    if (alarm && objc_msgSend_name(alarm, v14, v15))
    {
      fAlarms = self->fAlarms;
      v19 = objc_msgSend_name(alarm, v16, v17);
      objc_msgSend_setObject_forKey_(fAlarms, v20, alarm, v19);
      v39 = @"CMMotionAlarmKey";
      alarmCopy = alarm;
      objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v21, &alarmCopy, &v39, 1);
      sub_19B5D379C();
    }

    if (qword_1EAFE27A0 != -1)
    {
      dispatch_once(&qword_1EAFE27A0, &unk_1F0E3A9E0);
    }

    v30 = qword_1EAFE27D8;
    if (os_log_type_enabled(qword_1EAFE27D8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v30, OS_LOG_TYPE_ERROR, "Unable to register motion alarm. Invalid alarm object.", buf, 2u);
    }

    v31 = sub_19B420058();
    if ((*(v31 + 160) & 0x80000000) == 0 || (*(v31 + 164) & 0x80000000) == 0 || (*(v31 + 168) & 0x80000000) == 0 || *(v31 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE27A0 != -1)
      {
        dispatch_once(&qword_1EAFE27A0, &unk_1F0E3A9E0);
      }

      v33 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "[CMMotionAlarmManagerInternal _registerAlarm:error:]", "CoreLocation: %s\n", v33);
      if (v33 != buf)
      {
        free(v33);
      }
    }

    if (error)
    {
      v34 = MEMORY[0x1E696ABC0];
      v41 = *MEMORY[0x1E696A578];
      v42 = @"Invalid alarm object";
      v35 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v32, &v42, &v41, 1);
      v29 = objc_msgSend_errorWithDomain_code_userInfo_(v34, v36, @"CMErrorDomain", 107, v35);
      goto LABEL_32;
    }
  }

  else
  {
    if (qword_1EAFE27A0 != -1)
    {
      dispatch_once(&qword_1EAFE27A0, &unk_1F0E3A9E0);
    }

    v22 = qword_1EAFE27D8;
    if (os_log_type_enabled(qword_1EAFE27D8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v22, OS_LOG_TYPE_ERROR, "Unable to register motion alarm. No delegate assigned.", buf, 2u);
    }

    v23 = sub_19B420058();
    if ((*(v23 + 160) & 0x80000000) == 0 || (*(v23 + 164) & 0x80000000) == 0 || (*(v23 + 168) & 0x80000000) == 0 || *(v23 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE27A0 != -1)
      {
        dispatch_once(&qword_1EAFE27A0, &unk_1F0E3A9E0);
      }

      v25 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "[CMMotionAlarmManagerInternal _registerAlarm:error:]", "CoreLocation: %s\n", v25);
      if (v25 != buf)
      {
        free(v25);
      }
    }

    if (error)
    {
      v26 = MEMORY[0x1E696ABC0];
      v43 = *MEMORY[0x1E696A578];
      v44 = @"Missing alarm manager and/or delegate";
      v27 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v24, &v44, &v43, 1);
      v29 = objc_msgSend_errorWithDomain_code_userInfo_(v26, v28, @"CMErrorDomain", 103, v27);
LABEL_32:
      *error = v29;
    }
  }

  objc_sync_exit(self);
  v37 = *MEMORY[0x1E69E9840];
  return 0;
}

- (BOOL)_unregisterAlarm:(id)alarm error:(id *)error
{
  v31 = *MEMORY[0x1E69E9840];
  objc_sync_enter(self);
  if (objc_msgSend_manager(alarm, v7, v8) && (v11 = objc_msgSend_manager(alarm, v9, v10), objc_msgSend_delegate(v11, v12, v13)))
  {
    if (alarm && objc_msgSend_name(alarm, v14, v15))
    {
      v28 = @"CMMotionAlarmKey";
      alarmCopy = alarm;
      objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v16, &alarmCopy, &v28, 1);
      sub_19B67D694();
    }

    if (qword_1EAFE27A0 != -1)
    {
      dispatch_once(&qword_1EAFE27A0, &unk_1F0E3A9E0);
    }

    v22 = qword_1EAFE27D8;
    if (os_log_type_enabled(qword_1EAFE27D8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v22, OS_LOG_TYPE_ERROR, "Unable to unregister motion alarm. Invalid alarm object.", buf, 2u);
    }

    v23 = sub_19B420058();
    if ((*(v23 + 160) & 0x80000000) == 0 || (*(v23 + 164) & 0x80000000) == 0 || (*(v23 + 168) & 0x80000000) == 0 || *(v23 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE27A0 != -1)
      {
        dispatch_once(&qword_1EAFE27A0, &unk_1F0E3A9E0);
      }

      v25 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "[CMMotionAlarmManagerInternal _unregisterAlarm:error:]", "CoreLocation: %s\n", v25);
      if (v25 != buf)
      {
        free(v25);
      }
    }

    if (error)
    {
      v21 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], v24, @"CMErrorDomain", 107, 0);
      goto LABEL_32;
    }
  }

  else
  {
    if (qword_1EAFE27A0 != -1)
    {
      dispatch_once(&qword_1EAFE27A0, &unk_1F0E3A9E0);
    }

    v17 = qword_1EAFE27D8;
    if (os_log_type_enabled(qword_1EAFE27D8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v17, OS_LOG_TYPE_ERROR, "Unable to unregister motion alarm. No delegate assigned.", buf, 2u);
    }

    v18 = sub_19B420058();
    if ((*(v18 + 160) & 0x80000000) == 0 || (*(v18 + 164) & 0x80000000) == 0 || (*(v18 + 168) & 0x80000000) == 0 || *(v18 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE27A0 != -1)
      {
        dispatch_once(&qword_1EAFE27A0, &unk_1F0E3A9E0);
      }

      v20 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "[CMMotionAlarmManagerInternal _unregisterAlarm:error:]", "CoreLocation: %s\n", v20);
      if (v20 != buf)
      {
        free(v20);
      }
    }

    if (error)
    {
      v21 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], v19, @"CMErrorDomain", 103, 0);
LABEL_32:
      *error = v21;
    }
  }

  objc_sync_exit(self);
  v26 = *MEMORY[0x1E69E9840];
  return 0;
}

- (BOOL)_acknowledgeAlarm:(id)alarm error:(id *)error
{
  v20 = *MEMORY[0x1E69E9840];
  objc_sync_enter(self);
  v8 = objc_msgSend_objectForKey_(self->fAlarms, v7, alarm);
  if (v8)
  {
    objc_initWeak(&location, self);
    v17 = @"CMMotionAlarmKey";
    v18 = v8;
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v9, &v18, &v17, 1);
    sub_19B67D7D8();
  }

  if (qword_1EAFE27A0 != -1)
  {
    dispatch_once(&qword_1EAFE27A0, &unk_1F0E3A9E0);
  }

  v10 = qword_1EAFE27D8;
  if (os_log_type_enabled(qword_1EAFE27D8, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v10, OS_LOG_TYPE_ERROR, "Unable to acknowledge alarm, alarm does not exist.", buf, 2u);
  }

  v11 = sub_19B420058();
  if ((*(v11 + 160) & 0x80000000) == 0 || (*(v11 + 164) & 0x80000000) == 0 || (*(v11 + 168) & 0x80000000) == 0 || *(v11 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE27A0 != -1)
    {
      dispatch_once(&qword_1EAFE27A0, &unk_1F0E3A9E0);
    }

    LOWORD(location) = 0;
    v13 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 0, "[CMMotionAlarmManagerInternal _acknowledgeAlarm:error:]", "CoreLocation: %s\n", v13);
    if (v13 != buf)
    {
      free(v13);
    }
  }

  if (error)
  {
    *error = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], v12, @"CMErrorDomain", 107, 0);
  }

  objc_sync_exit(self);
  v14 = *MEMORY[0x1E69E9840];
  return 0;
}

- (void)_handleAlarmFire:(id)fire
{
  v42 = *MEMORY[0x1E69E9840];
  v5 = objc_msgSend_objectForKeyedSubscript_(fire, a2, @"CMMotionAlarmKey");
  if (v5 && (v8 = v5, objc_msgSend_name(v5, v6, v7)))
  {
    objc_sync_enter(self);
    fAlarms = self->fAlarms;
    v12 = objc_msgSend_name(v8, v10, v11);
    v14 = objc_msgSend_objectForKey_(fAlarms, v13, v12);
    v17 = v14;
    if (v14 && (objc_msgSend_isValid(v14, v15, v16) & 1) != 0)
    {
      objc_msgSend_copyPropertiesFromAlarm_(v17, v18, v8);
      v20 = objc_msgSend_objectForKeyedSubscript_(fire, v19, @"CMErrorMessage");
      if (objc_msgSend_intValue(v20, v21, v22) == 100)
      {
        v36[0] = MEMORY[0x1E69E9820];
        v36[1] = 3221225472;
        v36[2] = sub_19B67D210;
        v36[3] = &unk_1E7532988;
        v36[4] = v17;
        v23 = MEMORY[0x1E69E96A0];
        v24 = v36;
      }

      else
      {
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = sub_19B67D154;
        block[3] = &unk_1E7532A00;
        block[4] = v17;
        block[5] = v20;
        v23 = MEMORY[0x1E69E96A0];
        v24 = block;
      }

      dispatch_async(v23, v24);
    }

    else
    {
      if (qword_1EAFE27A0 != -1)
      {
        dispatch_once(&qword_1EAFE27A0, &unk_1F0E3A9E0);
      }

      v28 = qword_1EAFE27D8;
      if (os_log_type_enabled(qword_1EAFE27D8, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v41 = objc_msgSend_name(v8, v29, v30);
        _os_log_impl(&dword_19B41C000, v28, OS_LOG_TYPE_ERROR, "Unable to fire motion alarm %@. Could not locate valid alarm to fire.", buf, 0xCu);
      }

      v31 = sub_19B420058();
      if ((*(v31 + 160) & 0x80000000) == 0 || (*(v31 + 164) & 0x80000000) == 0 || (*(v31 + 168) & 0x80000000) == 0 || *(v31 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE27A0 != -1)
        {
          dispatch_once(&qword_1EAFE27A0, &unk_1F0E3A9E0);
        }

        v38 = 138412290;
        v39 = objc_msgSend_name(v8, v32, v33);
        v34 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 0, "[CMMotionAlarmManagerInternal _handleAlarmFire:]", "CoreLocation: %s\n", v34);
        if (v34 != buf)
        {
          free(v34);
        }
      }
    }

    objc_sync_exit(self);
  }

  else
  {
    if (qword_1EAFE27A0 != -1)
    {
      dispatch_once(&qword_1EAFE27A0, &unk_1F0E3A9E0);
    }

    v25 = qword_1EAFE27D8;
    if (os_log_type_enabled(qword_1EAFE27D8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v25, OS_LOG_TYPE_ERROR, "Unable to fire motion alarm. Received invalid message response.", buf, 2u);
    }

    v26 = sub_19B420058();
    if ((*(v26 + 160) & 0x80000000) == 0 || (*(v26 + 164) & 0x80000000) == 0 || (*(v26 + 168) & 0x80000000) == 0 || *(v26 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE27A0 != -1)
      {
        dispatch_once(&qword_1EAFE27A0, &unk_1F0E3A9E0);
      }

      LOWORD(v38) = 0;
      v27 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "[CMMotionAlarmManagerInternal _handleAlarmFire:]", "CoreLocation: %s\n", v27);
      if (v27 != buf)
      {
        free(v27);
      }
    }
  }

  v35 = *MEMORY[0x1E69E9840];
}

@end