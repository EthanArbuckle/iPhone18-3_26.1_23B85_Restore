@interface CLBackgroundInertialOdometrySample
- (BOOL)isEqual:(id)a3;
- (CLBackgroundInertialOdometrySample)initWithCoder:(id)a3;
- (CLBackgroundInertialOdometrySample)initWithTimestamp:(id)a3 machContinuousTimestamp:(double)a4 sampleInterval:(double)a5 deltaPosition:(id)a6 deltaVelocity:(id)a7 quaternion:(id)a8 referenceFrameContinuity:(unint64_t)a9 referenceFrame:(unint64_t)a10 staticFlag:(unint64_t)a11 mountState:(unint64_t)a12 zupt:(unint64_t)a13 dotBiasChange:(unint64_t)a14 calibration:(id)a15;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CLBackgroundInertialOdometrySample

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [(NSDate *)[(CLBackgroundInertialOdometrySample *)self cfAbsTimestamp] timeIntervalSinceReferenceDate];
  v31 = v6;
  [(CLBackgroundInertialOdometrySample *)self machContinuousTimestamp_s];
  v30 = v7;
  [(CLBackgroundInertialOdometrySample *)self sampleInterval_s];
  v29 = v8;
  [(CLBIO_DeltaPosition *)[(CLBackgroundInertialOdometrySample *)self deltaPosition_m] X];
  v28 = v9;
  [(CLBIO_DeltaPosition *)[(CLBackgroundInertialOdometrySample *)self deltaPosition_m] Y];
  v27 = v10;
  [(CLBIO_DeltaPosition *)[(CLBackgroundInertialOdometrySample *)self deltaPosition_m] Z];
  v12 = v11;
  [(CLBIO_DeltaVelocity *)[(CLBackgroundInertialOdometrySample *)self deltaVelocity_mps] X];
  v14 = v13;
  [(CLBIO_DeltaVelocity *)[(CLBackgroundInertialOdometrySample *)self deltaVelocity_mps] Y];
  v16 = v15;
  [(CLBIO_DeltaVelocity *)[(CLBackgroundInertialOdometrySample *)self deltaVelocity_mps] Z];
  v18 = v17;
  [(CLBIO_Quaternion *)[(CLBackgroundInertialOdometrySample *)self quaternion] X];
  v20 = v19;
  [(CLBIO_Quaternion *)[(CLBackgroundInertialOdometrySample *)self quaternion] Y];
  v22 = v21;
  [(CLBIO_Quaternion *)[(CLBackgroundInertialOdometrySample *)self quaternion] Z];
  v24 = v23;
  [(CLBIO_Quaternion *)[(CLBackgroundInertialOdometrySample *)self quaternion] W];
  return [v3 stringWithFormat:@"%@, cfAbsTimestamp, %.3f, machContinuousTimestamp_s, %.3f, sampleInterval_s, %.3f, deltaPosition_m.X, %.3f, deltaPosition_m.Y, %.3f, deltaPosition_m.Z, %.3f, deltaVelocity_mps.X, %.3f, deltaVelocity_mps.Y, %.3f, deltaVelocity_mps.Z, %.3f, quaternion.X, %.3f, quaternion.Y, %.3f, quaternion.Z, %.3f, quaternion.W, %.3f, referenceFrameContinuity, %zu, sessionReferenceFrame, %zu, staticFlag, %zu, mountState, %zu, zupt, %zu, dotBiasChange, %zu", v5, v31, v30, v29, v28, v27, v12, v14, v16, v18, v20, v22, v24, v25, -[CLBackgroundInertialOdometrySample referenceFrameContinuity](self, "referenceFrameContinuity"), -[CLBackgroundInertialOdometrySample sessionReferenceFrame](self, "sessionReferenceFrame"), -[CLBackgroundInertialOdometrySample staticFlag](self, "staticFlag"), -[CLBackgroundInertialOdometrySample mountState](self, "mountState"), -[CLBackgroundInertialOdometrySample zupt](self, "zupt"), -[CLBackgroundInertialOdometrySample dotBiasChange](self, "dotBiasChange")];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CLBackgroundInertialOdometrySample;
  [(CLBackgroundInertialOdometrySample *)&v3 dealloc];
}

- (CLBackgroundInertialOdometrySample)initWithTimestamp:(id)a3 machContinuousTimestamp:(double)a4 sampleInterval:(double)a5 deltaPosition:(id)a6 deltaVelocity:(id)a7 quaternion:(id)a8 referenceFrameContinuity:(unint64_t)a9 referenceFrame:(unint64_t)a10 staticFlag:(unint64_t)a11 mountState:(unint64_t)a12 zupt:(unint64_t)a13 dotBiasChange:(unint64_t)a14 calibration:(id)a15
{
  v25.receiver = self;
  v25.super_class = CLBackgroundInertialOdometrySample;
  v23 = [(CLBackgroundInertialOdometrySample *)&v25 init];
  if (v23)
  {
    v23->_cfAbsTimestamp = a3;
    v23->_machContinuousTimestamp_s = a4;
    v23->_sampleInterval_s = a5;
    v23->_deltaPosition_m = a6;
    v23->_deltaVelocity_mps = a7;
    v23->_quaternion = a8;
    v23->_referenceFrameContinuity = a9;
    v23->_sessionReferenceFrame = a10;
    v23->_staticFlag = a11;
    v23->_mountState = a12;
    v23->_zupt = a13;
    v23->_dotBiasChange = a14;
    v23->_calibration = a15;
  }

  return v23;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v9 = [objc_opt_class() allocWithZone:a3];
  v8 = [(CLBackgroundInertialOdometrySample *)self cfAbsTimestamp];
  [(CLBackgroundInertialOdometrySample *)self machContinuousTimestamp_s];
  v5 = v4;
  [(CLBackgroundInertialOdometrySample *)self sampleInterval_s];
  return [v9 initWithTimestamp:v8 machContinuousTimestamp:-[CLBackgroundInertialOdometrySample deltaPosition_m](self sampleInterval:"deltaPosition_m") deltaPosition:-[CLBackgroundInertialOdometrySample deltaVelocity_mps](self deltaVelocity:"deltaVelocity_mps") quaternion:-[CLBackgroundInertialOdometrySample quaternion](self referenceFrameContinuity:"quaternion") referenceFrame:-[CLBackgroundInertialOdometrySample referenceFrameContinuity](self staticFlag:"referenceFrameContinuity") mountState:-[CLBackgroundInertialOdometrySample sessionReferenceFrame](self zupt:"sessionReferenceFrame") dotBiasChange:v5 calibration:{v6, -[CLBackgroundInertialOdometrySample staticFlag](self, "staticFlag"), -[CLBackgroundInertialOdometrySample mountState](self, "mountState"), -[CLBackgroundInertialOdometrySample zupt](self, "zupt"), -[CLBackgroundInertialOdometrySample dotBiasChange](self, "dotBiasChange"), -[CLBackgroundInertialOdometrySample calibration](self, "calibration")}];
}

- (void)encodeWithCoder:(id)a3
{
  [a3 encodeObject:-[CLBackgroundInertialOdometrySample cfAbsTimestamp](self forKey:{"cfAbsTimestamp"), @"timestamp"}];
  [(CLBackgroundInertialOdometrySample *)self machContinuousTimestamp_s];
  [a3 encodeDouble:@"machContinuousTimestamp" forKey:?];
  [(CLBackgroundInertialOdometrySample *)self sampleInterval_s];
  [a3 encodeDouble:@"sampleInterval" forKey:?];
  [a3 encodeObject:-[CLBackgroundInertialOdometrySample deltaPosition_m](self forKey:{"deltaPosition_m"), @"deltaPosition"}];
  [a3 encodeObject:-[CLBackgroundInertialOdometrySample deltaVelocity_mps](self forKey:{"deltaVelocity_mps"), @"deltaVelocity"}];
  [a3 encodeObject:-[CLBackgroundInertialOdometrySample quaternion](self forKey:{"quaternion"), @"quaternion"}];
  [a3 encodeBool:-[CLBackgroundInertialOdometrySample referenceFrameContinuity](self forKey:{"referenceFrameContinuity") != 0, @"referenceFrameContinuity"}];
  [a3 encodeInteger:-[CLBackgroundInertialOdometrySample sessionReferenceFrame](self forKey:{"sessionReferenceFrame"), @"referenceFrame"}];
  [a3 encodeInteger:-[CLBackgroundInertialOdometrySample staticFlag](self forKey:{"staticFlag"), @"staticFlag"}];
  [a3 encodeInteger:-[CLBackgroundInertialOdometrySample mountState](self forKey:{"mountState"), @"mountState"}];
  [a3 encodeInteger:-[CLBackgroundInertialOdometrySample zupt](self forKey:{"zupt"), @"zupt"}];
  [a3 encodeInteger:-[CLBackgroundInertialOdometrySample dotBiasChange](self forKey:{"dotBiasChange"), @"dotBiasChange"}];
  v5 = [(CLBackgroundInertialOdometrySample *)self calibration];

  [a3 encodeObject:v5 forKey:@"calibration"];
}

- (CLBackgroundInertialOdometrySample)initWithCoder:(id)a3
{
  v8.receiver = self;
  v8.super_class = CLBackgroundInertialOdometrySample;
  v4 = [(CLBackgroundInertialOdometrySample *)&v8 init];
  if (v4)
  {
    v4->_cfAbsTimestamp = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"timestamp"];
    [a3 decodeDoubleForKey:@"machContinuousTimestamp"];
    v4->_machContinuousTimestamp_s = v5;
    [a3 decodeDoubleForKey:@"sampleInterval"];
    v4->_sampleInterval_s = v6;
    v4->_deltaPosition_m = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"deltaPosition"];
    v4->_deltaVelocity_mps = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"deltaVelocity"];
    v4->_quaternion = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"quaternion"];
    v4->_referenceFrameContinuity = [a3 decodeBoolForKey:@"referenceFrameContinuity"];
    v4->_sessionReferenceFrame = [a3 decodeIntegerForKey:@"referenceFrame"];
    v4->_staticFlag = [a3 decodeIntegerForKey:@"staticFlag"];
    v4->_mountState = [a3 decodeIntegerForKey:@"mountState"];
    v4->_zupt = [a3 decodeIntegerForKey:@"zupt"];
    v4->_dotBiasChange = [a3 decodeIntegerForKey:@"dotBiasChange"];
    v4->_calibration = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"calibration"];
  }

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v31 = [a3 isMemberOfClass:objc_opt_class()];
  v30 = -[NSDate isEqual:](-[CLBackgroundInertialOdometrySample cfAbsTimestamp](self, "cfAbsTimestamp"), "isEqual:", [a3 cfAbsTimestamp]);
  [(CLBackgroundInertialOdometrySample *)self machContinuousTimestamp_s];
  v6 = v5;
  [a3 machContinuousTimestamp_s];
  v8 = v7;
  [(CLBackgroundInertialOdometrySample *)self sampleInterval_s];
  v10 = v9;
  [a3 sampleInterval_s];
  v12 = v11;
  if (-[CLBackgroundInertialOdometrySample deltaPosition_m](self, "deltaPosition_m") || [a3 deltaPosition_m])
  {
    v29 = !-[CLBIO_DeltaPosition isEqual:](-[CLBackgroundInertialOdometrySample deltaPosition_m](self, "deltaPosition_m"), "isEqual:", [a3 deltaPosition_m]);
  }

  else
  {
    v29 = 0;
  }

  if (-[CLBackgroundInertialOdometrySample deltaVelocity_mps](self, "deltaVelocity_mps") || [a3 deltaVelocity_mps])
  {
    v28 = !-[CLBIO_DeltaVelocity isEqual:](-[CLBackgroundInertialOdometrySample deltaVelocity_mps](self, "deltaVelocity_mps"), "isEqual:", [a3 deltaVelocity_mps]);
  }

  else
  {
    v28 = 0;
  }

  if (-[CLBackgroundInertialOdometrySample quaternion](self, "quaternion") || [a3 quaternion])
  {
    v27 = !-[CLBIO_Quaternion isEqual:](-[CLBackgroundInertialOdometrySample quaternion](self, "quaternion"), "isEqual:", [a3 quaternion]);
  }

  else
  {
    LOBYTE(v27) = 0;
  }

  v26 = [(CLBackgroundInertialOdometrySample *)self referenceFrameContinuity];
  v25 = [a3 referenceFrameContinuity];
  v13 = [(CLBackgroundInertialOdometrySample *)self sessionReferenceFrame];
  v14 = [a3 sessionReferenceFrame];
  v15 = [(CLBackgroundInertialOdometrySample *)self staticFlag];
  v16 = [a3 staticFlag];
  v17 = [(CLBackgroundInertialOdometrySample *)self mountState];
  v18 = [a3 mountState];
  v24 = [(CLBackgroundInertialOdometrySample *)self zupt];
  v19 = [a3 zupt];
  v20 = [(CLBackgroundInertialOdometrySample *)self dotBiasChange];
  v21 = [a3 dotBiasChange];
  result = 0;
  if (!((v6 != v8 || (v31 & v30 & 1) == 0) | (v10 != v12) | v29 & 1 | v28 & 1) && (v27 & 1) == 0 && v26 == v25 && v13 == v14 && v15 == v16 && v17 == v18)
  {
    return v24 == v19 && v20 == v21;
  }

  return result;
}

@end