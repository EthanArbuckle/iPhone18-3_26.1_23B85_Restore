@interface ARUIRingsEndCapShadowState
- (BOOL)shouldRunStateForRing:(id)ring;
- (id)renderPipelineDescriptorFromLibrary:(id)library;
- (void)didInitialize;
@end

@implementation ARUIRingsEndCapShadowState

- (void)didInitialize
{
  v3.receiver = self;
  v3.super_class = ARUIRingsEndCapShadowState;
  [(ARUIRingsRenderState *)&v3 didInitialize];
  [(ARUIRingsRenderState *)self setRenderArea:1];
}

- (id)renderPipelineDescriptorFromLibrary:(id)library
{
  libraryCopy = library;
  v5 = objc_opt_new();
  v6 = [libraryCopy newFunctionWithName:@"vertex_shader"];
  [v5 setVertexFunction:v6];

  v7 = [libraryCopy newFunctionWithName:@"fragment_capshadow"];
  [v5 setFragmentFunction:v7];

  colorAttachments = [v5 colorAttachments];
  v9 = [colorAttachments objectAtIndexedSubscript:0];
  [v9 setPixelFormat:80];

  [v5 configureForSourceOverBlending];
  name = [(ARUIRingsEndCapShadowState *)self name];
  [v5 setLabel:name];

  return v5;
}

- (BOOL)shouldRunStateForRing:(id)ring
{
  ringCopy = ring;
  [ringCopy percentage];
  if (v4 == *&ARUIRingPercentageValueNoRing || ([ringCopy percentage], v5 = *&ARUIRingsRenderPipelineConfigurationOverlappingThreshold, !ARUIFloatGreater(v6, v5)))
  {
    v8 = 0;
  }

  else
  {
    [ringCopy opacity];
    v8 = ARUIFloatGreater(v7, 0.0);
  }

  return v8;
}

@end