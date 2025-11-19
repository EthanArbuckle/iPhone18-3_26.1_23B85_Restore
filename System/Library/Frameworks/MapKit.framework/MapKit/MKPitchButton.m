@interface MKPitchButton
+ (MKPitchButton)pitchButtonWithMapView:(id)a3;
- (CGSize)intrinsicContentSize;
- (MKMapView)mapView;
- (MKPitchButton)initWithMapView:(id)a3;
- (id)_transitionAnimation;
- (void)_performPitchAction:(id)a3;
- (void)_setBackgroundStyle:(unint64_t)a3;
- (void)_setControlSize:(unint64_t)a3;
- (void)_updateButtonState;
- (void)_updateControlSize;
- (void)_updateHiddenState;
- (void)_updateState;
- (void)addInteraction:(id)a3;
- (void)layoutSubviews;
- (void)removeInteraction:(id)a3;
- (void)setMapView:(id)a3;
- (void)setVisibility:(int64_t)a3;
@end

@implementation MKPitchButton

- (void)_updateControlSize
{
  v3 = *MEMORY[0x1E69DB970];
  v4 = MEMORY[0x1E69DCAD8];
  controlSize = self->_controlSize;
  IsMacCatalyst = MapKitIdiomIsMacCatalyst();
  v7 = 14;
  if (controlSize == 2)
  {
    v7 = 16;
  }

  v8 = 18;
  if (controlSize == 2)
  {
    v8 = 22;
  }

  if (!IsMacCatalyst)
  {
    v7 = v8;
  }

  v9 = [v4 _mapkit_configurationWithPointSize:v7 weight:v3];
  [(UIButton *)self->_button setPreferredSymbolConfiguration:v9 forImageInState:0];
}

- (void)_updateButtonState
{
  v3 = MEMORY[0x1E69DCAB8];
  WeakRetained = objc_loadWeakRetained(&self->_mapView);
  if ([WeakRetained _isPitched])
  {
    v5 = @"view.2d";
  }

  else
  {
    v5 = @"view.3d";
  }

  v14 = [v3 _mapkit_systemImageNamed:v5];

  [(UIButton *)self->_button setImage:v14 forState:0];
  v6 = objc_loadWeakRetained(&self->_mapView);
  v7 = [v6 _isPitched];

  button = self->_button;
  if (v7)
  {
    [(UIButton *)button setAccessibilityIdentifier:@"ModeButton2D"];
    v9 = self->_button;
    v10 = _MKLocalizedStringFromThisBundle(@"2D mode");
    [(UIButton *)v9 setAccessibilityLabel:v10];

    [(UIButton *)self->_button setEnabled:1];
  }

  else
  {
    [(UIButton *)button setAccessibilityIdentifier:@"ModeButton3D"];
    v11 = self->_button;
    v12 = _MKLocalizedStringFromThisBundle(@"3D mode");
    [(UIButton *)v11 setAccessibilityLabel:v12];

    v13 = objc_loadWeakRetained(&self->_mapView);
    -[UIButton setEnabled:](self->_button, "setEnabled:", [v13 _canEnter3DMode]);
  }
}

- (MKMapView)mapView
{
  WeakRetained = objc_loadWeakRetained(&self->_mapView);

  return WeakRetained;
}

- (void)removeInteraction:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(UIButton *)self->_button removeInteraction:v4];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = MKPitchButton;
    [(MKPitchButton *)&v5 removeInteraction:v4];
  }
}

- (void)addInteraction:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(UIButton *)self->_button addInteraction:v4];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = MKPitchButton;
    [(MKPitchButton *)&v5 addInteraction:v4];
  }
}

- (id)_transitionAnimation
{
  v3 = objc_alloc_init(MEMORY[0x1E6979538]);
  [v3 setType:*MEMORY[0x1E697A050]];
  WeakRetained = objc_loadWeakRetained(&self->_mapView);
  v5 = [WeakRetained _isPitched];
  v6 = MEMORY[0x1E697A048];
  if (!v5)
  {
    v6 = MEMORY[0x1E697A038];
  }

  [v3 setSubtype:*v6];

  [v3 setDuration:0.5];
  v7 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979ED0]];
  [v3 setTimingFunction:v7];

  [v3 setFillMode:*MEMORY[0x1E69797F0]];

  return v3;
}

- (void)_updateState
{
  v3 = [(MKPitchButton *)self isHidden];
  [(MKPitchButton *)self _updateHiddenState];
  WeakRetained = objc_loadWeakRetained(&self->_mapView);
  if ([WeakRetained _isPitched])
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (self->_state)
  {
    if ((([(MKPitchButton *)self isHidden]| v3) & 1) == 0)
    {
      v6 = +[MKSystemController sharedInstance];
      v7 = [v6 reduceMotionEnabled];

      if ((v7 & 1) == 0)
      {
        if (self->_state == v5)
        {
          goto LABEL_10;
        }

        v8 = [(UIButton *)self->_button layer];
        v9 = [(MKPitchButton *)self _transitionAnimation];
        [v8 addAnimation:v9 forKey:@"slideInTransition"];
      }
    }
  }

  [(MKPitchButton *)self _updateButtonState];
LABEL_10:
  self->_state = v5;

  [(MKPitchButton *)self invalidateIntrinsicContentSize];
}

- (void)_updateHiddenState
{
  if ([(MKPitchButton *)self visibility]== 1)
  {
    v3 = 1;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_mapView);
    if ([WeakRetained _isPitched])
    {
      v5 = objc_loadWeakRetained(&self->_mapView);
      v6 = [v5 _canEnter3DMode];

      v7 = v6 ^ 1;
    }

    else
    {
      v7 = 1;
    }

    GEOConfigGetDouble();
    v9 = v8;
    v10 = objc_loadWeakRetained(&self->_mapView);
    [v10 _zoomLevel];
    v12 = v11;

    v13 = objc_loadWeakRetained(&self->_mapView);
    v14 = [v13 mapType];
    v15 = (v14 - 1) >= 4 && v14 != 107;

    if (v12 < v9)
    {
      v16 = v7;
    }

    else
    {
      v16 = 0;
    }

    v3 = ([(MKPitchButton *)self visibility]== 0) & v16 & v15;
  }

  [(MKPitchButton *)self setHidden:v3];
}

- (void)_performPitchAction:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_mapView);
  v5 = [WeakRetained _isPitched];

  v6 = objc_loadWeakRetained(&self->_mapView);
  v8 = v6;
  if (v5)
  {
    [v6 _exit3DMode];
  }

  else
  {
    v7 = [v6 _canEnter3DMode];

    if (!v7)
    {
      return;
    }

    v8 = objc_loadWeakRetained(&self->_mapView);
    [v8 _enter3DMode];
  }
}

- (void)_setBackgroundStyle:(unint64_t)a3
{
  if (self->_backgroundStyle != a3)
  {
    self->_backgroundStyle = a3;
    v5 = +[MKSystemController sharedInstance];
    v6 = [v5 isGlassEnabled];

    if (a3)
    {
      if ((v6 & 1) == 0)
      {
        v7 = [(MKPitchButton *)self layer];
        LODWORD(v8) = 1.0;
        [v7 setShadowOpacity:v8];
      }

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

      [(MKPitchButton *)self invalidateIntrinsicContentSize];
      v16 = +[MKSystemController sharedInstance];
      v17 = [v16 isGlassEnabled];

      if (v17)
      {
        [(MKPitchButton *)self _mapkit_setGlassBackground];
      }

      else
      {
        [(MKPitchButton *)self insertSubview:self->_effectView atIndex:0];
      }

      [(MKPitchButton *)self setNeedsLayout];
    }

    else
    {
      if (v6)
      {
        [(MKPitchButton *)self _mapkit_clearGlassBackground];
      }

      else
      {
        [(UIVisualEffectView *)self->_effectView removeFromSuperview];
      }

      [(MKPitchButton *)self invalidateIntrinsicContentSize];
      v18 = +[MKSystemController sharedInstance];
      v19 = [v18 isGlassEnabled];

      if ((v19 & 1) == 0)
      {
        v20 = [(MKPitchButton *)self layer];
        [v20 setShadowOpacity:0.0];
      }
    }
  }
}

- (void)_setControlSize:(unint64_t)a3
{
  if (self->_controlSize != a3)
  {
    self->_controlSize = a3;
    [(MKPitchButton *)self _updateControlSize];

    [(MKPitchButton *)self invalidateIntrinsicContentSize];
  }
}

- (void)layoutSubviews
{
  v24.receiver = self;
  v24.super_class = MKPitchButton;
  [(MKPitchButton *)&v24 layoutSubviews];
  [(MKPitchButton *)self bounds];
  [(UIView *)self->_buttonWrapper setFrame:?];
  [(MKPitchButton *)self bounds];
  [(UIButton *)self->_button setFrame:?];
  [(MKPitchButton *)self bounds];
  [(UIVisualEffectView *)self->_effectView setFrame:?];
  if ([(MKPitchButton *)self _backgroundStyle]== 2)
  {
    [(MKPitchButton *)self bounds];
    v3 = CGRectGetWidth(v25) * 0.5;
    v4 = [(MKPitchButton *)self layer];
    [v4 setCornerRadius:v3];

    v5 = [(UIVisualEffectView *)self->_effectView layer];
    [v5 setCornerRadius:v3];

    v6 = +[MKSystemController sharedInstance];
    v7 = [v6 isGlassEnabled];

    if (v7)
    {
      return;
    }

    v8 = MEMORY[0x1E69DC728];
    [(MKPitchButton *)self bounds];
    v9 = [v8 bezierPathWithOvalInRect:?];
    goto LABEL_18;
  }

  controlSize = self->_controlSize;
  if (controlSize == 1)
  {
    v11 = 8.0;
  }

  else
  {
    v11 = 6.0;
  }

  if (controlSize == 2)
  {
    v12 = 11.0;
  }

  else
  {
    v12 = v11;
  }

  v13 = [(MKPitchButton *)self layer];
  [v13 setCornerRadius:v12];

  v14 = self->_controlSize;
  if (v14 == 1)
  {
    v15 = 8.0;
  }

  else
  {
    v15 = 6.0;
  }

  if (v14 == 2)
  {
    v16 = 11.0;
  }

  else
  {
    v16 = v15;
  }

  v17 = [(UIVisualEffectView *)self->_effectView layer];
  [v17 setCornerRadius:v16];

  v18 = +[MKSystemController sharedInstance];
  v19 = [v18 isGlassEnabled];

  if ((v19 & 1) == 0)
  {
    v20 = MEMORY[0x1E69DC728];
    [(MKPitchButton *)self bounds];
    v9 = [v20 bezierPathWithRoundedRect:? cornerRadius:?];
LABEL_18:
    v21 = v9;
    v22 = [v9 CGPath];
    v23 = [(MKPitchButton *)self layer];
    [v23 setShadowPath:v22];
  }
}

- (CGSize)intrinsicContentSize
{
  if ([(MKPitchButton *)self isHidden])
  {
    v4 = *MEMORY[0x1E695F060];
    v3 = *(MEMORY[0x1E695F060] + 8);
    goto LABEL_32;
  }

  controlSize = self->_controlSize;
  if (MapKitIdiomIsMacCatalyst() && controlSize < 3)
  {
    v4 = dbl_1A30F7A90[controlSize];
    goto LABEL_14;
  }

  if (controlSize == 2)
  {
    v6 = 0x404E000000000000;
LABEL_13:
    v4 = *&v6;
    goto LABEL_14;
  }

  if (controlSize != 1)
  {
    v6 = 0x4042000000000000;
    goto LABEL_13;
  }

  if (_useMapsAppSpecificNonStandardControlSizeResolution)
  {
    v4 = 48.0;
  }

  else
  {
    v4 = 44.0;
  }

LABEL_14:
  if ([(MKPitchButton *)self _backgroundStyle]== 2)
  {
    v3 = v4;
    goto LABEL_32;
  }

  v7 = self->_controlSize;
  if (MapKitIdiomIsMacCatalyst())
  {
    v3 = 24.0;
    if (v7 < 2)
    {
      goto LABEL_32;
    }

    if (v7 == 2)
    {
      v3 = 33.0;
      goto LABEL_32;
    }
  }

  if (MapKitIdiomIsMacCatalyst())
  {
    v3 = 49.0;
    if (v7 != 2)
    {
      v3 = 36.0;
    }

    goto LABEL_32;
  }

  if (v7 == 2)
  {
    v8 = 0x404E000000000000;
LABEL_31:
    v3 = *&v8;
    goto LABEL_32;
  }

  if (v7 != 1)
  {
    v8 = 0x4042000000000000;
    goto LABEL_31;
  }

  v3 = 48.0;
  if (!_useMapsAppSpecificNonStandardControlSizeResolution)
  {
    v3 = 44.0;
  }

LABEL_32:
  v9 = v4;
  result.height = v3;
  result.width = v9;
  return result;
}

- (void)setVisibility:(int64_t)a3
{
  if (self->_visibility != a3)
  {
    self->_visibility = a3;
    [(MKPitchButton *)self _updateState];
  }
}

- (void)setMapView:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_mapView);

  if (WeakRetained != obj)
  {
    v5 = [MEMORY[0x1E696AD88] defaultCenter];
    v6 = objc_loadWeakRetained(&self->_mapView);
    [v5 removeObserver:self name:@"MKMapViewPitchStateDidChangeNotification" object:v6];

    v7 = [MEMORY[0x1E696AD88] defaultCenter];
    v8 = objc_loadWeakRetained(&self->_mapView);
    [v7 removeObserver:self name:@"MKMapViewCanEnter3DDidChangeNotification" object:v8];

    v9 = [MEMORY[0x1E696AD88] defaultCenter];
    v10 = objc_loadWeakRetained(&self->_mapView);
    [v9 removeObserver:self name:@"MKMapViewDidChangeMapTypeNotification" object:v10];

    v11 = [MEMORY[0x1E696AD88] defaultCenter];
    v12 = objc_loadWeakRetained(&self->_mapView);
    [v11 removeObserver:self name:@"MKMapViewDidChangeZoomNotification" object:v12];

    v13 = objc_loadWeakRetained(&self->_mapView);
    if (v13)
    {
      --v13[167];
    }

    objc_storeWeak(&self->_mapView, obj);
    v14 = [MEMORY[0x1E696AD88] defaultCenter];
    [v14 addObserver:self selector:sel__updateState name:@"MKMapViewPitchStateDidChangeNotification" object:obj];

    v15 = [MEMORY[0x1E696AD88] defaultCenter];
    [v15 addObserver:self selector:sel__updateState name:@"MKMapViewCanEnter3DDidChangeNotification" object:obj];

    v16 = [MEMORY[0x1E696AD88] defaultCenter];
    [v16 addObserver:self selector:sel__updateState name:@"MKMapViewDidChangeMapTypeNotification" object:obj];

    v17 = [MEMORY[0x1E696AD88] defaultCenter];
    [v17 addObserver:self selector:sel__updateState name:@"MKMapViewDidChangeZoomNotification" object:obj];

    v18 = objc_loadWeakRetained(&self->_mapView);
    if (v18)
    {
      ++v18[167];
    }

    [(MKPitchButton *)self _updateState];
  }
}

- (MKPitchButton)initWithMapView:(id)a3
{
  v4 = a3;
  v26.receiver = self;
  v26.super_class = MKPitchButton;
  v5 = *MEMORY[0x1E695F058];
  v6 = *(MEMORY[0x1E695F058] + 8);
  v7 = *(MEMORY[0x1E695F058] + 16);
  v8 = *(MEMORY[0x1E695F058] + 24);
  v9 = [(MKPitchButton *)&v26 initWithFrame:*MEMORY[0x1E695F058], v6, v7, v8];
  v10 = v9;
  if (v9)
  {
    v9->_backgroundStyle = 0;
    v11 = [MEMORY[0x1E69DC738] buttonWithType:0];
    button = v10->_button;
    v10->_button = v11;

    [(UIButton *)v10->_button addTarget:v10 action:sel__performPitchAction_ forControlEvents:0x2000];
    v10->_controlSize = 1;
    [(MKPitchButton *)v10 _updateControlSize];
    v13 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v5, v6, v7, v8}];
    buttonWrapper = v10->_buttonWrapper;
    v10->_buttonWrapper = v13;

    [(UIView *)v10->_buttonWrapper setClipsToBounds:1];
    [(UIView *)v10->_buttonWrapper addSubview:v10->_button];
    [(MKPitchButton *)v10 addSubview:v10->_buttonWrapper];
    v15 = +[MKSystemController sharedInstance];
    v16 = [v15 isGlassEnabled];

    if ((v16 & 1) == 0)
    {
      v17 = [(MKPitchButton *)v10 layer];
      [v17 setShadowRadius:8.0];

      v18 = [(MKPitchButton *)v10 layer];
      [v18 setShadowOffset:{0.0, 2.0}];

      v19 = [MEMORY[0x1E69DC888] blackColor];
      v20 = [v19 colorWithAlphaComponent:0.0799999982];
      v21 = [v20 CGColor];
      v22 = [(MKPitchButton *)v10 layer];
      [v22 setShadowColor:v21];

      v23 = [(MKPitchButton *)v10 layer];
      [v23 setShadowOpacity:0.0];

      v24 = [(MKPitchButton *)v10 layer];
      [v24 setMasksToBounds:0];
    }

    [(MKPitchButton *)v10 setMapView:v4];
  }

  return v10;
}

+ (MKPitchButton)pitchButtonWithMapView:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithMapView:v4];

  return v5;
}

@end