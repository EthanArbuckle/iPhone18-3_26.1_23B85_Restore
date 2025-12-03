@interface _HKActivityStatisticsStandHourInfo
- (BOOL)isEqual:(id)equal;
- (_HKActivityStatisticsStandHourInfo)initWithCoder:(id)coder;
- (_HKActivityStatisticsStandHourInfo)initWithTimeStamp:(double)stamp state:(int64_t)state;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _HKActivityStatisticsStandHourInfo

- (void)encodeWithCoder:(id)coder
{
  timeStamp = self->_timeStamp;
  coderCopy = coder;
  v6 = NSStringFromSelector(sel_timeStamp);
  [coderCopy encodeDouble:v6 forKey:timeStamp];

  state = self->_state;
  v8 = NSStringFromSelector(sel_state);
  [coderCopy encodeInteger:state forKey:v8];
}

- (_HKActivityStatisticsStandHourInfo)initWithTimeStamp:(double)stamp state:(int64_t)state
{
  v7.receiver = self;
  v7.super_class = _HKActivityStatisticsStandHourInfo;
  result = [(_HKActivityStatisticsStandHourInfo *)&v7 init];
  if (result)
  {
    result->_timeStamp = stamp;
    result->_state = state;
  }

  return result;
}

- (_HKActivityStatisticsStandHourInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = _HKActivityStatisticsStandHourInfo;
  v5 = [(_HKActivityStatisticsStandHourInfo *)&v10 init];
  if (v5)
  {
    v6 = NSStringFromSelector(sel_timeStamp);
    [coderCopy decodeDoubleForKey:v6];
    v5->_timeStamp = v7;

    v8 = NSStringFromSelector(sel_state);
    v5->_state = [coderCopy decodeIntegerForKey:v8];
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    v5 = *MEMORY[0x1E695E480];
    [equalCopy timeStamp];
    v7 = CFDateCreate(v5, v6);
    [(_HKActivityStatisticsStandHourInfo *)self timeStamp];
    v9 = CFDateCreate(v5, v8);
    if ([(__CFDate *)v7 isEqualToDate:v9])
    {
      state = [equalCopy state];
      v11 = state == [(_HKActivityStatisticsStandHourInfo *)self state];
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
  state = [(_HKActivityStatisticsStandHourInfo *)self state];
  v8 = @"Idle";
  if (!state)
  {
    v8 = @"Stood";
  }

  v9 = [v3 stringWithFormat:@"%@: Start Date %@ State: %@", v4, v6, v8];;

  return v9;
}

@end