@interface AVTPresetImageProvider
+ (id)configurationToRenderForPreset:(id)a3 overrides:(id)a4 baseConfiguration:(id)a5;
+ (id)presetImageCacheWithEnvironment:(id)a3;
- (AVTDeviceResourceConsumerDelegate)consumerDelegate;
- (AVTPresetImageProvider)initWithCache:(id)a3 environment:(id)a4;
- (AVTPresetImageProvider)initWithCache:(id)a3 renderingScheduler:(id)a4 environment:(id)a5;
- (AVTPresetImageProvider)initWithCache:(id)a3 renderingScheduler:(id)a4 renderingQueueProvider:(id)a5 callbackQueue:(id)a6 renderer:(id)a7 defaultScope:(id)a8 environment:(id)a9;
- (AVTPresetImageProvider)initWithRenderingScheduler:(id)a3 environment:(id)a4;
- (id)providerForImageForItem:(id)a3 scope:(id)a4 queue:(id)a5 renderingHandler:(id)a6;
- (id)providerForThumbnailForModelColor:(id)a3;
- (id)providerForThumbnailForModelPreset:(id)a3 presetOverrides:(id)a4 poseOverride:(id)a5 avatarConfiguration:(id)a6 framingMode:(id)a7;
- (id)renderThumbnailForModelColor:(id)a3;
@end

@implementation AVTPresetImageProvider

+ (id)presetImageCacheWithEnvironment:(id)a3
{
  v3 = a3;
  if (AVTUIThumbnailCaching_once())
  {
    if (AVTUIFlushThumbnailCache())
    {
      v4 = [v3 imageCacheStoreLocation];
      v5 = [v3 logger];
      [AVTImageStore clearContentAtLocation:v4 logger:v5];

      AVTUISetFlushThumbnailCache();
    }

    v6 = [v3 inMemoryImageCache];
    v7 = [AVTImageStore alloc];
    v8 = [v3 coreEnvironment];
    v9 = [v3 imageCacheStoreLocation];
    v10 = [(AVTImageStore *)v7 initWithEnvironment:v8 validateImages:0 location:v9];

    v11 = [[AVTTwoLevelsImageCache alloc] initWithFirstLevelCache:v6 secondLevelCache:v10 environment:v3];
  }

  else
  {
    v11 = objc_alloc_init(AVTPassThroughResourceCache);
  }

  return v11;
}

- (AVTPresetImageProvider)initWithRenderingScheduler:(id)a3 environment:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [objc_opt_class() presetImageCacheWithEnvironment:v6];
  v9 = [(AVTPresetImageProvider *)self initWithCache:v8 renderingScheduler:v7 environment:v6];

  return v9;
}

- (AVTPresetImageProvider)initWithCache:(id)a3 environment:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(AVTImmediateTaskScheduler);
  v9 = [(AVTPresetImageProvider *)self initWithCache:v7 renderingScheduler:v8 environment:v6];

  return v9;
}

- (AVTPresetImageProvider)initWithCache:(id)a3 renderingScheduler:(id)a4 environment:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [v8 renderer];
  v12 = [AVTRenderingScope alloc];
  [v8 mainScreenScale];
  v14 = v13;
  v15 = [AVTRenderingScope scopeOptionsForEnvironment:v8];
  v16 = [MEMORY[0x1E698E288] friendlyPose];
  v17 = [(AVTRenderingScope *)v12 initWithRenderingType:100 scale:v15 options:0 framingMode:v16 pose:v14];

  v18 = [v8 serialQueueProvider];
  v19 = [(AVTPresetImageProvider *)self initWithCache:v10 renderingScheduler:v9 renderingQueueProvider:v18 callbackQueue:MEMORY[0x1E69E96A0] renderer:v11 defaultScope:v17 environment:v8];

  return v19;
}

- (AVTPresetImageProvider)initWithCache:(id)a3 renderingScheduler:(id)a4 renderingQueueProvider:(id)a5 callbackQueue:(id)a6 renderer:(id)a7 defaultScope:(id)a8 environment:(id)a9
{
  v34 = a3;
  v33 = a4;
  v16 = a5;
  v32 = a6;
  v17 = a7;
  v18 = a8;
  v19 = a9;
  v35.receiver = self;
  v35.super_class = AVTPresetImageProvider;
  v20 = [(AVTPresetImageProvider *)&v35 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_cache, a3);
    objc_storeStrong(&v21->_renderer, a7);
    v22 = v16[2](v16, "com.apple.AvatarUI.AVTPresetImageProvider.presetQueue");
    presetQueue = v21->_presetQueue;
    v21->_presetQueue = v22;

    v24 = v16[2](v16, "com.apple.AvatarUI.AVTPresetImageProvider.colorQueue");
    colorQueue = v21->_colorQueue;
    v21->_colorQueue = v24;

    objc_storeStrong(&v21->_renderingScheduler, a4);
    objc_storeStrong(&v21->_callbackQueue, a6);
    v26 = [v19 logger];
    logger = v21->_logger;
    v21->_logger = v26;

    v28 = [AVTRenderingScope alloc];
    [v19 mainScreenScale];
    v29 = [(AVTRenderingScope *)v28 initWithRenderingType:200 scale:?];
    colorScope = v21->_colorScope;
    v21->_colorScope = v29;

    objc_storeStrong(&v21->_defaultScope, a8);
  }

  return v21;
}

- (id)providerForThumbnailForModelColor:(id)a3
{
  v4 = a3;
  v5 = [(AVTPresetImageProvider *)self colorScope];
  v6 = [(AVTPresetImageProvider *)self colorQueue];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __60__AVTPresetImageProvider_providerForThumbnailForModelColor___block_invoke;
  v14[3] = &unk_1E7F3A6A8;
  v14[4] = self;
  v15 = v4;
  v7 = v4;
  v8 = [(AVTPresetImageProvider *)self providerForImageForItem:v7 scope:v5 queue:v6 renderingHandler:v14];

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __60__AVTPresetImageProvider_providerForThumbnailForModelColor___block_invoke_2;
  v12[3] = &unk_1E7F3A6D0;
  v13 = v8;
  v9 = v8;
  v10 = [v12 copy];

  return v10;
}

- (id)renderThumbnailForModelColor:(id)a3
{
  v4 = a3;
  v5 = [(AVTPresetImageProvider *)self logger];
  v6 = [v4 description];
  [v5 logRenderingModelColor:v6];

  v7 = [v4 thumbnail];

  return v7;
}

- (id)providerForImageForItem:(id)a3 scope:(id)a4 queue:(id)a5 renderingHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __79__AVTPresetImageProvider_providerForImageForItem_scope_queue_renderingHandler___block_invoke;
  v20[3] = &unk_1E7F3A6F8;
  v20[4] = self;
  v21 = v10;
  v23 = v12;
  v24 = v13;
  v22 = v11;
  v14 = v12;
  v15 = v13;
  v16 = v11;
  v17 = v10;
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

- (id)providerForThumbnailForModelPreset:(id)a3 presetOverrides:(id)a4 poseOverride:(id)a5 avatarConfiguration:(id)a6 framingMode:(id)a7
{
  v12 = a3;
  v13 = a5;
  v14 = a7;
  v15 = a6;
  v16 = a4;
  v17 = [(AVTPresetImageProvider *)self defaultScope];
  v18 = v17;
  if (v14)
  {
    v19 = [v17 copyWithFramingMode:v14];

    v18 = v19;
  }

  if (v13)
  {
    v20 = [v18 copyApplyingPoseOverride:v13];

    v18 = v20;
  }

  v21 = [objc_opt_class() configurationToRenderForPreset:v12 overrides:v16 baseConfiguration:v15];

  v22 = [(AVTPresetImageProvider *)self presetQueue];
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __122__AVTPresetImageProvider_providerForThumbnailForModelPreset_presetOverrides_poseOverride_avatarConfiguration_framingMode___block_invoke;
  v28[3] = &unk_1E7F3A720;
  v28[4] = self;
  v29 = v12;
  v30 = v21;
  v31 = v18;
  v23 = v18;
  v24 = v21;
  v25 = v12;
  v26 = [(AVTPresetImageProvider *)self providerForImageForItem:v24 scope:v23 queue:v22 renderingHandler:v28];

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

+ (id)configurationToRenderForPreset:(id)a3 overrides:(id)a4 baseConfiguration:(id)a5
{
  v7 = a4;
  v8 = a3;
  v9 = [a5 copy];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __85__AVTPresetImageProvider_configurationToRenderForPreset_overrides_baseConfiguration___block_invoke;
  v12[3] = &unk_1E7F3A748;
  v10 = v9;
  v13 = v10;
  [v7 enumerateObjectsUsingBlock:v12];

  [v10 addPreset:v8];

  return v10;
}

- (AVTDeviceResourceConsumerDelegate)consumerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_consumerDelegate);

  return WeakRetained;
}

@end