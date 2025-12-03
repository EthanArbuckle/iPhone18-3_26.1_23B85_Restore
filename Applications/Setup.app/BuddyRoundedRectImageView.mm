@interface BuddyRoundedRectImageView
- (BuddyRoundedRectImageView)initWithFrame:(CGRect)frame;
- (BuddyRoundedRectImageView)initWithImage:(id)image;
- (CGSize)sizeThatFits:(CGSize)fits;
- (void)setImage:(id)image;
- (void)setUsesMask:(BOOL)mask;
@end

@implementation BuddyRoundedRectImageView

- (BuddyRoundedRectImageView)initWithFrame:(CGRect)frame
{
  frameCopy = frame;
  v8 = a2;
  location = 0;
  v7.receiver = self;
  v7.super_class = BuddyRoundedRectImageView;
  location = [(BuddyRoundedRectImageView *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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

- (BuddyRoundedRectImageView)initWithImage:(id)image
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, image);
  v3 = selfCopy;
  selfCopy = 0;
  selfCopy = [v3 initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    [*(selfCopy + 1) setImage:location[0]];
  }

  v4 = selfCopy;
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v4;
}

- (void)setImage:(id)image
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, image);
  [(UIImageView *)selfCopy->_imageView setImage:location[0]];
  objc_storeStrong(location, 0);
}

- (void)setUsesMask:(BOOL)mask
{
  if (self->_usesMask != mask)
  {
    self->_usesMask = mask;
    if (self->_usesMask)
    {
      UIRoundToViewScale();
      v4 = v3;
      layer = [(BuddyRoundedRectImageView *)self layer];
      [layer setCornerRadius:v4];

      [(BuddyRoundedRectImageView *)self setClipsToBounds:1];
    }

    else
    {
      layer2 = [(BuddyRoundedRectImageView *)self layer];
      [layer2 setCornerRadius:0.0];

      [(BuddyRoundedRectImageView *)self setClipsToBounds:0];
    }
  }
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(UIImageView *)self->_imageView sizeThatFits:fits.width, fits.height, a2, self, *&fits.width, *&fits.height];
  result.height = v4;
  result.width = v3;
  return result;
}

@end