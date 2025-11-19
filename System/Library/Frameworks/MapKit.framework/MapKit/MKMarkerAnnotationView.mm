@interface MKMarkerAnnotationView
- ($F305BA3B40A0ABD2276B1E2CDC82332E)_metricsForState:(SEL)a3;
- (BOOL)_hasCustomGlyphContent;
- (BOOL)_hasDataRequiringCallout;
- (BOOL)canShowCallout;
- (BOOL)isProvidingCustomFeature;
- (BOOL)updateCalloutViewIfNeededAnimated:(BOOL)a3;
- (CGPoint)_anchorPointForCalloutAnchorPosition:(int64_t)a3;
- (CGRect)_frameForSelectionAdjustment;
- (CGSize)sizeThatFits:(CGSize)a3;
- (MKMarkerAnnotationView)initWithAnnotation:(id)a3 reuseIdentifier:(id)a4;
- (UIEdgeInsets)_defaultCollisionAlignmentRectInsets;
- (double)_preferredScale;
- (id)_createMarkerStyleConfigurationForState:(int64_t)a3;
- (id)_currentMarkerStyleForState:(int64_t)a3;
- (id)_customLegibleGlyphColor;
- (id)_effectiveGlyphImageForState:(int64_t)a3;
- (id)_effectiveGlyphText;
- (id)_effectiveGlyphTintColorForState:(int64_t)a3;
- (id)_glyphImageForImage:(id)a3;
- (id)_resolvedCustomGlyphTintColor;
- (int64_t)_currentMarkerState;
- (void)_configureAnimated:(BOOL)a3 fromState:(int64_t)a4 toState:(int64_t)a5;
- (void)_configureCalloutOffset;
- (void)_configureViewsForState:(int64_t)a3 usesCallout:(BOOL)a4 animated:(BOOL)a5;
- (void)_didDragWithVelocity:(CGPoint)a3;
- (void)_setSelected:(BOOL)a3 animated:(BOOL)a4;
- (void)_setStyleAttributes:(id)a3;
- (void)_setWalletMerchantStylingInfo:(id)a3;
- (void)_setupNormalViewsIfNeeded;
- (void)_setupSelectedViewsIfNeededUsesCallout:(BOOL)a3;
- (void)_swayAnimation;
- (void)_unhideForDisplay;
- (void)_updateContentForState:(int64_t)a3 forceUpdate:(BOOL)a4;
- (void)_updateContentView:(id)a3 forState:(int64_t)a4;
- (void)_updateFromMap;
- (void)_updateMarkerStyleForState:(int64_t)a3;
- (void)_updateMarkerStyleIfNeededForState:(int64_t)a3;
- (void)_updateStyle;
- (void)dealloc;
- (void)layoutSublayersOfLayer:(id)a3;
- (void)layoutSubviews;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)prepareForDisplay;
- (void)prepareForReuse;
- (void)prepareForSnapshotting;
- (void)setAnnotation:(id)a3;
- (void)setDragState:(unint64_t)a3 animated:(BOOL)a4;
- (void)setFrame:(CGRect)a3;
- (void)setGlyphImage:(UIImage *)glyphImage;
- (void)setGlyphText:(NSString *)glyphText;
- (void)setGlyphTintColor:(UIColor *)glyphTintColor;
- (void)setMarkerTintColor:(UIColor *)markerTintColor;
- (void)setSelectedContentView:(id)a3;
- (void)setSelectedGlyphImage:(UIImage *)selectedGlyphImage;
- (void)setSubtitleVisibility:(MKFeatureVisibility)subtitleVisibility;
- (void)setTitleVisibility:(MKFeatureVisibility)titleVisibility;
- (void)traitEnvironment:(id)a3 didChangeTraitCollection:(id)a4;
@end

@implementation MKMarkerAnnotationView

- (BOOL)_hasCustomGlyphContent
{
  v3 = [(MKMarkerAnnotationView *)self _effectiveGlyphText];
  if (v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = self->_glyphImage != 0;
  }

  return v4;
}

- (UIEdgeInsets)_defaultCollisionAlignmentRectInsets
{
  v2 = -5.0;
  v3 = -5.0;
  v4 = -5.0;
  v5 = -5.0;
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (BOOL)isProvidingCustomFeature
{
  if ([(MKAnnotationView *)self dragState])
  {
    return 0;
  }

  else
  {
    return ![(MKAnnotationView *)self isHidden];
  }
}

- (void)_swayAnimation
{
  v4 = _MKMarkerAnnotationViewSelectionSwayAnimation();
  v3 = [(MKMarkerBalloonView *)self->_selectedMarkerView layer];
  [v3 addAnimation:v4 forKey:@"rotate"];
}

- (void)dealloc
{
  if (self->_isObserving)
  {
    v3 = [(MKAnnotationView *)self annotation];
    [v3 removeObserver:self forKeyPath:@"title"];
    [v3 removeObserver:self forKeyPath:@"subtitle"];
    self->_isObserving = 0;
  }

  v4 = +[MKMarkerStyleCache sharedCache];
  [v4 decrementLiveMarkerCount];

  v5.receiver = self;
  v5.super_class = MKMarkerAnnotationView;
  [(MKAnnotationView *)&v5 dealloc];
}

- (BOOL)updateCalloutViewIfNeededAnimated:(BOOL)a3
{
  v3 = a3;
  if ([(MKAnnotationView *)self isSelected])
  {
    [(MKMarkerAnnotationView *)self _configureAnimated:v3 fromState:1 toState:1];
  }

  v6.receiver = self;
  v6.super_class = MKMarkerAnnotationView;
  return [(MKAnnotationView *)&v6 updateCalloutViewIfNeededAnimated:v3];
}

- (void)_setSelected:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v7 = [(MKAnnotationView *)self isSelected];
  v8.receiver = self;
  v8.super_class = MKMarkerAnnotationView;
  [(MKAnnotationView *)&v8 _setSelected:v5 animated:v4];
  if (v7 != v5)
  {
    [(MKMarkerAnnotationView *)self _configureAnimated:v4 fromState:[(MKMarkerAnnotationView *)self _stateForIsSelected:v5 ^ 1] toState:[(MKMarkerAnnotationView *)self _stateForIsSelected:v5]];
    [(MKAnnotationView *)self invalidateCustomFeatureForced:0];
  }
}

- (void)setDragState:(unint64_t)a3 animated:(BOOL)a4
{
  v4 = a4;
  if ([(MKAnnotationView *)self dragState]!= a3)
  {
    v10.receiver = self;
    v10.super_class = MKMarkerAnnotationView;
    [(MKAnnotationView *)&v10 setDragState:a3 animated:v4];
    if (a3 == 1)
    {
      [(MKMarkerAnnotationView *)self setDragState:2 animated:v4];
      v9 = [(MKMarkerAnnotationView *)self _stateForIsSelected:[(MKAnnotationView *)self isSelected]];
      v8 = self;
      v7 = 2;
    }

    else
    {
      if (a3 - 3 > 1)
      {
        return;
      }

      if (!_MKLinkedOnOrAfterReleaseSet(2053) || _MKLinkedOnOrAfterReleaseSet(2310))
      {
        [(MKMarkerAnnotationView *)self setDragState:0 animated:v4];
      }

      v7 = [(MKMarkerAnnotationView *)self _stateForIsSelected:[(MKAnnotationView *)self isSelected]];
      v8 = self;
      v9 = 2;
    }

    [(MKMarkerAnnotationView *)v8 _configureAnimated:1 fromState:v9 toState:v7];
    [(MKAnnotationView *)self invalidateCustomFeatureForced:a3 != 1];
  }
}

- (void)_configureAnimated:(BOOL)a3 fromState:(int64_t)a4 toState:(int64_t)a5
{
  v7 = a3;
  v9 = [(MKAnnotationView *)self _shouldShowCalloutIfSelected];
  [(MKMarkerAnnotationView *)self _setupNormalViewsIfNeeded];
  if (v7)
  {
    [(MKMarkerAnnotationView *)self _updateContentForState:a4];
    [(MKMarkerAnnotationView *)self _setupSelectedViewsIfNeededUsesCallout:v9];
    [(MKMarkerAnnotationView *)self _updateContentForState:a5];
    [(MKMarkerAnnotationView *)self _configureViewsForState:a4 usesCallout:v9 animated:0];
  }

  else
  {
    [(MKMarkerAnnotationView *)self _setupSelectedViewsIfNeededUsesCallout:v9];
    [(MKMarkerAnnotationView *)self _updateContentForState:a5];
  }

  [(MKMarkerAnnotationView *)self _configureViewsForState:a5 usesCallout:v9 animated:v7];
  [(MKAnnotationView *)self _updateEffectiveZPriority];
  v11 = a5 != 1 || (a4 - 1) < 2;
  if (!v11 && !v9 && v7 && _MKMarkerAnnotationViewSelectionShouldSway())
  {

    [(MKMarkerAnnotationView *)self _swayAnimation];
  }
}

- (void)_setupSelectedViewsIfNeededUsesCallout:(BOOL)a3
{
  selectedDotView = self->_selectedDotView;
  if (selectedDotView)
  {
    if (a3)
    {
LABEL_6:
      if (selectedDotView)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v6 = [(MKMarkerAnnotationView *)self _createMarkerStyleConfigurationForState:1];
    v7 = [MKMarkerStyle markerStyleForConfiguration:v6];
    selectedMarkerStyle = self->_selectedMarkerStyle;
    self->_selectedMarkerStyle = v7;

    v9 = [[MKMarkerDotView alloc] initWithMarkerStyle:self->_selectedMarkerStyle];
    v10 = self->_selectedDotView;
    self->_selectedDotView = v9;

    [(MKMarkerAnnotationView *)self addSubview:self->_selectedDotView];
    if (a3)
    {
      goto LABEL_6;
    }
  }

  if (self->_selectedMarkerView)
  {
    goto LABEL_6;
  }

  v11 = [[MKMarkerBalloonView alloc] initWithMarkerStyle:self->_selectedMarkerStyle];
  selectedMarkerView = self->_selectedMarkerView;
  self->_selectedMarkerView = v11;

  [(MKMarkerAnnotationView *)self addSubview:self->_selectedMarkerView];
LABEL_9:
  [(MKMarkerAnnotationView *)self _updateContentForState:1 forceUpdate:1];

  [(UIView *)self _mapkit_setNeedsLayout];
}

- (void)_setupNormalViewsIfNeeded
{
  if (!self->_markerView)
  {
    v7 = [(MKMarkerAnnotationView *)self _createMarkerStyleConfigurationForState:0];
    v3 = [MKMarkerStyle markerStyleForConfiguration:v7];
    unselectedMarkerStyle = self->_unselectedMarkerStyle;
    self->_unselectedMarkerStyle = v3;

    v5 = [[MKMarkerBalloonView alloc] initWithMarkerStyle:self->_unselectedMarkerStyle];
    markerView = self->_markerView;
    self->_markerView = v5;

    [(MKMarkerAnnotationView *)self addSubview:self->_markerView];
  }
}

- (void)_didDragWithVelocity:(CGPoint)a3
{
  v4 = *MEMORY[0x1E695EFD0];
  v5 = *(MEMORY[0x1E695EFD0] + 16);
  *&v13.a = *MEMORY[0x1E695EFD0];
  *&v13.c = v5;
  v6 = *(MEMORY[0x1E695EFD0] + 32);
  *&v13.tx = v6;
  v7 = a3.x / 1000.0;
  v8 = 1.0;
  v9 = v7 <= -1.0 || v7 > 1.0;
  if (v7 <= -1.0 || v7 <= 1.0)
  {
    v8 = -1.0;
  }

  if (v9)
  {
    v7 = v8;
  }

  *&v12.a = v4;
  *&v12.c = v5;
  *&v12.tx = v6;
  CGAffineTransformRotate(&v13, &v12, -v7);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v11 = v13;
  v10[2] = __47__MKMarkerAnnotationView__didDragWithVelocity___block_invoke;
  v10[3] = &unk_1E76C68A8;
  v10[4] = self;
  [MEMORY[0x1E69DD250] animateWithDuration:4 delay:v10 options:0 animations:0.2 completion:0.0];
}

uint64_t __47__MKMarkerAnnotationView__didDragWithVelocity___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 1040);
  v2 = *(a1 + 56);
  v4[0] = *(a1 + 40);
  v4[1] = v2;
  v4[2] = *(a1 + 72);
  return [v1 setTransform:v4];
}

- (void)_configureViewsForState:(int64_t)a3 usesCallout:(BOOL)a4 animated:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v44[1] = *MEMORY[0x1E69E9840];
  v38 = 0.0;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v33 = 0u;
  [(MKMarkerAnnotationView *)self _metricsForState:?];
  if (!a3 || !v6)
  {
    if (a3)
    {
      v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:{self->_selectedDotView, self->_selectedMarkerView, 0}];
      markerView = self->_markerView;
      [MEMORY[0x1E695DEC8] arrayWithObjects:&markerView count:1];
    }

    else
    {
      v42 = self->_markerView;
      v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v42 count:1];
      [MEMORY[0x1E695DEC8] arrayWithObjects:{self->_selectedDotView, self->_selectedMarkerView, 0}];
    }
    v10 = ;
    if (!v5)
    {
      goto LABEL_4;
    }

LABEL_16:
    if (a3)
    {
      v17 = 0.0;
    }

    else
    {
      v17 = 0.0833333333;
    }

    if (a3)
    {
      v18 = 0.0;
    }

    else
    {
      v18 = 0.166666667;
    }

    _setAlphaForViews(v9, 1, 1.0, 0.0833333333, v17);
    _setAlphaForViews(v10, 1, 0.0, 0.0833333333, v18);
    v16 = 0.5;
    goto LABEL_23;
  }

  v44[0] = self->_selectedDotView;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v44 count:1];
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:{self->_markerView, self->_selectedMarkerView, 0}];
  if (v5)
  {
    goto LABEL_16;
  }

LABEL_4:
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v11 = v10;
  v12 = [v11 countByEnumeratingWithState:&v29 objects:v41 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v30;
    do
    {
      v15 = 0;
      do
      {
        if (*v30 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [(UIView *)self _mapkit_bringSubviewToFront:*(*(&v29 + 1) + 8 * v15++)];
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v29 objects:v41 count:16];
    }

    while (v13);
  }

  v16 = 0.0;
  _setAlphaForViews(v9, 0, 1.0, 0.0, 0.0);
  _setAlphaForViews(v11, 0, 0.0, 0.0, 0.0);
LABEL_23:
  [(MKMarkerStyle *)self->_unselectedMarkerStyle anchorPoint];
  v19 = v33;
  v23 = *(MEMORY[0x1E695EFD0] + 16);
  v24 = *MEMORY[0x1E695EFD0];
  *&v28.a = v24;
  *&v28.c = v23;
  v22 = *(MEMORY[0x1E695EFD0] + 32);
  *&v28.tx = v22;
  *&v40.a = v24;
  *&v40.c = v23;
  *&v40.tx = v22;
  CGAffineTransformTranslate(&v28, &v40, *(&v35 + 1), *&v36);
  v39 = v28;
  CGAffineTransformScale(&v40, &v39, *&v19, *(&v19 + 1));
  v28 = v40;
  _setViewTransform(self->_markerView, &v40, v16);
  [(MKMarkerStyle *)self->_selectedMarkerStyle anchorPoint];
  v20 = *&v35;
  *&v27.a = v24;
  *&v27.c = v23;
  *&v27.tx = v22;
  *&v40.a = v24;
  *&v40.c = v23;
  *&v40.tx = v22;
  CGAffineTransformTranslate(&v27, &v40, 0.0, 0.0);
  v39 = v27;
  CGAffineTransformScale(&v40, &v39, v20, v20);
  v27 = v40;
  _setViewTransform(self->_selectedDotView, &v40, v16);
  [(MKMarkerStyle *)self->_selectedMarkerStyle anchorPoint];
  v21 = v34;
  *&v26.a = v24;
  *&v26.c = v23;
  *&v26.tx = v22;
  *&v40.a = v24;
  *&v40.c = v23;
  *&v40.tx = v22;
  CGAffineTransformTranslate(&v26, &v40, *(&v36 + 1), *&v37);
  v39 = v26;
  CGAffineTransformScale(&v40, &v39, *&v21, *(&v21 + 1));
  v26 = v40;
  _setViewTransform(self->_selectedMarkerView, &v40, v16);
  *&v25.a = v24;
  *&v25.c = v23;
  *&v25.tx = v22;
  *&v40.a = v24;
  *&v40.c = v23;
  *&v40.tx = v22;
  CGAffineTransformTranslate(&v25, &v40, *(&v37 + 1), v38);
  v39 = v25;
  CGAffineTransformScale(&v40, &v39, 1.0, 1.0);
  v25 = v40;
  _setViewTransform(self, &v40, v16);
}

- ($F305BA3B40A0ABD2276B1E2CDC82332E)_metricsForState:(SEL)a3
{
  [(MKMarkerStyle *)self->_unselectedMarkerStyle balloonRect];
  v8 = v7;
  v10 = v9;
  [(MKMarkerStyle *)self->_selectedMarkerStyle balloonRect];
  if (a4)
  {
    retstr->var0.width = v11 / v8;
    retstr->var0.height = v12 / v10;
    __asm { FMOV            V0.2D, #1.0 }

    retstr->var1 = _Q0;
    [(MKMarkerStyle *)self->_selectedMarkerStyle balloonYOffset];
    v19 = v18;
    result = [(MKMarkerStyle *)self->_unselectedMarkerStyle balloonYOffset];
    *&retstr->var2 = xmmword_1A30F6E30;
    retstr->var3.height = v19 - v21;
    v22 = 0.0;
  }

  else
  {
    v23 = v8 / v11;
    __asm { FMOV            V2.2D, #1.0 }

    retstr->var0 = _Q2;
    retstr->var1.width = v23;
    retstr->var1.height = v10 / v12;
    retstr->var3.width = 0.0;
    retstr->var3.height = 0.0;
    retstr->var2 = 0.100000001;
    [(MKMarkerStyle *)self->_unselectedMarkerStyle balloonYOffset];
    v26 = v25;
    result = [(MKMarkerStyle *)self->_selectedMarkerStyle balloonYOffset];
    v22 = (v26 - v27) * 0.5;
  }

  retstr->var4.width = 0.0;
  retstr->var4.height = v22;
  v28 = 0.0;
  if (a4 == 2)
  {
    v28 = -20.0;
  }

  retstr->var5.width = 0.0;
  retstr->var5.height = v28;
  return result;
}

- (void)_updateStyle
{
  v3 = [(MKMarkerAnnotationView *)self _currentMarkerState];

  [(MKMarkerAnnotationView *)self _updateContentForState:v3];
}

- (void)traitEnvironment:(id)a3 didChangeTraitCollection:(id)a4
{
  v5 = a4;
  v6 = [(MKMarkerAnnotationView *)self traitCollection];
  v7 = [v6 hasDifferentColorAppearanceComparedToTraitCollection:v5];

  if (v7)
  {

    [(MKMarkerAnnotationView *)self _updateStyle];
  }
}

- (void)prepareForSnapshotting
{
  v3.receiver = self;
  v3.super_class = MKMarkerAnnotationView;
  [(MKAnnotationView *)&v3 prepareForSnapshotting];
  [(MKAnnotationView *)self _updateAnchorPosition:1 alignToPixels:0.0, 0.0];
  [(UIView *)self _mapkit_setNeedsLayout];
}

- (void)_unhideForDisplay
{
  if (self->_animatesWhenAdded)
  {
    [(MKAnnotationView *)self _setHidden:0 forReason:1 animated:1];
    v3 = self->_size.height * 0.5 * 4.0;
    v4 = *(MEMORY[0x1E695EFD0] + 16);
    *&v7.a = *MEMORY[0x1E695EFD0];
    *&v7.c = v4;
    *&v7.tx = *(MEMORY[0x1E695EFD0] + 32);
    *&v9.a = *&v7.a;
    *&v9.c = v4;
    *&v9.tx = *&v7.tx;
    CGAffineTransformTranslate(&v7, &v9, 0.0, v3);
    v8 = v7;
    CGAffineTransformScale(&v9, &v8, 0.25, 0.25);
    v7 = v9;
    [(MKMarkerAnnotationView *)self setTransform:&v9];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __43__MKMarkerAnnotationView__unhideForDisplay__block_invoke;
    v6[3] = &unk_1E76CDB38;
    v6[4] = self;
    [MEMORY[0x1E69DD250] animateWithDuration:0 delay:v6 usingSpringWithDamping:0 initialSpringVelocity:0.4 options:0.0 animations:0.666666687 completion:0.0];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = MKMarkerAnnotationView;
    [(MKAnnotationView *)&v5 _unhideForDisplay];
  }
}

uint64_t __43__MKMarkerAnnotationView__unhideForDisplay__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(MEMORY[0x1E695EFD0] + 16);
  v4[0] = *MEMORY[0x1E695EFD0];
  v4[1] = v2;
  v4[2] = *(MEMORY[0x1E695EFD0] + 32);
  return [v1 setTransform:v4];
}

- (void)prepareForDisplay
{
  v5.receiver = self;
  v5.super_class = MKMarkerAnnotationView;
  [(MKAnnotationView *)&v5 prepareForDisplay];
  [(MKMarkerAnnotationView *)self _setupNormalViewsIfNeeded];
  v3 = [(MKAnnotationView *)self _shouldShowCalloutIfSelected];
  if ([(MKAnnotationView *)self isSelected])
  {
    [(MKMarkerAnnotationView *)self _setupSelectedViewsIfNeededUsesCallout:v3];
  }

  v4 = [(MKMarkerAnnotationView *)self _currentMarkerState];
  [(MKMarkerAnnotationView *)self _configureViewsForState:v4 usesCallout:v3 animated:0];
  [(MKMarkerAnnotationView *)self _updateContentForState:v4 forceUpdate:1];
}

- (void)prepareForReuse
{
  v12.receiver = self;
  v12.super_class = MKMarkerAnnotationView;
  [(MKAnnotationView *)&v12 prepareForReuse];
  customStyleAttributes = self->_customStyleAttributes;
  self->_customStyleAttributes = 0;

  markerTintColor = self->_markerTintColor;
  self->_markerTintColor = 0;

  glyphImage = self->_glyphImage;
  self->_glyphImage = 0;

  selectedGlyphImage = self->_selectedGlyphImage;
  self->_selectedGlyphImage = 0;

  glyphText = self->_glyphText;
  self->_glyphText = 0;

  glyphTintColor = self->_glyphTintColor;
  self->_glyphTintColor = 0;

  selectedContentView = self->_selectedContentView;
  self->_selectedContentView = 0;

  v10 = [(MKMarkerBalloonView *)self->_markerView contentView];
  [v10 clear];

  v11 = [(MKMarkerBalloonView *)self->_selectedMarkerView contentView];
  [v11 clear];
}

- (int64_t)_currentMarkerState
{
  if (![(MKAnnotationView *)self isSelected])
  {
    return 0;
  }

  if ([(MKAnnotationView *)self dragState])
  {
    return 2;
  }

  return 1;
}

- (void)_updateContentView:(id)a3 forState:(int64_t)a4
{
  v6 = a3;
  v12 = v6;
  if (a4 && self->_selectedContentView)
  {
    [v6 setCustomContentView:?];
  }

  else
  {
    v7 = [(MKMarkerAnnotationView *)self _effectiveGlyphTintColorForState:a4];
    [v12 setGlyphTintColor:v7];

    v8 = [(MKMarkerAnnotationView *)self _effectiveGlyphText];
    if (v8)
    {
      [v12 setGlyphText:v8];
    }

    else
    {
      v9 = [(MKMarkerAnnotationView *)self _effectiveGlyphImageForState:a4];
      if (v9)
      {
        v10 = v12;
        v11 = v9;
      }

      else
      {
        [v12 setGlyphText:0];
        v10 = v12;
        v11 = 0;
      }

      [v10 setGlyphImage:v11];
    }
  }
}

- (void)_updateContentForState:(int64_t)a3 forceUpdate:(BOOL)a4
{
  if (a4 || ([(MKMarkerAnnotationView *)self window], v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
  {
    [(MKMarkerAnnotationView *)self _updateMarkerStyleIfNeededForState:a3];
    if (a3)
    {
      p_selectedMarkerView = &self->_selectedMarkerView;
      [(MKMarkerBalloonView *)self->_selectedMarkerView updateWithMarkerStyle:self->_selectedMarkerStyle];
      [(MKMarkerDotView *)self->_selectedDotView updateWithMarkerStyle:self->_selectedMarkerStyle];
    }

    else
    {
      v8 = [(MKMarkerStyle *)self->_unselectedMarkerStyle balloonImage];
      p_selectedMarkerView = &self->_markerView;
      [(MKMarkerBalloonView *)self->_markerView setImage:v8];

      a3 = 0;
    }

    v9 = [(MKMarkerBalloonView *)*p_selectedMarkerView contentView];
    [(MKMarkerAnnotationView *)self _updateContentView:v9 forState:a3];
  }
}

- (id)_createMarkerStyleConfigurationForState:(int64_t)a3
{
  v5 = [MKMarkerStyleConfiguration configurationForView:self];
  [v5 setSelected:a3 != 0];
  if ([v5 selected])
  {
    v6 = [(MKMarkerAnnotationView *)self _hasCustomSelectedGlyphContent];
  }

  else
  {
    v6 = [(MKMarkerAnnotationView *)self _hasCustomGlyphContent];
  }

  [v5 setGlyphHidden:v6];
  v7 = [(MKMarkerAnnotationView *)self _resolvedCustomGlyphTintColor];
  [v5 setGlyphColor:v7];

  v8 = [(MKMarkerAnnotationView *)self _resolvedMarkerTintColor];
  [v5 setFillColor:v8];

  [v5 setStyleAttributes:self->_customStyleAttributes];

  return v5;
}

- (void)_updateMarkerStyleForState:(int64_t)a3
{
  v11 = [(MKMarkerAnnotationView *)self _createMarkerStyleConfigurationForState:?];
  v5 = [(MKMarkerAnnotationView *)self _currentMarkerStyleForState:a3];
  v6 = [v5 configuration];

  if (([v11 isEqualToMarkerStyleConfiguration:v6] & 1) == 0)
  {
    v7 = [MKMarkerStyle markerStyleForConfiguration:v11];
    v8 = &OBJC_IVAR___MKMarkerAnnotationView__selectedMarkerStyle;
    if (!a3)
    {
      v8 = &OBJC_IVAR___MKMarkerAnnotationView__unselectedMarkerStyle;
    }

    v9 = *v8;
    v10 = *(&self->super.super.super.super.isa + v9);
    *(&self->super.super.super.super.isa + v9) = v7;
  }
}

- (id)_currentMarkerStyleForState:(int64_t)a3
{
  v3 = &OBJC_IVAR___MKMarkerAnnotationView__selectedMarkerStyle;
  if (!a3)
  {
    v3 = &OBJC_IVAR___MKMarkerAnnotationView__unselectedMarkerStyle;
  }

  return *(&self->super.super.super.super.isa + *v3);
}

- (void)_updateMarkerStyleIfNeededForState:(int64_t)a3
{
  if (!a3)
  {
    v3 = 1024;
LABEL_5:
    if (!*(&self->super.super.super.super.isa + v3))
    {
      return;
    }

    goto LABEL_6;
  }

  if (!self->_selectedMarkerView)
  {
    v3 = 1032;
    goto LABEL_5;
  }

LABEL_6:
  [(MKMarkerAnnotationView *)self _updateMarkerStyleForState:?];
}

- (void)layoutSubviews
{
  v12.receiver = self;
  v12.super_class = MKMarkerAnnotationView;
  [(MKAnnotationView *)&v12 layoutSubviews];
  [(MKMarkerAnnotationView *)self bounds];
  x = v13.origin.x;
  y = v13.origin.y;
  width = v13.size.width;
  height = v13.size.height;
  MidX = CGRectGetMidX(v13);
  v14.origin.x = x;
  v14.origin.y = y;
  v14.size.width = width;
  v14.size.height = height;
  MaxY = CGRectGetMaxY(v14);
  v9 = [(MKMarkerBalloonView *)self->_markerView layer];
  [v9 setPosition:{MidX, MaxY}];

  v10 = [(MKMarkerDotView *)self->_selectedDotView layer];
  [v10 setPosition:{MidX, MaxY}];

  v11 = [(MKMarkerBalloonView *)self->_selectedMarkerView layer];
  [v11 setPosition:{MidX, MaxY}];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGRect)_frameForSelectionAdjustment
{
  [(MKMarkerStyle *)self->_selectedMarkerStyle balloonRect];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(MKMarkerStyle *)self->_selectedMarkerStyle dotRect];
  v35.origin.x = v11;
  v35.origin.y = v12;
  v35.size.width = v13;
  v35.size.height = v14;
  v32.origin.x = v4;
  v32.origin.y = v6;
  v32.size.width = v8;
  v32.size.height = v10;
  v33 = CGRectUnion(v32, v35);
  x = v33.origin.x;
  y = v33.origin.y;
  width = v33.size.width;
  height = v33.size.height;
  v19 = [(MKMarkerAnnotationView *)self superview];
  [v19 convertRect:self->_selectedMarkerView fromView:{x, y, width, height}];
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;

  v28 = v21;
  v29 = v23;
  v30 = v25;
  v31 = v27;
  result.size.height = v31;
  result.size.width = v30;
  result.origin.y = v29;
  result.origin.x = v28;
  return result;
}

- (CGPoint)_anchorPointForCalloutAnchorPosition:(int64_t)a3
{
  [(MKMarkerAnnotationView *)self _frameForSelectionAdjustment];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = [(MKMarkerAnnotationView *)self superview];
  [(MKMarkerAnnotationView *)self convertRect:v13 fromView:v6, v8, v10, v12];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  if (a3 == 4)
  {
    [(MKMarkerStyle *)self->_selectedMarkerStyle contentRect];
    rect.origin.x = v39;
    v41 = v40;
    v43 = v42;
    v45 = v44;
    [(MKMarkerBalloonView *)self->_selectedMarkerView frame];
    v47 = v46;
    [(MKMarkerBalloonView *)self->_selectedMarkerView frame];
    v49 = v48;
    v59.origin.x = rect.origin.x;
    v59.origin.y = v41;
    v59.size.width = v43;
    v59.size.height = v45;
    v60 = CGRectOffset(v59, v47, v49);
    x = v60.origin.x;
    y = v60.origin.y;
    width = v60.size.width;
    rect.origin.x = v60.size.height;
    v60.origin.x = v15;
    v60.origin.y = v17;
    v60.size.width = v19;
    v60.size.height = v21;
    MinX = CGRectGetMinX(v60);
    goto LABEL_7;
  }

  if (a3 == 3)
  {
    [(MKMarkerStyle *)self->_selectedMarkerStyle contentRect];
    rect.origin.x = v24;
    v26 = v25;
    v28 = v27;
    v30 = v29;
    [(MKMarkerBalloonView *)self->_selectedMarkerView frame];
    v32 = v31;
    [(MKMarkerBalloonView *)self->_selectedMarkerView frame];
    v34 = v33;
    v57.origin.x = rect.origin.x;
    v57.origin.y = v26;
    v57.size.width = v28;
    v57.size.height = v30;
    v58 = CGRectOffset(v57, v32, v34);
    x = v58.origin.x;
    y = v58.origin.y;
    width = v58.size.width;
    rect.origin.x = v58.size.height;
    v58.origin.x = v15;
    v58.origin.y = v17;
    v58.size.width = v19;
    v58.size.height = v21;
    MinX = CGRectGetMaxX(v58);
LABEL_7:
    MidX = MinX;
    v61.origin.x = x;
    v61.origin.y = y;
    v61.size.width = width;
    v61.size.height = rect.origin.x;
    MidY = CGRectGetMidY(v61);
    goto LABEL_8;
  }

  if (a3 != 2)
  {
    *&rect.origin.y = self;
    *&rect.size.width = MKMarkerAnnotationView;
    [(CGFloat *)&rect.origin.y _anchorPointForCalloutAnchorPosition:a3];
    MidX = v51;
    goto LABEL_10;
  }

  v55.origin.x = v15;
  v55.origin.y = v17;
  v55.size.width = v19;
  v55.size.height = v21;
  MidX = CGRectGetMidX(v55);
  v56.origin.x = v15;
  v56.origin.y = v17;
  v56.size.width = v19;
  v56.size.height = v21;
  MidY = CGRectGetMinY(v56);
LABEL_8:
  v50 = MidY;
LABEL_10:
  v52 = MidX;
  result.y = v50;
  result.x = v52;
  return result;
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (([v10 isEqualToString:@"title"] & 1) != 0 || objc_msgSend(v10, "isEqualToString:", @"subtitle"))
  {
    [(MKAnnotationView *)self invalidateCustomFeatureForced:0];
  }

  else
  {
    v13.receiver = self;
    v13.super_class = MKMarkerAnnotationView;
    [(MKMarkerAnnotationView *)&v13 observeValueForKeyPath:v10 ofObject:v11 change:v12 context:a6];
  }
}

- (void)setSubtitleVisibility:(MKFeatureVisibility)subtitleVisibility
{
  if (self->super._subtitleVisibility != subtitleVisibility)
  {
    self->super._subtitleVisibility = subtitleVisibility;
    [(MKAnnotationView *)self invalidateCustomFeatureForced:0];
  }
}

- (void)setTitleVisibility:(MKFeatureVisibility)titleVisibility
{
  if (self->super._titleVisibility != titleVisibility)
  {
    self->super._titleVisibility = titleVisibility;
    [(MKAnnotationView *)self invalidateCustomFeatureForced:0];
  }
}

- (void)setAnnotation:(id)a3
{
  v4 = a3;
  v5 = [(MKAnnotationView *)self annotation];
  v6 = v5;
  if (v5 != v4)
  {
    if (v5)
    {
      self->_isObserving = 0;
      [v5 removeObserver:self forKeyPath:@"title"];
      [v6 removeObserver:self forKeyPath:@"subtitle"];
    }

    v7.receiver = self;
    v7.super_class = MKMarkerAnnotationView;
    [(MKAnnotationView *)&v7 setAnnotation:v4];
    if (v4)
    {
      self->_isObserving = 1;
      [v4 addObserver:self forKeyPath:@"title" options:0 context:0];
      [v4 addObserver:self forKeyPath:@"subtitle" options:0 context:0];
    }
  }
}

- (void)setFrame:(CGRect)a3
{
  width = self->_size.width;
  height = self->_size.height;
  v5.receiver = self;
  v5.super_class = MKMarkerAnnotationView;
  [(MKMarkerAnnotationView *)&v5 setFrame:a3.origin.x, a3.origin.y, width, height];
}

- (double)_preferredScale
{
  v2 = [(MKMarkerAnnotationView *)self traitCollection];
  [v2 displayScale];
  v4 = v3;

  if (v4 == 0.0)
  {
    v5 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v5 scale];
    v4 = v6;
  }

  return v4;
}

- (void)_configureCalloutOffset
{
  [(MKMarkerAnnotationView *)self _preferredScale];
  v4 = [MKMarkerStyle defaultSelectedMarkerStyleForScale:?];
  [v4 dotRect];
  [(MKAnnotationView *)self setCalloutOffset:0.0, self->_size.height + v3 * -0.5];
}

- (MKMarkerAnnotationView)initWithAnnotation:(id)a3 reuseIdentifier:(id)a4
{
  v13.receiver = self;
  v13.super_class = MKMarkerAnnotationView;
  v4 = [(MKAnnotationView *)&v13 initWithAnnotation:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    [(MKAnnotationView *)v4 setCollisionMode:1];
    [(MKMarkerAnnotationView *)v5 _preferredScale];
    v6 = [MKMarkerStyle defaultUnselectedMarkerStyleForScale:?];
    [v6 balloonRect];
    v5->_size.width = v7;
    v5->_size.height = v8;

    [(MKAnnotationView *)v5 setBounds:0.0, 0.0, v5->_size.width, v5->_size.height];
    [(MKAnnotationView *)v5 setCenterOffset:0.0, v5->_size.height * -0.5];
    [(MKMarkerAnnotationView *)v5 _configureCalloutOffset];
    v5->super._titleVisibility = 0;
    v5->super._subtitleVisibility = 0;
    v9 = [MEMORY[0x1E69DD1B8] systemTraitsAffectingColorAppearance];
    v10 = [(MKMarkerAnnotationView *)v5 registerForTraitChanges:v9 withAction:sel_traitEnvironment_didChangeTraitCollection_];

    v11 = +[MKMarkerStyleCache sharedCache];
    [v11 incrementLiveMarkerCount];
  }

  return v5;
}

- (void)_updateFromMap
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9.receiver = self;
    v9.super_class = MKMarkerAnnotationView;
    [(MKAnnotationView *)&v9 _updateFromMap];
    self->super._titleVisibility = 1;
    self->super._subtitleVisibility = 1;
    v3 = [(MKAnnotationView *)self annotation];
    v4 = [v3 marker];

    [v4 calloutAnchorPointWithSnapToPixels:1];
    v6 = v5;
    v8 = v7;
    [(MKMarkerAnnotationView *)self bounds];
    [(MKMarkerAnnotationView *)self setCenter:v6, v8 - CGRectGetMidY(v10) + -1.0];
  }
}

- (void)layoutSublayersOfLayer:(id)a3
{
  v4 = a3;
  if (!_MKLinkedOnOrAfterReleaseSet(1796))
  {
    [(MKMarkerAnnotationView *)self prepareForDisplay];
  }

  v5.receiver = self;
  v5.super_class = MKMarkerAnnotationView;
  [(MKMarkerAnnotationView *)&v5 layoutSublayersOfLayer:v4];
}

- (id)_effectiveGlyphText
{
  glyphText = self->_glyphText;
  if (glyphText)
  {
    v3 = glyphText;
  }

  else
  {
    v4 = [(MKAnnotationView *)self annotation];
    if ([v4 _mapkit_isMKClusterAnnotation])
    {
      if (_effectiveGlyphText_onceToken != -1)
      {
        dispatch_once(&_effectiveGlyphText_onceToken, &__block_literal_global_1335);
      }

      v5 = _effectiveGlyphText_formatter;
      v6 = MEMORY[0x1E696AD98];
      v7 = [v4 memberAnnotations];
      v8 = [v6 numberWithUnsignedInteger:{objc_msgSend(v7, "count")}];
      v3 = [v5 stringFromNumber:v8];
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

void __45__MKMarkerAnnotationView__effectiveGlyphText__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696ADA0]);
  v1 = _effectiveGlyphText_formatter;
  _effectiveGlyphText_formatter = v0;

  v2 = [MEMORY[0x1E695DF58] currentLocale];
  [_effectiveGlyphText_formatter setLocale:v2];
}

- (void)setGlyphText:(NSString *)glyphText
{
  v4 = glyphText;
  v5 = v4;
  if (v4 | self->_glyphText)
  {
    v9 = v4;
    v6 = [v4 isEqualToString:?];
    v5 = v9;
    if (!v6)
    {
      v7 = [v9 copy];
      v8 = self->_glyphText;
      self->_glyphText = v7;

      [(MKMarkerAnnotationView *)self _updateContentForState:[(MKMarkerAnnotationView *)self _currentMarkerState]];
      v5 = v9;
    }
  }
}

- (id)_effectiveGlyphImageForState:(int64_t)a3
{
  if (a3 && (selectedGlyphImage = self->_selectedGlyphImage) != 0 || (selectedGlyphImage = self->_glyphImage) != 0)
  {
    v5 = selectedGlyphImage;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_glyphImageForImage:(id)a3
{
  v4 = a3;
  v5 = [(MKAnnotationView *)self annotation];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v7 = 0;
  }

  else
  {
    v7 = 2;
  }

  v8 = [v4 imageWithRenderingMode:v7];

  return v8;
}

- (void)setSelectedGlyphImage:(UIImage *)selectedGlyphImage
{
  v4 = selectedGlyphImage;
  v5 = v4;
  v6 = self->_selectedGlyphImage;
  if (v4 | v6)
  {
    v7 = v6 == v4;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    v10 = v4;
    v8 = [(MKMarkerAnnotationView *)self _glyphImageForImage:v4];
    v9 = self->_selectedGlyphImage;
    self->_selectedGlyphImage = v8;

    [(MKMarkerAnnotationView *)self _updateContentForState:[(MKMarkerAnnotationView *)self _currentMarkerState]];
    v5 = v10;
  }
}

- (void)setGlyphImage:(UIImage *)glyphImage
{
  v4 = glyphImage;
  v5 = v4;
  v6 = self->_glyphImage;
  if (v4 | v6)
  {
    v7 = v6 == v4;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    v10 = v4;
    v8 = [(MKMarkerAnnotationView *)self _glyphImageForImage:v4];
    v9 = self->_glyphImage;
    self->_glyphImage = v8;

    [(MKMarkerAnnotationView *)self _updateContentForState:[(MKMarkerAnnotationView *)self _currentMarkerState]];
    v5 = v10;
  }
}

- (id)_customLegibleGlyphColor
{
  if (self->_markerTintColor && _MKLinkedOnOrAfterReleaseSet(2310))
  {
    v3 = [(MKMarkerAnnotationView *)self _resolvedMarkerTintColor];
    v4 = [objc_alloc(MEMORY[0x1E69DD5B8]) initWithContentColor:v3];
    v5 = [v4 primaryColor];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_effectiveGlyphTintColorForState:(int64_t)a3
{
  glyphTintColor = self->_glyphTintColor;
  if (glyphTintColor)
  {
    v4 = glyphTintColor;
  }

  else
  {
    v7 = [(MKMarkerAnnotationView *)self _customLegibleGlyphColor];
    v8 = v7;
    if (v7)
    {
      v9 = v7;
    }

    else
    {
      if (a3)
      {
        v10 = 1048;
      }

      else
      {
        v10 = 1056;
      }

      v9 = [*(&self->super.super.super.super.isa + v10) defaultGlyphColor];
    }

    v4 = v9;
  }

  return v4;
}

- (id)_resolvedCustomGlyphTintColor
{
  if (self->_glyphTintColor)
  {
    [(MKMarkerAnnotationView *)self _resolveColor:?];
  }

  else
  {
    [(MKMarkerAnnotationView *)self _customLegibleGlyphColor];
  }
  v2 = ;

  return v2;
}

- (void)setGlyphTintColor:(UIColor *)glyphTintColor
{
  if (self->_glyphTintColor != glyphTintColor)
  {
    v4 = [(UIColor *)glyphTintColor copy];
    v5 = self->_glyphTintColor;
    self->_glyphTintColor = v4;

    v6 = [(MKMarkerAnnotationView *)self _currentMarkerState];

    [(MKMarkerAnnotationView *)self _updateContentForState:v6];
  }
}

- (void)setSelectedContentView:(id)a3
{
  v5 = a3;
  if (self->_selectedContentView != v5)
  {
    objc_storeStrong(&self->_selectedContentView, a3);
    if ([(MKMarkerAnnotationView *)self _currentMarkerState])
    {
      [(MKMarkerAnnotationView *)self _updateContentForState:[(MKMarkerAnnotationView *)self _currentMarkerState]];
    }
  }
}

- (void)_setStyleAttributes:(id)a3
{
  v5 = a3;
  if (self->_customStyleAttributes != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_customStyleAttributes, a3);
    [(MKMarkerAnnotationView *)self _updateContentForState:[(MKMarkerAnnotationView *)self _currentMarkerState]];
    v5 = v6;
  }
}

- (void)setMarkerTintColor:(UIColor *)markerTintColor
{
  if (self->_markerTintColor != markerTintColor)
  {
    v4 = [(UIColor *)markerTintColor copy];
    v5 = self->_markerTintColor;
    self->_markerTintColor = v4;

    v6 = [(MKMarkerAnnotationView *)self _currentMarkerState];

    [(MKMarkerAnnotationView *)self _updateContentForState:v6];
  }
}

- (BOOL)canShowCallout
{
  v5.receiver = self;
  v5.super_class = MKMarkerAnnotationView;
  v3 = [(MKAnnotationView *)&v5 canShowCallout];
  return v3 & [(MKMarkerAnnotationView *)self _hasDataRequiringCallout];
}

- (BOOL)_hasDataRequiringCallout
{
  v3 = [(MKAnnotationView *)self rightCalloutAccessoryView];
  if (v3)
  {
    v4 = 1;
  }

  else
  {
    v5 = [(MKAnnotationView *)self leftCalloutAccessoryView];
    if (v5)
    {
      v4 = 1;
    }

    else
    {
      v6 = [(MKAnnotationView *)self detailCalloutAccessoryView];
      v4 = v6 != 0;
    }
  }

  return v4;
}

- (void)_setWalletMerchantStylingInfo:(id)a3
{
  v5 = a3;
  if (self->_walletMerchantStylingInfo != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_walletMerchantStylingInfo, a3);
    v6 = [(MKWalletMerchantStylingInfo *)v7 _featureStyleAttributes];
    [(MKMarkerAnnotationView *)self _setStyleAttributes:v6];

    v5 = v7;
  }
}

@end