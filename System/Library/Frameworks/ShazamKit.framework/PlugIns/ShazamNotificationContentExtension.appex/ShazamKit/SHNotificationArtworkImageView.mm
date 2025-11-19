@interface SHNotificationArtworkImageView
- (CGSize)shadowOffset;
- (SHNotificationArtworkImageView)init;
- (SHNotificationArtworkImageView)initWithCoder:(id)a3;
- (SHNotificationArtworkImageView)initWithFrame:(CGRect)a3;
- (UIImageView)imageView;
- (void)commonInit;
- (void)layoutSubviews;
- (void)setCornerRadius:(double)a3;
- (void)setImage:(id)a3;
- (void)setShadowColor:(id)a3;
- (void)setShadowOffset:(CGSize)a3;
- (void)setShadowOpacity:(double)a3;
- (void)setShadowRadius:(double)a3;
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

- (SHNotificationArtworkImageView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = SHNotificationArtworkImageView;
  v3 = [(SHNotificationArtworkImageView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(SHNotificationArtworkImageView *)v3 commonInit];
  }

  return v4;
}

- (SHNotificationArtworkImageView)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = SHNotificationArtworkImageView;
  v3 = [(SHNotificationArtworkImageView *)&v6 initWithCoder:a3];
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
  v3 = [(SHNotificationArtworkImageView *)self imageView];
  [v3 setClipsToBounds:1];

  v4 = [(SHNotificationArtworkImageView *)self imageView];
  v5 = [v4 layer];
  [v5 setMasksToBounds:1];

  [(SHNotificationArtworkImageView *)self bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  [(SHNotificationArtworkImageView *)self cornerRadius];
  v15 = [UIBezierPath bezierPathWithRoundedRect:v7 cornerRadius:v9, v11, v13, v14];
  v16 = [v15 CGPath];
  v17 = [(SHNotificationArtworkImageView *)self layer];
  [v17 setShadowPath:v16];
}

- (void)commonInit
{
  v3 = [(SHNotificationArtworkImageView *)self imageView];
  [(SHNotificationArtworkImageView *)self addSubview:v3];

  [(SHNotificationArtworkImageView *)self bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [(SHNotificationArtworkImageView *)self imageView];
  [v12 setFrame:{v5, v7, v9, v11}];
}

- (void)setImage:(id)a3
{
  objc_storeStrong(&self->_image, a3);
  v5 = a3;
  v6 = [(SHNotificationArtworkImageView *)self imageView];
  [v6 setImage:v5];
}

- (void)setShadowColor:(id)a3
{
  objc_storeStrong(&self->_shadowColor, a3);
  v5 = a3;
  v6 = [v5 CGColor];

  v7 = [(SHNotificationArtworkImageView *)self layer];
  [v7 setShadowColor:v6];
}

- (void)setShadowOpacity:(double)a3
{
  self->_shadowOpacity = a3;
  v3 = a3;
  v5 = [(SHNotificationArtworkImageView *)self layer];
  *&v4 = v3;
  [v5 setShadowOpacity:v4];
}

- (void)setShadowRadius:(double)a3
{
  self->_shadowRadius = a3;
  v4 = [(SHNotificationArtworkImageView *)self layer];
  [v4 setShadowRadius:a3];
}

- (void)setShadowOffset:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  self->_shadowOffset = a3;
  v5 = [(SHNotificationArtworkImageView *)self layer];
  [v5 setShadowOffset:{width, height}];
}

- (void)setCornerRadius:(double)a3
{
  self->_cornerRadius = a3;
  [(SHNotificationArtworkImageView *)self bounds];
  v5 = [UIBezierPath bezierPathWithRoundedRect:"bezierPathWithRoundedRect:cornerRadius:" cornerRadius:?];
  v6 = [v5 CGPath];
  v7 = [(SHNotificationArtworkImageView *)self layer];
  [v7 setShadowPath:v6];

  v9 = [(SHNotificationArtworkImageView *)self imageView];
  v8 = [v9 layer];
  [v8 setCornerRadius:a3];
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