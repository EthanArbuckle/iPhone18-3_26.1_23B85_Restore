@interface AVTViewCarouselLayout
+ (CGSize)severalItemsSizeForBounds:(CGSize)a3 aspectRatio:(CGSize)a4;
+ (id)adaptativeLayoutWithAVTViewAspectRatio:(CGSize)a3;
- (AVTViewCarouselLayout)initWithAVTViewAspectRatio:(CGSize)a3;
- (CGSize)avatarViewSizeForAvailableContentSize:(CGSize)a3;
- (CGSize)avtViewAspectRatio;
@end

@implementation AVTViewCarouselLayout

+ (id)adaptativeLayoutWithAVTViewAspectRatio:(CGSize)a3
{
  v3 = [[a1 alloc] initWithAVTViewAspectRatio:{a3.width, a3.height}];

  return v3;
}

- (AVTViewCarouselLayout)initWithAVTViewAspectRatio:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6.receiver = self;
  v6.super_class = AVTViewCarouselLayout;
  result = [(AVTViewCarouselLayout *)&v6 init];
  if (result)
  {
    result->_avtViewAspectRatio.width = width;
    result->_avtViewAspectRatio.height = height;
    result->_fillContainer = 0;
  }

  return result;
}

- (CGSize)avatarViewSizeForAvailableContentSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = *MEMORY[0x1E695F060];
  v6 = *(MEMORY[0x1E695F060] + 8);
  if (width != *MEMORY[0x1E695F060] || height != v6)
  {
    v9 = [(AVTViewCarouselLayout *)self fillContainer];
    v10 = objc_opt_class();
    v11 = v10;
    if (v9)
    {
      [v10 fullSizeForBounds:{width, height}];
    }

    else
    {
      [(AVTViewCarouselLayout *)self avtViewAspectRatio];
      [v11 severalItemsSizeForBounds:width aspectRatio:{height, v12, v13}];
    }
  }

  result.height = v6;
  result.width = v5;
  return result;
}

+ (CGSize)severalItemsSizeForBounds:(CGSize)a3 aspectRatio:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  _UIScaleTransformForAspectFitOfSizeInTargetSize();
  v4 = vmlaq_n_f64(vmulq_n_f64(v9, height), v8, width);
  v5 = v4.f64[1];
  result.width = v4.f64[0];
  result.height = v5;
  return result;
}

- (CGSize)avtViewAspectRatio
{
  width = self->_avtViewAspectRatio.width;
  height = self->_avtViewAspectRatio.height;
  result.height = height;
  result.width = width;
  return result;
}

@end