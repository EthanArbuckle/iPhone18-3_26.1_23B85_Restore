@interface CPNowPlayingSportsClock
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToSportsClock:(id)clock;
- (CPNowPlayingSportsClock)initWithCoder:(id)coder;
- (CPNowPlayingSportsClock)initWithElapsedTime:(double)time paused:(BOOL)paused;
- (CPNowPlayingSportsClock)initWithTimeRemaining:(double)remaining paused:(BOOL)paused;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CPNowPlayingSportsClock

- (CPNowPlayingSportsClock)initWithElapsedTime:(double)time paused:(BOOL)paused
{
  v7.receiver = self;
  v7.super_class = CPNowPlayingSportsClock;
  result = [(CPNowPlayingSportsClock *)&v7 init];
  if (result)
  {
    result->_timeValue = time;
    result->_paused = paused;
    result->_countsUp = 1;
  }

  return result;
}

- (CPNowPlayingSportsClock)initWithTimeRemaining:(double)remaining paused:(BOOL)paused
{
  v7.receiver = self;
  v7.super_class = CPNowPlayingSportsClock;
  result = [(CPNowPlayingSportsClock *)&v7 init];
  if (result)
  {
    result->_timeValue = remaining;
    result->_paused = paused;
    result->_countsUp = 0;
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(CPNowPlayingSportsClock *)self isEqualToSportsClock:equalCopy];

  return v5;
}

- (BOOL)isEqualToSportsClock:(id)clock
{
  clockCopy = clock;
  [(CPNowPlayingSportsClock *)self timeValue];
  v6 = v5;
  [clockCopy timeValue];
  if (v6 == v7 && (v8 = -[CPNowPlayingSportsClock isPaused](self, "isPaused"), v8 == [clockCopy isPaused]))
  {
    countsUp = [(CPNowPlayingSportsClock *)self countsUp];
    v9 = countsUp ^ [clockCopy countsUp] ^ 1;
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
  isPaused = [(CPNowPlayingSportsClock *)self isPaused];
  v7 = isPaused ^ [(CPNowPlayingSportsClock *)self countsUp];

  return v5 ^ v7;
}

- (CPNowPlayingSportsClock)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = CPNowPlayingSportsClock;
  v5 = [(CPNowPlayingSportsClock *)&v8 init];
  if (v5)
  {
    [coderCopy decodeDoubleForKey:@"kCPNowPlayingSportsTimerTimeValueKey"];
    v5->_timeValue = v6;
    v5->_paused = [coderCopy decodeBoolForKey:@"kCPNowPlayingSportsTimerPausedKey"];
    v5->_countsUp = [coderCopy decodeBoolForKey:@"kCPNowPlayingSportsTimerCountsUpKey"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [(CPNowPlayingSportsClock *)self timeValue];
  [coderCopy encodeDouble:@"kCPNowPlayingSportsTimerTimeValueKey" forKey:?];
  [coderCopy encodeBool:-[CPNowPlayingSportsClock isPaused](self forKey:{"isPaused"), @"kCPNowPlayingSportsTimerPausedKey"}];
  [coderCopy encodeBool:-[CPNowPlayingSportsClock countsUp](self forKey:{"countsUp"), @"kCPNowPlayingSportsTimerCountsUpKey"}];
}

@end