@interface MPSNDArrayCropResize
- (MPSNDArrayCropResize)initWithCoder:(id)a3 device:(id)a4;
- (MPSNDArrayCropResize)initWithDevice:(id)a3;
- (id)copyWithZone:(_NSZone *)a3 device:(id)a4;
- (id)destinationArrayDescriptorForSourceArrays:(id)a3 sourceState:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MPSNDArrayCropResize

- (id)destinationArrayDescriptorForSourceArrays:(id)a3 sourceState:(id)a4
{
  v15[4] = *MEMORY[0x277D85DE8];
  v6 = [a3 objectAtIndexedSubscript:{0, a4}];
  v7 = [a3 objectAtIndexedSubscript:1];
  v8 = *MEMORY[0x277CD7410];
  v9 = *MEMORY[0x277CD73D8];
  v10 = *(v7 + v8 + 4 * (*(v7 + v9 + 1) & 0xF));
  v11 = *&v6[4 * (v6[v9 + 2] & 0xF) + v8];
  resizeHeight = self->_resizeHeight;
  v15[0] = self->_resizeWidth;
  v15[1] = resizeHeight;
  v15[2] = v11;
  v15[3] = v10;
  result = [MEMORY[0x277CD7268] descriptorWithDataType:objc_msgSend(v6 dimensionCount:"dataType") dimensionSizes:{4, v15}];
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

- (MPSNDArrayCropResize)initWithDevice:(id)a3
{
  v4.receiver = self;
  v4.super_class = MPSNDArrayCropResize;
  result = [(MPSNDArrayMultiaryKernel *)&v4 initWithDevice:a3 sourceCount:3];
  if (result)
  {
    result->super._encode = EncodeArrayCropResize;
    result->super.super._encodeData = result;
    result->_resizeHeight = 0;
    result->_resizeWidth = 0;
    result->_normalizeCoordinates = 1;
    result->_spatialScale = 1.0;
    result->_resampleMode = 1;
    result->_samplingMode = 0;
    result->_coordinateMode = 0;
  }

  return result;
}

- (MPSNDArrayCropResize)initWithCoder:(id)a3 device:(id)a4
{
  v9.receiver = self;
  v9.super_class = MPSNDArrayCropResize;
  result = [(MPSNDArrayMultiaryKernel *)&v9 initWithCoder:a3 device:a4];
  if (result)
  {
    result->super._encode = EncodeArrayCropResize;
    result->super.super._encodeData = result;
    v6 = result;
    result->_resizeHeight = [a3 decodeInt64ForKey:@"MPSNDArrayCropResize.resizeHeight"];
    v6->_resizeWidth = [a3 decodeInt64ForKey:@"MPSNDArrayCropResize.resizeWidth"];
    v6->_normalizeCoordinates = [a3 decodeBoolForKey:@"MPSNDArrayCropResize.normalizeCoordinates"];
    [a3 decodeFloatForKey:@"MPSNDArrayCropResize.spatialScale"];
    v6->_spatialScale = v7;
    v6->_resampleMode = [a3 decodeInt64ForKey:@"MPSNDArrayCropResize.resampleMode"];
    v6->_samplingMode = [a3 decodeInt64ForKey:@"MPSNDArrayCropResize.samplingMode"];
    v8 = [a3 decodeInt64ForKey:@"MPSNDArrayCropResize.coordinateMode"];
    result = v6;
    v6->_coordinateMode = v8;
  }

  return result;
}

- (void)encodeWithCoder:(id)a3
{
  *(&self->super.super.super.super.isa + *MEMORY[0x277CD7358] + 2) = 1;
  v6.receiver = self;
  v6.super_class = MPSNDArrayCropResize;
  [(MPSNDArrayMultiaryBase *)&v6 encodeWithCoder:?];
  [a3 encodeInt64:self->_resizeHeight forKey:@"MPSNDArrayCropResize.resizeHeight"];
  [a3 encodeInt64:self->_resizeWidth forKey:@"MPSNDArrayCropResize.resizeWidth"];
  [a3 encodeBool:self->_normalizeCoordinates forKey:@"MPSNDArrayCropResize.normalizeCoordinates"];
  *&v5 = self->_spatialScale;
  [a3 encodeFloat:@"MPSNDArrayCropResize.spatialScale" forKey:v5];
  [a3 encodeInt64:self->_resampleMode forKey:@"MPSNDArrayCropResize.resampleMode"];
  [a3 encodeInt64:self->_samplingMode forKey:@"MPSNDArrayCropResize.samplingMode"];
  [a3 encodeInt64:self->_coordinateMode forKey:@"MPSNDArrayCropResize.coordinateMode"];
}

- (id)copyWithZone:(_NSZone *)a3 device:(id)a4
{
  v6.receiver = self;
  v6.super_class = MPSNDArrayCropResize;
  result = [(MPSNDArrayMultiaryKernel *)&v6 copyWithZone:a3 device:a4];
  if (result)
  {
    self->super._encode = EncodeArrayCropResize;
    self->super.super._encodeData = self;
    *(result + 21) = self->_resizeHeight;
    *(result + 22) = self->_resizeWidth;
    *(result + 144) = self->_normalizeCoordinates;
    *(result + 37) = LODWORD(self->_spatialScale);
    *(result + 38) = self->_resampleMode;
    *(result + 39) = self->_samplingMode;
    *(result + 40) = self->_coordinateMode;
  }

  return result;
}

@end