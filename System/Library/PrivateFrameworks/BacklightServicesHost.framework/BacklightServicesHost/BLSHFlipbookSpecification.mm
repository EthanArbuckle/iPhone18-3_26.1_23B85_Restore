@interface BLSHFlipbookSpecification
- (BLSHFlipbookSpecification)initWithSoftMemoryLimit:(unint64_t)a3 frameCapacity:(int64_t)a4 framesPerSecond:(double)a5 minimumGapDuration:(double)a6 coaelscingEpsilon:(double)a7 minimumPrepareInterval:(double)a8 maximumRenderInterval:(double)a9 surfacePoolSize:(unint64_t)a10 surfaceOverallocationFactor:(double)a11;
- (id)description;
@end

@implementation BLSHFlipbookSpecification

- (BLSHFlipbookSpecification)initWithSoftMemoryLimit:(unint64_t)a3 frameCapacity:(int64_t)a4 framesPerSecond:(double)a5 minimumGapDuration:(double)a6 coaelscingEpsilon:(double)a7 minimumPrepareInterval:(double)a8 maximumRenderInterval:(double)a9 surfacePoolSize:(unint64_t)a10 surfaceOverallocationFactor:(double)a11
{
  v21.receiver = self;
  v21.super_class = BLSHFlipbookSpecification;
  result = [(BLSHFlipbookSpecification *)&v21 init];
  if (result)
  {
    result->_softMemoryLimit = a3;
    result->_frameCapacity = a4;
    result->_framesPerSecond = a5;
    result->_minimumGapDuration = a6;
    result->_coaelscingEpsilon = a7;
    result->_minimumPrepareInterval = a8;
    result->_maximumRenderInterval = a9;
    result->_surfaceAllocationPoolSize = a10;
    result->_surfaceOverallocationFactor = a11;
  }

  return result;
}

- (id)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [MEMORY[0x277CF0978] sharedFormatter];
  v5 = [v4 stringFromByteCount:self->_softMemoryLimit];
  v6 = [v3 appendObject:v5 withName:@"softMemoryLimit"];

  v7 = [v3 appendUnsignedInteger:self->_frameCapacity withName:@"frameCapacity"];
  v8 = [v3 appendDouble:@"fps" withName:1 decimalPrecision:self->_framesPerSecond];
  v9 = [v3 appendTimeInterval:@"minGap" withName:1 decomposeUnits:self->_minimumGapDuration];
  v10 = [v3 appendTimeInterval:@"coaelscingEpsilon" withName:1 decomposeUnits:self->_coaelscingEpsilon];
  v11 = [v3 appendTimeInterval:@"minimumPrepareInterval" withName:1 decomposeUnits:self->_minimumPrepareInterval];
  v12 = [v3 appendTimeInterval:@"maximumRenderInterval" withName:1 decomposeUnits:self->_maximumRenderInterval];
  v13 = [v3 appendUnsignedInteger:self->_surfaceAllocationPoolSize withName:@"surfaceAllocationPoolSize"];
  v14 = [v3 appendDouble:@"surfaceOverallocationFactor" withName:2 decimalPrecision:self->_surfaceOverallocationFactor];
  v15 = [v3 build];

  return v15;
}

@end