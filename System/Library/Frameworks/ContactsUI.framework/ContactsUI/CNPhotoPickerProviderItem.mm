@interface CNPhotoPickerProviderItem
+ (id)generateImageDataWithData:(id)a3 filterName:(id)a4;
+ (id)generateThumbnailImageDataWithData:(id)a3 cropRect:(CGRect)a4;
+ (id)thumbnailViewForImage:(id)a3;
- (BOOL)isEqual:(id)a3;
- (CGRect)cropRect;
- (CNPhotoPickerProviderItem)initWithImageData:(id)a3 thumbnailImageData:(id)a4 fullscreenImageData:(id)a5 cropRect:(CGRect)a6;
- (CNPhotoPickerProviderItem)initWithImageData:(id)a3 thumbnailImageData:(id)a4 fullscreenImageData:(id)a5 imageFilterName:(id)a6 cropRect:(CGRect)a7 renderingQueue:(id)a8 callbackQueue:(id)a9;
- (CNPhotoPickerProviderItemDelegate)delegate;
- (NSData)imageData;
- (NSString)localizedVariantsTitle;
- (UIImage)croppedFullSizeImage;
- (UIImage)fullSizeImage;
- (id)contactImageForMetadataStore;
- (id)copyWithZone:(_NSZone *)a3;
- (id)generatePhotoFilterVariants;
- (id)generateThumbnailImageDataIfNeeded;
- (id)generateThumbnailImageDataWithData:(id)a3;
- (id)rotateImageDataIfNeeded:(id)a3;
- (unint64_t)hash;
- (void)applyVariantEffectToFullsizeImageWithCompletion:(id)a3;
- (void)fullSizeViewWithCompletion:(id)a3;
- (void)generateAllImageDatasIfNeeded;
- (void)thumbnailViewWithCompletion:(id)a3;
- (void)thumbnailViewWithPlaceholderProvider:(id)a3 completion:(id)a4;
- (void)updateContact:(id)a3;
- (void)updateVisualIdentity:(id)a3;
@end

@implementation CNPhotoPickerProviderItem

- (CNPhotoPickerProviderItemDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CGRect)cropRect
{
  x = self->_cropRect.origin.x;
  y = self->_cropRect.origin.y;
  width = self->_cropRect.size.width;
  height = self->_cropRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (unint64_t)hash
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __33__CNPhotoPickerProviderItem_hash__block_invoke;
  v3[3] = &unk_1E74E6308;
  v3[4] = self;
  return [MEMORY[0x1E6996730] hashWithBlocks:{v3, 0}];
}

uint64_t __33__CNPhotoPickerProviderItem_hash__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) imageData];
  v2 = [v1 hash];

  return v2;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x1E69966F0];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __37__CNPhotoPickerProviderItem_isEqual___block_invoke;
  v15[3] = &unk_1E74E7460;
  v15[4] = self;
  v16 = v4;
  aBlock = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __37__CNPhotoPickerProviderItem_isEqual___block_invoke_2;
  v12 = &unk_1E74E7460;
  v13 = self;
  v14 = v16;
  v6 = v16;
  v7 = _Block_copy(&aBlock);
  LOBYTE(self) = [v5 isObject:self equalToOther:v6 withBlocks:{v15, v7, 0, aBlock, v10, v11, v12, v13}];

  return self;
}

uint64_t __37__CNPhotoPickerProviderItem_isEqual___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) imageData];
  v3 = [*(a1 + 40) imageData];
  v4 = [v2 isEqualToData:v3];

  return v4;
}

BOOL __37__CNPhotoPickerProviderItem_isEqual___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) cropRect];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  [*(a1 + 40) cropRect];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = v3;
  v19 = v5;
  v20 = v7;
  v21 = v9;

  return CGRectEqualToRect(*&v18, *&v11);
}

- (id)contactImageForMetadataStore
{
  v3 = objc_alloc(MEMORY[0x1E695CD88]);
  v4 = [(CNPhotoPickerProviderItem *)self originalImageData];
  [(CNPhotoPickerProviderItem *)self cropRect];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = [MEMORY[0x1E695DF00] date];
  v14 = [v3 initWithImageData:v4 cropRect:v13 lastUsedDate:{v6, v8, v10, v12}];

  v15 = [(CNPhotoPickerProviderItem *)self imageFilterName];
  [v14 setVariant:v15];

  [v14 setSource:2];

  return v14;
}

- (id)rotateImageDataIfNeeded:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E69DCAB8] cnui_imageWithDataPreservingScale:v3];
  if ([v4 imageOrientation])
  {
    [v4 size];
    v6 = v5;
    v8 = v7;
    [v4 scale];
    v10 = v9;
    v18.width = v6;
    v18.height = v8;
    UIGraphicsBeginImageContextWithOptions(v18, 0, v10);
    [v4 size];
    v12 = v11;
    [v4 size];
    [v4 drawInRect:{0.0, 0.0, v12, v13}];
    v14 = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    v15 = UIImageJPEGRepresentation(v14, 0.8);
  }

  else
  {
    v15 = v3;
  }

  return v15;
}

- (id)generatePhotoFilterVariants
{
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = [(CNPhotoPickerProviderItem *)self thumbnailImageData];

  if (v4)
  {
    v5 = [(CNPhotoPickerProviderItem *)self thumbnailImageData];
  }

  else
  {
    v6 = [(CNPhotoPickerProviderItem *)self originalImageData];
    v5 = [(CNPhotoPickerProviderItem *)self generateThumbnailImageDataWithData:v6];
  }

  v7 = [MEMORY[0x1E69DCAB8] cnui_imageWithDataPreservingScale:v5];
  [v7 size];
  if (v8 > 256.0 || ([v7 size], v9 = 1.0, v10 > 256.0))
  {
    [v7 size];
    v12 = v11;
    [v7 size];
    if (v12 >= v13)
    {
      v14 = v13;
    }

    else
    {
      v14 = v12;
    }

    v9 = 256.0 / v14;
  }

  v15 = objc_alloc(objc_opt_class());
  v16 = [(CNPhotoPickerProviderItem *)self originalImageData];
  v17 = [(CNPhotoPickerProviderItem *)self originalImageData];
  [(CNPhotoPickerProviderItem *)self cropRect];
  v18 = [v15 initWithImageData:v16 thumbnailImageData:v5 fullscreenImageData:v17 cropRect:?];

  [v18 setImageFilterName:0];
  v19 = CNContactsUIBundle();
  v20 = [v19 localizedStringForKey:@"PHOTO_FILTER_ORIGINAL_LABEL" value:&stru_1F0CE7398 table:@"Localized"];
  [v18 setLocalizedVariantDisplayName:v20];

  [v3 _cn_addNonNilObject:v18];
  [v7 scale];
  v22 = v21;
  [v7 size];
  v24 = v9 * v23;
  [v7 size];
  v26 = v9 * v25;
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __56__CNPhotoPickerProviderItem_generatePhotoFilterVariants__block_invoke;
  v31[3] = &unk_1E74E3B28;
  v31[4] = self;
  v27 = v3;
  v32 = v27;
  [CNPhotoPickerImageWithEffectGenerator imagesByApplyingEffectsToImageData:v5 withScaleFactor:v31 originalImageScale:v9 cropRect:v22 completion:0.0, 0.0, v24, v26];
  v28 = v32;
  v29 = v27;

  return v27;
}

void __56__CNPhotoPickerProviderItem_generatePhotoFilterVariants__block_invoke(uint64_t a1, UIImage *a2, void *a3)
{
  v5 = a3;
  v12 = UIImageJPEGRepresentation(a2, 0.8);
  v6 = objc_alloc(objc_opt_class());
  v7 = [*(a1 + 32) originalImageData];
  v8 = [*(a1 + 32) originalImageData];
  [*(a1 + 32) cropRect];
  v9 = [v6 initWithImageData:v7 thumbnailImageData:v12 fullscreenImageData:v8 cropRect:?];

  [v9 setImageFilterName:v5];
  v10 = [CNPhotoPickerImageWithEffectGenerator displayNameForFilterNamed:v5];

  [v9 setLocalizedVariantDisplayName:v10];
  v11 = [*(a1 + 32) assetIdentifier];
  [v9 setAssetIdentifier:v11];

  [*(a1 + 40) _cn_addNonNilObject:v9];
}

- (void)updateVisualIdentity:(id)a3
{
  v9 = a3;
  [v9 setMemojiMetadata:0];
  [(CNPhotoPickerProviderItem *)self generateAllImageDatasIfNeeded];
  v4 = [(CNPhotoPickerProviderItem *)self imageData];
  [v9 setImageData:v4];

  v5 = [(CNPhotoPickerProviderItem *)self imageData];
  v6 = [v5 _cn_md5Hash];
  [v9 setImageHash:v6];

  [(CNPhotoPickerProviderItem *)self cropRect];
  [v9 setCropRect:?];
  v7 = [(CNPhotoPickerProviderItem *)self thumbnailImageData];
  [v9 setThumbnailImageData:v7];

  v8 = [(CNPhotoPickerProviderItem *)self fullscreenImageData];
  [v9 setFullscreenImageData:v8];

  [v9 updateImageType:1];
}

- (void)updateContact:(id)a3
{
  v4 = a3;
  v5 = [[CNVisualIdentity alloc] initWithContact:v4];
  [(CNPhotoPickerProviderItem *)self updateVisualIdentity:v5];
  [(CNVisualIdentity *)v5 updateImageForContact:v4];
}

- (void)applyVariantEffectToFullsizeImageWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(CNPhotoPickerProviderItem *)self imageFilterName];

  if (v5)
  {
    [(CNPhotoPickerProviderItem *)self setThumbnailImageData:0];
    v6 = [(CNPhotoPickerProviderItem *)self renderingQueue];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __77__CNPhotoPickerProviderItem_applyVariantEffectToFullsizeImageWithCompletion___block_invoke;
    v7[3] = &unk_1E74E6DD0;
    v7[4] = self;
    v8 = v4;
    [v6 performBlock:v7];
  }

  else
  {
    v4[2](v4);
  }
}

void __77__CNPhotoPickerProviderItem_applyVariantEffectToFullsizeImageWithCompletion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) generateAllImageDatasIfNeeded];
  v2 = [*(a1 + 32) callbackQueue];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __77__CNPhotoPickerProviderItem_applyVariantEffectToFullsizeImageWithCompletion___block_invoke_2;
  v3[3] = &unk_1E74E6F88;
  v4 = *(a1 + 40);
  [v2 performBlock:v3];
}

- (UIImage)croppedFullSizeImage
{
  croppedFullSizeImage = self->_croppedFullSizeImage;
  if (!croppedFullSizeImage)
  {
    v4 = [(CNPhotoPickerProviderItem *)self fullSizeImage];

    if (!v4)
    {
      v9 = 0;
      goto LABEL_9;
    }

    [(CNPhotoPickerProviderItem *)self cropRect];
    v5 = CGRectEqualToRect(v16, *MEMORY[0x1E695F058]);
    v6 = [(CNPhotoPickerProviderItem *)self fullSizeImage];
    v7 = v6;
    if (v5)
    {
      v8 = self->_croppedFullSizeImage;
      self->_croppedFullSizeImage = v6;
    }

    else
    {
      v10 = [(UIImage *)v6 CGImage];
      [(CNPhotoPickerProviderItem *)self cropRect];
      v11 = CGImageCreateWithImageInRect(v10, v17);

      v12 = [MEMORY[0x1E69DCAB8] imageWithCGImage:v11];
      v13 = self->_croppedFullSizeImage;
      self->_croppedFullSizeImage = v12;

      CGImageRelease(v11);
    }

    croppedFullSizeImage = self->_croppedFullSizeImage;
  }

  v9 = croppedFullSizeImage;
LABEL_9:

  return v9;
}

- (UIImage)fullSizeImage
{
  fullSizeImage = self->_fullSizeImage;
  if (!fullSizeImage)
  {
    v4 = [(CNPhotoPickerProviderItem *)self imageData];
    if (![v4 length])
    {
      v5 = [(CNPhotoPickerProviderItem *)self fullscreenImageData];
      v6 = [v5 length];

      if (v6)
      {
        [(CNPhotoPickerProviderItem *)self fullscreenImageData];
      }

      else
      {
        [(CNPhotoPickerProviderItem *)self thumbnailImageData];
      }
      v7 = ;

      v4 = v7;
    }

    v8 = [MEMORY[0x1E69DCAB8] imageWithData:v4];
    v9 = self->_fullSizeImage;
    self->_fullSizeImage = v8;

    fullSizeImage = self->_fullSizeImage;
  }

  return fullSizeImage;
}

- (void)fullSizeViewWithCompletion:(id)a3
{
  v9 = a3;
  v4 = [(CNPhotoPickerProviderItem *)self imageData];
  if (v4)
  {

LABEL_4:
    v6 = objc_opt_class();
    v7 = [(CNPhotoPickerProviderItem *)self croppedFullSizeImage];
    v8 = [v6 thumbnailViewForImage:v7];
    v9[2](v9, v8);

    goto LABEL_5;
  }

  v5 = [(CNPhotoPickerProviderItem *)self fullscreenImageData];

  if (v5)
  {
    goto LABEL_4;
  }

  [(CNPhotoPickerProviderItem *)self thumbnailViewWithCompletion:v9];
LABEL_5:
}

- (void)thumbnailViewWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(CNPhotoPickerProviderItem *)self thumbnailImage];

  if (v5)
  {
    v6 = objc_opt_class();
    v7 = [(CNPhotoPickerProviderItem *)self thumbnailImage];
    v8 = [v6 thumbnailViewForImage:v7];
    v4[2](v4, v8);
  }

  else
  {
    v9 = [(CNPhotoPickerProviderItem *)self renderingQueue];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __57__CNPhotoPickerProviderItem_thumbnailViewWithCompletion___block_invoke;
    v10[3] = &unk_1E74E6DD0;
    v10[4] = self;
    v11 = v4;
    [v9 performBlock:v10];
  }
}

void __57__CNPhotoPickerProviderItem_thumbnailViewWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) generateThumbnailImageDataIfNeeded];
  v3 = [MEMORY[0x1E69DCAB8] imageWithData:v2];
  v4 = [*(a1 + 32) callbackQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __57__CNPhotoPickerProviderItem_thumbnailViewWithCompletion___block_invoke_2;
  v7[3] = &unk_1E74E6650;
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  [v4 performBlock:v7];
}

void __57__CNPhotoPickerProviderItem_thumbnailViewWithCompletion___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setThumbnailImage:*(a1 + 40)];
  v2 = *(a1 + 48);
  v3 = [objc_opt_class() thumbnailViewForImage:*(a1 + 40)];
  (*(v2 + 16))(v2, v3);
}

- (void)thumbnailViewWithPlaceholderProvider:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CNPhotoPickerProviderItem *)self loadingPlaceholderImage];

  if (v8)
  {
    v9 = objc_opt_class();
    v10 = [(CNPhotoPickerProviderItem *)self loadingPlaceholderImage];
    v11 = [v9 thumbnailViewForImage:v10];
    v6[2](v6, v11);
  }

  else
  {
    v6[2](v6, 0);
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __77__CNPhotoPickerProviderItem_thumbnailViewWithPlaceholderProvider_completion___block_invoke;
  v13[3] = &unk_1E74E3B00;
  v13[4] = self;
  v14 = v7;
  v12 = v7;
  [(CNPhotoPickerProviderItem *)self thumbnailViewWithCompletion:v13];
}

void __77__CNPhotoPickerProviderItem_thumbnailViewWithPlaceholderProvider_completion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = a2;
    v5 = [v3 loadingPlaceholderImage];
    (*(v2 + 16))(v2, v4, v5 != 0);
  }
}

- (id)generateThumbnailImageDataWithData:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  [(CNPhotoPickerProviderItem *)self cropRect];
  v6 = [v5 generateThumbnailImageDataWithData:v4 cropRect:?];

  return v6;
}

- (id)generateThumbnailImageDataIfNeeded
{
  v3 = [(CNPhotoPickerProviderItem *)self thumbnailImageData];

  if (!v3)
  {
    [(CNPhotoPickerProviderItem *)self cropRect];
    v4 = CGRectEqualToRect(v9, *MEMORY[0x1E695F058]);
    v5 = [(CNPhotoPickerProviderItem *)self imageData];
    if (v4)
    {
      [(CNPhotoPickerProviderItem *)self setThumbnailImageData:v5];
    }

    else
    {
      v6 = [(CNPhotoPickerProviderItem *)self generateThumbnailImageDataWithData:v5];
      [(CNPhotoPickerProviderItem *)self setThumbnailImageData:v6];
    }
  }

  return [(CNPhotoPickerProviderItem *)self thumbnailImageData];
}

- (void)generateAllImageDatasIfNeeded
{
  v3 = [(CNPhotoPickerProviderItem *)self imageData];
  if (v3)
  {
    v4 = v3;
    v5 = [(CNPhotoPickerProviderItem *)self thumbnailImageData];
    if (v5)
    {
      v6 = v5;
      v7 = [(CNPhotoPickerProviderItem *)self fullscreenImageData];

      if (v7)
      {
        return;
      }
    }

    else
    {
    }
  }

  v8 = [(CNPhotoPickerProviderItem *)self generateThumbnailImageDataIfNeeded];
  v9 = [(CNPhotoPickerProviderItem *)self fullscreenImageData];

  if (!v9)
  {
    v10 = [(CNPhotoPickerProviderItem *)self imageData];
    [(CNPhotoPickerProviderItem *)self setFullscreenImageData:v10];
  }
}

- (NSData)imageData
{
  p_filteredImageData = &self->_filteredImageData;
  filteredImageData = self->_filteredImageData;
  if (!filteredImageData)
  {
    if (self->_imageFilterName)
    {
      v5 = [objc_opt_class() generateImageDataWithData:self->_imageData filterName:self->_imageFilterName];
      v6 = self->_filteredImageData;
      self->_filteredImageData = v5;
    }

    else
    {
      p_filteredImageData = &self->_imageData;
    }

    filteredImageData = *p_filteredImageData;
  }

  v7 = filteredImageData;

  return v7;
}

- (NSString)localizedVariantsTitle
{
  v2 = CNContactsUIBundle();
  v3 = [v2 localizedStringForKey:@"PHOTO_SELECT_FILTER" value:&stru_1F0CE7398 table:@"Localized"];

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  imageData = self->_imageData;
  v6 = [(CNPhotoPickerProviderItem *)self thumbnailImageData];
  v7 = [(CNPhotoPickerProviderItem *)self fullscreenImageData];
  [(CNPhotoPickerProviderItem *)self cropRect];
  v8 = [v4 initWithImageData:imageData thumbnailImageData:v6 fullscreenImageData:v7 cropRect:?];

  [v8 setImageFilterName:self->_imageFilterName];
  [v8 setAssetIdentifier:self->_assetIdentifier];
  return v8;
}

- (CNPhotoPickerProviderItem)initWithImageData:(id)a3 thumbnailImageData:(id)a4 fullscreenImageData:(id)a5 imageFilterName:(id)a6 cropRect:(CGRect)a7 renderingQueue:(id)a8 callbackQueue:(id)a9
{
  height = a7.size.height;
  width = a7.size.width;
  y = a7.origin.y;
  x = a7.origin.x;
  v19 = a3;
  v30 = a4;
  v29 = a5;
  v20 = a6;
  v21 = a8;
  v22 = a9;
  v31.receiver = self;
  v31.super_class = CNPhotoPickerProviderItem;
  v23 = [(CNPhotoPickerProviderItem *)&v31 init];
  v24 = v23;
  if (v23)
  {
    v25 = [(CNPhotoPickerProviderItem *)v23 rotateImageDataIfNeeded:v19, v29, v30];
    imageData = v24->_imageData;
    v24->_imageData = v25;

    objc_storeStrong(&v24->_thumbnailImageData, a4);
    objc_storeStrong(&v24->_fullscreenImageData, a5);
    objc_storeStrong(&v24->_imageFilterName, a6);
    v24->_cropRect.origin.x = x;
    v24->_cropRect.origin.y = y;
    v24->_cropRect.size.width = width;
    v24->_cropRect.size.height = height;
    objc_storeStrong(&v24->_renderingQueue, a8);
    objc_storeStrong(&v24->_callbackQueue, a9);
    v24->_allowsEditing = 1;
    v27 = v24;
  }

  return v24;
}

- (CNPhotoPickerProviderItem)initWithImageData:(id)a3 thumbnailImageData:(id)a4 fullscreenImageData:(id)a5 cropRect:(CGRect)a6
{
  height = a6.size.height;
  width = a6.size.width;
  y = a6.origin.y;
  x = a6.origin.x;
  v13 = a5;
  v14 = a4;
  v15 = a3;
  v16 = +[CNUIContactsEnvironment currentEnvironment];
  v17 = [v16 defaultSchedulerProvider];
  v18 = [v17 newSerialSchedulerWithName:@"com.apple.ContactsUI.PhotoPickerProviderItem.renderingQueue"];
  v19 = [v17 mainThreadScheduler];
  v20 = [(CNPhotoPickerProviderItem *)self initWithImageData:v15 thumbnailImageData:v14 fullscreenImageData:v13 imageFilterName:0 cropRect:v18 renderingQueue:v19 callbackQueue:x, y, width, height];

  return v20;
}

+ (id)thumbnailViewForImage:(id)a3
{
  v3 = a3;
  [v3 size];
  v5 = fmax(v4, 90.0);
  v6 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{0.0, 0.0, v5, v5}];
  [v6 setAutoresizingMask:18];
  v7 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithFrame:{0.0, 0.0, v5, v5}];
  [v6 center];
  [v7 setCenter:?];
  [v7 setAutoresizingMask:18];
  [v7 setContentMode:2];
  [v7 setImage:v3];

  [v6 addSubview:v7];

  return v6;
}

+ (id)generateThumbnailImageDataWithData:(id)a3 cropRect:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v8 = a3;
  if (v8)
  {
    v16.origin.x = x;
    v16.origin.y = y;
    v16.size.width = width;
    v16.size.height = height;
    if (CGRectEqualToRect(v16, *MEMORY[0x1E695F058]))
    {
      v9 = v8;
    }

    else
    {
      v10 = [MEMORY[0x1E69DCAB8] imageWithData:v8];
      v11 = [v10 CGImage];
      v17.origin.x = x;
      v17.origin.y = y;
      v17.size.width = width;
      v17.size.height = height;
      v12 = CGImageCreateWithImageInRect(v11, v17);
      v13 = [MEMORY[0x1E69DCAB8] imageWithCGImage:v12];

      CGImageRelease(v12);
      v9 = UIImageJPEGRepresentation(v13, 0.8);
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)generateImageDataWithData:(id)a3 filterName:(id)a4
{
  v5 = a3;
  v6 = MEMORY[0x1E695F620];
  v7 = a4;
  v8 = [v6 contextWithOptions:0];
  v9 = [CNPhotoPickerImageWithEffectGenerator imageByApplyingEffect:v7 withContext:v8 toImageData:v5];

  if (v9)
  {
    v10 = UIImageJPEGRepresentation(v9, 0.8);
  }

  else
  {
    v10 = v5;
  }

  v11 = v10;

  return v11;
}

@end