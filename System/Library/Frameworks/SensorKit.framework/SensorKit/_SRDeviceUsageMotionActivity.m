@interface _SRDeviceUsageMotionActivity
+ (id)motionActivityWithActivityType:(int64_t)a3 duration:(double)a4;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (_SRDeviceUsageMotionActivity)initWithCoder:(id)a3;
- (id)sr_dictionaryRepresentation;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _SRDeviceUsageMotionActivity

- (void)encodeWithCoder:(id)a3
{
  if (([a3 allowsKeyedCoding] & 1) == 0)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  [a3 encodeInteger:-[_SRDeviceUsageMotionActivity motionActivityType](self forKey:{"motionActivityType"), @"motionActivityType"}];
  [(_SRDeviceUsageMotionActivity *)self duration];

  [a3 encodeDouble:@"duration" forKey:?];
}

- (_SRDeviceUsageMotionActivity)initWithCoder:(id)a3
{
  if (([a3 allowsKeyedCoding] & 1) == 0)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  v6 = [a3 decodeIntegerForKey:@"motionActivityType"];
  [a3 decodeDoubleForKey:@"duration"];
  v8 = v7;

  result = objc_alloc_init(_SRDeviceUsageMotionActivity);
  result->_motionActivityType = v6;
  result->_duration = v8;
  return result;
}

+ (id)motionActivityWithActivityType:(int64_t)a3 duration:(double)a4
{
  v6 = objc_alloc_init(_SRDeviceUsageMotionActivity);
  [(_SRDeviceUsageMotionActivity *)v6 setMotionActivityType:a3];
  [(_SRDeviceUsageMotionActivity *)v6 setDuration:a4];

  return v6;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(_SRDeviceUsageMotionActivity *)self motionActivityType];
  [(_SRDeviceUsageMotionActivity *)self duration];
  return [v3 stringWithFormat:@"%@ {activityType: %ld, duration: %f}", v5, v6, v7];
}

- (BOOL)isEqual:(id)a3
{
  if (self == a3)
  {
    return 1;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  motionActivityType = self->_motionActivityType;
  if (motionActivityType != [a3 motionActivityType])
  {
    return 0;
  }

  duration = self->_duration;
  [a3 duration];
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