@interface _SSSScreenshotFullsizeStaticImageView
- (CGSize)sizeMultiplier;
- (SSSCropInfo)cropInfo;
- (_SSSScreenshotFullsizeStaticImageView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)setCropInfo:(SSSCropInfo *)a3;
- (void)setImage:(id)a3;
@end

@implementation _SSSScreenshotFullsizeStaticImageView

- (_SSSScreenshotFullsizeStaticImageView)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = _SSSScreenshotFullsizeStaticImageView;
  v3 = [(_SSSScreenshotFullsizeStaticImageView *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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
    v6 = [(UIImageView *)self->_imageView layer];
    v7 = [(_SSSScreenshotFullsizeStaticImageView *)self useTrilinearMinificationFilter];
    v8 = &kCAFilterTrilinear;
    if (!v7)
    {
      v8 = &kCAFilterLinear;
    }

    [v6 setMinificationFilter:*v8];
  }
}

- (void)setImage:(id)a3
{
  [(UIImageView *)self->_imageView setImage:a3];
  [(_SSSScreenshotFullsizeStaticImageView *)self setNeedsLayout];

  [(_SSSScreenshotFullsizeStaticImageView *)self invalidateIntrinsicContentSize];
}

- (void)setCropInfo:(SSSCropInfo *)a3
{
  origin = a3->currentRect.origin;
  size = a3->currentRect.size;
  self->_cropInfo.totalSize = a3->totalSize;
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