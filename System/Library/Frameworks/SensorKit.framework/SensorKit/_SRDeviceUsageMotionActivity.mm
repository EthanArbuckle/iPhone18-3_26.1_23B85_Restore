@interface _SRDeviceUsageMotionActivity
+ (id)motionActivityWithActivityType:(int64_t)type duration:(double)duration;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (_SRDeviceUsageMotionActivity)initWithCoder:(id)coder;
- (id)sr_dictionaryRepresentation;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _SRDeviceUsageMotionActivity

- (void)encodeWithCoder:(id)coder
{
  if (([coder allowsKeyedCoding] & 1) == 0)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  [coder encodeInteger:-[_SRDeviceUsageMotionActivity motionActivityType](self forKey:{"motionActivityType"), @"motionActivityType"}];
  [(_SRDeviceUsageMotionActivity *)self duration];

  [coder encodeDouble:@"duration" forKey:?];
}

- (_SRDeviceUsageMotionActivity)initWithCoder:(id)coder
{
  if (([coder allowsKeyedCoding] & 1) == 0)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  v6 = [coder decodeIntegerForKey:@"motionActivityType"];
  [coder decodeDoubleForKey:@"duration"];
  v8 = v7;

  result = objc_alloc_init(_SRDeviceUsageMotionActivity);
  result->_motionActivityType = v6;
  result->_duration = v8;
  return result;
}

+ (id)motionActivityWithActivityType:(int64_t)type duration:(double)duration
{
  v6 = objc_alloc_init(_SRDeviceUsageMotionActivity);
  [(_SRDeviceUsageMotionActivity *)v6 setMotionActivityType:type];
  [(_SRDeviceUsageMotionActivity *)v6 setDuration:duration];

  return v6;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  motionActivityType = [(_SRDeviceUsageMotionActivity *)self motionActivityType];
  [(_SRDeviceUsageMotionActivity *)self duration];
  return [v3 stringWithFormat:@"%@ {activityType: %ld, duration: %f}", v5, motionActivityType, v7];
}

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
  {
    return 1;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  motionActivityType = self->_motionActivityType;
  if (motionActivityType != [equal motionActivityType])
  {
    return 0;
  }

  duration = self->_duration;
  [equal duration];
  return duration == v7;
}

- (id)sr_dictionaryRepresentation
{
  v7[2] = *MEMORY[0x1E69E9840];
  v6[0] = @"motionActivityType";
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:self->_motionActivityType];
  v6[1] = @"duration";
  v7[0] = v3;
  v7[1] = [MEMORY[0x1E696AD98] numberWithDouble:self->_duration];
  result = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:2];
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

@end