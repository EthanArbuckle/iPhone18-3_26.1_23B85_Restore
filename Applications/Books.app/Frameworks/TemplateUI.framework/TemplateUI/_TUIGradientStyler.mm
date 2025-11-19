@interface _TUIGradientStyler
- (BOOL)isEqualToStyle:(id)a3;
- (CAFilter)compositingFilter;
- (CGImage)maskImageWithStartPoint:(double)a3 endPoint:(double)a4 offset:(double)a5 startColor:(id)a6 endColor:(id)a7 direction:(unint64_t)a8 containerBounds:(CGRect)a9;
- (_TUIGradientStyler)initWithLayout:(id)a3;
- (void)applyStylingToLayer:(id)a3;
- (void)applyStylingToView:(id)a3;
- (void)removeStylingFromLayer:(id)a3;
- (void)removeStylingFromView:(id)a3;
@end

@implementation _TUIGradientStyler

- (_TUIGradientStyler)initWithLayout:(id)a3
{
  v4 = a3;
  v37.receiver = self;
  v37.super_class = _TUIGradientStyler;
  v5 = [(_TUIGradientStyler *)&v37 init];
  if (v5)
  {
    v6 = [v4 box];
    v7 = [v6 gradientStartColor];
    startColor = v5->_startColor;
    v5->_startColor = v7;

    v9 = [v4 box];
    v10 = [v9 gradientEndColor];
    endColor = v5->_endColor;
    v5->_endColor = v10;

    v12 = [v4 box];
    [v12 gradientStartPosition];
    v5->_startPosition = v13;

    v14 = [v4 box];
    [v14 gradientEndPosition];
    v5->_endPosition = v15;

    v16 = [v4 box];
    v5->_direction = [v16 gradientDirection];

    v17 = objc_opt_class();
    v18 = [v4 layoutAncestor];
    v19 = [v18 box];
    v20 = TUIDynamicCast(v17, v19);
    [v20 cornerRadius];
    v5->_cornerRadius = v21;

    v22 = [v4 box];
    v5->_continuousCorners = [v22 continuousCorners];

    v23 = [v4 box];
    v24 = [v23 blendMode];
    v25 = [v24 copy];
    blendMode = v5->_blendMode;
    v5->_blendMode = v25;

    v27 = [v4 box];
    [v27 gradientBlurRadius];
    v5->_blurRadius = v28;

    v29 = [v4 box];
    [v29 gradientBlurOffset];
    v5->_blurOffset = v30;

    v31 = [v4 box];
    [v31 opacity];
    v5->_opacity = v32;

    v33 = [v4 box];
    v34 = [v33 opacityTriggers];
    opacityTriggers = v5->_opacityTriggers;
    v5->_opacityTriggers = v34;
  }

  return v5;
}

- (BOOL)isEqualToStyle:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = TUIDynamicCast(v5, v4);

  if (v6 == self)
  {
    goto LABEL_20;
  }

  if (!v6 || self->_startPosition != v6->_startPosition || self->_endPosition != v6->_endPosition || self->_direction != v6->_direction || self->_cornerRadius != v6->_cornerRadius || self->_continuousCorners != v6->_continuousCorners || (startColor = self->_startColor, startColor != v6->_startColor) && ![(UIColor *)startColor isEqual:?]|| (endColor = self->_endColor, endColor != v6->_endColor) && ![(UIColor *)endColor isEqual:?]|| (blendMode = self->_blendMode, blendMode != v6->_blendMode) && ![(NSString *)blendMode isEqualToString:?]|| self->_blurRadius != v6->_blurRadius || self->_blurOffset != v6->_blurOffset || self->_opacity != v6->_opacity)
  {
    v11 = 0;
    goto LABEL_21;
  }

  opacityTriggers = self->_opacityTriggers;
  if (opacityTriggers == v6->_opacityTriggers)
  {
LABEL_20:
    v11 = 1;
    goto LABEL_21;
  }

  v11 = [(NSDictionary *)opacityTriggers isEqualToDictionary:?];
LABEL_21:

  return v11;
}

- (void)applyStylingToLayer:(id)a3
{
  v4 = a3;
  v5 = kCAFilterVariableBlur;
  if ([(NSString *)self->_blendMode isEqualToString:kCAFilterVariableBlur])
  {
    v6 = [(_TUIGradientStyler *)self maskImageWithStartPoint:self->_startColor endPoint:self->_endColor offset:self->_direction startColor:self->_startPosition endColor:self->_endPosition direction:self->_blurOffset containerBounds:0.0, 0.0, 10.0, 10.0];
    v7 = [CAFilter filterWithType:v5];
    [v7 setValue:&__kCFBooleanFalse forKey:@"inputDither"];
    [v7 setValue:v6 forKey:@"inputMaskImage"];
    [v7 setValue:&__kCFBooleanTrue forKey:@"inputNormalizeEdges"];
    v8 = [NSNumber numberWithDouble:self->_blurRadius];
    [v7 setValue:v8 forKey:@"inputRadius"];

    [v4 setAllowsHitTesting:0];
    v30 = v7;
    v9 = [NSArray arrayWithObjects:&v30 count:1];
    [v4 setFilters:v9];

    [v4 setMasksToBounds:1];
  }

  else
  {
    v10 = kCAFilterGaussianBlur;
    if ([(NSString *)self->_blendMode isEqualToString:kCAFilterGaussianBlur])
    {
      v7 = [CAFilter filterWithType:v10];
      [v7 setValue:&__kCFBooleanFalse forKey:@"inputDither"];
      [v7 setValue:&__kCFBooleanTrue forKey:@"inputNormalizeEdges"];
      v11 = [NSNumber numberWithDouble:self->_blurRadius];
      [v7 setValue:v11 forKey:@"inputRadius"];

      v12 = +[CAGradientLayer layer];
      v29[0] = [(UIColor *)self->_startColor CGColor];
      v29[1] = [(UIColor *)self->_endColor CGColor];
      v13 = [NSArray arrayWithObjects:v29 count:2];
      [v12 setColors:v13];

      v14 = [NSNumber numberWithDouble:self->_startPosition];
      v28[0] = v14;
      v15 = [NSNumber numberWithDouble:self->_endPosition];
      v28[1] = v15;
      v16 = [NSArray arrayWithObjects:v28 count:2];
      [v12 setLocations:v16];

      [v4 bounds];
      [v12 setFrame:?];
      [v4 setAllowsHitTesting:0];
      v27 = v7;
      v17 = [NSArray arrayWithObjects:&v27 count:1];
      [v4 setFilters:v17];

      [v4 setMasksToBounds:1];
      [v4 setMask:v12];
    }

    else
    {
      v7 = v4;
      startColor = self->_startColor;
      if (startColor && self->_endColor)
      {
        v26[0] = [(UIColor *)startColor CGColor];
        v26[1] = [(UIColor *)self->_endColor CGColor];
        v19 = [NSArray arrayWithObjects:v26 count:2];
        [v7 setColors:v19];
      }

      if (self->_direction == 1)
      {
        v20 = 0.5;
        [v7 setStartPoint:{self->_startPosition, 0.5}];
        endPosition = self->_endPosition;
      }

      else
      {
        endPosition = 0.5;
        [v7 setStartPoint:{0.5, self->_startPosition}];
        v20 = self->_endPosition;
      }

      [v7 setEndPoint:{endPosition, v20}];
      v22 = &kCACornerCurveContinuous;
      if (!self->_continuousCorners)
      {
        v22 = &kCACornerCurveCircular;
      }

      [v7 setCornerCurve:*v22];
      [v7 setCornerRadius:self->_cornerRadius];
      v12 = [(_TUIGradientStyler *)self compositingFilter];
      [v7 setCompositingFilter:v12];
    }
  }

  v23 = objc_opt_class();
  v24 = TUIDynamicCast(v23, v4);
  [v24 setOpacityTriggers:self->_opacityTriggers];
  if (!self->_opacityTriggers)
  {
    opacity = self->_opacity;
    *&opacity = opacity;
    [v4 setOpacity:opacity];
  }
}

- (void)applyStylingToView:(id)a3
{
  v4 = [a3 layer];
  [(_TUIGradientStyler *)self applyStylingToLayer:v4];
}

- (void)removeStylingFromLayer:(id)a3
{
  v3 = a3;
  v4 = objc_opt_class();
  v5 = TUIDynamicCast(v4, v3);

  [v5 setOpacityTriggers:0];
}

- (void)removeStylingFromView:(id)a3
{
  v4 = [a3 layer];
  [(_TUIGradientStyler *)self removeStylingFromLayer:v4];
}

- (CAFilter)compositingFilter
{
  if (self->_blendMode)
  {
    v3 = [CAFilter filterWithType:?];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (CGImage)maskImageWithStartPoint:(double)a3 endPoint:(double)a4 offset:(double)a5 startColor:(id)a6 endColor:(id)a7 direction:(unint64_t)a8 containerBounds:(CGRect)a9
{
  height = a9.size.height;
  width = a9.size.width;
  y = a9.origin.y;
  x = a9.origin.x;
  v18 = a6;
  v19 = a7;
  v20 = +[UIGraphicsImageRendererFormat preferredFormat];
  [v20 setPreferredRange:2];
  v21 = [[UIGraphicsImageRenderer alloc] initWithBounds:v20 format:{x, y, width, height}];
  v28 = _NSConcreteStackBlock;
  v29 = 3221225472;
  v30 = sub_87070;
  v31 = &unk_2606E0;
  v34 = x;
  v35 = y;
  v36 = width;
  v37 = height;
  v32 = v18;
  v33 = v19;
  v38 = a5;
  v39 = a8;
  v40 = a3;
  v41 = a4;
  v22 = v19;
  v23 = v18;
  v24 = [v21 imageWithActions:&v28];
  v25 = v24;
  v26 = [v25 CGImage];

  return v26;
}

@end