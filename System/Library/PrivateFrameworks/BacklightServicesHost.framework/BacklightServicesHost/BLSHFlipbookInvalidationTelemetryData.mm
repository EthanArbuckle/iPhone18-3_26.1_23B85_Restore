@interface BLSHFlipbookInvalidationTelemetryData
- (BLSHFlipbookInvalidationTelemetryData)initWithTimestamp:(double)timestamp reason:(id)reason source:(id)source didClearDateSpecifiers:(BOOL)specifiers wasReset:(BOOL)reset invalidatedFramesHistogram:(id)histogram environmentIdentifiers:(id)identifiers;
- (id)description;
@end

@implementation BLSHFlipbookInvalidationTelemetryData

- (BLSHFlipbookInvalidationTelemetryData)initWithTimestamp:(double)timestamp reason:(id)reason source:(id)source didClearDateSpecifiers:(BOOL)specifiers wasReset:(BOOL)reset invalidatedFramesHistogram:(id)histogram environmentIdentifiers:(id)identifiers
{
  reasonCopy = reason;
  sourceCopy = source;
  histogramCopy = histogram;
  identifiersCopy = identifiers;
  v24.receiver = self;
  v24.super_class = BLSHFlipbookInvalidationTelemetryData;
  v20 = [(BLSHFlipbookInvalidationTelemetryData *)&v24 init];
  v21 = v20;
  if (v20)
  {
    v20->_timestamp = timestamp;
    objc_storeStrong(&v20->_reason, reason);
    objc_storeStrong(&v21->_source, source);
    v21->_didClearDateSpecifiers = specifiers;
    v21->_wasReset = reset;
    objc_storeStrong(&v21->_invalidatedFramesHistogram, histogram);
    objc_storeStrong(&v21->_environmentIdentifiers, identifiers);
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
  build = [v3 build];

  return build;
}

@end