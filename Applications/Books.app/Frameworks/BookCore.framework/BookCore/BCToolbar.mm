@interface BCToolbar
- (double)_imageButtonMargin;
- (void)setBackgroundHidden:(BOOL)hidden;
@end

@implementation BCToolbar

- (void)setBackgroundHidden:(BOOL)hidden
{
  if (hidden)
  {
    v4 = objc_opt_new();
    [(BCToolbar *)self setBackgroundImage:v4 forToolbarPosition:0 barMetrics:0];
  }

  else
  {

    [(BCToolbar *)self setBackgroundImage:0 forToolbarPosition:0 barMetrics:0];
  }
}

- (double)_imageButtonMargin
{
  [(BCToolbar *)self imageButtonMarginOverride];
  if (v3 <= 0.0)
  {
    v5.receiver = self;
    v5.super_class = BCToolbar;
    [(BCToolbar *)&v5 _imageButtonMargin];
  }

  else
  {

    [(BCToolbar *)self imageButtonMarginOverride];
  }

  return result;
}

@end