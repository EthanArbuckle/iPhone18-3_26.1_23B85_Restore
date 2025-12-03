@interface WAImageView
- (CGSize)_imageSize;
- (CGSize)_imageSizeForWidth:(double)width;
- (CGSize)sizeThatFits:(CGSize)fits;
- (WAImageView)initWithFrame:(CGRect)frame;
- (id)colorShiftImage:(id)image;
- (id)invertImage:(id)image;
- (void)invertImage;
- (void)layoutSubviews;
- (void)setImage:(id)image;
@end

@implementation WAImageView

- (WAImageView)initWithFrame:(CGRect)frame
{
  v8.receiver = self;
  v8.super_class = WAImageView;
  v3 = [(WAImageView *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(WAImageView *)v3 setKeylineType:0];
    v5 = [[UIImageView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    imageView = v4->_imageView;
    v4->_imageView = v5;

    [(WAImageView *)v4 addSubview:v4->_imageView];
  }

  return v4;
}

- (CGSize)_imageSizeForWidth:(double)width
{
  if (width <= 0.0)
  {
    width = CGSizeZero.width;
    height = CGSizeZero.height;
  }

  else
  {
    [(UIImageView *)self->_imageView sizeThatFits:?];
    width = v4;
    height = v6;
    if (v6 >= 1.0)
    {
      v8 = +[UIScreen mainScreen];
      [v8 scale];
      v10 = v9;

      v11 = width / width;
      if (width < v10 * width)
      {
        v11 = 1.0 / v10;
      }

      width = ceil(width * v11);
      height = ceil(height * v11);
    }
  }

  widthCopy = width;
  v13 = height;
  result.height = v13;
  result.width = widthCopy;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  [(WAImageView *)self _imageSizeForWidth:fits.width - SiriUIPlatterStyle[32] - SiriUIPlatterStyle[34]];
  v5 = v4 + 8.0;
  v6 = width;
  result.height = v5;
  result.width = v6;
  return result;
}

- (CGSize)_imageSize
{
  [(WAImageView *)self bounds];

  [(WAImageView *)self sizeThatFits:v3, v4];
  result.height = v6;
  result.width = v5;
  return result;
}

- (void)setImage:(id)image
{
  imageCopy = image;
  [(UIImageView *)self->_imageView setImage:?];
  if ([(WAImageView *)self shouldInvert])
  {
    objc_storeStrong(&self->_regularImage, image);
    v5 = [(WAImageView *)self invertImage:imageCopy];
    invertedImage = self->_invertedImage;
    self->_invertedImage = v5;

    v7 = [(WAImageView *)self colorShiftImage:self->_invertedImage];
    v8 = self->_invertedImage;
    self->_invertedImage = v7;
  }
}

- (void)invertImage
{
  if ([(WAImageView *)self shouldInvert])
  {
    if (self->isInverted)
    {
      v3 = &OBJC_IVAR___WAImageView__regularImage;
    }

    else
    {
      v3 = &OBJC_IVAR___WAImageView__invertedImage;
    }

    [(UIImageView *)self->_imageView setImage:*&self->SiriUIContentCollectionViewCell_opaque[*v3]];
    self->isInverted ^= 1u;
  }
}

- (void)layoutSubviews
{
  v7.receiver = self;
  v7.super_class = WAImageView;
  [(WAImageView *)&v7 layoutSubviews];
  v3 = SiriUIPlatterStyle[32];
  [(WAImageView *)self bounds];
  [(WAImageView *)self _imageSizeForWidth:v4 - v3 - SiriUIPlatterStyle[34]];
  [(UIImageView *)self->_imageView setFrame:v3, 8.0, v5, v6];
}

- (id)invertImage:(id)image
{
  imageCopy = image;
  v4 = [CIContext contextWithOptions:0];
  v5 = [[CIImage alloc] initWithCGImage:{objc_msgSend(imageCopy, "CGImage")}];
  v6 = [CIFilter filterWithName:@"CIColorInvert"];
  [v6 setValue:v5 forKey:kCIInputImageKey];
  v7 = [v6 valueForKey:kCIOutputImageKey];
  [v7 extent];
  v8 = [v4 createCGImage:v7 fromRect:?];
  v9 = [[UIImage alloc] initWithCGImage:v8];
  CGImageRelease(v8);
  if (v9)
  {
    v10 = v9;

    imageCopy = v10;
  }

  return imageCopy;
}

- (id)colorShiftImage:(id)image
{
  imageCopy = image;
  v4 = [CIContext contextWithOptions:0];
  v5 = [[CIImage alloc] initWithCGImage:{objc_msgSend(imageCopy, "CGImage")}];
  v6 = [CIFilter filterWithName:@"CIHueAdjust"];
  [v6 setDefaults];
  [v6 setValue:v5 forKey:kCIInputImageKey];
  LODWORD(v7) = 1078530011;
  v8 = [NSNumber numberWithFloat:v7];
  [v6 setValue:v8 forKey:@"inputAngle"];

  v9 = [v6 valueForKey:kCIOutputImageKey];
  [v9 extent];
  v10 = [v4 createCGImage:v9 fromRect:?];
  v11 = [[UIImage alloc] initWithCGImage:v10];
  CGImageRelease(v10);
  if (v11)
  {
    v12 = v11;

    imageCopy = v12;
  }

  return imageCopy;
}

@end