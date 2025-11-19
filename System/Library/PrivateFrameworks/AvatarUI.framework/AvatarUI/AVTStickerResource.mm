@interface AVTStickerResource
- (AVTStickerResource)initWithCoder:(id)a3;
- (AVTStickerResource)initWithImage:(id)a3 URL:(id)a4 clippingRect:(CGRect)a5;
- (CGRect)clippingRect;
- (void)encodeWithCoder:(id)a3;
- (void)setURL:(id)a3;
@end

@implementation AVTStickerResource

- (AVTStickerResource)initWithImage:(id)a3 URL:(id)a4 clippingRect:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v12 = a3;
  v13 = a4;
  v21.receiver = self;
  v21.super_class = AVTStickerResource;
  v14 = [(AVTStickerResource *)&v21 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_image, a3);
    if (v13)
    {
      v16 = [AVTUINSURL alloc];
      v17 = [v13 path];
      v18 = [(AVTUINSURL *)v16 initFileURLWithPath:v17];
      internalURL = v15->_internalURL;
      v15->_internalURL = v18;
    }

    else
    {
      v17 = v15->_internalURL;
      v15->_internalURL = 0;
    }

    v15->_clippingRect.origin.x = x;
    v15->_clippingRect.origin.y = y;
    v15->_clippingRect.size.width = width;
    v15->_clippingRect.size.height = height;
  }

  return v15;
}

- (AVTStickerResource)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"image"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"url"];
  [v4 decodeCGRectForKey:@"clippingRect"];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v15 = [(AVTStickerResource *)self initWithImage:v5 URL:v6 clippingRect:v8, v10, v12, v14];
  return v15;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  v4 = [(AVTStickerResource *)self image];
  [v6 encodeObject:v4 forKey:@"image"];

  v5 = [(AVTStickerResource *)self URL];
  [v6 encodeObject:v5 forKey:@"url"];

  [(AVTStickerResource *)self clippingRect];
  [v6 encodeCGRect:@"clippingRect" forKey:?];
}

- (void)setURL:(id)a3
{
  v8 = a3;
  if (v8)
  {
    v4 = [AVTUINSURL alloc];
    v5 = [v8 path];
    v6 = [(AVTUINSURL *)v4 initFileURLWithPath:v5];
    internalURL = self->_internalURL;
    self->_internalURL = v6;
  }

  else
  {
    v5 = self->_internalURL;
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