@interface CLBIO_Calibration
- (BOOL)isEqual:(id)a3;
- (CLBIO_Calibration)initWithCoder:(id)a3;
- (CLBIO_Calibration)initWithRotationToTrueNorth:(float)a3 scaleFactor:(float)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CLBIO_Calibration

- (CLBIO_Calibration)initWithRotationToTrueNorth:(float)a3 scaleFactor:(float)a4
{
  v7.receiver = self;
  v7.super_class = CLBIO_Calibration;
  result = [(CLBIO_Calibration *)&v7 init];
  if (result)
  {
    result->_rotationToTrueNorth_rad = a3;
    result->_scaleFactor = a4;
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    rotationToTrueNorth_rad = self->_rotationToTrueNorth_rad;
    [a3 rotationToTrueNorth_rad];
    if (rotationToTrueNorth_rad == v7)
    {
      scaleFactor = self->_scaleFactor;
      [a3 scaleFactor];
      LOBYTE(v5) = scaleFactor == v9;
    }

    else
    {
      LOBYTE(v5) = 0;
    }
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  [(CLBIO_Calibration *)self rotationToTrueNorth_rad];
  [(CLBIO_Calibration *)self scaleFactor];

  return MEMORY[0x1EEE66B58](v4, sel_initWithRotationToTrueNorth_scaleFactor_);
}

- (void)encodeWithCoder:(id)a3
{
  [(CLBIO_Calibration *)self rotationToTrueNorth_rad];
  [a3 encodeFloat:@"calibrationRotationToTrueNorth" forKey:?];
  [(CLBIO_Calibration *)self scaleFactor];

  [a3 encodeFloat:@"calibrationScaleFactor" forKey:?];
}

- (CLBIO_Calibration)initWithCoder:(id)a3
{
  v8.receiver = self;
  v8.super_class = CLBIO_Calibration;
  v4 = [(CLBIO_Calibration *)&v8 init];
  if (v4)
  {
    [a3 decodeFloatForKey:@"calibrationRotationToTrueNorth"];
    v4->_rotationToTrueNorth_rad = v5;
    [a3 decodeFloatForKey:@"calibrationScaleFactor"];
    v4->_scaleFactor = v6;
  }

  return v4;
}

@end