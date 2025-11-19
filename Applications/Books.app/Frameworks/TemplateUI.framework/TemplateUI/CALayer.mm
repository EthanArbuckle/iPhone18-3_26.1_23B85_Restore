@interface CALayer
- (id)tui_allAnimationsInTree;
- (id)tui_allLayersInTree;
- (id)tui_deepCopyLayer;
- (id)tui_propertiesToCopy;
- (id)tui_uniqueAnimationKeyWithPrefix:(id)a3;
- (void)tui_addLayerAndSublayersToArray:(id)a3 allowHiddenLayers:(BOOL)a4;
- (void)tui_moveAndResizeWithinParentLayer:(id)a3 usingGravity:(id)a4 geometryFlipped:(BOOL)a5 retinaScale:(double)a6 animate:(BOOL)a7;
@end

@implementation CALayer

- (id)tui_deepCopyLayer
{
  v3 = [objc_alloc(objc_opt_class()) initWithLayer:self];
  if (v3)
  {
    v4 = [(CALayer *)self sublayers];
    v5 = v4;
    if (v4)
    {
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v6 = [v4 countByEnumeratingWithState:&v42 objects:v48 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = 0;
        v9 = *v43;
        do
        {
          v10 = 0;
          v11 = v8;
          do
          {
            if (*v43 != v9)
            {
              objc_enumerationMutation(v5);
            }

            v8 = *(*(&v42 + 1) + 8 * v10);

            v12 = [v8 tui_deepCopyLayer];
            if (v12)
            {
              [v3 addSublayer:v12];
            }

            v10 = v10 + 1;
            v11 = v8;
          }

          while (v7 != v10);
          v7 = [v5 countByEnumeratingWithState:&v42 objects:v48 count:16];
        }

        while (v7);
      }
    }

    v13 = [(CALayer *)self mask];
    v14 = v13;
    if (v13)
    {
      v15 = [v13 tui_deepCopyLayer];
      if (v15)
      {
        [v3 setMask:v15];
      }
    }

    v33 = v5;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v16 = [(CALayer *)self tui_propertiesToCopy];
    v17 = [v16 countByEnumeratingWithState:&v38 objects:v47 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v39;
      do
      {
        for (i = 0; i != v18; i = i + 1)
        {
          if (*v39 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v38 + 1) + 8 * i);
          if (([v21 isEqualToString:@"sublayers"] & 1) == 0 && (objc_msgSend(v21, "isEqualToString:", @"mask") & 1) == 0 && -[CALayer shouldArchiveValueForKey:](self, "shouldArchiveValueForKey:", v21))
          {
            v22 = [(CALayer *)self valueForKey:v21];
            [v3 setValue:v22 forKey:v21];
          }
        }

        v18 = [v16 countByEnumeratingWithState:&v38 objects:v47 count:16];
      }

      while (v18);
    }

    if ([(CALayer *)self needsDisplay])
    {
      [v3 setNeedsDisplay];
    }

    if ([(CALayer *)self needsLayout])
    {
      [v3 setNeedsLayout];
    }

    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v23 = [(CALayer *)self animationKeys];
    v24 = [v23 countByEnumeratingWithState:&v34 objects:v46 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v35;
      do
      {
        for (j = 0; j != v25; j = j + 1)
        {
          if (*v35 != v26)
          {
            objc_enumerationMutation(v23);
          }

          v28 = *(*(&v34 + 1) + 8 * j);
          v29 = [(CALayer *)self animationForKey:v28];
          if (([v29 isRemovedOnCompletion] & 1) == 0)
          {
            [v3 addAnimation:v29 forKey:v28];
          }
        }

        v25 = [v23 countByEnumeratingWithState:&v34 objects:v46 count:16];
      }

      while (v25);
    }

    v30 = v3;
  }

  return v3;
}

- (id)tui_propertiesToCopy
{
  if (!qword_2E5FE0)
  {
    qword_2E5FE0 = NSClassFromString(@"CAShapeLayer");
  }

  v3 = [(CALayer *)self tui_basicPropertiesToCopy];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = &off_273220;
LABEL_7:
    [v3 addObjectsFromArray:v4];
    goto LABEL_8;
  }

  if (objc_opt_isKindOfClass())
  {
    v4 = &off_273238;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v3 addObject:@"scrollMode"];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = &off_273250;
      goto LABEL_7;
    }
  }

LABEL_8:

  return v3;
}

- (id)tui_allLayersInTree
{
  v3 = +[NSMutableArray array];
  [(CALayer *)self tui_addLayerAndSublayersToArray:v3 allowHiddenLayers:1];

  return v3;
}

- (void)tui_addLayerAndSublayersToArray:(id)a3 allowHiddenLayers:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (v4 || ![(CALayer *)self isHidden])
  {
    [v6 addObject:self];
    v7 = [(CALayer *)self mask];

    if (v7)
    {
      v8 = [(CALayer *)self mask];
      [v8 tui_addLayerAndSublayersToArray:v6 allowHiddenLayers:v4];
    }

    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v9 = [(CALayer *)self sublayers];
    v10 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v15;
      do
      {
        v13 = 0;
        do
        {
          if (*v15 != v12)
          {
            objc_enumerationMutation(v9);
          }

          [*(*(&v14 + 1) + 8 * v13) tui_addLayerAndSublayersToArray:v6 allowHiddenLayers:v4];
          v13 = v13 + 1;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v11);
    }
  }
}

- (id)tui_allAnimationsInTree
{
  v2 = [(CALayer *)self tui_allLayersInTree];
  v3 = +[NSMutableArray array];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = v2;
  v4 = [obj countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v22;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v22 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v21 + 1) + 8 * i);
        v17 = 0u;
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v9 = [v8 animationKeys];
        v10 = [v9 countByEnumeratingWithState:&v17 objects:v25 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v18;
          do
          {
            for (j = 0; j != v11; j = j + 1)
            {
              if (*v18 != v12)
              {
                objc_enumerationMutation(v9);
              }

              v14 = [v8 animationForKey:*(*(&v17 + 1) + 8 * j)];
              [v3 addObject:v14];
            }

            v11 = [v9 countByEnumeratingWithState:&v17 objects:v25 count:16];
          }

          while (v11);
        }
      }

      v5 = [obj countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v5);
  }

  return v3;
}

- (void)tui_moveAndResizeWithinParentLayer:(id)a3 usingGravity:(id)a4 geometryFlipped:(BOOL)a5 retinaScale:(double)a6 animate:(BOOL)a7
{
  v9 = a5;
  v12 = a4;
  [a3 bounds];
  x = v13;
  y = v15;
  v18 = v17;
  v20 = v19;
  [(CALayer *)self bounds];
  v23 = v21 / a6;
  v24 = v22 / a6;
  if (a6 == 1.0)
  {
    v24 = v22;
    v23 = v21;
  }

  if (v18 >= 0.00001)
  {
    v25 = v18;
  }

  else
  {
    v25 = 0.00001;
  }

  if (v20 >= 0.00001)
  {
    v26 = v20;
  }

  else
  {
    v26 = 0.00001;
  }

  if (v23 >= 0.00001)
  {
    v27 = v23;
  }

  else
  {
    v27 = 0.00001;
  }

  if (v24 >= 0.00001)
  {
    v28 = v24;
  }

  else
  {
    v28 = 0.00001;
  }

  if (v9)
  {
    if ([(NSString *)v12 isEqualToString:kCAGravityTopLeft])
    {
      v29 = &kCAGravityBottomLeft;
LABEL_22:
      v30 = *v29;
LABEL_23:
      v31 = v30;

      v12 = v31;
      goto LABEL_24;
    }

    if ([(NSString *)v12 isEqualToString:kCAGravityTop])
    {
      v29 = &kCAGravityBottom;
      goto LABEL_22;
    }

    if ([(NSString *)v12 isEqualToString:kCAGravityTopRight])
    {
      v29 = &kCAGravityBottomRight;
      goto LABEL_22;
    }

    v37 = [(NSString *)v12 isEqualToString:kCAGravityBottomLeft];
    v30 = kCAGravityTopLeft;
    if (v37)
    {
      goto LABEL_23;
    }

    v38 = [(NSString *)v12 isEqualToString:kCAGravityBottom];
    v30 = kCAGravityTop;
    if (v38)
    {
      goto LABEL_23;
    }

    v39 = [(NSString *)v12 isEqualToString:kCAGravityBottomRight];
    v30 = kCAGravityTopRight;
    if (v39)
    {
      goto LABEL_23;
    }
  }

LABEL_24:
  if ([(NSString *)v12 isEqualToString:kCAGravityTopLeft])
  {
LABEL_29:
    y = y + v26 - v28;
LABEL_30:
    v32 = 1.0;
LABEL_31:
    v33 = 1.0;
    goto LABEL_32;
  }

  if ([(NSString *)v12 isEqualToString:kCAGravityTop])
  {
    x = x + v25 * 0.5 - v27 * 0.5;
    goto LABEL_29;
  }

  if ([(NSString *)v12 isEqualToString:kCAGravityTopRight])
  {
    x = x + v25 - v27;
    goto LABEL_29;
  }

  if ([(NSString *)v12 isEqualToString:kCAGravityLeft])
  {
    goto LABEL_40;
  }

  if ([(NSString *)v12 isEqualToString:kCAGravityCenter])
  {
    v36 = 0.5;
    x = x + v25 * 0.5 - v27 * 0.5;
    goto LABEL_47;
  }

  if ([(NSString *)v12 isEqualToString:kCAGravityRight])
  {
    x = x + v25 - v27;
LABEL_40:
    v36 = 0.5;
LABEL_47:
    y = y + v26 * v36 - v28 * v36;
    goto LABEL_30;
  }

  v32 = 1.0;
  if ([(NSString *)v12 isEqualToString:kCAGravityBottomLeft])
  {
    goto LABEL_31;
  }

  if ([(NSString *)v12 isEqualToString:kCAGravityBottom])
  {
    x = x + v25 * 0.5 - v27 * 0.5;
    goto LABEL_31;
  }

  if ([(NSString *)v12 isEqualToString:kCAGravityBottomRight])
  {
    x = x + v25 - v27;
    goto LABEL_31;
  }

  if ([(NSString *)v12 isEqualToString:kCAGravityResize])
  {
    v33 = v25 / v27;
    v32 = v26 / v28;
  }

  else
  {
    if ([(NSString *)v12 isEqualToString:kCAGravityResizeAspect])
    {
      if (v25 / v27 >= v26 / v28)
      {
        v32 = v26 / v28;
      }

      else
      {
        v32 = v25 / v27;
      }
    }

    else
    {
      if (![(NSString *)v12 isEqualToString:kCAGravityResizeAspectFill])
      {
        x = CGPointZero.x;
        y = CGPointZero.y;
        goto LABEL_31;
      }

      if (v25 / v27 >= v26 / v28)
      {
        v32 = v25 / v27;
      }

      else
      {
        v32 = v26 / v28;
      }
    }

    x = x + (v25 - v27 * v32) * 0.5;
    y = y + (v26 - v28 * v32) * 0.5;
    v33 = v32;
  }

LABEL_32:
  if (a6 != 1.0)
  {
    v33 = v33 / a6;
    v32 = v32 / a6;
  }

  if (!a7)
  {
    +[CATransaction begin];
    [CATransaction setDisableActions:1];
  }

  CATransform3DMakeScale(&v41, v33, v32, 1.0);
  v40 = v41;
  [(CALayer *)self setTransform:&v40];
  [(CALayer *)self frame];
  v35 = v34;
  [(CALayer *)self frame];
  [(CALayer *)self setFrame:x, y, v35];
  if (!a7)
  {
    +[CATransaction commit];
  }
}

- (id)tui_uniqueAnimationKeyWithPrefix:(id)a3
{
  v4 = a3;
  v5 = 0;
  v6 = 1;
  do
  {
    v7 = v5;
    v5 = [[NSString alloc] initWithFormat:@"%@-%lu", v4, v6];

    v8 = [(CALayer *)self animationForKey:v5];

    ++v6;
  }

  while (v8);

  return v5;
}

@end