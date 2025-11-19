@interface MPSNDArrayGridSample
- (MPSNDArrayGridSample)initWithCoder:(id)a3 device:(id)a4;
- (MPSNDArrayGridSample)initWithDevice:(id)a3;
- (id)copyWithZone:(_NSZone *)a3 device:(id)a4;
- (id)destinationArrayDescriptorForSourceArrays:(id)a3 sourceState:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MPSNDArrayGridSample

- (MPSNDArrayGridSample)initWithDevice:(id)a3
{
  v4.receiver = self;
  v4.super_class = MPSNDArrayGridSample;
  result = [(MPSNDArrayBinaryKernel *)&v4 initWithDevice:a3];
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

- (MPSNDArrayGridSample)initWithCoder:(id)a3 device:(id)a4
{
  v10.receiver = self;
  v10.super_class = MPSNDArrayGridSample;
  result = [(MPSNDArrayBinaryKernel *)&v10 initWithCoder:a3 device:a4];
  if (result)
  {
    result->super.super._encode = EncodeGridSample;
    result->super.super.super._encodeGradient = EncodeGridSampleGradient;
    result->super.super.super._encodeData = result;
    v6 = result;
    result->_samplingMode = [a3 decodeIntegerForKey:@"MPSNDArrayGridSample.samplingMode"];
    v6->_nearestMode = [a3 decodeIntegerForKey:@"MPSNDArrayGridSample.nearestMode"];
    v6->_dataFormat = [a3 decodeIntegerForKey:@"MPSNDArrayGridSample.dataFormat"];
    v6->_paddingMode = [a3 decodeIntegerForKey:@"MPSNDArrayGridSample.paddingMode"];
    v6->_relativeCoordinates = [a3 decodeBoolForKey:@"MPSNDArrayGridSample.relativeCoords"];
    v6->_normalizeCoordinates = [a3 decodeBoolForKey:@"MPSNDArrayGridSample.normalizeCoords"];
    v6->_alignCorners = [a3 decodeBoolForKey:@"MPSNDArrayGridSample.alignCorners"];
    [a3 decodeDoubleForKey:@"MPSNDArrayGridSample.constantValue"];
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

- (id)destinationArrayDescriptorForSourceArrays:(id)a3 sourceState:(id)a4
{
  v4 = [a3 objectAtIndexedSubscript:{0, a4}];

  return [v4 descriptor];
}

- (void)encodeWithCoder:(id)a3
{
  *(&self->super.super.super.super.super.isa + *MEMORY[0x277CD7358] + 2) = 1;
  v5.receiver = self;
  v5.super_class = MPSNDArrayGridSample;
  [(MPSNDArrayMultiaryBase *)&v5 encodeWithCoder:?];
  [a3 encodeInteger:self->_samplingMode forKey:@"MPSNDArrayGridSample.samplingMode"];
  [a3 encodeInteger:self->_nearestMode forKey:@"MPSNDArrayGridSample.nearestMode"];
  [a3 encodeInteger:self->_dataFormat forKey:@"MPSNDArrayGridSample.dataFormat"];
  [a3 encodeInteger:self->_paddingMode forKey:@"MPSNDArrayGridSample.paddingMode"];
  [a3 encodeBool:self->_relativeCoordinates forKey:@"MPSNDArrayGridSample.relativeCoords"];
  [a3 encodeBool:self->_normalizeCoordinates forKey:@"MPSNDArrayGridSample.normalizeCoords"];
  [a3 encodeBool:self->_alignCorners forKey:@"MPSNDArrayGridSample.alignCorners"];
  [a3 encodeDouble:@"MPSNDArrayGridSample.constantValue" forKey:self->_constantValue];
}

- (id)copyWithZone:(_NSZone *)a3 device:(id)a4
{
  v6.receiver = self;
  v6.super_class = MPSNDArrayGridSample;
  result = [(MPSNDArrayMultiaryKernel *)&v6 copyWithZone:a3 device:a4];
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