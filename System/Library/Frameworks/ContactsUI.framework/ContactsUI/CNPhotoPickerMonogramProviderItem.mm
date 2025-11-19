@interface CNPhotoPickerMonogramProviderItem
- (BOOL)allowsEditing;
- (BOOL)allowsVariants;
- (BOOL)isEqual:(id)a3;
- (BOOL)isGrayMonogramItem;
- (CNPhotoPickerMonogramProviderItem)initWithImageData:(id)a3 thumbnailImageData:(id)a4 fullscreenImageData:(id)a5 cropRect:(CGRect)a6 renderingScope:(id)a7 avatarRenderer:(id)a8 isVariantOptionItem:(BOOL)a9;
- (NSString)monogramText;
- (UIColor)backgroundColor;
- (id)contactImageForMetadataStore;
- (id)copyWithZone:(_NSZone *)a3;
- (id)createColorVariantItems;
- (id)createColorVariantItemsExcludingSelf;
- (id)createVariantsItemsWithVariantsManager:(id)a3;
- (id)generateMonogramData;
- (id)generateMonogramImage;
- (id)generateThumbnailImageDataIfNeeded;
- (id)imageData;
- (id)localizedVariantsTitle;
- (id)monogramVariantItemForColor:(id)a3;
- (id)thumbnailImageData;
- (id)updatedProviderItemWithText:(id)a3;
- (id)variantIdentifier;
- (unint64_t)hash;
- (void)renderMonogramData;
- (void)setVisualIdentity:(id)a3;
- (void)updateVisualIdentity:(id)a3;
- (void)updateWithMonogramData:(id)a3;
@end

@implementation CNPhotoPickerMonogramProviderItem

- (unint64_t)hash
{
  v2 = MEMORY[0x1E6996730];
  aBlock[4] = self;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __41__CNPhotoPickerMonogramProviderItem_hash__block_invoke;
  v7[3] = &unk_1E74E6308;
  v7[4] = self;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __41__CNPhotoPickerMonogramProviderItem_hash__block_invoke_2;
  aBlock[3] = &unk_1E74E6308;
  v3 = _Block_copy(aBlock);
  v4 = [v2 hashWithBlocks:{v7, v3, 0}];

  return v4;
}

uint64_t __41__CNPhotoPickerMonogramProviderItem_hash__block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x1E6996730];
  v2 = [*(a1 + 32) visualIdentity];
  v3 = [v1 objectHash:v2];

  return v3;
}

uint64_t __41__CNPhotoPickerMonogramProviderItem_hash__block_invoke_2(uint64_t a1)
{
  v1 = MEMORY[0x1E6996730];
  v2 = [*(a1 + 32) renderingScope];
  v3 = [v2 color];
  v4 = [v3 colorName];
  v5 = [v1 objectHash:v4];

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x1E69966F0];
  v6 = objc_opt_class();
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __45__CNPhotoPickerMonogramProviderItem_isEqual___block_invoke;
  v16[3] = &unk_1E74E7460;
  v16[4] = self;
  v17 = v4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __45__CNPhotoPickerMonogramProviderItem_isEqual___block_invoke_2;
  aBlock[3] = &unk_1E74E7460;
  aBlock[4] = self;
  v7 = v17;
  v15 = v7;
  v8 = _Block_copy(aBlock);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __45__CNPhotoPickerMonogramProviderItem_isEqual___block_invoke_3;
  v12[3] = &unk_1E74E7460;
  v12[4] = self;
  v13 = v7;
  v9 = v7;
  v10 = _Block_copy(v12);
  LOBYTE(self) = [v5 isObject:v9 kindOfClass:v6 andEqualToObject:self withBlocks:{v16, v8, v10, 0}];

  return self;
}

uint64_t __45__CNPhotoPickerMonogramProviderItem_isEqual___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) visualIdentity];
  if (!v3)
  {
    v1 = [*(a1 + 40) visualIdentity];
    if (!v1)
    {
      v6 = 1;
LABEL_6:

      goto LABEL_7;
    }
  }

  v4 = [*(a1 + 32) visualIdentity];
  v5 = [*(a1 + 40) visualIdentity];
  v6 = [v4 isEqual:v5];

  if (!v3)
  {
    goto LABEL_6;
  }

LABEL_7:

  return v6;
}

uint64_t __45__CNPhotoPickerMonogramProviderItem_isEqual___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) renderingScope];
  v3 = [v2 color];
  v4 = [v3 colorName];
  if (!v4)
  {
    v16 = [*(a1 + 40) renderingScope];
    v15 = [v16 color];
    v5 = [v15 colorName];
    if (!v5)
    {
      v14 = 0;
      v12 = 1;
LABEL_7:

      goto LABEL_8;
    }

    v14 = v5;
  }

  v6 = [*(a1 + 32) renderingScope];
  v7 = [v6 color];
  v8 = [v7 colorName];
  v9 = [*(a1 + 40) renderingScope];
  v10 = [v9 color];
  v11 = [v10 colorName];
  v12 = [v8 isEqual:v11];

  if (!v4)
  {
    goto LABEL_7;
  }

LABEL_8:

  return v12;
}

- (id)updatedProviderItemWithText:(id)a3
{
  v4 = a3;
  v5 = [(CNPhotoPickerMonogramProviderItem *)self visualIdentity];
  [v5 setAbbreviatedName:v4];

  v6 = [(CNPhotoPickerMonogramProviderItem *)self renderingScope];
  v7 = [v6 color];
  v8 = [(CNPhotoPickerMonogramProviderItem *)self monogramVariantItemForColor:v7];

  return v8;
}

- (id)contactImageForMetadataStore
{
  v3 = objc_alloc(MEMORY[0x1E695CD88]);
  v4 = [(CNPhotoPickerMonogramProviderItem *)self imageData];
  v5 = [MEMORY[0x1E695DF00] date];
  v6 = [v3 initWithImageData:v4 cropRect:v5 lastUsedDate:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];

  [v6 setSource:1];
  v7 = [(CNPhotoPickerMonogramProviderItem *)self renderingScope];
  v8 = [v7 color];

  if (v8)
  {
    v9 = [(CNPhotoPickerMonogramProviderItem *)self renderingScope];
    v10 = [v9 color];
    v11 = [v10 colorName];
    [v6 setVariant:v11];
  }

  v12 = [(CNPhotoPickerMonogramProviderItem *)self monogramText];
  [v6 setDisplayString:v12];

  return v6;
}

- (id)createColorVariantItemsExcludingSelf
{
  v3 = [(CNPhotoPickerMonogramProviderItem *)self createColorVariantItems];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __73__CNPhotoPickerMonogramProviderItem_createColorVariantItemsExcludingSelf__block_invoke;
  v6[3] = &unk_1E74E66D0;
  v6[4] = self;
  v4 = [v3 _cn_filter:v6];

  return v4;
}

uint64_t __73__CNPhotoPickerMonogramProviderItem_createColorVariantItemsExcludingSelf__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 variantIdentifier];
  v5 = [v3 variantIdentifier];

  LODWORD(v3) = [v4 isEqualToString:v5];
  return v3 ^ 1;
}

- (id)createColorVariantItems
{
  v3 = [MEMORY[0x1E69BDC50] availableColors];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __60__CNPhotoPickerMonogramProviderItem_createColorVariantItems__block_invoke;
  v7[3] = &unk_1E74E5D78;
  v7[4] = self;
  v4 = [v3 _cn_map:v7];
  v5 = [v4 _cn_filter:&__block_literal_global_55132];

  return v5;
}

BOOL __60__CNPhotoPickerMonogramProviderItem_createColorVariantItems__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 monogramData];
  v3 = v2 != 0;

  return v3;
}

- (id)createVariantsItemsWithVariantsManager:(id)a3
{
  v9[1] = *MEMORY[0x1E69E9840];
  if ([(CNPhotoPickerMonogramProviderItem *)self allowsVariants])
  {
    v4 = [(CNPhotoPickerMonogramProviderItem *)self monogramVariantItemForColor:0];
    v9[0] = v4;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
    v6 = [(CNPhotoPickerMonogramProviderItem *)self createColorVariantItems];
    v7 = [v5 arrayByAddingObjectsFromArray:v6];
  }

  else
  {
    v7 = MEMORY[0x1E695E0F0];
  }

  return v7;
}

- (id)monogramVariantItemForColor:(id)a3
{
  v4 = a3;
  v5 = [(CNPhotoPickerMonogramProviderItem *)self renderingScope];
  [v5 pointSize];
  v7 = v6;
  v9 = v8;
  v10 = [(CNPhotoPickerMonogramProviderItem *)self renderingScope];
  [v10 scale];
  v12 = v11;
  v13 = [(CNPhotoPickerMonogramProviderItem *)self renderingScope];
  v14 = [v13 rightToLeft];
  v15 = [(CNPhotoPickerMonogramProviderItem *)self renderingScope];
  v16 = +[CNAvatarImageRenderingScope scopeWithPointSize:scale:rightToLeft:style:color:](CNAvatarImageRenderingScope, "scopeWithPointSize:scale:rightToLeft:style:color:", v14, [v15 avatarViewStyle], v4, v7, v9, v12);

  v17 = [CNPhotoPickerMonogramProviderItem alloc];
  v18 = [(CNPhotoPickerMonogramProviderItem *)self avatarRenderer];
  v19 = [(CNPhotoPickerMonogramProviderItem *)v17 initWithImageData:0 thumbnailImageData:0 fullscreenImageData:0 cropRect:v16 renderingScope:v18 avatarRenderer:1 isVariantOptionItem:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];

  v20 = [(CNPhotoPickerProviderItem *)self delegate];
  [(CNPhotoPickerProviderItem *)v19 setDelegate:v20];

  v21 = [(CNPhotoPickerMonogramProviderItem *)self visualIdentity];
  v22 = [v21 mutableCopy];
  [(CNPhotoPickerMonogramProviderItem *)v19 setVisualIdentity:v22];

  return v19;
}

- (void)updateVisualIdentity:(id)a3
{
  v10 = a3;
  [v10 clearImage];
  v4 = [(CNPhotoPickerMonogramProviderItem *)self monogramData];
  [v10 setImageData:v4];

  v5 = [(CNPhotoPickerMonogramProviderItem *)self monogramData];
  v6 = [v5 _cn_md5Hash];
  [v10 setImageHash:v6];

  v7 = [(CNPhotoPickerMonogramProviderItem *)self thumbnailImageData];
  [v10 setThumbnailImageData:v7];

  v8 = [(CNPhotoPickerMonogramProviderItem *)self visualIdentity];
  v9 = [v8 abbreviatedName];
  [v10 setAbbreviatedName:v9];

  [v10 updateImageType:2];
  [v10 setMemojiMetadata:0];
}

- (void)updateWithMonogramData:(id)a3
{
  [(CNPhotoPickerMonogramProviderItem *)self setMonogramData:a3];
  [(CNPhotoPickerProviderItem *)self clearThumbnailImage];
  v4 = [(CNPhotoPickerProviderItem *)self delegate];
  [v4 providerItemDidUpdate:self];
}

- (NSString)monogramText
{
  if (((*(*MEMORY[0x1E6996570] + 16))() & 1) == 0)
  {
    v3 = [(CNPhotoPickerMonogramProviderItem *)self visualIdentity];
    v4 = [v3 abbreviatedName];
    monogramText = self->_monogramText;
    self->_monogramText = v4;
  }

  v6 = self->_monogramText;

  return v6;
}

- (void)renderMonogramData
{
  v3 = [(CNPhotoPickerMonogramProviderItem *)self generateMonogramData];
  [(CNPhotoPickerMonogramProviderItem *)self updateWithMonogramData:v3];
}

- (id)generateMonogramData
{
  v2 = [(CNPhotoPickerMonogramProviderItem *)self generateMonogramImage];
  v3 = UIImagePNGRepresentation(v2);

  return v3;
}

- (id)generateMonogramImage
{
  v3 = [(CNPhotoPickerMonogramProviderItem *)self isVariantOptionItem];
  if (v3)
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  v5 = *MEMORY[0x1E6996568];
  v6 = [(CNPhotoPickerMonogramProviderItem *)self monogramText];
  if ((*(v5 + 16))(v5, v6))
  {
    v7 = [(CNPhotoPickerMonogramProviderItem *)self visualIdentity];
    v8 = [v7 abbreviatedName];
  }

  else
  {
    v8 = [(CNPhotoPickerMonogramProviderItem *)self monogramText];
  }

  if (v3 && (*(v5 + 16))(v5, v8))
  {
    v9 = [(CNPhotoPickerMonogramProviderItem *)self renderingScope];
    v10 = [v9 color];
    v11 = [v10 color];
    v12 = [CNPhotoPickerVariantsManager monogramColorGradientBackground:v11];
  }

  else
  {
    v9 = [(CNPhotoPickerMonogramProviderItem *)self avatarRenderer];
    v10 = [(CNPhotoPickerMonogramProviderItem *)self renderingScope];
    v11 = [v10 color];
    v13 = [(CNPhotoPickerMonogramProviderItem *)self renderingScope];
    v12 = [v9 renderMonogramForString:v8 color:v11 scope:v13 prohibitedSources:v4];
  }

  return v12;
}

- (id)generateThumbnailImageDataIfNeeded
{
  v3 = [(CNPhotoPickerMonogramProviderItem *)self monogramData];
  if (v3)
  {
  }

  else if (![(CNPhotoPickerMonogramProviderItem *)self isContactImage])
  {
    [(CNPhotoPickerMonogramProviderItem *)self renderMonogramData];
  }

  return [(CNPhotoPickerMonogramProviderItem *)self thumbnailImageData];
}

- (id)thumbnailImageData
{
  v3 = [(CNPhotoPickerMonogramProviderItem *)self monogramData];
  if (v3 && (v4 = v3, v5 = [(CNPhotoPickerMonogramProviderItem *)self isContactImage], v4, !v5))
  {
    v6 = [(CNPhotoPickerMonogramProviderItem *)self monogramData];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = CNPhotoPickerMonogramProviderItem;
    v6 = [(CNPhotoPickerProviderItem *)&v8 thumbnailImageData];
  }

  return v6;
}

- (id)imageData
{
  v3 = [(CNPhotoPickerMonogramProviderItem *)self monogramData];
  if (v3 && (v4 = v3, v5 = [(CNPhotoPickerMonogramProviderItem *)self isContactImage], v4, !v5))
  {
    v6 = [(CNPhotoPickerMonogramProviderItem *)self monogramData];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = CNPhotoPickerMonogramProviderItem;
    v6 = [(CNPhotoPickerProviderItem *)&v8 imageData];
  }

  return v6;
}

- (id)variantIdentifier
{
  v2 = [(CNPhotoPickerMonogramProviderItem *)self renderingScope];
  v3 = [v2 color];
  v4 = [v3 colorName];

  return v4;
}

- (id)localizedVariantsTitle
{
  v2 = CNContactsUIBundle();
  v3 = [v2 localizedStringForKey:@"PHOTO_SELECT_COLOR" value:&stru_1F0CE7398 table:@"Localized"];

  return v3;
}

- (BOOL)isGrayMonogramItem
{
  v2 = [(CNPhotoPickerMonogramProviderItem *)self renderingScope];
  v3 = [v2 color];
  v4 = v3 == 0;

  return v4;
}

- (BOOL)allowsEditing
{
  if ([(CNPhotoPickerMonogramProviderItem *)self allowsVariants]|| (v3 = [(CNPhotoPickerMonogramProviderItem *)self allowsMoveAndScale]))
  {
    v5.receiver = self;
    v5.super_class = CNPhotoPickerMonogramProviderItem;
    LOBYTE(v3) = [(CNPhotoPickerProviderItem *)&v5 allowsEditing];
  }

  return v3;
}

- (UIColor)backgroundColor
{
  v3 = objc_alloc(MEMORY[0x1E69BDC50]);
  v4 = [(CNPhotoPickerMonogramProviderItem *)self renderingScope];
  v5 = [v4 color];
  v6 = [v5 colorName];
  v7 = [v3 initWithColorName:v6];
  v8 = [v7 color];

  if (!v8)
  {
    v8 = [MEMORY[0x1E69BDC50] defaultGradientStartColor];
  }

  return v8;
}

- (BOOL)allowsVariants
{
  v3 = [(CNPhotoPickerMonogramProviderItem *)self monogramVariantItemForColor:0];
  v4 = [v3 monogramData];
  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v5 = [(CNPhotoPickerMonogramProviderItem *)self isVariantOptionItem];
  }

  return v5;
}

- (void)setVisualIdentity:(id)a3
{
  objc_storeStrong(&self->_visualIdentity, a3);

  [(CNPhotoPickerMonogramProviderItem *)self renderMonogramData];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v10.receiver = self;
  v10.super_class = CNPhotoPickerMonogramProviderItem;
  v4 = [(CNPhotoPickerProviderItem *)&v10 copyWithZone:a3];
  v5 = [(CNPhotoPickerMonogramProviderItem *)self renderingScope];
  [v4 setRenderingScope:v5];

  v6 = [(CNPhotoPickerMonogramProviderItem *)self avatarRenderer];
  [v4 setAvatarRenderer:v6];

  v7 = [(CNPhotoPickerMonogramProviderItem *)self visualIdentity];
  [v4 setVisualIdentity:v7];

  v8 = [(CNPhotoPickerMonogramProviderItem *)self monogramData];
  [v4 setMonogramData:v8];

  [v4 setIsVariantOptionItem:{-[CNPhotoPickerMonogramProviderItem isVariantOptionItem](self, "isVariantOptionItem")}];
  return v4;
}

- (CNPhotoPickerMonogramProviderItem)initWithImageData:(id)a3 thumbnailImageData:(id)a4 fullscreenImageData:(id)a5 cropRect:(CGRect)a6 renderingScope:(id)a7 avatarRenderer:(id)a8 isVariantOptionItem:(BOOL)a9
{
  height = a6.size.height;
  width = a6.size.width;
  y = a6.origin.y;
  x = a6.origin.x;
  v17 = a7;
  v18 = a8;
  v19 = [(CNPhotoPickerMonogramProviderItem *)self imageData];
  v23.receiver = self;
  v23.super_class = CNPhotoPickerMonogramProviderItem;
  v20 = [(CNPhotoPickerProviderItem *)&v23 initWithImageData:v19 thumbnailImageData:0 fullscreenImageData:0 cropRect:x, y, width, height];

  if (v20)
  {
    objc_storeStrong(&v20->_renderingScope, a7);
    objc_storeStrong(&v20->_avatarRenderer, a8);
    v20->_isVariantOptionItem = a9;
    v21 = v20;
  }

  return v20;
}

@end