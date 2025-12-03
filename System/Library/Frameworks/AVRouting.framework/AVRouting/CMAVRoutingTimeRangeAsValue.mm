@interface CMAVRoutingTimeRangeAsValue
+ (id)valueWithCMTimeRange:(id *)range;
- ($FDC4B4C435B501E994513C5CF81DFA1D)CMTimeRangeValue;
- (BOOL)isEqualToValue:(id)value;
- (CMAVRoutingTimeRangeAsValue)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)getValue:(void *)value;
@end

@implementation CMAVRoutingTimeRangeAsValue

+ (id)valueWithCMTimeRange:(id *)range
{
  v4 = [objc_allocWithZone(self) init];
  v6 = *&range->var0.var3;
  v5 = *&range->var1.var1;
  *(v4 + 8) = *&range->var0.var0;
  *(v4 + 24) = v6;
  *(v4 + 40) = v5;

  return v4;
}

- ($FDC4B4C435B501E994513C5CF81DFA1D)CMTimeRangeValue
{
  v3 = *&self->var1.var0;
  *&retstr->var0.var0 = *&self->var0.var1;
  *&retstr->var0.var3 = v3;
  *&retstr->var1.var1 = *&self->var1.var3;
  return self;
}

- (void)getValue:(void *)value
{
  v4 = *&self->_timeRange.start.epoch;
  v3 = *&self->_timeRange.duration.timescale;
  *value = *&self->_timeRange.start.value;
  *(value + 1) = v4;
  *(value + 2) = v3;
}

- (id)description
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = *MEMORY[0x1E695E480];
  if (self)
  {
    [(CMAVRoutingTimeRangeAsValue *)self CMTimeRangeValue];
  }

  else
  {
    memset(&range, 0, sizeof(range));
  }

  return [v2 stringWithFormat:@"CMTimeRange: %@", CMTimeRangeCopyDescription(v3, &range)];
}

- (BOOL)isEqualToValue:(id)value
{
  if (self == value)
  {
    return 1;
  }

  v12 = v3;
  v13 = v4;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  p_timeRange = &self->_timeRange;
  if (value)
  {
    [value CMTimeRangeValue];
  }

  else
  {
    memset(&range2, 0, sizeof(range2));
  }

  v9 = *&p_timeRange->start.epoch;
  *&v10.start.value = *&p_timeRange->start.value;
  *&v10.start.epoch = v9;
  *&v10.duration.timescale = *&p_timeRange->duration.timescale;
  return CMTimeRangeEqual(&v10, &range2) != 0;
}

- (unint64_t)hash
{
  p_timeRange = &self->_timeRange;
  start = self->_timeRange.start;
  v3 = CMTimeHash(&start);
  start = p_timeRange->duration;
  return CMTimeHash(&start) ^ v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  if (NSShouldRetainWithZone(self, zone))
  {

    return self;
  }

  else
  {
    v4 = *&self->_timeRange.start.epoch;
    v6[0] = *&self->_timeRange.start.value;
    v6[1] = v4;
    v6[2] = *&self->_timeRange.duration.timescale;
    return [CMAVRoutingTimeRangeAsValue valueWithCMTimeRange:v6];
  }
}

- (CMAVRoutingTimeRangeAsValue)initWithCoder:(id)coder
{
  if (([coder allowsKeyedCoding] & 1) == 0)
  {
    selfCopy = self;
    v14 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"invalid parameter not satisfying: %s", v9, v10, v11, v12, v13, "[coder allowsKeyedCoding]"), 0}];
    objc_exception_throw(v14);
  }

  v18.receiver = self;
  v18.super_class = CMAVRoutingTimeRangeAsValue;
  v6 = [(CMAVRoutingTimeRangeAsValue *)&v18 init];
  if (v6)
  {
    if (coder)
    {
      [coder decodeCMTimeRangeForKey:@"CMTimeRange"];
    }

    else
    {
      v16 = 0u;
      v17 = 0u;
      v15 = 0u;
    }

    *(v6 + 24) = v16;
    *(v6 + 40) = v17;
    *(v6 + 8) = v15;
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  if (([coder allowsKeyedCoding] & 1) == 0)
  {
    v12 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"invalid parameter not satisfying: %s", v6, v7, v8, v9, v10, "[coder allowsKeyedCoding]"), 0}];
    objc_exception_throw(v12);
  }

  v11 = *&self->_timeRange.start.epoch;
  v13[0] = *&self->_timeRange.start.value;
  v13[1] = v11;
  v13[2] = *&self->_timeRange.duration.timescale;
  [coder encodeCMTimeRange:v13 forKey:@"CMTimeRange"];
}

@end