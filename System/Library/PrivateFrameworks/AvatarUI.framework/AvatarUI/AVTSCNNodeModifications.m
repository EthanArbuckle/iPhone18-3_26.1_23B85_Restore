@interface AVTSCNNodeModifications
- (AVTSCNNodeModifications)initWithCoder:(id)a3;
- (AVTSCNNodeModifications)initWithProjectionDirection:(double)a3 fieldOfView:(double)a4 verticalLensShift:(float)a5 framingMode:(id)a6;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AVTSCNNodeModifications

- (AVTSCNNodeModifications)initWithProjectionDirection:(double)a3 fieldOfView:(double)a4 verticalLensShift:(float)a5 framingMode:(id)a6
{
  v11 = a6;
  v15.receiver = self;
  v15.super_class = AVTSCNNodeModifications;
  v12 = [(AVTSCNNodeModifications *)&v15 init];
  v13 = v12;
  if (v12)
  {
    v12->_projectionDirection = a3;
    v12->_fieldOfView = a4;
    v12->_verticalLensShift = a5;
    objc_storeStrong(&v12->_framingMode, a6);
  }

  return v13;
}

- (AVTSCNNodeModifications)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeIntForKey:@"projectionDirection"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"fieldOfView"];
  [v6 doubleValue];
  v8 = v7;

  [v4 decodeFloatForKey:@"lensShift"];
  v10 = v9;
  v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"framingMode"];

  v12 = [(AVTSCNNodeModifications *)self initWithProjectionDirection:v11 fieldOfView:v5 verticalLensShift:v8 framingMode:v10];
  return v12;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = MEMORY[0x1E696AD98];
  projectionDirection_low = LODWORD(self->_projectionDirection);
  v10 = a3;
  v6 = [v4 numberWithInt:projectionDirection_low];
  [v10 encodeObject:v6 forKey:@"projectionDirection"];

  fieldOfView = self->_fieldOfView;
  *&fieldOfView = fieldOfView;
  v8 = [MEMORY[0x1E696AD98] numberWithFloat:fieldOfView];
  [v10 encodeObject:v8 forKey:@"fieldOfView"];

  *&v9 = self->_verticalLensShift;
  [v10 encodeFloat:@"lensShift" forKey:v9];
  [v10 encodeObject:self->_framingMode forKey:@"framingMode"];
}

@end