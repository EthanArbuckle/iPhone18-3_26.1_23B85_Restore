@interface AKAnnotationRenderer
+ (BOOL)pointIsOnBorder:(CGPoint)border ofAnnotation:(id)annotation minimumBorderThickness:(double)thickness;
+ (BOOL)pointIsOnInside:(CGPoint)inside ofAnnotation:(id)annotation;
+ (CGPath)newTextExclusionPathForAnnotation:(id)annotation withOptionalAnnotationRect:(CGRect)rect;
+ (CGRect)_concreteDrawingBoundsOfAnnotation:(id)annotation;
+ (CGRect)_concreteRectangleForAnnotation:(id)annotation withTextBounds:(CGRect)bounds;
+ (CGRect)_concreteTextBoundsOfAnnotation:(id)annotation withOptionalAnnotationRect:(CGRect)rect optionalText:(id)text;
+ (CGRect)drawingBoundsOfAnnotation:(id)annotation;
+ (CGRect)rectangleForAnnotation:(id)annotation withTextBounds:(CGRect)bounds;
+ (CGRect)textBoundsOfAnnotation:(id)annotation withOptionalAnnotationRect:(CGRect)rect optionalText:(id)text;
+ (CGSize)_concreteDraggingBoundsInsetsForAnnotation:(id)annotation;
+ (CGSize)draggingBoundsInsetsForAnnotation:(id)annotation;
+ (Class)_rendererClassForAnnotation:(id)annotation;
+ (id)_optionsForContext:(CGContext *)context forDisplay:(BOOL)display;
+ (void)_testRenderAnnotation:(id)annotation intoContext:(CGContext *)context forDisplay:(BOOL)display pageControllerOrNil:(id)nil;
+ (void)_transformContextToModelCoordinates:(CGContext *)coordinates forAnnotation:(id)annotation forDisplay:(BOOL)display pageControllerOrNil:(id)nil;
+ (void)renderAnnotation:(id)annotation intoContext:(CGContext *)context options:(id)options pageControllerOrNil:(id)nil;
@end

@implementation AKAnnotationRenderer

+ (CGRect)drawingBoundsOfAnnotation:(id)annotation
{
  annotationCopy = annotation;
  [objc_msgSend(self _rendererClassForAnnotation:{annotationCopy), "_concreteDrawingBoundsOfAnnotation:", annotationCopy}];
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

+ (CGSize)draggingBoundsInsetsForAnnotation:(id)annotation
{
  annotationCopy = annotation;
  [objc_msgSend(self _rendererClassForAnnotation:{annotationCopy), "_concreteDraggingBoundsInsetsForAnnotation:", annotationCopy}];
  v6 = v5;
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

+ (CGRect)textBoundsOfAnnotation:(id)annotation withOptionalAnnotationRect:(CGRect)rect optionalText:(id)text
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  textCopy = text;
  annotationCopy = annotation;
  [objc_msgSend(self _rendererClassForAnnotation:{annotationCopy), "_concreteTextBoundsOfAnnotation:withOptionalAnnotationRect:optionalText:", annotationCopy, textCopy, x, y, width, height}];
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

+ (CGRect)rectangleForAnnotation:(id)annotation withTextBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  annotationCopy = annotation;
  [objc_msgSend(self _rendererClassForAnnotation:{annotationCopy), "_concreteRectangleForAnnotation:withTextBounds:", annotationCopy, x, y, width, height}];
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

+ (CGPath)newTextExclusionPathForAnnotation:(id)annotation withOptionalAnnotationRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  annotationCopy = annotation;
  v10 = [objc_msgSend(self _rendererClassForAnnotation:{annotationCopy), "_newConcreteTextExclusionPathForAnnotation:withOptionalAnnotationRect:", annotationCopy, x, y, width, height}];

  return v10;
}

+ (void)renderAnnotation:(id)annotation intoContext:(CGContext *)context options:(id)options pageControllerOrNil:(id)nil
{
  annotationCopy = annotation;
  optionsCopy = options;
  nilCopy = nil;
  if (!optionsCopy)
  {
    v13 = +[AKAnnotationRendererOptions defaultOptions];
    optionsCopy = v13;
    if (nilCopy)
    {
      [v13 setForDisplay:1];
    }
  }

  v14 = [self _rendererClassForAnnotation:annotationCopy];
  appearanceOverride = [annotationCopy appearanceOverride];
  if (appearanceOverride && (v16 = appearanceOverride, v17 = [annotationCopy shouldUseAppearanceOverride], v16, v17))
  {
    CGContextSaveGState(context);
    [self _transformContextToModelCoordinates:context forAnnotation:annotationCopy forDisplay:objc_msgSend(optionsCopy pageControllerOrNil:{"forDisplay"), nilCopy}];
    v48 = *(MEMORY[0x277CBF2C0] + 16);
    *&v55.a = *MEMORY[0x277CBF2C0];
    *sx = *&v55.a;
    *&v55.c = v48;
    *&v55.tx = *(MEMORY[0x277CBF2C0] + 32);
    v47 = *&v55.tx;
    [annotationCopy initialDrawingBoundsForAppearanceOverride];
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v25 = v24;
    [annotationCopy drawingBounds];
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
    if (([annotationCopy editsDisableAppearanceOverride] & 1) == 0)
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
    CGContextConcatCTM(context, &t2);
    appearanceOverride2 = [annotationCopy appearanceOverride];
    (appearanceOverride2)[2](appearanceOverride2, context);

    CGContextRestoreGState(context);
  }

  else
  {
    [v14 _concreteRenderAnnotation:annotationCopy intoContext:context options:optionsCopy pageControllerOrNil:nilCopy];
  }
}

+ (BOOL)pointIsOnBorder:(CGPoint)border ofAnnotation:(id)annotation minimumBorderThickness:(double)thickness
{
  y = border.y;
  x = border.x;
  annotationCopy = annotation;
  LOBYTE(self) = [objc_msgSend(self _rendererClassForAnnotation:{annotationCopy), "_concretePointIsOnBorder:ofAnnotation:minimumBorderThickness:", annotationCopy, x, y, thickness}];

  return self;
}

+ (BOOL)pointIsOnInside:(CGPoint)inside ofAnnotation:(id)annotation
{
  y = inside.y;
  x = inside.x;
  annotationCopy = annotation;
  LOBYTE(self) = [objc_msgSend(self _rendererClassForAnnotation:{annotationCopy), "_concretePointIsOnInside:ofAnnotation:", annotationCopy, x, y}];

  return self;
}

+ (CGRect)_concreteDrawingBoundsOfAnnotation:(id)annotation
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

+ (CGSize)_concreteDraggingBoundsInsetsForAnnotation:(id)annotation
{
  [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:{@"%s must be overriden by a subclass", "+[AKAnnotationRenderer _concreteDraggingBoundsInsetsForAnnotation:]"}];
  v3 = *MEMORY[0x277CBF3A8];
  v4 = *(MEMORY[0x277CBF3A8] + 8);
  result.height = v4;
  result.width = v3;
  return result;
}

+ (CGRect)_concreteTextBoundsOfAnnotation:(id)annotation withOptionalAnnotationRect:(CGRect)rect optionalText:(id)text
{
  [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:{@"%s must be overriden by a subclass", rect.origin.x, rect.origin.y, rect.size.width, rect.size.height, "+[AKAnnotationRenderer _concreteTextBoundsOfAnnotation:withOptionalAnnotationRect:optionalText:]"}];
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

+ (CGRect)_concreteRectangleForAnnotation:(id)annotation withTextBounds:(CGRect)bounds
{
  [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:{@"%s must be overriden by a subclass", bounds.origin.x, bounds.origin.y, bounds.size.width, bounds.size.height, "+[AKAnnotationRenderer _concreteRectangleForAnnotation:withTextBounds:]"}];
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

+ (id)_optionsForContext:(CGContext *)context forDisplay:(BOOL)display
{
  displayCopy = display;
  v6 = 1.0;
  if ([self isBitmapContext:?] && (ColorSpace = CGBitmapContextGetColorSpace(context)) != 0 && ((v8 = ColorSpace, (MEMORY[0x245CADF00]() & 1) != 0) || CGColorSpaceUsesExtendedRange(v8)))
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
  [(AKAnnotationRendererOptions *)v11 setForDisplay:displayCopy];
  [(AKAnnotationRendererOptions *)v11 setAllowHDR:v10];
  [(AKAnnotationRendererOptions *)v11 setAvailableHeadroom:v6];

  return v11;
}

+ (void)_transformContextToModelCoordinates:(CGContext *)coordinates forAnnotation:(id)annotation forDisplay:(BOOL)display pageControllerOrNil:(id)nil
{
  sx = 0.0;
  [AKGeometryHelper effectiveDrawingBoundsForAnnotation:annotation forDisplay:display pageControllerOrNil:nil outScaleFactor:&sx];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  CGContextScaleCTM(coordinates, sx, sx);
  if (![AKGeometryHelper isUnpresentableRect:v8, v10, v12, v14])
  {
    CGContextTranslateCTM(coordinates, -v8, -v10);
  }
}

+ (void)_testRenderAnnotation:(id)annotation intoContext:(CGContext *)context forDisplay:(BOOL)display pageControllerOrNil:(id)nil
{
  displayCopy = display;
  annotationCopy = annotation;
  nilCopy = nil;
  memset(&v49, 0, sizeof(v49));
  CGContextGetCTM(&v49, context);
  v12 = sqrt(v49.c * v49.c + v49.a * v49.a);
  v13 = sqrt(v49.d * v49.d + v49.b * v49.b);
  [annotationCopy drawingBounds];
  v46 = v15;
  v47 = v14;
  v44 = v17;
  v45 = v16;
  [self _transformContextToModelCoordinates:context forAnnotation:annotationCopy forDisplay:displayCopy pageControllerOrNil:nilCopy];
  CGContextScaleCTM(context, 1.0 / v12, 1.0 / v13);
  CGContextTranslateCTM(context, 0.5, 0.5);
  CGContextScaleCTM(context, v12, v13);
  v48 = 0.0;
  [AKGeometryHelper effectiveDrawingBoundsForAnnotation:annotationCopy forDisplay:displayCopy pageControllerOrNil:nilCopy outScaleFactor:&v48];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v42 = v48;
  v26 = v12 * v48;
  CGContextSetLineWidth(context, 1.0 / (v12 * v48));
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
      CGContextMoveToPoint(context, MinX, MinY);
      v53.origin.x = v19;
      v53.origin.y = v21;
      v53.size.width = v23;
      v53.size.height = v25;
      MaxY = CGRectGetMaxY(v53);
      CGContextAddLineToPoint(context, MinX, MaxY);
      MinX = v28 + MinX;
      v54.origin.x = v19;
      v54.origin.y = v21;
      v54.size.width = v23;
      v54.size.height = v25;
    }

    while (MinX < CGRectGetMaxX(v54));
  }

  blackColor = [MEMORY[0x277D75348] blackColor];
  CGContextSetStrokeColorWithColor(context, [blackColor CGColor]);

  CGContextStrokePath(context);
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
      CGContextMoveToPoint(context, v33, v32);
      v58.origin.x = v19;
      v58.origin.y = v21;
      v58.size.width = v23;
      v58.size.height = v25;
      MaxX = CGRectGetMaxX(v58);
      CGContextAddLineToPoint(context, MaxX, v32);
      v32 = 3.0 / (v13 * v43) + v32;
      v59.origin.x = v19;
      v59.origin.y = v21;
      v59.size.width = v23;
      v59.size.height = v25;
    }

    while (v32 < CGRectGetMaxY(v59));
  }

  blueColor = [MEMORY[0x277D75348] blueColor];
  CGContextSetStrokeColorWithColor(context, [blueColor CGColor]);

  CGContextStrokePath(context);
  redColor = [MEMORY[0x277D75348] redColor];
  CGContextSetStrokeColorWithColor(context, [redColor CGColor]);

  v60.origin.x = v47;
  v60.origin.y = v46;
  v60.size.width = v45;
  v60.size.height = v44;
  CGContextStrokeRect(context, v60);
  v61.origin.x = v47;
  v61.origin.y = v46;
  v61.size.width = v45;
  v61.size.height = v44;
  v62 = CGRectInset(v61, 5.0, 5.0);
  x = v62.origin.x;
  y = v62.origin.y;
  width = v62.size.width;
  height = v62.size.height;
  yellowColor = [MEMORY[0x277D75348] yellowColor];
  CGContextSetStrokeColorWithColor(context, [yellowColor CGColor]);

  v63.origin.x = x;
  v63.origin.y = y;
  v63.size.width = width;
  v63.size.height = height;
  CGContextStrokeRect(context, v63);
}

+ (Class)_rendererClassForAnnotation:(id)annotation
{
  annotationCopy = annotation;
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