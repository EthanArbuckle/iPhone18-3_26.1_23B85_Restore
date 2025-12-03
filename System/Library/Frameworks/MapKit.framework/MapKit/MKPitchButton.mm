@interface MKPitchButton
+ (MKPitchButton)pitchButtonWithMapView:(id)view;
- (CGSize)intrinsicContentSize;
- (MKMapView)mapView;
- (MKPitchButton)initWithMapView:(id)view;
- (id)_transitionAnimation;
- (void)_performPitchAction:(id)action;
- (void)_setBackgroundStyle:(unint64_t)style;
- (void)_setControlSize:(unint64_t)size;
- (void)_updateButtonState;
- (void)_updateControlSize;
- (void)_updateHiddenState;
- (void)_updateState;
- (void)addInteraction:(id)interaction;
- (void)layoutSubviews;
- (void)removeInteraction:(id)interaction;
- (void)setMapView:(id)view;
- (void)setVisibility:(int64_t)visibility;
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
  _isPitched = [v6 _isPitched];

  button = self->_button;
  if (_isPitched)
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

- (void)removeInteraction:(id)interaction
{
  interactionCopy = interaction;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(UIButton *)self->_button removeInteraction:interactionCopy];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = MKPitchButton;
    [(MKPitchButton *)&v5 removeInteraction:interactionCopy];
  }
}

- (void)addInteraction:(id)interaction
{
  interactionCopy = interaction;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(UIButton *)self->_button addInteraction:interactionCopy];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = MKPitchButton;
    [(MKPitchButton *)&v5 addInteraction:interactionCopy];
  }
}

- (id)_transitionAnimation
{
  v3 = objc_alloc_init(MEMORY[0x1E6979538]);
  [v3 setType:*MEMORY[0x1E697A050]];
  WeakRetained = objc_loadWeakRetained(&self->_mapView);
  _isPitched = [WeakRetained _isPitched];
  v6 = MEMORY[0x1E697A048];
  if (!_isPitched)
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
  isHidden = [(MKPitchButton *)self isHidden];
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
    if ((([(MKPitchButton *)self isHidden]| isHidden) & 1) == 0)
    {
      v6 = +[MKSystemController sharedInstance];
      reduceMotionEnabled = [v6 reduceMotionEnabled];

      if ((reduceMotionEnabled & 1) == 0)
      {
        if (self->_state == v5)
        {
          goto LABEL_10;
        }

        layer = [(UIButton *)self->_button layer];
        _transitionAnimation = [(MKPitchButton *)self _transitionAnimation];
        [layer addAnimation:_transitionAnimation forKey:@"slideInTransition"];
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
      _canEnter3DMode = [v5 _canEnter3DMode];

      v7 = _canEnter3DMode ^ 1;
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
    mapType = [v13 mapType];
    v15 = (mapType - 1) >= 4 && mapType != 107;

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

- (void)_performPitchAction:(id)action
{
  WeakRetained = objc_loadWeakRetained(&self->_mapView);
  _isPitched = [WeakRetained _isPitched];

  v6 = objc_loadWeakRetained(&self->_mapView);
  v8 = v6;
  if (_isPitched)
  {
    [v6 _exit3DMode];
  }

  else
  {
    _canEnter3DMode = [v6 _canEnter3DMode];

    if (!_canEnter3DMode)
    {
      return;
    }

    v8 = objc_loadWeakRetained(&self->_mapView);
    [v8 _enter3DMode];
  }
}

- (void)_setBackgroundStyle:(unint64_t)style
{
  if (self->_backgroundStyle != style)
  {
    self->_backgroundStyle = style;
    v5 = +[MKSystemController sharedInstance];
    isGlassEnabled = [v5 isGlassEnabled];

    if (style)
    {
      if ((isGlassEnabled & 1) == 0)
      {
        layer = [(MKPitchButton *)self layer];
        LODWORD(v8) = 1.0;
        [layer setShadowOpacity:v8];
      }

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

      [(MKPitchButton *)self invalidateIntrinsicContentSize];
      v16 = +[MKSystemController sharedInstance];
      isGlassEnabled3 = [v16 isGlassEnabled];

      if (isGlassEnabled3)
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
      if (isGlassEnabled)
      {
        [(MKPitchButton *)self _mapkit_clearGlassBackground];
      }

      else
      {
        [(UIVisualEffectView *)self->_effectView removeFromSuperview];
      }

      [(MKPitchButton *)self invalidateIntrinsicContentSize];
      v18 = +[MKSystemController sharedInstance];
      isGlassEnabled4 = [v18 isGlassEnabled];

      if ((isGlassEnabled4 & 1) == 0)
      {
        layer3 = [(MKPitchButton *)self layer];
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
    layer = [(MKPitchButton *)self layer];
    [layer setCornerRadius:v3];

    layer2 = [(UIVisualEffectView *)self->_effectView layer];
    [layer2 setCornerRadius:v3];

    v6 = +[MKSystemController sharedInstance];
    isGlassEnabled = [v6 isGlassEnabled];

    if (isGlassEnabled)
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

  layer3 = [(MKPitchButton *)self layer];
  [layer3 setCornerRadius:v12];

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

  layer4 = [(UIVisualEffectView *)self->_effectView layer];
  [layer4 setCornerRadius:v16];

  v18 = +[MKSystemController sharedInstance];
  isGlassEnabled2 = [v18 isGlassEnabled];

  if ((isGlassEnabled2 & 1) == 0)
  {
    v20 = MEMORY[0x1E69DC728];
    [(MKPitchButton *)self bounds];
    v9 = [v20 bezierPathWithRoundedRect:? cornerRadius:?];
LABEL_18:
    v21 = v9;
    cGPath = [v9 CGPath];
    layer5 = [(MKPitchButton *)self layer];
    [layer5 setShadowPath:cGPath];
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

- (void)setVisibility:(int64_t)visibility
{
  if (self->_visibility != visibility)
  {
    self->_visibility = visibility;
    [(MKPitchButton *)self _updateState];
  }
}

- (void)setMapView:(id)view
{
  obj = view;
  WeakRetained = objc_loadWeakRetained(&self->_mapView);

  if (WeakRetained != obj)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v6 = objc_loadWeakRetained(&self->_mapView);
    [defaultCenter removeObserver:self name:@"MKMapViewPitchStateDidChangeNotification" object:v6];

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    v8 = objc_loadWeakRetained(&self->_mapView);
    [defaultCenter2 removeObserver:self name:@"MKMapViewCanEnter3DDidChangeNotification" object:v8];

    defaultCenter3 = [MEMORY[0x1E696AD88] defaultCenter];
    v10 = objc_loadWeakRetained(&self->_mapView);
    [defaultCenter3 removeObserver:self name:@"MKMapViewDidChangeMapTypeNotification" object:v10];

    defaultCenter4 = [MEMORY[0x1E696AD88] defaultCenter];
    v12 = objc_loadWeakRetained(&self->_mapView);
    [defaultCenter4 removeObserver:self name:@"MKMapViewDidChangeZoomNotification" object:v12];

    v13 = objc_loadWeakRetained(&self->_mapView);
    if (v13)
    {
      --v13[167];
    }

    objc_storeWeak(&self->_mapView, obj);
    defaultCenter5 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter5 addObserver:self selector:sel__updateState name:@"MKMapViewPitchStateDidChangeNotification" object:obj];

    defaultCenter6 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter6 addObserver:self selector:sel__updateState name:@"MKMapViewCanEnter3DDidChangeNotification" object:obj];

    defaultCenter7 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter7 addObserver:self selector:sel__updateState name:@"MKMapViewDidChangeMapTypeNotification" object:obj];

    defaultCenter8 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter8 addObserver:self selector:sel__updateState name:@"MKMapViewDidChangeZoomNotification" object:obj];

    v18 = objc_loadWeakRetained(&self->_mapView);
    if (v18)
    {
      ++v18[167];
    }

    [(MKPitchButton *)self _updateState];
  }
}

- (MKPitchButton)initWithMapView:(id)view
{
  viewCopy = view;
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
    isGlassEnabled = [v15 isGlassEnabled];

    if ((isGlassEnabled & 1) == 0)
    {
      layer = [(MKPitchButton *)v10 layer];
      [layer setShadowRadius:8.0];

      layer2 = [(MKPitchButton *)v10 layer];
      [layer2 setShadowOffset:{0.0, 2.0}];

      blackColor = [MEMORY[0x1E69DC888] blackColor];
      v20 = [blackColor colorWithAlphaComponent:0.0799999982];
      cGColor = [v20 CGColor];
      layer3 = [(MKPitchButton *)v10 layer];
      [layer3 setShadowColor:cGColor];

      layer4 = [(MKPitchButton *)v10 layer];
      [layer4 setShadowOpacity:0.0];

      layer5 = [(MKPitchButton *)v10 layer];
      [layer5 setMasksToBounds:0];
    }

    [(MKPitchButton *)v10 setMapView:viewCopy];
  }

  return v10;
}

+ (MKPitchButton)pitchButtonWithMapView:(id)view
{
  viewCopy = view;
  v5 = [[self alloc] initWithMapView:viewCopy];

  return v5;
}

@end