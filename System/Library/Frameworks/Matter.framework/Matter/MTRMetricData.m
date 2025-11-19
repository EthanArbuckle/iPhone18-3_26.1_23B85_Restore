@interface MTRMetricData
- (MTRMetricData)init;
- (MTRMetricData)initWithMetricEvent:(const MetricEvent *)a3;
- (id)description;
- (void)setDurationFromMetricData:(id)a3;
@end

@implementation MTRMetricData

- (MTRMetricData)init
{
  v3 = 2;
  v4 = "";
  v5 = 0;
  return [(MTRMetricData *)self initWithMetricEvent:&v3];
}

- (MTRMetricData)initWithMetricEvent:(const MetricEvent *)a3
{
  v14.receiver = self;
  v14.super_class = MTRMetricData;
  v4 = [(MTRMetricData *)&v14 init];
  v5 = v4;
  if (v4)
  {
    var0 = a3->var0;
    v4->_type = a3->var0;
    if (var0 >= 2)
    {
      if (var0 != 2)
      {
        goto LABEL_7;
      }

      v7 = 0;
    }

    else
    {
      v7 = (*(*off_27DF765E8 + 3))(off_27DF765E8);
    }

    v5->_timePoint.__rep_ = v7;
LABEL_7:
    v8 = *(&a3->var2 + 4);
    if (v8 == 3)
    {
      v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:sub_2393ABB38(a3)];
      v10 = 32;
    }

    else
    {
      if (v8 == 2)
      {
        v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:sub_2393ABB14(a3)];
      }

      else
      {
        if (v8 != 1)
        {
LABEL_15:
          v12 = v5;
          goto LABEL_16;
        }

        v9 = [MEMORY[0x277CCABB0] numberWithInteger:sub_2393ABAF0(a3)];
      }

      v10 = 24;
    }

    v11 = *(&v5->super.isa + v10);
    *(&v5->super.isa + v10) = v9;

    goto LABEL_15;
  }

LABEL_16:

  return v5;
}

- (void)setDurationFromMetricData:(id)a3
{
  v6 = a3;
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:(self->_timePoint.__rep_ - v6[1]) / 1000000.0];
  duration = self->_duration;
  self->_duration = v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  type = self->_type;
  v5 = [(MTRMetricData *)self value];
  v6 = [(MTRMetricData *)self errorCode];
  v7 = [(MTRMetricData *)self duration];
  v8 = [v3 stringWithFormat:@"<MTRMetricData: Type %d, Value = %@, Error Code = %@, Duration = %@ us>", type, v5, v6, v7];

  return v8;
}

@end