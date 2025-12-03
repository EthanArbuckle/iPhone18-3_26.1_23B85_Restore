@interface CNPhotoPickerAnimojiProviderItem
+ (id)log;
- (BOOL)allowsVariants;
- (BOOL)isEqual:(id)equal;
- (CGAffineTransform)transformForMemojiMetadata;
- (CGSize)originalImageSize;
- (CNPhotoPickerAnimojiProviderItem)initWithAvatarRecord:(id)record imageProvider:(id)provider renderingScope:(id)scope renderingQueue:(id)queue callbackQueue:(id)callbackQueue;
- (CNPhotoPickerAnimojiProviderItem)initWithOriginalImageData:(id)data cropRect:(CGRect)rect;
- (CNPhotoPickerAnimojiProviderItem)initWithOriginalImageData:(id)data cropRect:(CGRect)rect backgroundColorVariant:(id)variant;
- (UIEdgeInsets)edgeInsets;
- (id)contactImageForMetadataStore;
- (id)copyWithColor:(id)color;
- (id)copyWithPoseConfiguration:(id)configuration generatorProvider:(id)provider;
- (id)copyWithZone:(_NSZone *)zone;
- (id)createVariantsItemsWithVariantsManager:(id)manager;
- (id)generateImageDataIfNeeded;
- (id)generateThumbnailImageDataIfNeeded;
- (id)imageData;
- (id)localizedVariantsTitle;
- (id)renderAvatarWithBackgroundWithImage:(id)image;
- (id)renderAvatarWithBackgroundWithImageData:(id)data;
- (id)renderAvatarWithPoseWithSize:(double)size;
- (id)renderDefaultAvatarImage;
- (id)variantIdentifier;
- (unint64_t)hash;
- (void)applyVariantEffectToFullsizeImageWithCompletion:(id)completion;
- (void)generateAllImageDatasIfNeeded;
- (void)updateVisualIdentity:(id)identity;
@end

@implementation CNPhotoPickerAnimojiProviderItem

- (UIEdgeInsets)edgeInsets
{
  top = self->_edgeInsets.top;
  left = self->_edgeInsets.left;
  bottom = self->_edgeInsets.bottom;
  right = self->_edgeInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (CGSize)originalImageSize
{
  width = self->_originalImageSize.width;
  height = self->_originalImageSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (unint64_t)hash
{
  v3 = MEMORY[0x1E6996730];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __40__CNPhotoPickerAnimojiProviderItem_hash__block_invoke;
  v10[3] = &unk_1E74E6308;
  v10[4] = self;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __40__CNPhotoPickerAnimojiProviderItem_hash__block_invoke_2;
  aBlock[3] = &unk_1E74E6308;
  aBlock[4] = self;
  v4 = _Block_copy(aBlock);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __40__CNPhotoPickerAnimojiProviderItem_hash__block_invoke_3;
  v8[3] = &unk_1E74E6308;
  v8[4] = self;
  v5 = _Block_copy(v8);
  v6 = [v3 hashWithBlocks:{v10, v4, v5, 0}];

  return v6;
}

uint64_t __40__CNPhotoPickerAnimojiProviderItem_hash__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) avatarRecord];
  v2 = [v1 identifier];
  v3 = [v2 hash];

  return v3;
}

uint64_t __40__CNPhotoPickerAnimojiProviderItem_hash__block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) backgroundColorVariant];
  v2 = [v1 hash];

  return v2;
}

uint64_t __40__CNPhotoPickerAnimojiProviderItem_hash__block_invoke_3(uint64_t a1)
{
  v1 = [*(a1 + 32) _originalImageData];
  v2 = [v1 hash];

  return v2;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = MEMORY[0x1E69966F0];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __44__CNPhotoPickerAnimojiProviderItem_isEqual___block_invoke;
  v16[3] = &unk_1E74E7460;
  v16[4] = self;
  v17 = equalCopy;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __44__CNPhotoPickerAnimojiProviderItem_isEqual___block_invoke_2;
  aBlock[3] = &unk_1E74E7460;
  v6 = v17;
  v14 = v6;
  selfCopy = self;
  v7 = _Block_copy(aBlock);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __44__CNPhotoPickerAnimojiProviderItem_isEqual___block_invoke_3;
  v11[3] = &unk_1E74E7460;
  v11[4] = self;
  v12 = v6;
  v8 = v6;
  v9 = _Block_copy(v11);
  LOBYTE(self) = [v5 isObject:self equalToOther:v8 withBlocks:{v16, v7, v9, 0}];

  return self;
}

uint64_t __44__CNPhotoPickerAnimojiProviderItem_isEqual___block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) avatarRecord];
  v5 = [v4 identifier];
  if (!v5)
  {
    v1 = [*(a1 + 40) avatarRecord];
    v2 = [v1 identifier];
    if (!v2)
    {
      v10 = 1;
LABEL_6:

      goto LABEL_7;
    }
  }

  v6 = [*(a1 + 32) avatarRecord];
  v7 = [v6 identifier];
  v8 = [*(a1 + 40) avatarRecord];
  v9 = [v8 identifier];
  v10 = [v7 isEqual:v9];

  if (!v5)
  {
    goto LABEL_6;
  }

LABEL_7:

  return v10;
}

uint64_t __44__CNPhotoPickerAnimojiProviderItem_isEqual___block_invoke_2(uint64_t a1)
{
  objc_opt_class();
  v3 = *(a1 + 32);
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  v6 = [*(a1 + 40) backgroundColorVariant];
  if (!v6)
  {
    v1 = [v5 backgroundColorVariant];
    if (!v1)
    {
      v9 = 1;
LABEL_9:

      goto LABEL_10;
    }
  }

  v7 = [*(a1 + 40) backgroundColorVariant];
  v8 = [v5 backgroundColorVariant];
  v9 = [v7 isEqual:v8];

  if (!v6)
  {
    goto LABEL_9;
  }

LABEL_10:

  return v9;
}

uint64_t __44__CNPhotoPickerAnimojiProviderItem_isEqual___block_invoke_3(uint64_t a1)
{
  v3 = [*(a1 + 32) _originalImageData];
  if (!v3)
  {
    v1 = [*(a1 + 40) _originalImageData];
    if (!v1)
    {
      v6 = 1;
LABEL_6:

      goto LABEL_7;
    }
  }

  v4 = [*(a1 + 32) _originalImageData];
  v5 = [*(a1 + 40) _originalImageData];
  v6 = [v4 isEqual:v5];

  if (!v3)
  {
    goto LABEL_6;
  }

LABEL_7:

  return v6;
}

- (id)contactImageForMetadataStore
{
  v3 = objc_alloc(MEMORY[0x1E695CD88]);
  _originalImageData = [(CNPhotoPickerAnimojiProviderItem *)self _originalImageData];
  [(CNPhotoPickerProviderItem *)self cropRect];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  date = [MEMORY[0x1E695DF00] date];
  v14 = [v3 initWithImageData:_originalImageData cropRect:date lastUsedDate:{v6, v8, v10, v12}];

  [v14 setSource:3];
  backgroundColorVariant = [(CNPhotoPickerAnimojiProviderItem *)self backgroundColorVariant];
  colorName = [backgroundColorVariant colorName];
  [v14 setVariant:colorName];

  avatarRecord = [(CNPhotoPickerAnimojiProviderItem *)self avatarRecord];
  identifier = [avatarRecord identifier];
  [v14 setSourceIdentifier:identifier];

  v19 = MEMORY[0x1E695CF08];
  poseConfiguration = [(CNPhotoPickerAnimojiProviderItem *)self poseConfiguration];
  v21 = [v19 dataForPoseConfiguration:poseConfiguration];
  [v14 setPoseConfigurationData:v21];

  return v14;
}

- (id)createVariantsItemsWithVariantsManager:(id)manager
{
  managerCopy = manager;
  _originalImageData = [(CNPhotoPickerAnimojiProviderItem *)self _originalImageData];

  if (_originalImageData)
  {
    avatarBackgrounds = [managerCopy avatarBackgrounds];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __75__CNPhotoPickerAnimojiProviderItem_createVariantsItemsWithVariantsManager___block_invoke_2;
    v14[3] = &unk_1E74E57A8;
    v14[4] = self;
    v7 = [avatarBackgrounds _cn_map:v14];
  }

  else
  {
    v8 = [CNAvatarStickerGeneratorProvider alloc];
    avatarRecord = [(CNPhotoPickerAnimojiProviderItem *)self avatarRecord];
    v10 = [(CNAvatarStickerGeneratorProvider *)v8 initWithAvatarRecord:avatarRecord];

    avatarRecord2 = [(CNPhotoPickerAnimojiProviderItem *)self avatarRecord];
    avatarBackgrounds = [CNPhotoPickerVariantsManager avatarPoseConfigurationsForAvatarRecord:avatarRecord2];

    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __75__CNPhotoPickerAnimojiProviderItem_createVariantsItemsWithVariantsManager___block_invoke;
    v15[3] = &unk_1E74E5780;
    v15[4] = self;
    v16 = v10;
    v12 = v10;
    v7 = [avatarBackgrounds _cn_map:v15];
  }

  return v7;
}

id __75__CNPhotoPickerAnimojiProviderItem_createVariantsItemsWithVariantsManager___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) copyWithPoseConfiguration:a2 generatorProvider:*(a1 + 40)];

  return v2;
}

id __75__CNPhotoPickerAnimojiProviderItem_createVariantsItemsWithVariantsManager___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) copyWithColor:a2];

  return v2;
}

- (void)applyVariantEffectToFullsizeImageWithCompletion:(id)completion
{
  completionCopy = completion;
  [(CNPhotoPickerProviderItem *)self setThumbnailImageData:0];
  renderingQueue = [(CNPhotoPickerProviderItem *)self renderingQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __84__CNPhotoPickerAnimojiProviderItem_applyVariantEffectToFullsizeImageWithCompletion___block_invoke;
  v7[3] = &unk_1E74E6DD0;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  [renderingQueue performBlock:v7];
}

void __84__CNPhotoPickerAnimojiProviderItem_applyVariantEffectToFullsizeImageWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) generateImageDataIfNeeded];
  v3 = [*(a1 + 32) callbackQueue];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __84__CNPhotoPickerAnimojiProviderItem_applyVariantEffectToFullsizeImageWithCompletion___block_invoke_2;
  v4[3] = &unk_1E74E6F88;
  v5 = *(a1 + 40);
  [v3 performBlock:v4];
}

- (id)generateThumbnailImageDataIfNeeded
{
  _originalImageData = [(CNPhotoPickerAnimojiProviderItem *)self _originalImageData];
  if (_originalImageData)
  {
  }

  else
  {
    poseConfiguration = [(CNPhotoPickerAnimojiProviderItem *)self poseConfiguration];

    if (poseConfiguration)
    {
      thumbnailImageData2 = [(CNPhotoPickerAnimojiProviderItem *)self renderAvatarWithPoseWithSize:120.0];
      goto LABEL_8;
    }
  }

  thumbnailImageData = [(CNPhotoPickerProviderItem *)self thumbnailImageData];

  if (thumbnailImageData)
  {
    thumbnailImageData2 = [(CNPhotoPickerProviderItem *)self thumbnailImageData];
  }

  else
  {
    generateImageDataIfNeeded = [(CNPhotoPickerAnimojiProviderItem *)self generateImageDataIfNeeded];
    v9.receiver = self;
    v9.super_class = CNPhotoPickerAnimojiProviderItem;
    thumbnailImageData2 = [(CNPhotoPickerProviderItem *)&v9 generateThumbnailImageDataIfNeeded];
  }

LABEL_8:

  return thumbnailImageData2;
}

- (void)generateAllImageDatasIfNeeded
{
  generateImageDataIfNeeded = [(CNPhotoPickerAnimojiProviderItem *)self generateImageDataIfNeeded];
  v4.receiver = self;
  v4.super_class = CNPhotoPickerAnimojiProviderItem;
  [(CNPhotoPickerProviderItem *)&v4 generateAllImageDatasIfNeeded];
}

- (id)generateImageDataIfNeeded
{
  imageData = [(CNPhotoPickerAnimojiProviderItem *)self imageData];

  if (imageData)
  {
    imageData2 = [(CNPhotoPickerAnimojiProviderItem *)self imageData];
    goto LABEL_12;
  }

  _originalImageData = [(CNPhotoPickerAnimojiProviderItem *)self _originalImageData];

  if (_originalImageData)
  {
    backgroundColorVariant = [(CNPhotoPickerAnimojiProviderItem *)self backgroundColorVariant];

    imageData2 = [(CNPhotoPickerAnimojiProviderItem *)self _originalImageData];
    if (backgroundColorVariant)
    {
      v7 = [(CNPhotoPickerAnimojiProviderItem *)self renderAvatarWithBackgroundWithImageData:imageData2];

      imageData2 = v7;
    }

    goto LABEL_11;
  }

  poseConfiguration = [(CNPhotoPickerAnimojiProviderItem *)self poseConfiguration];

  if (poseConfiguration)
  {
    renderDefaultAvatarImage = [(CNPhotoPickerAnimojiProviderItem *)self renderAvatarWithPoseWithSize:420.0];
LABEL_10:
    imageData2 = renderDefaultAvatarImage;
    goto LABEL_11;
  }

  imageData2 = [(CNPhotoPickerAnimojiProviderItem *)self imageProvider];

  if (imageData2)
  {
    renderDefaultAvatarImage = [(CNPhotoPickerAnimojiProviderItem *)self renderDefaultAvatarImage];
    goto LABEL_10;
  }

LABEL_11:
  [(CNPhotoPickerAnimojiProviderItem *)self set_generatedImageData:imageData2];
LABEL_12:

  return imageData2;
}

- (id)renderAvatarWithBackgroundWithImage:(id)image
{
  imageCopy = image;
  backgroundColorVariant = [(CNPhotoPickerAnimojiProviderItem *)self backgroundColorVariant];
  color = [backgroundColorVariant color];
  v7 = [CNPhotoPickerVariantsManager colorGradientBackground:color];

  v8 = objc_opt_new();
  [imageCopy scale];
  [v8 setScale:?];
  [v8 setOpaque:0];
  v9 = objc_alloc(MEMORY[0x1E69DCA78]);
  [imageCopy size];
  v10 = [v9 initWithSize:v8 format:?];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __72__CNPhotoPickerAnimojiProviderItem_renderAvatarWithBackgroundWithImage___block_invoke;
  v16[3] = &unk_1E74E5758;
  v17 = v7;
  v18 = imageCopy;
  v11 = imageCopy;
  v12 = v7;
  v13 = [v10 imageWithActions:v16];
  v14 = UIImagePNGRepresentation(v13);

  return v14;
}

void __72__CNPhotoPickerAnimojiProviderItem_renderAvatarWithBackgroundWithImage___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v4 format];
  [v5 bounds];
  [v3 drawInRect:?];

  v6 = *(a1 + 40);
  v7 = [v4 format];

  [v7 bounds];
  [v6 drawInRect:?];
}

- (id)renderAvatarWithBackgroundWithImageData:(id)data
{
  if (data)
  {
    v4 = [MEMORY[0x1E69DCAB8] cnui_imageWithDataPreservingScale:?];
    v5 = [(CNPhotoPickerAnimojiProviderItem *)self renderAvatarWithBackgroundWithImage:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)renderAvatarWithPoseWithSize:(double)size
{
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__51025;
  v26 = __Block_byref_object_dispose__51026;
  v27 = 0;
  poseConfiguration = [(CNPhotoPickerAnimojiProviderItem *)self poseConfiguration];

  if (poseConfiguration)
  {
    poseConfiguration2 = [(CNPhotoPickerAnimojiProviderItem *)self poseConfiguration];
    [poseConfiguration2 loadIfNeeded];

    stickerGeneratorProvider = [(CNPhotoPickerAnimojiProviderItem *)self stickerGeneratorProvider];

    if (!stickerGeneratorProvider)
    {
      v8 = [CNAvatarStickerGeneratorProvider alloc];
      avatarRecord = [(CNPhotoPickerAnimojiProviderItem *)self avatarRecord];
      v10 = [(CNAvatarStickerGeneratorProvider *)v8 initWithAvatarRecord:avatarRecord];
      [(CNPhotoPickerAnimojiProviderItem *)self setStickerGeneratorProvider:v10];
    }

    stickerGeneratorProvider2 = [(CNPhotoPickerAnimojiProviderItem *)self stickerGeneratorProvider];
    generator = [stickerGeneratorProvider2 generator];

    [generator setAsync:0];
    v29 = 0;
    v30 = &v29;
    v31 = 0x2050000000;
    v13 = getAVTStickerGeneratorOptionsClass_softClass_51027;
    v32 = getAVTStickerGeneratorOptionsClass_softClass_51027;
    if (!getAVTStickerGeneratorOptionsClass_softClass_51027)
    {
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __getAVTStickerGeneratorOptionsClass_block_invoke_51028;
      v28[3] = &unk_1E74E7518;
      v28[4] = &v29;
      __getAVTStickerGeneratorOptionsClass_block_invoke_51028(v28);
      v13 = v30[3];
    }

    v14 = v13;
    _Block_object_dispose(&v29, 8);
    v15 = objc_alloc_init(v13);
    [v15 setCorrectClipping:1];
    poseConfiguration3 = [(CNPhotoPickerAnimojiProviderItem *)self poseConfiguration];
    [poseConfiguration3 size];
    [v15 setSizeMultiplier:size / v17];

    poseConfiguration4 = [(CNPhotoPickerAnimojiProviderItem *)self poseConfiguration];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __65__CNPhotoPickerAnimojiProviderItem_renderAvatarWithPoseWithSize___block_invoke;
    v21[3] = &unk_1E74E5730;
    v21[4] = self;
    v21[5] = &v22;
    [generator stickerImageWithConfiguration:poseConfiguration4 options:v15 completionHandler:v21];

    [(CNPhotoPickerAnimojiProviderItem *)self setStickerGeneratorProvider:0];
    v19 = v23[5];
  }

  else
  {
    v19 = 0;
  }

  _Block_object_dispose(&v22, 8);

  return v19;
}

void __65__CNPhotoPickerAnimojiProviderItem_renderAvatarWithPoseWithSize___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 size];
  [*(a1 + 32) setOriginalImageSize:?];
  [CNAvatarImageUtilities transparencyInsetsForImage:v3 requiringFullOpacity:0];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [*(a1 + 32) setEdgeInsets:?];
  image = [CNAvatarImageUtilities croppedAndCenteredAvatarImageForImage:v3 usingTransparencyInsets:v5 widthMultiplier:v7, v9, v11, 1.0];

  v12 = UIImagePNGRepresentation(image);
  v13 = *(*(a1 + 40) + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v12;
}

- (id)renderDefaultAvatarImage
{
  imageProvider = [(CNPhotoPickerAnimojiProviderItem *)self imageProvider];

  if (imageProvider)
  {
    imageProvider2 = [(CNPhotoPickerAnimojiProviderItem *)self imageProvider];
    avatarRecord = [(CNPhotoPickerAnimojiProviderItem *)self avatarRecord];
    renderingScope = [(CNPhotoPickerAnimojiProviderItem *)self renderingScope];
    v7 = [imageProvider2 imageForRecord:avatarRecord scope:renderingScope];

    v8 = UIImagePNGRepresentation(v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)variantIdentifier
{
  backgroundColorVariant = [(CNPhotoPickerAnimojiProviderItem *)self backgroundColorVariant];
  colorName = [backgroundColorVariant colorName];

  return colorName;
}

- (id)copyWithPoseConfiguration:(id)configuration generatorProvider:(id)provider
{
  providerCopy = provider;
  configurationCopy = configuration;
  v8 = [CNPhotoPickerAnimojiProviderItem alloc];
  renderingQueue = [(CNPhotoPickerProviderItem *)self renderingQueue];
  callbackQueue = [(CNPhotoPickerProviderItem *)self callbackQueue];
  v11 = [(CNPhotoPickerProviderItem *)v8 initWithImageData:0 thumbnailImageData:0 fullscreenImageData:0 imageFilterName:0 cropRect:renderingQueue renderingQueue:callbackQueue callbackQueue:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];

  [(CNPhotoPickerAnimojiProviderItem *)self originalImageSize];
  [(CNPhotoPickerAnimojiProviderItem *)v11 setOriginalImageSize:?];
  [(CNPhotoPickerAnimojiProviderItem *)self edgeInsets];
  [(CNPhotoPickerAnimojiProviderItem *)v11 setEdgeInsets:?];
  avatarRecord = [(CNPhotoPickerAnimojiProviderItem *)self avatarRecord];
  [(CNPhotoPickerAnimojiProviderItem *)v11 setAvatarRecord:avatarRecord];

  [(CNPhotoPickerAnimojiProviderItem *)v11 setPoseConfiguration:configurationCopy];
  [(CNPhotoPickerAnimojiProviderItem *)v11 setStickerGeneratorProvider:providerCopy];

  imageData = [(CNPhotoPickerAnimojiProviderItem *)self imageData];

  if (imageData)
  {
    v14 = MEMORY[0x1E69DCAB8];
    imageData2 = [(CNPhotoPickerAnimojiProviderItem *)self imageData];
    v16 = [v14 imageWithData:imageData2];
    v17 = [v16 imageWithRenderingMode:2];
    [(CNPhotoPickerAnimojiProviderItem *)v11 setLoadingPlaceholderImage:v17];
  }

  return v11;
}

- (id)copyWithColor:(id)color
{
  v4 = MEMORY[0x1E69DCAB8];
  colorCopy = color;
  _originalImageData = [(CNPhotoPickerAnimojiProviderItem *)self _originalImageData];
  v7 = [v4 cnui_imageWithDataPreservingScale:_originalImageData];

  [(CNPhotoPickerProviderItem *)self cropRect];
  if (!CGRectEqualToRect(v30, *MEMORY[0x1E695F058]))
  {
    cGImage = [v7 CGImage];
    [(CNPhotoPickerProviderItem *)self cropRect];
    v9 = CGImageCreateWithImageInRect(cGImage, v31);
    v10 = [MEMORY[0x1E69DCAB8] imageWithCGImage:v9];

    CGImageRelease(v9);
    v7 = v10;
  }

  [v7 size];
  if (v11 > 256.0)
  {
    [v7 size];
    v13 = v12 * 0.00390625;
    [v7 size];
    v15 = v14 / v13;
    [v7 size];
    v17 = v16 / v13;
    [v7 scale];
    v19 = v18;
    v29.width = v15;
    v29.height = v17;
    UIGraphicsBeginImageContextWithOptions(v29, 0, v19);
    v20 = UIGraphicsGetImageFromCurrentImageContext();
    [v7 drawInRect:{0.0, 0.0, v15, v17}];
    v21 = UIGraphicsGetImageFromCurrentImageContext();

    UIGraphicsEndImageContext();
    v7 = v21;
  }

  v22 = [CNPhotoPickerAnimojiProviderItem alloc];
  _originalImageData2 = [(CNPhotoPickerAnimojiProviderItem *)self _originalImageData];
  [(CNPhotoPickerProviderItem *)self cropRect];
  v24 = [(CNPhotoPickerAnimojiProviderItem *)v22 initWithOriginalImageData:_originalImageData2 cropRect:?];

  [(CNPhotoPickerAnimojiProviderItem *)v24 setBackgroundColorVariant:colorCopy];
  v25 = [(CNPhotoPickerAnimojiProviderItem *)v24 renderAvatarWithBackgroundWithImage:v7];
  [(CNPhotoPickerProviderItem *)v24 setThumbnailImageData:v25];
  avatarRecord = [(CNPhotoPickerAnimojiProviderItem *)self avatarRecord];
  [(CNPhotoPickerAnimojiProviderItem *)v24 setAvatarRecord:avatarRecord];

  poseConfiguration = [(CNPhotoPickerAnimojiProviderItem *)self poseConfiguration];
  [(CNPhotoPickerAnimojiProviderItem *)v24 setPoseConfiguration:poseConfiguration];

  [(CNPhotoPickerAnimojiProviderItem *)self originalImageSize];
  [(CNPhotoPickerAnimojiProviderItem *)v24 setOriginalImageSize:?];
  [(CNPhotoPickerAnimojiProviderItem *)self edgeInsets];
  [(CNPhotoPickerAnimojiProviderItem *)v24 setEdgeInsets:?];

  return v24;
}

- (CNPhotoPickerAnimojiProviderItem)initWithAvatarRecord:(id)record imageProvider:(id)provider renderingScope:(id)scope renderingQueue:(id)queue callbackQueue:(id)callbackQueue
{
  recordCopy = record;
  providerCopy = provider;
  scopeCopy = scope;
  v19.receiver = self;
  v19.super_class = CNPhotoPickerAnimojiProviderItem;
  v16 = [(CNPhotoPickerProviderItem *)&v19 initWithImageData:0 thumbnailImageData:0 fullscreenImageData:0 imageFilterName:0 cropRect:queue renderingQueue:callbackQueue callbackQueue:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_avatarRecord, record);
    objc_storeStrong(&v17->_imageProvider, provider);
    objc_storeStrong(&v17->_renderingScope, scope);
  }

  return v17;
}

- (CNPhotoPickerAnimojiProviderItem)initWithOriginalImageData:(id)data cropRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  dataCopy = data;
  imageData = [(CNPhotoPickerAnimojiProviderItem *)self imageData];
  v14.receiver = self;
  v14.super_class = CNPhotoPickerAnimojiProviderItem;
  height = [(CNPhotoPickerProviderItem *)&v14 initWithImageData:imageData thumbnailImageData:0 fullscreenImageData:0 cropRect:x, y, width, height];

  if (height)
  {
    objc_storeStrong(&height->__originalImageData, data);
  }

  return height;
}

- (CNPhotoPickerAnimojiProviderItem)initWithOriginalImageData:(id)data cropRect:(CGRect)rect backgroundColorVariant:(id)variant
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  dataCopy = data;
  variantCopy = variant;
  imageData = [(CNPhotoPickerAnimojiProviderItem *)self imageData];
  v19.receiver = self;
  v19.super_class = CNPhotoPickerAnimojiProviderItem;
  height = [(CNPhotoPickerProviderItem *)&v19 initWithImageData:imageData thumbnailImageData:0 fullscreenImageData:0 cropRect:x, y, width, height];

  if (height)
  {
    objc_storeStrong(&height->__originalImageData, data);
    objc_storeStrong(&height->_backgroundColorVariant, variant);
    generateImageDataIfNeeded = [(CNPhotoPickerAnimojiProviderItem *)height generateImageDataIfNeeded];
    v17 = height;
  }

  return height;
}

- (CGAffineTransform)transformForMemojiMetadata
{
  [(CNPhotoPickerProviderItem *)self cropRect];
  v6 = v5 / 3.0;
  [(CNPhotoPickerProviderItem *)self cropRect];
  v8 = v7 / 3.0;
  [(CNPhotoPickerProviderItem *)self cropRect];
  v10 = v9 / 3.0;
  [(CNPhotoPickerProviderItem *)self cropRect];
  v12 = v11 / 3.0;
  v13 = objc_alloc(MEMORY[0x1E69DCAB8]);
  imageData = [(CNPhotoPickerAnimojiProviderItem *)self imageData];
  v15 = [v13 initWithData:imageData];

  [v15 size];
  v17 = v16 / 3.0;
  [v15 size];
  v19 = v18 / 3.0;
  v60.origin.x = v6;
  v60.origin.y = v8;
  v60.size.width = v10;
  v60.size.height = v12;
  if (CGRectEqualToRect(v60, *MEMORY[0x1E695F058]))
  {
    v8 = 0.0;
    v12 = v19;
    v10 = v17;
    v6 = 0.0;
  }

  v50 = v6;
  v51 = v10;
  v20 = v8;
  v47 = v19;
  v48 = v12;
  [(CNPhotoPickerAnimojiProviderItem *)self originalImageSize];
  v22 = v21;
  [(CNPhotoPickerAnimojiProviderItem *)self originalImageSize];
  v24 = v23;
  [(CNPhotoPickerAnimojiProviderItem *)self edgeInsets];
  v26 = v25 / 3.0;
  [(CNPhotoPickerAnimojiProviderItem *)self edgeInsets];
  v28 = v27 / 3.0;
  [(CNPhotoPickerAnimojiProviderItem *)self edgeInsets];
  v30 = v29 / 3.0;
  [(CNPhotoPickerAnimojiProviderItem *)self edgeInsets];
  v32 = v31 / 3.0;
  v33 = floor(v17 / 1.1);
  v34 = floor(v33 / (v22 / v24));
  if (v22 >= v24)
  {
    v35 = v22;
  }

  else
  {
    v35 = v24;
  }

  v49 = v20;
  if (v33 != v34)
  {
    if (v35 == v33)
    {
      v36 = (v33 - v34) * 0.5;
      v26 = v26 + v36;
      v30 = v30 + v36;
    }

    else
    {
      v37 = (v34 - v33) * 0.5;
      v28 = v28 + v37;
      v32 = v32 + v37;
    }
  }

  v38 = v35 - (v32 + v28);
  v39 = v35 - (v30 + v26);
  v40 = v35 * 0.5;
  v61.origin.x = v28;
  v61.origin.y = v26;
  v61.size.width = v38;
  v61.size.height = v39;
  v41 = v40 - CGRectGetMidX(v61);
  v62.origin.x = v28;
  v62.origin.y = v26;
  v62.size.width = v38;
  v62.size.height = v39;
  MidY = CGRectGetMidY(v62);
  memset(&v59, 0, sizeof(v59));
  CGAffineTransformMakeTranslation(&v59, v41 / v40, (v40 - MidY) / v40);
  v63.origin.x = v50;
  v63.origin.y = v49;
  v63.size.width = v51;
  v63.size.height = v48;
  v43 = v17 * 0.5 - CGRectGetMidX(v63);
  v64.origin.x = v50;
  v64.origin.y = v49;
  v64.size.width = v51;
  v64.size.height = v48;
  v44 = CGRectGetMidY(v64);
  memset(&v58, 0, sizeof(v58));
  CGAffineTransformMakeTranslation(&v58, v43 / (v17 * 0.5), (v47 * 0.5 - v44) / (v47 * 0.5));
  memset(&v57, 0, sizeof(v57));
  t1 = v59;
  t2 = v58;
  CGAffineTransformConcat(&v57, &t1, &t2);
  memset(&t1, 0, sizeof(t1));
  v45 = v33 + -30.0;
  CGAffineTransformMakeScale(&t1, v33 / v45, v33 / v45);
  memset(&t2, 0, sizeof(t2));
  CGAffineTransformMakeScale(&t2, v45 / v51, v45 / v51);
  v53 = t1;
  memset(&v54, 0, sizeof(v54));
  v52 = t2;
  CGAffineTransformConcat(&v54, &v53, &v52);
  *&retstr->c = 0u;
  *&retstr->tx = 0u;
  *&retstr->a = 0u;
  v53 = v57;
  v52 = v54;
  CGAffineTransformConcat(retstr, &v53, &v52);

  return result;
}

- (void)updateVisualIdentity:(id)identity
{
  identityCopy = identity;
  v16.receiver = self;
  v16.super_class = CNPhotoPickerAnimojiProviderItem;
  [(CNPhotoPickerProviderItem *)&v16 updateVisualIdentity:identityCopy];
  [identityCopy updateImageType:3];
  backgroundColorVariant = [(CNPhotoPickerAnimojiProviderItem *)self backgroundColorVariant];

  if (backgroundColorVariant)
  {
    v14 = 0u;
    v15 = 0u;
    v13 = 0u;
    [(CNPhotoPickerAnimojiProviderItem *)self transformForMemojiMetadata];
    v6 = MEMORY[0x1E695CF08];
    avatarRecord = [(CNPhotoPickerAnimojiProviderItem *)self avatarRecord];
    poseConfiguration = [(CNPhotoPickerAnimojiProviderItem *)self poseConfiguration];
    backgroundColorVariant2 = [(CNPhotoPickerAnimojiProviderItem *)self backgroundColorVariant];
    colorName = [backgroundColorVariant2 colorName];
    v12[0] = v13;
    v12[1] = v14;
    v12[2] = v15;
    v11 = [v6 memojiMetadataDataForAvatarRecord:avatarRecord poseConfiguration:poseConfiguration backgroundColorDescription:colorName cropTransform:v12];
    [identityCopy setMemojiMetadata:v11];
  }

  else
  {
    [identityCopy setMemojiMetadata:0];
  }
}

- (id)imageData
{
  _generatedImageData = [(CNPhotoPickerAnimojiProviderItem *)self _generatedImageData];
  v4 = _generatedImageData;
  if (_generatedImageData)
  {
    imageData = _generatedImageData;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = CNPhotoPickerAnimojiProviderItem;
    imageData = [(CNPhotoPickerProviderItem *)&v8 imageData];
  }

  v6 = imageData;

  return v6;
}

- (id)localizedVariantsTitle
{
  originalImageData = [(CNPhotoPickerAnimojiProviderItem *)self originalImageData];
  v3 = CNContactsUIBundle();
  v4 = v3;
  if (originalImageData)
  {
    v5 = @"PHOTO_SELECT_COLOR";
  }

  else
  {
    v5 = @"PHOTO_ANIMOJI_SELECT_POSE";
  }

  v6 = [v3 localizedStringForKey:v5 value:&stru_1F0CE7398 table:@"Localized"];

  return v6;
}

- (BOOL)allowsVariants
{
  originalImageData = [(CNPhotoPickerAnimojiProviderItem *)self originalImageData];
  v3 = originalImageData != 0;

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v11.receiver = self;
  v11.super_class = CNPhotoPickerAnimojiProviderItem;
  v4 = [(CNPhotoPickerProviderItem *)&v11 copyWithZone:zone];
  _generatedImageData = [(CNPhotoPickerAnimojiProviderItem *)self _generatedImageData];
  [v4 set_generatedImageData:_generatedImageData];

  _originalImageData = [(CNPhotoPickerAnimojiProviderItem *)self _originalImageData];
  [v4 set_originalImageData:_originalImageData];

  backgroundColorVariant = [(CNPhotoPickerAnimojiProviderItem *)self backgroundColorVariant];
  [v4 setBackgroundColorVariant:backgroundColorVariant];

  avatarRecord = [(CNPhotoPickerAnimojiProviderItem *)self avatarRecord];
  [v4 setAvatarRecord:avatarRecord];

  poseConfiguration = [(CNPhotoPickerAnimojiProviderItem *)self poseConfiguration];
  [v4 setPoseConfiguration:poseConfiguration];

  [(CNPhotoPickerAnimojiProviderItem *)self originalImageSize];
  [v4 setOriginalImageSize:?];
  [(CNPhotoPickerAnimojiProviderItem *)self edgeInsets];
  [v4 setEdgeInsets:?];
  return v4;
}

+ (id)log
{
  if (log_cn_once_token_1_51064 != -1)
  {
    dispatch_once(&log_cn_once_token_1_51064, &__block_literal_global_51065);
  }

  v3 = log_cn_once_object_1_51066;

  return v3;
}

uint64_t __39__CNPhotoPickerAnimojiProviderItem_log__block_invoke()
{
  v0 = os_log_create("com.apple.contactsui", "CNPhotoPickerAnimojiProviderItem");
  v1 = log_cn_once_object_1_51066;
  log_cn_once_object_1_51066 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end