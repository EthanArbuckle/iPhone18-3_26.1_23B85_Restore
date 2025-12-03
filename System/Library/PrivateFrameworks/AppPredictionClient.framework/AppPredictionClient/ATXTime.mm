@interface ATXTime
- (ATXTime)initWithCoder:(id)coder;
- (ATXTime)initWithHour:(int64_t)hour minute:(int64_t)minute;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToATXTime:(id)time;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ATXTime

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXTime *)self isEqualToATXTime:v5];
  }

  return v6;
}

- (ATXTime)initWithHour:(int64_t)hour minute:(int64_t)minute
{
  v10.receiver = self;
  v10.super_class = ATXTime;
  v6 = [(ATXTime *)&v10 init];
  v7 = v6;
  if (v6)
  {
    v6->_hour = hour;
    v6->_minute = minute;
    v8 = v6;
  }

  return v7;
}

- (ATXTime)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeIntegerForKey:@"hour"];
  v6 = [coderCopy decodeIntegerForKey:@"minute"];

  return [(ATXTime *)self initWithHour:v5 minute:v6];
}

- (void)encodeWithCoder:(id)coder
{
  hour = self->_hour;
  coderCopy = coder;
  [coderCopy encodeInteger:hour forKey:@"hour"];
  [coderCopy encodeInteger:self->_minute forKey:@"minute"];
}

- (BOOL)isEqualToATXTime:(id)time
{
  timeCopy = time;
  hour = [(ATXTime *)self hour];
  if (hour == [timeCopy hour])
  {
    minute = [(ATXTime *)self minute];
    v7 = minute == [timeCopy minute];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end