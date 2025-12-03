@interface MapViewModeGridButtonViewModel
- (BOOL)isEqual:(id)equal;
- (MapViewModeGridButtonViewDelegate)delegate;
- (MapViewModeGridButtonViewModel)initWithTitle:(id)title image:(id)image wideImage:(id)wideImage enabled:(BOOL)enabled selected:(BOOL)selected overflowMenu:(id)menu delegate:(id)delegate axIdentifier:(id)self0;
@end

@implementation MapViewModeGridButtonViewModel

- (MapViewModeGridButtonViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v14 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    title = [(MapViewModeGridButtonViewModel *)v6 title];
    v8 = title;
    if (title == self->_title || [(NSString *)title isEqual:?])
    {
      image = [(MapViewModeGridButtonViewModel *)v6 image];
      v10 = image;
      if (image == self->_image || [(UIImage *)image isEqual:?])
      {
        wideImage = [(MapViewModeGridButtonViewModel *)v6 wideImage];
        v12 = wideImage;
        if ((wideImage == self->_wideImage || [(UIImage *)wideImage isEqual:?]) && self->_enabled == [(MapViewModeGridButtonViewModel *)v6 enabled]&& self->_selected == [(MapViewModeGridButtonViewModel *)v6 selected])
        {
          overflowMenu = [(MapViewModeGridButtonViewModel *)v6 overflowMenu];
          if (overflowMenu == self->_overflowMenu)
          {
            delegate = [(MapViewModeGridButtonViewModel *)v6 delegate];
            WeakRetained = objc_loadWeakRetained(&self->_delegate);
            if (delegate == WeakRetained)
            {
              v14 = 1;
            }

            else
            {
              v14 = [delegate isEqual:WeakRetained];
            }
          }

          else
          {
            v14 = 0;
          }
        }

        else
        {
          v14 = 0;
        }
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (MapViewModeGridButtonViewModel)initWithTitle:(id)title image:(id)image wideImage:(id)wideImage enabled:(BOOL)enabled selected:(BOOL)selected overflowMenu:(id)menu delegate:(id)delegate axIdentifier:(id)self0
{
  titleCopy = title;
  imageCopy = image;
  wideImageCopy = wideImage;
  menuCopy = menu;
  delegateCopy = delegate;
  identifierCopy = identifier;
  v26.receiver = self;
  v26.super_class = MapViewModeGridButtonViewModel;
  v19 = [(MapViewModeGridButtonViewModel *)&v26 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_title, title);
    objc_storeStrong(&v20->_image, image);
    objc_storeStrong(&v20->_wideImage, wideImage);
    v20->_enabled = enabled;
    v20->_selected = selected;
    objc_storeStrong(&v20->_overflowMenu, menu);
    objc_storeWeak(&v20->_delegate, delegateCopy);
    objc_storeStrong(&v20->_axIdentifierForView, identifier);
  }

  return v20;
}

@end