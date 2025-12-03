@interface _NTKParmesanPreviewValidatorImplementation
- (_NTKParmesanPreviewValidatorImplementation)initWithPFLCValidator:(id)validator;
- (void)validateTimeLabel:(CGRect)label completion:(id)completion;
@end

@implementation _NTKParmesanPreviewValidatorImplementation

- (_NTKParmesanPreviewValidatorImplementation)initWithPFLCValidator:(id)validator
{
  validatorCopy = validator;
  v9.receiver = self;
  v9.super_class = _NTKParmesanPreviewValidatorImplementation;
  v6 = [(_NTKParmesanPreviewValidatorImplementation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_validator, validator);
  }

  return v7;
}

- (void)validateTimeLabel:(CGRect)label completion:(id)completion
{
  height = label.size.height;
  width = label.size.width;
  y = label.origin.y;
  x = label.origin.x;
  validator = self->_validator;
  completionCopy = completion;
  objc_msgSend_coverageOfTimeLabel_(validator, v9, v10, v11, x, y, width, height);
  completionCopy[2](completionCopy, v12 <= 0.18);
}

@end