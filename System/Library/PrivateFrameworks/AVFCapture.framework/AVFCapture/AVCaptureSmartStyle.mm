@interface AVCaptureSmartStyle
+ (AVCaptureSmartStyle)styleWithCast:(id)cast intensity:(float)intensity toneBias:(float)bias colorBias:(float)colorBias;
+ (id)identityStyle;
- (BOOL)isEqual:(id)equal;
- (id)_initWithCast:(id)cast intensity:(float)intensity toneBias:(float)bias colorBias:(float)colorBias;
- (id)description;
- (void)dealloc;
@end

@implementation AVCaptureSmartStyle

+ (AVCaptureSmartStyle)styleWithCast:(id)cast intensity:(float)intensity toneBias:(float)bias colorBias:(float)colorBias
{
  v10 = objc_alloc(objc_opt_class());
  *&v11 = intensity;
  *&v12 = bias;
  *&v13 = colorBias;
  v14 = [v10 _initWithCast:cast intensity:v11 toneBias:v12 colorBias:v13];

  return v14;
}

- (id)_initWithCast:(id)cast intensity:(float)intensity toneBias:(float)bias colorBias:(float)colorBias
{
  v15.receiver = self;
  v15.super_class = AVCaptureSmartStyle;
  v10 = [(AVCaptureSmartStyle *)&v15 init];
  if (v10)
  {
    if (fabsf(bias) <= 1.0)
    {
      if (intensity < 0.0 || intensity > 1.0)
      {
        v11 = MEMORY[0x1E695DF30];
        v12 = *MEMORY[0x1E695D940];
      }

      else
      {
        if (fabsf(colorBias) <= 1.0)
        {
          v10->_cast = [cast copy];
          v10->_intensity = intensity;
          v10->_toneBias = bias;
          v10->_colorBias = colorBias;
          v10->_hash = (intensity * 10000.0) ^ (bias * 10000.0) ^ (colorBias * 10000.0) ^ 0x2710;
          v10->_version = 1;
          return v10;
        }

        v11 = MEMORY[0x1E695DF30];
        v12 = *MEMORY[0x1E695D940];
      }
    }

    else
    {
      v11 = MEMORY[0x1E695DF30];
      v12 = *MEMORY[0x1E695D940];
    }

    v13 = [v11 exceptionWithName:v12 reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v13);
    }

    NSLog(&cfstr_SuppressingExc.isa, v13);
    return 0;
  }

  return v10;
}

+ (id)identityStyle
{
  v2 = [objc_alloc(objc_opt_class()) _initWithCast:AVSmartStyleCastTypeStandard[0] intensity:0.0 toneBias:0.0 colorBias:0.0];

  return v2;
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    LOBYTE(v5) = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
LABEL_7:
      LOBYTE(v5) = 0;
      return v5;
    }

    v5 = -[NSString isEqualToString:](-[AVCaptureSmartStyle cast](self, "cast"), "isEqualToString:", [equal cast]);
    if (v5)
    {
      [(AVCaptureSmartStyle *)self intensity];
      v7 = v6;
      [equal intensity];
      if (v7 != v8)
      {
        goto LABEL_7;
      }

      [(AVCaptureSmartStyle *)self toneBias];
      v10 = v9;
      [equal toneBias];
      if (v10 != v11)
      {
        goto LABEL_7;
      }

      [(AVCaptureSmartStyle *)self colorBias];
      v13 = v12;
      [equal colorBias];
      if (v13 != v14)
      {
        goto LABEL_7;
      }

      version = [(AVCaptureSmartStyle *)self version];
      LOBYTE(v5) = version == [equal version];
    }
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"<%@: %p %@>", NSStringFromClass(v4), self, -[AVCaptureSmartStyle debugDescription](self, "debugDescription")];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVCaptureSmartStyle;
  [(AVCaptureSmartStyle *)&v3 dealloc];
}

@end