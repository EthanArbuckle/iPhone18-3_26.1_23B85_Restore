@interface ARUISpriteParticleRenderState
- (ARUISpriteParticleRenderState)initWithDevice:(id)a3 library:(id)a4;
- (ARUISpriteParticleRenderState)initWithPipelineLibrary:(id)a3;
- (id)renderPipelineDescriptorFromLibrary:(id)a3;
@end

@implementation ARUISpriteParticleRenderState

- (ARUISpriteParticleRenderState)initWithDevice:(id)a3 library:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = ARUISpriteParticleRenderState;
  v8 = [(ARUISpriteParticleRenderState *)&v13 init];
  v9 = v8;
  if (v8)
  {
    v10 = [(ARUISpriteParticleRenderState *)v8 renderPipelineDescriptorFromLibrary:v7];
    v11 = [v6 newRenderPipelineStateWithDescriptor:v10 error:0];
    [(ARUISpriteParticleRenderState *)v9 setRenderPipelineState:v11];
  }

  return v9;
}

- (id)renderPipelineDescriptorFromLibrary:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [v4 newFunctionWithName:@"vertex_sprite_particle_shader"];
  [v5 setVertexFunction:v6];

  v7 = [v4 newFunctionWithName:@"fragment_sprite_particle_shader"];
  [v5 setFragmentFunction:v7];

  v8 = [v5 colorAttachments];
  v9 = [v8 objectAtIndexedSubscript:0];
  [v9 setPixelFormat:80];

  [v5 configureForSourceOverBlending];
  v10 = [(ARUISpriteParticleRenderState *)self name];
  [v5 setLabel:v10];

  return v5;
}

- (ARUISpriteParticleRenderState)initWithPipelineLibrary:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = ARUISpriteParticleRenderState;
  v5 = [(ARUISpriteParticleRenderState *)&v10 init];
  v6 = v5;
  if (v5)
  {
    v7 = [(ARUISpriteParticleRenderState *)v5 name];
    v8 = [v4 newRenderPipelineStateWithName:v7 options:0 reflection:0 error:0];

    [(ARUISpriteParticleRenderState *)v6 setRenderPipelineState:v8];
  }

  return v6;
}

@end