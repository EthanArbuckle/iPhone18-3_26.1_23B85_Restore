@interface AVScheduledParameterRamp
+ (id)defaultValue;
+ (id)scheduledParameterRampWithPropertyList:(id)list;
- ($2FE3C3292E52C4A5B67D27538456EAD9)timeRange;
- (AVScheduledParameterRamp)initWithPropertyList:(id)list;
- (AVScheduledParameterRamp)initWithTimeRange:(id *)range;
- (BOOL)isEqual:(id)equal;
- (id)description;
- (id)endValue;
- (id)propertyList;
- (id)scheduledParameterRampInterpolatedToTime:(id *)time;
- (id)startValue;
- (unint64_t)hash;
@end

@implementation AVScheduledParameterRamp

+ (id)defaultValue
{
  v4 = objc_opt_class();
  AVRequestConcreteImplementation(self, a2, v4);
  return 0;
}

- (AVScheduledParameterRamp)initWithTimeRange:(id *)range
{
  v7.receiver = self;
  v7.super_class = AVScheduledParameterRamp;
  result = [(AVScheduledParameterRamp *)&v7 init];
  if (result)
  {
    v5 = *&range->var0.var0;
    v6 = *&range->var0.var3;
    *&result->_timeRange.duration.timescale = *&range->var1.var1;
    *&result->_timeRange.start.epoch = v6;
    *&result->_timeRange.start.value = v5;
  }

  return result;
}

- ($2FE3C3292E52C4A5B67D27538456EAD9)timeRange
{
  v3 = *&self->var1.var0;
  *&retstr->var0.var0 = *&self->var0.var1;
  *&retstr->var0.var3 = v3;
  *&retstr->var1.var1 = *&self->var1.var3;
  return self;
}

- (id)startValue
{
  v4 = objc_opt_class();
  AVRequestConcreteImplementation(self, a2, v4);
  return 0;
}

- (id)endValue
{
  v4 = objc_opt_class();
  AVRequestConcreteImplementation(self, a2, v4);
  return 0;
}

- (id)scheduledParameterRampInterpolatedToTime:(id *)time
{
  v5 = objc_opt_class();
  AVRequestConcreteImplementation(self, a2, v5);
  return 0;
}

- (BOOL)isEqual:(id)equal
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    LOBYTE(v5) = 0;
    return v5;
  }

  if (!self)
  {
    memset(&range1, 0, sizeof(range1));
    if (equal)
    {
      goto LABEL_4;
    }

LABEL_7:
    memset(&v7, 0, sizeof(v7));
    goto LABEL_8;
  }

  [(AVScheduledParameterRamp *)self timeRange];
  if (!equal)
  {
    goto LABEL_7;
  }

LABEL_4:
  [equal timeRange];
LABEL_8:
  v5 = CMTimeRangeEqual(&range1, &v7);
  if (v5)
  {
    v5 = [-[AVScheduledParameterRamp startValue](self "startValue")];
    if (v5)
    {
      v5 = [-[AVScheduledParameterRamp endValue](self "endValue")];
      if (v5)
      {
        LOBYTE(v5) = -[NSArray isEqual:](-[AVScheduledParameterRamp _additionalFigRepresentationObjects](self, "_additionalFigRepresentationObjects"), "isEqual:", [equal _additionalFigRepresentationObjects]);
      }
    }
  }

  return v5;
}

- (unint64_t)hash
{
  start = self->_timeRange.start;
  v3 = CMTimeHash(&start);
  start = self->_timeRange.duration;
  v4 = CMTimeHash(&start) ^ v3;
  v5 = [-[AVScheduledParameterRamp startValue](self "startValue")];
  v6 = v4 ^ v5 ^ [-[AVScheduledParameterRamp endValue](self "endValue")];
  return v6 ^ [(NSArray *)[(AVScheduledParameterRamp *)self _additionalFigRepresentationObjects] hash];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = *MEMORY[0x1E695E480];
  v7 = *&self->_timeRange.start.epoch;
  *&range.start.value = *&self->_timeRange.start.value;
  *&range.start.epoch = v7;
  *&range.duration.timescale = *&self->_timeRange.duration.timescale;
  return [v3 stringWithFormat:@"<%@: %p, timeRange:%@ startValue:%@ endValue:%@ extras:%@>", v5, self, CMTimeRangeCopyDescription(v6, &range), -[AVScheduledParameterRamp startValue](self, "startValue"), -[AVScheduledParameterRamp endValue](self, "endValue"), -[AVScheduledParameterRamp _additionalFigRepresentationObjects](self, "_additionalFigRepresentationObjects")];
}

+ (id)scheduledParameterRampWithPropertyList:(id)list
{
  v4 = objc_alloc(objc_opt_class());

  return [v4 initWithPropertyList:list];
}

- (AVScheduledParameterRamp)initWithPropertyList:(id)list
{
  v5 = objc_opt_class();
  AVRequestConcreteImplementation(self, a2, v5);
  return 0;
}

- (id)propertyList
{
  v4 = objc_opt_class();
  AVRequestConcreteImplementation(self, a2, v4);
  return 0;
}

@end