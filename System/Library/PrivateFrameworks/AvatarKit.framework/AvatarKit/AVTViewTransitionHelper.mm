@interface AVTViewTransitionHelper
- (__n128)viewBackgroundColor;
- (id)initWithView:(id *)a1;
- (id)snapshotViewUsingBackgroundColor:(AVTViewTransitionHelper *)self;
- (id)transitionTechnique;
- (void)coordinator_performCrossFadeThenAnimateTransitionOutOfStickerConfigurationWithDuration:(double)a3 avatar:(id)a4 avatarNode:(id)a5 oldReversionContext:(id)a6;
- (void)coordinator_performCrossFadeThenAnimateTransitionToStickerConfiguration:(id)a3 duration:(double)a4 options:(unint64_t)a5 avatar:(id)a6 avatarNode:(id)a7 oldReversionContext:(id)a8;
- (void)coordinator_performCrossFadeTransitionOutOfStickerConfigurationWithDuration:(double)a3 avatar:(id)a4 avatarNode:(id)a5 oldReversionContext:(id)a6;
- (void)coordinator_performCrossFadeTransitionToStickerConfiguration:(id)a3 duration:(double)a4 options:(unint64_t)a5 avatar:(id)a6 avatarNode:(id)a7 oldReversionContext:(id)a8;
- (void)transitionCoordinatorOutOfStickerConfigurationWithDuration:(double)a3 style:(uint64_t)a4 options:(void *)a5 avatar:;
- (void)transitionCoordinatorToStickerConfiguration:(unint64_t)a3 duration:(double)a4 style:(uint64_t)a5 options:(void *)a6 avatar:;
- (void)transitionViewToStickerConfiguration:(void *)a3 fallbackPose:(unint64_t)a4 duration:(void *)a5 style:(void *)a6 avatar:(void *)a7 completionHandler:(double)a8 simultaneousAnimationsBlock:;
- (void)view_performAnimateThenCrossFadeTransitionFromStickerConfiguration:(id)a3 toStickerConfiguration:(id)a4 duration:(double)a5 avatar:(id)a6 avatarNode:(id)a7 oldReversionContext:(id)a8 completionHandler:(id)a9 simultaneousAnimationsBlock:(id)a10;
- (void)view_performCrossFadeThenAnimateTransitionToStickerConfiguration:(id)a3 fallbackPose:(id)a4 duration:(double)a5 avatar:(id)a6 avatarNode:(id)a7 oldReversionContext:(id)a8 completionHandler:(id)a9 simultaneousAnimationsBlock:(id)a10;
- (void)view_performCrossFadeTransitionToStickerConfiguration:(id)a3 fallbackPose:(id)a4 duration:(double)a5 avatar:(id)a6 avatarNode:(id)a7 oldReversionContext:(id)a8 completionHandler:(id)a9 simultaneousAnimationsBlock:(id)a10;
@end

@implementation AVTViewTransitionHelper

uint64_t __145__AVTViewTransitionHelper_transitionViewToStickerConfiguration_fallbackPose_duration_style_avatar_completionHandler_simultaneousAnimationsBlock___block_invoke(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a4)
  {
    return [AVTStickerGenerator applyViewTransitionConfiguration:*(result + 32) forLateAdditionOfComponentAssetNode:a3 ofAvatar:a2];
  }

  return result;
}

uint64_t __145__AVTViewTransitionHelper_transitionViewToStickerConfiguration_fallbackPose_duration_style_avatar_completionHandler_simultaneousAnimationsBlock___block_invoke_2(uint64_t a1)
{
  v2 = [AVTStickerGenerator poseByApplyingAdjustmentsForConfiguration:*(a1 + 40) avatar:*(a1 + 32)];
  [*(a1 + 32) setPose:v2];

  [*(a1 + 32) stopTransitionAnimation];
  result = *(a1 + 48);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

uint64_t __145__AVTViewTransitionHelper_transitionViewToStickerConfiguration_fallbackPose_duration_style_avatar_completionHandler_simultaneousAnimationsBlock___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) setPose:*(a1 + 40)];
  [*(a1 + 32) stopTransitionAnimation];
  result = *(a1 + 48);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)view_performCrossFadeTransitionToStickerConfiguration:(id)a3 fallbackPose:(id)a4 duration:(double)a5 avatar:(id)a6 avatarNode:(id)a7 oldReversionContext:(id)a8 completionHandler:(id)a9 simultaneousAnimationsBlock:(id)a10
{
  v44 = a3;
  v17 = a4;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v42 = a9;
  v21 = a10;
  objc_initWeak(location, self);
  objc_copyWeak(&to, &self->_view);
  v22 = [(AVTViewTransitionHelper *)self transitionTechnique];
  if (!v22)
  {
    v23 = avt_default_log();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      [AVTViewTransitionHelper view_performCrossFadeTransitionToStickerConfiguration:v23 fallbackPose:v24 duration:v25 avatar:v26 avatarNode:v27 oldReversionContext:v28 completionHandler:v29 simultaneousAnimationsBlock:v30];
    }
  }

  v41 = v19;
  [v22 setFramebufferTextureOpacity:0.0];
  [(AVTViewTransitionHelper *)self viewBackgroundColor];
  v40 = v31;
  WeakRetained = objc_loadWeakRetained(&self->_view);
  v33 = [WeakRetained renderer];
  v34 = [v33 _renderingQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __187__AVTViewTransitionHelper_view_performCrossFadeTransitionToStickerConfiguration_fallbackPose_duration_avatar_avatarNode_oldReversionContext_completionHandler_simultaneousAnimationsBlock___block_invoke;
  block[3] = &unk_1E7F480A0;
  objc_copyWeak(&v54, location);
  objc_copyWeak(v55, &to);
  v46 = v40;
  v47 = v22;
  v48 = v20;
  v49 = v18;
  v50 = v44;
  v51 = v17;
  v52 = v21;
  v53 = v42;
  v55[1] = *&a5;
  v56 = 0;
  v43 = v42;
  *&v40 = v21;
  v35 = v17;
  v36 = v44;
  v37 = v18;
  v38 = v20;
  v39 = v22;
  dispatch_async(v34, block);

  objc_destroyWeak(v55);
  objc_destroyWeak(&v54);
  objc_destroyWeak(&to);
  objc_destroyWeak(location);
}

void __187__AVTViewTransitionHelper_view_performCrossFadeTransitionToStickerConfiguration_fallbackPose_duration_avatar_avatarNode_oldReversionContext_completionHandler_simultaneousAnimationsBlock___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 104));
  v3 = objc_loadWeakRetained((a1 + 112));
  v4 = v3;
  if (WeakRetained && v3)
  {
    [v3 setAvtRendererTechnique:0];
    v5 = [WeakRetained snapshotViewUsingBackgroundColor:*(a1 + 32)];
    if (v5)
    {
      [*(a1 + 48) setSnapshotTexture:v5];
      [v4 setAvtRendererTechnique:*(a1 + 48)];
    }

    [*(a1 + 56) revertChangesWithScope:0 animationDuration:0.0];
    [*(a1 + 64) stopTransitionAnimation];
    if (*(a1 + 72))
    {
      v6 = objc_alloc_init(AVTStickerConfigurationReversionContext);
      v7 = WeakRetained[3];
      WeakRetained[3] = v6;
      v8 = v6;

      [AVTStickerGenerator applyViewTransitionConfiguration:*(a1 + 72) toView:v4 scope:0 options:0 duration:*(a1 + 64) avatar:v8 context:0.0 completionHandler:0];
    }

    else
    {
      [*(a1 + 64) setPose:*(a1 + 80)];
    }

    [MEMORY[0x1E69DF378] flush];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __187__AVTViewTransitionHelper_view_performCrossFadeTransitionToStickerConfiguration_fallbackPose_duration_avatar_avatarNode_oldReversionContext_completionHandler_simultaneousAnimationsBlock___block_invoke_2;
    block[3] = &unk_1E7F48078;
    v14 = *(a1 + 88);
    v10 = *(a1 + 64);
    v16[1] = *(a1 + 120);
    v17 = *(a1 + 128);
    v11 = *(a1 + 48);
    objc_copyWeak(v16, (a1 + 112));
    v12 = *(a1 + 72);
    v13 = *(a1 + 80);
    v15 = *(a1 + 96);
    dispatch_async(MEMORY[0x1E69E96A0], block);

    objc_destroyWeak(v16);
  }
}

void __187__AVTViewTransitionHelper_view_performCrossFadeTransitionToStickerConfiguration_fallbackPose_duration_avatar_avatarNode_oldReversionContext_completionHandler_simultaneousAnimationsBlock___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979EB8]];
  v4 = *(a1 + 32);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __187__AVTViewTransitionHelper_view_performCrossFadeTransitionToStickerConfiguration_fallbackPose_duration_avatar_avatarNode_oldReversionContext_completionHandler_simultaneousAnimationsBlock___block_invoke_3;
  v6[3] = &unk_1E7F48050;
  v12[1] = *(a1 + 88);
  v5 = v3;
  v7 = v5;
  v13 = *(a1 + 96);
  v8 = *(a1 + 40);
  objc_copyWeak(v12, (a1 + 80));
  v9 = *(a1 + 48);
  v10 = *(a1 + 56);
  v11 = *(a1 + 72);
  [v4 addDidUpdateAfterAnimationsEvaluatedAtTimeCallbackForKey:@"sticker-transition" block:v6];

  objc_destroyWeak(v12);
}

void __187__AVTViewTransitionHelper_view_performCrossFadeTransitionToStickerConfiguration_fallbackPose_duration_avatar_avatarNode_oldReversionContext_completionHandler_simultaneousAnimationsBlock___block_invoke_3(uint64_t a1, void *a2, double a3, double a4, uint64_t a5, _BYTE *a6)
{
  v19 = a2;
  v10 = (a3 - a4) / *(a1 + 80);
  *&v10 = v10;
  *&a4 = fmaxf(fminf(*&v10, 1.0), 0.0);
  LODWORD(v10) = LODWORD(a4);
  [*(a1 + 32) _solveForInput:v10];
  *&v12 = *(a1 + 88) + (v11 * (1.0 - *(a1 + 88)));
  [*(a1 + 40) setFramebufferTextureOpacity:v12];
  if (*&a4 >= 1.0)
  {
    *a6 = 1;
    WeakRetained = objc_loadWeakRetained((a1 + 72));
    v14 = WeakRetained;
    if (WeakRetained)
    {
      v15 = [WeakRetained avtRendererTechnique];
      v16 = *(a1 + 40);

      if (v15 == v16)
      {
        [v14 setAvtRendererTechnique:0];
      }
    }

    v17 = [AVTStickerGenerator poseByApplyingAdjustmentsForConfiguration:*(a1 + 48) avatar:v19];
    v18 = v17;
    if (!v17)
    {
      v18 = *(a1 + 56);
    }

    [v19 setPose:v18];

    [v19 stopTransitionAnimation];
    if (*(a1 + 64))
    {
      dispatch_async(MEMORY[0x1E69E96A0], *(a1 + 64));
    }
  }
}

- (void)coordinator_performCrossFadeTransitionToStickerConfiguration:(id)a3 duration:(double)a4 options:(unint64_t)a5 avatar:(id)a6 avatarNode:(id)a7 oldReversionContext:(id)a8
{
  v13 = a3;
  v14 = a6;
  v15 = a8;
  WeakRetained = objc_loadWeakRetained(&self->_view);
  if (WeakRetained)
  {
    v17 = [(AVTViewTransitionHelper *)self transitionTechnique];
    if (!v17)
    {
      v18 = avt_default_log();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [AVTViewTransitionHelper view_performCrossFadeTransitionToStickerConfiguration:v18 fallbackPose:v19 duration:v20 avatar:v21 avatarNode:v22 oldReversionContext:v23 completionHandler:v24 simultaneousAnimationsBlock:v25];
      }
    }

    [v17 setFramebufferTextureOpacity:0.0];
    [(AVTViewTransitionHelper *)self viewBackgroundColor];
    v38 = v26;
    v27 = [WeakRetained renderer];
    v28 = [v27 _renderingQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __143__AVTViewTransitionHelper_coordinator_performCrossFadeTransitionToStickerConfiguration_duration_options_avatar_avatarNode_oldReversionContext___block_invoke;
    block[3] = &unk_1E7F480C8;
    v29 = WeakRetained;
    v45 = v29;
    v46 = self;
    v44 = v38;
    v30 = v17;
    v47 = v30;
    dispatch_sync(v28, block);

    [v15 revertChangesWithScope:0 animationDuration:0.0];
    v31 = objc_alloc_init(AVTStickerConfigurationReversionContext);
    stickerTransitionReversionContext = self->_stickerTransitionReversionContext;
    self->_stickerTransitionReversionContext = v31;

    [AVTStickerGenerator applyViewTransitionConfiguration:v13 toView:v29 scope:0 options:a5 duration:v14 avatar:self->_stickerTransitionReversionContext context:a4 completionHandler:0];
    v33 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979EB8]];
    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = __143__AVTViewTransitionHelper_coordinator_performCrossFadeTransitionToStickerConfiguration_duration_options_avatar_avatarNode_oldReversionContext___block_invoke_2;
    v39[3] = &unk_1E7F480F0;
    v42 = a4;
    v40 = v33;
    v41 = v30;
    v15 = v30;
    v34 = v33;
    [v14 addDidUpdateAfterAnimationsEvaluatedAtTimeCallbackForKey:@"sticker-transition" block:v39];
  }

  else
  {
    v35 = avt_default_log();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      [AVTViewTransitionHelper coordinator_performCrossFadeTransitionToStickerConfiguration:v35 duration:v36 options:v37 avatar:? avatarNode:? oldReversionContext:?];
    }

    [v15 revertChangesWithScope:0 animationDuration:0.0];
  }
}

uint64_t __143__AVTViewTransitionHelper_coordinator_performCrossFadeTransitionToStickerConfiguration_duration_options_avatar_avatarNode_oldReversionContext___block_invoke(uint64_t a1)
{
  [*(a1 + 48) setAvtRendererTechnique:0];
  v2 = [*(a1 + 56) snapshotViewUsingBackgroundColor:*(a1 + 32)];
  if (v2)
  {
    [*(a1 + 64) setSnapshotTexture:v2];
    [*(a1 + 48) setAvtRendererTechnique:*(a1 + 64)];
    [MEMORY[0x1E69DF378] flush];
  }

  return MEMORY[0x1EEE66BB8]();
}

void __143__AVTViewTransitionHelper_coordinator_performCrossFadeTransitionToStickerConfiguration_duration_options_avatar_avatarNode_oldReversionContext___block_invoke_2(uint64_t a1, double a2, double a3, uint64_t a4, void *a5, _BYTE *a6)
{
  v10 = a5;
  v11 = (a2 - a3) / *(a1 + 48);
  *&v11 = v11;
  *&a3 = fmaxf(fminf(*&v11, 1.0), 0.0);
  LODWORD(v11) = LODWORD(a3);
  [*(a1 + 32) _solveForInput:v11];
  *&v13 = v12 + 0.0;
  [*(a1 + 40) setFramebufferTextureOpacity:v13];
  if (*&a3 >= 1.0)
  {
    *a6 = 1;
    if ([v10 conformsToProtocol:&unk_1F3A37670])
    {
      v14 = v10;
      v15 = [v14 avtRendererTechnique];
      v16 = *(a1 + 40);

      if (v15 == v16)
      {
        [v14 setAvtRendererTechnique:0];
      }
    }

    else
    {
      v17 = avt_default_log();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        __143__AVTViewTransitionHelper_coordinator_performCrossFadeTransitionToStickerConfiguration_duration_options_avatar_avatarNode_oldReversionContext___block_invoke_2_cold_1();
      }
    }
  }
}

- (void)coordinator_performCrossFadeTransitionOutOfStickerConfigurationWithDuration:(double)a3 avatar:(id)a4 avatarNode:(id)a5 oldReversionContext:(id)a6
{
  v9 = a4;
  v10 = a6;
  WeakRetained = objc_loadWeakRetained(&self->_view);
  if (WeakRetained)
  {
    v12 = [(AVTViewTransitionHelper *)self transitionTechnique];
    if (!v12)
    {
      v13 = avt_default_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [AVTViewTransitionHelper view_performCrossFadeTransitionToStickerConfiguration:v13 fallbackPose:v14 duration:v15 avatar:v16 avatarNode:v17 oldReversionContext:v18 completionHandler:v19 simultaneousAnimationsBlock:v20];
      }
    }

    [v12 setFramebufferTextureOpacity:0.0];
    [(AVTViewTransitionHelper *)self viewBackgroundColor];
    v30 = v21;
    v22 = [WeakRetained renderer];
    v23 = [v22 _renderingQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __141__AVTViewTransitionHelper_coordinator_performCrossFadeTransitionOutOfStickerConfigurationWithDuration_avatar_avatarNode_oldReversionContext___block_invoke;
    block[3] = &unk_1E7F480C8;
    v37 = WeakRetained;
    v38 = self;
    v36 = v30;
    v24 = v12;
    v39 = v24;
    dispatch_sync(v23, block);

    [v10 revertChangesWithScope:0 animationDuration:0.0];
    v25 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979EB8]];
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __141__AVTViewTransitionHelper_coordinator_performCrossFadeTransitionOutOfStickerConfigurationWithDuration_avatar_avatarNode_oldReversionContext___block_invoke_2;
    v31[3] = &unk_1E7F480F0;
    v34 = a3;
    v32 = v25;
    v33 = v24;
    v10 = v24;
    v26 = v25;
    [v9 addDidUpdateAfterAnimationsEvaluatedAtTimeCallbackForKey:@"sticker-transition" block:v31];
  }

  else
  {
    v27 = avt_default_log();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      [AVTViewTransitionHelper coordinator_performCrossFadeTransitionToStickerConfiguration:v27 duration:v28 options:v29 avatar:? avatarNode:? oldReversionContext:?];
    }

    [v10 revertChangesWithScope:0 animationDuration:0.0];
  }
}

uint64_t __141__AVTViewTransitionHelper_coordinator_performCrossFadeTransitionOutOfStickerConfigurationWithDuration_avatar_avatarNode_oldReversionContext___block_invoke(uint64_t a1)
{
  [*(a1 + 48) setAvtRendererTechnique:0];
  v2 = [*(a1 + 56) snapshotViewUsingBackgroundColor:*(a1 + 32)];
  if (v2)
  {
    [*(a1 + 64) setSnapshotTexture:v2];
    [*(a1 + 48) setAvtRendererTechnique:*(a1 + 64)];
    [MEMORY[0x1E69DF378] flush];
  }

  return MEMORY[0x1EEE66BB8]();
}

void __141__AVTViewTransitionHelper_coordinator_performCrossFadeTransitionOutOfStickerConfigurationWithDuration_avatar_avatarNode_oldReversionContext___block_invoke_2(uint64_t a1, double a2, double a3, uint64_t a4, void *a5, _BYTE *a6)
{
  v10 = a5;
  v11 = (a2 - a3) / *(a1 + 48);
  *&v11 = v11;
  *&a3 = fmaxf(fminf(*&v11, 1.0), 0.0);
  LODWORD(v11) = LODWORD(a3);
  [*(a1 + 32) _solveForInput:v11];
  *&v13 = v12 + 0.0;
  [*(a1 + 40) setFramebufferTextureOpacity:v13];
  if (*&a3 >= 1.0)
  {
    *a6 = 1;
    if ([v10 conformsToProtocol:&unk_1F3A37670])
    {
      v14 = v10;
      v15 = [v14 avtRendererTechnique];
      v16 = *(a1 + 40);

      if (v15 == v16)
      {
        [v14 setAvtRendererTechnique:0];
      }
    }

    else
    {
      v17 = avt_default_log();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        __143__AVTViewTransitionHelper_coordinator_performCrossFadeTransitionToStickerConfiguration_duration_options_avatar_avatarNode_oldReversionContext___block_invoke_2_cold_1();
      }
    }
  }
}

- (void)view_performCrossFadeThenAnimateTransitionToStickerConfiguration:(id)a3 fallbackPose:(id)a4 duration:(double)a5 avatar:(id)a6 avatarNode:(id)a7 oldReversionContext:(id)a8 completionHandler:(id)a9 simultaneousAnimationsBlock:(id)a10
{
  v17 = a3;
  v18 = a4;
  v44 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  v43 = a10;
  objc_initWeak(location, self);
  objc_copyWeak(&to, &self->_view);
  v22 = [(AVTViewTransitionHelper *)self transitionTechnique];
  if (!v22)
  {
    v23 = avt_default_log();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      [AVTViewTransitionHelper view_performCrossFadeTransitionToStickerConfiguration:v23 fallbackPose:v24 duration:v25 avatar:v26 avatarNode:v27 oldReversionContext:v28 completionHandler:v29 simultaneousAnimationsBlock:v30];
    }
  }

  v31 = v17;
  [v22 setFramebufferTextureOpacity:0.0];
  [(AVTViewTransitionHelper *)self viewBackgroundColor];
  v41 = v32;
  WeakRetained = objc_loadWeakRetained(&self->_view);
  v34 = [WeakRetained renderer];
  v35 = [v34 _renderingQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __198__AVTViewTransitionHelper_view_performCrossFadeThenAnimateTransitionToStickerConfiguration_fallbackPose_duration_avatar_avatarNode_oldReversionContext_completionHandler_simultaneousAnimationsBlock___block_invoke;
  block[3] = &unk_1E7F48168;
  objc_copyWeak(&v54, location);
  objc_copyWeak(v55, &to);
  v46 = v41;
  v47 = v22;
  v48 = v20;
  v55[1] = *&a5;
  v56 = 0;
  v49 = v44;
  v50 = v31;
  v51 = v18;
  v52 = v43;
  v53 = v21;
  v42 = v21;
  *&v41 = v18;
  v40 = v31;
  v36 = v44;
  v37 = v43;
  v38 = v20;
  v39 = v22;
  dispatch_async(v35, block);

  objc_destroyWeak(v55);
  objc_destroyWeak(&v54);
  objc_destroyWeak(&to);
  objc_destroyWeak(location);
}

void __198__AVTViewTransitionHelper_view_performCrossFadeThenAnimateTransitionToStickerConfiguration_fallbackPose_duration_avatar_avatarNode_oldReversionContext_completionHandler_simultaneousAnimationsBlock___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 104));
  v3 = objc_loadWeakRetained((a1 + 112));
  v4 = v3;
  if (WeakRetained && v3)
  {
    [v3 setAvtRendererTechnique:0];
    v5 = [WeakRetained snapshotViewUsingBackgroundColor:*(a1 + 32)];
    if (v5)
    {
      [*(a1 + 48) setSnapshotTexture:v5];
      [v4 setAvtRendererTechnique:*(a1 + 48)];
    }

    [*(a1 + 56) revertChangesWithScope:1 animationDuration:0.0];
    [MEMORY[0x1E69DF378] flush];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __198__AVTViewTransitionHelper_view_performCrossFadeThenAnimateTransitionToStickerConfiguration_fallbackPose_duration_avatar_avatarNode_oldReversionContext_completionHandler_simultaneousAnimationsBlock___block_invoke_2;
    v6[3] = &unk_1E7F48140;
    v14 = *(a1 + 88);
    v7 = *(a1 + 64);
    v16[1] = *(a1 + 120);
    v17 = *(a1 + 128);
    v8 = *(a1 + 48);
    v9 = *(a1 + 72);
    v10 = WeakRetained;
    v11 = v4;
    v12 = *(a1 + 80);
    v13 = *(a1 + 56);
    objc_copyWeak(v16, (a1 + 112));
    v15 = *(a1 + 96);
    dispatch_async(MEMORY[0x1E69E96A0], v6);

    objc_destroyWeak(v16);
  }
}

void __198__AVTViewTransitionHelper_view_performCrossFadeThenAnimateTransitionToStickerConfiguration_fallbackPose_duration_avatar_avatarNode_oldReversionContext_completionHandler_simultaneousAnimationsBlock___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x2020000000;
  v22 = 0;
  v3 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979EB8]];
  v4 = *(a1 + 32);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __198__AVTViewTransitionHelper_view_performCrossFadeThenAnimateTransitionToStickerConfiguration_fallbackPose_duration_avatar_avatarNode_oldReversionContext_completionHandler_simultaneousAnimationsBlock___block_invoke_3;
  v11[3] = &unk_1E7F48118;
  v19[1] = *(a1 + 112);
  v5 = v3;
  v12 = v5;
  v20 = *(a1 + 120);
  v6 = *(a1 + 40);
  v18 = v21;
  v7 = *(a1 + 48);
  v10 = *(a1 + 56);
  v8 = *(&v10 + 1);
  *&v9 = v6;
  *(&v9 + 1) = v7;
  v14 = v10;
  v13 = v9;
  v15 = *(a1 + 72);
  v16 = *(a1 + 80);
  objc_copyWeak(v19, (a1 + 104));
  v17 = *(a1 + 96);
  [v4 addDidUpdateAfterAnimationsEvaluatedAtTimeCallbackForKey:@"sticker-transition" block:v11];

  objc_destroyWeak(v19);
  _Block_object_dispose(v21, 8);
}

void __198__AVTViewTransitionHelper_view_performCrossFadeThenAnimateTransitionToStickerConfiguration_fallbackPose_duration_avatar_avatarNode_oldReversionContext_completionHandler_simultaneousAnimationsBlock___block_invoke_3(uint64_t a1, void *a2, double a3, double a4, uint64_t a5, _BYTE *a6)
{
  v28 = a2;
  v10 = (a3 - a4) / *(a1 + 112);
  *&v10 = v10;
  v11 = fmaxf(fminf(*&v10, 1.0), 0.0);
  *&v10 = v11;
  [*(a1 + 32) _solveForInput:v10];
  *&v13 = *(a1 + 120) + (fminf(fmaxf(v12 / 0.75, 0.0), 1.0) * (1.0 - *(a1 + 120)));
  [*(a1 + 40) setFramebufferTextureOpacity:v13];
  if (v11 >= 0.25)
  {
    v14 = *(*(a1 + 96) + 8);
    if ((*(v14 + 24) & 1) == 0)
    {
      *(v14 + 24) = 1;
      v15 = *(a1 + 112) * 0.75;
      if (*(a1 + 48))
      {
        v16 = objc_alloc_init(AVTStickerConfigurationReversionContext);
        v17 = *(a1 + 56);
        v18 = *(v17 + 24);
        *(v17 + 24) = v16;
        v19 = v16;

        v20 = v15;
        [AVTStickerGenerator applyViewTransitionConfiguration:*(a1 + 48) toView:*(a1 + 64) scope:0 options:0 duration:v28 avatar:v19 context:v20 completionHandler:0];
      }

      else
      {
        v20 = v15;
        [v28 transitionFromPose:0 toPose:*(a1 + 72) duration:0 delay:v20 completionHandler:0.0];
      }

      [*(a1 + 80) revertChangesWithScope:0 animationDuration:v20];
    }
  }

  if (v11 >= 1.0)
  {
    *a6 = 1;
    WeakRetained = objc_loadWeakRetained((a1 + 104));
    v22 = WeakRetained;
    if (WeakRetained)
    {
      v23 = [WeakRetained avtRendererTechnique];
      v24 = *(a1 + 40);

      if (v23 == v24)
      {
        [v22 setAvtRendererTechnique:0];
      }
    }

    v25 = *(a1 + 48);
    if (v25)
    {
      v26 = [v25 physicalizedPose];
      v27 = [v26 pose];
      [v28 setPose:v27];
    }

    else
    {
      [v28 setPose:*(a1 + 72)];
    }

    [v28 stopTransitionAnimation];
    if (*(a1 + 88))
    {
      dispatch_async(MEMORY[0x1E69E96A0], *(a1 + 88));
    }
  }
}

- (void)coordinator_performCrossFadeThenAnimateTransitionToStickerConfiguration:(id)a3 duration:(double)a4 options:(unint64_t)a5 avatar:(id)a6 avatarNode:(id)a7 oldReversionContext:(id)a8
{
  v14 = a3;
  v15 = a6;
  v43 = a7;
  v16 = a8;
  v17 = [(AVTViewTransitionHelper *)self transitionTechnique];
  if (!v17)
  {
    v18 = avt_default_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [AVTViewTransitionHelper view_performCrossFadeTransitionToStickerConfiguration:v18 fallbackPose:v19 duration:v20 avatar:v21 avatarNode:v22 oldReversionContext:v23 completionHandler:v24 simultaneousAnimationsBlock:v25];
    }
  }

  [v17 setFramebufferTextureOpacity:0.0];
  [(AVTViewTransitionHelper *)self viewBackgroundColor];
  v44 = v26;
  WeakRetained = objc_loadWeakRetained(&self->_view);
  v28 = [WeakRetained renderer];
  v29 = [v28 _renderingQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __154__AVTViewTransitionHelper_coordinator_performCrossFadeThenAnimateTransitionToStickerConfiguration_duration_options_avatar_avatarNode_oldReversionContext___block_invoke;
  block[3] = &unk_1E7F48190;
  v55 = self;
  v54 = v44;
  v30 = v17;
  v56 = v30;
  dispatch_sync(v29, block);

  [v16 revertChangesWithScope:1 animationDuration:0.0];
  v31 = dispatch_semaphore_create(0);
  v51[0] = 0;
  v51[1] = v51;
  v51[2] = 0x2020000000;
  v52 = 0;
  v32 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979EB8]];
  v45[0] = MEMORY[0x1E69E9820];
  v45[1] = 3221225472;
  v45[2] = __154__AVTViewTransitionHelper_coordinator_performCrossFadeThenAnimateTransitionToStickerConfiguration_duration_options_avatar_avatarNode_oldReversionContext___block_invoke_2;
  v45[3] = &unk_1E7F481B8;
  v50 = a4;
  v33 = v32;
  v46 = v33;
  v34 = v30;
  v47 = v34;
  v49 = v51;
  v35 = v31;
  v48 = v35;
  [v15 addDidUpdateAfterAnimationsEvaluatedAtTimeCallbackForKey:@"sticker-transition" block:v45];
  v36 = fmin(a4 * 10.0, 2.0);
  v37 = dispatch_time(0, (v36 * 1000000000.0));
  dispatch_semaphore_wait(v35, v37);
  v38 = objc_alloc_init(AVTStickerConfigurationReversionContext);
  stickerTransitionReversionContext = self->_stickerTransitionReversionContext;
  self->_stickerTransitionReversionContext = v38;

  v41 = objc_loadWeakRetained(&self->_view);
  v39 = a4 * 0.75;
  v42 = v39;
  [AVTStickerGenerator applyViewTransitionConfiguration:v14 toView:v41 scope:0 options:a5 duration:v15 avatar:self->_stickerTransitionReversionContext context:v42 completionHandler:0];

  [v16 revertChangesWithScope:0 animationDuration:v42];
  _Block_object_dispose(v51, 8);
}

void __154__AVTViewTransitionHelper_coordinator_performCrossFadeThenAnimateTransitionToStickerConfiguration_duration_options_avatar_avatarNode_oldReversionContext___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 48) + 8));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    [WeakRetained setAvtRendererTechnique:0];
    v3 = [*(a1 + 48) snapshotViewUsingBackgroundColor:*(a1 + 32)];
    if (v3)
    {
      [*(a1 + 56) setSnapshotTexture:v3];
      [v4 setAvtRendererTechnique:*(a1 + 56)];
      [MEMORY[0x1E69DF378] flush];
    }

    WeakRetained = v4;
  }
}

void __154__AVTViewTransitionHelper_coordinator_performCrossFadeThenAnimateTransitionToStickerConfiguration_duration_options_avatar_avatarNode_oldReversionContext___block_invoke_2(uint64_t a1, double a2, double a3, uint64_t a4, void *a5, _BYTE *a6)
{
  v10 = a5;
  v11 = (a2 - a3) / *(a1 + 64);
  *&v11 = v11;
  v12 = fmaxf(fminf(*&v11, 1.0), 0.0);
  *&v11 = v12;
  [*(a1 + 32) _solveForInput:v11];
  *&v14 = fminf(fmaxf(v13 / 0.75, 0.0), 1.0) + 0.0;
  [*(a1 + 40) setFramebufferTextureOpacity:v14];
  if (v12 >= 0.25)
  {
    v15 = *(*(a1 + 56) + 8);
    if ((*(v15 + 24) & 1) == 0)
    {
      *(v15 + 24) = 1;
      dispatch_semaphore_signal(*(a1 + 48));
    }
  }

  if (v12 >= 1.0)
  {
    *a6 = 1;
    if ([v10 conformsToProtocol:&unk_1F3A37670])
    {
      v16 = v10;
      v17 = [v16 avtRendererTechnique];
      v18 = *(a1 + 40);

      if (v17 == v18)
      {
        [v16 setAvtRendererTechnique:0];
      }
    }

    else
    {
      v19 = avt_default_log();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        __143__AVTViewTransitionHelper_coordinator_performCrossFadeTransitionToStickerConfiguration_duration_options_avatar_avatarNode_oldReversionContext___block_invoke_2_cold_1();
      }
    }
  }
}

- (void)coordinator_performCrossFadeThenAnimateTransitionOutOfStickerConfigurationWithDuration:(double)a3 avatar:(id)a4 avatarNode:(id)a5 oldReversionContext:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [(AVTViewTransitionHelper *)self transitionTechnique];
  if (!v13)
  {
    v14 = avt_default_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [AVTViewTransitionHelper view_performCrossFadeTransitionToStickerConfiguration:v14 fallbackPose:v15 duration:v16 avatar:v17 avatarNode:v18 oldReversionContext:v19 completionHandler:v20 simultaneousAnimationsBlock:v21];
    }
  }

  [v13 setFramebufferTextureOpacity:0.0];
  [(AVTViewTransitionHelper *)self viewBackgroundColor];
  v35 = v22;
  WeakRetained = objc_loadWeakRetained(&self->_view);
  v24 = [WeakRetained renderer];
  v25 = [v24 _renderingQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __152__AVTViewTransitionHelper_coordinator_performCrossFadeThenAnimateTransitionOutOfStickerConfigurationWithDuration_avatar_avatarNode_oldReversionContext___block_invoke;
  block[3] = &unk_1E7F48190;
  v46 = self;
  v45 = v35;
  v26 = v13;
  v47 = v26;
  dispatch_sync(v25, block);

  [v12 revertChangesWithScope:1 animationDuration:0.0];
  v27 = dispatch_semaphore_create(0);
  v42[0] = 0;
  v42[1] = v42;
  v42[2] = 0x2020000000;
  v43 = 0;
  v28 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979EB8]];
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __152__AVTViewTransitionHelper_coordinator_performCrossFadeThenAnimateTransitionOutOfStickerConfigurationWithDuration_avatar_avatarNode_oldReversionContext___block_invoke_2;
  v36[3] = &unk_1E7F481B8;
  v41 = a3;
  v29 = v28;
  v37 = v29;
  v30 = v26;
  v38 = v30;
  v40 = v42;
  v31 = v27;
  v39 = v31;
  [v10 addDidUpdateAfterAnimationsEvaluatedAtTimeCallbackForKey:@"sticker-transition" block:v36];
  v32 = fmin(a3 * 10.0, 2.0);
  v33 = dispatch_time(0, (v32 * 1000000000.0));
  dispatch_semaphore_wait(v31, v33);
  v34 = a3 * 0.75;
  [v12 revertChangesWithScope:0 animationDuration:v34];

  _Block_object_dispose(v42, 8);
}

void __152__AVTViewTransitionHelper_coordinator_performCrossFadeThenAnimateTransitionOutOfStickerConfigurationWithDuration_avatar_avatarNode_oldReversionContext___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 48) + 8));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    [WeakRetained setAvtRendererTechnique:0];
    v3 = [*(a1 + 48) snapshotViewUsingBackgroundColor:*(a1 + 32)];
    if (v3)
    {
      [*(a1 + 56) setSnapshotTexture:v3];
      [v4 setAvtRendererTechnique:*(a1 + 56)];
      [MEMORY[0x1E69DF378] flush];
    }

    WeakRetained = v4;
  }
}

void __152__AVTViewTransitionHelper_coordinator_performCrossFadeThenAnimateTransitionOutOfStickerConfigurationWithDuration_avatar_avatarNode_oldReversionContext___block_invoke_2(uint64_t a1, double a2, double a3, uint64_t a4, void *a5, _BYTE *a6)
{
  v10 = a5;
  v11 = (a2 - a3) / *(a1 + 64);
  *&v11 = v11;
  v12 = fmaxf(fminf(*&v11, 1.0), 0.0);
  *&v11 = v12;
  [*(a1 + 32) _solveForInput:v11];
  *&v14 = fminf(fmaxf(v13 / 0.75, 0.0), 1.0) + 0.0;
  [*(a1 + 40) setFramebufferTextureOpacity:v14];
  if (v12 >= 0.25)
  {
    v15 = *(*(a1 + 56) + 8);
    if ((*(v15 + 24) & 1) == 0)
    {
      *(v15 + 24) = 1;
      dispatch_semaphore_signal(*(a1 + 48));
    }
  }

  if (v12 >= 1.0)
  {
    *a6 = 1;
    if ([v10 conformsToProtocol:&unk_1F3A37670])
    {
      v16 = v10;
      v17 = [v16 avtRendererTechnique];
      v18 = *(a1 + 40);

      if (v17 == v18)
      {
        [v16 setAvtRendererTechnique:0];
      }
    }

    else
    {
      v19 = avt_default_log();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        __143__AVTViewTransitionHelper_coordinator_performCrossFadeTransitionToStickerConfiguration_duration_options_avatar_avatarNode_oldReversionContext___block_invoke_2_cold_1();
      }
    }
  }
}

- (void)view_performAnimateThenCrossFadeTransitionFromStickerConfiguration:(id)a3 toStickerConfiguration:(id)a4 duration:(double)a5 avatar:(id)a6 avatarNode:(id)a7 oldReversionContext:(id)a8 completionHandler:(id)a9 simultaneousAnimationsBlock:(id)a10
{
  v42 = a3;
  v17 = a4;
  v18 = a6;
  v43 = a7;
  v19 = a8;
  v20 = a9;
  v21 = a10;
  v22 = [(AVTViewTransitionHelper *)self transitionTechnique];
  if (!v22)
  {
    v23 = avt_default_log();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      [AVTViewTransitionHelper view_performCrossFadeTransitionToStickerConfiguration:v23 fallbackPose:v24 duration:v25 avatar:v26 avatarNode:v27 oldReversionContext:v28 completionHandler:v29 simultaneousAnimationsBlock:v30];
    }
  }

  [(AVTViewTransitionHelper *)self viewBackgroundColor];
  v41 = v31;
  objc_initWeak(location, self);
  objc_copyWeak(&to, &self->_view);
  WeakRetained = objc_loadWeakRetained(&self->_view);
  v33 = [WeakRetained renderer];
  v34 = [v33 _renderingQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __210__AVTViewTransitionHelper_view_performAnimateThenCrossFadeTransitionFromStickerConfiguration_toStickerConfiguration_duration_avatar_avatarNode_oldReversionContext_completionHandler_simultaneousAnimationsBlock___block_invoke;
  block[3] = &unk_1E7F48230;
  objc_copyWeak(&v53, location);
  objc_copyWeak(v54, &to);
  v46 = v18;
  v47 = v19;
  v45 = v41;
  v48 = v17;
  v49 = v22;
  v54[1] = *&a5;
  v50 = v42;
  v51 = v21;
  v52 = v20;
  *&v41 = v20;
  v35 = v21;
  v36 = v42;
  v37 = v22;
  v38 = v17;
  v39 = v19;
  v40 = v18;
  dispatch_async(v34, block);

  objc_destroyWeak(v54);
  objc_destroyWeak(&v53);
  objc_destroyWeak(&to);
  objc_destroyWeak(location);
}

void __210__AVTViewTransitionHelper_view_performAnimateThenCrossFadeTransitionFromStickerConfiguration_toStickerConfiguration_duration_avatar_avatarNode_oldReversionContext_completionHandler_simultaneousAnimationsBlock___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 104));
  v3 = objc_loadWeakRetained((a1 + 112));
  v4 = v3;
  if (WeakRetained && v3)
  {
    [*(a1 + 48) stopTransitionAnimation];
    [*(a1 + 56) revertChangesWithScope:0 animationDuration:0.0];
    v5 = objc_alloc_init(AVTStickerConfigurationReversionContext);
    objc_storeStrong(WeakRetained + 3, v5);
    [AVTStickerGenerator applyViewTransitionConfiguration:*(a1 + 64) toView:v4 scope:0 options:0 duration:*(a1 + 48) avatar:v5 context:0.0 completionHandler:0];
    [v4 setAvtRendererTechnique:0];
    [MEMORY[0x1E69DF378] flush];
    v6 = [WeakRetained snapshotViewUsingBackgroundColor:*(a1 + 32)];
    if (v6)
    {
      [*(a1 + 72) setSnapshotTexture:v6];
    }

    [(AVTStickerConfigurationReversionContext *)v5 revertChangesWithScope:0 animationDuration:0.0];
    [AVTStickerGenerator applyViewTransitionConfiguration:*(a1 + 80) toView:v4 scope:0 options:0 duration:*(a1 + 48) avatar:v5 context:0.0 completionHandler:0];
    [MEMORY[0x1E69DF378] flush];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __210__AVTViewTransitionHelper_view_performAnimateThenCrossFadeTransitionFromStickerConfiguration_toStickerConfiguration_duration_avatar_avatarNode_oldReversionContext_completionHandler_simultaneousAnimationsBlock___block_invoke_2;
    block[3] = &unk_1E7F48208;
    objc_copyWeak(&v15, (a1 + 104));
    objc_copyWeak(v16, (a1 + 112));
    v16[1] = *(a1 + 120);
    v9 = v5;
    v10 = *(a1 + 64);
    v11 = *(a1 + 48);
    v13 = *(a1 + 88);
    v12 = *(a1 + 72);
    v14 = *(a1 + 96);
    v7 = v5;
    dispatch_async(MEMORY[0x1E69E96A0], block);

    objc_destroyWeak(v16);
    objc_destroyWeak(&v15);
  }
}

void __210__AVTViewTransitionHelper_view_performAnimateThenCrossFadeTransitionFromStickerConfiguration_toStickerConfiguration_duration_avatar_avatarNode_oldReversionContext_completionHandler_simultaneousAnimationsBlock___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 80));
  v3 = objc_loadWeakRetained((a1 + 88));
  v4 = v3;
  if (WeakRetained && v3)
  {
    v5 = *(a1 + 96) * 0.75;
    [*(a1 + 32) revertChangesWithScope:0 animationDuration:0.0];
    [AVTStickerGenerator applyViewTransitionConfiguration:*(a1 + 40) toView:v4 scope:1 options:0 duration:*(a1 + 48) avatar:*(a1 + 32) context:v5 completionHandler:0];
    v6 = *(a1 + 64);
    if (v6)
    {
      (*(v6 + 16))();
    }

    [v4 setAvtRendererTechnique:*(a1 + 56)];
    [*(a1 + 56) setFramebufferTextureOpacity:0.0];
    v7 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979EB8]];
    v8 = *(a1 + 48);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __210__AVTViewTransitionHelper_view_performAnimateThenCrossFadeTransitionFromStickerConfiguration_toStickerConfiguration_duration_avatar_avatarNode_oldReversionContext_completionHandler_simultaneousAnimationsBlock___block_invoke_3;
    v10[3] = &unk_1E7F481E0;
    v16[1] = *(a1 + 96);
    v9 = v7;
    v11 = v9;
    v12 = *(a1 + 56);
    objc_copyWeak(v16, (a1 + 88));
    v13 = *(a1 + 40);
    v14 = *(a1 + 32);
    v15 = *(a1 + 72);
    [v8 addDidUpdateAfterAnimationsEvaluatedAtTimeCallbackForKey:@"sticker-transition" block:v10];

    objc_destroyWeak(v16);
  }
}

void __210__AVTViewTransitionHelper_view_performAnimateThenCrossFadeTransitionFromStickerConfiguration_toStickerConfiguration_duration_avatar_avatarNode_oldReversionContext_completionHandler_simultaneousAnimationsBlock___block_invoke_3(uint64_t a1, void *a2, double a3, double a4, uint64_t a5, _BYTE *a6)
{
  v16 = a2;
  v10 = (a3 - a4) / *(a1 + 80);
  *&v10 = v10;
  *&a4 = fmaxf(fminf(*&v10, 1.0), 0.0);
  LODWORD(v10) = LODWORD(a4);
  [*(a1 + 32) _solveForInput:v10];
  *&v12 = 1.0 - fminf(fmaxf((v11 + -0.25) / 0.75, 0.0), 1.0);
  [*(a1 + 40) setFramebufferTextureOpacity:v12];
  if (*&a4 >= 1.0)
  {
    *a6 = 1;
    WeakRetained = objc_loadWeakRetained((a1 + 72));
    [AVTStickerGenerator applyViewTransitionConfiguration:*(a1 + 48) toView:WeakRetained scope:2 options:0 duration:v16 avatar:*(a1 + 56) context:0.0 completionHandler:0];
    if (WeakRetained)
    {
      v14 = [WeakRetained avtRendererTechnique];
      v15 = *(a1 + 40);

      if (v14 == v15)
      {
        [WeakRetained setAvtRendererTechnique:0];
      }
    }

    if (*(a1 + 64))
    {
      dispatch_async(MEMORY[0x1E69E96A0], *(a1 + 64));
    }
  }
}

- (id)transitionTechnique
{
  transitionTechnique = self->_transitionTechnique;
  if (!transitionTechnique)
  {
    v4 = [AVTRendererViewTransitionTechnique alloc];
    WeakRetained = objc_loadWeakRetained(&self->_view);
    v6 = [(AVTRendererViewTransitionTechnique *)v4 initWithWorldRenderer:WeakRetained];
    v7 = self->_transitionTechnique;
    self->_transitionTechnique = v6;

    transitionTechnique = self->_transitionTechnique;
  }

  return transitionTechnique;
}

- (__n128)viewBackgroundColor
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0;
  v10 = &v9;
  v11 = 0x3020000000;
  v12 = 0;
  v13 = 0;
  WeakRetained = objc_loadWeakRetained((a1 + 8));
  v3 = [WeakRetained traitCollection];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __46__AVTViewTransitionHelper_viewBackgroundColor__block_invoke;
  v8[3] = &unk_1E7F48258;
  v8[4] = a1;
  v8[5] = &v9;
  [v3 performAsCurrentTraitCollection:v8];

  v4 = vmulq_laneq_f32(v10[2], v10[2], 3);
  v4.i32[3] = HIDWORD(*&v10[2]);
  v7 = v4;
  v10[2] = v4;
  _Block_object_dispose(&v9, 8);
  v5 = *MEMORY[0x1E69E9840];
  return v7;
}

void __46__AVTViewTransitionHelper_viewBackgroundColor__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v3 = [WeakRetained renderer];
  v4 = [v3 backgroundColor];
  v5 = [v4 CGColor];

  *(*(*(a1 + 40) + 8) + 32) = AVTColor4WithCGColor(v5);
}

- (id)snapshotViewUsingBackgroundColor:(AVTViewTransitionHelper *)self
{
  *v48 = v2;
  WeakRetained = objc_loadWeakRetained(&self->_view);
  v5 = [WeakRetained renderer];

  v6 = [v5 device];
  [v5 _backingSize];
  v9 = v8;
  if (v7)
  {
    v10 = v9 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    v11 = 0;
  }

  else
  {
    v49 = v7;
    v12 = [MEMORY[0x1E69741B8] texture2DDescriptorWithPixelFormat:71 width:? height:? mipmapped:?];
    v13 = 2;
    [v12 setStorageMode:2];
    [v12 setUsage:5];
    v14 = [v6 newTextureWithDescriptor:v12];
    v15 = AVTMTLDeviceSupportsMemorylessStorage(v6);
    v16 = objc_loadWeakRetained(&self->_view);
    v17 = [v16 antialiasingMode];
    v18 = v17 - 1;
    v19 = 1;
    if (v17 == 1)
    {
      v19 = 2;
    }

    if (v17 == 2)
    {
      v20 = 4;
    }

    else
    {
      v20 = v19;
    }

    if (v15)
    {
      v21 = 3;
    }

    else
    {
      v21 = 2;
    }

    v47 = v14;
    if (v18 > 1)
    {
      v23 = 0;
      v46 = 0;
      v22 = v14;
      [MEMORY[0x1E69741B8] texture2DDescriptorWithPixelFormat:252 width:v49 height:v9 mipmapped:0, 1];
    }

    else
    {
      [v12 setStorageMode:v21];
      v13 = 4;
      [v12 setUsage:4];
      [v12 setTextureType:4];
      [v12 setSampleCount:v20];
      v22 = [v6 newTextureWithDescriptor:v12];
      v23 = v14;
      v46 = v22;
      [MEMORY[0x1E69741B8] texture2DDescriptorWithPixelFormat:252 width:v49 height:v9 mipmapped:0, 2];
    }
    v24 = ;
    [v24 setStorageMode:v21];
    [v24 setUsage:4];
    [v24 setTextureType:v13];
    [v24 setSampleCount:v20];
    v45 = v6;
    v25 = [v6 newTextureWithDescriptor:v24];
    v26 = [MEMORY[0x1E6974130] renderPassDescriptor];
    v27 = [v26 colorAttachments];
    v28 = [v27 objectAtIndexedSubscript:0];
    [v28 setTexture:v22];

    v29 = [v26 colorAttachments];
    v30 = [v29 objectAtIndexedSubscript:0];
    [v30 setResolveTexture:v23];

    v31 = [v26 colorAttachments];
    v32 = [v31 objectAtIndexedSubscript:0];
    [v32 setLoadAction:2];

    v33 = [v26 colorAttachments];
    v34 = [v33 objectAtIndexedSubscript:0];
    [v34 setClearColor:{v48[0], v48[1], v48[2], v48[3]}];

    v35 = [v26 colorAttachments];
    v36 = [v35 objectAtIndexedSubscript:0];
    [v36 setStoreAction:v44];

    v37 = [v26 depthAttachment];
    [v37 setTexture:v25];

    v38 = [v26 depthAttachment];
    [v38 setClearDepth:0.0];

    v39 = [v26 depthAttachment];
    [v39 setLoadAction:2];

    v40 = [v26 depthAttachment];
    [v40 setStoreAction:0];

    v41 = [v5 commandQueue];
    v42 = [v41 commandBuffer];

    [v5 updateAtTime:CACurrentMediaTime()];
    [v5 renderWithViewport:v42 commandBuffer:v26 passDescriptor:{0.0, 0.0, v49, v9}];
    [v42 commit];

    v6 = v45;
    v11 = v47;
  }

  return v11;
}

- (id)initWithView:(id *)a1
{
  v3 = a2;
  if (a1)
  {
    v6.receiver = a1;
    v6.super_class = AVTViewTransitionHelper;
    v4 = objc_msgSendSuper2(&v6, sel_init);
    a1 = v4;
    if (v4)
    {
      objc_storeWeak(v4 + 1, v3);
    }
  }

  return a1;
}

- (void)transitionViewToStickerConfiguration:(void *)a3 fallbackPose:(unint64_t)a4 duration:(void *)a5 style:(void *)a6 avatar:(void *)a7 completionHandler:(double)a8 simultaneousAnimationsBlock:
{
  v81 = *MEMORY[0x1E69E9840];
  v16 = a2;
  v17 = a3;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  if (a1)
  {
    v68 = [v18 avatarNode];
    if (v17)
    {
      v21 = [v18 pose];
      v22 = [v21 isEqualToPose:v17];
    }

    else
    {
      v22 = 0;
    }

    v23 = a1[2];
    v24 = (v17 | v23) == 0;
    v25 = (v23 == v16) | v22;
    if (v16)
    {
      v24 = 0;
    }

    else
    {
      v25 = v22;
    }

    if ((v25 & 1) != 0 || v24)
    {
      v31 = v68;
      if (v20)
      {
        v32 = OUTLINED_FUNCTION_3();
        v33(v32);
      }

      if (v19)
      {
        v19[2](v19);
      }
    }

    else
    {
      v26 = v23;
      objc_storeStrong(a1 + 2, a2);
      v27 = a1[3];
      v28 = a1[3];
      a1[3] = 0;

      if (!v16 && v26)
      {
        [v18 resetToPhysicsState:0 assumeRestStateIfNil:0];
      }

      objc_opt_class();
      v67 = v26;
      if (objc_opt_isKindOfClass())
      {
        v29 = v18;
        v30 = v29;
        if (v16)
        {
          v77[0] = MEMORY[0x1E69E9820];
          v77[1] = 3221225472;
          v77[2] = __145__AVTViewTransitionHelper_transitionViewToStickerConfiguration_fallbackPose_duration_style_avatar_completionHandler_simultaneousAnimationsBlock___block_invoke;
          v77[3] = &unk_1E7F48000;
          v78 = v16;
          [v30 setComponentAssetNodeObservationForStickerBlock:v77];
        }

        else
        {
          [v29 setComponentAssetNodeObservationForStickerBlock:0];
        }
      }

      else
      {
        v30 = 0;
      }

      if (a4)
      {
        v34 = a4;
      }

      else
      {
        v34 = 3;
      }

      if (a8 == 0.0)
      {
        [v18 removeDidUpdateAfterAnimationsEvaluatedAtTimeCallbackForKey:@"sticker-transition"];
        WeakRetained = objc_loadWeakRetained(a1 + 1);
        [WeakRetained setAvtRendererTechnique:0];

        if (v27)
        {
          [v27 revertChangesWithScope:0 animationDuration:0.0];
        }

        [v18 stopTransitionAnimation];
        if (v16)
        {
          v36 = objc_alloc_init(AVTStickerConfigurationReversionContext);
          v37 = a1[3];
          a1[3] = v36;

          v38 = v30;
          v39 = objc_loadWeakRetained(a1 + 1);
          [AVTStickerGenerator applyViewTransitionConfiguration:v16 toView:v39 scope:0 options:0 duration:v18 avatar:a1[3] context:0.0 completionHandler:0];

          v30 = v38;
          v31 = v68;
        }

        else
        {
          v31 = v68;
          if (v17)
          {
            [v18 setPose:v17];
          }
        }

        if (v20)
        {
          v41 = OUTLINED_FUNCTION_3();
          v42(v41);
        }

        if (v19)
        {
          v19[2](v19);
        }
      }

      else
      {
        if (v67)
        {
          v40 = [v67 definesPoseOnly];
        }

        else
        {
          v40 = 1;
        }

        v66 = v30;
        if (v16)
        {
          v43 = [v16 definesPoseOnly];
        }

        else
        {
          v43 = 1;
        }

        if (((v34 != 1) & v40) == 1 && v43)
        {
          [v18 removeDidUpdateAfterAnimationsEvaluatedAtTimeCallbackForKey:@"sticker-transition"];
          v44 = objc_loadWeakRetained(a1 + 1);
          [v44 setAvtRendererTechnique:0];

          if (v16)
          {
            v45 = objc_alloc_init(AVTStickerConfigurationReversionContext);
            v46 = a1[3];
            a1[3] = v45;

            v63 = objc_loadWeakRetained(a1 + 1);
            v64 = a1[3];
            v73[0] = MEMORY[0x1E69E9820];
            v73[1] = 3221225472;
            v73[2] = __145__AVTViewTransitionHelper_transitionViewToStickerConfiguration_fallbackPose_duration_style_avatar_completionHandler_simultaneousAnimationsBlock___block_invoke_2;
            v73[3] = &unk_1E7F48028;
            v47 = v18;
            v74 = v47;
            v65 = &v75;
            v48 = v16;
            v75 = v48;
            v49 = &v76;
            v76 = v19;
            v50 = v47;
            v51 = &v74;
            [AVTStickerGenerator applyViewTransitionConfiguration:v48 toView:v63 scope:0 options:0 duration:v50 avatar:v64 context:a8 completionHandler:v73];
          }

          else
          {
            v69[0] = MEMORY[0x1E69E9820];
            v69[1] = 3221225472;
            v69[2] = __145__AVTViewTransitionHelper_transitionViewToStickerConfiguration_fallbackPose_duration_style_avatar_completionHandler_simultaneousAnimationsBlock___block_invoke_3;
            v69[3] = &unk_1E7F48028;
            v51 = &v70;
            v56 = v18;
            v70 = v56;
            v65 = &v71;
            v57 = v17;
            v71 = v57;
            v49 = &v72;
            v72 = v19;
            [v56 transitionFromPose:0 toPose:v57 duration:v69 delay:a8 completionHandler:0.0];
          }

          v30 = v66;
          if (v20)
          {
            v58 = OUTLINED_FUNCTION_3();
            v59(v58);
          }

          [v27 revertChangesWithScope:0 animationDuration:a8];
          v31 = v68;
        }

        else
        {
          if (v34 > 2 && ((v40 | v43) & 1) != 0)
          {
            if (v34 != 3)
            {
              v52 = avt_default_log();
              if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
              {
                *buf = 136315138;
                v80 = "style == AVTViewTransitionStyleInternal3DAnimationWithFallbackTemporaryCrossFadeIfNecessary";
                _os_log_error_impl(&dword_1BB472000, v52, OS_LOG_TYPE_ERROR, "Error: Condition '%s' failed. Failed to resolve the view transition style", buf, 0xCu);
              }
            }

            v31 = v68;
            if (v40)
            {
              if (v43)
              {
                v53 = avt_default_log();
                if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
                {
                  *buf = 0;
                  OUTLINED_FUNCTION_7(&dword_1BB472000, v53, v54, "Error: Unreachable code: Failed to start an adequate view transition", buf);
                }
              }

              else
              {
                OUTLINED_FUNCTION_4();
                [v62 view_performAnimateThenCrossFadeTransitionFromStickerConfiguration:v20 toStickerConfiguration:? duration:? avatar:? avatarNode:? oldReversionContext:? completionHandler:? simultaneousAnimationsBlock:?];
              }
            }

            else
            {
              OUTLINED_FUNCTION_2_0();
              OUTLINED_FUNCTION_4();
              [v61 view_performCrossFadeThenAnimateTransitionToStickerConfiguration:? fallbackPose:? duration:? avatar:? avatarNode:? oldReversionContext:? completionHandler:? simultaneousAnimationsBlock:?];
            }
          }

          else
          {
            OUTLINED_FUNCTION_2_0();
            v31 = v68;
            OUTLINED_FUNCTION_4();
            [v55 view_performCrossFadeTransitionToStickerConfiguration:? fallbackPose:? duration:? avatar:? avatarNode:? oldReversionContext:? completionHandler:? simultaneousAnimationsBlock:?];
          }

          v30 = v66;
        }
      }
    }
  }

  v60 = *MEMORY[0x1E69E9840];
}

- (void)transitionCoordinatorToStickerConfiguration:(unint64_t)a3 duration:(double)a4 style:(uint64_t)a5 options:(void *)a6 avatar:
{
  v39 = *MEMORY[0x1E69E9840];
  v11 = a2;
  v12 = a6;
  v13 = v12;
  if (a1)
  {
    v14 = [v12 avatarNode];
    if (a1[2])
    {
      v15 = avt_default_log();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v38 = "_stickerConfiguration == nil";
        _os_log_error_impl(&dword_1BB472000, v15, OS_LOG_TYPE_ERROR, "Error: Condition '%s' failed. Coordinators are not expected to transition from a previous sticker configuration", buf, 0xCu);
      }
    }

    objc_storeStrong(a1 + 2, a2);
    v16 = a1[3];
    v17 = a1[3];
    a1[3] = 0;

    if (!a3)
    {
      a3 = 3;
    }

    if (a4 == 0.0)
    {
      [v13 removeDidUpdateAfterAnimationsEvaluatedAtTimeCallbackForKey:@"sticker-transition"];
      WeakRetained = objc_loadWeakRetained(a1 + 1);
      [WeakRetained setAvtRendererTechnique:0];

      if (v16)
      {
        [v16 revertChangesWithScope:0 animationDuration:0.0];
      }

      if (!v11)
      {
        goto LABEL_22;
      }

      v19 = objc_alloc_init(AVTStickerConfigurationReversionContext);
      v20 = a1[3];
      a1[3] = v19;

      v21 = objc_loadWeakRetained(a1 + 1);
      v22 = a1[3];
      v23 = OUTLINED_FUNCTION_6();
    }

    else
    {
      if (v11)
      {
        v25 = [v11 definesPoseOnly];
      }

      else
      {
        v25 = 1;
      }

      if (a3 == 1 || !v25)
      {
        if (a3 > 2)
        {
          if (a3 == 3)
          {
            v33 = OUTLINED_FUNCTION_1_1();
            [v34 coordinator_performCrossFadeThenAnimateTransitionToStickerConfiguration:v33 duration:? options:? avatar:? avatarNode:? oldReversionContext:?];
          }

          else
          {
            v35 = avt_default_log();
            if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              OUTLINED_FUNCTION_7(&dword_1BB472000, v35, v36, "Error: Unreachable code: Failed to start an adequate view transition", buf);
            }
          }
        }

        else
        {
          v31 = OUTLINED_FUNCTION_1_1();
          [v32 coordinator_performCrossFadeTransitionToStickerConfiguration:v31 duration:? options:? avatar:? avatarNode:? oldReversionContext:?];
        }

        goto LABEL_22;
      }

      [v13 removeDidUpdateAfterAnimationsEvaluatedAtTimeCallbackForKey:@"sticker-transition"];
      v26 = objc_loadWeakRetained(a1 + 1);
      [v26 setAvtRendererTechnique:0];

      if (v16)
      {
        [v16 revertChangesWithScope:0 animationDuration:a4];
      }

      v27 = objc_alloc_init(AVTStickerConfigurationReversionContext);
      v28 = a1[3];
      a1[3] = v27;

      v21 = objc_loadWeakRetained(a1 + 1);
      v29 = a1[3];
      v23 = OUTLINED_FUNCTION_6();
      v24 = a4;
    }

    [v23 applyViewTransitionConfiguration:v24 toView:0 scope:? options:? duration:? avatar:? context:? completionHandler:?];

LABEL_22:
  }

  v30 = *MEMORY[0x1E69E9840];
}

- (void)transitionCoordinatorOutOfStickerConfigurationWithDuration:(double)a3 style:(uint64_t)a4 options:(void *)a5 avatar:
{
  v8 = a5;
  v9 = v8;
  if (a1)
  {
    v10 = [v8 avatarNode];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = v9;
      [v11 setComponentAssetNodeObservationForStickerBlock:0];
    }

    else
    {
      v11 = 0;
    }

    v12 = *(a1 + 16);
    v13 = *(a1 + 16);
    *(a1 + 16) = 0;

    v14 = *(a1 + 24);
    v15 = *(a1 + 24);
    *(a1 + 24) = 0;

    if (!a2)
    {
      a2 = 3;
    }

    if (v12)
    {
      v16 = [v12 definesPoseOnly];
    }

    else
    {
      v16 = 1;
    }

    if (a2 == 1 || !v16)
    {
      if (a2 > 2)
      {
        if (a2 == 3)
        {
          v19 = OUTLINED_FUNCTION_5();
          [v20 coordinator_performCrossFadeThenAnimateTransitionOutOfStickerConfigurationWithDuration:v19 avatar:? avatarNode:? oldReversionContext:?];
        }

        else
        {
          v21 = avt_default_log();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            *v23 = 0;
            OUTLINED_FUNCTION_7(&dword_1BB472000, v21, v22, "Error: Unreachable code: Failed to start an adequate view transition", v23);
          }
        }
      }

      else
      {
        v17 = OUTLINED_FUNCTION_5();
        [v18 coordinator_performCrossFadeTransitionOutOfStickerConfigurationWithDuration:v17 avatar:? avatarNode:? oldReversionContext:?];
      }
    }

    else
    {
      [v14 revertChangesWithScope:0 animationDuration:a3];
    }
  }
}

- (void)view_performCrossFadeTransitionToStickerConfiguration:(NSObject *)a1 fallbackPose:(uint64_t)a2 duration:(uint64_t)a3 avatar:(uint64_t)a4 avatarNode:(uint64_t)a5 oldReversionContext:(uint64_t)a6 completionHandler:(uint64_t)a7 simultaneousAnimationsBlock:(uint64_t)a8 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  v8 = *MEMORY[0x1E69E9840];
}

void __143__AVTViewTransitionHelper_coordinator_performCrossFadeTransitionToStickerConfiguration_duration_options_avatar_avatarNode_oldReversionContext___block_invoke_2_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_0(&dword_1BB472000, v0, v1, "Error: %@ does not conform to AVTRendererTechniqueSupport", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

@end