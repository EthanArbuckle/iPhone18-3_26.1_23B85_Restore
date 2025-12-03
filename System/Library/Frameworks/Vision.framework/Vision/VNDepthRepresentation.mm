@interface VNDepthRepresentation
+ (id)depthRepresentationForDepthData:(id)data orientation:(unsigned int)orientation;
+ (id)depthRepresentationForImageSource:(CGImageSource *)source orientation:(unsigned int)orientation;
- (NSData)lensDistortionData;
- (__n128)cameraIntrinsics;
- (id)_initWithAVDepthData:(id)data orientation:(unsigned int)orientation;
@end

@implementation VNDepthRepresentation

- (NSData)lensDistortionData
{
  cameraCalibrationData = [(AVDepthData *)self->_depthData cameraCalibrationData];
  lensDistortionLookupTable = [cameraCalibrationData lensDistortionLookupTable];

  return lensDistortionLookupTable;
}

- (__n128)cameraIntrinsics
{
  cameraCalibrationData = [*(self + 8) cameraCalibrationData];
  [cameraCalibrationData intrinsicMatrix];
  v4 = v2;

  return v4;
}

- (id)_initWithAVDepthData:(id)data orientation:(unsigned int)orientation
{
  v4 = *&orientation;
  dataCopy = data;
  v13.receiver = self;
  v13.super_class = VNDepthRepresentation;
  v7 = [(VNDepthRepresentation *)&v13 init];
  if (v7)
  {
    v8 = [dataCopy depthDataByConvertingToDepthDataType:1717855600];
    depthData = v7->_depthData;
    v7->_depthData = v8;

    v10 = [(AVDepthData *)v7->_depthData depthDataByApplyingExifOrientation:v4];
    v11 = v7->_depthData;
    v7->_depthData = v10;

    v7->_orientation = v4;
  }

  return v7;
}

+ (id)depthRepresentationForImageSource:(CGImageSource *)source orientation:(unsigned int)orientation
{
  v4 = *&orientation;
  v6 = CGImageSourceCopyAuxiliaryDataInfoAtIndex(source, 0, *MEMORY[0x1E696D258]);
  if (v6 || (v6 = CGImageSourceCopyAuxiliaryDataInfoAtIndex(source, 0, *MEMORY[0x1E696D260])) != 0)
  {
    v7 = v6;
    v8 = [MEMORY[0x1E69871A0] depthDataFromDictionaryRepresentation:v6 error:0];
    v9 = [[VNDepthRepresentation alloc] _initWithAVDepthData:v8 orientation:v4];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)depthRepresentationForDepthData:(id)data orientation:(unsigned int)orientation
{
  v4 = *&orientation;
  dataCopy = data;
  v6 = [[VNDepthRepresentation alloc] _initWithAVDepthData:dataCopy orientation:v4];

  return v6;
}

@end