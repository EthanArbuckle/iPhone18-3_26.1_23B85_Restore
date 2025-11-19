@interface ATXAggregatedAppLaunchData
- (ATXAggregatedAppLaunchData)initWithCoder:(id)a3;
- (ATXAggregatedAppLaunchData)initWithRawLaunchCount:(unint64_t)a3 uniqueDaysLaunched:(unint64_t)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)isGreaterThanOrEqualToData:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ATXAggregatedAppLaunchData

- (ATXAggregatedAppLaunchData)initWithRawLaunchCount:(unint64_t)a3 uniqueDaysLaunched:(unint64_t)a4
{
  v7.receiver = self;
  v7.super_class = ATXAggregatedAppLaunchData;
  result = [(ATXAggregatedAppLaunchData *)&v7 init];
  if (result)
  {
    result->_rawLaunchCount = a3;
    result->_uniqueDaysLaunched = a4;
  }

  return result;
}

- (void)encodeWithCoder:(id)a3
{
  rawLaunchCount = self->_rawLaunchCount;
  v5 = a3;
  [v5 encodeInteger:rawLaunchCount forKey:@"rawLaunchCount"];
  [v5 encodeInteger:self->_uniqueDaysLaunched forKey:@"uniqueDaysLaunched"];
}

- (ATXAggregatedAppLaunchData)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeIntegerForKey:@"rawLaunchCount"];
  v6 = [v4 decodeIntegerForKey:@"uniqueDaysLaunched"];

  v7 = [objc_alloc(objc_opt_class()) initWithRawLaunchCount:v5 uniqueDaysLaunched:v6];
  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  rawLaunchCount = self->_rawLaunchCount;
  uniqueDaysLaunched = self->_uniqueDaysLaunched;

  return [v4 initWithRawLaunchCount:rawLaunchCount uniqueDaysLaunched:uniqueDaysLaunched];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(ATXAggregatedAppLaunchData *)v5 rawLaunchCount]== self->_rawLaunchCount && [(ATXAggregatedAppLaunchData *)v5 uniqueDaysLaunched]== self->_uniqueDaysLaunched;
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"<ATXAggregatedAppLaunchData count=%ld; uniqueDays=%ld>", -[ATXAggregatedAppLaunchData rawLaunchCount](self, "rawLaunchCount"), -[ATXAggregatedAppLaunchData uniqueDaysLaunched](self, "uniqueDaysLaunched")];

  return v2;
}

- (BOOL)isGreaterThanOrEqualToData:(id)a3
{
  v4 = a3;
  v5 = [(ATXAggregatedAppLaunchData *)self rawLaunchCount];
  if (v5 >= [v4 rawLaunchCount])
  {
    v7 = [(ATXAggregatedAppLaunchData *)self uniqueDaysLaunched];
    v6 = v7 >= [v4 uniqueDaysLaunched];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end