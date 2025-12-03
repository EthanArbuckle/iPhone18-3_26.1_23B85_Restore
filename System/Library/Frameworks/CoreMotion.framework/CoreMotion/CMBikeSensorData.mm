@interface CMBikeSensorData
+ (BOOL)isAvailable;
- (CMBikeSensorData)initWithCoder:(id)coder;
- (CMBikeSensorData)initWithTimestamp:(id)timestamp;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)newFitnessMachineDataFromBikeSensorData;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CMBikeSensorData

+ (BOOL)isAvailable
{
  if ((sub_19B4215D8() & 1) == 0)
  {
    sub_19B421798();
  }

  return 0;
}

- (CMBikeSensorData)initWithTimestamp:(id)timestamp
{
  if (!timestamp)
  {
    v11 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, 0);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v11, v12, a2, self, @"CMBikeSensorData.mm", 45, @"Invalid parameter not satisfying: %@", @"timestamp");
  }

  v13.receiver = self;
  v13.super_class = CMBikeSensorData;
  v7 = [(CMBikeSensorData *)&v13 init];
  if (v7)
  {
    objc_msgSend_timeIntervalSinceReferenceDate(timestamp, v5, v6);
    v7->fTimestamp = v8;
    *&v7->_instantaneousCadence = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
    v7->_instantaneousSpeed = 1.79769313e308;
    v7->_model = &stru_1F0E3D7A0;
    v7->_manufacturer = &stru_1F0E3D7A0;
    v7->_deviceIdentifier = &stru_1F0E3D7A0;
  }

  return v7;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = CMBikeSensorData;
  [(CMBikeSensorData *)&v2 dealloc];
}

- (CMBikeSensorData)initWithCoder:(id)coder
{
  v17.receiver = self;
  v17.super_class = CMBikeSensorData;
  v5 = [(CMBikeSensorData *)&v17 init];
  if (v5)
  {
    objc_msgSend_decodeDoubleForKey_(coder, v4, @"kCMBikeSensorDataKeyTimestamp");
    v5->fTimestamp = v6;
    objc_msgSend_decodeDoubleForKey_(coder, v7, @"kCMBikeSensorDataKeyInstantaneousSpeed");
    v5->_instantaneousSpeed = v8;
    objc_msgSend_decodeDoubleForKey_(coder, v9, @"kCMBikeSensorDataKeyInstantaneousCadence");
    v5->_instantaneousCadence = v10;
    objc_msgSend_decodeDoubleForKey_(coder, v11, @"kCMBikeSensorDataKeyInstantaneousPower");
    v5->_instantaneousPower = v12;
    v5->_model = objc_msgSend_decodeObjectForKey_(coder, v13, @"kCMBikeSensorDataKeyModel");
    v5->_deviceIdentifier = objc_msgSend_decodeObjectForKey_(coder, v14, @"kCMBikeSensorDataKeyDeviceIdentifier");
    v5->_manufacturer = objc_msgSend_decodeObjectForKey_(coder, v15, @"kCMBikeSensorDataKeyManufacturer");
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, zone);
  v10 = objc_msgSend_dateWithTimeIntervalSinceReferenceDate_(MEMORY[0x1E695DF00], v8, v9, self->fTimestamp);
  v12 = objc_msgSend_initWithTimestamp_(v7, v11, v10);
  objc_msgSend_setInstantaneousSpeed_(v12, v13, v14, self->_instantaneousSpeed);
  objc_msgSend_setInstantaneousCadence_(v12, v15, v16, self->_instantaneousCadence);
  objc_msgSend_setInstantaneousPower_(v12, v17, v18, self->_instantaneousPower);
  objc_msgSend_setModel_(v12, v19, self->_model);
  objc_msgSend_setDeviceIdentifier_(v12, v20, self->_deviceIdentifier);
  objc_msgSend_setManufacturer_(v12, v21, self->_manufacturer);
  return v12;
}

- (void)encodeWithCoder:(id)coder
{
  objc_msgSend_encodeDouble_forKey_(coder, a2, @"kCMBikeSensorDataKeyTimestamp", self->fTimestamp);
  objc_msgSend_encodeDouble_forKey_(coder, v5, @"kCMBikeSensorDataKeyInstantaneousSpeed", self->_instantaneousSpeed);
  objc_msgSend_encodeDouble_forKey_(coder, v6, @"kCMBikeSensorDataKeyInstantaneousCadence", self->_instantaneousCadence);
  objc_msgSend_encodeDouble_forKey_(coder, v7, @"kCMBikeSensorDataKeyInstantaneousPower", self->_instantaneousPower);
  objc_msgSend_encodeObject_forKey_(coder, v8, self->_model, @"kCMBikeSensorDataKeyModel");
  objc_msgSend_encodeObject_forKey_(coder, v9, self->_deviceIdentifier, @"kCMBikeSensorDataKeyDeviceIdentifier");
  manufacturer = self->_manufacturer;

  objc_msgSend_encodeObject_forKey_(coder, v10, manufacturer, @"kCMBikeSensorDataKeyManufacturer");
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v19 = *&self->fTimestamp;
  instantaneousCadence = self->_instantaneousCadence;
  instantaneousPower = self->_instantaneousPower;
  v10 = objc_msgSend_UTF8String(self->_model, v8, v9);
  v13 = objc_msgSend_UTF8String(self->_deviceIdentifier, v11, v12);
  v16 = objc_msgSend_UTF8String(self->_manufacturer, v14, v15);
  return objc_msgSend_stringWithFormat_(v3, v17, @"%@, <timestamp, %f, instantaneousSpeed, %f, instantaneousCadence, %f, instantaneousPower, %f, model, %s, device identifier, %s, manufacturer, %s>", v5, v19, *&instantaneousCadence, *&instantaneousPower, v10, v13, v16);
}

- (id)newFitnessMachineDataFromBikeSensorData
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DF00];
  Current = CFAbsoluteTimeGetCurrent();
  v7 = objc_msgSend_dateWithTimeIntervalSinceReferenceDate_(v3, v5, v6, Current);
  objc_msgSend_timeIntervalSinceReferenceDate(v7, v8, v9);
  v11 = v10;
  if (v10 - self->fTimestamp > 5.0)
  {
    if (qword_1EAFE2A98 != -1)
    {
      dispatch_once(&qword_1EAFE2A98, &unk_1F0E2A720);
    }

    v12 = qword_1EAFE2AA0;
    if (os_log_type_enabled(qword_1EAFE2AA0, OS_LOG_TYPE_ERROR))
    {
      fTimestamp = self->fTimestamp;
      *buf = 134218240;
      v22 = fTimestamp;
      v23 = 2048;
      v24 = v11;
      _os_log_impl(&dword_19B41C000, v12, OS_LOG_TYPE_ERROR, "Received bike power data from HK which has delay more than expected. data time, %f, now, %f", buf, 0x16u);
    }

    v14 = sub_19B420058();
    if ((*(v14 + 160) & 0x80000000) == 0 || (*(v14 + 164) & 0x80000000) == 0 || (*(v14 + 168) & 0x80000000) == 0 || *(v14 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2A98 != -1)
      {
        dispatch_once(&qword_1EAFE2A98, &unk_1F0E2A720);
      }

      v20 = self->fTimestamp;
      v15 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "[CMBikeSensorData newFitnessMachineDataFromBikeSensorData]", "CoreLocation: %s\n", v15);
      if (v15 != buf)
      {
        free(v15);
      }
    }
  }

  v16 = [CMFitnessMachineData alloc];
  result = objc_msgSend_initWithExernalBikeSensorData_speed_cadence_power_model_deviceIdentifier_manufacturer_externalFitnessType_(v16, v17, self->_model, self->_deviceIdentifier, self->_manufacturer, 1, self->fTimestamp, self->_instantaneousSpeed, self->_instantaneousCadence, self->_instantaneousPower);
  v19 = *MEMORY[0x1E69E9840];
  return result;
}

@end