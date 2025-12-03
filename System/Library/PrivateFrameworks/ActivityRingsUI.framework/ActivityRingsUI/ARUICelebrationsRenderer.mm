@interface ARUICelebrationsRenderer
- (ARUICelebrationsRenderer)initWithDevice:(id)device commandQueue:(id)queue;
- (BOOL)_needsCelebrationRenderPassOn:(id)on;
- (void)renderCelebrationsForRings:(id)rings withCommandBuffer:(id)buffer intoTexture:(id)texture withContext:(id)context;
@end

@implementation ARUICelebrationsRenderer

- (ARUICelebrationsRenderer)initWithDevice:(id)device commandQueue:(id)queue
{
  deviceCopy = device;
  queueCopy = queue;
  v13.receiver = self;
  v13.super_class = ARUICelebrationsRenderer;
  v8 = [(ARUICelebrationsRenderer *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_device, deviceCopy);
    v10 = [objc_alloc(MEMORY[0x1E69DF358]) initWithCommandQueue:queueCopy];
    renderer = v9->_renderer;
    v9->_renderer = v10;
  }

  return v9;
}

- (void)renderCelebrationsForRings:(id)rings withCommandBuffer:(id)buffer intoTexture:(id)texture withContext:(id)context
{
  v31 = *MEMORY[0x1E69E9840];
  ringsCopy = rings;
  bufferCopy = buffer;
  textureCopy = texture;
  contextCopy = context;
  if ([(ARUICelebrationsRenderer *)self _needsCelebrationRenderPassOn:ringsCopy])
  {
    v24 = textureCopy;
    [(VFXRenderer *)self->_renderer setTexture:textureCopy];
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v25 = ringsCopy;
    v14 = ringsCopy;
    v15 = [v14 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v27;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v27 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v26 + 1) + 8 * i);
          celebration = [v19 celebration];
          v21 = celebration;
          if (celebration)
          {
            [celebration apply:v19 context:contextCopy];
            renderer = self->_renderer;
            scene = [v21 scene];
            [(VFXRenderer *)renderer setScene:scene];

            [(VFXRenderer *)self->_renderer encodeWithCommandBuffer:bufferCopy];
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v16);
    }

    textureCopy = v24;
    ringsCopy = v25;
  }
}

- (BOOL)_needsCelebrationRenderPassOn:(id)on
{
  onCopy = on;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __58__ARUICelebrationsRenderer__needsCelebrationRenderPassOn___block_invoke;
  v6[3] = &unk_1E83CE5C8;
  v6[4] = &v7;
  [onCopy enumerateObjectsUsingBlock:v6];
  v4 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __58__ARUICelebrationsRenderer__needsCelebrationRenderPassOn___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = [a2 celebration];

  if (v6)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }
}

@end