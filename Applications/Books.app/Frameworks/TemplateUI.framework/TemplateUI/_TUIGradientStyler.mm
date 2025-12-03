@interface _TUIGradientStyler
- (BOOL)isEqualToStyle:(id)style;
- (CAFilter)compositingFilter;
- (CGImage)maskImageWithStartPoint:(double)point endPoint:(double)endPoint offset:(double)offset startColor:(id)color endColor:(id)endColor direction:(unint64_t)direction containerBounds:(CGRect)bounds;
- (_TUIGradientStyler)initWithLayout:(id)layout;
- (void)applyStylingToLayer:(id)layer;
- (void)applyStylingToView:(id)view;
- (void)removeStylingFromLayer:(id)layer;
- (void)removeStylingFromView:(id)view;
@end

@implementation _TUIGradientStyler

- (_TUIGradientStyler)initWithLayout:(id)layout
{
  layoutCopy = layout;
  v37.receiver = self;
  v37.super_class = _TUIGradientStyler;
  v5 = [(_TUIGradientStyler *)&v37 init];
  if (v5)
  {
    v6 = [layoutCopy box];
    gradientStartColor = [v6 gradientStartColor];
    startColor = v5->_startColor;
    v5->_startColor = gradientStartColor;

    v9 = [layoutCopy box];
    gradientEndColor = [v9 gradientEndColor];
    endColor = v5->_endColor;
    v5->_endColor = gradientEndColor;

    v12 = [layoutCopy box];
    [v12 gradientStartPosition];
    v5->_startPosition = v13;

    v14 = [layoutCopy box];
    [v14 gradientEndPosition];
    v5->_endPosition = v15;

    v16 = [layoutCopy box];
    v5->_direction = [v16 gradientDirection];

    v17 = objc_opt_class();
    layoutAncestor = [layoutCopy layoutAncestor];
    v19 = [layoutAncestor box];
    v20 = TUIDynamicCast(v17, v19);
    [v20 cornerRadius];
    v5->_cornerRadius = v21;

    v22 = [layoutCopy box];
    v5->_continuousCorners = [v22 continuousCorners];

    v23 = [layoutCopy box];
    blendMode = [v23 blendMode];
    v25 = [blendMode copy];
    blendMode = v5->_blendMode;
    v5->_blendMode = v25;

    v27 = [layoutCopy box];
    [v27 gradientBlurRadius];
    v5->_blurRadius = v28;

    v29 = [layoutCopy box];
    [v29 gradientBlurOffset];
    v5->_blurOffset = v30;

    v31 = [layoutCopy box];
    [v31 opacity];
    v5->_opacity = v32;

    v33 = [layoutCopy box];
    opacityTriggers = [v33 opacityTriggers];
    opacityTriggers = v5->_opacityTriggers;
    v5->_opacityTriggers = opacityTriggers;
  }

  return v5;
}

- (BOOL)isEqualToStyle:(id)style
{
  styleCopy = style;
  v5 = objc_opt_class();
  v6 = TUIDynamicCast(v5, styleCopy);

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

- (void)applyStylingToLayer:(id)layer
{
  layerCopy = layer;
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

    [layerCopy setAllowsHitTesting:0];
    v30 = v7;
    v9 = [NSArray arrayWithObjects:&v30 count:1];
    [layerCopy setFilters:v9];

    [layerCopy setMasksToBounds:1];
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

      compositingFilter = +[CAGradientLayer layer];
      v29[0] = [(UIColor *)self->_startColor CGColor];
      v29[1] = [(UIColor *)self->_endColor CGColor];
      v13 = [NSArray arrayWithObjects:v29 count:2];
      [compositingFilter setColors:v13];

      v14 = [NSNumber numberWithDouble:self->_startPosition];
      v28[0] = v14;
      v15 = [NSNumber numberWithDouble:self->_endPosition];
      v28[1] = v15;
      v16 = [NSArray arrayWithObjects:v28 count:2];
      [compositingFilter setLocations:v16];

      [layerCopy bounds];
      [compositingFilter setFrame:?];
      [layerCopy setAllowsHitTesting:0];
      v27 = v7;
      v17 = [NSArray arrayWithObjects:&v27 count:1];
      [layerCopy setFilters:v17];

      [layerCopy setMasksToBounds:1];
      [layerCopy setMask:compositingFilter];
    }

    else
    {
      v7 = layerCopy;
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
      compositingFilter = [(_TUIGradientStyler *)self compositingFilter];
      [v7 setCompositingFilter:compositingFilter];
    }
  }

  v23 = objc_opt_class();
  v24 = TUIDynamicCast(v23, layerCopy);
  [v24 setOpacityTriggers:self->_opacityTriggers];
  if (!self->_opacityTriggers)
  {
    opacity = self->_opacity;
    *&opacity = opacity;
    [layerCopy setOpacity:opacity];
  }
}

- (void)applyStylingToView:(id)view
{
  layer = [view layer];
  [(_TUIGradientStyler *)self applyStylingToLayer:layer];
}

- (void)removeStylingFromLayer:(id)layer
{
  layerCopy = layer;
  v4 = objc_opt_class();
  v5 = TUIDynamicCast(v4, layerCopy);

  [v5 setOpacityTriggers:0];
}

- (void)removeStylingFromView:(id)view
{
  layer = [view layer];
  [(_TUIGradientStyler *)self removeStylingFromLayer:layer];
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

- (CGImage)maskImageWithStartPoint:(double)point endPoint:(double)endPoint offset:(double)offset startColor:(id)color endColor:(id)endColor direction:(unint64_t)direction containerBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  colorCopy = color;
  endColorCopy = endColor;
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
  v32 = colorCopy;
  v33 = endColorCopy;
  offsetCopy = offset;
  directionCopy = direction;
  pointCopy = point;
  endPointCopy = endPoint;
  v22 = endColorCopy;
  v23 = colorCopy;
  v24 = [v21 imageWithActions:&v28];
  v25 = v24;
  cGImage = [v25 CGImage];

  return cGImage;
}

@end