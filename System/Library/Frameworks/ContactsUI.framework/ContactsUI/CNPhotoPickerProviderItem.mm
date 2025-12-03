@interface CNPhotoPickerProviderItem
+ (id)generateImageDataWithData:(id)data filterName:(id)name;
+ (id)generateThumbnailImageDataWithData:(id)data cropRect:(CGRect)rect;
+ (id)thumbnailViewForImage:(id)image;
- (BOOL)isEqual:(id)equal;
- (CGRect)cropRect;
- (CNPhotoPickerProviderItem)initWithImageData:(id)data thumbnailImageData:(id)imageData fullscreenImageData:(id)fullscreenImageData cropRect:(CGRect)rect;
- (CNPhotoPickerProviderItem)initWithImageData:(id)data thumbnailImageData:(id)imageData fullscreenImageData:(id)fullscreenImageData imageFilterName:(id)name cropRect:(CGRect)rect renderingQueue:(id)queue callbackQueue:(id)callbackQueue;
- (CNPhotoPickerProviderItemDelegate)delegate;
- (NSData)imageData;
- (NSString)localizedVariantsTitle;
- (UIImage)croppedFullSizeImage;
- (UIImage)fullSizeImage;
- (id)contactImageForMetadataStore;
- (id)copyWithZone:(_NSZone *)zone;
- (id)generatePhotoFilterVariants;
- (id)generateThumbnailImageDataIfNeeded;
- (id)generateThumbnailImageDataWithData:(id)data;
- (id)rotateImageDataIfNeeded:(id)needed;
- (unint64_t)hash;
- (void)applyVariantEffectToFullsizeImageWithCompletion:(id)completion;
- (void)fullSizeViewWithCompletion:(id)completion;
- (void)generateAllImageDatasIfNeeded;
- (void)thumbnailViewWithCompletion:(id)completion;
- (void)thumbnailViewWithPlaceholderProvider:(id)provider completion:(id)completion;
- (void)updateContact:(id)contact;
- (void)updateVisualIdentity:(id)identity;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = MEMORY[0x1E69966F0];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __37__CNPhotoPickerProviderItem_isEqual___block_invoke;
  v15[3] = &unk_1E74E7460;
  v15[4] = self;
  v16 = equalCopy;
  aBlock = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __37__CNPhotoPickerProviderItem_isEqual___block_invoke_2;
  v12 = &unk_1E74E7460;
  selfCopy = self;
  v14 = v16;
  v6 = v16;
  v7 = _Block_copy(&aBlock);
  LOBYTE(self) = [v5 isObject:self equalToOther:v6 withBlocks:{v15, v7, 0, aBlock, v10, v11, v12, selfCopy}];

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
  originalImageData = [(CNPhotoPickerProviderItem *)self originalImageData];
  [(CNPhotoPickerProviderItem *)self cropRect];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  date = [MEMORY[0x1E695DF00] date];
  v14 = [v3 initWithImageData:originalImageData cropRect:date lastUsedDate:{v6, v8, v10, v12}];

  imageFilterName = [(CNPhotoPickerProviderItem *)self imageFilterName];
  [v14 setVariant:imageFilterName];

  [v14 setSource:2];

  return v14;
}

- (id)rotateImageDataIfNeeded:(id)needed
{
  neededCopy = needed;
  v4 = [MEMORY[0x1E69DCAB8] cnui_imageWithDataPreservingScale:neededCopy];
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
    v15 = neededCopy;
  }

  return v15;
}

- (id)generatePhotoFilterVariants
{
  array = [MEMORY[0x1E695DF70] array];
  thumbnailImageData = [(CNPhotoPickerProviderItem *)self thumbnailImageData];

  if (thumbnailImageData)
  {
    thumbnailImageData2 = [(CNPhotoPickerProviderItem *)self thumbnailImageData];
  }

  else
  {
    originalImageData = [(CNPhotoPickerProviderItem *)self originalImageData];
    thumbnailImageData2 = [(CNPhotoPickerProviderItem *)self generateThumbnailImageDataWithData:originalImageData];
  }

  v7 = [MEMORY[0x1E69DCAB8] cnui_imageWithDataPreservingScale:thumbnailImageData2];
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
  originalImageData2 = [(CNPhotoPickerProviderItem *)self originalImageData];
  originalImageData3 = [(CNPhotoPickerProviderItem *)self originalImageData];
  [(CNPhotoPickerProviderItem *)self cropRect];
  v18 = [v15 initWithImageData:originalImageData2 thumbnailImageData:thumbnailImageData2 fullscreenImageData:originalImageData3 cropRect:?];

  [v18 setImageFilterName:0];
  v19 = CNContactsUIBundle();
  v20 = [v19 localizedStringForKey:@"PHOTO_FILTER_ORIGINAL_LABEL" value:&stru_1F0CE7398 table:@"Localized"];
  [v18 setLocalizedVariantDisplayName:v20];

  [array _cn_addNonNilObject:v18];
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
  v27 = array;
  v32 = v27;
  [CNPhotoPickerImageWithEffectGenerator imagesByApplyingEffectsToImageData:thumbnailImageData2 withScaleFactor:v31 originalImageScale:v9 cropRect:v22 completion:0.0, 0.0, v24, v26];
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

- (void)updateVisualIdentity:(id)identity
{
  identityCopy = identity;
  [identityCopy setMemojiMetadata:0];
  [(CNPhotoPickerProviderItem *)self generateAllImageDatasIfNeeded];
  imageData = [(CNPhotoPickerProviderItem *)self imageData];
  [identityCopy setImageData:imageData];

  imageData2 = [(CNPhotoPickerProviderItem *)self imageData];
  _cn_md5Hash = [imageData2 _cn_md5Hash];
  [identityCopy setImageHash:_cn_md5Hash];

  [(CNPhotoPickerProviderItem *)self cropRect];
  [identityCopy setCropRect:?];
  thumbnailImageData = [(CNPhotoPickerProviderItem *)self thumbnailImageData];
  [identityCopy setThumbnailImageData:thumbnailImageData];

  fullscreenImageData = [(CNPhotoPickerProviderItem *)self fullscreenImageData];
  [identityCopy setFullscreenImageData:fullscreenImageData];

  [identityCopy updateImageType:1];
}

- (void)updateContact:(id)contact
{
  contactCopy = contact;
  v5 = [[CNVisualIdentity alloc] initWithContact:contactCopy];
  [(CNPhotoPickerProviderItem *)self updateVisualIdentity:v5];
  [(CNVisualIdentity *)v5 updateImageForContact:contactCopy];
}

- (void)applyVariantEffectToFullsizeImageWithCompletion:(id)completion
{
  completionCopy = completion;
  imageFilterName = [(CNPhotoPickerProviderItem *)self imageFilterName];

  if (imageFilterName)
  {
    [(CNPhotoPickerProviderItem *)self setThumbnailImageData:0];
    renderingQueue = [(CNPhotoPickerProviderItem *)self renderingQueue];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __77__CNPhotoPickerProviderItem_applyVariantEffectToFullsizeImageWithCompletion___block_invoke;
    v7[3] = &unk_1E74E6DD0;
    v7[4] = self;
    v8 = completionCopy;
    [renderingQueue performBlock:v7];
  }

  else
  {
    completionCopy[2](completionCopy);
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
    fullSizeImage = [(CNPhotoPickerProviderItem *)self fullSizeImage];

    if (!fullSizeImage)
    {
      v9 = 0;
      goto LABEL_9;
    }

    [(CNPhotoPickerProviderItem *)self cropRect];
    v5 = CGRectEqualToRect(v16, *MEMORY[0x1E695F058]);
    fullSizeImage2 = [(CNPhotoPickerProviderItem *)self fullSizeImage];
    v7 = fullSizeImage2;
    if (v5)
    {
      v8 = self->_croppedFullSizeImage;
      self->_croppedFullSizeImage = fullSizeImage2;
    }

    else
    {
      cGImage = [(UIImage *)fullSizeImage2 CGImage];
      [(CNPhotoPickerProviderItem *)self cropRect];
      v11 = CGImageCreateWithImageInRect(cGImage, v17);

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
    imageData = [(CNPhotoPickerProviderItem *)self imageData];
    if (![imageData length])
    {
      fullscreenImageData = [(CNPhotoPickerProviderItem *)self fullscreenImageData];
      v6 = [fullscreenImageData length];

      if (v6)
      {
        [(CNPhotoPickerProviderItem *)self fullscreenImageData];
      }

      else
      {
        [(CNPhotoPickerProviderItem *)self thumbnailImageData];
      }
      v7 = ;

      imageData = v7;
    }

    v8 = [MEMORY[0x1E69DCAB8] imageWithData:imageData];
    v9 = self->_fullSizeImage;
    self->_fullSizeImage = v8;

    fullSizeImage = self->_fullSizeImage;
  }

  return fullSizeImage;
}

- (void)fullSizeViewWithCompletion:(id)completion
{
  completionCopy = completion;
  imageData = [(CNPhotoPickerProviderItem *)self imageData];
  if (imageData)
  {

LABEL_4:
    v6 = objc_opt_class();
    croppedFullSizeImage = [(CNPhotoPickerProviderItem *)self croppedFullSizeImage];
    v8 = [v6 thumbnailViewForImage:croppedFullSizeImage];
    completionCopy[2](completionCopy, v8);

    goto LABEL_5;
  }

  fullscreenImageData = [(CNPhotoPickerProviderItem *)self fullscreenImageData];

  if (fullscreenImageData)
  {
    goto LABEL_4;
  }

  [(CNPhotoPickerProviderItem *)self thumbnailViewWithCompletion:completionCopy];
LABEL_5:
}

- (void)thumbnailViewWithCompletion:(id)completion
{
  completionCopy = completion;
  thumbnailImage = [(CNPhotoPickerProviderItem *)self thumbnailImage];

  if (thumbnailImage)
  {
    v6 = objc_opt_class();
    thumbnailImage2 = [(CNPhotoPickerProviderItem *)self thumbnailImage];
    v8 = [v6 thumbnailViewForImage:thumbnailImage2];
    completionCopy[2](completionCopy, v8);
  }

  else
  {
    renderingQueue = [(CNPhotoPickerProviderItem *)self renderingQueue];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __57__CNPhotoPickerProviderItem_thumbnailViewWithCompletion___block_invoke;
    v10[3] = &unk_1E74E6DD0;
    v10[4] = self;
    v11 = completionCopy;
    [renderingQueue performBlock:v10];
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

- (void)thumbnailViewWithPlaceholderProvider:(id)provider completion:(id)completion
{
  providerCopy = provider;
  completionCopy = completion;
  loadingPlaceholderImage = [(CNPhotoPickerProviderItem *)self loadingPlaceholderImage];

  if (loadingPlaceholderImage)
  {
    v9 = objc_opt_class();
    loadingPlaceholderImage2 = [(CNPhotoPickerProviderItem *)self loadingPlaceholderImage];
    v11 = [v9 thumbnailViewForImage:loadingPlaceholderImage2];
    providerCopy[2](providerCopy, v11);
  }

  else
  {
    providerCopy[2](providerCopy, 0);
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __77__CNPhotoPickerProviderItem_thumbnailViewWithPlaceholderProvider_completion___block_invoke;
  v13[3] = &unk_1E74E3B00;
  v13[4] = self;
  v14 = completionCopy;
  v12 = completionCopy;
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

- (id)generateThumbnailImageDataWithData:(id)data
{
  dataCopy = data;
  v5 = objc_opt_class();
  [(CNPhotoPickerProviderItem *)self cropRect];
  v6 = [v5 generateThumbnailImageDataWithData:dataCopy cropRect:?];

  return v6;
}

- (id)generateThumbnailImageDataIfNeeded
{
  thumbnailImageData = [(CNPhotoPickerProviderItem *)self thumbnailImageData];

  if (!thumbnailImageData)
  {
    [(CNPhotoPickerProviderItem *)self cropRect];
    v4 = CGRectEqualToRect(v9, *MEMORY[0x1E695F058]);
    imageData = [(CNPhotoPickerProviderItem *)self imageData];
    if (v4)
    {
      [(CNPhotoPickerProviderItem *)self setThumbnailImageData:imageData];
    }

    else
    {
      v6 = [(CNPhotoPickerProviderItem *)self generateThumbnailImageDataWithData:imageData];
      [(CNPhotoPickerProviderItem *)self setThumbnailImageData:v6];
    }
  }

  return [(CNPhotoPickerProviderItem *)self thumbnailImageData];
}

- (void)generateAllImageDatasIfNeeded
{
  imageData = [(CNPhotoPickerProviderItem *)self imageData];
  if (imageData)
  {
    v4 = imageData;
    thumbnailImageData = [(CNPhotoPickerProviderItem *)self thumbnailImageData];
    if (thumbnailImageData)
    {
      v6 = thumbnailImageData;
      fullscreenImageData = [(CNPhotoPickerProviderItem *)self fullscreenImageData];

      if (fullscreenImageData)
      {
        return;
      }
    }

    else
    {
    }
  }

  generateThumbnailImageDataIfNeeded = [(CNPhotoPickerProviderItem *)self generateThumbnailImageDataIfNeeded];
  fullscreenImageData2 = [(CNPhotoPickerProviderItem *)self fullscreenImageData];

  if (!fullscreenImageData2)
  {
    imageData2 = [(CNPhotoPickerProviderItem *)self imageData];
    [(CNPhotoPickerProviderItem *)self setFullscreenImageData:imageData2];
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  imageData = self->_imageData;
  thumbnailImageData = [(CNPhotoPickerProviderItem *)self thumbnailImageData];
  fullscreenImageData = [(CNPhotoPickerProviderItem *)self fullscreenImageData];
  [(CNPhotoPickerProviderItem *)self cropRect];
  v8 = [v4 initWithImageData:imageData thumbnailImageData:thumbnailImageData fullscreenImageData:fullscreenImageData cropRect:?];

  [v8 setImageFilterName:self->_imageFilterName];
  [v8 setAssetIdentifier:self->_assetIdentifier];
  return v8;
}

- (CNPhotoPickerProviderItem)initWithImageData:(id)data thumbnailImageData:(id)imageData fullscreenImageData:(id)fullscreenImageData imageFilterName:(id)name cropRect:(CGRect)rect renderingQueue:(id)queue callbackQueue:(id)callbackQueue
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  dataCopy = data;
  imageDataCopy = imageData;
  fullscreenImageDataCopy = fullscreenImageData;
  nameCopy = name;
  queueCopy = queue;
  callbackQueueCopy = callbackQueue;
  v31.receiver = self;
  v31.super_class = CNPhotoPickerProviderItem;
  v23 = [(CNPhotoPickerProviderItem *)&v31 init];
  v24 = v23;
  if (v23)
  {
    imageDataCopy = [(CNPhotoPickerProviderItem *)v23 rotateImageDataIfNeeded:dataCopy, fullscreenImageDataCopy, imageDataCopy];
    imageData = v24->_imageData;
    v24->_imageData = imageDataCopy;

    objc_storeStrong(&v24->_thumbnailImageData, imageData);
    objc_storeStrong(&v24->_fullscreenImageData, fullscreenImageData);
    objc_storeStrong(&v24->_imageFilterName, name);
    v24->_cropRect.origin.x = x;
    v24->_cropRect.origin.y = y;
    v24->_cropRect.size.width = width;
    v24->_cropRect.size.height = height;
    objc_storeStrong(&v24->_renderingQueue, queue);
    objc_storeStrong(&v24->_callbackQueue, callbackQueue);
    v24->_allowsEditing = 1;
    v27 = v24;
  }

  return v24;
}

- (CNPhotoPickerProviderItem)initWithImageData:(id)data thumbnailImageData:(id)imageData fullscreenImageData:(id)fullscreenImageData cropRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  fullscreenImageDataCopy = fullscreenImageData;
  imageDataCopy = imageData;
  dataCopy = data;
  v16 = +[CNUIContactsEnvironment currentEnvironment];
  defaultSchedulerProvider = [v16 defaultSchedulerProvider];
  v18 = [defaultSchedulerProvider newSerialSchedulerWithName:@"com.apple.ContactsUI.PhotoPickerProviderItem.renderingQueue"];
  mainThreadScheduler = [defaultSchedulerProvider mainThreadScheduler];
  height = [(CNPhotoPickerProviderItem *)self initWithImageData:dataCopy thumbnailImageData:imageDataCopy fullscreenImageData:fullscreenImageDataCopy imageFilterName:0 cropRect:v18 renderingQueue:mainThreadScheduler callbackQueue:x, y, width, height];

  return height;
}

+ (id)thumbnailViewForImage:(id)image
{
  imageCopy = image;
  [imageCopy size];
  v5 = fmax(v4, 90.0);
  v6 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{0.0, 0.0, v5, v5}];
  [v6 setAutoresizingMask:18];
  v7 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithFrame:{0.0, 0.0, v5, v5}];
  [v6 center];
  [v7 setCenter:?];
  [v7 setAutoresizingMask:18];
  [v7 setContentMode:2];
  [v7 setImage:imageCopy];

  [v6 addSubview:v7];

  return v6;
}

+ (id)generateThumbnailImageDataWithData:(id)data cropRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  dataCopy = data;
  if (dataCopy)
  {
    v16.origin.x = x;
    v16.origin.y = y;
    v16.size.width = width;
    v16.size.height = height;
    if (CGRectEqualToRect(v16, *MEMORY[0x1E695F058]))
    {
      v9 = dataCopy;
    }

    else
    {
      v10 = [MEMORY[0x1E69DCAB8] imageWithData:dataCopy];
      cGImage = [v10 CGImage];
      v17.origin.x = x;
      v17.origin.y = y;
      v17.size.width = width;
      v17.size.height = height;
      v12 = CGImageCreateWithImageInRect(cGImage, v17);
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

+ (id)generateImageDataWithData:(id)data filterName:(id)name
{
  dataCopy = data;
  v6 = MEMORY[0x1E695F620];
  nameCopy = name;
  v8 = [v6 contextWithOptions:0];
  v9 = [CNPhotoPickerImageWithEffectGenerator imageByApplyingEffect:nameCopy withContext:v8 toImageData:dataCopy];

  if (v9)
  {
    v10 = UIImageJPEGRepresentation(v9, 0.8);
  }

  else
  {
    v10 = dataCopy;
  }

  v11 = v10;

  return v11;
}

@end