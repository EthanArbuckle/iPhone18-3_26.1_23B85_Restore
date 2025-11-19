@interface AVTCompositorTextureProvider
- (AVTCompositorTextureProvider)initWithCompositor:(id)a3 memoji:(id)a4 propertyName:(id)a5;
- (id)newTextureForDevice:(id)a3;
- (void)dealloc;
- (void)renderToTexture:(id)a3 computeCommandHandler:(id)a4 blitCommandHandler:(id)a5 completionHandler:(id)a6 helper:(id)a7;
@end

@implementation AVTCompositorTextureProvider

- (AVTCompositorTextureProvider)initWithCompositor:(id)a3 memoji:(id)a4 propertyName:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v17.receiver = self;
  v17.super_class = AVTCompositorTextureProvider;
  v11 = [(AVTCompositorTextureProvider *)&v17 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_memoji, v9);
    objc_storeWeak(&v12->_compositor, v8);
    v13 = [v10 copy];
    propertyName = v12->_propertyName;
    v12->_propertyName = v13;

    v12->_skinIsDirty = 1;
    v12->_componentDirtyMask = -1;
    WeakRetained = objc_loadWeakRetained(&v12->_compositor);
    [WeakRetained addClient:v12];
  }

  return v12;
}

- (void)dealloc
{
  WeakRetained = objc_loadWeakRetained(&self->_compositor);
  [WeakRetained removeClient:self];

  v4.receiver = self;
  v4.super_class = AVTCompositorTextureProvider;
  [(AVTCompositorTextureProvider *)&v4 dealloc];
}

- (id)newTextureForDevice:(id)a3
{
  propertyName = self->_propertyName;
  v5 = a3;
  v6 = [AVTCompositorPipelineCache pipelineForPropertyName:propertyName device:v5];
  pipeline = self->_pipeline;
  self->_pipeline = v6;

  MTLPixelFormatGetInfoForDevice();
  if ((v14 & 2) != 0)
  {
    v8 = 71;
  }

  else
  {
    v8 = 70;
  }

  +[AVTMemoji skinTextureSize];
  v10 = [MEMORY[0x1E69741B8] texture2DDescriptorWithPixelFormat:v8 width:v9 height:v9 mipmapped:1];
  [v10 setUsage:3];
  [v10 setStorageMode:2];
  v11 = [v5 newTextureWithDescriptor:v10];

  v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Compositor - %@", self->_propertyName];
  [v11 setLabel:v12];

  return v11;
}

- (void)renderToTexture:(id)a3 computeCommandHandler:(id)a4 blitCommandHandler:(id)a5 completionHandler:(id)a6 helper:(id)a7
{
  v21 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  if (self->_lastRenderedTexture == v21)
  {
    if (!self->_skinIsDirty && !self->_componentDirtyMask)
    {
      goto LABEL_8;
    }
  }

  else
  {
    self->_skinIsDirty = 1;
    self->_componentDirtyMask = -1;
  }

  v16 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{-[NSMutableSet count](self->_helperTokens, "count")}];
  pipeline = self->_pipeline;
  WeakRetained = objc_loadWeakRetained(&self->_memoji);
  [(AVTCompositorPipeline *)pipeline compositeTexture:v21 forMemoji:WeakRetained considerSkin:self->_skinIsDirty componentsToConsider:self->_componentDirtyMask computeCommandHandler:v12 blitCommandHandler:v13 completionHandler:v14 helper:v15 helperTokens:v16];

  v19 = objc_loadWeakRetained(&self->_memoji);
  v20 = [v19 usageIntent];

  if (v20 != 2)
  {
    objc_storeStrong(&self->_helperTokens, v16);
  }

  self->_skinIsDirty = 0;
  self->_componentDirtyMask = 0;
  self->_lastRenderedTexture = v21;

LABEL_8:
}

@end