@interface BuddyRoundedRectImageView
- (BuddyRoundedRectImageView)initWithFrame:(CGRect)a3;
- (BuddyRoundedRectImageView)initWithImage:(id)a3;
- (CGSize)sizeThatFits:(CGSize)a3;
- (void)setImage:(id)a3;
- (void)setUsesMask:(BOOL)a3;
@end

@implementation BuddyRoundedRectImageView

- (BuddyRoundedRectImageView)initWithFrame:(CGRect)a3
{
  v10 = a3;
  v8 = a2;
  location = 0;
  v7.receiver = self;
  v7.super_class = BuddyRoundedRectImageView;
  location = [(BuddyRoundedRectImageView *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  objc_storeStrong(&location, location);
  if (location)
  {
    v3 = [[UIImageView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    v4 = *(location + 1);
    *(location + 1) = v3;

    [location addSubview:*(location + 1)];
  }

  v5 = location;
  objc_storeStrong(&location, 0);
  return v5;
}

- (BuddyRoundedRectImageView)initWithImage:(id)a3
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v7;
  v7 = 0;
  v7 = [v3 initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  objc_storeStrong(&v7, v7);
  if (v7)
  {
    [*(v7 + 1) setImage:location[0]];
  }

  v4 = v7;
  objc_storeStrong(location, 0);
  objc_storeStrong(&v7, 0);
  return v4;
}

- (void)setImage:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(UIImageView *)v4->_imageView setImage:location[0]];
  objc_storeStrong(location, 0);
}

- (void)setUsesMask:(BOOL)a3
{
  if (self->_usesMask != a3)
  {
    self->_usesMask = a3;
    if (self->_usesMask)
    {
      UIRoundToViewScale();
      v4 = v3;
      v5 = [(BuddyRoundedRectImageView *)self layer];
      [v5 setCornerRadius:v4];

      [(BuddyRoundedRectImageView *)self setClipsToBounds:1];
    }

    else
    {
      v6 = [(BuddyRoundedRectImageView *)self layer];
      [v6 setCornerRadius:0.0];

      [(BuddyRoundedRectImageView *)self setClipsToBounds:0];
    }
  }
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(UIImageView *)self->_imageView sizeThatFits:a3.width, a3.height, a2, self, *&a3.width, *&a3.height];
  result.height = v4;
  result.width = v3;
  return result;
}

@end