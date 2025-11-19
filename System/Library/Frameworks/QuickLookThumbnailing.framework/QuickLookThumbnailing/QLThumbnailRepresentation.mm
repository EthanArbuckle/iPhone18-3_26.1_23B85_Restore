@interface QLThumbnailRepresentation
- (CGImageRef)CGImage;
- (CGRect)contentRect;
- (QLThumbnailRepresentation)initWithThumbnailType:(int64_t)a3 iconFlavor:(int)a4 CGImage:(CGImage *)a5 scale:(double)a6 contentRect:(CGRect)a7 generatedProperties:(id)a8;
- (QLThumbnailRepresentation)initWithThumbnailType:(int64_t)a3 iconFlavor:(int)a4 images:(id)a5 scale:(double)a6 contentRect:(CGRect)a7 generatedProperties:(id)a8;
- (UIImage)UIImage;
- (id)description;
@end

@implementation QLThumbnailRepresentation

- (UIImage)UIImage
{
  UIImageThumbnail = self->_UIImageThumbnail;
  if (!UIImageThumbnail)
  {
    v4 = [objc_alloc(QLTImageClassWithError(0)) initWithCGImage:-[QLThumbnailRepresentation CGImage](self scale:"CGImage") orientation:{0, self->_scale}];
    v5 = self->_UIImageThumbnail;
    self->_UIImageThumbnail = v4;

    UIImageThumbnail = self->_UIImageThumbnail;
  }

  return UIImageThumbnail;
}

- (CGImageRef)CGImage
{
  v2 = [(NSArray *)self->_images firstObject];

  return v2;
}

- (QLThumbnailRepresentation)initWithThumbnailType:(int64_t)a3 iconFlavor:(int)a4 CGImage:(CGImage *)a5 scale:(double)a6 contentRect:(CGRect)a7 generatedProperties:(id)a8
{
  height = a7.size.height;
  width = a7.size.width;
  y = a7.origin.y;
  x = a7.origin.x;
  v26[1] = *MEMORY[0x1E69E9840];
  v18 = a8;
  v25.receiver = self;
  v25.super_class = QLThumbnailRepresentation;
  v19 = [(QLThumbnailRepresentation *)&v25 init];
  v20 = v19;
  if (v19)
  {
    v19->_type = a3;
    if (a5)
    {
      v26[0] = a5;
      v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:1];
    }

    else
    {
      v21 = MEMORY[0x1E695E0F0];
    }

    images = v20->_images;
    v20->_images = v21;

    v20->_scale = a6;
    v20->_flavor = a4;
    v20->_contentRect.origin.x = x;
    v20->_contentRect.origin.y = y;
    v20->_contentRect.size.width = width;
    v20->_contentRect.size.height = height;
    objc_storeStrong(&v20->_generatedProperties, a8);
  }

  v23 = *MEMORY[0x1E69E9840];
  return v20;
}

- (QLThumbnailRepresentation)initWithThumbnailType:(int64_t)a3 iconFlavor:(int)a4 images:(id)a5 scale:(double)a6 contentRect:(CGRect)a7 generatedProperties:(id)a8
{
  height = a7.size.height;
  width = a7.size.width;
  y = a7.origin.y;
  x = a7.origin.x;
  v18 = a5;
  v19 = a8;
  v23.receiver = self;
  v23.super_class = QLThumbnailRepresentation;
  v20 = [(QLThumbnailRepresentation *)&v23 init];
  v21 = v20;
  if (v20)
  {
    v20->_type = a3;
    objc_storeStrong(&v20->_images, a5);
    v21->_scale = a6;
    v21->_flavor = a4;
    v21->_contentRect.origin.x = x;
    v21->_contentRect.origin.y = y;
    v21->_contentRect.size.width = width;
    v21->_contentRect.size.height = height;
    objc_storeStrong(&v21->_generatedProperties, a8);
  }

  return v21;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(QLThumbnailRepresentation *)self type];
  v7 = @"Icon";
  if (v6 == QLThumbnailRepresentationTypeLowQualityThumbnail)
  {
    v7 = @"LowQualityThumbnail";
  }

  if (v6 == QLThumbnailRepresentationTypeThumbnail)
  {
    v7 = @"Thumbnail";
  }

  v8 = v7;
  if ([(NSArray *)self->_images count]<= 1)
  {
    v10 = [v3 initWithFormat:@"<%@:%p type: %@%@; properties=%@>", v5, self, v8, &stru_1F49E08A8, self->_generatedProperties];
  }

  else
  {
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@" %lu images", -[NSArray count](self->_images, "count")];;
    v10 = [v3 initWithFormat:@"<%@:%p type: %@%@; properties=%@>", v5, self, v8, v9, self->_generatedProperties];
  }

  return v10;
}

- (CGRect)contentRect
{
  x = self->_contentRect.origin.x;
  y = self->_contentRect.origin.y;
  width = self->_contentRect.size.width;
  height = self->_contentRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end