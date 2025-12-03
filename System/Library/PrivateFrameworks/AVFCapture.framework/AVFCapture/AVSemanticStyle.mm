@interface AVSemanticStyle
+ (AVSemanticStyle)semanticStyleWithToneBias:(float)bias warmthBias:(float)warmthBias;
+ (id)identityStyle;
- (BOOL)isEqual:(id)equal;
- (id)_initWithToneBias:(float)bias warmthBias:(float)warmthBias;
- (id)description;
@end

@implementation AVSemanticStyle

+ (AVSemanticStyle)semanticStyleWithToneBias:(float)bias warmthBias:(float)warmthBias
{
  v6 = objc_alloc(objc_opt_class());
  *&v7 = bias;
  *&v8 = warmthBias;
  v9 = [v6 _initWithToneBias:v7 warmthBias:v8];

  return v9;
}

+ (id)identityStyle
{
  v2 = [objc_alloc(objc_opt_class()) _initWithToneBias:0.0 warmthBias:0.0];

  return v2;
}

- (id)_initWithToneBias:(float)bias warmthBias:(float)warmthBias
{
  v10.receiver = self;
  v10.super_class = AVSemanticStyle;
  result = [(AVSemanticStyle *)&v10 init];
  if (result)
  {
    if (fabsf(bias) <= 1.0)
    {
      if (fabsf(warmthBias) <= 1.0)
      {
        *(result + 2) = bias;
        *(result + 3) = warmthBias;
        *(result + 2) = (warmthBias * 10000.0) ^ (bias * 10000.0);
        return result;
      }

      v7 = MEMORY[0x1E695DF30];
      v8 = *MEMORY[0x1E695D940];
    }

    else
    {
      v7 = MEMORY[0x1E695DF30];
      v8 = *MEMORY[0x1E695D940];
    }

    v9 = [v7 exceptionWithName:v8 reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v9);
    }

    NSLog(&cfstr_SuppressingExc.isa, v9);
    return 0;
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    return 1;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  [(AVSemanticStyle *)self toneBias];
  v6 = v5;
  [equal toneBias];
  if (v6 != v7)
  {
    return 0;
  }

  [(AVSemanticStyle *)self warmthBias];
  v10 = v9;
  [equal warmthBias];
  return v10 == v11;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"<%@: %p %@>", NSStringFromClass(v4), self, -[AVSemanticStyle debugDescription](self, "debugDescription")];
}

@end