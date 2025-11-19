@interface _MKBalloonLabelMarkerView
- (BOOL)_balloonCalloutShouldOriginateFromSmallSize:(double *)a3;
- (BOOL)shouldShowCallout;
- (BOOL)updateCalloutViewIfNeededAnimated:(BOOL)a3;
- (UIColor)_balloonStrokeColor;
- (UIColor)_balloonTintColor;
- (UIImage)_balloonImage;
- (UIView)_balloonContentView;
- (_MKBalloonLabelMarkerView)initWithAnnotation:(id)a3 reuseIdentifier:(id)a4;
- (void)_addAnchorDotViewIfNeeded;
- (void)_configureBalloonForDataIconImageKeys:(id)a3 scale:(double)a4;
- (void)_resolveBalloonAttributesIfNecessary;
- (void)prepareForReuse;
- (void)traitEnvironment:(id)a3 didChangeTraitCollection:(id)a4;
@end

@implementation _MKBalloonLabelMarkerView

- (void)_configureBalloonForDataIconImageKeys:(id)a3 scale:(double)a4
{
  v63 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [[MKVKImageSourceCalculationParameters alloc] initWithImageSourceKeys:v6 scale:a4];
  v8 = [MKVKImageSourceKeyImageBuilder calculateImagesForParameters:v7];

  v9 = [v8 fullBleedColors];
  if ([v8 hasSameFullBleedColors])
  {
    v10 = [v9 firstObject];
    objc_storeStrong(&self->_balloonFillColor, v10);
  }

  else
  {
    v11 = [MEMORY[0x1E69DC888] colorWithRed:0.305999994 green:0.361000001 blue:0.455000013 alpha:1.0];
    balloonFillColor = self->_balloonFillColor;
    self->_balloonFillColor = v11;

    v10 = [MEMORY[0x1E69DC888] colorWithRed:0.305999994 green:0.361000001 blue:0.455000013 alpha:1.0];
  }

  balloonStrokeColor = self->_balloonStrokeColor;
  self->_balloonStrokeColor = v10;

  v14 = [v8 images];
  if ([v14 count] == 1 || self->_balloonCalloutStyle != 1)
  {
    v22 = [v14 firstObject];
    balloonImage = self->_balloonImage;
    self->_balloonImage = v22;
  }

  else if ([v14 count] >= 2)
  {
    v51 = self;
    v52 = v6;
    v49 = v14;
    v15 = v14;
    v50 = v9;
    v16 = v9;
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v17 = [v15 countByEnumeratingWithState:&v57 objects:v62 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = 0;
      v20 = *v58;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v58 != v20)
          {
            objc_enumerationMutation(v15);
          }

          v19 += CGImageGetWidth([*(*(&v57 + 1) + 8 * i) CGImage]);
        }

        v18 = [v15 countByEnumeratingWithState:&v57 objects:v62 count:16];
      }

      while (v18);
    }

    else
    {
      v19 = 0;
    }

    v24 = a4 + a4;
    v25 = v19 - (v24 + v24);
    v26 = ceil(*&_MKBalloonCalloutInnerDiameter * a4);
    v27 = vcvtpd_u64_f64(*&_MKBalloonCalloutInnerDiameter * a4);
    DeviceRGB = CGColorSpaceCreateDeviceRGB();
    AlignedBytesPerRow = CGBitmapGetAlignedBytesPerRow();
    space = DeviceRGB;
    v30 = CGBitmapContextCreate(0, v25, v27, 8uLL, AlignedBytesPerRow, DeviceRGB, 0x2002u);
    v64.size.width = v25;
    v64.size.height = v26;
    v64.origin.x = 0.0;
    v64.origin.y = 0.0;
    CGContextClearRect(v30, v64);
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v31 = v15;
    v32 = [v31 countByEnumeratingWithState:&v53 objects:v61 count:16];
    if (v32)
    {
      v33 = v32;
      v34 = 0;
      v35 = -v24;
      v36 = *v54;
      do
      {
        for (j = 0; j != v33; ++j)
        {
          if (*v54 != v36)
          {
            objc_enumerationMutation(v31);
          }

          v38 = *(*(&v53 + 1) + 8 * j);
          if (v34 >= [v16 count])
          {
            [MEMORY[0x1E69DC888] clearColor];
          }

          else
          {
            [v16 objectAtIndexedSubscript:v34];
          }
          v39 = ;
          v40 = [v38 CGImage];
          Width = CGImageGetWidth(v40);
          Height = CGImageGetHeight(v40);
          v43 = -(Height - *&_MKBalloonCalloutInnerDiameter * a4) * 0.5;
          CGContextSaveGState(v30);
          CGContextSetFillColorWithColor(v30, [v39 CGColor]);
          v65.origin.x = v35;
          v65.origin.y = v43;
          v65.size.width = Width;
          v65.size.height = Height;
          CGContextFillRect(v30, v65);
          v66.origin.x = v35;
          v66.origin.y = v43;
          v66.size.width = Width;
          v66.size.height = Height;
          CGContextDrawImage(v30, v66, v40);
          CGContextRestoreGState(v30);
          v35 = v35 + Width;
          ++v34;
        }

        v33 = [v31 countByEnumeratingWithState:&v53 objects:v61 count:16];
      }

      while (v33);
    }

    Image = CGBitmapContextCreateImage(v30);
    v45 = [objc_alloc(MEMORY[0x1E69DCAB8]) initWithCGImage:Image scale:0 orientation:a4];
    CGContextRelease(v30);
    CGColorSpaceRelease(space);
    CGImageRelease(Image);

    v46 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v45];
    balloonContentView = v51->_balloonContentView;
    v51->_balloonContentView = v46;

    v6 = v52;
    v9 = v50;
    v14 = v49;
  }
}

- (BOOL)updateCalloutViewIfNeededAnimated:(BOOL)a3
{
  v3 = a3;
  v38[2] = *MEMORY[0x1E69E9840];
  [(_MKBalloonLabelMarkerView *)self _resolveBalloonAttributesIfNecessary];
  [(_MKLabelMarkerView *)self _updateAnchorOffset];
  v5 = [(_MKBalloonLabelMarkerView *)self traitCollection];
  v6 = [v5 userInterfaceIdiom];

  memset(&v36, 0, sizeof(v36));
  if (v6 == 3)
  {
    CATransform3DMakeScale(&v36, 0.666666687, 0.666666687, 1.0);
  }

  else
  {
    v7 = *(MEMORY[0x1E69792E8] + 80);
    *&v36.m31 = *(MEMORY[0x1E69792E8] + 64);
    *&v36.m33 = v7;
    v8 = *(MEMORY[0x1E69792E8] + 112);
    *&v36.m41 = *(MEMORY[0x1E69792E8] + 96);
    *&v36.m43 = v8;
    v9 = *(MEMORY[0x1E69792E8] + 16);
    *&v36.m11 = *MEMORY[0x1E69792E8];
    *&v36.m13 = v9;
    v10 = *(MEMORY[0x1E69792E8] + 48);
    *&v36.m21 = *(MEMORY[0x1E69792E8] + 32);
    *&v36.m23 = v10;
  }

  if ([(MKAnnotationView *)self isSelected]&& [(MKAnnotationView *)self _shouldShowCalloutIfSelected])
  {
    [(_MKBalloonLabelMarkerView *)self _addAnchorDotViewIfNeeded];
    if (v6 == 3)
    {
      CGAffineTransformMakeScale(&v35, 0.666666687, 0.666666687);
    }

    else
    {
      v22 = *(MEMORY[0x1E695EFD0] + 16);
      *&v35.a = *MEMORY[0x1E695EFD0];
      *&v35.c = v22;
      *&v35.tx = *(MEMORY[0x1E695EFD0] + 32);
    }

    anchorDotView = self->_anchorDotView;
    *&v34.m11 = *&v35.a;
    *&v34.m13 = *&v35.c;
    *&v34.m21 = *&v35.tx;
    [(UIView *)anchorDotView setTransform:&v34];
    if (v3)
    {
      v13 = [MEMORY[0x1E69794A8] animationWithKeyPath:@"transform"];
      [v13 setMass:3.0];
      [v13 setStiffness:1940.0];
      [v13 setDamping:91.4000015];
      [v13 setInitialVelocity:0.0];
      memset(&v34, 0, sizeof(v34));
      CATransform3DMakeScale(&v34, 0.100000001, 0.100000001, 1.0);
      v33 = v34;
      v24 = [MEMORY[0x1E696B098] valueWithCATransform3D:&v33];
      [v13 setFromValue:v24];

      v33 = v36;
      v25 = [MEMORY[0x1E696B098] valueWithCATransform3D:&v33];
      [v13 setToValue:v25];

      v16 = [MEMORY[0x1E6979318] animationWithKeyPath:@"opacity"];
      [v16 setFromValue:&unk_1F1611638];
      [v16 setToValue:&unk_1F1611650];
      [v16 setDuration:0.239999995];
      v17 = [MEMORY[0x1E6979308] animation];
      [v17 setRemovedOnCompletion:1];
      [v13 settlingDuration];
      [v17 setDuration:?];
      v26 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979ED8]];
      [v17 setTimingFunction:v26];

      v38[0] = v13;
      v38[1] = v16;
      v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:2];
      [v17 setAnimations:v27];

      v28 = [(UIView *)self->_anchorDotView layer];
      LODWORD(v29) = 1.0;
      [v28 setOpacity:v29];

      v21 = [(UIView *)self->_anchorDotView layer];
      [v21 addAnimation:v17 forKey:@"show"];
      goto LABEL_15;
    }
  }

  else
  {
    v11 = self->_anchorDotView;
    if (v11)
    {
      v12 = *(MEMORY[0x1E695EFD0] + 16);
      *&v34.m11 = *MEMORY[0x1E695EFD0];
      *&v34.m13 = v12;
      *&v34.m21 = *(MEMORY[0x1E695EFD0] + 32);
      [(UIView *)v11 setTransform:&v34];
      if (v3)
      {
        v13 = [MEMORY[0x1E6979318] animationWithKeyPath:@"transform"];
        memset(&v34, 0, sizeof(v34));
        CATransform3DMakeScale(&v34, 0.100000001, 0.100000001, 1.0);
        v33 = v36;
        v14 = [MEMORY[0x1E696B098] valueWithCATransform3D:&v33];
        [v13 setFromValue:v14];

        v33 = v34;
        v15 = [MEMORY[0x1E696B098] valueWithCATransform3D:&v33];
        [v13 setToValue:v15];

        v16 = [MEMORY[0x1E6979318] animationWithKeyPath:@"opacity"];
        [v16 setFromValue:&unk_1F1611650];
        [v16 setToValue:&unk_1F1611638];
        v17 = [MEMORY[0x1E6979308] animation];
        v18 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979ED8]];
        [v17 setTimingFunction:v18];

        [v17 setDuration:0.133330002];
        v37[0] = v13;
        v37[1] = v16;
        v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:2];
        [v17 setAnimations:v19];

        [v17 setRemovedOnCompletion:1];
        v20 = [(UIView *)self->_anchorDotView layer];
        [v20 setOpacity:0.0];

        v21 = [(UIView *)self->_anchorDotView layer];
        v32[0] = MEMORY[0x1E69E9820];
        v32[1] = 3221225472;
        v32[2] = __63___MKBalloonLabelMarkerView_updateCalloutViewIfNeededAnimated___block_invoke;
        v32[3] = &unk_1E76CA670;
        v32[4] = self;
        [v21 _mapkit_addAnimation:v17 forKey:@"hide" completion:v32];
LABEL_15:

        goto LABEL_16;
      }

      [(UIView *)self->_anchorDotView removeFromSuperview];
    }
  }

LABEL_16:
  v31.receiver = self;
  v31.super_class = _MKBalloonLabelMarkerView;
  return [(_MKLabelMarkerView *)&v31 updateCalloutViewIfNeededAnimated:v3];
}

- (void)_addAnchorDotViewIfNeeded
{
  anchorDotView = self->_anchorDotView;
  if (!anchorDotView)
  {
    v4 = objc_alloc(MEMORY[0x1E69DD250]);
    [(_MKBalloonLabelMarkerView *)self frame];
    v6 = v5 * 0.5 + -3.0;
    [(_MKBalloonLabelMarkerView *)self frame];
    v8 = [v4 initWithFrame:{v6, v7 + -6.0, 6.0, 6.0}];
    v9 = self->_anchorDotView;
    self->_anchorDotView = v8;

    balloonCalloutStyle = self->_balloonCalloutStyle;
    if (balloonCalloutStyle <= 4)
    {
      v11 = dbl_1A30F7928[balloonCalloutStyle];
      v12 = [(UIView *)self->_anchorDotView layer];
      [v12 setCornerRadius:v11];
    }

    v13 = [(UIColor *)self->_balloonStrokeColor CGColor];
    v14 = [(UIView *)self->_anchorDotView layer];
    [v14 setBackgroundColor:v13];

    anchorDotView = self->_anchorDotView;
  }

  v15 = [(UIView *)anchorDotView superview];

  if (!v15)
  {
    v16 = self->_anchorDotView;

    [(_MKBalloonLabelMarkerView *)self addSubview:v16];
  }
}

- (BOOL)shouldShowCallout
{
  v2 = [(MKAnnotationView *)self annotation];
  if (([v2 suppressCallout] & 1) == 0 && (objc_msgSend(v2, "isRouteEta") & 1) == 0)
  {
    v4 = [v2 featureAnnotation];
    if ([v4 conformsToProtocol:&unk_1F16600E8] && !objc_msgSend(v4, "showsBalloonCallout") || objc_msgSend(v2, "isTransit") && (objc_msgSend(v2, "isTransitLine") & 1) == 0 && (objc_msgSend(v2, "isOnRoute") & 1) != 0)
    {
      goto LABEL_15;
    }

    v5 = [v2 featureType];
    LOBYTE(v3) = 0;
    if (v5 == 7 || v5 == 9)
    {
      goto LABEL_16;
    }

    v6 = [v2 pickedLabelBalloonBehavior];
    if (v6 == 2)
    {
      LOBYTE(v3) = 1;
      goto LABEL_16;
    }

    if (v6 || (v7 = [v2 featureType], v7 >= 0x13))
    {
LABEL_15:
      LOBYTE(v3) = 0;
    }

    else
    {
      v3 = 0x50668u >> v7;
    }

LABEL_16:

    goto LABEL_17;
  }

  LOBYTE(v3) = 0;
LABEL_17:

  return v3 & 1;
}

- (UIView)_balloonContentView
{
  [(_MKBalloonLabelMarkerView *)self _resolveBalloonAttributesIfNecessary];
  balloonContentView = self->_balloonContentView;

  return balloonContentView;
}

- (UIImage)_balloonImage
{
  [(_MKBalloonLabelMarkerView *)self _resolveBalloonAttributesIfNecessary];
  balloonImage = self->_balloonImage;

  return balloonImage;
}

- (UIColor)_balloonStrokeColor
{
  [(_MKBalloonLabelMarkerView *)self _resolveBalloonAttributesIfNecessary];
  balloonStrokeColor = self->_balloonStrokeColor;

  return balloonStrokeColor;
}

- (UIColor)_balloonTintColor
{
  [(_MKBalloonLabelMarkerView *)self _resolveBalloonAttributesIfNecessary];
  balloonFillColor = self->_balloonFillColor;

  return balloonFillColor;
}

- (BOOL)_balloonCalloutShouldOriginateFromSmallSize:(double *)a3
{
  [(_MKBalloonLabelMarkerView *)self _resolveBalloonAttributesIfNecessary];
  result = self->_balloonCalloutShouldOriginateFromSmallSize;
  if (a3)
  {
    if (self->_balloonCalloutShouldOriginateFromSmallSize)
    {
      *a3 = self->_smallBalloonScaleFactor;
    }
  }

  return result;
}

- (void)traitEnvironment:(id)a3 didChangeTraitCollection:(id)a4
{
  v5 = a4;
  v6 = [(_MKBalloonLabelMarkerView *)self traitCollection];
  v7 = [v6 hasDifferentColorAppearanceComparedToTraitCollection:v5];

  if (v7)
  {
    self->_needsToResolveBalloonAttributes = 1;
    if (self->_anchorDotView)
    {
      [(_MKBalloonLabelMarkerView *)self _resolveBalloonAttributesIfNecessary];
      v8 = [(UIColor *)self->_balloonStrokeColor CGColor];
      v9 = [(UIView *)self->_anchorDotView layer];
      [v9 setBackgroundColor:v8];
    }
  }
}

- (void)_resolveBalloonAttributesIfNecessary
{
  if (!self->_needsToResolveBalloonAttributes || ![(MKAnnotationView *)self _shouldShowCalloutIfSelected])
  {
    return;
  }

  self->_needsToResolveBalloonAttributes = 0;
  v66 = [(MKAnnotationView *)self annotation];
  [(UIView *)self _mapkit_currentScreenScale];
  v4 = v3;
  v5 = [v66 styleAttributes];
  if (v5)
  {
    goto LABEL_10;
  }

  if ([v66 isTrafficIncident])
  {
    v6 = [v66 incident];
    v7 = [MEMORY[0x1E69A1DB0] styleAttributesForTrafficIncidentType:{objc_msgSend(v6, "type")}];
  }

  else
  {
    if (![v66 isRouteAnnotation])
    {
      v12 = 0;
      v9 = 0;
      v5 = 0;
      goto LABEL_43;
    }

    v8 = [v66 routeAnnotations];
    v6 = [v8 firstObject];

    v7 = [v6 styleAttributes];
  }

  v5 = v7;

  if (!v5)
  {
    v12 = 0;
    v9 = 0;
LABEL_43:
    v13 = 1;
    goto LABEL_14;
  }

LABEL_10:
  v9 = [MEMORY[0x1E69A1DB0] styleAttributesForUnpickedFeatureWithAttributes:v5];
  if (v9)
  {
    v10 = [(_MKLabelMarkerView *)self mapView];
    v11 = [v10 _mapLayer];
    v12 = [v11 iconForStyleAttributes:v9 contentScale:8 size:1 transparent:v4];
  }

  else
  {
    v12 = 0;
  }

  v13 = 0;
LABEL_14:
  self->_balloonCalloutShouldOriginateFromSmallSize = [v12 isBalloonShape];
  v64 = v12;
  if (v13)
  {
    v14 = 0;
    v15 = 0;
LABEL_18:

    goto LABEL_19;
  }

  v15 = [MEMORY[0x1E69A1DB0] styleAttributesForCalloutWithAttributes:{v5, v12}];

  if (v15)
  {
    v5 = [(_MKLabelMarkerView *)self mapView];
    v16 = [v5 _mapLayer];
    v14 = [v16 iconForStyleAttributes:v15 contentScale:8 size:1 transparent:v4];

    goto LABEL_18;
  }

  v14 = 0;
  v13 = 1;
LABEL_19:
  self->_balloonCalloutStyle = [v14 calloutShape] == 1;
  v17 = [v66 dataIconImageKeys];
  v18 = [v17 count];

  v19 = [v14 calloutFillColor];
  v20 = [v14 calloutHaloColor];
  if (v19)
  {
    [MEMORY[0x1E69DC888] colorWithCGColor:v19];
  }

  else
  {
    [MEMORY[0x1E69DC888] whiteColor];
  }
  v21 = ;
  balloonFillColor = self->_balloonFillColor;
  self->_balloonFillColor = v21;

  if (v20)
  {
    v23 = [MEMORY[0x1E69DC888] colorWithCGColor:v20];
  }

  else
  {
    v23 = self->_balloonFillColor;
  }

  balloonStrokeColor = self->_balloonStrokeColor;
  self->_balloonStrokeColor = v23;

  self->_smallBalloonScaleFactor = 26.0 / *&_MKBalloonCalloutInnerDiameter;
  if (![v66 isCluster])
  {
    if ([v66 isTrafficIncident])
    {
      v25 = [v66 incident];
      v33 = +[MKIconManager imageForTrafficIncidentType:size:forScale:](MKIconManager, "imageForTrafficIncidentType:size:forScale:", [v25 type], 4, v4);
      balloonImage = self->_balloonImage;
      self->_balloonImage = v33;
    }

    else if ([v66 isRouteAnnotation])
    {
      v35 = [MKIconManager imageForRouteAnnotationStyle:v15 size:4 forScale:v4];
      v25 = self->_balloonImage;
      self->_balloonImage = v35;
    }

    else if (v18)
    {
      v25 = [v66 dataIconImageKeys];
      [(_MKBalloonLabelMarkerView *)self _configureBalloonForDataIconImageKeys:v25 scale:v4];
    }

    else
    {
      v52 = v14;
      v25 = v52;
      if (v52)
      {
        v52 = [(UIImage *)v52 image];
        if (v52)
        {
          v53 = objc_alloc(MEMORY[0x1E69DCAB8]);
          v54 = [v25 image];
          [v25 contentScale];
          v52 = [v53 initWithCGImage:v54 scale:0 orientation:v55];
        }
      }

      v56 = self->_balloonImage;
      self->_balloonImage = v52;

      if (self->_balloonCalloutShouldOriginateFromSmallSize)
      {
        if (v13)
        {
          v57 = 0;
        }

        else
        {
          v58 = [(_MKLabelMarkerView *)self mapView];
          v59 = [v58 _mapLayer];
          v57 = [v59 iconForStyleAttributes:v15 contentScale:6 size:1 transparent:v4];
        }

        [v57 imageSize];
        v62 = v61;
        if (v61 != *MEMORY[0x1E695F060] || v60 != *(MEMORY[0x1E695F060] + 8))
        {
          [v57 contentScale];
          self->_smallBalloonScaleFactor = v62 / v63 / *&_MKBalloonCalloutInnerDiameter;
        }
      }
    }

    goto LABEL_36;
  }

  v25 = objc_alloc_init(MEMORY[0x1E696ADA0]);
  v26 = [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];
  [v25 setLocale:v26];

  [v25 setNumberStyle:1];
  [v25 setRoundingMode:6];
  v27 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{0.0, 0.0, *&_MKBalloonCalloutInnerDiameter, *&_MKBalloonCalloutInnerDiameter}];
  v28 = objc_alloc_init(_MKUILabel);
  v29 = [v14 calloutTextColor];
  v30 = [v14 glyphColor];
  if (v29)
  {
    v31 = MEMORY[0x1E69DC888];
    v32 = v29;
  }

  else
  {
    v32 = v30;
    v31 = MEMORY[0x1E69DC888];
    if (!v32)
    {
      v36 = [MEMORY[0x1E69DC888] whiteColor];
      goto LABEL_35;
    }
  }

  v36 = [v31 colorWithCGColor:v32];
LABEL_35:
  v37 = v36;
  [(_MKUILabel *)v28 setTextColor:v36];

  [(_MKUILabel *)v28 setTranslatesAutoresizingMaskIntoConstraints:0];
  v38 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v66, "clusterFeatureCount")}];
  v39 = [v25 stringFromNumber:v38];
  [(_MKUILabel *)v28 setText:v39];

  v40 = [MEMORY[0x1E69DB878] systemFontOfSize:36.0];
  [(_MKUILabel *)v28 setFont:v40];

  [(UIView *)v27 addSubview:v28];
  v41 = [(_MKUILabel *)v28 centerXAnchor];
  v42 = [(UIView *)v27 centerXAnchor];
  v43 = [v41 constraintEqualToAnchor:v42];
  [v43 setActive:1];

  v44 = [(_MKUILabel *)v28 centerYAnchor];
  v45 = [(UIView *)v27 centerYAnchor];
  v46 = [v44 constraintEqualToAnchor:v45];
  [v46 setActive:1];

  v47 = [(UIView *)v27 widthAnchor];
  v48 = [v47 constraintEqualToConstant:*&_MKBalloonCalloutInnerDiameter];
  [v48 setActive:1];

  v49 = [(UIView *)v27 heightAnchor];
  v50 = [v49 constraintEqualToConstant:*&_MKBalloonCalloutInnerDiameter];
  [v50 setActive:1];

  balloonContentView = self->_balloonContentView;
  self->_balloonContentView = v27;

LABEL_36:
}

- (void)prepareForReuse
{
  v7.receiver = self;
  v7.super_class = _MKBalloonLabelMarkerView;
  [(MKAnnotationView *)&v7 prepareForReuse];
  self->_balloonCalloutStyle = 0;
  self->_balloonCalloutShouldOriginateFromSmallSize = 0;
  balloonFillColor = self->_balloonFillColor;
  self->_balloonFillColor = 0;

  balloonStrokeColor = self->_balloonStrokeColor;
  self->_balloonStrokeColor = 0;

  balloonImage = self->_balloonImage;
  self->_balloonImage = 0;

  balloonContentView = self->_balloonContentView;
  self->_balloonContentView = 0;

  self->_needsToResolveBalloonAttributes = 1;
  self->_smallBalloonScaleFactor = 1.0;
}

- (_MKBalloonLabelMarkerView)initWithAnnotation:(id)a3 reuseIdentifier:(id)a4
{
  v9.receiver = self;
  v9.super_class = _MKBalloonLabelMarkerView;
  v4 = [(_MKLabelMarkerView *)&v9 initWithAnnotation:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    v4->_needsToResolveBalloonAttributes = 1;
    [(MKAnnotationView *)v4 _setCalloutStyle:1];
    v6 = [MEMORY[0x1E69DD1B8] systemTraitsAffectingColorAppearance];
    v7 = [(_MKBalloonLabelMarkerView *)v5 registerForTraitChanges:v6 withAction:sel_traitEnvironment_didChangeTraitCollection_];
  }

  return v5;
}

@end