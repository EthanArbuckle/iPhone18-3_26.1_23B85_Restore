@interface ARUISpritesParticleRenderer
- (ARUISpritesParticleRenderer)initWithDevice:(id)a3 library:(id)a4 bufferSize:(unint64_t)a5;
- (ARUISpritesParticleRenderer)initWithDeviceSPI:(id)a3 librarySPI:(id)a4 bufferSize:(unint64_t)a5;
- (void)_sharedInitWithDevice:(id)a3 bufferSize:(unint64_t)a4;
- (void)renderSpriteSheet:(id)a3 intoContext:(id)a4 withCommandEncoder:(id)a5;
@end

@implementation ARUISpritesParticleRenderer

- (ARUISpritesParticleRenderer)initWithDevice:(id)a3 library:(id)a4 bufferSize:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  v14.receiver = self;
  v14.super_class = ARUISpritesParticleRenderer;
  v10 = [(ARUISpritesParticleRenderer *)&v14 init];
  if (v10)
  {
    v11 = [[ARUISpriteParticleRenderState alloc] initWithDevice:v8 library:v9];
    spriteRenderState = v10->_spriteRenderState;
    v10->_spriteRenderState = v11;

    [(ARUISpritesParticleRenderer *)v10 _sharedInitWithDevice:v8 bufferSize:a5];
  }

  return v10;
}

- (ARUISpritesParticleRenderer)initWithDeviceSPI:(id)a3 librarySPI:(id)a4 bufferSize:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  v14.receiver = self;
  v14.super_class = ARUISpritesParticleRenderer;
  v10 = [(ARUISpritesParticleRenderer *)&v14 init];
  if (v10)
  {
    v11 = [[ARUISpriteParticleRenderState alloc] initWithPipelineLibrary:v9];
    spriteRenderState = v10->_spriteRenderState;
    v10->_spriteRenderState = v11;

    [(ARUISpritesParticleRenderer *)v10 _sharedInitWithDevice:v8 bufferSize:a5];
  }

  return v10;
}

- (void)_sharedInitWithDevice:(id)a3 bufferSize:(unint64_t)a4
{
  v6 = a3;
  v7 = [ARUISpritesStaticBufferFactory spritePositionsBufferWithDevice:v6];
  objc_storeWeak(&self->_spriteVertexBuffer, v7);

  v8 = [ARUISpritesStaticBufferFactory spriteIndexBufferWithDevice:v6];
  objc_storeWeak(&self->_spriteIndexBuffer, v8);

  WeakRetained = objc_loadWeakRetained(&self->_spriteIndexBuffer);
  self->_numIndicies = [WeakRetained length] >> 1;

  self->_bufferSize = a4;
  v10 = [v6 newBufferWithLength:a4 << 6 options:0];
  vertexAttributesBuffer = self->_vertexAttributesBuffer;
  self->_vertexAttributesBuffer = v10;

  v12 = [v6 newBufferWithLength:32 * self->_bufferSize options:0];
  uniformsBuffer = self->_uniformsBuffer;
  self->_uniformsBuffer = v12;
}

- (void)renderSpriteSheet:(id)a3 intoContext:(id)a4 withCommandEncoder:(id)a5
{
  v42 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v42 sprites];
  v11 = [v10 count];
  bufferSize = self->_bufferSize;

  if (v11 > bufferSize && os_variant_has_internal_ui())
  {
    v13 = MEMORY[0x1E695DF30];
    v14 = *MEMORY[0x1E695DA20];
    v15 = self->_bufferSize;
    v16 = [v42 sprites];
    [v13 raise:v14 format:{@"The sprite particle buffer should be resized, instantiated with buffer size %lu, but received particle count of: %lu", v15, objc_msgSend(v16, "count")}];
  }

  v17 = [(ARUISpriteParticleRenderState *)self->_spriteRenderState renderPipelineState];
  [v9 setRenderPipelineState:v17];

  v18 = [v42 texture];
  v19 = [v18 texture];
  [v9 setFragmentTexture:v19 atIndex:0];

  WeakRetained = objc_loadWeakRetained(&self->_spriteVertexBuffer);
  v41 = v9;
  [v9 setVertexBuffer:WeakRetained offset:0 atIndex:0];

  v21 = [v42 sprites];
  v22 = [v21 count];

  if (v22 >= self->_bufferSize)
  {
    v23 = self->_bufferSize;
  }

  else
  {
    v23 = v22;
  }

  if (v23)
  {
    v24 = 0;
    v25 = 0;
    for (i = 0; i != v23; ++i)
    {
      v27 = [v42 sprites];
      v28 = [v27 objectAtIndex:i];

      v29 = [[ARUISpriteUniforms alloc] initWithSprite:v28 inContext:v8];
      v30 = ([(MTLBuffer *)self->_vertexAttributesBuffer contents]+ v25);
      v31 = [(ARUISpriteUniforms *)v29 vertexAttributesBytes];
      v32 = v31[3];
      v34 = *v31;
      v33 = v31[1];
      v30[2] = v31[2];
      v30[3] = v32;
      *v30 = v34;
      v30[1] = v33;
      v35 = ([(MTLBuffer *)self->_uniformsBuffer contents]+ v24);
      v36 = [(ARUISpriteUniforms *)v29 uniformsBytes];
      v37 = v36[1];
      *v35 = *v36;
      v35[1] = v37;

      v25 += 64;
      v24 += 32;
    }
  }

  [v41 setVertexBuffer:self->_vertexAttributesBuffer offset:0 atIndex:1];
  [v41 setFragmentBuffer:self->_uniformsBuffer offset:0 atIndex:0];
  numIndicies = self->_numIndicies;
  v39 = objc_loadWeakRetained(&self->_spriteIndexBuffer);
  v40 = [v42 sprites];
  [v41 drawIndexedPrimitives:3 indexCount:numIndicies indexType:0 indexBuffer:v39 indexBufferOffset:0 instanceCount:{objc_msgSend(v40, "count")}];
}

@end