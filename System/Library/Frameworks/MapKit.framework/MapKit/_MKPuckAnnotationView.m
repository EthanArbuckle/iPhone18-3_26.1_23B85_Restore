@interface _MKPuckAnnotationView
+ (CGPoint)_calloutOffset;
- (BOOL)_balloonCalloutShouldShowArrow;
- (BOOL)_isLocationStale:(id)a3;
- (BOOL)_isSelectable;
- (BOOL)_shouldPulseForLocation:(id)a3;
- (BOOL)_shouldShowAccuracyRing;
- (BOOL)_tracking;
- (CGPoint)calloutOffset;
- (CGRect)_mapkit_visibleRect;
- (CGRect)_significantBounds;
- (CGSize)collisionSize;
- (UIEdgeInsets)_annotationTrackingInsets;
- (UIEdgeInsets)_defaultCollisionAlignmentRectInsets;
- (_MKPuckAnnotationView)initWithAnnotation:(id)a3 reuseIdentifier:(id)a4;
- (double)_locationAccuracyInScreenPoints;
- (double)presentationAccuracy;
- (float)_selectionPriority;
- (float)opacity;
- (id)_animationToSynchronizePulse:(id *)a3;
- (id)_createFakePuckLayer;
- (id)_currentInnerColor;
- (id)_effectiveTintColor;
- (id)_innerPulseAnimation;
- (id)_pulseAnimation;
- (id)_pulseLayer;
- (int64_t)_enforcedHeadingIndicatorStyle;
- (int64_t)collisionMode;
- (unint64_t)_innerPulseFrameWhenDisabled:(unint64_t)a3;
- (void)_createOrRemoveFaux3DRingsIfNecessary;
- (void)_pausePulse;
- (void)_removePulse;
- (void)_resetInnerPulseFrame;
- (void)_resetLayerToMatchAccuracyRing;
- (void)_resumePulse;
- (void)_setAccuracyRingStrokeOpacityThreshold:(double)a3;
- (void)_setAnimatingToCoordinate:(BOOL)a3;
- (void)_setDisplaysPuckAsAccuracy:(BOOL)a3;
- (void)_setForceHeadingUp:(BOOL)a3;
- (void)_setMapDisplayStyle:(id)a3;
- (void)_setMapPitchRadians:(double)a3;
- (void)_setMapRotationRadians:(double)a3;
- (void)_setMapType:(unint64_t)a3;
- (void)_setPresentationCoordinate:(CLLocationCoordinate2D)a3;
- (void)_setPresentationCourse:(double)a3;
- (void)_setShouldHidePuckWhenAccuracyVisible:(BOOL)a3;
- (void)_setShouldShowDynamicLocationAnimations:(BOOL)a3;
- (void)_setTracking:(BOOL)a3;
- (void)_setVKNavigationPuckMarker:(id)a3;
- (void)_setupLayers;
- (void)_updateAccuracyAnimation;
- (void)_updateAccuracyColors;
- (void)_updateAccuracyOpacityForRadius:(double)a3 duration:(double)a4;
- (void)_updateBaseImage;
- (void)_updateFaux3DColors;
- (void)_updateFaux3DLayers;
- (void)_updateFromMap;
- (void)_updateGlyphImage;
- (void)_updateHeadingIndicators;
- (void)_updateHeadingLayerForStyleChange:(BOOL)a3;
- (void)_updateInnerCourseRotation;
- (void)_updateInnerImage;
- (void)_updateInnerMaskLayer;
- (void)_updateLayers;
- (void)_updateLegacyConfiguration;
- (void)_updatePuckVisibilityForRadius:(double)a3 previousRadius:(double)a4 duration:(double)a5;
- (void)_updatePulse;
- (void)_updatePulseAnimation;
- (void)_updatePulseColor;
- (void)_updateShadowImage;
- (void)_updateShowHeadingLayer:(BOOL)a3 animatedIfPossible:(BOOL)a4;
- (void)_updateShowHeadingLayerAnimatedIfPossible:(BOOL)a3;
- (void)_updateToReflectLocationAccuracyWithDuration:(double)a3 allowShowHideAnimation:(BOOL)a4;
- (void)dealloc;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)locationManagerFailedToUpdateLocation;
- (void)setAccuracyRingAlpha:(double)a3;
- (void)setAllowsAccuracyRing:(BOOL)a3;
- (void)setAllowsPulse:(BOOL)a3;
- (void)setAlpha:(double)a3;
- (void)setAnimatingPresentationAccuracy:(BOOL)a3;
- (void)setAnimatingToCoordinate:(BOOL)a3;
- (void)setCollisionMode:(int64_t)a3;
- (void)setDisplayPriority:(float)a3;
- (void)setEffectsEnabled:(BOOL)a3;
- (void)setForcesConeIndicator:(BOOL)a3;
- (void)setGlyphImage:(id)a3;
- (void)setGlyphTintColor:(id)a3;
- (void)setHeading:(double)a3;
- (void)setHeadingAccuracy:(double)a3;
- (void)setHeadingIndicatorStyle:(int64_t)a3;
- (void)setInnerImageMask:(id)a3;
- (void)setLocationAccuracy:(double)a3 duration:(double)a4;
- (void)setMaxRadiusToShowAccuracyRing:(double)a3;
- (void)setOpacity:(float)a3;
- (void)setPresentationAccuracy:(double)a3;
- (void)setPresentationCoordinate:(id)a3;
- (void)setPuckScale:(double)a3;
- (void)setRotateInnerImageToMatchCourse:(BOOL)a3;
- (void)setSelected:(BOOL)a3 animated:(BOOL)a4;
- (void)setShouldDisplayHeading:(BOOL)a3;
- (void)setShouldDisplayInaccurateHeading:(BOOL)a3;
- (void)setShouldInnerPulse:(BOOL)a3;
- (void)setShouldShowOuterRing:(BOOL)a3;
- (void)setStale:(BOOL)a3;
- (void)tintColorDidChange;
- (void)traitEnvironment:(id)a3 didChangeTraitCollection:(id)a4;
- (void)updateStateFromLocation:(id)a3 duration:(double)a4;
@end

@implementation _MKPuckAnnotationView

+ (CGPoint)_calloutOffset
{
  [a1 shadowBlur];
  v3 = v2;
  v4 = 0.0;
  result.y = v3;
  result.x = v4;
  return result;
}

- (double)_locationAccuracyInScreenPoints
{
  if (self->_animatingPresentationAccuracy)
  {
    presentationAccuracy = self->_presentationAccuracy;
LABEL_4:
    [(MKAnnotationView *)self _pointsForDistance:1.0];
    locationAccuracy = presentationAccuracy / v5;
    goto LABEL_6;
  }

  [(MKAnnotationView *)self _pointsForDistance:self->_locationAccuracy];
  presentationAccuracy = v4;
  if (self->_animatingPresentationAccuracy)
  {
    goto LABEL_4;
  }

  locationAccuracy = self->_locationAccuracy;
LABEL_6:
  [objc_opt_class() baseDiameter];
  if (presentationAccuracy <= v7 * 0.5)
  {
    [objc_opt_class() baseDiameter];
    presentationAccuracy = v8 * 0.5;
  }

  if (presentationAccuracy >= self->_minimumAccuracyRadius && locationAccuracy >= self->_minimumAccuracyUncertainty)
  {
    return presentationAccuracy;
  }

  accuracyLayer = self->_accuracyLayer;

  [(_MKPuckAccuracyLayer *)accuracyLayer minimumRadius];
  return result;
}

- (void)_updateLegacyConfiguration
{
  if (_MKModernPuckDesignEnabled_onceToken != -1)
  {
    dispatch_once(&_MKModernPuckDesignEnabled_onceToken, &__block_literal_global_25_27148);
  }

  v3 = _MKModernPuckDesignEnabled_linkedOnOrAfterGoldenAzulHunterArcher & _MKModernPuckDesignEnabled_newPuckEnabled ^ 1;
  self->_allowsPulse = v3;
  [(_MKPuckAnnotationView *)self setHeadingIndicatorStyle:v3 & 1];
  accuracyLayer = self->_accuracyLayer;

  [(_MKPuckAccuracyLayer *)accuracyLayer updateLegacyConfiguration];
}

- (void)_setupLayers
{
  v85[5] = *MEMORY[0x1E69E9840];
  [objc_opt_class() baseDiameter];
  v4 = v3;
  [objc_opt_class() shadowBlur];
  v6 = v4 + v5 * 2.0;
  [objc_opt_class() shadowBlur];
  v8 = v4 + v7 * 2.0 + 2.0;
  v9 = [(_MKPuckAnnotationView *)self traitCollection];
  self->_useDarkAppearance = [v9 userInterfaceStyle] == 2;

  [(MKAnnotationView *)self setBounds:0.0, 0.0, v6, v8];
  v10 = [MEMORY[0x1E6979398] layer];
  accuracyContainerLayer = self->_accuracyContainerLayer;
  self->_accuracyContainerLayer = v10;

  [(CALayer *)self->_accuracyContainerLayer setBounds:0.0, 0.0, 0.0, 0.0];
  [(_MKPuckAnnotationView *)self bounds];
  MidX = CGRectGetMidX(v86);
  [(_MKPuckAnnotationView *)self bounds];
  [(CALayer *)self->_accuracyContainerLayer setPosition:MidX, CGRectGetMidY(v87)];
  [(CALayer *)self->_accuracyContainerLayer setAllowsGroupBlending:0];
  [(CALayer *)self->_accuracyContainerLayer setAllowsGroupOpacity:0];
  v13 = [(_MKPuckAnnotationView *)self layer];
  [v13 addSublayer:self->_accuracyContainerLayer];

  v14 = +[_MKPuckAccuracyLayer layer];
  accuracyLayer = self->_accuracyLayer;
  self->_accuracyLayer = v14;

  [(_MKPuckAccuracyLayer *)self->_accuracyLayer setFaux3DEnabled:self->_faux3DEnabled];
  [objc_opt_class() baseDiameter];
  v17 = v16 * 0.5;
  [(_MKPuckAccuracyLayer *)self->_accuracyLayer setMinimumRadius:v16 * 0.5];
  v84[0] = @"bounds";
  v18 = [MEMORY[0x1E695DFB0] null];
  v85[0] = v18;
  v84[1] = @"position";
  v19 = [MEMORY[0x1E695DFB0] null];
  v85[1] = v19;
  v84[2] = @"cornerRadius";
  v20 = [MEMORY[0x1E695DFB0] null];
  v85[2] = v20;
  v84[3] = @"transform";
  v21 = [MEMORY[0x1E695DFB0] null];
  v85[3] = v21;
  v84[4] = @"hidden";
  v22 = [MEMORY[0x1E695DFB0] null];
  v85[4] = v22;
  v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v85 forKeys:v84 count:5];
  [(_MKPuckAccuracyLayer *)self->_accuracyLayer setActions:v23];

  [(_MKPuckAccuracyLayer *)self->_accuracyLayer setZPosition:-10000.0];
  v24 = [(_MKPuckAnnotationView *)self traitCollection];
  [(_MKPuckAccuracyLayer *)self->_accuracyLayer setTraitCollection:v24];

  [(CALayer *)self->_accuracyContainerLayer addSublayer:self->_accuracyLayer];
  v25 = [MEMORY[0x1E6979398] layer];
  puckContainerLayer = self->_puckContainerLayer;
  self->_puckContainerLayer = v25;

  [(CALayer *)self->_puckContainerLayer setBounds:0.0, 0.0, 0.0, 0.0];
  [(_MKPuckAnnotationView *)self bounds];
  v27 = CGRectGetMidX(v88);
  [(_MKPuckAnnotationView *)self bounds];
  [(CALayer *)self->_puckContainerLayer setPosition:v27, CGRectGetMidY(v89)];
  [(CALayer *)self->_puckContainerLayer _mapkit_setActionsToRemoveDefaultImplicitActions];
  v28 = [(_MKPuckAnnotationView *)self layer];
  [v28 addSublayer:self->_puckContainerLayer];

  v29 = [MEMORY[0x1E6979398] layer];
  puckLayer = self->_puckLayer;
  self->_puckLayer = v29;

  [(CALayer *)self->_puckLayer setBounds:0.0, 0.0, 0.0, 0.0];
  v31 = *MEMORY[0x1E695EFF8];
  v32 = *(MEMORY[0x1E695EFF8] + 8);
  [(CALayer *)self->_puckLayer setPosition:*MEMORY[0x1E695EFF8], v32];
  v82[0] = @"hidden";
  v33 = [MEMORY[0x1E695DFB0] null];
  v83[0] = v33;
  v82[1] = @"opacity";
  v34 = [MEMORY[0x1E695DFB0] null];
  v83[1] = v34;
  v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v83 forKeys:v82 count:2];
  [(CALayer *)self->_puckLayer setActions:v35];

  [(CALayer *)self->_puckLayer setAllowsGroupBlending:0];
  [(CALayer *)self->_puckLayer setAllowsGroupOpacity:0];
  [(CALayer *)self->_puckContainerLayer addSublayer:self->_puckLayer];
  v36 = [MEMORY[0x1E6979398] layer];
  headingContainerLayer = self->_headingContainerLayer;
  self->_headingContainerLayer = v36;

  [(CALayer *)self->_headingContainerLayer setBounds:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  [(CALayer *)self->_headingContainerLayer setPosition:v31, v32];
  [(CALayer *)self->_headingContainerLayer setActions:MEMORY[0x1E695E0F8]];
  [(CALayer *)self->_headingContainerLayer setAllowsGroupBlending:0];
  [(CALayer *)self->_headingContainerLayer setAllowsGroupOpacity:0];
  [(CALayer *)self->_headingContainerLayer setZPosition:-10001.0];
  v38 = [(_MKPuckAnnotationView *)self layer];
  [v38 insertSublayer:self->_headingContainerLayer below:self->_accuracyLayer];

  v39 = [MEMORY[0x1E6979398] layer];
  shadowLayer = self->_shadowLayer;
  self->_shadowLayer = v39;

  [(CALayer *)self->_shadowLayer setName:@"shadow"];
  [(CALayer *)self->_shadowLayer setBounds:0.0, 0.0, v6, v8];
  v80[0] = @"bounds";
  v41 = [MEMORY[0x1E695DFB0] null];
  v80[1] = @"opacity";
  v81[0] = v41;
  v42 = [MEMORY[0x1E695DFB0] null];
  v81[1] = v42;
  v43 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v81 forKeys:v80 count:2];
  [(CALayer *)self->_shadowLayer setActions:v43];

  LODWORD(v44) = 1050253722;
  if (!self->_useDarkAppearance)
  {
    *&v44 = 0.25;
  }

  [(CALayer *)self->_shadowLayer setOpacity:v44];
  [(CALayer *)self->_puckLayer addSublayer:self->_shadowLayer];
  v45 = [MEMORY[0x1E6979380] layer];
  faux3DFaceLayer = self->_faux3DFaceLayer;
  self->_faux3DFaceLayer = v45;

  [(CAGradientLayer *)self->_faux3DFaceLayer setName:@"faux3DFace"];
  [(CAGradientLayer *)self->_faux3DFaceLayer setStartPoint:0.0, 0.5];
  [(CAGradientLayer *)self->_faux3DFaceLayer setEndPoint:1.0, 0.5];
  [(CAGradientLayer *)self->_faux3DFaceLayer setBounds:0.0, 0.0, v4, 0.0];
  v78[0] = @"bounds";
  v47 = [MEMORY[0x1E695DFB0] null];
  v78[1] = @"transform";
  v79[0] = v47;
  v48 = [MEMORY[0x1E695DFB0] null];
  v79[1] = v48;
  v49 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v79 forKeys:v78 count:2];
  [(CAGradientLayer *)self->_faux3DFaceLayer setActions:v49];

  [(CALayer *)self->_puckLayer addSublayer:self->_faux3DFaceLayer];
  v50 = [MEMORY[0x1E6979380] layer];
  faux3DBaseBottomLayer = self->_faux3DBaseBottomLayer;
  self->_faux3DBaseBottomLayer = v50;

  [(CAGradientLayer *)self->_faux3DBaseBottomLayer setName:@"faux3DBaseBottom"];
  [(CAGradientLayer *)self->_faux3DBaseBottomLayer setStartPoint:0.0, 0.5];
  [(CAGradientLayer *)self->_faux3DBaseBottomLayer setEndPoint:1.0, 0.5];
  [(CAGradientLayer *)self->_faux3DBaseBottomLayer setBounds:0.0, 0.0, v4, v4];
  v76[0] = @"bounds";
  v52 = [MEMORY[0x1E695DFB0] null];
  v76[1] = @"cornerRadius";
  v77[0] = v52;
  v53 = [MEMORY[0x1E695DFB0] null];
  v77[1] = v53;
  v54 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v77 forKeys:v76 count:2];
  [(CAGradientLayer *)self->_faux3DBaseBottomLayer setActions:v54];

  [(CAGradientLayer *)self->_faux3DBaseBottomLayer setCornerRadius:v17];
  [(CALayer *)self->_puckLayer addSublayer:self->_faux3DBaseBottomLayer];
  v55 = [MEMORY[0x1E6979398] layer];
  baseLayer = self->_baseLayer;
  self->_baseLayer = v55;

  [(CALayer *)self->_baseLayer setName:@"base"];
  [(CALayer *)self->_baseLayer setBounds:0.0, 0.0, v4, v4];
  v74[0] = @"bounds";
  v57 = [MEMORY[0x1E695DFB0] null];
  v75[0] = v57;
  v74[1] = @"cornerRadius";
  v58 = [MEMORY[0x1E695DFB0] null];
  v75[1] = v58;
  v74[2] = @"transform";
  v59 = [MEMORY[0x1E695DFB0] null];
  v75[2] = v59;
  v60 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v75 forKeys:v74 count:3];
  [(CALayer *)self->_baseLayer setActions:v60];

  [(CALayer *)self->_puckLayer addSublayer:self->_baseLayer];
  [objc_opt_class() innerDiameter];
  v62 = v61;
  v63 = [MEMORY[0x1E6979398] layer];
  innerCircleLayer = self->_innerCircleLayer;
  self->_innerCircleLayer = v63;

  [(CALayer *)self->_innerCircleLayer setName:@"inner"];
  [(CALayer *)self->_innerCircleLayer setBounds:0.0, 0.0, v62, v62];
  v72[0] = @"bounds";
  v65 = [MEMORY[0x1E695DFB0] null];
  v73[0] = v65;
  v72[1] = @"cornerRadius";
  v66 = [MEMORY[0x1E695DFB0] null];
  v73[1] = v66;
  v72[2] = @"contents";
  v67 = [MEMORY[0x1E695DFB0] null];
  v73[2] = v67;
  v72[3] = @"backgroundColor";
  v68 = [MEMORY[0x1E695DFB0] null];
  v73[3] = v68;
  v72[4] = @"mask";
  v69 = [MEMORY[0x1E695DFB0] null];
  v73[4] = v69;
  v72[5] = @"transform";
  v70 = [MEMORY[0x1E695DFB0] null];
  v73[5] = v70;
  v71 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v73 forKeys:v72 count:6];
  [(CALayer *)self->_innerCircleLayer setActions:v71];

  [(CALayer *)self->_innerCircleLayer setPosition:v4 * 0.5, v4 * 0.5];
  [(CALayer *)self->_innerCircleLayer setAllowsEdgeAntialiasing:0];
  [(CALayer *)self->_baseLayer addSublayer:self->_innerCircleLayer];
  [(_MKPuckAnnotationView *)self _createOrRemoveFaux3DRingsIfNecessary];
  [(_MKPuckAnnotationView *)self _updateShadowImage];
  [(_MKPuckAnnotationView *)self _updateBaseImage];
  [(_MKPuckAnnotationView *)self _updateInnerMaskLayer];
  [(_MKPuckAnnotationView *)self _updateGlyphImage];
  [(_MKPuckAnnotationView *)self _updateAccuracyColors];
  [(_MKPuckAnnotationView *)self _updateFaux3DColors];
}

- (void)_createOrRemoveFaux3DRingsIfNecessary
{
  v29 = *MEMORY[0x1E69E9840];
  if (self->_faux3DEnabled && self->_displaysPuckAsAccuracy)
  {
    v3 = [MEMORY[0x1E6979398] layer];
    faux3DHighlightMask = self->_faux3DHighlightMask;
    self->_faux3DHighlightMask = v3;

    [(CAGradientLayer *)self->_faux3DFaceLayer bounds];
    [(CALayer *)self->_faux3DHighlightMask setFrame:?];
    [(CAGradientLayer *)self->_faux3DFaceLayer setMask:self->_faux3DHighlightMask];
    [objc_opt_class() baseDiameter];
    v6 = v5;
    [objc_opt_class() innerDiameter];
    v8 = (v6 - v7) * 0.5;
    v9 = vcvtpd_u64_f64(12.0 / v8);
    v10 = [MEMORY[0x1E695DF70] arrayWithCapacity:v9];
    if (v9)
    {
      v11 = *MEMORY[0x1E695EFF8];
      v12 = *(MEMORY[0x1E695EFF8] + 8);
      do
      {
        v13 = [MEMORY[0x1E6979398] layer];
        [v13 setBounds:{0.0, 0.0, v6, v6}];
        [v13 setAnchorPoint:{v11, v12}];
        [v13 setPosition:{v11, v12}];
        [v13 bounds];
        [v13 setCornerRadius:v14 * 0.5];
        [v13 setBorderWidth:v8];
        v15 = [MEMORY[0x1E69DC888] blackColor];
        [v13 setBorderColor:{objc_msgSend(v15, "CGColor")}];

        [v13 _mapkit_setActionsToRemoveDefaultImplicitActions];
        [v13 setHidden:1];
        [(NSArray *)v10 addObject:v13];
        [(CALayer *)self->_faux3DHighlightMask insertSublayer:v13 above:self->_shadowLayer];

        --v9;
      }

      while (v9);
    }

    faux3DHighlightMaskRings = self->_faux3DHighlightMaskRings;
    self->_faux3DHighlightMaskRings = v10;
  }

  else
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v17 = self->_faux3DHighlightMaskRings;
    v18 = [(NSArray *)v17 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v25;
      do
      {
        v21 = 0;
        do
        {
          if (*v25 != v20)
          {
            objc_enumerationMutation(v17);
          }

          [*(*(&v24 + 1) + 8 * v21++) removeFromSuperlayer];
        }

        while (v19 != v21);
        v19 = [(NSArray *)v17 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v19);
    }

    [(CAGradientLayer *)self->_faux3DFaceLayer setMask:0];
    v22 = self->_faux3DHighlightMask;
    self->_faux3DHighlightMask = 0;

    v23 = self->_faux3DHighlightMaskRings;
    self->_faux3DHighlightMaskRings = 0;
  }
}

- (void)_updateShadowImage
{
  [(UIView *)self _mapkit_currentScreenScale];
  v4 = fmax(v3, 1.0);
  [objc_opt_class() baseDiameter];
  v6 = v5;
  v7 = v5 * v4;
  v8 = 0.0;
  if ([(_MKPuckAnnotationView *)self shouldShowOuterRing])
  {
    [objc_opt_class() outerRingWidth];
    if (v9 > 0.0)
    {
      [objc_opt_class() outerRingWidth];
      v8 = v10;
    }
  }

  [objc_opt_class() shadowBlur];
  v12 = v6 + v11 * 2.0;
  [objc_opt_class() shadowBlur];
  v14 = v6 + v13 * 2.0 + 2.0;
  v15 = v4 * v12;
  v16 = v4 * v14;
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  AlignedBytesPerRow = CGBitmapGetAlignedBytesPerRow();
  v19 = CGBitmapContextCreate(0, v15, v16, 8uLL, AlignedBytesPerRow, DeviceRGB, 0x2002u);
  CGColorSpaceRelease(DeviceRGB);
  CGContextSaveGState(v19);
  v20 = round(v8 + v15 - v7) * 0.5;
  v21 = round(v8 + v16 - v7) * 0.5;
  v22 = v7 - v8;
  v23 = v21 - v16;
  [objc_opt_class() shadowBlur];
  v25 = v4 * v24;
  v26 = [MEMORY[0x1E69DC888] _mapkit_colorNamed:@"PuckShadowColor"];
  v27 = [v26 CGColor];
  v41.width = 0.0;
  v41.height = v16 - v4;
  CGContextSetShadowWithColor(v19, v41, v25, v27);

  if (self->_displaysPuckAsAccuracy)
  {
    [objc_opt_class() innerDiameter];
    v29 = (v7 - v4 * v28) * 0.5;
    v42.origin.x = v20;
    v42.origin.y = v23;
    v42.size.width = v22;
    v42.size.height = v22;
    v43 = CGRectInset(v42, v29 * 0.5, v29 * 0.5);
    x = v43.origin.x;
    y = v43.origin.y;
    width = v43.size.width;
    height = v43.size.height;
    CGContextSetLineWidth(v19, v29);
    CGContextSetRGBStrokeColor(v19, 1.0, 1.0, 1.0, 1.0);
    v44.origin.x = x;
    v44.origin.y = y;
    v44.size.width = width;
    v44.size.height = height;
    CGContextStrokeEllipseInRect(v19, v44);
  }

  else
  {
    CGContextSetRGBFillColor(v19, 1.0, 0.0, 0.0, 1.0);
    v45.origin.x = v20;
    v45.origin.y = v23;
    v45.size.width = v22;
    v45.size.height = v22;
    CGContextFillEllipseInRect(v19, v45);
  }

  CGContextRestoreGState(v19);
  Image = CGBitmapContextCreateImage(v19);
  [(CALayer *)self->_shadowLayer setContents:Image];
  CGImageRelease(Image);
  CGContextRelease(v19);
  [(MKAnnotationView *)self _mapPitchRadians];
  if (self->_useDarkAppearance)
  {
    v36 = 0.300000012;
  }

  else
  {
    v36 = 0.25;
  }

  v37 = 1.0 - cos(v35);
  v38 = v37 * 0.5 + (1.0 - v37) * v36;
  *&v38 = v38;
  shadowLayer = self->_shadowLayer;

  [(CALayer *)shadowLayer setOpacity:v38];
}

- (void)_updateBaseImage
{
  v33 = [MEMORY[0x1E69DD1B8] currentTraitCollection];
  v3 = [(_MKPuckAnnotationView *)self traitCollection];
  [MEMORY[0x1E69DD1B8] setCurrentTraitCollection:v3];

  [(UIView *)self _mapkit_currentScreenScale];
  v5 = fmax(v4, 1.0);
  [objc_opt_class() baseDiameter];
  v7 = v6 * v5;
  [objc_opt_class() innerDiameter];
  v9 = v5 * v8;
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  AlignedBytesPerRow = CGBitmapGetAlignedBytesPerRow();
  v12 = CGBitmapContextCreate(0, v7, v7, 8uLL, AlignedBytesPerRow, DeviceRGB, 0x2002u);
  CGColorSpaceRelease(DeviceRGB);
  CGContextSaveGState(v12);
  v13 = 0.0;
  if ([(_MKPuckAnnotationView *)self shouldShowOuterRing])
  {
    [objc_opt_class() outerRingWidth];
    if (v14 > 0.0)
    {
      [objc_opt_class() outerRingWidth];
      v13 = v15;
      if ([(_MKPuckAnnotationView *)self isStale])
      {
        [MEMORY[0x1E69DC888] colorWithDynamicProvider:&__block_literal_global_27243];
      }

      else
      {
        [(_MKPuckAnnotationView *)self _effectiveTintColor];
      }
      v16 = ;
      v17 = [v16 CGColor];

      CGContextSetFillColorWithColor(v12, v17);
      v35.origin.x = round(v7 - v7) * 0.5;
      v35.origin.y = v35.origin.x;
      v35.size.width = v7;
      v35.size.height = v7;
      CGContextFillEllipseInRect(v12, v35);
    }
  }

  v18 = _MKPuckAnnotationViewBaseColor([(MKAnnotationView *)self _mapType], self->_displaysPuckAsAccuracy);
  CGContextSaveGState(v12);
  v19 = round(v7 - v7 + v13) * 0.5;
  v20 = v7 - v13;
  v21 = [v18 CGColor];
  v22 = v7 - v9;
  if (self->_displaysPuckAsAccuracy)
  {
    v36.origin.x = v19;
    v36.origin.y = v19;
    v36.size.width = v20;
    v36.size.height = v20;
    v37 = CGRectInset(v36, v22 * 0.5 * 0.5, v22 * 0.5 * 0.5);
    x = v37.origin.x;
    y = v37.origin.y;
    width = v37.size.width;
    height = v37.size.height;
    CGContextSetLineWidth(v12, v22 * 0.5);
    CGContextSetStrokeColorWithColor(v12, v21);
    v38.origin.x = x;
    v38.origin.y = y;
    v38.size.width = width;
    v38.size.height = height;
    CGContextStrokeEllipseInRect(v12, v38);
  }

  else
  {
    CGContextSetFillColorWithColor(v12, v21);
    v39.origin.x = v19;
    v39.origin.y = v19;
    v39.size.width = v20;
    v39.size.height = v20;
    CGContextFillEllipseInRect(v12, v39);
  }

  CGContextRestoreGState(v12);
  if (self->_displaysPuckAsAccuracy)
  {
    v40.origin.x = v19;
    v40.origin.y = v19;
    v40.size.width = v20;
    v40.size.height = v20;
    v41 = CGRectInset(v40, v22 * 0.5, v22 * 0.5);
    v27 = v41.origin.x;
    v28 = v41.origin.y;
    v29 = v41.size.width;
    v30 = v41.size.height;
    CGContextSaveGState(v12);
    v31 = [(_MKPuckAnnotationView *)self _currentInnerColor];
    CGContextSetFillColorWithColor(v12, [v31 CGColor]);

    v42.origin.x = v27;
    v42.origin.y = v28;
    v42.size.width = v29;
    v42.size.height = v30;
    CGContextFillEllipseInRect(v12, v42);
    CGContextRestoreGState(v12);
  }

  Image = CGBitmapContextCreateImage(v12);
  [(CALayer *)self->_baseLayer setContents:Image];
  CGImageRelease(Image);
  CGContextRelease(v12);
  [MEMORY[0x1E69DD1B8] setCurrentTraitCollection:v33];
}

- (void)_updateInnerMaskLayer
{
  if (self->_innerImageMask)
  {
    v3 = [MEMORY[0x1E6979398] layer];
    [v3 setContents:{-[UIImage CGImage](self->_innerImageMask, "CGImage")}];
    [(UIImage *)self->_innerImageMask size];
    v5 = v4;
    [(UIImage *)self->_innerImageMask size];
    [v3 setBounds:{0.0, 0.0, v5, v6}];
    [(CALayer *)self->_innerCircleLayer bounds];
    MidX = CGRectGetMidX(v9);
    [(CALayer *)self->_innerCircleLayer bounds];
    [v3 setPosition:{MidX, CGRectGetMidY(v10)}];
    [(CALayer *)self->_innerCircleLayer setMask:v3];
  }

  else
  {
    [(CALayer *)self->_innerCircleLayer setMask:0];
  }

  [(_MKPuckAnnotationView *)self _updateInnerImage];
}

- (void)_updateInnerImage
{
  v26 = [MEMORY[0x1E69DD1B8] currentTraitCollection];
  v3 = [(_MKPuckAnnotationView *)self traitCollection];
  [MEMORY[0x1E69DD1B8] setCurrentTraitCollection:v3];

  v4 = [(_MKPuckAnnotationView *)self _currentInnerColor];
  v5 = [v4 CGColor];

  if (self->_innerImageMask)
  {
    [(CALayer *)self->_innerCircleLayer setContents:0];
    [(CALayer *)self->_innerCircleLayer setBackgroundColor:v5];
  }

  else
  {
    v6 = [MEMORY[0x1E69DD250] _mapkit_shouldAdoptImplicitAnimationParameters];
    v7 = [(CALayer *)self->_innerCircleLayer contents];
    v8 = CGImageRetain(v7);

    [(UIView *)self _mapkit_currentScreenScale];
    v10 = fmax(v9, 1.0);
    [objc_opt_class() innerDiameter];
    v12 = v11 * v10;
    v13 = v10 * (v11 * 10.0);
    DeviceRGB = CGColorSpaceCreateDeviceRGB();
    AlignedBytesPerRow = CGBitmapGetAlignedBytesPerRow();
    v16 = CGBitmapContextCreate(0, v13, v12, 8uLL, AlignedBytesPerRow, DeviceRGB, 0x2002u);
    CGColorSpaceRelease(DeviceRGB);
    CGContextSaveGState(v16);
    if (!self->_displaysPuckAsAccuracy)
    {
      v17 = v12 * 0.5;
      for (i = 1; i != 11; ++i)
      {
        CGContextSaveGState(v16);
        v19 = v17 * (i / 10.0 * 0.1875 + 0.8125);
        v20 = v17 + (i - 1) * v12 - v19;
        v21 = v17 - v19;
        v22 = v19 + v19;
        CGContextSetFillColorWithColor(v16, v5);
        v28.origin.x = v20;
        v28.origin.y = v21;
        v28.size.width = v22;
        v28.size.height = v22;
        CGContextFillEllipseInRect(v16, v28);
        CGContextRestoreGState(v16);
      }
    }

    CGContextRestoreGState(v16);
    Image = CGBitmapContextCreateImage(v16);
    [(CALayer *)self->_innerCircleLayer setContents:Image];
    [(CALayer *)self->_innerCircleLayer setBackgroundColor:0];
    CGContextRelease(v16);
    [(_MKPuckAnnotationView *)self _resetInnerPulseFrame];
    if (v6)
    {
      v24 = [MEMORY[0x1E6979318] animationWithKeyPath:@"contents"];
      [v24 setFromValue:v8];
      [v24 setToValue:Image];
      [MEMORY[0x1E69DD250] _currentAnimationDuration];
      [v24 setDuration:?];
      v25 = [MEMORY[0x1E69DD250] _mapkit_currentAnimationTimingFunction];
      [v24 setTimingFunction:v25];

      [v24 setRemovedOnCompletion:1];
      [(CALayer *)self->_innerCircleLayer addAnimation:v24 forKey:@"image"];
    }

    CGImageRelease(v8);
    CGImageRelease(Image);
    [MEMORY[0x1E69DD1B8] setCurrentTraitCollection:v26];
  }
}

- (id)_currentInnerColor
{
  if ([(_MKPuckAnnotationView *)self isStale])
  {
    [MEMORY[0x1E69DC888] colorWithDynamicProvider:&__block_literal_global_27243];
  }

  else
  {
    [(_MKPuckAnnotationView *)self _effectiveTintColor];
  }
  v3 = ;
  if (self->_displaysPuckAsAccuracy)
  {
    if ([(_MKPuckAnnotationView *)self isStale])
    {
      v4 = 0.449999988;
    }

    else
    {
      v5 = [(MKAnnotationView *)self _mapType];
      if (v5 - 1 < 4 || v5 == 107)
      {
        v4 = 0.400000006;
      }

      else
      {
        v4 = 0.300000012;
      }
    }

    v6 = [v3 colorWithAlphaComponent:v4];

    v3 = v6;
  }

  return v3;
}

- (id)_effectiveTintColor
{
  v2 = [(_MKPuckAnnotationView *)self tintColor];
  if ([v2 _mapkit_isWhite])
  {
    v3 = [MEMORY[0x1E69DC888] systemBlueColor];

    v2 = v3;
  }

  return v2;
}

- (void)_resetInnerPulseFrame
{
  if (self->_shouldInnerPulse)
  {
    v3 = 0.500000007;
  }

  else
  {
    v3 = [(_MKPuckAnnotationView *)self _innerPulseFrameWhenDisabled:10]* 0.100000001;
  }

  innerCircleLayer = self->_innerCircleLayer;

  [(CALayer *)innerCircleLayer setContentsRect:v3, 0.0, 0.100000001, 1.0];
}

- (void)_updateGlyphImage
{
  if (self->_glyphImage)
  {
    if (self->_innerCircleLayer)
    {
      if (!self->_glyphLayer)
      {
        v3 = [MEMORY[0x1E6979398] layer];
        glyphLayer = self->_glyphLayer;
        self->_glyphLayer = v3;

        [(CALayer *)self->_glyphLayer _mapkit_setActionsToRemoveDefaultImplicitActions];
        [(CALayer *)self->_glyphLayer setContentsGravity:*MEMORY[0x1E6979DE8]];
        [(CALayer *)self->_innerCircleLayer addSublayer:self->_glyphLayer];
      }

      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __42___MKPuckAnnotationView__updateGlyphImage__block_invoke;
      v8[3] = &unk_1E76CDB38;
      v8[4] = self;
      v5 = MEMORY[0x1A58E9F30](v8, a2);
      v6 = [(_MKPuckAnnotationView *)self traitCollection];
      [v6 performAsCurrentTraitCollection:v5];
    }
  }

  else
  {
    [(CALayer *)self->_glyphLayer removeFromSuperlayer];
    v7 = self->_glyphLayer;
    self->_glyphLayer = 0;
  }
}

- (void)_updateAccuracyColors
{
  v3 = [(_MKPuckAnnotationView *)self _effectiveTintColor];
  [(_MKPuckAccuracyLayer *)self->_accuracyLayer setTintColor:v3];
}

- (void)_updateFaux3DColors
{
  v9[3] = *MEMORY[0x1E69E9840];
  if (self->_faux3DEnabled)
  {
    v3 = [MEMORY[0x1E69DD1B8] currentTraitCollection];
    v4 = [(_MKPuckAnnotationView *)self traitCollection];
    [MEMORY[0x1E69DD1B8] setCurrentTraitCollection:v4];

    v5 = [MEMORY[0x1E69DC888] _mapkit_colorNamed:@"PuckFaux3DFaceHighlight"];
    v6 = [MEMORY[0x1E69DC888] _mapkit_colorNamed:@"PuckFaux3DFaceDark"];
    v7 = [v5 _mapkit_blendedColorWithFraction:v6 ofColor:0.200000003];
    v9[0] = [v7 CGColor];
    v9[1] = [v5 CGColor];
    v9[2] = [v6 CGColor];
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:3];
    [(CAGradientLayer *)self->_faux3DFaceLayer setColors:v8];
    [(CAGradientLayer *)self->_faux3DFaceLayer setLocations:&unk_1F16121F8];
    [(CAGradientLayer *)self->_faux3DBaseBottomLayer setColors:v8];
    [(CAGradientLayer *)self->_faux3DBaseBottomLayer setLocations:&unk_1F16121F8];
    [MEMORY[0x1E69DD1B8] setCurrentTraitCollection:v3];
  }
}

- (void)_updatePulseAnimation
{
  if (self->_shouldInnerPulse && self->_shouldShowDynamicLocationAnimations)
  {
    v3 = [(CALayer *)self->_innerCircleLayer animationForKey:@"pulse"];

    if (!v3)
    {
      v26 = [(_MKPuckAnnotationView *)self _innerPulseAnimation];
      v5 = [(CALayer *)self->_pulseLayer animationForKey:@"outerPulse"];

      if (v5)
      {
        v6 = [(CALayer *)self->_pulseLayer animationForKey:@"outerPulse"];
        v7 = [v6 copy];

        pulseLayer = self->_pulseLayer;
        innerCircleLayer = self->_innerCircleLayer;
        v10 = v7;
        v11 = pulseLayer;
        v12 = v26;
        if (v12)
        {
          v13 = innerCircleLayer;
          v14 = [v12 autoreverses];
          [v12 duration];
          if (v14)
          {
            v16 = v15 + v15;
          }

          else
          {
            v16 = v15;
          }

          [(CALayer *)v13 convertTime:0 fromLayer:CACurrentMediaTime()];
          v18 = v17;
          [v12 beginTime];
          v20 = v19;
          [v12 timeOffset];
          v22 = fmod(v18 - (v20 + v21), v16);
          [v12 beginTime];
          [(CALayer *)v13 convertTime:v11 toLayer:?];
          v24 = v23;

          [v10 duration];
          [v10 setBeginTime:{fmod(v24, v25)}];
          [v10 setTimeOffset:v16 - v22];
          [v10 setDuration:v16];
        }

        [(CALayer *)self->_pulseLayer addAnimation:v10 forKey:@"outerPulse"];
      }

      [(CALayer *)self->_innerCircleLayer addAnimation:v26 forKey:@"pulse"];
    }
  }

  else
  {
    v4 = self->_innerCircleLayer;

    [(CALayer *)v4 removeAnimationForKey:@"pulse"];
  }
}

- (id)_innerPulseAnimation
{
  v2 = [MEMORY[0x1E6979390] animationWithKeyPath:@"contentsRect"];
  v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:10];
  for (i = 0; i != 10; ++i)
  {
    v5 = [MEMORY[0x1E696B098] valueWithCGRect:{i * 0.100000001, 0.0, 0.100000001, 1.0}];
    [v3 addObject:v5];
  }

  [v2 setValues:v3];
  [v2 setCalculationMode:*MEMORY[0x1E69795A0]];
  [v2 setDuration:1.5];
  [v2 setAutoreverses:1];
  LODWORD(v6) = 2139095040;
  [v2 setRepeatCount:v6];
  v7 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979EA0]];
  [v2 setTimingFunction:v7];

  [v2 setRemovedOnCompletion:0];
  [v2 setFillMode:*MEMORY[0x1E69797E0]];
  [v2 setFrameInterval:0.0250000004];

  return v2;
}

- (void)layoutSubviews
{
  v6.receiver = self;
  v6.super_class = _MKPuckAnnotationView;
  [(MKAnnotationView *)&v6 layoutSubviews];
  [(_MKPuckAnnotationView *)self bounds];
  MidX = CGRectGetMidX(v7);
  [(_MKPuckAnnotationView *)self bounds];
  [(CALayer *)self->_accuracyContainerLayer setPosition:MidX, CGRectGetMidY(v8)];
  [(_MKPuckAnnotationView *)self bounds];
  v4 = CGRectGetMidX(v9);
  [(_MKPuckAnnotationView *)self bounds];
  [(CALayer *)self->_puckContainerLayer setPosition:v4, CGRectGetMidY(v10)];
  [(_MKPuckAnnotationView *)self bounds];
  v5 = CGRectGetMidX(v11);
  [(_MKPuckAnnotationView *)self bounds];
  [(CALayer *)self->_headingContainerLayer setPosition:v5, CGRectGetMidY(v12)];
}

- (void)_updateHeadingIndicators
{
  v2 = 0.0;
  if (!self->_forceHeadingUp)
  {
    v2 = self->_heading - self->_mapRotation;
  }

  [(MKUserLocationHeadingIndicator *)self->_headingLayer updateHeading:v2];
}

- (void)_updateInnerCourseRotation
{
  v3 = *(MEMORY[0x1E69792E8] + 64);
  v4 = *(MEMORY[0x1E69792E8] + 80);
  *&v23.m31 = v3;
  *&v23.m33 = v4;
  v5 = *(MEMORY[0x1E69792E8] + 96);
  v6 = *(MEMORY[0x1E69792E8] + 112);
  *&v23.m41 = v5;
  *&v23.m43 = v6;
  v7 = *MEMORY[0x1E69792E8];
  v8 = *(MEMORY[0x1E69792E8] + 16);
  *&v23.m11 = *MEMORY[0x1E69792E8];
  *&v23.m13 = v8;
  v9 = *(MEMORY[0x1E69792E8] + 32);
  v10 = *(MEMORY[0x1E69792E8] + 48);
  *&v23.m21 = v9;
  *&v23.m23 = v10;
  if (self->_rotateInnerImageToMatchCourse)
  {
    v14 = v3;
    v15 = v4;
    v16 = v5;
    v17 = v6;
    v18 = v7;
    v19 = v8;
    v20 = v9;
    v21 = v10;
    [(MKAnnotationView *)self _presentationCourse];
    v12 = v11;
    [(MKAnnotationView *)self _mapRotationRadians];
    *&v22.m31 = v14;
    *&v22.m33 = v15;
    *&v22.m41 = v16;
    *&v22.m43 = v17;
    *&v22.m11 = v18;
    *&v22.m13 = v19;
    *&v22.m21 = v20;
    *&v22.m23 = v21;
    CATransform3DRotate(&v23, &v22, -(v13 - v12 * 0.0174532925), 0.0, 0.0, 1.0);
  }

  v22 = v23;
  [(CALayer *)self->_innerCircleLayer setTransform:&v22];
}

- (void)_updateFromMap
{
  v3 = [(MKAnnotationView *)self _mapView];
  v4 = [v3 _mapLayer];
  [v4 altitude];
  v6 = v5;
  v7 = [(MKAnnotationView *)self _mapView];
  v8 = [v7 _mapLayer];
  [v8 pitch];
  v10 = v6 / cos(v9 * 0.0174532925);

  if (vabdd_f64(v10, self->_mapCameraDistance) >= 0.00000011920929)
  {
    self->_mapCameraDistance = v10;
    [(_MKPuckAccuracyLayer *)self->_accuracyLayer setMapCameraDistance:v10];
    if (self->_faux3DEnabled)
    {
      [(MKAnnotationView *)self _mapPitchRadians];
      if (v11 > 0.0)
      {
        [(_MKPuckAnnotationView *)self _updateFaux3DLayers];
      }
    }
  }

  v12 = [(_MKPuckAnnotationView *)self window];
  [(_MKPuckAnnotationView *)self _updateToReflectLocationAccuracyWithDuration:v12 != 0 allowShowHideAnimation:0.0];
}

- (void)_updateLayers
{
  isShowingStaleColor = self->_isShowingStaleColor;
  if (isShowingStaleColor != [(_MKPuckAnnotationView *)self isStale])
  {
    self->_isShowingStaleColor = [(_MKPuckAnnotationView *)self isStale];
    [(_MKPuckAnnotationView *)self _updateInnerImage];

    [(_MKPuckAnnotationView *)self _updateGlyphImage];
  }
}

- (void)_updatePulse
{
  if (self->_shouldPulse && self->_allowsPulse)
  {
    if ([(_MKPuckAnnotationView *)self isEffectsEnabled])
    {

      [(_MKPuckAnnotationView *)self _resumePulse];
    }

    else
    {

      [(_MKPuckAnnotationView *)self _pausePulse];
    }
  }

  else
  {

    [(_MKPuckAnnotationView *)self _removePulse];
  }
}

- (void)_removePulse
{
  v3 = [(CALayer *)self->_pulseLayer superlayer];

  if (v3)
  {
    v4 = [(_MKPuckAnnotationView *)self _hideLargeAccuracyRing];
    pulseLayer = self->_pulseLayer;
    if (v4)
    {
      v6 = [(CALayer *)pulseLayer animationForKey:@"fadePulse"];
      if (!v6)
      {
        v7 = [(CALayer *)self->_pulseLayer animationForKey:@"outerPulse"];
        if (v7)
        {
          v8 = CACurrentMediaTime();
          [v7 beginTime];
          v10 = v8 - v9;
          [v7 timeOffset];
          v12 = v10 + v11;
          [v7 duration];
          v14 = fmod(v12, v13);
          v6 = [(_MKPuckAnnotationView *)self _pulseAnimation];
          [v6 setRepeatCount:0.0];
          [v6 setRemovedOnCompletion:1];
          [v6 setBeginTime:-v14];
          [v6 setBeginTimeMode:*MEMORY[0x1E69795C0]];
          [(CALayer *)self->_pulseLayer removeAnimationForKey:@"outerPulse"];
          v15 = self->_pulseLayer;
          v17[0] = MEMORY[0x1E69E9820];
          v17[1] = 3221225472;
          v17[2] = __37___MKPuckAnnotationView__removePulse__block_invoke;
          v17[3] = &unk_1E76CA670;
          v17[4] = self;
          [(CALayer *)v15 _mapkit_addAnimation:v6 forKey:@"fadePulse" completion:v17];
        }

        else
        {
          [(CALayer *)self->_pulseLayer removeFromSuperlayer];
          v6 = 0;
        }
      }
    }

    else
    {
      [(CALayer *)pulseLayer removeAnimationForKey:@"outerPulse"];
      v16 = self->_pulseLayer;

      [(CALayer *)v16 removeFromSuperlayer];
    }
  }
}

- (int64_t)_enforcedHeadingIndicatorStyle
{
  if ([(_MKPuckAnnotationView *)self forcesConeIndicator])
  {
    return 0;
  }

  else
  {
    return self->_headingIndicatorStyle;
  }
}

- (UIEdgeInsets)_defaultCollisionAlignmentRectInsets
{
  [objc_opt_class() shadowBlur];
  v3 = v2 + 1.0;
  [objc_opt_class() shadowBlur];
  v5 = v4;
  [objc_opt_class() shadowBlur];
  v7 = v6 + 1.0;
  [objc_opt_class() shadowBlur];
  v9 = v8;
  v10 = v3;
  v11 = v5;
  v12 = v7;
  result.right = v9;
  result.bottom = v12;
  result.left = v11;
  result.top = v10;
  return result;
}

- (UIEdgeInsets)_annotationTrackingInsets
{
  if (_MKModernPuckDesignEnabled_onceToken != -1)
  {
    dispatch_once(&_MKModernPuckDesignEnabled_onceToken, &__block_literal_global_25_27148);
  }

  if (_MKModernPuckDesignEnabled_linkedOnOrAfterGoldenAzulHunterArcher == 1 && (_MKModernPuckDesignEnabled_newPuckEnabled & 1) != 0)
  {
    v3 = [(MKAnnotationView *)self _annotationContainer];
    v4 = [(MKAnnotationView *)self _annotationContainer];
    [v3 _visibleCenteringRectInView:v4];
    v6 = v5;
    v8 = v7;

    v9 = [(_MKPuckAnnotationView *)self shouldDisplayHeading];
    v10 = 0.100000001;
    if (v9)
    {
      v10 = 0.200000003;
    }

    if (v6 >= v8)
    {
      v11 = v8;
    }

    else
    {
      v11 = v6;
    }

    v12 = fmin(v11 * v10, 64.0);
    v13 = v12;
    v14 = v12;
    v15 = v12;
  }

  else
  {
    v12 = *MEMORY[0x1E69DDCE0];
    v13 = *(MEMORY[0x1E69DDCE0] + 8);
    v14 = *(MEMORY[0x1E69DDCE0] + 16);
    v15 = *(MEMORY[0x1E69DDCE0] + 24);
  }

  result.right = v15;
  result.bottom = v14;
  result.left = v13;
  result.top = v12;
  return result;
}

- (BOOL)_shouldShowAccuracyRing
{
  if (![(_MKPuckAnnotationView *)self _hideLargeAccuracyRing])
  {
    return 1;
  }

  [(_MKPuckAnnotationView *)self _locationAccuracyInScreenPoints];
  return v3 < self->_maxRadiusToShowAccuracyRing;
}

- (void)locationManagerFailedToUpdateLocation
{
  [(_MKPuckAnnotationView *)self setStale:[(_MKPuckAnnotationView *)self _isLocationStale:0]];
  [(_MKPuckAnnotationView *)self _updateShowHeadingLayer];
  [(_MKPuckAnnotationView *)self _updateLayers];
  self->_shouldPulse = [(_MKPuckAnnotationView *)self _shouldPulseForLocation:self->_lastLocation];

  [(_MKPuckAnnotationView *)self _updatePulse];
}

- (void)_updateFaux3DLayers
{
  v64 = *MEMORY[0x1E69E9840];
  faux3DEnabled = self->_faux3DEnabled;
  faux3DFaceLayer = self->_faux3DFaceLayer;
  if (faux3DEnabled)
  {
    if ([(CAGradientLayer *)faux3DFaceLayer isHidden])
    {
      [(CAGradientLayer *)self->_faux3DFaceLayer setHidden:0];
    }

    [(CAGradientLayer *)self->_faux3DBaseBottomLayer setHidden:self->_displaysPuckAsAccuracy];
    [(MKAnnotationView *)self _mapPitchRadians];
    v6 = v5;
    mapCameraDistance = self->_mapCameraDistance;
    v8 = 1.0 - cos(v5);
    v9 = 23000.0;
    if (mapCameraDistance <= 23000.0)
    {
      v9 = mapCameraDistance;
    }

    v10 = fmax(v9, 1440.0);
    v11 = ((v10 + -1440.0) / -21560.0 + 1.0) * 12.0 + (1.0 - ((v10 + -1440.0) / -21560.0 + 1.0)) * 0.0;
    CATransform3DMakeTranslation(&v61, 0.0, -(v8 * v11), 0.0);
    baseLayer = self->_baseLayer;
    v62 = v61;
    [(CALayer *)baseLayer setTransform:&v62];
    v13 = self->_baseLayer;
    if (v13)
    {
      [(CALayer *)v13 transform];
    }

    else
    {
      memset(&v60, 0, sizeof(v60));
    }

    v16 = v8 * v11;
    puckTransitionLayer = self->_puckTransitionLayer;
    v62 = v60;
    [(CALayer *)puckTransitionLayer setTransform:&v62];
    CATransform3DMakeTranslation(&v59, 0.0, v8 + v8, 0.0);
    shadowLayer = self->_shadowLayer;
    v62 = v59;
    [(CALayer *)shadowLayer setTransform:&v62];
    v19 = 0.300000012;
    if (!self->_useDarkAppearance)
    {
      v19 = 0.25;
    }

    v20 = v8 * 0.5 + (1.0 - v8) * v19;
    *&v20 = v20;
    [(CALayer *)self->_shadowLayer setOpacity:v20];
    if (self->_displaysPuckAsAccuracy)
    {
      [(CALayer *)self->_baseLayer frame];
      v22 = v21;
      v24 = v23;
    }

    else
    {
      [(CAGradientLayer *)self->_faux3DFaceLayer bounds];
      v22 = v25 * -0.5;
      v24 = -1.0 - v16;
      [(CAGradientLayer *)self->_faux3DFaceLayer bounds];
    }

    [(CAGradientLayer *)self->_faux3DFaceLayer setFrame:v22, v24];
    if (fabs(v6) >= 0.000001)
    {
      if (self->_displaysPuckAsAccuracy)
      {
        v26 = [(NSArray *)self->_faux3DHighlightMaskRings objectAtIndexedSubscript:0];
        [v26 borderWidth];
        v28 = v27;

        [(CAGradientLayer *)self->_faux3DFaceLayer bounds];
        v30 = v29;
        v31 = [(NSArray *)self->_faux3DHighlightMaskRings firstObject];
        [v31 bounds];
        v33 = v32;

        v57 = 0u;
        v58 = 0u;
        v55 = 0u;
        v56 = 0u;
        v34 = self->_faux3DHighlightMaskRings;
        v35 = [(NSArray *)v34 countByEnumeratingWithState:&v55 objects:v63 count:16];
        if (v35)
        {
          v36 = v35;
          v37 = 0;
          v38 = v30 - v33;
          v39 = v38 - v16 + v28 * -0.5;
          v40 = *v56;
          do
          {
            for (i = 0; i != v36; ++i)
            {
              if (*v56 != v40)
              {
                objc_enumerationMutation(v34);
              }

              v42 = *(*(&v55 + 1) + 8 * i);
              v39 = v28 + v39;
              if (v39 >= v38)
              {
                if (v37)
                {
                  v37 = 1;
                  [*(*(&v55 + 1) + 8 * i) setHidden:1];
                }

                else
                {
                  [*(*(&v55 + 1) + 8 * i) setHidden:0];
                  CATransform3DMakeTranslation(&v54, 0.0, v38, 0.0);
                  v62 = v54;
                  [v42 setTransform:&v62];
                  v37 = 1;
                }
              }

              else
              {
                [*(*(&v55 + 1) + 8 * i) setHidden:0];
                CATransform3DMakeTranslation(&v53, 0.0, v39, 0.0);
                v62 = v53;
                [v42 setTransform:&v62];
              }
            }

            v36 = [(NSArray *)v34 countByEnumeratingWithState:&v55 objects:v63 count:16];
          }

          while (v36);
        }
      }

      else
      {
        [(CAGradientLayer *)self->_faux3DFaceLayer setHidden:0];
        [(CAGradientLayer *)self->_faux3DBaseBottomLayer setHidden:0];
        [(CAGradientLayer *)self->_faux3DFaceLayer bounds];
        v44 = v43 * -0.5;
        [(CAGradientLayer *)self->_faux3DFaceLayer bounds];
        [(CAGradientLayer *)self->_faux3DFaceLayer setFrame:v44, -1.0 - v16];
      }
    }

    else
    {
      [(CAGradientLayer *)self->_faux3DFaceLayer setHidden:1];
      [(CAGradientLayer *)self->_faux3DBaseBottomLayer setHidden:1];
    }
  }

  else
  {
    [(CAGradientLayer *)faux3DFaceLayer setHidden:1];
    [(CAGradientLayer *)self->_faux3DBaseBottomLayer setHidden:1];
    v14 = self->_baseLayer;
    v51 = *(MEMORY[0x1E69792E8] + 80);
    *&v62.m31 = *(MEMORY[0x1E69792E8] + 64);
    v52 = *&v62.m31;
    *&v62.m33 = v51;
    v49 = *(MEMORY[0x1E69792E8] + 112);
    *&v62.m41 = *(MEMORY[0x1E69792E8] + 96);
    v50 = *&v62.m41;
    *&v62.m43 = v49;
    v47 = *(MEMORY[0x1E69792E8] + 16);
    *&v62.m11 = *MEMORY[0x1E69792E8];
    v48 = *&v62.m11;
    *&v62.m13 = v47;
    v45 = *(MEMORY[0x1E69792E8] + 48);
    *&v62.m21 = *(MEMORY[0x1E69792E8] + 32);
    v46 = *&v62.m21;
    *&v62.m23 = v45;
    [(CALayer *)v14 setTransform:&v62];
    v15 = self->_shadowLayer;
    *&v62.m31 = v52;
    *&v62.m33 = v51;
    *&v62.m41 = v50;
    *&v62.m43 = v49;
    *&v62.m11 = v48;
    *&v62.m13 = v47;
    *&v62.m21 = v46;
    *&v62.m23 = v45;
    [(CALayer *)v15 setTransform:&v62];
  }
}

- (CGSize)collisionSize
{
  [(MKAnnotationView *)self _collisionFrame];
  v3 = v2;
  v5 = v4;
  result.height = v5;
  result.width = v3;
  return result;
}

- (void)_setPresentationCourse:(double)a3
{
  [(MKAnnotationView *)self _presentationCourse];
  v6 = v5;
  [(MKAnnotationView *)self _presentationCourse];
  v8 = a3 - v7;
  if (v6 > a3)
  {
    v8 = -v8;
  }

  if (v8 >= 2.0)
  {
    v9.receiver = self;
    v9.super_class = _MKPuckAnnotationView;
    [(MKAnnotationView *)&v9 _setPresentationCourse:a3];
    [(_MKPuckAnnotationView *)self _updateInnerCourseRotation];
  }
}

- (void)_setAnimatingToCoordinate:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = _MKPuckAnnotationView;
  [(MKAnnotationView *)&v5 _setAnimatingToCoordinate:?];
  [(VKNavigationPuck *)self->_navigationPuckMarker setAnimatingToCoordinate:v3];
}

- (void)setAnimatingToCoordinate:(BOOL)a3
{
  v3 = a3;
  [(_MKPuckAnnotationView *)self _setAnimatingToCoordinate:?];
  navigationPuckMarker = self->_navigationPuckMarker;

  [(VKNavigationPuck *)navigationPuckMarker setAnimatingToCoordinate:v3];
}

- (void)_setPresentationCoordinate:(CLLocationCoordinate2D)a3
{
  longitude = a3.longitude;
  latitude = a3.latitude;
  v20 = *MEMORY[0x1E69E9840];
  [(MKAnnotationView *)self _presentationCoordinate];
  if (vabdd_f64(latitude, v7) >= 0.00000000999999994 || vabdd_f64(longitude, v6) >= 0.00000000999999994)
  {
    v8 = MKGetUserLocationViewLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 138413059;
      v13 = objc_opt_class();
      v14 = 2048;
      v15 = self;
      v16 = 2049;
      v17 = latitude;
      v18 = 2049;
      v19 = longitude;
      v9 = v13;
      _os_log_impl(&dword_1A2EA0000, v8, OS_LOG_TYPE_INFO, "<%@: %p> _setPresentationCoordinate: (%{private}f, %{private}f)", buf, 0x2Au);
    }

    v11.receiver = self;
    v11.super_class = _MKPuckAnnotationView;
    [(MKAnnotationView *)&v11 _setPresentationCoordinate:latitude, longitude];
    navigationPuckMarker = self->_navigationPuckMarker;
    VKLocationCoordinate2DMake();
    [(VKNavigationPuck *)navigationPuckMarker setPresentationCoordinate:?];
  }
}

- (void)setPresentationCoordinate:(id)a3
{
  var1 = a3.var1;
  var0 = a3.var0;
  v16 = *MEMORY[0x1E69E9840];
  v6 = MKGetUserLocationViewLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v8 = 138413059;
    v9 = objc_opt_class();
    v10 = 2048;
    v11 = self;
    v12 = 2049;
    v13 = var0;
    v14 = 2049;
    v15 = var1;
    v7 = v9;
    _os_log_impl(&dword_1A2EA0000, v6, OS_LOG_TYPE_INFO, "[VKPuckAnimatorTarget] <%@: %p> setPresentationCoordinate: (%{private}f, %{private}f)", &v8, 0x2Au);
  }

  [(_MKPuckAnnotationView *)self _setPresentationCoordinate:var0, var1];
}

- (BOOL)_tracking
{
  v3.receiver = self;
  v3.super_class = _MKPuckAnnotationView;
  return [(MKAnnotationView *)&v3 _isTracking];
}

- (void)_setTracking:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = _MKPuckAnnotationView;
  [(MKAnnotationView *)&v5 _setTracking:?];
  [(VKNavigationPuck *)self->_navigationPuckMarker setTracking:v3];
}

- (void)_setVKNavigationPuckMarker:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (self->_navigationPuckMarker != v5)
  {
    v6 = MKGetUserLocationViewLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      navigationPuckMarker = self->_navigationPuckMarker;
      v9 = 138412802;
      v10 = self;
      v11 = 2112;
      v12 = navigationPuckMarker;
      v13 = 2112;
      v14 = v5;
      _os_log_impl(&dword_1A2EA0000, v6, OS_LOG_TYPE_INFO, "Updating VK navigation puck marker for view: %@. Current: %@, New: %@", &v9, 0x20u);
    }

    objc_storeStrong(&self->_navigationPuckMarker, a3);
    v8 = [(MKAnnotationView *)self annotation];
    [(VKNavigationPuck *)self->_navigationPuckMarker setAnnotation:v8];

    [(VKNavigationPuck *)self->_navigationPuckMarker setAnimatingToCoordinate:[(MKAnnotationView *)self _isAnimatingToCoordinate]];
    [(MKAnnotationView *)self _presentationCoordinate];
    [(MKAnnotationView *)self _presentationCoordinate];
    VKLocationCoordinate2DMake();
    [(VKNavigationPuck *)self->_navigationPuckMarker setPresentationCoordinate:?];
    [(MKAnnotationView *)self _presentationCourse];
    [(VKNavigationPuck *)self->_navigationPuckMarker setPresentationCourse:?];
    [(VKNavigationPuck *)self->_navigationPuckMarker setTracking:[(MKAnnotationView *)self _isTracking]];
  }
}

- (void)setHeadingAccuracy:(double)a3
{
  headingAccuracy = self->_headingAccuracy;
  v4 = a3 - headingAccuracy;
  if (a3 - headingAccuracy < 0.0)
  {
    v4 = -(a3 - headingAccuracy);
  }

  if (v4 > 1.0 || a3 >= 0.0 == headingAccuracy < 0.0)
  {
    self->_headingAccuracy = a3;
    [MKUserLocationHeadingIndicator updateHeadingAccuracy:"updateHeadingAccuracy:previousAccuracy:" previousAccuracy:?];
  }
}

- (void)setHeading:(double)a3
{
  if (self->_hasValidHeading)
  {
    v3 = a3 - self->_heading;
    if (v3 < 0.0)
    {
      v3 = -v3;
    }

    if (v3 > 1.0)
    {
      self->_heading = a3;
      [(_MKPuckAnnotationView *)self _updateHeadingIndicators];
    }
  }

  else
  {
    self->_heading = a3;
    self->_hasValidHeading = 1;
    [(_MKPuckAnnotationView *)self _updateShowHeadingLayerAnimatedIfPossible:1];
  }
}

- (void)_setForceHeadingUp:(BOOL)a3
{
  if (self->_forceHeadingUp != a3)
  {
    self->_forceHeadingUp = a3;
    [(_MKPuckAnnotationView *)self _updateHeadingIndicators];
  }
}

- (void)setShouldDisplayInaccurateHeading:(BOOL)a3
{
  if (self->_shouldDisplayInaccurateHeading != a3)
  {
    self->_shouldDisplayInaccurateHeading = a3;
    [(MKUserLocationHeadingIndicator *)self->_headingLayer updateHeadingAccuracy:self->_headingAccuracy previousAccuracy:self->_headingAccuracy];
  }
}

- (void)setShouldDisplayHeading:(BOOL)a3
{
  v3 = a3;
  v9 = *MEMORY[0x1E69E9840];
  self->_shouldDisplayHeading = a3;
  if (!a3)
  {
    self->_hasValidHeading = 0;
  }

  v5 = MKGetUserLocationViewLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = @"NO";
    if (v3)
    {
      v6 = @"YES";
    }

    v7 = 138412290;
    v8 = v6;
    _os_log_impl(&dword_1A2EA0000, v5, OS_LOG_TYPE_INFO, "Set should display heading: %@", &v7, 0xCu);
  }

  [(_MKPuckAnnotationView *)self _updateShowHeadingLayerAnimatedIfPossible:1];
}

- (void)_updateShowHeadingLayer:(BOOL)a3 animatedIfPossible:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  headingLayer = self->_headingLayer;
  if (_MKModernPuckDesignEnabled_onceToken != -1)
  {
    dispatch_once(&_MKModernPuckDesignEnabled_onceToken, &__block_literal_global_25_27148);
  }

  v8 = _MKModernPuckDesignEnabled_linkedOnOrAfterGoldenAzulHunterArcher & _MKModernPuckDesignEnabled_newPuckEnabled & 1;
  if ((headingLayer == 0) == v5 || self->_headingLayerTracksAccuracy != v8)
  {
    v9 = self->_headingLayer;
    if (v5)
    {
      v10 = [(_MKPuckAnnotationView *)self _enforcedHeadingIndicatorStyle];
      v11 = [MKUserLocationHeadingLayerFactory headingLayerWithStyle:v10 userLocationView:self shouldMatchAccuracyRadius:v8];
      v12 = self->_headingLayer;
      self->_headingLayer = v11;

      [objc_opt_class() baseDiameter];
      [(MKUserLocationHeadingIndicator *)self->_headingLayer setMinimumAccuracyRadius:v13 * 0.5];
      v14 = [(_MKPuckAnnotationView *)self traitCollection];
      [(MKUserLocationHeadingIndicator *)self->_headingLayer setTraitCollection:v14];

      [(MKUserLocationHeadingIndicator *)self->_headingLayer setMapType:[(MKAnnotationView *)self _mapType]];
      v15 = self->_headingLayer;
      v16 = [(_MKPuckAnnotationView *)self _effectiveTintColor];
      [(MKUserLocationHeadingIndicator *)v15 updateTintColor:v16];

      [(MKUserLocationHeadingIndicator *)self->_headingLayer updateHeadingAccuracy:self->_headingAccuracy previousAccuracy:self->_headingAccuracy];
      [(_MKPuckAnnotationView *)self _locationAccuracyInScreenPoints];
      [MKUserLocationHeadingIndicator setAccuracyRadius:"setAccuracyRadius:duration:" duration:?];
      self->_headingLayerTracksAccuracy = v8;
      [(_MKPuckAnnotationView *)self _updateHeadingIndicators];
      v17 = self->_headingLayer;
      if (v10 == 2 || v8)
      {
        [(CALayer *)self->_headingContainerLayer addSublayer:self->_headingLayer];
        if (!v4)
        {
          goto LABEL_15;
        }
      }

      else
      {
        puckLayer = self->_puckLayer;
        v19 = [(_MKPuckAnnotationView *)self _baseLayer];
        [(CALayer *)puckLayer insertSublayer:v17 below:v19];

        if (!v4)
        {
          goto LABEL_15;
        }
      }
    }

    else
    {
      v20 = self->_headingLayer;
      self->_headingLayer = 0;

      if (!v4)
      {
        goto LABEL_15;
      }
    }

    if ([(MKUserLocationHeadingIndicator *)self->_headingLayer conformsToProtocol:&unk_1F168E9A0]&& ![(_MKPuckAnnotationView *)self isStale])
    {
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __68___MKPuckAnnotationView__updateShowHeadingLayer_animatedIfPossible___block_invoke;
      v21[3] = &unk_1E76CA670;
      v22 = v9;
      [(MKUserLocationHeadingIndicator *)v22 animateToSetVisible:0 completion:v21];
      [(MKUserLocationHeadingIndicator *)self->_headingLayer animateToSetVisible:1 completion:0];

      goto LABEL_16;
    }

LABEL_15:
    [(MKUserLocationHeadingIndicator *)v9 removeFromSuperlayer];
LABEL_16:
  }
}

- (void)_updateShowHeadingLayerAnimatedIfPossible:(BOOL)a3
{
  v3 = a3;
  if (self->_shouldDisplayHeading && self->_canShowHeadingIndicator && self->_hasValidHeading)
  {
    v5 = [(_MKPuckAnnotationView *)self isStale]^ 1;
  }

  else
  {
    v5 = 0;
  }

  [(_MKPuckAnnotationView *)self _updateShowHeadingLayer:v5 animatedIfPossible:v3];
}

- (void)_updateHeadingLayerForStyleChange:(BOOL)a3
{
  [(_MKPuckAnnotationView *)self _updateShowHeadingLayer:0 animatedIfPossible:1];

  [(_MKPuckAnnotationView *)self _updateShowHeadingLayerAnimatedIfPossible:1];
}

- (void)setForcesConeIndicator:(BOOL)a3
{
  v10 = *MEMORY[0x1E69E9840];
  if (self->_forcesConeIndicator != a3)
  {
    v3 = a3;
    v5 = MKGetUserLocationViewLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = @"NO";
      if (v3)
      {
        v6 = @"YES";
      }

      v8 = 138412290;
      v9 = v6;
      _os_log_impl(&dword_1A2EA0000, v5, OS_LOG_TYPE_INFO, "Set force heading cone indicator: %@", &v8, 0xCu);
    }

    v7 = [(_MKPuckAnnotationView *)self _enforcedHeadingIndicatorStyle];
    self->_forcesConeIndicator = v3;
    if (v7 != [(_MKPuckAnnotationView *)self _enforcedHeadingIndicatorStyle])
    {
      [(_MKPuckAnnotationView *)self _updateHeadingLayerForStyleChange:0];
    }
  }
}

- (void)setHeadingIndicatorStyle:(int64_t)a3
{
  v9 = *MEMORY[0x1E69E9840];
  if (self->_headingIndicatorStyle != a3)
  {
    v5 = MKGetUserLocationViewLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v7 = 134217984;
      v8 = a3;
      _os_log_impl(&dword_1A2EA0000, v5, OS_LOG_TYPE_INFO, "Set heading indicator style: %ld", &v7, 0xCu);
    }

    v6 = [(_MKPuckAnnotationView *)self _enforcedHeadingIndicatorStyle];
    self->_headingIndicatorStyle = a3;
    if (v6 != [(_MKPuckAnnotationView *)self _enforcedHeadingIndicatorStyle])
    {
      [(_MKPuckAnnotationView *)self _updateHeadingLayerForStyleChange:a3 == 2];
    }
  }
}

- (BOOL)_shouldPulseForLocation:(id)a3
{
  v4 = a3;
  if ([(_MKPuckAnnotationView *)self isStale])
  {
    v5 = 0;
  }

  else
  {
    v6 = [v4 type];
    v5 = 0;
    if (v6 <= 0xA && ((1 << v6) & 0x40E) != 0)
    {
      if ([(_MKPuckAnnotationView *)self _hideLargeAccuracyRing])
      {
        v5 = [(_MKPuckAnnotationView *)self _shouldShowAccuracyRing];
      }

      else
      {
        v5 = 1;
      }
    }
  }

  return v5;
}

- (void)setAllowsPulse:(BOOL)a3
{
  if (self->_allowsPulse != a3)
  {
    self->_allowsPulse = a3;
    [(_MKPuckAnnotationView *)self _updatePulse];
  }
}

- (void)_pausePulse
{
  pulseLayer = self->_pulseLayer;
  if (pulseLayer)
  {
    [(CALayer *)pulseLayer speed];
    if (fabsf(v4 + -1.0) < 0.000001)
    {
      [(CALayer *)self->_pulseLayer convertTime:0 fromLayer:CACurrentMediaTime()];
      v6 = v5;
      [(CALayer *)self->_pulseLayer setSpeed:0.0];
      v7 = self->_pulseLayer;

      [(CALayer *)v7 setTimeOffset:v6];
    }
  }
}

- (void)_resumePulse
{
  v3 = [(_MKPuckAnnotationView *)self _pulseLayer];
  [v3 removeAnimationForKey:@"fadePulse"];
  v4 = [v3 animationForKey:@"outerPulse"];
  if (!v4)
  {
    [v3 removeFromSuperlayer];
    [(CALayer *)self->_accuracyContainerLayer insertSublayer:v3 atIndex:0];
    v5 = [(_MKPuckAnnotationView *)self _pulseAnimation];
    v28 = 0;
    v6 = [(_MKPuckAnnotationView *)self _animationToSynchronizePulse:&v28];
    v7 = v28;
    v8 = [(_MKPuckAnnotationView *)self _pulseLayer];
    v9 = v5;
    v10 = v6;
    v11 = v7;
    if (v10)
    {
      v12 = [v10 autoreverses];
      [v10 duration];
      if (v12)
      {
        v14 = v13 + v13;
      }

      else
      {
        v14 = v13;
      }

      [v11 convertTime:0 fromLayer:CACurrentMediaTime()];
      v16 = v15;
      [v10 beginTime];
      v18 = v17;
      [v10 timeOffset];
      v20 = fmod(v16 - (v18 + v19), v14);
      [v10 beginTime];
      [v11 convertTime:v8 toLayer:?];
      v22 = v21;
      [v9 duration];
      [v9 setBeginTime:{fmod(v22, v23)}];
      [v9 setTimeOffset:v14 - v20];
      [v9 setDuration:v14];
    }

    [v3 addAnimation:v9 forKey:@"outerPulse"];
  }

  [v3 speed];
  if (fabsf(v24) < 0.000001)
  {
    [v3 timeOffset];
    v26 = v25;
    LODWORD(v25) = 1.0;
    [v3 setSpeed:v25];
    [v3 setTimeOffset:0.0];
    [v3 setBeginTime:0.0];
    [v3 convertTime:0 fromLayer:CACurrentMediaTime()];
    [v3 setBeginTime:v27 - v26];
  }
}

- (id)_pulseAnimation
{
  v9[2] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E6979318] animationWithKeyPath:@"transform.scale.xy"];
  [v2 setFromValue:&unk_1F1611668];
  [v2 setToValue:&unk_1F1611680];
  v3 = [MEMORY[0x1E6979390] animationWithKeyPath:@"opacity"];
  [v3 setKeyTimes:&unk_1F1612210];
  [v3 setValues:&unk_1F1612228];
  v4 = [MEMORY[0x1E6979308] animation];
  v9[0] = v2;
  v9[1] = v3;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:2];
  [v4 setAnimations:v5];

  [v4 setDuration:3.0];
  v6 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979EA0]];
  [v4 setTimingFunction:v6];

  [v4 setFrameInterval:0.0250000004];
  LODWORD(v7) = 2139095040;
  [v4 setRepeatCount:v7];
  [v4 setRemovedOnCompletion:0];

  return v4;
}

- (id)_animationToSynchronizePulse:(id *)a3
{
  if (a3)
  {
    *a3 = self->_innerCircleLayer;
  }

  innerCircleLayer = self->_innerCircleLayer;

  return [(CALayer *)innerCircleLayer animationForKey:@"pulse"];
}

- (id)_pulseLayer
{
  v12[3] = *MEMORY[0x1E69E9840];
  pulseLayer = self->_pulseLayer;
  if (!pulseLayer)
  {
    v4 = [MEMORY[0x1E6979398] layer];
    v5 = self->_pulseLayer;
    self->_pulseLayer = v4;

    [(CALayer *)self->_pulseLayer setBounds:0.0, 0.0, 120.0, 120.0];
    [(CALayer *)self->_pulseLayer setCornerRadius:60.0];
    v11[0] = @"bounds";
    v6 = [MEMORY[0x1E695DFB0] null];
    v12[0] = v6;
    v11[1] = @"cornerRadius";
    v7 = [MEMORY[0x1E695DFB0] null];
    v12[1] = v7;
    v11[2] = @"transform";
    v8 = [MEMORY[0x1E695DFB0] null];
    v12[2] = v8;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:3];
    [(CALayer *)self->_pulseLayer setActions:v9];

    [(CALayer *)self->_pulseLayer setZPosition:-9999.0];
    [(CALayer *)self->_pulseLayer setOpacity:0.0];
    [(_MKPuckAnnotationView *)self _updatePulseColor];
    pulseLayer = self->_pulseLayer;
  }

  return pulseLayer;
}

- (void)_updatePulseColor
{
  v3 = [(MKAnnotationView *)self _mapType];
  v4 = v3 - 1 < 4 || v3 == 107;
  v5 = [(MKAnnotationView *)self _mapDisplayStyle];
  v6 = [(_MKPuckAnnotationView *)self _effectiveTintColor];
  if (v4 || v5 == 1)
  {
    v11 = v6;
    v7 = [MEMORY[0x1E69DC888] whiteColor];
    v8 = [v11 _mapkit_blendedColorWithFraction:v7 ofColor:0.400000006];

    if (v8)
    {
      v9 = v8;

      v11 = v9;
    }

    v6 = v11;
  }

  v12 = v6;
  v10 = v6;
  -[CALayer setBackgroundColor:](self->_pulseLayer, "setBackgroundColor:", [v12 CGColor]);
}

- (unint64_t)_innerPulseFrameWhenDisabled:(unint64_t)a3
{
  if (a3)
  {
    return a3 - 1;
  }

  else
  {
    return 0;
  }
}

- (void)_setShouldShowDynamicLocationAnimations:(BOOL)a3
{
  if (self->_shouldShowDynamicLocationAnimations != a3)
  {
    self->_shouldShowDynamicLocationAnimations = a3;
    [(_MKPuckAnnotationView *)self _updatePulseAnimation];
    [(_MKPuckAnnotationView *)self _resetInnerPulseFrame];

    [(_MKPuckAnnotationView *)self _updateAccuracyAnimation];
  }
}

- (void)setShouldInnerPulse:(BOOL)a3
{
  if (self->_shouldInnerPulse != a3)
  {
    self->_shouldInnerPulse = a3;
    [(_MKPuckAnnotationView *)self _updatePulseAnimation];

    [(_MKPuckAnnotationView *)self _resetInnerPulseFrame];
  }
}

- (void)_updateAccuracyAnimation
{
  shouldShowDynamicLocationAnimations = self->_shouldShowDynamicLocationAnimations;
  accuracyLayer = self->_accuracyLayer;
  if (shouldShowDynamicLocationAnimations)
  {
    [(_MKPuckAccuracyLayer *)accuracyLayer startAnimationsIfNecessary];
  }

  else
  {
    [(_MKPuckAccuracyLayer *)accuracyLayer stopAnimations];
  }
}

- (void)_updateToReflectLocationAccuracyWithDuration:(double)a3 allowShowHideAnimation:(BOOL)a4
{
  v4 = a4;
  v34[2] = *MEMORY[0x1E69E9840];
  [(_MKPuckAnnotationView *)self _locationAccuracyInScreenPoints];
  v8 = v7;
  [(_MKPuckAccuracyLayer *)self->_accuracyLayer accuracy];
  v10 = v9;
  v11 = 0.0;
  if (v4)
  {
    if (v8 >= v9)
    {
      v12 = v9;
    }

    else
    {
      v12 = v8;
    }

    minimumAccuracyRadius = self->_minimumAccuracyRadius;
    if (v12 >= minimumAccuracyRadius)
    {
      v11 = a3;
    }

    else
    {
      if (v8 <= v10)
      {
        v14 = v10;
      }

      else
      {
        v14 = v8;
      }

      v11 = a3;
      if (v14 >= minimumAccuracyRadius)
      {
        v15 = v10 - v8;
        if (v10 - v8 < 0.0)
        {
          v15 = -(v10 - v8);
        }

        v11 = fmin(v15 / self->_maxRadiusToShowAccuracyRing, 1.0) * 0.75 + 0.25;
        a3 = v11;
      }
    }
  }

  if (vabdd_f64(v8, v10) >= 0.25)
  {
    [(_MKPuckAccuracyLayer *)self->_accuracyLayer setAccuracy:v8 duration:a3];
    [(MKUserLocationHeadingIndicator *)self->_headingLayer setAccuracyRadius:v8 duration:a3];
    [(_MKPuckAnnotationView *)self _updateAccuracyOpacityForRadius:v8 duration:a3];
    [(_MKPuckAnnotationView *)self _updatePuckVisibilityForRadius:v8 previousRadius:v10 duration:v11];
    v16 = [(MKAnnotationView *)self _calloutView];
    if (v16)
    {
      v17 = v16;
      v18 = [(MKAnnotationView *)self _calloutView];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v20 = [(MKAnnotationView *)self _calloutView];
        [v20 setShowsArrow:-[_MKPuckAnnotationView _balloonCalloutShouldShowArrow](self animated:{"_balloonCalloutShouldShowArrow"), 1}];
        [v20 updateWithNewCalloutOffset];
      }
    }

    v21 = [(_MKPuckAnnotationView *)self _layerToMatchAccuracyRing];
    if (v21)
    {
      if (([(_MKPuckAccuracyLayer *)self->_accuracyLayer isHidden]& 1) != 0)
      {
        [(_MKPuckAnnotationView *)self _resetLayerToMatchAccuracyRing];
      }

      else
      {
        v22 = [MEMORY[0x1E6979318] animationWithKeyPath:@"bounds"];
        v23 = MEMORY[0x1E696B098];
        v24 = [v21 currentLayer];
        [v24 bounds];
        v25 = [v23 valueWithCGRect:?];
        [v22 setFromValue:v25];

        v26 = [MEMORY[0x1E696B098] valueWithCGRect:{0.0, 0.0, v8 + v8, v8 + v8}];
        [v22 setToValue:v26];

        v27 = [MEMORY[0x1E6979318] animationWithKeyPath:@"cornerRadius"];
        v28 = MEMORY[0x1E696AD98];
        v29 = [v21 currentLayer];
        [v29 cornerRadius];
        v30 = [v28 numberWithDouble:?];
        [v27 setFromValue:v30];

        v31 = [MEMORY[0x1E696AD98] numberWithDouble:v8];
        [v27 setToValue:v31];

        v32 = [MEMORY[0x1E6979308] animation];
        v34[0] = v22;
        v34[1] = v27;
        v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:2];
        [v32 setAnimations:v33];

        [v32 setRemovedOnCompletion:1];
        [v32 setDuration:a3];
        [v21 addAnimation:v32 forKey:@"accuracy"];
        [v21 setBounds:{0.0, 0.0, v8 + v8, v8 + v8}];
        [v21 setCornerRadius:v8];
      }
    }
  }
}

- (CGPoint)calloutOffset
{
  if (self->_shouldHidePuckWhenAccuracyVisible)
  {
    [(CALayer *)self->_puckLayer opacity];
    if (fabsf(v3) >= 0.000001)
    {
      [(MKAnnotationView *)&v6 calloutOffset:self];
    }

    else
    {
      [(_MKPuckAnnotationView *)self frame];
      v4 = CGRectGetHeight(v9) * 0.5;
      v5 = 0.0;
    }
  }

  else
  {
    [(MKAnnotationView *)&v7 calloutOffset:v6.receiver];
  }

  result.y = v4;
  result.x = v5;
  return result;
}

- (BOOL)_balloonCalloutShouldShowArrow
{
  if (!self->_shouldHidePuckWhenAccuracyVisible)
  {
    return 1;
  }

  [(_MKPuckAnnotationView *)self _locationAccuracyInScreenPoints:v2];
  return v4 <= 50.0;
}

- (void)setLocationAccuracy:(double)a3 duration:(double)a4
{
  if (vabdd_f64(a3, self->_locationAccuracy) >= 0.000001)
  {
    self->_locationAccuracy = a3;
    v6 = [(_MKPuckAnnotationView *)self window];
    if (v6)
    {
      animatingPresentationAccuracy = self->_animatingPresentationAccuracy;

      if (!animatingPresentationAccuracy)
      {

        [(_MKPuckAnnotationView *)self _updateToReflectLocationAccuracyWithDuration:1 allowShowHideAnimation:a4];
      }
    }
  }
}

- (void)setPresentationAccuracy:(double)a3
{
  self->_presentationAccuracy = a3;
  v4 = [(_MKPuckAnnotationView *)self window];
  [(_MKPuckAnnotationView *)self _updateToReflectLocationAccuracyWithDuration:v4 != 0 allowShowHideAnimation:0.0];
}

- (double)presentationAccuracy
{
  if (self->_animatingPresentationAccuracy)
  {
    return self->_presentationAccuracy;
  }

  [(_MKPuckAccuracyLayer *)self->_accuracyLayer currentAccuracy];
  return result;
}

- (void)setAnimatingPresentationAccuracy:(BOOL)a3
{
  [(_MKPuckAccuracyLayer *)self->_accuracyLayer currentAccuracy];
  self->_presentationAccuracy = v5;
  self->_animatingPresentationAccuracy = a3;
}

- (void)_resetLayerToMatchAccuracyRing
{
  v19[2] = *MEMORY[0x1E69E9840];
  pulseLayer = self->_pulseLayer;
  if (pulseLayer)
  {
    [(CALayer *)pulseLayer bounds];
    v21.origin.x = v4;
    v21.origin.y = v5;
    v21.size.width = v6;
    v21.size.height = v7;
    v20.size.width = 120.0;
    v20.origin.x = 0.0;
    v20.origin.y = 0.0;
    v20.size.height = 120.0;
    if (!CGRectEqualToRect(v20, v21))
    {
      v8 = [MEMORY[0x1E6979318] animationWithKeyPath:@"bounds"];
      v9 = MEMORY[0x1E696B098];
      v10 = [(CALayer *)self->_pulseLayer currentLayer];
      [v10 bounds];
      v11 = [v9 valueWithCGRect:?];
      [v8 setFromValue:v11];

      v12 = [MEMORY[0x1E696B098] valueWithCGRect:{0.0, 0.0, 120.0, 120.0}];
      [v8 setToValue:v12];

      v13 = [MEMORY[0x1E6979318] animationWithKeyPath:@"cornerRadius"];
      v14 = MEMORY[0x1E696AD98];
      v15 = [(CALayer *)self->_pulseLayer currentLayer];
      [v15 cornerRadius];
      v16 = [v14 numberWithDouble:?];
      [v13 setFromValue:v16];

      [v13 setToValue:&unk_1F1610D70];
      v17 = [MEMORY[0x1E6979308] animation];
      v19[0] = v8;
      v19[1] = v13;
      v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:2];
      [v17 setAnimations:v18];

      [v17 setRemovedOnCompletion:1];
      [(CALayer *)self->_pulseLayer removeAnimationForKey:@"accuracy"];
      [(CALayer *)self->_pulseLayer addAnimation:v17 forKey:@"reset"];
      [(CALayer *)self->_pulseLayer setBounds:0.0, 0.0, 120.0, 120.0];
      [(CALayer *)self->_pulseLayer setCornerRadius:60.0];
    }
  }
}

- (void)_setShouldHidePuckWhenAccuracyVisible:(BOOL)a3
{
  if (self->_shouldHidePuckWhenAccuracyVisible != a3)
  {
    self->_shouldHidePuckWhenAccuracyVisible = a3;
    [(_MKPuckAnnotationView *)self _locationAccuracyInScreenPoints];
    v6 = v5;
    [(_MKPuckAccuracyLayer *)self->_accuracyLayer currentAccuracy];

    [(_MKPuckAnnotationView *)self _updatePuckVisibilityForRadius:v6 previousRadius:v7 duration:0.25];
  }
}

- (void)setAccuracyRingAlpha:(double)a3
{
  self->_accuracyRingAlpha = a3;
  [(_MKPuckAnnotationView *)self _locationAccuracyInScreenPoints];

  [_MKPuckAnnotationView _updateAccuracyOpacityForRadius:"_updateAccuracyOpacityForRadius:duration:" duration:?];
}

- (void)setAllowsAccuracyRing:(BOOL)a3
{
  if (self->_allowsAccuracyRing != a3)
  {
    self->_allowsAccuracyRing = a3;
    if (self->_shouldHidePuckWhenAccuracyVisible && a3)
    {
      [(_MKPuckAnnotationView *)self _locationAccuracyInScreenPoints];
      v5 = v4;
    }

    else
    {
      [objc_opt_class() baseDiameter];
      v5 = v6 * 0.5;
    }

    [(_MKPuckAccuracyLayer *)self->_accuracyLayer setHidden:!self->_allowsAccuracyRing];
    [(_MKPuckAccuracyLayer *)self->_accuracyLayer currentAccuracy];
    [(_MKPuckAnnotationView *)self _updatePuckVisibilityForRadius:v5 previousRadius:v7 duration:0.25];

    [(_MKPuckAnnotationView *)self _updateAccuracyOpacityForRadius:v5 duration:0.0];
  }
}

- (void)_setAccuracyRingStrokeOpacityThreshold:(double)a3
{
  if (vabdd_f64(self->_accuracyRingStrokeOpacityThreshold, a3) >= 0.00000011920929)
  {
    self->_accuracyRingStrokeOpacityThreshold = a3;
    [(_MKPuckAnnotationView *)self _locationAccuracyInScreenPoints];

    [_MKPuckAnnotationView _updateAccuracyOpacityForRadius:"_updateAccuracyOpacityForRadius:duration:" duration:?];
  }
}

- (void)setMaxRadiusToShowAccuracyRing:(double)a3
{
  self->_maxRadiusToShowAccuracyRing = a3;
  [(_MKPuckAnnotationView *)self _locationAccuracyInScreenPoints];

  [_MKPuckAnnotationView _updateAccuracyOpacityForRadius:"_updateAccuracyOpacityForRadius:duration:" duration:?];
}

- (void)_updateAccuracyOpacityForRadius:(double)a3 duration:(double)a4
{
  minimumAccuracyRadius = self->_minimumAccuracyRadius;
  maxRadiusToShowAccuracyRing = self->_maxRadiusToShowAccuracyRing;
  v9 = [(CALayer *)self->_accuracyContainerLayer currentLayer];
  [v9 opacity];
  v11 = v10;

  v12 = 1.0;
  v13 = 1.0;
  if (maxRadiusToShowAccuracyRing >= minimumAccuracyRadius && maxRadiusToShowAccuracyRing >= 0.1)
  {
    v12 = 1.0 - fmin(fmax((a3 - minimumAccuracyRadius) / (maxRadiusToShowAccuracyRing - minimumAccuracyRadius), 0.0), 1.0);
    v14 = 1.0 - fmin(fmax((a3 - self->_accuracyRingStrokeOpacityThreshold) / (maxRadiusToShowAccuracyRing - self->_accuracyRingStrokeOpacityThreshold), 0.0), 1.0);
    v13 = v14;
  }

  if (vabdd_f64(v12, v11) >= 0.01)
  {
    [(_MKPuckAccuracyLayer *)self->_accuracyLayer setFillOpacity:v12 duration:a4];
    [(_MKPuckAccuracyLayer *)self->_accuracyLayer setStrokeOpacity:v13 duration:a4];
    [(CALayer *)self->_headingContainerLayer removeAnimationForKey:@"accuracyOpacity"];
    if (a4 > 0.0)
    {
      v17 = [MEMORY[0x1E6979318] animationWithKeyPath:@"opacity"];
      v18 = [MEMORY[0x1E696AD98] numberWithDouble:v11];
      [v17 setFromValue:v18];

      *&v19 = v12;
      v20 = [MEMORY[0x1E696AD98] numberWithFloat:v19];
      [v17 setToValue:v20];

      [v17 setDuration:a4];
      [v17 setRemovedOnCompletion:1];
      [(CALayer *)self->_headingContainerLayer addAnimation:v17 forKey:@"accuracyOpacity"];
    }

    [MEMORY[0x1E6979518] begin];
    [MEMORY[0x1E6979518] setDisableActions:1];
    *&v21 = v12;
    [(CALayer *)self->_headingContainerLayer setOpacity:v21];
    v22 = MEMORY[0x1E6979518];

    [v22 commit];
  }

  else
  {
    [(CALayer *)self->_headingContainerLayer opacity];
    v16 = vabds_f32(v12, v15);
    if (v16 >= 0.01)
    {
      headingContainerLayer = self->_headingContainerLayer;
      *&v16 = v12;

      [(CALayer *)headingContainerLayer setOpacity:v16];
    }
  }
}

- (void)updateStateFromLocation:(id)a3 duration:(double)a4
{
  v5 = a3;
  [(_MKPuckAnnotationView *)self setStale:[(_MKPuckAnnotationView *)self _isLocationStale:v5]];
  lastLocation = self->_lastLocation;
  self->_lastLocation = v5;
  v7 = v5;

  [(CLLocation *)v7 horizontalAccuracy];
  [_MKPuckAnnotationView setLocationAccuracy:"setLocationAccuracy:duration:" duration:?];
  [(_MKPuckAnnotationView *)self _updateShowHeadingLayer];
  [(_MKPuckAnnotationView *)self _updateLayers];
  v8 = [(_MKPuckAnnotationView *)self _shouldPulseForLocation:self->_lastLocation];

  self->_shouldPulse = v8;

  [(_MKPuckAnnotationView *)self _updatePulse];
}

- (BOOL)_isLocationStale:(id)a3
{
  if (!a3 || self->_overrideIsStale)
  {
    return 1;
  }

  else
  {
    return [a3 _navigation_isStale];
  }
}

- (void)setStale:(BOOL)a3
{
  v9 = *MEMORY[0x1E69E9840];
  if (self->_stale != a3)
  {
    v3 = a3;
    v5 = MKGetUserLocationViewLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = @"NO";
      if (v3)
      {
        v6 = @"YES";
      }

      v7 = 138412290;
      v8 = v6;
      _os_log_impl(&dword_1A2EA0000, v5, OS_LOG_TYPE_INFO, "User location stale: %@", &v7, 0xCu);
    }

    self->_stale = v3;
    [(_MKPuckAccuracyLayer *)self->_accuracyLayer setStale:v3];
    [(_MKPuckAnnotationView *)self _updateLayers];
  }
}

- (void)setGlyphTintColor:(id)a3
{
  if (self->_glyphTintColor != a3)
  {
    v4 = [a3 copy];
    glyphTintColor = self->_glyphTintColor;
    self->_glyphTintColor = v4;

    [(_MKPuckAnnotationView *)self _updateGlyphImage];
  }
}

- (void)setGlyphImage:(id)a3
{
  v5 = a3;
  if (self->_glyphImage != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_glyphImage, a3);
    [(_MKPuckAnnotationView *)self _updateGlyphImage];
    v5 = v6;
  }
}

- (void)setInnerImageMask:(id)a3
{
  v5 = a3;
  if (self->_innerImageMask != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_innerImageMask, a3);
    [(_MKPuckAnnotationView *)self _updateInnerMaskLayer];
    v5 = v6;
  }
}

- (void)setShouldShowOuterRing:(BOOL)a3
{
  if (self->_shouldShowOuterRing != a3)
  {
    self->_shouldShowOuterRing = a3;
    [(_MKPuckAnnotationView *)self _updateShadowImage];

    [(_MKPuckAnnotationView *)self _updateBaseImage];
  }
}

- (void)setEffectsEnabled:(BOOL)a3
{
  if (self->_effectsEnabled != a3)
  {
    v3 = a3;
    self->_effectsEnabled = a3;
    [(_MKPuckAnnotationView *)self _updatePulse];
    if (v3)
    {
      [(CALayer *)self->_innerCircleLayer timeOffset];
      v6 = v5;
      LODWORD(v5) = 1.0;
      [(CALayer *)self->_innerCircleLayer setSpeed:v5];
      [(CALayer *)self->_innerCircleLayer setTimeOffset:0.0];
      [(CALayer *)self->_innerCircleLayer setBeginTime:0.0];
      [(CALayer *)self->_innerCircleLayer convertTime:0 fromLayer:CACurrentMediaTime()];
      v8 = v7 - v6;
      innerCircleLayer = self->_innerCircleLayer;

      [(CALayer *)innerCircleLayer setBeginTime:v8];
    }

    else
    {
      [(CALayer *)self->_innerCircleLayer convertTime:0 fromLayer:CACurrentMediaTime()];
      v11 = v10;
      [(CALayer *)self->_innerCircleLayer setSpeed:0.0];
      v12 = self->_innerCircleLayer;

      [(CALayer *)v12 setTimeOffset:v11];
    }
  }
}

- (void)setPuckScale:(double)a3
{
  if (vabdd_f64(a3, self->_puckScale) >= 0.00000011920929)
  {
    v33 = v6;
    v34 = v5;
    v35 = v3;
    v36 = v4;
    self->_puckScale = a3;
    v8 = fabs(a3 + -1.0);
    memset(&v32, 0, sizeof(v32));
    if (v8 >= 0.00000011920929)
    {
      CATransform3DMakeScale(&v32, a3, a3, 1.0);
    }

    else
    {
      v9 = *(MEMORY[0x1E69792E8] + 80);
      *&v32.m31 = *(MEMORY[0x1E69792E8] + 64);
      *&v32.m33 = v9;
      v10 = *(MEMORY[0x1E69792E8] + 112);
      *&v32.m41 = *(MEMORY[0x1E69792E8] + 96);
      *&v32.m43 = v10;
      v11 = *(MEMORY[0x1E69792E8] + 16);
      *&v32.m11 = *MEMORY[0x1E69792E8];
      *&v32.m13 = v11;
      v12 = *(MEMORY[0x1E69792E8] + 48);
      *&v32.m21 = *(MEMORY[0x1E69792E8] + 32);
      *&v32.m23 = v12;
    }

    v13 = [MEMORY[0x1E6979318] animationWithKeyPath:@"transform"];
    v14 = MEMORY[0x1E696B098];
    v15 = [(CALayer *)self->_puckContainerLayer currentLayer];
    v16 = v15;
    if (v15)
    {
      [v15 transform];
    }

    else
    {
      memset(&v31, 0, sizeof(v31));
    }

    v17 = [v14 valueWithCATransform3D:{&v31, 0.00000011920929}];
    [v13 setFromValue:v17];

    v31 = v32;
    v18 = [MEMORY[0x1E696B098] valueWithCATransform3D:&v31];
    [v13 setToValue:v18];

    [v13 setDuration:0.2];
    [v13 setFillMode:*MEMORY[0x1E69797E8]];
    [v13 setRemovedOnCompletion:v8 < 0.00000011920929];
    [(CALayer *)self->_puckContainerLayer removeAnimationForKey:@"scale"];
    [(CALayer *)self->_puckContainerLayer addAnimation:v13 forKey:@"scale"];
    if (self->_faux3DEnabled)
    {
      v19 = v13;
    }

    else
    {
      v19 = [v13 copy];

      v20 = MEMORY[0x1E696B098];
      v21 = [(CALayer *)self->_puckLayer currentLayer];
      v22 = v21;
      if (v21)
      {
        [v21 transform];
      }

      else
      {
        memset(&v31, 0, sizeof(v31));
      }

      v23 = [v20 valueWithCATransform3D:&v31];
      [v19 setFromValue:v23];

      v24 = MEMORY[0x1E696B098];
      if (v8 >= 0.00000011920929)
      {
        v26 = *(MEMORY[0x1E69792E8] + 80);
        *&v31.m31 = *(MEMORY[0x1E69792E8] + 64);
        *&v31.m33 = v26;
        v27 = *(MEMORY[0x1E69792E8] + 112);
        *&v31.m41 = *(MEMORY[0x1E69792E8] + 96);
        *&v31.m43 = v27;
        v28 = *(MEMORY[0x1E69792E8] + 16);
        *&v31.m11 = *MEMORY[0x1E69792E8];
        *&v31.m13 = v28;
        v29 = *(MEMORY[0x1E69792E8] + 48);
        *&v31.m21 = *(MEMORY[0x1E69792E8] + 32);
        *&v31.m23 = v29;
      }

      else
      {
        puckLayer = self->_puckLayer;
        if (puckLayer)
        {
          [(CALayer *)puckLayer transform];
        }

        else
        {
          memset(&v31, 0, sizeof(v31));
        }
      }

      v30 = [v24 valueWithCATransform3D:&v31];
      [v19 setToValue:v30];

      [(CALayer *)self->_puckLayer removeAnimationForKey:@"scale"];
      [(CALayer *)self->_puckLayer addAnimation:v19 forKey:@"scale"];
    }
  }
}

- (void)setOpacity:(float)a3
{
  v5 = [(_MKPuckAnnotationView *)self layer];
  *&v4 = a3;
  [v5 setOpacity:v4];
}

- (float)opacity
{
  v2 = [(_MKPuckAnnotationView *)self layer];
  [v2 opacity];
  v4 = v3;

  return v4;
}

- (CGRect)_mapkit_visibleRect
{
  [(_MKPuckAnnotationView *)self bounds];
  x = v3;
  y = v5;
  width = v7;
  height = v9;
  if (([(_MKPuckAccuracyLayer *)self->_accuracyLayer isHidden]& 1) == 0)
  {
    [(_MKPuckAccuracyLayer *)self->_accuracyLayer frame];
    v30.origin.x = v11;
    v30.origin.y = v12;
    v30.size.width = v13;
    v30.size.height = v14;
    v25.origin.x = x;
    v25.origin.y = y;
    v25.size.width = width;
    v25.size.height = height;
    v26 = CGRectUnion(v25, v30);
    x = v26.origin.x;
    y = v26.origin.y;
    width = v26.size.width;
    height = v26.size.height;
  }

  v15 = [(MKAnnotationView *)self _calloutView];

  if (v15)
  {
    v16 = [(MKAnnotationView *)self _calloutView];
    [v16 frame];
    v31.origin.x = v17;
    v31.origin.y = v18;
    v31.size.width = v19;
    v31.size.height = v20;
    v27.origin.x = x;
    v27.origin.y = y;
    v27.size.width = width;
    v27.size.height = height;
    v28 = CGRectUnion(v27, v31);
    x = v28.origin.x;
    y = v28.origin.y;
    width = v28.size.width;
    height = v28.size.height;
  }

  v21 = x;
  v22 = y;
  v23 = width;
  v24 = height;
  result.size.height = v24;
  result.size.width = v23;
  result.origin.y = v22;
  result.origin.x = v21;
  return result;
}

- (void)setSelected:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a3;
  v6.receiver = self;
  v6.super_class = _MKPuckAnnotationView;
  [(MKAnnotationView *)&v6 setSelected:a3 animated:a4];
  [(_MKPuckAnnotationView *)self _setHeadingLayerHidden:v4];
}

- (void)didMoveToWindow
{
  v3.receiver = self;
  v3.super_class = _MKPuckAnnotationView;
  [(_MKPuckAnnotationView *)&v3 didMoveToWindow];
  [(_MKPuckAnnotationView *)self _updatePulse];
  [(_MKPuckAnnotationView *)self _updatePulseAnimation];
  [(_MKPuckAnnotationView *)self _updateAccuracyAnimation];
  [(_MKPuckAnnotationView *)self _updateShadowImage];
  [(_MKPuckAnnotationView *)self _updateBaseImage];
  [(_MKPuckAnnotationView *)self _updateInnerImage];
  [(_MKPuckAnnotationView *)self _updateToReflectLocationAccuracyWithDuration:0 allowShowHideAnimation:0.0];
}

- (void)tintColorDidChange
{
  v5.receiver = self;
  v5.super_class = _MKPuckAnnotationView;
  [(_MKPuckAnnotationView *)&v5 tintColorDidChange];
  [(_MKPuckAnnotationView *)self _updateInnerImage];
  [(_MKPuckAnnotationView *)self _updateAccuracyColors];
  [(_MKPuckAnnotationView *)self _updatePulseColor];
  headingLayer = self->_headingLayer;
  v4 = [(_MKPuckAnnotationView *)self _effectiveTintColor];
  [(MKUserLocationHeadingIndicator *)headingLayer updateTintColor:v4];
}

- (void)traitEnvironment:(id)a3 didChangeTraitCollection:(id)a4
{
  v5 = [(_MKPuckAnnotationView *)self traitCollection:a3];
  self->_useDarkAppearance = [v5 userInterfaceStyle] == 2;

  [(_MKPuckAnnotationView *)self _updateAccuracyColors];
  [(_MKPuckAnnotationView *)self _updateFaux3DColors];
  [(_MKPuckAnnotationView *)self _updateBaseImage];
  [(_MKPuckAnnotationView *)self _updateGlyphImage];
  v6 = [(_MKPuckAnnotationView *)self traitCollection];
  [(MKUserLocationHeadingIndicator *)self->_headingLayer setTraitCollection:v6];

  v7 = [(_MKPuckAnnotationView *)self traitCollection];
  [(_MKPuckAccuracyLayer *)self->_accuracyLayer setTraitCollection:v7];

  [(_MKPuckAnnotationView *)self _accessibilitySetInterfaceStyleIntent:1];
}

- (void)_setDisplaysPuckAsAccuracy:(BOOL)a3
{
  if (self->_displaysPuckAsAccuracy != a3)
  {
    self->_displaysPuckAsAccuracy = a3;
    [(_MKPuckAnnotationView *)self _updateBaseImage];
    [(_MKPuckAnnotationView *)self _updateInnerImage];
    [(_MKPuckAnnotationView *)self _createOrRemoveFaux3DRingsIfNecessary];
    [(_MKPuckAnnotationView *)self _updateFaux3DColors];

    [(_MKPuckAnnotationView *)self _updateFaux3DLayers];
  }
}

- (void)setRotateInnerImageToMatchCourse:(BOOL)a3
{
  if (self->_rotateInnerImageToMatchCourse != a3)
  {
    self->_rotateInnerImageToMatchCourse = a3;
    [(_MKPuckAnnotationView *)self _updateInnerCourseRotation];
  }
}

- (void)_setMapRotationRadians:(double)a3
{
  v7.receiver = self;
  v7.super_class = _MKPuckAnnotationView;
  [(MKAnnotationView *)&v7 _setMapRotationRadians:?];
  self->_mapRotation = a3 * 57.2957795;
  v5 = +[MKThreadContext currentContext];
  [v5 _CA_setDisableActions:1];

  [(_MKPuckAnnotationView *)self _updateHeadingIndicators];
  [(_MKPuckAnnotationView *)self _updateInnerCourseRotation];
  v6 = +[MKThreadContext currentContext];
  [v6 _CA_setDisableActions:0];
}

- (void)_setMapPitchRadians:(double)a3
{
  v16.receiver = self;
  v16.super_class = _MKPuckAnnotationView;
  [(MKAnnotationView *)&v16 _setMapPitchRadians:?];
  v5 = +[MKThreadContext currentContext];
  [v5 _CA_setDisableActions:1];

  CATransform3DMakeRotation(&v15, a3, 1.0, 0.0, 0.0);
  accuracyContainerLayer = self->_accuracyContainerLayer;
  v14 = v15;
  [(CALayer *)accuracyContainerLayer setTransform:&v14];
  CATransform3DMakeRotation(&v13, a3, 1.0, 0.0, 0.0);
  headingContainerLayer = self->_headingContainerLayer;
  v14 = v13;
  [(CALayer *)headingContainerLayer setTransform:&v14];
  if (self->_shouldHidePuckWhenAccuracyVisible || self->_faux3DEnabled)
  {
    CATransform3DMakeRotation(&v12, a3, 1.0, 0.0, 0.0);
    puckLayer = self->_puckLayer;
    v14 = v12;
    [(CALayer *)puckLayer setTransform:&v14];
    CATransform3DMakeRotation(&v11, a3, 1.0, 0.0, 0.0);
    puckTransitionContainer = self->_puckTransitionContainer;
    v14 = v11;
    [(CALayer *)puckTransitionContainer setTransform:&v14];
  }

  [(_MKPuckAccuracyLayer *)self->_accuracyLayer setMapPitchRadians:a3];
  [(_MKPuckAnnotationView *)self _updateFaux3DLayers];
  v10 = +[MKThreadContext currentContext];
  [v10 _CA_setDisableActions:0];
}

- (void)_updatePuckVisibilityForRadius:(double)a3 previousRadius:(double)a4 duration:(double)a5
{
  v134 = *MEMORY[0x1E69E9840];
  v9 = self->_shouldHidePuckWhenAccuracyVisible && ([(_MKPuckAccuracyLayer *)self->_accuracyLayer isHidden]& 1) == 0 && self->_minimumAccuracyRadius <= a3;
  if (!self->_animatingPresentationAccuracy)
  {
    if (self->_locationAccuracy < self->_minimumAccuracyUncertainty || !v9)
    {
      goto LABEL_7;
    }

LABEL_9:
    [(CALayer *)self->_puckLayer opacity];
    v13 = 0;
    v11 = v14 > 0.0;
    if (v14 > 0.0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  [(MKAnnotationView *)self _pointsForDistance:1.0];
  if (a3 / v10 >= self->_minimumAccuracyUncertainty && v9)
  {
    goto LABEL_9;
  }

LABEL_7:
  [(CALayer *)self->_puckLayer opacity];
  v11 = 0;
  v13 = fabsf(v12) < 0.000001;
LABEL_10:
  if (!v13)
  {
    return;
  }

LABEL_11:
  v122[0] = MEMORY[0x1E69E9820];
  v122[1] = 3221225472;
  v122[2] = __80___MKPuckAnnotationView__updatePuckVisibilityForRadius_previousRadius_duration___block_invoke;
  v122[3] = &unk_1E76CDB38;
  v122[4] = self;
  v15 = MEMORY[0x1A58E9F30](v122);
  v121[0] = MEMORY[0x1E69E9820];
  v121[1] = 3221225472;
  v121[2] = __80___MKPuckAnnotationView__updatePuckVisibilityForRadius_previousRadius_duration___block_invoke_2;
  v121[3] = &unk_1E76C9ED8;
  v121[4] = self;
  v16 = MEMORY[0x1A58E9F30](v121);
  if (v11)
  {
    v15[2](v15);
    if (a5 > 0.0)
    {
      v112 = v16;
      v17 = v16[2](v16);
      v110 = self->_puckTransitionContainer;
      objc_storeStrong(&self->_puckTransitionLayer, v17);
      v18 = v17;
      [v18 bounds];
      if (20.0 / (a3 + v19 * -0.5) > 0.400000006 || ([v18 bounds], v21 = 0.150000006, 20.0 / (a3 + v20 * -0.5) > 0.150000006))
      {
        [v18 bounds];
        v21 = 0.400000006;
        if (20.0 / (a3 + v22 * -0.5) <= 0.400000006)
        {
          [v18 bounds];
          v21 = 20.0 / (a3 + v23 * -0.5);
        }
      }

      v24 = [MEMORY[0x1E6979318] animationWithKeyPath:@"bounds"];
      v25 = MEMORY[0x1E696B098];
      [v18 bounds];
      v26 = [v25 valueWithCGRect:?];
      [v24 setFromValue:v26];

      v27 = [MEMORY[0x1E696B098] valueWithCGRect:{0.0, 0.0, a3 + a3, a3 + a3}];
      [v24 setToValue:v27];

      v28 = [MEMORY[0x1E6979318] animationWithKeyPath:@"cornerRadius"];
      v29 = MEMORY[0x1E696AD98];
      [v18 cornerRadius];
      v30 = [v29 numberWithDouble:?];
      [v28 setFromValue:v30];

      v31 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
      [v28 setToValue:v31];

      v32 = [MEMORY[0x1E6979390] animationWithKeyPath:@"opacity"];
      [v32 setValues:&unk_1F1612240];
      v131 = &unk_1F1611668;
      v33 = [MEMORY[0x1E696AD98] numberWithDouble:v21];
      v132 = v33;
      v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v131 count:2];
      [v32 setKeyTimes:v34];

      v35 = [MEMORY[0x1E6979390] animationWithKeyPath:@"borderWidth"];
      v36 = MEMORY[0x1E696AD98];
      [v18 borderWidth];
      v37 = [v36 numberWithDouble:?];
      v128 = v37;
      v38 = [MEMORY[0x1E696AD98] numberWithDouble:4.0];
      v129 = v38;
      v39 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v128 count:2];
      [v35 setValues:v39];

      v40 = [v32 keyTimes];
      [v35 setKeyTimes:v40];

      v41 = [MEMORY[0x1E6979318] animationWithKeyPath:@"shadowPath"];
      [v41 setFromValue:{objc_msgSend(v18, "shadowPath")}];
      v135.origin.x = 0.0;
      v135.origin.y = 0.0;
      v135.size.width = a3 + a3;
      v135.size.height = a3 + a3;
      v42 = CGPathCreateWithEllipseInRect(v135, 0);
      CopyByStrokingPath = CGPathCreateCopyByStrokingPath(v42, 0, 4.0, kCGLineCapRound, kCGLineJoinRound, 0.0);
      [v41 setToValue:CopyByStrokingPath];
      CGPathRelease(CopyByStrokingPath);
      CGPathRelease(v42);
      v44 = [MEMORY[0x1E6979308] animation];
      v123 = v24;
      v124 = v28;
      v125 = v32;
      v126 = v35;
      v127 = v41;
      v45 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v123 count:5];
      [v44 setAnimations:v45];

      [v44 setDuration:a5];
      [v44 setRemovedOnCompletion:1];

      v46 = 0;
      if (self->_displaysPuckAsAccuracy)
      {
        v47 = v18;
        [v47 bounds];
        if (20.0 / (a3 + v48 * -0.5) > 0.400000006 || ([v47 bounds], v50 = 0.150000006, 20.0 / (a3 + v49 * -0.5) > 0.150000006))
        {
          [v47 bounds];
          v50 = 0.400000006;
          if (20.0 / (a3 + v51 * -0.5) <= 0.400000006)
          {
            [v47 bounds];
            v50 = 20.0 / (a3 + v52 * -0.5);
          }
        }

        v46 = [MEMORY[0x1E6979390] animationWithKeyPath:@"opacity"];
        [v46 setValues:&unk_1F1612258];
        v123 = &unk_1F1611668;
        v53 = [MEMORY[0x1E696AD98] numberWithDouble:v50];
        v124 = v53;
        v54 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v123 count:2];
        [v46 setKeyTimes:v54];

        [v46 setDuration:a5];
        [v46 setFillMode:*MEMORY[0x1E69797E0]];
        [v46 setRemovedOnCompletion:1];
      }

      v117[0] = MEMORY[0x1E69E9820];
      v117[1] = 3221225472;
      v117[2] = __80___MKPuckAnnotationView__updatePuckVisibilityForRadius_previousRadius_duration___block_invoke_3;
      v117[3] = &unk_1E76CD370;
      v55 = v18;
      v118 = v55;
      v56 = v110;
      v119 = v56;
      v120 = self;
      [v55 _mapkit_addAnimation:v44 forKey:@"show/hide" completion:v117];
      if (v46)
      {
        [(_MKPuckAccuracyLayer *)self->_accuracyLayer addAnimation:v46 forKey:@"show/hide"];
      }

      v16 = v112;
    }

    v57 = +[MKThreadContext currentContext];
    [v57 _CA_setDisableActions:1];

    [(CALayer *)self->_puckLayer setOpacity:0.0];
    [(CALayer *)self->_pulseLayer setHidden:1];
  }

  else
  {
    if (!v13)
    {
      goto LABEL_44;
    }

    if (a5 > 0.0)
    {
      v15[2](v15);
      v113 = v16;
      v59 = v16[2](v16);
      v111 = self->_puckTransitionContainer;
      objc_storeStrong(&self->_puckTransitionLayer, v59);
      v60 = v59;
      [v60 bounds];
      if (20.0 / (a4 + v61 * -0.5) > 0.400000006 || ([v60 bounds], v63 = 0.150000006, 20.0 / (a4 + v62 * -0.5) > 0.150000006))
      {
        [v60 bounds];
        v63 = 0.400000006;
        if (20.0 / (a4 + v64 * -0.5) <= 0.400000006)
        {
          [v60 bounds];
          v63 = 20.0 / (a4 + v65 * -0.5);
        }
      }

      v66 = [MEMORY[0x1E6979318] animationWithKeyPath:@"bounds"];
      v67 = [MEMORY[0x1E696B098] valueWithCGRect:{0.0, 0.0, a4 + a4, a4 + a4}];
      v108 = v66;
      [v66 setFromValue:v67];

      v68 = MEMORY[0x1E696B098];
      [v60 bounds];
      v69 = [v68 valueWithCGRect:?];
      [v66 setToValue:v69];

      v70 = [MEMORY[0x1E6979318] animationWithKeyPath:@"cornerRadius"];
      v71 = [MEMORY[0x1E696AD98] numberWithDouble:a4];
      v106 = v70;
      [v70 setFromValue:v71];

      v72 = MEMORY[0x1E696AD98];
      [v60 cornerRadius];
      v73 = [v72 numberWithDouble:?];
      [v70 setToValue:v73];

      v74 = [MEMORY[0x1E6979390] animationWithKeyPath:@"opacity"];
      [v74 setValues:&unk_1F1612270];
      v131 = &unk_1F1611668;
      v75 = [MEMORY[0x1E696AD98] numberWithDouble:1.0 - v63];
      v132 = v75;
      v133 = &unk_1F1611680;
      v76 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v131 count:3];
      [v74 setKeyTimes:v76];

      v77 = [MEMORY[0x1E6979390] animationWithKeyPath:@"borderWidth"];
      v78 = [MEMORY[0x1E696AD98] numberWithDouble:4.0];
      v128 = v78;
      v79 = [MEMORY[0x1E696AD98] numberWithDouble:4.0];
      v129 = v79;
      v80 = MEMORY[0x1E696AD98];
      [v60 borderWidth];
      v81 = [v80 numberWithDouble:?];
      v130 = v81;
      v82 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v128 count:3];
      [v77 setValues:v82];

      v83 = [v74 keyTimes];
      [v77 setKeyTimes:v83];

      v84 = [MEMORY[0x1E6979318] animationWithKeyPath:@"shadowPath"];
      [v84 setToValue:{objc_msgSend(v60, "shadowPath")}];
      v136.origin.x = 0.0;
      v136.origin.y = 0.0;
      v136.size.width = a4 + a4;
      v136.size.height = a4 + a4;
      v85 = CGPathCreateWithEllipseInRect(v136, 0);
      v86 = CGPathCreateCopyByStrokingPath(v85, 0, 4.0, kCGLineCapRound, kCGLineJoinRound, 0.0);
      [v84 setFromValue:v86];
      CGPathRelease(v86);
      CGPathRelease(v85);
      [MEMORY[0x1E6979308] animation];
      v88 = v87 = v60;
      v123 = v108;
      v124 = v106;
      v125 = v74;
      v126 = v77;
      v127 = v84;
      v89 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v123 count:5];
      [v88 setAnimations:v89];

      [v88 setDuration:a5];
      v109 = *MEMORY[0x1E69797F0];
      [v88 setFillMode:?];
      v107 = v88;
      [v88 setRemovedOnCompletion:0];

      v90 = 0;
      if (self->_displaysPuckAsAccuracy)
      {
        v91 = v87;
        [v91 bounds];
        if (20.0 / (a4 + v92 * -0.5) > 0.400000006 || ([v91 bounds], v94 = 0.150000006, 20.0 / (a4 + v93 * -0.5) > 0.150000006))
        {
          [v91 bounds];
          v94 = 0.400000006;
          if (20.0 / (a4 + v95 * -0.5) <= 0.400000006)
          {
            [v91 bounds];
            v94 = 20.0 / (a4 + v96 * -0.5);
          }
        }

        v90 = [MEMORY[0x1E6979390] animationWithKeyPath:@"opacity"];
        [v90 setValues:&unk_1F1612288];
        v123 = &unk_1F1611668;
        v97 = [MEMORY[0x1E696AD98] numberWithDouble:1.0 - v94];
        v124 = v97;
        v125 = &unk_1F1611680;
        v98 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v123 count:3];
        [v90 setKeyTimes:v98];

        [v90 setDuration:a5];
        [v90 setFillMode:*MEMORY[0x1E69797E0]];
        [v90 setRemovedOnCompletion:0];
      }

      [v87 setOpacity:0.0];
      v114[0] = MEMORY[0x1E69E9820];
      v114[1] = 3221225472;
      v114[2] = __80___MKPuckAnnotationView__updatePuckVisibilityForRadius_previousRadius_duration___block_invoke_4;
      v114[3] = &unk_1E76CD370;
      v114[4] = self;
      v58 = v87;
      v115 = v58;
      v99 = v111;
      v116 = v99;
      [v58 _mapkit_addAnimation:v107 forKey:@"show/hide" completion:v114];
      v100 = [MEMORY[0x1E6979318] animationWithKeyPath:@"opacity"];
      [v100 setDuration:a5];
      [v100 setFromValue:&unk_1F1611668];
      [v100 setToValue:&unk_1F1611668];
      [v100 setRemovedOnCompletion:1];
      [v100 setFillMode:v109];
      [(CALayer *)self->_puckLayer addAnimation:v100 forKey:@"show/hide"];
      if (v90)
      {
        [(_MKPuckAccuracyLayer *)self->_accuracyLayer addAnimation:v90 forKey:@"show/hide"];
      }

      v101 = +[MKThreadContext currentContext];
      [v101 _CA_setDisableActions:1];

      LODWORD(v102) = 1.0;
      [(CALayer *)self->_puckLayer setOpacity:v102];
      v103 = +[MKThreadContext currentContext];
      [v103 _CA_setDisableActions:0];

      v16 = v113;
      goto LABEL_28;
    }

    v104 = +[MKThreadContext currentContext];
    [v104 _CA_setDisableActions:1];

    v15[2](v15);
    LODWORD(v105) = 1.0;
    [(CALayer *)self->_puckLayer setOpacity:v105];
    [(CALayer *)self->_pulseLayer setHidden:0];
  }

  v58 = +[MKThreadContext currentContext];
  [v58 _CA_setDisableActions:0];
LABEL_28:

  [(_MKPuckAnnotationView *)self _updateShowHeadingLayerAnimatedIfPossible:1];
LABEL_44:
}

- (id)_createFakePuckLayer
{
  v3 = [MEMORY[0x1E6979398] layer];
  v4 = [MEMORY[0x1E69DD1B8] currentTraitCollection];
  v5 = [(_MKPuckAnnotationView *)self traitCollection];
  [MEMORY[0x1E69DD1B8] setCurrentTraitCollection:v5];

  [objc_opt_class() baseDiameter];
  v7 = v6;
  [objc_opt_class() innerDiameter];
  puckScale = self->_puckScale;
  v10 = v7 * puckScale;
  v11 = (v7 - v8) * 0.5 * puckScale;
  [(MKAnnotationView *)self _mapPitchRadians];
  v13 = v12;
  [v3 setName:@"accuracyTransition"];
  [v3 setBounds:{0.0, 0.0, v10, v10}];
  [v3 bounds];
  [v3 setCornerRadius:CGRectGetWidth(v26) * 0.5];
  [v3 setBorderWidth:v11];
  v14 = 0.0;
  [v3 setOpacity:0.0];
  v15 = _MKPuckAnnotationViewBaseColor([(MKAnnotationView *)self _mapType], self->_displaysPuckAsAccuracy);
  [v3 setBorderColor:{objc_msgSend(v15, "CGColor")}];

  v16 = [(_MKPuckAnnotationView *)self _currentInnerColor];
  [v3 setBackgroundColor:{objc_msgSend(v16, "CGColor")}];

  [v3 setMasksToBounds:0];
  [v3 setShadowOffset:{0.0, 1.0}];
  [objc_opt_class() shadowBlur];
  [v3 setShadowRadius:v17 * 0.5];
  v18 = [MEMORY[0x1E69DC888] _mapkit_colorNamed:@"PuckShadowColor"];
  [v3 setShadowColor:{objc_msgSend(v18, "CGColor")}];

  v19 = fabs(v13);
  if (v19 < 0.000001)
  {
    if (self->_useDarkAppearance)
    {
      v20 = 0.300000012;
    }

    else
    {
      v20 = 0.25;
    }

    v21 = 1.0 - cos(v13);
    v19 = v21 * 0.5 + (1.0 - v21) * v20;
    v14 = v19;
  }

  *&v19 = v14;
  [v3 setShadowOpacity:v19];
  [v3 _mapkit_setActionsToRemoveDefaultImplicitActions];
  [v3 bounds];
  v22 = CGPathCreateWithEllipseInRect(v27, 0);
  CopyByStrokingPath = CGPathCreateCopyByStrokingPath(v22, 0, 4.0, kCGLineCapRound, kCGLineJoinRound, 0.0);
  [v3 setShadowPath:CopyByStrokingPath];
  CGPathRelease(CopyByStrokingPath);
  CGPathRelease(v22);
  [MEMORY[0x1E69DD1B8] setCurrentTraitCollection:v4];

  return v3;
}

- (void)_setMapDisplayStyle:(id)a3
{
  v3 = *&a3.var0;
  if ((([(MKAnnotationView *)self _mapDisplayStyle]^ *&a3.var0) & 0x1FFFFFFFFFFLL) != 0)
  {
    v5 = [(MKAnnotationView *)self _mapDisplayStyle];
    v6.receiver = self;
    v6.super_class = _MKPuckAnnotationView;
    [(MKAnnotationView *)&v6 _setMapDisplayStyle:v3 & 0xFFFFFFFFFFFFLL];
    if ((v3 == 1) == (v5 != 1))
    {
      [(_MKPuckAnnotationView *)self _updatePulseColor];
      [(_MKPuckAnnotationView *)self _updateInnerImage];
    }
  }
}

- (void)_setMapType:(unint64_t)a3
{
  v7.receiver = self;
  v7.super_class = _MKPuckAnnotationView;
  [(MKAnnotationView *)&v7 _setMapType:?];
  [(_MKPuckAnnotationView *)self _updatePulseColor];
  [(_MKPuckAccuracyLayer *)self->_accuracyLayer setMapType:a3];
  [(MKUserLocationHeadingIndicator *)self->_headingLayer setMapType:a3];
  if (a3 == 107)
  {
    v5 = 2;
  }

  else
  {
    v5 = 0;
  }

  if (a3 - 1 >= 4)
  {
    v6 = v5;
  }

  else
  {
    v6 = 2;
  }

  [(_MKPuckAnnotationView *)self _setOverrideUserInterfaceStyle:v6];
}

- (void)setDisplayPriority:(float)a3
{
  v5.receiver = self;
  v5.super_class = _MKPuckAnnotationView;
  [(MKAnnotationView *)&v5 setDisplayPriority:?];
  if (!_MKLinkedOnOrAfterReleaseSet(2824) && !self->_hasExplicitCollisionMode)
  {
    v4 = 2;
    if (self->super._displayPriority < 1000.0)
    {
      v4 = 1;
    }

    self->super._collisionMode = v4;
  }
}

- (int64_t)collisionMode
{
  if (_MKLinkedOnOrAfterReleaseSet(2824))
  {
    v5 = self;
    v3 = &v5;
LABEL_5:
    v3->super_class = _MKPuckAnnotationView;
    return [(objc_super *)v3 collisionMode];
  }

  if (self->_hasExplicitCollisionMode)
  {
    v6.receiver = self;
    v3 = &v6;
    goto LABEL_5;
  }

  return 1;
}

- (void)setCollisionMode:(int64_t)a3
{
  self->_hasExplicitCollisionMode = 1;
  v3.receiver = self;
  v3.super_class = _MKPuckAnnotationView;
  [(MKAnnotationView *)&v3 setCollisionMode:a3];
}

- (CGRect)_significantBounds
{
  if (self->_shouldHidePuckWhenAccuracyVisible && ([(CALayer *)self->_puckLayer opacity], fabsf(v3) < 0.000001))
  {
    accuracyLayer = self->_accuracyLayer;
    [(_MKPuckAccuracyLayer *)accuracyLayer significantBounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v13 = [(_MKPuckAnnotationView *)self layer];
    [(_MKPuckAccuracyLayer *)accuracyLayer convertRect:v13 toLayer:v6, v8, v10, v12];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;
  }

  else
  {
    v30.receiver = self;
    v30.super_class = _MKPuckAnnotationView;
    [(MKAnnotationView *)&v30 _significantBounds];
    v15 = v22;
    v17 = v23;
    v19 = v24;
    v21 = v25;
  }

  v26 = v15;
  v27 = v17;
  v28 = v19;
  v29 = v21;
  result.size.height = v29;
  result.size.width = v28;
  result.origin.y = v27;
  result.origin.x = v26;
  return result;
}

- (float)_selectionPriority
{
  v8.receiver = self;
  v8.super_class = _MKPuckAnnotationView;
  [(MKAnnotationView *)&v8 _selectionPriority];
  v4 = v3;
  if (v3 != 1000.0)
  {
    return v4;
  }

  if (!self->_shouldHidePuckWhenAccuracyVisible)
  {
    return v4;
  }

  [(CALayer *)self->_puckLayer opacity];
  v6 = fabsf(v5);
  result = 0.0;
  if (v6 >= 0.000001)
  {
    return v4;
  }

  return result;
}

- (BOOL)_isSelectable
{
  if (self->_shouldHidePuckWhenAccuracyVisible)
  {
    [(CALayer *)self->_puckLayer opacity];
    if (fabsf(v3) < 0.01)
    {
      [(_MKPuckAccuracyLayer *)self->_accuracyLayer presentationFillOpacity];
      if (v4 < 0.100000001)
      {
        return 0;
      }
    }
  }

  v6.receiver = self;
  v6.super_class = _MKPuckAnnotationView;
  return [(MKAnnotationView *)&v6 _isSelectable];
}

- (void)setAlpha:(double)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = MKGetUserLocationViewLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v8 = a3;
    _os_log_impl(&dword_1A2EA0000, v5, OS_LOG_TYPE_INFO, "MKPuckAnnotationView setting alpha: %f", buf, 0xCu);
  }

  v6.receiver = self;
  v6.super_class = _MKPuckAnnotationView;
  [(MKAnnotationView *)&v6 setAlpha:a3];
}

- (void)dealloc
{
  GEOConfigRemoveBlockListener();
  GEOConfigRemoveBlockListener();
  GEOConfigRemoveBlockListener();
  MapsFeatureFlag_RemoveBlockListener();
  v3.receiver = self;
  v3.super_class = _MKPuckAnnotationView;
  [(MKAnnotationView *)&v3 dealloc];
}

- (_MKPuckAnnotationView)initWithAnnotation:(id)a3 reuseIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v45.receiver = self;
  v45.super_class = _MKPuckAnnotationView;
  v8 = [(MKAnnotationView *)&v45 initWithAnnotation:v6 reuseIdentifier:v7];
  v9 = v8;
  if (v8)
  {
    [(MKAnnotationView *)v8 setCanShowCallout:1];
    v9->_shouldHidePuckWhenAccuracyVisible = 0;
    v9->_canShowHeadingIndicator = 1;
    v9->_allowsAccuracyRing = 1;
    v9->_effectsEnabled = 1;
    v9->_shouldShowDynamicLocationAnimations = 1;
    v9->_shouldDisplayInaccurateHeading = 1;
    v9->_puckScale = 1.0;
    v9->super._collisionMode = 2;
    v10 = [MEMORY[0x1E69DC888] whiteColor];
    glyphTintColor = v9->_glyphTintColor;
    v9->_glyphTintColor = v10;

    [objc_opt_class() _calloutOffset];
    [(MKAnnotationView *)v9 setCalloutOffset:?];
    objc_initWeak(&location, v9);
    v12 = MEMORY[0x1E69E96A0];
    v42[1] = MEMORY[0x1E69E9820];
    v42[2] = 3221225472;
    v42[3] = __60___MKPuckAnnotationView_initWithAnnotation_reuseIdentifier___block_invoke;
    v42[4] = &unk_1E76C9E60;
    objc_copyWeak(&v43, &location);
    v13 = _GEOConfigAddBlockListenerForKey();
    newPuckConfigListener = v9->_newPuckConfigListener;
    v9->_newPuckConfigListener = v13;

    [(_MKPuckAnnotationView *)v9 _updateLegacyConfiguration];
    v41[0] = MEMORY[0x1E69E9820];
    v41[1] = 3221225472;
    v41[2] = __60___MKPuckAnnotationView_initWithAnnotation_reuseIdentifier___block_invoke_2;
    v41[3] = &unk_1E76CD1C0;
    objc_copyWeak(v42, &location);
    v15 = MEMORY[0x1A58E9F30](v41);
    v36 = MEMORY[0x1E69E9820];
    v37 = 3221225472;
    v38 = __60___MKPuckAnnotationView_initWithAnnotation_reuseIdentifier___block_invoke_3;
    v39 = &unk_1E76C9E88;
    v16 = v15;
    v40 = v16;
    v17 = _GEOConfigAddBlockListenerForKey();
    faux3DPuckConfigListener = v9->_faux3DPuckConfigListener;
    v9->_faux3DPuckConfigListener = v17;

    v34[1] = MEMORY[0x1E69E9820];
    v34[2] = 3221225472;
    v34[3] = __60___MKPuckAnnotationView_initWithAnnotation_reuseIdentifier___block_invoke_4;
    v34[4] = &unk_1E76C9EB0;
    v19 = v16;
    v35 = v19;
    v20 = MapsFeature_AddBlockListener();
    shelbyvilleConfigListener = v9->_shelbyvilleConfigListener;
    v9->_shelbyvilleConfigListener = v20;

    v22 = _MKLinkedOnOrAfterReleaseSet(3081);
    if (v22)
    {
      LOBYTE(v22) = GEOConfigGetBOOL();
    }

    v9->_faux3DEnabled = v22;
    v33[1] = MEMORY[0x1E69E9820];
    v33[2] = 3221225472;
    v33[3] = __60___MKPuckAnnotationView_initWithAnnotation_reuseIdentifier___block_invoke_5;
    v33[4] = &unk_1E76C9E60;
    objc_copyWeak(v34, &location);
    v23 = _GEOConfigAddBlockListenerForKey();
    minAccuracyConfigListener = v9->_minAccuracyConfigListener;
    v9->_minAccuracyConfigListener = v23;

    GEOConfigGetDouble();
    v9->_minimumAccuracyRadius = v25;
    v32 = MEMORY[0x1E69E9820];
    objc_copyWeak(v33, &location);
    v26 = _GEOConfigAddBlockListenerForKey();
    minUncertaintyConfigListener = v9->_minUncertaintyConfigListener;
    v9->_minUncertaintyConfigListener = v26;

    GEOConfigGetDouble();
    v9->_minimumAccuracyUncertainty = v28;
    [(_MKPuckAnnotationView *)v9 _setupLayers:v32];
    [(_MKPuckAnnotationView *)v9 setShouldInnerPulse:1];
    v29 = [MEMORY[0x1E69DD1B8] systemTraitsAffectingColorAppearance];
    v30 = [(_MKPuckAnnotationView *)v9 registerForTraitChanges:v29 withAction:sel_traitEnvironment_didChangeTraitCollection_];

    [(MKAnnotationView *)v9 setZPriority:0.0];
    objc_destroyWeak(v33);
    objc_destroyWeak(v34);

    objc_destroyWeak(v42);
    objc_destroyWeak(&v43);
    objc_destroyWeak(&location);
  }

  return v9;
}

@end