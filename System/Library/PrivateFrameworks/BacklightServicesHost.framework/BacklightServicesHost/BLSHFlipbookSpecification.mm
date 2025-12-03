@interface BLSHFlipbookSpecification
- (BLSHFlipbookSpecification)initWithSoftMemoryLimit:(unint64_t)limit frameCapacity:(int64_t)capacity framesPerSecond:(double)second minimumGapDuration:(double)duration coaelscingEpsilon:(double)epsilon minimumPrepareInterval:(double)interval maximumRenderInterval:(double)renderInterval surfacePoolSize:(unint64_t)self0 surfaceOverallocationFactor:(double)self1;
- (id)description;
@end

@implementation BLSHFlipbookSpecification

- (BLSHFlipbookSpecification)initWithSoftMemoryLimit:(unint64_t)limit frameCapacity:(int64_t)capacity framesPerSecond:(double)second minimumGapDuration:(double)duration coaelscingEpsilon:(double)epsilon minimumPrepareInterval:(double)interval maximumRenderInterval:(double)renderInterval surfacePoolSize:(unint64_t)self0 surfaceOverallocationFactor:(double)self1
{
  v21.receiver = self;
  v21.super_class = BLSHFlipbookSpecification;
  result = [(BLSHFlipbookSpecification *)&v21 init];
  if (result)
  {
    result->_softMemoryLimit = limit;
    result->_frameCapacity = capacity;
    result->_framesPerSecond = second;
    result->_minimumGapDuration = duration;
    result->_coaelscingEpsilon = epsilon;
    result->_minimumPrepareInterval = interval;
    result->_maximumRenderInterval = renderInterval;
    result->_surfaceAllocationPoolSize = size;
    result->_surfaceOverallocationFactor = factor;
  }

  return result;
}

- (id)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  mEMORY[0x277CF0978] = [MEMORY[0x277CF0978] sharedFormatter];
  v5 = [mEMORY[0x277CF0978] stringFromByteCount:self->_softMemoryLimit];
  v6 = [v3 appendObject:v5 withName:@"softMemoryLimit"];

  v7 = [v3 appendUnsignedInteger:self->_frameCapacity withName:@"frameCapacity"];
  v8 = [v3 appendDouble:@"fps" withName:1 decimalPrecision:self->_framesPerSecond];
  v9 = [v3 appendTimeInterval:@"minGap" withName:1 decomposeUnits:self->_minimumGapDuration];
  v10 = [v3 appendTimeInterval:@"coaelscingEpsilon" withName:1 decomposeUnits:self->_coaelscingEpsilon];
  v11 = [v3 appendTimeInterval:@"minimumPrepareInterval" withName:1 decomposeUnits:self->_minimumPrepareInterval];
  v12 = [v3 appendTimeInterval:@"maximumRenderInterval" withName:1 decomposeUnits:self->_maximumRenderInterval];
  v13 = [v3 appendUnsignedInteger:self->_surfaceAllocationPoolSize withName:@"surfaceAllocationPoolSize"];
  v14 = [v3 appendDouble:@"surfaceOverallocationFactor" withName:2 decimalPrecision:self->_surfaceOverallocationFactor];
  build = [v3 build];

  return build;
}

@end