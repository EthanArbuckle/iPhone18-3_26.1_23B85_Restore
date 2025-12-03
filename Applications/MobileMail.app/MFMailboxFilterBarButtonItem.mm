@interface MFMailboxFilterBarButtonItem
- (MFMailboxFilterBarButtonItem)initWithTarget:(id)target action:(SEL)action;
- (void)setFilterEnabled:(BOOL)enabled;
@end

@implementation MFMailboxFilterBarButtonItem

- (MFMailboxFilterBarButtonItem)initWithTarget:(id)target action:(SEL)action
{
  targetCopy = target;
  v7 = MUISolariumFeatureEnabled();
  if (v7)
  {
    [UIImage systemImageNamed:MFImageGlyphFilter];
  }

  else
  {
    [UIImage systemImageNamed:MFImageGlyphFilterDisabled];
  }
  v8 = ;
  objc_storeStrong(&self->_notSelectedImage, v8);

  notSelectedImage = self->_notSelectedImage;
  v15.receiver = self;
  v15.super_class = MFMailboxFilterBarButtonItem;
  v10 = [(MFMailboxFilterBarButtonItem *)&v15 initWithImage:notSelectedImage style:0 target:targetCopy action:action];
  if (v10)
  {
    v11 = +[NSBundle mainBundle];
    v12 = [v11 localizedStringForKey:@"TOGGLE_FILTERING" value:&stru_100662A88 table:@"Main"];
    [(MFMailboxFilterBarButtonItem *)v10 setTitle:v12];

    if (v7)
    {
      [UIImage systemImageNamed:MFImageGlyphFilter];
    }

    else
    {
      [UIImage systemImageNamed:MFImageGlyphFilterEnabled];
    }
    v13 = ;
    objc_storeStrong(&v10->_selectedImage, v13);
  }

  return v10;
}

- (void)setFilterEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  self->_filterEnabled = enabled;
  if (MUISolariumFeatureEnabled())
  {

    [(MFMailboxFilterBarButtonItem *)self setSelected:enabledCopy];
  }

  else
  {
    if (enabledCopy)
    {
      [(MFMailboxFilterBarButtonItem *)self selectedImage];
    }

    else
    {
      [(MFMailboxFilterBarButtonItem *)self notSelectedImage];
    }
    v5 = ;
    [(MFMailboxFilterBarButtonItem *)self setImage:v5];
  }
}

@end