@interface MKUserLocationHeadingConeLayer
- (BOOL)_shouldShowHeadingForAccuracy:(double)a3;
- (MKUserLocationHeadingConeLayer)initWithUserLocationView:(id)a3 shouldMatchAccuracyRadius:(BOOL)a4 minimumPresentationAngle:(double)a5;
- (double)_opacityForAccuracy:(double)a3 locationAccuracy:(double)a4;
- (id)_accuracyGradientLocationsForAccuracyRadius:(double)a3;
- (id)_colorsForAccuracyRadius:(double)a3;
- (void)_animateToOpacity:(double)a3 completion:(id)a4;
- (void)_createMaskLayer;
- (void)_updateColors;
- (void)_updateHeadingMaskForAccuracy:(double)halfMinAngle previousAccuracy:(double)a4;
- (void)_updateShowHeadingForAccuracy:(double)a3;
- (void)animateToSetVisible:(BOOL)a3 completion:(id)a4;
- (void)setAccuracyRadius:(double)a3 duration:(double)a4;
- (void)setMapType:(unint64_t)a3;
- (void)setTraitCollection:(id)a3;
- (void)updateHeading:(double)a3;
- (void)updateHeadingAccuracy:(double)a3 previousAccuracy:(double)a4;
- (void)updateTintColor:(id)a3;
@end

@implementation MKUserLocationHeadingConeLayer

- (void)_createMaskLayer
{
  v3 = [MEMORY[0x1E69794A0] layer];
  maskLayer = self->_maskLayer;
  self->_maskLayer = v3;

  WeakRetained = objc_loadWeakRetained(&self->_userLocationView);
  [objc_opt_class() baseDiameter];
  v7 = v6;

  [(CAShapeLayer *)self->_maskLayer setBounds:0.0, 0.0, v7 + 33.0, v7 + 33.0];
  [(MKUserLocationHeadingConeLayer *)self bounds];
  MidX = CGRectGetMidX(v14);
  [(MKUserLocationHeadingConeLayer *)self bounds];
  [(CAShapeLayer *)self->_maskLayer setPosition:MidX, CGRectGetMidY(v15)];
  [(CAShapeLayer *)self->_maskLayer setAnchorPoint:0.5, 0.5];
  [(CAShapeLayer *)self->_maskLayer setFillColor:0];
  v9 = [MEMORY[0x1E69DC888] blackColor];
  -[CAShapeLayer setStrokeColor:](self->_maskLayer, "setStrokeColor:", [v9 CGColor]);

  [(CAShapeLayer *)self->_maskLayer setLineWidth:33.0];
  v10 = MEMORY[0x1E69DC728];
  [(CAShapeLayer *)self->_maskLayer bounds];
  v11 = [v10 bezierPathWithOvalInRect:?];
  -[CAShapeLayer setPath:](self->_maskLayer, "setPath:", [v11 CGPath]);

  v12 = self->_maskLayer;

  [(MKUserLocationHeadingConeLayer *)self setMask:v12];
}

- (void)_updateColors
{
  v5 = [MEMORY[0x1E69DD1B8] currentTraitCollection];
  [MEMORY[0x1E69DD1B8] setCurrentTraitCollection:self->_traitCollection];
  v3 = [(MKUserLocationHeadingConeLayer *)self _colorsForAccuracyRadius:self->_lastAccuracyRadius];
  [(CAGradientLayer *)self setColors:v3];

  v4 = [(MKUserLocationHeadingConeLayer *)self _accuracyGradientLocationsForAccuracyRadius:self->_lastAccuracyRadius];
  [(CAGradientLayer *)self setLocations:v4];

  [MEMORY[0x1E69DD1B8] setCurrentTraitCollection:v5];
}

- (void)animateToSetVisible:(BOOL)a3 completion:(id)a4
{
  v6 = a4;
  if (a3)
  {
    v7 = v6;
    [(MKUserLocationHeadingConeLayer *)self _opacityForAccuracy:self->_headingAccuracy locationAccuracy:self->_lastAccuracyRadius];
    [(MKUserLocationHeadingConeLayer *)self _animateToOpacity:v7 completion:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_6;
    }

    v7 = v6;
    (*(v6 + 2))(v6, 1);
  }

  v6 = v7;
LABEL_6:
}

- (void)setAccuracyRadius:(double)a3 duration:(double)a4
{
  v123[3] = *MEMORY[0x1E69E9840];
  if (!self->_shouldMatchAccuracyRadius)
  {
    return;
  }

  lastAccuracyRadius = self->_lastAccuracyRadius;
  minimumAccuracyRadius = self->_minimumAccuracyRadius;
  if (minimumAccuracyRadius <= a3)
  {
    v8 = a3;
  }

  else
  {
    v8 = self->_minimumAccuracyRadius;
  }

  if (lastAccuracyRadius <= minimumAccuracyRadius && minimumAccuracyRadius >= a3)
  {
    self->_lastAccuracyRadius = v8;
    return;
  }

  if (minimumAccuracyRadius < a3)
  {
    v109 = v8 + 18.0;
    v14 = v109 + v109;
    v15 = (v8 + 18.0) * 0.5 + (v8 + 18.0) * 0.5;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_userLocationView);
    [objc_opt_class() baseDiameter];
    v13 = v12;

    v14 = v13 + 66.0;
    v109 = 33.0;
    v15 = v13 + 33.0;
  }

  v16 = 0.0;
  v124.origin.x = 0.0;
  v124.origin.y = 0.0;
  v124.size.width = v14;
  v124.size.height = v14;
  MidX = CGRectGetMidX(v124);
  v125.origin.x = 0.0;
  v125.origin.y = 0.0;
  v125.size.width = v14;
  v125.size.height = v14;
  MidY = CGRectGetMidY(v125);
  v17 = [MEMORY[0x1E69DC728] bezierPathWithOvalInRect:{0.0, 0.0, v15, v15}];
  v18 = CGPathRetain([v17 CGPath]);

  if (a4 <= 0.0)
  {
    v19 = [(MKUserLocationHeadingConeLayer *)self animationForKey:@"accuracy"];
    v20 = v19;
    v106 = 0.0;
    if (v19)
    {
      [v19 beginTime];
      v106 = v21;
      [(MKUserLocationHeadingConeLayer *)self convertTime:0 fromLayer:CACurrentMediaTime()];
      v23 = v22;
      [v20 beginTime];
      v25 = v23 - v24;
      [v20 timeOffset];
      v16 = v25 - v26;
      [v20 duration];
      a4 = v27;
    }
  }

  else
  {
    v106 = 0.0;
  }

  [(MKUserLocationHeadingConeLayer *)self removeAnimationForKey:@"accuracy"];
  [(CAShapeLayer *)self->_maskLayer removeAnimationForKey:@"accuracy"];
  v28 = [(MKUserLocationHeadingConeLayer *)self _accuracyGradientLocationsForAccuracyRadius:v8];
  v29 = [MEMORY[0x1E69DD1B8] currentTraitCollection];
  [MEMORY[0x1E69DD1B8] setCurrentTraitCollection:self->_traitCollection];
  if (lastAccuracyRadius <= minimumAccuracyRadius == minimumAccuracyRadius >= a3)
  {
    v30 = 0;
  }

  else
  {
    v30 = [(MKUserLocationHeadingConeLayer *)self _colorsForAccuracyRadius:v8];
  }

  [MEMORY[0x1E69DD1B8] setCurrentTraitCollection:v29];
  if (a4 > 0.0)
  {
    v103 = v30;
    v104 = v28;
    v105 = v18;
    v102 = v29;
    v123[0] = &unk_1F1611CB0;
    v31 = v16 / a4;
    v32 = [MEMORY[0x1E696AD98] numberWithDouble:v31];
    v123[1] = v32;
    v123[2] = &unk_1F1611C98;
    v110 = [MEMORY[0x1E695DEC8] arrayWithObjects:v123 count:3];

    v33 = [MEMORY[0x1E6979390] animationWithKeyPath:@"bounds"];
    v34 = MEMORY[0x1E696B098];
    v35 = [(CALayer *)self currentLayer];
    [v35 bounds];
    v36 = [v34 valueWithCGRect:?];
    v122[0] = v36;
    v37 = MEMORY[0x1E696B098];
    v38 = [(CALayer *)self currentLayer];
    [v38 bounds];
    v39 = [v37 valueWithCGRect:?];
    v122[1] = v39;
    v40 = [MEMORY[0x1E696B098] valueWithCGRect:{0.0, 0.0, v14, v14}];
    v122[2] = v40;
    v41 = [MEMORY[0x1E695DEC8] arrayWithObjects:v122 count:3];
    [v33 setValues:v41];

    [v33 setKeyTimes:v110];
    v42 = v33;
    v43 = v42;
    if (!self->_shouldMatchAccuracyRadius)
    {
LABEL_39:
      [v43 setRemovedOnCompletion:1];
      [v43 setDuration:a4];
      if (v106 > 0.0)
      {
        [v43 setBeginTime:v106];
      }

      [(MKUserLocationHeadingConeLayer *)self addAnimation:v43 forKey:@"accuracy"];

      v68 = [MEMORY[0x1E6979390] animationWithKeyPath:@"bounds"];
      v69 = MEMORY[0x1E696B098];
      v70 = [(CAShapeLayer *)self->_maskLayer currentLayer];
      [v70 bounds];
      v71 = [v69 valueWithCGRect:?];
      v115[0] = v71;
      v72 = MEMORY[0x1E696B098];
      v73 = [(CAShapeLayer *)self->_maskLayer currentLayer];
      [v73 bounds];
      v74 = [v72 valueWithCGRect:?];
      v115[1] = v74;
      v75 = [MEMORY[0x1E696B098] valueWithCGRect:{0.0, 0.0, v15, v15}];
      v115[2] = v75;
      v76 = [MEMORY[0x1E695DEC8] arrayWithObjects:v115 count:3];
      v101 = v68;
      [v68 setValues:v76];

      [v68 setKeyTimes:v110];
      v77 = [MEMORY[0x1E6979390] animationWithKeyPath:@"position"];
      v78 = MEMORY[0x1E696B098];
      v79 = [(CAShapeLayer *)self->_maskLayer currentLayer];
      [v79 position];
      v80 = [v78 valueWithCGPoint:?];
      v114[0] = v80;
      v81 = MEMORY[0x1E696B098];
      v82 = [(CAShapeLayer *)self->_maskLayer currentLayer];
      [v82 position];
      v83 = [v81 valueWithCGPoint:?];
      v114[1] = v83;
      v61 = MidY;
      v60 = MidX;
      v84 = [MEMORY[0x1E696B098] valueWithCGPoint:{MidX, MidY}];
      v114[2] = v84;
      v85 = [MEMORY[0x1E695DEC8] arrayWithObjects:v114 count:3];
      [v77 setValues:v85];

      [v77 setKeyTimes:v110];
      v86 = [MEMORY[0x1E6979390] animationWithKeyPath:@"path"];
      v87 = [(CAShapeLayer *)self->_maskLayer currentLayer];
      v113[0] = [v87 path];
      v88 = [(CAShapeLayer *)self->_maskLayer currentLayer];
      v113[1] = [v88 path];
      v113[2] = v105;
      v89 = [MEMORY[0x1E695DEC8] arrayWithObjects:v113 count:3];
      [v86 setValues:v89];

      [v86 setKeyTimes:v110];
      v90 = [MEMORY[0x1E6979390] animationWithKeyPath:@"lineWidth"];
      v91 = MEMORY[0x1E696AD98];
      v92 = [(CAShapeLayer *)self->_maskLayer currentLayer];
      [v92 lineWidth];
      v93 = [v91 numberWithDouble:?];
      v112[0] = v93;
      v94 = MEMORY[0x1E696AD98];
      v95 = [(CAShapeLayer *)self->_maskLayer currentLayer];
      [v95 lineWidth];
      v96 = [v94 numberWithDouble:?];
      v112[1] = v96;
      v59 = v109;
      v97 = [MEMORY[0x1E696AD98] numberWithDouble:v109];
      v112[2] = v97;
      v98 = [MEMORY[0x1E695DEC8] arrayWithObjects:v112 count:3];
      [v90 setValues:v98];

      [v90 setKeyTimes:v110];
      v99 = [MEMORY[0x1E6979308] animation];
      v111[0] = v101;
      v111[1] = v77;
      v111[2] = v86;
      v111[3] = v90;
      v100 = [MEMORY[0x1E695DEC8] arrayWithObjects:v111 count:4];
      [v99 setAnimations:v100];

      [v99 setRemovedOnCompletion:1];
      [v99 setDuration:a4];
      if (v106 > 0.0)
      {
        [v99 setBeginTime:v106];
      }

      [(CAShapeLayer *)self->_maskLayer addAnimation:v99 forKey:@"accuracy"];

      v18 = v105;
      v30 = v103;
      v28 = v104;
      v29 = v102;
      goto LABEL_44;
    }

    v44 = [MEMORY[0x1E6979390] animationWithKeyPath:@"locations"];
    v45 = [(CALayer *)self currentLayer];
    v46 = [v45 locations];
    v121[0] = v46;
    v47 = [(CALayer *)self currentLayer];
    v48 = [v47 locations];
    v121[1] = v48;
    v121[2] = v104;
    v49 = [MEMORY[0x1E695DEC8] arrayWithObjects:v121 count:3];
    [v44 setValues:v49];

    [v44 setKeyTimes:v110];
    if (v103)
    {
      v50 = [MEMORY[0x1E6979390] animationWithKeyPath:@"colors"];
      v51 = [(CALayer *)self currentLayer];
      v52 = [v51 colors];
      v120[0] = v52;
      v53 = [(CALayer *)self currentLayer];
      v54 = [v53 colors];
      v120[1] = v54;
      v120[2] = v103;
      v55 = [MEMORY[0x1E695DEC8] arrayWithObjects:v120 count:3];
      [v50 setValues:v55];

      if (minimumAccuracyRadius >= a3)
      {
        v119[0] = &unk_1F1611CB0;
        v56 = 0.6;
        if (v31 >= 0.6)
        {
          v56 = v31;
        }

        v57 = [MEMORY[0x1E696AD98] numberWithDouble:v56];
        v119[1] = v57;
        v119[2] = &unk_1F1611C98;
        v58 = [MEMORY[0x1E695DEC8] arrayWithObjects:v119 count:3];
        [v50 setKeyTimes:v58];
LABEL_34:

        goto LABEL_35;
      }

      if (lastAccuracyRadius <= minimumAccuracyRadius)
      {
        v118[0] = &unk_1F1611CB0;
        v57 = [MEMORY[0x1E696AD98] numberWithDouble:v31];
        v118[1] = v57;
        v62 = 0.4;
        if (v31 >= 0.4)
        {
          v62 = v31;
        }

        v58 = [MEMORY[0x1E696AD98] numberWithDouble:v62];
        v118[2] = v58;
        v63 = [MEMORY[0x1E695DEC8] arrayWithObjects:v118 count:3];
        [v50 setKeyTimes:v63];

        goto LABEL_34;
      }
    }

    else
    {
      v50 = 0;
    }

LABEL_35:
    v43 = [MEMORY[0x1E6979308] animation];
    if (v50)
    {
      v117[0] = v42;
      v117[1] = v44;
      v117[2] = v50;
      v64 = MEMORY[0x1E695DEC8];
      v65 = v117;
      v66 = 3;
    }

    else
    {
      v116[0] = v42;
      v116[1] = v44;
      v64 = MEMORY[0x1E695DEC8];
      v65 = v116;
      v66 = 2;
    }

    v67 = [v64 arrayWithObjects:v65 count:v66];
    [v43 setAnimations:v67];

    goto LABEL_39;
  }

  v60 = MidX;
  v59 = v109;
  v61 = MidY;
LABEL_44:
  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] setDisableActions:1];
  [(MKUserLocationHeadingConeLayer *)self setBounds:0.0, 0.0, v14, v14];
  [(CAShapeLayer *)self->_maskLayer setBounds:0.0, 0.0, v15, v15];
  [(CAShapeLayer *)self->_maskLayer setPosition:v60, v61];
  [(CAShapeLayer *)self->_maskLayer setPath:v18];
  [(CAShapeLayer *)self->_maskLayer setLineWidth:v59];
  self->_lastAccuracyRadius = v8;
  if (self->_shouldMatchAccuracyRadius)
  {
    [(CAGradientLayer *)self setLocations:v28];
    if (v30)
    {
      [(CAGradientLayer *)self setColors:v30];
    }
  }

  [MEMORY[0x1E6979518] commit];
  CGPathRelease(v18);
}

- (void)_animateToOpacity:(double)a3 completion:(id)a4
{
  v6 = MEMORY[0x1E6979318];
  v7 = a4;
  v16 = [v6 animationWithKeyPath:@"opacity"];
  v8 = MEMORY[0x1E696AD98];
  v9 = [(CALayer *)self currentLayer];
  [v9 opacity];
  v10 = [v8 numberWithFloat:?];
  [v16 setFromValue:v10];

  v11 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  [v16 setToValue:v11];

  [v16 setFillMode:*MEMORY[0x1E69797E8]];
  [v16 setDuration:0.5];
  v12 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979ED8]];
  [v16 setTimingFunction:v12];

  [v16 setRemovedOnCompletion:1];
  [(CALayer *)self _mapkit_addAnimation:v16 forKey:@"fadeAnimation" completion:v7];

  v13 = +[MKThreadContext currentContext];
  [v13 _CA_setDisableActions:1];

  *&v14 = a3;
  [(MKUserLocationHeadingConeLayer *)self setOpacity:v14];
  v15 = +[MKThreadContext currentContext];
  [v15 _CA_setDisableActions:0];
}

- (double)_opacityForAccuracy:(double)a3 locationAccuracy:(double)a4
{
  v4 = [(MKUserLocationHeadingConeLayer *)self _shouldShowHeadingForAccuracy:self->_headingAccuracy, a4];
  result = 0.0;
  if (v4)
  {
    return 1.0;
  }

  return result;
}

- (void)_updateShowHeadingForAccuracy:(double)a3
{
  [(MKUserLocationHeadingConeLayer *)self _opacityForAccuracy:a3 locationAccuracy:self->_lastAccuracyRadius];
  v5 = v4;
  [(MKUserLocationHeadingConeLayer *)self opacity];
  if (vabdd_f64(v5, v6) >= 0.01)
  {
    v7 = [(MKUserLocationHeadingConeLayer *)self superlayer];

    if (v7)
    {

      [(MKUserLocationHeadingConeLayer *)self _animateToOpacity:0 completion:v5];
    }

    else
    {
      v8 = +[MKThreadContext currentContext];
      [v8 _CA_setDisableActions:1];

      *&v9 = v5;
      [(MKUserLocationHeadingConeLayer *)self setOpacity:v9];
      v10 = +[MKThreadContext currentContext];
      [v10 _CA_setDisableActions:0];
    }
  }
}

- (void)_updateHeadingMaskForAccuracy:(double)halfMinAngle previousAccuracy:(double)a4
{
  v24[2] = *MEMORY[0x1E69E9840];
  if (halfMinAngle < 0.0)
  {
    halfMinAngle = 180.0;
  }

  if (halfMinAngle <= self->_halfMinAngle)
  {
    halfMinAngle = self->_halfMinAngle;
  }

  v5 = fmin(halfMinAngle, 90.0);
  v6 = (270.0 - v5) / 360.0;
  v7 = (v5 + 270.0) / 360.0;
  v8 = [MEMORY[0x1E6979318] animationWithKeyPath:@"strokeStart"];
  v9 = MEMORY[0x1E696AD98];
  v10 = [(CAShapeLayer *)self->_maskLayer presentationLayer];
  [v10 strokeStart];
  v11 = [v9 numberWithDouble:?];
  [v8 setFromValue:v11];

  v12 = [MEMORY[0x1E696AD98] numberWithDouble:v6];
  [v8 setToValue:v12];

  v13 = [MEMORY[0x1E6979318] animationWithKeyPath:@"strokeEnd"];
  v14 = MEMORY[0x1E696AD98];
  v15 = [(CAShapeLayer *)self->_maskLayer presentationLayer];
  [v15 strokeEnd];
  v16 = [v14 numberWithDouble:?];
  [v13 setFromValue:v16];

  v17 = [MEMORY[0x1E696AD98] numberWithDouble:v7];
  [v13 setToValue:v17];

  v18 = [MEMORY[0x1E6979308] animation];
  v24[0] = v8;
  v24[1] = v13;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:2];
  [v18 setAnimations:v19];

  LODWORD(v20) = 30.0;
  LODWORD(v21) = 30.0;
  LODWORD(v22) = 30.0;
  [v18 setPreferredFrameRateRange:{v20, v21, v22}];
  [v18 setFillMode:*MEMORY[0x1E69797D8]];
  v23 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979EA0]];
  [v18 setTimingFunction:v23];

  [(CAShapeLayer *)self->_maskLayer addAnimation:v18 forKey:@"maskGroup"];
  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] setDisableActions:1];
  [(CAShapeLayer *)self->_maskLayer setStrokeStart:v6];
  [(CAShapeLayer *)self->_maskLayer setStrokeEnd:v7];
  [MEMORY[0x1E6979518] commit];
}

- (BOOL)_shouldShowHeadingForAccuracy:(double)a3
{
  if (a3 < 0.0)
  {
    return 0;
  }

  WeakRetained = objc_loadWeakRetained(&self->_userLocationView);
  v6 = [WeakRetained shouldDisplayInaccurateHeading];
  if (a3 < 90.0)
  {
    v3 = 1;
  }

  else
  {
    v3 = v6;
  }

  return v3;
}

- (void)updateHeadingAccuracy:(double)a3 previousAccuracy:(double)a4
{
  self->_headingAccuracy = a3;
  [MKUserLocationHeadingConeLayer _updateHeadingMaskForAccuracy:"_updateHeadingMaskForAccuracy:previousAccuracy:" previousAccuracy:?];

  [(MKUserLocationHeadingConeLayer *)self _updateShowHeadingForAccuracy:a3];
}

- (id)_accuracyGradientLocationsForAccuracyRadius:(double)a3
{
  v8[3] = *MEMORY[0x1E69E9840];
  if (self->_shouldMatchAccuracyRadius && self->_minimumAccuracyRadius < a3)
  {
    v3 = a3 / (a3 + 18.0);
    v4 = [MEMORY[0x1E696AD98] numberWithDouble:v3 * 0.45];
    v5 = [MEMORY[0x1E696AD98] numberWithDouble:{v3, v4}];
    v8[1] = v5;
    v8[2] = &unk_1F1611C98;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:3];
  }

  else
  {
    v6 = &unk_1F1612348;
  }

  return v6;
}

- (id)_colorsForAccuracyRadius:(double)a3
{
  v21[3] = *MEMORY[0x1E69E9840];
  if (self->_shouldMatchAccuracyRadius && self->_minimumAccuracyRadius < a3)
  {
    v4 = flt_1A30F6C98[[(UITraitCollection *)self->_traitCollection userInterfaceStyle]== UIUserInterfaceStyleDark];
    mapType = self->_mapType;
    if (mapType - 1 < 4 || (v6 = 1.0, mapType == 107))
    {
      v6 = 2.0;
    }

    v7 = (v4 * v6);
    p_tintColor = &self->_tintColor;
    v9 = [(UIColor *)self->_tintColor colorWithAlphaComponent:0.0];
    v21[0] = [v9 CGColor];
    v10 = [(UIColor *)self->_tintColor colorWithAlphaComponent:v7];
    v11 = v21;
  }

  else
  {
    v12 = [(UITraitCollection *)self->_traitCollection userInterfaceStyle];
    p_tintColor = &self->_tintColor;
    tintColor = self->_tintColor;
    if (v12 == UIUserInterfaceStyleDark)
    {
      v9 = [(UIColor *)tintColor colorWithAlphaComponent:1.0];
      v20 = [v9 CGColor];
      v14 = self->_mapType;
      if (v14 - 1 < 4 || v14 == 107)
      {
        v15 = 0.600000024;
      }

      else
      {
        v15 = 0.400000006;
      }

      v10 = [(UIColor *)*p_tintColor colorWithAlphaComponent:v15];
      v11 = &v20;
    }

    else
    {
      v9 = [(UIColor *)tintColor colorWithAlphaComponent:0.800000012];
      v10 = -[UIColor colorWithAlphaComponent:](*p_tintColor, "colorWithAlphaComponent:", 0.25, [v9 CGColor]);
      v11 = &v19;
    }
  }

  v11[1] = [v10 CGColor];
  v16 = [(UIColor *)*p_tintColor colorWithAlphaComponent:0.0];
  v11[2] = [v16 CGColor];
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:3];

  return v17;
}

- (void)setMapType:(unint64_t)a3
{
  if (self->_mapType != a3)
  {
    self->_mapType = a3;
    [(MKUserLocationHeadingConeLayer *)self _updateColors];
  }
}

- (void)setTraitCollection:(id)a3
{
  objc_storeStrong(&self->_traitCollection, a3);

  [(MKUserLocationHeadingConeLayer *)self _updateColors];
}

- (void)updateTintColor:(id)a3
{
  objc_storeStrong(&self->_tintColor, a3);

  [(MKUserLocationHeadingConeLayer *)self _updateColors];
}

- (void)updateHeading:(double)a3
{
  memset(&v17, 0, sizeof(v17));
  CATransform3DMakeRotation(&v17, a3 * 0.0174532925, 0.0, 0.0, 1.0);
  v4 = [MEMORY[0x1E6979318] animationWithKeyPath:@"transform"];
  [v4 setFillMode:*MEMORY[0x1E69797D8]];
  v5 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979EA0]];
  [v4 setTimingFunction:v5];

  LODWORD(v6) = 30.0;
  LODWORD(v7) = 30.0;
  LODWORD(v8) = 30.0;
  [v4 setPreferredFrameRateRange:{v6, v7, v8}];
  v16 = v17;
  v9 = [MEMORY[0x1E696B098] valueWithCATransform3D:&v16];
  [v4 setToValue:v9];

  v10 = MEMORY[0x1E696B098];
  v11 = [(MKUserLocationHeadingConeLayer *)self presentationLayer];
  v12 = v11;
  if (v11)
  {
    [v11 transform];
  }

  else
  {
    memset(&v16, 0, sizeof(v16));
  }

  v13 = [v10 valueWithCATransform3D:&v16];
  [v4 setFromValue:v13];

  [(MKUserLocationHeadingConeLayer *)self addAnimation:v4 forKey:@"Transform"];
  v14 = +[MKThreadContext currentContext];
  [v14 _CA_setDisableActions:1];

  v16 = v17;
  [(MKUserLocationHeadingConeLayer *)self setTransform:&v16];
  v15 = +[MKThreadContext currentContext];
  [v15 _CA_setDisableActions:0];
}

- (MKUserLocationHeadingConeLayer)initWithUserLocationView:(id)a3 shouldMatchAccuracyRadius:(BOOL)a4 minimumPresentationAngle:(double)a5
{
  v21[2] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v19.receiver = self;
  v19.super_class = MKUserLocationHeadingConeLayer;
  v9 = [(MKUserLocationHeadingConeLayer *)&v19 init];
  v10 = v9;
  if (v9)
  {
    objc_storeWeak(&v9->_userLocationView, v8);
    v10->_shouldMatchAccuracyRadius = a4;
    v10->_halfMinAngle = a5 * 0.5;
    v11 = [MEMORY[0x1E69DC888] systemBlueColor];
    tintColor = v10->_tintColor;
    v10->_tintColor = v11;

    v20[0] = @"locations";
    v13 = [MEMORY[0x1E695DFB0] null];
    v20[1] = @"colors";
    v21[0] = v13;
    v14 = [MEMORY[0x1E695DFB0] null];
    v21[1] = v14;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:2];
    [(MKUserLocationHeadingConeLayer *)v10 setActions:v15];

    [(MKUserLocationHeadingConeLayer *)v10 setName:@"heading"];
    [(MKUserLocationHeadingConeLayer *)v10 setAnchorPoint:0.5, 0.5];
    [(CAGradientLayer *)v10 setType:*MEMORY[0x1E6979DB0]];
    [(CAGradientLayer *)v10 setStartPoint:0.5, 0.5];
    [(CAGradientLayer *)v10 setEndPoint:1.0, 1.0];
    [objc_opt_class() baseDiameter];
    [(MKUserLocationHeadingConeLayer *)v10 setBounds:0.0, 0.0, v16 + 66.0, v16 + 66.0];
    [(MKUserLocationHeadingConeLayer *)v10 _createMaskLayer];
    v17 = v10;
  }

  return v10;
}

@end