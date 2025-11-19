@interface Renderer
- (Renderer)initWithMetalKitView:(id)a3;
- (void)drawInMTKView:(id)a3;
- (void)renderEncodedCommands:(id)a3 toCommandBuffer:(id)a4 withView:(id)a5;
- (void)setDevice:(id)a3;
- (void)setDisplayTextureEncoder:(id)a3;
@end

@implementation Renderer

- (void)drawInMTKView:(id)a3
{
  v9 = a3;
  v4 = [v9 currentRenderPassDescriptor];
  if (v4)
  {
    v5 = v4;
    v6 = [v9 currentDrawable];

    if (v6)
    {
      v7 = [(MTLCommandQueue *)self->_commandQueue commandBuffer];
      [(Renderer *)self renderEncodedCommands:self->_encoder toCommandBuffer:v7 withView:v9];
      v8 = [v9 currentDrawable];
      [v7 presentDrawable:v8];

      [v7 commit];
    }
  }
}

- (void)renderEncodedCommands:(id)a3 toCommandBuffer:(id)a4 withView:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v10 currentRenderPassDescriptor];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v12 = [v8 commands];
  v13 = [v12 countByEnumeratingWithState:&v39 objects:v44 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v40;
    do
    {
      v16 = 0;
      do
      {
        if (*v40 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [(GTMTLTextureRenderer *)self->_textureRenderer encodeWaits:*(*(&v39 + 1) + 8 * v16) commandBuffer:v9];
        v16 = v16 + 1;
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v39 objects:v44 count:16];
    }

    while (v14);
  }

  v31 = v11;
  v32 = v9;
  v17 = [v9 renderCommandEncoderWithDescriptor:v11];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v33 = v8;
  obj = [v8 commands];
  v18 = [obj countByEnumeratingWithState:&v35 objects:v43 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v36;
    do
    {
      v21 = 0;
      do
      {
        if (*v36 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v22 = *(*(&v35 + 1) + 8 * v21);
        textureRenderer = self->_textureRenderer;
        v24 = [v10 colorPixelFormat];
        [v10 drawableSize];
        v26 = v25;
        v28 = v27;
        v29 = [v10 layer];
        [v29 contentsScale];
        [(GTMTLTextureRenderer *)textureRenderer render:v22 withEncoder:v17 withFormat:v24 renderTargetSize:v26 viewContentsScale:v28, v30];

        v21 = v21 + 1;
      }

      while (v19 != v21);
      v19 = [obj countByEnumeratingWithState:&v35 objects:v43 count:16];
    }

    while (v19);
  }

  [v17 endEncoding];
}

- (void)setDisplayTextureEncoder:(id)a3
{
  v8 = a3;
  objc_storeStrong(&self->_encoder, a3);
  device = self->_device;
  v6 = [v8 device];

  if (device != v6)
  {
    v7 = [v8 device];
    [(Renderer *)self setDevice:v7];
  }
}

- (void)setDevice:(id)a3
{
  v10 = a3;
  objc_storeStrong(&self->_device, a3);
  device = self->_device;
  if (device)
  {
    v6 = [(MTLDevice *)device newCommandQueue];
    commandQueue = self->_commandQueue;
    self->_commandQueue = v6;

    v8 = [[GTMTLTextureRenderer alloc] initWithDevice:v10];
    textureRenderer = self->_textureRenderer;
    self->_textureRenderer = v8;
  }
}

- (Renderer)initWithMetalKitView:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = Renderer;
  v5 = [(Renderer *)&v8 init];
  if (v5)
  {
    v6 = [v4 device];
    [(Renderer *)v5 setDevice:v6];
  }

  return v5;
}

@end