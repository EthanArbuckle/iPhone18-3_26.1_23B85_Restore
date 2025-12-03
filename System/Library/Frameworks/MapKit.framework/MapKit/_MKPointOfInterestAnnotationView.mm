@interface _MKPointOfInterestAnnotationView
- (MKMapView)mapView;
- (_MKPointOfInterestAnnotationView)initWithAnnotation:(id)annotation reuseIdentifier:(id)identifier;
- (id)_currentStyle;
- (id)_labelMarker;
- (id)_loadStyle;
- (void)_addBalloonUI;
- (void)_animateDisplay;
- (void)_animateRemoval:(id)removal;
- (void)_removeBalloonUI;
- (void)_setSelected:(BOOL)selected animated:(BOOL)animated;
- (void)_updateContent;
- (void)_updateFromMap;
- (void)_updateViewAnimated:(BOOL)animated;
- (void)layoutSubviews;
- (void)setAnnotation:(id)annotation;
- (void)traitEnvironment:(id)environment didChangeTraitCollection:(id)collection;
@end

@implementation _MKPointOfInterestAnnotationView

- (MKMapView)mapView
{
  WeakRetained = objc_loadWeakRetained(&self->_mapView);

  return WeakRetained;
}

- (void)_animateRemoval:(id)removal
{
  v28[2] = *MEMORY[0x1E69E9840];
  dotView = self->_dotView;
  v22 = *(MEMORY[0x1E695EFD0] + 16);
  *&v27.m11 = *MEMORY[0x1E695EFD0];
  v23 = *&v27.m11;
  *&v27.m13 = v22;
  *&v27.m21 = *(MEMORY[0x1E695EFD0] + 32);
  v21 = *&v27.m21;
  [(MKMarkerDotView *)dotView setTransform:&v27];
  markerView = self->_markerView;
  *&v27.m11 = v23;
  *&v27.m13 = v22;
  *&v27.m21 = v21;
  [(MKMarkerBalloonView *)markerView setTransform:&v27];
  v6 = [MEMORY[0x1E6979318] animationWithKeyPath:@"transform"];
  memset(&v27, 0, sizeof(v27));
  CATransform3DMakeScale(&v27, 0.100000001, 0.100000001, 1.0);
  v7 = *(MEMORY[0x1E69792E8] + 80);
  *&v26.m31 = *(MEMORY[0x1E69792E8] + 64);
  *&v26.m33 = v7;
  v8 = *(MEMORY[0x1E69792E8] + 112);
  *&v26.m41 = *(MEMORY[0x1E69792E8] + 96);
  *&v26.m43 = v8;
  v9 = *(MEMORY[0x1E69792E8] + 16);
  *&v26.m11 = *MEMORY[0x1E69792E8];
  *&v26.m13 = v9;
  v10 = *(MEMORY[0x1E69792E8] + 48);
  *&v26.m21 = *(MEMORY[0x1E69792E8] + 32);
  *&v26.m23 = v10;
  v11 = [MEMORY[0x1E696B098] valueWithCATransform3D:&v26];
  [v6 setFromValue:v11];

  v26 = v27;
  v12 = [MEMORY[0x1E696B098] valueWithCATransform3D:&v26];
  [v6 setToValue:v12];

  v13 = [MEMORY[0x1E6979318] animationWithKeyPath:@"opacity"];
  [v13 setFromValue:&unk_1F1611908];
  [v13 setToValue:&unk_1F16118F0];
  animation = [MEMORY[0x1E6979308] animation];
  v15 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979ED8]];
  [animation setTimingFunction:v15];

  [animation setDuration:0.133330002];
  v28[0] = v6;
  v28[1] = v13;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:2];
  [animation setAnimations:v16];

  [animation setRemovedOnCompletion:1];
  layer = [(MKMarkerDotView *)self->_dotView layer];
  [layer setOpacity:0.0];

  layer2 = [(MKMarkerBalloonView *)self->_markerView layer];
  [layer2 setOpacity:0.0];

  layer3 = [(MKMarkerDotView *)self->_dotView layer];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __52___MKPointOfInterestAnnotationView__animateRemoval___block_invoke;
  v25[3] = &unk_1E76CA670;
  v25[4] = self;
  [layer3 _mapkit_addAnimation:animation forKey:@"hide" completion:v25];

  layer4 = [(MKMarkerBalloonView *)self->_markerView layer];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __52___MKPointOfInterestAnnotationView__animateRemoval___block_invoke_2;
  v24[3] = &unk_1E76CA670;
  v24[4] = self;
  [layer4 _mapkit_addAnimation:animation forKey:@"hide" completion:v24];
}

- (void)_animateDisplay
{
  v29[2] = *MEMORY[0x1E69E9840];
  dotView = self->_dotView;
  v25 = *(MEMORY[0x1E695EFD0] + 16);
  *&v28.m11 = *MEMORY[0x1E695EFD0];
  v26 = *&v28.m11;
  *&v28.m13 = v25;
  *&v28.m21 = *(MEMORY[0x1E695EFD0] + 32);
  v24 = *&v28.m21;
  [(MKMarkerDotView *)dotView setTransform:&v28];
  markerView = self->_markerView;
  *&v28.m11 = v26;
  *&v28.m13 = v25;
  *&v28.m21 = v24;
  [(MKMarkerBalloonView *)markerView setTransform:&v28];
  v5 = [MEMORY[0x1E69794A8] animationWithKeyPath:@"transform"];
  [v5 setMass:3.0];
  [v5 setStiffness:1940.0];
  [v5 setDamping:91.4000015];
  [v5 setInitialVelocity:0.0];
  memset(&v28, 0, sizeof(v28));
  CATransform3DMakeScale(&v28, 0.100000001, 0.100000001, 1.0);
  v27 = v28;
  v6 = [MEMORY[0x1E696B098] valueWithCATransform3D:&v27];
  [v5 setFromValue:v6];

  v7 = *(MEMORY[0x1E69792E8] + 80);
  *&v27.m31 = *(MEMORY[0x1E69792E8] + 64);
  *&v27.m33 = v7;
  v8 = *(MEMORY[0x1E69792E8] + 112);
  *&v27.m41 = *(MEMORY[0x1E69792E8] + 96);
  *&v27.m43 = v8;
  v9 = *(MEMORY[0x1E69792E8] + 16);
  *&v27.m11 = *MEMORY[0x1E69792E8];
  *&v27.m13 = v9;
  v10 = *(MEMORY[0x1E69792E8] + 48);
  *&v27.m21 = *(MEMORY[0x1E69792E8] + 32);
  *&v27.m23 = v10;
  v11 = [MEMORY[0x1E696B098] valueWithCATransform3D:&v27];
  [v5 setToValue:v11];

  v12 = [MEMORY[0x1E6979318] animationWithKeyPath:@"opacity"];
  [v12 setFromValue:&unk_1F16118F0];
  [v12 setToValue:&unk_1F1611908];
  [v12 setDuration:0.239999995];
  animation = [MEMORY[0x1E6979308] animation];
  [animation setRemovedOnCompletion:1];
  [v5 settlingDuration];
  [animation setDuration:?];
  v14 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979ED8]];
  [animation setTimingFunction:v14];

  v29[0] = v5;
  v29[1] = v12;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:2];
  [animation setAnimations:v15];

  layer = [(MKMarkerDotView *)self->_dotView layer];
  LODWORD(v17) = 1.0;
  [layer setOpacity:v17];

  layer2 = [(MKMarkerDotView *)self->_dotView layer];
  [layer2 addAnimation:animation forKey:@"show"];

  layer3 = [(MKMarkerBalloonView *)self->_markerView layer];
  LODWORD(v20) = 1.0;
  [layer3 setOpacity:v20];

  layer4 = [(MKMarkerBalloonView *)self->_markerView layer];
  [layer4 addAnimation:animation forKey:@"show"];

  if (_MKMarkerAnnotationViewSelectionShouldSway())
  {
    v22 = _MKMarkerAnnotationViewSelectionSwayAnimation();
    if (v22)
    {
      layer5 = [(MKMarkerBalloonView *)self->_markerView layer];
      [layer5 addAnimation:v22 forKey:@"sway"];
    }
  }
}

- (void)_removeBalloonUI
{
  dotView = self->_dotView;
  if (dotView)
  {
    [(MKMarkerDotView *)dotView removeFromSuperview];
    v4 = self->_dotView;
    self->_dotView = 0;

    [(MKMarkerBalloonView *)self->_markerView removeFromSuperview];
    markerView = self->_markerView;
    self->_markerView = 0;
  }
}

- (void)_updateContent
{
  _currentStyle = [(_MKPointOfInterestAnnotationView *)self _currentStyle];
  balloonImage = [_currentStyle balloonImage];
  [(MKMarkerBalloonView *)self->_markerView setImage:balloonImage];

  dotImage = [_currentStyle dotImage];
  [(MKMarkerDotView *)self->_dotView setImage:dotImage];
}

- (void)_addBalloonUI
{
  if (!self->_dotView)
  {
    _currentStyle = [(_MKPointOfInterestAnnotationView *)self _currentStyle];
    v3 = [[MKMarkerDotView alloc] initWithMarkerStyle:_currentStyle];
    dotView = self->_dotView;
    self->_dotView = v3;

    [(_MKPointOfInterestAnnotationView *)self addSubview:self->_dotView];
    v5 = [[MKMarkerBalloonView alloc] initWithMarkerStyle:_currentStyle];
    markerView = self->_markerView;
    self->_markerView = v5;

    [(_MKPointOfInterestAnnotationView *)self addSubview:self->_markerView];
    [(_MKPointOfInterestAnnotationView *)self _updateContent];
    [(UIView *)self _mapkit_setNeedsLayout];
  }
}

- (void)_updateViewAnimated:(BOOL)animated
{
  animatedCopy = animated;
  if ([(MKAnnotationView *)self isSelected])
  {
    [(_MKPointOfInterestAnnotationView *)self _addBalloonUI];
    if (animatedCopy)
    {

      [(_MKPointOfInterestAnnotationView *)self _animateDisplay];
    }
  }

  else if (animatedCopy)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __56___MKPointOfInterestAnnotationView__updateViewAnimated___block_invoke;
    v5[3] = &unk_1E76CDB38;
    v5[4] = self;
    [(_MKPointOfInterestAnnotationView *)self _animateRemoval:v5];
  }

  else
  {

    [(_MKPointOfInterestAnnotationView *)self _removeBalloonUI];
  }
}

- (void)traitEnvironment:(id)environment didChangeTraitCollection:(id)collection
{
  collectionCopy = collection;
  traitCollection = [(_MKPointOfInterestAnnotationView *)self traitCollection];
  v7 = [traitCollection hasDifferentColorAppearanceComparedToTraitCollection:collectionCopy];

  if (v7)
  {
    currentStyle = self->_currentStyle;
    self->_currentStyle = 0;

    [(_MKPointOfInterestAnnotationView *)self _updateContent];
  }
}

- (void)_updateFromMap
{
  v5.receiver = self;
  v5.super_class = _MKPointOfInterestAnnotationView;
  [(MKAnnotationView *)&v5 _updateFromMap];
  annotation = [(MKAnnotationView *)self annotation];
  marker = [annotation marker];

  [marker calloutAnchorPointWithSnapToPixels:1];
  [(_MKPointOfInterestAnnotationView *)self setCenter:?];
}

- (void)layoutSubviews
{
  v11.receiver = self;
  v11.super_class = _MKPointOfInterestAnnotationView;
  [(MKAnnotationView *)&v11 layoutSubviews];
  [(_MKPointOfInterestAnnotationView *)self bounds];
  x = v12.origin.x;
  y = v12.origin.y;
  width = v12.size.width;
  height = v12.size.height;
  MidX = CGRectGetMidX(v12);
  v13.origin.x = x;
  v13.origin.y = y;
  v13.size.width = width;
  v13.size.height = height;
  MaxY = CGRectGetMaxY(v13);
  layer = [(MKMarkerDotView *)self->_dotView layer];
  [layer setPosition:{MidX, MaxY}];

  layer2 = [(MKMarkerBalloonView *)self->_markerView layer];
  [layer2 setPosition:{MidX, MaxY}];
}

- (id)_loadStyle
{
  _labelMarker = [(_MKPointOfInterestAnnotationView *)self _labelMarker];
  styleAttributes = [_labelMarker styleAttributes];
  v5 = [styleAttributes copy];

  v6 = [MKMarkerStyleConfiguration configurationForView:self];
  [v6 setElevated:1];
  WeakRetained = objc_loadWeakRetained(&self->_mapView);
  preferredConfiguration = [WeakRetained preferredConfiguration];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    [v6 setDarkMode:{objc_msgSend(v5, "isLandmarkPOI") ^ 1}];
    v10 = objc_loadWeakRetained(&self->_mapView);
    preferredConfiguration2 = [v10 preferredConfiguration];
    [v6 setElevated:{objc_msgSend(preferredConfiguration2, "elevationStyle") == 1}];
  }

  [v6 setStyleAttributes:v5];
  [v6 setSelected:1];
  v12 = [MKMarkerStyle poiMarkerStyleForConfiguration:v6];

  return v12;
}

- (id)_currentStyle
{
  currentStyle = self->_currentStyle;
  if (!currentStyle)
  {
    _loadStyle = [(_MKPointOfInterestAnnotationView *)self _loadStyle];
    v5 = self->_currentStyle;
    self->_currentStyle = _loadStyle;

    currentStyle = self->_currentStyle;
  }

  return currentStyle;
}

- (id)_labelMarker
{
  annotation = [(MKAnnotationView *)self annotation];
  marker = [annotation marker];

  return marker;
}

- (void)_setSelected:(BOOL)selected animated:(BOOL)animated
{
  animatedCopy = animated;
  selectedCopy = selected;
  isSelected = [(MKAnnotationView *)self isSelected];
  v9.receiver = self;
  v9.super_class = _MKPointOfInterestAnnotationView;
  [(MKAnnotationView *)&v9 _setSelected:selectedCopy animated:animatedCopy];
  if (isSelected != selectedCopy)
  {
    annotation = [(MKAnnotationView *)self annotation];
    if (![annotation featureType])
    {
      [(_MKPointOfInterestAnnotationView *)self _updateViewAnimated:animatedCopy];
    }
  }
}

- (void)setAnnotation:(id)annotation
{
  if (self->super.super._annotation != annotation)
  {
    v6 = v3;
    v7 = v4;
    v5.receiver = self;
    v5.super_class = _MKPointOfInterestAnnotationView;
    [(MKAnnotationView *)&v5 setAnnotation:?];
  }
}

- (_MKPointOfInterestAnnotationView)initWithAnnotation:(id)annotation reuseIdentifier:(id)identifier
{
  v9.receiver = self;
  v9.super_class = _MKPointOfInterestAnnotationView;
  v4 = [(_MKMapFeatureAnnotationView *)&v9 initWithAnnotation:annotation reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    [(MKAnnotationView *)v4 setBounds:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    [(MKAnnotationView *)v5 setCanShowCallout:1];
    [(MKAnnotationView *)v5 _setCalloutStyle:1];
    [(MKAnnotationView *)v5 setCollisionMode:1];
    systemTraitsAffectingColorAppearance = [MEMORY[0x1E69DD1B8] systemTraitsAffectingColorAppearance];
    v7 = [(_MKPointOfInterestAnnotationView *)v5 registerForTraitChanges:systemTraitsAffectingColorAppearance withAction:sel_traitEnvironment_didChangeTraitCollection_];
  }

  return v5;
}

@end