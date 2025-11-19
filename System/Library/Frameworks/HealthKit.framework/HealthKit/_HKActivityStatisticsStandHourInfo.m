@interface _HKActivityStatisticsStandHourInfo
- (BOOL)isEqual:(id)a3;
- (_HKActivityStatisticsStandHourInfo)initWithCoder:(id)a3;
- (_HKActivityStatisticsStandHourInfo)initWithTimeStamp:(double)a3 state:(int64_t)a4;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _HKActivityStatisticsStandHourInfo

- (void)encodeWithCoder:(id)a3
{
  timeStamp = self->_timeStamp;
  v5 = a3;
  v6 = NSStringFromSelector(sel_timeStamp);
  [v5 encodeDouble:v6 forKey:timeStamp];

  state = self->_state;
  v8 = NSStringFromSelector(sel_state);
  [v5 encodeInteger:state forKey:v8];
}

- (_HKActivityStatisticsStandHourInfo)initWithTimeStamp:(double)a3 state:(int64_t)a4
{
  v7.receiver = self;
  v7.super_class = _HKActivityStatisticsStandHourInfo;
  result = [(_HKActivityStatisticsStandHourInfo *)&v7 init];
  if (result)
  {
    result->_timeStamp = a3;
    result->_state = a4;
  }

  return result;
}

- (_HKActivityStatisticsStandHourInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = _HKActivityStatisticsStandHourInfo;
  v5 = [(_HKActivityStatisticsStandHourInfo *)&v10 init];
  if (v5)
  {
    v6 = NSStringFromSelector(sel_timeStamp);
    [v4 decodeDoubleForKey:v6];
    v5->_timeStamp = v7;

    v8 = NSStringFromSelector(sel_state);
    v5->_state = [v4 decodeIntegerForKey:v8];
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = *MEMORY[0x1E695E480];
    [v4 timeStamp];
    v7 = CFDateCreate(v5, v6);
    [(_HKActivityStatisticsStandHourInfo *)self timeStamp];
    v9 = CFDateCreate(v5, v8);
    if ([(__CFDate *)v7 isEqualToDate:v9])
    {
      v10 = [v4 state];
      v11 = v10 == [(_HKActivityStatisticsStandHourInfo *)self state];
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = _HKActivityStatisticsStandHourInfo;
  v4 = [(_HKActivityStatisticsStandHourInfo *)&v11 description];
  v5 = MEMORY[0x1E695DF00];
  [(_HKActivityStatisticsStandHourInfo *)self timeStamp];
  v6 = [v5 dateWithTimeIntervalSinceReferenceDate:?];
  v7 = [(_HKActivityStatisticsStandHourInfo *)self state];
  v8 = @"Idle";
  if (!v7)
  {
    v8 = @"Stood";
  }

  v9 = [v3 stringWithFormat:@"%@: Start Date %@ State: %@", v4, v6, v8];;

  return v9;
}

@end