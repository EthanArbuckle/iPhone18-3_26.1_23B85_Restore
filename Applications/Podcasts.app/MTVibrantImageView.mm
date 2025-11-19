@interface MTVibrantImageView
- (MTVibrantImageView)initWithFrame:(CGRect)a3;
- (id)compositingFilter;
- (void)setCompositingFilter:(id)a3;
@end

@implementation MTVibrantImageView

- (MTVibrantImageView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v16.receiver = self;
  v16.super_class = MTVibrantImageView;
  v7 = [(MTVibrantImageView *)&v16 initWithFrame:?];
  if (v7)
  {
    v8 = [[UIImageView alloc] initWithFrame:{x, y, width, height}];
    imageView = v7->_imageView;
    v7->_imageView = v8;

    [(UIImageView *)v7->_imageView setAutoresizingMask:18];
    [(UIImageView *)v7->_imageView setContentMode:2];
    [(MTVibrantImageView *)v7 addSubview:v7->_imageView];
    v10 = [[UIView alloc] initWithFrame:{x, y, width, height}];
    vibrancyView = v7->_vibrancyView;
    v7->_vibrancyView = v10;

    v12 = kCAFilterPlusL;
    v13 = [(UIView *)v7->_vibrancyView layer];
    [v13 setCompositingFilter:v12];

    [(UIView *)v7->_vibrancyView setAutoresizingMask:18];
    v14 = [UIColor colorWithWhite:1.0 alpha:0.4];
    [(UIView *)v7->_vibrancyView setBackgroundColor:v14];

    [(MTVibrantImageView *)v7 addSubview:v7->_vibrancyView];
  }

  return v7;
}

- (id)compositingFilter
{
  v2 = [(UIView *)self->_vibrancyView layer];
  v3 = [v2 compositingFilter];

  return v3;
}

- (void)setCompositingFilter:(id)a3
{
  vibrancyView = self->_vibrancyView;
  v4 = a3;
  v5 = [(UIView *)vibrancyView layer];
  [v5 setCompositingFilter:v4];
}

@end