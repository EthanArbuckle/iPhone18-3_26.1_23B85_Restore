@interface GuidanceLaneView
- (BOOL)_highlightFirstDirection;
- (CGSize)intrinsicContentSize;
- (GuidanceLaneView)initWithLaneInfo:(id)a3 maneuverHasPreferredLane:(BOOL)a4 drawingBiasDirection:(unint64_t)a5 laneStyle:(unint64_t)a6;
- (id)_defaultInvalidArrowColor;
- (id)_preferredArrowColor;
- (id)accessibilityIdentifier;
- (void)_removeUnusedUTurns;
- (void)_updateLanePaths;
- (void)drawRect:(CGRect)a3;
- (void)setDrawingScale:(double)a3;
- (void)setInvalidArrowColor:(id)a3;
- (void)setLaneStyle:(unint64_t)a3;
- (void)setVerticalOffset:(double)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation GuidanceLaneView

- (void)drawRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  if ([(NSArray *)self->_allPaths count:a3.origin.x])
  {
    v6 = [(GuidanceLaneView *)self _highlightFirstDirection];
    v7 = [(GuidanceLaneView *)self _markFirstDirectionAsValid];
    if (width > 0.0 && height > 0.0)
    {
      v8 = v7;
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
      if ((v6 | v8))
      {
        v28 = [v26 firstObject];
        [v27 removeObjectAtIndex:0];
      }

      else
      {
        v28 = 0;
      }

      if ([v27 count])
      {
        v43 = v6;
        v50 = 0.0;
        v51 = 0.0;
        v48 = 0.0;
        v49 = 0.0;
        invalidArrowColor = self->_invalidArrowColor;
        v30 = [(GuidanceLaneView *)self traitCollection];
        v31 = [(UIColor *)invalidArrowColor resolvedColorWithTraitCollection:v30];

        [v31 getRed:&v51 green:&v50 blue:&v49 alpha:&v48];
        v32 = [UIColor colorWithRed:v51 green:v50 blue:v49 alpha:1.0];
        [v32 setFill];

        v46 = 0u;
        v47 = 0u;
        v44 = 0u;
        v45 = 0u;
        v33 = [v27 reverseObjectEnumerator];
        v34 = [v33 countByEnumeratingWithState:&v44 objects:v52 count:16];
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
                objc_enumerationMutation(v33);
              }

              v38 = *(*(&v44 + 1) + 8 * i);
              [v38 fillWithBlendMode:25 alpha:v48];
              [v38 fillWithBlendMode:18 alpha:v48];
            }

            v35 = [v33 countByEnumeratingWithState:&v44 objects:v52 count:16];
          }

          while (v35);
        }

        LOBYTE(v6) = v43;
      }

      if (v28)
      {
        if (v6)
        {
          [(GuidanceLaneView *)self _preferredArrowColor];
        }

        else
        {
          [(GuidanceLaneView *)self _validArrowColor];
        }
        v39 = ;
        v40 = [(GuidanceLaneView *)self traitCollection];
        v41 = [v39 resolvedColorWithTraitCollection:v40];

        v50 = 0.0;
        v51 = 0.0;
        v48 = 0.0;
        v49 = 0.0;
        [v41 getRed:&v51 green:&v50 blue:&v49 alpha:&v48];
        v42 = [UIColor colorWithRed:v51 green:v50 blue:v49 alpha:1.0];
        [v42 setFill];

        [v28 fillWithBlendMode:0 alpha:v48];
      }

      CGContextRestoreGState(CurrentContext);
    }
  }
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = GuidanceLaneView;
  [(GuidanceLaneView *)&v8 traitCollectionDidChange:v4];
  if ([(GuidanceLaneView *)self laneStyle]- 1 <= 1)
  {
    v5 = [(GuidanceLaneView *)self traitCollection];
    v6 = [v5 userInterfaceStyle];
    v7 = [v4 userInterfaceStyle];

    if (v6 != v7)
    {
      [(GuidanceLaneView *)self setNeedsDisplay];
    }
  }
}

- (id)_defaultInvalidArrowColor
{
  v2 = [(GuidanceLaneView *)self laneStyle];
  if (v2 == 2)
  {
    v2 = +[UIColor carPlayDashboardJunctionColor];
  }

  else if (v2 == 1)
  {
    v2 = +[UIColor carPlayJunctionColor];
  }

  else if (!v2)
  {
    v2 = +[UIColor iOSJunctionColor];
  }

  return v2;
}

- (id)_preferredArrowColor
{
  v2 = [(GuidanceLaneView *)self laneStyle];
  if (v2 == 2)
  {
    v2 = [UIColor colorWithDynamicProvider:&stru_1016611B0];
  }

  else if (v2 == 1)
  {
    v2 = +[UIColor systemWhiteColor];
  }

  else if (!v2)
  {
    v2 = +[UIColor whiteColor];
  }

  return v2;
}

- (BOOL)_highlightFirstDirection
{
  v4 = [(GuidanceLaneView *)self maneuverHasPreferredLane];
  if (v4)
  {
    v2 = [(GuidanceLaneView *)self laneInfo];
    if ([v2 isPreferredLaneForManeuver])
    {
      v5 = 1;
LABEL_9:

      return v5;
    }

    if ([(GuidanceLaneView *)self maneuverHasPreferredLane])
    {
      v5 = 0;
      goto LABEL_9;
    }
  }

  else if ([(GuidanceLaneView *)self maneuverHasPreferredLane])
  {
    return 0;
  }

  v6 = [(GuidanceLaneView *)self laneInfo];
  v5 = [v6 isLaneForManeuver];

  if (v4)
  {
    goto LABEL_9;
  }

  return v5;
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
  v3 = [(GEOComposedRouteLaneInfo *)self->_laneInfo directions];
  v4 = [v3 count];

  if (v4 >= 2)
  {
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v5 = [(GEOComposedRouteLaneInfo *)self->_laneInfo directions];
    v6 = [v5 countByEnumeratingWithState:&v31 objects:v36 count:16];
    if (!v6)
    {
LABEL_40:

      return;
    }

    v7 = v6;
    v26 = self;
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
          objc_enumerationMutation(v5);
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
            v14 = [v13 direction];
            v16 = (v14 - 16 > 0x30 || ((1 << (v14 - 16)) & 0x1000000010001) == 0) && v14 >= 2;
            if (v16 && v14 != 128)
            {
              v9 = 1;
            }
          }
        }

        v12 = v12 + 1;
      }

      while (v7 != v12);
      v17 = [v5 countByEnumeratingWithState:&v31 objects:v36 count:16];
      v7 = v17;
    }

    while (v17);

    if (v8)
    {
      v18 = [(GEOComposedRouteLaneInfo *)v26->_laneInfo directions];
      v5 = [v18 firstObject];

      if (!-[GuidanceLaneView _highlightFirstDirection](v26, "_highlightFirstDirection") || [v5 direction] != 16 && objc_msgSend(v5, "direction") != 256)
      {
        v19 = objc_opt_new();
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        v20 = [(GEOComposedRouteLaneInfo *)v26->_laneInfo directions];
        v21 = [v20 countByEnumeratingWithState:&v27 objects:v35 count:16];
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
                objc_enumerationMutation(v20);
              }

              v25 = *(*(&v27 + 1) + 8 * i);
              if ((([v25 direction] == 16) & v10) == 0 && ((objc_msgSend(v25, "direction") == 256) & v9) == 0)
              {
                [v19 addObject:v25];
              }
            }

            v22 = [v20 countByEnumeratingWithState:&v27 objects:v35 count:16];
          }

          while (v22);
        }

        [(GEOComposedRouteLaneInfo *)v26->_laneInfo setDirections:v19];
      }

      goto LABEL_40;
    }
  }
}

- (void)setInvalidArrowColor:(id)a3
{
  v5 = a3;
  if (v5 && self->_invalidArrowColor != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_invalidArrowColor, a3);
    [(GuidanceLaneView *)self setNeedsDisplay];
    v5 = v6;
  }
}

- (void)setVerticalOffset:(double)a3
{
  if (self->_verticalOffset != a3)
  {
    self->_verticalOffset = a3;
    [(GuidanceLaneView *)self setNeedsDisplay];
  }
}

- (void)setDrawingScale:(double)a3
{
  if (self->_drawingScale != a3)
  {
    self->_drawingScale = a3;
    [(GuidanceLaneView *)self setNeedsDisplay];
  }
}

- (void)setLaneStyle:(unint64_t)a3
{
  if (self->_laneStyle != a3)
  {
    self->_laneStyle = a3;
    [(GuidanceLaneView *)self setNeedsDisplay];
  }
}

- (id)accessibilityIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (GuidanceLaneView)initWithLaneInfo:(id)a3 maneuverHasPreferredLane:(BOOL)a4 drawingBiasDirection:(unint64_t)a5 laneStyle:(unint64_t)a6
{
  v11 = a3;
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
    v16 = [(GuidanceLaneView *)v12 layer];
    [v16 setNeedsDisplayOnBoundsChange:1];

    objc_storeStrong(&v12->_laneInfo, a3);
    v12->_maneuverHasPreferredLane = a4;
    v12->_drawingBiasDirection = a5;
    v12->_laneStyle = a6;
    v12->_drawingScale = 1.0;
    v17 = [(GuidanceLaneView *)v12 _defaultInvalidArrowColor];
    invalidArrowColor = v12->_invalidArrowColor;
    v12->_invalidArrowColor = v17;

    [(GuidanceLaneView *)v12 _updateLanePaths];
  }

  return v12;
}

@end