@interface CNPhotoPickerRecentsProvider
+ (id)log;
+ (id)poseConfigurationFromAvatarRecord:(id)record contactImage:(id)image;
+ (id)poseConfigurationFromContactImage:(id)image;
- (CNPhotoPickerRecentsProvider)initWithVisualIdentity:(id)identity;
- (id)defaultProviderItemWithContactImage:(id)image renderingQueue:(id)queue callbackQueue:(id)callbackQueue;
- (id)loadItemsForSize:(CGSize)size scale:(double)scale RTL:(BOOL)l renderingQueue:(id)queue callbackQueue:(id)callbackQueue itemDelegate:(id)delegate;
- (id)providerItemForContactImage:(id)image size:(CGSize)size scale:(double)scale RTL:(BOOL)l renderingQueue:(id)queue callbackQueue:(id)callbackQueue fallbackToDefaultItem:(BOOL)item;
@end

@implementation CNPhotoPickerRecentsProvider

- (id)defaultProviderItemWithContactImage:(id)image renderingQueue:(id)queue callbackQueue:(id)callbackQueue
{
  callbackQueueCopy = callbackQueue;
  queueCopy = queue;
  imageCopy = image;
  v10 = [CNPhotoPickerRecentsProviderItem alloc];
  imageData = [imageCopy imageData];
  variant = [imageCopy variant];
  [imageCopy cropRect];
  v13 = [(CNPhotoPickerProviderItem *)v10 initWithImageData:imageData thumbnailImageData:0 fullscreenImageData:0 imageFilterName:variant cropRect:queueCopy renderingQueue:callbackQueueCopy callbackQueue:?];

  identifier = [imageCopy identifier];

  [(CNPhotoPickerProviderItem *)v13 setRecentsIdentifier:identifier];

  return v13;
}

- (id)providerItemForContactImage:(id)image size:(CGSize)size scale:(double)scale RTL:(BOOL)l renderingQueue:(id)queue callbackQueue:(id)callbackQueue fallbackToDefaultItem:(BOOL)item
{
  itemCopy = item;
  lCopy = l;
  height = size.height;
  width = size.width;
  imageCopy = image;
  queueCopy = queue;
  callbackQueueCopy = callbackQueue;
  source = [imageCopy source];
  if (source == 4)
  {
    v53 = *MEMORY[0x1E6996568];
    displayString = [imageCopy displayString];
    LODWORD(v53) = (*(v53 + 16))(v53, displayString);

    if (v53)
    {
      v55 = !itemCopy;
    }

    else
    {
      v55 = 1;
    }

    if (v55)
    {
      v56 = [CNPhotoPickerEmojiProviderItem alloc];
      displayString2 = [imageCopy displayString];
      variant = [imageCopy variant];
      v59 = [CNPhotoPickerVariantsManager colorVariantWithColorNamed:variant];
      height = [(CNPhotoPickerEmojiProviderItem *)v56 initWithStringRepresentation:displayString2 backgroundColorVariant:v59 size:width, height];

      identifier = [imageCopy identifier];
      [(CNPhotoPickerProviderItem *)height setRecentsIdentifier:identifier];

      goto LABEL_24;
    }

    goto LABEL_17;
  }

  if (source == 3)
  {
    variant2 = [imageCopy variant];

    if (variant2)
    {
      v36 = [CNPhotoPickerAnimojiProviderItem alloc];
      imageData = [imageCopy imageData];
      [imageCopy cropRect];
      v39 = v38;
      v41 = v40;
      v43 = v42;
      v45 = v44;
      variant3 = [imageCopy variant];
      v47 = [CNPhotoPickerVariantsManager colorVariantWithColorNamed:variant3];
      height = [(CNPhotoPickerAnimojiProviderItem *)v36 initWithOriginalImageData:imageData cropRect:v47 backgroundColorVariant:v39, v41, v43, v45];

      identifier2 = [imageCopy identifier];
      [(CNPhotoPickerProviderItem *)height setRecentsIdentifier:identifier2];

      poseConfigurationData = [imageCopy poseConfigurationData];

      if (!poseConfigurationData)
      {
        goto LABEL_24;
      }

      v50 = MEMORY[0x1E695CF08];
      sourceIdentifier = [imageCopy sourceIdentifier];
      v21 = [v50 avatarRecordForIdentifier:sourceIdentifier];

      if (v21)
      {
        [(CNPhotoPickerEmojiProviderItem *)height setAvatarRecord:v21];
        v52 = [objc_opt_class() poseConfigurationFromAvatarRecord:v21 contactImage:imageCopy];
        [(CNPhotoPickerEmojiProviderItem *)height setPoseConfiguration:v52];
      }

      goto LABEL_23;
    }

    if (!itemCopy)
    {
      height = 0;
      goto LABEL_24;
    }

LABEL_17:
    height = [(CNPhotoPickerRecentsProvider *)self defaultProviderItemWithContactImage:imageCopy renderingQueue:queueCopy callbackQueue:callbackQueueCopy];
    goto LABEL_24;
  }

  if (source != 1)
  {
    goto LABEL_17;
  }

  v21 = +[CNAvatarImageRendererSettings defaultSettings];
  v22 = [[CNAvatarImageRenderer alloc] initWithSettings:v21];
  variant4 = [imageCopy variant];

  if (variant4)
  {
    v24 = objc_alloc(MEMORY[0x1E69BDC50]);
    variant5 = [imageCopy variant];
    v26 = [v24 initWithColorName:variant5];

    scale = [CNAvatarImageRenderingScope scopeWithPointSize:lCopy scale:0 rightToLeft:v26 style:width color:height, scale];
    v28 = [CNPhotoPickerMonogramProviderItem alloc];
    imageData2 = [imageCopy imageData];
    height = [(CNPhotoPickerMonogramProviderItem *)v28 initWithImageData:imageData2 thumbnailImageData:0 fullscreenImageData:0 cropRect:scale renderingScope:v22 avatarRenderer:1 isVariantOptionItem:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];

    displayString3 = [imageCopy displayString];
    [(CNPhotoPickerEmojiProviderItem *)height setMonogramText:displayString3];

    visualIdentity = [(CNPhotoPickerRecentsProvider *)self visualIdentity];
    v33 = [visualIdentity mutableCopy];
    [(CNPhotoPickerEmojiProviderItem *)height setVisualIdentity:v33];

    [(CNPhotoPickerEmojiProviderItem *)height setAvatarRenderer:v22];
    [(CNPhotoPickerEmojiProviderItem *)height setRenderingScope:scale];
    identifier3 = [imageCopy identifier];
    [(CNPhotoPickerProviderItem *)height setRecentsIdentifier:identifier3];
  }

  else if (itemCopy)
  {
    height = [(CNPhotoPickerRecentsProvider *)self defaultProviderItemWithContactImage:imageCopy renderingQueue:queueCopy callbackQueue:callbackQueueCopy];
  }

  else
  {
    height = 0;
  }

LABEL_23:
LABEL_24:

  return height;
}

- (id)loadItemsForSize:(CGSize)size scale:(double)scale RTL:(BOOL)l renderingQueue:(id)queue callbackQueue:(id)callbackQueue itemDelegate:(id)delegate
{
  height = size.height;
  width = size.width;
  v47[1] = *MEMORY[0x1E69E9840];
  queueCopy = queue;
  callbackQueueCopy = callbackQueue;
  delegateCopy = delegate;
  visualIdentity = [(CNPhotoPickerRecentsProvider *)self visualIdentity];
  identifier = [visualIdentity identifier];

  if (identifier)
  {
    [(CNPhotoPickerRecentsProvider *)self setContainsContactImage:0];
    [(CNPhotoPickerRecentsProvider *)self setContainsMonogram:0];
    v19 = objc_alloc_init(MEMORY[0x1E695CFB0]);
    visualIdentity2 = [(CNPhotoPickerRecentsProvider *)self visualIdentity];
    identifier2 = [visualIdentity2 identifier];
    v22 = [v19 recentImagesForContactWithIdentifier:identifier2];

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
      scaleCopy = scale;
      lCopy = l;
      v32 = queueCopy;
      v33 = callbackQueueCopy;
      v35 = &v40;
      v34 = delegateCopy;
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

- (CNPhotoPickerRecentsProvider)initWithVisualIdentity:(id)identity
{
  identityCopy = identity;
  v13.receiver = self;
  v13.super_class = CNPhotoPickerRecentsProvider;
  v6 = [(CNPhotoPickerRecentsProvider *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_visualIdentity, identity);
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    identifier = v7->identifier;
    v7->identifier = uUIDString;

    v11 = v7;
  }

  return v7;
}

+ (id)poseConfigurationFromContactImage:(id)image
{
  imageCopy = image;
  v4 = MEMORY[0x1E695CF08];
  sourceIdentifier = [imageCopy sourceIdentifier];
  v6 = [v4 avatarRecordForIdentifier:sourceIdentifier];

  if (v6)
  {
    v7 = MEMORY[0x1E695CF08];
    poseConfigurationData = [imageCopy poseConfigurationData];
    v9 = [v7 poseConfigurationForData:poseConfigurationData withAvatarRecord:v6];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)poseConfigurationFromAvatarRecord:(id)record contactImage:(id)image
{
  v5 = MEMORY[0x1E695CF08];
  recordCopy = record;
  poseConfigurationData = [image poseConfigurationData];
  v8 = [v5 poseConfigurationForData:poseConfigurationData withAvatarRecord:recordCopy];

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