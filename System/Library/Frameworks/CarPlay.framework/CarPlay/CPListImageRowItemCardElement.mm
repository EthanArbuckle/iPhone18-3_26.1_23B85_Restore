@interface CPListImageRowItemCardElement
+ (CGSize)maximumFullHeightImageSize;
+ (CGSize)maximumImageSize;
+ (id)convertImage:(id)image showsImageFullHeight:(BOOL)height;
- (CPListImageRowItemCardElement)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
- (void)setSubtitle:(id)subtitle;
- (void)setTintColor:(id)color;
- (void)setTitle:(id)title;
@end

@implementation CPListImageRowItemCardElement

+ (CGSize)maximumImageSize
{
  v2 = *(MEMORY[0x277CBF3A8] + 8) == 0.0 && *MEMORY[0x277CBF3A8] == 0.0;
  v3 = 141.0;
  if (!v2)
  {
    v3 = 0.0;
  }

  v4 = v3;
  result.height = v4;
  result.width = v3;
  return result;
}

+ (CGSize)maximumFullHeightImageSize
{
  v2 = 165.0;
  v3 = 0.0;
  if (*MEMORY[0x277CBF3A8] == 0.0 && *(MEMORY[0x277CBF3A8] + 8) == 0.0)
  {
    v3 = 220.0;
  }

  else
  {
    v2 = 0.0;
  }

  result.height = v3;
  result.width = v2;
  return result;
}

+ (id)convertImage:(id)image showsImageFullHeight:(BOOL)height
{
  imageCopy = image;
  v7 = [CPImageSet alloc];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __67__CPListImageRowItemCardElement_convertImage_showsImageFullHeight___block_invoke;
  v10[3] = &__block_descriptor_41_e26___UIImage_16__0__UIImage_8l;
  heightCopy = height;
  v10[4] = self;
  v8 = [(CPImageSet *)v7 initWithImage:imageCopy treatmentBlock:v10];

  return v8;
}

id __67__CPListImageRowItemCardElement_convertImage_showsImageFullHeight___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 32);
  v4 = a2;
  if (v2 == 1)
  {
    [v3 maximumFullHeightImageSize];
  }

  else
  {
    [v3 maximumImageSize];
  }

  v7 = CPImageByScalingImageToSize(v4, v5, v6);

  return v7;
}

- (void)setTitle:(id)title
{
  titleCopy = title;
  if (![(NSString *)self->_title isEqualToString:?])
  {
    v4 = [titleCopy copy];
    title = self->_title;
    self->_title = v4;

    [(CPListImageRowItemElement *)self _setNeedsUpdate];
  }
}

- (void)setSubtitle:(id)subtitle
{
  subtitleCopy = subtitle;
  if (![(NSString *)self->_subtitle isEqualToString:?])
  {
    objc_storeStrong(&self->_subtitle, subtitle);
    [(CPListImageRowItemElement *)self _setNeedsUpdate];
  }
}

- (void)setTintColor:(id)color
{
  colorCopy = color;
  if (([(UIColor *)self->_tintColor isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_tintColor, color);
    [(CPListImageRowItemElement *)self _setNeedsUpdate];
  }
}

- (CPListImageRowItemCardElement)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = CPListImageRowItemCardElement;
  v5 = [(CPListImageRowItemElement *)&v13 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kCPListImageRowItemCardElementTitleKey"];
    title = v5->_title;
    v5->_title = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kCPListImageRowItemCardElementSubtitleKey"];
    subtitle = v5->_subtitle;
    v5->_subtitle = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kCPListImageRowItemCardElementTintColorKey"];
    tintColor = v5->_tintColor;
    v5->_tintColor = v10;

    v5->_showsImageFullHeight = [coderCopy decodeBoolForKey:@"kCPListImageRowItemCardElementShowsImageFullHeightKey"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v8.receiver = self;
  v8.super_class = CPListImageRowItemCardElement;
  coderCopy = coder;
  [(CPListImageRowItemElement *)&v8 encodeWithCoder:coderCopy];
  v5 = [(CPListImageRowItemCardElement *)self title:v8.receiver];
  [coderCopy encodeObject:v5 forKey:@"kCPListImageRowItemCardElementTitleKey"];

  subtitle = [(CPListImageRowItemCardElement *)self subtitle];
  [coderCopy encodeObject:subtitle forKey:@"kCPListImageRowItemCardElementSubtitleKey"];

  tintColor = [(CPListImageRowItemCardElement *)self tintColor];
  [coderCopy encodeObject:tintColor forKey:@"kCPListImageRowItemCardElementTintColorKey"];

  [coderCopy encodeBool:-[CPListImageRowItemCardElement showsImageFullHeight](self forKey:{"showsImageFullHeight"), @"kCPListImageRowItemCardElementShowsImageFullHeightKey"}];
}

@end