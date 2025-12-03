@interface AVTStickerResource
- (AVTStickerResource)initWithCoder:(id)coder;
- (AVTStickerResource)initWithImage:(id)image URL:(id)l clippingRect:(CGRect)rect;
- (CGRect)clippingRect;
- (void)encodeWithCoder:(id)coder;
- (void)setURL:(id)l;
@end

@implementation AVTStickerResource

- (AVTStickerResource)initWithImage:(id)image URL:(id)l clippingRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  imageCopy = image;
  lCopy = l;
  v21.receiver = self;
  v21.super_class = AVTStickerResource;
  v14 = [(AVTStickerResource *)&v21 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_image, image);
    if (lCopy)
    {
      v16 = [AVTUINSURL alloc];
      path = [lCopy path];
      v18 = [(AVTUINSURL *)v16 initFileURLWithPath:path];
      internalURL = v15->_internalURL;
      v15->_internalURL = v18;
    }

    else
    {
      path = v15->_internalURL;
      v15->_internalURL = 0;
    }

    v15->_clippingRect.origin.x = x;
    v15->_clippingRect.origin.y = y;
    v15->_clippingRect.size.width = width;
    v15->_clippingRect.size.height = height;
  }

  return v15;
}

- (AVTStickerResource)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"image"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"url"];
  [coderCopy decodeCGRectForKey:@"clippingRect"];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v15 = [(AVTStickerResource *)self initWithImage:v5 URL:v6 clippingRect:v8, v10, v12, v14];
  return v15;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  image = [(AVTStickerResource *)self image];
  [coderCopy encodeObject:image forKey:@"image"];

  v5 = [(AVTStickerResource *)self URL];
  [coderCopy encodeObject:v5 forKey:@"url"];

  [(AVTStickerResource *)self clippingRect];
  [coderCopy encodeCGRect:@"clippingRect" forKey:?];
}

- (void)setURL:(id)l
{
  lCopy = l;
  if (lCopy)
  {
    v4 = [AVTUINSURL alloc];
    path = [lCopy path];
    v6 = [(AVTUINSURL *)v4 initFileURLWithPath:path];
    internalURL = self->_internalURL;
    self->_internalURL = v6;
  }

  else
  {
    path = self->_internalURL;
    self->_internalURL = 0;
  }
}

- (CGRect)clippingRect
{
  x = self->_clippingRect.origin.x;
  y = self->_clippingRect.origin.y;
  width = self->_clippingRect.size.width;
  height = self->_clippingRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end