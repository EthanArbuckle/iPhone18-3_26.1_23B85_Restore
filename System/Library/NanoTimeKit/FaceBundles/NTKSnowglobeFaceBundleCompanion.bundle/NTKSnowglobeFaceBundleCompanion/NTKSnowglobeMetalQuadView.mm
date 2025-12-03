@interface NTKSnowglobeMetalQuadView
- (void)_renderQuads:(id)quads toScreenWithCommandBuffer:(id)buffer passDescriptor:(id)descriptor;
@end

@implementation NTKSnowglobeMetalQuadView

- (void)_renderQuads:(id)quads toScreenWithCommandBuffer:(id)buffer passDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  bufferCopy = buffer;
  firstObject = [quads firstObject];
  [firstObject renderWithCommandBuffer:bufferCopy passDescriptor:descriptorCopy];
}

@end