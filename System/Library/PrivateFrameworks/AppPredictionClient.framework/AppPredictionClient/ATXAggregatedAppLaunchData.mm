@interface ATXAggregatedAppLaunchData
- (ATXAggregatedAppLaunchData)initWithCoder:(id)coder;
- (ATXAggregatedAppLaunchData)initWithRawLaunchCount:(unint64_t)count uniqueDaysLaunched:(unint64_t)launched;
- (BOOL)isEqual:(id)equal;
- (BOOL)isGreaterThanOrEqualToData:(id)data;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ATXAggregatedAppLaunchData

- (ATXAggregatedAppLaunchData)initWithRawLaunchCount:(unint64_t)count uniqueDaysLaunched:(unint64_t)launched
{
  v7.receiver = self;
  v7.super_class = ATXAggregatedAppLaunchData;
  result = [(ATXAggregatedAppLaunchData *)&v7 init];
  if (result)
  {
    result->_rawLaunchCount = count;
    result->_uniqueDaysLaunched = launched;
  }

  return result;
}

- (void)encodeWithCoder:(id)coder
{
  rawLaunchCount = self->_rawLaunchCount;
  coderCopy = coder;
  [coderCopy encodeInteger:rawLaunchCount forKey:@"rawLaunchCount"];
  [coderCopy encodeInteger:self->_uniqueDaysLaunched forKey:@"uniqueDaysLaunched"];
}

- (ATXAggregatedAppLaunchData)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeIntegerForKey:@"rawLaunchCount"];
  v6 = [coderCopy decodeIntegerForKey:@"uniqueDaysLaunched"];

  v7 = [objc_alloc(objc_opt_class()) initWithRawLaunchCount:v5 uniqueDaysLaunched:v6];
  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  rawLaunchCount = self->_rawLaunchCount;
  uniqueDaysLaunched = self->_uniqueDaysLaunched;

  return [v4 initWithRawLaunchCount:rawLaunchCount uniqueDaysLaunched:uniqueDaysLaunched];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
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

- (BOOL)isGreaterThanOrEqualToData:(id)data
{
  dataCopy = data;
  rawLaunchCount = [(ATXAggregatedAppLaunchData *)self rawLaunchCount];
  if (rawLaunchCount >= [dataCopy rawLaunchCount])
  {
    uniqueDaysLaunched = [(ATXAggregatedAppLaunchData *)self uniqueDaysLaunched];
    v6 = uniqueDaysLaunched >= [dataCopy uniqueDaysLaunched];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end