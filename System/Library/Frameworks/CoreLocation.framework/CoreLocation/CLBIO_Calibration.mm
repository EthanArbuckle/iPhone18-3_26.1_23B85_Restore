@interface CLBIO_Calibration
- (BOOL)isEqual:(id)equal;
- (CLBIO_Calibration)initWithCoder:(id)coder;
- (CLBIO_Calibration)initWithRotationToTrueNorth:(float)north scaleFactor:(float)factor;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CLBIO_Calibration

- (CLBIO_Calibration)initWithRotationToTrueNorth:(float)north scaleFactor:(float)factor
{
  v7.receiver = self;
  v7.super_class = CLBIO_Calibration;
  result = [(CLBIO_Calibration *)&v7 init];
  if (result)
  {
    result->_rotationToTrueNorth_rad = north;
    result->_scaleFactor = factor;
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    rotationToTrueNorth_rad = self->_rotationToTrueNorth_rad;
    [equal rotationToTrueNorth_rad];
    if (rotationToTrueNorth_rad == v7)
    {
      scaleFactor = self->_scaleFactor;
      [equal scaleFactor];
      LOBYTE(v5) = scaleFactor == v9;
    }

    else
    {
      LOBYTE(v5) = 0;
    }
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  [(CLBIO_Calibration *)self rotationToTrueNorth_rad];
  [(CLBIO_Calibration *)self scaleFactor];

  return MEMORY[0x1EEE66B58](v4, sel_initWithRotationToTrueNorth_scaleFactor_);
}

- (void)encodeWithCoder:(id)coder
{
  [(CLBIO_Calibration *)self rotationToTrueNorth_rad];
  [coder encodeFloat:@"calibrationRotationToTrueNorth" forKey:?];
  [(CLBIO_Calibration *)self scaleFactor];

  [coder encodeFloat:@"calibrationScaleFactor" forKey:?];
}

- (CLBIO_Calibration)initWithCoder:(id)coder
{
  v8.receiver = self;
  v8.super_class = CLBIO_Calibration;
  v4 = [(CLBIO_Calibration *)&v8 init];
  if (v4)
  {
    [coder decodeFloatForKey:@"calibrationRotationToTrueNorth"];
    v4->_rotationToTrueNorth_rad = v5;
    [coder decodeFloatForKey:@"calibrationScaleFactor"];
    v4->_scaleFactor = v6;
  }

  return v4;
}

@end