@interface AKAnnotationRenderer
+ (BOOL)pointIsOnBorder:(CGPoint)a3 ofAnnotation:(id)a4 minimumBorderThickness:(double)a5;
+ (BOOL)pointIsOnInside:(CGPoint)a3 ofAnnotation:(id)a4;
+ (CGPath)newTextExclusionPathForAnnotation:(id)a3 withOptionalAnnotationRect:(CGRect)a4;
+ (CGRect)_concreteDrawingBoundsOfAnnotation:(id)a3;
+ (CGRect)_concreteRectangleForAnnotation:(id)a3 withTextBounds:(CGRect)a4;
+ (CGRect)_concreteTextBoundsOfAnnotation:(id)a3 withOptionalAnnotationRect:(CGRect)a4 optionalText:(id)a5;
+ (CGRect)drawingBoundsOfAnnotation:(id)a3;
+ (CGRect)rectangleForAnnotation:(id)a3 withTextBounds:(CGRect)a4;
+ (CGRect)textBoundsOfAnnotation:(id)a3 withOptionalAnnotationRect:(CGRect)a4 optionalText:(id)a5;
+ (CGSize)_concreteDraggingBoundsInsetsForAnnotation:(id)a3;
+ (CGSize)draggingBoundsInsetsForAnnotation:(id)a3;
+ (Class)_rendererClassForAnnotation:(id)a3;
+ (id)_optionsForContext:(CGContext *)a3 forDisplay:(BOOL)a4;
+ (void)_testRenderAnnotation:(id)a3 intoContext:(CGContext *)a4 forDisplay:(BOOL)a5 pageControllerOrNil:(id)a6;
+ (void)_transformContextToModelCoordinates:(CGContext *)a3 forAnnotation:(id)a4 forDisplay:(BOOL)a5 pageControllerOrNil:(id)a6;
+ (void)renderAnnotation:(id)a3 intoContext:(CGContext *)a4 options:(id)a5 pageControllerOrNil:(id)a6;
@end

@implementation AKAnnotationRenderer

+ (CGRect)drawingBoundsOfAnnotation:(id)a3
{
  v4 = a3;
  [objc_msgSend(a1 _rendererClassForAnnotation:{v4), "_concreteDrawingBoundsOfAnnotation:", v4}];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = v6;
  v14 = v8;
  v15 = v10;
  v16 = v12;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

+ (CGSize)draggingBoundsInsetsForAnnotation:(id)a3
{
  v4 = a3;
  [objc_msgSend(a1 _rendererClassForAnnotation:{v4), "_concreteDraggingBoundsInsetsForAnnotation:", v4}];
  v6 = v5;
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

+ (CGRect)textBoundsOfAnnotation:(id)a3 withOptionalAnnotationRect:(CGRect)a4 optionalText:(id)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v11 = a5;
  v12 = a3;
  [objc_msgSend(a1 _rendererClassForAnnotation:{v12), "_concreteTextBoundsOfAnnotation:withOptionalAnnotationRect:optionalText:", v12, v11, x, y, width, height}];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  v21 = v14;
  v22 = v16;
  v23 = v18;
  v24 = v20;
  result.size.height = v24;
  result.size.width = v23;
  result.origin.y = v22;
  result.origin.x = v21;
  return result;
}

+ (CGRect)rectangleForAnnotation:(id)a3 withTextBounds:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v9 = a3;
  [objc_msgSend(a1 _rendererClassForAnnotation:{v9), "_concreteRectangleForAnnotation:withTextBounds:", v9, x, y, width, height}];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v18 = v11;
  v19 = v13;
  v20 = v15;
  v21 = v17;
  result.size.height = v21;
  result.size.width = v20;
  result.origin.y = v19;
  result.origin.x = v18;
  return result;
}

+ (CGPath)newTextExclusionPathForAnnotation:(id)a3 withOptionalAnnotationRect:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v9 = a3;
  v10 = [objc_msgSend(a1 _rendererClassForAnnotation:{v9), "_newConcreteTextExclusionPathForAnnotation:withOptionalAnnotationRect:", v9, x, y, width, height}];

  return v10;
}

+ (void)renderAnnotation:(id)a3 intoContext:(CGContext *)a4 options:(id)a5 pageControllerOrNil:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  if (!v11)
  {
    v13 = +[AKAnnotationRendererOptions defaultOptions];
    v11 = v13;
    if (v12)
    {
      [v13 setForDisplay:1];
    }
  }

  v14 = [a1 _rendererClassForAnnotation:v10];
  v15 = [v10 appearanceOverride];
  if (v15 && (v16 = v15, v17 = [v10 shouldUseAppearanceOverride], v16, v17))
  {
    CGContextSaveGState(a4);
    [a1 _transformContextToModelCoordinates:a4 forAnnotation:v10 forDisplay:objc_msgSend(v11 pageControllerOrNil:{"forDisplay"), v12}];
    v48 = *(MEMORY[0x277CBF2C0] + 16);
    *&v55.a = *MEMORY[0x277CBF2C0];
    *sx = *&v55.a;
    *&v55.c = v48;
    *&v55.tx = *(MEMORY[0x277CBF2C0] + 32);
    v47 = *&v55.tx;
    [v10 initialDrawingBoundsForAppearanceOverride];
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v25 = v24;
    [v10 drawingBounds];
    v27 = v26;
    v29 = v28;
    v31 = v30;
    v33 = v32;
    v43 = v21;
    v44 = v19;
    [AKGeometryHelper centerOfRect:v19, v21, v23, v25];
    v35 = v34;
    v37 = v36;
    [AKGeometryHelper centerOfRect:v27, v29, v31, v33];
    v45 = v39;
    v46 = v38;
    CGAffineTransformMakeTranslation(&t2, v38 - v35, v39 - v37);
    *&t1.a = *sx;
    *&t1.c = v48;
    *&t1.tx = v47;
    CGAffineTransformConcat(&v55, &t1, &t2);
    if (([v10 editsDisableAppearanceOverride] & 1) == 0)
    {
      v56.origin.x = v27;
      v56.origin.y = v29;
      v56.size.width = v31;
      v56.size.height = v33;
      sxa = CGRectGetWidth(v56);
      v57.origin.x = v44;
      v57.origin.y = v43;
      v57.size.width = v23;
      v57.size.height = v25;
      sxb = sxa / CGRectGetWidth(v57);
      v58.origin.x = v27;
      v58.origin.y = v29;
      v58.size.width = v31;
      v58.size.height = v33;
      Height = CGRectGetHeight(v58);
      v59.origin.x = v44;
      v59.origin.y = v43;
      v59.size.width = v23;
      v59.size.height = v25;
      v41 = Height / CGRectGetHeight(v59);
      CGAffineTransformMakeTranslation(&t1, -v46, -v45);
      v52 = v55;
      CGAffineTransformConcat(&t2, &v52, &t1);
      v55 = t2;
      CGAffineTransformMakeScale(&t1, sxb, v41);
      v52 = v55;
      CGAffineTransformConcat(&t2, &v52, &t1);
      v55 = t2;
      CGAffineTransformMakeTranslation(&t1, v46, v45);
      v52 = v55;
      CGAffineTransformConcat(&t2, &v52, &t1);
      v55 = t2;
    }

    t2 = v55;
    CGContextConcatCTM(a4, &t2);
    v42 = [v10 appearanceOverride];
    (v42)[2](v42, a4);

    CGContextRestoreGState(a4);
  }

  else
  {
    [v14 _concreteRenderAnnotation:v10 intoContext:a4 options:v11 pageControllerOrNil:v12];
  }
}

+ (BOOL)pointIsOnBorder:(CGPoint)a3 ofAnnotation:(id)a4 minimumBorderThickness:(double)a5
{
  y = a3.y;
  x = a3.x;
  v9 = a4;
  LOBYTE(a1) = [objc_msgSend(a1 _rendererClassForAnnotation:{v9), "_concretePointIsOnBorder:ofAnnotation:minimumBorderThickness:", v9, x, y, a5}];

  return a1;
}

+ (BOOL)pointIsOnInside:(CGPoint)a3 ofAnnotation:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  LOBYTE(a1) = [objc_msgSend(a1 _rendererClassForAnnotation:{v7), "_concretePointIsOnInside:ofAnnotation:", v7, x, y}];

  return a1;
}

+ (CGRect)_concreteDrawingBoundsOfAnnotation:(id)a3
{
  [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:{@"%s must be overriden by a subclass", "+[AKAnnotationRenderer _concreteDrawingBoundsOfAnnotation:]"}];
  v3 = *MEMORY[0x277CBF3A0];
  v4 = *(MEMORY[0x277CBF3A0] + 8);
  v5 = *(MEMORY[0x277CBF3A0] + 16);
  v6 = *(MEMORY[0x277CBF3A0] + 24);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

+ (CGSize)_concreteDraggingBoundsInsetsForAnnotation:(id)a3
{
  [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:{@"%s must be overriden by a subclass", "+[AKAnnotationRenderer _concreteDraggingBoundsInsetsForAnnotation:]"}];
  v3 = *MEMORY[0x277CBF3A8];
  v4 = *(MEMORY[0x277CBF3A8] + 8);
  result.height = v4;
  result.width = v3;
  return result;
}

+ (CGRect)_concreteTextBoundsOfAnnotation:(id)a3 withOptionalAnnotationRect:(CGRect)a4 optionalText:(id)a5
{
  [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:{@"%s must be overriden by a subclass", a4.origin.x, a4.origin.y, a4.size.width, a4.size.height, "+[AKAnnotationRenderer _concreteTextBoundsOfAnnotation:withOptionalAnnotationRect:optionalText:]"}];
  v5 = *MEMORY[0x277CBF3A0];
  v6 = *(MEMORY[0x277CBF3A0] + 8);
  v7 = *(MEMORY[0x277CBF3A0] + 16);
  v8 = *(MEMORY[0x277CBF3A0] + 24);
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

+ (CGRect)_concreteRectangleForAnnotation:(id)a3 withTextBounds:(CGRect)a4
{
  [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:{@"%s must be overriden by a subclass", a4.origin.x, a4.origin.y, a4.size.width, a4.size.height, "+[AKAnnotationRenderer _concreteRectangleForAnnotation:withTextBounds:]"}];
  v4 = *MEMORY[0x277CBF3A0];
  v5 = *(MEMORY[0x277CBF3A0] + 8);
  v6 = *(MEMORY[0x277CBF3A0] + 16);
  v7 = *(MEMORY[0x277CBF3A0] + 24);
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

+ (id)_optionsForContext:(CGContext *)a3 forDisplay:(BOOL)a4
{
  v4 = a4;
  v6 = 1.0;
  if ([a1 isBitmapContext:?] && (ColorSpace = CGBitmapContextGetColorSpace(a3)) != 0 && ((v8 = ColorSpace, (MEMORY[0x245CADF00]() & 1) != 0) || CGColorSpaceUsesExtendedRange(v8)))
  {
    CGContextGetEDRTargetHeadroom();
    v6 = v9;
    v10 = 1;
  }

  else
  {
    v10 = 0;
  }

  v11 = objc_alloc_init(AKAnnotationRendererOptions);
  [(AKAnnotationRendererOptions *)v11 setForDisplay:v4];
  [(AKAnnotationRendererOptions *)v11 setAllowHDR:v10];
  [(AKAnnotationRendererOptions *)v11 setAvailableHeadroom:v6];

  return v11;
}

+ (void)_transformContextToModelCoordinates:(CGContext *)a3 forAnnotation:(id)a4 forDisplay:(BOOL)a5 pageControllerOrNil:(id)a6
{
  sx = 0.0;
  [AKGeometryHelper effectiveDrawingBoundsForAnnotation:a4 forDisplay:a5 pageControllerOrNil:a6 outScaleFactor:&sx];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  CGContextScaleCTM(a3, sx, sx);
  if (![AKGeometryHelper isUnpresentableRect:v8, v10, v12, v14])
  {
    CGContextTranslateCTM(a3, -v8, -v10);
  }
}

+ (void)_testRenderAnnotation:(id)a3 intoContext:(CGContext *)a4 forDisplay:(BOOL)a5 pageControllerOrNil:(id)a6
{
  v7 = a5;
  v10 = a3;
  v11 = a6;
  memset(&v49, 0, sizeof(v49));
  CGContextGetCTM(&v49, a4);
  v12 = sqrt(v49.c * v49.c + v49.a * v49.a);
  v13 = sqrt(v49.d * v49.d + v49.b * v49.b);
  [v10 drawingBounds];
  v46 = v15;
  v47 = v14;
  v44 = v17;
  v45 = v16;
  [a1 _transformContextToModelCoordinates:a4 forAnnotation:v10 forDisplay:v7 pageControllerOrNil:v11];
  CGContextScaleCTM(a4, 1.0 / v12, 1.0 / v13);
  CGContextTranslateCTM(a4, 0.5, 0.5);
  CGContextScaleCTM(a4, v12, v13);
  v48 = 0.0;
  [AKGeometryHelper effectiveDrawingBoundsForAnnotation:v10 forDisplay:v7 pageControllerOrNil:v11 outScaleFactor:&v48];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v42 = v48;
  v26 = v12 * v48;
  CGContextSetLineWidth(a4, 1.0 / (v12 * v48));
  v50.origin.x = v19;
  v50.origin.y = v21;
  v50.size.width = v23;
  v50.size.height = v25;
  MinX = CGRectGetMinX(v50);
  v51.origin.x = v19;
  v51.origin.y = v21;
  v51.size.width = v23;
  v51.size.height = v25;
  if (MinX < CGRectGetMaxX(v51))
  {
    v28 = 3.0 / v26;
    do
    {
      v52.origin.x = v19;
      v52.origin.y = v21;
      v52.size.width = v23;
      v52.size.height = v25;
      MinY = CGRectGetMinY(v52);
      CGContextMoveToPoint(a4, MinX, MinY);
      v53.origin.x = v19;
      v53.origin.y = v21;
      v53.size.width = v23;
      v53.size.height = v25;
      MaxY = CGRectGetMaxY(v53);
      CGContextAddLineToPoint(a4, MinX, MaxY);
      MinX = v28 + MinX;
      v54.origin.x = v19;
      v54.origin.y = v21;
      v54.size.width = v23;
      v54.size.height = v25;
    }

    while (MinX < CGRectGetMaxX(v54));
  }

  v31 = [MEMORY[0x277D75348] blackColor];
  CGContextSetStrokeColorWithColor(a4, [v31 CGColor]);

  CGContextStrokePath(a4);
  v55.origin.x = v19;
  v55.origin.y = v21;
  v55.size.width = v23;
  v55.size.height = v25;
  v32 = CGRectGetMinY(v55);
  v56.origin.x = v19;
  v56.origin.y = v21;
  v56.size.width = v23;
  v56.size.height = v25;
  if (v32 < CGRectGetMaxY(v56))
  {
    do
    {
      v57.origin.x = v19;
      v57.origin.y = v21;
      v57.size.width = v23;
      v57.size.height = v25;
      v33 = CGRectGetMinX(v57);
      CGContextMoveToPoint(a4, v33, v32);
      v58.origin.x = v19;
      v58.origin.y = v21;
      v58.size.width = v23;
      v58.size.height = v25;
      MaxX = CGRectGetMaxX(v58);
      CGContextAddLineToPoint(a4, MaxX, v32);
      v32 = 3.0 / (v13 * v43) + v32;
      v59.origin.x = v19;
      v59.origin.y = v21;
      v59.size.width = v23;
      v59.size.height = v25;
    }

    while (v32 < CGRectGetMaxY(v59));
  }

  v35 = [MEMORY[0x277D75348] blueColor];
  CGContextSetStrokeColorWithColor(a4, [v35 CGColor]);

  CGContextStrokePath(a4);
  v36 = [MEMORY[0x277D75348] redColor];
  CGContextSetStrokeColorWithColor(a4, [v36 CGColor]);

  v60.origin.x = v47;
  v60.origin.y = v46;
  v60.size.width = v45;
  v60.size.height = v44;
  CGContextStrokeRect(a4, v60);
  v61.origin.x = v47;
  v61.origin.y = v46;
  v61.size.width = v45;
  v61.size.height = v44;
  v62 = CGRectInset(v61, 5.0, 5.0);
  x = v62.origin.x;
  y = v62.origin.y;
  width = v62.size.width;
  height = v62.size.height;
  v41 = [MEMORY[0x277D75348] yellowColor];
  CGContextSetStrokeColorWithColor(a4, [v41 CGColor]);

  v63.origin.x = x;
  v63.origin.y = y;
  v63.size.width = width;
  v63.size.height = height;
  CGContextStrokeRect(a4, v63);
}

+ (Class)_rendererClassForAnnotation:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v4 = objc_opt_class();
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

@end