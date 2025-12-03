@interface ARUISpriteParticleRenderState
- (ARUISpriteParticleRenderState)initWithDevice:(id)device library:(id)library;
- (ARUISpriteParticleRenderState)initWithPipelineLibrary:(id)library;
- (id)renderPipelineDescriptorFromLibrary:(id)library;
@end

@implementation ARUISpriteParticleRenderState

- (ARUISpriteParticleRenderState)initWithDevice:(id)device library:(id)library
{
  deviceCopy = device;
  libraryCopy = library;
  v13.receiver = self;
  v13.super_class = ARUISpriteParticleRenderState;
  v8 = [(ARUISpriteParticleRenderState *)&v13 init];
  v9 = v8;
  if (v8)
  {
    v10 = [(ARUISpriteParticleRenderState *)v8 renderPipelineDescriptorFromLibrary:libraryCopy];
    v11 = [deviceCopy newRenderPipelineStateWithDescriptor:v10 error:0];
    [(ARUISpriteParticleRenderState *)v9 setRenderPipelineState:v11];
  }

  return v9;
}

- (id)renderPipelineDescriptorFromLibrary:(id)library
{
  libraryCopy = library;
  v5 = objc_opt_new();
  v6 = [libraryCopy newFunctionWithName:@"vertex_sprite_particle_shader"];
  [v5 setVertexFunction:v6];

  v7 = [libraryCopy newFunctionWithName:@"fragment_sprite_particle_shader"];
  [v5 setFragmentFunction:v7];

  colorAttachments = [v5 colorAttachments];
  v9 = [colorAttachments objectAtIndexedSubscript:0];
  [v9 setPixelFormat:80];

  [v5 configureForSourceOverBlending];
  name = [(ARUISpriteParticleRenderState *)self name];
  [v5 setLabel:name];

  return v5;
}

- (ARUISpriteParticleRenderState)initWithPipelineLibrary:(id)library
{
  libraryCopy = library;
  v10.receiver = self;
  v10.super_class = ARUISpriteParticleRenderState;
  v5 = [(ARUISpriteParticleRenderState *)&v10 init];
  v6 = v5;
  if (v5)
  {
    name = [(ARUISpriteParticleRenderState *)v5 name];
    v8 = [libraryCopy newRenderPipelineStateWithName:name options:0 reflection:0 error:0];

    [(ARUISpriteParticleRenderState *)v6 setRenderPipelineState:v8];
  }

  return v6;
}

@end