@interface AVTCompositorPipelineCache
+ (id)pipelineForPropertyName:(id)a3 device:(id)a4;
- (AVTCompositorPipelineCache)initWithMetalHelper:(id)a3;
- (id)pipelineForPropertyName:(id)a3;
@end

@implementation AVTCompositorPipelineCache

- (AVTCompositorPipelineCache)initWithMetalHelper:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = AVTCompositorPipelineCache;
  v6 = [(AVTCompositorPipelineCache *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_helper, a3);
    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    pipelines = v7->_pipelines;
    v7->_pipelines = v8;
  }

  return v7;
}

- (id)pipelineForPropertyName:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_pipelines objectForKeyedSubscript:v4];
  if (!v5)
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"compositor_%@", v4];
    v7 = [(AVTMetalHelper *)self->_helper functionNamed:v6];
    v5 = [[AVTCompositorPipeline alloc] initWithFunction:v7];
    [(NSMutableDictionary *)self->_pipelines setObject:v5 forKeyedSubscript:v4];
  }

  return v5;
}

+ (id)pipelineForPropertyName:(id)a3 device:(id)a4
{
  v5 = a3;
  v6 = a4;
  os_unfair_lock_lock(&pipelineForPropertyName_device__lock);
  if (!pipelineForPropertyName_device__cachePerDevice)
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v8 = pipelineForPropertyName_device__cachePerDevice;
    pipelineForPropertyName_device__cachePerDevice = v7;
  }

  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v6, "registryID")}];
  v10 = [pipelineForPropertyName_device__cachePerDevice objectForKeyedSubscript:v9];
  if (!v10)
  {
    v11 = [AVTMetalHelper helperForDevice:v6];
    v10 = [[AVTCompositorPipelineCache alloc] initWithMetalHelper:v11];
    [pipelineForPropertyName_device__cachePerDevice setObject:v10 forKeyedSubscript:v9];
  }

  v12 = [(AVTCompositorPipelineCache *)v10 pipelineForPropertyName:v5];
  os_unfair_lock_unlock(&pipelineForPropertyName_device__lock);

  return v12;
}

@end