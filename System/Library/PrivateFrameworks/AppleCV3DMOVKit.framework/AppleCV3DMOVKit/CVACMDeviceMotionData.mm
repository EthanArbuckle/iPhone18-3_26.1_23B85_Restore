@interface CVACMDeviceMotionData
+ (id)classes;
+ (id)toData:(id)data additionalData:(id)additionalData;
+ (id)withData:(id)data;
- (CVACMDeviceMotionData)init;
- (CVACMDeviceMotionData)initWithCMDeviceMotion:(id)motion;
- (CVACMDeviceMotionData)initWithCoder:(id)coder;
- (CVACMDeviceMotionData)initWithDictionary:(id)dictionary;
- (CVACMDeviceMotionData)initWithFastPathData:(id)data;
- (id)debugDescription;
- (id)dictionary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CVACMDeviceMotionData

+ (id)classes
{
  if (qword_27E3C85E8 == -1)
  {
    v3 = qword_27E3C85E0;
  }

  else
  {
    sub_24019CBDC();
    v3 = qword_27E3C85E0;
  }

  return v3;
}

- (CVACMDeviceMotionData)init
{
  v6.receiver = self;
  v6.super_class = CVACMDeviceMotionData;
  v2 = [(CVACMDeviceMotionData *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    deviceMotion = v2->_deviceMotion;
    v2->_deviceMotion = v3;
  }

  return v2;
}

+ (id)withData:(id)data
{
  v18 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v4 = +[CVACMDeviceMotionData classes];
  v15 = 0;
  v5 = [CVAMetadataWrapper decodeNSCoderObject:dataCopy classes:v4 error:&v15];
  v6 = v15;

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v14 = v6;
    v8 = [CVAMetadataWrapper decodeClass:dataCopy class:objc_opt_class() error:&v14];
    v7 = v14;

    if (v8)
    {
      v5 = v8;
    }

    else
    {
      v9 = [CVAMetadataWrapper decodeCommon:dataCopy];
      if (v9)
      {
        v5 = [[CVACMDeviceMotionData alloc] initWithDictionary:v9];
      }

      else
      {
        if (v7)
        {
          v10 = +[AppleCV3DMOVKitLog defaultLog];
          if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            localizedDescription = [v7 localizedDescription];
            *buf = 138412290;
            v17 = localizedDescription;
            _os_log_impl(&dword_24016D000, v10, OS_LOG_TYPE_ERROR, "CVACMDeviceMotionData - ERROR - cannot deserialize data: %@", buf, 0xCu);
          }
        }

        v5 = 0;
      }
    }
  }

  v12 = *MEMORY[0x277D85DE8];

  return v5;
}

- (CVACMDeviceMotionData)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [(CVACMDeviceMotionData *)self init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"qx"];
    [v6 doubleValue];
    v8 = v7;
    quaternion = [(CVACMMotionTypeDeviceMotionData *)v5->_deviceMotion quaternion];
    [quaternion setX:v8];

    v10 = [dictionaryCopy objectForKeyedSubscript:@"qy"];
    [v10 doubleValue];
    v12 = v11;
    quaternion2 = [(CVACMMotionTypeDeviceMotionData *)v5->_deviceMotion quaternion];
    [quaternion2 setY:v12];

    v14 = [dictionaryCopy objectForKeyedSubscript:@"qz"];
    [v14 doubleValue];
    v16 = v15;
    quaternion3 = [(CVACMMotionTypeDeviceMotionData *)v5->_deviceMotion quaternion];
    [quaternion3 setZ:v16];

    v18 = [dictionaryCopy objectForKeyedSubscript:@"qw"];
    [v18 doubleValue];
    v20 = v19;
    quaternion4 = [(CVACMMotionTypeDeviceMotionData *)v5->_deviceMotion quaternion];
    [quaternion4 setW:v20];

    v22 = [dictionaryCopy objectForKeyedSubscript:@"ax"];
    [v22 floatValue];
    LODWORD(v20) = v23;
    userAcceleration = [(CVACMMotionTypeDeviceMotionData *)v5->_deviceMotion userAcceleration];
    LODWORD(v25) = LODWORD(v20);
    [userAcceleration setX:v25];

    v26 = [dictionaryCopy objectForKeyedSubscript:@"ay"];
    [v26 floatValue];
    LODWORD(v20) = v27;
    userAcceleration2 = [(CVACMMotionTypeDeviceMotionData *)v5->_deviceMotion userAcceleration];
    LODWORD(v29) = LODWORD(v20);
    [userAcceleration2 setY:v29];

    v30 = [dictionaryCopy objectForKeyedSubscript:@"az"];
    [v30 floatValue];
    LODWORD(v20) = v31;
    userAcceleration3 = [(CVACMMotionTypeDeviceMotionData *)v5->_deviceMotion userAcceleration];
    LODWORD(v33) = LODWORD(v20);
    [userAcceleration3 setZ:v33];

    v34 = [dictionaryCopy objectForKeyedSubscript:@"gx"];
    [v34 floatValue];
    LODWORD(v20) = v35;
    gravity = [(CVACMMotionTypeDeviceMotionData *)v5->_deviceMotion gravity];
    LODWORD(v37) = LODWORD(v20);
    [gravity setX:v37];

    v38 = [dictionaryCopy objectForKeyedSubscript:@"gy"];
    [v38 floatValue];
    LODWORD(v20) = v39;
    gravity2 = [(CVACMMotionTypeDeviceMotionData *)v5->_deviceMotion gravity];
    LODWORD(v41) = LODWORD(v20);
    [gravity2 setY:v41];

    v42 = [dictionaryCopy objectForKeyedSubscript:@"gz"];
    [v42 floatValue];
    LODWORD(v20) = v43;
    gravity3 = [(CVACMMotionTypeDeviceMotionData *)v5->_deviceMotion gravity];
    LODWORD(v45) = LODWORD(v20);
    [gravity3 setZ:v45];

    v46 = [dictionaryCopy objectForKeyedSubscript:@"rx"];
    [v46 floatValue];
    LODWORD(v20) = v47;
    rotationRate = [(CVACMMotionTypeDeviceMotionData *)v5->_deviceMotion rotationRate];
    LODWORD(v49) = LODWORD(v20);
    [rotationRate setX:v49];

    v50 = [dictionaryCopy objectForKeyedSubscript:@"ry"];
    [v50 floatValue];
    LODWORD(v20) = v51;
    rotationRate2 = [(CVACMMotionTypeDeviceMotionData *)v5->_deviceMotion rotationRate];
    LODWORD(v53) = LODWORD(v20);
    [rotationRate2 setY:v53];

    v54 = [dictionaryCopy objectForKeyedSubscript:@"rz"];
    [v54 floatValue];
    LODWORD(v20) = v55;
    rotationRate3 = [(CVACMMotionTypeDeviceMotionData *)v5->_deviceMotion rotationRate];
    LODWORD(v57) = LODWORD(v20);
    [rotationRate3 setZ:v57];

    v58 = [dictionaryCopy objectForKeyedSubscript:@"mx"];
    [v58 floatValue];
    LODWORD(v20) = v59;
    magneticField = [(CVACMMotionTypeDeviceMotionData *)v5->_deviceMotion magneticField];
    LODWORD(v61) = LODWORD(v20);
    [magneticField setX:v61];

    v62 = [dictionaryCopy objectForKeyedSubscript:@"my"];
    [v62 floatValue];
    LODWORD(v20) = v63;
    magneticField2 = [(CVACMMotionTypeDeviceMotionData *)v5->_deviceMotion magneticField];
    LODWORD(v65) = LODWORD(v20);
    [magneticField2 setY:v65];

    v66 = [dictionaryCopy objectForKeyedSubscript:@"mz"];
    [v66 floatValue];
    LODWORD(v20) = v67;
    magneticField3 = [(CVACMMotionTypeDeviceMotionData *)v5->_deviceMotion magneticField];
    LODWORD(v69) = LODWORD(v20);
    [magneticField3 setZ:v69];

    v70 = [dictionaryCopy objectForKeyedSubscript:@"mc"];
    -[CVACMMotionTypeDeviceMotionData setMagneticFieldCalibrationLevel:](v5->_deviceMotion, "setMagneticFieldCalibrationLevel:", [v70 intValue]);

    v71 = [dictionaryCopy objectForKeyedSubscript:@"yc"];
    -[CVACMMotionTypeDeviceMotionData setDoingYawCorrection:](v5->_deviceMotion, "setDoingYawCorrection:", [v71 BOOLValue]);

    v72 = [dictionaryCopy objectForKeyedSubscript:@"be"];
    -[CVACMMotionTypeDeviceMotionData setDoingBiasEstimation:](v5->_deviceMotion, "setDoingBiasEstimation:", [v72 BOOLValue]);

    v73 = [dictionaryCopy objectForKeyedSubscript:@"fv"];
    -[CVACMMotionTypeDeviceMotionData setFusedWithVision:](v5->_deviceMotion, "setFusedWithVision:", [v73 BOOLValue]);

    v74 = [dictionaryCopy objectForKeyedSubscript:@"t"];
    [v74 doubleValue];
    v5->_timestamp = v75;

    v76 = [dictionaryCopy objectForKeyedSubscript:@"st"];
    v5->_syncTimestamp = [v76 longLongValue];
  }

  return v5;
}

- (CVACMDeviceMotionData)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(CVACMDeviceMotionData *)self init];
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    [coderCopy decodeDoubleForKey:@"qx"];
    v8 = v7;
    quaternion = [(CVACMMotionTypeDeviceMotionData *)v5->_deviceMotion quaternion];
    [quaternion setX:v8];

    [coderCopy decodeDoubleForKey:@"qy"];
    v11 = v10;
    quaternion2 = [(CVACMMotionTypeDeviceMotionData *)v5->_deviceMotion quaternion];
    [quaternion2 setY:v11];

    [coderCopy decodeDoubleForKey:@"qz"];
    v14 = v13;
    quaternion3 = [(CVACMMotionTypeDeviceMotionData *)v5->_deviceMotion quaternion];
    [quaternion3 setZ:v14];

    [coderCopy decodeDoubleForKey:@"qw"];
    v17 = v16;
    quaternion4 = [(CVACMMotionTypeDeviceMotionData *)v5->_deviceMotion quaternion];
    [quaternion4 setW:v17];

    [coderCopy decodeFloatForKey:@"ax"];
    LODWORD(v17) = v19;
    userAcceleration = [(CVACMMotionTypeDeviceMotionData *)v5->_deviceMotion userAcceleration];
    LODWORD(v21) = LODWORD(v17);
    [userAcceleration setX:v21];

    [coderCopy decodeFloatForKey:@"ay"];
    LODWORD(v17) = v22;
    userAcceleration2 = [(CVACMMotionTypeDeviceMotionData *)v5->_deviceMotion userAcceleration];
    LODWORD(v24) = LODWORD(v17);
    [userAcceleration2 setY:v24];

    [coderCopy decodeFloatForKey:@"az"];
    LODWORD(v17) = v25;
    userAcceleration3 = [(CVACMMotionTypeDeviceMotionData *)v5->_deviceMotion userAcceleration];
    LODWORD(v27) = LODWORD(v17);
    [userAcceleration3 setZ:v27];

    [coderCopy decodeFloatForKey:@"gx"];
    LODWORD(v17) = v28;
    gravity = [(CVACMMotionTypeDeviceMotionData *)v5->_deviceMotion gravity];
    LODWORD(v30) = LODWORD(v17);
    [gravity setX:v30];

    [coderCopy decodeFloatForKey:@"gy"];
    LODWORD(v17) = v31;
    gravity2 = [(CVACMMotionTypeDeviceMotionData *)v5->_deviceMotion gravity];
    LODWORD(v33) = LODWORD(v17);
    [gravity2 setY:v33];

    [coderCopy decodeFloatForKey:@"gz"];
    LODWORD(v17) = v34;
    gravity3 = [(CVACMMotionTypeDeviceMotionData *)v5->_deviceMotion gravity];
    LODWORD(v36) = LODWORD(v17);
    [gravity3 setZ:v36];

    [coderCopy decodeFloatForKey:@"rx"];
    LODWORD(v17) = v37;
    rotationRate = [(CVACMMotionTypeDeviceMotionData *)v5->_deviceMotion rotationRate];
    LODWORD(v39) = LODWORD(v17);
    [rotationRate setX:v39];

    [coderCopy decodeFloatForKey:@"ry"];
    LODWORD(v17) = v40;
    rotationRate2 = [(CVACMMotionTypeDeviceMotionData *)v5->_deviceMotion rotationRate];
    LODWORD(v42) = LODWORD(v17);
    [rotationRate2 setY:v42];

    [coderCopy decodeFloatForKey:@"rz"];
    LODWORD(v17) = v43;
    rotationRate3 = [(CVACMMotionTypeDeviceMotionData *)v5->_deviceMotion rotationRate];
    LODWORD(v45) = LODWORD(v17);
    [rotationRate3 setZ:v45];

    [coderCopy decodeFloatForKey:@"mx"];
    LODWORD(v17) = v46;
    magneticField = [(CVACMMotionTypeDeviceMotionData *)v5->_deviceMotion magneticField];
    LODWORD(v48) = LODWORD(v17);
    [magneticField setX:v48];

    [coderCopy decodeFloatForKey:@"my"];
    LODWORD(v17) = v49;
    magneticField2 = [(CVACMMotionTypeDeviceMotionData *)v5->_deviceMotion magneticField];
    LODWORD(v51) = LODWORD(v17);
    [magneticField2 setY:v51];

    [coderCopy decodeFloatForKey:@"mz"];
    LODWORD(v17) = v52;
    magneticField3 = [(CVACMMotionTypeDeviceMotionData *)v5->_deviceMotion magneticField];
    LODWORD(v54) = LODWORD(v17);
    [magneticField3 setZ:v54];

    -[CVACMMotionTypeDeviceMotionData setMagneticFieldCalibrationLevel:](v5->_deviceMotion, "setMagneticFieldCalibrationLevel:", [coderCopy decodeIntForKey:@"mc"]);
    -[CVACMMotionTypeDeviceMotionData setDoingYawCorrection:](v5->_deviceMotion, "setDoingYawCorrection:", [coderCopy decodeBoolForKey:@"yc"]);
    -[CVACMMotionTypeDeviceMotionData setDoingBiasEstimation:](v5->_deviceMotion, "setDoingBiasEstimation:", [coderCopy decodeBoolForKey:@"be"]);
    -[CVACMMotionTypeDeviceMotionData setFusedWithVision:](v5->_deviceMotion, "setFusedWithVision:", [coderCopy decodeBoolForKey:@"fv"]);
    [coderCopy decodeDoubleForKey:@"t"];
    v5->_timestamp = v55;
    v5->_syncTimestamp = [coderCopy decodeInt64ForKey:@"st"];
    objc_autoreleasePoolPop(v6);
  }

  return v5;
}

- (CVACMDeviceMotionData)initWithFastPathData:(id)data
{
  dataCopy = data;
  v11.receiver = self;
  v11.super_class = CVACMDeviceMotionData;
  v5 = [(CVACMDeviceMotionData *)&v11 init];
  if (v5)
  {
    v6 = [[CVACMMotionTypeDeviceMotionData alloc] initWithFastPathData:dataCopy];
    deviceMotion = v5->_deviceMotion;
    v5->_deviceMotion = v6;

    bytes = [dataCopy bytes];
    if (*bytes != 3)
    {
      v9 = 0;
      goto LABEL_6;
    }

    v5->_timestamp = *(bytes + 16);
    v5->_syncTimestamp = *(bytes + 8);
  }

  v9 = v5;
LABEL_6:

  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = objc_autoreleasePoolPush();
  quaternion = [(CVACMMotionTypeDeviceMotionData *)self->_deviceMotion quaternion];
  [quaternion x];
  [coderCopy encodeDouble:@"qx" forKey:?];

  quaternion2 = [(CVACMMotionTypeDeviceMotionData *)self->_deviceMotion quaternion];
  [quaternion2 y];
  [coderCopy encodeDouble:@"qy" forKey:?];

  quaternion3 = [(CVACMMotionTypeDeviceMotionData *)self->_deviceMotion quaternion];
  [quaternion3 z];
  [coderCopy encodeDouble:@"qz" forKey:?];

  quaternion4 = [(CVACMMotionTypeDeviceMotionData *)self->_deviceMotion quaternion];
  [quaternion4 w];
  [coderCopy encodeDouble:@"qw" forKey:?];

  userAcceleration = [(CVACMMotionTypeDeviceMotionData *)self->_deviceMotion userAcceleration];
  [userAcceleration x];
  [coderCopy encodeFloat:@"ax" forKey:?];

  userAcceleration2 = [(CVACMMotionTypeDeviceMotionData *)self->_deviceMotion userAcceleration];
  [userAcceleration2 y];
  [coderCopy encodeFloat:@"ay" forKey:?];

  userAcceleration3 = [(CVACMMotionTypeDeviceMotionData *)self->_deviceMotion userAcceleration];
  [userAcceleration3 z];
  [coderCopy encodeFloat:@"az" forKey:?];

  gravity = [(CVACMMotionTypeDeviceMotionData *)self->_deviceMotion gravity];
  [gravity x];
  [coderCopy encodeFloat:@"gx" forKey:?];

  gravity2 = [(CVACMMotionTypeDeviceMotionData *)self->_deviceMotion gravity];
  [gravity2 y];
  [coderCopy encodeFloat:@"gy" forKey:?];

  gravity3 = [(CVACMMotionTypeDeviceMotionData *)self->_deviceMotion gravity];
  [gravity3 z];
  [coderCopy encodeFloat:@"gz" forKey:?];

  rotationRate = [(CVACMMotionTypeDeviceMotionData *)self->_deviceMotion rotationRate];
  [rotationRate x];
  [coderCopy encodeFloat:@"rx" forKey:?];

  rotationRate2 = [(CVACMMotionTypeDeviceMotionData *)self->_deviceMotion rotationRate];
  [rotationRate2 y];
  [coderCopy encodeFloat:@"ry" forKey:?];

  rotationRate3 = [(CVACMMotionTypeDeviceMotionData *)self->_deviceMotion rotationRate];
  [rotationRate3 z];
  [coderCopy encodeFloat:@"rz" forKey:?];

  magneticField = [(CVACMMotionTypeDeviceMotionData *)self->_deviceMotion magneticField];
  [magneticField x];
  [coderCopy encodeFloat:@"mx" forKey:?];

  magneticField2 = [(CVACMMotionTypeDeviceMotionData *)self->_deviceMotion magneticField];
  [magneticField2 y];
  [coderCopy encodeFloat:@"my" forKey:?];

  magneticField3 = [(CVACMMotionTypeDeviceMotionData *)self->_deviceMotion magneticField];
  [magneticField3 z];
  [coderCopy encodeFloat:@"mz" forKey:?];

  [coderCopy encodeInteger:-[CVACMMotionTypeDeviceMotionData magneticFieldCalibrationLevel](self->_deviceMotion forKey:{"magneticFieldCalibrationLevel"), @"mc"}];
  [coderCopy encodeBool:-[CVACMMotionTypeDeviceMotionData doingYawCorrection](self->_deviceMotion forKey:{"doingYawCorrection"), @"yc"}];
  [coderCopy encodeBool:-[CVACMMotionTypeDeviceMotionData doingBiasEstimation](self->_deviceMotion forKey:{"doingBiasEstimation"), @"be"}];
  [coderCopy encodeBool:-[CVACMMotionTypeDeviceMotionData fusedWithVision](self->_deviceMotion forKey:{"fusedWithVision"), @"fv"}];
  [coderCopy encodeDouble:@"t" forKey:self->_timestamp];
  [coderCopy encodeInt64:self->_syncTimestamp forKey:@"st"];
  objc_autoreleasePoolPop(v4);
}

- (CVACMDeviceMotionData)initWithCMDeviceMotion:(id)motion
{
  motionCopy = motion;
  v5 = [(CVACMDeviceMotionData *)self init];
  if (v5)
  {
    [motionCopy timestamp];
    v5->_timestamp = v6;
    attitude = [motionCopy attitude];
    [attitude quaternion];
    v9 = v8;
    quaternion = [(CVACMMotionTypeDeviceMotionData *)v5->_deviceMotion quaternion];
    [quaternion setX:v9];

    attitude2 = [motionCopy attitude];
    [attitude2 quaternion];
    v13 = v12;
    quaternion2 = [(CVACMMotionTypeDeviceMotionData *)v5->_deviceMotion quaternion];
    [quaternion2 setY:v13];

    attitude3 = [motionCopy attitude];
    [attitude3 quaternion];
    v17 = v16;
    quaternion3 = [(CVACMMotionTypeDeviceMotionData *)v5->_deviceMotion quaternion];
    [quaternion3 setZ:v17];

    attitude4 = [motionCopy attitude];
    [attitude4 quaternion];
    v21 = v20;
    quaternion4 = [(CVACMMotionTypeDeviceMotionData *)v5->_deviceMotion quaternion];
    [quaternion4 setW:v21];

    [motionCopy userAcceleration];
    *&v21 = v23;
    userAcceleration = [(CVACMMotionTypeDeviceMotionData *)v5->_deviceMotion userAcceleration];
    LODWORD(v25) = LODWORD(v21);
    [userAcceleration setX:v25];

    [motionCopy userAcceleration];
    *&v21 = v26;
    userAcceleration2 = [(CVACMMotionTypeDeviceMotionData *)v5->_deviceMotion userAcceleration];
    LODWORD(v28) = LODWORD(v21);
    [userAcceleration2 setY:v28];

    [motionCopy userAcceleration];
    *&v21 = v29;
    userAcceleration3 = [(CVACMMotionTypeDeviceMotionData *)v5->_deviceMotion userAcceleration];
    LODWORD(v31) = LODWORD(v21);
    [userAcceleration3 setZ:v31];

    [motionCopy gravity];
    *&v21 = v32;
    gravity = [(CVACMMotionTypeDeviceMotionData *)v5->_deviceMotion gravity];
    LODWORD(v34) = LODWORD(v21);
    [gravity setX:v34];

    [motionCopy gravity];
    *&v21 = v35;
    gravity2 = [(CVACMMotionTypeDeviceMotionData *)v5->_deviceMotion gravity];
    LODWORD(v37) = LODWORD(v21);
    [gravity2 setY:v37];

    [motionCopy gravity];
    *&v21 = v38;
    gravity3 = [(CVACMMotionTypeDeviceMotionData *)v5->_deviceMotion gravity];
    LODWORD(v40) = LODWORD(v21);
    [gravity3 setZ:v40];

    [motionCopy rotationRate];
    *&v21 = v41;
    rotationRate = [(CVACMMotionTypeDeviceMotionData *)v5->_deviceMotion rotationRate];
    LODWORD(v43) = LODWORD(v21);
    [rotationRate setX:v43];

    [motionCopy rotationRate];
    *&v21 = v44;
    rotationRate2 = [(CVACMMotionTypeDeviceMotionData *)v5->_deviceMotion rotationRate];
    LODWORD(v46) = LODWORD(v21);
    [rotationRate2 setY:v46];

    [motionCopy rotationRate];
    *&v21 = v47;
    rotationRate3 = [(CVACMMotionTypeDeviceMotionData *)v5->_deviceMotion rotationRate];
    LODWORD(v49) = LODWORD(v21);
    [rotationRate3 setZ:v49];

    if (motionCopy)
    {
      [motionCopy magneticField];
      v50 = *&v64;
    }

    else
    {
      v64 = 0u;
      v65 = 0u;
      v50 = 0.0;
    }

    magneticField = [(CVACMMotionTypeDeviceMotionData *)v5->_deviceMotion magneticField];
    *&v52 = v50;
    [magneticField setX:v52];

    if (motionCopy)
    {
      [motionCopy magneticField];
      v53 = *(&v62 + 1);
    }

    else
    {
      v62 = 0u;
      v63 = 0u;
      v53 = 0.0;
    }

    magneticField2 = [(CVACMMotionTypeDeviceMotionData *)v5->_deviceMotion magneticField];
    *&v55 = v53;
    [magneticField2 setY:v55];

    if (motionCopy)
    {
      [motionCopy magneticField];
      v56 = *&v61;
    }

    else
    {
      v60 = 0u;
      v61 = 0u;
      v56 = 0.0;
    }

    v57 = [(CVACMMotionTypeDeviceMotionData *)v5->_deviceMotion magneticField:v60];
    *&v58 = v56;
    [v57 setZ:v58];

    -[CVACMMotionTypeDeviceMotionData setMagneticFieldCalibrationLevel:](v5->_deviceMotion, "setMagneticFieldCalibrationLevel:", [motionCopy magneticFieldCalibrationLevel]);
    -[CVACMMotionTypeDeviceMotionData setDoingYawCorrection:](v5->_deviceMotion, "setDoingYawCorrection:", [motionCopy doingYawCorrection]);
    -[CVACMMotionTypeDeviceMotionData setDoingBiasEstimation:](v5->_deviceMotion, "setDoingBiasEstimation:", [motionCopy doingBiasEstimation]);
    -[CVACMMotionTypeDeviceMotionData setFusedWithVision:](v5->_deviceMotion, "setFusedWithVision:", [motionCopy fusedWithVision]);
  }

  return v5;
}

+ (id)toData:(id)data additionalData:(id)additionalData
{
  additionalDataCopy = additionalData;
  dataCopy = data;
  v7 = [[CVACMDeviceMotionData alloc] initWithCMDeviceMotion:dataCopy];
  dictionary = [(CVACMDeviceMotionData *)v7 dictionary];
  v9 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:additionalDataCopy];

  [v9 addEntriesFromDictionary:dictionary];
  v10 = [CVAMetadataWrapper encodeClass:dataCopy andAdditionalData:v9];

  return v10;
}

- (id)dictionary
{
  v3 = MEMORY[0x277CBEB38];
  dictionary = [(CVACMMotionTypeDeviceMotionData *)self->_deviceMotion dictionary];
  v5 = [v3 dictionaryWithDictionary:dictionary];

  v6 = [MEMORY[0x277CCABB0] numberWithDouble:self->_timestamp];
  [v5 setObject:v6 forKeyedSubscript:@"t"];

  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_syncTimestamp];
  [v5 setObject:v7 forKeyedSubscript:@"st"];

  v8 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v5];

  return v8;
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  dictionary = [(CVACMDeviceMotionData *)self dictionary];
  v6 = [v3 stringWithFormat:@"<%@: %@>", v4, dictionary];

  return v6;
}

@end