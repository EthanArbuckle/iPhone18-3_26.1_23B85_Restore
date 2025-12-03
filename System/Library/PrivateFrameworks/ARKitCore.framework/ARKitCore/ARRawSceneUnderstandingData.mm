@interface ARRawSceneUnderstandingData
- (void)dealloc;
- (void)setCapturedImage:(__CVBuffer *)image;
- (void)setDepthBuffer:(__CVBuffer *)buffer;
- (void)setDepthConfidenceBuffer:(__CVBuffer *)buffer;
- (void)setNormalsBuffer:(__CVBuffer *)buffer;
- (void)setSemanticSegmentationBuffer:(__CVBuffer *)buffer;
- (void)setSemanticSegmentationBufferSampledForDepth:(__CVBuffer *)depth;
- (void)setSemanticSegmentationConfidenceBuffer:(__CVBuffer *)buffer;
- (void)setSemanticSegmentationConfidenceBufferSampledForDepth:(__CVBuffer *)depth;
- (void)setSemanticSegmentationUncertaintyBuffer:(__CVBuffer *)buffer;
@end

@implementation ARRawSceneUnderstandingData

- (void)setSemanticSegmentationBuffer:(__CVBuffer *)buffer
{
  semanticSegmentationBuffer = self->_semanticSegmentationBuffer;
  if (semanticSegmentationBuffer != buffer)
  {
    CVPixelBufferRelease(semanticSegmentationBuffer);
    self->_semanticSegmentationBuffer = buffer;

    CVPixelBufferRetain(buffer);
  }
}

- (void)setSemanticSegmentationBufferSampledForDepth:(__CVBuffer *)depth
{
  semanticSegmentationBufferSampledForDepth = self->_semanticSegmentationBufferSampledForDepth;
  if (semanticSegmentationBufferSampledForDepth != depth)
  {
    CVPixelBufferRelease(semanticSegmentationBufferSampledForDepth);
    self->_semanticSegmentationBufferSampledForDepth = depth;

    CVPixelBufferRetain(depth);
  }
}

- (void)setSemanticSegmentationUncertaintyBuffer:(__CVBuffer *)buffer
{
  semanticSegmentationUncertaintyBuffer = self->_semanticSegmentationUncertaintyBuffer;
  if (semanticSegmentationUncertaintyBuffer != buffer)
  {
    CVPixelBufferRelease(semanticSegmentationUncertaintyBuffer);
    self->_semanticSegmentationUncertaintyBuffer = buffer;

    CVPixelBufferRetain(buffer);
  }
}

- (void)setSemanticSegmentationConfidenceBuffer:(__CVBuffer *)buffer
{
  semanticSegmentationConfidenceBuffer = self->_semanticSegmentationConfidenceBuffer;
  if (semanticSegmentationConfidenceBuffer != buffer)
  {
    CVPixelBufferRelease(semanticSegmentationConfidenceBuffer);
    self->_semanticSegmentationConfidenceBuffer = buffer;

    CVPixelBufferRetain(buffer);
  }
}

- (void)setSemanticSegmentationConfidenceBufferSampledForDepth:(__CVBuffer *)depth
{
  semanticSegmentationConfidenceBufferSampledForDepth = self->_semanticSegmentationConfidenceBufferSampledForDepth;
  if (semanticSegmentationConfidenceBufferSampledForDepth != depth)
  {
    CVPixelBufferRelease(semanticSegmentationConfidenceBufferSampledForDepth);
    self->_semanticSegmentationConfidenceBufferSampledForDepth = CVPixelBufferRetain(depth);
  }
}

- (void)setNormalsBuffer:(__CVBuffer *)buffer
{
  normalsBuffer = self->_normalsBuffer;
  if (normalsBuffer != buffer)
  {
    CVPixelBufferRelease(normalsBuffer);
    self->_normalsBuffer = buffer;

    CVPixelBufferRetain(buffer);
  }
}

- (void)setDepthBuffer:(__CVBuffer *)buffer
{
  depthBuffer = self->_depthBuffer;
  if (depthBuffer != buffer)
  {
    CVPixelBufferRelease(depthBuffer);
    self->_depthBuffer = buffer;

    CVPixelBufferRetain(buffer);
  }
}

- (void)setDepthConfidenceBuffer:(__CVBuffer *)buffer
{
  depthConfidenceBuffer = self->_depthConfidenceBuffer;
  if (depthConfidenceBuffer != buffer)
  {
    CVPixelBufferRelease(depthConfidenceBuffer);
    self->_depthConfidenceBuffer = buffer;

    CVPixelBufferRetain(buffer);
  }
}

- (void)setCapturedImage:(__CVBuffer *)image
{
  capturedImage = self->_capturedImage;
  if (capturedImage != image)
  {
    CVPixelBufferRelease(capturedImage);
    self->_capturedImage = CVPixelBufferRetain(image);
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