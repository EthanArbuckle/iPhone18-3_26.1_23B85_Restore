@interface QLThumbnailRepresentation
- (CGImageRef)CGImage;
- (CGRect)contentRect;
- (QLThumbnailRepresentation)initWithThumbnailType:(int64_t)type iconFlavor:(int)flavor CGImage:(CGImage *)image scale:(double)scale contentRect:(CGRect)rect generatedProperties:(id)properties;
- (QLThumbnailRepresentation)initWithThumbnailType:(int64_t)type iconFlavor:(int)flavor images:(id)images scale:(double)scale contentRect:(CGRect)rect generatedProperties:(id)properties;
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
  firstObject = [(NSArray *)self->_images firstObject];

  return firstObject;
}

- (QLThumbnailRepresentation)initWithThumbnailType:(int64_t)type iconFlavor:(int)flavor CGImage:(CGImage *)image scale:(double)scale contentRect:(CGRect)rect generatedProperties:(id)properties
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v26[1] = *MEMORY[0x1E69E9840];
  propertiesCopy = properties;
  v25.receiver = self;
  v25.super_class = QLThumbnailRepresentation;
  v19 = [(QLThumbnailRepresentation *)&v25 init];
  v20 = v19;
  if (v19)
  {
    v19->_type = type;
    if (image)
    {
      v26[0] = image;
      v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:1];
    }

    else
    {
      v21 = MEMORY[0x1E695E0F0];
    }

    images = v20->_images;
    v20->_images = v21;

    v20->_scale = scale;
    v20->_flavor = flavor;
    v20->_contentRect.origin.x = x;
    v20->_contentRect.origin.y = y;
    v20->_contentRect.size.width = width;
    v20->_contentRect.size.height = height;
    objc_storeStrong(&v20->_generatedProperties, properties);
  }

  v23 = *MEMORY[0x1E69E9840];
  return v20;
}

- (QLThumbnailRepresentation)initWithThumbnailType:(int64_t)type iconFlavor:(int)flavor images:(id)images scale:(double)scale contentRect:(CGRect)rect generatedProperties:(id)properties
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  imagesCopy = images;
  propertiesCopy = properties;
  v23.receiver = self;
  v23.super_class = QLThumbnailRepresentation;
  v20 = [(QLThumbnailRepresentation *)&v23 init];
  v21 = v20;
  if (v20)
  {
    v20->_type = type;
    objc_storeStrong(&v20->_images, images);
    v21->_scale = scale;
    v21->_flavor = flavor;
    v21->_contentRect.origin.x = x;
    v21->_contentRect.origin.y = y;
    v21->_contentRect.size.width = width;
    v21->_contentRect.size.height = height;
    objc_storeStrong(&v21->_generatedProperties, properties);
  }

  return v21;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  type = [(QLThumbnailRepresentation *)self type];
  v7 = @"Icon";
  if (type == QLThumbnailRepresentationTypeLowQualityThumbnail)
  {
    v7 = @"LowQualityThumbnail";
  }

  if (type == QLThumbnailRepresentationTypeThumbnail)
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