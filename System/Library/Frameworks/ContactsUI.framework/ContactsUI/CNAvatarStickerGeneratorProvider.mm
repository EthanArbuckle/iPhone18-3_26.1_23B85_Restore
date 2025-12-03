@interface CNAvatarStickerGeneratorProvider
- (AVTStickerGenerator)generator;
- (CNAvatarStickerGeneratorProvider)initWithAvatarRecord:(id)record;
@end

@implementation CNAvatarStickerGeneratorProvider

- (AVTStickerGenerator)generator
{
  generator = self->_generator;
  if (!generator)
  {
    v18 = 0;
    v19 = &v18;
    v20 = 0x2050000000;
    v4 = getAVTAvatarRecordRenderingClass_softClass_30501;
    v21 = getAVTAvatarRecordRenderingClass_softClass_30501;
    if (!getAVTAvatarRecordRenderingClass_softClass_30501)
    {
      v13 = MEMORY[0x1E69E9820];
      v14 = 3221225472;
      v15 = __getAVTAvatarRecordRenderingClass_block_invoke_30502;
      v16 = &unk_1E74E7518;
      v17 = &v18;
      __getAVTAvatarRecordRenderingClass_block_invoke_30502(&v13);
      v4 = v19[3];
    }

    v5 = v4;
    _Block_object_dispose(&v18, 8);
    avatarRecord = [(CNAvatarStickerGeneratorProvider *)self avatarRecord];
    v7 = [v4 avatarForRecord:avatarRecord];

    v18 = 0;
    v19 = &v18;
    v20 = 0x2050000000;
    v8 = getAVTStickerGeneratorClass_softClass;
    v21 = getAVTStickerGeneratorClass_softClass;
    if (!getAVTStickerGeneratorClass_softClass)
    {
      v13 = MEMORY[0x1E69E9820];
      v14 = 3221225472;
      v15 = __getAVTStickerGeneratorClass_block_invoke;
      v16 = &unk_1E74E7518;
      v17 = &v18;
      __getAVTStickerGeneratorClass_block_invoke(&v13);
      v8 = v19[3];
    }

    v9 = v8;
    _Block_object_dispose(&v18, 8);
    v10 = [[v8 alloc] initWithAvatar:v7];
    v11 = self->_generator;
    self->_generator = v10;

    generator = self->_generator;
  }

  return generator;
}

- (CNAvatarStickerGeneratorProvider)initWithAvatarRecord:(id)record
{
  recordCopy = record;
  v10.receiver = self;
  v10.super_class = CNAvatarStickerGeneratorProvider;
  v6 = [(CNAvatarStickerGeneratorProvider *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_avatarRecord, record);
    v8 = v7;
  }

  return v7;
}

@end