@interface MFBarButtonItem
- (MFBarButtonItem)initWithImage:(id)image disabledImage:(id)disabledImage style:(int64_t)style target:(id)target action:(SEL)action;
- (void)setEnabled:(BOOL)enabled;
@end

@implementation MFBarButtonItem

- (MFBarButtonItem)initWithImage:(id)image disabledImage:(id)disabledImage style:(int64_t)style target:(id)target action:(SEL)action
{
  imageCopy = image;
  disabledImageCopy = disabledImage;
  v18.receiver = self;
  v18.super_class = MFBarButtonItem;
  v15 = [(MFBarButtonItem *)&v18 initWithImage:imageCopy style:style target:target action:action];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_enabledImage, image);
    objc_storeStrong(&v16->_disabledImage, disabledImage);
  }

  return v16;
}

- (void)setEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v7.receiver = self;
  v7.super_class = MFBarButtonItem;
  [(MFBarButtonItem *)&v7 setEnabled:?];
  disabledImage = [(MFBarButtonItem *)self disabledImage];

  if (disabledImage)
  {
    if (enabledCopy)
    {
      [(MFBarButtonItem *)self enabledImage];
    }

    else
    {
      [(MFBarButtonItem *)self disabledImage];
    }
    v6 = ;
    [(MFBarButtonItem *)self setImage:v6];
  }
}

@end