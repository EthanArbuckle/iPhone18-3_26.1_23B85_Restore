@interface CVAMattingRequest
- (CGRect)primaryCaptureRect;
- (CVAMattingRequest)initWithDisparityPostprocessingRequest:(id)a3 segmentationPixelBuffer:(__CVBuffer *)a4 skinSegmentationPixelBuffer:(__CVBuffer *)a5 destinationAlphaMattePixelBuffer:(__CVBuffer *)a6 error:(id *)a7;
- (CVAMattingRequest)initWithDisparityPostprocessingRequest:(id)a3 segmentationPixelBuffer:(__CVBuffer *)a4 skinSegmentationPixelBuffer:(__CVBuffer *)a5 primaryCaptureRect:(CGRect)a6 applyRotation:(BOOL)a7 destinationAlphaMattePixelBuffer:(__CVBuffer *)a8 error:(id *)a9;
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

- (CVAMattingRequest)initWithDisparityPostprocessingRequest:(id)a3 segmentationPixelBuffer:(__CVBuffer *)a4 skinSegmentationPixelBuffer:(__CVBuffer *)a5 primaryCaptureRect:(CGRect)a6 applyRotation:(BOOL)a7 destinationAlphaMattePixelBuffer:(__CVBuffer *)a8 error:(id *)a9
{
  height = a6.size.height;
  width = a6.size.width;
  y = a6.origin.y;
  x = a6.origin.x;
  v20 = a3;
  v21 = v20;
  if (a9)
  {
    *a9 = 0;
  }

  if (v20)
  {
    v28.receiver = self;
    v28.super_class = CVAMattingRequest;
    v22 = [(CVAMattingRequest *)&v28 init];
    v23 = v22;
    if (v22)
    {
      objc_storeStrong(&v22->_disparityPostprocessingRequest, a3);
      v23->_skinSegmentationPixelBuffer = a5;
      v23->_destinationAlphaMattePixelBuffer = a8;
      v23->_segmentationPixelBuffer = a4;
      v23->_primaryCaptureRect.origin.x = x;
      v23->_primaryCaptureRect.origin.y = y;
      v23->_primaryCaptureRect.size.width = width;
      v23->_primaryCaptureRect.size.height = height;
      v23->_applyRotation = a7;
      CVPixelBufferRetain(a4);
      CVPixelBufferRetain(v23->_skinSegmentationPixelBuffer);
      CVPixelBufferRetain(v23->_destinationAlphaMattePixelBuffer);
    }
  }

  else
  {
    v24 = MEMORY[0x1E696AEC0];
    v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"segmentation-only matting is not implemented!"];
    v26 = [v24 stringWithFormat:@"Assertion failure in %s at %s:%d -- %@", "-[CVAMattingRequest initWithDisparityPostprocessingRequest:segmentationPixelBuffer:skinSegmentationPixelBuffer:primaryCaptureRect:applyRotation:destinationAlphaMattePixelBuffer:error:]", "/Library/Caches/com.apple.xbs/Sources/AppleCVAPhoto/src/CVAVideoPipelineRequest.mm", 240, v25];
    sub_1DED25D64(1, a9, 4294944394, v26);

    v23 = 0;
  }

  return v23;
}

- (CVAMattingRequest)initWithDisparityPostprocessingRequest:(id)a3 segmentationPixelBuffer:(__CVBuffer *)a4 skinSegmentationPixelBuffer:(__CVBuffer *)a5 destinationAlphaMattePixelBuffer:(__CVBuffer *)a6 error:(id *)a7
{
  v12 = a3;
  Width = CVPixelBufferGetWidth([v12 sourceColorPixelBuffer]);
  v14 = -[CVAMattingRequest initWithDisparityPostprocessingRequest:segmentationPixelBuffer:skinSegmentationPixelBuffer:primaryCaptureRect:applyRotation:destinationAlphaMattePixelBuffer:error:](self, "initWithDisparityPostprocessingRequest:segmentationPixelBuffer:skinSegmentationPixelBuffer:primaryCaptureRect:applyRotation:destinationAlphaMattePixelBuffer:error:", v12, a4, a5, 1, a6, a7, 0.0, 0.0, Width, CVPixelBufferGetHeight([v12 sourceColorPixelBuffer]));

  return v14;
}

@end