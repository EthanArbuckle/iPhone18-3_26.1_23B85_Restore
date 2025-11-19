@interface MFMailboxFilterBarButtonItem
- (MFMailboxFilterBarButtonItem)initWithTarget:(id)a3 action:(SEL)a4;
- (void)setFilterEnabled:(BOOL)a3;
@end

@implementation MFMailboxFilterBarButtonItem

- (MFMailboxFilterBarButtonItem)initWithTarget:(id)a3 action:(SEL)a4
{
  v6 = a3;
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
  v10 = [(MFMailboxFilterBarButtonItem *)&v15 initWithImage:notSelectedImage style:0 target:v6 action:a4];
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

- (void)setFilterEnabled:(BOOL)a3
{
  v3 = a3;
  self->_filterEnabled = a3;
  if (MUISolariumFeatureEnabled())
  {

    [(MFMailboxFilterBarButtonItem *)self setSelected:v3];
  }

  else
  {
    if (v3)
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