@interface CPListImageRowItemImageGridElement
+ (CGSize)maximumImageSize;
- (CPListImageRowItemImageGridElement)initWithCoder:(id)coder;
- (CPListImageRowItemImageGridElement)initWithImage:(id)image imageShape:(int64_t)shape title:(id)title accessorySymbolName:(id)name;
- (void)encodeWithCoder:(id)coder;
- (void)setAccessorySymbolName:(id)name;
- (void)setTitle:(id)title;
@end

@implementation CPListImageRowItemImageGridElement

+ (CGSize)maximumImageSize
{
  v2 = *(MEMORY[0x277CBF3A8] + 8) == 0.0 && *MEMORY[0x277CBF3A8] == 0.0;
  v3 = 110.0;
  if (!v2)
  {
    v3 = 0.0;
  }

  v4 = v3;
  result.height = v4;
  result.width = v3;
  return result;
}

- (CPListImageRowItemImageGridElement)initWithImage:(id)image imageShape:(int64_t)shape title:(id)title accessorySymbolName:(id)name
{
  titleCopy = title;
  nameCopy = name;
  v19.receiver = self;
  v19.super_class = CPListImageRowItemImageGridElement;
  v12 = [(CPListImageRowItemElement *)&v19 initWithImage:image];
  v13 = v12;
  if (v12)
  {
    v12->_imageShape = shape;
    v14 = [titleCopy copy];
    title = v13->_title;
    v13->_title = v14;

    v16 = [nameCopy copy];
    accessorySymbolName = v13->_accessorySymbolName;
    v13->_accessorySymbolName = v16;
  }

  return v13;
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

- (CPListImageRowItemImageGridElement)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = CPListImageRowItemImageGridElement;
  v5 = [(CPListImageRowItemElement *)&v11 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_imageShape = [coderCopy decodeIntegerForKey:@"kCPListImageRowItemImageGridElementImageShapeKey"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kCPListImageRowItemImageGridElementTitleKey"];
    title = v5->_title;
    v5->_title = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kCPListImageRowItemImageGridElementAccessorySymbolNameKey"];
    accessorySymbolName = v5->_accessorySymbolName;
    v5->_accessorySymbolName = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = CPListImageRowItemImageGridElement;
  coderCopy = coder;
  [(CPListImageRowItemElement *)&v7 encodeWithCoder:coderCopy];
  v5 = [(CPListImageRowItemImageGridElement *)self title:v7.receiver];
  [coderCopy encodeObject:v5 forKey:@"kCPListImageRowItemImageGridElementTitleKey"];

  accessorySymbolName = [(CPListImageRowItemImageGridElement *)self accessorySymbolName];
  [coderCopy encodeObject:accessorySymbolName forKey:@"kCPListImageRowItemImageGridElementAccessorySymbolNameKey"];

  [coderCopy encodeInteger:-[CPListImageRowItemImageGridElement imageShape](self forKey:{"imageShape"), @"kCPListImageRowItemImageGridElementImageShapeKey"}];
}

@end