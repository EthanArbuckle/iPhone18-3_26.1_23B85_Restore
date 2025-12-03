@interface MKUserTrackingButton
+ (MKUserTrackingButton)userTrackingButtonWithMapView:(MKMapView *)mapView;
- (CGSize)intrinsicContentSize;
- (MKMapView)mapView;
- (MKUserTrackingButton)init;
- (MKUserTrackingButton)initWithFrame:(CGRect)frame;
- (MKUserTrackingButton)initWithFrame:(CGRect)frame button:(id)button;
- (void)_setControlSize:(unint64_t)size;
- (void)addInteraction:(id)interaction;
- (void)layoutSubviews;
- (void)removeInteraction:(id)interaction;
- (void)setBackgroundStyle:(unint64_t)style;
- (void)setMapView:(MKMapView *)mapView;
@end

@implementation MKUserTrackingButton

- (void)removeInteraction:(id)interaction
{
  interactionCopy = interaction;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    WeakRetained = objc_loadWeakRetained(&self->_button);
    [WeakRetained removeInteraction:interactionCopy];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = MKUserTrackingButton;
    [(MKUserTrackingButton *)&v6 removeInteraction:interactionCopy];
  }
}

- (void)addInteraction:(id)interaction
{
  interactionCopy = interaction;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    WeakRetained = objc_loadWeakRetained(&self->_button);
    [WeakRetained addInteraction:interactionCopy];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = MKUserTrackingButton;
    [(MKUserTrackingButton *)&v6 addInteraction:interactionCopy];
  }
}

- (void)setBackgroundStyle:(unint64_t)style
{
  if (self->_backgroundStyle != style)
  {
    self->_backgroundStyle = style;
    if (style)
    {
      v4 = +[MKSystemController sharedInstance];
      isGlassEnabled = [v4 isGlassEnabled];

      if ((isGlassEnabled & 1) == 0)
      {
        layer = [(MKUserTrackingButton *)self layer];
        LODWORD(v7) = 1.0;
        [layer setShadowOpacity:v7];
      }

      WeakRetained = objc_loadWeakRetained(&self->_button);
      [WeakRetained _setSelectsWhenTracking:0];

      v9 = +[MKSystemController sharedInstance];
      isGlassEnabled2 = [v9 isGlassEnabled];

      if ((isGlassEnabled2 & 1) == 0 && !self->_effectView)
      {
        v11 = objc_alloc(MEMORY[0x1E69DD298]);
        v12 = [v11 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
        effectView = self->_effectView;
        self->_effectView = v12;

        v14 = [MEMORY[0x1E69DC730] effectWithStyle:9];
        [(UIVisualEffectView *)self->_effectView setEffect:v14];

        [(UIVisualEffectView *)self->_effectView setUserInteractionEnabled:0];
        layer2 = [(UIVisualEffectView *)self->_effectView layer];
        [layer2 setMasksToBounds:1];
      }

      [(MKUserTrackingButton *)self invalidateIntrinsicContentSize];
      v16 = +[MKSystemController sharedInstance];
      isGlassEnabled3 = [v16 isGlassEnabled];

      if (isGlassEnabled3)
      {
        [(MKUserTrackingButton *)self _mapkit_setGlassBackground];
      }

      else
      {
        [(MKUserTrackingButton *)self insertSubview:self->_effectView atIndex:0];
      }

      [(MKUserTrackingButton *)self setNeedsLayout];
    }

    else
    {
      v18 = objc_loadWeakRetained(&self->_button);
      [v18 _setSelectsWhenTracking:1];

      v19 = +[MKSystemController sharedInstance];
      isGlassEnabled4 = [v19 isGlassEnabled];

      if (isGlassEnabled4)
      {
        [(MKUserTrackingButton *)self _mapkit_clearGlassBackground];
      }

      else
      {
        [(UIVisualEffectView *)self->_effectView removeFromSuperview];
      }

      [(MKUserTrackingButton *)self invalidateIntrinsicContentSize];
      v21 = +[MKSystemController sharedInstance];
      isGlassEnabled5 = [v21 isGlassEnabled];

      if ((isGlassEnabled5 & 1) == 0)
      {
        layer3 = [(MKUserTrackingButton *)self layer];
        [layer3 setShadowOpacity:0.0];
      }
    }
  }
}

- (void)_setControlSize:(unint64_t)size
{
  if (self->_controlSize != size)
  {
    self->_controlSize = size;
    WeakRetained = objc_loadWeakRetained(&self->_button);
    [WeakRetained setControlSize:size];

    [(MKUserTrackingButton *)self invalidateIntrinsicContentSize];
  }
}

- (void)layoutSubviews
{
  v33.receiver = self;
  v33.super_class = MKUserTrackingButton;
  [(MKUserTrackingButton *)&v33 layoutSubviews];
  [(MKUserTrackingButton *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  WeakRetained = objc_loadWeakRetained(&self->_button);
  [WeakRetained setFrame:{v4, v6, v8, v10}];

  [(MKUserTrackingButton *)self bounds];
  [(UIVisualEffectView *)self->_effectView setFrame:?];
  if ([(MKUserTrackingButton *)self backgroundStyle]== 2)
  {
    [(MKUserTrackingButton *)self bounds];
    v12 = CGRectGetWidth(v34) * 0.5;
    layer = [(MKUserTrackingButton *)self layer];
    [layer setCornerRadius:v12];

    layer2 = [(UIVisualEffectView *)self->_effectView layer];
    [layer2 setCornerRadius:v12];

    v15 = +[MKSystemController sharedInstance];
    isGlassEnabled = [v15 isGlassEnabled];

    if (isGlassEnabled)
    {
      return;
    }

    v17 = MEMORY[0x1E69DC728];
    [(MKUserTrackingButton *)self bounds];
    v18 = [v17 bezierPathWithOvalInRect:?];
    goto LABEL_18;
  }

  controlSize = self->_controlSize;
  if (controlSize == 1)
  {
    v20 = 8.0;
  }

  else
  {
    v20 = 6.0;
  }

  if (controlSize == 2)
  {
    v21 = 11.0;
  }

  else
  {
    v21 = v20;
  }

  layer3 = [(MKUserTrackingButton *)self layer];
  [layer3 setCornerRadius:v21];

  v23 = self->_controlSize;
  if (v23 == 1)
  {
    v24 = 8.0;
  }

  else
  {
    v24 = 6.0;
  }

  if (v23 == 2)
  {
    v25 = 11.0;
  }

  else
  {
    v25 = v24;
  }

  layer4 = [(UIVisualEffectView *)self->_effectView layer];
  [layer4 setCornerRadius:v25];

  v27 = +[MKSystemController sharedInstance];
  isGlassEnabled2 = [v27 isGlassEnabled];

  if ((isGlassEnabled2 & 1) == 0)
  {
    v29 = MEMORY[0x1E69DC728];
    [(MKUserTrackingButton *)self bounds];
    v18 = [v29 bezierPathWithRoundedRect:? cornerRadius:?];
LABEL_18:
    v30 = v18;
    cGPath = [v18 CGPath];
    layer5 = [(MKUserTrackingButton *)self layer];
    [layer5 setShadowPath:cGPath];
  }
}

- (CGSize)intrinsicContentSize
{
  controlSize = self->_controlSize;
  if (MapKitIdiomIsMacCatalyst() && controlSize < 3)
  {
    v4 = dbl_1A30F7A90[controlSize];
    goto LABEL_12;
  }

  if (controlSize == 2)
  {
    v5 = 0x404E000000000000;
LABEL_11:
    v4 = *&v5;
    goto LABEL_12;
  }

  if (controlSize != 1)
  {
    v5 = 0x4042000000000000;
    goto LABEL_11;
  }

  if (_useMapsAppSpecificNonStandardControlSizeResolution)
  {
    v4 = 48.0;
  }

  else
  {
    v4 = 44.0;
  }

LABEL_12:
  backgroundStyle = [(MKUserTrackingButton *)self backgroundStyle];
  v7 = v4;
  if (backgroundStyle == 2)
  {
    goto LABEL_20;
  }

  v8 = self->_controlSize;
  if (MapKitIdiomIsMacCatalyst() && v8 < 3)
  {
    v9 = &unk_1A30F77C8;
LABEL_19:
    v7 = v9[v8];
    goto LABEL_20;
  }

  if (MapKitIdiomIsMacCatalyst() && v8 < 3)
  {
    v9 = dbl_1A30F7A90;
    goto LABEL_19;
  }

  if (v8 == 2)
  {
    v11 = 0x404E000000000000;
LABEL_28:
    v7 = *&v11;
    goto LABEL_20;
  }

  if (v8 != 1)
  {
    v11 = 0x4042000000000000;
    goto LABEL_28;
  }

  v7 = 48.0;
  if (!_useMapsAppSpecificNonStandardControlSizeResolution)
  {
    v7 = 44.0;
  }

LABEL_20:
  v10 = v4;
  result.height = v7;
  result.width = v10;
  return result;
}

- (MKUserTrackingButton)init
{
  v3 = [_MKUserTrackingButton buttonWithMapView:0];
  [v3 sizeToFit];
  [v3 frame];
  v4 = [(MKUserTrackingButton *)self initWithFrame:v3 button:?];

  return v4;
}

- (MKUserTrackingButton)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8 = [_MKUserTrackingButton buttonWithMapView:0];
  height = [(MKUserTrackingButton *)self initWithFrame:v8 button:x, y, width, height];

  return height;
}

- (MKUserTrackingButton)initWithFrame:(CGRect)frame button:(id)button
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  buttonCopy = button;
  v27.receiver = self;
  v27.super_class = MKUserTrackingButton;
  height = [(MKUserTrackingButton *)&v27 initWithFrame:x, y, width, height];
  v11 = height;
  if (height)
  {
    height->_controlSize = 1;
    v12 = objc_storeWeak(&height->_button, buttonCopy);
    [buttonCopy setControlSize:1];

    WeakRetained = objc_loadWeakRetained(&v11->_button);
    [(MKUserTrackingButton *)v11 addSubview:WeakRetained];

    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(MKUserTrackingButton *)v11 setBackgroundColor:clearColor];

    [(MKUserTrackingButton *)v11 setNeedsLayout];
    v15 = +[MKUsageCounter sharedCounter];
    [v15 count:4];

    v16 = +[MKSystemController sharedInstance];
    isGlassEnabled = [v16 isGlassEnabled];

    if ((isGlassEnabled & 1) == 0)
    {
      layer = [(MKUserTrackingButton *)v11 layer];
      [layer setShadowRadius:8.0];

      layer2 = [(MKUserTrackingButton *)v11 layer];
      [layer2 setShadowOffset:{0.0, 2.0}];

      blackColor = [MEMORY[0x1E69DC888] blackColor];
      v21 = [blackColor colorWithAlphaComponent:0.0799999982];
      cGColor = [v21 CGColor];
      layer3 = [(MKUserTrackingButton *)v11 layer];
      [layer3 setShadowColor:cGColor];

      layer4 = [(MKUserTrackingButton *)v11 layer];
      [layer4 setShadowOpacity:0.0];

      layer5 = [(MKUserTrackingButton *)v11 layer];
      [layer5 setMasksToBounds:0];
    }
  }

  return v11;
}

- (void)setMapView:(MKMapView *)mapView
{
  v4 = mapView;
  WeakRetained = objc_loadWeakRetained(&self->_button);
  [WeakRetained setMapView:v4];
}

- (MKMapView)mapView
{
  WeakRetained = objc_loadWeakRetained(&self->_button);
  mapView = [WeakRetained mapView];

  return mapView;
}

+ (MKUserTrackingButton)userTrackingButtonWithMapView:(MKMapView *)mapView
{
  v4 = mapView;
  v5 = objc_alloc_init(self);
  [v5 setMapView:v4];

  return v5;
}

@end