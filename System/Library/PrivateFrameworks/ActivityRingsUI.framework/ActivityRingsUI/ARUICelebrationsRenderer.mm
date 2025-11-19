@interface ARUICelebrationsRenderer
- (ARUICelebrationsRenderer)initWithDevice:(id)a3 commandQueue:(id)a4;
- (BOOL)_needsCelebrationRenderPassOn:(id)a3;
- (void)renderCelebrationsForRings:(id)a3 withCommandBuffer:(id)a4 intoTexture:(id)a5 withContext:(id)a6;
@end

@implementation ARUICelebrationsRenderer

- (ARUICelebrationsRenderer)initWithDevice:(id)a3 commandQueue:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = ARUICelebrationsRenderer;
  v8 = [(ARUICelebrationsRenderer *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_device, v6);
    v10 = [objc_alloc(MEMORY[0x1E69DF358]) initWithCommandQueue:v7];
    renderer = v9->_renderer;
    v9->_renderer = v10;
  }

  return v9;
}

- (void)renderCelebrationsForRings:(id)a3 withCommandBuffer:(id)a4 intoTexture:(id)a5 withContext:(id)a6
{
  v31 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if ([(ARUICelebrationsRenderer *)self _needsCelebrationRenderPassOn:v10])
  {
    v24 = v12;
    [(VFXRenderer *)self->_renderer setTexture:v12];
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v25 = v10;
    v14 = v10;
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
          v20 = [v19 celebration];
          v21 = v20;
          if (v20)
          {
            [v20 apply:v19 context:v13];
            renderer = self->_renderer;
            v23 = [v21 scene];
            [(VFXRenderer *)renderer setScene:v23];

            [(VFXRenderer *)self->_renderer encodeWithCommandBuffer:v11];
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v16);
    }

    v12 = v24;
    v10 = v25;
  }
}

- (BOOL)_needsCelebrationRenderPassOn:(id)a3
{
  v3 = a3;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __58__ARUICelebrationsRenderer__needsCelebrationRenderPassOn___block_invoke;
  v6[3] = &unk_1E83CE5C8;
  v6[4] = &v7;
  [v3 enumerateObjectsUsingBlock:v6];
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