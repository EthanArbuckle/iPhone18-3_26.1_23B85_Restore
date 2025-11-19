@interface CMBikeSensor
+ (BOOL)isAvailable;
- (CMBikeSensor)init;
- (void)dealloc;
- (void)feedBikeSensorData:(id)a3;
@end

@implementation CMBikeSensor

- (CMBikeSensor)init
{
  v4.receiver = self;
  v4.super_class = CMBikeSensor;
  v2 = [(CMBikeSensor *)&v4 init];
  if (v2)
  {
    v2->_internal = objc_alloc_init(CMBikeSensorInternal);
  }

  return v2;
}

- (void)dealloc
{
  internal = self->_internal;
  fInternalQueue = internal->fInternalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B6CC338;
  block[3] = &unk_1E7532988;
  block[4] = internal;
  dispatch_sync(fInternalQueue, block);

  v5.receiver = self;
  v5.super_class = CMBikeSensor;
  [(CMBikeSensor *)&v5 dealloc];
}

+ (BOOL)isAvailable
{
  if ((sub_19B4215D8() & 1) == 0)
  {
    sub_19B421798();
  }

  return 0;
}

- (void)feedBikeSensorData:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  if (qword_1ED71D418 != -1)
  {
    dispatch_once(&qword_1ED71D418, &unk_1F0E281A0);
  }

  if (qword_1ED71D410 != 3)
  {
    goto LABEL_21;
  }

  objc_msgSend_instantaneousPower(a3, a2, a3);
  if (v7 >= 1.79769313e308)
  {
    objc_msgSend_instantaneousCadence(a3, v5, v6);
    if (v8 >= 1.79769313e308)
    {
      if (qword_1EAFE2808 != -1)
      {
        dispatch_once(&qword_1EAFE2808, &unk_1F0E27F40);
      }

      v14 = qword_1EAFE2830;
      if (os_log_type_enabled(qword_1EAFE2830, OS_LOG_TYPE_DEFAULT))
      {
        objc_msgSend_instantaneousPower(a3, v15, v16);
        *buf = 134217984;
        v24 = v17;
        _os_log_impl(&dword_19B41C000, v14, OS_LOG_TYPE_DEFAULT, "CMBikeSensor::feedBikeSensorData the input variable is beyond the limit and was rejected: %f", buf, 0xCu);
      }

      v18 = sub_19B420058();
      if (*(v18 + 160) > 1 || *(v18 + 164) > 1 || *(v18 + 168) > 1 || *(v18 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2808 != -1)
        {
          dispatch_once(&qword_1EAFE2808, &unk_1F0E27F40);
        }

        objc_msgSend_instantaneousPower(a3, v19, v20);
        v21 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 2, "[CMBikeSensor feedBikeSensorData:]", "CoreLocation: %s\n", v21);
        if (v21 != buf)
        {
          free(v21);
        }
      }

LABEL_21:
      v22 = *MEMORY[0x1E69E9840];
      return;
    }
  }

  v9 = objc_msgSend_newFitnessMachineDataFromBikeSensorData(a3, v5, v6);
  v12 = objc_msgSend__internal(self, v10, v11);
  v13 = *MEMORY[0x1E69E9840];

  MEMORY[0x1EEE66B58](v12, sel__feedBikeSensorData_, v9);
}

@end