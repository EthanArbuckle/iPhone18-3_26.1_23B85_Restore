@interface CNPhotoPickerEmojiProviderItem
+ (id)addNewEmojiProviderItemWithSize:(CGSize)a3;
+ (id)suggestedEmojiItemsForString:(id)a3 variantsManager:(id)a4 size:(CGSize)a5 locale:(id)a6;
+ (id)thumbnailViewForImage:(id)a3;
- (CGSize)size;
- (CNPhotoPickerEmojiProviderItem)initWithStringRepresentation:(id)a3 backgroundColorVariant:(id)a4 size:(CGSize)a5;
- (UIColor)backgroundColor;
- (id)contactImageForMetadataStore;
- (id)copyWithStringRepresentation:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)createVariantsItemsWithVariantsManager:(id)a3;
- (id)generateImageRepresentationForEmojiString:(id)a3;
- (id)generateThumbnailImageDataIfNeeded;
- (id)imageData;
- (id)thumbnailImageData;
- (id)updatedProviderItemWithText:(id)a3;
- (id)updatedProviderItemWithText:(id)a3 backgroundColorVariant:(id)a4;
- (void)updateVisualIdentity:(id)a3;
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

- (id)createVariantsItemsWithVariantsManager:(id)a3
{
  v4 = a3;
  if ([(CNPhotoPickerEmojiProviderItem *)self allowsVariants])
  {
    v5 = [v4 avatarBackgrounds];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __73__CNPhotoPickerEmojiProviderItem_createVariantsItemsWithVariantsManager___block_invoke;
    v8[3] = &unk_1E74E57A8;
    v8[4] = self;
    v6 = [v5 _cn_map:v8];
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

- (id)updatedProviderItemWithText:(id)a3 backgroundColorVariant:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [CNPhotoPickerEmojiProviderItem alloc];
  [(CNPhotoPickerEmojiProviderItem *)self size];
  v9 = [(CNPhotoPickerEmojiProviderItem *)v8 initWithStringRepresentation:v7 backgroundColorVariant:v6 size:?];

  return v9;
}

- (id)updatedProviderItemWithText:(id)a3
{
  v4 = a3;
  v5 = [CNPhotoPickerEmojiProviderItem alloc];
  v6 = [(CNPhotoPickerEmojiProviderItem *)self backgroundColorVariant];
  [(CNPhotoPickerEmojiProviderItem *)self size];
  v7 = [(CNPhotoPickerEmojiProviderItem *)v5 initWithStringRepresentation:v4 backgroundColorVariant:v6 size:?];

  return v7;
}

- (id)generateImageRepresentationForEmojiString:(id)a3
{
  v28[1] = *MEMORY[0x1E69E9840];
  v5 = &stru_1F0CE7398;
  if (a3)
  {
    v5 = a3;
  }

  v6 = v5;
  v7 = a3;
  v30.width = 190.0;
  v30.height = 190.0;
  UIGraphicsBeginImageContextWithOptions(v30, 0, 3.0);
  v8 = [MEMORY[0x1E69DC728] bezierPathWithOvalInRect:{0.0, 0.0, 190.0, 190.0}];
  [v8 addClip];
  v9 = [(CNPhotoPickerEmojiProviderItem *)self backgroundColorVariant];

  if (!v9)
  {
    v10 = objc_alloc_init(CNPhotoPickerVariantsManager);
    v11 = [(CNPhotoPickerVariantsManager *)v10 randomColorVariant];
    [(CNPhotoPickerEmojiProviderItem *)self setBackgroundColorVariant:v11];
  }

  v12 = [(CNPhotoPickerEmojiProviderItem *)self backgroundColorVariant];
  v13 = [v12 color];
  v14 = [CNPhotoPickerVariantsManager colorGradientBackground:v13];

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
  v4 = [(CNPhotoPickerEmojiProviderItem *)self imageData];
  v5 = [MEMORY[0x1E695DF00] date];
  v6 = [v3 initWithImageData:v4 cropRect:v5 lastUsedDate:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];

  [v6 setSource:4];
  v7 = [(CNPhotoPickerEmojiProviderItem *)self backgroundColorVariant];
  v8 = [v7 colorName];
  [v6 setVariant:v8];

  v9 = [(CNPhotoPickerEmojiProviderItem *)self stringRepresentation];
  [v6 setDisplayString:v9];

  return v6;
}

- (id)generateThumbnailImageDataIfNeeded
{
  v3 = [(CNPhotoPickerEmojiProviderItem *)self dataRepresentation];

  if (v3)
  {
    goto LABEL_2;
  }

  v5 = *MEMORY[0x1E6996570];
  v6 = [(CNPhotoPickerEmojiProviderItem *)self stringRepresentation];
  if ((*(v5 + 16))(v5, v6))
  {
  }

  else
  {
    v7 = [(CNPhotoPickerEmojiProviderItem *)self thumbnailImageData];

    if (v7)
    {
      v13.receiver = self;
      v13.super_class = CNPhotoPickerEmojiProviderItem;
      v8 = [(CNPhotoPickerProviderItem *)&v13 generateThumbnailImageDataIfNeeded];
LABEL_2:
      v4 = [(CNPhotoPickerEmojiProviderItem *)self thumbnailImageData];
      goto LABEL_8;
    }
  }

  v9 = [(CNPhotoPickerEmojiProviderItem *)self stringRepresentation];
  v10 = [(CNPhotoPickerEmojiProviderItem *)self generateImageRepresentationForEmojiString:v9];
  v11 = UIImagePNGRepresentation(v10);
  [(CNPhotoPickerEmojiProviderItem *)self setDataRepresentation:v11];

  v4 = [(CNPhotoPickerEmojiProviderItem *)self dataRepresentation];
LABEL_8:

  return v4;
}

- (id)thumbnailImageData
{
  v3 = [(CNPhotoPickerEmojiProviderItem *)self dataRepresentation];

  if (v3)
  {
    v4 = [(CNPhotoPickerEmojiProviderItem *)self dataRepresentation];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = CNPhotoPickerEmojiProviderItem;
    v4 = [(CNPhotoPickerProviderItem *)&v6 thumbnailImageData];
  }

  return v4;
}

- (id)imageData
{
  v3 = *MEMORY[0x1E6996568];
  v4 = [(CNPhotoPickerEmojiProviderItem *)self stringRepresentation];
  if ((*(v3 + 16))(v3, v4))
  {
    v5 = [(CNPhotoPickerEmojiProviderItem *)self dataRepresentation];

    if (!v5)
    {
      v9.receiver = self;
      v9.super_class = CNPhotoPickerEmojiProviderItem;
      v6 = [(CNPhotoPickerProviderItem *)&v9 imageData];
      goto LABEL_6;
    }
  }

  else
  {
  }

  v7 = [(CNPhotoPickerEmojiProviderItem *)self generateThumbnailImageDataIfNeeded];
  v6 = [(CNPhotoPickerEmojiProviderItem *)self dataRepresentation];
LABEL_6:

  return v6;
}

- (void)updateVisualIdentity:(id)a3
{
  v4.receiver = self;
  v4.super_class = CNPhotoPickerEmojiProviderItem;
  v3 = a3;
  [(CNPhotoPickerProviderItem *)&v4 updateVisualIdentity:v3];
  [v3 updateImageType:{4, v4.receiver, v4.super_class}];
}

- (UIColor)backgroundColor
{
  v2 = [(CNPhotoPickerEmojiProviderItem *)self backgroundColorVariant];
  v3 = [v2 color];

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v9.receiver = self;
  v9.super_class = CNPhotoPickerEmojiProviderItem;
  v4 = [(CNPhotoPickerProviderItem *)&v9 copyWithZone:a3];
  [(CNPhotoPickerEmojiProviderItem *)self size];
  [v4 setSize:?];
  v5 = [(CNPhotoPickerEmojiProviderItem *)self stringRepresentation];
  [v4 setStringRepresentation:v5];

  v6 = [(CNPhotoPickerEmojiProviderItem *)self dataRepresentation];
  [v4 setDataRepresentation:v6];

  v7 = [(CNPhotoPickerEmojiProviderItem *)self backgroundColorVariant];
  [v4 setBackgroundColorVariant:v7];

  return v4;
}

- (id)copyWithStringRepresentation:(id)a3
{
  v4 = a3;
  v5 = [CNPhotoPickerEmojiProviderItem alloc];
  v6 = [(CNPhotoPickerEmojiProviderItem *)self backgroundColorVariant];
  [(CNPhotoPickerEmojiProviderItem *)self size];
  v7 = [(CNPhotoPickerEmojiProviderItem *)v5 initWithStringRepresentation:v4 backgroundColorVariant:v6 size:?];

  return v7;
}

- (CNPhotoPickerEmojiProviderItem)initWithStringRepresentation:(id)a3 backgroundColorVariant:(id)a4 size:(CGSize)a5
{
  height = a5.height;
  width = a5.width;
  v8 = a3;
  v10 = a3;
  v11 = a4;
  v12 = [(CNPhotoPickerProviderItem *)self initWithImageData:0 thumbnailImageData:0 fullscreenImageData:0 cropRect:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_stringRepresentation, v8);
    v14 = v11;
    if (!v11)
    {
      v8 = objc_alloc_init(CNPhotoPickerVariantsManager);
      v14 = [(CNPhotoPickerVariantsManager *)v8 randomColorVariant];
    }

    objc_storeStrong(&v13->_backgroundColorVariant, v14);
    if (!v11)
    {
    }

    v13->_size.width = width;
    v13->_size.height = height;
    v15 = v13;
  }

  return v13;
}

+ (id)suggestedEmojiItemsForString:(id)a3 variantsManager:(id)a4 size:(CGSize)a5 locale:(id)a6
{
  height = a5.height;
  width = a5.width;
  v38 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  if ((*(*MEMORY[0x1E6996570] + 16))())
  {
    v29 = v10;
    v27 = [objc_alloc(MEMORY[0x1E699BB08]) initWithQueryString:v10 andLocale:v12];
    v13 = [v27 tokens];
    v28 = v12;
    v14 = [v12 languageCode];
    v15 = CEMCreateEmojiLocaleData();

    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    obj = v13;
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
            v23 = [v11 randomColorVariant];
            v24 = [(CNPhotoPickerEmojiProviderItem *)v21 initWithStringRepresentation:String backgroundColorVariant:v23 size:width, height];

            v25 = [v16 arrayByAddingObject:v24];

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

    v12 = v28;
    v10 = v29;
  }

  else
  {
    v16 = MEMORY[0x1E695E0F0];
  }

  return v16;
}

+ (id)thumbnailViewForImage:(id)a3
{
  v3 = a3;
  [v3 size];
  v5 = v4;
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

+ (id)addNewEmojiProviderItemWithSize:(CGSize)a3
{
  v3 = [[CNPhotoPickerEmojiProviderItem alloc] initWithStringRepresentation:&stru_1F0CE7398 backgroundColorVariant:0 size:a3.width, a3.height];

  return v3;
}

@end