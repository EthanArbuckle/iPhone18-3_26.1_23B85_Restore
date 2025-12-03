@interface AVHapticEvent
+ (id)eventWithEventType:(unint64_t)type time:(double)time duration:(double)duration;
+ (id)eventWithEventType:(unint64_t)type time:(double)time parameters:(const AVHapticPlayerFixedParameter *)parameters count:(int64_t)count duration:(double)duration;
+ (id)eventWithParameter:(unint64_t)parameter value:(float)value time:(double)time;
+ (id)eventWithParameterCurve:(id)curve;
- (AVHapticEvent)initWithCoder:(id)coder;
- (AVHapticEvent)initWithEventType:(unint64_t)type time:(double)time duration:(double)duration;
- (AVHapticEvent)initWithEventType:(unint64_t)type time:(double)time parameters:(const AVHapticPlayerFixedParameter *)parameters count:(int64_t)count duration:(double)duration;
- (AVHapticEvent)initWithParameter:(unint64_t)parameter value:(float)value time:(double)time;
- (AVHapticEvent)initWithParameterCurve:(id)curve;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AVHapticEvent

- (AVHapticEvent)initWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy decodeDoubleForKey:@"time"];
  self->_time = v5;
  self->_eventCategory = [coderCopy decodeInt32ForKey:@"eventCategory"];
  eventCategory = [(AVHapticEvent *)self eventCategory];
  if (eventCategory)
  {
    if (eventCategory == 1)
    {
      self->_u._eventType = [coderCopy decodeIntegerForKey:@"paramType"];
      [coderCopy decodeFloatForKey:@"value"];
      self->_value = v9;
    }

    else if (eventCategory == 2)
    {
      v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"parameterCurve"];
      paramCurve = self->_paramCurve;
      self->_paramCurve = v7;
    }
  }

  else
  {
    [coderCopy decodeDoubleForKey:@"duration"];
    self->_duration = v10;
    self->_u._eventType = [coderCopy decodeIntegerForKey:@"eventType"];
    v11 = [coderCopy decodeIntegerForKey:@"fixedParamCount"];
    v12 = 8;
    if (v11 < 8)
    {
      v12 = v11;
    }

    self->_fixedParamCount = v12;
    if (v11 >= 1)
    {
      v13 = 0;
      p_value = &self->_fixedParams[0].value;
      do
      {
        v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"fixedParam%dType", v13];
        *(p_value - 1) = [coderCopy decodeIntegerForKey:v15];

        v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"fixedParam%dValue", v13];
        [coderCopy decodeFloatForKey:v16];
        *p_value = v17;
        p_value += 4;

        ++v13;
      }

      while (v13 < self->_fixedParamCount);
    }
  }

  return self;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeDouble:@"time" forKey:self->_time];
  [coderCopy encodeInt32:LODWORD(self->_eventCategory) forKey:@"eventCategory"];
  eventCategory = [(AVHapticEvent *)self eventCategory];
  if (eventCategory)
  {
    if (eventCategory == 1)
    {
      [coderCopy encodeInteger:self->_u._eventType forKey:@"paramType"];
      *&v5 = self->_value;
      [coderCopy encodeFloat:@"value" forKey:v5];
    }

    else if (eventCategory == 2)
    {
      [coderCopy encodeObject:self->_paramCurve forKey:@"parameterCurve"];
    }
  }

  else
  {
    [coderCopy encodeDouble:@"duration" forKey:self->_duration];
    [coderCopy encodeInteger:self->_u._eventType forKey:@"eventType"];
    if (self->_fixedParamCount >= 1)
    {
      v6 = 0;
      p_value = &self->_fixedParams[0].value;
      do
      {
        v8 = *(p_value - 1);
        v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"fixedParam%dType", v6];
        [coderCopy encodeInteger:v8 forKey:v9];

        v10 = *p_value;
        v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"fixedParam%dValue", v6];
        LODWORD(v12) = v10;
        [coderCopy encodeFloat:v11 forKey:v12];

        ++v6;
        p_value += 4;
      }

      while (v6 < self->_fixedParamCount);
    }

    [coderCopy encodeInteger:? forKey:?];
  }
}

- (AVHapticEvent)initWithParameterCurve:(id)curve
{
  curveCopy = curve;
  v9.receiver = self;
  v9.super_class = AVHapticEvent;
  v6 = [(AVHapticEvent *)&v9 init];
  if (v6)
  {
    [curveCopy time];
    v6->_time = v7;
    v6->_duration = 0.0;
    v6->_eventCategory = 2;
    v6->_u._eventType = [curveCopy type];
    v6->_value = 0.0;
    v6->_fixedParamCount = 0;
    objc_storeStrong(&v6->_paramCurve, curve);
  }

  return v6;
}

- (AVHapticEvent)initWithParameter:(unint64_t)parameter value:(float)value time:(double)time
{
  v12.receiver = self;
  v12.super_class = AVHapticEvent;
  v8 = [(AVHapticEvent *)&v12 init];
  v9 = v8;
  if (v8)
  {
    v8->_time = fmax(time, 0.0);
    v8->_duration = 0.0;
    v8->_eventCategory = 1;
    v8->_u._eventType = parameter;
    v8->_value = value;
    paramCurve = v8->_paramCurve;
    v8->_paramCurve = 0;
  }

  return v9;
}

- (AVHapticEvent)initWithEventType:(unint64_t)type time:(double)time parameters:(const AVHapticPlayerFixedParameter *)parameters count:(int64_t)count duration:(double)duration
{
  v23.receiver = self;
  v23.super_class = AVHapticEvent;
  v12 = [(AVHapticEvent *)&v23 init];
  v13 = v12;
  if (v12)
  {
    durationCopy = 0.0;
    v15 = fmax(time, 0.0);
    if (duration >= 0.0)
    {
      durationCopy = duration;
    }

    v12->_time = v15;
    v12->_duration = durationCopy;
    v12->_eventCategory = 0;
    v12->_u._eventType = type;
    paramCurve = v12->_paramCurve;
    v12->_paramCurve = 0;

    v17 = 0;
    if (parameters)
    {
      v18 = count - 1;
      if (count >= 1)
      {
        fixedParams = v13->_fixedParams;
        if (v18 >= 7)
        {
          v18 = 7;
        }

        v20 = v18 + 1;
        do
        {
          v21 = *parameters++;
          *fixedParams++ = v21;
          --v20;
        }

        while (v20);
        v17 = v18 + 1;
      }
    }

    v13->_fixedParamCount = v17;
  }

  return v13;
}

- (AVHapticEvent)initWithEventType:(unint64_t)type time:(double)time duration:(double)duration
{
  v14.receiver = self;
  v14.super_class = AVHapticEvent;
  v8 = [(AVHapticEvent *)&v14 init];
  v9 = v8;
  if (v8)
  {
    durationCopy = 0.0;
    v11 = fmax(time, 0.0);
    if (duration >= 0.0)
    {
      durationCopy = duration;
    }

    v8->_time = v11;
    v8->_duration = durationCopy;
    v8->_eventCategory = 0;
    v8->_u._eventType = type;
    paramCurve = v8->_paramCurve;
    v8->_paramCurve = 0;
    v8->_fixedParamCount = 0;
  }

  return v9;
}

+ (id)eventWithParameterCurve:(id)curve
{
  curveCopy = curve;
  v4 = [[AVHapticEvent alloc] initWithParameterCurve:curveCopy];

  return v4;
}

+ (id)eventWithParameter:(unint64_t)parameter value:(float)value time:(double)time
{
  v8 = [AVHapticEvent alloc];
  *&v9 = value;
  v10 = [(AVHapticEvent *)v8 initWithParameter:parameter value:v9 time:time];

  return v10;
}

+ (id)eventWithEventType:(unint64_t)type time:(double)time parameters:(const AVHapticPlayerFixedParameter *)parameters count:(int64_t)count duration:(double)duration
{
  v7 = [[AVHapticEvent alloc] initWithEventType:type time:parameters parameters:count count:time duration:duration];

  return v7;
}

+ (id)eventWithEventType:(unint64_t)type time:(double)time duration:(double)duration
{
  v5 = [[AVHapticEvent alloc] initWithEventType:type time:time duration:duration];

  return v5;
}

@end