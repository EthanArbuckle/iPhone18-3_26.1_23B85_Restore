@interface ADVisualDepthMetalDescriptor
- (ADVisualDepthMetalDescriptor)initWithColorInputSize:(CGSize)size colorInputFormat:(unsigned int)format rasterizedMeshInputSize:(CGSize)inputSize occlusionSize:(CGSize)occlusionSize povcSize:(CGSize)povcSize predictsDisparity:(BOOL)disparity;
@end

@implementation ADVisualDepthMetalDescriptor

- (ADVisualDepthMetalDescriptor)initWithColorInputSize:(CGSize)size colorInputFormat:(unsigned int)format rasterizedMeshInputSize:(CGSize)inputSize occlusionSize:(CGSize)occlusionSize povcSize:(CGSize)povcSize predictsDisparity:(BOOL)disparity
{
  disparityCopy = disparity;
  height = povcSize.height;
  width = povcSize.width;
  v11 = occlusionSize.height;
  v12 = occlusionSize.width;
  v13 = inputSize.height;
  v14 = inputSize.width;
  v15 = *&format;
  v16 = size.height;
  v17 = size.width;
  v41.receiver = self;
  v41.super_class = ADVisualDepthMetalDescriptor;
  v18 = [(ADVisualDepthMetalDescriptor *)&v41 init];
  if (v18)
  {
    if (disparityCopy)
    {
      v19 = 1751411059;
    }

    else
    {
      v19 = 1751410032;
    }

    v20 = [MEMORY[0x277CED078] descriptorWithDefaultSize:v15 pixelFormat:v17, v16];
    primaryColorInput = v18->_primaryColorInput;
    v18->_primaryColorInput = v20;

    height = [MEMORY[0x277CED078] descriptorWithDefaultSize:v19 pixelFormat:width, height];
    primaryPredictionOutput = v18->_primaryPredictionOutput;
    v18->_primaryPredictionOutput = height;

    height2 = [MEMORY[0x277CED078] descriptorWithDefaultSize:1278226536 pixelFormat:width, height];
    primaryPredictionConfidenceOutput = v18->_primaryPredictionConfidenceOutput;
    v18->_primaryPredictionConfidenceOutput = height2;

    v26 = [MEMORY[0x277CED078] descriptorWithDefaultSize:v15 pixelFormat:v17, v16];
    secondaryColorInput = v18->_secondaryColorInput;
    v18->_secondaryColorInput = v26;

    height3 = [MEMORY[0x277CED078] descriptorWithDefaultSize:v19 pixelFormat:width, height];
    secondaryPredictionOutput = v18->_secondaryPredictionOutput;
    v18->_secondaryPredictionOutput = height3;

    height4 = [MEMORY[0x277CED078] descriptorWithDefaultSize:1278226536 pixelFormat:width, height];
    secondaryPredictionConfidenceOutput = v18->_secondaryPredictionConfidenceOutput;
    v18->_secondaryPredictionConfidenceOutput = height4;

    v32 = [MEMORY[0x277CED078] descriptorWithDefaultSize:1380411457 pixelFormat:v12, v11];
    primaryOcclusionMapOutput = v18->_primaryOcclusionMapOutput;
    v18->_primaryOcclusionMapOutput = v32;

    v34 = [MEMORY[0x277CED078] descriptorWithDefaultSize:1380411457 pixelFormat:v12, v11];
    secondaryOcclusionMapOutput = v18->_secondaryOcclusionMapOutput;
    v18->_secondaryOcclusionMapOutput = v34;

    if (v14 != *MEMORY[0x277CBF3A8] || v13 != *(MEMORY[0x277CBF3A8] + 8))
    {
      v36 = [MEMORY[0x277CED078] descriptorWithDefaultSize:1380411457 pixelFormat:v14, v13];
      primaryRasterizedMeshInput = v18->_primaryRasterizedMeshInput;
      v18->_primaryRasterizedMeshInput = v36;

      v38 = [MEMORY[0x277CED078] descriptorWithDefaultSize:1380411457 pixelFormat:v14, v13];
      secondaryRasterizedMeshInput = v18->_secondaryRasterizedMeshInput;
      v18->_secondaryRasterizedMeshInput = v38;
    }
  }

  return v18;
}

@end