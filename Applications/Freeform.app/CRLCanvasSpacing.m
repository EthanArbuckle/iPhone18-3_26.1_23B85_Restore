@interface CRLCanvasSpacing
- (BOOL)containsNonIntersectingSpacingRectsWithRect:(CGRect)a3 forEdge:(int)a4;
- (BOOL)needsGuideForEdge:(int)a3 ofRect:(CGRect)a4;
- (double)exactOffset;
- (id)description;
- (id)spacingRectsRenderableForGuideRect:(CGRect)a3 withICC:(id)a4;
- (int)integerOffset;
- (int64_t)compare:(id)a3;
- (void)addSpacingRect:(double)a3 forFrame:(double)a4 andFrame:(double)a5;
- (void)initWithGuideType:(CGFloat)a3 withSpacingRect:(CGFloat)a4 forFrame:(CGFloat)a5 andFrame:(double)a6;
- (void)updateSpacingUIWithICC:(id)a3;
@end

@implementation CRLCanvasSpacing

- (void)initWithGuideType:(CGFloat)a3 withSpacingRect:(CGFloat)a4 forFrame:(CGFloat)a5 andFrame:(double)a6
{
  v37.receiver = a1;
  v37.super_class = CRLCanvasSpacing;
  v29 = objc_msgSendSuper2(&v37, "init");
  if (v29)
  {
    v30 = objc_alloc_init(NSMutableSet);
    v31 = v29[1];
    v29[1] = v30;

    v32 = objc_alloc_init(NSMutableSet);
    v33 = v29[2];
    v29[2] = v32;

    if (a11 == 1)
    {
      +[CRLSwappableAxesGeometry standardAxesGeometry];
    }

    else
    {
      +[CRLSwappableAxesGeometry swappedAxesGeometry];
    }
    v34 = ;
    v35 = v29[5];
    v29[5] = v34;

    v38.origin.x = a2;
    v38.origin.y = a3;
    v38.size.width = a4;
    v38.size.height = a5;
    if (!CGRectIsNull(v38))
    {
      [v29 addSpacingRect:a2 forFrame:a3 andFrame:{a4, a5, a6, a7, a8, a9, a17, a18, a19, a20}];
    }
  }

  return v29;
}

- (int)integerOffset
{
  if (![(NSMutableSet *)self->mSpacingRects count])
  {
    return 1;
  }

  [(CRLCanvasSpacing *)self exactOffset];
  return sub_1004C31F4(v3);
}

- (double)exactOffset
{
  mHorizontalGeom = self->mHorizontalGeom;
  v3 = [(NSMutableSet *)self->mSpacingRects anyObject];
  v4 = [v3 first];
  [v4 CGRectValue];
  [(CRLSwappableAxesGeometry *)mHorizontalGeom rectWidth:?];
  v6 = v5;

  return v6;
}

- (int64_t)compare:(id)a3
{
  v4 = a3;
  v5 = [(CRLCanvasSpacing *)self integerOffset];
  if (v5 <= [v4 integerOffset])
  {
    v7 = [(CRLCanvasSpacing *)self integerOffset];
    if (v7 >= [v4 integerOffset])
    {
      v6 = 0;
    }

    else
    {
      v6 = -1;
    }
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (void)addSpacingRect:(double)a3 forFrame:(double)a4 andFrame:(double)a5
{
  v34 = objc_alloc_init(CRLMutablePair);
  v29 = [NSValue valueWithCGRect:a2, a3, a4, a5];
  [(CRLMutablePair *)v34 setFirst:v29];

  [(CRLMutablePair *)v34 setSecond:0];
  [*(a1 + 8) addObject:v34];
  v30 = *(a1 + 16);
  v31 = [NSValue valueWithCGRect:a6, a7, a8, a9];
  [v30 addObject:v31];

  v32 = *(a1 + 16);
  v33 = [NSValue valueWithCGRect:a10, a11, a12, a13];
  [v32 addObject:v33];
}

- (BOOL)needsGuideForEdge:(int)a3 ofRect:(CGRect)a4
{
  width = a4.size.width;
  height = a4.size.height;
  y = a4.origin.y;
  x = a4.origin.x;
  v7 = 0;
  v8 = 0;
  v9 = 0.0;
  if (a3 > 2)
  {
    switch(a3)
    {
      case 3:
        MinY = CGRectGetMinY(a4);
        v9 = MinY - [(CRLCanvasSpacing *)self integerOffset];
        break;
      case 4:
        return v7;
      case 5:
        MaxY = CGRectGetMaxY(a4);
        v9 = MaxY + [(CRLCanvasSpacing *)self integerOffset];
        break;
      default:
        goto LABEL_15;
    }

    v13 = sub_10011F07C;
    goto LABEL_14;
  }

  switch(a3)
  {
    case 0:
      MinX = CGRectGetMinX(a4);
      v9 = MinX - [(CRLCanvasSpacing *)self integerOffset];
      goto LABEL_11;
    case 1:
      return v7;
    case 2:
      MaxX = CGRectGetMaxX(a4);
      v9 = MaxX + [(CRLCanvasSpacing *)self integerOffset];
LABEL_11:
      v13 = sub_10011F144;
LABEL_14:
      v8 = v13;
      break;
  }

LABEL_15:
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v15 = self->mSpacingRects;
  v16 = [(NSMutableSet *)v15 countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v16)
  {
    v17 = v16;
    v7 = 0;
    v18 = *v36;
    do
    {
      for (i = 0; i != v17; i = i + 1)
      {
        if (*v36 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = [*(*(&v35 + 1) + 8 * i) first];
        [v20 CGRectValue];
        v22 = v21;
        v24 = v23;
        v26 = v25;
        v28 = v27;

        [(CRLSwappableAxesGeometry *)self->mHorizontalGeom rectMinX:v22, v24, v26, v28];
        if (vabdd_f64(v29, v9) <= 0.01)
        {
          v30 = [(CRLSwappableAxesGeometry *)self->mHorizontalGeom rectMaxX:v22, v24, v26, v28];
          if (vabdd_f64(v31, v9) <= 0.01 && !(v8)(v30, x, y, width, height, v22, v24, v26, v28))
          {
            continue;
          }
        }

        v7 = 1;
      }

      v17 = [(NSMutableSet *)v15 countByEnumeratingWithState:&v35 objects:v39 count:16];
    }

    while (v17);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)containsNonIntersectingSpacingRectsWithRect:(CGRect)a3 forEdge:(int)a4
{
  x = a3.origin.x;
  y = a3.origin.y;
  width = a3.size.width;
  height = a3.size.height;
  v9 = sub_10011EC1C(a4, a3.origin.x, a3.origin.y, a3.size.width, a3.size.height);
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v10 = self->mSpacingRects;
  v11 = [(NSMutableSet *)v10 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = 0;
    v14 = *v30;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v30 != v14)
        {
          objc_enumerationMutation(v10);
        }

        v16 = [*(*(&v29 + 1) + 8 * i) first];
        [v16 CGRectValue];
        v18 = v17;
        v20 = v19;
        v22 = v21;
        v24 = v23;

        v25 = sub_10011EC1C(a4, v18, v20, v22, v24);
        v26 = vabdd_f64(v9, v25) >= 1.0 && v9 != v25;
        if (!sub_10011FF38(x, y, width, height, v18, v20, v22, v24))
        {
          v13 |= v26;
        }
      }

      v12 = [(NSMutableSet *)v10 countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v12);
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

- (id)spacingRectsRenderableForGuideRect:(CGRect)a3 withICC:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = a4;
  if (self->mHasBeenDrawn)
  {
    v10 = 0;
  }

  else
  {
    mRenderable = self->mRenderable;
    if (!mRenderable)
    {
      v12 = +[CRLCanvasRenderable renderable];
      v13 = self->mRenderable;
      self->mRenderable = v12;

      [(CRLCanvasRenderable *)self->mRenderable setPosition:CGPointZero.x, CGPointZero.y];
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v14 = self->mSpacingRects;
      v15 = [(NSMutableSet *)v14 countByEnumeratingWithState:&v33 objects:v37 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v34;
        do
        {
          for (i = 0; i != v16; i = i + 1)
          {
            if (*v34 != v17)
            {
              objc_enumerationMutation(v14);
            }

            v19 = *(*(&v33 + 1) + 8 * i);
            v20 = [v19 first];
            [v20 CGRectValue];
            v22 = v21;
            v24 = v23;
            v26 = v25;
            v28 = v27;

            if (!sub_10011FF38(v22, v24, v26, v28, x, y, width, height))
            {
              v29 = [[CRLCanvasSpacingGuideUILayer alloc] initWithSpacingRect:[(CRLSwappableAxesGeometry *)self->mHorizontalGeom horizontalOrientation] ofOrientation:v9 icc:1 useVisibleRect:v22, v24, v26, v28];
              [v19 setSecond:v29];
              v30 = self->mRenderable;
              v31 = [CRLCanvasRenderable renderableFromLayer:v29];
              [(CRLCanvasRenderable *)v30 addSubrenderable:v31];
            }
          }

          v16 = [(NSMutableSet *)v14 countByEnumeratingWithState:&v33 objects:v37 count:16];
        }

        while (v16);
      }

      mRenderable = self->mRenderable;
    }

    self->mHasBeenDrawn = 1;
    v10 = mRenderable;
  }

  return v10;
}

- (void)updateSpacingUIWithICC:(id)a3
{
  v4 = a3;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v5 = self->mSpacingRects;
  v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v22;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v21 + 1) + 8 * i);
        v11 = [v10 first];
        [v11 CGRectValue];
        v13 = v12;
        v15 = v14;
        v17 = v16;
        v19 = v18;

        v20 = [v10 second];
        [v20 setFrameFromSpacingRect:v4 icc:{v13, v15, v17, v19}];
      }

      v7 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v7);
  }
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  if ([(CRLCanvasSpacing *)self guideType])
  {
    v5 = @"vertical";
  }

  else
  {
    v5 = @"horizontal";
  }

  [(CRLCanvasSpacing *)self exactOffset];
  v7 = [NSString stringWithFormat:@"<%@ %p: %@ spacing with size %f>", v4, self, v5, v6];

  return v7;
}

@end