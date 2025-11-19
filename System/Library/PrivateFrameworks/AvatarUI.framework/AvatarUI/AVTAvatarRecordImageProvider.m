@interface AVTAvatarRecordImageProvider
- (AVTAvatarRecordImageProvider)init;
- (AVTAvatarRecordImageProvider)initWithBackingProvider:(id)a3;
- (id)imageForRecord:(id)a3 scope:(id)a4 usingService:(BOOL)a5;
- (void)imageForRecord:(id)a3 scope:(id)a4 handler:(id)a5;
@end

@implementation AVTAvatarRecordImageProvider

id __58___AVTAvatarRecordImageProvider__providerForRecord_scope___block_invoke(uint64_t a1, void *a2, char a3)
{
  v5 = a2;
  v18 = MEMORY[0x1E69E9820];
  v19 = 3221225472;
  v20 = __58___AVTAvatarRecordImageProvider__providerForRecord_scope___block_invoke_2;
  v21 = &unk_1E7F3CBE0;
  v6 = *(a1 + 40);
  v22 = *(a1 + 32);
  v23 = v6;
  v24 = *(a1 + 48);
  v7 = MEMORY[0x1BFB0DE80](&v18);
  v8 = [*(a1 + 32) peristentCache];
  v9 = *(a1 + 48);
  v10 = *(a1 + 56);
  if (a3)
  {
    v11 = 0;
  }

  else
  {
    v11 = [*(a1 + 32) workQueue];
  }

  v12 = [*(a1 + 32) renderingScheduler];
  v13 = v12;
  if (a3)
  {
    v14 = [AVTResourceCacheSupport resourceFromCache:v8 forItem:v10 scope:v9 preflightCacheMissHandler:0 cacheMissHandler:v7 cacheMissQueue:v11 taskScheduler:v12 callbackQueue:0 resourceHandler:v5, v18, v19, v20, v21, v22, v23];
    v11 = v13;
  }

  else
  {
    v15 = [*(a1 + 32) callbackQueue];
    v14 = [AVTResourceCacheSupport resourceFromCache:v8 forItem:v10 scope:v9 preflightCacheMissHandler:0 cacheMissHandler:v7 cacheMissQueue:v11 taskScheduler:v13 callbackQueue:v15 resourceHandler:v5, v18, v19, v20, v21, v22, v23];
  }

  v16 = MEMORY[0x1BFB0DE80](v14);

  return v16;
}

id __58___AVTAvatarRecordImageProvider__providerForRecord_scope___block_invoke_2(id *a1)
{
  v2 = [a1[4] logger];
  v3 = [a1[5] identifier];
  [a1[6] size];
  [v2 logRenderingRecord:v3 size:?];

  v4 = a1[5];
  v5 = [a1[4] environment];
  v6 = [v5 editorCoreModel];
  v7 = [AVTAvatarConfiguration configurationForRecord:v4 coreModel:v6];

  v8 = [a1[4] configurationRenderer];
  v9 = [v8 imageForAvatarConfiguration:v7 scope:a1[6]];

  return v9;
}

id __92___AVTAvatarRecordImageProvider__providerForAvatar_forRecord_scope_usingCache_usingService___block_invoke(uint64_t a1, void *a2, char a3)
{
  v5 = a2;
  v6 = [*(a1 + 32) peristentCache];
  if (objc_opt_respondsToSelector())
  {
    v7 = [*(a1 + 32) volatileCache];

    if ([*(a1 + 32) allowPreFlight])
    {
      v8 = [*(a1 + 40) puppetName];
      v44[0] = MEMORY[0x1E69E9820];
      v44[1] = 3221225472;
      v44[2] = __92___AVTAvatarRecordImageProvider__providerForAvatar_forRecord_scope_usingCache_usingService___block_invoke_2;
      v44[3] = &unk_1E7F3CBE0;
      v45 = *(a1 + 48);
      v46 = *(a1 + 40);
      v47 = v8;
      v9 = v8;
      v10 = MEMORY[0x1BFB0DE80](v44);
    }

    else
    {
      v10 = 0;
    }

    v6 = v7;
  }

  else
  {
    v10 = 0;
  }

  if (*(a1 + 72) == 1)
  {
    objc_initWeak(&location, *(a1 + 32));
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __92___AVTAvatarRecordImageProvider__providerForAvatar_forRecord_scope_usingCache_usingService___block_invoke_3;
    v36[3] = &unk_1E7F3CC30;
    objc_copyWeak(&v42, &location);
    v6 = v6;
    v37 = v6;
    v11 = *(a1 + 56);
    v12 = *(a1 + 48);
    v40 = v5;
    v41 = v10;
    *&v13 = *(a1 + 40);
    *(&v13 + 1) = *(a1 + 32);
    *&v14 = v11;
    *(&v14 + 1) = v12;
    v38 = v14;
    v39 = v13;
    v15 = MEMORY[0x1BFB0DE80](v36);
    v16 = [*(a1 + 32) renderingScheduler];
    [v16 scheduleTask:v15];

    objc_destroyWeak(&v42);
    objc_destroyWeak(&location);
  }

  else
  {
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __92___AVTAvatarRecordImageProvider__providerForAvatar_forRecord_scope_usingCache_usingService___block_invoke_2_18;
    v31[3] = &unk_1E7F3CC58;
    v17 = *(a1 + 40);
    v31[4] = *(a1 + 32);
    v32 = v17;
    v33 = *(a1 + 48);
    v34 = *(a1 + 64);
    v35 = *(a1 + 72);
    v18 = MEMORY[0x1BFB0DE80](v31);
    v30 = v10;
    if ((*(a1 + 73) & 1) == 0)
    {
      v19 = objc_alloc_init(AVTPassThroughResourceCache);

      v6 = v19;
    }

    v21 = *(a1 + 48);
    v20 = *(a1 + 56);
    v22 = a3;
    if (a3)
    {
      v23 = v5;
      v24 = 0;
    }

    else
    {
      v23 = v5;
      v24 = [*(a1 + 32) workQueue];
    }

    v25 = [*(a1 + 32) renderingScheduler];
    if (v22)
    {
      v26 = 0;
    }

    else
    {
      v26 = [*(a1 + 32) callbackQueue];
    }

    v27 = v21;
    v10 = v30;
    v15 = [AVTResourceCacheSupport resourceFromCache:v6 forItem:v20 scope:v27 preflightCacheMissHandler:v30 cacheMissHandler:v18 cacheMissQueue:v24 taskScheduler:v25 callbackQueue:v26 resourceHandler:v23];
    if (v22)
    {
      v24 = v25;
    }

    else
    {
    }

    v5 = v23;
  }

  v28 = MEMORY[0x1BFB0DE80](v15);

  return v28;
}

id __92___AVTAvatarRecordImageProvider__providerForAvatar_forRecord_scope_usingCache_usingService___block_invoke_2(uint64_t a1)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if ([*(a1 + 40) isEditable])
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  v4 = [v2 adaptedFramingModeForObjectType:v3];
  v5 = v4;
  if (v4 && [v4 length])
  {
    v9 = *MEMORY[0x1E698E220];
    v10[0] = v5;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  }

  else
  {
    v6 = 0;
  }

  v7 = [MEMORY[0x1E698E278] thumbnailForAnimojiNamed:*(a1 + 48) options:v6];

  return v7;
}

void __92___AVTAvatarRecordImageProvider__providerForAvatar_forRecord_scope_usingCache_usingService___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 88));
  v3 = [*(a1 + 32) resourceForItem:*(a1 + 40) scope:*(a1 + 48)];
  if (v3 || (v5 = *(a1 + 80)) != 0 && ((*(v5 + 16))(v5, *(a1 + 40), *(a1 + 48)), (v3 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v4 = v3;
    (*(*(a1 + 72) + 16))();
  }

  else
  {
    v10 = MEMORY[0x1E69E9820];
    v11 = 3221225472;
    v12 = __92___AVTAvatarRecordImageProvider__providerForAvatar_forRecord_scope_usingCache_usingService___block_invoke_4;
    v13 = &unk_1E7F3A720;
    v14 = WeakRetained;
    v15 = *(a1 + 56);
    v6 = *(a1 + 48);
    v7 = *(a1 + 64);
    v16 = v6;
    v17 = v7;
    v8 = MEMORY[0x1BFB0DE80](&v10);
    v9 = [*(a1 + 32) resourceForItem:*(a1 + 40) scope:*(a1 + 48) cacheMissHandler:{v8, v10, v11, v12, v13, v14}];
    (*(*(a1 + 72) + 16))();
  }
}

id __92___AVTAvatarRecordImageProvider__providerForAvatar_forRecord_scope_usingCache_usingService___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) logger];
  v8 = [*(a1 + 40) description];
  [v7 logGeneratingImageInServiceForRecord:v8];

  v9 = [*(a1 + 32) environment];
  v10 = [v9 remoteRenderer];

  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__16;
  v30 = __Block_byref_object_dispose__16;
  v31 = 0;
  v11 = dispatch_semaphore_create(0);
  v12 = *(a1 + 40);
  v13 = *(a1 + 48);
  v20 = MEMORY[0x1E69E9820];
  v21 = 3221225472;
  v22 = __92___AVTAvatarRecordImageProvider__providerForAvatar_forRecord_scope_usingCache_usingService___block_invoke_15;
  v23 = &unk_1E7F3B780;
  v25 = &v26;
  v14 = v11;
  v24 = v14;
  [v10 getSnapshotAndCacheForAvatarRecord:v12 scope:v13 withReply:&v20];
  v15 = dispatch_time(0, 10000000000);
  if (dispatch_semaphore_wait(v14, v15))
  {
    v16 = [*(a1 + 56) logger];
    v17 = [*(a1 + 40) description];
    [v16 logTimedOutWaitingForSnapshotInService:v17];
  }

  v18 = v27[5];

  _Block_object_dispose(&v26, 8);

  return v18;
}

void __92___AVTAvatarRecordImageProvider__providerForAvatar_forRecord_scope_usingCache_usingService___block_invoke_15(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

id __92___AVTAvatarRecordImageProvider__providerForAvatar_forRecord_scope_usingCache_usingService___block_invoke_2_18(uint64_t a1)
{
  v2 = [*(a1 + 32) logger];
  v3 = [*(a1 + 40) identifier];
  [*(a1 + 48) size];
  [v2 logRenderingRecord:v3 size:?];

  v4 = *(a1 + 56);
  if (!v4)
  {
    v4 = [MEMORY[0x1E698E328] avatarForRecord:*(a1 + 40)];
  }

  v5 = [*(a1 + 32) avatarRenderer];
  v6 = [v5 imageForAvatar:v4 scope:*(a1 + 48) usingService:*(a1 + 64)];

  if (!v6)
  {
    v7 = [*(a1 + 32) logger];
    [v7 logNilImageReturnedFromAVTAvatarRecordImageProvider];
  }

  return v6;
}

- (AVTAvatarRecordImageProvider)init
{
  v3 = +[AVTUIEnvironment defaultEnvironment];
  v4 = [[_AVTAvatarRecordImageProvider alloc] initWithEnvironment:v3];
  v5 = [(AVTAvatarRecordImageProvider *)self initWithBackingProvider:v4];

  return v5;
}

- (AVTAvatarRecordImageProvider)initWithBackingProvider:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = AVTAvatarRecordImageProvider;
  v6 = [(AVTAvatarRecordImageProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_backingProvider, a3);
  }

  return v7;
}

- (id)imageForRecord:(id)a3 scope:(id)a4 usingService:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v10 = [(AVTAvatarRecordImageProvider *)self backingProvider];
  v11 = [v10 providerForRecord:v8 scope:v9 usingService:v5];

  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__19;
  v20 = __Block_byref_object_dispose__19;
  v21 = 0;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __66__AVTAvatarRecordImageProvider_imageForRecord_scope_usingService___block_invoke;
  v15[3] = &unk_1E7F3D400;
  v15[4] = &v16;
  v12 = (v11)[2](v11, v15, 1);
  v13 = v17[5];
  _Block_object_dispose(&v16, 8);

  return v13;
}

- (void)imageForRecord:(id)a3 scope:(id)a4 handler:(id)a5
{
  v13 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [(AVTAvatarRecordImageProvider *)self backingProvider];
  v11 = [v10 providerForRecord:v9 scope:v8];

  v12 = (v11)[2](v11, v13, 0);
}

@end