@interface ARUISpritesParticleRenderer
- (ARUISpritesParticleRenderer)initWithDevice:(id)device library:(id)library bufferSize:(unint64_t)size;
- (ARUISpritesParticleRenderer)initWithDeviceSPI:(id)i librarySPI:(id)pI bufferSize:(unint64_t)size;
- (void)_sharedInitWithDevice:(id)device bufferSize:(unint64_t)size;
- (void)renderSpriteSheet:(id)sheet intoContext:(id)context withCommandEncoder:(id)encoder;
@end

@implementation ARUISpritesParticleRenderer

- (ARUISpritesParticleRenderer)initWithDevice:(id)device library:(id)library bufferSize:(unint64_t)size
{
  deviceCopy = device;
  libraryCopy = library;
  v14.receiver = self;
  v14.super_class = ARUISpritesParticleRenderer;
  v10 = [(ARUISpritesParticleRenderer *)&v14 init];
  if (v10)
  {
    v11 = [[ARUISpriteParticleRenderState alloc] initWithDevice:deviceCopy library:libraryCopy];
    spriteRenderState = v10->_spriteRenderState;
    v10->_spriteRenderState = v11;

    [(ARUISpritesParticleRenderer *)v10 _sharedInitWithDevice:deviceCopy bufferSize:size];
  }

  return v10;
}

- (ARUISpritesParticleRenderer)initWithDeviceSPI:(id)i librarySPI:(id)pI bufferSize:(unint64_t)size
{
  iCopy = i;
  pICopy = pI;
  v14.receiver = self;
  v14.super_class = ARUISpritesParticleRenderer;
  v10 = [(ARUISpritesParticleRenderer *)&v14 init];
  if (v10)
  {
    v11 = [[ARUISpriteParticleRenderState alloc] initWithPipelineLibrary:pICopy];
    spriteRenderState = v10->_spriteRenderState;
    v10->_spriteRenderState = v11;

    [(ARUISpritesParticleRenderer *)v10 _sharedInitWithDevice:iCopy bufferSize:size];
  }

  return v10;
}

- (void)_sharedInitWithDevice:(id)device bufferSize:(unint64_t)size
{
  deviceCopy = device;
  v7 = [ARUISpritesStaticBufferFactory spritePositionsBufferWithDevice:deviceCopy];
  objc_storeWeak(&self->_spriteVertexBuffer, v7);

  v8 = [ARUISpritesStaticBufferFactory spriteIndexBufferWithDevice:deviceCopy];
  objc_storeWeak(&self->_spriteIndexBuffer, v8);

  WeakRetained = objc_loadWeakRetained(&self->_spriteIndexBuffer);
  self->_numIndicies = [WeakRetained length] >> 1;

  self->_bufferSize = size;
  v10 = [deviceCopy newBufferWithLength:size << 6 options:0];
  vertexAttributesBuffer = self->_vertexAttributesBuffer;
  self->_vertexAttributesBuffer = v10;

  v12 = [deviceCopy newBufferWithLength:32 * self->_bufferSize options:0];
  uniformsBuffer = self->_uniformsBuffer;
  self->_uniformsBuffer = v12;
}

- (void)renderSpriteSheet:(id)sheet intoContext:(id)context withCommandEncoder:(id)encoder
{
  sheetCopy = sheet;
  contextCopy = context;
  encoderCopy = encoder;
  sprites = [sheetCopy sprites];
  v11 = [sprites count];
  bufferSize = self->_bufferSize;

  if (v11 > bufferSize && os_variant_has_internal_ui())
  {
    v13 = MEMORY[0x1E695DF30];
    v14 = *MEMORY[0x1E695DA20];
    v15 = self->_bufferSize;
    sprites2 = [sheetCopy sprites];
    [v13 raise:v14 format:{@"The sprite particle buffer should be resized, instantiated with buffer size %lu, but received particle count of: %lu", v15, objc_msgSend(sprites2, "count")}];
  }

  renderPipelineState = [(ARUISpriteParticleRenderState *)self->_spriteRenderState renderPipelineState];
  [encoderCopy setRenderPipelineState:renderPipelineState];

  texture = [sheetCopy texture];
  v18Texture = [texture texture];
  [encoderCopy setFragmentTexture:v18Texture atIndex:0];

  WeakRetained = objc_loadWeakRetained(&self->_spriteVertexBuffer);
  v41 = encoderCopy;
  [encoderCopy setVertexBuffer:WeakRetained offset:0 atIndex:0];

  sprites3 = [sheetCopy sprites];
  v22 = [sprites3 count];

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
      sprites4 = [sheetCopy sprites];
      v28 = [sprites4 objectAtIndex:i];

      v29 = [[ARUISpriteUniforms alloc] initWithSprite:v28 inContext:contextCopy];
      v30 = ([(MTLBuffer *)self->_vertexAttributesBuffer contents]+ v25);
      vertexAttributesBytes = [(ARUISpriteUniforms *)v29 vertexAttributesBytes];
      v32 = vertexAttributesBytes[3];
      v34 = *vertexAttributesBytes;
      v33 = vertexAttributesBytes[1];
      v30[2] = vertexAttributesBytes[2];
      v30[3] = v32;
      *v30 = v34;
      v30[1] = v33;
      v35 = ([(MTLBuffer *)self->_uniformsBuffer contents]+ v24);
      uniformsBytes = [(ARUISpriteUniforms *)v29 uniformsBytes];
      v37 = uniformsBytes[1];
      *v35 = *uniformsBytes;
      v35[1] = v37;

      v25 += 64;
      v24 += 32;
    }
  }

  [v41 setVertexBuffer:self->_vertexAttributesBuffer offset:0 atIndex:1];
  [v41 setFragmentBuffer:self->_uniformsBuffer offset:0 atIndex:0];
  numIndicies = self->_numIndicies;
  v39 = objc_loadWeakRetained(&self->_spriteIndexBuffer);
  sprites5 = [sheetCopy sprites];
  [v41 drawIndexedPrimitives:3 indexCount:numIndicies indexType:0 indexBuffer:v39 indexBufferOffset:0 instanceCount:{objc_msgSend(sprites5, "count")}];
}

@end