@interface MPSNDArrayCostVolume
- (MPSNDArrayCostVolume)initWithCoder:(id)a3 device:(id)a4;
- (MPSNDArrayCostVolume)initWithDevice:(id)a3;
- (MPSNDArrayCostVolume)initWithDevice:(id)a3 ndArrayCostVolumeDescriptor:(id)a4;
- (MPSNDArrayCostVolumeWindowSizes)windowSizes;
- (id)copyWithZone:(_NSZone *)a3 device:(id)a4;
- (id)destinationArrayDescriptorForSourceArrays:(id)a3 sourceState:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MPSNDArrayCostVolume

- (MPSNDArrayCostVolume)initWithDevice:(id)a3
{
  v4.receiver = self;
  v4.super_class = MPSNDArrayCostVolume;
  result = [(MPSNDArrayMultiaryKernel *)&v4 initWithDevice:a3 sourceCount:3];
  result->super._encode = EncodeCostVolume;
  result->super.super._encodeGradient = 0;
  result->super.super._encodeData = result;
  result->_samplingMode = 0;
  result->_nearestMode = 0;
  result->_dataFormat = 1;
  result->_paddingMode = 0;
  result->_relativeCoordinates = 0;
  result->_normalizeCoordinates = 0;
  result->_alignCorners = 0;
  result->_coordinate1DInWidth = 1;
  result->_constantValue = 0.0;
  result->_windowSizes = vdupq_n_s64(1uLL);
  return result;
}

- (MPSNDArrayCostVolume)initWithDevice:(id)a3 ndArrayCostVolumeDescriptor:(id)a4
{
  v8.receiver = self;
  v8.super_class = MPSNDArrayCostVolume;
  result = [(MPSNDArrayMultiaryKernel *)&v8 initWithDevice:a3 sourceCount:3];
  result->super._encode = EncodeCostVolume;
  result->super.super._encodeGradient = 0;
  result->super.super._encodeData = result;
  v6 = *(a4 + 3);
  result->_samplingMode = *(a4 + 2);
  result->_nearestMode = v6;
  v7 = *(a4 + 5);
  result->_dataFormat = *(a4 + 4);
  result->_paddingMode = v7;
  result->_relativeCoordinates = *(a4 + 24);
  result->_normalizeCoordinates = *(a4 + 25);
  result->_alignCorners = *(a4 + 26);
  result->_coordinate1DInWidth = *(a4 + 27);
  result->_constantValue = *(a4 + 4);
  result->_windowSizes = *(a4 + 40);
  return result;
}

- (MPSNDArrayCostVolume)initWithCoder:(id)a3 device:(id)a4
{
  v9.receiver = self;
  v9.super_class = MPSNDArrayCostVolume;
  v5 = [(MPSNDArrayMultiaryKernel *)&v9 initWithCoder:a3 device:a4];
  v6 = v5;
  if (v5)
  {
    v5->super._encode = EncodeCostVolume;
    v5->super.super._encodeGradient = 0;
    v5->super.super._encodeData = v5;
    v5->_samplingMode = [a3 decodeIntegerForKey:@"MPSNDArrayCostVolume.samplingMode"];
    v6->_nearestMode = [a3 decodeIntegerForKey:@"MPSNDArrayCostVolume.nearestMode"];
    v6->_dataFormat = [a3 decodeIntegerForKey:@"MPSNDArrayCostVolume.dataFormat"];
    v6->_paddingMode = [a3 decodeIntegerForKey:@"MPSNDArrayCostVolume.paddingMode"];
    v6->_relativeCoordinates = [a3 decodeBoolForKey:@"MPSNDArrayCostVolume.relativeCoords"];
    v6->_normalizeCoordinates = [a3 decodeBoolForKey:@"MPSNDArrayCostVolume.normalizeCoords"];
    v6->_alignCorners = [a3 decodeBoolForKey:@"MPSNDArrayCostVolume.alignCorners"];
    v6->_coordinate1DInWidth = [a3 decodeBoolForKey:@"MPSNDArrayCostVolume.coordinate1DInWidth"];
    [a3 decodeDoubleForKey:@"MPSNDArrayCostVolume.constantValue"];
    v6->_constantValue = v7;
    v6->_windowSizes.size[0] = [a3 decodeIntegerForKey:@"MPSNDArrayCostVolume.windowWidth"];
    v6->_windowSizes.size[1] = [a3 decodeIntegerForKey:@"MPSNDArrayCostVolume.windowHeight"];
  }

  return v6;
}

- (id)destinationArrayDescriptorForSourceArrays:(id)a3 sourceState:(id)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v6 = [a3 objectAtIndexedSubscript:{0, a4}];
  v7 = MEMORY[0x277CD7410];
  v15[0] = *(v6 + *MEMORY[0x277CD7410]);
  v15[1] = *([a3 objectAtIndexedSubscript:0] + *v7 + 4);
  v16 = *([a3 objectAtIndexedSubscript:0] + *v7 + 8);
  v17 = *([a3 objectAtIndexedSubscript:0] + *v7 + 12);
  v18 = *([a3 objectAtIndexedSubscript:0] + *v7 + 16);
  v19 = *([a3 objectAtIndexedSubscript:0] + *v7 + 20);
  v20 = *([a3 objectAtIndexedSubscript:0] + *v7 + 24);
  v21 = *([a3 objectAtIndexedSubscript:0] + *v7 + 28);
  v22 = *([a3 objectAtIndexedSubscript:0] + *v7 + 32);
  v23 = *([a3 objectAtIndexedSubscript:0] + *v7 + 36);
  v24 = *([a3 objectAtIndexedSubscript:0] + *v7 + 40);
  v25 = *([a3 objectAtIndexedSubscript:0] + *v7 + 44);
  v26 = *([a3 objectAtIndexedSubscript:0] + *v7 + 48);
  v27 = *([a3 objectAtIndexedSubscript:0] + *v7 + 52);
  v28 = *([a3 objectAtIndexedSubscript:0] + *v7 + 56);
  v29 = *([a3 objectAtIndexedSubscript:0] + *v7 + 60);
  v8 = self->_windowSizes.size[1] * self->_windowSizes.size[0];
  if (self->_dataFormat == 1)
  {
    v15[0] = self->_windowSizes.size[1] * self->_windowSizes.size[0];
  }

  else
  {
    v16 = self->_windowSizes.size[1] * self->_windowSizes.size[0];
  }

  v9 = MEMORY[0x277CD7268];
  v10 = [a3 objectAtIndexedSubscript:0];
  v11 = *(v10 + *MEMORY[0x277CD73C8]);
  v12 = [a3 objectAtIndexedSubscript:0];
  result = [v9 descriptorWithDataType:v11 dimensionCount:*(v12 + *MEMORY[0x277CD73F0]) dimensionSizes:v15];
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = self;
  *(&self->super.super.super.super.isa + *MEMORY[0x277CD7358] + 2) = 1;
  v5.receiver = self;
  v5.super_class = MPSNDArrayCostVolume;
  [(MPSNDArrayMultiaryBase *)&v5 encodeWithCoder:?];
  [a3 encodeInteger:v4->_samplingMode forKey:@"MPSNDArrayCostVolume.samplingMode"];
  [a3 encodeInteger:v4->_nearestMode forKey:@"MPSNDArrayCostVolume.nearestMode"];
  [a3 encodeInteger:v4->_dataFormat forKey:@"MPSNDArrayCostVolume.dataFormat"];
  [a3 encodeInteger:v4->_paddingMode forKey:@"MPSNDArrayCostVolume.paddingMode"];
  [a3 encodeBool:v4->_relativeCoordinates forKey:@"MPSNDArrayCostVolume.relativeCoords"];
  [a3 encodeBool:v4->_normalizeCoordinates forKey:@"MPSNDArrayCostVolume.normalizeCoords"];
  [a3 encodeBool:v4->_alignCorners forKey:@"MPSNDArrayCostVolume.alignCorners"];
  [a3 encodeBool:v4->_coordinate1DInWidth forKey:@"MPSNDArrayCostVolume.coordinate1DInWidth"];
  [a3 encodeDouble:@"MPSNDArrayCostVolume.constantValue" forKey:v4->_constantValue];
  v4 = (v4 + 176);
  [a3 encodeInteger:v4->super.super.super.super.isa forKey:@"MPSNDArrayCostVolume.windowWidth"];
  [a3 encodeInteger:v4->super.super.super._options forKey:@"MPSNDArrayCostVolume.windowHeight"];
}

- (id)copyWithZone:(_NSZone *)a3 device:(id)a4
{
  v6.receiver = self;
  v6.super_class = MPSNDArrayCostVolume;
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
    *(result + 163) = self->_coordinate1DInWidth;
    *(result + 21) = *&self->_constantValue;
    *(result + 22) = self->_windowSizes.size[0];
    *(result + 23) = self->_windowSizes.size[1];
  }

  return result;
}

- (MPSNDArrayCostVolumeWindowSizes)windowSizes
{
  p_windowSizes = &self->_windowSizes;
  v3 = self->_windowSizes.size[0];
  v4 = p_windowSizes->size[1];
  result.size[1] = v4;
  result.size[0] = v3;
  return result;
}

@end