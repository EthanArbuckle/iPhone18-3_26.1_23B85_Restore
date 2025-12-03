@interface AVValueTiming
+ (AVValueTiming)allocWithZone:(_NSZone *)zone;
+ (AVValueTiming)valueTimingWithAnchorValue:(double)value anchorTimeStamp:(double)stamp rate:(double)rate;
+ (double)currentTimeStamp;
- ($F24F406B2B787EFB06265DBA3D28CBD5)_timing;
- (AVValueTiming)initWithAnchorValue:(double)value anchorTimeStamp:(double)stamp rate:(double)rate;
- (AVValueTiming)initWithCoder:(id)coder;
- (AVValueTiming)initWithValueTiming:(id)timing;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToValueTiming:(id)timing;
- (double)anchorTimeStamp;
- (double)anchorValue;
- (double)currentValue;
- (double)rate;
- (double)timeStampForValue:(double)value;
- (double)valueForTimeStamp:(double)stamp;
- (id)copyWithZone:(_NSZone *)zone;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [(AVValueTiming *)self anchorValue];
  [coderCopy encodeDouble:@"value" forKey:?];
  [(AVValueTiming *)self anchorTimeStamp];
  [coderCopy encodeDouble:@"time stamp" forKey:?];
  [(AVValueTiming *)self rate];
  [coderCopy encodeDouble:@"rate" forKey:?];
}

- (AVValueTiming)initWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy decodeDoubleForKey:@"value"];
  v6 = v5;
  [coderCopy decodeDoubleForKey:@"time stamp"];
  v8 = v7;
  [coderCopy decodeDoubleForKey:@"rate"];
  v10 = v9;

  return [(AVValueTiming *)self initWithAnchorValue:v6 anchorTimeStamp:v8 rate:v10];
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [AVMutableValueTiming allocWithZone:zone];

  return [(AVValueTiming *)v4 initWithValueTiming:self];
}

+ (AVValueTiming)allocWithZone:(_NSZone *)zone
{
  v5 = objc_opt_self();

  if (v5 == self)
  {

    return [(AVValueTiming *)AVConcreteValueTiming allocWithZone:zone];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = &OBJC_METACLASS___AVValueTiming;
    return objc_msgSendSuper2(&v7, sel_allocWithZone_, zone);
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [AVValueTiming allocWithZone:zone];

  return [(AVValueTiming *)v4 initWithValueTiming:self];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(AVValueTiming *)self isEqualToValueTiming:equalCopy];
  }

  return v5;
}

- (AVValueTiming)initWithValueTiming:(id)timing
{
  timingCopy = timing;
  [timingCopy anchorValue];
  v6 = v5;
  [timingCopy anchorTimeStamp];
  v8 = v7;
  [timingCopy rate];
  v10 = v9;

  return [(AVValueTiming *)self initWithAnchorValue:v6 anchorTimeStamp:v8 rate:v10];
}

- (AVValueTiming)initWithAnchorValue:(double)value anchorTimeStamp:(double)stamp rate:(double)rate
{
  v6 = MEMORY[0x1E695DF30];
  v7 = *MEMORY[0x1E695D940];
  v8 = NSStringFromSelector(a2);
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  [v6 raise:v7 format:{@"*** initialization method -%@ cannot be sent to an abstract object of class %@: Create a concrete instance!", v8, v10}];

  return 0;
}

- (BOOL)isEqualToValueTiming:(id)timing
{
  timingCopy = timing;
  if (timingCopy)
  {
    [(AVValueTiming *)self _timing];
    v6 = v5;
    v8 = v7;
    [timingCopy _timing];
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

- (double)timeStampForValue:(double)value
{
  [(AVValueTiming *)self _timing];
  v5 = v4 == 0.0;
  v7 = v6 + value / v4;
  result = 0.0 / (value - v6);
  if (!v5)
  {
    return v7;
  }

  return result;
}

- (double)valueForTimeStamp:(double)stamp
{
  [(AVValueTiming *)self _timing];
  if (v5 != 0.0)
  {
    return v5 * (stamp - result);
  }

  return result;
}

- (double)currentValue
{
  [objc_opt_class() currentTimeStamp];

  [(AVValueTiming *)self valueForTimeStamp:?];
  return result;
}

+ (AVValueTiming)valueTimingWithAnchorValue:(double)value anchorTimeStamp:(double)stamp rate:(double)rate
{
  v5 = [[self alloc] initWithAnchorValue:value anchorTimeStamp:stamp rate:rate];

  return v5;
}

+ (double)currentTimeStamp
{
  processInfo = [MEMORY[0x1E696AE30] processInfo];
  [processInfo systemUptime];
  v4 = v3;

  return v4;
}

@end