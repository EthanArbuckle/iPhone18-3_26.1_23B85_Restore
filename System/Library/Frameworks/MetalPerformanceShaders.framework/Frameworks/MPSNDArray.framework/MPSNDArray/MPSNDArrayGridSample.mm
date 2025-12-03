@interface MPSNDArrayGridSample
- (MPSNDArrayGridSample)initWithCoder:(id)coder device:(id)device;
- (MPSNDArrayGridSample)initWithDevice:(id)device;
- (id)copyWithZone:(_NSZone *)zone device:(id)device;
- (id)destinationArrayDescriptorForSourceArrays:(id)arrays sourceState:(id)state;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MPSNDArrayGridSample

- (MPSNDArrayGridSample)initWithDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = MPSNDArrayGridSample;
  result = [(MPSNDArrayBinaryKernel *)&v4 initWithDevice:device];
  result->super.super._encode = EncodeGridSample;
  result->super.super.super._encodeGradient = EncodeGridSampleGradient;
  result->super.super.super._encodeData = result;
  result->_samplingMode = 0;
  result->_nearestMode = 0;
  result->_dataFormat = 1;
  result->_paddingMode = 0;
  result->_relativeCoordinates = 0;
  result->_normalizeCoordinates = 0;
  result->_alignCorners = 0;
  result->_constantValue = 0.0;
  return result;
}

- (MPSNDArrayGridSample)initWithCoder:(id)coder device:(id)device
{
  v10.receiver = self;
  v10.super_class = MPSNDArrayGridSample;
  result = [(MPSNDArrayBinaryKernel *)&v10 initWithCoder:coder device:device];
  if (result)
  {
    result->super.super._encode = EncodeGridSample;
    result->super.super.super._encodeGradient = EncodeGridSampleGradient;
    result->super.super.super._encodeData = result;
    v6 = result;
    result->_samplingMode = [coder decodeIntegerForKey:@"MPSNDArrayGridSample.samplingMode"];
    v6->_nearestMode = [coder decodeIntegerForKey:@"MPSNDArrayGridSample.nearestMode"];
    v6->_dataFormat = [coder decodeIntegerForKey:@"MPSNDArrayGridSample.dataFormat"];
    v6->_paddingMode = [coder decodeIntegerForKey:@"MPSNDArrayGridSample.paddingMode"];
    v6->_relativeCoordinates = [coder decodeBoolForKey:@"MPSNDArrayGridSample.relativeCoords"];
    v6->_normalizeCoordinates = [coder decodeBoolForKey:@"MPSNDArrayGridSample.normalizeCoords"];
    v6->_alignCorners = [coder decodeBoolForKey:@"MPSNDArrayGridSample.alignCorners"];
    [coder decodeDoubleForKey:@"MPSNDArrayGridSample.constantValue"];
    result = v6;
    v8 = v7 == 0.0;
    v9 = 0.0;
    if (!v8)
    {
      v9 = 1.0;
    }

    v6->_constantValue = v9;
  }

  return result;
}

- (id)destinationArrayDescriptorForSourceArrays:(id)arrays sourceState:(id)state
{
  v4 = [arrays objectAtIndexedSubscript:{0, state}];

  return [v4 descriptor];
}

- (void)encodeWithCoder:(id)coder
{
  *(&self->super.super.super.super.super.isa + *MEMORY[0x277CD7358] + 2) = 1;
  v5.receiver = self;
  v5.super_class = MPSNDArrayGridSample;
  [(MPSNDArrayMultiaryBase *)&v5 encodeWithCoder:?];
  [coder encodeInteger:self->_samplingMode forKey:@"MPSNDArrayGridSample.samplingMode"];
  [coder encodeInteger:self->_nearestMode forKey:@"MPSNDArrayGridSample.nearestMode"];
  [coder encodeInteger:self->_dataFormat forKey:@"MPSNDArrayGridSample.dataFormat"];
  [coder encodeInteger:self->_paddingMode forKey:@"MPSNDArrayGridSample.paddingMode"];
  [coder encodeBool:self->_relativeCoordinates forKey:@"MPSNDArrayGridSample.relativeCoords"];
  [coder encodeBool:self->_normalizeCoordinates forKey:@"MPSNDArrayGridSample.normalizeCoords"];
  [coder encodeBool:self->_alignCorners forKey:@"MPSNDArrayGridSample.alignCorners"];
  [coder encodeDouble:@"MPSNDArrayGridSample.constantValue" forKey:self->_constantValue];
}

- (id)copyWithZone:(_NSZone *)zone device:(id)device
{
  v6.receiver = self;
  v6.super_class = MPSNDArrayGridSample;
  result = [(MPSNDArrayMultiaryKernel *)&v6 copyWithZone:zone device:device];
  if (result)
  {
    *(result + 36) = self->_samplingMode;
    *(result + 37) = self->_nearestMode;
    *(result + 38) = self->_dataFormat;
    *(result + 39) = self->_paddingMode;
    *(result + 160) = self->_relativeCoordinates;
    *(result + 161) = self->_normalizeCoordinates;
    *(result + 162) = self->_alignCorners;
    *(result + 21) = *&self->_constantValue;
  }

  return result;
}

@end