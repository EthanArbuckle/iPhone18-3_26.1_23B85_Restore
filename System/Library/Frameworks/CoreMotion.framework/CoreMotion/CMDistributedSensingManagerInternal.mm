@interface CMDistributedSensingManagerInternal
- (CMDistributedSensingManagerInternal)init;
- (void)_handleDaemonMessage:(id)message data:(id)data;
- (void)_registerForVehicleStateUpdates;
- (void)_teardown;
- (void)_unregisterForVehicleStateUpdates;
- (void)dealloc;
@end

@implementation CMDistributedSensingManagerInternal

- (CMDistributedSensingManagerInternal)init
{
  v5.receiver = self;
  v5.super_class = CMDistributedSensingManagerInternal;
  v2 = [(CMDistributedSensingManagerInternal *)&v5 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
    v2->_internalQueue = dispatch_queue_create("com.apple.CoreMotion.CMDistributedSensingManagerInternalQueue", v3);
    v2->_clientQueue = dispatch_queue_create("com.apple.CoreMotion.CMDistributedSensingManagerClientQueue", v3);
    operator new();
  }

  return 0;
}

- (void)dealloc
{
  dispatch_release(self->_internalQueue);
  self->_internalQueue = 0;
  dispatch_release(self->_clientQueue);
  self->_clientQueue = 0;
  v3.receiver = self;
  v3.super_class = CMDistributedSensingManagerInternal;
  [(CMDistributedSensingManagerInternal *)&v3 dealloc];
}

- (void)_teardown
{
  objc_msgSend__unregisterForVehicleStateUpdates(self, a2, v2);
  locationdConnection = self->_locationdConnection;
  sub_19B428B50(&__p, "DistributedSensing/kCLConnectionMessageDistributedSensingVehicleStateUpdate");
  CLConnectionClient::setHandlerForMessage();
  if (v7 < 0)
  {
    operator delete(__p);
  }

  if (self->_locationdConnection)
  {
    v5 = MEMORY[0x19EAE71C0]();
    MEMORY[0x19EAE76F0](v5, 0xB0C40BC2CC919);
  }

  self->_locationdConnection = 0;
}

- (void)_handleDaemonMessage:(id)message data:(id)data
{
  v38 = *MEMORY[0x1E69E9840];
  if (!objc_loadWeak(&self->_delegate))
  {
    goto LABEL_39;
  }

  if (data)
  {
    if (objc_msgSend_isEqualToString_(message, v7, @"DistributedSensing/kCLConnectionMessageDistributedSensingVehicleStateUpdate"))
    {
      if (objc_msgSend_objectForKeyedSubscript_(data, v8, @"CMErrorMessage"))
      {
        v10 = objc_msgSend_objectForKeyedSubscript_(data, v9, @"CMErrorMessage");
        v13 = objc_msgSend_integerValue(v10, v11, v12);
        v15 = objc_msgSend_CMErrorWithCode_(CMErrorUtils, v14, v13);
        if (qword_1EAFE2A38 != -1)
        {
          dispatch_once(&qword_1EAFE2A38, &unk_1F0E29040);
        }

        v16 = qword_1EAFE2A40;
        if (os_log_type_enabled(qword_1EAFE2A40, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v37 = v15;
          _os_log_impl(&dword_19B41C000, v16, OS_LOG_TYPE_ERROR, "Vehicle State, error, %@", buf, 0xCu);
        }

        v17 = sub_19B420058();
        if ((*(v17 + 160) & 0x80000000) == 0 || (*(v17 + 164) & 0x80000000) == 0 || (*(v17 + 168) & 0x80000000) == 0 || *(v17 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE2A38 != -1)
          {
            dispatch_once(&qword_1EAFE2A38, &unk_1F0E29040);
          }

          v34 = 138412290;
          v35 = v15;
          v18 = _os_log_send_and_compose_impl();
          sub_19B6BB7CC("Generic", 1, 0, 0, "[CMDistributedSensingManagerInternal _handleDaemonMessage:data:]", "CoreLocation: %s\n", v18);
          if (v18 != buf)
          {
            free(v18);
          }
        }

        clientQueue = self->_clientQueue;
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = sub_19B5FF128;
        block[3] = &unk_1E7532A00;
        block[4] = self;
        block[5] = v15;
        dispatch_async(clientQueue, block);
      }

      else if (objc_msgSend_objectForKeyedSubscript_(data, v9, @"CMDistributedSensingVehicleStateUpdateKey"))
      {
        v27 = objc_msgSend_objectForKeyedSubscript_(data, v26, @"CMDistributedSensingVehicleStateUpdateKey");
        v30 = objc_msgSend_copy(v27, v28, v29);
        v31 = self->_clientQueue;
        v32[0] = MEMORY[0x1E69E9820];
        v32[1] = 3221225472;
        v32[2] = sub_19B5FF1A8;
        v32[3] = &unk_1E7532A00;
        v32[4] = self;
        v32[5] = v30;
        dispatch_async(v31, v32);
      }

      goto LABEL_39;
    }

    if (qword_1EAFE2A38 != -1)
    {
      dispatch_once(&qword_1EAFE2A38, &unk_1F0E29040);
    }

    v22 = qword_1EAFE2A40;
    if (os_log_type_enabled(qword_1EAFE2A40, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v22, OS_LOG_TYPE_FAULT, "Unrecognizable dictionary", buf, 2u);
    }

    v23 = sub_19B420058();
    if ((*(v23 + 160) & 0x80000000) == 0 || (*(v23 + 164) & 0x80000000) == 0 || (*(v23 + 168) & 0x80000000) == 0 || *(v23 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2A38 != -1)
      {
        dispatch_once(&qword_1EAFE2A38, &unk_1F0E29040);
      }

      LOWORD(v34) = 0;
LABEL_37:
      v24 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "[CMDistributedSensingManagerInternal _handleDaemonMessage:data:]", "CoreLocation: %s\n", v24);
      if (v24 != buf)
      {
        free(v24);
      }
    }
  }

  else
  {
    if (qword_1EAFE2A38 != -1)
    {
      dispatch_once(&qword_1EAFE2A38, &unk_1F0E29040);
    }

    v20 = qword_1EAFE2A40;
    if (os_log_type_enabled(qword_1EAFE2A40, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v20, OS_LOG_TYPE_FAULT, "nil dictionary", buf, 2u);
    }

    v21 = sub_19B420058();
    if ((*(v21 + 160) & 0x80000000) == 0 || (*(v21 + 164) & 0x80000000) == 0 || (*(v21 + 168) & 0x80000000) == 0 || *(v21 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2A38 != -1)
      {
        dispatch_once(&qword_1EAFE2A38, &unk_1F0E29040);
      }

      LOWORD(v34) = 0;
      goto LABEL_37;
    }
  }

LABEL_39:
  v25 = *MEMORY[0x1E69E9840];
}

- (void)_registerForVehicleStateUpdates
{
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B5FF29C;
  block[3] = &unk_1E7532988;
  block[4] = self;
  dispatch_async(internalQueue, block);
}

- (void)_unregisterForVehicleStateUpdates
{
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B5FF564;
  block[3] = &unk_1E7532988;
  block[4] = self;
  dispatch_async(internalQueue, block);
}

@end