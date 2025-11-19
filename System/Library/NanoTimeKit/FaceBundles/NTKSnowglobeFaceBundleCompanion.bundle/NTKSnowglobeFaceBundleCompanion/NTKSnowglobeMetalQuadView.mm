@interface NTKSnowglobeMetalQuadView
- (void)_renderQuads:(id)a3 toScreenWithCommandBuffer:(id)a4 passDescriptor:(id)a5;
@end

@implementation NTKSnowglobeMetalQuadView

- (void)_renderQuads:(id)a3 toScreenWithCommandBuffer:(id)a4 passDescriptor:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [a3 firstObject];
  [v9 renderWithCommandBuffer:v8 passDescriptor:v7];
}

@end