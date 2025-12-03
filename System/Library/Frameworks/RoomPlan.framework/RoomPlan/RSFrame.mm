@interface RSFrame
- (RSCamera)sceneCamera;
- (__n128)referenceOriginTransform;
- (__n128)setReferenceOriginTransform:(__n128)transform;
- (id)camera;
- (id)rawFeaturePoints;
- (void)setColorBuffer:(__CVBuffer *)buffer;
- (void)setDepthBuffer:(__CVBuffer *)buffer;
- (void)setDepthConfidenceBuffer:(__CVBuffer *)buffer;
- (void)setSceneCamera:(id)camera;
- (void)setSceneColorBuffer:(__CVBuffer *)buffer;
- (void)setSemanticConfidenceBuffer:(__CVBuffer *)buffer;
- (void)setSemanticLabelBuffer:(__CVBuffer *)buffer;
@end

@implementation RSFrame

- (void)setColorBuffer:(__CVBuffer *)buffer
{
  colorBuffer = self->colorBuffer;
  self->colorBuffer = buffer;
  bufferCopy = buffer;
}

- (void)setDepthBuffer:(__CVBuffer *)buffer
{
  depthBuffer = self->depthBuffer;
  self->depthBuffer = buffer;
  bufferCopy = buffer;
}

- (void)setDepthConfidenceBuffer:(__CVBuffer *)buffer
{
  depthConfidenceBuffer = self->depthConfidenceBuffer;
  self->depthConfidenceBuffer = buffer;
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

- (__n128)referenceOriginTransform
{
  result = *(self + 96);
  v2 = *(self + 112);
  v3 = *(self + 128);
  v4 = *(self + 144);
  return result;
}

- (__n128)setReferenceOriginTransform:(__n128)transform
{
  result[6] = a2;
  result[7] = transform;
  result[8] = a4;
  result[9] = a5;
  return result;
}

- (RSCamera)sceneCamera
{
  sceneCamera = self->sceneCamera;
  v3 = swift_unknownObjectRetain();

  return v3;
}

- (void)setSceneCamera:(id)camera
{
  sceneCamera = self->sceneCamera;
  self->sceneCamera = camera;
  swift_unknownObjectRetain();

  swift_unknownObjectRelease();
}

- (void)setSceneColorBuffer:(__CVBuffer *)buffer
{
  sceneColorBuffer = self->sceneColorBuffer;
  self->sceneColorBuffer = buffer;
  bufferCopy = buffer;
}

- (id)rawFeaturePoints
{
  v1 = *(self + 16);
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (id)camera
{
  v1 = *(self + 24);
  v2 = swift_unknownObjectRetain();

  return v2;
}

@end