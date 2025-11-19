@interface CNSharingProfileAvatarItemProvider
+ (id)animojiItemWithRecord:(id)a3 stickerConfiguration:(id)a4 backgroundColor:(id)a5;
+ (id)compositeImageForImage:(id)a3 backgroundImage:(id)a4;
+ (id)contactImageItemWithContact:(id)a3 renderer:(id)a4 logger:(id)a5 type:(int64_t)a6;
+ (id)descriptorForRequiredKeys;
+ (id)monogramImageItemWithContact:(id)a3 monogramColor:(id)a4 renderer:(id)a5 RTL:(BOOL)a6;
+ (id)originalAnimojiImageForRecord:(id)a3 stickerConfiguration:(id)a4 size:(CGSize)a5;
+ (id)silhouetteImageItemWithRenderer:(id)a3;
+ (id)unposedImageForAvatarRecord:(id)a3;
- (BOOL)contactHasImageOfPhotoType:(id)a3;
- (CNSharingProfileAvatarItem)animojiItem;
- (CNSharingProfileAvatarItem)monogramItem;
- (CNSharingProfileAvatarItem)photoItem;
- (CNSharingProfileAvatarItem)silhouetteItem;
- (CNSharingProfileAvatarItemProvider)initWithContact:(id)a3 avatarRecord:(id)a4 logger:(id)a5;
- (NSArray)avatarItems;
- (void)buildItems;
- (void)clearCachedItems;
- (void)pickRandomColors;
- (void)setAnimojiColor:(id)a3;
- (void)setConfiguration:(id)a3;
- (void)setMemojiMetadata:(id)a3;
- (void)setMonogramColor:(id)a3;
- (void)updateWithContact:(id)a3 fromFullPhotoPicker:(BOOL)a4;
@end

@implementation CNSharingProfileAvatarItemProvider

- (void)clearCachedItems
{
  silhouetteItem = self->_silhouetteItem;
  self->_silhouetteItem = 0;

  animojiItem = self->_animojiItem;
  self->_animojiItem = 0;

  photoItem = self->_photoItem;
  self->_photoItem = 0;

  monogramItem = self->_monogramItem;
  self->_monogramItem = 0;

  items = self->_items;
  self->_items = 0;
}

- (CNSharingProfileAvatarItem)monogramItem
{
  monogramItem = self->_monogramItem;
  if (!monogramItem)
  {
    if (self->_shouldIncludeMonogram)
    {
      [(CNSharingProfileAvatarItemProvider *)self buildItems];
      monogramItem = self->_monogramItem;
    }

    else
    {
      monogramItem = 0;
    }
  }

  return monogramItem;
}

- (CNSharingProfileAvatarItem)photoItem
{
  photoItem = self->_photoItem;
  if (!photoItem)
  {
    if (self->_shouldIncludePhoto)
    {
      [(CNSharingProfileAvatarItemProvider *)self buildItems];
      photoItem = self->_photoItem;
    }

    else
    {
      photoItem = 0;
    }
  }

  return photoItem;
}

- (CNSharingProfileAvatarItem)animojiItem
{
  animojiItem = self->_animojiItem;
  if (!animojiItem)
  {
    if (self->_shouldIncludeAnimoji)
    {
      [(CNSharingProfileAvatarItemProvider *)self buildItems];
      animojiItem = self->_animojiItem;
    }

    else
    {
      animojiItem = 0;
    }
  }

  return animojiItem;
}

- (CNSharingProfileAvatarItem)silhouetteItem
{
  silhouetteItem = self->_silhouetteItem;
  if (!silhouetteItem)
  {
    if (self->_shouldIncludeSilhouette)
    {
      [(CNSharingProfileAvatarItemProvider *)self buildItems];
      silhouetteItem = self->_silhouetteItem;
    }

    else
    {
      silhouetteItem = 0;
    }
  }

  return silhouetteItem;
}

- (void)setMemojiMetadata:(id)a3
{
  v6 = a3;
  v4 = [(CNSharingProfileAvatarItemProviderConfiguration *)self->_configuration memojiMetadata];
  v5 = [v4 isEqual:v6];

  if ((v5 & 1) == 0)
  {
    [(CNSharingProfileAvatarItemProviderConfiguration *)self->_configuration setMemojiMetadata:v6];
  }
}

- (void)setAnimojiColor:(id)a3
{
  v6 = a3;
  v4 = [(CNSharingProfileAvatarItemProviderConfiguration *)self->_configuration animojiColor];

  v5 = v6;
  if (v4 != v6)
  {
    [(CNSharingProfileAvatarItemProviderConfiguration *)self->_configuration setAnimojiColor:v6];
    v5 = v6;
  }
}

- (void)setMonogramColor:(id)a3
{
  v6 = a3;
  v4 = [(CNSharingProfileAvatarItemProviderConfiguration *)self->_configuration monogramColor];

  v5 = v6;
  if (v4 != v6)
  {
    [(CNSharingProfileAvatarItemProviderConfiguration *)self->_configuration setMonogramColor:v6];
    v5 = v6;
  }
}

- (void)updateWithContact:(id)a3 fromFullPhotoPicker:(BOOL)a4
{
  v7 = a3;
  p_contact = &self->_contact;
  contact = self->_contact;
  self->_contactIsFromFullPhotoPicker = a4;
  if (contact != v7)
  {
    v10 = v7;
    objc_storeStrong(p_contact, a3);
    p_contact = [(CNSharingProfileAvatarItemProvider *)self clearCachedItems];
    v7 = v10;
  }

  MEMORY[0x1EEE66BB8](p_contact, v7);
}

- (void)buildItems
{
  v50 = [MEMORY[0x1E695DF70] array];
  if (self->_shouldIncludeSilhouette)
  {
    if (self->_silhouetteItem || ([objc_opt_class() silhouetteImageItemWithRenderer:self->_renderer], v3 = objc_claimAutoreleasedReturnValue(), silhouetteItem = self->_silhouetteItem, self->_silhouetteItem = v3, silhouetteItem, self->_silhouetteItem))
    {
      [v50 addObject:?];
    }
  }

  if (self->_shouldIncludeAnimoji)
  {
    if (self->_animojiItem)
    {
LABEL_16:
      v21 = [(CNSharingProfileAvatarItemProviderConfiguration *)self->_configuration memojiMetadata];
      [(CNSharingProfileAvatarItem *)self->_animojiItem setMemojiMetadata:v21];

      [v50 addObject:self->_animojiItem];
      animojiItem = self->_animojiItem;
      if (self->_previousAnimojiItem != animojiItem)
      {
        objc_storeStrong(&self->_previousAnimojiItem, animojiItem);
      }

      goto LABEL_18;
    }

    if ([(CNContact *)self->_contact imageDataAvailable]&& [(CNContact *)self->_contact hasImageOfType:3])
    {
      v5 = objc_opt_class();
      contact = self->_contact;
      renderer = self->_renderer;
      v8 = [(CNSharingProfileAvatarItemProvider *)self logger];
      v9 = [v5 contactImageItemWithContact:contact renderer:renderer logger:v8 type:3];

      [(CNSharingProfileAvatarItem *)v9 setWasSetFromFullPhotoPicker:self->_contactIsFromFullPhotoPicker];
      v10 = self->_animojiItem;
      self->_animojiItem = v9;
    }

    else
    {
      previousAnimojiItem = self->_previousAnimojiItem;
      if (previousAnimojiItem)
      {
        v12 = previousAnimojiItem;
        v10 = self->_animojiItem;
        self->_animojiItem = v12;
      }

      else
      {
        if (!self->_avatarRecord)
        {
          goto LABEL_15;
        }

        v10 = [CNPhotoPickerVariantsManager sharingProfileAvatarPoseConfigurationForAvatarRecord:?];
        v13 = objc_opt_class();
        avatarRecord = self->_avatarRecord;
        v15 = [(CNSharingProfileAvatarItemProviderConfiguration *)self->_configuration animojiColor];
        v16 = [v15 color];
        v17 = [v13 animojiItemWithRecord:avatarRecord stickerConfiguration:v10 backgroundColor:v16];

        v18 = [(CNSharingProfileAvatarItemProviderConfiguration *)self->_configuration animojiColor];
        v19 = [v18 colorName];
        [(CNSharingProfileAvatarItem *)v17 setVariantIdentifier:v19];

        v20 = self->_animojiItem;
        self->_animojiItem = v17;
      }
    }

LABEL_15:
    if (!self->_animojiItem)
    {
      goto LABEL_18;
    }

    goto LABEL_16;
  }

LABEL_18:
  if (!self->_shouldIncludePhoto)
  {
    goto LABEL_29;
  }

  if (!self->_photoItem)
  {
    if ([(CNSharingProfileAvatarItemProvider *)self contactHasImageOfPhotoType:self->_contact])
    {
      v23 = objc_opt_class();
      v24 = self->_contact;
      v25 = self->_renderer;
      v26 = [(CNSharingProfileAvatarItemProvider *)self logger];
      v27 = v23;
      v28 = v24;
      v29 = v25;
      v30 = v26;
      v31 = 4;
    }

    else
    {
      if ([(CNContact *)self->_contact rawImageType]!= 4)
      {
        previousPhotoItem = self->_previousPhotoItem;
        if (!previousPhotoItem)
        {
LABEL_26:
          if (!self->_photoItem)
          {
            goto LABEL_29;
          }

          goto LABEL_27;
        }

        v35 = previousPhotoItem;
LABEL_25:
        photoItem = self->_photoItem;
        self->_photoItem = v35;

        goto LABEL_26;
      }

      v32 = objc_opt_class();
      v33 = self->_contact;
      v34 = self->_renderer;
      v26 = [(CNSharingProfileAvatarItemProvider *)self logger];
      v27 = v32;
      v28 = v33;
      v29 = v34;
      v30 = v26;
      v31 = 5;
    }

    v35 = [v27 contactImageItemWithContact:v28 renderer:v29 logger:v30 type:v31];

    [(CNSharingProfileAvatarItem *)v35 setWasSetFromFullPhotoPicker:self->_contactIsFromFullPhotoPicker];
    goto LABEL_25;
  }

LABEL_27:
  [v50 addObject:?];
  v37 = self->_photoItem;
  if (self->_previousPhotoItem != v37)
  {
    objc_storeStrong(&self->_previousPhotoItem, v37);
  }

LABEL_29:
  if (self->_shouldIncludeMonogram)
  {
    monogramItem = self->_monogramItem;
    if (!monogramItem)
    {
      v39 = objc_opt_class();
      v40 = self->_contact;
      v41 = [(CNSharingProfileAvatarItemProviderConfiguration *)self->_configuration monogramColor];
      v42 = [v39 monogramImageItemWithContact:v40 monogramColor:v41 renderer:self->_renderer RTL:0];

      if ([(CNContact *)self->_contact rawImageType]== 2)
      {
        v43 = [(CNSharingProfileAvatarItem *)v42 wasSetFromFullPhotoPicker]|| self->_contactIsFromFullPhotoPicker;
        [(CNSharingProfileAvatarItem *)v42 setWasSetFromFullPhotoPicker:v43];
      }

      v45 = [(CNSharingProfileAvatarItemProviderConfiguration *)self->_configuration monogramColor];
      v46 = [v45 colorName];
      [(CNSharingProfileAvatarItem *)v42 setVariantIdentifier:v46];

      v47 = self->_monogramItem;
      self->_monogramItem = v42;

      monogramItem = self->_monogramItem;
    }

    [v50 addObject:monogramItem];
  }

  v48 = [v50 copy];
  items = self->_items;
  self->_items = v48;
}

- (BOOL)contactHasImageOfPhotoType:(id)a3
{
  v3 = a3;
  if ([v3 imageDataAvailable])
  {
    v4 = [v3 rawImageType] == 1 || objc_msgSend(v3, "rawImageType") == 0;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSArray)avatarItems
{
  [(CNSharingProfileAvatarItemProvider *)self buildItems];
  items = self->_items;

  return items;
}

- (void)setConfiguration:(id)a3
{
  v5 = a3;
  if (v5)
  {
    configuration = self->_configuration;
    p_configuration = &self->_configuration;
    if (configuration != v5)
    {
      v8 = v5;
      objc_storeStrong(p_configuration, a3);
      v5 = v8;
    }
  }
}

- (void)pickRandomColors
{
  variantsManager = self->_variantsManager;
  if (!variantsManager)
  {
    v4 = objc_alloc_init(CNPhotoPickerVariantsManager);
    v5 = self->_variantsManager;
    self->_variantsManager = v4;

    variantsManager = self->_variantsManager;
  }

  v6 = [(CNPhotoPickerVariantsManager *)variantsManager avatarBackgrounds];
  v7 = [v6 count];

  v8 = arc4random_uniform(v7 - 1);
  v9 = [(CNPhotoPickerVariantsManager *)self->_variantsManager avatarBackgrounds];
  v10 = [v9 objectAtIndexedSubscript:v8 + 1];
  [(CNSharingProfileAvatarItemProviderConfiguration *)self->_configuration setAnimojiColor:v10];

  v12 = [MEMORY[0x1E69BDC50] availableColors];
  v11 = [v12 objectAtIndexedSubscript:{arc4random_uniform(objc_msgSend(v12, "count") - 1) + 1}];
  [(CNSharingProfileAvatarItemProviderConfiguration *)self->_configuration setMonogramColor:v11];
}

- (CNSharingProfileAvatarItemProvider)initWithContact:(id)a3 avatarRecord:(id)a4 logger:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v21.receiver = self;
  v21.super_class = CNSharingProfileAvatarItemProvider;
  v12 = [(CNSharingProfileAvatarItemProvider *)&v21 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_contact, a3);
    objc_storeStrong(&v13->_avatarRecord, a4);
    objc_storeStrong(&v13->_logger, a5);
    v14 = +[CNAvatarImageRendererSettings defaultSettings];
    v15 = [[CNAvatarImageRenderer alloc] initWithSettings:v14];
    renderer = v13->_renderer;
    v13->_renderer = v15;

    *&v13->_shouldIncludeAnimoji = 257;
    v13->_shouldIncludeMonogram = 1;
    v17 = objc_alloc_init(CNSharingProfileAvatarItemProviderConfiguration);
    configuration = v13->_configuration;
    v13->_configuration = v17;

    v13->_useRTL = [*MEMORY[0x1E69DDA98] userInterfaceLayoutDirection] == 1;
    [(CNSharingProfileAvatarItemProvider *)v13 pickRandomColors];
    v19 = v13;
  }

  return v13;
}

+ (id)compositeImageForImage:(id)a3 backgroundImage:(id)a4
{
  v5 = a4;
  v6 = a3;
  [v6 size];
  v8 = v7;
  [v6 size];
  v10 = v9;
  [v6 scale];
  v12 = v11;
  v17.width = v8;
  v17.height = v10;
  UIGraphicsBeginImageContextWithOptions(v17, 0, v12);
  v13 = UIGraphicsGetImageFromCurrentImageContext();
  [v5 drawInRect:{0.0, 0.0, v8, v10}];

  [v6 drawInRect:{0.0, 0.0, v8, v10}];
  v14 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v14;
}

+ (id)unposedImageForAvatarRecord:(id)a3
{
  v3 = a3;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2050000000;
  v4 = getAVTAvatarRecordImageProviderClass_softClass_32927;
  v20 = getAVTAvatarRecordImageProviderClass_softClass_32927;
  if (!getAVTAvatarRecordImageProviderClass_softClass_32927)
  {
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __getAVTAvatarRecordImageProviderClass_block_invoke_32928;
    v15 = &unk_1E74E7518;
    v16 = &v17;
    __getAVTAvatarRecordImageProviderClass_block_invoke_32928(&v12);
    v4 = v18[3];
  }

  v5 = v4;
  _Block_object_dispose(&v17, 8);
  v6 = objc_alloc_init(v4);
  v17 = 0;
  v18 = &v17;
  v19 = 0x2050000000;
  v7 = getAVTRenderingScopeClass_softClass_32929;
  v20 = getAVTRenderingScopeClass_softClass_32929;
  if (!getAVTRenderingScopeClass_softClass_32929)
  {
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __getAVTRenderingScopeClass_block_invoke_32930;
    v15 = &unk_1E74E7518;
    v16 = &v17;
    __getAVTRenderingScopeClass_block_invoke_32930(&v12);
    v7 = v18[3];
  }

  v8 = v7;
  _Block_object_dispose(&v17, 8);
  v9 = [v7 largeThumbnailScope];
  v10 = [v6 imageForRecord:v3 scope:v9];

  return v10;
}

+ (id)animojiItemWithRecord:(id)a3 stickerConfiguration:(id)a4 backgroundColor:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [CNSharingProfileAvatarItem alloc];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __97__CNSharingProfileAvatarItemProvider_animojiItemWithRecord_stickerConfiguration_backgroundColor___block_invoke;
  v21[3] = &unk_1E74E4388;
  v25 = a1;
  v22 = v8;
  v23 = v9;
  v24 = v10;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __97__CNSharingProfileAvatarItemProvider_animojiItemWithRecord_stickerConfiguration_backgroundColor___block_invoke_2;
  v17[3] = &unk_1E74E43B0;
  v19 = v23;
  v20 = a1;
  v18 = v22;
  v12 = v23;
  v13 = v22;
  v14 = v10;
  v15 = [(CNSharingProfileAvatarItem *)v11 initWithImageProvider:v21 originalImageProvider:v17 type:2];

  return v15;
}

id __97__CNSharingProfileAvatarItemProvider_animojiItemWithRecord_stickerConfiguration_backgroundColor___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 56) originalAnimojiImageForRecord:*(a1 + 32) stickerConfiguration:*(a1 + 40) size:?];
  v3 = [CNPhotoPickerVariantsManager colorGradientBackground:*(a1 + 48)];
  v4 = [*(a1 + 56) compositeImageForImage:v2 backgroundImage:v3];

  return v4;
}

+ (id)originalAnimojiImageForRecord:(id)a3 stickerConfiguration:(id)a4 size:(CGSize)a5
{
  width = a5.width;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v9)
  {
    [v9 loadIfNeeded];
    v11 = [[CNAvatarStickerGeneratorProvider alloc] initWithAvatarRecord:v8];
    v12 = [(CNAvatarStickerGeneratorProvider *)v11 generator];
    [v12 setAsync:0];
    v26 = 0;
    v27 = &v26;
    v28 = 0x2050000000;
    v13 = getAVTStickerGeneratorOptionsClass_softClass;
    v29 = getAVTStickerGeneratorOptionsClass_softClass;
    if (!getAVTStickerGeneratorOptionsClass_softClass)
    {
      v20 = MEMORY[0x1E69E9820];
      v21 = 3221225472;
      v22 = __getAVTStickerGeneratorOptionsClass_block_invoke;
      v23 = &unk_1E74E7518;
      v24 = &v26;
      __getAVTStickerGeneratorOptionsClass_block_invoke(&v20);
      v13 = v27[3];
    }

    v14 = v13;
    _Block_object_dispose(&v26, 8);
    v15 = objc_alloc_init(v13);
    [v10 size];
    [v15 setSizeMultiplier:width / v16];
    v20 = 0;
    v21 = &v20;
    v22 = 0x3032000000;
    v23 = __Block_byref_object_copy__32946;
    v24 = __Block_byref_object_dispose__32947;
    v25 = 0;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __94__CNSharingProfileAvatarItemProvider_originalAnimojiImageForRecord_stickerConfiguration_size___block_invoke;
    v19[3] = &unk_1E74E4360;
    v19[4] = &v20;
    [v12 stickerImageWithConfiguration:v10 options:v15 completionHandler:v19];
    v17 = *(v21 + 40);
    _Block_object_dispose(&v20, 8);
  }

  else
  {
    v17 = [a1 unposedImageForAvatarRecord:v8];
  }

  return v17;
}

uint64_t __94__CNSharingProfileAvatarItemProvider_originalAnimojiImageForRecord_stickerConfiguration_size___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [CNAvatarImageUtilities croppedAndCenteredAvatarImageForImage:a2 widthMultiplier:1.0];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x1EEE66BB8](v3, v5);
}

+ (id)monogramImageItemWithContact:(id)a3 monogramColor:(id)a4 renderer:(id)a5 RTL:(BOOL)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = v9;
  if (![v12 imageDataAvailable])
  {
    v13 = v10;
    v14 = 0;
    goto LABEL_5;
  }

  if ([v12 hasImageOfType:2])
  {
    v13 = 0;
    v14 = 1;
LABEL_5:
    v15 = v12;
    goto LABEL_7;
  }

  v15 = [v12 mutableCopy];
  [v15 removePhoto];
  v13 = v10;

  v14 = 0;
LABEL_7:
  v16 = [CNSharingProfileAvatarItem alloc];
  v22 = MEMORY[0x1E69E9820];
  v23 = 3221225472;
  v24 = __94__CNSharingProfileAvatarItemProvider_monogramImageItemWithContact_monogramColor_renderer_RTL___block_invoke;
  v25 = &unk_1E74E4338;
  v29 = a6;
  v30 = v14;
  v26 = v13;
  v27 = v11;
  v28 = v15;
  v17 = v15;
  v18 = v11;
  v19 = v13;
  v20 = [(CNSharingProfileAvatarItem *)v16 initWithImageProvider:&v22 type:1];
  [(CNSharingProfileAvatarItem *)v20 setWasSetFromFullPhotoPicker:v14, v22, v23, v24, v25];

  return v20;
}

id __94__CNSharingProfileAvatarItemProvider_monogramImageItemWithContact_monogramColor_renderer_RTL___block_invoke(uint64_t a1, double a2, double a3)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v6 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v6 scale];
  v8 = [CNAvatarImageRenderingScope scopeWithPointSize:*(a1 + 56) scale:0 rightToLeft:*(a1 + 32) style:a2 color:a3, v7];

  v9 = *(a1 + 40);
  if (*(a1 + 57) == 1)
  {
    v13[0] = *(a1 + 48);
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
    v11 = [v9 avatarImageForContacts:v10 scope:v8];
  }

  else
  {
    v11 = [*(a1 + 40) renderMonogramForContact:*(a1 + 48) color:*(a1 + 32) scope:v8 prohibitedSources:0];
  }

  return v11;
}

+ (id)contactImageItemWithContact:(id)a3 renderer:(id)a4 logger:(id)a5 type:(int64_t)a6
{
  v8 = a3;
  v9 = a4;
  v10 = [CNSharingProfileAvatarItem alloc];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __87__CNSharingProfileAvatarItemProvider_contactImageItemWithContact_renderer_logger_type___block_invoke;
  v15[3] = &unk_1E74E4310;
  v16 = v9;
  v17 = v8;
  v11 = v8;
  v12 = v9;
  v13 = [(CNSharingProfileAvatarItem *)v10 initWithImageProvider:v15 type:a6];

  return v13;
}

id __87__CNSharingProfileAvatarItemProvider_contactImageItemWithContact_renderer_logger_type___block_invoke(uint64_t a1, double a2, double a3)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v6 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v6 scale];
  v8 = [CNAvatarImageRenderingScope scopeWithPointSize:0 scale:0 rightToLeft:a2 style:a3, v7];

  v9 = *(a1 + 32);
  v13[0] = *(a1 + 40);
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
  v11 = [v9 avatarImageForContacts:v10 scope:v8];

  return v11;
}

+ (id)silhouetteImageItemWithRenderer:(id)a3
{
  v3 = a3;
  v4 = [CNSharingProfileAvatarItem alloc];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __70__CNSharingProfileAvatarItemProvider_silhouetteImageItemWithRenderer___block_invoke;
  v8[3] = &unk_1E74E42E8;
  v9 = v3;
  v5 = v3;
  v6 = [(CNSharingProfileAvatarItem *)v4 initWithImageProvider:v8 type:0];

  return v6;
}

id __70__CNSharingProfileAvatarItemProvider_silhouetteImageItemWithRenderer___block_invoke(uint64_t a1, double a2, double a3)
{
  v5 = [*(a1 + 32) placeholderImageProvider];
  v6 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v6 scale];
  v8 = [v5 imageForSize:a2 scale:{a3, v7}];

  return v8;
}

+ (id)descriptorForRequiredKeys
{
  if (descriptorForRequiredKeys_cn_once_token_1_32959 != -1)
  {
    dispatch_once(&descriptorForRequiredKeys_cn_once_token_1_32959, &__block_literal_global_32960);
  }

  v3 = descriptorForRequiredKeys_cn_once_object_1_32961;

  return v3;
}

void __63__CNSharingProfileAvatarItemProvider_descriptorForRequiredKeys__block_invoke()
{
  v8[5] = *MEMORY[0x1E69E9840];
  v0 = +[(CNVisualIdentityPickerViewController *)CNPhotoPickerViewController];
  v1 = *MEMORY[0x1E695C278];
  v8[0] = v0;
  v8[1] = v1;
  v2 = *MEMORY[0x1E695C238];
  v8[2] = *MEMORY[0x1E695C400];
  v8[3] = v2;
  v8[4] = *MEMORY[0x1E695C270];
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:5];

  v4 = MEMORY[0x1E695CD58];
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[CNSharingProfileAvatarItemProvider descriptorForRequiredKeys]_block_invoke"];
  v6 = [v4 descriptorWithKeyDescriptors:v3 description:v5];

  v7 = descriptorForRequiredKeys_cn_once_object_1_32961;
  descriptorForRequiredKeys_cn_once_object_1_32961 = v6;
}

@end