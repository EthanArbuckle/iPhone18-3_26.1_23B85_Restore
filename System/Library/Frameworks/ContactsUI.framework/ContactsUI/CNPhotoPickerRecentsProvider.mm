@interface CNPhotoPickerRecentsProvider
+ (id)log;
+ (id)poseConfigurationFromAvatarRecord:(id)a3 contactImage:(id)a4;
+ (id)poseConfigurationFromContactImage:(id)a3;
- (CNPhotoPickerRecentsProvider)initWithVisualIdentity:(id)a3;
- (id)defaultProviderItemWithContactImage:(id)a3 renderingQueue:(id)a4 callbackQueue:(id)a5;
- (id)loadItemsForSize:(CGSize)a3 scale:(double)a4 RTL:(BOOL)a5 renderingQueue:(id)a6 callbackQueue:(id)a7 itemDelegate:(id)a8;
- (id)providerItemForContactImage:(id)a3 size:(CGSize)a4 scale:(double)a5 RTL:(BOOL)a6 renderingQueue:(id)a7 callbackQueue:(id)a8 fallbackToDefaultItem:(BOOL)a9;
@end

@implementation CNPhotoPickerRecentsProvider

- (id)defaultProviderItemWithContactImage:(id)a3 renderingQueue:(id)a4 callbackQueue:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [CNPhotoPickerRecentsProviderItem alloc];
  v11 = [v9 imageData];
  v12 = [v9 variant];
  [v9 cropRect];
  v13 = [(CNPhotoPickerProviderItem *)v10 initWithImageData:v11 thumbnailImageData:0 fullscreenImageData:0 imageFilterName:v12 cropRect:v8 renderingQueue:v7 callbackQueue:?];

  v14 = [v9 identifier];

  [(CNPhotoPickerProviderItem *)v13 setRecentsIdentifier:v14];

  return v13;
}

- (id)providerItemForContactImage:(id)a3 size:(CGSize)a4 scale:(double)a5 RTL:(BOOL)a6 renderingQueue:(id)a7 callbackQueue:(id)a8 fallbackToDefaultItem:(BOOL)a9
{
  v9 = a9;
  v12 = a6;
  height = a4.height;
  width = a4.width;
  v17 = a3;
  v18 = a7;
  v19 = a8;
  v20 = [v17 source];
  if (v20 == 4)
  {
    v53 = *MEMORY[0x1E6996568];
    v54 = [v17 displayString];
    LODWORD(v53) = (*(v53 + 16))(v53, v54);

    if (v53)
    {
      v55 = !v9;
    }

    else
    {
      v55 = 1;
    }

    if (v55)
    {
      v56 = [CNPhotoPickerEmojiProviderItem alloc];
      v57 = [v17 displayString];
      v58 = [v17 variant];
      v59 = [CNPhotoPickerVariantsManager colorVariantWithColorNamed:v58];
      v30 = [(CNPhotoPickerEmojiProviderItem *)v56 initWithStringRepresentation:v57 backgroundColorVariant:v59 size:width, height];

      v60 = [v17 identifier];
      [(CNPhotoPickerProviderItem *)v30 setRecentsIdentifier:v60];

      goto LABEL_24;
    }

    goto LABEL_17;
  }

  if (v20 == 3)
  {
    v35 = [v17 variant];

    if (v35)
    {
      v36 = [CNPhotoPickerAnimojiProviderItem alloc];
      v37 = [v17 imageData];
      [v17 cropRect];
      v39 = v38;
      v41 = v40;
      v43 = v42;
      v45 = v44;
      v46 = [v17 variant];
      v47 = [CNPhotoPickerVariantsManager colorVariantWithColorNamed:v46];
      v30 = [(CNPhotoPickerAnimojiProviderItem *)v36 initWithOriginalImageData:v37 cropRect:v47 backgroundColorVariant:v39, v41, v43, v45];

      v48 = [v17 identifier];
      [(CNPhotoPickerProviderItem *)v30 setRecentsIdentifier:v48];

      v49 = [v17 poseConfigurationData];

      if (!v49)
      {
        goto LABEL_24;
      }

      v50 = MEMORY[0x1E695CF08];
      v51 = [v17 sourceIdentifier];
      v21 = [v50 avatarRecordForIdentifier:v51];

      if (v21)
      {
        [(CNPhotoPickerEmojiProviderItem *)v30 setAvatarRecord:v21];
        v52 = [objc_opt_class() poseConfigurationFromAvatarRecord:v21 contactImage:v17];
        [(CNPhotoPickerEmojiProviderItem *)v30 setPoseConfiguration:v52];
      }

      goto LABEL_23;
    }

    if (!v9)
    {
      v30 = 0;
      goto LABEL_24;
    }

LABEL_17:
    v30 = [(CNPhotoPickerRecentsProvider *)self defaultProviderItemWithContactImage:v17 renderingQueue:v18 callbackQueue:v19];
    goto LABEL_24;
  }

  if (v20 != 1)
  {
    goto LABEL_17;
  }

  v21 = +[CNAvatarImageRendererSettings defaultSettings];
  v22 = [[CNAvatarImageRenderer alloc] initWithSettings:v21];
  v23 = [v17 variant];

  if (v23)
  {
    v24 = objc_alloc(MEMORY[0x1E69BDC50]);
    v25 = [v17 variant];
    v26 = [v24 initWithColorName:v25];

    v27 = [CNAvatarImageRenderingScope scopeWithPointSize:v12 scale:0 rightToLeft:v26 style:width color:height, a5];
    v28 = [CNPhotoPickerMonogramProviderItem alloc];
    v29 = [v17 imageData];
    v30 = [(CNPhotoPickerMonogramProviderItem *)v28 initWithImageData:v29 thumbnailImageData:0 fullscreenImageData:0 cropRect:v27 renderingScope:v22 avatarRenderer:1 isVariantOptionItem:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];

    v31 = [v17 displayString];
    [(CNPhotoPickerEmojiProviderItem *)v30 setMonogramText:v31];

    v32 = [(CNPhotoPickerRecentsProvider *)self visualIdentity];
    v33 = [v32 mutableCopy];
    [(CNPhotoPickerEmojiProviderItem *)v30 setVisualIdentity:v33];

    [(CNPhotoPickerEmojiProviderItem *)v30 setAvatarRenderer:v22];
    [(CNPhotoPickerEmojiProviderItem *)v30 setRenderingScope:v27];
    v34 = [v17 identifier];
    [(CNPhotoPickerProviderItem *)v30 setRecentsIdentifier:v34];
  }

  else if (v9)
  {
    v30 = [(CNPhotoPickerRecentsProvider *)self defaultProviderItemWithContactImage:v17 renderingQueue:v18 callbackQueue:v19];
  }

  else
  {
    v30 = 0;
  }

LABEL_23:
LABEL_24:

  return v30;
}

- (id)loadItemsForSize:(CGSize)a3 scale:(double)a4 RTL:(BOOL)a5 renderingQueue:(id)a6 callbackQueue:(id)a7 itemDelegate:(id)a8
{
  height = a3.height;
  width = a3.width;
  v47[1] = *MEMORY[0x1E69E9840];
  v30 = a6;
  v15 = a7;
  v16 = a8;
  v17 = [(CNPhotoPickerRecentsProvider *)self visualIdentity];
  v18 = [v17 identifier];

  if (v18)
  {
    [(CNPhotoPickerRecentsProvider *)self setContainsContactImage:0];
    [(CNPhotoPickerRecentsProvider *)self setContainsMonogram:0];
    v19 = objc_alloc_init(MEMORY[0x1E695CFB0]);
    v20 = [(CNPhotoPickerRecentsProvider *)self visualIdentity];
    v21 = [v20 identifier];
    v22 = [v19 recentImagesForContactWithIdentifier:v21];

    v23 = objc_alloc_init(MEMORY[0x1E695CDA8]);
    v46 = 0;
    v24 = [v23 performFetchRequest:v22 error:&v46];
    v25 = v46;
    v26 = MEMORY[0x1E695E0F0];
    if (!v25 && v24)
    {
      v40 = 0;
      v41 = &v40;
      v42 = 0x3032000000;
      v43 = __Block_byref_object_copy__24107;
      v44 = __Block_byref_object_dispose__24108;
      v45 = 0;
      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = __101__CNPhotoPickerRecentsProvider_loadItemsForSize_scale_RTL_renderingQueue_callbackQueue_itemDelegate___block_invoke;
      v31[3] = &unk_1E74E33B8;
      v31[4] = self;
      v36 = width;
      v37 = height;
      v38 = a4;
      v39 = a5;
      v32 = v30;
      v33 = v15;
      v35 = &v40;
      v34 = v16;
      v26 = [v24 _cn_compactMap:v31];
      if (v41[5])
      {
        v47[0] = v41[5];
        v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v47 count:1];
        v28 = [v27 arrayByAddingObjectsFromArray:v26];

        v26 = v28;
      }

      _Block_object_dispose(&v40, 8);
    }
  }

  else
  {
    v26 = MEMORY[0x1E695E0F0];
  }

  return v26;
}

id __101__CNPhotoPickerRecentsProvider_loadItemsForSize_scale_RTL_renderingQueue_callbackQueue_itemDelegate___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) providerItemForContactImage:v3 size:*(a1 + 96) scale:*(a1 + 40) RTL:*(a1 + 48) renderingQueue:*(a1 + 72) callbackQueue:{*(a1 + 80), *(a1 + 88)}];
  v5 = v4;
  if (!v4)
  {
    goto LABEL_12;
  }

  [v4 cropRect];
  v7 = v6;
  v9 = v8;
  v10 = [*(a1 + 32) visualIdentity];
  [v10 cropRect];
  if (v7 == v12 && v9 == v11)
  {
    [v5 cropRect];
    v16 = v15;
    v17 = [*(a1 + 32) visualIdentity];
    [v17 cropRect];
    v14 = v16 == v18;
  }

  else
  {
    v14 = 0;
  }

  if ([v5 imageType] == 2 || objc_msgSend(v5, "imageType") == 4 || v14)
  {
    v19 = [v5 imageData];
    v20 = [*(a1 + 32) visualIdentity];
    v21 = [v20 imageData];
    v22 = [v19 isEqualToData:v21];

    if (v22)
    {
      [*(a1 + 32) setContainsContactImage:1];
      objc_storeStrong((*(*(a1 + 64) + 8) + 40), v5);
LABEL_12:
      v23 = 0;
      goto LABEL_16;
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [*(a1 + 32) setContainsMonogram:1];
  }

  v24 = [v3 lastUsedDate];
  [v5 setSortDate:v24];

  [v5 setDelegate:*(a1 + 56)];
  v23 = v5;
LABEL_16:

  return v23;
}

- (CNPhotoPickerRecentsProvider)initWithVisualIdentity:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = CNPhotoPickerRecentsProvider;
  v6 = [(CNPhotoPickerRecentsProvider *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_visualIdentity, a3);
    v8 = [MEMORY[0x1E696AFB0] UUID];
    v9 = [v8 UUIDString];
    identifier = v7->identifier;
    v7->identifier = v9;

    v11 = v7;
  }

  return v7;
}

+ (id)poseConfigurationFromContactImage:(id)a3
{
  v3 = a3;
  v4 = MEMORY[0x1E695CF08];
  v5 = [v3 sourceIdentifier];
  v6 = [v4 avatarRecordForIdentifier:v5];

  if (v6)
  {
    v7 = MEMORY[0x1E695CF08];
    v8 = [v3 poseConfigurationData];
    v9 = [v7 poseConfigurationForData:v8 withAvatarRecord:v6];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)poseConfigurationFromAvatarRecord:(id)a3 contactImage:(id)a4
{
  v5 = MEMORY[0x1E695CF08];
  v6 = a3;
  v7 = [a4 poseConfigurationData];
  v8 = [v5 poseConfigurationForData:v7 withAvatarRecord:v6];

  return v8;
}

+ (id)log
{
  if (log_cn_once_token_1_24121 != -1)
  {
    dispatch_once(&log_cn_once_token_1_24121, &__block_literal_global_24122);
  }

  v3 = log_cn_once_object_1_24123;

  return v3;
}

uint64_t __35__CNPhotoPickerRecentsProvider_log__block_invoke()
{
  v0 = os_log_create("com.apple.contactsui", "CNPhotoPickerRecentsProvider");
  v1 = log_cn_once_object_1_24123;
  log_cn_once_object_1_24123 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end