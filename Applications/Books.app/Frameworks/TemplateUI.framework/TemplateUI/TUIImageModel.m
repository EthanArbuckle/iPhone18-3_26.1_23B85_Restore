@interface TUIImageModel
- (BOOL)isEqual:(id)a3;
- (CGSize)size;
- (TUIImageModel)initWithIdentifier:(id)a3 image:(id)a4 size:(CGSize)a5 renderMode:(int64_t)a6 alignmentRectInsets:(UIEdgeInsets)a7;
- (TUIImageModel)initWithIdentifier:(id)a3 urlString:(id)a4 baseURL:(id)a5 size:(CGSize)a6 renderMode:(int64_t)a7 alignmentRectInsets:(UIEdgeInsets)a8;
- (UIEdgeInsets)alignmentRectInsets;
- (id)_configuredImage:(id)a3;
- (void)loadImageFromResource:(id)a3 placeholderImage:(id)a4;
@end

@implementation TUIImageModel

- (TUIImageModel)initWithIdentifier:(id)a3 image:(id)a4 size:(CGSize)a5 renderMode:(int64_t)a6 alignmentRectInsets:(UIEdgeInsets)a7
{
  right = a7.right;
  bottom = a7.bottom;
  left = a7.left;
  top = a7.top;
  height = a5.height;
  width = a5.width;
  v17 = a3;
  v18 = a4;
  v24.receiver = self;
  v24.super_class = TUIImageModel;
  v19 = [(TUIImageModel *)&v24 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_identifier, a3);
    v20->_size.width = width;
    v20->_size.height = height;
    v20->_renderMode = a6;
    v20->_alignmentRectInsets.top = top;
    v20->_alignmentRectInsets.left = left;
    v20->_alignmentRectInsets.bottom = bottom;
    v20->_alignmentRectInsets.right = right;
    v21 = [(TUIImageModel *)v20 _configuredImage:v18];
    image = v20->_image;
    v20->_image = v21;

    v20->_isLoaded = 1;
  }

  return v20;
}

- (TUIImageModel)initWithIdentifier:(id)a3 urlString:(id)a4 baseURL:(id)a5 size:(CGSize)a6 renderMode:(int64_t)a7 alignmentRectInsets:(UIEdgeInsets)a8
{
  right = a8.right;
  bottom = a8.bottom;
  left = a8.left;
  top = a8.top;
  height = a6.height;
  width = a6.width;
  v19 = a3;
  v20 = a4;
  v21 = a5;
  v25.receiver = self;
  v25.super_class = TUIImageModel;
  v22 = [(TUIImageModel *)&v25 init];
  v23 = v22;
  if (v22)
  {
    objc_storeStrong(&v22->_identifier, a3);
    objc_storeStrong(&v23->_urlString, a4);
    objc_storeStrong(&v23->_baseURL, a5);
    v23->_size.width = width;
    v23->_size.height = height;
    v23->_renderMode = a7;
    v23->_alignmentRectInsets.top = top;
    v23->_alignmentRectInsets.left = left;
    v23->_alignmentRectInsets.bottom = bottom;
    v23->_alignmentRectInsets.right = right;
  }

  return v23;
}

- (void)loadImageFromResource:(id)a3 placeholderImage:(id)a4
{
  if (!self->_isLoaded)
  {
    v7 = a4;
    v8 = a3;
    v16 = [v8 imageContentWithOptions:1];
    v9 = [v16 image];
    v10 = [v9 newImage];
    v11 = v10;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = v7;
    }

    v13 = v12;

    v14 = [(TUIImageModel *)self _configuredImage:v13];

    image = self->_image;
    self->_image = v14;

    LOBYTE(v14) = [v8 isImageLoaded];
    self->_isLoaded = v14;
  }
}

- (BOOL)isEqual:(id)a3
{
  if (self != a3)
  {
    v5 = a3;
    v6 = objc_opt_class();
    v7 = TUIDynamicCast(v6, v5);
  }

  return self == a3;
}

- (id)_configuredImage:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = v4;
    if (self->_size.width > 0.0)
    {
      v6 = v4;
      if (self->_size.height > 0.0)
      {
        [v4 size];
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