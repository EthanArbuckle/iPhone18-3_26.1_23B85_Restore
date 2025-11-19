@interface AVValueTiming
+ (AVValueTiming)allocWithZone:(_NSZone *)a3;
+ (AVValueTiming)valueTimingWithAnchorValue:(double)a3 anchorTimeStamp:(double)a4 rate:(double)a5;
+ (double)currentTimeStamp;
- ($F24F406B2B787EFB06265DBA3D28CBD5)_timing;
- (AVValueTiming)initWithAnchorValue:(double)a3 anchorTimeStamp:(double)a4 rate:(double)a5;
- (AVValueTiming)initWithCoder:(id)a3;
- (AVValueTiming)initWithValueTiming:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToValueTiming:(id)a3;
- (double)anchorTimeStamp;
- (double)anchorValue;
- (double)currentValue;
- (double)rate;
- (double)timeStampForValue:(double)a3;
- (double)valueForTimeStamp:(double)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AVValueTiming

- (double)rate
{
  v4 = objc_opt_class();
  AVRequestConcreteImplementation(self, a2, v4);
  return NAN;
}

- (double)anchorTimeStamp
{
  v4 = objc_opt_class();
  AVRequestConcreteImplementation(self, a2, v4);
  return NAN;
}

- (double)anchorValue
{
  v4 = objc_opt_class();
  AVRequestConcreteImplementation(self, a2, v4);
  return NAN;
}

- ($F24F406B2B787EFB06265DBA3D28CBD5)_timing
{
  [(AVValueTiming *)self anchorValue];
  v4 = v3;
  [(AVValueTiming *)self anchorTimeStamp];
  v6 = v5;
  [(AVValueTiming *)self rate];
  v8 = 0.0;
  if (v7 != 0.0)
  {
    v4 = v6 - v4 / v7;
    v8 = v7;
  }

  v9 = v4;
  result.var1 = v8;
  result.var0 = v9;
  return result;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [(AVValueTiming *)self anchorValue];
  [v4 encodeDouble:@"value" forKey:?];
  [(AVValueTiming *)self anchorTimeStamp];
  [v4 encodeDouble:@"time stamp" forKey:?];
  [(AVValueTiming *)self rate];
  [v4 encodeDouble:@"rate" forKey:?];
}

- (AVValueTiming)initWithCoder:(id)a3
{
  v4 = a3;
  [v4 decodeDoubleForKey:@"value"];
  v6 = v5;
  [v4 decodeDoubleForKey:@"time stamp"];
  v8 = v7;
  [v4 decodeDoubleForKey:@"rate"];
  v10 = v9;

  return [(AVValueTiming *)self initWithAnchorValue:v6 anchorTimeStamp:v8 rate:v10];
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [AVMutableValueTiming allocWithZone:a3];

  return [(AVValueTiming *)v4 initWithValueTiming:self];
}

+ (AVValueTiming)allocWithZone:(_NSZone *)a3
{
  v5 = objc_opt_self();

  if (v5 == a1)
  {

    return [(AVValueTiming *)AVConcreteValueTiming allocWithZone:a3];
  }

  else
  {
    v7.receiver = a1;
    v7.super_class = &OBJC_METACLASS___AVValueTiming;
    return objc_msgSendSuper2(&v7, sel_allocWithZone_, a3);
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [AVValueTiming allocWithZone:a3];

  return [(AVValueTiming *)v4 initWithValueTiming:self];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(AVValueTiming *)self isEqualToValueTiming:v4];
  }

  return v5;
}

- (AVValueTiming)initWithValueTiming:(id)a3
{
  v4 = a3;
  [v4 anchorValue];
  v6 = v5;
  [v4 anchorTimeStamp];
  v8 = v7;
  [v4 rate];
  v10 = v9;

  return [(AVValueTiming *)self initWithAnchorValue:v6 anchorTimeStamp:v8 rate:v10];
}

- (AVValueTiming)initWithAnchorValue:(double)a3 anchorTimeStamp:(double)a4 rate:(double)a5
{
  v6 = MEMORY[0x1E695DF30];
  v7 = *MEMORY[0x1E695D940];
  v8 = NSStringFromSelector(a2);
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  [v6 raise:v7 format:{@"*** initialization method -%@ cannot be sent to an abstract object of class %@: Create a concrete instance!", v8, v10}];

  return 0;
}

- (BOOL)isEqualToValueTiming:(id)a3
{
  v4 = a3;
  if (v4)
  {
    [(AVValueTiming *)self _timing];
    v6 = v5;
    v8 = v7;
    [v4 _timing];
    v10 = v6 == v9;
    if (v8 != v11)
    {
      v10 = 0;
    }

    v12 = v10;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (double)timeStampForValue:(double)a3
{
  [(AVValueTiming *)self _timing];
  v5 = v4 == 0.0;
  v7 = v6 + a3 / v4;
  result = 0.0 / (a3 - v6);
  if (!v5)
  {
    return v7;
  }

  return result;
}

- (double)valueForTimeStamp:(double)a3
{
  [(AVValueTiming *)self _timing];
  if (v5 != 0.0)
  {
    return v5 * (a3 - result);
  }

  return result;
}

- (double)currentValue
{
  [objc_opt_class() currentTimeStamp];

  [(AVValueTiming *)self valueForTimeStamp:?];
  return result;
}

+ (AVValueTiming)valueTimingWithAnchorValue:(double)a3 anchorTimeStamp:(double)a4 rate:(double)a5
{
  v5 = [[a1 alloc] initWithAnchorValue:a3 anchorTimeStamp:a4 rate:a5];

  return v5;
}

+ (double)currentTimeStamp
{
  v2 = [MEMORY[0x1E696AE30] processInfo];
  [v2 systemUptime];
  v4 = v3;

  return v4;
}

@end