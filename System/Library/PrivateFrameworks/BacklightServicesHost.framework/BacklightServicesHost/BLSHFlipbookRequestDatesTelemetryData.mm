@interface BLSHFlipbookRequestDatesTelemetryData
- (BLSHFlipbookRequestDatesTelemetryData)initWithTimestamp:(double)timestamp environmentIdentifiers:(id)identifiers shortestInterval:(double)interval averageInterval:(double)averageInterval longestInterval:(double)longestInterval completionDuration:(double)duration didReset:(BOOL)reset timedOutCount:(unsigned int)self0;
- (id)description;
@end

@implementation BLSHFlipbookRequestDatesTelemetryData

- (BLSHFlipbookRequestDatesTelemetryData)initWithTimestamp:(double)timestamp environmentIdentifiers:(id)identifiers shortestInterval:(double)interval averageInterval:(double)averageInterval longestInterval:(double)longestInterval completionDuration:(double)duration didReset:(BOOL)reset timedOutCount:(unsigned int)self0
{
  identifiersCopy = identifiers;
  v23.receiver = self;
  v23.super_class = BLSHFlipbookRequestDatesTelemetryData;
  v20 = [(BLSHFlipbookRequestDatesTelemetryData *)&v23 init];
  v21 = v20;
  if (v20)
  {
    v20->_timestamp = timestamp;
    objc_storeStrong(&v20->_environmentIdentifiers, identifiers);
    v21->_shortestInterval = interval;
    v21->_averageInterval = averageInterval;
    v21->_longestInterval = longestInterval;
    v21->_completionDuration = duration;
    v21->_didReset = reset;
    v21->_timedOutCount = count;
  }

  return v21;
}

- (id)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  timestamp = self->_timestamp;
  v5 = BLSShortLoggingStringForContinuousMachTime();
  v6 = [v3 appendObject:v5 withName:@"timestamp"];

  v7 = [v3 appendTimeInterval:@"shortestInterval" withName:1 decomposeUnits:self->_shortestInterval];
  v8 = [v3 appendTimeInterval:@"averageInterval" withName:1 decomposeUnits:self->_averageInterval];
  v9 = [v3 appendTimeInterval:@"longestInterval" withName:1 decomposeUnits:self->_longestInterval];
  v10 = [v3 appendTimeInterval:@"completionDuration" withName:1 decomposeUnits:self->_completionDuration];
  v11 = [v3 appendBool:self->_didReset withName:@"didReset"];
  v12 = [v3 appendUnsignedInteger:self->_timedOutCount withName:@"timedOutCount"];
  [v3 appendArraySection:self->_environmentIdentifiers withName:@"environments" skipIfEmpty:1];
  build = [v3 build];

  return build;
}

@end