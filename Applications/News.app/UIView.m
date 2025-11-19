@interface UIView
+ (id)fr_adjacentSiblingViewsFromViews:(id)a3;
+ (void)fr_animateWithDuration:(double)a3 delay:(double)a4 timingFunction:(id)a5 options:(unint64_t)a6 animations:(id)a7 completion:(id)a8;
- (BOOL)fr_hasAncestorOfType:(Class)a3;
- (BOOL)visible;
- (CGRect)fr_adjustedWidthAndXOriginFromFrame:(CGRect)a3;
- (double)fr_height;
- (double)fr_width;
- (id)fr_firstAncestorOfType:(Class)a3;
- (id)fr_selfOrFirstAncestorOfType:(Class)a3;
- (id)fr_subviewsOfType:(Class)a3;
- (void)fr_accessibilityWorkaroundFor20458918ByClearingParentTableCellsChildCache;
- (void)fr_recolorLabelSubviewsWithColor:(id)a3;
- (void)fr_setBlurred:(BOOL)a3 radius:(double)a4 animated:(BOOL)a5 duration:(double)a6;
- (void)fr_setHeight:(double)a3;
- (void)fr_setMaxX:(double)a3;
- (void)fr_setMaxY:(double)a3;
- (void)fr_setMinX:(double)a3;
- (void)fr_setMinY:(double)a3;
- (void)roundOrigin;
- (void)setFr_width:(double)a3;
@end

@implementation UIView

- (void)roundOrigin
{
  [(UIView *)self frame];
  v4 = round(v3);
  v6 = round(v5);

  [(UIView *)self setFrame:v4, v6];
}

- (void)fr_setMinX:(double)a3
{
  [(UIView *)self frame];

  [(UIView *)self setFrame:a3];
}

- (void)fr_setMaxX:(double)a3
{
  [(UIView *)self frame];

  [(UIView *)self setFrame:a3 - v5];
}

- (void)fr_setMinY:(double)a3
{
  [(UIView *)self frame];

  [(UIView *)self setFrame:?];
}

- (void)fr_setMaxY:(double)a3
{
  [(UIView *)self frame];

  [(UIView *)self setFrame:?];
}

- (double)fr_width
{
  [(UIView *)self frame];

  return CGRectGetWidth(*&v2);
}

- (void)setFr_width:(double)a3
{
  [(UIView *)self frame];

  [(UIView *)self setFrame:?];
}

- (double)fr_height
{
  [(UIView *)self frame];

  return CGRectGetHeight(*&v2);
}

- (void)fr_setHeight:(double)a3
{
  [(UIView *)self frame];

  [(UIView *)self setFrame:?];
}

- (void)fr_accessibilityWorkaroundFor20458918ByClearingParentTableCellsChildCache
{
  v2 = [(UIView *)self fr_selfOrFirstAncestorOfType:objc_opt_class()];
  NSSelectorFromString(@"_accessibilityClearChildren");
  if (objc_opt_respondsToSelector())
  {
    [v2 _accessibilityClearChildren];
  }
}

- (BOOL)fr_hasAncestorOfType:(Class)a3
{
  v3 = [(UIView *)self fr_firstAncestorOfType:a3];
  v4 = v3 != 0;

  return v4;
}

- (id)fr_firstAncestorOfType:(Class)a3
{
  v3 = [(UIView *)self superview];
  if (v3)
  {
    v4 = v3;
    while ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v5 = [v4 superview];

      v4 = v5;
      if (!v5)
      {
        goto LABEL_5;
      }
    }

    v6 = v4;
  }

  else
  {
LABEL_5:
    v6 = 0;
  }

  return v6;
}

- (id)fr_selfOrFirstAncestorOfType:(Class)a3
{
  v3 = self;
  if (v3)
  {
    v4 = v3;
    while ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v5 = [v4 superview];

      v4 = v5;
      if (!v5)
      {
        goto LABEL_5;
      }
    }

    v6 = v4;
  }

  else
  {
LABEL_5:
    v6 = 0;
  }

  return v6;
}

- (id)fr_subviewsOfType:(Class)a3
{
  v4 = +[NSMutableArray array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [(UIView *)self subviews];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        if (objc_opt_isKindOfClass())
        {
          [v4 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = [v4 copy];

  return v11;
}

- (CGRect)fr_adjustedWidthAndXOriginFromFrame:(CGRect)a3
{
  width = a3.size.width;
  x = a3.origin.x;
  [(UIView *)self frame:a3.origin.x];
  v7 = x;
  v8 = width;
  result.size.height = v6;
  result.size.width = v8;
  result.origin.y = v5;
  result.origin.x = v7;
  return result;
}

+ (void)fr_animateWithDuration:(double)a3 delay:(double)a4 timingFunction:(id)a5 options:(unint64_t)a6 animations:(id)a7 completion:(id)a8
{
  v15 = a7;
  v13 = a8;
  if (a5)
  {
    v14 = a5;
    a5 = objc_alloc_init(FRCustomAnimationCurveFactory);
    [a5 setTimingFunction:v14];

    a6 |= 0x60000uLL;
  }

  [UIView _animateWithDuration:a6 delay:a5 options:v15 factory:v13 animations:a3 completion:a4];
}

- (void)fr_setBlurred:(BOOL)a3 radius:(double)a4 animated:(BOOL)a5 duration:(double)a6
{
  v7 = a5;
  v9 = a3;
  if (!UIAccessibilityIsReduceTransparencyEnabled())
  {
    v12 = +[UIScreen mainScreen];
    [v12 scale];
    v14 = v13;

    v15 = [NSNumber numberWithDouble:a4];
    v16 = v15;
    if (v9)
    {
      if (v7)
      {
        v17 = v15;
        v16 = &off_1000CB600;
        v18 = 0.7;
        v19 = v14;
LABEL_10:
        v20 = [(UIView *)self layer];
        [v20 setShouldRasterize:1];

        v21 = [(UIView *)self layer];
        [v21 setRasterizationScale:v18];

        +[CATransaction begin];
        [CATransaction setAnimationDuration:a6];
        v42 = _NSConcreteStackBlock;
        v43 = 3221225472;
        v44 = sub_100065B6C;
        v45 = &unk_1000C6508;
        v46 = self;
        v22 = v17;
        v47 = v22;
        v48 = @"filters.gaussianBlur.inputRadius";
        v51 = v9;
        v49 = 0x3FE6666666666666;
        v50 = v14;
        [CATransaction setCompletionBlock:&v42];
        v23 = [CAFilter filterWithType:kCAFilterGaussianBlur, v42, v43, v44, v45, v46];
        [v23 setName:@"gaussianBlur"];
        [v23 setCachesInputImage:0];
        [v23 setValue:v16 forKey:@"inputRadius"];
        [v23 setValue:@"low" forKey:@"inputQuality"];
        v24 = [(UIView *)self layer];
        v54 = v23;
        v25 = [NSArray arrayWithObjects:&v54 count:1];
        [v24 setFilters:v25];

        v26 = [CABasicAnimation animationWithKeyPath:@"filters.gaussianBlur.inputRadius"];
        [v26 setRemovedOnCompletion:0];
        [v26 setFillMode:kCAFillModeForwards];
        [v26 setFromValue:v16];
        [v26 setToValue:v22];
        v27 = [(UIView *)self layer];
        [v27 addAnimation:v26 forKey:@"filters.gaussianBlur.inputRadius"];

        +[CATransaction begin];
        [CATransaction setAnimationDuration:a6 * 0.1];
        v28 = [CABasicAnimation animationWithKeyPath:@"rasterizationScale"];
        [v28 setRemovedOnCompletion:1];
        v29 = [NSNumber numberWithDouble:v19];
        [v28 setFromValue:v29];

        v30 = [NSNumber numberWithDouble:v18];
        [v28 setToValue:v30];

        [v28 setFillMode:kCAFillModeBackwards];
        if (!v9)
        {
          v31 = [(UIView *)self layer];
          [v31 convertTime:0 fromLayer:CACurrentMediaTime()];
          [v28 setBeginTime:v32 + a6 - a6 * 0.1];
        }

        v33 = [(UIView *)self layer];
        [v33 addAnimation:v28 forKey:@"rasterizationScale"];

        +[CATransaction commit];
        +[CATransaction commit];

        goto LABEL_15;
      }

      v34 = [CAFilter filterWithType:kCAFilterGaussianBlur];
      v35 = [(UIView *)self layer];
      [v35 setShouldRasterize:1];

      v36 = [(UIView *)self layer];
      [v36 setRasterizationScale:0.7];

      [v34 setName:@"gaussianBlur"];
      [v34 setCachesInputImage:0];
      [v34 setValue:v16 forKey:@"inputRadius"];
      [v34 setValue:@"low" forKey:@"inputQuality"];
      v37 = [(UIView *)self layer];
      v53 = v34;
      v38 = [NSArray arrayWithObjects:&v53 count:1];
      [v37 setFilters:v38];

      v22 = v16;
      v16 = &off_1000CB600;
    }

    else
    {
      if (v7)
      {
        v17 = &off_1000CB600;
        v19 = 0.7;
        v18 = v14;
        goto LABEL_10;
      }

      v39 = [(UIView *)self layer];
      [v39 setFilters:&__NSArray0__struct];

      v40 = [(UIView *)self layer];
      [v40 setShouldRasterize:0];

      v41 = [(UIView *)self layer];
      [v41 setRasterizationScale:1.0];

      v22 = &off_1000CB600;
    }

LABEL_15:

    return;
  }

  v11 = 1.0;
  v52[1] = 3221225472;
  v52[0] = _NSConcreteStackBlock;
  v52[2] = sub_100065B60;
  v52[3] = &unk_1000C5A18;
  if (v9)
  {
    v11 = 0.0;
  }

  v52[4] = self;
  *&v52[5] = v11;
  [UIView fr_animateWithDuration:0 delay:0 timingFunction:v52 options:0 animations:a6 completion:?];
}

+ (id)fr_adjacentSiblingViewsFromViews:(id)a3
{
  v3 = a3;
  v4 = +[NSMutableArray array];
  v5 = [NSHashTable hashTableWithOptions:512];
  v6 = [NSHashTable hashTableWithOptions:512];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v7 = v3;
  v8 = [v7 countByEnumeratingWithState:&v39 objects:v45 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v40;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v40 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [v5 addObject:*(*(&v39 + 1) + 8 * i)];
      }

      v9 = [v7 countByEnumeratingWithState:&v39 objects:v45 count:16];
    }

    while (v9);
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = v7;
  v12 = [obj countByEnumeratingWithState:&v35 objects:v44 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v36;
    v27 = *v36;
    v28 = v6;
    do
    {
      v15 = 0;
      v29 = v13;
      do
      {
        if (*v36 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = [*(*(&v35 + 1) + 8 * v15) superview];
        if (([v6 containsObject:v16] & 1) == 0)
        {
          v17 = +[NSMutableArray array];
          v31 = 0u;
          v32 = 0u;
          v33 = 0u;
          v34 = 0u;
          v18 = [v16 subviews];
          v19 = [v18 countByEnumeratingWithState:&v31 objects:v43 count:16];
          if (v19)
          {
            v20 = v19;
            v21 = *v32;
            do
            {
              for (j = 0; j != v20; j = j + 1)
              {
                if (*v32 != v21)
                {
                  objc_enumerationMutation(v18);
                }

                v23 = *(*(&v31 + 1) + 8 * j);
                if ([v5 containsObject:v23])
                {
                  [v17 addObject:v23];
                }

                else if ([v17 count])
                {
                  v24 = [v17 copy];
                  [v4 addObject:v24];

                  [v17 removeAllObjects];
                }
              }

              v20 = [v18 countByEnumeratingWithState:&v31 objects:v43 count:16];
            }

            while (v20);
          }

          if ([v17 count])
          {
            v25 = [v17 copy];
            [v4 addObject:v25];
          }

          v6 = v28;
          [v28 addObject:v16];

          v14 = v27;
          v13 = v29;
        }

        v15 = v15 + 1;
      }

      while (v15 != v13);
      v13 = [obj countByEnumeratingWithState:&v35 objects:v44 count:16];
    }

    while (v13);
  }

  return v4;
}

- (void)fr_recolorLabelSubviewsWithColor:(id)a3
{
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(UIView *)self subviews];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v10 setTextColor:v4];
        }

        else
        {
          [v10 fr_recolorLabelSubviewsWithColor:v4];
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (BOOL)visible
{
  if ([(UIView *)self isHidden])
  {
    return 0;
  }

  [(UIView *)self alpha];
  if (v3 <= 0.0)
  {
    return 0;
  }

  [(UIView *)self frame];
  return !CGRectIsEmpty(v5);
}

@end