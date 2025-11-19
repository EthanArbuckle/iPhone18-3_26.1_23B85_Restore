@interface AVTAvatarImageRenderer
- (AVTAvatarImageRenderer)init;
- (AVTAvatarImageRenderer)initWithEnvironment:(id)a3;
- (AVTAvatarImageRenderer)initWithSceneNodeModifications:(id)a3;
- (AVTAvatarImageRenderer)initWithSnapshotBuilder:(id)a3 lockProvider:(id)a4 remoteImageRenderer:(id)a5 logger:(id)a6;
- (AVTSnapshotBuilder)snapshotBuilder;
- (double)fieldOfViewForNodeWithName:(id)a3;
- (id)_imageForAvatar:(id)a3 scope:(id)a4;
- (id)imageForAvatar:(id)a3 scope:(id)a4 withSCNModifications:(id)a5 usingService:(BOOL)a6;
- (id)nts_imageForAvatar:(id)a3 scope:(id)a4;
- (void)updateSnapshotBuilderModifications:(id)a3;
@end

@implementation AVTAvatarImageRenderer

- (AVTAvatarImageRenderer)init
{
  v3 = +[AVTUIEnvironment defaultEnvironment];
  v4 = [(AVTAvatarImageRenderer *)self initWithEnvironment:v3];

  return v4;
}

- (AVTAvatarImageRenderer)initWithEnvironment:(id)a3
{
  v4 = a3;
  v5 = [v4 lockProvider];
  v6 = [v4 remoteRenderer];
  v7 = [v4 logger];

  v8 = [(AVTAvatarImageRenderer *)self initWithSnapshotBuilder:0 lockProvider:v5 remoteImageRenderer:v6 logger:v7];
  return v8;
}

- (AVTAvatarImageRenderer)initWithSnapshotBuilder:(id)a3 lockProvider:(id)a4 remoteImageRenderer:(id)a5 logger:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v20.receiver = self;
  v20.super_class = AVTAvatarImageRenderer;
  v15 = [(AVTAvatarImageRenderer *)&v20 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_snapshotBuilder, a3);
    objc_storeStrong(&v16->_remoteImageRenderer, a5);
    objc_storeStrong(&v16->_logger, a6);
    v17 = v12[2](v12, "com.apple.AvatarUI.avatarSnapshotBuilderRenderingQueue");
    snapshotBuilderQueue = v16->_snapshotBuilderQueue;
    v16->_snapshotBuilderQueue = v17;
  }

  return v16;
}

- (AVTAvatarImageRenderer)initWithSceneNodeModifications:(id)a3
{
  [(AVTAvatarImageRenderer *)self updateSnapshotBuilderModifications:a3];
  v4 = +[AVTUIEnvironment defaultEnvironment];
  v5 = [v4 lockProvider];
  v6 = [v4 remoteRenderer];
  v7 = [v4 logger];
  v8 = [(AVTAvatarImageRenderer *)self snapshotBuilder];
  v9 = [(AVTAvatarImageRenderer *)self initWithSnapshotBuilder:v8 lockProvider:v5 remoteImageRenderer:v6 logger:v7];

  return v9;
}

- (void)updateSnapshotBuilderModifications:(id)a3
{
  v4 = a3;
  [v4 verticalLensShift];
  LODWORD(v5) = 0;
  HIDWORD(v5) = v6;
  v11 = v5;
  v12 = [(AVTAvatarImageRenderer *)self snapshotBuilder];
  v7 = [v4 framingMode];
  v8 = [v4 projectionDirection];
  [v4 fieldOfView];
  v10 = v9;

  [v12 deprecated_avtui_applyModificationsForFramingMode:v7 projectionDirectionModification:v8 fieldOfViewModification:v10 lensShiftModification:v11];
}

- (AVTSnapshotBuilder)snapshotBuilder
{
  snapshotBuilder = self->_snapshotBuilder;
  if (!snapshotBuilder)
  {
    v4 = objc_alloc_init(MEMORY[0x1E698E2B8]);
    v5 = self->_snapshotBuilder;
    self->_snapshotBuilder = v4;

    snapshotBuilder = self->_snapshotBuilder;
  }

  return snapshotBuilder;
}

- (double)fieldOfViewForNodeWithName:(id)a3
{
  v4 = a3;
  v5 = [(AVTAvatarImageRenderer *)self snapshotBuilder];
  [v5 deprecated_avtui_fieldOfViewForFramingMode:v4];
  v7 = v6;

  return v7;
}

- (id)_imageForAvatar:(id)a3 scope:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__7;
  v21 = __Block_byref_object_dispose__7;
  v22 = 0;
  v8 = [(AVTAvatarImageRenderer *)self snapshotBuilderQueue];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __48__AVTAvatarImageRenderer__imageForAvatar_scope___block_invoke;
  v13[3] = &unk_1E7F3B758;
  v13[4] = self;
  v14 = v6;
  v15 = v7;
  v16 = &v17;
  v9 = v7;
  v10 = v6;
  dispatch_sync(v8, v13);

  v11 = v18[5];
  _Block_object_dispose(&v17, 8);

  return v11;
}

uint64_t __48__AVTAvatarImageRenderer__imageForAvatar_scope___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) nts_imageForAvatar:*(a1 + 40) scope:*(a1 + 48)];
  v3 = *(*(a1 + 56) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

- (id)imageForAvatar:(id)a3 scope:(id)a4 withSCNModifications:(id)a5 usingService:(BOOL)a6
{
  v6 = a6;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = v12;
  if (v6)
  {
    v14 = [(AVTAvatarImageRenderer *)self remoteImageRenderer];
    v25 = 0;
    v26 = &v25;
    v27 = 0x3032000000;
    v28 = __Block_byref_object_copy__7;
    v29 = __Block_byref_object_dispose__7;
    v30 = 0;
    v15 = dispatch_semaphore_create(0);
    v16 = v15;
    if (v13)
    {
      v17 = v24;
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __81__AVTAvatarImageRenderer_imageForAvatar_scope_withSCNModifications_usingService___block_invoke;
      v24[3] = &unk_1E7F3B780;
      v24[5] = &v25;
      v24[4] = v15;
      [v14 getSnapshotForAvatar:v10 scope:v11 withModifications:v13 withReply:v24];
    }

    else
    {
      v17 = v23;
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __81__AVTAvatarImageRenderer_imageForAvatar_scope_withSCNModifications_usingService___block_invoke_2;
      v23[3] = &unk_1E7F3B780;
      v23[5] = &v25;
      v23[4] = v15;
      [v14 getSnapshotForAvatar:v10 scope:v11 withReply:v23];
    }

    v19 = dispatch_time(0, 10000000000);
    if (dispatch_semaphore_wait(v16, v19))
    {
      v20 = [(AVTAvatarImageRenderer *)self logger];
      v21 = [v10 description];
      [v20 logTimedOutWaitingForSnapshotInService:v21];
    }

    v18 = v26[5];

    _Block_object_dispose(&v25, 8);
  }

  else
  {
    if (v12)
    {
      [(AVTAvatarImageRenderer *)self updateSnapshotBuilderModifications:v12];
    }

    v18 = [(AVTAvatarImageRenderer *)self _imageForAvatar:v10 scope:v11];
  }

  return v18;
}

void __81__AVTAvatarImageRenderer_imageForAvatar_scope_withSCNModifications_usingService___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void __81__AVTAvatarImageRenderer_imageForAvatar_scope_withSCNModifications_usingService___block_invoke_2(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (id)nts_imageForAvatar:(id)a3 scope:(id)a4
{
  v23[1] = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = a3;
  v8 = [(AVTAvatarImageRenderer *)self snapshotBuilder];
  [v8 setAvatar:v7];

  objc_opt_class();
  LOBYTE(v8) = objc_opt_isKindOfClass();

  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = 2;
  }

  v22 = *MEMORY[0x1E698E268];
  v23[0] = &unk_1F39A5C80;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];
  v11 = [v10 mutableCopy];

  v12 = [v6 adaptedFramingModeForObjectType:v9];
  v13 = [v6 pose];
  if (v12)
  {
    [v11 setObject:v12 forKeyedSubscript:*MEMORY[0x1E698E258]];
  }

  if (v13)
  {
    [v11 setObject:v13 forKeyedSubscript:*MEMORY[0x1E698E260]];
  }

  v14 = [(AVTAvatarImageRenderer *)self snapshotBuilder];
  [v6 size];
  v16 = v15;
  v18 = v17;
  [v6 scale];
  v20 = [v14 imageWithSize:v11 scale:v16 options:{v18, v19}];

  return v20;
}

@end