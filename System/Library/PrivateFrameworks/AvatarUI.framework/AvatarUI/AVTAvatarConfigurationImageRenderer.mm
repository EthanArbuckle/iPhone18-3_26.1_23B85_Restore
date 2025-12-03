@interface AVTAvatarConfigurationImageRenderer
- (AVTAvatarConfigurationImageRenderer)initWithEnvironment:(id)environment avatar:(id)avatar;
- (AVTAvatarConfigurationImageRenderer)initWithSnapshotBuilder:(id)builder avatar:(id)avatar lockProvider:(id)provider logger:(id)logger;
- (AVTMemoji)avatar;
- (AVTSnapshotBuilder)snapshotBuilder;
- (id)imageForAvatarConfiguration:(id)configuration scope:(id)scope;
- (id)nts_imageForAvatarConfiguration:(id)configuration scope:(id)scope;
@end

@implementation AVTAvatarConfigurationImageRenderer

- (AVTAvatarConfigurationImageRenderer)initWithEnvironment:(id)environment avatar:(id)avatar
{
  avatarCopy = avatar;
  environmentCopy = environment;
  lockProvider = [environmentCopy lockProvider];
  logger = [environmentCopy logger];

  v10 = [(AVTAvatarConfigurationImageRenderer *)self initWithSnapshotBuilder:0 avatar:avatarCopy lockProvider:lockProvider logger:logger];
  return v10;
}

- (AVTAvatarConfigurationImageRenderer)initWithSnapshotBuilder:(id)builder avatar:(id)avatar lockProvider:(id)provider logger:(id)logger
{
  builderCopy = builder;
  avatarCopy = avatar;
  providerCopy = provider;
  loggerCopy = logger;
  v21.receiver = self;
  v21.super_class = AVTAvatarConfigurationImageRenderer;
  v15 = [(AVTAvatarConfigurationImageRenderer *)&v21 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_avatar, avatar);
    objc_storeStrong(&v16->_snapshotBuilder, builder);
    v17 = providerCopy[2](providerCopy, "com.apple.AvatarUI.snapshotBuilderRenderingQueue");
    snapshotBuilderQueue = v16->_snapshotBuilderQueue;
    v16->_snapshotBuilderQueue = v17;

    objc_storeStrong(&v16->_logger, logger);
    if (v16->_avatar)
    {
      snapshotBuilder = v16->_snapshotBuilder;
      if (snapshotBuilder)
      {
        [(AVTSnapshotBuilder *)snapshotBuilder setAvatar:?];
      }
    }
  }

  return v16;
}

- (AVTMemoji)avatar
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  avatar = selfCopy->_avatar;
  if (!avatar)
  {
    memoji = [MEMORY[0x1E698E2A0] memoji];
    v5 = selfCopy->_avatar;
    selfCopy->_avatar = memoji;

    avatar = selfCopy->_avatar;
    snapshotBuilder = selfCopy->_snapshotBuilder;
    if (snapshotBuilder)
    {
      [(AVTSnapshotBuilder *)snapshotBuilder setAvatar:avatar];
      avatar = selfCopy->_avatar;
    }
  }

  v7 = avatar;
  objc_sync_exit(selfCopy);

  return v7;
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
    if (self->_avatar)
    {
      [(AVTSnapshotBuilder *)snapshotBuilder setAvatar:?];
      snapshotBuilder = self->_snapshotBuilder;
    }
  }

  return snapshotBuilder;
}

- (id)imageForAvatarConfiguration:(id)configuration scope:(id)scope
{
  configurationCopy = configuration;
  scopeCopy = scope;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__20;
  v21 = __Block_byref_object_dispose__20;
  v22 = 0;
  snapshotBuilderQueue = [(AVTAvatarConfigurationImageRenderer *)self snapshotBuilderQueue];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __73__AVTAvatarConfigurationImageRenderer_imageForAvatarConfiguration_scope___block_invoke;
  v13[3] = &unk_1E7F3B758;
  v13[4] = self;
  v14 = configurationCopy;
  v15 = scopeCopy;
  v16 = &v17;
  v9 = scopeCopy;
  v10 = configurationCopy;
  dispatch_sync(snapshotBuilderQueue, v13);

  v11 = v18[5];
  _Block_object_dispose(&v17, 8);

  return v11;
}

uint64_t __73__AVTAvatarConfigurationImageRenderer_imageForAvatarConfiguration_scope___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) nts_imageForAvatarConfiguration:*(a1 + 40) scope:*(a1 + 48)];
  v3 = *(*(a1 + 56) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

- (id)nts_imageForAvatarConfiguration:(id)configuration scope:(id)scope
{
  v26[1] = *MEMORY[0x1E69E9840];
  scopeCopy = scope;
  configurationCopy = configuration;
  logger = [(AVTAvatarConfigurationImageRenderer *)self logger];
  v9 = [configurationCopy description];
  [logger logRenderingConfiguration:v9];

  avatar = [(AVTAvatarConfigurationImageRenderer *)self avatar];
  [configurationCopy applyToAvatar:avatar animated:0];

  v25 = *MEMORY[0x1E698E268];
  v26[0] = &unk_1F39A5D20;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:&v25 count:1];
  v12 = [v11 mutableCopy];

  v13 = [scopeCopy adaptedFramingModeForObjectType:2];
  pose = [scopeCopy pose];
  if (v13)
  {
    [v12 setObject:v13 forKeyedSubscript:*MEMORY[0x1E698E258]];
  }

  if (pose)
  {
    [v12 setObject:pose forKeyedSubscript:*MEMORY[0x1E698E260]];
  }

  snapshotBuilder = [(AVTAvatarConfigurationImageRenderer *)self snapshotBuilder];
  [scopeCopy size];
  v17 = v16;
  v19 = v18;
  [scopeCopy scale];
  v21 = [snapshotBuilder imageWithSize:v12 scale:v17 options:{v19, v20}];

  logger2 = [(AVTAvatarConfigurationImageRenderer *)self logger];
  v23 = [v21 description];
  [logger2 logSnapshotReturnedImage:v23];

  return v21;
}

@end