@interface CATintedImage
+ (id)tintedImageWithCABackingStore:(CABackingStore *)store;
+ (id)tintedImageWithCGImage:(CGImage *)image tint:(CGColor *)tint copyFlags:(unsigned int)flags;
+ (void)CAMLParserStartElement:(id)element;
- (CATintedImage)initWithCoder:(id)coder;
- (id)CAMLTypeForKey:(id)key;
- (void)CAMLParser:(id)parser setValue:(id)value forKey:(id)key;
- (void)CA_copyRenderValue;
- (void)CA_prepareRenderValue;
- (void)dealloc;
- (void)encodeWithCAMLWriter:(id)writer;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CATintedImage

- (void)CA_prepareRenderValue
{
  image = self->_image;
  if (image)
  {
    v5 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 576);
    if (v5 && (v6 = *(v5 + 40)) != 0)
    {
      v7 = *(v6 + 112);
    }

    else
    {
      v7 = CAGetColorSpace(36);
    }

    copy_flags = self->_copy_flags;

    CA::Render::prepare_image(image, v7, copy_flags, v2);
  }
}

- (void)CA_copyRenderValue
{
  v13 = *MEMORY[0x1E69E9840];
  image = self->_image;
  if (!image)
  {
    return 0;
  }

  v4 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 576);
  if (v4 && (v5 = *(v4 + 40)) != 0)
  {
    v6 = *(v5 + 112);
  }

  else
  {
    v6 = CAGetColorSpace(36);
    image = self->_image;
  }

  v8 = CA::Render::copy_image(image, v6, self->_copy_flags, 0.0, 1.0);
  tint = self->_tint;
  if (tint)
  {
    v11 = 0uLL;
    v12 = 0;
    CA::Render::convert_cgcolor(tint, v6, &v11, 0, v7);
    *(v8 + 72) = v11;
    *(v8 + 22) = v12;
  }

  *(v8 + 3) |= 0x100000u;
  return v8;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];
  CGImageRelease(self->_image);
  CGColorRelease(self->_tint);
  v3.receiver = self;
  v3.super_class = CATintedImage;
  [(CATintedImage *)&v3 dealloc];
}

- (id)CAMLTypeForKey:(id)key
{
  if ([key isEqualToString:@"image"])
  {
    return @"CGImage";
  }

  if ([key isEqualToString:@"tint"])
  {
    return @"CGColor";
  }

  return 0;
}

- (void)encodeWithCAMLWriter:(id)writer
{
  if (self->_image)
  {
    [writer beginPropertyElement:@"image"];
    [writer encodeObject:self->_image];
    [writer endElement];
  }

  if (self->_tint)
  {
    [writer beginPropertyElement:@"tint"];
    [writer encodeObject:self->_tint];

    [writer endElement];
  }
}

- (void)CAMLParser:(id)parser setValue:(id)value forKey:(id)key
{
  if ([key isEqualToString:@"image"])
  {

    [(CATintedImage *)self setImage:value];
  }

  else if ([key isEqualToString:@"tint"])
  {

    [(CATintedImage *)self setTint:value];
  }
}

- (CATintedImage)initWithCoder:(id)coder
{
  v9 = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = CATintedImage;
  v4 = [(CATintedImage *)&v8 init];
  if (v4)
  {
    if ((-[CATintedImage setImage:](v4, "setImage:", [coder CA_decodeObjectForKey:@"image"]), -[CATintedImage setTint:](v4, "setTint:", objc_msgSend(coder, "CA_decodeObjectForKey:", @"tint")), -[CATintedImage image](v4, "image")) && (v5 = CFGetTypeID(-[CATintedImage image](v4, "image")), v5 != CGImageGetTypeID()) || -[CATintedImage tint](v4, "tint") && (v6 = CFGetTypeID(-[CATintedImage tint](v4, "tint")), v6 != CGColorGetTypeID()))
    {

      return 0;
    }
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  image = self->_image;
  if (image)
  {
    [coder CA_encodeObject:image forKey:@"image" conditional:0];
    if (self->_tint)
    {

      [coder CA_encodeObject:? forKey:? conditional:?];
    }
  }
}

+ (void)CAMLParserStartElement:(id)element
{
  v4 = objc_opt_new();
  [element setElementValue:v4];
}

+ (id)tintedImageWithCABackingStore:(CABackingStore *)store
{
  v4 = objc_opt_new();
  v4[1] = CABackingStoreCopyCGImage(store);
  v4[2] = CABackingStoreCopyTintColor(store);

  return v4;
}

+ (id)tintedImageWithCGImage:(CGImage *)image tint:(CGColor *)tint copyFlags:(unsigned int)flags
{
  v8 = objc_opt_new();
  *(v8 + 8) = CGImageRetain(image);
  *(v8 + 16) = CGColorRetain(tint);
  *(v8 + 24) = flags;

  return v8;
}

@end