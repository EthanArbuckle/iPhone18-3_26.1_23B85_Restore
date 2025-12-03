@interface ARUISpritesRenderer
- (ARUISpritesRenderer)initWithDevice:(id)device library:(id)library;
- (ARUISpritesRenderer)initWithDeviceSPI:(id)i librarySPI:(id)pI;
- (void)_sharedInitWithDevice:(id)device;
- (void)renderSpriteSheet:(id)sheet intoContext:(id)context withCommandEncoder:(id)encoder;
@end

@implementation ARUISpritesRenderer

- (ARUISpritesRenderer)initWithDevice:(id)device library:(id)library
{
  deviceCopy = device;
  libraryCopy = library;
  v12.receiver = self;
  v12.super_class = ARUISpritesRenderer;
  v8 = [(ARUISpritesRenderer *)&v12 init];
  if (v8)
  {
    v9 = [[ARUISpriteRenderState alloc] initWithDevice:deviceCopy library:libraryCopy];
    spriteRenderState = v8->_spriteRenderState;
    v8->_spriteRenderState = v9;

    [(ARUISpritesRenderer *)v8 _sharedInitWithDevice:deviceCopy];
  }

  return v8;
}

- (ARUISpritesRenderer)initWithDeviceSPI:(id)i librarySPI:(id)pI
{
  iCopy = i;
  pICopy = pI;
  v12.receiver = self;
  v12.super_class = ARUISpritesRenderer;
  v8 = [(ARUISpritesRenderer *)&v12 init];
  if (v8)
  {
    v9 = [[ARUISpriteRenderState alloc] initWithPipelineLibrary:pICopy];
    spriteRenderState = v8->_spriteRenderState;
    v8->_spriteRenderState = v9;

    [(ARUISpritesRenderer *)v8 _sharedInitWithDevice:iCopy];
  }

  return v8;
}

- (void)_sharedInitWithDevice:(id)device
{
  deviceCopy = device;
  v5 = [ARUISpritesStaticBufferFactory spritePositionsBufferWithDevice:deviceCopy];
  objc_storeWeak(&self->_spriteVertexBuffer, v5);

  v6 = [ARUISpritesStaticBufferFactory spriteIndexBufferWithDevice:deviceCopy];

  objc_storeWeak(&self->_spriteIndexBuffer, v6);
  WeakRetained = objc_loadWeakRetained(&self->_spriteIndexBuffer);
  self->_numIndicies = [WeakRetained length] >> 1;

  v8 = +[ARUISpriteUniformsCache defaultCache];
  cache = self->_cache;
  self->_cache = v8;

  MEMORY[0x1EEE66BB8](v8, cache);
}

- (void)renderSpriteSheet:(id)sheet intoContext:(id)context withCommandEncoder:(id)encoder
{
  v29 = *MEMORY[0x1E69E9840];
  sheetCopy = sheet;
  contextCopy = context;
  encoderCopy = encoder;
  renderPipelineState = [(ARUISpriteRenderState *)self->_spriteRenderState renderPipelineState];
  [encoderCopy setRenderPipelineState:renderPipelineState];

  texture = [sheetCopy texture];
  v12Texture = [texture texture];
  [encoderCopy setFragmentTexture:v12Texture atIndex:0];

  WeakRetained = objc_loadWeakRetained(&self->_spriteVertexBuffer);
  [encoderCopy setVertexBuffer:WeakRetained offset:0 atIndex:0];

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v23 = sheetCopy;
  sprites = [sheetCopy sprites];
  v16 = [sprites countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v25;
    do
    {
      v19 = 0;
      do
      {
        if (*v25 != v18)
        {
          objc_enumerationMutation(sprites);
        }

        v20 = [(ARUISpriteUniformsCache *)self->_cache uniformsForSprite:*(*(&v24 + 1) + 8 * v19) renderedInContext:contextCopy];
        [encoderCopy setVertexBytes:objc_msgSend(v20 length:"vertexAttributesBytes") atIndex:{64, 1}];
        [encoderCopy setFragmentBytes:objc_msgSend(v20 length:"uniformsBytes") atIndex:{32, 0}];
        numIndicies = self->_numIndicies;
        v22 = objc_loadWeakRetained(&self->_spriteIndexBuffer);
        [encoderCopy drawIndexedPrimitives:3 indexCount:numIndicies indexType:0 indexBuffer:v22 indexBufferOffset:0];

        ++v19;
      }

      while (v17 != v19);
      v17 = [sprites countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v17);
  }
}

@end