@interface ARRawSceneUnderstandingData
- (void)dealloc;
- (void)setCapturedImage:(__CVBuffer *)a3;
- (void)setDepthBuffer:(__CVBuffer *)a3;
- (void)setDepthConfidenceBuffer:(__CVBuffer *)a3;
- (void)setNormalsBuffer:(__CVBuffer *)a3;
- (void)setSemanticSegmentationBuffer:(__CVBuffer *)a3;
- (void)setSemanticSegmentationBufferSampledForDepth:(__CVBuffer *)a3;
- (void)setSemanticSegmentationConfidenceBuffer:(__CVBuffer *)a3;
- (void)setSemanticSegmentationConfidenceBufferSampledForDepth:(__CVBuffer *)a3;
- (void)setSemanticSegmentationUncertaintyBuffer:(__CVBuffer *)a3;
@end

@implementation ARRawSceneUnderstandingData

- (void)setSemanticSegmentationBuffer:(__CVBuffer *)a3
{
  semanticSegmentationBuffer = self->_semanticSegmentationBuffer;
  if (semanticSegmentationBuffer != a3)
  {
    CVPixelBufferRelease(semanticSegmentationBuffer);
    self->_semanticSegmentationBuffer = a3;

    CVPixelBufferRetain(a3);
  }
}

- (void)setSemanticSegmentationBufferSampledForDepth:(__CVBuffer *)a3
{
  semanticSegmentationBufferSampledForDepth = self->_semanticSegmentationBufferSampledForDepth;
  if (semanticSegmentationBufferSampledForDepth != a3)
  {
    CVPixelBufferRelease(semanticSegmentationBufferSampledForDepth);
    self->_semanticSegmentationBufferSampledForDepth = a3;

    CVPixelBufferRetain(a3);
  }
}

- (void)setSemanticSegmentationUncertaintyBuffer:(__CVBuffer *)a3
{
  semanticSegmentationUncertaintyBuffer = self->_semanticSegmentationUncertaintyBuffer;
  if (semanticSegmentationUncertaintyBuffer != a3)
  {
    CVPixelBufferRelease(semanticSegmentationUncertaintyBuffer);
    self->_semanticSegmentationUncertaintyBuffer = a3;

    CVPixelBufferRetain(a3);
  }
}

- (void)setSemanticSegmentationConfidenceBuffer:(__CVBuffer *)a3
{
  semanticSegmentationConfidenceBuffer = self->_semanticSegmentationConfidenceBuffer;
  if (semanticSegmentationConfidenceBuffer != a3)
  {
    CVPixelBufferRelease(semanticSegmentationConfidenceBuffer);
    self->_semanticSegmentationConfidenceBuffer = a3;

    CVPixelBufferRetain(a3);
  }
}

- (void)setSemanticSegmentationConfidenceBufferSampledForDepth:(__CVBuffer *)a3
{
  semanticSegmentationConfidenceBufferSampledForDepth = self->_semanticSegmentationConfidenceBufferSampledForDepth;
  if (semanticSegmentationConfidenceBufferSampledForDepth != a3)
  {
    CVPixelBufferRelease(semanticSegmentationConfidenceBufferSampledForDepth);
    self->_semanticSegmentationConfidenceBufferSampledForDepth = CVPixelBufferRetain(a3);
  }
}

- (void)setNormalsBuffer:(__CVBuffer *)a3
{
  normalsBuffer = self->_normalsBuffer;
  if (normalsBuffer != a3)
  {
    CVPixelBufferRelease(normalsBuffer);
    self->_normalsBuffer = a3;

    CVPixelBufferRetain(a3);
  }
}

- (void)setDepthBuffer:(__CVBuffer *)a3
{
  depthBuffer = self->_depthBuffer;
  if (depthBuffer != a3)
  {
    CVPixelBufferRelease(depthBuffer);
    self->_depthBuffer = a3;

    CVPixelBufferRetain(a3);
  }
}

- (void)setDepthConfidenceBuffer:(__CVBuffer *)a3
{
  depthConfidenceBuffer = self->_depthConfidenceBuffer;
  if (depthConfidenceBuffer != a3)
  {
    CVPixelBufferRelease(depthConfidenceBuffer);
    self->_depthConfidenceBuffer = a3;

    CVPixelBufferRetain(a3);
  }
}

- (void)setCapturedImage:(__CVBuffer *)a3
{
  capturedImage = self->_capturedImage;
  if (capturedImage != a3)
  {
    CVPixelBufferRelease(capturedImage);
    self->_capturedImage = CVPixelBufferRetain(a3);
  }
}

- (void)dealloc
{
  CVPixelBufferRelease(self->_semanticSegmentationBuffer);
  CVPixelBufferRelease(self->_semanticSegmentationBufferSampledForDepth);
  CVPixelBufferRelease(self->_semanticSegmentationConfidenceBuffer);
  CVPixelBufferRelease(self->_semanticSegmentationConfidenceBufferSampledForDepth);
  CVPixelBufferRelease(self->_semanticSegmentationUncertaintyBuffer);
  CVPixelBufferRelease(self->_normalsBuffer);
  CVPixelBufferRelease(self->_depthBuffer);
  CVPixelBufferRelease(self->_depthConfidenceBuffer);
  CVPixelBufferRelease(self->_capturedImage);
  v3.receiver = self;
  v3.super_class = ARRawSceneUnderstandingData;
  [(ARRawSceneUnderstandingData *)&v3 dealloc];
}

@end