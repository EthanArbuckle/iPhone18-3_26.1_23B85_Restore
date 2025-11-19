@interface AVScheduledFloatValueRamp
+ (id)defaultValue;
+ (id)scheduledFloatValueRampWithStartValue:(float)a3 endValue:(float)a4 timeRange:(id *)a5;
- (AVScheduledFloatValueRamp)initWithPropertyList:(id)a3;
- (AVScheduledFloatValueRamp)initWithStartValue:(float)a3 endValue:(float)a4 timeRange:(id *)a5;
- (float)_interpolatedValueAtTime:(id *)a3;
- (id)_makeRampWithTruncatedTimeRange:(id *)a3 endValue:(float)a4;
- (id)propertyList;
- (id)scheduledParameterRampInterpolatedToTime:(id *)a3;
@end

@implementation AVScheduledFloatValueRamp

+ (id)defaultValue
{
  v2 = MEMORY[0x1E696AD98];
  [a1 defaultFloatValue];

  return [v2 numberWithFloat:?];
}

+ (id)scheduledFloatValueRampWithStartValue:(float)a3 endValue:(float)a4 timeRange:(id *)a5
{
  v8 = objc_alloc(objc_opt_class());
  v9 = *&a5->var0.var3;
  v11[0] = *&a5->var0.var0;
  v11[1] = v9;
  *&v9 = a4;
  return [v8 initWithStartValue:v11 endValue:COERCE_DOUBLE(__PAIR64__(HIDWORD(*&a5->var1.var1) timeRange:{LODWORD(a3))), *&v9}];
}

- (AVScheduledFloatValueRamp)initWithStartValue:(float)a3 endValue:(float)a4 timeRange:(id *)a5
{
  v17.receiver = self;
  v17.super_class = AVScheduledFloatValueRamp;
  v7 = *&a5->var0.var3;
  v16[0] = *&a5->var0.var0;
  v16[1] = v7;
  v16[2] = *&a5->var1.var1;
  v8 = [(AVScheduledParameterRamp *)&v17 initWithTimeRange:v16];
  if (v8)
  {
    v9 = objc_opt_class();
    *&v10 = a3;
    [v9 boundsAdjustedFloatValue:v10];
    v8->_startValue = v11;
    v12 = objc_opt_class();
    *&v13 = a4;
    [v12 boundsAdjustedFloatValue:v13];
    v8->_endValue = v14;
  }

  return v8;
}

- (float)_interpolatedValueAtTime:(id *)a3
{
  memset(v21, 0, sizeof(v21));
  v20 = 0u;
  if (self && ([(AVScheduledParameterRamp *)self timeRange], (BYTE4(v21[1]) & 0x1D) == 1))
  {
    time = *(v21 + 8);
    Seconds = CMTimeGetSeconds(&time);
    lhs = *a3;
    *&v17.value = v20;
    v17.epoch = *&v21[0];
    CMTimeSubtract(&time, &lhs, &v17);
    v6 = CMTimeGetSeconds(&time) / Seconds;
    v7 = [(AVScheduledFloatValueRamp *)self _parameterRampMode];
    if (v7)
    {
      result = 0.0;
      if (v7 != 1)
      {
        return result;
      }

      [(AVScheduledFloatValueRamp *)self endFloatValue];
      v10 = v9;
      [(AVScheduledFloatValueRamp *)self startFloatValue];
      if (v10 <= v11)
      {
        v6 = sin((v6 + -1.0) * 0.5 * 3.14159265) + 1.0;
      }

      else
      {
        v6 = sin(v6 * 0.5 * 3.14159265);
      }
    }

    [(AVScheduledFloatValueRamp *)self endFloatValue];
    v13 = v12;
    [(AVScheduledFloatValueRamp *)self startFloatValue];
    v15 = (v13 - v14);
    [(AVScheduledFloatValueRamp *)self startFloatValue];
    return v16 + v15 * v6;
  }

  else
  {
    [(AVScheduledFloatValueRamp *)self endFloatValue];
  }

  return result;
}

- (id)_makeRampWithTruncatedTimeRange:(id *)a3 endValue:(float)a4
{
  v6 = objc_opt_class();
  [(AVScheduledFloatValueRamp *)self startFloatValue];
  v7 = *&a3->var0.var3;
  v9[0] = *&a3->var0.var0;
  v9[1] = v7;
  v9[2] = *&a3->var1.var1;
  return [v6 scheduledFloatValueRampWithStartValue:v9 endValue:? timeRange:?];
}

- (id)scheduledParameterRampInterpolatedToTime:(id *)a3
{
  memset(&v19, 0, sizeof(v19));
  if (self)
  {
    [(AVScheduledParameterRamp *)self timeRange];
  }

  range = v19;
  CMTimeRangeGetEnd(&time2, &range);
  *&range.start.value = *&a3->var0;
  range.start.epoch = a3->var3;
  if (!CMTimeCompare(&range.start, &time2))
  {
    return [(AVScheduledFloatValueRamp *)self copy];
  }

  *&range.start.value = *&v19.start.value;
  *&range.start.epoch = *&v19.start.epoch;
  v6 = *&a3->var0;
  *&range.duration.timescale = *&v19.duration.timescale;
  *&time2.value = v6;
  time2.epoch = a3->var3;
  if (!CMTimeRangeContainsTime(&range, &time2))
  {
    v15 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"can't interpolate outside of the timeRange of the receiver", v7, v8, v9, v10, v11, start.value), 0}];
    objc_exception_throw(v15);
  }

  *&range.start.value = *&a3->var0;
  range.start.epoch = a3->var3;
  [(AVScheduledFloatValueRamp *)self _interpolatedValueAtTime:&range];
  v13 = v12;
  time2 = *a3;
  start = v19.start;
  CMTimeSubtract(&range.start, &time2, &start);
  v19.duration = range.start;
  range = v19;
  return [(AVScheduledFloatValueRamp *)self _makeRampWithTruncatedTimeRange:&range endValue:COERCE_DOUBLE(__PAIR64__(v19.duration.flags, v13))];
}

- (AVScheduledFloatValueRamp)initWithPropertyList:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v26 = self;
    v23 = MEMORY[0x1E695DF30];
    v24 = *MEMORY[0x1E695D940];
    v25 = "[propertyList isKindOfClass:[NSDictionary class]]";
LABEL_15:
    v27 = [v23 exceptionWithName:v24 reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"invalid parameter not satisfying: %s", v18, v19, v20, v21, v22, v25), 0}];
    objc_exception_throw(v27);
  }

  v6 = MEMORY[0x1E6960C98];
  value = *MEMORY[0x1E6960C98];
  timescale = *(MEMORY[0x1E6960C98] + 8);
  v7 = [a3 objectForKey:@"timeRange"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    CMTimeRangeMakeFromDictionary(&v31, v7);
    goto LABEL_6;
  }

  v8 = [a3 objectForKey:@"time"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    CMTimeMakeFromDictionary(&start, v8);
    duration = **&MEMORY[0x1E6960C88];
    CMTimeRangeMake(&v31, &start, &duration);
LABEL_6:
    value = v31.start.value;
    flags = v31.start.flags;
    timescale = v31.start.timescale;
    epoch = v31.start.epoch;
    v11 = v31.duration.value;
    v12 = *&v31.duration.timescale;
    v13 = v31.duration.epoch;
    if ((v31.start.flags & 1) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  flags = *(v6 + 12);
  epoch = *(v6 + 16);
  v11 = *(v6 + 24);
  v12 = *(v6 + 32);
  v13 = *(v6 + 40);
  if ((flags & 1) == 0)
  {
LABEL_13:
    v17 = self;
    v23 = MEMORY[0x1E695DF30];
    v24 = *MEMORY[0x1E695D940];
    v25 = "CMTIMERANGE_IS_VALID(timeRange)";
    goto LABEL_15;
  }

LABEL_9:
  if ((BYTE4(v12) & 1) == 0 || v13 || v11 < 0)
  {
    goto LABEL_13;
  }

  v28 = v12;
  [objc_msgSend(a3 objectForKey:{@"startValue", "floatValue"}];
  [objc_msgSend(a3 objectForKey:{@"endValue", "floatValue"}];
  LODWORD(v15) = v14;
  v31.start.value = value;
  v31.start.timescale = timescale;
  v31.start.flags = flags;
  v31.start.epoch = epoch;
  v31.duration.value = v11;
  *&v31.duration.timescale = v28;
  v31.duration.epoch = 0;
  return [(AVScheduledFloatValueRamp *)self initWithStartValue:&v31 endValue:v28 timeRange:v15];
}

- (id)propertyList
{
  v14 = 0u;
  v15 = 0u;
  v13 = 0u;
  if (self)
  {
    [(AVScheduledParameterRamp *)self timeRange];
    v3 = (BYTE4(v15) & 0x1D) == 1;
  }

  else
  {
    v3 = 0;
  }

  v4 = MEMORY[0x1E695DF90];
  v5 = [(AVScheduledFloatValueRamp *)self startValue];
  v6 = [(AVScheduledFloatValueRamp *)self endValue];
  if (v3)
  {
    v10 = v13;
    v11 = v14;
    v12 = v15;
    v7 = AVDictionaryWithTimeRange(&v10);
    v8 = @"timeRange";
  }

  else
  {
    v10 = v13;
    *&v11 = v14;
    v7 = AVDictionaryWithTime(&v10);
    v8 = @"time";
  }

  return [v4 dictionaryWithObjectsAndKeys:{v5, @"startValue", v6, @"endValue", v7, v8, 0}];
}

@end