@interface ARUISpritesRenderer
- (ARUISpritesRenderer)initWithDevice:(id)a3 library:(id)a4;
- (ARUISpritesRenderer)initWithDeviceSPI:(id)a3 librarySPI:(id)a4;
- (void)_sharedInitWithDevice:(id)a3;
- (void)renderSpriteSheet:(id)a3 intoContext:(id)a4 withCommandEncoder:(id)a5;
@end

@implementation ARUISpritesRenderer

- (ARUISpritesRenderer)initWithDevice:(id)a3 library:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = ARUISpritesRenderer;
  v8 = [(ARUISpritesRenderer *)&v12 init];
  if (v8)
  {
    v9 = [[ARUISpriteRenderState alloc] initWithDevice:v6 library:v7];
    spriteRenderState = v8->_spriteRenderState;
    v8->_spriteRenderState = v9;

    [(ARUISpritesRenderer *)v8 _sharedInitWithDevice:v6];
  }

  return v8;
}

- (ARUISpritesRenderer)initWithDeviceSPI:(id)a3 librarySPI:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = ARUISpritesRenderer;
  v8 = [(ARUISpritesRenderer *)&v12 init];
  if (v8)
  {
    v9 = [[ARUISpriteRenderState alloc] initWithPipelineLibrary:v7];
    spriteRenderState = v8->_spriteRenderState;
    v8->_spriteRenderState = v9;

    [(ARUISpritesRenderer *)v8 _sharedInitWithDevice:v6];
  }

  return v8;
}

- (void)_sharedInitWithDevice:(id)a3
{
  v4 = a3;
  v5 = [ARUISpritesStaticBufferFactory spritePositionsBufferWithDevice:v4];
  objc_storeWeak(&self->_spriteVertexBuffer, v5);

  v6 = [ARUISpritesStaticBufferFactory spriteIndexBufferWithDevice:v4];

  objc_storeWeak(&self->_spriteIndexBuffer, v6);
  WeakRetained = objc_loadWeakRetained(&self->_spriteIndexBuffer);
  self->_numIndicies = [WeakRetained length] >> 1;

  v8 = +[ARUISpriteUniformsCache defaultCache];
  cache = self->_cache;
  self->_cache = v8;

  MEMORY[0x1EEE66BB8](v8, cache);
}

- (void)renderSpriteSheet:(id)a3 intoContext:(id)a4 withCommandEncoder:(id)a5
{
  v29 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(ARUISpriteRenderState *)self->_spriteRenderState renderPipelineState];
  [v10 setRenderPipelineState:v11];

  v12 = [v8 texture];
  v13 = [v12 texture];
  [v10 setFragmentTexture:v13 atIndex:0];

  WeakRetained = objc_loadWeakRetained(&self->_spriteVertexBuffer);
  [v10 setVertexBuffer:WeakRetained offset:0 atIndex:0];

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v23 = v8;
  v15 = [v8 sprites];
  v16 = [v15 countByEnumeratingWithState:&v24 objects:v28 count:16];
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
          objc_enumerationMutation(v15);
        }

        v20 = [(ARUISpriteUniformsCache *)self->_cache uniformsForSprite:*(*(&v24 + 1) + 8 * v19) renderedInContext:v9];
        [v10 setVertexBytes:objc_msgSend(v20 length:"vertexAttributesBytes") atIndex:{64, 1}];
        [v10 setFragmentBytes:objc_msgSend(v20 length:"uniformsBytes") atIndex:{32, 0}];
        numIndicies = self->_numIndicies;
        v22 = objc_loadWeakRetained(&self->_spriteIndexBuffer);
        [v10 drawIndexedPrimitives:3 indexCount:numIndicies indexType:0 indexBuffer:v22 indexBufferOffset:0];

        ++v19;
      }

      while (v17 != v19);
      v17 = [v15 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v17);
  }
}

@end