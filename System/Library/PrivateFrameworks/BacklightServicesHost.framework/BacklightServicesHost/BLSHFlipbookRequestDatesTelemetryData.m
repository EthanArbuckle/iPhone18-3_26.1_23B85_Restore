@interface BLSHFlipbookRequestDatesTelemetryData
- (BLSHFlipbookRequestDatesTelemetryData)initWithTimestamp:(double)a3 environmentIdentifiers:(id)a4 shortestInterval:(double)a5 averageInterval:(double)a6 longestInterval:(double)a7 completionDuration:(double)a8 didReset:(BOOL)a9 timedOutCount:(unsigned int)a10;
- (id)description;
@end

@implementation BLSHFlipbookRequestDatesTelemetryData

- (BLSHFlipbookRequestDatesTelemetryData)initWithTimestamp:(double)a3 environmentIdentifiers:(id)a4 shortestInterval:(double)a5 averageInterval:(double)a6 longestInterval:(double)a7 completionDuration:(double)a8 didReset:(BOOL)a9 timedOutCount:(unsigned int)a10
{
  v19 = a4;
  v23.receiver = self;
  v23.super_class = BLSHFlipbookRequestDatesTelemetryData;
  v20 = [(BLSHFlipbookRequestDatesTelemetryData *)&v23 init];
  v21 = v20;
  if (v20)
  {
    v20->_timestamp = a3;
    objc_storeStrong(&v20->_environmentIdentifiers, a4);
    v21->_shortestInterval = a5;
    v21->_averageInterval = a6;
    v21->_longestInterval = a7;
    v21->_completionDuration = a8;
    v21->_didReset = a9;
    v21->_timedOutCount = a10;
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
  v13 = [v3 build];

  return v13;
}

@end