@interface WAImageView
- (CGSize)_imageSize;
- (CGSize)_imageSizeForWidth:(double)a3;
- (CGSize)sizeThatFits:(CGSize)a3;
- (WAImageView)initWithFrame:(CGRect)a3;
- (id)colorShiftImage:(id)a3;
- (id)invertImage:(id)a3;
- (void)invertImage;
- (void)layoutSubviews;
- (void)setImage:(id)a3;
@end

@implementation WAImageView

- (WAImageView)initWithFrame:(CGRect)a3
{
  v8.receiver = self;
  v8.super_class = WAImageView;
  v3 = [(WAImageView *)&v8 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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

- (CGSize)_imageSizeForWidth:(double)a3
{
  if (a3 <= 0.0)
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

      v11 = a3 / width;
      if (width < v10 * a3)
      {
        v11 = 1.0 / v10;
      }

      width = ceil(width * v11);
      height = ceil(height * v11);
    }
  }

  v12 = width;
  v13 = height;
  result.height = v13;
  result.width = v12;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  [(WAImageView *)self _imageSizeForWidth:a3.width - SiriUIPlatterStyle[32] - SiriUIPlatterStyle[34]];
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

- (void)setImage:(id)a3
{
  v9 = a3;
  [(UIImageView *)self->_imageView setImage:?];
  if ([(WAImageView *)self shouldInvert])
  {
    objc_storeStrong(&self->_regularImage, a3);
    v5 = [(WAImageView *)self invertImage:v9];
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

- (id)invertImage:(id)a3
{
  v3 = a3;
  v4 = [CIContext contextWithOptions:0];
  v5 = [[CIImage alloc] initWithCGImage:{objc_msgSend(v3, "CGImage")}];
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

    v3 = v10;
  }

  return v3;
}

- (id)colorShiftImage:(id)a3
{
  v3 = a3;
  v4 = [CIContext contextWithOptions:0];
  v5 = [[CIImage alloc] initWithCGImage:{objc_msgSend(v3, "CGImage")}];
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

    v3 = v12;
  }

  return v3;
}

@end