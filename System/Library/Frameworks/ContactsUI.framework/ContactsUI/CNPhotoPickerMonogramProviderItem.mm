@interface CNPhotoPickerMonogramProviderItem
- (BOOL)allowsEditing;
- (BOOL)allowsVariants;
- (BOOL)isEqual:(id)equal;
- (BOOL)isGrayMonogramItem;
- (CNPhotoPickerMonogramProviderItem)initWithImageData:(id)data thumbnailImageData:(id)imageData fullscreenImageData:(id)fullscreenImageData cropRect:(CGRect)rect renderingScope:(id)scope avatarRenderer:(id)renderer isVariantOptionItem:(BOOL)item;
- (NSString)monogramText;
- (UIColor)backgroundColor;
- (id)contactImageForMetadataStore;
- (id)copyWithZone:(_NSZone *)zone;
- (id)createColorVariantItems;
- (id)createColorVariantItemsExcludingSelf;
- (id)createVariantsItemsWithVariantsManager:(id)manager;
- (id)generateMonogramData;
- (id)generateMonogramImage;
- (id)generateThumbnailImageDataIfNeeded;
- (id)imageData;
- (id)localizedVariantsTitle;
- (id)monogramVariantItemForColor:(id)color;
- (id)thumbnailImageData;
- (id)updatedProviderItemWithText:(id)text;
- (id)variantIdentifier;
- (unint64_t)hash;
- (void)renderMonogramData;
- (void)setVisualIdentity:(id)identity;
- (void)updateVisualIdentity:(id)identity;
- (void)updateWithMonogramData:(id)data;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = MEMORY[0x1E69966F0];
  v6 = objc_opt_class();
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __45__CNPhotoPickerMonogramProviderItem_isEqual___block_invoke;
  v16[3] = &unk_1E74E7460;
  v16[4] = self;
  v17 = equalCopy;
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

- (id)updatedProviderItemWithText:(id)text
{
  textCopy = text;
  visualIdentity = [(CNPhotoPickerMonogramProviderItem *)self visualIdentity];
  [visualIdentity setAbbreviatedName:textCopy];

  renderingScope = [(CNPhotoPickerMonogramProviderItem *)self renderingScope];
  color = [renderingScope color];
  v8 = [(CNPhotoPickerMonogramProviderItem *)self monogramVariantItemForColor:color];

  return v8;
}

- (id)contactImageForMetadataStore
{
  v3 = objc_alloc(MEMORY[0x1E695CD88]);
  imageData = [(CNPhotoPickerMonogramProviderItem *)self imageData];
  date = [MEMORY[0x1E695DF00] date];
  v6 = [v3 initWithImageData:imageData cropRect:date lastUsedDate:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];

  [v6 setSource:1];
  renderingScope = [(CNPhotoPickerMonogramProviderItem *)self renderingScope];
  color = [renderingScope color];

  if (color)
  {
    renderingScope2 = [(CNPhotoPickerMonogramProviderItem *)self renderingScope];
    color2 = [renderingScope2 color];
    colorName = [color2 colorName];
    [v6 setVariant:colorName];
  }

  monogramText = [(CNPhotoPickerMonogramProviderItem *)self monogramText];
  [v6 setDisplayString:monogramText];

  return v6;
}

- (id)createColorVariantItemsExcludingSelf
{
  createColorVariantItems = [(CNPhotoPickerMonogramProviderItem *)self createColorVariantItems];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __73__CNPhotoPickerMonogramProviderItem_createColorVariantItemsExcludingSelf__block_invoke;
  v6[3] = &unk_1E74E66D0;
  v6[4] = self;
  v4 = [createColorVariantItems _cn_filter:v6];

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
  availableColors = [MEMORY[0x1E69BDC50] availableColors];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __60__CNPhotoPickerMonogramProviderItem_createColorVariantItems__block_invoke;
  v7[3] = &unk_1E74E5D78;
  v7[4] = self;
  v4 = [availableColors _cn_map:v7];
  v5 = [v4 _cn_filter:&__block_literal_global_55132];

  return v5;
}

BOOL __60__CNPhotoPickerMonogramProviderItem_createColorVariantItems__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 monogramData];
  v3 = v2 != 0;

  return v3;
}

- (id)createVariantsItemsWithVariantsManager:(id)manager
{
  v9[1] = *MEMORY[0x1E69E9840];
  if ([(CNPhotoPickerMonogramProviderItem *)self allowsVariants])
  {
    v4 = [(CNPhotoPickerMonogramProviderItem *)self monogramVariantItemForColor:0];
    v9[0] = v4;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
    createColorVariantItems = [(CNPhotoPickerMonogramProviderItem *)self createColorVariantItems];
    v7 = [v5 arrayByAddingObjectsFromArray:createColorVariantItems];
  }

  else
  {
    v7 = MEMORY[0x1E695E0F0];
  }

  return v7;
}

- (id)monogramVariantItemForColor:(id)color
{
  colorCopy = color;
  renderingScope = [(CNPhotoPickerMonogramProviderItem *)self renderingScope];
  [renderingScope pointSize];
  v7 = v6;
  v9 = v8;
  renderingScope2 = [(CNPhotoPickerMonogramProviderItem *)self renderingScope];
  [renderingScope2 scale];
  v12 = v11;
  renderingScope3 = [(CNPhotoPickerMonogramProviderItem *)self renderingScope];
  rightToLeft = [renderingScope3 rightToLeft];
  renderingScope4 = [(CNPhotoPickerMonogramProviderItem *)self renderingScope];
  v16 = +[CNAvatarImageRenderingScope scopeWithPointSize:scale:rightToLeft:style:color:](CNAvatarImageRenderingScope, "scopeWithPointSize:scale:rightToLeft:style:color:", rightToLeft, [renderingScope4 avatarViewStyle], colorCopy, v7, v9, v12);

  v17 = [CNPhotoPickerMonogramProviderItem alloc];
  avatarRenderer = [(CNPhotoPickerMonogramProviderItem *)self avatarRenderer];
  v19 = [(CNPhotoPickerMonogramProviderItem *)v17 initWithImageData:0 thumbnailImageData:0 fullscreenImageData:0 cropRect:v16 renderingScope:avatarRenderer avatarRenderer:1 isVariantOptionItem:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];

  delegate = [(CNPhotoPickerProviderItem *)self delegate];
  [(CNPhotoPickerProviderItem *)v19 setDelegate:delegate];

  visualIdentity = [(CNPhotoPickerMonogramProviderItem *)self visualIdentity];
  v22 = [visualIdentity mutableCopy];
  [(CNPhotoPickerMonogramProviderItem *)v19 setVisualIdentity:v22];

  return v19;
}

- (void)updateVisualIdentity:(id)identity
{
  identityCopy = identity;
  [identityCopy clearImage];
  monogramData = [(CNPhotoPickerMonogramProviderItem *)self monogramData];
  [identityCopy setImageData:monogramData];

  monogramData2 = [(CNPhotoPickerMonogramProviderItem *)self monogramData];
  _cn_md5Hash = [monogramData2 _cn_md5Hash];
  [identityCopy setImageHash:_cn_md5Hash];

  thumbnailImageData = [(CNPhotoPickerMonogramProviderItem *)self thumbnailImageData];
  [identityCopy setThumbnailImageData:thumbnailImageData];

  visualIdentity = [(CNPhotoPickerMonogramProviderItem *)self visualIdentity];
  abbreviatedName = [visualIdentity abbreviatedName];
  [identityCopy setAbbreviatedName:abbreviatedName];

  [identityCopy updateImageType:2];
  [identityCopy setMemojiMetadata:0];
}

- (void)updateWithMonogramData:(id)data
{
  [(CNPhotoPickerMonogramProviderItem *)self setMonogramData:data];
  [(CNPhotoPickerProviderItem *)self clearThumbnailImage];
  delegate = [(CNPhotoPickerProviderItem *)self delegate];
  [delegate providerItemDidUpdate:self];
}

- (NSString)monogramText
{
  if (((*(*MEMORY[0x1E6996570] + 16))() & 1) == 0)
  {
    visualIdentity = [(CNPhotoPickerMonogramProviderItem *)self visualIdentity];
    abbreviatedName = [visualIdentity abbreviatedName];
    monogramText = self->_monogramText;
    self->_monogramText = abbreviatedName;
  }

  v6 = self->_monogramText;

  return v6;
}

- (void)renderMonogramData
{
  generateMonogramData = [(CNPhotoPickerMonogramProviderItem *)self generateMonogramData];
  [(CNPhotoPickerMonogramProviderItem *)self updateWithMonogramData:generateMonogramData];
}

- (id)generateMonogramData
{
  generateMonogramImage = [(CNPhotoPickerMonogramProviderItem *)self generateMonogramImage];
  v3 = UIImagePNGRepresentation(generateMonogramImage);

  return v3;
}

- (id)generateMonogramImage
{
  isVariantOptionItem = [(CNPhotoPickerMonogramProviderItem *)self isVariantOptionItem];
  if (isVariantOptionItem)
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  v5 = *MEMORY[0x1E6996568];
  monogramText = [(CNPhotoPickerMonogramProviderItem *)self monogramText];
  if ((*(v5 + 16))(v5, monogramText))
  {
    visualIdentity = [(CNPhotoPickerMonogramProviderItem *)self visualIdentity];
    abbreviatedName = [visualIdentity abbreviatedName];
  }

  else
  {
    abbreviatedName = [(CNPhotoPickerMonogramProviderItem *)self monogramText];
  }

  if (isVariantOptionItem && (*(v5 + 16))(v5, abbreviatedName))
  {
    renderingScope = [(CNPhotoPickerMonogramProviderItem *)self renderingScope];
    color = [renderingScope color];
    v10Color = [color color];
    v12 = [CNPhotoPickerVariantsManager monogramColorGradientBackground:v10Color];
  }

  else
  {
    renderingScope = [(CNPhotoPickerMonogramProviderItem *)self avatarRenderer];
    color = [(CNPhotoPickerMonogramProviderItem *)self renderingScope];
    v10Color = [color color];
    renderingScope2 = [(CNPhotoPickerMonogramProviderItem *)self renderingScope];
    v12 = [renderingScope renderMonogramForString:abbreviatedName color:v10Color scope:renderingScope2 prohibitedSources:v4];
  }

  return v12;
}

- (id)generateThumbnailImageDataIfNeeded
{
  monogramData = [(CNPhotoPickerMonogramProviderItem *)self monogramData];
  if (monogramData)
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
  monogramData = [(CNPhotoPickerMonogramProviderItem *)self monogramData];
  if (monogramData && (v4 = monogramData, v5 = [(CNPhotoPickerMonogramProviderItem *)self isContactImage], v4, !v5))
  {
    monogramData2 = [(CNPhotoPickerMonogramProviderItem *)self monogramData];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = CNPhotoPickerMonogramProviderItem;
    monogramData2 = [(CNPhotoPickerProviderItem *)&v8 thumbnailImageData];
  }

  return monogramData2;
}

- (id)imageData
{
  monogramData = [(CNPhotoPickerMonogramProviderItem *)self monogramData];
  if (monogramData && (v4 = monogramData, v5 = [(CNPhotoPickerMonogramProviderItem *)self isContactImage], v4, !v5))
  {
    monogramData2 = [(CNPhotoPickerMonogramProviderItem *)self monogramData];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = CNPhotoPickerMonogramProviderItem;
    monogramData2 = [(CNPhotoPickerProviderItem *)&v8 imageData];
  }

  return monogramData2;
}

- (id)variantIdentifier
{
  renderingScope = [(CNPhotoPickerMonogramProviderItem *)self renderingScope];
  color = [renderingScope color];
  colorName = [color colorName];

  return colorName;
}

- (id)localizedVariantsTitle
{
  v2 = CNContactsUIBundle();
  v3 = [v2 localizedStringForKey:@"PHOTO_SELECT_COLOR" value:&stru_1F0CE7398 table:@"Localized"];

  return v3;
}

- (BOOL)isGrayMonogramItem
{
  renderingScope = [(CNPhotoPickerMonogramProviderItem *)self renderingScope];
  color = [renderingScope color];
  v4 = color == 0;

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
  renderingScope = [(CNPhotoPickerMonogramProviderItem *)self renderingScope];
  color = [renderingScope color];
  colorName = [color colorName];
  v7 = [v3 initWithColorName:colorName];
  color2 = [v7 color];

  if (!color2)
  {
    color2 = [MEMORY[0x1E69BDC50] defaultGradientStartColor];
  }

  return color2;
}

- (BOOL)allowsVariants
{
  v3 = [(CNPhotoPickerMonogramProviderItem *)self monogramVariantItemForColor:0];
  monogramData = [v3 monogramData];
  if (monogramData)
  {
    isVariantOptionItem = 1;
  }

  else
  {
    isVariantOptionItem = [(CNPhotoPickerMonogramProviderItem *)self isVariantOptionItem];
  }

  return isVariantOptionItem;
}

- (void)setVisualIdentity:(id)identity
{
  objc_storeStrong(&self->_visualIdentity, identity);

  [(CNPhotoPickerMonogramProviderItem *)self renderMonogramData];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v10.receiver = self;
  v10.super_class = CNPhotoPickerMonogramProviderItem;
  v4 = [(CNPhotoPickerProviderItem *)&v10 copyWithZone:zone];
  renderingScope = [(CNPhotoPickerMonogramProviderItem *)self renderingScope];
  [v4 setRenderingScope:renderingScope];

  avatarRenderer = [(CNPhotoPickerMonogramProviderItem *)self avatarRenderer];
  [v4 setAvatarRenderer:avatarRenderer];

  visualIdentity = [(CNPhotoPickerMonogramProviderItem *)self visualIdentity];
  [v4 setVisualIdentity:visualIdentity];

  monogramData = [(CNPhotoPickerMonogramProviderItem *)self monogramData];
  [v4 setMonogramData:monogramData];

  [v4 setIsVariantOptionItem:{-[CNPhotoPickerMonogramProviderItem isVariantOptionItem](self, "isVariantOptionItem")}];
  return v4;
}

- (CNPhotoPickerMonogramProviderItem)initWithImageData:(id)data thumbnailImageData:(id)imageData fullscreenImageData:(id)fullscreenImageData cropRect:(CGRect)rect renderingScope:(id)scope avatarRenderer:(id)renderer isVariantOptionItem:(BOOL)item
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  scopeCopy = scope;
  rendererCopy = renderer;
  imageData = [(CNPhotoPickerMonogramProviderItem *)self imageData];
  v23.receiver = self;
  v23.super_class = CNPhotoPickerMonogramProviderItem;
  height = [(CNPhotoPickerProviderItem *)&v23 initWithImageData:imageData thumbnailImageData:0 fullscreenImageData:0 cropRect:x, y, width, height];

  if (height)
  {
    objc_storeStrong(&height->_renderingScope, scope);
    objc_storeStrong(&height->_avatarRenderer, renderer);
    height->_isVariantOptionItem = item;
    v21 = height;
  }

  return height;
}

@end