@interface AVTSCNNodeModifications
- (AVTSCNNodeModifications)initWithCoder:(id)coder;
- (AVTSCNNodeModifications)initWithProjectionDirection:(double)direction fieldOfView:(double)view verticalLensShift:(float)shift framingMode:(id)mode;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AVTSCNNodeModifications

- (AVTSCNNodeModifications)initWithProjectionDirection:(double)direction fieldOfView:(double)view verticalLensShift:(float)shift framingMode:(id)mode
{
  modeCopy = mode;
  v15.receiver = self;
  v15.super_class = AVTSCNNodeModifications;
  v12 = [(AVTSCNNodeModifications *)&v15 init];
  v13 = v12;
  if (v12)
  {
    v12->_projectionDirection = direction;
    v12->_fieldOfView = view;
    v12->_verticalLensShift = shift;
    objc_storeStrong(&v12->_framingMode, mode);
  }

  return v13;
}

- (AVTSCNNodeModifications)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeIntForKey:@"projectionDirection"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"fieldOfView"];
  [v6 doubleValue];
  v8 = v7;

  [coderCopy decodeFloatForKey:@"lensShift"];
  v10 = v9;
  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"framingMode"];

  v12 = [(AVTSCNNodeModifications *)self initWithProjectionDirection:v11 fieldOfView:v5 verticalLensShift:v8 framingMode:v10];
  return v12;
}

- (void)encodeWithCoder:(id)coder
{
  v4 = MEMORY[0x1E696AD98];
  projectionDirection_low = LODWORD(self->_projectionDirection);
  coderCopy = coder;
  v6 = [v4 numberWithInt:projectionDirection_low];
  [coderCopy encodeObject:v6 forKey:@"projectionDirection"];

  fieldOfView = self->_fieldOfView;
  *&fieldOfView = fieldOfView;
  v8 = [MEMORY[0x1E696AD98] numberWithFloat:fieldOfView];
  [coderCopy encodeObject:v8 forKey:@"fieldOfView"];

  *&v9 = self->_verticalLensShift;
  [coderCopy encodeFloat:@"lensShift" forKey:v9];
  [coderCopy encodeObject:self->_framingMode forKey:@"framingMode"];
}

@end