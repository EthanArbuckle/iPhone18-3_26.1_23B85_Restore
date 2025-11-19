@interface RSFrame
- (RSCamera)sceneCamera;
- (__n128)referenceOriginTransform;
- (__n128)setReferenceOriginTransform:(__n128)a3;
- (id)camera;
- (id)rawFeaturePoints;
- (void)setColorBuffer:(__CVBuffer *)a3;
- (void)setDepthBuffer:(__CVBuffer *)a3;
- (void)setDepthConfidenceBuffer:(__CVBuffer *)a3;
- (void)setSceneCamera:(id)a3;
- (void)setSceneColorBuffer:(__CVBuffer *)a3;
- (void)setSemanticConfidenceBuffer:(__CVBuffer *)a3;
- (void)setSemanticLabelBuffer:(__CVBuffer *)a3;
@end

@implementation RSFrame

- (void)setColorBuffer:(__CVBuffer *)a3
{
  colorBuffer = self->colorBuffer;
  self->colorBuffer = a3;
  v3 = a3;
}

- (void)setDepthBuffer:(__CVBuffer *)a3
{
  depthBuffer = self->depthBuffer;
  self->depthBuffer = a3;
  v3 = a3;
}

- (void)setDepthConfidenceBuffer:(__CVBuffer *)a3
{
  depthConfidenceBuffer = self->depthConfidenceBuffer;
  self->depthConfidenceBuffer = a3;
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

- (__n128)referenceOriginTransform
{
  result = *(a1 + 96);
  v2 = *(a1 + 112);
  v3 = *(a1 + 128);
  v4 = *(a1 + 144);
  return result;
}

- (__n128)setReferenceOriginTransform:(__n128)a3
{
  result[6] = a2;
  result[7] = a3;
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

- (void)setSceneCamera:(id)a3
{
  sceneCamera = self->sceneCamera;
  self->sceneCamera = a3;
  swift_unknownObjectRetain();

  swift_unknownObjectRelease();
}

- (void)setSceneColorBuffer:(__CVBuffer *)a3
{
  sceneColorBuffer = self->sceneColorBuffer;
  self->sceneColorBuffer = a3;
  v3 = a3;
}

- (id)rawFeaturePoints
{
  v1 = *(a1 + 16);
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (id)camera
{
  v1 = *(a1 + 24);
  v2 = swift_unknownObjectRetain();

  return v2;
}

@end