@interface _TUIStyledBoxStyler
- (BOOL)isEqualToStyle:(id)style;
- (CAFilter)compositingFilter;
- (_TUIStyledBoxStyler)initWithLayout:(id)layout contentsScale:(double)scale;
- (void)applyStylingToLayer:(id)layer;
- (void)applyStylingToView:(id)view;
- (void)removeStylingFromLayer:(id)layer;
- (void)removeStylingFromView:(id)view;
@end

@implementation _TUIStyledBoxStyler

- (_TUIStyledBoxStyler)initWithLayout:(id)layout contentsScale:(double)scale
{
  layoutCopy = layout;
  v34.receiver = self;
  v34.super_class = _TUIStyledBoxStyler;
  v7 = [(_TUIStyledBoxStyler *)&v34 init];
  if (v7)
  {
    v8 = [layoutCopy box];
    [layoutCopy computedBounds];
    v7->_bounds.origin.x = v9;
    v7->_bounds.origin.y = v10;
    v7->_bounds.size.width = v11;
    v7->_bounds.size.height = v12;
    backgroundColor = [v8 backgroundColor];
    backgroundColor = v7->_backgroundColor;
    v7->_backgroundColor = backgroundColor;

    [v8 opacity];
    v7->_opacity = v15;
    opacityTriggers = [v8 opacityTriggers];
    opacityTriggers = v7->_opacityTriggers;
    v7->_opacityTriggers = opacityTriggers;

    [v8 cornerRadius];
    v7->_cornerRadius = v18;
    if ([v8 continuousCorners])
    {
      v19 = 4;
    }

    else
    {
      v19 = 0;
    }

    *(v7 + 136) = *(v7 + 136) & 0xFB | v19;
    shadowColor = [v8 shadowColor];
    shadowColor = v7->_shadowColor;
    v7->_shadowColor = shadowColor;

    [v8 shadowOffset];
    v7->_shadowOffset.width = v22;
    v7->_shadowOffset.height = v23;
    [v8 shadowRadius];
    v7->_shadowRadius = v24;
    [v8 shadowOpacity];
    v7->_shadowOpacity = v25;
    *(v7 + 136) = *(v7 + 136) & 0xE7 | (8 * (scale & 3));
    borderColor = [v8 borderColor];
    borderColor = v7->_borderColor;
    v7->_borderColor = borderColor;

    [v8 borderWidth];
    v7->_borderWidth = v28;
    *(v7 + 136) = *(v7 + 136) & 0xFE | [v8 clipsToBounds];
    if ([v8 allowsGroupBlending])
    {
      v29 = 2;
    }

    else
    {
      v29 = 0;
    }

    *(v7 + 136) = *(v7 + 136) & 0xFD | v29;
    blendMode = [v8 blendMode];
    v31 = [blendMode copy];
    blendMode = v7->_blendMode;
    v7->_blendMode = v31;
  }

  return v7;
}

- (BOOL)isEqualToStyle:(id)style
{
  styleCopy = style;
  v5 = objc_opt_class();
  if (v5 == objc_opt_class())
  {
    v6 = styleCopy;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  v8 = v7;
  if (v7 == self)
  {
    goto LABEL_28;
  }

  if (!v7)
  {
    goto LABEL_21;
  }

  if (!CGRectEqualToRect(self->_bounds, v7->_bounds))
  {
    goto LABEL_21;
  }

  backgroundColor = self->_backgroundColor;
  if (backgroundColor != v8->_backgroundColor && ![(UIColor *)backgroundColor isEqual:?])
  {
    goto LABEL_21;
  }

  if (self->_opacity != v8->_opacity)
  {
    goto LABEL_21;
  }

  opacityTriggers = self->_opacityTriggers;
  if (opacityTriggers != v8->_opacityTriggers && ![(NSDictionary *)opacityTriggers isEqualToDictionary:?])
  {
    goto LABEL_21;
  }

  if (self->_cornerRadius != v8->_cornerRadius)
  {
    goto LABEL_21;
  }

  if (((*(v8 + 136) ^ *(self + 136)) & 4) != 0)
  {
    goto LABEL_21;
  }

  shadowColor = self->_shadowColor;
  if (shadowColor != v8->_shadowColor && ![(UIColor *)shadowColor isEqual:?])
  {
    goto LABEL_21;
  }

  v12 = 0;
  if (self->_shadowOffset.width == v8->_shadowOffset.width && self->_shadowOffset.height == v8->_shadowOffset.height)
  {
    if (self->_shadowRadius == v8->_shadowRadius && self->_shadowOpacity == v8->_shadowOpacity && ((*(v8 + 136) ^ *(self + 136)) & 0x18) == 0)
    {
      borderColor = self->_borderColor;
      if ((borderColor == v8->_borderColor || [(UIColor *)borderColor isEqual:?]) && self->_borderWidth == v8->_borderWidth && ((*(v8 + 136) ^ *(self + 136)) & 3) == 0)
      {
        blendMode = self->_blendMode;
        if (blendMode != v8->_blendMode)
        {
          v12 = [(NSString *)blendMode isEqualToString:?];
          goto LABEL_29;
        }

LABEL_28:
        v12 = 1;
        goto LABEL_29;
      }
    }

LABEL_21:
    v12 = 0;
  }

LABEL_29:

  return v12;
}

- (void)applyStylingToLayer:(id)layer
{
  layerCopy = layer;
  [layerCopy setBackgroundColor:{-[UIColor CGColor](self->_backgroundColor, "CGColor")}];
  [layerCopy setCornerRadius:self->_cornerRadius];
  v4 = &kCACornerCurveCircular;
  if ((*(self + 136) & 4) != 0)
  {
    v4 = &kCACornerCurveContinuous;
  }

  [layerCopy setCornerCurve:*v4];
  [layerCopy setShadowColor:{-[UIColor CGColor](self->_shadowColor, "CGColor")}];
  [layerCopy setShadowOffset:{self->_shadowOffset.width, self->_shadowOffset.height}];
  [layerCopy setShadowRadius:self->_shadowRadius];
  shadowOpacity = self->_shadowOpacity;
  *&shadowOpacity = shadowOpacity;
  [layerCopy setShadowOpacity:shadowOpacity];
  if (self->_shadowColor && self->_backgroundColor)
  {
    x = self->_bounds.origin.x;
    y = self->_bounds.origin.y;
    width = self->_bounds.size.width;
    height = self->_bounds.size.height;
    cornerRadius = self->_cornerRadius;
    Mutable = CGPathCreateMutable();
    v12 = Mutable;
    v13 = x;
    v14 = y;
    v15 = width;
    v16 = height;
    if (cornerRadius == 0.0)
    {
      CGPathAddRect(Mutable, 0, *&v13);
    }

    else
    {
      MinX = CGRectGetMinX(*&v13);
      v29.origin.x = x;
      v29.origin.y = y;
      v29.size.width = width;
      v29.size.height = height;
      MaxY = CGRectGetMaxY(v29);
      v30.origin.x = x;
      v30.origin.y = y;
      v30.size.width = width;
      v30.size.height = height;
      MaxX = CGRectGetMaxX(v30);
      v31.origin.x = x;
      v31.origin.y = y;
      v31.size.width = width;
      v31.size.height = height;
      v23 = CGRectGetMaxY(v31);
      v32.origin.x = x;
      v32.origin.y = y;
      v32.size.width = width;
      v32.size.height = height;
      v17 = CGRectGetMaxX(v32);
      v33.origin.x = x;
      v33.origin.y = y;
      v33.size.width = width;
      v33.size.height = height;
      MinY = CGRectGetMinY(v33);
      CGPathMoveToPoint(v12, 0, MinX + 0.0, MaxY - cornerRadius);
      CGPathAddArcToPoint(v12, 0, x, y, x + cornerRadius, y + 0.0, cornerRadius);
      CGPathAddArcToPoint(v12, 0, v17, MinY, v17, cornerRadius + MinY, cornerRadius);
      CGPathAddArcToPoint(v12, 0, MaxX, v23, MaxX - cornerRadius, v23, cornerRadius);
      CGPathAddArcToPoint(v12, 0, MinX, MaxY, MinX + 0.0, MaxY - cornerRadius, cornerRadius);
      CGPathCloseSubpath(v12);
    }

    [layerCopy setShadowPath:v12];
    CGPathRelease(v12);
  }

  [layerCopy setBorderColor:{-[UIColor CGColor](self->_borderColor, "CGColor")}];
  [layerCopy setBorderWidth:self->_borderWidth];
  [layerCopy setMasksToBounds:*(self + 136) & 1];
  [layerCopy setAllowsGroupBlending:(*(self + 136) >> 1) & 1];
  compositingFilter = [(_TUIStyledBoxStyler *)self compositingFilter];
  [layerCopy setCompositingFilter:compositingFilter];

  [layerCopy setContentsScale:((*(self + 136) >> 3) & 3)];
  v20 = objc_opt_class();
  v21 = TUIDynamicCast(v20, layerCopy);
  [v21 setOpacityTriggers:self->_opacityTriggers];
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
  [(_TUIStyledBoxStyler *)self applyStylingToLayer:?];
}

- (void)removeStylingFromLayer:(id)layer
{
  layerCopy = layer;
  v3 = objc_opt_class();
  v4 = TUIDynamicCast(v3, layerCopy);
  [v4 setOpacityTriggers:0];
}

- (void)removeStylingFromView:(id)view
{
  layer = [view layer];
  [(_TUIStyledBoxStyler *)self removeStylingFromLayer:?];
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

@end