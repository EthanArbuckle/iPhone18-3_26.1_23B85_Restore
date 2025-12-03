@interface SHNotificationArtworkImageView
- (CGSize)shadowOffset;
- (SHNotificationArtworkImageView)init;
- (SHNotificationArtworkImageView)initWithCoder:(id)coder;
- (SHNotificationArtworkImageView)initWithFrame:(CGRect)frame;
- (UIImageView)imageView;
- (void)commonInit;
- (void)layoutSubviews;
- (void)setCornerRadius:(double)radius;
- (void)setImage:(id)image;
- (void)setShadowColor:(id)color;
- (void)setShadowOffset:(CGSize)offset;
- (void)setShadowOpacity:(double)opacity;
- (void)setShadowRadius:(double)radius;
@end

@implementation SHNotificationArtworkImageView

- (SHNotificationArtworkImageView)init
{
  v5.receiver = self;
  v5.super_class = SHNotificationArtworkImageView;
  v2 = [(SHNotificationArtworkImageView *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(SHNotificationArtworkImageView *)v2 commonInit];
  }

  return v3;
}

- (SHNotificationArtworkImageView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = SHNotificationArtworkImageView;
  v3 = [(SHNotificationArtworkImageView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(SHNotificationArtworkImageView *)v3 commonInit];
  }

  return v4;
}

- (SHNotificationArtworkImageView)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = SHNotificationArtworkImageView;
  v3 = [(SHNotificationArtworkImageView *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(SHNotificationArtworkImageView *)v3 commonInit];
  }

  return v4;
}

- (void)layoutSubviews
{
  v18.receiver = self;
  v18.super_class = SHNotificationArtworkImageView;
  [(SHNotificationArtworkImageView *)&v18 layoutSubviews];
  [(SHNotificationArtworkImageView *)self setClipsToBounds:0];
  imageView = [(SHNotificationArtworkImageView *)self imageView];
  [imageView setClipsToBounds:1];

  imageView2 = [(SHNotificationArtworkImageView *)self imageView];
  layer = [imageView2 layer];
  [layer setMasksToBounds:1];

  [(SHNotificationArtworkImageView *)self bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  [(SHNotificationArtworkImageView *)self cornerRadius];
  v15 = [UIBezierPath bezierPathWithRoundedRect:v7 cornerRadius:v9, v11, v13, v14];
  cGPath = [v15 CGPath];
  layer2 = [(SHNotificationArtworkImageView *)self layer];
  [layer2 setShadowPath:cGPath];
}

- (void)commonInit
{
  imageView = [(SHNotificationArtworkImageView *)self imageView];
  [(SHNotificationArtworkImageView *)self addSubview:imageView];

  [(SHNotificationArtworkImageView *)self bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  imageView2 = [(SHNotificationArtworkImageView *)self imageView];
  [imageView2 setFrame:{v5, v7, v9, v11}];
}

- (void)setImage:(id)image
{
  objc_storeStrong(&self->_image, image);
  imageCopy = image;
  imageView = [(SHNotificationArtworkImageView *)self imageView];
  [imageView setImage:imageCopy];
}

- (void)setShadowColor:(id)color
{
  objc_storeStrong(&self->_shadowColor, color);
  colorCopy = color;
  cGColor = [colorCopy CGColor];

  layer = [(SHNotificationArtworkImageView *)self layer];
  [layer setShadowColor:cGColor];
}

- (void)setShadowOpacity:(double)opacity
{
  self->_shadowOpacity = opacity;
  opacityCopy = opacity;
  layer = [(SHNotificationArtworkImageView *)self layer];
  *&v4 = opacityCopy;
  [layer setShadowOpacity:v4];
}

- (void)setShadowRadius:(double)radius
{
  self->_shadowRadius = radius;
  layer = [(SHNotificationArtworkImageView *)self layer];
  [layer setShadowRadius:radius];
}

- (void)setShadowOffset:(CGSize)offset
{
  height = offset.height;
  width = offset.width;
  self->_shadowOffset = offset;
  layer = [(SHNotificationArtworkImageView *)self layer];
  [layer setShadowOffset:{width, height}];
}

- (void)setCornerRadius:(double)radius
{
  self->_cornerRadius = radius;
  [(SHNotificationArtworkImageView *)self bounds];
  v5 = [UIBezierPath bezierPathWithRoundedRect:"bezierPathWithRoundedRect:cornerRadius:" cornerRadius:?];
  cGPath = [v5 CGPath];
  layer = [(SHNotificationArtworkImageView *)self layer];
  [layer setShadowPath:cGPath];

  imageView = [(SHNotificationArtworkImageView *)self imageView];
  layer2 = [imageView layer];
  [layer2 setCornerRadius:radius];
}

- (UIImageView)imageView
{
  imageView = self->_imageView;
  if (!imageView)
  {
    v4 = [[UIImageView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    v5 = self->_imageView;
    self->_imageView = v4;

    [(UIImageView *)self->_imageView setAutoresizingMask:18];
    imageView = self->_imageView;
  }

  return imageView;
}

- (CGSize)shadowOffset
{
  width = self->_shadowOffset.width;
  height = self->_shadowOffset.height;
  result.height = height;
  result.width = width;
  return result;
}

@end