@interface CPListImageRowItemCondensedElement
+ (CGSize)maximumImageSize;
- (CPListImageRowItemCondensedElement)initWithCoder:(id)a3;
- (CPListImageRowItemCondensedElement)initWithImage:(id)a3 imageShape:(int64_t)a4 title:(id)a5 subtitle:(id)a6 accessorySymbolName:(id)a7;
- (void)encodeWithCoder:(id)a3;
- (void)setAccessorySymbolName:(id)a3;
- (void)setSubtitle:(id)a3;
- (void)setTitle:(id)a3;
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

- (CPListImageRowItemCondensedElement)initWithImage:(id)a3 imageShape:(int64_t)a4 title:(id)a5 subtitle:(id)a6 accessorySymbolName:(id)a7
{
  v12 = a5;
  v13 = a6;
  v14 = a7;
  v23.receiver = self;
  v23.super_class = CPListImageRowItemCondensedElement;
  v15 = [(CPListImageRowItemElement *)&v23 initWithImage:a3];
  if (v15)
  {
    v16 = [v12 copy];
    title = v15->_title;
    v15->_title = v16;

    v18 = [v13 copy];
    subtitle = v15->_subtitle;
    v15->_subtitle = v18;

    v15->_imageShape = a4;
    v20 = [v14 copy];
    accessorySymbolName = v15->_accessorySymbolName;
    v15->_accessorySymbolName = v20;
  }

  return v15;
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

- (void)setSubtitle:(id)a3
{
  v5 = a3;
  if (![(NSString *)self->_subtitle isEqualToString:?])
  {
    objc_storeStrong(&self->_subtitle, a3);
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

- (CPListImageRowItemCondensedElement)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = CPListImageRowItemCondensedElement;
  v5 = [(CPListImageRowItemElement *)&v13 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kCPListImageRowItemCondensedElementTitleKey"];
    title = v5->_title;
    v5->_title = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kCPListImageRowItemCondensedElementSubtitleKey"];
    subtitle = v5->_subtitle;
    v5->_subtitle = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kCPListImageRowItemCondensedElementAccessorySymbolNameKey"];
    accessorySymbolName = v5->_accessorySymbolName;
    v5->_accessorySymbolName = v10;

    v5->_imageShape = [v4 decodeIntegerForKey:@"kCPListImageRowItemCondensedElementImageShapeKey"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v8.receiver = self;
  v8.super_class = CPListImageRowItemCondensedElement;
  v4 = a3;
  [(CPListImageRowItemElement *)&v8 encodeWithCoder:v4];
  v5 = [(CPListImageRowItemCondensedElement *)self title:v8.receiver];
  [v4 encodeObject:v5 forKey:@"kCPListImageRowItemCondensedElementTitleKey"];

  v6 = [(CPListImageRowItemCondensedElement *)self subtitle];
  [v4 encodeObject:v6 forKey:@"kCPListImageRowItemCondensedElementSubtitleKey"];

  v7 = [(CPListImageRowItemCondensedElement *)self accessorySymbolName];
  [v4 encodeObject:v7 forKey:@"kCPListImageRowItemCondensedElementAccessorySymbolNameKey"];

  [v4 encodeInteger:-[CPListImageRowItemCondensedElement imageShape](self forKey:{"imageShape"), @"kCPListImageRowItemCondensedElementImageShapeKey"}];
}

@end