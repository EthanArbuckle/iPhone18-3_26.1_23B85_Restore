@interface TUIImageModel
- (BOOL)isEqual:(id)equal;
- (CGSize)size;
- (TUIImageModel)initWithIdentifier:(id)identifier image:(id)image size:(CGSize)size renderMode:(int64_t)mode alignmentRectInsets:(UIEdgeInsets)insets;
- (TUIImageModel)initWithIdentifier:(id)identifier urlString:(id)string baseURL:(id)l size:(CGSize)size renderMode:(int64_t)mode alignmentRectInsets:(UIEdgeInsets)insets;
- (UIEdgeInsets)alignmentRectInsets;
- (id)_configuredImage:(id)image;
- (void)loadImageFromResource:(id)resource placeholderImage:(id)image;
@end

@implementation TUIImageModel

- (TUIImageModel)initWithIdentifier:(id)identifier image:(id)image size:(CGSize)size renderMode:(int64_t)mode alignmentRectInsets:(UIEdgeInsets)insets
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  height = size.height;
  width = size.width;
  identifierCopy = identifier;
  imageCopy = image;
  v24.receiver = self;
  v24.super_class = TUIImageModel;
  v19 = [(TUIImageModel *)&v24 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_identifier, identifier);
    v20->_size.width = width;
    v20->_size.height = height;
    v20->_renderMode = mode;
    v20->_alignmentRectInsets.top = top;
    v20->_alignmentRectInsets.left = left;
    v20->_alignmentRectInsets.bottom = bottom;
    v20->_alignmentRectInsets.right = right;
    v21 = [(TUIImageModel *)v20 _configuredImage:imageCopy];
    image = v20->_image;
    v20->_image = v21;

    v20->_isLoaded = 1;
  }

  return v20;
}

- (TUIImageModel)initWithIdentifier:(id)identifier urlString:(id)string baseURL:(id)l size:(CGSize)size renderMode:(int64_t)mode alignmentRectInsets:(UIEdgeInsets)insets
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  height = size.height;
  width = size.width;
  identifierCopy = identifier;
  stringCopy = string;
  lCopy = l;
  v25.receiver = self;
  v25.super_class = TUIImageModel;
  v22 = [(TUIImageModel *)&v25 init];
  v23 = v22;
  if (v22)
  {
    objc_storeStrong(&v22->_identifier, identifier);
    objc_storeStrong(&v23->_urlString, string);
    objc_storeStrong(&v23->_baseURL, l);
    v23->_size.width = width;
    v23->_size.height = height;
    v23->_renderMode = mode;
    v23->_alignmentRectInsets.top = top;
    v23->_alignmentRectInsets.left = left;
    v23->_alignmentRectInsets.bottom = bottom;
    v23->_alignmentRectInsets.right = right;
  }

  return v23;
}

- (void)loadImageFromResource:(id)resource placeholderImage:(id)image
{
  if (!self->_isLoaded)
  {
    imageCopy = image;
    resourceCopy = resource;
    v16 = [resourceCopy imageContentWithOptions:1];
    image = [v16 image];
    newImage = [image newImage];
    v11 = newImage;
    if (newImage)
    {
      v12 = newImage;
    }

    else
    {
      v12 = imageCopy;
    }

    v13 = v12;

    v14 = [(TUIImageModel *)self _configuredImage:v13];

    image = self->_image;
    self->_image = v14;

    LOBYTE(v14) = [resourceCopy isImageLoaded];
    self->_isLoaded = v14;
  }
}

- (BOOL)isEqual:(id)equal
{
  if (self != equal)
  {
    equalCopy = equal;
    v6 = objc_opt_class();
    v7 = TUIDynamicCast(v6, equalCopy);
  }

  return self == equal;
}

- (id)_configuredImage:(id)image
{
  imageCopy = image;
  v5 = imageCopy;
  if (imageCopy)
  {
    v6 = imageCopy;
    if (self->_size.width > 0.0)
    {
      v6 = imageCopy;
      if (self->_size.height > 0.0)
      {
        [imageCopy size];
        v9 = v8 == self->_size.width && v7 == self->_size.height;
        v6 = v5;
        if (!v9)
        {
          v6 = [v5 imageByPreparingThumbnailOfSize:?];
        }
      }
    }

    if ([v5 renderingMode] != self->_renderMode)
    {
      v10 = [v6 imageWithRenderingMode:?];

      v6 = v10;
    }

    v11 = *&self->_alignmentRectInsets.top;
    v12 = *&self->_alignmentRectInsets.bottom;
    if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v11, *&UIEdgeInsetsZero.top), vceqq_f64(v12, *&UIEdgeInsetsZero.bottom)))) & 1) == 0)
    {
      v13 = [v6 imageWithAlignmentRectInsets:{*&v11, *&v12}];

      v6 = v13;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

- (UIEdgeInsets)alignmentRectInsets
{
  top = self->_alignmentRectInsets.top;
  left = self->_alignmentRectInsets.left;
  bottom = self->_alignmentRectInsets.bottom;
  right = self->_alignmentRectInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end