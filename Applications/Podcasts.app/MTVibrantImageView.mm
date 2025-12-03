@interface MTVibrantImageView
- (MTVibrantImageView)initWithFrame:(CGRect)frame;
- (id)compositingFilter;
- (void)setCompositingFilter:(id)filter;
@end

@implementation MTVibrantImageView

- (MTVibrantImageView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
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
    layer = [(UIView *)v7->_vibrancyView layer];
    [layer setCompositingFilter:v12];

    [(UIView *)v7->_vibrancyView setAutoresizingMask:18];
    v14 = [UIColor colorWithWhite:1.0 alpha:0.4];
    [(UIView *)v7->_vibrancyView setBackgroundColor:v14];

    [(MTVibrantImageView *)v7 addSubview:v7->_vibrancyView];
  }

  return v7;
}

- (id)compositingFilter
{
  layer = [(UIView *)self->_vibrancyView layer];
  compositingFilter = [layer compositingFilter];

  return compositingFilter;
}

- (void)setCompositingFilter:(id)filter
{
  vibrancyView = self->_vibrancyView;
  filterCopy = filter;
  layer = [(UIView *)vibrancyView layer];
  [layer setCompositingFilter:filterCopy];
}

@end