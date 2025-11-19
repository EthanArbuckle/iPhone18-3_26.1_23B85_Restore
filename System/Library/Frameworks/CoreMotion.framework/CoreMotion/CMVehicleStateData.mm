@interface CMVehicleStateData
- (CMVehicleStateData)initWithCoder:(id)a3;
- (CMVehicleStateData)initWithTimeRange:(id)a3 vehicleName:(id)a4 vehicleModelName:(id)a5 vehicleBluetoothAddress:(id)a6;
- (CMVehicleStateData)initWithTimestamp:(id)a3 state:(unint64_t)a4 hints:(unint64_t)a5;
- (NSString)deviceId;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CMVehicleStateData

- (CMVehicleStateData)initWithTimeRange:(id)a3 vehicleName:(id)a4 vehicleModelName:(id)a5 vehicleBluetoothAddress:(id)a6
{
  v12.receiver = self;
  v12.super_class = CMVehicleStateData;
  v10 = [(CMVehicleStateData *)&v12 init];
  if (v10)
  {
    *(v10 + 1) = a3;
    *(v10 + 2) = a4;
    *(v10 + 3) = a5;
    *(v10 + 4) = a6;
    *(v10 + 40) = xmmword_19B7B9450;
  }

  return v10;
}

- (CMVehicleStateData)initWithTimestamp:(id)a3 state:(unint64_t)a4 hints:(unint64_t)a5
{
  v20.receiver = self;
  v20.super_class = CMVehicleStateData;
  v8 = [(CMVehicleStateData *)&v20 init];
  if (v8)
  {
    v9 = [CMMotionTimeRange alloc];
    objc_msgSend_timeIntervalSinceReferenceDate(a3, v10, v11);
    v13 = v12;
    objc_msgSend_timeIntervalSinceReferenceDate(a3, v14, v15);
    v8->fTimeRange = objc_msgSend_initWithStartDate_endDate_(v9, v16, v17, v13, v18);
    v8->fVehicleName = 0;
    v8->fVehicleModelName = 0;
    v8->fVehicleBluetoothAddress = 0;
    v8->fVehicularState = a4;
    v8->fVehicularHints = a5;
  }

  return v8;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CMVehicleStateData;
  [(CMVehicleStateData *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, a3);
  v12 = objc_msgSend_init(v7, v8, v9);
  if (v12)
  {
    *(v12 + 8) = objc_msgSend_copy(self->fTimeRange, v10, v11);
    *(v12 + 16) = objc_msgSend_copy(self->fVehicleName, v13, v14);
    *(v12 + 24) = objc_msgSend_copy(self->fVehicleModelName, v15, v16);
    *(v12 + 32) = objc_msgSend_copy(self->fVehicleBluetoothAddress, v17, v18);
    *(v12 + 40) = *&self->fVehicularState;
  }

  return v12;
}

- (CMVehicleStateData)initWithCoder:(id)a3
{
  v16.receiver = self;
  v16.super_class = CMVehicleStateData;
  v4 = [(CMVehicleStateData *)&v16 init];
  if (v4)
  {
    v5 = objc_opt_class();
    v4->fTimeRange = objc_msgSend_decodeObjectOfClass_forKey_(a3, v6, v5, @"kCMVehicleStateDataCodingKeyTimeRange");
    v7 = objc_opt_class();
    v4->fVehicleName = objc_msgSend_decodeObjectOfClass_forKey_(a3, v8, v7, @"kCMVehicleStateDataCodingKeyVehicleName");
    v9 = objc_opt_class();
    v4->fVehicleModelName = objc_msgSend_decodeObjectOfClass_forKey_(a3, v10, v9, @"kCMVehicleStateDataCodingKeyVehicleModelName");
    v11 = objc_opt_class();
    v4->fVehicleBluetoothAddress = objc_msgSend_decodeObjectOfClass_forKey_(a3, v12, v11, @"kCMVehicleStateDataCodingKeyVehicleBluetoothAddress");
    v4->fVehicularState = objc_msgSend_decodeIntegerForKey_(a3, v13, @"kCMVehicleStateDataCodingKeyState");
    v4->fVehicularHints = objc_msgSend_decodeIntegerForKey_(a3, v14, @"kCMVehicleStateDataCodingKeyHints");
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  objc_msgSend_encodeObject_forKey_(a3, a2, self->fTimeRange, @"kCMVehicleStateDataCodingKeyTimeRange");
  objc_msgSend_encodeObject_forKey_(a3, v5, self->fVehicleName, @"kCMVehicleStateDataCodingKeyVehicleName");
  objc_msgSend_encodeObject_forKey_(a3, v6, self->fVehicleModelName, @"kCMVehicleStateDataCodingKeyVehicleModelName");
  objc_msgSend_encodeObject_forKey_(a3, v7, self->fVehicleBluetoothAddress, @"kCMVehicleStateDataCodingKeyVehicleBluetoothAddress");
  objc_msgSend_encodeInteger_forKey_(a3, v8, self->fVehicularState, @"kCMVehicleStateDataCodingKeyState");
  fVehicularHints = self->fVehicularHints;

  objc_msgSend_encodeInteger_forKey_(a3, v9, fVehicularHints, @"kCMVehicleStateDataCodingKeyHints");
}

- (id)description
{
  v43 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v7 = objc_msgSend_timeRange(self, v5, v6);
  started = objc_msgSend_startDate(v7, v8, v9);
  v13 = objc_msgSend_timeRange(self, v11, v12);
  v16 = objc_msgSend_endDate(v13, v14, v15);
  v19 = objc_msgSend_deviceId(self, v17, v18);
  v22 = objc_msgSend_vehicleName(self, v20, v21);
  v25 = objc_msgSend_vehicleModelName(self, v23, v24);
  v28 = objc_msgSend_vehicleBluetoothAddress(self, v26, v27);
  v29 = MEMORY[0x1E696AD98];
  v32 = objc_msgSend_vehicularState(self, v30, v31);
  v34 = objc_msgSend_numberWithUnsignedInteger_(v29, v33, v32);
  v35 = MEMORY[0x1E696AD98];
  v38 = objc_msgSend_vehicularHints(self, v36, v37);
  v40 = objc_msgSend_numberWithUnsignedInteger_(v35, v39, v38);
  return objc_msgSend_stringWithFormat_(v43, v41, @"%@,<startDate %@, endDate %@, deviceId %@, vehicleName %@, vehicleModelName %@, vehicleBluetoothAddress %@, state %@, hints %@>", v4, started, v16, v19, v22, v25, v28, v34, v40);
}

- (NSString)deviceId
{
  result = self->fVehicleName;
  if (!result)
  {
    return self->fVehicleBluetoothAddress;
  }

  return result;
}

@end