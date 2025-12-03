@interface VNLKTOpticalFlow
- (BOOL)_validateInputImage:(__CVBuffer *)image error:(id *)error;
- (BOOL)_validateOutputImage:(__CVBuffer *)image error:(id *)error;
- (BOOL)estimateFlowFromReference:(__CVBuffer *)reference target:(__CVBuffer *)target error:(id *)error;
- (BOOL)estimateFlowStream:(__CVBuffer *)stream error:(id *)error;
- (BOOL)setOutputUV:(__CVBuffer *)v error:(id *)error;
- (VNLKTOpticalFlow)initWithWidth:(int)width height:(int)height numScales:(int)scales;
@end

@implementation VNLKTOpticalFlow

- (BOOL)_validateOutputImage:(__CVBuffer *)image error:(id *)error
{
  PixelFormatType = CVPixelBufferGetPixelFormatType(image);
  if (PixelFormatType == 843264102 || PixelFormatType == 843264104)
  {
    Width = CVPixelBufferGetWidth(image);
    if (Width == [(VNLKTOpticalFlow *)self width])
    {
      Height = CVPixelBufferGetHeight(image);
      if (Height == [(VNLKTOpticalFlow *)self height])
      {
        return 1;
      }
    }

    if (error)
    {
      v11 = @"Output image has invalid width/height";
LABEL_10:
      v12 = [VNError errorWithCode:14 message:v11];
      v13 = v12;
      result = 0;
      *error = v12;
      return result;
    }
  }

  else if (error)
  {
    v11 = @"Output image has invalid pixel format";
    goto LABEL_10;
  }

  return 0;
}

- (BOOL)_validateInputImage:(__CVBuffer *)image error:(id *)error
{
  if (CVPixelBufferGetPixelFormatType(image) == 1111970369)
  {
    Width = CVPixelBufferGetWidth(image);
    if (Width == [(VNLKTOpticalFlow *)self width])
    {
      Height = CVPixelBufferGetHeight(image);
      if (Height == [(VNLKTOpticalFlow *)self height])
      {
        return 1;
      }
    }

    if (error)
    {
      v10 = @"Input image has invalid width/height";
      goto LABEL_9;
    }
  }

  else if (error)
  {
    v10 = @"Input image has invalid pixel format";
LABEL_9:
    v11 = [VNError errorWithCode:14 message:v10];
    v12 = v11;
    result = 0;
    *error = v11;
    return result;
  }

  return 0;
}

- (BOOL)estimateFlowStream:(__CVBuffer *)stream error:(id *)error
{
  if (error)
  {
    *error = [VNError errorForInternalErrorWithLocalizedDescription:@"Not implemented in abstract class"];
  }

  return 0;
}

- (BOOL)estimateFlowFromReference:(__CVBuffer *)reference target:(__CVBuffer *)target error:(id *)error
{
  if (error)
  {
    *error = [VNError errorForInternalErrorWithLocalizedDescription:@"Not implemented in abstract class", target];
  }

  return 0;
}

- (BOOL)setOutputUV:(__CVBuffer *)v error:(id *)error
{
  if (error)
  {
    *error = [VNError errorForInternalErrorWithLocalizedDescription:@"Not implemented in abstract class"];
  }

  return 0;
}

- (VNLKTOpticalFlow)initWithWidth:(int)width height:(int)height numScales:(int)scales
{
  v9.receiver = self;
  v9.super_class = VNLKTOpticalFlow;
  result = [(VNLKTOpticalFlow *)&v9 init];
  if (result)
  {
    result->_isValid = 0;
    result->_width = width;
    result->_height = height;
    result->_levelCount = scales;
    result->_numScales = scales;
  }

  return result;
}

@end