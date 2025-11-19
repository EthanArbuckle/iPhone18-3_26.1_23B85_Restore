@interface AVHapticEvent
+ (id)eventWithEventType:(unint64_t)a3 time:(double)a4 duration:(double)a5;
+ (id)eventWithEventType:(unint64_t)a3 time:(double)a4 parameters:(const AVHapticPlayerFixedParameter *)a5 count:(int64_t)a6 duration:(double)a7;
+ (id)eventWithParameter:(unint64_t)a3 value:(float)a4 time:(double)a5;
+ (id)eventWithParameterCurve:(id)a3;
- (AVHapticEvent)initWithCoder:(id)a3;
- (AVHapticEvent)initWithEventType:(unint64_t)a3 time:(double)a4 duration:(double)a5;
- (AVHapticEvent)initWithEventType:(unint64_t)a3 time:(double)a4 parameters:(const AVHapticPlayerFixedParameter *)a5 count:(int64_t)a6 duration:(double)a7;
- (AVHapticEvent)initWithParameter:(unint64_t)a3 value:(float)a4 time:(double)a5;
- (AVHapticEvent)initWithParameterCurve:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AVHapticEvent

- (AVHapticEvent)initWithCoder:(id)a3
{
  v4 = a3;
  [v4 decodeDoubleForKey:@"time"];
  self->_time = v5;
  self->_eventCategory = [v4 decodeInt32ForKey:@"eventCategory"];
  v6 = [(AVHapticEvent *)self eventCategory];
  if (v6)
  {
    if (v6 == 1)
    {
      self->_u._eventType = [v4 decodeIntegerForKey:@"paramType"];
      [v4 decodeFloatForKey:@"value"];
      self->_value = v9;
    }

    else if (v6 == 2)
    {
      v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"parameterCurve"];
      paramCurve = self->_paramCurve;
      self->_paramCurve = v7;
    }
  }

  else
  {
    [v4 decodeDoubleForKey:@"duration"];
    self->_duration = v10;
    self->_u._eventType = [v4 decodeIntegerForKey:@"eventType"];
    v11 = [v4 decodeIntegerForKey:@"fixedParamCount"];
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
        *(p_value - 1) = [v4 decodeIntegerForKey:v15];

        v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"fixedParam%dValue", v13];
        [v4 decodeFloatForKey:v16];
        *p_value = v17;
        p_value += 4;

        ++v13;
      }

      while (v13 < self->_fixedParamCount);
    }
  }

  return self;
}

- (void)encodeWithCoder:(id)a3
{
  v13 = a3;
  [v13 encodeDouble:@"time" forKey:self->_time];
  [v13 encodeInt32:LODWORD(self->_eventCategory) forKey:@"eventCategory"];
  v4 = [(AVHapticEvent *)self eventCategory];
  if (v4)
  {
    if (v4 == 1)
    {
      [v13 encodeInteger:self->_u._eventType forKey:@"paramType"];
      *&v5 = self->_value;
      [v13 encodeFloat:@"value" forKey:v5];
    }

    else if (v4 == 2)
    {
      [v13 encodeObject:self->_paramCurve forKey:@"parameterCurve"];
    }
  }

  else
  {
    [v13 encodeDouble:@"duration" forKey:self->_duration];
    [v13 encodeInteger:self->_u._eventType forKey:@"eventType"];
    if (self->_fixedParamCount >= 1)
    {
      v6 = 0;
      p_value = &self->_fixedParams[0].value;
      do
      {
        v8 = *(p_value - 1);
        v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"fixedParam%dType", v6];
        [v13 encodeInteger:v8 forKey:v9];

        v10 = *p_value;
        v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"fixedParam%dValue", v6];
        LODWORD(v12) = v10;
        [v13 encodeFloat:v11 forKey:v12];

        ++v6;
        p_value += 4;
      }

      while (v6 < self->_fixedParamCount);
    }

    [v13 encodeInteger:? forKey:?];
  }
}

- (AVHapticEvent)initWithParameterCurve:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = AVHapticEvent;
  v6 = [(AVHapticEvent *)&v9 init];
  if (v6)
  {
    [v5 time];
    v6->_time = v7;
    v6->_duration = 0.0;
    v6->_eventCategory = 2;
    v6->_u._eventType = [v5 type];
    v6->_value = 0.0;
    v6->_fixedParamCount = 0;
    objc_storeStrong(&v6->_paramCurve, a3);
  }

  return v6;
}

- (AVHapticEvent)initWithParameter:(unint64_t)a3 value:(float)a4 time:(double)a5
{
  v12.receiver = self;
  v12.super_class = AVHapticEvent;
  v8 = [(AVHapticEvent *)&v12 init];
  v9 = v8;
  if (v8)
  {
    v8->_time = fmax(a5, 0.0);
    v8->_duration = 0.0;
    v8->_eventCategory = 1;
    v8->_u._eventType = a3;
    v8->_value = a4;
    paramCurve = v8->_paramCurve;
    v8->_paramCurve = 0;
  }

  return v9;
}

- (AVHapticEvent)initWithEventType:(unint64_t)a3 time:(double)a4 parameters:(const AVHapticPlayerFixedParameter *)a5 count:(int64_t)a6 duration:(double)a7
{
  v23.receiver = self;
  v23.super_class = AVHapticEvent;
  v12 = [(AVHapticEvent *)&v23 init];
  v13 = v12;
  if (v12)
  {
    v14 = 0.0;
    v15 = fmax(a4, 0.0);
    if (a7 >= 0.0)
    {
      v14 = a7;
    }

    v12->_time = v15;
    v12->_duration = v14;
    v12->_eventCategory = 0;
    v12->_u._eventType = a3;
    paramCurve = v12->_paramCurve;
    v12->_paramCurve = 0;

    v17 = 0;
    if (a5)
    {
      v18 = a6 - 1;
      if (a6 >= 1)
      {
        fixedParams = v13->_fixedParams;
        if (v18 >= 7)
        {
          v18 = 7;
        }

        v20 = v18 + 1;
        do
        {
          v21 = *a5++;
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

- (AVHapticEvent)initWithEventType:(unint64_t)a3 time:(double)a4 duration:(double)a5
{
  v14.receiver = self;
  v14.super_class = AVHapticEvent;
  v8 = [(AVHapticEvent *)&v14 init];
  v9 = v8;
  if (v8)
  {
    v10 = 0.0;
    v11 = fmax(a4, 0.0);
    if (a5 >= 0.0)
    {
      v10 = a5;
    }

    v8->_time = v11;
    v8->_duration = v10;
    v8->_eventCategory = 0;
    v8->_u._eventType = a3;
    paramCurve = v8->_paramCurve;
    v8->_paramCurve = 0;
    v8->_fixedParamCount = 0;
  }

  return v9;
}

+ (id)eventWithParameterCurve:(id)a3
{
  v3 = a3;
  v4 = [[AVHapticEvent alloc] initWithParameterCurve:v3];

  return v4;
}

+ (id)eventWithParameter:(unint64_t)a3 value:(float)a4 time:(double)a5
{
  v8 = [AVHapticEvent alloc];
  *&v9 = a4;
  v10 = [(AVHapticEvent *)v8 initWithParameter:a3 value:v9 time:a5];

  return v10;
}

+ (id)eventWithEventType:(unint64_t)a3 time:(double)a4 parameters:(const AVHapticPlayerFixedParameter *)a5 count:(int64_t)a6 duration:(double)a7
{
  v7 = [[AVHapticEvent alloc] initWithEventType:a3 time:a5 parameters:a6 count:a4 duration:a7];

  return v7;
}

+ (id)eventWithEventType:(unint64_t)a3 time:(double)a4 duration:(double)a5
{
  v5 = [[AVHapticEvent alloc] initWithEventType:a3 time:a4 duration:a5];

  return v5;
}

@end