@interface MPSNDArrayCostVolumeDescriptor
- (MPSNDArrayCostVolumeDescriptor)init;
- (MPSNDArrayCostVolumeWindowSizes)windowSizes;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation MPSNDArrayCostVolumeDescriptor

- (MPSNDArrayCostVolumeDescriptor)init
{
  v3.receiver = self;
  v3.super_class = MPSNDArrayCostVolumeDescriptor;
  result = [(MPSNDArrayCostVolumeDescriptor *)&v3 init];
  if (result)
  {
    *&result->_samplingMode = 0;
    *&result->_dataFormat = 1;
    *(&result->_paddingMode + 3) = 0;
    result->_coordinate1DInWidth = 1;
    result->_constantValue = 0.0;
    result->_windowSizes = vdupq_n_s64(1uLL);
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  if (result)
  {
    *(result + 8) = *&self->_samplingMode;
    *(result + 24) = self->_relativeCoordinates;
    *(result + 25) = self->_normalizeCoordinates;
    *(result + 26) = self->_alignCorners;
    *(result + 27) = self->_coordinate1DInWidth;
    *(result + 4) = *&self->_constantValue;
    *(result + 40) = self->_windowSizes;
  }

  return result;
}

- (MPSNDArrayCostVolumeWindowSizes)windowSizes
{
  v2 = self->_windowSizes.size[1];
  v3 = self->_windowSizes.size[0];
  result.size[1] = v2;
  result.size[0] = v3;
  return result;
}

@end