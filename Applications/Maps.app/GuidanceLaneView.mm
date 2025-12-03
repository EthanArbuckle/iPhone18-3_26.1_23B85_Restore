@interface GuidanceLaneView
- (BOOL)_highlightFirstDirection;
- (CGSize)intrinsicContentSize;
- (GuidanceLaneView)initWithLaneInfo:(id)info maneuverHasPreferredLane:(BOOL)lane drawingBiasDirection:(unint64_t)direction laneStyle:(unint64_t)style;
- (id)_defaultInvalidArrowColor;
- (id)_preferredArrowColor;
- (id)accessibilityIdentifier;
- (void)_removeUnusedUTurns;
- (void)_updateLanePaths;
- (void)drawRect:(CGRect)rect;
- (void)setDrawingScale:(double)scale;
- (void)setInvalidArrowColor:(id)color;
- (void)setLaneStyle:(unint64_t)style;
- (void)setVerticalOffset:(double)offset;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation GuidanceLaneView

- (void)drawRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  if ([(NSArray *)self->_allPaths count:rect.origin.x])
  {
    _highlightFirstDirection = [(GuidanceLaneView *)self _highlightFirstDirection];
    _markFirstDirectionAsValid = [(GuidanceLaneView *)self _markFirstDirectionAsValid];
    if (width > 0.0 && height > 0.0)
    {
      v8 = _markFirstDirectionAsValid;
      v9 = self->_laneDrawingSize.width;
      [(GuidanceLaneView *)self drawingScale];
      v11 = (width - v10 * v9) * 0.5;
      v12 = self->_laneDrawingSize.height;
      [(GuidanceLaneView *)self drawingScale];
      v14 = v13;
      [(GuidanceLaneView *)self verticalOffset];
      v16 = v15 + v14 * v12;
      v17 = 0.0;
      if (height >= v16)
      {
        v18 = self->_laneDrawingSize.height;
        [(GuidanceLaneView *)self drawingScale];
        v20 = v19;
        [(GuidanceLaneView *)self verticalOffset];
        v17 = height - (v21 + v20 * v18);
      }

      CurrentContext = UIGraphicsGetCurrentContext();
      CGContextSaveGState(CurrentContext);
      CGContextTranslateCTM(CurrentContext, v11, v17);
      [(GuidanceLaneView *)self drawingScale];
      v24 = v23;
      [(GuidanceLaneView *)self drawingScale];
      CGContextScaleCTM(CurrentContext, v24, v25);
      v26 = [(NSArray *)self->_allPaths mutableCopy];
      v27 = v26;
      if ((_highlightFirstDirection | v8))
      {
        firstObject = [v26 firstObject];
        [v27 removeObjectAtIndex:0];
      }

      else
      {
        firstObject = 0;
      }

      if ([v27 count])
      {
        v43 = _highlightFirstDirection;
        v50 = 0.0;
        v51 = 0.0;
        v48 = 0.0;
        v49 = 0.0;
        invalidArrowColor = self->_invalidArrowColor;
        traitCollection = [(GuidanceLaneView *)self traitCollection];
        v31 = [(UIColor *)invalidArrowColor resolvedColorWithTraitCollection:traitCollection];

        [v31 getRed:&v51 green:&v50 blue:&v49 alpha:&v48];
        v32 = [UIColor colorWithRed:v51 green:v50 blue:v49 alpha:1.0];
        [v32 setFill];

        v46 = 0u;
        v47 = 0u;
        v44 = 0u;
        v45 = 0u;
        reverseObjectEnumerator = [v27 reverseObjectEnumerator];
        v34 = [reverseObjectEnumerator countByEnumeratingWithState:&v44 objects:v52 count:16];
        if (v34)
        {
          v35 = v34;
          v36 = *v45;
          do
          {
            for (i = 0; i != v35; i = i + 1)
            {
              if (*v45 != v36)
              {
                objc_enumerationMutation(reverseObjectEnumerator);
              }

              v38 = *(*(&v44 + 1) + 8 * i);
              [v38 fillWithBlendMode:25 alpha:v48];
              [v38 fillWithBlendMode:18 alpha:v48];
            }

            v35 = [reverseObjectEnumerator countByEnumeratingWithState:&v44 objects:v52 count:16];
          }

          while (v35);
        }

        LOBYTE(_highlightFirstDirection) = v43;
      }

      if (firstObject)
      {
        if (_highlightFirstDirection)
        {
          [(GuidanceLaneView *)self _preferredArrowColor];
        }

        else
        {
          [(GuidanceLaneView *)self _validArrowColor];
        }
        v39 = ;
        traitCollection2 = [(GuidanceLaneView *)self traitCollection];
        v41 = [v39 resolvedColorWithTraitCollection:traitCollection2];

        v50 = 0.0;
        v51 = 0.0;
        v48 = 0.0;
        v49 = 0.0;
        [v41 getRed:&v51 green:&v50 blue:&v49 alpha:&v48];
        v42 = [UIColor colorWithRed:v51 green:v50 blue:v49 alpha:1.0];
        [v42 setFill];

        [firstObject fillWithBlendMode:0 alpha:v48];
      }

      CGContextRestoreGState(CurrentContext);
    }
  }
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v8.receiver = self;
  v8.super_class = GuidanceLaneView;
  [(GuidanceLaneView *)&v8 traitCollectionDidChange:changeCopy];
  if ([(GuidanceLaneView *)self laneStyle]- 1 <= 1)
  {
    traitCollection = [(GuidanceLaneView *)self traitCollection];
    userInterfaceStyle = [traitCollection userInterfaceStyle];
    userInterfaceStyle2 = [changeCopy userInterfaceStyle];

    if (userInterfaceStyle != userInterfaceStyle2)
    {
      [(GuidanceLaneView *)self setNeedsDisplay];
    }
  }
}

- (id)_defaultInvalidArrowColor
{
  laneStyle = [(GuidanceLaneView *)self laneStyle];
  if (laneStyle == 2)
  {
    laneStyle = +[UIColor carPlayDashboardJunctionColor];
  }

  else if (laneStyle == 1)
  {
    laneStyle = +[UIColor carPlayJunctionColor];
  }

  else if (!laneStyle)
  {
    laneStyle = +[UIColor iOSJunctionColor];
  }

  return laneStyle;
}

- (id)_preferredArrowColor
{
  laneStyle = [(GuidanceLaneView *)self laneStyle];
  if (laneStyle == 2)
  {
    laneStyle = [UIColor colorWithDynamicProvider:&stru_1016611B0];
  }

  else if (laneStyle == 1)
  {
    laneStyle = +[UIColor systemWhiteColor];
  }

  else if (!laneStyle)
  {
    laneStyle = +[UIColor whiteColor];
  }

  return laneStyle;
}

- (BOOL)_highlightFirstDirection
{
  maneuverHasPreferredLane = [(GuidanceLaneView *)self maneuverHasPreferredLane];
  if (maneuverHasPreferredLane)
  {
    laneInfo = [(GuidanceLaneView *)self laneInfo];
    if ([laneInfo isPreferredLaneForManeuver])
    {
      isLaneForManeuver = 1;
LABEL_9:

      return isLaneForManeuver;
    }

    if ([(GuidanceLaneView *)self maneuverHasPreferredLane])
    {
      isLaneForManeuver = 0;
      goto LABEL_9;
    }
  }

  else if ([(GuidanceLaneView *)self maneuverHasPreferredLane])
  {
    return 0;
  }

  laneInfo2 = [(GuidanceLaneView *)self laneInfo];
  isLaneForManeuver = [laneInfo2 isLaneForManeuver];

  if (maneuverHasPreferredLane)
  {
    goto LABEL_9;
  }

  return isLaneForManeuver;
}

- (CGSize)intrinsicContentSize
{
  width = self->_laneDrawingSize.width;
  height = self->_laneDrawingSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)_updateLanePaths
{
  [(GuidanceLaneView *)self _highlightFirstDirection];
  [(GuidanceLaneView *)self _removeUnusedUTurns];
  MKDefaultJunctionManeuverMetrics();
  v3 = MKCreateBezierPathsForLane();
  allPaths = self->_allPaths;
  self->_allPaths = v3;

  [(GuidanceLaneView *)self invalidateIntrinsicContentSize:0];
}

- (void)_removeUnusedUTurns
{
  directions = [(GEOComposedRouteLaneInfo *)self->_laneInfo directions];
  v4 = [directions count];

  if (v4 >= 2)
  {
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    directions2 = [(GEOComposedRouteLaneInfo *)self->_laneInfo directions];
    v6 = [directions2 countByEnumeratingWithState:&v31 objects:v36 count:16];
    if (!v6)
    {
LABEL_40:

      return;
    }

    v7 = v6;
    selfCopy = self;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = *v32;
    do
    {
      v12 = 0;
      do
      {
        if (*v32 != v11)
        {
          objc_enumerationMutation(directions2);
        }

        v13 = *(*(&v31 + 1) + 8 * v12);
        if ([v13 direction] == 16 || objc_msgSend(v13, "direction") == 256)
        {
          v8 = 1;
        }

        else
        {
          [v13 direction];
          if (MKLaneDirectionIsToTheLeft())
          {
            v10 = 1;
          }

          else
          {
            direction = [v13 direction];
            v16 = (direction - 16 > 0x30 || ((1 << (direction - 16)) & 0x1000000010001) == 0) && direction >= 2;
            if (v16 && direction != 128)
            {
              v9 = 1;
            }
          }
        }

        v12 = v12 + 1;
      }

      while (v7 != v12);
      v17 = [directions2 countByEnumeratingWithState:&v31 objects:v36 count:16];
      v7 = v17;
    }

    while (v17);

    if (v8)
    {
      directions3 = [(GEOComposedRouteLaneInfo *)selfCopy->_laneInfo directions];
      directions2 = [directions3 firstObject];

      if (!-[GuidanceLaneView _highlightFirstDirection](selfCopy, "_highlightFirstDirection") || [directions2 direction] != 16 && objc_msgSend(directions2, "direction") != 256)
      {
        v19 = objc_opt_new();
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        directions4 = [(GEOComposedRouteLaneInfo *)selfCopy->_laneInfo directions];
        v21 = [directions4 countByEnumeratingWithState:&v27 objects:v35 count:16];
        if (v21)
        {
          v22 = v21;
          v23 = *v28;
          do
          {
            for (i = 0; i != v22; i = i + 1)
            {
              if (*v28 != v23)
              {
                objc_enumerationMutation(directions4);
              }

              v25 = *(*(&v27 + 1) + 8 * i);
              if ((([v25 direction] == 16) & v10) == 0 && ((objc_msgSend(v25, "direction") == 256) & v9) == 0)
              {
                [v19 addObject:v25];
              }
            }

            v22 = [directions4 countByEnumeratingWithState:&v27 objects:v35 count:16];
          }

          while (v22);
        }

        [(GEOComposedRouteLaneInfo *)selfCopy->_laneInfo setDirections:v19];
      }

      goto LABEL_40;
    }
  }
}

- (void)setInvalidArrowColor:(id)color
{
  colorCopy = color;
  if (colorCopy && self->_invalidArrowColor != colorCopy)
  {
    v6 = colorCopy;
    objc_storeStrong(&self->_invalidArrowColor, color);
    [(GuidanceLaneView *)self setNeedsDisplay];
    colorCopy = v6;
  }
}

- (void)setVerticalOffset:(double)offset
{
  if (self->_verticalOffset != offset)
  {
    self->_verticalOffset = offset;
    [(GuidanceLaneView *)self setNeedsDisplay];
  }
}

- (void)setDrawingScale:(double)scale
{
  if (self->_drawingScale != scale)
  {
    self->_drawingScale = scale;
    [(GuidanceLaneView *)self setNeedsDisplay];
  }
}

- (void)setLaneStyle:(unint64_t)style
{
  if (self->_laneStyle != style)
  {
    self->_laneStyle = style;
    [(GuidanceLaneView *)self setNeedsDisplay];
  }
}

- (id)accessibilityIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (GuidanceLaneView)initWithLaneInfo:(id)info maneuverHasPreferredLane:(BOOL)lane drawingBiasDirection:(unint64_t)direction laneStyle:(unint64_t)style
{
  infoCopy = info;
  v20.receiver = self;
  v20.super_class = GuidanceLaneView;
  v12 = [(GuidanceLaneView *)&v20 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  if (v12)
  {
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    [(GuidanceLaneView *)v12 setAccessibilityIdentifier:v14];

    [(GuidanceLaneView *)v12 setClearsContextBeforeDrawing:1];
    v15 = +[UIColor clearColor];
    [(GuidanceLaneView *)v12 setBackgroundColor:v15];

    [(GuidanceLaneView *)v12 setOpaque:0];
    layer = [(GuidanceLaneView *)v12 layer];
    [layer setNeedsDisplayOnBoundsChange:1];

    objc_storeStrong(&v12->_laneInfo, info);
    v12->_maneuverHasPreferredLane = lane;
    v12->_drawingBiasDirection = direction;
    v12->_laneStyle = style;
    v12->_drawingScale = 1.0;
    _defaultInvalidArrowColor = [(GuidanceLaneView *)v12 _defaultInvalidArrowColor];
    invalidArrowColor = v12->_invalidArrowColor;
    v12->_invalidArrowColor = _defaultInvalidArrowColor;

    [(GuidanceLaneView *)v12 _updateLanePaths];
  }

  return v12;
}

@end