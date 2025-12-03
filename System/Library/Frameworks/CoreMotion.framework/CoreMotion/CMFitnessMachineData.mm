@interface CMFitnessMachineData
+ (BOOL)isAvailable;
- (CMFitnessMachineData)initWithCoder:(id)coder;
- (CMFitnessMachineData)initWithExernalBikeSensorData:(double)data speed:(double)speed cadence:(double)cadence power:(double)power model:(id)model deviceIdentifier:(id)identifier manufacturer:(id)manufacturer externalFitnessType:(int)self0;
- (CMFitnessMachineData)initWithTimestamp:(id)timestamp;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)convertToCLFitnessMachineData:(_CLFitnessMachineData *)data deviceId:(int)id;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)initializeVariables;
@end

@implementation CMFitnessMachineData

+ (BOOL)isAvailable
{
  if ((sub_19B4215D8() & 1) == 0)
  {
    sub_19B421798();
  }

  return 0;
}

- (CMFitnessMachineData)initWithTimestamp:(id)timestamp
{
  if (!timestamp)
  {
    v14 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, 0);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v14, v15, a2, self, @"CMFitnessMachineData.mm", 51, @"Invalid parameter not satisfying: %@", @"timestamp");
  }

  v16.receiver = self;
  v16.super_class = CMFitnessMachineData;
  v5 = [(CMFitnessMachineData *)&v16 init];
  v8 = v5;
  if (v5)
  {
    objc_msgSend_initializeVariables(v5, v6, v7);
    objc_msgSend_timeIntervalSinceReferenceDate(timestamp, v9, v10);
    v8->fTimestamp = v11;
  }

  return v8;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = CMFitnessMachineData;
  [(CMFitnessMachineData *)&v2 dealloc];
}

- (CMFitnessMachineData)initWithCoder:(id)coder
{
  v40.receiver = self;
  v40.super_class = CMFitnessMachineData;
  v5 = [(CMFitnessMachineData *)&v40 init];
  if (v5)
  {
    if (objc_msgSend_containsValueForKey_(coder, v4, @"kCMFitnessMachineDataKeyTimestamp"))
    {
      objc_msgSend_decodeDoubleForKey_(coder, v6, @"kCMFitnessMachineDataKeyTimestamp");
      v5->fTimestamp = v7;
    }

    if (objc_msgSend_containsValueForKey_(coder, v6, @"kCMFitnessMachineDataKeyElapsedTime"))
    {
      objc_msgSend_decodeDoubleForKey_(coder, v8, @"kCMFitnessMachineDataKeyElapsedTime");
      v5->_elapsedTime = v9;
    }

    if (objc_msgSend_containsValueForKey_(coder, v8, @"kCMFitnessMachineDataKeyTotalEnergy"))
    {
      objc_msgSend_decodeDoubleForKey_(coder, v10, @"kCMFitnessMachineDataKeyTotalEnergy");
      v5->_totalEnergy = v11;
    }

    if (objc_msgSend_containsValueForKey_(coder, v10, @"kCMFitnessMachineDataKeyTotalDistance"))
    {
      objc_msgSend_decodeDoubleForKey_(coder, v12, @"kCMFitnessMachineDataKeyTotalDistance");
      v5->_totalDistance = v13;
    }

    if (objc_msgSend_containsValueForKey_(coder, v12, @"kCMFitnessMachineDataKeyTotalElevationAscended"))
    {
      objc_msgSend_decodeDoubleForKey_(coder, v14, @"kCMFitnessMachineDataKeyTotalElevationAscended");
      v5->_totalElevationAscended = v15;
    }

    if (objc_msgSend_containsValueForKey_(coder, v14, @"kCMFitnessMachineDataKeyTotalStrideCount"))
    {
      v5->_totalStrideCount = objc_msgSend_decodeInt64ForKey_(coder, v16, @"kCMFitnessMachineDataKeyTotalStrideCount");
    }

    if (objc_msgSend_containsValueForKey_(coder, v16, @"kCMFitnessMachineDataKeyTotalStrokeCount"))
    {
      v5->_totalStrokeCount = objc_msgSend_decodeInt64ForKey_(coder, v17, @"kCMFitnessMachineDataKeyTotalStrokeCount");
    }

    if (objc_msgSend_containsValueForKey_(coder, v17, @"kCMFitnessMachineDataKeyTotalFloorsClimbed"))
    {
      v5->_totalFloorsClimbed = objc_msgSend_decodeInt64ForKey_(coder, v18, @"kCMFitnessMachineDataKeyTotalFloorsClimbed");
    }

    if (objc_msgSend_containsValueForKey_(coder, v18, @"kCMFitnessMachineDataKeyInstantaneousSpeed"))
    {
      objc_msgSend_decodeDoubleForKey_(coder, v19, @"kCMFitnessMachineDataKeyInstantaneousSpeed");
      v5->_instantaneousSpeed = v20;
    }

    if (objc_msgSend_containsValueForKey_(coder, v19, @"kCMFitnessMachineDataKeyInstantaneousCadence"))
    {
      objc_msgSend_decodeDoubleForKey_(coder, v21, @"kCMFitnessMachineDataKeyInstantaneousCadence");
      v5->_instantaneousCadence = v22;
    }

    if (objc_msgSend_containsValueForKey_(coder, v21, @"kCMFitnessMachineDataKeyInstantaneousPower"))
    {
      objc_msgSend_decodeDoubleForKey_(coder, v23, @"kCMFitnessMachineDataKeyInstantaneousPower");
      v5->_instantaneousPower = v24;
    }

    if (objc_msgSend_containsValueForKey_(coder, v23, @"kCMFitnessMachineDataKeyInclination"))
    {
      objc_msgSend_decodeDoubleForKey_(coder, v25, @"kCMFitnessMachineDataKeyInclination");
      v5->_inclination = v26;
    }

    if (objc_msgSend_containsValueForKey_(coder, v25, @"kCMFitnessMachineDataKeyResistanceLevel"))
    {
      objc_msgSend_decodeDoubleForKey_(coder, v27, @"kCMFitnessMachineDataKeyResistanceLevel");
      v5->_resistanceLevel = v28;
    }

    if (objc_msgSend_containsValueForKey_(coder, v27, @"kCMFitnessMachineDataKeyDeviceIdentifier"))
    {
      v30 = objc_opt_class();
      v5->_deviceIdentifier = objc_msgSend_decodeObjectOfClass_forKey_(coder, v31, v30, @"kCMFitnessMachineDataKeyDeviceIdentifier");
    }

    if (objc_msgSend_containsValueForKey_(coder, v29, @"kCMFitnessMachineDataKeyManufacturer"))
    {
      v33 = objc_opt_class();
      v5->_manufacturer = objc_msgSend_decodeObjectOfClass_forKey_(coder, v34, v33, @"kCMFitnessMachineDataKeyManufacturer");
    }

    if (objc_msgSend_containsValueForKey_(coder, v32, @"kCMFitnessMachineDataKeyModel"))
    {
      v36 = objc_opt_class();
      v5->_model = objc_msgSend_decodeObjectOfClass_forKey_(coder, v37, v36, @"kCMFitnessMachineDataKeyModel");
    }

    if (objc_msgSend_containsValueForKey_(coder, v35, @"kCMFitnessMachineDataKeyExternalFitnessType"))
    {
      v5->_externalFitnessType = objc_msgSend_decodeIntForKey_(coder, v38, @"kCMFitnessMachineDataKeyExternalFitnessType");
    }
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, zone);
  v10 = objc_msgSend_dateWithTimeIntervalSinceReferenceDate_(MEMORY[0x1E695DF00], v8, v9, self->fTimestamp);
  v12 = objc_msgSend_initWithTimestamp_(v7, v11, v10);
  objc_msgSend_setElapsedTime_(v12, v13, v14, self->_elapsedTime);
  objc_msgSend_setTotalEnergy_(v12, v15, v16, self->_totalEnergy);
  objc_msgSend_setTotalDistance_(v12, v17, v18, self->_totalDistance);
  objc_msgSend_setTotalElevationAscended_(v12, v19, v20, self->_totalElevationAscended);
  objc_msgSend_setTotalStrideCount_(v12, v21, self->_totalStrideCount);
  objc_msgSend_setTotalStrokeCount_(v12, v22, self->_totalStrokeCount);
  objc_msgSend_setTotalFloorsClimbed_(v12, v23, self->_totalFloorsClimbed);
  objc_msgSend_setInstantaneousSpeed_(v12, v24, v25, self->_instantaneousSpeed);
  objc_msgSend_setInstantaneousCadence_(v12, v26, v27, self->_instantaneousCadence);
  objc_msgSend_setInstantaneousPower_(v12, v28, v29, self->_instantaneousPower);
  objc_msgSend_setInclination_(v12, v30, v31, self->_inclination);
  objc_msgSend_setResistanceLevel_(v12, v32, v33, self->_resistanceLevel);
  objc_msgSend_setModel_(v12, v34, self->_model);
  objc_msgSend_setDeviceIdentifier_(v12, v35, self->_deviceIdentifier);
  objc_msgSend_setManufacturer_(v12, v36, self->_manufacturer);
  objc_msgSend_setExternalFitnessType_(v12, v37, self->_externalFitnessType);
  return v12;
}

- (void)encodeWithCoder:(id)coder
{
  objc_msgSend_encodeDouble_forKey_(coder, a2, @"kCMFitnessMachineDataKeyTimestamp", self->fTimestamp);
  objc_msgSend_encodeDouble_forKey_(coder, v5, @"kCMFitnessMachineDataKeyElapsedTime", self->_elapsedTime);
  objc_msgSend_encodeDouble_forKey_(coder, v6, @"kCMFitnessMachineDataKeyTotalEnergy", self->_totalEnergy);
  objc_msgSend_encodeDouble_forKey_(coder, v7, @"kCMFitnessMachineDataKeyTotalDistance", self->_totalDistance);
  objc_msgSend_encodeDouble_forKey_(coder, v8, @"kCMFitnessMachineDataKeyTotalElevationAscended", self->_totalElevationAscended);
  objc_msgSend_encodeInt64_forKey_(coder, v9, self->_totalStrideCount, @"kCMFitnessMachineDataKeyTotalStrideCount");
  objc_msgSend_encodeInt64_forKey_(coder, v10, self->_totalStrokeCount, @"kCMFitnessMachineDataKeyTotalStrokeCount");
  objc_msgSend_encodeInt64_forKey_(coder, v11, self->_totalFloorsClimbed, @"kCMFitnessMachineDataKeyTotalFloorsClimbed");
  objc_msgSend_encodeDouble_forKey_(coder, v12, @"kCMFitnessMachineDataKeyInstantaneousSpeed", self->_instantaneousSpeed);
  objc_msgSend_encodeDouble_forKey_(coder, v13, @"kCMFitnessMachineDataKeyInstantaneousCadence", self->_instantaneousCadence);
  objc_msgSend_encodeDouble_forKey_(coder, v14, @"kCMFitnessMachineDataKeyInstantaneousPower", self->_instantaneousPower);
  objc_msgSend_encodeDouble_forKey_(coder, v15, @"kCMFitnessMachineDataKeyInclination", self->_inclination);
  objc_msgSend_encodeDouble_forKey_(coder, v16, @"kCMFitnessMachineDataKeyResistanceLevel", self->_resistanceLevel);
  objc_msgSend_encodeObject_forKey_(coder, v17, self->_deviceIdentifier, @"kCMFitnessMachineDataKeyDeviceIdentifier");
  objc_msgSend_encodeObject_forKey_(coder, v18, self->_manufacturer, @"kCMFitnessMachineDataKeyManufacturer");
  objc_msgSend_encodeObject_forKey_(coder, v19, self->_model, @"kCMFitnessMachineDataKeyModel");
  externalFitnessType = self->_externalFitnessType;

  objc_msgSend_encodeInt_forKey_(coder, v20, externalFitnessType, @"kCMFitnessMachineDataKeyExternalFitnessType");
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  return objc_msgSend_stringWithFormat_(v3, v6, @"%@, <timestamp, %f, elapsedTime, %f, totalEnergy, %f, totalDistance, %f, totalElevationAscended, %f,  totalStrideCount, %ld, totalStokeCount, %ld,totalFloorsClimbed, %ld, instantaneousSpeed, %f, instantaneousCadence, %f, instantaneousPower, %f, inclination, %f, resistanceLevel, %f>", v5, *&self->fTimestamp, *&self->_elapsedTime, *&self->_totalEnergy, *&self->_totalDistance, *&self->_totalElevationAscended, self->_totalStrideCount, self->_totalStrokeCount, self->_totalFloorsClimbed, *&self->_instantaneousSpeed, *&self->_instantaneousCadence, *&self->_instantaneousPower, *&self->_inclination, *&self->_resistanceLevel);
}

- (void)convertToCLFitnessMachineData:(_CLFitnessMachineData *)data deviceId:(int)id
{
  fTimestamp = self->fTimestamp;
  totalFloorsClimbed = self->_totalFloorsClimbed;
  instantaneousSpeed = self->_instantaneousSpeed;
  instantaneousCadence = self->_instantaneousCadence;
  instantaneousPower = self->_instantaneousPower;
  externalFitnessType = self->_externalFitnessType;
  v10 = *&self->_elapsedTime;
  v11 = *&self->_totalDistance;
  *&data->var5 = *&self->_totalStrideCount;
  data->var7 = totalFloorsClimbed;
  data->var13 = 0;
  v12 = *&self->_inclination;
  data->var0 = fTimestamp;
  *&data->var1 = v10;
  *&data->var3 = v11;
  data->var8 = instantaneousSpeed;
  data->var9 = 1.79769313e308;
  data->var11 = instantaneousCadence;
  data->var12 = 1.79769313e308;
  data->var14 = instantaneousPower;
  data->var15 = 1.79769313e308;
  *&data->var17 = v12;
  data->var19 = 1.79769313e308;
  data->var20 = externalFitnessType;
  v13 = self->_instantaneousPower;
  data->var21 = 1;
  if (v13 >= 1.79769313e308)
  {
    idCopy = -1;
  }

  else
  {
    data->var15 = self->fTimestamp;
    idCopy = id;
  }

  data->var16 = idCopy;
  if (self->_instantaneousSpeed >= 1.79769313e308)
  {
    idCopy2 = -1;
  }

  else
  {
    data->var9 = self->fTimestamp;
    idCopy2 = id;
  }

  data->var10 = idCopy2;
  if (self->_instantaneousCadence >= 1.79769313e308)
  {
    id = -1;
  }

  else
  {
    data->var12 = self->fTimestamp;
  }

  data->var13 = id;
}

- (CMFitnessMachineData)initWithExernalBikeSensorData:(double)data speed:(double)speed cadence:(double)cadence power:(double)power model:(id)model deviceIdentifier:(id)identifier manufacturer:(id)manufacturer externalFitnessType:(int)self0
{
  v23.receiver = self;
  v23.super_class = CMFitnessMachineData;
  v18 = [(CMFitnessMachineData *)&v23 init];
  v21 = v18;
  if (v18)
  {
    objc_msgSend_initializeVariables(v18, v19, v20);
    v21->fTimestamp = data;
    v21->_instantaneousCadence = cadence;
    v21->_instantaneousPower = power;
    v21->_instantaneousSpeed = speed;
    v21->_manufacturer = manufacturer;
    v21->_model = model;
    v21->_deviceIdentifier = identifier;
    v21->_externalFitnessType = type;
  }

  return v21;
}

- (void)initializeVariables
{
  v2 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
  *&self->_elapsedTime = v2;
  *&self->_totalDistance = v2;
  v3.f64[0] = NAN;
  v3.f64[1] = NAN;
  *&self->_totalStrideCount = vnegq_f64(v3);
  self->_totalFloorsClimbed = 0x7FFFFFFFFFFFFFFFLL;
  *&self->_instantaneousSpeed = v2;
  *&self->_instantaneousPower = v2;
  self->_resistanceLevel = 1.79769313e308;
  self->_deviceIdentifier = &stru_1F0E3D7A0;
  self->_manufacturer = &stru_1F0E3D7A0;
  self->_model = &stru_1F0E3D7A0;
  self->_externalFitnessType = 0;
}

@end