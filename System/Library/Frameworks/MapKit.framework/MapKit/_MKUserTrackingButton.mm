@interface _MKUserTrackingButton
+ (_MKUserTrackingButton)buttonWithUserTrackingView:(id)a3 withType:(int64_t)a4 applyDefaultImageIfNeeded:(BOOL)a5;
- (CGSize)sizeThatFits:(CGSize)a3;
- (MKMapView)mapView;
- (UIEdgeInsets)_imageEdgeInsetsForUserTrackingMode:(int64_t)a3;
- (id)_defaultImageForUserTrackingMode:(int64_t)a3 controlState:(unint64_t)a4;
- (id)_defaultLandscapeImagePhoneForUserTrackingMode:(int64_t)a3 controlState:(unint64_t)a4;
- (id)_imageForState:(int64_t)a3 controlState:(unint64_t)a4;
- (id)_imageForUserTrackingMode:(int64_t)a3 controlState:(unint64_t)a4;
- (id)_landscapeImagePhoneForUserTrackingMode:(int64_t)a3 controlState:(unint64_t)a4;
- (void)_repositionViews;
- (void)_setImage:(id)a3 forUserTrackingMode:(int64_t)a4 controlState:(unint64_t)a5;
- (void)_setImageEdgeInsets:(UIEdgeInsets)a3 forUserTrackingMode:(int64_t)a4;
- (void)_setInternallyEnabled:(BOOL)a3;
- (void)_setLandscapeImagePhone:(id)a3 forUserTrackingMode:(int64_t)a4 controlState:(unint64_t)a5;
- (void)setControlSize:(unint64_t)a3;
- (void)setEnabled:(BOOL)a3;
- (void)setMapView:(id)a3;
- (void)traitEnvironment:(id)a3 didChangeTraitCollection:(id)a4;
- (void)updateForMiniBarState:(BOOL)a3;
@end

@implementation _MKUserTrackingButton

- (void)_repositionViews
{
  v3 = [(_MKUserTrackingButtonController *)self->_controller state];
  switch(v3)
  {
    case 3:
      v4 = self;
      v5 = 2;
      goto LABEL_7;
    case 2:
      v4 = self;
      v5 = 1;
      goto LABEL_7;
    case 0:
      v4 = self;
      v5 = 0;
LABEL_7:
      [(_MKUserTrackingButton *)v4 _imageEdgeInsetsForUserTrackingMode:v5];
      goto LABEL_9;
  }

  v6 = *MEMORY[0x1E69DDCE0];
  v7 = *(MEMORY[0x1E69DDCE0] + 8);
  v8 = *(MEMORY[0x1E69DDCE0] + 16);
  v9 = *(MEMORY[0x1E69DDCE0] + 24);
LABEL_9:

  [(_MKUserTrackingButton *)self setImageEdgeInsets:v6, v7, v8, v9];
}

- (void)_setInternallyEnabled:(BOOL)a3
{
  self->_internallyEnabled = a3;
  explicitlyEnabled = self->_explicitlyEnabled;
  v4.receiver = self;
  v4.super_class = _MKUserTrackingButton;
  [(_MKUserTrackingButton *)&v4 setEnabled:explicitlyEnabled & a3];
}

- (void)setEnabled:(BOOL)a3
{
  self->_explicitlyEnabled = a3;
  v5 = a3 && self->_internallyEnabled;
  v7 = v3;
  v8 = v4;
  v6.receiver = self;
  v6.super_class = _MKUserTrackingButton;
  [(_MKUserTrackingButton *)&v6 setEnabled:v5];
}

- (void)updateForMiniBarState:(BOOL)a3
{
  if (self->_inMiniBar != a3)
  {
    self->_inMiniBar = a3;
    [(_MKUserTrackingButtonController *)self->_controller _reloadState];

    [(_MKUserTrackingButton *)self sizeToFit];
  }
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  v3 = 36.0;
  if (self->_inMiniBar)
  {
    v3 = 25.0;
  }

  v4 = v3;
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)_setImageEdgeInsets:(UIEdgeInsets)a3 forUserTrackingMode:(int64_t)a4
{
  right = a3.right;
  bottom = a3.bottom;
  left = a3.left;
  top = a3.top;
  if (!self->_customImageEdgeInsets)
  {
    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    customImageEdgeInsets = self->_customImageEdgeInsets;
    self->_customImageEdgeInsets = v10;
  }

  v12 = [MEMORY[0x1E696B098] valueWithUIEdgeInsets:{top, left, bottom, right}];
  v13 = self->_customImageEdgeInsets;
  v14 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
  [(NSMutableDictionary *)v13 setObject:v12 forKeyedSubscript:v14];

  controller = self->_controller;

  [(_MKUserTrackingButtonController *)controller _reloadState];
}

- (UIEdgeInsets)_imageEdgeInsetsForUserTrackingMode:(int64_t)a3
{
  customImageEdgeInsets = self->_customImageEdgeInsets;
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:?];
  v7 = [(NSMutableDictionary *)customImageEdgeInsets objectForKeyedSubscript:v6];

  if (v7)
  {
    [v7 UIEdgeInsetsValue];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    goto LABEL_15;
  }

  v13 = 0.0;
  if (a3 > 1)
  {
    v15 = 0.0;
    v11 = 0.0;
    v9 = 0.0;
    goto LABEL_15;
  }

  if (self->_inMiniBar)
  {
    if (_MKLinkedOnOrAfterReleaseSet(2310))
    {
LABEL_10:
      v9 = 1.0;
      v15 = 2.0;
      v11 = 2.0;
      goto LABEL_15;
    }

    v15 = 2.0;
    if (self->_inMiniBar)
    {
      v11 = 0.0;
      v9 = 2.0;
      goto LABEL_15;
    }
  }

  if (_MKLinkedOnOrAfterReleaseSet(2310))
  {
    goto LABEL_10;
  }

  v15 = 2.0;
  if (self->_inMiniBar)
  {
    v9 = 2.0;
  }

  else
  {
    v9 = 3.0;
  }

  v11 = 0.0;
LABEL_15:

  v16 = v9;
  v17 = v11;
  v18 = v13;
  v19 = v15;
  result.right = v19;
  result.bottom = v18;
  result.left = v17;
  result.top = v16;
  return result;
}

- (void)_setLandscapeImagePhone:(id)a3 forUserTrackingMode:(int64_t)a4 controlState:(unint64_t)a5
{
  v16 = a3;
  customLandscapeImagePhones = self->_customLandscapeImagePhones;
  if (!customLandscapeImagePhones)
  {
    v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v10 = self->_customLandscapeImagePhones;
    self->_customLandscapeImagePhones = v9;

    customLandscapeImagePhones = self->_customLandscapeImagePhones;
  }

  v11 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
  v12 = [(NSMutableDictionary *)customLandscapeImagePhones objectForKeyedSubscript:v11];

  if (!v12)
  {
    v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v13 = self->_customLandscapeImagePhones;
    v14 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
    [(NSMutableDictionary *)v13 setObject:v12 forKeyedSubscript:v14];
  }

  v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a5];
  if (v16)
  {
    [v12 setObject:v16 forKeyedSubscript:v15];
  }

  else
  {
    [v12 removeObjectForKey:v15];
  }

  [(_MKUserTrackingButtonController *)self->_controller _reloadState];
}

- (id)_landscapeImagePhoneForUserTrackingMode:(int64_t)a3 controlState:(unint64_t)a4
{
  customLandscapeImagePhones = self->_customLandscapeImagePhones;
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:?];
  v9 = [(NSMutableDictionary *)customLandscapeImagePhones objectForKeyedSubscript:v8];

  if (!v9 || ([MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4], v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "objectForKeyedSubscript:", v10), v11 = objc_claimAutoreleasedReturnValue(), v10, !v11))
  {
    v11 = [(_MKUserTrackingButton *)self _defaultLandscapeImagePhoneForUserTrackingMode:a3 controlState:a4];
  }

  return v11;
}

- (id)_defaultLandscapeImagePhoneForUserTrackingMode:(int64_t)a3 controlState:(unint64_t)a4
{
  if (a4)
  {
    v8 = 0;

    return v8;
  }

  v15 = v4;
  v8 = _MKLinkedOnOrAfterReleaseSet(2310);
  if (v8)
  {
    v11 = @"location";
    if (a3 == 1)
    {
      v11 = @"location.fill";
    }

    if (a3 == 2)
    {
      v12 = @"location.north.line.fill";
    }

    else
    {
      v12 = v11;
    }

    v8 = [MEMORY[0x1E69DCAB8] systemImageNamed:{v12, v5, v15, v6}];
    goto LABEL_19;
  }

  if (a3 == 2)
  {
    v13 = MEMORY[0x1E69DCAB8];
    v14 = @"TrackingHeadingMaskLandscape.png";
  }

  else if (a3 == 1)
  {
    v13 = MEMORY[0x1E69DCAB8];
    v14 = @"TrackingLocationMaskLandscape.png";
  }

  else
  {
    if (a3)
    {
      goto LABEL_19;
    }

    v13 = MEMORY[0x1E69DCAB8];
    v14 = @"TrackingLocationOffMaskLandscape.png";
  }

  v8 = [v13 _mapkit_imageNamed:{v14, v5, v15, v6}];
LABEL_19:

  return v8;
}

- (void)_setImage:(id)a3 forUserTrackingMode:(int64_t)a4 controlState:(unint64_t)a5
{
  v16 = a3;
  customImages = self->_customImages;
  if (!customImages)
  {
    v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v10 = self->_customImages;
    self->_customImages = v9;

    customImages = self->_customImages;
  }

  v11 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
  v12 = [(NSMutableDictionary *)customImages objectForKeyedSubscript:v11];

  if (!v12)
  {
    v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v13 = self->_customImages;
    v14 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
    [(NSMutableDictionary *)v13 setObject:v12 forKeyedSubscript:v14];
  }

  v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a5];
  if (v16)
  {
    [v12 setObject:v16 forKeyedSubscript:v15];
  }

  else
  {
    [v12 removeObjectForKey:v15];
  }

  [(_MKUserTrackingButtonController *)self->_controller _reloadState];
}

- (id)_imageForUserTrackingMode:(int64_t)a3 controlState:(unint64_t)a4
{
  customImages = self->_customImages;
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:?];
  v9 = [(NSMutableDictionary *)customImages objectForKeyedSubscript:v8];

  if (!v9 || ([MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4], v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "objectForKeyedSubscript:", v10), v11 = objc_claimAutoreleasedReturnValue(), v10, !v11))
  {
    if (self->_applyDefaultImageIfNeeded)
    {
      v11 = [(_MKUserTrackingButton *)self _defaultImageForUserTrackingMode:a3 controlState:a4];
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (id)_defaultImageForUserTrackingMode:(int64_t)a3 controlState:(unint64_t)a4
{
  if (a4)
  {
    v8 = 0;

    return v8;
  }

  v15 = v4;
  v8 = _MKLinkedOnOrAfterReleaseSet(2310);
  if (v8)
  {
    v11 = @"location";
    if (a3 == 1)
    {
      v11 = @"location.fill";
    }

    if (a3 == 2)
    {
      v12 = @"location.north.line.fill";
    }

    else
    {
      v12 = v11;
    }

    v8 = [MEMORY[0x1E69DCAB8] systemImageNamed:{v12, v5, v15, v6}];
    goto LABEL_19;
  }

  if (a3 == 2)
  {
    v13 = MEMORY[0x1E69DCAB8];
    v14 = @"TrackingHeadingMask.png";
  }

  else if (a3 == 1)
  {
    v13 = MEMORY[0x1E69DCAB8];
    v14 = @"TrackingLocationMask.png";
  }

  else
  {
    if (a3)
    {
      goto LABEL_19;
    }

    v13 = MEMORY[0x1E69DCAB8];
    v14 = @"TrackingLocationOffMask.png";
  }

  v8 = [v13 _mapkit_imageNamed:{v14, v5, v15, v6}];
LABEL_19:

  return v8;
}

- (id)_imageForState:(int64_t)a3 controlState:(unint64_t)a4
{
  v4 = 0;
  if (a3 <= 0)
  {
    if (a3 == -1)
    {
      goto LABEL_10;
    }

    if (a3)
    {
      goto LABEL_21;
    }

    if (!self->_inMiniBar)
    {
      v7 = 0;
      goto LABEL_19;
    }

    v5 = 0;
    goto LABEL_15;
  }

  switch(a3)
  {
    case 3:
      if (!self->_inMiniBar)
      {
        v7 = 2;
        goto LABEL_19;
      }

      v5 = 2;
LABEL_15:
      v6 = [(_MKUserTrackingButton *)self _landscapeImagePhoneForUserTrackingMode:v5 controlState:a4];
      goto LABEL_20;
    case 2:
      if (self->_inMiniBar)
      {
        v5 = 1;
        goto LABEL_15;
      }

      v7 = 1;
LABEL_19:
      v6 = [(_MKUserTrackingButton *)self _imageForUserTrackingMode:v7 controlState:a4];
      goto LABEL_20;
    case 1:
LABEL_10:
      v6 = [MEMORY[0x1E69DCAB8] _mapkit_imageNamed:{@"TrackingEmpty.png", a4}];
LABEL_20:
      v4 = v6;
      break;
  }

LABEL_21:

  return v4;
}

- (void)traitEnvironment:(id)a3 didChangeTraitCollection:(id)a4
{
  v5 = [a4 userInterfaceStyle];
  v6 = [(_MKUserTrackingButton *)self traitCollection];
  v7 = [v6 userInterfaceStyle];

  if (v5 != v7)
  {
    controller = self->_controller;

    [(_MKUserTrackingButtonController *)controller _updateLoading];
  }
}

- (void)setControlSize:(unint64_t)a3
{
  if (self->_controlSize != a3)
  {
    self->_controlSize = a3;
    [(_MKUserTrackingButtonController *)self->_controller setControlSize:?];
  }
}

- (void)setMapView:(id)a3
{
  v5 = a3;
  v13 = v5;
  if (v5 && (objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v5 = v13, (isKindOfClass & 1) == 0))
  {
    v7 = MEMORY[0x1E695DF30];
    v8 = *MEMORY[0x1E695D940];
    v9 = MEMORY[0x1E696AEC0];
    v10 = self;
    v11 = NSStringFromSelector(a2);
    v12 = [v9 stringWithFormat:@"%@ %@", v10, v11];

    [v7 raise:v8 format:{@"%@: mapView must be an MKMapView instance", v12}];
  }

  else
  {
    [(_MKUserTrackingButtonController *)self->_controller setUserTrackingView:v5];
  }
}

- (MKMapView)mapView
{
  v3 = [(_MKUserTrackingButtonController *)self->_controller userTrackingView];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [(_MKUserTrackingButtonController *)self->_controller userTrackingView];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (_MKUserTrackingButton)buttonWithUserTrackingView:(id)a3 withType:(int64_t)a4 applyDefaultImageIfNeeded:(BOOL)a5
{
  v17[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = [a1 buttonWithType:a4];
  [v9 sizeToFit];
  *(v9 + 777) = 1;
  *(v9 + 778) = 1;
  *(v9 + 779) = a5;
  v10 = [_MKUserTrackingButtonController alloc];
  v11 = [v9 imageView];
  v12 = [(_MKUserTrackingButtonController *)v10 initWithTarget:v9 userTrackingView:v8 imageView:v11 button:v9];

  v13 = *(v9 + 744);
  *(v9 + 744) = v12;

  [v9 addTarget:*(v9 + 744) action:sel__goToNextMode_ forControlEvents:0x2000];
  *(v9 + 776) = 1;
  [*(v9 + 744) setButtonBehavior:{objc_msgSend(v9, "behavior")}];
  [*(v9 + 744) _reloadState];
  v17[0] = objc_opt_class();
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
  v15 = [v9 registerForTraitChanges:v14 withAction:sel_traitEnvironment_didChangeTraitCollection_];

  return v9;
}

@end