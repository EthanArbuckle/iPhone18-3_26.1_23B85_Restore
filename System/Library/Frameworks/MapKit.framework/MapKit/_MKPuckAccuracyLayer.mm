@interface _MKPuckAccuracyLayer
- (CGRect)significantBounds;
- (_MKPuckAccuracyLayer)init;
- (double)currentAccuracy;
- (void)_createFaux3DRings;
- (void)_updateColors;
- (void)_updateFaux3DRingsIfNecessary;
- (void)setAccuracy:(double)accuracy duration:(double)duration;
- (void)setFaux3DEnabled:(BOOL)enabled;
- (void)setFillOpacity:(double)opacity duration:(double)duration;
- (void)setHidden:(BOOL)hidden;
- (void)setMapCameraDistance:(double)distance;
- (void)setMapPitchRadians:(double)radians;
- (void)setMinimumRadius:(double)radius;
- (void)setStrokeOpacity:(double)opacity duration:(double)duration;
- (void)setTintColor:(id)color;
- (void)setTraitCollection:(id)collection;
- (void)startAnimationsIfNecessary;
- (void)stopAnimations;
- (void)updateLegacyConfiguration;
@end

@implementation _MKPuckAccuracyLayer

- (_MKPuckAccuracyLayer)init
{
  v11.receiver = self;
  v11.super_class = _MKPuckAccuracyLayer;
  v2 = [(_MKPuckAccuracyLayer *)&v11 init];
  v3 = v2;
  if (v2)
  {
    v2->_additionalOpacityMultiplier = 1.0;
    v2->_additionalStrokeOpacityMultiplier = 1.0;
    layer = [MEMORY[0x1E6979398] layer];
    ring = v3->_ring;
    v3->_ring = layer;

    [(_MKPuckAccuracyLayer *)v3 bounds];
    [(CALayer *)v3->_ring setFrame:?];
    [(_MKPuckAccuracyLayer *)v3 bounds];
    [(CALayer *)v3->_ring setCornerRadius:v6 * 0.5];
    [(CALayer *)v3->_ring _mapkit_setActionsToRemoveDefaultImplicitActions];
    [(_MKPuckAccuracyLayer *)v3 bounds];
    v7 = CGPathCreateWithEllipseInRect(v12, 0);
    CopyByStrokingPath = CGPathCreateCopyByStrokingPath(v7, 0, 4.0, kCGLineCapRound, kCGLineJoinRound, 0.0);
    [(CALayer *)v3->_ring setShadowPath:CopyByStrokingPath];
    CGPathRelease(v7);
    CGPathRelease(CopyByStrokingPath);
    [(_MKPuckAccuracyLayer *)v3 addSublayer:v3->_ring];
    [(_MKPuckAccuracyLayer *)v3 updateLegacyConfiguration];
    v9 = v3;
  }

  return v3;
}

- (void)updateLegacyConfiguration
{
  [(_MKPuckAccuracyLayer *)self _updateColors];

  [(_MKPuckAccuracyLayer *)self startAnimationsIfNecessary];
}

- (void)_updateColors
{
  v45[3] = *MEMORY[0x1E69E9840];
  v3 = 0x1E69DD000uLL;
  currentTraitCollection = [MEMORY[0x1E69DD1B8] currentTraitCollection];
  [MEMORY[0x1E69DD1B8] setCurrentTraitCollection:self->_traitCollection];
  if (self->_stale)
  {
    v5 = [MEMORY[0x1E69DC888] colorWithDynamicProvider:&__block_literal_global_27243];
  }

  else
  {
    v5 = self->_tintColor;
  }

  v6 = v5;
  mapType = self->_mapType;
  if (mapType - 1 < 4 || (v8 = 1.0, mapType == 107))
  {
    v8 = 2.0;
  }

  v9 = 0.14;
  if (self->_stale)
  {
    v9 = 0.2;
  }

  v10 = (v8 * v9);
  objc_storeStrong(&self->_fullOpacityFillColor, v5);
  self->_baseOpacity = v10;
  v11 = [(UIColor *)self->_fullOpacityFillColor colorWithAlphaComponent:self->_additionalOpacityMultiplier * v10];
  -[CALayer setBackgroundColor:](self->_ring, "setBackgroundColor:", [v11 CGColor]);

  if (_MKModernPuckDesignEnabled_onceToken != -1)
  {
    dispatch_once(&_MKModernPuckDesignEnabled_onceToken, &__block_literal_global_25_27148);
  }

  if (_MKModernPuckDesignEnabled_linkedOnOrAfterGoldenAzulHunterArcher == 1 && (_MKModernPuckDesignEnabled_newPuckEnabled & 1) != 0)
  {
    v12 = _MKPuckAnnotationViewBaseColor(self->_mapType, 1);
    fullOpacityStrokeColor = self->_fullOpacityStrokeColor;
    self->_fullOpacityStrokeColor = v12;

    if (![(UIColor *)self->_fullOpacityStrokeColor getRed:0 green:0 blue:0 alpha:&self->_baseStrokeOpacity])
    {
      self->_baseStrokeOpacity = 1.0;
    }

    v14 = [(UIColor *)self->_fullOpacityStrokeColor colorWithAlphaComponent:self->_additionalStrokeOpacityMultiplier, v6, currentTraitCollection];
    -[CALayer setBorderColor:](self->_ring, "setBorderColor:", [v14 CGColor]);

    [(CALayer *)self->_ring setBorderWidth:3.0];
    currentTraitCollection2 = [MEMORY[0x1E69DD1B8] currentTraitCollection];
    v16 = [currentTraitCollection2 userInterfaceStyle] == 2;

    self->_useDarkAppearance = v16;
    [(CALayer *)self->_ring setShadowRadius:4.0];
    [(CALayer *)self->_ring setShadowOffset:0.0, 1.0];
    v17 = [MEMORY[0x1E69DC888] _mapkit_colorNamed:@"PuckShadowColor"];
    -[CALayer setShadowColor:](self->_ring, "setShadowColor:", [v17 CGColor]);

    mapPitchRadians = self->_mapPitchRadians;
    if (!self->_faux3DEnabled || (v19 = 0.0, mapPitchRadians <= 0.0))
    {
      if (self->_useDarkAppearance)
      {
        v20 = 0.150000006;
      }

      else
      {
        v20 = 0.0599999987;
      }

      if (self->_useDarkAppearance)
      {
        v21 = 0.300000012;
      }

      else
      {
        v21 = 0.5;
      }

      v22 = 1.0 - cos(mapPitchRadians);
      mapPitchRadians = v22 * v21 + (1.0 - v22) * v20;
      v19 = mapPitchRadians;
    }

    *&mapPitchRadians = v19;
    [(CALayer *)self->_ring setShadowOpacity:mapPitchRadians];
    if (self->_faux3DHighlight)
    {
      v23 = [MEMORY[0x1E69DC888] _mapkit_colorNamed:@"PuckFaux3DFaceHighlight"];
      v24 = [MEMORY[0x1E69DC888] _mapkit_colorNamed:@"PuckFaux3DFaceDark"];
      v25 = [v23 _mapkit_blendedColorWithFraction:v24 ofColor:0.200000003];
      v45[0] = [v25 CGColor];
      v45[1] = [v23 CGColor];
      v45[2] = [v24 CGColor];
      v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v45 count:3];
      [(CAGradientLayer *)self->_faux3DHighlight setColors:v26];
      [(CAGradientLayer *)self->_faux3DHighlight setLocations:&unk_1F1612360];
      v27 = self->_baseStrokeOpacity * self->_additionalStrokeOpacityMultiplier;
      *&v27 = v27;
      [(CAGradientLayer *)self->_faux3DHighlight setOpacity:v27];
    }

    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v28 = self->_faux3DHighlightMaskRings;
    v29 = [(NSArray *)v28 countByEnumeratingWithState:&v40 objects:v44 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v41;
      do
      {
        for (i = 0; i != v30; ++i)
        {
          if (*v41 != v31)
          {
            objc_enumerationMutation(v28);
          }

          v33 = *(*(&v40 + 1) + 8 * i);
          v34 = [MEMORY[0x1E69DC888] _mapkit_colorNamed:@"PuckFaux3DFaceDark"];
          [v33 setBorderColor:{objc_msgSend(v34, "CGColor")}];

          [(CALayer *)self->_ring borderWidth];
          [v33 setBorderWidth:?];
        }

        v30 = [(NSArray *)v28 countByEnumeratingWithState:&v40 objects:v44 count:16];
      }

      while (v30);
    }

    clearColor = [MEMORY[0x1E69DC888] clearColor];
    -[CALayer setBorderColor:](self->_faux3DShadow, "setBorderColor:", [clearColor CGColor]);

    [(CALayer *)self->_ring borderWidth];
    [(CALayer *)self->_faux3DShadow setBorderWidth:?];
    [(CALayer *)self->_faux3DShadow setShadowRadius:4.0];
    v36 = [MEMORY[0x1E69DC888] _mapkit_colorNamed:@"PuckShadowColor"];
    -[CALayer setShadowColor:](self->_faux3DShadow, "setShadowColor:", [v36 CGColor]);

    [(CALayer *)self->_faux3DShadow setShadowOffset:0.0, 1.0];
    [(CALayer *)self->_faux3DShadow setShadowOpacity:0.0];
    [(_MKPuckAccuracyLayer *)self _updateFaux3DRingsIfNecessary];
    v6 = v38;
    currentTraitCollection = v39;
    v3 = 0x1E69DD000;
  }

  else
  {
    v37 = self->_fullOpacityStrokeColor;
    self->_fullOpacityStrokeColor = 0;

    [(CALayer *)self->_ring setBorderColor:0];
    [(CALayer *)self->_ring setBorderWidth:0.0];
    [(CALayer *)self->_ring setShadowOpacity:0.0];
  }

  [*(v3 + 440) setCurrentTraitCollection:currentTraitCollection];
}

- (void)_updateFaux3DRingsIfNecessary
{
  v57 = *MEMORY[0x1E69E9840];
  if (self->_faux3DEnabled)
  {
    mapPitchRadians = self->_mapPitchRadians;
    if (self->_useDarkAppearance)
    {
      v4 = 0.150000006;
    }

    else
    {
      v4 = 0.0599999987;
    }

    if (self->_useDarkAppearance)
    {
      v5 = 0.300000012;
    }

    else
    {
      v5 = 0.5;
    }

    v6 = 1.0 - cos(self->_mapPitchRadians);
    v7 = v6 * v5 + (1.0 - v6) * v4;
    if (fabs(mapPitchRadians) >= 0.000001)
    {
      mapCameraDistance = self->_mapCameraDistance;
      if (mapCameraDistance > 23000.0)
      {
        mapCameraDistance = 23000.0;
      }

      v16 = fmax(mapCameraDistance, 1440.0);
      v17 = v6 * (((v16 + -1440.0) / -21560.0 + 1.0) * 12.0 + (1.0 - ((v16 + -1440.0) / -21560.0 + 1.0)) * 0.0);
      CATransform3DMakeTranslation(&v50, 0.0, -v17, 0.0);
      ring = self->_ring;
      v49 = v50;
      [(CALayer *)ring setTransform:&v49];
      [(CALayer *)self->_ring setShadowOpacity:0.0];
      [(CALayer *)self->_ring bounds];
      v20 = v19;
      v22 = v21;
      v24 = v23;
      v26 = v17 + v25;
      [(CAGradientLayer *)self->_faux3DHighlight setBounds:?];
      [(CAGradientLayer *)self->_faux3DHighlight setPosition:0.0, v17 * -0.5 + 2.0];
      [(CALayer *)self->_faux3DHighlightMask setFrame:v20, v22, v24, v26];
      [(CAGradientLayer *)self->_faux3DHighlight setHidden:0];
      [(CALayer *)self->_ring bounds];
      v28 = v27;
      v45 = 0u;
      v46 = 0u;
      v47 = 0u;
      v48 = 0u;
      v29 = self->_faux3DHighlightMaskRings;
      v30 = [(NSArray *)v29 countByEnumeratingWithState:&v45 objects:v55 count:16];
      if (v30)
      {
        v31 = v30;
        v32 = 0;
        v33 = v26 - v28 + -1.0;
        v34 = v33 - v17;
        v35 = *v46;
        do
        {
          for (i = 0; i != v31; ++i)
          {
            if (*v46 != v35)
            {
              objc_enumerationMutation(v29);
            }

            v37 = *(*(&v45 + 1) + 8 * i);
            v34 = v34 + 2.0;
            if (v34 >= v33)
            {
              if (v32)
              {
                v32 = 1;
                [*(*(&v45 + 1) + 8 * i) setHidden:1];
              }

              else
              {
                [*(*(&v45 + 1) + 8 * i) setHidden:0];
                CATransform3DMakeTranslation(&v44, 0.0, v33, 0.0);
                v49 = v44;
                [v37 setTransform:&v49];
                v32 = 1;
              }
            }

            else
            {
              [*(*(&v45 + 1) + 8 * i) setHidden:0];
              CATransform3DMakeTranslation(&v43, 0.0, v34, 0.0);
              v49 = v43;
              [v37 setTransform:&v49];
            }
          }

          v31 = [(NSArray *)v29 countByEnumeratingWithState:&v45 objects:v55 count:16];
        }

        while (v31);
      }

      [(CALayer *)self->_faux3DShadow setHidden:0];
      v38 = self->_ring;
      if (v38)
      {
        [(CALayer *)v38 transform];
      }

      else
      {
        memset(&v42, 0, sizeof(v42));
      }

      faux3DShadow = self->_faux3DShadow;
      v49 = v42;
      [(CALayer *)faux3DShadow setTransform:&v49, *&v42.m11, *&v42.m13, *&v42.m21, *&v42.m23, *&v42.m31, *&v42.m33, *&v42.m41, *&v42.m43];
      *&v40 = v7;
      [(CALayer *)self->_faux3DShadow setShadowOpacity:v40];
      v41 = cos(self->_mapPitchRadians);
      [(CALayer *)self->_faux3DShadow setShadowOffset:0.0, (v17 + 1.0 + 1.0 - v41 + 1.0 - v41)];
    }

    else
    {
      v8 = v7 * self->_additionalStrokeOpacityMultiplier;
      *&v8 = v8;
      [(CALayer *)self->_ring setShadowOpacity:v8];
      v53 = 0u;
      v54 = 0u;
      v51 = 0u;
      v52 = 0u;
      v9 = self->_faux3DHighlightMaskRings;
      v10 = [(NSArray *)v9 countByEnumeratingWithState:&v51 objects:v56 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v52;
        do
        {
          for (j = 0; j != v11; ++j)
          {
            if (*v52 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v51 + 1) + 8 * j);
            [v14 setHidden:1];
            [v14 setShadowOpacity:0.0];
          }

          v11 = [(NSArray *)v9 countByEnumeratingWithState:&v51 objects:v56 count:16];
        }

        while (v11);
      }

      [(CAGradientLayer *)self->_faux3DHighlight setHidden:1];
      [(CALayer *)self->_faux3DShadow setHidden:1];
    }
  }
}

- (void)startAnimationsIfNecessary
{
  v39 = *MEMORY[0x1E69E9840];
  self->_shouldShowAnimationsIfAvailable = 1;
  if (_MKModernPuckDesignEnabled_onceToken != -1)
  {
    dispatch_once(&_MKModernPuckDesignEnabled_onceToken, &__block_literal_global_25_27148);
  }

  ring = self->_ring;
  if (_MKModernPuckDesignEnabled_linkedOnOrAfterGoldenAzulHunterArcher == 1 && (_MKModernPuckDesignEnabled_newPuckEnabled & 1) != 0)
  {
    v4 = [(CALayer *)ring animationForKey:@"pulse"];

    if (!v4)
    {
      goto LABEL_15;
    }

    faux3DHighlightMaskRings = self->_faux3DHighlightMaskRings;
    if (!faux3DHighlightMaskRings)
    {
      return;
    }

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v6 = faux3DHighlightMaskRings;
    v7 = [(NSArray *)v6 countByEnumeratingWithState:&v28 objects:v37 count:16];
    if (!v7)
    {
      goto LABEL_23;
    }

    v8 = v7;
    v9 = 0;
    v10 = *v29;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v29 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = [*(*(&v28 + 1) + 8 * i) animationForKey:@"pulse"];
        v9 |= v12 == 0;
      }

      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v28 objects:v37 count:16];
    }

    while (v8);

    if (v9)
    {
LABEL_15:
      v6 = [MEMORY[0x1E6979318] animationWithKeyPath:@"borderWidth"];
      [(NSArray *)v6 setFromValue:&unk_1F1610E80];
      [(NSArray *)v6 setToValue:&unk_1F1610E90];
      [(NSArray *)v6 setDuration:1.5];
      [(NSArray *)v6 setRemovedOnCompletion:0];
      [(NSArray *)v6 setFillMode:*MEMORY[0x1E69797E0]];
      [(NSArray *)v6 setAutoreverses:1];
      LODWORD(v13) = 2139095039;
      [(NSArray *)v6 setRepeatCount:v13];
      [(NSArray *)v6 setFrameInterval:0.0250000004];
      [(CALayer *)self->_ring addAnimation:v6 forKey:@"pulse"];
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v14 = self->_faux3DHighlightMaskRings;
      v15 = [(NSArray *)v14 countByEnumeratingWithState:&v24 objects:v36 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v25;
        do
        {
          for (j = 0; j != v16; ++j)
          {
            if (*v25 != v17)
            {
              objc_enumerationMutation(v14);
            }

            [*(*(&v24 + 1) + 8 * j) addAnimation:v6 forKey:{@"pulse", v24}];
          }

          v16 = [(NSArray *)v14 countByEnumeratingWithState:&v24 objects:v36 count:16];
        }

        while (v16);
      }

      [(CALayer *)self->_faux3DShadow addAnimation:v6 forKey:@"pulse"];
LABEL_23:
    }
  }

  else
  {
    [(CALayer *)ring removeAnimationForKey:@"pulse"];
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v19 = self->_faux3DHighlightMaskRings;
    v20 = [(NSArray *)v19 countByEnumeratingWithState:&v32 objects:v38 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v33;
      do
      {
        for (k = 0; k != v21; ++k)
        {
          if (*v33 != v22)
          {
            objc_enumerationMutation(v19);
          }

          [*(*(&v32 + 1) + 8 * k) removeAnimationForKey:@"pulse"];
        }

        v21 = [(NSArray *)v19 countByEnumeratingWithState:&v32 objects:v38 count:16];
      }

      while (v21);
    }

    [(CALayer *)self->_faux3DShadow removeAnimationForKey:@"pulse"];
  }
}

- (void)_createFaux3DRings
{
  if (self->_faux3DEnabled)
  {
    v4 = 6;
    v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:6];
    v6 = *MEMORY[0x1E695EFF8];
    v7 = *(MEMORY[0x1E695EFF8] + 8);
    do
    {
      layer = [MEMORY[0x1E6979398] layer];
      [layer setAnchorPoint:{v6, v7}];
      actions = [(CALayer *)self->_ring actions];
      [layer setActions:actions];

      [layer setHidden:1];
      [(NSArray *)v5 addObject:layer];
      [(CALayer *)self->_faux3DHighlightMask insertSublayer:layer atIndex:0];

      --v4;
    }

    while (v4);
    faux3DHighlightMaskRings = self->_faux3DHighlightMaskRings;
    self->_faux3DHighlightMaskRings = v5;
    v14 = v5;

    layer2 = [MEMORY[0x1E6979398] layer];
    faux3DShadow = self->_faux3DShadow;
    self->_faux3DShadow = layer2;

    [(CALayer *)self->_faux3DShadow setAnchorPoint:0.5, 0.5];
    actions2 = [(CALayer *)self->_ring actions];
    [(CALayer *)self->_faux3DShadow setActions:actions2];

    [(CALayer *)self->_faux3DShadow setHidden:1];
    [(_MKPuckAccuracyLayer *)self insertSublayer:self->_faux3DShadow atIndex:0];
  }
}

- (void)setMapCameraDistance:(double)distance
{
  if (vabdd_f64(distance, self->_mapCameraDistance) >= 0.00000011920929)
  {
    self->_mapCameraDistance = distance;
    [(_MKPuckAccuracyLayer *)self _updateFaux3DRingsIfNecessary];
  }
}

- (void)setMapPitchRadians:(double)radians
{
  if (vabdd_f64(radians, self->_mapPitchRadians) >= 0.000001)
  {
    self->_mapPitchRadians = radians;
    [(_MKPuckAccuracyLayer *)self _updateFaux3DRingsIfNecessary];
  }
}

- (void)stopAnimations
{
  v13 = *MEMORY[0x1E69E9840];
  self->_shouldShowAnimationsIfAvailable = 0;
  [(CALayer *)self->_ring removeAnimationForKey:@"pulse"];
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v3 = self->_faux3DHighlightMaskRings;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v7++) removeAnimationForKey:{@"pulse", v8}];
      }

      while (v5 != v7);
      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }

  [(CALayer *)self->_faux3DShadow removeAnimationForKey:@"pulse"];
}

- (void)setHidden:(BOOL)hidden
{
  self->_externallyHidden = hidden;
  v5 = hidden || self->_internallyHidden;
  v7 = v3;
  v8 = v4;
  v6.receiver = self;
  v6.super_class = _MKPuckAccuracyLayer;
  [(_MKPuckAccuracyLayer *)&v6 setHidden:v5];
}

- (void)setStrokeOpacity:(double)opacity duration:(double)duration
{
  if (vabdd_f64(opacity, self->_additionalStrokeOpacityMultiplier) >= 0.000001)
  {
    self->_additionalStrokeOpacityMultiplier = opacity;
    if (self->_useDarkAppearance)
    {
      v7 = 0.150000006;
    }

    else
    {
      v7 = 0.0599999987;
    }

    if (self->_useDarkAppearance)
    {
      v8 = 0.300000012;
    }

    else
    {
      v8 = 0.5;
    }

    v9 = cos(self->_mapPitchRadians);
    v10 = ((1.0 - v9) * v8 + (1.0 - (1.0 - v9)) * v7) * opacity;
    v27 = [(UIColor *)self->_fullOpacityStrokeColor colorWithAlphaComponent:opacity];
    if (duration <= 0.0)
    {
      [(CALayer *)self->_ring removeAnimationForKey:@"strokeOpacity"];
      [(CAGradientLayer *)self->_faux3DHighlight removeAnimationForKey:@"strokeOpacity"];
      [(CALayer *)self->_faux3DShadow removeAnimationForKey:@"strokeOpacity"];
      [(CALayer *)self->_ring removeAnimationForKey:@"shadowOpacity"];
    }

    else
    {
      v11 = [MEMORY[0x1E6979318] animationWithKeyPath:@"opacity"];
      v12 = MEMORY[0x1E696AD98];
      currentLayer = [(CALayer *)self->_ring currentLayer];
      [currentLayer opacity];
      v14 = [v12 numberWithFloat:?];
      [v11 setFromValue:v14];

      v15 = [MEMORY[0x1E696AD98] numberWithDouble:opacity];
      [v11 setToValue:v15];

      [v11 setDuration:duration];
      [v11 setRemovedOnCompletion:1];
      [(CALayer *)self->_ring addAnimation:v11 forKey:@"strokeOpacity"];
      [(CAGradientLayer *)self->_faux3DHighlight addAnimation:v11 forKey:@"strokeOpacity"];
      [(CALayer *)self->_faux3DShadow addAnimation:v11 forKey:@"strokeOpacity"];
      v16 = [MEMORY[0x1E6979318] animationWithKeyPath:@"shadowOpacity"];
      v17 = MEMORY[0x1E696AD98];
      currentLayer2 = [(CALayer *)self->_ring currentLayer];
      [currentLayer2 shadowOpacity];
      v19 = [v17 numberWithFloat:?];
      [v16 setFromValue:v19];

      v20 = [MEMORY[0x1E696AD98] numberWithDouble:v10];
      [v16 setToValue:v20];

      [v16 setDuration:duration];
      [v16 setRemovedOnCompletion:1];
      [(CALayer *)self->_ring addAnimation:v16 forKey:@"shadowOpacity"];
    }

    v21 = +[MKThreadContext currentContext];
    [v21 _CA_setDisableActions:1];

    v22 = v27;
    -[CALayer setBorderColor:](self->_ring, "setBorderColor:", [v27 CGColor]);
    *&v23 = v10;
    [(CALayer *)self->_ring setShadowOpacity:v23];
    v24 = self->_additionalStrokeOpacityMultiplier * self->_baseStrokeOpacity;
    *&v24 = v24;
    [(CAGradientLayer *)self->_faux3DHighlight setOpacity:v24];
    additionalStrokeOpacityMultiplier = self->_additionalStrokeOpacityMultiplier;
    *&additionalStrokeOpacityMultiplier = additionalStrokeOpacityMultiplier;
    [(CALayer *)self->_faux3DShadow setOpacity:additionalStrokeOpacityMultiplier];
    v26 = +[MKThreadContext currentContext];
    [v26 _CA_setDisableActions:0];
  }
}

- (void)setFillOpacity:(double)opacity duration:(double)duration
{
  if (vabdd_f64(opacity, self->_additionalOpacityMultiplier) >= 0.000001)
  {
    self->_additionalOpacityMultiplier = opacity;
    opacity = [(UIColor *)self->_fullOpacityFillColor colorWithAlphaComponent:self->_baseOpacity * opacity];
    if (duration <= 0.0)
    {
      [(CALayer *)self->_ring removeAnimationForKey:@"opacity"];
    }

    else
    {
      v6 = [MEMORY[0x1E6979318] animationWithKeyPath:@"backgroundColor"];
      currentLayer = [(CALayer *)self currentLayer];
      [v6 setFromValue:{objc_msgSend(currentLayer, "backgroundColor")}];

      [v6 setToValue:{objc_msgSend(opacity, "CGColor")}];
      [v6 setDuration:duration];
      v8 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979ED8]];
      [v6 setTimingFunction:v8];

      [(CALayer *)self->_ring addAnimation:v6 forKey:@"opacity"];
    }

    v9 = +[MKThreadContext currentContext];
    [v9 _CA_setDisableActions:1];

    v10 = opacity;
    -[CALayer setBackgroundColor:](self->_ring, "setBackgroundColor:", [opacity CGColor]);
    v11 = +[MKThreadContext currentContext];
    [v11 _CA_setDisableActions:0];
  }
}

- (void)setAccuracy:(double)accuracy duration:(double)duration
{
  v135 = *MEMORY[0x1E69E9840];
  if (self->_minimumRadius >= accuracy)
  {
    minimumRadius = self->_minimumRadius;
  }

  else
  {
    minimumRadius = accuracy;
  }

  mapPitchRadians = self->_mapPitchRadians;
  v8 = 0.0;
  if (mapPitchRadians > 0.0)
  {
    mapCameraDistance = self->_mapCameraDistance;
    v10 = 1.0 - cos(mapPitchRadians);
    v11 = 23000.0;
    if (mapCameraDistance <= 23000.0)
    {
      v11 = mapCameraDistance;
    }

    v12 = (fmax(v11, 1440.0) + -1440.0) / -21560.0 + 1.0;
    v8 = v10 * (v12 * 12.0 + (1.0 - v12) * 0.0);
  }

  currentLayer = [(CALayer *)self->_ring currentLayer];
  [currentLayer bounds];
  v96 = v14;
  v16 = v15;
  v103 = v18;
  v105 = v17;

  currentLayer2 = [(CAGradientLayer *)self->_faux3DHighlight currentLayer];
  [currentLayer2 bounds];
  v98 = v21;
  v99 = v20;
  v101 = v23;
  v102 = v22;

  currentLayer3 = [(CAGradientLayer *)self->_faux3DHighlight currentLayer];
  [currentLayer3 position];
  v26 = v25;
  v28 = v27;

  v92 = v28;
  v94 = v26;
  if (duration <= 0.0)
  {
    v31 = [(CALayer *)self->_ring animationForKey:@"radius"];
    v32 = v31;
    v29 = v31 != 0;
    if (v31)
    {
      [v31 beginTime];
      v100 = v33;
      [(_MKPuckAccuracyLayer *)self convertTime:0 fromLayer:CACurrentMediaTime()];
      v35 = v34;
      [v32 beginTime];
      v30 = 0.0;
      if (v35 > v36)
      {
        [v32 beginTime];
        v30 = v35 - v37;
      }

      [v32 duration];
      duration = v38;
    }

    else
    {
      v100 = 0.0;
      v30 = 0.0;
    }
  }

  else
  {
    v100 = 0.0;
    v29 = 1;
    v30 = 0.0;
  }

  v39 = v8 * -0.5;
  [(CALayer *)self->_ring removeAnimationForKey:@"radius", v92, v94];
  v127 = 0u;
  v128 = 0u;
  v125 = 0u;
  v126 = 0u;
  v40 = self->_faux3DHighlightMaskRings;
  v41 = [(NSArray *)v40 countByEnumeratingWithState:&v125 objects:v134 count:16];
  if (v41)
  {
    v42 = v41;
    v43 = *v126;
    do
    {
      for (i = 0; i != v42; ++i)
      {
        if (*v126 != v43)
        {
          objc_enumerationMutation(v40);
        }

        [*(*(&v125 + 1) + 8 * i) removeAnimationForKey:@"radius"];
      }

      v42 = [(NSArray *)v40 countByEnumeratingWithState:&v125 objects:v134 count:16];
    }

    while (v42);
  }

  v45 = minimumRadius + minimumRadius + v8;

  [(CAGradientLayer *)self->_faux3DHighlight removeAnimationForKey:@"radius"];
  [(CALayer *)self->_faux3DHighlightMask removeAnimationForKey:@"radius"];
  [(CALayer *)self->_faux3DShadow removeAnimationForKey:@"radius"];
  v136.origin.x = 0.0;
  v136.origin.y = 0.0;
  v136.size.width = minimumRadius + minimumRadius;
  v136.size.height = minimumRadius + minimumRadius;
  v46 = CGPathCreateWithEllipseInRect(v136, 0);
  CopyByStrokingPath = CGPathCreateCopyByStrokingPath(v46, 0, 4.0, kCGLineCapRound, kCGLineJoinRound, 0.0);
  CGPathRelease(v46);
  if (v29)
  {
    v137.origin.x = v96;
    v137.origin.y = v16;
    v137.size.height = v103;
    v137.size.width = v105;
    Width = CGRectGetWidth(v137);
    if (self->_internallyHidden)
    {
      v49 = Width * 0.5;
      v50 = self->_minimumRadius;
      if (v49 > v50 || minimumRadius > v50)
      {
        self->_internallyHidden = 0;
        externallyHidden = self->_externallyHidden;
        v124.receiver = self;
        v124.super_class = _MKPuckAccuracyLayer;
        [(_MKPuckAccuracyLayer *)&v124 setHidden:externallyHidden];
      }
    }

    v133[0] = &unk_1F1611CE0;
    duration = [MEMORY[0x1E696AD98] numberWithDouble:v30 / duration];
    v133[1] = duration;
    v133[2] = &unk_1F1611CF8;
    v53 = [MEMORY[0x1E695DEC8] arrayWithObjects:v133 count:3];

    *v123 = v96;
    *&v123[1] = v16;
    *&v123[2] = v105;
    *&v123[3] = v103;
    v54 = [MEMORY[0x1E696B098] valueWithBytes:v123 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
    v122[0] = 0;
    v122[1] = 0;
    *&v122[2] = minimumRadius + minimumRadius;
    *&v122[3] = minimumRadius + minimumRadius;
    v55 = [MEMORY[0x1E696B098] valueWithBytes:v122 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
    v56 = _accuracyRadiusAnimation(@"bounds", v54, v55, v53);

    v57 = MEMORY[0x1E696AD98];
    currentLayer4 = [(CALayer *)self->_ring currentLayer];
    [currentLayer4 cornerRadius];
    v59 = [v57 numberWithDouble:?];
    v60 = [MEMORY[0x1E696AD98] numberWithDouble:minimumRadius];
    v61 = _accuracyRadiusAnimation(@"cornerRadius", v59, v60, v53);

    currentLayer5 = [(CALayer *)self->_ring currentLayer];
    v63 = _accuracyRadiusAnimation(@"shadowPath", [currentLayer5 shadowPath], CopyByStrokingPath, v53);

    animation = [MEMORY[0x1E6979308] animation];
    v132[0] = v56;
    v104 = v61;
    v132[1] = v61;
    v97 = v63;
    v132[2] = v63;
    v65 = [MEMORY[0x1E695DEC8] arrayWithObjects:v132 count:3];
    [animation setAnimations:v65];

    [animation setDuration:duration];
    if (v100 > 0.0)
    {
      [animation setBeginTime:v100];
    }

    ring = self->_ring;
    v121[0] = MEMORY[0x1E69E9820];
    v121[1] = 3221225472;
    v121[2] = __45___MKPuckAccuracyLayer_setAccuracy_duration___block_invoke;
    v121[3] = &unk_1E76CD038;
    v121[4] = self;
    *&v121[5] = minimumRadius;
    [(CALayer *)ring _mapkit_addAnimation:animation forKey:@"radius" completion:v121];
    v119 = 0u;
    v120 = 0u;
    v117 = 0u;
    v118 = 0u;
    v67 = self->_faux3DHighlightMaskRings;
    v68 = [(NSArray *)v67 countByEnumeratingWithState:&v117 objects:v131 count:16];
    if (v68)
    {
      v69 = v68;
      v70 = *v118;
      do
      {
        for (j = 0; j != v69; ++j)
        {
          if (*v118 != v70)
          {
            objc_enumerationMutation(v67);
          }

          [*(*(&v117 + 1) + 8 * j) addAnimation:animation forKey:@"radius"];
        }

        v69 = [(NSArray *)v67 countByEnumeratingWithState:&v117 objects:v131 count:16];
      }

      while (v69);
    }

    [(CALayer *)self->_faux3DShadow addAnimation:animation forKey:@"radius"];
    if (self->_faux3DHighlight)
    {
      v116[0] = v99;
      v116[1] = v98;
      v116[2] = v102;
      v116[3] = v101;
      v72 = [MEMORY[0x1E696B098] valueWithBytes:v116 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
      v115[0] = 0;
      v115[1] = 0;
      *&v115[2] = minimumRadius + minimumRadius;
      *&v115[3] = v45;
      v73 = [MEMORY[0x1E696B098] valueWithBytes:v115 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
      v74 = _accuracyRadiusAnimation(@"bounds", v72, v73, v53);

      v114[0] = v95;
      v114[1] = v93;
      v75 = [MEMORY[0x1E696B098] valueWithBytes:v114 objCType:"{CGPoint=dd}"];
      v113[0] = 0;
      *&v113[1] = v39 + 2.0;
      v76 = [MEMORY[0x1E696B098] valueWithBytes:v113 objCType:"{CGPoint=dd}"];
      v77 = _accuracyRadiusAnimation(@"position", v75, v76, v53);

      animation2 = [MEMORY[0x1E6979308] animation];

      v130[0] = v74;
      v130[1] = v77;
      v79 = [MEMORY[0x1E695DEC8] arrayWithObjects:v130 count:2];
      [animation2 setAnimations:v79];

      [animation2 setDuration:duration];
      if (v100 > 0.0)
      {
        [animation2 setBeginTime:v100];
      }

      [(CAGradientLayer *)self->_faux3DHighlight addAnimation:animation2 forKey:@"radius"];
      v112[0] = v99;
      v112[1] = v98;
      v112[2] = v102;
      v112[3] = v101;
      v80 = [MEMORY[0x1E696B098] valueWithBytes:v112 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
      v111[0] = 0;
      v111[1] = 0;
      *&v111[2] = minimumRadius + minimumRadius;
      *&v111[3] = v45;
      v81 = [MEMORY[0x1E696B098] valueWithBytes:v111 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
      v82 = _accuracyRadiusAnimation(@"frame", v80, v81, v53);

      [v82 setDuration:duration];
      if (v100 > 0.0)
      {
        [v82 setBeginTime:v100];
      }

      [(CALayer *)self->_faux3DHighlightMask addAnimation:v82 forKey:@"radius"];

      v56 = v74;
    }

    else
    {
      animation2 = animation;
    }
  }

  else
  {
    v83 = self->_minimumRadius;
    v84 = minimumRadius < v83;
    if (vabdd_f64(minimumRadius, v83) < 0.01)
    {
      v84 = 1;
    }

    self->_internallyHidden = v84;
    v85 = self->_externallyHidden || v84;
    v110.receiver = self;
    v110.super_class = _MKPuckAccuracyLayer;
    [(_MKPuckAccuracyLayer *)&v110 setHidden:v85];
  }

  [(CALayer *)self->_ring setBounds:0.0, 0.0, minimumRadius + minimumRadius, minimumRadius + minimumRadius];
  [(CALayer *)self->_ring setCornerRadius:minimumRadius];
  [(CALayer *)self->_ring setShadowPath:CopyByStrokingPath];
  v108 = 0u;
  v109 = 0u;
  v106 = 0u;
  v107 = 0u;
  v86 = self->_faux3DHighlightMaskRings;
  v87 = [(NSArray *)v86 countByEnumeratingWithState:&v106 objects:v129 count:16];
  if (v87)
  {
    v88 = v87;
    v89 = *v107;
    do
    {
      for (k = 0; k != v88; ++k)
      {
        if (*v107 != v89)
        {
          objc_enumerationMutation(v86);
        }

        v91 = *(*(&v106 + 1) + 8 * k);
        [v91 setBounds:{0.0, 0.0, minimumRadius + minimumRadius, minimumRadius + minimumRadius}];
        [v91 setCornerRadius:minimumRadius];
        [v91 setShadowPath:CopyByStrokingPath];
      }

      v88 = [(NSArray *)v86 countByEnumeratingWithState:&v106 objects:v129 count:16];
    }

    while (v88);
  }

  [(CALayer *)self->_faux3DShadow setBounds:0.0, 0.0, minimumRadius + minimumRadius, minimumRadius + minimumRadius];
  [(CALayer *)self->_faux3DShadow setCornerRadius:minimumRadius];
  [(CALayer *)self->_faux3DShadow setShadowPath:CopyByStrokingPath];
  [(CAGradientLayer *)self->_faux3DHighlight setBounds:0.0, 0.0, minimumRadius + minimumRadius, v45];
  [(CAGradientLayer *)self->_faux3DHighlight setPosition:0.0, v39 + 2.0];
  [(CALayer *)self->_faux3DHighlightMask setFrame:0.0, 0.0, minimumRadius + minimumRadius, v45];
  CGPathRelease(CopyByStrokingPath);
}

- (CGRect)significantBounds
{
  ring = self->_ring;
  [(CALayer *)ring bounds];

  [(CALayer *)ring convertRect:self toLayer:?];
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (double)currentAccuracy
{
  currentLayer = [(CALayer *)self->_ring currentLayer];
  [currentLayer bounds];
  v4 = v3 * 0.5;

  return v4;
}

- (void)setTraitCollection:(id)collection
{
  objc_storeStrong(&self->_traitCollection, collection);

  [(_MKPuckAccuracyLayer *)self _updateColors];
}

- (void)setTintColor:(id)color
{
  objc_storeStrong(&self->_tintColor, color);

  [(_MKPuckAccuracyLayer *)self _updateColors];
}

- (void)setMinimumRadius:(double)radius
{
  self->_minimumRadius = radius;
  [(CALayer *)self->_ring bounds];
  if (CGRectGetWidth(v5) * 0.5 < self->_minimumRadius)
  {
    self->_internallyHidden = 1;
    v4.receiver = self;
    v4.super_class = _MKPuckAccuracyLayer;
    [(_MKPuckAccuracyLayer *)&v4 setHidden:1];
  }
}

- (void)setFaux3DEnabled:(BOOL)enabled
{
  v30 = *MEMORY[0x1E69E9840];
  if (self->_faux3DEnabled != enabled)
  {
    self->_faux3DEnabled = enabled;
    if (enabled)
    {
      layer = [MEMORY[0x1E6979380] layer];
      faux3DHighlight = self->_faux3DHighlight;
      self->_faux3DHighlight = layer;

      [(CAGradientLayer *)self->_faux3DHighlight _mapkit_setActionsToRemoveDefaultImplicitActions];
      [(CAGradientLayer *)self->_faux3DHighlight setStartPoint:0.0, 0.5];
      [(CAGradientLayer *)self->_faux3DHighlight setEndPoint:1.0, 0.5];
      layer2 = [MEMORY[0x1E6979398] layer];
      faux3DHighlightMask = self->_faux3DHighlightMask;
      self->_faux3DHighlightMask = layer2;

      [(CALayer *)self->_faux3DHighlightMask _mapkit_setActionsToRemoveDefaultImplicitActions];
      [(CAGradientLayer *)self->_faux3DHighlight setMask:self->_faux3DHighlightMask];
      [(_MKPuckAccuracyLayer *)self _createFaux3DRings];
      [(_MKPuckAccuracyLayer *)self insertSublayer:self->_faux3DHighlight atIndex:0];
    }

    else
    {
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v8 = self->_faux3DHighlightMaskRings;
      v9 = [(NSArray *)v8 countByEnumeratingWithState:&v25 objects:v29 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v26;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v26 != v11)
            {
              objc_enumerationMutation(v8);
            }

            [*(*(&v25 + 1) + 8 * i) removeFromSuperlayer];
          }

          v10 = [(NSArray *)v8 countByEnumeratingWithState:&v25 objects:v29 count:16];
        }

        while (v10);
      }

      faux3DHighlightMaskRings = self->_faux3DHighlightMaskRings;
      self->_faux3DHighlightMaskRings = 0;

      [(CAGradientLayer *)self->_faux3DHighlight removeFromSuperlayer];
      v14 = self->_faux3DHighlight;
      self->_faux3DHighlight = 0;

      ring = self->_ring;
      v16 = *(MEMORY[0x1E69792E8] + 80);
      v24[4] = *(MEMORY[0x1E69792E8] + 64);
      v24[5] = v16;
      v17 = *(MEMORY[0x1E69792E8] + 112);
      v24[6] = *(MEMORY[0x1E69792E8] + 96);
      v24[7] = v17;
      v18 = *(MEMORY[0x1E69792E8] + 16);
      v24[0] = *MEMORY[0x1E69792E8];
      v24[1] = v18;
      v19 = *(MEMORY[0x1E69792E8] + 48);
      v24[2] = *(MEMORY[0x1E69792E8] + 32);
      v24[3] = v19;
      [(CALayer *)ring setTransform:v24];
      if (self->_useDarkAppearance)
      {
        v20 = 0.150000006;
      }

      else
      {
        v20 = 0.0599999987;
      }

      if (self->_useDarkAppearance)
      {
        v21 = 0.300000012;
      }

      else
      {
        v21 = 0.5;
      }

      v22 = cos(self->_mapPitchRadians);
      v23 = (1.0 - v22) * v21 + (1.0 - (1.0 - v22)) * v20;
      *&v23 = v23;
      [(CALayer *)self->_ring setShadowOpacity:v23];
    }

    [(_MKPuckAccuracyLayer *)self _updateColors];
    [(_MKPuckAccuracyLayer *)self _updateFaux3DRingsIfNecessary];
    if (self->_shouldShowAnimationsIfAvailable)
    {
      [(_MKPuckAccuracyLayer *)self startAnimationsIfNecessary];
    }
  }
}

@end