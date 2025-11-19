@interface BLSHFlipbookInvalidationTelemetryData
- (BLSHFlipbookInvalidationTelemetryData)initWithTimestamp:(double)a3 reason:(id)a4 source:(id)a5 didClearDateSpecifiers:(BOOL)a6 wasReset:(BOOL)a7 invalidatedFramesHistogram:(id)a8 environmentIdentifiers:(id)a9;
- (id)description;
@end

@implementation BLSHFlipbookInvalidationTelemetryData

- (BLSHFlipbookInvalidationTelemetryData)initWithTimestamp:(double)a3 reason:(id)a4 source:(id)a5 didClearDateSpecifiers:(BOOL)a6 wasReset:(BOOL)a7 invalidatedFramesHistogram:(id)a8 environmentIdentifiers:(id)a9
{
  v16 = a4;
  v17 = a5;
  v18 = a8;
  v19 = a9;
  v24.receiver = self;
  v24.super_class = BLSHFlipbookInvalidationTelemetryData;
  v20 = [(BLSHFlipbookInvalidationTelemetryData *)&v24 init];
  v21 = v20;
  if (v20)
  {
    v20->_timestamp = a3;
    objc_storeStrong(&v20->_reason, a4);
    objc_storeStrong(&v21->_source, a5);
    v21->_didClearDateSpecifiers = a6;
    v21->_wasReset = a7;
    objc_storeStrong(&v21->_invalidatedFramesHistogram, a8);
    objc_storeStrong(&v21->_environmentIdentifiers, a9);
  }

  return v21;
}

- (id)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  timestamp = self->_timestamp;
  v5 = BLSShortLoggingStringForContinuousMachTime();
  v6 = [v3 appendObject:v5 withName:@"timestamp"];

  v7 = [v3 appendObject:self->_reason withName:@"reason"];
  v8 = [v3 appendObject:self->_source withName:@"source"];
  v9 = [v3 appendBool:self->_didClearDateSpecifiers withName:@"didClearDateSpecifiers"];
  v10 = [v3 appendBool:self->_wasReset withName:@"wasReset"];
  v11 = [v3 appendObject:self->_invalidatedFramesHistogram withName:@"histogram"];
  [v3 appendArraySection:self->_environmentIdentifiers withName:@"environments" skipIfEmpty:1];
  v12 = [v3 build];

  return v12;
}

@end