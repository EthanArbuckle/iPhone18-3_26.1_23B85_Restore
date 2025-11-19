@interface AKHighlightAnnotationRenderer
+ (BOOL)_concretePointIsOnInside:(CGPoint)a3 ofAnnotation:(id)a4;
+ (CGRect)_concreteDrawingBoundsOfAnnotation:(id)a3;
+ (CGRect)_rectForQuad:(AKQuadrilateral *)a3 rotationAngle:(double *)a4;
+ (CGSize)_concreteDraggingBoundsInsetsForAnnotation:(id)a3;
+ (void)_concreteRenderAnnotation:(id)a3 intoContext:(CGContext *)a4 options:(id)a5 pageControllerOrNil:(id)a6;
+ (void)_enumerateQuadPathsOfAnnotation:(id)a3 applyStyle:(BOOL)a4 handler:(id)a5;
@end

@implementation AKHighlightAnnotationRenderer

+ (CGRect)_concreteDrawingBoundsOfAnnotation:(id)a3
{
  v4 = a3;
  v15 = 0;
  v16 = &v15;
  v17 = 0x4010000000;
  v18 = &unk_23F4DEFD5;
  v5 = *(MEMORY[0x277CBF398] + 16);
  v19 = *MEMORY[0x277CBF398];
  v20 = v5;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_23F47AE8C;
  v14[3] = &unk_278C7C100;
  v14[4] = &v15;
  [a1 _enumerateQuadPathsOfAnnotation:v4 applyStyle:1 handler:v14];
  if (CGRectIsNull(v16[1]))
  {
    width = 1.0;
    *&v7 = -10000.0;
    *&v8 = -10000.0;
    height = 1.0;
  }

  else
  {
    v7 = *&v16[1].origin.x;
    v8 = *&v16[1].origin.y;
    width = v16[1].size.width;
    height = v16[1].size.height;
  }

  _Block_object_dispose(&v15, 8);

  v10 = *&v7;
  v11 = *&v8;
  v12 = width;
  v13 = height;
  result.size.height = v13;
  result.size.width = v12;
  result.origin.y = v11;
  result.origin.x = v10;
  return result;
}

+ (CGSize)_concreteDraggingBoundsInsetsForAnnotation:(id)a3
{
  v3 = *MEMORY[0x277CBF3A8];
  v4 = *(MEMORY[0x277CBF3A8] + 8);
  result.height = v4;
  result.width = v3;
  return result;
}

+ (void)_concreteRenderAnnotation:(id)a3 intoContext:(CGContext *)a4 options:(id)a5 pageControllerOrNil:(id)a6
{
  v10 = a3;
  v11 = a6;
  v12 = a5;
  CGContextSaveGState(a4);
  v13 = [v12 forDisplay];

  [a1 _transformContextToModelCoordinates:a4 forAnnotation:v10 forDisplay:v13 pageControllerOrNil:v11];
  v14 = [v10 color];

  if (v14)
  {
    v15 = [v10 color];
    CGContextSetFillColorWithColor(a4, [v15 CGColor]);
  }

  CGContextSetBlendMode(a4, kCGBlendModeMultiply);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = sub_23F47B040;
  v16[3] = &unk_278C7C120;
  v16[4] = a4;
  [a1 _enumerateQuadPathsOfAnnotation:v10 applyStyle:1 handler:v16];
  CGContextRestoreGState(a4);
}

+ (BOOL)_concretePointIsOnInside:(CGPoint)a3 ofAnnotation:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_23F47B174;
  v9[3] = &unk_278C7C148;
  v9[4] = &v10;
  *&v9[5] = x;
  *&v9[6] = y;
  [a1 _enumerateQuadPathsOfAnnotation:v7 applyStyle:0 handler:v9];
  LOBYTE(a1) = *(v11 + 24);
  _Block_object_dispose(&v10, 8);

  return a1;
}

+ (CGRect)_rectForQuad:(AKQuadrilateral *)a3 rotationAngle:(double *)a4
{
  if (a4)
  {
    *a4 = atan2(a3->var3.y - a3->var0.y, a3->var3.x - a3->var0.x);
  }

  y = a3->var0.y;
  v6 = sqrt((a3->var3.y - y) * (a3->var3.y - y) + (a3->var3.x - a3->var0.x) * (a3->var3.x - a3->var0.x));
  v7 = sqrt((a3->var1.y - y) * (a3->var1.y - y) + (a3->var0.x - a3->var1.x) * (a3->var0.x - a3->var1.x));
  v8 = 0.0;
  v9 = 0.0;
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v9;
  result.origin.x = v8;
  return result;
}

+ (void)_enumerateQuadPathsOfAnnotation:(id)a3 applyStyle:(BOOL)a4 handler:(id)a5
{
  v6 = a4;
  v51 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  obj = [v8 quadPoints];
  v10 = [obj countByEnumeratingWithState:&v46 objects:v50 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v47;
    do
    {
      v13 = 0;
      do
      {
        if (*v47 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v46 + 1) + 8 * v13);
        v45 = 0u;
        memset(&angle[1], 0, 48);
        if (v14)
        {
          [v14 quadrilateralValue];
        }

        angle[0] = 0.0;
        v42 = *&angle[1];
        v43 = v45;
        [a1 _rectForQuad:&v42 rotationAngle:angle];
        x = v15;
        y = v17;
        width = v19;
        v22 = v21;
        if (!v6)
        {
          goto LABEL_18;
        }

        if ([v8 style] == 1)
        {
          v52.origin.x = x;
          v52.origin.y = y;
          v52.size.width = width;
          v52.size.height = v22;
          Height = CGRectGetHeight(v52);
          [a1 _highlightOutsetFactor];
          v25 = -(Height * v24);
          v53.origin.x = x;
          v53.origin.y = y;
          v53.size.width = width;
          v53.size.height = v22;
          v54 = CGRectInset(v53, v25, v25);
          x = v54.origin.x;
          y = v54.origin.y;
          width = v54.size.width;
          v26 = v54.size.height;
          goto LABEL_19;
        }

        if ([v8 style] == 2 || objc_msgSend(v8, "style") == 3)
        {
          v55.origin.x = x;
          v55.origin.y = y;
          v55.size.width = width;
          v55.size.height = v22;
          v27 = CGRectGetHeight(v55) * 0.08;
          if (v27 >= 1.0)
          {
            v26 = v27;
          }

          else
          {
            v26 = 1.0;
          }

          v28 = [v8 style];
          v29 = x;
          v30 = y;
          v31 = width;
          v32 = v22;
          if (v28 == 2)
          {
            width = CGRectGetWidth(*&v29);
          }

          else
          {
            MidY = CGRectGetMidY(*&v29);
            v57.origin.x = x;
            v57.origin.y = y;
            v57.size.width = width;
            v57.size.height = v22;
            width = CGRectGetWidth(v57);
            y = MidY;
          }
        }

        else
        {
LABEL_18:
          v26 = v22;
        }

LABEL_19:
        memset(&transform, 0, sizeof(transform));
        CGAffineTransformMakeTranslation(&v42, angle[1], angle[2]);
        transform = v42;
        v40 = v42;
        CGAffineTransformRotate(&v42, &v40, angle[0]);
        transform = v42;
        v56.origin.x = x;
        v56.origin.y = y;
        v56.size.width = width;
        v56.size.height = v26;
        v33 = CGPathCreateWithRect(v56, &transform);
        v34 = v33;
        if (v9)
        {
          v35 = v9[2];
          v42 = *&angle[1];
          v43 = v45;
          v36 = v35(v9, &v42, v33);
          if (!v34)
          {
            goto LABEL_22;
          }

LABEL_21:
          CGPathRelease(v34);
          goto LABEL_22;
        }

        v36 = 0;
        if (v33)
        {
          goto LABEL_21;
        }

LABEL_22:
        if (v36)
        {
          goto LABEL_29;
        }

        ++v13;
      }

      while (v11 != v13);
      v38 = [obj countByEnumeratingWithState:&v46 objects:v50 count:16];
      v11 = v38;
    }

    while (v38);
  }

LABEL_29:
}

@end