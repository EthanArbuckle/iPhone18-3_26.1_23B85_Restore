@interface AVTCompositorPipelineCache
+ (id)pipelineForPropertyName:(id)name device:(id)device;
- (AVTCompositorPipelineCache)initWithMetalHelper:(id)helper;
- (id)pipelineForPropertyName:(id)name;
@end

@implementation AVTCompositorPipelineCache

- (AVTCompositorPipelineCache)initWithMetalHelper:(id)helper
{
  helperCopy = helper;
  v11.receiver = self;
  v11.super_class = AVTCompositorPipelineCache;
  v6 = [(AVTCompositorPipelineCache *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_helper, helper);
    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    pipelines = v7->_pipelines;
    v7->_pipelines = v8;
  }

  return v7;
}

- (id)pipelineForPropertyName:(id)name
{
  nameCopy = name;
  v5 = [(NSMutableDictionary *)self->_pipelines objectForKeyedSubscript:nameCopy];
  if (!v5)
  {
    nameCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"compositor_%@", nameCopy];
    v7 = [(AVTMetalHelper *)self->_helper functionNamed:nameCopy];
    v5 = [[AVTCompositorPipeline alloc] initWithFunction:v7];
    [(NSMutableDictionary *)self->_pipelines setObject:v5 forKeyedSubscript:nameCopy];
  }

  return v5;
}

+ (id)pipelineForPropertyName:(id)name device:(id)device
{
  nameCopy = name;
  deviceCopy = device;
  os_unfair_lock_lock(&pipelineForPropertyName_device__lock);
  if (!pipelineForPropertyName_device__cachePerDevice)
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v8 = pipelineForPropertyName_device__cachePerDevice;
    pipelineForPropertyName_device__cachePerDevice = v7;
  }

  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(deviceCopy, "registryID")}];
  v10 = [pipelineForPropertyName_device__cachePerDevice objectForKeyedSubscript:v9];
  if (!v10)
  {
    v11 = [AVTMetalHelper helperForDevice:deviceCopy];
    v10 = [[AVTCompositorPipelineCache alloc] initWithMetalHelper:v11];
    [pipelineForPropertyName_device__cachePerDevice setObject:v10 forKeyedSubscript:v9];
  }

  v12 = [(AVTCompositorPipelineCache *)v10 pipelineForPropertyName:nameCopy];
  os_unfair_lock_unlock(&pipelineForPropertyName_device__lock);

  return v12;
}

@end