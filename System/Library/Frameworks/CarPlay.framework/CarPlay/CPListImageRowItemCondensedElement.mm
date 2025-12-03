@interface CPListImageRowItemCondensedElement
+ (CGSize)maximumImageSize;
- (CPListImageRowItemCondensedElement)initWithCoder:(id)coder;
- (CPListImageRowItemCondensedElement)initWithImage:(id)image imageShape:(int64_t)shape title:(id)title subtitle:(id)subtitle accessorySymbolName:(id)name;
- (void)encodeWithCoder:(id)coder;
- (void)setAccessorySymbolName:(id)name;
- (void)setSubtitle:(id)subtitle;
- (void)setTitle:(id)title;
@end

@implementation CPListImageRowItemCondensedElement

+ (CGSize)maximumImageSize
{
  v2 = *(MEMORY[0x277CBF3A8] + 8) == 0.0 && *MEMORY[0x277CBF3A8] == 0.0;
  v3 = 30.0;
  if (!v2)
  {
    v3 = 0.0;
  }

  v4 = v3;
  result.height = v4;
  result.width = v3;
  return result;
}

- (CPListImageRowItemCondensedElement)initWithImage:(id)image imageShape:(int64_t)shape title:(id)title subtitle:(id)subtitle accessorySymbolName:(id)name
{
  titleCopy = title;
  subtitleCopy = subtitle;
  nameCopy = name;
  v23.receiver = self;
  v23.super_class = CPListImageRowItemCondensedElement;
  v15 = [(CPListImageRowItemElement *)&v23 initWithImage:image];
  if (v15)
  {
    v16 = [titleCopy copy];
    title = v15->_title;
    v15->_title = v16;

    v18 = [subtitleCopy copy];
    subtitle = v15->_subtitle;
    v15->_subtitle = v18;

    v15->_imageShape = shape;
    v20 = [nameCopy copy];
    accessorySymbolName = v15->_accessorySymbolName;
    v15->_accessorySymbolName = v20;
  }

  return v15;
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

- (void)setAccessorySymbolName:(id)name
{
  nameCopy = name;
  if (![(NSString *)self->_accessorySymbolName isEqualToString:?])
  {
    v4 = [nameCopy copy];
    accessorySymbolName = self->_accessorySymbolName;
    self->_accessorySymbolName = v4;

    [(CPListImageRowItemElement *)self _setNeedsUpdate];
  }
}

- (CPListImageRowItemCondensedElement)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = CPListImageRowItemCondensedElement;
  v5 = [(CPListImageRowItemElement *)&v13 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kCPListImageRowItemCondensedElementTitleKey"];
    title = v5->_title;
    v5->_title = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kCPListImageRowItemCondensedElementSubtitleKey"];
    subtitle = v5->_subtitle;
    v5->_subtitle = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kCPListImageRowItemCondensedElementAccessorySymbolNameKey"];
    accessorySymbolName = v5->_accessorySymbolName;
    v5->_accessorySymbolName = v10;

    v5->_imageShape = [coderCopy decodeIntegerForKey:@"kCPListImageRowItemCondensedElementImageShapeKey"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v8.receiver = self;
  v8.super_class = CPListImageRowItemCondensedElement;
  coderCopy = coder;
  [(CPListImageRowItemElement *)&v8 encodeWithCoder:coderCopy];
  v5 = [(CPListImageRowItemCondensedElement *)self title:v8.receiver];
  [coderCopy encodeObject:v5 forKey:@"kCPListImageRowItemCondensedElementTitleKey"];

  subtitle = [(CPListImageRowItemCondensedElement *)self subtitle];
  [coderCopy encodeObject:subtitle forKey:@"kCPListImageRowItemCondensedElementSubtitleKey"];

  accessorySymbolName = [(CPListImageRowItemCondensedElement *)self accessorySymbolName];
  [coderCopy encodeObject:accessorySymbolName forKey:@"kCPListImageRowItemCondensedElementAccessorySymbolNameKey"];

  [coderCopy encodeInteger:-[CPListImageRowItemCondensedElement imageShape](self forKey:{"imageShape"), @"kCPListImageRowItemCondensedElementImageShapeKey"}];
}

@end