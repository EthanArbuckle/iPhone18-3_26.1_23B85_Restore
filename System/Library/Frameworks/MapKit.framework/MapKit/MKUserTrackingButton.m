@interface MKUserTrackingButton
+ (MKUserTrackingButton)userTrackingButtonWithMapView:(MKMapView *)mapView;
- (CGSize)intrinsicContentSize;
- (MKMapView)mapView;
- (MKUserTrackingButton)init;
- (MKUserTrackingButton)initWithFrame:(CGRect)a3;
- (MKUserTrackingButton)initWithFrame:(CGRect)a3 button:(id)a4;
- (void)_setControlSize:(unint64_t)a3;
- (void)addInteraction:(id)a3;
- (void)layoutSubviews;
- (void)removeInteraction:(id)a3;
- (void)setBackgroundStyle:(unint64_t)a3;
- (void)setMapView:(MKMapView *)mapView;
@end

@implementation MKUserTrackingButton

- (void)removeInteraction:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    WeakRetained = objc_loadWeakRetained(&self->_button);
    [WeakRetained removeInteraction:v4];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = MKUserTrackingButton;
    [(MKUserTrackingButton *)&v6 removeInteraction:v4];
  }
}

- (void)addInteraction:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    WeakRetained = objc_loadWeakRetained(&self->_button);
    [WeakRetained addInteraction:v4];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = MKUserTrackingButton;
    [(MKUserTrackingButton *)&v6 addInteraction:v4];
  }
}

- (void)setBackgroundStyle:(unint64_t)a3
{
  if (self->_backgroundStyle != a3)
  {
    self->_backgroundStyle = a3;
    if (a3)
    {
      v4 = +[MKSystemController sharedInstance];
      v5 = [v4 isGlassEnabled];

      if ((v5 & 1) == 0)
      {
        v6 = [(MKUserTrackingButton *)self layer];
        LODWORD(v7) = 1.0;
        [v6 setShadowOpacity:v7];
      }

      WeakRetained = objc_loadWeakRetained(&self->_button);
      [WeakRetained _setSelectsWhenTracking:0];

      v9 = +[MKSystemController sharedInstance];
      v10 = [v9 isGlassEnabled];

      if ((v10 & 1) == 0 && !self->_effectView)
      {
        v11 = objc_alloc(MEMORY[0x1E69DD298]);
        v12 = [v11 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
        effectView = self->_effectView;
        self->_effectView = v12;

        v14 = [MEMORY[0x1E69DC730] effectWithStyle:9];
        [(UIVisualEffectView *)self->_effectView setEffect:v14];

        [(UIVisualEffectView *)self->_effectView setUserInteractionEnabled:0];
        v15 = [(UIVisualEffectView *)self->_effectView layer];
        [v15 setMasksToBounds:1];
      }

      [(MKUserTrackingButton *)self invalidateIntrinsicContentSize];
      v16 = +[MKSystemController sharedInstance];
      v17 = [v16 isGlassEnabled];

      if (v17)
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
      v20 = [v19 isGlassEnabled];

      if (v20)
      {
        [(MKUserTrackingButton *)self _mapkit_clearGlassBackground];
      }

      else
      {
        [(UIVisualEffectView *)self->_effectView removeFromSuperview];
      }

      [(MKUserTrackingButton *)self invalidateIntrinsicContentSize];
      v21 = +[MKSystemController sharedInstance];
      v22 = [v21 isGlassEnabled];

      if ((v22 & 1) == 0)
      {
        v23 = [(MKUserTrackingButton *)self layer];
        [v23 setShadowOpacity:0.0];
      }
    }
  }
}

- (void)_setControlSize:(unint64_t)a3
{
  if (self->_controlSize != a3)
  {
    self->_controlSize = a3;
    WeakRetained = objc_loadWeakRetained(&self->_button);
    [WeakRetained setControlSize:a3];

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
    v13 = [(MKUserTrackingButton *)self layer];
    [v13 setCornerRadius:v12];

    v14 = [(UIVisualEffectView *)self->_effectView layer];
    [v14 setCornerRadius:v12];

    v15 = +[MKSystemController sharedInstance];
    v16 = [v15 isGlassEnabled];

    if (v16)
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

  v22 = [(MKUserTrackingButton *)self layer];
  [v22 setCornerRadius:v21];

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

  v26 = [(UIVisualEffectView *)self->_effectView layer];
  [v26 setCornerRadius:v25];

  v27 = +[MKSystemController sharedInstance];
  v28 = [v27 isGlassEnabled];

  if ((v28 & 1) == 0)
  {
    v29 = MEMORY[0x1E69DC728];
    [(MKUserTrackingButton *)self bounds];
    v18 = [v29 bezierPathWithRoundedRect:? cornerRadius:?];
LABEL_18:
    v30 = v18;
    v31 = [v18 CGPath];
    v32 = [(MKUserTrackingButton *)self layer];
    [v32 setShadowPath:v31];
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
  v6 = [(MKUserTrackingButton *)self backgroundStyle];
  v7 = v4;
  if (v6 == 2)
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

- (MKUserTrackingButton)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [_MKUserTrackingButton buttonWithMapView:0];
  v9 = [(MKUserTrackingButton *)self initWithFrame:v8 button:x, y, width, height];

  return v9;
}

- (MKUserTrackingButton)initWithFrame:(CGRect)a3 button:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = a4;
  v27.receiver = self;
  v27.super_class = MKUserTrackingButton;
  v10 = [(MKUserTrackingButton *)&v27 initWithFrame:x, y, width, height];
  v11 = v10;
  if (v10)
  {
    v10->_controlSize = 1;
    v12 = objc_storeWeak(&v10->_button, v9);
    [v9 setControlSize:1];

    WeakRetained = objc_loadWeakRetained(&v11->_button);
    [(MKUserTrackingButton *)v11 addSubview:WeakRetained];

    v14 = [MEMORY[0x1E69DC888] clearColor];
    [(MKUserTrackingButton *)v11 setBackgroundColor:v14];

    [(MKUserTrackingButton *)v11 setNeedsLayout];
    v15 = +[MKUsageCounter sharedCounter];
    [v15 count:4];

    v16 = +[MKSystemController sharedInstance];
    v17 = [v16 isGlassEnabled];

    if ((v17 & 1) == 0)
    {
      v18 = [(MKUserTrackingButton *)v11 layer];
      [v18 setShadowRadius:8.0];

      v19 = [(MKUserTrackingButton *)v11 layer];
      [v19 setShadowOffset:{0.0, 2.0}];

      v20 = [MEMORY[0x1E69DC888] blackColor];
      v21 = [v20 colorWithAlphaComponent:0.0799999982];
      v22 = [v21 CGColor];
      v23 = [(MKUserTrackingButton *)v11 layer];
      [v23 setShadowColor:v22];

      v24 = [(MKUserTrackingButton *)v11 layer];
      [v24 setShadowOpacity:0.0];

      v25 = [(MKUserTrackingButton *)v11 layer];
      [v25 setMasksToBounds:0];
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
  v3 = [WeakRetained mapView];

  return v3;
}

+ (MKUserTrackingButton)userTrackingButtonWithMapView:(MKMapView *)mapView
{
  v4 = mapView;
  v5 = objc_alloc_init(a1);
  [v5 setMapView:v4];

  return v5;
}

@end