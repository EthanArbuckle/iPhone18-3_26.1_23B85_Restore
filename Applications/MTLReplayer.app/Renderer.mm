@interface Renderer
- (Renderer)initWithMetalKitView:(id)view;
- (void)drawInMTKView:(id)view;
- (void)renderEncodedCommands:(id)commands toCommandBuffer:(id)buffer withView:(id)view;
- (void)setDevice:(id)device;
- (void)setDisplayTextureEncoder:(id)encoder;
@end

@implementation Renderer

- (void)drawInMTKView:(id)view
{
  viewCopy = view;
  currentRenderPassDescriptor = [viewCopy currentRenderPassDescriptor];
  if (currentRenderPassDescriptor)
  {
    v5 = currentRenderPassDescriptor;
    currentDrawable = [viewCopy currentDrawable];

    if (currentDrawable)
    {
      commandBuffer = [(MTLCommandQueue *)self->_commandQueue commandBuffer];
      [(Renderer *)self renderEncodedCommands:self->_encoder toCommandBuffer:commandBuffer withView:viewCopy];
      currentDrawable2 = [viewCopy currentDrawable];
      [commandBuffer presentDrawable:currentDrawable2];

      [commandBuffer commit];
    }
  }
}

- (void)renderEncodedCommands:(id)commands toCommandBuffer:(id)buffer withView:(id)view
{
  commandsCopy = commands;
  bufferCopy = buffer;
  viewCopy = view;
  currentRenderPassDescriptor = [viewCopy currentRenderPassDescriptor];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  commands = [commandsCopy commands];
  v13 = [commands countByEnumeratingWithState:&v39 objects:v44 count:16];
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
          objc_enumerationMutation(commands);
        }

        [(GTMTLTextureRenderer *)self->_textureRenderer encodeWaits:*(*(&v39 + 1) + 8 * v16) commandBuffer:bufferCopy];
        v16 = v16 + 1;
      }

      while (v14 != v16);
      v14 = [commands countByEnumeratingWithState:&v39 objects:v44 count:16];
    }

    while (v14);
  }

  v31 = currentRenderPassDescriptor;
  v32 = bufferCopy;
  v17 = [bufferCopy renderCommandEncoderWithDescriptor:currentRenderPassDescriptor];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v33 = commandsCopy;
  obj = [commandsCopy commands];
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
        colorPixelFormat = [viewCopy colorPixelFormat];
        [viewCopy drawableSize];
        v26 = v25;
        v28 = v27;
        layer = [viewCopy layer];
        [layer contentsScale];
        [(GTMTLTextureRenderer *)textureRenderer render:v22 withEncoder:v17 withFormat:colorPixelFormat renderTargetSize:v26 viewContentsScale:v28, v30];

        v21 = v21 + 1;
      }

      while (v19 != v21);
      v19 = [obj countByEnumeratingWithState:&v35 objects:v43 count:16];
    }

    while (v19);
  }

  [v17 endEncoding];
}

- (void)setDisplayTextureEncoder:(id)encoder
{
  encoderCopy = encoder;
  objc_storeStrong(&self->_encoder, encoder);
  device = self->_device;
  device = [encoderCopy device];

  if (device != device)
  {
    device2 = [encoderCopy device];
    [(Renderer *)self setDevice:device2];
  }
}

- (void)setDevice:(id)device
{
  deviceCopy = device;
  objc_storeStrong(&self->_device, device);
  device = self->_device;
  if (device)
  {
    newCommandQueue = [(MTLDevice *)device newCommandQueue];
    commandQueue = self->_commandQueue;
    self->_commandQueue = newCommandQueue;

    v8 = [[GTMTLTextureRenderer alloc] initWithDevice:deviceCopy];
    textureRenderer = self->_textureRenderer;
    self->_textureRenderer = v8;
  }
}

- (Renderer)initWithMetalKitView:(id)view
{
  viewCopy = view;
  v8.receiver = self;
  v8.super_class = Renderer;
  v5 = [(Renderer *)&v8 init];
  if (v5)
  {
    device = [viewCopy device];
    [(Renderer *)v5 setDevice:device];
  }

  return v5;
}

@end