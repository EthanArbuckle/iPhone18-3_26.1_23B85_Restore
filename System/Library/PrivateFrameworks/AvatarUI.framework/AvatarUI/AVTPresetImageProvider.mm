@interface AVTPresetImageProvider
+ (id)configurationToRenderForPreset:(id)preset overrides:(id)overrides baseConfiguration:(id)configuration;
+ (id)presetImageCacheWithEnvironment:(id)environment;
- (AVTDeviceResourceConsumerDelegate)consumerDelegate;
- (AVTPresetImageProvider)initWithCache:(id)cache environment:(id)environment;
- (AVTPresetImageProvider)initWithCache:(id)cache renderingScheduler:(id)scheduler environment:(id)environment;
- (AVTPresetImageProvider)initWithCache:(id)cache renderingScheduler:(id)scheduler renderingQueueProvider:(id)provider callbackQueue:(id)queue renderer:(id)renderer defaultScope:(id)scope environment:(id)environment;
- (AVTPresetImageProvider)initWithRenderingScheduler:(id)scheduler environment:(id)environment;
- (id)providerForImageForItem:(id)item scope:(id)scope queue:(id)queue renderingHandler:(id)handler;
- (id)providerForThumbnailForModelColor:(id)color;
- (id)providerForThumbnailForModelPreset:(id)preset presetOverrides:(id)overrides poseOverride:(id)override avatarConfiguration:(id)configuration framingMode:(id)mode;
- (id)renderThumbnailForModelColor:(id)color;
@end

@implementation AVTPresetImageProvider

+ (id)presetImageCacheWithEnvironment:(id)environment
{
  environmentCopy = environment;
  if (AVTUIThumbnailCaching_once())
  {
    if (AVTUIFlushThumbnailCache())
    {
      imageCacheStoreLocation = [environmentCopy imageCacheStoreLocation];
      logger = [environmentCopy logger];
      [AVTImageStore clearContentAtLocation:imageCacheStoreLocation logger:logger];

      AVTUISetFlushThumbnailCache();
    }

    inMemoryImageCache = [environmentCopy inMemoryImageCache];
    v7 = [AVTImageStore alloc];
    coreEnvironment = [environmentCopy coreEnvironment];
    imageCacheStoreLocation2 = [environmentCopy imageCacheStoreLocation];
    v10 = [(AVTImageStore *)v7 initWithEnvironment:coreEnvironment validateImages:0 location:imageCacheStoreLocation2];

    v11 = [[AVTTwoLevelsImageCache alloc] initWithFirstLevelCache:inMemoryImageCache secondLevelCache:v10 environment:environmentCopy];
  }

  else
  {
    v11 = objc_alloc_init(AVTPassThroughResourceCache);
  }

  return v11;
}

- (AVTPresetImageProvider)initWithRenderingScheduler:(id)scheduler environment:(id)environment
{
  environmentCopy = environment;
  schedulerCopy = scheduler;
  v8 = [objc_opt_class() presetImageCacheWithEnvironment:environmentCopy];
  v9 = [(AVTPresetImageProvider *)self initWithCache:v8 renderingScheduler:schedulerCopy environment:environmentCopy];

  return v9;
}

- (AVTPresetImageProvider)initWithCache:(id)cache environment:(id)environment
{
  environmentCopy = environment;
  cacheCopy = cache;
  v8 = objc_alloc_init(AVTImmediateTaskScheduler);
  v9 = [(AVTPresetImageProvider *)self initWithCache:cacheCopy renderingScheduler:v8 environment:environmentCopy];

  return v9;
}

- (AVTPresetImageProvider)initWithCache:(id)cache renderingScheduler:(id)scheduler environment:(id)environment
{
  environmentCopy = environment;
  schedulerCopy = scheduler;
  cacheCopy = cache;
  renderer = [environmentCopy renderer];
  v12 = [AVTRenderingScope alloc];
  [environmentCopy mainScreenScale];
  v14 = v13;
  v15 = [AVTRenderingScope scopeOptionsForEnvironment:environmentCopy];
  friendlyPose = [MEMORY[0x1E698E288] friendlyPose];
  v17 = [(AVTRenderingScope *)v12 initWithRenderingType:100 scale:v15 options:0 framingMode:friendlyPose pose:v14];

  serialQueueProvider = [environmentCopy serialQueueProvider];
  v19 = [(AVTPresetImageProvider *)self initWithCache:cacheCopy renderingScheduler:schedulerCopy renderingQueueProvider:serialQueueProvider callbackQueue:MEMORY[0x1E69E96A0] renderer:renderer defaultScope:v17 environment:environmentCopy];

  return v19;
}

- (AVTPresetImageProvider)initWithCache:(id)cache renderingScheduler:(id)scheduler renderingQueueProvider:(id)provider callbackQueue:(id)queue renderer:(id)renderer defaultScope:(id)scope environment:(id)environment
{
  cacheCopy = cache;
  schedulerCopy = scheduler;
  providerCopy = provider;
  queueCopy = queue;
  rendererCopy = renderer;
  scopeCopy = scope;
  environmentCopy = environment;
  v35.receiver = self;
  v35.super_class = AVTPresetImageProvider;
  v20 = [(AVTPresetImageProvider *)&v35 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_cache, cache);
    objc_storeStrong(&v21->_renderer, renderer);
    v22 = providerCopy[2](providerCopy, "com.apple.AvatarUI.AVTPresetImageProvider.presetQueue");
    presetQueue = v21->_presetQueue;
    v21->_presetQueue = v22;

    v24 = providerCopy[2](providerCopy, "com.apple.AvatarUI.AVTPresetImageProvider.colorQueue");
    colorQueue = v21->_colorQueue;
    v21->_colorQueue = v24;

    objc_storeStrong(&v21->_renderingScheduler, scheduler);
    objc_storeStrong(&v21->_callbackQueue, queue);
    logger = [environmentCopy logger];
    logger = v21->_logger;
    v21->_logger = logger;

    v28 = [AVTRenderingScope alloc];
    [environmentCopy mainScreenScale];
    v29 = [(AVTRenderingScope *)v28 initWithRenderingType:200 scale:?];
    colorScope = v21->_colorScope;
    v21->_colorScope = v29;

    objc_storeStrong(&v21->_defaultScope, scope);
  }

  return v21;
}

- (id)providerForThumbnailForModelColor:(id)color
{
  colorCopy = color;
  colorScope = [(AVTPresetImageProvider *)self colorScope];
  colorQueue = [(AVTPresetImageProvider *)self colorQueue];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __60__AVTPresetImageProvider_providerForThumbnailForModelColor___block_invoke;
  v14[3] = &unk_1E7F3A6A8;
  v14[4] = self;
  v15 = colorCopy;
  v7 = colorCopy;
  v8 = [(AVTPresetImageProvider *)self providerForImageForItem:v7 scope:colorScope queue:colorQueue renderingHandler:v14];

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __60__AVTPresetImageProvider_providerForThumbnailForModelColor___block_invoke_2;
  v12[3] = &unk_1E7F3A6D0;
  v13 = v8;
  v9 = v8;
  v10 = [v12 copy];

  return v10;
}

- (id)renderThumbnailForModelColor:(id)color
{
  colorCopy = color;
  logger = [(AVTPresetImageProvider *)self logger];
  v6 = [colorCopy description];
  [logger logRenderingModelColor:v6];

  thumbnail = [colorCopy thumbnail];

  return thumbnail;
}

- (id)providerForImageForItem:(id)item scope:(id)scope queue:(id)queue renderingHandler:(id)handler
{
  itemCopy = item;
  scopeCopy = scope;
  queueCopy = queue;
  handlerCopy = handler;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __79__AVTPresetImageProvider_providerForImageForItem_scope_queue_renderingHandler___block_invoke;
  v20[3] = &unk_1E7F3A6F8;
  v20[4] = self;
  v21 = itemCopy;
  v23 = queueCopy;
  v24 = handlerCopy;
  v22 = scopeCopy;
  v14 = queueCopy;
  v15 = handlerCopy;
  v16 = scopeCopy;
  v17 = itemCopy;
  v18 = [v20 copy];

  return v18;
}

id __79__AVTPresetImageProvider_providerForImageForItem_scope_queue_renderingHandler___block_invoke(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  v6 = [*(a1 + 32) cache];
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = *(a1 + 64);
  if (a3)
  {
    v10 = [AVTResourceCacheSupport resourceFromCache:v6 forItem:v7 scope:v8 preflightCacheMissHandler:0 cacheMissHandler:v9 cacheMissQueue:0 taskScheduler:0 callbackQueue:0 resourceHandler:v5];
  }

  else
  {
    v11 = *(a1 + 56);
    v12 = [*(a1 + 32) renderingScheduler];
    v13 = [*(a1 + 32) callbackQueue];
    v10 = [AVTResourceCacheSupport resourceFromCache:v6 forItem:v7 scope:v8 preflightCacheMissHandler:0 cacheMissHandler:v9 cacheMissQueue:v11 taskScheduler:v12 callbackQueue:v13 resourceHandler:v5];
  }

  return v10;
}

- (id)providerForThumbnailForModelPreset:(id)preset presetOverrides:(id)overrides poseOverride:(id)override avatarConfiguration:(id)configuration framingMode:(id)mode
{
  presetCopy = preset;
  overrideCopy = override;
  modeCopy = mode;
  configurationCopy = configuration;
  overridesCopy = overrides;
  defaultScope = [(AVTPresetImageProvider *)self defaultScope];
  v18 = defaultScope;
  if (modeCopy)
  {
    v19 = [defaultScope copyWithFramingMode:modeCopy];

    v18 = v19;
  }

  if (overrideCopy)
  {
    v20 = [v18 copyApplyingPoseOverride:overrideCopy];

    v18 = v20;
  }

  v21 = [objc_opt_class() configurationToRenderForPreset:presetCopy overrides:overridesCopy baseConfiguration:configurationCopy];

  presetQueue = [(AVTPresetImageProvider *)self presetQueue];
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __122__AVTPresetImageProvider_providerForThumbnailForModelPreset_presetOverrides_poseOverride_avatarConfiguration_framingMode___block_invoke;
  v28[3] = &unk_1E7F3A720;
  v28[4] = self;
  v29 = presetCopy;
  v30 = v21;
  v31 = v18;
  v23 = v18;
  v24 = v21;
  v25 = presetCopy;
  v26 = [(AVTPresetImageProvider *)self providerForImageForItem:v24 scope:v23 queue:presetQueue renderingHandler:v28];

  return v26;
}

id __122__AVTPresetImageProvider_providerForThumbnailForModelPreset_presetOverrides_poseOverride_avatarConfiguration_framingMode___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) logger];
  v3 = [*(a1 + 40) description];
  [v2 logRenderingModelPreset:v3];

  v4 = [*(a1 + 32) consumerDelegate];
  [v4 consumer:*(a1 + 32) willConsumeRenderingResourceForEstimatedDuration:0.5];

  v5 = [*(a1 + 32) renderer];
  v6 = [v5 imageForAvatarConfiguration:*(a1 + 48) scope:*(a1 + 56)];

  return v6;
}

+ (id)configurationToRenderForPreset:(id)preset overrides:(id)overrides baseConfiguration:(id)configuration
{
  overridesCopy = overrides;
  presetCopy = preset;
  v9 = [configuration copy];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __85__AVTPresetImageProvider_configurationToRenderForPreset_overrides_baseConfiguration___block_invoke;
  v12[3] = &unk_1E7F3A748;
  v10 = v9;
  v13 = v10;
  [overridesCopy enumerateObjectsUsingBlock:v12];

  [v10 addPreset:presetCopy];

  return v10;
}

- (AVTDeviceResourceConsumerDelegate)consumerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_consumerDelegate);

  return WeakRetained;
}

@end