@interface ATXTime
- (ATXTime)initWithCoder:(id)a3;
- (ATXTime)initWithHour:(int64_t)a3 minute:(int64_t)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToATXTime:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ATXTime

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXTime *)self isEqualToATXTime:v5];
  }

  return v6;
}

- (ATXTime)initWithHour:(int64_t)a3 minute:(int64_t)a4
{
  v10.receiver = self;
  v10.super_class = ATXTime;
  v6 = [(ATXTime *)&v10 init];
  v7 = v6;
  if (v6)
  {
    v6->_hour = a3;
    v6->_minute = a4;
    v8 = v6;
  }

  return v7;
}

- (ATXTime)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeIntegerForKey:@"hour"];
  v6 = [v4 decodeIntegerForKey:@"minute"];

  return [(ATXTime *)self initWithHour:v5 minute:v6];
}

- (void)encodeWithCoder:(id)a3
{
  hour = self->_hour;
  v5 = a3;
  [v5 encodeInteger:hour forKey:@"hour"];
  [v5 encodeInteger:self->_minute forKey:@"minute"];
}

- (BOOL)isEqualToATXTime:(id)a3
{
  v4 = a3;
  v5 = [(ATXTime *)self hour];
  if (v5 == [v4 hour])
  {
    v6 = [(ATXTime *)self minute];
    v7 = v6 == [v4 minute];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end