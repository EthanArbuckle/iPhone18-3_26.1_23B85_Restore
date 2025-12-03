@interface AVTViewCarouselLayout
+ (CGSize)severalItemsSizeForBounds:(CGSize)bounds aspectRatio:(CGSize)ratio;
+ (id)adaptativeLayoutWithAVTViewAspectRatio:(CGSize)ratio;
- (AVTViewCarouselLayout)initWithAVTViewAspectRatio:(CGSize)ratio;
- (CGSize)avatarViewSizeForAvailableContentSize:(CGSize)size;
- (CGSize)avtViewAspectRatio;
@end

@implementation AVTViewCarouselLayout

+ (id)adaptativeLayoutWithAVTViewAspectRatio:(CGSize)ratio
{
  v3 = [[self alloc] initWithAVTViewAspectRatio:{ratio.width, ratio.height}];

  return v3;
}

- (AVTViewCarouselLayout)initWithAVTViewAspectRatio:(CGSize)ratio
{
  height = ratio.height;
  width = ratio.width;
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

- (CGSize)avatarViewSizeForAvailableContentSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v5 = *MEMORY[0x1E695F060];
  v6 = *(MEMORY[0x1E695F060] + 8);
  if (width != *MEMORY[0x1E695F060] || height != v6)
  {
    fillContainer = [(AVTViewCarouselLayout *)self fillContainer];
    v10 = objc_opt_class();
    v11 = v10;
    if (fillContainer)
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

+ (CGSize)severalItemsSizeForBounds:(CGSize)bounds aspectRatio:(CGSize)ratio
{
  height = ratio.height;
  width = ratio.width;
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