@interface CNMemojiMetadataUtilities
+ (id)avatarRecordForIdentifier:(id)a3;
+ (id)dataForMemojiMetadata:(id)a3;
+ (id)dataForMemojiMetadata:(id)a3 backgroundColorDescription:(id)a4 cropTransform:(CGAffineTransform *)a5;
+ (id)dataForPoseConfiguration:(id)a3;
+ (id)memojiMetadataDataForAvatarRecord:(id)a3 poseConfiguration:(id)a4 backgroundColorDescription:(id)a5;
+ (id)memojiMetadataDataForAvatarRecord:(id)a3 poseConfiguration:(id)a4 backgroundColorDescription:(id)a5 cropTransform:(CGAffineTransform *)a6;
+ (id)memojiMetadataDataForAvatarRecordIdentifier:(id)a3 poseConfigurationData:(id)a4 backgroundColorDescription:(id)a5;
+ (id)memojiMetadataDataForAvatarRecordIdentifier:(id)a3 poseConfigurationData:(id)a4 backgroundColorDescription:(id)a5 cropTransform:(CGAffineTransform *)a6;
+ (id)memojiMetadataFromAvatarRecordData:(id)a3 poseConfigurationData:(id)a4 backgroundColorDescription:(id)a5;
+ (id)memojiMetadataFromData:(id)a3;
+ (id)os_log;
+ (id)physicsStatesDictionaryRepresentationForPose:(id)a3;
+ (id)poseConfigurationForData:(id)a3 withAvatarRecord:(id)a4;
+ (id)stickerConfigurationForAvatarRecord:(id)a3 stickerName:(id)a4 pose:(id)a5;
+ (id)stickerConfigurationForAvatarRecord:(id)a3 stickerName:(id)a4 stickerPack:(id)a5;
@end

@implementation CNMemojiMetadataUtilities

+ (id)os_log
{
  if (os_log_cn_once_token_1_2 != -1)
  {
    +[CNMemojiMetadataUtilities os_log];
  }

  v3 = os_log_cn_once_object_1_2;

  return v3;
}

uint64_t __35__CNMemojiMetadataUtilities_os_log__block_invoke()
{
  v0 = os_log_create("com.apple.contacts", "CNMemojiMetadataUtilities");
  v1 = os_log_cn_once_object_1_2;
  os_log_cn_once_object_1_2 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (id)memojiMetadataDataForAvatarRecord:(id)a3 poseConfiguration:(id)a4 backgroundColorDescription:(id)a5
{
  v5 = *(MEMORY[0x1E695EFD0] + 16);
  v8[0] = *MEMORY[0x1E695EFD0];
  v8[1] = v5;
  v8[2] = *(MEMORY[0x1E695EFD0] + 32);
  v6 = [a1 memojiMetadataDataForAvatarRecord:a3 poseConfiguration:a4 backgroundColorDescription:a5 cropTransform:v8];

  return v6;
}

+ (id)memojiMetadataDataForAvatarRecordIdentifier:(id)a3 poseConfigurationData:(id)a4 backgroundColorDescription:(id)a5
{
  v5 = *(MEMORY[0x1E695EFD0] + 16);
  v8[0] = *MEMORY[0x1E695EFD0];
  v8[1] = v5;
  v8[2] = *(MEMORY[0x1E695EFD0] + 32);
  v6 = [a1 memojiMetadataDataForAvatarRecordIdentifier:a3 poseConfigurationData:a4 backgroundColorDescription:a5 cropTransform:v8];

  return v6;
}

+ (id)dataForMemojiMetadata:(id)a3
{
  v7 = 0;
  v3 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:a3 requiringSecureCoding:1 error:&v7];
  v4 = v7;
  if (!v3)
  {
    v5 = +[CNMemojiMetadataUtilities os_log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      +[CNMemojiMetadataUtilities dataForMemojiMetadata:];
    }
  }

  return v3;
}

+ (id)dataForMemojiMetadata:(id)a3 backgroundColorDescription:(id)a4 cropTransform:(CGAffineTransform *)a5
{
  v7 = a4;
  v8 = a3;
  v9 = [CNMemojiMetadata alloc];
  v10 = [v8 avatarRecord];
  v11 = [v8 poseName];
  v12 = [v8 pose];

  v13 = *&a5->c;
  v17[0] = *&a5->a;
  v17[1] = v13;
  v17[2] = *&a5->tx;
  v14 = [(CNMemojiMetadata *)v9 initWithAvatarRecord:v10 poseName:v11 pose:v12 backgroundColorDescription:v7 cropTransform:v17];

  v15 = [objc_opt_class() dataForMemojiMetadata:v14];

  return v15;
}

+ (id)memojiMetadataDataForAvatarRecord:(id)a3 poseConfiguration:(id)a4 backgroundColorDescription:(id)a5 cropTransform:(CGAffineTransform *)a6
{
  v20 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = v11;
  if (v9 && v10 && v11)
  {
    v13 = [CNMemojiMetadata alloc];
    v14 = *&a6->c;
    *v18 = *&a6->a;
    *&v18[16] = v14;
    v19 = *&a6->tx;
    v15 = [(CNMemojiMetadata *)v13 initWithAvatarRecord:v9 poseConfiguration:v10 backgroundColorDescription:v12 cropTransform:v18];
    v16 = [objc_opt_class() dataForMemojiMetadata:v15];
  }

  else
  {
    v15 = +[CNMemojiMetadataUtilities os_log];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *v18 = 138412802;
      *&v18[4] = v9;
      *&v18[12] = 2112;
      *&v18[14] = v10;
      *&v18[22] = 2112;
      *&v18[24] = v12;
      _os_log_error_impl(&dword_1954A0000, v15, OS_LOG_TYPE_ERROR, "Error creating Memoji metadata for avatarRecord: %@, poseConfiguration: %@, backgroundColorDescription: %@ : received nil argument", v18, 0x20u);
    }

    v16 = 0;
  }

  return v16;
}

+ (id)memojiMetadataDataForAvatarRecordIdentifier:(id)a3 poseConfigurationData:(id)a4 backgroundColorDescription:(id)a5 cropTransform:(CGAffineTransform *)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [CNMemojiMetadataUtilities avatarRecordForIdentifier:v9];
  if (v12)
  {
    v13 = [CNMemojiMetadataUtilities poseConfigurationForData:v10 withAvatarRecord:v12];
    if (v13)
    {
      v14 = [CNMemojiMetadata alloc];
      v15 = *&a6->c;
      v19[0] = *&a6->a;
      v19[1] = v15;
      v19[2] = *&a6->tx;
      v16 = [(CNMemojiMetadata *)v14 initWithAvatarRecord:v12 poseConfiguration:v13 backgroundColorDescription:v11 cropTransform:v19];
      v17 = [objc_opt_class() dataForMemojiMetadata:v16];
    }

    else
    {
      v16 = +[CNMemojiMetadataUtilities os_log];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        +[CNMemojiMetadataUtilities memojiMetadataDataForAvatarRecordIdentifier:poseConfigurationData:backgroundColorDescription:cropTransform:];
      }

      v17 = 0;
    }
  }

  else
  {
    v13 = +[CNMemojiMetadataUtilities os_log];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      +[CNMemojiMetadataUtilities memojiMetadataDataForAvatarRecordIdentifier:poseConfigurationData:backgroundColorDescription:cropTransform:];
    }

    v17 = 0;
  }

  return v17;
}

+ (id)memojiMetadataFromData:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v8 = 0;
    v4 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v3 error:&v8];
    v5 = v8;
    if (!v4)
    {
      v6 = +[CNMemojiMetadataUtilities os_log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        +[CNMemojiMetadataUtilities memojiMetadataFromData:];
      }
    }
  }

  else
  {
    v5 = +[CNMemojiMetadataUtilities os_log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      +[CNMemojiMetadataUtilities memojiMetadataFromData:];
    }

    v4 = 0;
  }

  return v4;
}

+ (id)memojiMetadataFromAvatarRecordData:(id)a3 poseConfigurationData:(id)a4 backgroundColorDescription:(id)a5
{
  v5 = 0;
  if (a3 && a4 && a5)
  {
    v8 = getAVTAvatarRecordSerializerClass_0;
    v9 = a5;
    v10 = a4;
    v11 = a3;
    v12 = [(objc_class *)v8() avatarRecordFromData:v11];

    v13 = [CNMemojiMetadataUtilities poseConfigurationForData:v10 withAvatarRecord:v12];

    v5 = [[CNMemojiMetadata alloc] initWithAvatarRecord:v12 poseConfiguration:v13 backgroundColorDescription:v9];
  }

  return v5;
}

+ (id)stickerConfigurationForAvatarRecord:(id)a3 stickerName:(id)a4 pose:(id)a5
{
  v29 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (v8 && v9 && v10)
  {
    if ([v9 isEqualToString:@"custom_capture"])
    {
      v12 = [objc_alloc(getAVTStickerConfigurationClass()) initWithName:v9 pose:v11 props:0 shaders:0 camera:0 options:0];
      goto LABEL_24;
    }

    v22 = 0;
    v23 = &v22;
    v24 = 0x2020000000;
    v14 = getkAVTStickerPackPosesSymbolLoc_ptr;
    v25 = getkAVTStickerPackPosesSymbolLoc_ptr;
    if (!getkAVTStickerPackPosesSymbolLoc_ptr)
    {
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __getkAVTStickerPackPosesSymbolLoc_block_invoke;
      v27 = &unk_1E7412110;
      v28 = &v22;
      v15 = AvatarKitLibrary();
      v16 = dlsym(v15, "kAVTStickerPackPoses");
      *(v28[1] + 24) = v16;
      getkAVTStickerPackPosesSymbolLoc_ptr = *(v28[1] + 24);
      v14 = v23[3];
    }

    _Block_object_dispose(&v22, 8);
    if (v14)
    {
      v12 = [a1 stickerConfigurationForAvatarRecord:v8 stickerName:v9 stickerPack:{*v14, v22}];
      if (v12)
      {
        goto LABEL_24;
      }

      if ((softLinkAVTUIShowPrereleaseStickerPack_once[0]() & 1) == 0)
      {
        v20 = +[CNMemojiMetadataUtilities os_log];
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          +[CNMemojiMetadataUtilities stickerConfigurationForAvatarRecord:stickerName:pose:];
        }

        v12 = 0;
LABEL_23:

        goto LABEL_24;
      }

      v22 = 0;
      v23 = &v22;
      v24 = 0x2020000000;
      v17 = getkAVTStickerPackPosesPrereleaseSymbolLoc_ptr;
      v25 = getkAVTStickerPackPosesPrereleaseSymbolLoc_ptr;
      if (!getkAVTStickerPackPosesPrereleaseSymbolLoc_ptr)
      {
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 3221225472;
        *&buf[16] = __getkAVTStickerPackPosesPrereleaseSymbolLoc_block_invoke;
        v27 = &unk_1E7412110;
        v28 = &v22;
        v18 = AvatarKitLibrary();
        v19 = dlsym(v18, "kAVTStickerPackPosesPrerelease");
        *(v28[1] + 24) = v19;
        getkAVTStickerPackPosesPrereleaseSymbolLoc_ptr = *(v28[1] + 24);
        v17 = v23[3];
      }

      _Block_object_dispose(&v22, 8);
      if (v17)
      {
        v12 = [a1 stickerConfigurationForAvatarRecord:v8 stickerName:v9 stickerPack:{*v17, v22}];
        if (v12)
        {
          goto LABEL_24;
        }

        v20 = +[CNMemojiMetadataUtilities os_log];
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          +[CNMemojiMetadataUtilities stickerConfigurationForAvatarRecord:stickerName:pose:];
        }

        goto LABEL_23;
      }
    }

    getMDItemUniqueIdentifier_cold_1();
    __break(1u);
  }

  v13 = +[CNMemojiMetadataUtilities os_log];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412802;
    *&buf[4] = v8;
    *&buf[12] = 2112;
    *&buf[14] = v9;
    *&buf[22] = 2112;
    v27 = v11;
    _os_log_error_impl(&dword_1954A0000, v13, OS_LOG_TYPE_ERROR, "Error creating pose configuration for avatarRecord: %@, poseName: %@, pose: %@ : received nil argument", buf, 0x20u);
  }

  v12 = 0;
LABEL_24:

  return v12;
}

+ (id)stickerConfigurationForAvatarRecord:(id)a3 stickerName:(id)a4 stickerPack:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = a4;
  v10 = [v7 isEditable];
  AVTStickerConfigurationClass = getAVTStickerConfigurationClass();
  v12 = AVTStickerConfigurationClass;
  if (v10)
  {
    v13 = [AVTStickerConfigurationClass stickerConfigurationForMemojiInStickerPack:v8 stickerName:v9];
  }

  else
  {
    v14 = [v7 identifier];
    v13 = [v12 stickerConfigurationForAnimojiNamed:v14 inStickerPack:v8 stickerName:v9];

    v8 = v9;
    v9 = v14;
  }

  return v13;
}

+ (id)dataForPoseConfiguration:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = [[CNSerializedPoseConfiguration alloc] initWithPoseConfiguration:v3];
    v9 = 0;
    v5 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v4 requiringSecureCoding:1 error:&v9];
    v6 = v9;
    if (!v5)
    {
      v7 = +[CNMemojiMetadataUtilities os_log];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        +[CNMemojiMetadataUtilities dataForPoseConfiguration:];
      }
    }
  }

  else
  {
    v4 = +[CNMemojiMetadataUtilities os_log];
    if (os_log_type_enabled(&v4->super, OS_LOG_TYPE_ERROR))
    {
      +[CNMemojiMetadataUtilities dataForPoseConfiguration:];
    }

    v5 = 0;
  }

  return v5;
}

+ (id)poseConfigurationForData:(id)a3 withAvatarRecord:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v5 && v6)
  {
    v14 = 0;
    v8 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v5 error:&v14];
    v9 = v14;
    if (v8)
    {
      v10 = [v8 poseName];
      v11 = [v8 pose];
      v12 = [CNMemojiMetadataUtilities stickerConfigurationForAvatarRecord:v7 stickerName:v10 pose:v11];
    }

    else
    {
      v10 = +[CNMemojiMetadataUtilities os_log];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        +[CNMemojiMetadataUtilities poseConfigurationForData:withAvatarRecord:];
      }

      v12 = 0;
    }
  }

  else
  {
    v9 = +[CNMemojiMetadataUtilities os_log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      +[CNMemojiMetadataUtilities poseConfigurationForData:withAvatarRecord:];
    }

    v12 = 0;
  }

  return v12;
}

+ (id)avatarRecordForIdentifier:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = objc_alloc_init(getAVTPAvatarStoreClass());
    v5 = [(objc_class *)getAVTAvatarFetchRequestClass() requestForAvatarWithIdentifier:v3];
    v11 = 0;
    v6 = [v4 avatarsForFetchRequest:v5 error:&v11];
    v7 = v11;
    if (v6)
    {
      v8 = [v6 firstObject];
    }

    else
    {
      v9 = +[CNMemojiMetadataUtilities os_log];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        +[CNMemojiMetadataUtilities avatarRecordForIdentifier:];
      }

      v8 = 0;
    }
  }

  else
  {
    v4 = +[CNMemojiMetadataUtilities os_log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      +[CNMemojiMetadataUtilities avatarRecordForIdentifier:];
    }

    v8 = 0;
  }

  return v8;
}

+ (id)physicsStatesDictionaryRepresentationForPose:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E695DF90] dictionary];
  if (v3)
  {
    v5 = [v3 physicsStates];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v15;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v14 + 1) + 8 * i);
          v11 = [v5 objectForKeyedSubscript:v10];
          v12 = [v11 dictionaryRepresentation];
          [v4 setValue:v12 forKey:v10];
        }

        v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v7);
    }
  }

  else
  {
    v5 = +[CNMemojiMetadataUtilities os_log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      +[CNMemojiMetadataUtilities physicsStatesDictionaryRepresentationForPose:];
    }
  }

  return v4;
}

+ (void)dataForMemojiMetadata:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

+ (void)memojiMetadataDataForAvatarRecordIdentifier:poseConfigurationData:backgroundColorDescription:cropTransform:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)memojiMetadataDataForAvatarRecordIdentifier:poseConfigurationData:backgroundColorDescription:cropTransform:.cold.2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

+ (void)memojiMetadataFromData:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

+ (void)memojiMetadataFromData:.cold.2()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)dataForPoseConfiguration:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

+ (void)dataForPoseConfiguration:.cold.2()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)poseConfigurationForData:withAvatarRecord:.cold.2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

+ (void)avatarRecordForIdentifier:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

+ (void)avatarRecordForIdentifier:.cold.2()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)physicsStatesDictionaryRepresentationForPose:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

@end