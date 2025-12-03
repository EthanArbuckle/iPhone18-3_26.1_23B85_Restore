@interface AVTAvatarImageRenderer
- (AVTAvatarImageRenderer)init;
- (AVTAvatarImageRenderer)initWithEnvironment:(id)environment;
- (AVTAvatarImageRenderer)initWithSceneNodeModifications:(id)modifications;
- (AVTAvatarImageRenderer)initWithSnapshotBuilder:(id)builder lockProvider:(id)provider remoteImageRenderer:(id)renderer logger:(id)logger;
- (AVTSnapshotBuilder)snapshotBuilder;
- (double)fieldOfViewForNodeWithName:(id)name;
- (id)_imageForAvatar:(id)avatar scope:(id)scope;
- (id)imageForAvatar:(id)avatar scope:(id)scope withSCNModifications:(id)modifications usingService:(BOOL)service;
- (id)nts_imageForAvatar:(id)avatar scope:(id)scope;
- (void)updateSnapshotBuilderModifications:(id)modifications;
@end

@implementation AVTAvatarImageRenderer

- (AVTAvatarImageRenderer)init
{
  v3 = +[AVTUIEnvironment defaultEnvironment];
  v4 = [(AVTAvatarImageRenderer *)self initWithEnvironment:v3];

  return v4;
}

- (AVTAvatarImageRenderer)initWithEnvironment:(id)environment
{
  environmentCopy = environment;
  lockProvider = [environmentCopy lockProvider];
  remoteRenderer = [environmentCopy remoteRenderer];
  logger = [environmentCopy logger];

  v8 = [(AVTAvatarImageRenderer *)self initWithSnapshotBuilder:0 lockProvider:lockProvider remoteImageRenderer:remoteRenderer logger:logger];
  return v8;
}

- (AVTAvatarImageRenderer)initWithSnapshotBuilder:(id)builder lockProvider:(id)provider remoteImageRenderer:(id)renderer logger:(id)logger
{
  builderCopy = builder;
  providerCopy = provider;
  rendererCopy = renderer;
  loggerCopy = logger;
  v20.receiver = self;
  v20.super_class = AVTAvatarImageRenderer;
  v15 = [(AVTAvatarImageRenderer *)&v20 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_snapshotBuilder, builder);
    objc_storeStrong(&v16->_remoteImageRenderer, renderer);
    objc_storeStrong(&v16->_logger, logger);
    v17 = providerCopy[2](providerCopy, "com.apple.AvatarUI.avatarSnapshotBuilderRenderingQueue");
    snapshotBuilderQueue = v16->_snapshotBuilderQueue;
    v16->_snapshotBuilderQueue = v17;
  }

  return v16;
}

- (AVTAvatarImageRenderer)initWithSceneNodeModifications:(id)modifications
{
  [(AVTAvatarImageRenderer *)self updateSnapshotBuilderModifications:modifications];
  v4 = +[AVTUIEnvironment defaultEnvironment];
  lockProvider = [v4 lockProvider];
  remoteRenderer = [v4 remoteRenderer];
  logger = [v4 logger];
  snapshotBuilder = [(AVTAvatarImageRenderer *)self snapshotBuilder];
  v9 = [(AVTAvatarImageRenderer *)self initWithSnapshotBuilder:snapshotBuilder lockProvider:lockProvider remoteImageRenderer:remoteRenderer logger:logger];

  return v9;
}

- (void)updateSnapshotBuilderModifications:(id)modifications
{
  modificationsCopy = modifications;
  [modificationsCopy verticalLensShift];
  LODWORD(v5) = 0;
  HIDWORD(v5) = v6;
  v11 = v5;
  snapshotBuilder = [(AVTAvatarImageRenderer *)self snapshotBuilder];
  framingMode = [modificationsCopy framingMode];
  projectionDirection = [modificationsCopy projectionDirection];
  [modificationsCopy fieldOfView];
  v10 = v9;

  [snapshotBuilder deprecated_avtui_applyModificationsForFramingMode:framingMode projectionDirectionModification:projectionDirection fieldOfViewModification:v10 lensShiftModification:v11];
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

- (double)fieldOfViewForNodeWithName:(id)name
{
  nameCopy = name;
  snapshotBuilder = [(AVTAvatarImageRenderer *)self snapshotBuilder];
  [snapshotBuilder deprecated_avtui_fieldOfViewForFramingMode:nameCopy];
  v7 = v6;

  return v7;
}

- (id)_imageForAvatar:(id)avatar scope:(id)scope
{
  avatarCopy = avatar;
  scopeCopy = scope;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__7;
  v21 = __Block_byref_object_dispose__7;
  v22 = 0;
  snapshotBuilderQueue = [(AVTAvatarImageRenderer *)self snapshotBuilderQueue];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __48__AVTAvatarImageRenderer__imageForAvatar_scope___block_invoke;
  v13[3] = &unk_1E7F3B758;
  v13[4] = self;
  v14 = avatarCopy;
  v15 = scopeCopy;
  v16 = &v17;
  v9 = scopeCopy;
  v10 = avatarCopy;
  dispatch_sync(snapshotBuilderQueue, v13);

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

- (id)imageForAvatar:(id)avatar scope:(id)scope withSCNModifications:(id)modifications usingService:(BOOL)service
{
  serviceCopy = service;
  avatarCopy = avatar;
  scopeCopy = scope;
  modificationsCopy = modifications;
  v13 = modificationsCopy;
  if (serviceCopy)
  {
    remoteImageRenderer = [(AVTAvatarImageRenderer *)self remoteImageRenderer];
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
      [remoteImageRenderer getSnapshotForAvatar:avatarCopy scope:scopeCopy withModifications:v13 withReply:v24];
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
      [remoteImageRenderer getSnapshotForAvatar:avatarCopy scope:scopeCopy withReply:v23];
    }

    v19 = dispatch_time(0, 10000000000);
    if (dispatch_semaphore_wait(v16, v19))
    {
      logger = [(AVTAvatarImageRenderer *)self logger];
      v21 = [avatarCopy description];
      [logger logTimedOutWaitingForSnapshotInService:v21];
    }

    v18 = v26[5];

    _Block_object_dispose(&v25, 8);
  }

  else
  {
    if (modificationsCopy)
    {
      [(AVTAvatarImageRenderer *)self updateSnapshotBuilderModifications:modificationsCopy];
    }

    v18 = [(AVTAvatarImageRenderer *)self _imageForAvatar:avatarCopy scope:scopeCopy];
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

- (id)nts_imageForAvatar:(id)avatar scope:(id)scope
{
  v23[1] = *MEMORY[0x1E69E9840];
  scopeCopy = scope;
  avatarCopy = avatar;
  snapshotBuilder = [(AVTAvatarImageRenderer *)self snapshotBuilder];
  [snapshotBuilder setAvatar:avatarCopy];

  objc_opt_class();
  LOBYTE(snapshotBuilder) = objc_opt_isKindOfClass();

  if (snapshotBuilder)
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

  v12 = [scopeCopy adaptedFramingModeForObjectType:v9];
  pose = [scopeCopy pose];
  if (v12)
  {
    [v11 setObject:v12 forKeyedSubscript:*MEMORY[0x1E698E258]];
  }

  if (pose)
  {
    [v11 setObject:pose forKeyedSubscript:*MEMORY[0x1E698E260]];
  }

  snapshotBuilder2 = [(AVTAvatarImageRenderer *)self snapshotBuilder];
  [scopeCopy size];
  v16 = v15;
  v18 = v17;
  [scopeCopy scale];
  v20 = [snapshotBuilder2 imageWithSize:v11 scale:v16 options:{v18, v19}];

  return v20;
}

@end