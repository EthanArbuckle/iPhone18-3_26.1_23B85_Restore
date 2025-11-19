@interface CVACMDeviceMotionData
+ (id)classes;
+ (id)toData:(id)a3 additionalData:(id)a4;
+ (id)withData:(id)a3;
- (CVACMDeviceMotionData)init;
- (CVACMDeviceMotionData)initWithCMDeviceMotion:(id)a3;
- (CVACMDeviceMotionData)initWithCoder:(id)a3;
- (CVACMDeviceMotionData)initWithDictionary:(id)a3;
- (CVACMDeviceMotionData)initWithFastPathData:(id)a3;
- (id)debugDescription;
- (id)dictionary;
- (void)encodeWithCoder:(id)a3;
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

+ (id)withData:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = +[CVACMDeviceMotionData classes];
  v15 = 0;
  v5 = [CVAMetadataWrapper decodeNSCoderObject:v3 classes:v4 error:&v15];
  v6 = v15;

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v14 = v6;
    v8 = [CVAMetadataWrapper decodeClass:v3 class:objc_opt_class() error:&v14];
    v7 = v14;

    if (v8)
    {
      v5 = v8;
    }

    else
    {
      v9 = [CVAMetadataWrapper decodeCommon:v3];
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
            v11 = [v7 localizedDescription];
            *buf = 138412290;
            v17 = v11;
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

- (CVACMDeviceMotionData)initWithDictionary:(id)a3
{
  v4 = a3;
  v5 = [(CVACMDeviceMotionData *)self init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"qx"];
    [v6 doubleValue];
    v8 = v7;
    v9 = [(CVACMMotionTypeDeviceMotionData *)v5->_deviceMotion quaternion];
    [v9 setX:v8];

    v10 = [v4 objectForKeyedSubscript:@"qy"];
    [v10 doubleValue];
    v12 = v11;
    v13 = [(CVACMMotionTypeDeviceMotionData *)v5->_deviceMotion quaternion];
    [v13 setY:v12];

    v14 = [v4 objectForKeyedSubscript:@"qz"];
    [v14 doubleValue];
    v16 = v15;
    v17 = [(CVACMMotionTypeDeviceMotionData *)v5->_deviceMotion quaternion];
    [v17 setZ:v16];

    v18 = [v4 objectForKeyedSubscript:@"qw"];
    [v18 doubleValue];
    v20 = v19;
    v21 = [(CVACMMotionTypeDeviceMotionData *)v5->_deviceMotion quaternion];
    [v21 setW:v20];

    v22 = [v4 objectForKeyedSubscript:@"ax"];
    [v22 floatValue];
    LODWORD(v20) = v23;
    v24 = [(CVACMMotionTypeDeviceMotionData *)v5->_deviceMotion userAcceleration];
    LODWORD(v25) = LODWORD(v20);
    [v24 setX:v25];

    v26 = [v4 objectForKeyedSubscript:@"ay"];
    [v26 floatValue];
    LODWORD(v20) = v27;
    v28 = [(CVACMMotionTypeDeviceMotionData *)v5->_deviceMotion userAcceleration];
    LODWORD(v29) = LODWORD(v20);
    [v28 setY:v29];

    v30 = [v4 objectForKeyedSubscript:@"az"];
    [v30 floatValue];
    LODWORD(v20) = v31;
    v32 = [(CVACMMotionTypeDeviceMotionData *)v5->_deviceMotion userAcceleration];
    LODWORD(v33) = LODWORD(v20);
    [v32 setZ:v33];

    v34 = [v4 objectForKeyedSubscript:@"gx"];
    [v34 floatValue];
    LODWORD(v20) = v35;
    v36 = [(CVACMMotionTypeDeviceMotionData *)v5->_deviceMotion gravity];
    LODWORD(v37) = LODWORD(v20);
    [v36 setX:v37];

    v38 = [v4 objectForKeyedSubscript:@"gy"];
    [v38 floatValue];
    LODWORD(v20) = v39;
    v40 = [(CVACMMotionTypeDeviceMotionData *)v5->_deviceMotion gravity];
    LODWORD(v41) = LODWORD(v20);
    [v40 setY:v41];

    v42 = [v4 objectForKeyedSubscript:@"gz"];
    [v42 floatValue];
    LODWORD(v20) = v43;
    v44 = [(CVACMMotionTypeDeviceMotionData *)v5->_deviceMotion gravity];
    LODWORD(v45) = LODWORD(v20);
    [v44 setZ:v45];

    v46 = [v4 objectForKeyedSubscript:@"rx"];
    [v46 floatValue];
    LODWORD(v20) = v47;
    v48 = [(CVACMMotionTypeDeviceMotionData *)v5->_deviceMotion rotationRate];
    LODWORD(v49) = LODWORD(v20);
    [v48 setX:v49];

    v50 = [v4 objectForKeyedSubscript:@"ry"];
    [v50 floatValue];
    LODWORD(v20) = v51;
    v52 = [(CVACMMotionTypeDeviceMotionData *)v5->_deviceMotion rotationRate];
    LODWORD(v53) = LODWORD(v20);
    [v52 setY:v53];

    v54 = [v4 objectForKeyedSubscript:@"rz"];
    [v54 floatValue];
    LODWORD(v20) = v55;
    v56 = [(CVACMMotionTypeDeviceMotionData *)v5->_deviceMotion rotationRate];
    LODWORD(v57) = LODWORD(v20);
    [v56 setZ:v57];

    v58 = [v4 objectForKeyedSubscript:@"mx"];
    [v58 floatValue];
    LODWORD(v20) = v59;
    v60 = [(CVACMMotionTypeDeviceMotionData *)v5->_deviceMotion magneticField];
    LODWORD(v61) = LODWORD(v20);
    [v60 setX:v61];

    v62 = [v4 objectForKeyedSubscript:@"my"];
    [v62 floatValue];
    LODWORD(v20) = v63;
    v64 = [(CVACMMotionTypeDeviceMotionData *)v5->_deviceMotion magneticField];
    LODWORD(v65) = LODWORD(v20);
    [v64 setY:v65];

    v66 = [v4 objectForKeyedSubscript:@"mz"];
    [v66 floatValue];
    LODWORD(v20) = v67;
    v68 = [(CVACMMotionTypeDeviceMotionData *)v5->_deviceMotion magneticField];
    LODWORD(v69) = LODWORD(v20);
    [v68 setZ:v69];

    v70 = [v4 objectForKeyedSubscript:@"mc"];
    -[CVACMMotionTypeDeviceMotionData setMagneticFieldCalibrationLevel:](v5->_deviceMotion, "setMagneticFieldCalibrationLevel:", [v70 intValue]);

    v71 = [v4 objectForKeyedSubscript:@"yc"];
    -[CVACMMotionTypeDeviceMotionData setDoingYawCorrection:](v5->_deviceMotion, "setDoingYawCorrection:", [v71 BOOLValue]);

    v72 = [v4 objectForKeyedSubscript:@"be"];
    -[CVACMMotionTypeDeviceMotionData setDoingBiasEstimation:](v5->_deviceMotion, "setDoingBiasEstimation:", [v72 BOOLValue]);

    v73 = [v4 objectForKeyedSubscript:@"fv"];
    -[CVACMMotionTypeDeviceMotionData setFusedWithVision:](v5->_deviceMotion, "setFusedWithVision:", [v73 BOOLValue]);

    v74 = [v4 objectForKeyedSubscript:@"t"];
    [v74 doubleValue];
    v5->_timestamp = v75;

    v76 = [v4 objectForKeyedSubscript:@"st"];
    v5->_syncTimestamp = [v76 longLongValue];
  }

  return v5;
}

- (CVACMDeviceMotionData)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(CVACMDeviceMotionData *)self init];
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    [v4 decodeDoubleForKey:@"qx"];
    v8 = v7;
    v9 = [(CVACMMotionTypeDeviceMotionData *)v5->_deviceMotion quaternion];
    [v9 setX:v8];

    [v4 decodeDoubleForKey:@"qy"];
    v11 = v10;
    v12 = [(CVACMMotionTypeDeviceMotionData *)v5->_deviceMotion quaternion];
    [v12 setY:v11];

    [v4 decodeDoubleForKey:@"qz"];
    v14 = v13;
    v15 = [(CVACMMotionTypeDeviceMotionData *)v5->_deviceMotion quaternion];
    [v15 setZ:v14];

    [v4 decodeDoubleForKey:@"qw"];
    v17 = v16;
    v18 = [(CVACMMotionTypeDeviceMotionData *)v5->_deviceMotion quaternion];
    [v18 setW:v17];

    [v4 decodeFloatForKey:@"ax"];
    LODWORD(v17) = v19;
    v20 = [(CVACMMotionTypeDeviceMotionData *)v5->_deviceMotion userAcceleration];
    LODWORD(v21) = LODWORD(v17);
    [v20 setX:v21];

    [v4 decodeFloatForKey:@"ay"];
    LODWORD(v17) = v22;
    v23 = [(CVACMMotionTypeDeviceMotionData *)v5->_deviceMotion userAcceleration];
    LODWORD(v24) = LODWORD(v17);
    [v23 setY:v24];

    [v4 decodeFloatForKey:@"az"];
    LODWORD(v17) = v25;
    v26 = [(CVACMMotionTypeDeviceMotionData *)v5->_deviceMotion userAcceleration];
    LODWORD(v27) = LODWORD(v17);
    [v26 setZ:v27];

    [v4 decodeFloatForKey:@"gx"];
    LODWORD(v17) = v28;
    v29 = [(CVACMMotionTypeDeviceMotionData *)v5->_deviceMotion gravity];
    LODWORD(v30) = LODWORD(v17);
    [v29 setX:v30];

    [v4 decodeFloatForKey:@"gy"];
    LODWORD(v17) = v31;
    v32 = [(CVACMMotionTypeDeviceMotionData *)v5->_deviceMotion gravity];
    LODWORD(v33) = LODWORD(v17);
    [v32 setY:v33];

    [v4 decodeFloatForKey:@"gz"];
    LODWORD(v17) = v34;
    v35 = [(CVACMMotionTypeDeviceMotionData *)v5->_deviceMotion gravity];
    LODWORD(v36) = LODWORD(v17);
    [v35 setZ:v36];

    [v4 decodeFloatForKey:@"rx"];
    LODWORD(v17) = v37;
    v38 = [(CVACMMotionTypeDeviceMotionData *)v5->_deviceMotion rotationRate];
    LODWORD(v39) = LODWORD(v17);
    [v38 setX:v39];

    [v4 decodeFloatForKey:@"ry"];
    LODWORD(v17) = v40;
    v41 = [(CVACMMotionTypeDeviceMotionData *)v5->_deviceMotion rotationRate];
    LODWORD(v42) = LODWORD(v17);
    [v41 setY:v42];

    [v4 decodeFloatForKey:@"rz"];
    LODWORD(v17) = v43;
    v44 = [(CVACMMotionTypeDeviceMotionData *)v5->_deviceMotion rotationRate];
    LODWORD(v45) = LODWORD(v17);
    [v44 setZ:v45];

    [v4 decodeFloatForKey:@"mx"];
    LODWORD(v17) = v46;
    v47 = [(CVACMMotionTypeDeviceMotionData *)v5->_deviceMotion magneticField];
    LODWORD(v48) = LODWORD(v17);
    [v47 setX:v48];

    [v4 decodeFloatForKey:@"my"];
    LODWORD(v17) = v49;
    v50 = [(CVACMMotionTypeDeviceMotionData *)v5->_deviceMotion magneticField];
    LODWORD(v51) = LODWORD(v17);
    [v50 setY:v51];

    [v4 decodeFloatForKey:@"mz"];
    LODWORD(v17) = v52;
    v53 = [(CVACMMotionTypeDeviceMotionData *)v5->_deviceMotion magneticField];
    LODWORD(v54) = LODWORD(v17);
    [v53 setZ:v54];

    -[CVACMMotionTypeDeviceMotionData setMagneticFieldCalibrationLevel:](v5->_deviceMotion, "setMagneticFieldCalibrationLevel:", [v4 decodeIntForKey:@"mc"]);
    -[CVACMMotionTypeDeviceMotionData setDoingYawCorrection:](v5->_deviceMotion, "setDoingYawCorrection:", [v4 decodeBoolForKey:@"yc"]);
    -[CVACMMotionTypeDeviceMotionData setDoingBiasEstimation:](v5->_deviceMotion, "setDoingBiasEstimation:", [v4 decodeBoolForKey:@"be"]);
    -[CVACMMotionTypeDeviceMotionData setFusedWithVision:](v5->_deviceMotion, "setFusedWithVision:", [v4 decodeBoolForKey:@"fv"]);
    [v4 decodeDoubleForKey:@"t"];
    v5->_timestamp = v55;
    v5->_syncTimestamp = [v4 decodeInt64ForKey:@"st"];
    objc_autoreleasePoolPop(v6);
  }

  return v5;
}

- (CVACMDeviceMotionData)initWithFastPathData:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = CVACMDeviceMotionData;
  v5 = [(CVACMDeviceMotionData *)&v11 init];
  if (v5)
  {
    v6 = [[CVACMMotionTypeDeviceMotionData alloc] initWithFastPathData:v4];
    deviceMotion = v5->_deviceMotion;
    v5->_deviceMotion = v6;

    v8 = [v4 bytes];
    if (*v8 != 3)
    {
      v9 = 0;
      goto LABEL_6;
    }

    v5->_timestamp = *(v8 + 16);
    v5->_syncTimestamp = *(v8 + 8);
  }

  v9 = v5;
LABEL_6:

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  v21 = a3;
  v4 = objc_autoreleasePoolPush();
  v5 = [(CVACMMotionTypeDeviceMotionData *)self->_deviceMotion quaternion];
  [v5 x];
  [v21 encodeDouble:@"qx" forKey:?];

  v6 = [(CVACMMotionTypeDeviceMotionData *)self->_deviceMotion quaternion];
  [v6 y];
  [v21 encodeDouble:@"qy" forKey:?];

  v7 = [(CVACMMotionTypeDeviceMotionData *)self->_deviceMotion quaternion];
  [v7 z];
  [v21 encodeDouble:@"qz" forKey:?];

  v8 = [(CVACMMotionTypeDeviceMotionData *)self->_deviceMotion quaternion];
  [v8 w];
  [v21 encodeDouble:@"qw" forKey:?];

  v9 = [(CVACMMotionTypeDeviceMotionData *)self->_deviceMotion userAcceleration];
  [v9 x];
  [v21 encodeFloat:@"ax" forKey:?];

  v10 = [(CVACMMotionTypeDeviceMotionData *)self->_deviceMotion userAcceleration];
  [v10 y];
  [v21 encodeFloat:@"ay" forKey:?];

  v11 = [(CVACMMotionTypeDeviceMotionData *)self->_deviceMotion userAcceleration];
  [v11 z];
  [v21 encodeFloat:@"az" forKey:?];

  v12 = [(CVACMMotionTypeDeviceMotionData *)self->_deviceMotion gravity];
  [v12 x];
  [v21 encodeFloat:@"gx" forKey:?];

  v13 = [(CVACMMotionTypeDeviceMotionData *)self->_deviceMotion gravity];
  [v13 y];
  [v21 encodeFloat:@"gy" forKey:?];

  v14 = [(CVACMMotionTypeDeviceMotionData *)self->_deviceMotion gravity];
  [v14 z];
  [v21 encodeFloat:@"gz" forKey:?];

  v15 = [(CVACMMotionTypeDeviceMotionData *)self->_deviceMotion rotationRate];
  [v15 x];
  [v21 encodeFloat:@"rx" forKey:?];

  v16 = [(CVACMMotionTypeDeviceMotionData *)self->_deviceMotion rotationRate];
  [v16 y];
  [v21 encodeFloat:@"ry" forKey:?];

  v17 = [(CVACMMotionTypeDeviceMotionData *)self->_deviceMotion rotationRate];
  [v17 z];
  [v21 encodeFloat:@"rz" forKey:?];

  v18 = [(CVACMMotionTypeDeviceMotionData *)self->_deviceMotion magneticField];
  [v18 x];
  [v21 encodeFloat:@"mx" forKey:?];

  v19 = [(CVACMMotionTypeDeviceMotionData *)self->_deviceMotion magneticField];
  [v19 y];
  [v21 encodeFloat:@"my" forKey:?];

  v20 = [(CVACMMotionTypeDeviceMotionData *)self->_deviceMotion magneticField];
  [v20 z];
  [v21 encodeFloat:@"mz" forKey:?];

  [v21 encodeInteger:-[CVACMMotionTypeDeviceMotionData magneticFieldCalibrationLevel](self->_deviceMotion forKey:{"magneticFieldCalibrationLevel"), @"mc"}];
  [v21 encodeBool:-[CVACMMotionTypeDeviceMotionData doingYawCorrection](self->_deviceMotion forKey:{"doingYawCorrection"), @"yc"}];
  [v21 encodeBool:-[CVACMMotionTypeDeviceMotionData doingBiasEstimation](self->_deviceMotion forKey:{"doingBiasEstimation"), @"be"}];
  [v21 encodeBool:-[CVACMMotionTypeDeviceMotionData fusedWithVision](self->_deviceMotion forKey:{"fusedWithVision"), @"fv"}];
  [v21 encodeDouble:@"t" forKey:self->_timestamp];
  [v21 encodeInt64:self->_syncTimestamp forKey:@"st"];
  objc_autoreleasePoolPop(v4);
}

- (CVACMDeviceMotionData)initWithCMDeviceMotion:(id)a3
{
  v4 = a3;
  v5 = [(CVACMDeviceMotionData *)self init];
  if (v5)
  {
    [v4 timestamp];
    v5->_timestamp = v6;
    v7 = [v4 attitude];
    [v7 quaternion];
    v9 = v8;
    v10 = [(CVACMMotionTypeDeviceMotionData *)v5->_deviceMotion quaternion];
    [v10 setX:v9];

    v11 = [v4 attitude];
    [v11 quaternion];
    v13 = v12;
    v14 = [(CVACMMotionTypeDeviceMotionData *)v5->_deviceMotion quaternion];
    [v14 setY:v13];

    v15 = [v4 attitude];
    [v15 quaternion];
    v17 = v16;
    v18 = [(CVACMMotionTypeDeviceMotionData *)v5->_deviceMotion quaternion];
    [v18 setZ:v17];

    v19 = [v4 attitude];
    [v19 quaternion];
    v21 = v20;
    v22 = [(CVACMMotionTypeDeviceMotionData *)v5->_deviceMotion quaternion];
    [v22 setW:v21];

    [v4 userAcceleration];
    *&v21 = v23;
    v24 = [(CVACMMotionTypeDeviceMotionData *)v5->_deviceMotion userAcceleration];
    LODWORD(v25) = LODWORD(v21);
    [v24 setX:v25];

    [v4 userAcceleration];
    *&v21 = v26;
    v27 = [(CVACMMotionTypeDeviceMotionData *)v5->_deviceMotion userAcceleration];
    LODWORD(v28) = LODWORD(v21);
    [v27 setY:v28];

    [v4 userAcceleration];
    *&v21 = v29;
    v30 = [(CVACMMotionTypeDeviceMotionData *)v5->_deviceMotion userAcceleration];
    LODWORD(v31) = LODWORD(v21);
    [v30 setZ:v31];

    [v4 gravity];
    *&v21 = v32;
    v33 = [(CVACMMotionTypeDeviceMotionData *)v5->_deviceMotion gravity];
    LODWORD(v34) = LODWORD(v21);
    [v33 setX:v34];

    [v4 gravity];
    *&v21 = v35;
    v36 = [(CVACMMotionTypeDeviceMotionData *)v5->_deviceMotion gravity];
    LODWORD(v37) = LODWORD(v21);
    [v36 setY:v37];

    [v4 gravity];
    *&v21 = v38;
    v39 = [(CVACMMotionTypeDeviceMotionData *)v5->_deviceMotion gravity];
    LODWORD(v40) = LODWORD(v21);
    [v39 setZ:v40];

    [v4 rotationRate];
    *&v21 = v41;
    v42 = [(CVACMMotionTypeDeviceMotionData *)v5->_deviceMotion rotationRate];
    LODWORD(v43) = LODWORD(v21);
    [v42 setX:v43];

    [v4 rotationRate];
    *&v21 = v44;
    v45 = [(CVACMMotionTypeDeviceMotionData *)v5->_deviceMotion rotationRate];
    LODWORD(v46) = LODWORD(v21);
    [v45 setY:v46];

    [v4 rotationRate];
    *&v21 = v47;
    v48 = [(CVACMMotionTypeDeviceMotionData *)v5->_deviceMotion rotationRate];
    LODWORD(v49) = LODWORD(v21);
    [v48 setZ:v49];

    if (v4)
    {
      [v4 magneticField];
      v50 = *&v64;
    }

    else
    {
      v64 = 0u;
      v65 = 0u;
      v50 = 0.0;
    }

    v51 = [(CVACMMotionTypeDeviceMotionData *)v5->_deviceMotion magneticField];
    *&v52 = v50;
    [v51 setX:v52];

    if (v4)
    {
      [v4 magneticField];
      v53 = *(&v62 + 1);
    }

    else
    {
      v62 = 0u;
      v63 = 0u;
      v53 = 0.0;
    }

    v54 = [(CVACMMotionTypeDeviceMotionData *)v5->_deviceMotion magneticField];
    *&v55 = v53;
    [v54 setY:v55];

    if (v4)
    {
      [v4 magneticField];
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

    -[CVACMMotionTypeDeviceMotionData setMagneticFieldCalibrationLevel:](v5->_deviceMotion, "setMagneticFieldCalibrationLevel:", [v4 magneticFieldCalibrationLevel]);
    -[CVACMMotionTypeDeviceMotionData setDoingYawCorrection:](v5->_deviceMotion, "setDoingYawCorrection:", [v4 doingYawCorrection]);
    -[CVACMMotionTypeDeviceMotionData setDoingBiasEstimation:](v5->_deviceMotion, "setDoingBiasEstimation:", [v4 doingBiasEstimation]);
    -[CVACMMotionTypeDeviceMotionData setFusedWithVision:](v5->_deviceMotion, "setFusedWithVision:", [v4 fusedWithVision]);
  }

  return v5;
}

+ (id)toData:(id)a3 additionalData:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[CVACMDeviceMotionData alloc] initWithCMDeviceMotion:v6];
  v8 = [(CVACMDeviceMotionData *)v7 dictionary];
  v9 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v5];

  [v9 addEntriesFromDictionary:v8];
  v10 = [CVAMetadataWrapper encodeClass:v6 andAdditionalData:v9];

  return v10;
}

- (id)dictionary
{
  v3 = MEMORY[0x277CBEB38];
  v4 = [(CVACMMotionTypeDeviceMotionData *)self->_deviceMotion dictionary];
  v5 = [v3 dictionaryWithDictionary:v4];

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
  v5 = [(CVACMDeviceMotionData *)self dictionary];
  v6 = [v3 stringWithFormat:@"<%@: %@>", v4, v5];

  return v6;
}

@end