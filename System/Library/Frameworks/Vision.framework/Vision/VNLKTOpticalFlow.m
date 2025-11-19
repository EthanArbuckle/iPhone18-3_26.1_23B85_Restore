@interface VNLKTOpticalFlow
- (BOOL)_validateInputImage:(__CVBuffer *)a3 error:(id *)a4;
- (BOOL)_validateOutputImage:(__CVBuffer *)a3 error:(id *)a4;
- (BOOL)estimateFlowFromReference:(__CVBuffer *)a3 target:(__CVBuffer *)a4 error:(id *)a5;
- (BOOL)estimateFlowStream:(__CVBuffer *)a3 error:(id *)a4;
- (BOOL)setOutputUV:(__CVBuffer *)a3 error:(id *)a4;
- (VNLKTOpticalFlow)initWithWidth:(int)a3 height:(int)a4 numScales:(int)a5;
@end

@implementation VNLKTOpticalFlow

- (BOOL)_validateOutputImage:(__CVBuffer *)a3 error:(id *)a4
{
  PixelFormatType = CVPixelBufferGetPixelFormatType(a3);
  if (PixelFormatType == 843264102 || PixelFormatType == 843264104)
  {
    Width = CVPixelBufferGetWidth(a3);
    if (Width == [(VNLKTOpticalFlow *)self width])
    {
      Height = CVPixelBufferGetHeight(a3);
      if (Height == [(VNLKTOpticalFlow *)self height])
      {
        return 1;
      }
    }

    if (a4)
    {
      v11 = @"Output image has invalid width/height";
LABEL_10:
      v12 = [VNError errorWithCode:14 message:v11];
      v13 = v12;
      result = 0;
      *a4 = v12;
      return result;
    }
  }

  else if (a4)
  {
    v11 = @"Output image has invalid pixel format";
    goto LABEL_10;
  }

  return 0;
}

- (BOOL)_validateInputImage:(__CVBuffer *)a3 error:(id *)a4
{
  if (CVPixelBufferGetPixelFormatType(a3) == 1111970369)
  {
    Width = CVPixelBufferGetWidth(a3);
    if (Width == [(VNLKTOpticalFlow *)self width])
    {
      Height = CVPixelBufferGetHeight(a3);
      if (Height == [(VNLKTOpticalFlow *)self height])
      {
        return 1;
      }
    }

    if (a4)
    {
      v10 = @"Input image has invalid width/height";
      goto LABEL_9;
    }
  }

  else if (a4)
  {
    v10 = @"Input image has invalid pixel format";
LABEL_9:
    v11 = [VNError errorWithCode:14 message:v10];
    v12 = v11;
    result = 0;
    *a4 = v11;
    return result;
  }

  return 0;
}

- (BOOL)estimateFlowStream:(__CVBuffer *)a3 error:(id *)a4
{
  if (a4)
  {
    *a4 = [VNError errorForInternalErrorWithLocalizedDescription:@"Not implemented in abstract class"];
  }

  return 0;
}

- (BOOL)estimateFlowFromReference:(__CVBuffer *)a3 target:(__CVBuffer *)a4 error:(id *)a5
{
  if (a5)
  {
    *a5 = [VNError errorForInternalErrorWithLocalizedDescription:@"Not implemented in abstract class", a4];
  }

  return 0;
}

- (BOOL)setOutputUV:(__CVBuffer *)a3 error:(id *)a4
{
  if (a4)
  {
    *a4 = [VNError errorForInternalErrorWithLocalizedDescription:@"Not implemented in abstract class"];
  }

  return 0;
}

- (VNLKTOpticalFlow)initWithWidth:(int)a3 height:(int)a4 numScales:(int)a5
{
  v9.receiver = self;
  v9.super_class = VNLKTOpticalFlow;
  result = [(VNLKTOpticalFlow *)&v9 init];
  if (result)
  {
    result->_isValid = 0;
    result->_width = a3;
    result->_height = a4;
    result->_levelCount = a5;
    result->_numScales = a5;
  }

  return result;
}

@end