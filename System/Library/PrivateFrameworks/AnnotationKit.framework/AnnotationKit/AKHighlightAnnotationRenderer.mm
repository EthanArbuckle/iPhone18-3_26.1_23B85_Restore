@interface AKHighlightAnnotationRenderer
+ (BOOL)_concretePointIsOnInside:(CGPoint)inside ofAnnotation:(id)annotation;
+ (CGRect)_concreteDrawingBoundsOfAnnotation:(id)annotation;
+ (CGRect)_rectForQuad:(AKQuadrilateral *)quad rotationAngle:(double *)angle;
+ (CGSize)_concreteDraggingBoundsInsetsForAnnotation:(id)annotation;
+ (void)_concreteRenderAnnotation:(id)annotation intoContext:(CGContext *)context options:(id)options pageControllerOrNil:(id)nil;
+ (void)_enumerateQuadPathsOfAnnotation:(id)annotation applyStyle:(BOOL)style handler:(id)handler;
@end

@implementation AKHighlightAnnotationRenderer

+ (CGRect)_concreteDrawingBoundsOfAnnotation:(id)annotation
{
  annotationCopy = annotation;
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
  [self _enumerateQuadPathsOfAnnotation:annotationCopy applyStyle:1 handler:v14];
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

+ (CGSize)_concreteDraggingBoundsInsetsForAnnotation:(id)annotation
{
  v3 = *MEMORY[0x277CBF3A8];
  v4 = *(MEMORY[0x277CBF3A8] + 8);
  result.height = v4;
  result.width = v3;
  return result;
}

+ (void)_concreteRenderAnnotation:(id)annotation intoContext:(CGContext *)context options:(id)options pageControllerOrNil:(id)nil
{
  annotationCopy = annotation;
  nilCopy = nil;
  optionsCopy = options;
  CGContextSaveGState(context);
  forDisplay = [optionsCopy forDisplay];

  [self _transformContextToModelCoordinates:context forAnnotation:annotationCopy forDisplay:forDisplay pageControllerOrNil:nilCopy];
  color = [annotationCopy color];

  if (color)
  {
    color2 = [annotationCopy color];
    CGContextSetFillColorWithColor(context, [color2 CGColor]);
  }

  CGContextSetBlendMode(context, kCGBlendModeMultiply);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = sub_23F47B040;
  v16[3] = &unk_278C7C120;
  v16[4] = context;
  [self _enumerateQuadPathsOfAnnotation:annotationCopy applyStyle:1 handler:v16];
  CGContextRestoreGState(context);
}

+ (BOOL)_concretePointIsOnInside:(CGPoint)inside ofAnnotation:(id)annotation
{
  y = inside.y;
  x = inside.x;
  annotationCopy = annotation;
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
  [self _enumerateQuadPathsOfAnnotation:annotationCopy applyStyle:0 handler:v9];
  LOBYTE(self) = *(v11 + 24);
  _Block_object_dispose(&v10, 8);

  return self;
}

+ (CGRect)_rectForQuad:(AKQuadrilateral *)quad rotationAngle:(double *)angle
{
  if (angle)
  {
    *angle = atan2(quad->var3.y - quad->var0.y, quad->var3.x - quad->var0.x);
  }

  y = quad->var0.y;
  v6 = sqrt((quad->var3.y - y) * (quad->var3.y - y) + (quad->var3.x - quad->var0.x) * (quad->var3.x - quad->var0.x));
  v7 = sqrt((quad->var1.y - y) * (quad->var1.y - y) + (quad->var0.x - quad->var1.x) * (quad->var0.x - quad->var1.x));
  v8 = 0.0;
  v9 = 0.0;
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v9;
  result.origin.x = v8;
  return result;
}

+ (void)_enumerateQuadPathsOfAnnotation:(id)annotation applyStyle:(BOOL)style handler:(id)handler
{
  styleCopy = style;
  v51 = *MEMORY[0x277D85DE8];
  annotationCopy = annotation;
  handlerCopy = handler;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  obj = [annotationCopy quadPoints];
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
        [self _rectForQuad:&v42 rotationAngle:angle];
        x = v15;
        y = v17;
        width = v19;
        v22 = v21;
        if (!styleCopy)
        {
          goto LABEL_18;
        }

        if ([annotationCopy style] == 1)
        {
          v52.origin.x = x;
          v52.origin.y = y;
          v52.size.width = width;
          v52.size.height = v22;
          Height = CGRectGetHeight(v52);
          [self _highlightOutsetFactor];
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

        if ([annotationCopy style] == 2 || objc_msgSend(annotationCopy, "style") == 3)
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

          style = [annotationCopy style];
          v29 = x;
          v30 = y;
          v31 = width;
          v32 = v22;
          if (style == 2)
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
        if (handlerCopy)
        {
          v35 = handlerCopy[2];
          v42 = *&angle[1];
          v43 = v45;
          v36 = v35(handlerCopy, &v42, v33);
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