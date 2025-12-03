@interface CMAudioAccessoryUsageManager
+ (BOOL)isAvailable;
- (CMAudioAccessoryUsageManager)init;
- (void)_connect;
- (void)_disconnect;
- (void)_handleMessage:(shared_ptr<CLConnectionMessage>)message;
- (void)dealloc;
- (void)requestAudioAccessoryUsageUpdatesWithHandler:(id)handler;
- (void)setDelegate:(id)delegate;
@end

@implementation CMAudioAccessoryUsageManager

+ (BOOL)isAvailable
{
  sub_19B421798();

  return sub_19B43B6EC();
}

- (CMAudioAccessoryUsageManager)init
{
  v12 = *MEMORY[0x1E69E9840];
  if (qword_1ED71C7B8 != -1)
  {
    dispatch_once(&qword_1ED71C7B8, &unk_1F0E27C80);
  }

  v3 = qword_1ED71C7C8;
  if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_DEBUG, "[HeadphoneUsage] CMAudioAccessoryUsageManager init", buf, 2u);
  }

  v4 = sub_19B420058();
  if (*(v4 + 160) > 1 || *(v4 + 164) > 1 || *(v4 + 168) > 1 || *(v4 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E27C80);
    }

    v10 = 0;
    v5 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMAudioAccessoryUsageManager init]", "CoreLocation: %s\n", v5);
    if (v5 != buf)
    {
      free(v5);
    }
  }

  v9.receiver = self;
  v9.super_class = CMAudioAccessoryUsageManager;
  v6 = [(CMAudioAccessoryUsageManager *)&v9 init];
  if (v6)
  {
    *(v6 + 2) = dispatch_queue_create("com.apple.CoreMotion.CMAudioAccessoryUsage", 0);
    sub_19B42C54C(v6 + 1, 0);
  }

  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

- (void)dealloc
{
  v14 = *MEMORY[0x1E69E9840];
  if (qword_1ED71C7B8 != -1)
  {
    dispatch_once(&qword_1ED71C7B8, &unk_1F0E27C80);
  }

  v3 = qword_1ED71C7C8;
  if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_DEBUG, "[HeadphoneUsage] CMAudioAccessoryUsageManager dealloc", buf, 2u);
  }

  v4 = sub_19B420058();
  if (*(v4 + 160) > 1 || *(v4 + 164) > 1 || *(v4 + 168) > 1 || *(v4 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E27C80);
    }

    v12 = 0;
    v5 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMAudioAccessoryUsageManager dealloc]", "CoreLocation: %s\n", v5);
    if (v5 != buf)
    {
      free(v5);
    }
  }

  dispatch_queue_set_specific(self->_dispatchQueue, &unk_1EAFE38BC, &unk_1EAFE38BC, 0);
  if (dispatch_get_specific(&unk_1EAFE38BC) == &unk_1EAFE38BC)
  {
    objc_msgSend__disconnect(self, v6, v7);
  }

  else
  {
    dispatchQueue = self->_dispatchQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_19B5B7F5C;
    block[3] = &unk_1E7532988;
    block[4] = self;
    dispatch_sync(dispatchQueue, block);
  }

  dispatch_release(self->_dispatchQueue);
  self->_dispatchQueue = 0;
  v10.receiver = self;
  v10.super_class = CMAudioAccessoryUsageManager;
  [(CMAudioAccessoryUsageManager *)&v10 dealloc];
  v9 = *MEMORY[0x1E69E9840];
}

- (void)setDelegate:(id)delegate
{
  v13 = *MEMORY[0x1E69E9840];
  if (qword_1ED71C7B8 != -1)
  {
    dispatch_once(&qword_1ED71C7B8, &unk_1F0E27C80);
  }

  v5 = qword_1ED71C7C8;
  if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v5, OS_LOG_TYPE_DEBUG, "[HeadphoneUsage] CMAudioAccessoryUsageManager setDelegate", buf, 2u);
  }

  v6 = sub_19B420058();
  if (*(v6 + 160) > 1 || *(v6 + 164) > 1 || *(v6 + 168) > 1 || *(v6 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E27C80);
    }

    v11 = 0;
    v7 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMAudioAccessoryUsageManager setDelegate:]", "CoreLocation: %s\n", v7);
    if (v7 != buf)
    {
      free(v7);
    }
  }

  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B5B816C;
  block[3] = &unk_1E7532A00;
  block[4] = self;
  block[5] = delegate;
  dispatch_async(dispatchQueue, block);
  v9 = *MEMORY[0x1E69E9840];
}

- (void)_connect
{
  v11 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!self->_locationConnection.__ptr_)
  {
    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E27C80);
    }

    v6 = qword_1ED71C7C8;
    if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_DEFAULT, "[HeadphoneUsage] CMAudioAccessoryUsageManager - connecting", buf, 2u);
    }

    v7 = sub_19B420058();
    if (*(v7 + 160) > 1 || *(v7 + 164) > 1 || *(v7 + 168) > 1 || *(v7 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7B8 != -1)
      {
        dispatch_once(&qword_1ED71C7B8, &unk_1F0E27C80);
      }

      v8 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMAudioAccessoryUsageManager _connect]", "CoreLocation: %s\n", v8);
      if (v8 != buf)
      {
        free(v8);
      }
    }

    operator new();
  }

  if (qword_1ED71C7B8 != -1)
  {
    dispatch_once(&qword_1ED71C7B8, &unk_1F0E27C80);
  }

  v3 = qword_1ED71C7C8;
  if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_DEFAULT, "[HeadphoneUsage] CMAudioAccessoryUsageManager - requested connection, but already registered", buf, 2u);
  }

  v4 = sub_19B420058();
  if (*(v4 + 160) > 1 || *(v4 + 164) > 1 || *(v4 + 168) > 1 || *(v4 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E27C80);
    }

    v5 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMAudioAccessoryUsageManager _connect]", "CoreLocation: %s\n", v5);
    if (v5 != buf)
    {
      free(v5);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)_handleMessage:(shared_ptr<CLConnectionMessage>)message
{
  var0 = message.var0;
  v48 = *MEMORY[0x1E69E9840];
  if (qword_1ED71C7B8 != -1)
  {
    dispatch_once(&qword_1ED71C7B8, &unk_1F0E27C80);
  }

  v5 = qword_1ED71C7C8;
  if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v5, OS_LOG_TYPE_DEFAULT, "[HeadphoneUsage] CMAudioAccessoryUsageManager handleMessage", buf, 2u);
  }

  v6 = sub_19B420058();
  if (*(v6 + 160) > 1 || *(v6 + 164) > 1 || *(v6 + 168) > 1 || *(v6 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E27C80);
    }

    v44 = 0;
    v7 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMAudioAccessoryUsageManager _handleMessage:]", "CoreLocation: %s\n", v7);
    if (v7 != buf)
    {
      free(v7);
    }
  }

  dispatch_assert_queue_V2(self->_dispatchQueue);
  v8 = CLConnectionMessage::name(*var0);
  if ((*(v8 + 23) & 0x80000000) == 0 || *(v8 + 8) != 52 || memcmp(*v8, "kCLConnectionMessageAudioAccessoryUsageMetricsUpdate", 0x34uLL))
  {
    goto LABEL_16;
  }

  objc_loadWeak(&self->_delegate);
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E27C80);
    }

    v22 = qword_1ED71C7C8;
    if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v22, OS_LOG_TYPE_ERROR, "[HeadphoneUsage] CMAudioAccessoryUsageManager: Delegate does not respond to didReceiveUsageMetrics, refuse message.", buf, 2u);
    }

    v23 = sub_19B420058();
    if ((*(v23 + 160) & 0x80000000) != 0 && (*(v23 + 164) & 0x80000000) != 0 && (*(v23 + 168) & 0x80000000) != 0 && !*(v23 + 152))
    {
      goto LABEL_45;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1ED71C7B8 == -1)
    {
      goto LABEL_32;
    }

    goto LABEL_76;
  }

  Dictionary = CLConnectionMessage::getDictionary(*var0);
  if (!Dictionary)
  {
    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E27C80);
    }

    v28 = qword_1ED71C7C8;
    if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v28, OS_LOG_TYPE_ERROR, "[HeadphoneUsage] CMAudioAccessoryUsageManager: Error, nil dictionary received.", buf, 2u);
    }

    v29 = sub_19B420058();
    if ((*(v29 + 160) & 0x80000000) == 0 || (*(v29 + 164) & 0x80000000) == 0 || (*(v29 + 168) & 0x80000000) == 0 || *(v29 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7B8 != -1)
      {
        dispatch_once(&qword_1ED71C7B8, &unk_1F0E27C80);
      }

      v44 = 0;
      v30 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "[CMAudioAccessoryUsageManager _handleMessage:]", "CoreLocation: %s\n", v30);
      if (v30 != buf)
      {
        free(v30);
      }
    }

    objc_loadWeak(&self->_delegate);
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      v45 = *MEMORY[0x1E696A578];
      v46 = @"No data received from callback.";
      v34 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v31, &v46, &v45, 1);
      v36 = objc_msgSend_CMErrorWithCode_userInfo_(CMErrorUtils, v35, 112, v34);
      v39 = objc_msgSend_mainQueue(MEMORY[0x1E696ADC8], v37, v38);
      v43[0] = MEMORY[0x1E69E9820];
      v43[1] = 3221225472;
      v43[2] = sub_19B5B9600;
      v43[3] = &unk_1E7532A00;
      v43[4] = self;
      v43[5] = v36;
      objc_msgSend_addOperationWithBlock_(v39, v40, v43);
      goto LABEL_45;
    }

    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E27C80);
    }

    v32 = qword_1ED71C7C8;
    if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v32, OS_LOG_TYPE_ERROR, "[HeadphoneUsage] CMAudioAccessoryUsageManager: Delegate does not respond to errorOccurred.", buf, 2u);
    }

    v33 = sub_19B420058();
    if ((*(v33 + 160) & 0x80000000) != 0 && (*(v33 + 164) & 0x80000000) != 0 && (*(v33 + 168) & 0x80000000) != 0 && !*(v33 + 152))
    {
      goto LABEL_45;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1ED71C7B8 == -1)
    {
LABEL_32:
      v44 = 0;
      v24 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "[CMAudioAccessoryUsageManager _handleMessage:]", "CoreLocation: %s\n", v24);
LABEL_43:
      if (v24 != buf)
      {
        free(v24);
      }

      goto LABEL_45;
    }

LABEL_76:
    dispatch_once(&qword_1ED71C7B8, &unk_1F0E27C80);
    goto LABEL_32;
  }

  v20 = objc_msgSend_mainQueue(MEMORY[0x1E696ADC8], v17, v18);
  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v42[2] = sub_19B5B9640;
  v42[3] = &unk_1E7532A00;
  v42[4] = self;
  v42[5] = Dictionary;
  objc_msgSend_addOperationWithBlock_(v20, v21, v42);
LABEL_16:
  v9 = CLConnectionMessage::name(*var0);
  if (*(v9 + 23) < 0 && *(v9 + 8) == 51 && !memcmp(*v9, "kCLConnectionMessageAudioAccessoryUsageMetricsError", 0x33uLL))
  {
    objc_loadWeak(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      v10 = *var0;
      v11 = objc_opt_class();
      ObjectOfClass = CLConnectionMessage::getObjectOfClass(v10, v11);
      v15 = objc_msgSend_mainQueue(MEMORY[0x1E696ADC8], v13, v14);
      v41[0] = MEMORY[0x1E69E9820];
      v41[1] = 3221225472;
      v41[2] = sub_19B5B9680;
      v41[3] = &unk_1E7532A00;
      v41[4] = self;
      v41[5] = ObjectOfClass;
      objc_msgSend_addOperationWithBlock_(v15, v16, v41);
      goto LABEL_45;
    }

    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E27C80);
    }

    v25 = qword_1ED71C7C8;
    if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v25, OS_LOG_TYPE_ERROR, "[HeadphoneUsage] CMAudioAccessoryUsageManager: Delegate does not respond to errorOccurred, refuse message.", buf, 2u);
    }

    v26 = sub_19B420058();
    if ((*(v26 + 160) & 0x80000000) == 0 || (*(v26 + 164) & 0x80000000) == 0 || (*(v26 + 168) & 0x80000000) == 0 || *(v26 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7B8 != -1)
      {
        dispatch_once(&qword_1ED71C7B8, &unk_1F0E27C80);
      }

      v44 = 0;
      v24 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "[CMAudioAccessoryUsageManager _handleMessage:]", "CoreLocation: %s\n", v24);
      goto LABEL_43;
    }
  }

LABEL_45:
  v27 = *MEMORY[0x1E69E9840];
}

- (void)_disconnect
{
  v10 = *MEMORY[0x1E69E9840];
  if (qword_1ED71C7B8 != -1)
  {
    dispatch_once(&qword_1ED71C7B8, &unk_1F0E27C80);
  }

  v3 = qword_1ED71C7C8;
  if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_DEFAULT, "[HeadphoneUsage] CMAudioAccessoryUsageManager _disconnect", buf, 2u);
  }

  v4 = sub_19B420058();
  if (*(v4 + 160) > 1 || *(v4 + 164) > 1 || *(v4 + 168) > 1 || *(v4 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E27C80);
    }

    v5 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMAudioAccessoryUsageManager _disconnect]", "CoreLocation: %s\n", v5);
    if (v5 != buf)
    {
      free(v5);
    }
  }

  dispatch_assert_queue_V2(self->_dispatchQueue);
  v7 = @"kCLConnectionMessageSubscribeKey";
  v8 = MEMORY[0x1E695E110];
  objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v6, &v8, &v7, 1);
  sub_19B5B9C88();
}

- (void)requestAudioAccessoryUsageUpdatesWithHandler:(id)handler
{
  v23[1] = *MEMORY[0x1E69E9840];
  v4 = objc_opt_class();
  if ((objc_msgSend_isAvailable(v4, v5, v6) & 1) == 0)
  {
    v22 = *MEMORY[0x1E696A578];
    v23[0] = @"CMAudioAccessoryUsageManager not available on this platform";
    v14 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v7, v23, &v22, 1);
    v16 = objc_msgSend_CMErrorWithCode_userInfo_(CMErrorUtils, v15, 109, v14);
LABEL_8:
    (*(handler + 2))(handler, v16);
    v19 = *MEMORY[0x1E69E9840];
    return;
  }

  v8 = objc_opt_class();
  if (!objc_msgSend_isAuthorized(v8, v9, v10))
  {
    v20 = *MEMORY[0x1E696A578];
    v21 = @"Necessary entitlement missing: 'com.apple.bluetooth.system'.";
    v17 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v11, &v21, &v20, 1);
    v16 = objc_msgSend_CMErrorWithCode_userInfo_(CMErrorUtils, v18, 110, v17);
    goto LABEL_8;
  }

  v12 = *(handler + 2);
  v13 = *MEMORY[0x1E69E9840];

  v12(handler, 0);
}

@end