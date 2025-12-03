@interface OSAStabilityRate
- (OSAStabilityRate)initWithAppUptime:(double)uptime crashCount:(unint64_t)count;
@end

@implementation OSAStabilityRate

- (OSAStabilityRate)initWithAppUptime:(double)uptime crashCount:(unint64_t)count
{
  v11.receiver = self;
  v11.super_class = OSAStabilityRate;
  v6 = [(OSAStabilityRate *)&v11 init];
  v7 = v6;
  if (v6)
  {
    v6->_uptime = uptime;
    v6->_crashCount = count;
    if (count)
    {
      v8 = [NSNumber numberWithDouble:uptime / count];
      MTBF = v7->_MTBF;
      v7->_MTBF = v8;
    }
  }

  return v7;
}

@end