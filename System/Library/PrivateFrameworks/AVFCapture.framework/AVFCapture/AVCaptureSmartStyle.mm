@interface AVCaptureSmartStyle
+ (AVCaptureSmartStyle)styleWithCast:(id)a3 intensity:(float)a4 toneBias:(float)a5 colorBias:(float)a6;
+ (id)identityStyle;
- (BOOL)isEqual:(id)a3;
- (id)_initWithCast:(id)a3 intensity:(float)a4 toneBias:(float)a5 colorBias:(float)a6;
- (id)description;
- (void)dealloc;
@end

@implementation AVCaptureSmartStyle

+ (AVCaptureSmartStyle)styleWithCast:(id)a3 intensity:(float)a4 toneBias:(float)a5 colorBias:(float)a6
{
  v10 = objc_alloc(objc_opt_class());
  *&v11 = a4;
  *&v12 = a5;
  *&v13 = a6;
  v14 = [v10 _initWithCast:a3 intensity:v11 toneBias:v12 colorBias:v13];

  return v14;
}

- (id)_initWithCast:(id)a3 intensity:(float)a4 toneBias:(float)a5 colorBias:(float)a6
{
  v15.receiver = self;
  v15.super_class = AVCaptureSmartStyle;
  v10 = [(AVCaptureSmartStyle *)&v15 init];
  if (v10)
  {
    if (fabsf(a5) <= 1.0)
    {
      if (a4 < 0.0 || a4 > 1.0)
      {
        v11 = MEMORY[0x1E695DF30];
        v12 = *MEMORY[0x1E695D940];
      }

      else
      {
        if (fabsf(a6) <= 1.0)
        {
          v10->_cast = [a3 copy];
          v10->_intensity = a4;
          v10->_toneBias = a5;
          v10->_colorBias = a6;
          v10->_hash = (a4 * 10000.0) ^ (a5 * 10000.0) ^ (a6 * 10000.0) ^ 0x2710;
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

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
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

    v5 = -[NSString isEqualToString:](-[AVCaptureSmartStyle cast](self, "cast"), "isEqualToString:", [a3 cast]);
    if (v5)
    {
      [(AVCaptureSmartStyle *)self intensity];
      v7 = v6;
      [a3 intensity];
      if (v7 != v8)
      {
        goto LABEL_7;
      }

      [(AVCaptureSmartStyle *)self toneBias];
      v10 = v9;
      [a3 toneBias];
      if (v10 != v11)
      {
        goto LABEL_7;
      }

      [(AVCaptureSmartStyle *)self colorBias];
      v13 = v12;
      [a3 colorBias];
      if (v13 != v14)
      {
        goto LABEL_7;
      }

      v15 = [(AVCaptureSmartStyle *)self version];
      LOBYTE(v5) = v15 == [a3 version];
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