@interface CVAMattingRequest
- (CGRect)primaryCaptureRect;
- (CVAMattingRequest)initWithDisparityPostprocessingRequest:(id)request segmentationPixelBuffer:(__CVBuffer *)buffer skinSegmentationPixelBuffer:(__CVBuffer *)pixelBuffer destinationAlphaMattePixelBuffer:(__CVBuffer *)mattePixelBuffer error:(id *)error;
- (CVAMattingRequest)initWithDisparityPostprocessingRequest:(id)request segmentationPixelBuffer:(__CVBuffer *)buffer skinSegmentationPixelBuffer:(__CVBuffer *)pixelBuffer primaryCaptureRect:(CGRect)rect applyRotation:(BOOL)rotation destinationAlphaMattePixelBuffer:(__CVBuffer *)mattePixelBuffer error:(id *)error;
- (void)dealloc;
@end

@implementation CVAMattingRequest

- (CGRect)primaryCaptureRect
{
  objc_copyStruct(v6, &self->_primaryCaptureRect, 32, 1, 0);
  v2 = *v6;
  v3 = *&v6[1];
  v4 = *&v6[2];
  v5 = *&v6[3];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)dealloc
{
  CVPixelBufferRelease(self->_destinationAlphaMattePixelBuffer);
  CVPixelBufferRelease(self->_segmentationPixelBuffer);
  CVPixelBufferRelease(self->_skinSegmentationPixelBuffer);
  v3.receiver = self;
  v3.super_class = CVAMattingRequest;
  [(CVAMattingRequest *)&v3 dealloc];
}

- (CVAMattingRequest)initWithDisparityPostprocessingRequest:(id)request segmentationPixelBuffer:(__CVBuffer *)buffer skinSegmentationPixelBuffer:(__CVBuffer *)pixelBuffer primaryCaptureRect:(CGRect)rect applyRotation:(BOOL)rotation destinationAlphaMattePixelBuffer:(__CVBuffer *)mattePixelBuffer error:(id *)error
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  requestCopy = request;
  v21 = requestCopy;
  if (error)
  {
    *error = 0;
  }

  if (requestCopy)
  {
    v28.receiver = self;
    v28.super_class = CVAMattingRequest;
    v22 = [(CVAMattingRequest *)&v28 init];
    v23 = v22;
    if (v22)
    {
      objc_storeStrong(&v22->_disparityPostprocessingRequest, request);
      v23->_skinSegmentationPixelBuffer = pixelBuffer;
      v23->_destinationAlphaMattePixelBuffer = mattePixelBuffer;
      v23->_segmentationPixelBuffer = buffer;
      v23->_primaryCaptureRect.origin.x = x;
      v23->_primaryCaptureRect.origin.y = y;
      v23->_primaryCaptureRect.size.width = width;
      v23->_primaryCaptureRect.size.height = height;
      v23->_applyRotation = rotation;
      CVPixelBufferRetain(buffer);
      CVPixelBufferRetain(v23->_skinSegmentationPixelBuffer);
      CVPixelBufferRetain(v23->_destinationAlphaMattePixelBuffer);
    }
  }

  else
  {
    v24 = MEMORY[0x1E696AEC0];
    v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"segmentation-only matting is not implemented!"];
    v26 = [v24 stringWithFormat:@"Assertion failure in %s at %s:%d -- %@", "-[CVAMattingRequest initWithDisparityPostprocessingRequest:segmentationPixelBuffer:skinSegmentationPixelBuffer:primaryCaptureRect:applyRotation:destinationAlphaMattePixelBuffer:error:]", "/Library/Caches/com.apple.xbs/Sources/AppleCVAPhoto/src/CVAVideoPipelineRequest.mm", 240, v25];
    sub_1DED25D64(1, error, 4294944394, v26);

    v23 = 0;
  }

  return v23;
}

- (CVAMattingRequest)initWithDisparityPostprocessingRequest:(id)request segmentationPixelBuffer:(__CVBuffer *)buffer skinSegmentationPixelBuffer:(__CVBuffer *)pixelBuffer destinationAlphaMattePixelBuffer:(__CVBuffer *)mattePixelBuffer error:(id *)error
{
  requestCopy = request;
  Width = CVPixelBufferGetWidth([requestCopy sourceColorPixelBuffer]);
  v14 = -[CVAMattingRequest initWithDisparityPostprocessingRequest:segmentationPixelBuffer:skinSegmentationPixelBuffer:primaryCaptureRect:applyRotation:destinationAlphaMattePixelBuffer:error:](self, "initWithDisparityPostprocessingRequest:segmentationPixelBuffer:skinSegmentationPixelBuffer:primaryCaptureRect:applyRotation:destinationAlphaMattePixelBuffer:error:", requestCopy, buffer, pixelBuffer, 1, mattePixelBuffer, error, 0.0, 0.0, Width, CVPixelBufferGetHeight([requestCopy sourceColorPixelBuffer]));

  return v14;
}

@end