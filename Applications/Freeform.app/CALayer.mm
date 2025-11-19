@interface CALayer
- (BOOL)crl_hideOverlayLayerDuringZoomOperations;
- (BOOL)crl_tilingSafeHasContents;
- (CGImage)crl_newRasterizedImageRef;
- (CGImage)crl_newRasterizedImageRefForLayerRect:(CGRect)a3;
- (CGRect)crl_frameIncludingSublayers;
- (NSArray)crl_sublayersForTilingLayerSupport;
- (void)crl_addSpringScaleInAnimationWithDelay:(double)a3;
- (void)crl_addZoomAnimationFromPoint:(CGPoint)a3 startingScale:(double)a4;
- (void)crl_applyDefaultCanvasOverlayUIShadowSettings;
- (void)crl_cancelLayoutForTilingLayers;
- (void)crl_ignoreAccessibilityInvertColorsIfNeeded:(BOOL)a3;
- (void)crl_setHideOverlayLayerDuringZoomOperations:(BOOL)a3;
- (void)crl_setIfDifferentFrame:(CGRect)a3 orTransform:(CGAffineTransform *)a4;
- (void)crl_setNeedsLayoutForTilingLayers;
- (void)crl_tilingSafeSetSublayers:(id)a3;
- (void)crl_undoIgnoreAccessibilityInvertColors;
- (void)p_clearAllLayerDelegates;
@end

@implementation CALayer

- (void)p_clearAllLayerDelegates
{
  v3 = [(CALayer *)self delegate];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  objc_opt_class();
  v5 = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v6 = v5;
    v7 = [(CALayer *)self delegate];
    objc_opt_class();
    v8 = objc_opt_isKindOfClass();

    if (((v6 | v8) & 1) == 0)
    {
      return;
    }
  }

  else
  {
    [(CALayer *)self setDelegate:0];
  }

  v9 = [(CALayer *)self sublayers];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
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

        [*(*(&v14 + 1) + 8 * v13) p_clearAllLayerDelegates];
        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v11);
  }
}

- (void)crl_ignoreAccessibilityInvertColorsIfNeeded:(BOOL)a3
{
  if (UIAccessibilityIsInvertColorsEnabled())
  {
    v4 = [(CALayer *)self filters];

    if (v4)
    {
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      v5 = [(CALayer *)self filters];
      v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v15;
LABEL_5:
        v9 = 0;
        while (1)
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v14 + 1) + 8 * v9) name];
          v11 = [v10 isEqualToString:@"CRLCALayerAdditionsAXDoubleInvertFilterKey"];

          if (v11)
          {
            goto LABEL_17;
          }

          if (v7 == ++v9)
          {
            v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
            if (v7)
            {
              goto LABEL_5;
            }

            break;
          }
        }
      }

      v5 = [(CALayer *)self filters];
      v12 = sub_1001A853C();
      v13 = [v5 arrayByAddingObject:v12];
      [(CALayer *)self setFilters:v13];
    }

    else
    {
      v5 = sub_1001A853C();
      v19 = v5;
      v12 = [NSArray arrayWithObjects:&v19 count:1];
      [(CALayer *)self setFilters:v12];
    }

LABEL_17:
    return;
  }

  [(CALayer *)self crl_undoIgnoreAccessibilityInvertColors];
}

- (void)crl_undoIgnoreAccessibilityInvertColors
{
  v4 = [(CALayer *)self filters];
  v3 = [v4 crl_arrayOfObjectsPassingTest:&stru_101844560];
  [(CALayer *)self setFilters:v3];
}

- (NSArray)crl_sublayersForTilingLayerSupport
{
  v2 = [(CALayer *)self sublayers];
  v3 = [v2 copy];

  return v3;
}

- (void)crl_setNeedsLayoutForTilingLayers
{
  v3 = [(CALayer *)self crl_sublayersForTilingLayerSupport];
  [v3 makeObjectsPerformSelector:a2];
}

- (void)crl_cancelLayoutForTilingLayers
{
  v3 = [(CALayer *)self crl_sublayersForTilingLayerSupport];
  [v3 makeObjectsPerformSelector:a2];
}

- (void)crl_tilingSafeSetSublayers:(id)a3
{
  v6 = a3;
  v4 = [(CALayer *)self sublayers];
  v5 = [v6 isEqualToArray:v4];

  if ((v5 & 1) == 0)
  {
    [(CALayer *)self setSublayers:v6];
  }
}

- (BOOL)crl_tilingSafeHasContents
{
  v2 = [(CALayer *)self contents];
  v3 = v2 != 0;

  return v3;
}

- (void)crl_applyDefaultCanvasOverlayUIShadowSettings
{
  v3 = +[UIColor blackColor];
  -[CALayer setShadowColor:](self, "setShadowColor:", [v3 CGColor]);

  [(CALayer *)self setShadowRadius:15.0];
  LODWORD(v4) = 1045220557;
  [(CALayer *)self setShadowOpacity:v4];

  [(CALayer *)self setShadowOffset:0.0, 4.0];
}

- (void)crl_setIfDifferentFrame:(CGRect)a3 orTransform:(CGAffineTransform *)a4
{
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if ((sub_100122890() & 1) != 0 || (v9 = *&a4->c, *&t1.a = *&a4->a, *&t1.c = v9, *&t1.tx = *&a4->tx, sub_1001228C8()))
  {
    v10 = +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101390668();
    }

    v11 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101390690(v10, v11);
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10139073C();
    }

    v12 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130EFC0(v12);
    }

    v13 = [NSString stringWithUTF8String:"[CALayer(CRLAdditions) crl_setIfDifferentFrame:orTransform:]"];
    v14 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CALayer_CRLAdditions.m"];
    [CRLAssertionHandler handleFailureInFunction:v13 file:v14 lineNumber:34 isFatal:0 description:"Attempting to set frame or transform on layer with NaN values."];
  }

  else
  {
    [(CALayer *)self anchorPoint];
    v17 = sub_100121734(v15, v16, x, y, width);
    v19 = v18;
    v20 = sub_10011ECB4();
    v22 = v21;
    v24 = v23;
    v26 = v25;
    [(CALayer *)self position];
    if (v28 != v17 || v27 != v19)
    {
      [(CALayer *)self setPosition:v17, v19];
    }

    [(CALayer *)self bounds];
    v34.origin.x = v20;
    v34.origin.y = v22;
    v34.size.width = v24;
    v34.size.height = v26;
    if (!CGRectEqualToRect(v33, v34))
    {
      [(CALayer *)self setBounds:v20, v22, v24, v26];
    }

    [(CALayer *)self affineTransform];
    v29 = *&a4->c;
    *&v31.a = *&a4->a;
    *&v31.c = v29;
    *&v31.tx = *&a4->tx;
    if (!CGAffineTransformEqualToTransform(&t1, &v31))
    {
      v30 = *&a4->c;
      *&t1.a = *&a4->a;
      *&t1.c = v30;
      *&t1.tx = *&a4->tx;
      [(CALayer *)self setAffineTransform:&t1];
    }
  }
}

- (void)crl_setHideOverlayLayerDuringZoomOperations:(BOOL)a3
{
  if (a3)
  {
    v3 = 0;
  }

  else
  {
    v3 = &off_1018E2E80;
  }

  [(CALayer *)self setValue:v3 forKey:@"kOptOutFromHidingOverlayLayerDuringZoom"];
}

- (BOOL)crl_hideOverlayLayerDuringZoomOperations
{
  v2 = [(CALayer *)self valueForKey:@"kOptOutFromHidingOverlayLayerDuringZoom"];
  v3 = v2 == 0;

  return v3;
}

- (void)crl_addZoomAnimationFromPoint:(CGPoint)a3 startingScale:(double)a4
{
  y = a3.y;
  x = a3.x;
  [(CALayer *)self crl_removeZoomAnimation];
  v38 = +[NSMutableArray array];
  [(CALayer *)self position];
  if (x != v9 || y != v8)
  {
    [(CALayer *)self frame];
    v11 = x - CGRectGetMinX(v40);
    [(CALayer *)self frame];
    v13 = v11 / v12;
    [(CALayer *)self frame];
    v14 = y - CGRectGetMinY(v41);
    [(CALayer *)self frame];
    v16 = v14 / v15;
    v17 = [CABasicAnimation animationWithKeyPath:@"anchorPoint"];
    v18 = [NSValue valueWithCGPoint:v13, v16];
    [v17 setToValue:v18];
    [v17 setFromValue:v18];

    [v17 setDuration:0.2];
    [v38 addObject:v17];
    [(CALayer *)self anchorPoint];
    v20 = sub_10011F31C(v13, v16, v19);
    v22 = v21;
    [(CALayer *)self frame];
    v24 = v20 * v23;
    [(CALayer *)self frame];
    v26 = v22 * v25;
    v27 = [CABasicAnimation animationWithKeyPath:@"position"];
    v28 = [NSValue valueWithCGPoint:v24, v26];
    [v27 setToValue:v28];
    [v27 setFromValue:v28];

    [v27 setDuration:0.2];
    [v27 setAdditive:1];
    [v38 addObject:v27];
  }

  v29 = [CABasicAnimation animationWithKeyPath:@"transform.scale.xy"];
  v30 = [NSNumber numberWithDouble:a4];
  [v29 setFromValue:v30];

  v31 = [NSNumber numberWithDouble:1.0];
  [v29 setToValue:v31];

  v32 = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseOut];
  [v29 setTimingFunction:v32];

  [v29 setDuration:0.2];
  [v38 addObject:v29];
  v33 = [CABasicAnimation animationWithKeyPath:@"opacity"];
  v34 = [NSNumber numberWithDouble:0.0];
  [v33 setFromValue:v34];

  v35 = [NSNumber numberWithDouble:1.0];
  [v33 setToValue:v35];

  v36 = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseOut];
  [v33 setTimingFunction:v36];

  [v33 setDuration:0.2];
  [v38 addObject:v33];
  v37 = objc_alloc_init(CAAnimationGroup);
  [v37 setAnimations:v38];
  [v37 setDuration:0.2];
  [(CALayer *)self addAnimation:v37 forKey:@"CRLZoomAnimationKey"];
}

- (void)crl_addSpringScaleInAnimationWithDelay:(double)a3
{
  [(CALayer *)self crl_removeSpringScaleInAnimation];
  LODWORD(v5) = 1051260355;
  LODWORD(v6) = 1062501089;
  LODWORD(v7) = 1062501089;
  v8 = [CAMediaTimingFunction functionWithControlPoints:v5];
  v9 = [CABasicAnimation animationWithKeyPath:@"opacity"];
  v10 = [NSNumber numberWithDouble:0.0];
  [v9 setFromValue:v10];

  [v9 setBeginTime:a3];
  [v9 setDuration:0.2];
  [v9 setTimingFunction:v8];
  [v9 setFillMode:kCAFillModeBoth];
  v11 = [CASpringAnimation animationWithKeyPath:@"transform.scale.xy"];
  [v11 setFromValue:&off_1018E30A0];
  [v11 setToValue:&off_1018E30B0];
  [v11 setMass:1.0];
  [v11 setStiffness:200.0];
  [v11 setDamping:35.0];
  [v11 setInitialVelocity:0.0];
  [v11 settlingDuration];
  [v11 setDuration:?];
  [v11 setBeginTime:a3];
  [v11 settlingDuration];
  v13 = v12;
  [v9 duration];
  if (v13 >= v14)
  {
    v14 = v13;
  }

  v15 = v14 + a3;
  v16 = objc_alloc_init(CAAnimationGroup);
  v18[0] = v9;
  v18[1] = v11;
  v17 = [NSArray arrayWithObjects:v18 count:2];
  [v16 setAnimations:v17];

  [v16 setDuration:v15];
  [v16 setFillMode:kCAFillModeBoth];
  [(CALayer *)self addAnimation:v16 forKey:@"CRLSpringScaleInAnimationKey"];
}

- (CGRect)crl_frameIncludingSublayers
{
  [(CALayer *)self frame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  if (![(CALayer *)self masksToBounds])
  {
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v11 = [(CALayer *)self sublayers];
    v12 = [v11 countByEnumeratingWithState:&v47 objects:v51 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v48;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v48 != v14)
          {
            objc_enumerationMutation(v11);
          }

          [*(*(&v47 + 1) + 8 * i) crl_frameIncludingSublayers];
          v17 = v16;
          v19 = v18;
          v21 = v20;
          v23 = v22;
          v24 = [(CALayer *)self superlayer];

          if (v24)
          {
            v25 = [(CALayer *)self superlayer];
            [v25 convertRect:self fromLayer:{v17, v19, v21, v23}];
            x = v26;
            y = v28;
            width = v30;
            height = v32;
          }

          else
          {
            [(CALayer *)self frame];
            v46 = v4;
            v34 = v6;
            v35 = v8;
            v36 = v10;
            v38 = v37;
            [(CALayer *)self frame];
            v40 = v39;
            v52.origin.x = v17;
            v52.origin.y = v19;
            v52.size.width = v21;
            v52.size.height = v23;
            v41 = v38;
            v10 = v36;
            v8 = v35;
            v6 = v34;
            v4 = v46;
            v53 = CGRectOffset(v52, v41, v40);
            x = v53.origin.x;
            y = v53.origin.y;
            width = v53.size.width;
            height = v53.size.height;
          }

          v54.origin.x = v4;
          v54.origin.y = v6;
          v54.size.width = v8;
          v54.size.height = v10;
          v57.origin.x = x;
          v57.origin.y = y;
          v57.size.width = width;
          v57.size.height = height;
          v55 = CGRectUnion(v54, v57);
          v4 = v55.origin.x;
          v6 = v55.origin.y;
          v8 = v55.size.width;
          v10 = v55.size.height;
        }

        v13 = [v11 countByEnumeratingWithState:&v47 objects:v51 count:16];
      }

      while (v13);
    }
  }

  v42 = v4;
  v43 = v6;
  v44 = v8;
  v45 = v10;
  result.size.height = v45;
  result.size.width = v44;
  result.origin.y = v43;
  result.origin.x = v42;
  return result;
}

- (CGImage)crl_newRasterizedImageRef
{
  [(CALayer *)self crl_frameIncludingSublayers];

  return [(CALayer *)self crl_newRasterizedImageRefForLayerRect:?];
}

- (CGImage)crl_newRasterizedImageRefForLayerRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = self;
  [(CALayer *)v7 frame];
  v104.origin.x = v8;
  v104.origin.y = v9;
  v104.size.width = v10;
  v104.size.height = v11;
  v89.origin.x = x;
  v89.origin.y = y;
  v89.size.width = width;
  v89.size.height = height;
  v12 = v7;
  if (CGRectEqualToRect(v89, v104))
  {
    v13 = [(CALayer *)v7 sublayers];
    v14 = [v13 count];

    v12 = v7;
    if (v14 <= 1)
    {
      v15 = v7;
      while (1)
      {
        [(CALayer *)v15 borderWidth];
        if (v16 != 0.0)
        {
          goto LABEL_20;
        }

        v17 = [(CALayer *)v15 mask];
        if (v17)
        {
          break;
        }

        [(CALayer *)v15 opacity];
        if (v18 != 1.0)
        {
          break;
        }

        [(CALayer *)v15 cornerRadius];
        if (v19 != 0.0)
        {
          break;
        }

        [(CALayer *)v15 shadowOpacity];
        if (v20 != 0.0 || [(CALayer *)v15 backgroundColor])
        {
          break;
        }

        if (v15)
        {
          [(CALayer *)v15 transform];
        }

        else
        {
          memset(&v88, 0, sizeof(v88));
        }

        if (!CATransform3DIsIdentity(&v88))
        {
          break;
        }

        [(CALayer *)v15 contentsRect];
        v105.origin.x = 0.0;
        v105.origin.y = 0.0;
        v105.size.width = 1.0;
        v105.size.height = 1.0;
        if (!CGRectEqualToRect(v90, v105))
        {
          goto LABEL_20;
        }

        v21 = [(CALayer *)v15 sublayers];
        v22 = [v21 count];

        if (v22 != 1)
        {
          v82 = [(CALayer *)v15 contents];

          if (v82)
          {
            Image = [(CALayer *)v15 contents];

            CGImageRetain(Image);
            v12 = v15;
            goto LABEL_41;
          }

LABEL_20:
          v12 = v15;
          goto LABEL_21;
        }

        [(CALayer *)v15 bounds];
        v24 = v23;
        v26 = v25;
        v28 = v27;
        v30 = v29;
        v31 = [(CALayer *)v15 sublayers];
        v32 = [v31 lastObject];
        [v32 bounds];
        v106.origin.x = v33;
        v106.origin.y = v34;
        v106.size.width = v35;
        v106.size.height = v36;
        v91.origin.x = v24;
        v91.origin.y = v26;
        v91.size.width = v28;
        v91.size.height = v30;
        v37 = CGRectEqualToRect(v91, v106);

        if (!v37)
        {
          goto LABEL_20;
        }

        v38 = [(CALayer *)v15 sublayers];
        v12 = [v38 lastObject];

        v39 = [(CALayer *)v12 sublayers];
        v40 = [v39 count];

        v15 = v12;
        if (v40 > 1)
        {
          goto LABEL_21;
        }
      }

      goto LABEL_20;
    }
  }

LABEL_21:
  [(CALayer *)v7 crl_frameIncludingSublayers];
  v41 = v92.origin.x;
  v42 = v92.origin.y;
  v43 = v92.size.width;
  v44 = v92.size.height;
  v93 = CGRectInset(v92, -1.0, -1.0);
  v107.origin.x = x;
  v107.origin.y = y;
  v107.size.width = width;
  v107.size.height = height;
  if (!CGRectContainsRect(v93, v107))
  {
    v45 = +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101390764();
    }

    v46 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      v79 = v46;
      v102.origin.x = x;
      v102.origin.y = y;
      v102.size.width = width;
      v102.size.height = height;
      v80 = NSStringFromCGRect(v102);
      v103.origin.x = v41;
      v103.origin.y = v42;
      v103.size.width = v43;
      v103.size.height = v44;
      v81 = NSStringFromCGRect(v103);
      LODWORD(v88.m11) = 67110402;
      HIDWORD(v88.m11) = v45;
      LOWORD(v88.m12) = 2082;
      *(&v88.m12 + 2) = "[CALayer(CRLAdditions) crl_newRasterizedImageRefForLayerRect:]";
      WORD1(v88.m13) = 2082;
      *(&v88.m13 + 4) = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CALayer_CRLAdditions.m";
      WORD2(v88.m14) = 1024;
      *(&v88.m14 + 6) = 243;
      WORD1(v88.m21) = 2114;
      *(&v88.m21 + 4) = v80;
      WORD2(v88.m22) = 2114;
      *(&v88.m22 + 6) = v81;
      _os_log_error_impl(&_mh_execute_header, v79, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Specified rect %{public}@ exceeds layer's frame including sublayers %{public}@", &v88, 0x36u);
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10139078C();
    }

    v47 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130EFC0(v47);
    }

    v48 = [NSString stringWithUTF8String:"[CALayer(CRLAdditions) crl_newRasterizedImageRefForLayerRect:]"];
    v49 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CALayer_CRLAdditions.m"];
    v94.origin.x = x;
    v94.origin.y = y;
    v94.size.width = width;
    v94.size.height = height;
    v50 = NSStringFromCGRect(v94);
    v95.origin.x = v41;
    v95.origin.y = v42;
    v95.size.width = v43;
    v95.size.height = v44;
    v51 = NSStringFromCGRect(v95);
    [CRLAssertionHandler handleFailureInFunction:v48 file:v49 lineNumber:243 isFatal:0 description:"Specified rect %{public}@ exceeds layer's frame including sublayers %{public}@", v50, v51];
  }

  v96.origin.x = v41;
  v96.origin.y = v42;
  v96.size.width = v43;
  v96.size.height = v44;
  v108.origin.x = x;
  v108.origin.y = y;
  v108.size.width = width;
  v108.size.height = height;
  v97 = CGRectIntersection(v96, v108);
  v52 = v97.origin.x;
  v53 = v97.origin.y;
  v54 = v97.size.width;
  v55 = v97.size.height;
  [(CALayer *)v7 frame];
  MinX = CGRectGetMinX(v98);
  v99.origin.x = v52;
  v99.origin.y = v53;
  v99.size.width = v54;
  v99.size.height = v55;
  v83 = CGRectGetMinX(v99);
  [(CALayer *)v7 frame];
  MinY = CGRectGetMinY(v100);
  v101.origin.x = v52;
  v101.origin.y = v53;
  v101.size.width = v54;
  v101.size.height = v55;
  v57 = CGRectGetMinY(v101);
  [(CALayer *)v7 contentsScale];
  v59 = v58;
  v60 = sub_10011F340(v54, v55, v58);
  v62 = v61;
  v63 = sub_10050CF30();
  if (v62 * v60 > v63)
  {
    v64 = sub_100121ED4(v60, v62, v63);
    v60 = sub_100120068(v64);
    v62 = v65;
    v59 = v60 / v54;
  }

  v66 = sub_10050DF80(11, v60, v62);
  if (v66)
  {
    v67 = v66;
    CGAffineTransformMakeScale(&v88, v59, v59);
    CGContextConcatCTM(v67, &v88);
    if (v12)
    {
      [(CALayer *)v12 transform];
    }

    else
    {
      memset(&v88, 0, sizeof(v88));
    }

    if (!CATransform3DIsIdentity(&v88))
    {
      v69 = *&CGAffineTransformIdentity.c;
      *&v88.m11 = *&CGAffineTransformIdentity.a;
      *&v88.m13 = v69;
      *&v88.m21 = *&CGAffineTransformIdentity.tx;
      *&transform.a = *&v88.m11;
      *&transform.c = v69;
      *&transform.tx = *&v88.m21;
      CGAffineTransformTranslate(&v88, &transform, -v52, -v53);
      [(CALayer *)v7 anchorPoint];
      v71 = v70;
      v73 = v72;
      [(CALayer *)v7 bounds];
      v75 = sub_10011FFCC(v71, v73, v74);
      v77 = v76;
      *&t1.a = *&v88.m11;
      *&t1.c = *&v88.m13;
      *&t1.tx = *&v88.m21;
      CGAffineTransformTranslate(&transform, &t1, v75, v76);
      *&v88.m11 = *&transform.a;
      *&v88.m13 = *&transform.c;
      *&v88.m21 = *&transform.tx;
      [(CALayer *)v7 affineTransform];
      *&t2.a = *&v88.m11;
      *&t2.c = *&v88.m13;
      *&t2.tx = *&v88.m21;
      CGAffineTransformConcat(&transform, &t1, &t2);
      *&v88.m13 = *&transform.c;
      *&v88.m21 = *&transform.tx;
      *&v88.m11 = *&transform.a;
      t1 = transform;
      CGAffineTransformTranslate(&transform, &t1, -v75, -v77);
      *&v88.m13 = *&transform.c;
      *&v88.m21 = *&transform.tx;
      *&v88.m11 = *&transform.a;
      CGContextConcatCTM(v67, &transform);
    }

    CGAffineTransformMakeTranslation(&v88, MinX - v83, MinY - v57);
    CGContextConcatCTM(v67, &v88);
    [(CALayer *)v7 renderInContext:v67];
    Image = CGBitmapContextCreateImage(v67);
    CGContextRelease(v67);
  }

  else
  {
    Image = 0;
  }

LABEL_41:

  return Image;
}

@end