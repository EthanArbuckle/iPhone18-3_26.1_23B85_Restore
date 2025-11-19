@interface CPNowPlayingSportsClock
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToSportsClock:(id)a3;
- (CPNowPlayingSportsClock)initWithCoder:(id)a3;
- (CPNowPlayingSportsClock)initWithElapsedTime:(double)a3 paused:(BOOL)a4;
- (CPNowPlayingSportsClock)initWithTimeRemaining:(double)a3 paused:(BOOL)a4;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CPNowPlayingSportsClock

- (CPNowPlayingSportsClock)initWithElapsedTime:(double)a3 paused:(BOOL)a4
{
  v7.receiver = self;
  v7.super_class = CPNowPlayingSportsClock;
  result = [(CPNowPlayingSportsClock *)&v7 init];
  if (result)
  {
    result->_timeValue = a3;
    result->_paused = a4;
    result->_countsUp = 1;
  }

  return result;
}

- (CPNowPlayingSportsClock)initWithTimeRemaining:(double)a3 paused:(BOOL)a4
{
  v7.receiver = self;
  v7.super_class = CPNowPlayingSportsClock;
  result = [(CPNowPlayingSportsClock *)&v7 init];
  if (result)
  {
    result->_timeValue = a3;
    result->_paused = a4;
    result->_countsUp = 0;
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(CPNowPlayingSportsClock *)self isEqualToSportsClock:v4];

  return v5;
}

- (BOOL)isEqualToSportsClock:(id)a3
{
  v4 = a3;
  [(CPNowPlayingSportsClock *)self timeValue];
  v6 = v5;
  [v4 timeValue];
  if (v6 == v7 && (v8 = -[CPNowPlayingSportsClock isPaused](self, "isPaused"), v8 == [v4 isPaused]))
  {
    v10 = [(CPNowPlayingSportsClock *)self countsUp];
    v9 = v10 ^ [v4 countsUp] ^ 1;
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9;
}

- (unint64_t)hash
{
  v3 = MEMORY[0x277CCABB0];
  [(CPNowPlayingSportsClock *)self timeValue];
  v4 = [v3 numberWithDouble:?];
  v5 = [v4 hash];
  v6 = [(CPNowPlayingSportsClock *)self isPaused];
  v7 = v6 ^ [(CPNowPlayingSportsClock *)self countsUp];

  return v5 ^ v7;
}

- (CPNowPlayingSportsClock)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = CPNowPlayingSportsClock;
  v5 = [(CPNowPlayingSportsClock *)&v8 init];
  if (v5)
  {
    [v4 decodeDoubleForKey:@"kCPNowPlayingSportsTimerTimeValueKey"];
    v5->_timeValue = v6;
    v5->_paused = [v4 decodeBoolForKey:@"kCPNowPlayingSportsTimerPausedKey"];
    v5->_countsUp = [v4 decodeBoolForKey:@"kCPNowPlayingSportsTimerCountsUpKey"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [(CPNowPlayingSportsClock *)self timeValue];
  [v4 encodeDouble:@"kCPNowPlayingSportsTimerTimeValueKey" forKey:?];
  [v4 encodeBool:-[CPNowPlayingSportsClock isPaused](self forKey:{"isPaused"), @"kCPNowPlayingSportsTimerPausedKey"}];
  [v4 encodeBool:-[CPNowPlayingSportsClock countsUp](self forKey:{"countsUp"), @"kCPNowPlayingSportsTimerCountsUpKey"}];
}

@end