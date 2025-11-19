@interface CMFitnessMachineData
+ (BOOL)isAvailable;
- (CMFitnessMachineData)initWithCoder:(id)a3;
- (CMFitnessMachineData)initWithExernalBikeSensorData:(double)a3 speed:(double)a4 cadence:(double)a5 power:(double)a6 model:(id)a7 deviceIdentifier:(id)a8 manufacturer:(id)a9 externalFitnessType:(int)a10;
- (CMFitnessMachineData)initWithTimestamp:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)convertToCLFitnessMachineData:(_CLFitnessMachineData *)a3 deviceId:(int)a4;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
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

- (CMFitnessMachineData)initWithTimestamp:(id)a3
{
  if (!a3)
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
    objc_msgSend_timeIntervalSinceReferenceDate(a3, v9, v10);
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

- (CMFitnessMachineData)initWithCoder:(id)a3
{
  v40.receiver = self;
  v40.super_class = CMFitnessMachineData;
  v5 = [(CMFitnessMachineData *)&v40 init];
  if (v5)
  {
    if (objc_msgSend_containsValueForKey_(a3, v4, @"kCMFitnessMachineDataKeyTimestamp"))
    {
      objc_msgSend_decodeDoubleForKey_(a3, v6, @"kCMFitnessMachineDataKeyTimestamp");
      v5->fTimestamp = v7;
    }

    if (objc_msgSend_containsValueForKey_(a3, v6, @"kCMFitnessMachineDataKeyElapsedTime"))
    {
      objc_msgSend_decodeDoubleForKey_(a3, v8, @"kCMFitnessMachineDataKeyElapsedTime");
      v5->_elapsedTime = v9;
    }

    if (objc_msgSend_containsValueForKey_(a3, v8, @"kCMFitnessMachineDataKeyTotalEnergy"))
    {
      objc_msgSend_decodeDoubleForKey_(a3, v10, @"kCMFitnessMachineDataKeyTotalEnergy");
      v5->_totalEnergy = v11;
    }

    if (objc_msgSend_containsValueForKey_(a3, v10, @"kCMFitnessMachineDataKeyTotalDistance"))
    {
      objc_msgSend_decodeDoubleForKey_(a3, v12, @"kCMFitnessMachineDataKeyTotalDistance");
      v5->_totalDistance = v13;
    }

    if (objc_msgSend_containsValueForKey_(a3, v12, @"kCMFitnessMachineDataKeyTotalElevationAscended"))
    {
      objc_msgSend_decodeDoubleForKey_(a3, v14, @"kCMFitnessMachineDataKeyTotalElevationAscended");
      v5->_totalElevationAscended = v15;
    }

    if (objc_msgSend_containsValueForKey_(a3, v14, @"kCMFitnessMachineDataKeyTotalStrideCount"))
    {
      v5->_totalStrideCount = objc_msgSend_decodeInt64ForKey_(a3, v16, @"kCMFitnessMachineDataKeyTotalStrideCount");
    }

    if (objc_msgSend_containsValueForKey_(a3, v16, @"kCMFitnessMachineDataKeyTotalStrokeCount"))
    {
      v5->_totalStrokeCount = objc_msgSend_decodeInt64ForKey_(a3, v17, @"kCMFitnessMachineDataKeyTotalStrokeCount");
    }

    if (objc_msgSend_containsValueForKey_(a3, v17, @"kCMFitnessMachineDataKeyTotalFloorsClimbed"))
    {
      v5->_totalFloorsClimbed = objc_msgSend_decodeInt64ForKey_(a3, v18, @"kCMFitnessMachineDataKeyTotalFloorsClimbed");
    }

    if (objc_msgSend_containsValueForKey_(a3, v18, @"kCMFitnessMachineDataKeyInstantaneousSpeed"))
    {
      objc_msgSend_decodeDoubleForKey_(a3, v19, @"kCMFitnessMachineDataKeyInstantaneousSpeed");
      v5->_instantaneousSpeed = v20;
    }

    if (objc_msgSend_containsValueForKey_(a3, v19, @"kCMFitnessMachineDataKeyInstantaneousCadence"))
    {
      objc_msgSend_decodeDoubleForKey_(a3, v21, @"kCMFitnessMachineDataKeyInstantaneousCadence");
      v5->_instantaneousCadence = v22;
    }

    if (objc_msgSend_containsValueForKey_(a3, v21, @"kCMFitnessMachineDataKeyInstantaneousPower"))
    {
      objc_msgSend_decodeDoubleForKey_(a3, v23, @"kCMFitnessMachineDataKeyInstantaneousPower");
      v5->_instantaneousPower = v24;
    }

    if (objc_msgSend_containsValueForKey_(a3, v23, @"kCMFitnessMachineDataKeyInclination"))
    {
      objc_msgSend_decodeDoubleForKey_(a3, v25, @"kCMFitnessMachineDataKeyInclination");
      v5->_inclination = v26;
    }

    if (objc_msgSend_containsValueForKey_(a3, v25, @"kCMFitnessMachineDataKeyResistanceLevel"))
    {
      objc_msgSend_decodeDoubleForKey_(a3, v27, @"kCMFitnessMachineDataKeyResistanceLevel");
      v5->_resistanceLevel = v28;
    }

    if (objc_msgSend_containsValueForKey_(a3, v27, @"kCMFitnessMachineDataKeyDeviceIdentifier"))
    {
      v30 = objc_opt_class();
      v5->_deviceIdentifier = objc_msgSend_decodeObjectOfClass_forKey_(a3, v31, v30, @"kCMFitnessMachineDataKeyDeviceIdentifier");
    }

    if (objc_msgSend_containsValueForKey_(a3, v29, @"kCMFitnessMachineDataKeyManufacturer"))
    {
      v33 = objc_opt_class();
      v5->_manufacturer = objc_msgSend_decodeObjectOfClass_forKey_(a3, v34, v33, @"kCMFitnessMachineDataKeyManufacturer");
    }

    if (objc_msgSend_containsValueForKey_(a3, v32, @"kCMFitnessMachineDataKeyModel"))
    {
      v36 = objc_opt_class();
      v5->_model = objc_msgSend_decodeObjectOfClass_forKey_(a3, v37, v36, @"kCMFitnessMachineDataKeyModel");
    }

    if (objc_msgSend_containsValueForKey_(a3, v35, @"kCMFitnessMachineDataKeyExternalFitnessType"))
    {
      v5->_externalFitnessType = objc_msgSend_decodeIntForKey_(a3, v38, @"kCMFitnessMachineDataKeyExternalFitnessType");
    }
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, a3);
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

- (void)encodeWithCoder:(id)a3
{
  objc_msgSend_encodeDouble_forKey_(a3, a2, @"kCMFitnessMachineDataKeyTimestamp", self->fTimestamp);
  objc_msgSend_encodeDouble_forKey_(a3, v5, @"kCMFitnessMachineDataKeyElapsedTime", self->_elapsedTime);
  objc_msgSend_encodeDouble_forKey_(a3, v6, @"kCMFitnessMachineDataKeyTotalEnergy", self->_totalEnergy);
  objc_msgSend_encodeDouble_forKey_(a3, v7, @"kCMFitnessMachineDataKeyTotalDistance", self->_totalDistance);
  objc_msgSend_encodeDouble_forKey_(a3, v8, @"kCMFitnessMachineDataKeyTotalElevationAscended", self->_totalElevationAscended);
  objc_msgSend_encodeInt64_forKey_(a3, v9, self->_totalStrideCount, @"kCMFitnessMachineDataKeyTotalStrideCount");
  objc_msgSend_encodeInt64_forKey_(a3, v10, self->_totalStrokeCount, @"kCMFitnessMachineDataKeyTotalStrokeCount");
  objc_msgSend_encodeInt64_forKey_(a3, v11, self->_totalFloorsClimbed, @"kCMFitnessMachineDataKeyTotalFloorsClimbed");
  objc_msgSend_encodeDouble_forKey_(a3, v12, @"kCMFitnessMachineDataKeyInstantaneousSpeed", self->_instantaneousSpeed);
  objc_msgSend_encodeDouble_forKey_(a3, v13, @"kCMFitnessMachineDataKeyInstantaneousCadence", self->_instantaneousCadence);
  objc_msgSend_encodeDouble_forKey_(a3, v14, @"kCMFitnessMachineDataKeyInstantaneousPower", self->_instantaneousPower);
  objc_msgSend_encodeDouble_forKey_(a3, v15, @"kCMFitnessMachineDataKeyInclination", self->_inclination);
  objc_msgSend_encodeDouble_forKey_(a3, v16, @"kCMFitnessMachineDataKeyResistanceLevel", self->_resistanceLevel);
  objc_msgSend_encodeObject_forKey_(a3, v17, self->_deviceIdentifier, @"kCMFitnessMachineDataKeyDeviceIdentifier");
  objc_msgSend_encodeObject_forKey_(a3, v18, self->_manufacturer, @"kCMFitnessMachineDataKeyManufacturer");
  objc_msgSend_encodeObject_forKey_(a3, v19, self->_model, @"kCMFitnessMachineDataKeyModel");
  externalFitnessType = self->_externalFitnessType;

  objc_msgSend_encodeInt_forKey_(a3, v20, externalFitnessType, @"kCMFitnessMachineDataKeyExternalFitnessType");
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  return objc_msgSend_stringWithFormat_(v3, v6, @"%@, <timestamp, %f, elapsedTime, %f, totalEnergy, %f, totalDistance, %f, totalElevationAscended, %f,  totalStrideCount, %ld, totalStokeCount, %ld,totalFloorsClimbed, %ld, instantaneousSpeed, %f, instantaneousCadence, %f, instantaneousPower, %f, inclination, %f, resistanceLevel, %f>", v5, *&self->fTimestamp, *&self->_elapsedTime, *&self->_totalEnergy, *&self->_totalDistance, *&self->_totalElevationAscended, self->_totalStrideCount, self->_totalStrokeCount, self->_totalFloorsClimbed, *&self->_instantaneousSpeed, *&self->_instantaneousCadence, *&self->_instantaneousPower, *&self->_inclination, *&self->_resistanceLevel);
}

- (void)convertToCLFitnessMachineData:(_CLFitnessMachineData *)a3 deviceId:(int)a4
{
  fTimestamp = self->fTimestamp;
  totalFloorsClimbed = self->_totalFloorsClimbed;
  instantaneousSpeed = self->_instantaneousSpeed;
  instantaneousCadence = self->_instantaneousCadence;
  instantaneousPower = self->_instantaneousPower;
  externalFitnessType = self->_externalFitnessType;
  v10 = *&self->_elapsedTime;
  v11 = *&self->_totalDistance;
  *&a3->var5 = *&self->_totalStrideCount;
  a3->var7 = totalFloorsClimbed;
  a3->var13 = 0;
  v12 = *&self->_inclination;
  a3->var0 = fTimestamp;
  *&a3->var1 = v10;
  *&a3->var3 = v11;
  a3->var8 = instantaneousSpeed;
  a3->var9 = 1.79769313e308;
  a3->var11 = instantaneousCadence;
  a3->var12 = 1.79769313e308;
  a3->var14 = instantaneousPower;
  a3->var15 = 1.79769313e308;
  *&a3->var17 = v12;
  a3->var19 = 1.79769313e308;
  a3->var20 = externalFitnessType;
  v13 = self->_instantaneousPower;
  a3->var21 = 1;
  if (v13 >= 1.79769313e308)
  {
    v14 = -1;
  }

  else
  {
    a3->var15 = self->fTimestamp;
    v14 = a4;
  }

  a3->var16 = v14;
  if (self->_instantaneousSpeed >= 1.79769313e308)
  {
    v15 = -1;
  }

  else
  {
    a3->var9 = self->fTimestamp;
    v15 = a4;
  }

  a3->var10 = v15;
  if (self->_instantaneousCadence >= 1.79769313e308)
  {
    a4 = -1;
  }

  else
  {
    a3->var12 = self->fTimestamp;
  }

  a3->var13 = a4;
}

- (CMFitnessMachineData)initWithExernalBikeSensorData:(double)a3 speed:(double)a4 cadence:(double)a5 power:(double)a6 model:(id)a7 deviceIdentifier:(id)a8 manufacturer:(id)a9 externalFitnessType:(int)a10
{
  v23.receiver = self;
  v23.super_class = CMFitnessMachineData;
  v18 = [(CMFitnessMachineData *)&v23 init];
  v21 = v18;
  if (v18)
  {
    objc_msgSend_initializeVariables(v18, v19, v20);
    v21->fTimestamp = a3;
    v21->_instantaneousCadence = a5;
    v21->_instantaneousPower = a6;
    v21->_instantaneousSpeed = a4;
    v21->_manufacturer = a9;
    v21->_model = a7;
    v21->_deviceIdentifier = a8;
    v21->_externalFitnessType = a10;
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