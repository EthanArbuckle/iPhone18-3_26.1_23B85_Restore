@interface CLBackgroundInertialOdometrySample
- (BOOL)isEqual:(id)equal;
- (CLBackgroundInertialOdometrySample)initWithCoder:(id)coder;
- (CLBackgroundInertialOdometrySample)initWithTimestamp:(id)timestamp machContinuousTimestamp:(double)continuousTimestamp sampleInterval:(double)interval deltaPosition:(id)position deltaVelocity:(id)velocity quaternion:(id)quaternion referenceFrameContinuity:(unint64_t)continuity referenceFrame:(unint64_t)self0 staticFlag:(unint64_t)self1 mountState:(unint64_t)self2 zupt:(unint64_t)self3 dotBiasChange:(unint64_t)self4 calibration:(id)self5;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
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

- (CLBackgroundInertialOdometrySample)initWithTimestamp:(id)timestamp machContinuousTimestamp:(double)continuousTimestamp sampleInterval:(double)interval deltaPosition:(id)position deltaVelocity:(id)velocity quaternion:(id)quaternion referenceFrameContinuity:(unint64_t)continuity referenceFrame:(unint64_t)self0 staticFlag:(unint64_t)self1 mountState:(unint64_t)self2 zupt:(unint64_t)self3 dotBiasChange:(unint64_t)self4 calibration:(id)self5
{
  v25.receiver = self;
  v25.super_class = CLBackgroundInertialOdometrySample;
  v23 = [(CLBackgroundInertialOdometrySample *)&v25 init];
  if (v23)
  {
    v23->_cfAbsTimestamp = timestamp;
    v23->_machContinuousTimestamp_s = continuousTimestamp;
    v23->_sampleInterval_s = interval;
    v23->_deltaPosition_m = position;
    v23->_deltaVelocity_mps = velocity;
    v23->_quaternion = quaternion;
    v23->_referenceFrameContinuity = continuity;
    v23->_sessionReferenceFrame = frame;
    v23->_staticFlag = flag;
    v23->_mountState = state;
    v23->_zupt = zupt;
    v23->_dotBiasChange = change;
    v23->_calibration = calibration;
  }

  return v23;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v9 = [objc_opt_class() allocWithZone:zone];
  cfAbsTimestamp = [(CLBackgroundInertialOdometrySample *)self cfAbsTimestamp];
  [(CLBackgroundInertialOdometrySample *)self machContinuousTimestamp_s];
  v5 = v4;
  [(CLBackgroundInertialOdometrySample *)self sampleInterval_s];
  return [v9 initWithTimestamp:cfAbsTimestamp machContinuousTimestamp:-[CLBackgroundInertialOdometrySample deltaPosition_m](self sampleInterval:"deltaPosition_m") deltaPosition:-[CLBackgroundInertialOdometrySample deltaVelocity_mps](self deltaVelocity:"deltaVelocity_mps") quaternion:-[CLBackgroundInertialOdometrySample quaternion](self referenceFrameContinuity:"quaternion") referenceFrame:-[CLBackgroundInertialOdometrySample referenceFrameContinuity](self staticFlag:"referenceFrameContinuity") mountState:-[CLBackgroundInertialOdometrySample sessionReferenceFrame](self zupt:"sessionReferenceFrame") dotBiasChange:v5 calibration:{v6, -[CLBackgroundInertialOdometrySample staticFlag](self, "staticFlag"), -[CLBackgroundInertialOdometrySample mountState](self, "mountState"), -[CLBackgroundInertialOdometrySample zupt](self, "zupt"), -[CLBackgroundInertialOdometrySample dotBiasChange](self, "dotBiasChange"), -[CLBackgroundInertialOdometrySample calibration](self, "calibration")}];
}

- (void)encodeWithCoder:(id)coder
{
  [coder encodeObject:-[CLBackgroundInertialOdometrySample cfAbsTimestamp](self forKey:{"cfAbsTimestamp"), @"timestamp"}];
  [(CLBackgroundInertialOdometrySample *)self machContinuousTimestamp_s];
  [coder encodeDouble:@"machContinuousTimestamp" forKey:?];
  [(CLBackgroundInertialOdometrySample *)self sampleInterval_s];
  [coder encodeDouble:@"sampleInterval" forKey:?];
  [coder encodeObject:-[CLBackgroundInertialOdometrySample deltaPosition_m](self forKey:{"deltaPosition_m"), @"deltaPosition"}];
  [coder encodeObject:-[CLBackgroundInertialOdometrySample deltaVelocity_mps](self forKey:{"deltaVelocity_mps"), @"deltaVelocity"}];
  [coder encodeObject:-[CLBackgroundInertialOdometrySample quaternion](self forKey:{"quaternion"), @"quaternion"}];
  [coder encodeBool:-[CLBackgroundInertialOdometrySample referenceFrameContinuity](self forKey:{"referenceFrameContinuity") != 0, @"referenceFrameContinuity"}];
  [coder encodeInteger:-[CLBackgroundInertialOdometrySample sessionReferenceFrame](self forKey:{"sessionReferenceFrame"), @"referenceFrame"}];
  [coder encodeInteger:-[CLBackgroundInertialOdometrySample staticFlag](self forKey:{"staticFlag"), @"staticFlag"}];
  [coder encodeInteger:-[CLBackgroundInertialOdometrySample mountState](self forKey:{"mountState"), @"mountState"}];
  [coder encodeInteger:-[CLBackgroundInertialOdometrySample zupt](self forKey:{"zupt"), @"zupt"}];
  [coder encodeInteger:-[CLBackgroundInertialOdometrySample dotBiasChange](self forKey:{"dotBiasChange"), @"dotBiasChange"}];
  calibration = [(CLBackgroundInertialOdometrySample *)self calibration];

  [coder encodeObject:calibration forKey:@"calibration"];
}

- (CLBackgroundInertialOdometrySample)initWithCoder:(id)coder
{
  v8.receiver = self;
  v8.super_class = CLBackgroundInertialOdometrySample;
  v4 = [(CLBackgroundInertialOdometrySample *)&v8 init];
  if (v4)
  {
    v4->_cfAbsTimestamp = [coder decodeObjectOfClass:objc_opt_class() forKey:@"timestamp"];
    [coder decodeDoubleForKey:@"machContinuousTimestamp"];
    v4->_machContinuousTimestamp_s = v5;
    [coder decodeDoubleForKey:@"sampleInterval"];
    v4->_sampleInterval_s = v6;
    v4->_deltaPosition_m = [coder decodeObjectOfClass:objc_opt_class() forKey:@"deltaPosition"];
    v4->_deltaVelocity_mps = [coder decodeObjectOfClass:objc_opt_class() forKey:@"deltaVelocity"];
    v4->_quaternion = [coder decodeObjectOfClass:objc_opt_class() forKey:@"quaternion"];
    v4->_referenceFrameContinuity = [coder decodeBoolForKey:@"referenceFrameContinuity"];
    v4->_sessionReferenceFrame = [coder decodeIntegerForKey:@"referenceFrame"];
    v4->_staticFlag = [coder decodeIntegerForKey:@"staticFlag"];
    v4->_mountState = [coder decodeIntegerForKey:@"mountState"];
    v4->_zupt = [coder decodeIntegerForKey:@"zupt"];
    v4->_dotBiasChange = [coder decodeIntegerForKey:@"dotBiasChange"];
    v4->_calibration = [coder decodeObjectOfClass:objc_opt_class() forKey:@"calibration"];
  }

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  v31 = [equal isMemberOfClass:objc_opt_class()];
  v30 = -[NSDate isEqual:](-[CLBackgroundInertialOdometrySample cfAbsTimestamp](self, "cfAbsTimestamp"), "isEqual:", [equal cfAbsTimestamp]);
  [(CLBackgroundInertialOdometrySample *)self machContinuousTimestamp_s];
  v6 = v5;
  [equal machContinuousTimestamp_s];
  v8 = v7;
  [(CLBackgroundInertialOdometrySample *)self sampleInterval_s];
  v10 = v9;
  [equal sampleInterval_s];
  v12 = v11;
  if (-[CLBackgroundInertialOdometrySample deltaPosition_m](self, "deltaPosition_m") || [equal deltaPosition_m])
  {
    v29 = !-[CLBIO_DeltaPosition isEqual:](-[CLBackgroundInertialOdometrySample deltaPosition_m](self, "deltaPosition_m"), "isEqual:", [equal deltaPosition_m]);
  }

  else
  {
    v29 = 0;
  }

  if (-[CLBackgroundInertialOdometrySample deltaVelocity_mps](self, "deltaVelocity_mps") || [equal deltaVelocity_mps])
  {
    v28 = !-[CLBIO_DeltaVelocity isEqual:](-[CLBackgroundInertialOdometrySample deltaVelocity_mps](self, "deltaVelocity_mps"), "isEqual:", [equal deltaVelocity_mps]);
  }

  else
  {
    v28 = 0;
  }

  if (-[CLBackgroundInertialOdometrySample quaternion](self, "quaternion") || [equal quaternion])
  {
    v27 = !-[CLBIO_Quaternion isEqual:](-[CLBackgroundInertialOdometrySample quaternion](self, "quaternion"), "isEqual:", [equal quaternion]);
  }

  else
  {
    LOBYTE(v27) = 0;
  }

  referenceFrameContinuity = [(CLBackgroundInertialOdometrySample *)self referenceFrameContinuity];
  referenceFrameContinuity2 = [equal referenceFrameContinuity];
  sessionReferenceFrame = [(CLBackgroundInertialOdometrySample *)self sessionReferenceFrame];
  sessionReferenceFrame2 = [equal sessionReferenceFrame];
  staticFlag = [(CLBackgroundInertialOdometrySample *)self staticFlag];
  staticFlag2 = [equal staticFlag];
  mountState = [(CLBackgroundInertialOdometrySample *)self mountState];
  mountState2 = [equal mountState];
  zupt = [(CLBackgroundInertialOdometrySample *)self zupt];
  zupt2 = [equal zupt];
  dotBiasChange = [(CLBackgroundInertialOdometrySample *)self dotBiasChange];
  dotBiasChange2 = [equal dotBiasChange];
  result = 0;
  if (!((v6 != v8 || (v31 & v30 & 1) == 0) | (v10 != v12) | v29 & 1 | v28 & 1) && (v27 & 1) == 0 && referenceFrameContinuity == referenceFrameContinuity2 && sessionReferenceFrame == sessionReferenceFrame2 && staticFlag == staticFlag2 && mountState == mountState2)
  {
    return zupt == zupt2 && dotBiasChange == dotBiasChange2;
  }

  return result;
}

@end