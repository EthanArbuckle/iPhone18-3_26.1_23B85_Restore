@interface MapViewModeGridButtonViewModel
- (BOOL)isEqual:(id)a3;
- (MapViewModeGridButtonViewDelegate)delegate;
- (MapViewModeGridButtonViewModel)initWithTitle:(id)a3 image:(id)a4 wideImage:(id)a5 enabled:(BOOL)a6 selected:(BOOL)a7 overflowMenu:(id)a8 delegate:(id)a9 axIdentifier:(id)a10;
@end

@implementation MapViewModeGridButtonViewModel

- (MapViewModeGridButtonViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v14 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    v7 = [(MapViewModeGridButtonViewModel *)v6 title];
    v8 = v7;
    if (v7 == self->_title || [(NSString *)v7 isEqual:?])
    {
      v9 = [(MapViewModeGridButtonViewModel *)v6 image];
      v10 = v9;
      if (v9 == self->_image || [(UIImage *)v9 isEqual:?])
      {
        v11 = [(MapViewModeGridButtonViewModel *)v6 wideImage];
        v12 = v11;
        if ((v11 == self->_wideImage || [(UIImage *)v11 isEqual:?]) && self->_enabled == [(MapViewModeGridButtonViewModel *)v6 enabled]&& self->_selected == [(MapViewModeGridButtonViewModel *)v6 selected])
        {
          v13 = [(MapViewModeGridButtonViewModel *)v6 overflowMenu];
          if (v13 == self->_overflowMenu)
          {
            v16 = [(MapViewModeGridButtonViewModel *)v6 delegate];
            WeakRetained = objc_loadWeakRetained(&self->_delegate);
            if (v16 == WeakRetained)
            {
              v14 = 1;
            }

            else
            {
              v14 = [v16 isEqual:WeakRetained];
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

- (MapViewModeGridButtonViewModel)initWithTitle:(id)a3 image:(id)a4 wideImage:(id)a5 enabled:(BOOL)a6 selected:(BOOL)a7 overflowMenu:(id)a8 delegate:(id)a9 axIdentifier:(id)a10
{
  v25 = a3;
  v24 = a4;
  v15 = a5;
  v16 = a8;
  v17 = a9;
  v18 = a10;
  v26.receiver = self;
  v26.super_class = MapViewModeGridButtonViewModel;
  v19 = [(MapViewModeGridButtonViewModel *)&v26 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_title, a3);
    objc_storeStrong(&v20->_image, a4);
    objc_storeStrong(&v20->_wideImage, a5);
    v20->_enabled = a6;
    v20->_selected = a7;
    objc_storeStrong(&v20->_overflowMenu, a8);
    objc_storeWeak(&v20->_delegate, v17);
    objc_storeStrong(&v20->_axIdentifierForView, a10);
  }

  return v20;
}

@end