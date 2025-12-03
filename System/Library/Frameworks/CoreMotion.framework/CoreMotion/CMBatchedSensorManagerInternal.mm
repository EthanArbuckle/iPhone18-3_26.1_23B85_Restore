@interface CMBatchedSensorManagerInternal
+ (id)_newArrayByUnpackingAccelerometerBatch:(shared_ptr<CLConnectionMessage>)batch;
+ (id)_newArrayByUnpackingDeviceMotionBatch:(shared_ptr<CLConnectionMessage>)batch;
- (CMBatchedSensorManagerInternal)init;
- (void)_connect;
- (void)_startAccelerometerUpdatesWithHandler:(id)handler;
- (void)_startDeviceMotionUpdatesWithHandler:(id)handler;
- (void)_stopAccelerometerUpdates;
- (void)_stopDeviceMotionUpdates;
- (void)_teardown;
- (void)dealloc;
@end

@implementation CMBatchedSensorManagerInternal

- (CMBatchedSensorManagerInternal)init
{
  v9.receiver = self;
  v9.super_class = CMBatchedSensorManagerInternal;
  v2 = [(CMBatchedSensorManagerInternal *)&v9 init];
  v4 = v2;
  if (v2)
  {
    v2->_accelHandler = 0;
    v2->_queue = 0;
    v2->_dataQueue = 0;
    v2->_connection = 0;
    v2->_available = 0;
    objc_msgSend_setAccelBatch_(v2, v3, 0);
    v4->_deviceMotionHandler = 0;
    objc_msgSend_setDeviceMotionBatch_(v4, v5, 0);
    objc_msgSend__connect(v4, v6, v7);
  }

  return v4;
}

- (void)dealloc
{
  objc_msgSend_setAccelBatch_(self, a2, 0);
  objc_msgSend_setDeviceMotionBatch_(self, v3, 0);
  v4.receiver = self;
  v4.super_class = CMBatchedSensorManagerInternal;
  [(CMBatchedSensorManagerInternal *)&v4 dealloc];
}

- (void)_connect
{
  v3 = *MEMORY[0x1E69E9840];
  if (!self->_connection)
  {
    self->_queue = dispatch_queue_create("com.apple.CoreMotion.CMBatchedSensorManager.Internal", 0);
    operator new();
  }

  v2 = *MEMORY[0x1E69E9840];
}

- (void)_teardown
{
  connection = self->_connection;
  sub_19B428B50(__p, "kCLConnectionMessageBatchedSensorAvailabilityUpdate");
  CLConnectionClient::setHandlerForMessage();
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  v4 = self->_connection;
  sub_19B428B50(__p, "kCLConnectionMessageBatchedAccelerometer");
  CLConnectionClient::setHandlerForMessage();
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  v5 = self->_connection;
  sub_19B428B50(__p, "kCLConnectionMessageBatchedSensorError");
  CLConnectionClient::setHandlerForMessage();
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  v6 = self->_connection;
  sub_19B428B50(__p, "kCLConnectionMessageBatchedDeviceMotion");
  CLConnectionClient::setHandlerForMessage();
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  if (self->_connection)
  {
    v7 = MEMORY[0x19EAE71C0]();
    MEMORY[0x19EAE76F0](v7, 0xB0C40BC2CC919);
    self->_connection = 0;
  }

  self->_queue = 0;
  self->_dataQueue = 0;
}

- (void)_startAccelerometerUpdatesWithHandler:(id)handler
{
  v36 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE2AB8 != -1)
  {
    dispatch_once(&qword_1EAFE2AB8, &unk_1F0E28AA0);
  }

  v5 = qword_1EAFE2AC0;
  if (os_log_type_enabled(qword_1EAFE2AC0, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    *buf = 67109120;
    *&buf[4] = objc_msgSend_areBatchedSensorsSupported(v6, v7, v8);
    _os_log_impl(&dword_19B41C000, v5, OS_LOG_TYPE_DEFAULT, "[framework-accel] attempting to start updates to queue, supported %d", buf, 8u);
  }

  v9 = sub_19B420058();
  if (*(v9 + 160) > 1 || *(v9 + 164) > 1 || *(v9 + 168) > 1 || *(v9 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2AB8 != -1)
    {
      dispatch_once(&qword_1EAFE2AB8, &unk_1F0E28AA0);
    }

    v10 = objc_opt_class();
    LODWORD(v33) = 67109120;
    HIDWORD(v33) = objc_msgSend_areBatchedSensorsSupported(v10, v11, v12);
    v13 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMBatchedSensorManagerInternal _startAccelerometerUpdatesWithHandler:]", "CoreLocation: %s\n", v13);
    if (v13 != buf)
    {
      free(v13);
    }
  }

  v14 = objc_opt_class();
  if (objc_msgSend_areBatchedSensorsSupported(v14, v15, v16))
  {
    accelHandler = self->_accelHandler;
    if (accelHandler != handler)
    {

      self->_accelHandler = objc_msgSend_copy(handler, v18, v19);
    }

    if (self->_connection)
    {
      if (qword_1EAFE2AB8 != -1)
      {
        dispatch_once(&qword_1EAFE2AB8, &unk_1F0E28AA0);
      }

      v20 = qword_1EAFE2AC0;
      if (os_log_type_enabled(qword_1EAFE2AC0, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v20, OS_LOG_TYPE_DEFAULT, "[framework-accel] starting updates to queue", buf, 2u);
      }

      v21 = sub_19B420058();
      if (*(v21 + 160) > 1 || *(v21 + 164) > 1 || *(v21 + 168) > 1 || *(v21 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2AB8 != -1)
        {
          dispatch_once(&qword_1EAFE2AB8, &unk_1F0E28AA0);
        }

        LOWORD(v33) = 0;
        v22 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 2, "[CMBatchedSensorManagerInternal _startAccelerometerUpdatesWithHandler:]", "CoreLocation: %s\n", v22);
        if (v22 != buf)
        {
          free(v22);
        }
      }

      connection = self->_connection;
      sub_19B428B50(buf, "kCLConnectionMessageBatchedAccelerometer");
      CLConnectionClient::setHandlerForMessage();
      if (v35 < 0)
      {
        operator delete(*buf);
      }

      v31 = @"kCLConnectionMessageSubscribeKey";
      v32 = MEMORY[0x1E695E118];
      v33 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v24, &v32, &v31, 1);
      sub_19B45280C();
    }

    if (qword_1EAFE2AB8 != -1)
    {
      dispatch_once(&qword_1EAFE2AB8, &unk_1F0E28AA0);
    }

    v26 = qword_1EAFE2AC0;
    if (os_log_type_enabled(qword_1EAFE2AC0, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v26, OS_LOG_TYPE_ERROR, "framework-accel] no connection", buf, 2u);
    }

    v27 = sub_19B420058();
    if ((*(v27 + 160) & 0x80000000) == 0 || (*(v27 + 164) & 0x80000000) == 0 || (*(v27 + 168) & 0x80000000) == 0 || *(v27 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2AB8 != -1)
      {
        dispatch_once(&qword_1EAFE2AB8, &unk_1F0E28AA0);
      }

      LOWORD(v33) = 0;
      v28 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "[CMBatchedSensorManagerInternal _startAccelerometerUpdatesWithHandler:]", "CoreLocation: %s\n", v28);
      if (v28 != buf)
      {
        free(v28);
      }
    }

    self->_accelActive = 1;
  }

  else if (handler)
  {
    dataQueue = self->_dataQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_19B77E808;
    block[3] = &unk_1E7532B40;
    block[4] = handler;
    dispatch_async(dataQueue, block);
  }

  v29 = *MEMORY[0x1E69E9840];
}

- (void)_stopAccelerometerUpdates
{
  v22 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE2AB8 != -1)
  {
    dispatch_once(&qword_1EAFE2AB8, &unk_1F0E28AA0);
  }

  v3 = qword_1EAFE2AC0;
  if (os_log_type_enabled(qword_1EAFE2AC0, OS_LOG_TYPE_DEFAULT))
  {
    v4 = objc_opt_class();
    *buf = 67109120;
    *&buf[4] = objc_msgSend_areBatchedSensorsSupported(v4, v5, v6);
    _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_DEFAULT, "[framework-accel] stopping updates, supported %d", buf, 8u);
  }

  v7 = sub_19B420058();
  if (*(v7 + 160) > 1 || *(v7 + 164) > 1 || *(v7 + 168) > 1 || *(v7 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2AB8 != -1)
    {
      dispatch_once(&qword_1EAFE2AB8, &unk_1F0E28AA0);
    }

    v8 = objc_opt_class();
    LODWORD(v20) = 67109120;
    HIDWORD(v20) = objc_msgSend_areBatchedSensorsSupported(v8, v9, v10);
    v11 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMBatchedSensorManagerInternal _stopAccelerometerUpdates]", "CoreLocation: %s\n", v11);
    if (v11 != buf)
    {
      free(v11);
    }
  }

  v12 = objc_opt_class();
  if (objc_msgSend_areBatchedSensorsSupported(v12, v13, v14))
  {
    accelHandler = self->_accelHandler;
    if (accelHandler)
    {

      self->_accelHandler = 0;
    }

    if (self->_connection)
    {
      v18 = @"kCLConnectionMessageSubscribeKey";
      v19 = MEMORY[0x1E695E110];
      v20 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v15, &v19, &v18, 1);
      sub_19B45280C();
    }

    self->_accelActive = 0;
    objc_msgSend_setAccelBatch_(self, v15, 0);
  }

  v17 = *MEMORY[0x1E69E9840];
}

+ (id)_newArrayByUnpackingAccelerometerBatch:(shared_ptr<CLConnectionMessage>)batch
{
  v155 = *MEMORY[0x1E69E9840];
  v3 = CLConnectionMessage::getRawPayload(*batch.var0);
  xpc_data_get_bytes_ptr(v3);
  length = xpc_data_get_length(v3);
  v5 = length / 20;
  if (qword_1EAFE2AB8 != -1)
  {
    dispatch_once(&qword_1EAFE2AB8, &unk_1F0E28AA0);
  }

  v6 = qword_1EAFE2AC0;
  if (os_log_type_enabled(qword_1EAFE2AC0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67240448;
    v134 = length;
    *v135 = 1026;
    *&v135[2] = length / 20;
    _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_DEFAULT, "[framework-accel] Received msg size %{public}d num %{public}d", buf, 0xEu);
  }

  v7 = sub_19B420058();
  if (*(v7 + 160) > 1 || *(v7 + 164) > 1 || *(v7 + 168) > 1 || *(v7 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2AB8 != -1)
    {
      dispatch_once(&qword_1EAFE2AB8, &unk_1F0E28AA0);
    }

    v8 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "+[CMBatchedSensorManagerInternal _newArrayByUnpackingAccelerometerBatch:]", "CoreLocation: %s\n", v8);
    if (v8 != buf)
    {
      free(v8);
    }
  }

  v9 = objc_opt_new();
  if (length < 20)
  {
    v12 = 0;
    v11 = 0;
  }

  else
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    do
    {
      xpc_data_get_bytes(v3, buf, v10, 0x14uLL);
      v14 = *buf;
      v15 = v134;
      v16 = *v135;
      v10 += 20;
      v17 = *&v135[4];
      v18 = objc_autoreleasePoolPush();
      v19 = [CMAccelerometerData alloc];
      LODWORD(v20) = v14;
      LODWORD(v21) = v15;
      LODWORD(v22) = v16;
      v25 = objc_msgSend_initWithAcceleration_andTimestamp_(v19, v23, v24, v20, v21, v22, v17 * 0.000000999999997);
      objc_msgSend_addObject_(v9, v26, v25);
      objc_autoreleasePoolPop(v18);
      if (v13)
      {
        v12 = v17;
      }

      else
      {
        v11 = v17;
      }

      ++v13;
    }

    while (v5 != v13);
  }

  if (qword_1EAFE2AB8 != -1)
  {
    dispatch_once(&qword_1EAFE2AB8, &unk_1F0E28AA0);
  }

  v27 = qword_1EAFE2AC0;
  if (os_log_type_enabled(qword_1EAFE2AC0, OS_LOG_TYPE_DEFAULT))
  {
    Object = objc_msgSend_firstObject(v9, v28, v29);
    objc_msgSend_timestamp(Object, v31, v32);
    v34 = v33;
    v37 = objc_msgSend_lastObject(v9, v35, v36);
    objc_msgSend_timestamp(v37, v38, v39);
    v41 = v40;
    v44 = objc_msgSend_firstObject(v9, v42, v43);
    objc_msgSend_acceleration(v44, v45, v46);
    v48 = v47;
    v51 = objc_msgSend_firstObject(v9, v49, v50);
    objc_msgSend_acceleration(v51, v52, v53);
    v55 = v54;
    v58 = objc_msgSend_firstObject(v9, v56, v57);
    objc_msgSend_acceleration(v58, v59, v60);
    v62 = v61;
    v65 = objc_msgSend_lastObject(v9, v63, v64);
    objc_msgSend_acceleration(v65, v66, v67);
    v69 = v68;
    v72 = objc_msgSend_lastObject(v9, v70, v71);
    objc_msgSend_acceleration(v72, v73, v74);
    v76 = v75;
    v79 = objc_msgSend_lastObject(v9, v77, v78);
    objc_msgSend_acceleration(v79, v80, v81);
    v83 = v82;
    v86 = objc_msgSend_count(v9, v84, v85);
    *buf = 67243008;
    v134 = v5;
    *v135 = 2050;
    *&v135[2] = v11;
    *&v135[10] = 2050;
    v136 = v12;
    v137 = 2050;
    v138 = v34;
    v139 = 2050;
    v140 = v41;
    v141 = 2050;
    v142 = v48;
    v143 = 2050;
    v144 = v55;
    v145 = 2050;
    v146 = v62;
    v147 = 2050;
    v148 = v69;
    v149 = 2050;
    v150 = v76;
    v151 = 2050;
    v152 = v83;
    v153 = 1026;
    v154 = v86;
    _os_log_impl(&dword_19B41C000, v27, OS_LOG_TYPE_DEFAULT, "[framework-accel] Looped %{public}d times range [%{public}llu %{public}llu], timeS [%{public}f %{public}f], first sample [%{public}f %{public}f %{public}f], last sample [%{public}f %{public}f %{public}f], size %{public}d", buf, 0x72u);
  }

  v87 = sub_19B420058();
  if (*(v87 + 160) > 1 || *(v87 + 164) > 1 || *(v87 + 168) > 1 || *(v87 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2AB8 != -1)
    {
      dispatch_once(&qword_1EAFE2AB8, &unk_1F0E28AA0);
    }

    v90 = objc_msgSend_firstObject(v9, v88, v89);
    objc_msgSend_timestamp(v90, v91, v92);
    v95 = objc_msgSend_lastObject(v9, v93, v94);
    objc_msgSend_timestamp(v95, v96, v97);
    v100 = objc_msgSend_firstObject(v9, v98, v99);
    objc_msgSend_acceleration(v100, v101, v102);
    v105 = objc_msgSend_firstObject(v9, v103, v104);
    objc_msgSend_acceleration(v105, v106, v107);
    v110 = objc_msgSend_firstObject(v9, v108, v109);
    objc_msgSend_acceleration(v110, v111, v112);
    v115 = objc_msgSend_lastObject(v9, v113, v114);
    objc_msgSend_acceleration(v115, v116, v117);
    v120 = objc_msgSend_lastObject(v9, v118, v119);
    objc_msgSend_acceleration(v120, v121, v122);
    v125 = objc_msgSend_lastObject(v9, v123, v124);
    objc_msgSend_acceleration(v125, v126, v127);
    objc_msgSend_count(v9, v128, v129);
    v130 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "+[CMBatchedSensorManagerInternal _newArrayByUnpackingAccelerometerBatch:]", "CoreLocation: %s\n", v130);
    if (v130 != buf)
    {
      free(v130);
    }
  }

  v131 = *MEMORY[0x1E69E9840];
  return v9;
}

- (void)_startDeviceMotionUpdatesWithHandler:(id)handler
{
  v36 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE2AB8 != -1)
  {
    dispatch_once(&qword_1EAFE2AB8, &unk_1F0E28AA0);
  }

  v5 = qword_1EAFE2AC0;
  if (os_log_type_enabled(qword_1EAFE2AC0, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    *buf = 67109120;
    *&buf[4] = objc_msgSend_areBatchedSensorsSupported(v6, v7, v8);
    _os_log_impl(&dword_19B41C000, v5, OS_LOG_TYPE_DEFAULT, "[framework-dm] attempting to start updates to queue, supported %d", buf, 8u);
  }

  v9 = sub_19B420058();
  if (*(v9 + 160) > 1 || *(v9 + 164) > 1 || *(v9 + 168) > 1 || *(v9 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2AB8 != -1)
    {
      dispatch_once(&qword_1EAFE2AB8, &unk_1F0E28AA0);
    }

    v10 = objc_opt_class();
    LODWORD(v33) = 67109120;
    HIDWORD(v33) = objc_msgSend_areBatchedSensorsSupported(v10, v11, v12);
    v13 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMBatchedSensorManagerInternal _startDeviceMotionUpdatesWithHandler:]", "CoreLocation: %s\n", v13);
    if (v13 != buf)
    {
      free(v13);
    }
  }

  v14 = objc_opt_class();
  if (objc_msgSend_areBatchedSensorsSupported(v14, v15, v16))
  {
    deviceMotionHandler = self->_deviceMotionHandler;
    if (deviceMotionHandler != handler)
    {

      self->_deviceMotionHandler = objc_msgSend_copy(handler, v18, v19);
    }

    if (self->_connection)
    {
      if (qword_1EAFE2AB8 != -1)
      {
        dispatch_once(&qword_1EAFE2AB8, &unk_1F0E28AA0);
      }

      v20 = qword_1EAFE2AC0;
      if (os_log_type_enabled(qword_1EAFE2AC0, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v20, OS_LOG_TYPE_DEFAULT, "[framework-dm] starting updates to queue", buf, 2u);
      }

      v21 = sub_19B420058();
      if (*(v21 + 160) > 1 || *(v21 + 164) > 1 || *(v21 + 168) > 1 || *(v21 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2AB8 != -1)
        {
          dispatch_once(&qword_1EAFE2AB8, &unk_1F0E28AA0);
        }

        LOWORD(v33) = 0;
        v22 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 2, "[CMBatchedSensorManagerInternal _startDeviceMotionUpdatesWithHandler:]", "CoreLocation: %s\n", v22);
        if (v22 != buf)
        {
          free(v22);
        }
      }

      connection = self->_connection;
      sub_19B428B50(buf, "kCLConnectionMessageBatchedDeviceMotion");
      CLConnectionClient::setHandlerForMessage();
      if (v35 < 0)
      {
        operator delete(*buf);
      }

      v31 = @"kCLConnectionMessageSubscribeKey";
      v32 = MEMORY[0x1E695E118];
      v33 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v24, &v32, &v31, 1);
      sub_19B5D12C8();
    }

    if (qword_1EAFE2AB8 != -1)
    {
      dispatch_once(&qword_1EAFE2AB8, &unk_1F0E28AA0);
    }

    v26 = qword_1EAFE2AC0;
    if (os_log_type_enabled(qword_1EAFE2AC0, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v26, OS_LOG_TYPE_ERROR, "framework-dm] no connection", buf, 2u);
    }

    v27 = sub_19B420058();
    if ((*(v27 + 160) & 0x80000000) == 0 || (*(v27 + 164) & 0x80000000) == 0 || (*(v27 + 168) & 0x80000000) == 0 || *(v27 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2AB8 != -1)
      {
        dispatch_once(&qword_1EAFE2AB8, &unk_1F0E28AA0);
      }

      LOWORD(v33) = 0;
      v28 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "[CMBatchedSensorManagerInternal _startDeviceMotionUpdatesWithHandler:]", "CoreLocation: %s\n", v28);
      if (v28 != buf)
      {
        free(v28);
      }
    }

    self->_deviceMotionActive = 1;
  }

  else if (handler)
  {
    dataQueue = self->_dataQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_19B77FA78;
    block[3] = &unk_1E7532B40;
    block[4] = handler;
    dispatch_async(dataQueue, block);
  }

  v29 = *MEMORY[0x1E69E9840];
}

- (void)_stopDeviceMotionUpdates
{
  v22 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE2AB8 != -1)
  {
    dispatch_once(&qword_1EAFE2AB8, &unk_1F0E28AA0);
  }

  v3 = qword_1EAFE2AC0;
  if (os_log_type_enabled(qword_1EAFE2AC0, OS_LOG_TYPE_DEFAULT))
  {
    v4 = objc_opt_class();
    *buf = 67109120;
    *&buf[4] = objc_msgSend_areBatchedSensorsSupported(v4, v5, v6);
    _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_DEFAULT, "[framework-dm] stopping updates, supported %d", buf, 8u);
  }

  v7 = sub_19B420058();
  if (*(v7 + 160) > 1 || *(v7 + 164) > 1 || *(v7 + 168) > 1 || *(v7 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2AB8 != -1)
    {
      dispatch_once(&qword_1EAFE2AB8, &unk_1F0E28AA0);
    }

    v8 = objc_opt_class();
    LODWORD(v20) = 67109120;
    HIDWORD(v20) = objc_msgSend_areBatchedSensorsSupported(v8, v9, v10);
    v11 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMBatchedSensorManagerInternal _stopDeviceMotionUpdates]", "CoreLocation: %s\n", v11);
    if (v11 != buf)
    {
      free(v11);
    }
  }

  v12 = objc_opt_class();
  if (objc_msgSend_areBatchedSensorsSupported(v12, v13, v14))
  {
    deviceMotionHandler = self->_deviceMotionHandler;
    if (deviceMotionHandler)
    {

      self->_deviceMotionHandler = 0;
    }

    if (self->_connection)
    {
      v18 = @"kCLConnectionMessageSubscribeKey";
      v19 = MEMORY[0x1E695E110];
      v20 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v15, &v19, &v18, 1);
      sub_19B5D12C8();
    }

    self->_deviceMotionActive = 0;
    objc_msgSend_setDeviceMotionBatch_(self, v15, 0);
  }

  v17 = *MEMORY[0x1E69E9840];
}

+ (id)_newArrayByUnpackingDeviceMotionBatch:(shared_ptr<CLConnectionMessage>)batch
{
  v178 = *MEMORY[0x1E69E9840];
  v3 = CLConnectionMessage::getRawPayload(*batch.var0);
  xpc_data_get_bytes_ptr(v3);
  length = xpc_data_get_length(v3);
  if (qword_1EAFE2AB8 != -1)
  {
    dispatch_once(&qword_1EAFE2AB8, &unk_1F0E28AA0);
  }

  v5 = qword_1EAFE2AC0;
  if (os_log_type_enabled(qword_1EAFE2AC0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67240448;
    *&buf[4] = length;
    *v170 = 1026;
    *&v170[2] = length / 50;
    _os_log_impl(&dword_19B41C000, v5, OS_LOG_TYPE_DEFAULT, "[framework-dm] Received msg size %{public}d num %{public}d", buf, 0xEu);
  }

  v6 = sub_19B420058();
  if (*(v6 + 160) > 1 || *(v6 + 164) > 1 || *(v6 + 168) > 1 || *(v6 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2AB8 != -1)
    {
      dispatch_once(&qword_1EAFE2AB8, &unk_1F0E28AA0);
    }

    buffer.i32[0] = 67240448;
    buffer.i32[1] = length;
    *v152 = 1026;
    *&v152[2] = length / 50;
    v7 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "+[CMBatchedSensorManagerInternal _newArrayByUnpackingDeviceMotionBatch:]", "CoreLocation: %s\n", v7);
    if (v7 != buf)
    {
      free(v7);
    }
  }

  v148 = length / 50;
  v147 = objc_opt_new();
  if (length < 50)
  {
    v10 = 0;
    v9 = 0;
  }

  else
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    do
    {
      xpc_data_get_bytes(v3, &buffer, v8, 0x32uLL);
      *&v12 = *v154;
      v13 = v3;
      v14 = *&v155[2];
      v8 += 50;
      v15 = *&v155[2] * 0.000000999999997;
      v16 = *&v152[4];
      *(&v12 + 1) = __PAIR64__(*&v152[8], *&v154[8]);
      v17 = *v152;
      v18 = v153;
      v149 = vcvtq_f64_f32(buffer);
      v150 = v12;
      v19 = objc_autoreleasePoolPush();
      v20 = [CMDeviceMotion alloc];
      *v170 = v149;
      *buf = v16;
      *&v170[16] = v17;
      *&v170[24] = v150;
      *v171 = v18;
      memset(&v171[8], 0, 32);
      v22 = objc_msgSend_initWithDeviceMotion_internal_timestamp_(v20, v21, buf, 0.0, 0.0, 0.0, 0.0, v15);
      objc_msgSend_addObject_(v147, v23, v22);
      objc_autoreleasePoolPop(v19);
      if (v11)
      {
        v10 = v14;
      }

      else
      {
        v9 = v14;
      }

      v3 = v13;
      ++v11;
    }

    while (v148 != v11);
  }

  if (qword_1EAFE2AB8 != -1)
  {
    dispatch_once(&qword_1EAFE2AB8, &unk_1F0E28AA0);
  }

  v24 = qword_1EAFE2AC0;
  if (os_log_type_enabled(qword_1EAFE2AC0, OS_LOG_TYPE_DEFAULT))
  {
    Object = objc_msgSend_firstObject(v147, v25, v26);
    objc_msgSend_timestamp(Object, v28, v29);
    v31 = v30;
    v34 = objc_msgSend_lastObject(v147, v32, v33);
    objc_msgSend_timestamp(v34, v35, v36);
    v38 = v37;
    v41 = objc_msgSend_firstObject(v147, v39, v40);
    objc_msgSend_userAcceleration(v41, v42, v43);
    v45 = v44;
    v48 = objc_msgSend_firstObject(v147, v46, v47);
    objc_msgSend_userAcceleration(v48, v49, v50);
    v52 = v51;
    v55 = objc_msgSend_firstObject(v147, v53, v54);
    objc_msgSend_userAcceleration(v55, v56, v57);
    v59 = v58;
    v62 = objc_msgSend_lastObject(v147, v60, v61);
    objc_msgSend_userAcceleration(v62, v63, v64);
    v66 = v65;
    v69 = objc_msgSend_lastObject(v147, v67, v68);
    objc_msgSend_userAcceleration(v69, v70, v71);
    v73 = v72;
    v76 = objc_msgSend_lastObject(v147, v74, v75);
    objc_msgSend_userAcceleration(v76, v77, v78);
    v80 = v79;
    v83 = objc_msgSend_count(v147, v81, v82);
    *buf = 67243008;
    *&buf[4] = v148;
    *v170 = 2050;
    *&v170[2] = v9;
    *&v170[10] = 2050;
    *&v170[12] = v10;
    *&v170[20] = 2050;
    *&v170[22] = v31;
    *&v170[30] = 2050;
    *&v170[32] = v38;
    *v171 = 2050;
    *&v171[2] = v45;
    *&v171[10] = 2050;
    *&v171[12] = v52;
    *&v171[20] = 2050;
    *&v171[22] = v59;
    *&v171[30] = 2050;
    *&v171[32] = v66;
    v172 = 2050;
    v173 = v73;
    v174 = 2050;
    v175 = v80;
    v176 = 1026;
    v177 = v83;
    _os_log_impl(&dword_19B41C000, v24, OS_LOG_TYPE_DEFAULT, "[framework-dm] Looped %{public}d times range [%{public}llu %{public}llu], timeS [%{public}f %{public}f], first sample [%{public}f %{public}f %{public}f], last sample [%{public}f %{public}f %{public}f], size %{public}d", buf, 0x72u);
  }

  v84 = sub_19B420058();
  if (*(v84 + 160) > 1 || *(v84 + 164) > 1 || *(v84 + 168) > 1 || *(v84 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2AB8 != -1)
    {
      dispatch_once(&qword_1EAFE2AB8, &unk_1F0E28AA0);
    }

    v87 = objc_msgSend_firstObject(v147, v85, v86);
    objc_msgSend_timestamp(v87, v88, v89);
    v91 = v90;
    v94 = objc_msgSend_lastObject(v147, v92, v93);
    objc_msgSend_timestamp(v94, v95, v96);
    v98 = v97;
    v101 = objc_msgSend_firstObject(v147, v99, v100);
    objc_msgSend_userAcceleration(v101, v102, v103);
    v105 = v104;
    v108 = objc_msgSend_firstObject(v147, v106, v107);
    objc_msgSend_userAcceleration(v108, v109, v110);
    v112 = v111;
    v115 = objc_msgSend_firstObject(v147, v113, v114);
    objc_msgSend_userAcceleration(v115, v116, v117);
    v119 = v118;
    v122 = objc_msgSend_lastObject(v147, v120, v121);
    objc_msgSend_userAcceleration(v122, v123, v124);
    v126 = v125;
    v129 = objc_msgSend_lastObject(v147, v127, v128);
    objc_msgSend_userAcceleration(v129, v130, v131);
    v133 = v132;
    v136 = objc_msgSend_lastObject(v147, v134, v135);
    objc_msgSend_userAcceleration(v136, v137, v138);
    v140 = v139;
    v143 = objc_msgSend_count(v147, v141, v142);
    buffer.i32[0] = 67243008;
    buffer.i32[1] = v148;
    *v152 = 2050;
    *&v152[2] = v9;
    *&v152[10] = 2050;
    v153 = v10;
    *v154 = 2050;
    *&v154[2] = v91;
    *&v154[10] = 2050;
    *v155 = v98;
    *&v155[8] = 2050;
    v156 = v105;
    v157 = 2050;
    v158 = v112;
    v159 = 2050;
    v160 = v119;
    v161 = 2050;
    v162 = v126;
    v163 = 2050;
    v164 = v133;
    v165 = 2050;
    v166 = v140;
    v167 = 1026;
    v168 = v143;
    v144 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "+[CMBatchedSensorManagerInternal _newArrayByUnpackingDeviceMotionBatch:]", "CoreLocation: %s\n", v144);
    if (v144 != buf)
    {
      free(v144);
    }
  }

  v145 = *MEMORY[0x1E69E9840];
  return v147;
}

@end