@interface CPListItem
+ (CGSize)maximumImageSize;
+ (void)_setMaximumImageSize:(CGSize)size;
- (BOOL)isEqual:(id)equal;
- (CPListItem)initWithCoder:(id)coder;
- (CPListItem)initWithText:(NSString *)text detailText:(NSString *)detailText;
- (CPListItem)initWithText:(NSString *)text detailText:(NSString *)detailText image:(UIImage *)image;
- (CPListItem)initWithText:(NSString *)text detailText:(NSString *)detailText image:(UIImage *)image accessoryImage:(UIImage *)accessoryImage accessoryType:(CPListItemAccessoryType)accessoryType;
- (CPListTemplate)listTemplate;
- (NSString)description;
- (UIImage)accessoryImage;
- (UIImage)image;
- (unint64_t)hash;
- (void)_setNeedsUpdate;
- (void)encodeWithCoder:(id)coder;
- (void)setAccessoryImage:(UIImage *)accessoryImage;
- (void)setAccessoryType:(CPListItemAccessoryType)accessoryType;
- (void)setDetailText:(NSString *)detailText;
- (void)setEnabled:(BOOL)enabled;
- (void)setExplicitContent:(BOOL)explicitContent;
- (void)setImage:(UIImage *)image;
- (void)setPlaying:(BOOL)playing;
- (void)setPlayingIndicatorLocation:(CPListItemPlayingIndicatorLocation)playingIndicatorLocation;
- (void)setShowsDisclosureIndicator:(BOOL)indicator;
- (void)setText:(NSString *)text;
@end

@implementation CPListItem

+ (void)_setMaximumImageSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v11 = *MEMORY[0x277D85DE8];
  v5 = CarPlayFrameworkGeneralLogging();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v7 = 134349312;
    v8 = width;
    v9 = 2050;
    v10 = height;
    _os_log_impl(&dword_236ED4000, v5, OS_LOG_TYPE_INFO, "CPListItem setting maxImageSize (%{public}f,%{public}f)", &v7, 0x16u);
  }

  _maximumImageSize_0 = *&width;
  _maximumImageSize_1 = *&height;
  v6 = *MEMORY[0x277D85DE8];
}

+ (CGSize)maximumImageSize
{
  v2 = *&_maximumImageSize_0;
  v3 = *&_maximumImageSize_1;
  if (*&_maximumImageSize_0 == *MEMORY[0x277CBF3A8] && *&_maximumImageSize_1 == *(MEMORY[0x277CBF3A8] + 8))
  {
    HasMapsEntitlement = CPCurrentProcessHasMapsEntitlement();
    v2 = 44.0;
    if (HasMapsEntitlement)
    {
      v2 = 30.0;
    }

    v3 = v2;
  }

  result.height = v3;
  result.width = v2;
  return result;
}

- (CPListItem)initWithText:(NSString *)text detailText:(NSString *)detailText
{
  v7 = text;
  v8 = detailText;
  v13.receiver = self;
  v13.super_class = CPListItem;
  v9 = [(CPListItem *)&v13 init];
  if (v9)
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    identifier = v9->_identifier;
    v9->_identifier = uUID;

    objc_storeStrong(&v9->_text, text);
    objc_storeStrong(&v9->_detailText, detailText);
    v9->_enabled = 1;
  }

  return v9;
}

- (CPListItem)initWithText:(NSString *)text detailText:(NSString *)detailText image:(UIImage *)image
{
  v8 = image;
  v9 = [(CPListItem *)self initWithText:text detailText:detailText];
  v10 = v9;
  if (v8 && v9)
  {
    v11 = [CPImageSet alloc];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __44__CPListItem_initWithText_detailText_image___block_invoke;
    v16[3] = &unk_278A11190;
    v12 = v10;
    v17 = v12;
    v13 = [(CPImageSet *)v11 initWithImage:v8 treatmentBlock:v16];
    imageSet = v12->_imageSet;
    v12->_imageSet = v13;
  }

  return v10;
}

id __44__CPListItem_initWithText_detailText_image___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [objc_opt_class() maximumImageSize];
  v6 = CPImageByScalingImageToSize(v3, v4, v5);

  return v6;
}

- (CPListItem)initWithText:(NSString *)text detailText:(NSString *)detailText image:(UIImage *)image accessoryImage:(UIImage *)accessoryImage accessoryType:(CPListItemAccessoryType)accessoryType
{
  v12 = accessoryImage;
  v13 = [(CPListItem *)self initWithText:text detailText:detailText image:image];
  v14 = v13;
  if (v13)
  {
    if (v12)
    {
      v15 = [CPImageSet alloc];
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __73__CPListItem_initWithText_detailText_image_accessoryImage_accessoryType___block_invoke;
      v20[3] = &unk_278A11190;
      v16 = v14;
      v21 = v16;
      v17 = [(CPImageSet *)v15 initWithImage:v12 treatmentBlock:v20];
      accessoryImageSet = v16->_accessoryImageSet;
      v16->_accessoryImageSet = v17;

      v16->_accessoryType = 0;
    }

    else
    {
      v13->_accessoryType = accessoryType;
    }
  }

  return v14;
}

id __73__CPListItem_initWithText_detailText_image_accessoryImage_accessoryType___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [objc_opt_class() maximumImageSize];
  v6 = CPImageByScalingImageToSize(v3, v4, v5);

  return v6;
}

- (CPListItem)initWithCoder:(id)coder
{
  coderCopy = coder;
  v18.receiver = self;
  v18.super_class = CPListItem;
  v5 = [(CPListItem *)&v18 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kCPListItemTextKey"];
    text = v5->_text;
    v5->_text = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kCPListItemIdentifierKey"];
    identifier = v5->_identifier;
    v5->_identifier = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kCPListItemDetailTextKey"];
    detailText = v5->_detailText;
    v5->_detailText = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kCPListItemImageKey"];
    imageSet = v5->_imageSet;
    v5->_imageSet = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kCPListItemAccessoryImageSetKey"];
    accessoryImageSet = v5->_accessoryImageSet;
    v5->_accessoryImageSet = v14;

    v5->_explicitContent = [coderCopy decodeBoolForKey:@"kCPListItemExplicitLabelKey"];
    v5->_accessoryType = [coderCopy decodeIntegerForKey:@"kCPListItemAccessoryTypeKey"];
    [coderCopy decodeFloatForKey:@"kCPListItemProgressBarKey"];
    v5->_playbackProgress = v16;
    v5->_playing = [coderCopy decodeBoolForKey:@"kCPListItemPlayingKey"];
    v5->_playingIndicatorLocation = [coderCopy decodeIntegerForKey:@"kCPListItemPlayingIndicatorLocationKey"];
    v5->_enabled = [coderCopy decodeBoolForKey:@"kCPListItemEnabledKey"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  text = [(CPListItem *)self text];
  [coderCopy encodeObject:text forKey:@"kCPListItemTextKey"];

  identifier = [(CPListItem *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"kCPListItemIdentifierKey"];

  detailText = [(CPListItem *)self detailText];
  [coderCopy encodeObject:detailText forKey:@"kCPListItemDetailTextKey"];

  imageSet = [(CPListItem *)self imageSet];
  [coderCopy encodeObject:imageSet forKey:@"kCPListItemImageKey"];

  accessoryImageSet = [(CPListItem *)self accessoryImageSet];
  [coderCopy encodeObject:accessoryImageSet forKey:@"kCPListItemAccessoryImageSetKey"];

  [coderCopy encodeBool:-[CPListItem isExplicitContent](self forKey:{"isExplicitContent"), @"kCPListItemExplicitLabelKey"}];
  [coderCopy encodeInteger:-[CPListItem accessoryType](self forKey:{"accessoryType"), @"kCPListItemAccessoryTypeKey"}];
  [(CPListItem *)self playbackProgress];
  *&v9 = v9;
  [coderCopy encodeFloat:@"kCPListItemProgressBarKey" forKey:v9];
  [coderCopy encodeBool:-[CPListItem isPlaying](self forKey:{"isPlaying"), @"kCPListItemPlayingKey"}];
  [coderCopy encodeInteger:-[CPListItem playingIndicatorLocation](self forKey:{"playingIndicatorLocation"), @"kCPListItemPlayingIndicatorLocationKey"}];
  [coderCopy encodeBool:-[CPListItem isEnabled](self forKey:{"isEnabled"), @"kCPListItemEnabledKey"}];
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v12.receiver = self;
  v12.super_class = CPListItem;
  v4 = [(CPListItem *)&v12 description];
  identifier = [(CPListItem *)self identifier];
  text = [(CPListItem *)self text];
  detailText = self->_detailText;
  imageSet = self->_imageSet;
  v9 = [MEMORY[0x277CCABB0] numberWithInteger:{-[CPListItem accessoryType](self, "accessoryType")}];
  v10 = [v3 stringWithFormat:@"%@: {identifier: %@, text: %@, detailText: %@, image: %@, accessory: %@}", v4, identifier, text, detailText, imageSet, v9];

  return v10;
}

- (UIImage)image
{
  imageSet = [(CPListItem *)self imageSet];
  image = [imageSet image];

  return image;
}

- (UIImage)accessoryImage
{
  accessoryImageSet = [(CPListItem *)self accessoryImageSet];
  image = [accessoryImageSet image];

  return image;
}

- (void)setEnabled:(BOOL)enabled
{
  if (self->_enabled != enabled)
  {
    self->_enabled = enabled;
    [(CPListItem *)self _setNeedsUpdate];
  }
}

- (void)setText:(NSString *)text
{
  v5 = text;
  if (![(NSString *)self->_text isEqualToString:?])
  {
    objc_storeStrong(&self->_text, text);
    [(CPListItem *)self _setNeedsUpdate];
  }
}

- (void)_setNeedsUpdate
{
  listTemplate = [(CPListItem *)self listTemplate];
  [listTemplate _setItemNeedsUpdate:self];
}

- (void)setDetailText:(NSString *)detailText
{
  v5 = detailText;
  if (![(NSString *)self->_detailText isEqualToString:?])
  {
    objc_storeStrong(&self->_detailText, detailText);
    [(CPListItem *)self _setNeedsUpdate];
  }
}

- (void)setImage:(UIImage *)image
{
  v4 = image;
  if (v4)
  {
    v5 = [CPImageSet alloc];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __23__CPListItem_setImage___block_invoke;
    v8[3] = &unk_278A11190;
    v8[4] = self;
    v6 = [(CPImageSet *)v5 initWithImage:v4 treatmentBlock:v8];
    imageSet = self->_imageSet;
    self->_imageSet = v6;
LABEL_5:

    [(CPListItem *)self _setNeedsUpdate];
    goto LABEL_6;
  }

  imageSet = self->_imageSet;
  if (imageSet)
  {
    self->_imageSet = 0;
    goto LABEL_5;
  }

LABEL_6:
}

id __23__CPListItem_setImage___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [objc_opt_class() maximumImageSize];
  v6 = CPImageByScalingImageToSize(v3, v4, v5);

  return v6;
}

- (void)setAccessoryImage:(UIImage *)accessoryImage
{
  v4 = accessoryImage;
  if (v4)
  {
    v5 = [CPImageSet alloc];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __32__CPListItem_setAccessoryImage___block_invoke;
    v9[3] = &unk_278A11190;
    v9[4] = self;
    v6 = [(CPImageSet *)v5 initWithImage:v4 treatmentBlock:v9];
    accessoryImageSet = self->_accessoryImageSet;
    self->_accessoryImageSet = v6;

    self->_accessoryType = 0;
LABEL_5:
    [(CPListItem *)self _setNeedsUpdate];
    goto LABEL_6;
  }

  v8 = self->_accessoryImageSet;
  if (v8)
  {
    self->_accessoryImageSet = 0;

    goto LABEL_5;
  }

LABEL_6:
}

id __32__CPListItem_setAccessoryImage___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [objc_opt_class() maximumImageSize];
  v6 = CPImageByScalingImageToSize(v3, v4, v5);

  return v6;
}

- (void)setPlaying:(BOOL)playing
{
  if (self->_playing != playing)
  {
    self->_playing = playing;
    [(CPListItem *)self _setNeedsUpdate];
  }
}

- (void)setPlayingIndicatorLocation:(CPListItemPlayingIndicatorLocation)playingIndicatorLocation
{
  if (self->_playingIndicatorLocation != playingIndicatorLocation)
  {
    self->_playingIndicatorLocation = playingIndicatorLocation;
    [(CPListItem *)self _setNeedsUpdate];
  }
}

- (void)setExplicitContent:(BOOL)explicitContent
{
  if (self->_explicitContent != explicitContent)
  {
    self->_explicitContent = explicitContent;
    [(CPListItem *)self _setNeedsUpdate];
  }
}

- (void)setAccessoryType:(CPListItemAccessoryType)accessoryType
{
  if (self->_accessoryType != accessoryType)
  {
    self->_accessoryType = accessoryType;
    [(CPListItem *)self _setNeedsUpdate];
  }
}

- (void)setShowsDisclosureIndicator:(BOOL)indicator
{
  self->_showsDisclosureIndicator = indicator;
  if (indicator)
  {
    self->_accessoryType = 1;
  }
}

- (unint64_t)hash
{
  text = [(CPListItem *)self text];
  v4 = [text hash];
  detailText = [(CPListItem *)self detailText];
  v6 = [detailText hash] ^ v4;
  identifier = [(CPListItem *)self identifier];
  v8 = [identifier hash];

  return v6 ^ v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    text = [equalCopy text];
    text2 = [(CPListItem *)self text];
    if ([text isEqualToString:text2])
    {
      detailText = [equalCopy detailText];
      detailText2 = [(CPListItem *)self detailText];
      v9 = [detailText isEqualToString:detailText2];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (CPListTemplate)listTemplate
{
  WeakRetained = objc_loadWeakRetained(&self->_listTemplate);

  return WeakRetained;
}

@end