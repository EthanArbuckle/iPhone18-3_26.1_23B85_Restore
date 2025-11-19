@interface _MKBalloonCalloutView
- (BOOL)calloutContainsPoint:(CGPoint)a3;
- (CGRect)_centerFrame;
- (CGRect)_idealFrame;
- (CGSize)intrinsicContentSize;
- (_MKBalloonCalloutView)initWithAnnotationView:(id)a3;
- (double)_innerDiameter;
- (void)_commonInit;
- (void)_configureForArrowStateWithDuration:(double)a3;
- (void)_handleTapOnCallout:(id)a3;
- (void)_mkObserveValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)_showAnimated:(BOOL)a3 completionBlock:(id)a4;
- (void)_startObservingAnnotationView;
- (void)_stopObservingAnnotationView;
- (void)_updateCroppedImage;
- (void)_updateStyle;
- (void)dealloc;
- (void)didMoveToWindow;
- (void)dismissAnimated:(BOOL)a3 completionBlock:(id)a4;
- (void)layoutSubviews;
- (void)setBalloonTintColor:(id)a3;
- (void)setContentView:(id)a3;
- (void)setImage:(id)a3;
- (void)setInnerStrokeColor:(id)a3;
- (void)setShowsArrow:(BOOL)a3 animated:(BOOL)a4;
- (void)setStrokeColor:(id)a3;
- (void)showAnimated:(BOOL)a3 completionBlock:(id)a4;
- (void)traitEnvironment:(id)a3 didChangeTraitCollection:(id)a4;
- (void)updateWithNewCalloutOffset;
@end

@implementation _MKBalloonCalloutView

- (void)_mkObserveValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v7 = a3;
  if (([v7 isEqualToString:@"balloonImage"] & 1) != 0 || objc_msgSend(v7, "isEqualToString:", @"balloonImageTintColor"))
  {
    [(_MKBalloonCalloutView *)self _updateStyle];
  }
}

- (BOOL)calloutContainsPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  backgroundShapeView = self->_backgroundShapeView;
  if (backgroundShapeView)
  {
    [(_MKBezierPathView *)backgroundShapeView convertPoint:self fromView:a3.x, a3.y];
    v7 = self->_backgroundShapeView;

    LOBYTE(balloonBodyImageView) = [(_MKBezierPathView *)v7 containsPoint:?];
  }

  else
  {
    balloonBodyImageView = self->_balloonBodyImageView;
    if (balloonBodyImageView)
    {
      [(UIImageView *)balloonBodyImageView frame];
      v13 = x;
      v14 = y;

      LOBYTE(balloonBodyImageView) = CGRectContainsPoint(*&v9, *&v13);
    }
  }

  return balloonBodyImageView;
}

- (void)dismissAnimated:(BOOL)a3 completionBlock:(id)a4
{
  v4 = a3;
  v39[2] = *MEMORY[0x1E69E9840];
  v6 = a4;
  self->_dismissed = 1;
  v7 = [(MKCalloutView *)self annotationView];
  [v7 calloutOffset];
  v9 = v8;

  if (!self->_originatesAsSmallBalloon)
  {
    v10 = [(_MKBalloonCalloutView *)self layer];
    [v10 setOpacity:0.0];
  }

  v11 = [(_MKBalloonCalloutView *)self traitCollection];
  v12 = [v11 userInterfaceIdiom];

  v13 = *(MEMORY[0x1E695EFD0] + 16);
  *&v38.m11 = *MEMORY[0x1E695EFD0];
  *&v38.m13 = v13;
  *&v38.m21 = *(MEMORY[0x1E695EFD0] + 32);
  [(_MKBalloonCalloutView *)self setTransform:&v38];
  memset(&v38, 0, sizeof(v38));
  if (v12 == 3)
  {
    CATransform3DMakeScale(&v38, 0.75, 0.75, 1.0);
    if (!v4)
    {
LABEL_5:
      v6[2](v6);
      goto LABEL_11;
    }
  }

  else
  {
    v14 = *(MEMORY[0x1E69792E8] + 80);
    *&v38.m31 = *(MEMORY[0x1E69792E8] + 64);
    *&v38.m33 = v14;
    v15 = *(MEMORY[0x1E69792E8] + 112);
    *&v38.m41 = *(MEMORY[0x1E69792E8] + 96);
    *&v38.m43 = v15;
    v16 = *(MEMORY[0x1E69792E8] + 16);
    *&v38.m11 = *MEMORY[0x1E69792E8];
    *&v38.m13 = v16;
    v17 = *(MEMORY[0x1E69792E8] + 48);
    *&v38.m21 = *(MEMORY[0x1E69792E8] + 32);
    *&v38.m23 = v17;
    if (!v4)
    {
      goto LABEL_5;
    }
  }

  if (self->_originatesAsSmallBalloon)
  {
    v18 = [MEMORY[0x1E69794A8] animationWithKeyPath:@"transform"];
    [v18 setMass:3.0];
    [v18 setStiffness:1940.0];
    [v18 setDamping:91.4000015];
    [v18 setInitialVelocity:0.0];
    memset(&v37, 0, sizeof(v37));
    CATransform3DMakeScale(&v37, self->_smallBalloonScale, self->_smallBalloonScale, 1.0);
    v35 = v37;
    CATransform3DTranslate(&v36, &v35, 0.0, 2.0 - v9, 0.0);
    v37 = v36;
    v36 = v38;
    v19 = [MEMORY[0x1E696B098] valueWithCATransform3D:&v36];
    [v18 setFromValue:v19];

    v36 = v37;
    v20 = [MEMORY[0x1E696B098] valueWithCATransform3D:&v36];
    [v18 setToValue:v20];

    [v18 settlingDuration];
    [v18 setDuration:?];
    v34 = v37;
    v21 = [(_MKBalloonCalloutView *)self layer];
    v36 = v34;
    [v21 setTransform:&v36];

    v22 = [(_MKBalloonCalloutView *)self layer];
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __57___MKBalloonCalloutView_dismissAnimated_completionBlock___block_invoke;
    v32[3] = &unk_1E76C9DD8;
    v33 = v6;
    [v22 _mapkit_addAnimation:v18 forKey:@"hide" completion:v32];
  }

  else
  {
    v18 = [MEMORY[0x1E6979318] animationWithKeyPath:@"transform"];
    memset(&v37, 0, sizeof(v37));
    CATransform3DMakeScale(&v37, 0.100000001, 0.100000001, 1.0);
    v35 = v37;
    CATransform3DTranslate(&v36, &v35, 0.0, -v9, 0.0);
    v37 = v36;
    v36 = v38;
    v23 = [MEMORY[0x1E696B098] valueWithCATransform3D:&v36];
    [v18 setFromValue:v23];

    v36 = v37;
    v24 = [MEMORY[0x1E696B098] valueWithCATransform3D:&v36];
    [v18 setToValue:v24];

    v25 = [MEMORY[0x1E6979318] animationWithKeyPath:@"opacity"];
    [v25 setFromValue:&unk_1F1611548];
    [v25 setToValue:&unk_1F1611530];
    v26 = [MEMORY[0x1E6979308] animation];
    v27 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979ED8]];
    [v26 setTimingFunction:v27];

    [v26 setDuration:0.13333];
    v39[0] = v18;
    v39[1] = v25;
    v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:2];
    [v26 setAnimations:v28];

    [v26 setRemovedOnCompletion:1];
    v29 = [(_MKBalloonCalloutView *)self layer];
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __57___MKBalloonCalloutView_dismissAnimated_completionBlock___block_invoke_2;
    v30[3] = &unk_1E76C9DD8;
    v31 = v6;
    [v29 _mapkit_addAnimation:v26 forKey:@"hide" completion:v30];
  }

LABEL_11:
}

- (void)_showAnimated:(BOOL)a3 completionBlock:(id)a4
{
  v4 = a3;
  v42[2] = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [(MKCalloutView *)self annotationView];
  [v7 addSubview:self];
  [v7 calloutOffset];
  v9 = v8;
  [(_MKBalloonCalloutView *)self _idealFrame];
  [(_MKBalloonCalloutView *)self setFrame:?];
  v10 = [(_MKBalloonCalloutView *)self layer];
  LODWORD(v11) = 1.0;
  [v10 setOpacity:v11];

  v12 = [(_MKBalloonCalloutView *)self traitCollection];
  v13 = [v12 userInterfaceIdiom];

  if (v13 == 3)
  {
    CGAffineTransformMakeScale(&v41, 0.75, 0.75);
  }

  else
  {
    v14 = *(MEMORY[0x1E695EFD0] + 16);
    *&v41.a = *MEMORY[0x1E695EFD0];
    *&v41.c = v14;
    *&v41.tx = *(MEMORY[0x1E695EFD0] + 32);
  }

  *&v40.m11 = *&v41.a;
  *&v40.m13 = *&v41.c;
  *&v40.m21 = *&v41.tx;
  [(_MKBalloonCalloutView *)self setTransform:&v40];
  memset(&v40, 0, sizeof(v40));
  if (v13 == 3)
  {
    CATransform3DMakeScale(&v40, 0.75, 0.75, 1.0);
    if (!v4)
    {
LABEL_6:
      v6[2](v6);
      goto LABEL_15;
    }
  }

  else
  {
    v15 = *(MEMORY[0x1E69792E8] + 80);
    *&v40.m31 = *(MEMORY[0x1E69792E8] + 64);
    *&v40.m33 = v15;
    v16 = *(MEMORY[0x1E69792E8] + 112);
    *&v40.m41 = *(MEMORY[0x1E69792E8] + 96);
    *&v40.m43 = v16;
    v17 = *(MEMORY[0x1E69792E8] + 16);
    *&v40.m11 = *MEMORY[0x1E69792E8];
    *&v40.m13 = v17;
    v18 = *(MEMORY[0x1E69792E8] + 48);
    *&v40.m21 = *(MEMORY[0x1E69792E8] + 32);
    *&v40.m23 = v18;
    if (!v4)
    {
      goto LABEL_6;
    }
  }

  originatesAsSmallBalloon = self->_originatesAsSmallBalloon;
  v20 = [MEMORY[0x1E69794A8] animationWithKeyPath:@"transform"];
  [v20 setMass:3.0];
  [v20 setStiffness:1940.0];
  [v20 setDamping:91.4000015];
  [v20 setInitialVelocity:0.0];
  memset(&v39, 0, sizeof(v39));
  if (originatesAsSmallBalloon)
  {
    CATransform3DMakeScale(&v39, self->_smallBalloonScale, self->_smallBalloonScale, 1.0);
    v37 = v39;
    CATransform3DTranslate(&v38, &v37, 0.0, v9 + 2.0, 0.0);
    v39 = v38;
    v21 = [MEMORY[0x1E696B098] valueWithCATransform3D:&v38];
    [v20 setFromValue:v21];

    v38 = v40;
    v22 = [MEMORY[0x1E696B098] valueWithCATransform3D:&v38];
    [v20 setToValue:v22];

    [v20 settlingDuration];
    [v20 setDuration:?];
    v23 = [(_MKBalloonCalloutView *)self layer];
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __55___MKBalloonCalloutView__showAnimated_completionBlock___block_invoke;
    v35[3] = &unk_1E76C9B20;
    v35[4] = self;
    v36 = v6;
    [v23 _mapkit_addAnimation:v20 forKey:@"show" completion:v35];
  }

  else
  {
    CATransform3DMakeScale(&v39, 0.100000001, 0.100000001, 1.0);
    v37 = v39;
    CATransform3DTranslate(&v38, &v37, 0.0, -v9, 0.0);
    v39 = v38;
    v24 = [MEMORY[0x1E696B098] valueWithCATransform3D:&v38];
    [v20 setFromValue:v24];

    v38 = v40;
    v25 = [MEMORY[0x1E696B098] valueWithCATransform3D:&v38];
    [v20 setToValue:v25];

    v26 = [MEMORY[0x1E6979318] animationWithKeyPath:@"opacity"];
    [v26 setFromValue:&unk_1F1611530];
    [v26 setToValue:&unk_1F1611548];
    [v26 setDuration:0.24];
    v27 = [MEMORY[0x1E6979308] animation];
    [v27 setRemovedOnCompletion:1];
    [v20 settlingDuration];
    [v27 setDuration:?];
    v28 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979ED8]];
    [v27 setTimingFunction:v28];

    v42[0] = v20;
    v42[1] = v26;
    v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:v42 count:2];
    [v27 setAnimations:v29];

    v30 = [(_MKBalloonCalloutView *)self layer];
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __55___MKBalloonCalloutView__showAnimated_completionBlock___block_invoke_164;
    v33[3] = &unk_1E76C9B20;
    v33[4] = self;
    v34 = v6;
    [v30 _mapkit_addAnimation:v27 forKey:@"show" completion:v33];
  }

  if (_MKMarkerAnnotationViewSelectionShouldSway())
  {
    v31 = _MKMarkerAnnotationViewSelectionSwayAnimation();
    if (v31)
    {
      v32 = [(_MKBalloonCalloutView *)self layer];
      [v32 addAnimation:v31 forKey:@"sway"];
    }
  }

LABEL_15:
}

- (void)showAnimated:(BOOL)a3 completionBlock:(id)a4
{
  v4 = a3;
  v6 = a4;
  if (!self->_centerAnnotationWhenOffscreen || !v4)
  {
    [(_MKBalloonCalloutView *)self _showAnimated:v4 completionBlock:v6];
  }

  else
  {
    v8 = [(MKCalloutView *)self annotationView];
    v9 = [v8 _containerView];
    [v9 _visibleCenteringRectInView:v8];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;

    [(_MKBalloonCalloutView *)self _idealFrame];
    v35.origin.x = v18;
    v35.origin.y = v19;
    v35.size.width = v20;
    v35.size.height = v21;
    v34.origin.x = v11;
    v34.origin.y = v13;
    v34.size.width = v15;
    v34.size.height = v17;
    if (CGRectContainsRect(v34, v35))
    {
      [(_MKBalloonCalloutView *)self _showAnimated:1 completionBlock:v6];
    }

    else
    {
      v23 = [v8 _mapView];
      v24 = [v8 _containerView];
      v25 = [(MKCalloutView *)self annotationView];
      v26 = [v25 annotation];
      [v26 coordinate];
      v28 = v27;
      v30 = v29;
      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = __54___MKBalloonCalloutView_showAnimated_completionBlock___block_invoke;
      v31[3] = &unk_1E76C9AF8;
      v31[4] = self;
      v33 = v4;
      v32 = v6;
      [v23 annotationContainer:v24 scrollToRevealCalloutWithOffset:v31 annotationCoordinate:1.79769313e308 completionHandler:{1.79769313e308, v28, v30}];
    }
  }
}

- (void)setBalloonTintColor:(id)a3
{
  v7 = a3;
  if (([v7 isEqual:self->_balloonTintColor] & 1) == 0)
  {
    v4 = [v7 copy];
    balloonTintColor = self->_balloonTintColor;
    self->_balloonTintColor = v4;

    style = self->_style;
    if (style == 2)
    {
LABEL_5:
      [(UIView *)self->_innerBackgroundView setBackgroundColor:self->_balloonTintColor];
      goto LABEL_7;
    }

    if (style != 1)
    {
      if (style)
      {
        goto LABEL_7;
      }

      goto LABEL_5;
    }

    [(UIView *)self->_innerBackgroundView setTintColor:self->_balloonTintColor];
  }

LABEL_7:
}

- (void)_updateCroppedImage
{
  v3 = [MEMORY[0x1E69DD1B8] currentTraitCollection];
  v4 = [(_MKBalloonCalloutView *)self traitCollection];
  [MEMORY[0x1E69DD1B8] setCurrentTraitCollection:v4];

  [(UIView *)self _mapkit_currentScreenScale];
  v6 = v5;
  [(_MKBalloonCalloutView *)self _innerDiameter];
  v8 = v7;
  v9 = vcvtpd_u64_f64(v6 * v7);
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  AlignedBytesPerRow = CGBitmapGetAlignedBytesPerRow();
  v12 = CGBitmapContextCreate(0, v9, v9, 8uLL, AlignedBytesPerRow, DeviceRGB, 0x2002u);
  v25.origin.x = 0.0;
  v25.origin.y = 0.0;
  v25.size.width = v8;
  v25.size.height = v8;
  CGContextClearRect(v12, v25);
  CGContextScaleCTM(v12, v6, v6);
  CGContextGetCTM(&v24, v12);
  CGContextSetBaseCTM();
  style = self->_style;
  if (style > 1)
  {
    if (style != 2 && style != 3)
    {
      goto LABEL_8;
    }

LABEL_7:
    v27.origin.x = 0.0;
    v27.origin.y = 0.0;
    v27.size.width = v8;
    v27.size.height = v8;
    v16 = CGPathCreateWithEllipseInRect(v27, 0);
    CGContextAddPath(v12, v16);
    CGContextClip(v12);
    CGPathRelease(v16);
    goto LABEL_8;
  }

  if (!style)
  {
    goto LABEL_7;
  }

  if (style == 1)
  {
    v14 = [MEMORY[0x1E69DCAB8] _mapkit_imageNamed:@"square_balloon_inner_mask"];
    v15 = [v14 CGImage];
    v26.origin.x = 0.0;
    v26.origin.y = 0.0;
    v26.size.width = v8;
    v26.size.height = v8;
    CGContextClipToMask(v12, v26, v15);
  }

LABEL_8:
  v17 = [(UIImage *)self->_image CGImage];
  v18 = (v9 - CGImageGetWidth(v17)) * 0.5;
  v19 = (v9 - CGImageGetHeight(v17)) * 0.5;
  Width = CGImageGetWidth(v17);
  Height = CGImageGetHeight(v17);
  CGContextResetCTM();
  v28.origin.x = v18;
  v28.origin.y = v19;
  v28.size.width = Width;
  v28.size.height = Height;
  CGContextDrawImage(v12, v28, v17);
  if (self->_imageTintColor)
  {
    CGContextSaveGState(v12);
    CGContextSetBlendMode(v12, kCGBlendModeSourceIn);
    CGContextSetFillColorWithColor(v12, [(UIColor *)self->_imageTintColor CGColor]);
    v29.origin.x = v18;
    v29.origin.y = v19;
    v29.size.width = Width;
    v29.size.height = Height;
    CGContextFillRect(v12, v29);
    CGContextRestoreGState(v12);
  }

  Image = CGBitmapContextCreateImage(v12);
  v23 = [objc_alloc(MEMORY[0x1E69DCAB8]) initWithCGImage:Image scale:0 orientation:v6];
  [(UIImageView *)self->_imageView setImage:v23];
  self->_croppedImageScale = v6;
  CGContextRelease(v12);
  CGColorSpaceRelease(DeviceRGB);
  CGImageRelease(Image);
  [MEMORY[0x1E69DD1B8] setCurrentTraitCollection:v3];
}

- (void)didMoveToWindow
{
  v4.receiver = self;
  v4.super_class = _MKBalloonCalloutView;
  [(_MKBalloonCalloutView *)&v4 didMoveToWindow];
  [(UIView *)self _mapkit_currentScreenScale];
  if (vabdd_f64(v3, self->_croppedImageScale) >= 0.000001)
  {
    [(_MKBalloonCalloutView *)self _updateCroppedImage];
  }
}

- (void)setImage:(id)a3
{
  objc_storeStrong(&self->_image, a3);

  [(_MKBalloonCalloutView *)self _updateCroppedImage];
}

- (void)updateWithNewCalloutOffset
{
  [(_MKBalloonCalloutView *)self _idealFrame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(_MKBalloonCalloutView *)self frame];
  v18.origin.x = v11;
  v18.origin.y = v12;
  v18.size.width = v13;
  v18.size.height = v14;
  v17.origin.x = v4;
  v17.origin.y = v6;
  v17.size.width = v8;
  v17.size.height = v10;
  if (!CGRectEqualToRect(v17, v18))
  {
    v15 = [MEMORY[0x1E6979518] disableActions];
    [MEMORY[0x1E6979518] setDisableActions:0];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __51___MKBalloonCalloutView_updateWithNewCalloutOffset__block_invoke;
    v16[3] = &unk_1E76CDB38;
    v16[4] = self;
    [MEMORY[0x1E69DD250] _mapkit_animateWithDuration:v16 animations:0 completion:0.25];
    [MEMORY[0x1E6979518] setDisableActions:v15];
  }
}

- (CGRect)_idealFrame
{
  v3 = [(MKCalloutView *)self annotationView];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = [(MKCalloutView *)self annotationView];
  [v12 calloutOffset];
  v14 = v13;

  v15 = 30.0;
  if (self->_showsArrow)
  {
    [(_MKBalloonCalloutView *)self frame];
  }

  v16 = round(v14 - v15);
  v25.origin.x = v5;
  v25.origin.y = v7;
  v25.size.width = v9;
  v25.size.height = v11;
  MidX = CGRectGetMidX(v25);
  [(_MKBalloonCalloutView *)self frame];
  v18 = round(MidX + CGRectGetWidth(v26) * -0.5);
  [(_MKBalloonCalloutView *)self frame];
  v20 = v19;
  [(_MKBalloonCalloutView *)self frame];
  v22 = v18;
  v23 = v16;
  v24 = v20;
  result.size.height = v21;
  result.size.width = v24;
  result.origin.y = v23;
  result.origin.x = v22;
  return result;
}

- (void)setShowsArrow:(BOOL)a3 animated:(BOOL)a4
{
  if (self->_showsArrow != a3)
  {
    self->_showsArrow = a3;
    if (a4)
    {
      v5 = [MEMORY[0x1E6979518] disableActions];
      [MEMORY[0x1E6979518] setDisableActions:0];
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = __48___MKBalloonCalloutView_setShowsArrow_animated___block_invoke;
      v6[3] = &unk_1E76C9AD0;
      v6[4] = self;
      v6[5] = 0x3FD0000000000000;
      [MEMORY[0x1E69DD250] _mapkit_animateWithDuration:v6 animations:0 completion:0.25];
      [MEMORY[0x1E6979518] setDisableActions:v5];
    }

    else
    {
      [(_MKBalloonCalloutView *)self _configureForArrowStateWithDuration:0.0];

      [(UIView *)self _mapkit_setNeedsLayout];
    }
  }
}

- (void)_configureForArrowStateWithDuration:(double)a3
{
  showsArrow = self->_showsArrow;
  v6 = [(_MKBalloonCalloutView *)self layer];
  v7 = v6;
  if (showsArrow)
  {
    [v6 setAnchorPoint:{0.5, 1.0}];

    [(_MKBalloonCalloutView *)self _idealFrame];
    [(_MKBalloonCalloutView *)self setFrame:?];
    v8 = [_MKBezierPathView _createSmoothTransitionPathForBalloonRadius:30.0 tailLength:6.0];
    [(_MKBezierPathView *)self->_backgroundShapeView setPath:v8 duration:a3];
    CGPathRelease(v8);
    [(UIView *)self->_shadowView setAlpha:1.0];
    backgroundView = self->_backgroundView;
    if (!backgroundView)
    {
      return;
    }

    v10 = 0;
  }

  else
  {
    [v6 setAnchorPoint:{0.5, 0.5}];

    [(_MKBalloonCalloutView *)self _idealFrame];
    [(_MKBalloonCalloutView *)self setFrame:?];
    v11 = [_MKBezierPathView _createPathForBalloonRadius:30.0 tailLength:0.0];
    [(_MKBezierPathView *)self->_backgroundShapeView setPath:v11 duration:a3];
    CGPathRelease(v11);
    [(UIView *)self->_shadowView setAlpha:0.0];
    backgroundView = self->_backgroundView;
    if (!backgroundView)
    {
      return;
    }

    v10 = 1045220557;
  }

  v13 = [(UIView *)backgroundView layer];
  LODWORD(v12) = v10;
  [v13 setShadowOpacity:v12];
}

- (void)setContentView:(id)a3
{
  v5 = a3;
  contentView = self->_contentView;
  if (contentView == v5)
  {
    goto LABEL_11;
  }

  v30 = v5;
  [(UIView *)contentView removeFromSuperview];
  contentViewMaskView = self->_contentViewMaskView;
  self->_contentViewMaskView = 0;

  objc_storeStrong(&self->_contentView, a3);
  v5 = v30;
  if (!v30)
  {
    goto LABEL_11;
  }

  style = self->_style;
  if ((style - 2) >= 2)
  {
    if (style == 1)
    {
      v14 = objc_alloc(MEMORY[0x1E69DCAE0]);
      v15 = [MEMORY[0x1E69DCAB8] _mapkit_imageNamed:@"square_balloon_inner_mask"];
      v16 = [v14 initWithImage:v15];
      v17 = self->_contentViewMaskView;
      self->_contentViewMaskView = v16;

      [(UIImageView *)self->_contentViewMaskView setFrame:0.0, 0.0, 60.0, 60.0];
      v10 = [(UIImageView *)self->_contentViewMaskView layer];
      v13 = [(UIView *)v30 layer];
      [v13 setMask:v10];
      goto LABEL_8;
    }

    if (style)
    {
      goto LABEL_9;
    }
  }

  v9 = [(UIView *)v30 layer];
  [v9 setMasksToBounds:1];

  v10 = [(UIView *)self->_innerBackgroundView layer];
  [v10 cornerRadius];
  v12 = v11;
  v13 = [(UIView *)v30 layer];
  [v13 setCornerRadius:v12];
LABEL_8:

LABEL_9:
  [(UIView *)self->_containerView _mapkit_insertSubviewAboveAllOtherSubviews:v30];
  [(_MKBalloonCalloutView *)self _innerDiameter];
  v5 = v30;
  if (self->_style == 1)
  {
    v19 = v18;
    [(UIView *)v30 _mapkit_fittingSize];
    v21 = v20;
    [(UIImageView *)self->_balloonBodyImageView setFrame:0.0, 0.0, 60.0 - v19 + v20, 60.0];
    [(UIImageView *)self->_tailView frame];
    v23 = v22;
    v25 = v24;
    [(UIImageView *)self->_balloonBodyImageView frame];
    [(UIImageView *)self->_tailView setFrame:CGRectGetMidX(v32) - v23 * 0.5, 59.0, v23, v25];
    [(UIView *)self->_innerBackgroundView setFrame:(60.0 - v19) * 0.5, (60.0 - v19) * 0.5, v21, v19];
    [(UIView *)self->_contentView bounds];
    [(UIView *)self->_contentView setFrame:round((60.0 - v19) * 0.5 + (v21 - v26) * 0.5), round((60.0 - v19) * 0.5 + (v19 - v27) * 0.5)];
    [(UIView *)self->_contentView convertRect:self fromView:(60.0 - v19) * 0.5, (60.0 - v19) * 0.5, v21, v19];
    [(UIImageView *)self->_contentViewMaskView setFrame:?];
    [(UIImageView *)self->_balloonBodyImageView frame];
    MaxX = CGRectGetMaxX(v33);
    [(UIImageView *)self->_tailView frame];
    MaxY = CGRectGetMaxY(v34);
    self->_intrinsicSize.width = MaxX;
    self->_intrinsicSize.height = MaxY;
    [(_MKBalloonCalloutView *)self frame];
    [(_MKBalloonCalloutView *)self setFrame:?];
    [(UIImageView *)self->_balloonBodyImageView frame];
    [(UIView *)self->_containerView setFrame:0.0, 0.0, CGRectGetMaxX(v35), 60.0];
    [(UIView *)self _mapkit_setNeedsLayout];
    v5 = v30;
  }

LABEL_11:
}

- (void)setInnerStrokeColor:(id)a3
{
  v5 = a3;
  if (self->_innerStrokeColor != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_innerStrokeColor, a3);
    innerStrokeColor = self->_innerStrokeColor;
    if (!innerStrokeColor)
    {
      innerStrokeColor = self->_strokeColor;
    }

    [(_MKBezierPathView *)self->_backgroundShapeView setFillColor:innerStrokeColor];
    v5 = v7;
  }
}

- (void)setStrokeColor:(id)a3
{
  v9 = a3;
  v4 = [v9 copy];
  strokeColor = self->_strokeColor;
  self->_strokeColor = v4;

  v6 = [MEMORY[0x1E69DCAB8] _mapkit_imageNamed:@"balloon_tail"];
  v7 = [v6 _flatImageWithColor:self->_strokeColor];

  [(UIImageView *)self->_tailView setImage:v7];
  [(UIImageView *)self->_balloonBodyImageView setTintColor:self->_strokeColor];
  if (v9)
  {
    v8 = 0.5;
  }

  else
  {
    v8 = 0.0;
  }

  [(_MKBezierPathView *)self->_backgroundShapeView setStrokeColor:v8 width:?];
  if (!self->_innerStrokeColor)
  {
    [(_MKBezierPathView *)self->_backgroundShapeView setFillColor:self->_strokeColor];
  }
}

- (void)layoutSubviews
{
  v19.receiver = self;
  v19.super_class = _MKBalloonCalloutView;
  [(_MKBalloonCalloutView *)&v19 layoutSubviews];
  if (self->_style == 1)
  {
    v3 = self->_shadowSize.width + -60.0;
    v4 = self->_intrinsicSize.height - self->_shadowSize.height + 8.0;
    v5 = v3 * -0.5;
    width = v3 + self->_intrinsicSize.width;
  }

  else
  {
    width = self->_shadowSize.width;
    v5 = self->_intrinsicSize.width * 0.5 - width * 0.5;
    v4 = self->_intrinsicSize.height - self->_shadowSize.height + 11.0;
  }

  [(UIView *)self->_shadowView setFrame:v5, v4, width];
  if (self->_contentView)
  {
    [(_MKBalloonCalloutView *)self _centerFrame];
    [(UIView *)self->_contentView setFrame:?];
  }

  if (self->_style == 1)
  {
    v7 = [(UIView *)self->_shadowView layer];
    [v7 bounds];
    v9 = v8;
    v11 = v10;

    v12 = [(UIView *)self->_shadowView layer];
    v13 = [v12 sublayers];
    v14 = [v13 objectAtIndexedSubscript:0];
    v15 = v9 * 0.5;
    [v14 setFrame:{0.0, 0.0, v15, v11}];

    v16 = [(UIView *)self->_shadowView layer];
    v17 = [v16 sublayers];
    v18 = [v17 objectAtIndexedSubscript:1];
    [v18 setFrame:{v15, 0.0, v15, v11}];
  }

  [(UIImageView *)self->_tailView frame];
  [(UIImageView *)self->_tailView setFrame:?];
}

- (double)_innerDiameter
{
  result = *&_MKBalloonCalloutInnerDiameterUserLocation;
  if (self->_style != 2)
  {
    return 56.0;
  }

  return result;
}

- (CGRect)_centerFrame
{
  [(UIView *)self->_innerBackgroundView frame];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGSize)intrinsicContentSize
{
  width = self->_intrinsicSize.width;
  height = self->_intrinsicSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)_handleTapOnCallout:(id)a3
{
  v8 = [(MKCalloutView *)self annotationView];
  v4 = [v8 _mapView];
  v5 = [(MKCalloutView *)self annotationView];
  v6 = [v5 _annotationContainer];
  v7 = [(MKCalloutView *)self annotationView];
  [v4 annotationContainer:v6 calloutPrimaryActionTriggeredForAnnotationView:v7];
}

- (void)traitEnvironment:(id)a3 didChangeTraitCollection:(id)a4
{
  v5 = a4;
  v6 = [(_MKBalloonCalloutView *)self traitCollection];
  v7 = [v6 hasDifferentColorAppearanceComparedToTraitCollection:v5];

  if (v7)
  {

    [(_MKBalloonCalloutView *)self _updateStyle];
  }
}

- (void)_updateStyle
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = [(MKCalloutView *)self annotationView];
  if ([v3 conformsToProtocol:&unk_1F1673870])
  {
    if ((objc_opt_respondsToSelector() & 1) != 0 && ([v3 _balloonContentView], (v4 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v5 = v4;
      [(_MKBalloonCalloutView *)self setContentView:v4];
    }

    else
    {
      v5 = [v3 _balloonImage];
      [(_MKBalloonCalloutView *)self setImage:v5];
    }

    style = self->_style;
    if (style == 4)
    {
      rectangularImageView = self->_rectangularImageView;
      v18 = [_MKMarkerAnnotationBaseImageContent alloc];
      v6 = [v3 _balloonTintColor];
      v13 = [v3 _balloonStrokeColor];
      v19 = [(_MKMarkerAnnotationBaseImageContent *)v18 initWithFillColor:v6 strokeColor:v13 strokeWidth:3 blendMode:6 baseImageType:0.0];
      [(_MKMarkerAnnotationBaseImageView *)rectangularImageView _setBaseImageContent:v19];

LABEL_16:
      goto LABEL_17;
    }

    if (style == 3)
    {
      backgroundShapeGradientView = self->_backgroundShapeGradientView;
      v12 = [_MKMarkerAnnotationBaseImageContent alloc];
      v6 = [v3 _balloonTintColor];
      v13 = [v3 _balloonStrokeColor];
      v14 = [v3 _balloonStrokeColor];
      v15 = 0.5;
      if (!v14)
      {
        v15 = 0.0;
      }

      v16 = [(_MKMarkerAnnotationBaseImageContent *)v12 initWithFillColor:v6 strokeColor:v13 strokeWidth:3 blendMode:5 baseImageType:v15];
      [(_MKMarkerAnnotationBaseImageView *)backgroundShapeGradientView _setBaseImageContent:v16];

      goto LABEL_16;
    }

    v6 = [v3 _balloonTintColor];
    [(_MKBalloonCalloutView *)self setBalloonTintColor:v6];
    v20 = [v3 _balloonStrokeColor];
    [(_MKBalloonCalloutView *)self setStrokeColor:v20];

    if (objc_opt_respondsToSelector())
    {
      v13 = [v3 _balloonInnerStrokeColor];
      [(_MKBalloonCalloutView *)self setInnerStrokeColor:v13];
      goto LABEL_16;
    }
  }

  else
  {
    v6 = MKGetAnnotationsLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v9 = NSStringFromProtocol(&unk_1F1673870);
      v21 = 138543618;
      v22 = v8;
      v23 = 2114;
      v24 = v9;
      _os_log_impl(&dword_1A2EA0000, v6, OS_LOG_TYPE_DEBUG, "%{public}@ does not conform to %{public}@", &v21, 0x16u);
    }
  }

LABEL_17:
}

- (void)_stopObservingAnnotationView
{
  observedAnnotationView = self->_observedAnnotationView;
  if (observedAnnotationView)
  {
    kvoProxy = self->_kvoProxy;
    v6 = observedAnnotationView;
    [(_MKKVOProxy *)kvoProxy removeObserverForObject:v6 forKeyPath:@"balloonImage"];
    [(_MKKVOProxy *)self->_kvoProxy removeObserverForObject:v6 forKeyPath:@"balloonImageTintColor"];
    v5 = self->_observedAnnotationView;
    self->_observedAnnotationView = 0;
  }
}

- (void)_startObservingAnnotationView
{
  v3 = [(MKCalloutView *)self annotationView];
  if (v3)
  {
    kvoProxy = self->_kvoProxy;
    obj = v3;
    if (!kvoProxy)
    {
      v5 = [[_MKKVOProxy alloc] initWithDelegate:self];
      v6 = self->_kvoProxy;
      self->_kvoProxy = v5;

      kvoProxy = self->_kvoProxy;
    }

    [(_MKKVOProxy *)kvoProxy addObserverForObject:obj forKeyPath:@"balloonImage" options:0 context:0];
    [(_MKKVOProxy *)self->_kvoProxy addObserverForObject:obj forKeyPath:@"balloonImageTintColor" options:0 context:0];
    objc_storeStrong(&self->_observedAnnotationView, obj);
    v3 = obj;
  }
}

- (void)_commonInit
{
  v89 = *MEMORY[0x1E69E9840];
  v3 = [(MKCalloutView *)self annotationView];
  if ([v3 conformsToProtocol:&unk_1F1673870])
  {
    [(_MKBalloonCalloutView *)self _startObservingAnnotationView];
    self->_style = [v3 _balloonCalloutStyle];
    v4 = [MEMORY[0x1E69DC888] whiteColor];
    strokeColor = self->_strokeColor;
    self->_strokeColor = v4;

    self->_showsArrow = 1;
    if (objc_opt_respondsToSelector())
    {
      v6 = [v3 _balloonImageTintColor];
      v7 = [v6 copy];
      imageTintColor = self->_imageTintColor;
      self->_imageTintColor = v7;
    }

    if (objc_opt_respondsToSelector())
    {
      self->_centerAnnotationWhenOffscreen = [v3 _balloonCalloutShouldCenterWhenOffscreen];
    }

    v9 = objc_alloc(MEMORY[0x1E69DD250]);
    v10 = [v9 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    containerView = self->_containerView;
    self->_containerView = v10;

    v12 = [(_MKBalloonCalloutView *)self layer];
    [v12 setAnchorPoint:{0.5, 1.0}];

    v13 = [(UIView *)self->_containerView layer];
    [v13 setAnchorPoint:{0.5, 1.0}];

    if (self->_style == 1)
    {
      v14 = [MEMORY[0x1E69DCAB8] _mapkit_imageNamed:@"rectangle_balloon_shadow"];
      [v14 size];
      self->_shadowSize.width = v15;
      self->_shadowSize.height = v16;
      [v14 scale];
      v18 = v17;
      v19 = [v14 CGImage];
      v90.size.width = v18 * self->_shadowSize.width * 0.5;
      v90.size.height = v18 * self->_shadowSize.height;
      v90.origin.x = 0.0;
      v90.origin.y = 0.0;
      v20 = CGImageCreateWithImageInRect(v19, v90);
      v91.origin.x = v18 * self->_shadowSize.width * 0.5;
      v91.size.height = v18 * self->_shadowSize.height;
      v91.origin.y = 0.0;
      v91.size.width = v91.origin.x;
      v21 = CGImageCreateWithImageInRect(v19, v91);
      v22 = objc_opt_new();
      [v22 setContents:v20];
      [v22 setContentsScale:v18];
      [v22 setContentsCenter:{0.589999974, 0.0, 0.00999999978, 1.0}];
      v23 = objc_opt_new();
      [v23 setContents:v21];
      [v23 setContentsScale:v18];
      [v23 setContentsCenter:{0.400000006, 0.0, 0.00999999978, 1.0}];
      CGImageRelease(v20);
      CGImageRelease(v21);
      v24 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{0.0, 0.0, self->_shadowSize.width, self->_shadowSize.height}];
      v25 = [(UIView *)v24 layer];
      [v25 addSublayer:v22];

      v26 = [(UIView *)v24 layer];
      [v26 addSublayer:v23];

      shadowView = self->_shadowView;
      self->_shadowView = v24;
    }

    else
    {
      v14 = [MEMORY[0x1E69DCAB8] _mapkit_imageNamed:@"balloon_shadow"];
      [v14 size];
      self->_shadowSize.width = v32;
      self->_shadowSize.height = v33;
      v34 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v14];
      v22 = self->_shadowView;
      self->_shadowView = v34;
    }

    v35 = [(UIView *)self->_shadowView layer];
    [v35 setAnchorPoint:{0.5, 1.0}];

    [(UIView *)self->_shadowView _mapkit_sizeToFit];
    [(_MKBalloonCalloutView *)self addSubview:self->_shadowView];
    v36 = [MEMORY[0x1E69DCAB8] _mapkit_imageNamed:@"balloon_tail"];
    v28 = [v36 _flatImageWithColor:self->_strokeColor];

    v37 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v28];
    tailView = self->_tailView;
    self->_tailView = v37;

    [(UIImageView *)self->_tailView _mapkit_sizeToFit];
    style = self->_style;
    if (style > 1)
    {
      switch(style)
      {
        case 4:
          v55 = [_MKMarkerAnnotationBaseImageView alloc];
          v56 = [MEMORY[0x1E69DCAB8] _mapkit_imageNamed:@"rectaloon_asset"];
          v57 = [(_MKMarkerAnnotationBaseImageView *)v55 initWithImage:v56];
          v58 = 584;
          rectangularImageView = self->_rectangularImageView;
          self->_rectangularImageView = v57;

          [(_MKMarkerAnnotationBaseImageView *)self->_rectangularImageView setFrame:0.0, 0.0, 60.0, 66.0];
          break;
        case 3:
          v60 = [[_MKMarkerAnnotationBaseImageView alloc] initWithBalloonRadius:30.0 tailLength:6.0];
          backgroundShapeGradientView = self->_backgroundShapeGradientView;
          self->_backgroundShapeGradientView = v60;

          v58 = 560;
          objc_storeStrong(&self->_backgroundView, self->_backgroundShapeGradientView);
          break;
        case 2:
LABEL_19:
          v46 = [[_MKBezierPathView alloc] initWithBalloonRadius:1 tailLength:30.0 smoothTailTransition:6.0];
          backgroundShapeView = self->_backgroundShapeView;
          self->_backgroundShapeView = v46;

          v48 = [(_MKBezierPathView *)self->_backgroundShapeView layer];
          [v48 setShadowOffset:{0.0, 4.0}];

          v49 = [(_MKBezierPathView *)self->_backgroundShapeView layer];
          [v49 setShadowRadius:4.0];

          v50 = [(_MKBezierPathView *)self->_backgroundShapeView layer];
          [v50 setShadowOpacity:0.0];

          if ((objc_opt_respondsToSelector() & 1) != 0 && ([v3 _balloonMaterial], (v51 = objc_claimAutoreleasedReturnValue()) != 0))
          {
            v52 = v51;
            v53 = [objc_alloc(MEMORY[0x1E69DD298]) initWithEffect:v51];
            backgroundVisualEffectView = self->_backgroundVisualEffectView;
            self->_backgroundVisualEffectView = v53;

            [(_MKBezierPathView *)self->_backgroundShapeView frame];
            [(UIVisualEffectView *)self->_backgroundVisualEffectView setFrame:?];
            [(UIVisualEffectView *)self->_backgroundVisualEffectView setMaskView:self->_backgroundShapeView];
            objc_storeStrong(&self->_backgroundView, self->_backgroundVisualEffectView);
          }

          else
          {
            objc_storeStrong(&self->_backgroundView, self->_backgroundShapeView);
            [(_MKBezierPathView *)self->_backgroundShapeView setFillColor:self->_strokeColor];
          }

          v45 = self->_containerView;
          backgroundView = self->_backgroundView;
          goto LABEL_27;
        default:
LABEL_28:
          [(UIImageView *)self->_tailView frame];
          [(UIImageView *)self->_tailView setFrame:30.0 - v62 * 0.5, 59.0];
          [(_MKBalloonCalloutView *)self _innerDiameter];
          v64 = v63;
          v65 = (60.0 - v63) * 0.5;
          v66 = self->_style;
          if ((v66 - 2) >= 2 && v66)
          {
            if (v66 == 1)
            {
              v67 = objc_alloc(MEMORY[0x1E69DCAE0]);
              v68 = [MEMORY[0x1E69DCAB8] _mapkit_imageNamed:@"square_balloon_inner_mask"];
              v69 = [v67 initWithImage:v68];

              [(UIView *)v69 setFrame:v65, v65, v64, v64];
              innerBackgroundView = self->_innerBackgroundView;
              self->_innerBackgroundView = v69;
            }
          }

          else
          {
            v71 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v65, v65, v63, v63}];
            v72 = self->_innerBackgroundView;
            self->_innerBackgroundView = v71;

            v73 = [(UIView *)self->_innerBackgroundView layer];
            [v73 setMasksToBounds:1];

            v74 = [(UIView *)self->_innerBackgroundView layer];
            [v74 setCornerRadius:floor(v64 * 0.5)];
          }

          [(UIView *)self->_containerView addSubview:self->_innerBackgroundView];
          v75 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithFrame:{v65, v65, v64, v64}];
          imageView = self->_imageView;
          self->_imageView = v75;

          [(UIImageView *)self->_imageView setContentMode:2];
          [(UIView *)self->_containerView addSubview:self->_imageView];
          [(_MKBalloonCalloutView *)self addSubview:self->_containerView];
          v77 = self->_style;
          MaxX = 0.0;
          if (v77 <= 4 && ([*(&self->super.super.super.super.isa + *off_1E76C9B40[v77]) frame], MaxX = CGRectGetMaxX(v92), self->_style == 4))
          {
            v79 = self->_rectangularImageView;
          }

          else
          {
            v79 = self->_tailView;
          }

          [(_MKMarkerAnnotationBaseImageView *)v79 frame];
          MaxY = CGRectGetMaxY(v93);
          self->_intrinsicSize.width = MaxX;
          self->_intrinsicSize.height = MaxY;
          [(_MKBalloonCalloutView *)self frame];
          [(_MKBalloonCalloutView *)self setFrame:?];
          [(UIView *)self->_containerView setFrame:0.0, 0.0, MaxX, 60.0];
          [(UIView *)self _mapkit_setNeedsLayout];
          *buf = 0x3FF0000000000000;
          v81 = objc_opt_respondsToSelector();
          v82 = 1.0;
          if (v81)
          {
            -[_MKBalloonCalloutView setOriginatesAsSmallBalloon:](self, "setOriginatesAsSmallBalloon:", [v3 _balloonCalloutShouldOriginateFromSmallSize:{buf, 1.0}]);
            v82 = *buf;
          }

          [(_MKBalloonCalloutView *)self setSmallBalloonScale:v82];
          if (objc_opt_respondsToSelector())
          {
            -[_MKBalloonCalloutView setShowsArrow:animated:](self, "setShowsArrow:animated:", [v3 _balloonCalloutShouldShowArrow], 0);
          }

          v83 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel__handleTapOnCallout_];
          [(_MKBalloonCalloutView *)self addGestureRecognizer:v83];
          [(_MKBalloonCalloutView *)self _updateStyle];
          v84 = [MEMORY[0x1E69DD1B8] systemTraitsAffectingColorAppearance];
          v85 = [(_MKBalloonCalloutView *)self registerForTraitChanges:v84 withAction:sel_traitEnvironment_didChangeTraitCollection_];

          goto LABEL_42;
      }

      v45 = self->_containerView;
      backgroundView = *(&self->super.super.super.super.isa + v58);
LABEL_27:
      [(_MKBalloonCalloutView *)v45 addSubview:backgroundView];
      goto LABEL_28;
    }

    if (style)
    {
      if (style != 1)
      {
        goto LABEL_28;
      }

      v40 = objc_alloc(MEMORY[0x1E69DCAE0]);
      v41 = [MEMORY[0x1E69DCAB8] _mapkit_imageNamed:@"square_balloon_mask"];
      v42 = [v40 initWithImage:v41];
      balloonBodyImageView = self->_balloonBodyImageView;
      self->_balloonBodyImageView = v42;

      [(UIImageView *)self->_balloonBodyImageView setFrame:0.0, 0.0, 60.0, 60.0];
      [(UIImageView *)self->_balloonBodyImageView setTintColor:self->_strokeColor];
      [(UIView *)self->_containerView addSubview:self->_balloonBodyImageView];
      backgroundView = self->_tailView;
      v45 = self;
      goto LABEL_27;
    }

    goto LABEL_19;
  }

  v28 = MKGetAnnotationsLog();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
  {
    v29 = objc_opt_class();
    v30 = NSStringFromClass(v29);
    v31 = NSStringFromProtocol(&unk_1F1673870);
    *buf = 138543618;
    *&buf[4] = v30;
    v87 = 2114;
    v88 = v31;
    _os_log_impl(&dword_1A2EA0000, v28, OS_LOG_TYPE_DEBUG, "%{public}@ does not conform to %{public}@", buf, 0x16u);
  }

LABEL_42:
}

- (void)dealloc
{
  [(_MKBalloonCalloutView *)self _stopObservingAnnotationView];
  v3.receiver = self;
  v3.super_class = _MKBalloonCalloutView;
  [(_MKBalloonCalloutView *)&v3 dealloc];
}

- (_MKBalloonCalloutView)initWithAnnotationView:(id)a3
{
  v6.receiver = self;
  v6.super_class = _MKBalloonCalloutView;
  v3 = [(MKCalloutView *)&v6 initWithAnnotationView:a3];
  v4 = v3;
  if (v3)
  {
    [(_MKBalloonCalloutView *)v3 _commonInit];
  }

  return v4;
}

@end