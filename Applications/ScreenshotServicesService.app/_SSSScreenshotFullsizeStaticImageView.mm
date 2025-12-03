@interface _SSSScreenshotFullsizeStaticImageView
- (CGSize)sizeMultiplier;
- (SSSCropInfo)cropInfo;
- (_SSSScreenshotFullsizeStaticImageView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)setCropInfo:(SSSCropInfo *)info;
- (void)setImage:(id)image;
@end

@implementation _SSSScreenshotFullsizeStaticImageView

- (_SSSScreenshotFullsizeStaticImageView)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = _SSSScreenshotFullsizeStaticImageView;
  v3 = [(_SSSScreenshotFullsizeStaticImageView *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = objc_alloc_init(UIImageView);
  imageView = v3->_imageView;
  v3->_imageView = v4;

  [(_SSSScreenshotFullsizeStaticImageView *)v3 addSubview:v3->_imageView];
  [(_SSSScreenshotFullsizeStaticImageView *)v3 setUserInteractionEnabled:0];
  return v3;
}

- (void)layoutSubviews
{
  [(_SSSScreenshotFullsizeStaticImageView *)self cropInfo];
  if (!CGRectIsEmpty(*v9))
  {
    [(_SSSScreenshotFullsizeStaticImageView *)self sizeMultiplier];
    v4 = *&v9[16] * v3;
    [(_SSSScreenshotFullsizeStaticImageView *)self sizeMultiplier];
    [(UIImageView *)self->_imageView setFrame:*v9, *&v9[8], v4, *&v9[24] * v5];
    layer = [(UIImageView *)self->_imageView layer];
    useTrilinearMinificationFilter = [(_SSSScreenshotFullsizeStaticImageView *)self useTrilinearMinificationFilter];
    v8 = &kCAFilterTrilinear;
    if (!useTrilinearMinificationFilter)
    {
      v8 = &kCAFilterLinear;
    }

    [layer setMinificationFilter:*v8];
  }
}

- (void)setImage:(id)image
{
  [(UIImageView *)self->_imageView setImage:image];
  [(_SSSScreenshotFullsizeStaticImageView *)self setNeedsLayout];

  [(_SSSScreenshotFullsizeStaticImageView *)self invalidateIntrinsicContentSize];
}

- (void)setCropInfo:(SSSCropInfo *)info
{
  origin = info->currentRect.origin;
  size = info->currentRect.size;
  self->_cropInfo.totalSize = info->totalSize;
  self->_cropInfo.currentRect.origin = origin;
  self->_cropInfo.currentRect.size = size;
  [(_SSSScreenshotFullsizeStaticImageView *)self setNeedsLayout];
}

- (SSSCropInfo)cropInfo
{
  v3 = *&self[1].totalSize.height;
  retstr->totalSize = *&self->currentRect.size.height;
  retstr->currentRect.origin = v3;
  retstr->currentRect.size = *&self[1].currentRect.origin.y;
  return self;
}

- (CGSize)sizeMultiplier
{
  width = self->_sizeMultiplier.width;
  height = self->_sizeMultiplier.height;
  result.height = height;
  result.width = width;
  return result;
}

@end