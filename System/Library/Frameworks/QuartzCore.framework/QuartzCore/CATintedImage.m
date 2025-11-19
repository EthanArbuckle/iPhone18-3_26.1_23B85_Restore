@interface CATintedImage
+ (id)tintedImageWithCABackingStore:(CABackingStore *)a3;
+ (id)tintedImageWithCGImage:(CGImage *)a3 tint:(CGColor *)a4 copyFlags:(unsigned int)a5;
+ (void)CAMLParserStartElement:(id)a3;
- (CATintedImage)initWithCoder:(id)a3;
- (id)CAMLTypeForKey:(id)a3;
- (void)CAMLParser:(id)a3 setValue:(id)a4 forKey:(id)a5;
- (void)CA_copyRenderValue;
- (void)CA_prepareRenderValue;
- (void)dealloc;
- (void)encodeWithCAMLWriter:(id)a3;
- (void)encodeWithCoder:(id)a3;
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

- (id)CAMLTypeForKey:(id)a3
{
  if ([a3 isEqualToString:@"image"])
  {
    return @"CGImage";
  }

  if ([a3 isEqualToString:@"tint"])
  {
    return @"CGColor";
  }

  return 0;
}

- (void)encodeWithCAMLWriter:(id)a3
{
  if (self->_image)
  {
    [a3 beginPropertyElement:@"image"];
    [a3 encodeObject:self->_image];
    [a3 endElement];
  }

  if (self->_tint)
  {
    [a3 beginPropertyElement:@"tint"];
    [a3 encodeObject:self->_tint];

    [a3 endElement];
  }
}

- (void)CAMLParser:(id)a3 setValue:(id)a4 forKey:(id)a5
{
  if ([a5 isEqualToString:@"image"])
  {

    [(CATintedImage *)self setImage:a4];
  }

  else if ([a5 isEqualToString:@"tint"])
  {

    [(CATintedImage *)self setTint:a4];
  }
}

- (CATintedImage)initWithCoder:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = CATintedImage;
  v4 = [(CATintedImage *)&v8 init];
  if (v4)
  {
    if ((-[CATintedImage setImage:](v4, "setImage:", [a3 CA_decodeObjectForKey:@"image"]), -[CATintedImage setTint:](v4, "setTint:", objc_msgSend(a3, "CA_decodeObjectForKey:", @"tint")), -[CATintedImage image](v4, "image")) && (v5 = CFGetTypeID(-[CATintedImage image](v4, "image")), v5 != CGImageGetTypeID()) || -[CATintedImage tint](v4, "tint") && (v6 = CFGetTypeID(-[CATintedImage tint](v4, "tint")), v6 != CGColorGetTypeID()))
    {

      return 0;
    }
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  image = self->_image;
  if (image)
  {
    [a3 CA_encodeObject:image forKey:@"image" conditional:0];
    if (self->_tint)
    {

      [a3 CA_encodeObject:? forKey:? conditional:?];
    }
  }
}

+ (void)CAMLParserStartElement:(id)a3
{
  v4 = objc_opt_new();
  [a3 setElementValue:v4];
}

+ (id)tintedImageWithCABackingStore:(CABackingStore *)a3
{
  v4 = objc_opt_new();
  v4[1] = CABackingStoreCopyCGImage(a3);
  v4[2] = CABackingStoreCopyTintColor(a3);

  return v4;
}

+ (id)tintedImageWithCGImage:(CGImage *)a3 tint:(CGColor *)a4 copyFlags:(unsigned int)a5
{
  v8 = objc_opt_new();
  *(v8 + 8) = CGImageRetain(a3);
  *(v8 + 16) = CGColorRetain(a4);
  *(v8 + 24) = a5;

  return v8;
}

@end