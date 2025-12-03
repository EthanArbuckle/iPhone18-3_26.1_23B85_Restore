@interface CNPhotoPickerEmojiProviderItem
+ (id)addNewEmojiProviderItemWithSize:(CGSize)size;
+ (id)suggestedEmojiItemsForString:(id)string variantsManager:(id)manager size:(CGSize)size locale:(id)locale;
+ (id)thumbnailViewForImage:(id)image;
- (CGSize)size;
- (CNPhotoPickerEmojiProviderItem)initWithStringRepresentation:(id)representation backgroundColorVariant:(id)variant size:(CGSize)size;
- (UIColor)backgroundColor;
- (id)contactImageForMetadataStore;
- (id)copyWithStringRepresentation:(id)representation;
- (id)copyWithZone:(_NSZone *)zone;
- (id)createVariantsItemsWithVariantsManager:(id)manager;
- (id)generateImageRepresentationForEmojiString:(id)string;
- (id)generateThumbnailImageDataIfNeeded;
- (id)imageData;
- (id)thumbnailImageData;
- (id)updatedProviderItemWithText:(id)text;
- (id)updatedProviderItemWithText:(id)text backgroundColorVariant:(id)variant;
- (void)updateVisualIdentity:(id)identity;
@end

@implementation CNPhotoPickerEmojiProviderItem

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

- (id)createVariantsItemsWithVariantsManager:(id)manager
{
  managerCopy = manager;
  if ([(CNPhotoPickerEmojiProviderItem *)self allowsVariants])
  {
    avatarBackgrounds = [managerCopy avatarBackgrounds];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __73__CNPhotoPickerEmojiProviderItem_createVariantsItemsWithVariantsManager___block_invoke;
    v8[3] = &unk_1E74E57A8;
    v8[4] = self;
    v6 = [avatarBackgrounds _cn_map:v8];
  }

  else
  {
    v6 = MEMORY[0x1E695E0F0];
  }

  return v6;
}

id __73__CNPhotoPickerEmojiProviderItem_createVariantsItemsWithVariantsManager___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 stringRepresentation];
  v5 = [v2 updatedProviderItemWithText:v4 backgroundColorVariant:v3];

  return v5;
}

- (id)updatedProviderItemWithText:(id)text backgroundColorVariant:(id)variant
{
  variantCopy = variant;
  textCopy = text;
  v8 = [CNPhotoPickerEmojiProviderItem alloc];
  [(CNPhotoPickerEmojiProviderItem *)self size];
  v9 = [(CNPhotoPickerEmojiProviderItem *)v8 initWithStringRepresentation:textCopy backgroundColorVariant:variantCopy size:?];

  return v9;
}

- (id)updatedProviderItemWithText:(id)text
{
  textCopy = text;
  v5 = [CNPhotoPickerEmojiProviderItem alloc];
  backgroundColorVariant = [(CNPhotoPickerEmojiProviderItem *)self backgroundColorVariant];
  [(CNPhotoPickerEmojiProviderItem *)self size];
  v7 = [(CNPhotoPickerEmojiProviderItem *)v5 initWithStringRepresentation:textCopy backgroundColorVariant:backgroundColorVariant size:?];

  return v7;
}

- (id)generateImageRepresentationForEmojiString:(id)string
{
  v28[1] = *MEMORY[0x1E69E9840];
  stringCopy = &stru_1F0CE7398;
  if (string)
  {
    stringCopy = string;
  }

  v6 = stringCopy;
  stringCopy2 = string;
  v30.width = 190.0;
  v30.height = 190.0;
  UIGraphicsBeginImageContextWithOptions(v30, 0, 3.0);
  v8 = [MEMORY[0x1E69DC728] bezierPathWithOvalInRect:{0.0, 0.0, 190.0, 190.0}];
  [v8 addClip];
  backgroundColorVariant = [(CNPhotoPickerEmojiProviderItem *)self backgroundColorVariant];

  if (!backgroundColorVariant)
  {
    v10 = objc_alloc_init(CNPhotoPickerVariantsManager);
    randomColorVariant = [(CNPhotoPickerVariantsManager *)v10 randomColorVariant];
    [(CNPhotoPickerEmojiProviderItem *)self setBackgroundColorVariant:randomColorVariant];
  }

  backgroundColorVariant2 = [(CNPhotoPickerEmojiProviderItem *)self backgroundColorVariant];
  color = [backgroundColorVariant2 color];
  v14 = [CNPhotoPickerVariantsManager colorGradientBackground:color];

  [v14 drawInRect:{0.0, 0.0, 190.0, 190.0}];
  v15 = +[CNUIFontRepository visualIdentityEditorTextFont];
  v16 = [v15 fontWithSize:120.0];

  v17 = objc_alloc(MEMORY[0x1E696AAB0]);
  v27 = *MEMORY[0x1E69DB648];
  v28[0] = v16;
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:&v27 count:1];
  v19 = [v17 initWithString:v6 attributes:v18];

  [v19 size];
  v21 = v20;
  v23 = v22;
  v31.origin.x = 0.0;
  v31.origin.y = 0.0;
  v31.size.width = 190.0;
  v31.size.height = 190.0;
  v24 = CGRectGetMidX(v31) - v21 * 0.5;
  v32.origin.x = 0.0;
  v32.origin.y = 0.0;
  v32.size.width = 190.0;
  v32.size.height = 190.0;
  [v19 drawInRect:{v24, CGRectGetMidY(v32) - v23 * 0.5, v21, v23}];
  v25 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v25;
}

- (id)contactImageForMetadataStore
{
  v3 = objc_alloc(MEMORY[0x1E695CD88]);
  imageData = [(CNPhotoPickerEmojiProviderItem *)self imageData];
  date = [MEMORY[0x1E695DF00] date];
  v6 = [v3 initWithImageData:imageData cropRect:date lastUsedDate:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];

  [v6 setSource:4];
  backgroundColorVariant = [(CNPhotoPickerEmojiProviderItem *)self backgroundColorVariant];
  colorName = [backgroundColorVariant colorName];
  [v6 setVariant:colorName];

  stringRepresentation = [(CNPhotoPickerEmojiProviderItem *)self stringRepresentation];
  [v6 setDisplayString:stringRepresentation];

  return v6;
}

- (id)generateThumbnailImageDataIfNeeded
{
  dataRepresentation = [(CNPhotoPickerEmojiProviderItem *)self dataRepresentation];

  if (dataRepresentation)
  {
    goto LABEL_2;
  }

  v5 = *MEMORY[0x1E6996570];
  stringRepresentation = [(CNPhotoPickerEmojiProviderItem *)self stringRepresentation];
  if ((*(v5 + 16))(v5, stringRepresentation))
  {
  }

  else
  {
    thumbnailImageData = [(CNPhotoPickerEmojiProviderItem *)self thumbnailImageData];

    if (thumbnailImageData)
    {
      v13.receiver = self;
      v13.super_class = CNPhotoPickerEmojiProviderItem;
      generateThumbnailImageDataIfNeeded = [(CNPhotoPickerProviderItem *)&v13 generateThumbnailImageDataIfNeeded];
LABEL_2:
      thumbnailImageData2 = [(CNPhotoPickerEmojiProviderItem *)self thumbnailImageData];
      goto LABEL_8;
    }
  }

  stringRepresentation2 = [(CNPhotoPickerEmojiProviderItem *)self stringRepresentation];
  v10 = [(CNPhotoPickerEmojiProviderItem *)self generateImageRepresentationForEmojiString:stringRepresentation2];
  v11 = UIImagePNGRepresentation(v10);
  [(CNPhotoPickerEmojiProviderItem *)self setDataRepresentation:v11];

  thumbnailImageData2 = [(CNPhotoPickerEmojiProviderItem *)self dataRepresentation];
LABEL_8:

  return thumbnailImageData2;
}

- (id)thumbnailImageData
{
  dataRepresentation = [(CNPhotoPickerEmojiProviderItem *)self dataRepresentation];

  if (dataRepresentation)
  {
    dataRepresentation2 = [(CNPhotoPickerEmojiProviderItem *)self dataRepresentation];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = CNPhotoPickerEmojiProviderItem;
    dataRepresentation2 = [(CNPhotoPickerProviderItem *)&v6 thumbnailImageData];
  }

  return dataRepresentation2;
}

- (id)imageData
{
  v3 = *MEMORY[0x1E6996568];
  stringRepresentation = [(CNPhotoPickerEmojiProviderItem *)self stringRepresentation];
  if ((*(v3 + 16))(v3, stringRepresentation))
  {
    dataRepresentation = [(CNPhotoPickerEmojiProviderItem *)self dataRepresentation];

    if (!dataRepresentation)
    {
      v9.receiver = self;
      v9.super_class = CNPhotoPickerEmojiProviderItem;
      imageData = [(CNPhotoPickerProviderItem *)&v9 imageData];
      goto LABEL_6;
    }
  }

  else
  {
  }

  generateThumbnailImageDataIfNeeded = [(CNPhotoPickerEmojiProviderItem *)self generateThumbnailImageDataIfNeeded];
  imageData = [(CNPhotoPickerEmojiProviderItem *)self dataRepresentation];
LABEL_6:

  return imageData;
}

- (void)updateVisualIdentity:(id)identity
{
  v4.receiver = self;
  v4.super_class = CNPhotoPickerEmojiProviderItem;
  identityCopy = identity;
  [(CNPhotoPickerProviderItem *)&v4 updateVisualIdentity:identityCopy];
  [identityCopy updateImageType:{4, v4.receiver, v4.super_class}];
}

- (UIColor)backgroundColor
{
  backgroundColorVariant = [(CNPhotoPickerEmojiProviderItem *)self backgroundColorVariant];
  color = [backgroundColorVariant color];

  return color;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v9.receiver = self;
  v9.super_class = CNPhotoPickerEmojiProviderItem;
  v4 = [(CNPhotoPickerProviderItem *)&v9 copyWithZone:zone];
  [(CNPhotoPickerEmojiProviderItem *)self size];
  [v4 setSize:?];
  stringRepresentation = [(CNPhotoPickerEmojiProviderItem *)self stringRepresentation];
  [v4 setStringRepresentation:stringRepresentation];

  dataRepresentation = [(CNPhotoPickerEmojiProviderItem *)self dataRepresentation];
  [v4 setDataRepresentation:dataRepresentation];

  backgroundColorVariant = [(CNPhotoPickerEmojiProviderItem *)self backgroundColorVariant];
  [v4 setBackgroundColorVariant:backgroundColorVariant];

  return v4;
}

- (id)copyWithStringRepresentation:(id)representation
{
  representationCopy = representation;
  v5 = [CNPhotoPickerEmojiProviderItem alloc];
  backgroundColorVariant = [(CNPhotoPickerEmojiProviderItem *)self backgroundColorVariant];
  [(CNPhotoPickerEmojiProviderItem *)self size];
  v7 = [(CNPhotoPickerEmojiProviderItem *)v5 initWithStringRepresentation:representationCopy backgroundColorVariant:backgroundColorVariant size:?];

  return v7;
}

- (CNPhotoPickerEmojiProviderItem)initWithStringRepresentation:(id)representation backgroundColorVariant:(id)variant size:(CGSize)size
{
  height = size.height;
  width = size.width;
  representationCopy = representation;
  representationCopy2 = representation;
  variantCopy = variant;
  v12 = [(CNPhotoPickerProviderItem *)self initWithImageData:0 thumbnailImageData:0 fullscreenImageData:0 cropRect:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_stringRepresentation, representationCopy);
    randomColorVariant = variantCopy;
    if (!variantCopy)
    {
      representationCopy = objc_alloc_init(CNPhotoPickerVariantsManager);
      randomColorVariant = [(CNPhotoPickerVariantsManager *)representationCopy randomColorVariant];
    }

    objc_storeStrong(&v13->_backgroundColorVariant, randomColorVariant);
    if (!variantCopy)
    {
    }

    v13->_size.width = width;
    v13->_size.height = height;
    v15 = v13;
  }

  return v13;
}

+ (id)suggestedEmojiItemsForString:(id)string variantsManager:(id)manager size:(CGSize)size locale:(id)locale
{
  height = size.height;
  width = size.width;
  v38 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  managerCopy = manager;
  localeCopy = locale;
  if ((*(*MEMORY[0x1E6996570] + 16))())
  {
    v29 = stringCopy;
    v27 = [objc_alloc(MEMORY[0x1E699BB08]) initWithQueryString:stringCopy andLocale:localeCopy];
    tokens = [v27 tokens];
    v28 = localeCopy;
    languageCode = [localeCopy languageCode];
    v15 = CEMCreateEmojiLocaleData();

    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    obj = tokens;
    v32 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (v32)
    {
      v31 = *v34;
      v16 = MEMORY[0x1E695E0F0];
LABEL_4:
      v17 = 0;
      while (1)
      {
        if (*v34 != v31)
        {
          objc_enumerationMutation(obj);
        }

        if ([v16 count] > 2)
        {
          break;
        }

        EmojiTokensForString = CEMEmojiLocaleDataCreateEmojiTokensForString();
        if (EmojiTokensForString)
        {
          v19 = EmojiTokensForString;
          for (i = 0; i < CFArrayGetCount(v19); ++i)
          {
            CFArrayGetValueAtIndex(v19, i);
            v21 = [CNPhotoPickerEmojiProviderItem alloc];
            String = CEMEmojiTokenGetString();
            randomColorVariant = [managerCopy randomColorVariant];
            height = [(CNPhotoPickerEmojiProviderItem *)v21 initWithStringRepresentation:String backgroundColorVariant:randomColorVariant size:width, height];

            v25 = [v16 arrayByAddingObject:height];

            v16 = v25;
          }

          CFRelease(v19);
        }

        if (++v17 == v32)
        {
          v32 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
          if (v32)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }

    else
    {
      v16 = MEMORY[0x1E695E0F0];
    }

    if (v15)
    {
      CFRelease(v15);
    }

    localeCopy = v28;
    stringCopy = v29;
  }

  else
  {
    v16 = MEMORY[0x1E695E0F0];
  }

  return v16;
}

+ (id)thumbnailViewForImage:(id)image
{
  imageCopy = image;
  [imageCopy size];
  v5 = v4;
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

+ (id)addNewEmojiProviderItemWithSize:(CGSize)size
{
  v3 = [[CNPhotoPickerEmojiProviderItem alloc] initWithStringRepresentation:&stru_1F0CE7398 backgroundColorVariant:0 size:size.width, size.height];

  return v3;
}

@end