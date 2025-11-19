@interface CPListImageRowItemElement
+ (CGSize)maximumImageSize;
+ (id)convertImage:(id)a3;
+ (void)_setMaximumImageSize:(CGSize)a3;
- (CPListImageRowItem)rowItem;
- (CPListImageRowItemElement)initWithCoder:(id)a3;
- (CPListImageRowItemElement)initWithImage:(id)a3;
- (CPListImageRowItemElement)initWithImageSet:(id)a3;
- (UIImage)image;
- (void)_setNeedsUpdate;
- (void)encodeWithCoder:(id)a3;
- (void)setEnabled:(BOOL)a3;
- (void)setImage:(id)a3;
@end

@implementation CPListImageRowItemElement

+ (void)_setMaximumImageSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
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

- (CPListImageRowItemElement)initWithImage:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [v4 copy];

  v7 = [v5 convertImage:v6];
  v8 = [(CPListImageRowItemElement *)self initWithImageSet:v7];

  return v8;
}

- (CPListImageRowItemElement)initWithImageSet:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = CPListImageRowItemElement;
  v6 = [(CPListImageRowItemElement *)&v11 init];
  if (v6)
  {
    v7 = [MEMORY[0x277CCAD78] UUID];
    v8 = [v7 UUIDString];
    identifier = v6->_identifier;
    v6->_identifier = v8;

    objc_storeStrong(&v6->_image, a3);
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

+ (id)convertImage:(id)a3
{
  v4 = a3;
  v5 = [CPImageSet alloc];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __42__CPListImageRowItemElement_convertImage___block_invoke;
  v8[3] = &__block_descriptor_40_e26___UIImage_16__0__UIImage_8l;
  v8[4] = a1;
  v6 = [(CPImageSet *)v5 initWithImage:v4 treatmentBlock:v8];

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
  v2 = [(CPListImageRowItemElement *)self imageSet];
  v3 = [v2 image];

  return v3;
}

- (void)setImage:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [v4 copy];

  v7 = [v5 convertImage:v6];
  [(CPListImageRowItemElement *)self setImageSet:v7];

  [(CPListImageRowItemElement *)self _setNeedsUpdate];
}

- (void)setEnabled:(BOOL)a3
{
  if (self->_enabled != a3)
  {
    self->_enabled = a3;
    [(CPListImageRowItemElement *)self _setNeedsUpdate];
  }
}

- (void)_setNeedsUpdate
{
  v2 = [(CPListImageRowItemElement *)self rowItem];
  [v2 _setNeedsUpdate];
}

- (CPListImageRowItemElement)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = CPListImageRowItemElement;
  v5 = [(CPListImageRowItemElement *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kCPListImageRowItemElementImageKey"];
    image = v5->_image;
    v5->_image = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kCPListImageRowItemElementIdentifierKey"];
    identifier = v5->_identifier;
    v5->_identifier = v8;

    v5->_enabled = [v4 decodeBoolForKey:@"kCPListImageRowItemElementIsEnabledKey"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  v4 = [(CPListImageRowItemElement *)self imageSet];
  [v6 encodeObject:v4 forKey:@"kCPListImageRowItemElementImageKey"];

  v5 = [(CPListImageRowItemElement *)self identifier];
  [v6 encodeObject:v5 forKey:@"kCPListImageRowItemElementIdentifierKey"];

  [v6 encodeBool:-[CPListImageRowItemElement isEnabled](self forKey:{"isEnabled"), @"kCPListImageRowItemElementIsEnabledKey"}];
}

- (CPListImageRowItem)rowItem
{
  WeakRetained = objc_loadWeakRetained(&self->_rowItem);

  return WeakRetained;
}

@end