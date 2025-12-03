@interface SCNTimingFunction
+ (SCNTimingFunction)functionWithCAMediaTimingFunction:(CAMediaTimingFunction *)caTimingFunction;
+ (SCNTimingFunction)functionWithTimingMode:(SCNActionTimingMode)timingMode;
- (SCNTimingFunction)initWithCoder:(id)coder;
- (SCNTimingFunction)initWithTimingFunctionRef:(__C3DTimingFunction *)ref;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SCNTimingFunction

- (SCNTimingFunction)initWithTimingFunctionRef:(__C3DTimingFunction *)ref
{
  v7.receiver = self;
  v7.super_class = SCNTimingFunction;
  v4 = [(SCNTimingFunction *)&v7 init];
  if (v4)
  {
    if (ref)
    {
      v5 = CFRetain(ref);
    }

    else
    {
      v5 = 0;
    }

    v4->_timingFunction = v5;
  }

  return v4;
}

- (void)dealloc
{
  timingFunction = self->_timingFunction;
  if (timingFunction)
  {
    CFRelease(timingFunction);
    self->_timingFunction = 0;
  }

  v4.receiver = self;
  v4.super_class = SCNTimingFunction;
  [(SCNTimingFunction *)&v4 dealloc];
}

+ (SCNTimingFunction)functionWithTimingMode:(SCNActionTimingMode)timingMode
{
  if (timingMode > SCNActionTimingModeEaseInEaseOut)
  {
    return 0;
  }

  C3DTimingFunctionCreateWithName(*off_2782FF370[timingMode]);
  if (!v3)
  {
    return 0;
  }

  v4 = [[SCNTimingFunction alloc] initWithTimingFunctionRef:v3];

  return v4;
}

+ (SCNTimingFunction)functionWithCAMediaTimingFunction:(CAMediaTimingFunction *)caTimingFunction
{
  if (!caTimingFunction)
  {
    return 0;
  }

  v3 = C3DTimingFunctionFromCAMediaTimingFunction(caTimingFunction);
  if (!v3)
  {
    return 0;
  }

  v4 = [[SCNTimingFunction alloc] initWithTimingFunctionRef:v3];

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  v4 = C3DCopyPropertyList(self->_timingFunction, 0, 0, 0);
  [coder encodeObject:v4 forKey:@"c3dTimingFunction"];
}

- (SCNTimingFunction)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = SCNTimingFunction;
  v4 = [(SCNTimingFunction *)&v7 init];
  if (v4)
  {
    v5 = [coder decodeObjectOfClasses:SCNPlistClasses() forKey:@"c3dTimingFunction"];
    v4->_timingFunction = C3DTimingFunctionCreateWithPropertyList(v5);
  }

  return v4;
}

@end