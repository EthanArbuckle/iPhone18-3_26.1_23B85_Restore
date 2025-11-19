@interface OSAStabilityRate
- (OSAStabilityRate)initWithAppUptime:(double)a3 crashCount:(unint64_t)a4;
@end

@implementation OSAStabilityRate

- (OSAStabilityRate)initWithAppUptime:(double)a3 crashCount:(unint64_t)a4
{
  v11.receiver = self;
  v11.super_class = OSAStabilityRate;
  v6 = [(OSAStabilityRate *)&v11 init];
  v7 = v6;
  if (v6)
  {
    v6->_uptime = a3;
    v6->_crashCount = a4;
    if (a4)
    {
      v8 = [NSNumber numberWithDouble:a3 / a4];
      MTBF = v7->_MTBF;
      v7->_MTBF = v8;
    }
  }

  return v7;
}

@end