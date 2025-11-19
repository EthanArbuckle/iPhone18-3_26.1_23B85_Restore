@interface CPListImageRowItemImageGridElement
+ (CGSize)maximumImageSize;
- (CPListImageRowItemImageGridElement)initWithCoder:(id)a3;
- (CPListImageRowItemImageGridElement)initWithImage:(id)a3 imageShape:(int64_t)a4 title:(id)a5 accessorySymbolName:(id)a6;
- (void)encodeWithCoder:(id)a3;
- (void)setAccessorySymbolName:(id)a3;
- (void)setTitle:(id)a3;
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

- (CPListImageRowItemImageGridElement)initWithImage:(id)a3 imageShape:(int64_t)a4 title:(id)a5 accessorySymbolName:(id)a6
{
  v10 = a5;
  v11 = a6;
  v19.receiver = self;
  v19.super_class = CPListImageRowItemImageGridElement;
  v12 = [(CPListImageRowItemElement *)&v19 initWithImage:a3];
  v13 = v12;
  if (v12)
  {
    v12->_imageShape = a4;
    v14 = [v10 copy];
    title = v13->_title;
    v13->_title = v14;

    v16 = [v11 copy];
    accessorySymbolName = v13->_accessorySymbolName;
    v13->_accessorySymbolName = v16;
  }

  return v13;
}

- (void)setTitle:(id)a3
{
  v6 = a3;
  if (![(NSString *)self->_title isEqualToString:?])
  {
    v4 = [v6 copy];
    title = self->_title;
    self->_title = v4;

    [(CPListImageRowItemElement *)self _setNeedsUpdate];
  }
}

- (void)setAccessorySymbolName:(id)a3
{
  v6 = a3;
  if (![(NSString *)self->_accessorySymbolName isEqualToString:?])
  {
    v4 = [v6 copy];
    accessorySymbolName = self->_accessorySymbolName;
    self->_accessorySymbolName = v4;

    [(CPListImageRowItemElement *)self _setNeedsUpdate];
  }
}

- (CPListImageRowItemImageGridElement)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = CPListImageRowItemImageGridElement;
  v5 = [(CPListImageRowItemElement *)&v11 initWithCoder:v4];
  if (v5)
  {
    v5->_imageShape = [v4 decodeIntegerForKey:@"kCPListImageRowItemImageGridElementImageShapeKey"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kCPListImageRowItemImageGridElementTitleKey"];
    title = v5->_title;
    v5->_title = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kCPListImageRowItemImageGridElementAccessorySymbolNameKey"];
    accessorySymbolName = v5->_accessorySymbolName;
    v5->_accessorySymbolName = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = CPListImageRowItemImageGridElement;
  v4 = a3;
  [(CPListImageRowItemElement *)&v7 encodeWithCoder:v4];
  v5 = [(CPListImageRowItemImageGridElement *)self title:v7.receiver];
  [v4 encodeObject:v5 forKey:@"kCPListImageRowItemImageGridElementTitleKey"];

  v6 = [(CPListImageRowItemImageGridElement *)self accessorySymbolName];
  [v4 encodeObject:v6 forKey:@"kCPListImageRowItemImageGridElementAccessorySymbolNameKey"];

  [v4 encodeInteger:-[CPListImageRowItemImageGridElement imageShape](self forKey:{"imageShape"), @"kCPListImageRowItemImageGridElementImageShapeKey"}];
}

@end