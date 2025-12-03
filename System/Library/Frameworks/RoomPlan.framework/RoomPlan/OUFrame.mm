@interface OUFrame
- (__n128)referenceOriginTransform;
- (__n128)setReferenceOriginTransform:(__n128)transform;
- (void)setColorBuffer:(__CVBuffer *)buffer;
- (void)setSceneColorBuffer:(__CVBuffer *)buffer;
- (void)setSceneDepthBuffer:(__CVBuffer *)buffer;
- (void)setSceneDepthConfidenceBuffer:(__CVBuffer *)buffer;
- (void)setSemanticConfidenceBuffer:(__CVBuffer *)buffer;
- (void)setSemanticLabelBuffer:(__CVBuffer *)buffer;
@end

@implementation OUFrame

- (__n128)referenceOriginTransform
{
  result = *(self + 48);
  v2 = *(self + 64);
  v3 = *(self + 80);
  v4 = *(self + 96);
  return result;
}

- (__n128)setReferenceOriginTransform:(__n128)transform
{
  result[3] = a2;
  result[4] = transform;
  result[5] = a4;
  result[6] = a5;
  return result;
}

- (void)setColorBuffer:(__CVBuffer *)buffer
{
  colorBuffer = self->colorBuffer;
  self->colorBuffer = buffer;
  bufferCopy = buffer;
}

- (void)setSceneColorBuffer:(__CVBuffer *)buffer
{
  sceneColorBuffer = self->sceneColorBuffer;
  self->sceneColorBuffer = buffer;
  bufferCopy = buffer;
}

- (void)setSceneDepthBuffer:(__CVBuffer *)buffer
{
  sceneDepthBuffer = self->sceneDepthBuffer;
  self->sceneDepthBuffer = buffer;
  bufferCopy = buffer;
}

- (void)setSceneDepthConfidenceBuffer:(__CVBuffer *)buffer
{
  sceneDepthConfidenceBuffer = self->sceneDepthConfidenceBuffer;
  self->sceneDepthConfidenceBuffer = buffer;
  bufferCopy = buffer;
}

- (void)setSemanticLabelBuffer:(__CVBuffer *)buffer
{
  semanticLabelBuffer = self->semanticLabelBuffer;
  self->semanticLabelBuffer = buffer;
  bufferCopy = buffer;
}

- (void)setSemanticConfidenceBuffer:(__CVBuffer *)buffer
{
  semanticConfidenceBuffer = self->semanticConfidenceBuffer;
  self->semanticConfidenceBuffer = buffer;
  bufferCopy = buffer;
}

@end