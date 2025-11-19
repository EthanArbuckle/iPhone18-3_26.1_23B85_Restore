@interface OUFrame
- (__n128)referenceOriginTransform;
- (__n128)setReferenceOriginTransform:(__n128)a3;
- (void)setColorBuffer:(__CVBuffer *)a3;
- (void)setSceneColorBuffer:(__CVBuffer *)a3;
- (void)setSceneDepthBuffer:(__CVBuffer *)a3;
- (void)setSceneDepthConfidenceBuffer:(__CVBuffer *)a3;
- (void)setSemanticConfidenceBuffer:(__CVBuffer *)a3;
- (void)setSemanticLabelBuffer:(__CVBuffer *)a3;
@end

@implementation OUFrame

- (__n128)referenceOriginTransform
{
  result = *(a1 + 48);
  v2 = *(a1 + 64);
  v3 = *(a1 + 80);
  v4 = *(a1 + 96);
  return result;
}

- (__n128)setReferenceOriginTransform:(__n128)a3
{
  result[3] = a2;
  result[4] = a3;
  result[5] = a4;
  result[6] = a5;
  return result;
}

- (void)setColorBuffer:(__CVBuffer *)a3
{
  colorBuffer = self->colorBuffer;
  self->colorBuffer = a3;
  v3 = a3;
}

- (void)setSceneColorBuffer:(__CVBuffer *)a3
{
  sceneColorBuffer = self->sceneColorBuffer;
  self->sceneColorBuffer = a3;
  v3 = a3;
}

- (void)setSceneDepthBuffer:(__CVBuffer *)a3
{
  sceneDepthBuffer = self->sceneDepthBuffer;
  self->sceneDepthBuffer = a3;
  v3 = a3;
}

- (void)setSceneDepthConfidenceBuffer:(__CVBuffer *)a3
{
  sceneDepthConfidenceBuffer = self->sceneDepthConfidenceBuffer;
  self->sceneDepthConfidenceBuffer = a3;
  v3 = a3;
}

- (void)setSemanticLabelBuffer:(__CVBuffer *)a3
{
  semanticLabelBuffer = self->semanticLabelBuffer;
  self->semanticLabelBuffer = a3;
  v3 = a3;
}

- (void)setSemanticConfidenceBuffer:(__CVBuffer *)a3
{
  semanticConfidenceBuffer = self->semanticConfidenceBuffer;
  self->semanticConfidenceBuffer = a3;
  v3 = a3;
}

@end