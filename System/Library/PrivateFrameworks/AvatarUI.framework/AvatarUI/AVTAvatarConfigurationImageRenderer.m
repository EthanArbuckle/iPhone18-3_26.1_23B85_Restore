@interface AVTAvatarConfigurationImageRenderer
- (AVTAvatarConfigurationImageRenderer)initWithEnvironment:(id)a3 avatar:(id)a4;
- (AVTAvatarConfigurationImageRenderer)initWithSnapshotBuilder:(id)a3 avatar:(id)a4 lockProvider:(id)a5 logger:(id)a6;
- (AVTMemoji)avatar;
- (AVTSnapshotBuilder)snapshotBuilder;
- (id)imageForAvatarConfiguration:(id)a3 scope:(id)a4;
- (id)nts_imageForAvatarConfiguration:(id)a3 scope:(id)a4;
@end

@implementation AVTAvatarConfigurationImageRenderer

- (AVTAvatarConfigurationImageRenderer)initWithEnvironment:(id)a3 avatar:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 lockProvider];
  v9 = [v7 logger];

  v10 = [(AVTAvatarConfigurationImageRenderer *)self initWithSnapshotBuilder:0 avatar:v6 lockProvider:v8 logger:v9];
  return v10;
}

- (AVTAvatarConfigurationImageRenderer)initWithSnapshotBuilder:(id)a3 avatar:(id)a4 lockProvider:(id)a5 logger:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v21.receiver = self;
  v21.super_class = AVTAvatarConfigurationImageRenderer;
  v15 = [(AVTAvatarConfigurationImageRenderer *)&v21 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_avatar, a4);
    objc_storeStrong(&v16->_snapshotBuilder, a3);
    v17 = v13[2](v13, "com.apple.AvatarUI.snapshotBuilderRenderingQueue");
    snapshotBuilderQueue = v16->_snapshotBuilderQueue;
    v16->_snapshotBuilderQueue = v17;

    objc_storeStrong(&v16->_logger, a6);
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
  v2 = self;
  objc_sync_enter(v2);
  avatar = v2->_avatar;
  if (!avatar)
  {
    v4 = [MEMORY[0x1E698E2A0] memoji];
    v5 = v2->_avatar;
    v2->_avatar = v4;

    avatar = v2->_avatar;
    snapshotBuilder = v2->_snapshotBuilder;
    if (snapshotBuilder)
    {
      [(AVTSnapshotBuilder *)snapshotBuilder setAvatar:avatar];
      avatar = v2->_avatar;
    }
  }

  v7 = avatar;
  objc_sync_exit(v2);

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

- (id)imageForAvatarConfiguration:(id)a3 scope:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__20;
  v21 = __Block_byref_object_dispose__20;
  v22 = 0;
  v8 = [(AVTAvatarConfigurationImageRenderer *)self snapshotBuilderQueue];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __73__AVTAvatarConfigurationImageRenderer_imageForAvatarConfiguration_scope___block_invoke;
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

uint64_t __73__AVTAvatarConfigurationImageRenderer_imageForAvatarConfiguration_scope___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) nts_imageForAvatarConfiguration:*(a1 + 40) scope:*(a1 + 48)];
  v3 = *(*(a1 + 56) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

- (id)nts_imageForAvatarConfiguration:(id)a3 scope:(id)a4
{
  v26[1] = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = a3;
  v8 = [(AVTAvatarConfigurationImageRenderer *)self logger];
  v9 = [v7 description];
  [v8 logRenderingConfiguration:v9];

  v10 = [(AVTAvatarConfigurationImageRenderer *)self avatar];
  [v7 applyToAvatar:v10 animated:0];

  v25 = *MEMORY[0x1E698E268];
  v26[0] = &unk_1F39A5D20;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:&v25 count:1];
  v12 = [v11 mutableCopy];

  v13 = [v6 adaptedFramingModeForObjectType:2];
  v14 = [v6 pose];
  if (v13)
  {
    [v12 setObject:v13 forKeyedSubscript:*MEMORY[0x1E698E258]];
  }

  if (v14)
  {
    [v12 setObject:v14 forKeyedSubscript:*MEMORY[0x1E698E260]];
  }

  v15 = [(AVTAvatarConfigurationImageRenderer *)self snapshotBuilder];
  [v6 size];
  v17 = v16;
  v19 = v18;
  [v6 scale];
  v21 = [v15 imageWithSize:v12 scale:v17 options:{v19, v20}];

  v22 = [(AVTAvatarConfigurationImageRenderer *)self logger];
  v23 = [v21 description];
  [v22 logSnapshotReturnedImage:v23];

  return v21;
}

@end