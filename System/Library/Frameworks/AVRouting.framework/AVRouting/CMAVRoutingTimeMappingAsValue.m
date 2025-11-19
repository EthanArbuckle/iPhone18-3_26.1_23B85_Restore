@interface CMAVRoutingTimeMappingAsValue
+ (id)valueWithCMTimeMapping:(id *)a3;
- ($2FE3C3292E52C4A5B67D27538456EAD9)CMTimeMappingValue;
- (BOOL)isEqualToValue:(id)a3;
- (CMAVRoutingTimeMappingAsValue)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)getValue:(void *)a3;
@end

@implementation CMAVRoutingTimeMappingAsValue

+ (id)valueWithCMTimeMapping:(id *)a3
{
  v4 = [objc_allocWithZone(a1) init];
  v5 = *&a3->var0.var0.var3;
  *(v4 + 8) = *&a3->var0.var0.var0;
  *(v4 + 24) = v5;
  v6 = *&a3->var1.var1.var1;
  v8 = *&a3->var0.var1.var1;
  v7 = *&a3->var1.var0.var0;
  *(v4 + 72) = *&a3->var1.var0.var3;
  *(v4 + 88) = v6;
  *(v4 + 40) = v8;
  *(v4 + 56) = v7;

  return v4;
}

- ($2FE3C3292E52C4A5B67D27538456EAD9)CMTimeMappingValue
{
  v3 = *&self->var1.var0.var1;
  *&retstr->var0.var1.var1 = *&self->var0.var1.var3;
  *&retstr->var1.var0.var0 = v3;
  v4 = *&self->var1.var1.var3;
  *&retstr->var1.var0.var3 = *&self->var1.var1.var0;
  *&retstr->var1.var1.var1 = v4;
  v5 = *&self->var0.var1.var0;
  *&retstr->var0.var0.var0 = *&self->var0.var0.var1;
  *&retstr->var0.var0.var3 = v5;
  return self;
}

- (void)getValue:(void *)a3
{
  v3 = *&self->_timeMapping.source.start.epoch;
  *a3 = *&self->_timeMapping.source.start.value;
  *(a3 + 1) = v3;
  v4 = *&self->_timeMapping.target.duration.timescale;
  v6 = *&self->_timeMapping.source.duration.timescale;
  v5 = *&self->_timeMapping.target.start.value;
  *(a3 + 4) = *&self->_timeMapping.target.start.epoch;
  *(a3 + 5) = v4;
  *(a3 + 2) = v6;
  *(a3 + 3) = v5;
}

- (id)description
{
  memset(v7, 0, sizeof(v7));
  if (self)
  {
    [(CMAVRoutingTimeMappingAsValue *)self CMTimeMappingValue];
  }

  v2 = MEMORY[0x1E696AEC0];
  v3 = *MEMORY[0x1E695E480];
  range = v7[0];
  v4 = CMTimeRangeCopyDescription(v3, &range);
  range = v7[1];
  return [v2 stringWithFormat:@"CMTimeMapping: {%@, %@}", v4, CMTimeRangeCopyDescription(v3, &range)];
}

- (BOOL)isEqualToValue:(id)a3
{
  if (self == a3)
  {
    LOBYTE(v9) = 1;
  }

  else
  {
    v15 = v3;
    v16 = v4;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      memset(v14, 0, sizeof(v14));
      if (a3)
      {
        [a3 CMTimeMappingValue];
      }

      p_timeMapping = &self->_timeMapping;
      v8 = *&p_timeMapping->source.start.epoch;
      *&range1.start.value = *&p_timeMapping->source.start.value;
      *&range1.start.epoch = v8;
      *&range1.duration.timescale = *&p_timeMapping->source.duration.timescale;
      v12 = v14[0];
      v9 = CMTimeRangeEqual(&range1, &v12);
      if (v9)
      {
        v10 = *&p_timeMapping->target.start.epoch;
        *&range1.start.value = *&p_timeMapping->target.start.value;
        *&range1.start.epoch = v10;
        *&range1.duration.timescale = *&p_timeMapping->target.duration.timescale;
        v12 = v14[1];
        LOBYTE(v9) = CMTimeRangeEqual(&range1, &v12) != 0;
      }
    }

    else
    {
      LOBYTE(v9) = 0;
    }
  }

  return v9;
}

- (unint64_t)hash
{
  p_timeMapping = &self->_timeMapping;
  start = self->_timeMapping.source.start;
  v3 = CMTimeHash(&start);
  start = p_timeMapping->source.duration;
  v4 = CMTimeHash(&start) ^ v3;
  start = p_timeMapping->target.start;
  v5 = CMTimeHash(&start);
  start = p_timeMapping->target.duration;
  return v4 ^ v5 ^ CMTimeHash(&start);
}

- (id)copyWithZone:(_NSZone *)a3
{
  if (NSShouldRetainWithZone(self, a3))
  {

    return self;
  }

  else
  {
    v4 = *&self->_timeMapping.target.start.value;
    v8[2] = *&self->_timeMapping.source.duration.timescale;
    v8[3] = v4;
    v5 = *&self->_timeMapping.target.duration.timescale;
    v8[4] = *&self->_timeMapping.target.start.epoch;
    v8[5] = v5;
    v6 = *&self->_timeMapping.source.start.epoch;
    v8[0] = *&self->_timeMapping.source.start.value;
    v8[1] = v6;
    return [CMAVRoutingTimeMappingAsValue valueWithCMTimeMapping:v8];
  }
}

- (CMAVRoutingTimeMappingAsValue)initWithCoder:(id)a3
{
  if (([a3 allowsKeyedCoding] & 1) == 0)
  {
    v10 = self;
    v16 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"invalid parameter not satisfying: %s", v11, v12, v13, v14, v15, "[coder allowsKeyedCoding]"), 0}];
    objc_exception_throw(v16);
  }

  v23.receiver = self;
  v23.super_class = CMAVRoutingTimeMappingAsValue;
  v6 = [(CMAVRoutingTimeMappingAsValue *)&v23 init];
  v7 = v6;
  if (v6)
  {
    p_timeMapping = &v6->_timeMapping;
    if (a3)
    {
      [a3 decodeCMTimeMappingForKey:@"CMTimeMapping"];
    }

    else
    {
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
    }

    *&p_timeMapping->source.start.value = v17;
    *&v7->_timeMapping.source.start.epoch = v18;
    *&v7->_timeMapping.target.start.epoch = v21;
    *&v7->_timeMapping.target.duration.timescale = v22;
    *&v7->_timeMapping.source.duration.timescale = v19;
    *&v7->_timeMapping.target.start.value = v20;
  }

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  if (([a3 allowsKeyedCoding] & 1) == 0)
  {
    v14 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"invalid parameter not satisfying: %s", v6, v7, v8, v9, v10, "[coder allowsKeyedCoding]"), 0}];
    objc_exception_throw(v14);
  }

  v11 = *&self->_timeMapping.target.start.value;
  v15[2] = *&self->_timeMapping.source.duration.timescale;
  v15[3] = v11;
  v12 = *&self->_timeMapping.target.duration.timescale;
  v15[4] = *&self->_timeMapping.target.start.epoch;
  v15[5] = v12;
  v13 = *&self->_timeMapping.source.start.epoch;
  v15[0] = *&self->_timeMapping.source.start.value;
  v15[1] = v13;
  [a3 encodeCMTimeMapping:v15 forKey:@"CMTimeMapping"];
}

@end