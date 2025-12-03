@interface CPListImageRowItemElement
+ (CGSize)maximumImageSize;
+ (id)convertImage:(id)image;
+ (void)_setMaximumImageSize:(CGSize)size;
- (CPListImageRowItem)rowItem;
- (CPListImageRowItemElement)initWithCoder:(id)coder;
- (CPListImageRowItemElement)initWithImage:(id)image;
- (CPListImageRowItemElement)initWithImageSet:(id)set;
- (UIImage)image;
- (void)_setNeedsUpdate;
- (void)encodeWithCoder:(id)coder;
- (void)setEnabled:(BOOL)enabled;
- (void)setImage:(id)image;
@end

@implementation CPListImageRowItemElement

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
    _os_log_impl(&dword_236ED4000, v5, OS_LOG_TYPE_INFO, "CPListImageRowItemElement setting maxImageSize (%{public}f,%{public}f)", &v7, 0x16u);
  }

  _maximumImageSize_0_1 = *&width;
  _maximumImageSize_1_1 = *&height;
  v6 = *MEMORY[0x277D85DE8];
}

- (CPListImageRowItemElement)initWithImage:(id)image
{
  imageCopy = image;
  v5 = objc_opt_class();
  v6 = [imageCopy copy];

  v7 = [v5 convertImage:v6];
  v8 = [(CPListImageRowItemElement *)self initWithImageSet:v7];

  return v8;
}

- (CPListImageRowItemElement)initWithImageSet:(id)set
{
  setCopy = set;
  v11.receiver = self;
  v11.super_class = CPListImageRowItemElement;
  v6 = [(CPListImageRowItemElement *)&v11 init];
  if (v6)
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    identifier = v6->_identifier;
    v6->_identifier = uUIDString;

    objc_storeStrong(&v6->_image, set);
    v6->_enabled = 1;
  }

  return v6;
}

+ (CGSize)maximumImageSize
{
  v2 = *&_maximumImageSize_0_1;
  v3 = *&_maximumImageSize_1_1;
  if (*&_maximumImageSize_0_1 == *MEMORY[0x277CBF3A8] && *&_maximumImageSize_1_1 == *(MEMORY[0x277CBF3A8] + 8))
  {
    v2 = 95.0;
    v3 = 95.0;
  }

  result.height = v3;
  result.width = v2;
  return result;
}

+ (id)convertImage:(id)image
{
  imageCopy = image;
  v5 = [CPImageSet alloc];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __42__CPListImageRowItemElement_convertImage___block_invoke;
  v8[3] = &__block_descriptor_40_e26___UIImage_16__0__UIImage_8l;
  v8[4] = self;
  v6 = [(CPImageSet *)v5 initWithImage:imageCopy treatmentBlock:v8];

  return v6;
}

id __42__CPListImageRowItemElement_convertImage___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v2 maximumImageSize];
  v6 = CPImageByScalingImageToSize(v3, v4, v5);

  return v6;
}

- (UIImage)image
{
  imageSet = [(CPListImageRowItemElement *)self imageSet];
  image = [imageSet image];

  return image;
}

- (void)setImage:(id)image
{
  imageCopy = image;
  v5 = objc_opt_class();
  v6 = [imageCopy copy];

  v7 = [v5 convertImage:v6];
  [(CPListImageRowItemElement *)self setImageSet:v7];

  [(CPListImageRowItemElement *)self _setNeedsUpdate];
}

- (void)setEnabled:(BOOL)enabled
{
  if (self->_enabled != enabled)
  {
    self->_enabled = enabled;
    [(CPListImageRowItemElement *)self _setNeedsUpdate];
  }
}

- (void)_setNeedsUpdate
{
  rowItem = [(CPListImageRowItemElement *)self rowItem];
  [rowItem _setNeedsUpdate];
}

- (CPListImageRowItemElement)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = CPListImageRowItemElement;
  v5 = [(CPListImageRowItemElement *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kCPListImageRowItemElementImageKey"];
    image = v5->_image;
    v5->_image = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kCPListImageRowItemElementIdentifierKey"];
    identifier = v5->_identifier;
    v5->_identifier = v8;

    v5->_enabled = [coderCopy decodeBoolForKey:@"kCPListImageRowItemElementIsEnabledKey"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  imageSet = [(CPListImageRowItemElement *)self imageSet];
  [coderCopy encodeObject:imageSet forKey:@"kCPListImageRowItemElementImageKey"];

  identifier = [(CPListImageRowItemElement *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"kCPListImageRowItemElementIdentifierKey"];

  [coderCopy encodeBool:-[CPListImageRowItemElement isEnabled](self forKey:{"isEnabled"), @"kCPListImageRowItemElementIsEnabledKey"}];
}

- (CPListImageRowItem)rowItem
{
  WeakRetained = objc_loadWeakRetained(&self->_rowItem);

  return WeakRetained;
}

@end