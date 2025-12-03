@interface CMAVRoutingTimeAsValue
+ (id)valueWithCMTime:(id *)time;
- (BOOL)BOOLValue;
- (BOOL)isEqualToValue:(id)value;
- (CMAVRoutingTimeAsValue)initWithCoder:(id)coder;
- (char)charValue;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (int)intValue;
- (int64_t)integerValue;
- (int64_t)longLongValue;
- (int64_t)longValue;
- (signed)shortValue;
- (unint64_t)unsignedIntegerValue;
- (unint64_t)unsignedLongLongValue;
- (unint64_t)unsignedLongValue;
- (unsigned)unsignedCharValue;
- (unsigned)unsignedIntValue;
- (unsigned)unsignedShortValue;
- (void)encodeWithCoder:(id)coder;
- (void)getValue:(void *)value;
@end

@implementation CMAVRoutingTimeAsValue

+ (id)valueWithCMTime:(id *)time
{
  v4 = [objc_allocWithZone(self) init];
  var3 = time->var3;
  *(v4 + 8) = *&time->var0;
  *(v4 + 24) = var3;

  return v4;
}

- (void)getValue:(void *)value
{
  epoch = self->_time.epoch;
  *value = *&self->_time.value;
  *(value + 2) = epoch;
}

- (char)charValue
{
  v2 = MEMORY[0x1E696AD98];
  [(CMAVRoutingTimeAsValue *)self doubleValue];
  v3 = [v2 numberWithDouble:?];

  return [v3 charValue];
}

- (unsigned)unsignedCharValue
{
  v2 = MEMORY[0x1E696AD98];
  [(CMAVRoutingTimeAsValue *)self doubleValue];
  v3 = [v2 numberWithDouble:?];

  return [v3 unsignedCharValue];
}

- (signed)shortValue
{
  v2 = MEMORY[0x1E696AD98];
  [(CMAVRoutingTimeAsValue *)self doubleValue];
  v3 = [v2 numberWithDouble:?];

  return [v3 shortValue];
}

- (unsigned)unsignedShortValue
{
  v2 = MEMORY[0x1E696AD98];
  [(CMAVRoutingTimeAsValue *)self doubleValue];
  v3 = [v2 numberWithDouble:?];

  return [v3 unsignedShortValue];
}

- (int)intValue
{
  v2 = MEMORY[0x1E696AD98];
  [(CMAVRoutingTimeAsValue *)self doubleValue];
  v3 = [v2 numberWithDouble:?];

  return [v3 intValue];
}

- (unsigned)unsignedIntValue
{
  v2 = MEMORY[0x1E696AD98];
  [(CMAVRoutingTimeAsValue *)self doubleValue];
  v3 = [v2 numberWithDouble:?];

  return [v3 unsignedIntValue];
}

- (int64_t)longValue
{
  v2 = MEMORY[0x1E696AD98];
  [(CMAVRoutingTimeAsValue *)self doubleValue];
  v3 = [v2 numberWithDouble:?];

  return [v3 longValue];
}

- (unint64_t)unsignedLongValue
{
  v2 = MEMORY[0x1E696AD98];
  [(CMAVRoutingTimeAsValue *)self doubleValue];
  v3 = [v2 numberWithDouble:?];

  return [v3 unsignedLongValue];
}

- (int64_t)longLongValue
{
  v2 = MEMORY[0x1E696AD98];
  [(CMAVRoutingTimeAsValue *)self doubleValue];
  v3 = [v2 numberWithDouble:?];

  return [v3 longLongValue];
}

- (unint64_t)unsignedLongLongValue
{
  v2 = MEMORY[0x1E696AD98];
  [(CMAVRoutingTimeAsValue *)self doubleValue];
  v3 = [v2 numberWithDouble:?];

  return [v3 unsignedLongLongValue];
}

- (BOOL)BOOLValue
{
  v2 = MEMORY[0x1E696AD98];
  [(CMAVRoutingTimeAsValue *)self doubleValue];
  v3 = [v2 numberWithDouble:?];

  return [v3 BOOLValue];
}

- (int64_t)integerValue
{
  v2 = MEMORY[0x1E696AD98];
  [(CMAVRoutingTimeAsValue *)self doubleValue];
  v3 = [v2 numberWithDouble:?];

  return [v3 integerValue];
}

- (unint64_t)unsignedIntegerValue
{
  v2 = MEMORY[0x1E696AD98];
  [(CMAVRoutingTimeAsValue *)self doubleValue];
  v3 = [v2 numberWithDouble:?];

  return [v3 unsignedIntegerValue];
}

- (id)description
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = *MEMORY[0x1E695E480];
  if (self)
  {
    [(CMAVRoutingTimeAsValue *)self CMTimeValue];
  }

  else
  {
    memset(&time, 0, sizeof(time));
  }

  return [v2 stringWithFormat:@"CMTime: %@", CMTimeCopyDescription(v3, &time)];
}

- (BOOL)isEqualToValue:(id)value
{
  if (self == value)
  {
    return 1;
  }

  v11 = v3;
  v12 = v4;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  p_time = &self->_time;
  if (value)
  {
    [value CMTimeValue];
  }

  else
  {
    memset(&time2, 0, sizeof(time2));
  }

  v9 = *p_time;
  return CMTimeCompare(&v9, &time2) == 0;
}

- (id)copyWithZone:(_NSZone *)zone
{
  if (NSShouldRetainWithZone(self, zone))
  {

    return self;
  }

  else
  {
    v5 = *&self->_time.value;
    epoch = self->_time.epoch;
    return [CMAVRoutingTimeAsValue valueWithCMTime:&v5];
  }
}

- (CMAVRoutingTimeAsValue)initWithCoder:(id)coder
{
  if (([coder allowsKeyedCoding] & 1) == 0)
  {
    selfCopy = self;
    v14 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"invalid parameter not satisfying: %s", v9, v10, v11, v12, v13, "[coder allowsKeyedCoding]"), 0}];
    objc_exception_throw(v14);
  }

  v17.receiver = self;
  v17.super_class = CMAVRoutingTimeAsValue;
  v6 = [(CMAVRoutingTimeAsValue *)&v17 init];
  if (v6)
  {
    if (coder)
    {
      [coder decodeCMTimeForKey:@"CMTime"];
    }

    else
    {
      v15 = 0uLL;
      v16 = 0;
    }

    *(v6 + 3) = v16;
    *(v6 + 8) = v15;
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  if (([coder allowsKeyedCoding] & 1) == 0)
  {
    v11 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"invalid parameter not satisfying: %s", v6, v7, v8, v9, v10, "[coder allowsKeyedCoding]"), 0}];
    objc_exception_throw(v11);
  }

  v12 = *&self->_time.value;
  epoch = self->_time.epoch;
  [coder encodeCMTime:&v12 forKey:@"CMTime"];
}

@end