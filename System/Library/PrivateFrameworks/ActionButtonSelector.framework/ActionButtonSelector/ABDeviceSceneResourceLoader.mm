@interface ABDeviceSceneResourceLoader
+ (id)sharedLoader;
- (ABDeviceSceneResourceLoader)init;
- (ABDeviceSceneResourceLoadingCancellable)loadResourcesWithCompletion:(uint64_t)completion;
- (BOOL)_loadResources;
- (BOOL)areResourcesLoaded;
- (double)sceneModel;
- (uint64_t)sceneView;
- (void)_didCancelWithToken:(id)token completion:(id)completion;
- (void)_doCleanup;
- (void)releaseResources;
@end

@implementation ABDeviceSceneResourceLoader

+ (id)sharedLoader
{
  objc_opt_self();
  if (sharedLoader_onceToken != -1)
  {
    +[ABDeviceSceneResourceLoader sharedLoader];
  }

  v0 = sharedLoader_loader;

  return v0;
}

uint64_t __43__ABDeviceSceneResourceLoader_sharedLoader__block_invoke()
{
  sharedLoader_loader = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

- (ABDeviceSceneResourceLoader)init
{
  v8.receiver = self;
  v8.super_class = ABDeviceSceneResourceLoader;
  v2 = [(ABDeviceSceneResourceLoader *)&v8 init];
  if (v2)
  {
    v3 = objc_opt_new();
    completions = v2->_completions;
    v2->_completions = v3;

    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    cancellables = v2->_cancellables;
    v2->_cancellables = weakObjectsHashTable;
  }

  return v2;
}

- (BOOL)_loadResources
{
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  ABLoadDeviceSceneModel(v3, location);
  __move_assignment_8_8_s0_s8_s16_S_s24_s32_s40_s48_s56_s64_s72_t80w64(&self->_sceneModel, location);
  redColor = [MEMORY[0x277D75348] redColor];
  ABDeviceSceneButtonModelSetColor(v10, redColor, 0.1);

  [(SCNView *)self->_sceneView setScene:self->_sceneModel.scene];
  objc_initWeak(location, self);
  sceneView = self->_sceneView;
  scene = [(SCNView *)sceneView scene];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __45__ABDeviceSceneResourceLoader__loadResources__block_invoke;
  v8[3] = &unk_278BFFD70;
  objc_copyWeak(&v9, location);
  LOBYTE(sceneView) = [(SCNView *)sceneView prepareObject:scene shouldAbortBlock:v8];
  objc_destroyWeak(&v9);

  objc_destroyWeak(location);
  return sceneView;
}

- (ABDeviceSceneResourceLoadingCancellable)loadResourcesWithCompletion:(uint64_t)completion
{
  v37[2] = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (!completion)
  {
LABEL_10:
    v7 = 0;
    goto LABEL_20;
  }

  v4 = ABLogger();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(completion + 24) - 1;
    if (v5 > 2)
    {
      v6 = @"Empty";
    }

    else
    {
      v6 = off_278BFFD90[v5];
    }

    *buf = 138543618;
    *&buf[4] = completion;
    *&buf[12] = 2114;
    *&buf[14] = v6;
    _os_log_impl(&dword_23DE18000, v4, OS_LOG_TYPE_DEFAULT, "(%{public}@) requested scene resources, current state is (%{public}@)", buf, 0x16u);
  }

  if (*(completion + 24) == 2)
  {
    if (v3)
    {
      v3[2](v3, 1);
    }

    goto LABEL_10;
  }

  v8 = [v3 copy];

  objc_initWeak(&location, completion);
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3042000000;
  v35 = __Block_byref_object_copy_;
  v36 = __Block_byref_object_dispose_;
  v37[0] = 0;
  v9 = [ABDeviceSceneResourceLoadingCancellable alloc];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __59__ABDeviceSceneResourceLoader_loadResourcesWithCompletion___block_invoke;
  v27[3] = &unk_278BFFCD0;
  objc_copyWeak(&v30, &location);
  v29 = buf;
  v3 = v8;
  v28 = v3;
  v7 = [(ABDeviceSceneResourceLoadingCancellable *)v9 initWithCancelBlock:v27];
  objc_storeWeak((*&buf[8] + 40), v7);
  if (v3)
  {
    v10 = *(completion + 8);
    v11 = MEMORY[0x23EF01A70](v3);
    [v10 addObject:v11];
  }

  if (*(completion + 24) != 1)
  {
    v12 = ABLogger();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v32 = 138543362;
      completionCopy = completion;
      _os_log_impl(&dword_23DE18000, v12, OS_LOG_TYPE_DEFAULT, "(%{public}@) begin loading scene resources", v32, 0xCu);
    }

    v14 = (completion + 32);
    v13 = *(completion + 32);
    *(completion + 24) = 1;
    if (!v13)
    {
      v15 = dispatch_get_global_queue(21, 0);
      v16 = dispatch_queue_create_with_target_V2("com.apple.device-scene-loader", 0, v15);
      v17 = *v14;
      *v14 = v16;
    }

    v18 = objc_alloc(MEMORY[0x277CDBB20]);
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen bounds];
    v20 = [v18 initWithFrame:?];
    v21 = *(completion + 48);
    *(completion + 48) = v20;

    [*(completion + 48) setAntialiasingMode:2];
    [*(completion + 48) setJitteringEnabled:1];
    blackColor = [MEMORY[0x277D75348] blackColor];
    [*(completion + 48) setBackgroundColor:blackColor];

    layer = [*(completion + 48) layer];
    [layer setAllowsDisplayCompositing:0];
    [(ABDeviceSceneResourceLoader *)layer loadResourcesWithCompletion:v14, &v26, &location];
  }

  objc_destroyWeak(&v30);
  _Block_object_dispose(buf, 8);
  objc_destroyWeak(v37);
  objc_destroyWeak(&location);
LABEL_20:

  v24 = *MEMORY[0x277D85DE8];

  return v7;
}

void __59__ABDeviceSceneResourceLoader_loadResourcesWithCompletion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = objc_loadWeakRetained((*(*(a1 + 40) + 8) + 40));
  [WeakRetained _didCancelWithToken:v2 completion:*(a1 + 32)];
}

void __59__ABDeviceSceneResourceLoader_loadResourcesWithCompletion___block_invoke_18(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained _loadResources];

  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __59__ABDeviceSceneResourceLoader_loadResourcesWithCompletion___block_invoke_2;
  v4[3] = &unk_278BFFCF8;
  objc_copyWeak(&v5, (a1 + 32));
  v6 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v4);
  objc_destroyWeak(&v5);
}

void __59__ABDeviceSceneResourceLoader_loadResourcesWithCompletion___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _didCompleteWithSuccess:*(a1 + 40)];
}

- (void)releaseResources
{
  v14 = *MEMORY[0x277D85DE8];
  if (self)
  {
    v2 = ABLogger();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = [MEMORY[0x277CCABB0] numberWithInteger:self[3]];
      *buf = 138543618;
      selfCopy = self;
      v12 = 2114;
      v13 = v3;
      _os_log_impl(&dword_23DE18000, v2, OS_LOG_TYPE_DEFAULT, "(%{public}@) release scene resource, current state is (%{public}@)", buf, 0x16u);
    }

    v4 = self[3];
    if (v4 == 2)
    {
      [self _doCleanup];
    }

    else if (v4 == 1)
    {
      [self setShouldAbortLoading:1];
      objc_initWeak(buf, self);
      v5 = self[1];
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __47__ABDeviceSceneResourceLoader_releaseResources__block_invoke;
      v8[3] = &unk_278BFFD48;
      objc_copyWeak(&v9, buf);
      v6 = MEMORY[0x23EF01A70](v8);
      [v5 addObject:v6];

      objc_destroyWeak(&v9);
      objc_destroyWeak(buf);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __47__ABDeviceSceneResourceLoader_releaseResources__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _doCleanup];
}

uint64_t __45__ABDeviceSceneResourceLoader__loadResources__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained shouldAbortLoading];
  }

  else
  {
    v3 = 1;
  }

  return v3;
}

- (void)_didCancelWithToken:(id)token completion:(id)completion
{
  v19 = *MEMORY[0x277D85DE8];
  tokenCopy = token;
  completionCopy = completion;
  v8 = completionCopy;
  if (completionCopy)
  {
    completions = self->_completions;
    v10 = MEMORY[0x23EF01A70](completionCopy);
    [(NSMutableOrderedSet *)completions removeObject:v10];
  }

  [(NSHashTable *)self->_cancellables removeObject:tokenCopy];
  if (![(NSHashTable *)self->_cancellables count]&& self->_state == 1)
  {
    v11 = ABLogger();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = self->_state - 1;
      if (v12 > 2)
      {
        v13 = @"Empty";
      }

      else
      {
        v13 = off_278BFFD90[v12];
      }

      v15 = 138543618;
      selfCopy = self;
      v17 = 2114;
      v18 = v13;
      _os_log_impl(&dword_23DE18000, v11, OS_LOG_TYPE_DEFAULT, "(%{public}@) cancel scene resource loading, current state is (%{public}@)", &v15, 0x16u);
    }

    [(ABDeviceSceneResourceLoader *)self setShouldAbortLoading:1];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_doCleanup
{
  sceneView = self->_sceneView;
  self->_sceneView = 0;

  memset(v4, 0, sizeof(v4));
  __copy_assignment_8_8_s0_s8_s16_S_s24_s32_s40_s48_s56_s64_s72_t80w64(&self->_sceneModel.scene, v4);
  self->_state = 0;
  __destructor_8_s0_s8_s16_S_s24_s32_s40_s48_s56_s64_s72(v4);
}

- (double)sceneModel
{
  if (self)
  {
    return __copy_constructor_8_8_s0_s8_s16_S_s24_s32_s40_s48_s56_s64_s72_t80w64(a2, (self + 56));
  }

  result = 0.0;
  *(a2 + 112) = 0u;
  *(a2 + 128) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 96) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  return result;
}

- (BOOL)areResourcesLoaded
{
  if (result)
  {
    return *(result + 24) == 2;
  }

  return result;
}

- (uint64_t)sceneView
{
  if (result)
  {
    return *(result + 48);
  }

  return result;
}

- (void)loadResourcesWithCompletion:(id *)a3 .cold.1(void *a1, NSObject **a2, id *a3, id *a4)
{
  v7 = *a2;
  *a3 = MEMORY[0x277D85DD0];
  a3[1] = 3221225472;
  a3[2] = __59__ABDeviceSceneResourceLoader_loadResourcesWithCompletion___block_invoke_18;
  a3[3] = &unk_278BFFD20;
  objc_copyWeak(a3 + 4, a4);
  dispatch_async(v7, a3);
  objc_destroyWeak(a3 + 4);
}

@end