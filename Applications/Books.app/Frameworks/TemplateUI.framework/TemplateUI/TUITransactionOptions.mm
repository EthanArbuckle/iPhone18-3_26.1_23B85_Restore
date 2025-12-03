@interface TUITransactionOptions
+ (id)defaultImplicitOptions;
+ (id)noAnimationOptions;
- (BOOL)isCompatibleWithOptions:(id)options;
- (TUITransactionOptions)initWithOther:(id)other;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)zone;
@end

@implementation TUITransactionOptions

- (TUITransactionOptions)initWithOther:(id)other
{
  otherCopy = other;
  v15.receiver = self;
  v15.super_class = TUITransactionOptions;
  v5 = [(TUITransactionOptions *)&v15 init];
  if (v5)
  {
    v5->_animate = [otherCopy animate];
    [otherCopy duration];
    v5->_duration = v6;
    [otherCopy syncTimeout];
    v5->_syncTimeout = v7;
    v5->_flags = [otherCopy flags];
    identifier = [otherCopy identifier];
    v9 = [identifier copy];
    identifier = v5->_identifier;
    v5->_identifier = v9;

    timingProvider = [otherCopy timingProvider];
    v12 = [timingProvider copyWithZone:0];
    timingProvider = v5->_timingProvider;
    v5->_timingProvider = v12;
  }

  return v5;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [TUIMutableTransactionOptions allocWithZone:zone];

  return [(TUITransactionOptions *)v4 initWithOther:self];
}

+ (id)defaultImplicitOptions
{
  v2 = objc_alloc_init(TUIMutableTransactionOptions);
  [(TUITransactionOptions *)v2 setDuration:0.25];
  [(TUITransactionOptions *)v2 setAnimate:1];
  v3 = [(TUIMutableTransactionOptions *)v2 copy];

  return v3;
}

+ (id)noAnimationOptions
{
  v2 = objc_alloc_init(TUITransactionOptions);

  return v2;
}

- (BOOL)isCompatibleWithOptions:(id)options
{
  optionsCopy = options;
  animate = self->_animate;
  if (animate == [optionsCopy animate] && (duration = self->_duration, objc_msgSend(optionsCopy, "duration"), duration == v7))
  {
    timingProvider = self->_timingProvider;
    timingProvider = [optionsCopy timingProvider];
    if (timingProvider == timingProvider)
    {
      v12 = 1;
    }

    else
    {
      v10 = self->_timingProvider;
      timingProvider2 = [optionsCopy timingProvider];
      v12 = [(UITimingCurveProvider *)v10 isEqual:timingProvider2];
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)description
{
  v3 = objc_opt_new();
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [v3 appendFormat:@"<%@", v5];

  if (self->_identifier)
  {
    [v3 appendFormat:@" id=%@", self->_identifier];
  }

  [v3 appendFormat:@" animate=%lu", self->_animate];
  if (self->_animate)
  {
    if (self->_duration == 0.25 || ([v3 appendFormat:@" duration=%g", *&self->_duration], self->_animate))
    {
      if (self->_timingProvider)
      {
        [v3 appendFormat:@" timingProvider=%@", self->_timingProvider];
      }
    }
  }

  if (self->_flags)
  {
    [v3 appendFormat:@" flags=%lu", self->_flags];
  }

  if (self->_syncTimeout != 0.0)
  {
    [v3 appendFormat:@" syncTimeout=%g", *&self->_syncTimeout];
  }

  [v3 appendString:@">"];
  v6 = [v3 copy];

  return v6;
}

@end