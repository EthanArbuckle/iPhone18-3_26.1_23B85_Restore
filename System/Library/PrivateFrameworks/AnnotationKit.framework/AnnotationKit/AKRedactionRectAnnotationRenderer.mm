@interface AKRedactionRectAnnotationRenderer
+ (BOOL)_concretePointIsOnBorder:(CGPoint)border ofAnnotation:(id)annotation minimumBorderThickness:(double)thickness;
+ (BOOL)_concretePointIsOnInside:(CGPoint)inside ofAnnotation:(id)annotation;
+ (CGPath)_newConcreteTextExclusionPathForAnnotation:(id)annotation withOptionalAnnotationRect:(CGRect)rect;
+ (CGPath)_newPathForAnnotation:(id)annotation axisAlignedForStroke:(BOOL)stroke alignToScreenUsingPageController:(id)controller orAlignToContext:(CGContext *)context;
+ (CGRect)_concreteDrawingBoundsOfAnnotation:(id)annotation;
+ (CGRect)_concreteRectangleForAnnotation:(id)annotation withTextBounds:(CGRect)bounds;
+ (CGRect)_concreteTextBoundsOfAnnotation:(id)annotation withOptionalAnnotationRect:(CGRect)rect optionalText:(id)text;
+ (CGSize)_concreteDraggingBoundsInsetsForAnnotation:(id)annotation;
+ (void)_concreteRenderAnnotation:(id)annotation intoContext:(CGContext *)context options:(id)options pageControllerOrNil:(id)nil;
@end

@implementation AKRedactionRectAnnotationRenderer

+ (CGRect)_concreteDrawingBoundsOfAnnotation:(id)annotation
{
  annotationCopy = annotation;
  [annotationCopy rectangle];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [annotationCopy rotationAngle];
  v13 = v12;

  [AKGeometryHelper boundsOfRotatedRectangle:v5 angle:v7, v9, v11, v13];

  return CGRectInset(*&v14, -1.0, -1.0);
}

+ (CGSize)_concreteDraggingBoundsInsetsForAnnotation:(id)annotation
{
  v3 = *MEMORY[0x277CBF3A8];
  v4 = *(MEMORY[0x277CBF3A8] + 8);
  result.height = v4;
  result.width = v3;
  return result;
}

+ (CGRect)_concreteTextBoundsOfAnnotation:(id)annotation withOptionalAnnotationRect:(CGRect)rect optionalText:(id)text
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  annotationCopy = annotation;
  [annotationCopy strokeWidth];
  v11 = v10;
  [annotationCopy originalModelBaseScaleFactor];
  v13 = v12;
  v26.origin.x = x;
  v26.origin.y = y;
  v26.size.width = width;
  v26.size.height = height;
  if (CGRectIsEmpty(v26))
  {
    [annotationCopy rectangle];
    x = v14;
    y = v15;
    width = v16;
    height = v17;
  }

  v27.origin.x = x;
  v27.origin.y = y;
  v27.size.width = width;
  v27.size.height = height;
  v28 = CGRectInset(v27, v11 * 0.5 + v13 * 2.0, v11 * 0.5 + v13 * 2.0);
  v18 = v28.origin.x;
  v19 = v28.origin.y;
  v20 = v28.size.width;
  v21 = v28.size.height;

  v22 = v18;
  v23 = v19;
  v24 = v20;
  v25 = v21;
  result.size.height = v25;
  result.size.width = v24;
  result.origin.y = v23;
  result.origin.x = v22;
  return result;
}

+ (CGRect)_concreteRectangleForAnnotation:(id)annotation withTextBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  annotationCopy = annotation;
  [annotationCopy strokeWidth];
  v10 = v9 * 0.5;
  [annotationCopy originalModelBaseScaleFactor];
  v12 = v11;

  v13 = x;
  v14 = y;
  v15 = width;
  v16 = height;

  return CGRectInset(*&v13, -(v10 + v12 * 2.0), -(v10 + v12 * 2.0));
}

+ (CGPath)_newConcreteTextExclusionPathForAnnotation:(id)annotation withOptionalAnnotationRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  annotationCopy = annotation;
  [annotationCopy strokeWidth];
  v11 = v10 * 0.5;
  [annotationCopy originalModelBaseScaleFactor];
  v13 = v11 + v12 * 2.0;
  v23.origin.x = x;
  v23.origin.y = y;
  v23.size.width = width;
  v23.size.height = height;
  v24 = CGRectInset(v23, v13, v13);
  v14 = v24.origin.x;
  v15 = v24.origin.y;
  v16 = v24.size.width;
  v17 = v24.size.height;
  Mutable = CGPathCreateMutable();
  if (![AKGeometryHelper isUnpresentableRect:v14, v15, v16, v17])
  {
    v19 = [annotationCopy copy];
    [v19 setRectangle:{v14, v15, v16, v17}];
    v20 = [self _newPathForAnnotation:v19 axisAlignedForStroke:0 alignToScreenUsingPageController:0 orAlignToContext:0];
    CGPathAddPath(Mutable, 0, v20);
    CGPathRelease(v20);
  }

  MutableCopy = CGPathCreateMutableCopy(Mutable);
  CGPathRelease(Mutable);

  return MutableCopy;
}

+ (void)_concreteRenderAnnotation:(id)annotation intoContext:(CGContext *)context options:(id)options pageControllerOrNil:(id)nil
{
  v36 = *MEMORY[0x277D85DE8];
  annotationCopy = annotation;
  nilCopy = nil;
  optionsCopy = options;
  CGContextSaveGState(context);
  forDisplay = [optionsCopy forDisplay];

  [self _transformContextToModelCoordinates:context forAnnotation:annotationCopy forDisplay:forDisplay pageControllerOrNil:nilCopy];
  [AKGeometryHelper rotationTransformForRectangularAnnotation:annotationCopy hasRotation:0];
  memset(&transform, 0, sizeof(transform));
  CGContextConcatCTM(context, &transform);
  v14 = [self _newPathForAnnotation:annotationCopy axisAlignedForStroke:0 alignToScreenUsingPageController:nilCopy orAlignToContext:context];

  BoundingBox = CGPathGetBoundingBox(v14);
  x = BoundingBox.origin.x;
  y = BoundingBox.origin.y;
  width = BoundingBox.size.width;
  height = BoundingBox.size.height;
  if ([annotationCopy isHighlighted])
  {
    CGContextSetRGBStrokeColor(context, 0.0, 0.0, 0.0, 1.0);
    CGContextSetLineWidth(context, 1.0);
    v38.origin.x = x;
    v38.origin.y = y;
    v38.size.width = width;
    v38.size.height = height;
    CGContextStrokeRect(context, v38);
  }

  else
  {
    if ([annotationCopy isOpaque])
    {
      v19 = 1.0;
    }

    else
    {
      v19 = 0.65;
    }

    blackColor = [MEMORY[0x277D75348] blackColor];
    v21 = [blackColor colorWithAlphaComponent:v19];

    CGContextSetFillColorWithColor(context, [v21 CGColor]);
    CGContextAddPath(context, v14);
    CGContextFillPath(context);
    v39.origin.x = x;
    v39.origin.y = y;
    v39.size.width = width;
    v39.size.height = height;
    CGContextClipToRect(context, v39);
    darkGrayColor = [MEMORY[0x277D75348] darkGrayColor];
    v23 = [darkGrayColor colorWithAlphaComponent:v19];

    ColorSpace = CGColorGetColorSpace([v23 CGColor]);
    if (ColorSpace)
    {
      CGContextSetStrokeColorSpace(context, ColorSpace);
      CGContextSetStrokeColorWithColor(context, [v23 CGColor]);
      v40.origin.x = x;
      v40.origin.y = y;
      v40.size.width = width;
      v40.size.height = height;
      MinX = CGRectGetMinX(v40);
      v41.origin.x = x;
      v41.origin.y = y;
      v41.size.width = width;
      v41.size.height = height;
      MinY = CGRectGetMinY(v41);
      transform.a = MinX;
      transform.b = MinY;
      v42.origin.x = x;
      v42.origin.y = y;
      v42.size.width = width;
      v42.size.height = height;
      MaxX = CGRectGetMaxX(v42);
      v43.origin.x = x;
      v43.origin.y = y;
      v43.size.width = width;
      v43.size.height = height;
      MaxY = CGRectGetMaxY(v43);
      transform.c = MaxX;
      transform.d = MaxY;
      v44.origin.x = x;
      v44.origin.y = y;
      v44.size.width = width;
      v44.size.height = height;
      v29 = CGRectGetMinX(v44);
      v45.origin.x = x;
      v45.origin.y = y;
      v45.size.width = width;
      v45.size.height = height;
      v30 = CGRectGetMaxY(v45);
      transform.tx = v29;
      transform.ty = v30;
      v46.origin.x = x;
      v46.origin.y = y;
      v46.size.width = width;
      v46.size.height = height;
      v31 = CGRectGetMaxX(v46);
      v47.origin.x = x;
      v47.origin.y = y;
      v47.size.width = width;
      v47.size.height = height;
      v32 = CGRectGetMinY(v47);
      v34 = v31;
      v35 = v32;
      CGContextSetLineWidth(context, 1.0);
      CGContextStrokeLineSegments(context, &transform, 4uLL);
    }
  }

  CGPathRelease(v14);
  CGContextRestoreGState(context);
}

+ (BOOL)_concretePointIsOnBorder:(CGPoint)border ofAnnotation:(id)annotation minimumBorderThickness:(double)thickness
{
  y = border.y;
  x = border.x;
  annotationCopy = annotation;
  v10 = [self _newPathForAnnotation:annotationCopy axisAlignedForStroke:0 alignToScreenUsingPageController:0 orAlignToContext:0];
  thicknessCopy = 0.0;
  if (thickness >= 0.0)
  {
    thicknessCopy = thickness;
  }

  v12 = [AKAnnotationRendererUtilities newStandardStrokedBorderPathWithPath:v10 withStrokeWidth:thicknessCopy];
  memset(&m, 0, sizeof(m));
  [AKGeometryHelper rotationTransformForRectangularAnnotation:annotationCopy hasRotation:0];

  v15 = m;
  CGAffineTransformInvert(&v16, &v15);
  m = v16;
  v18.x = x;
  v18.y = y;
  v13 = CGPathContainsPoint(v12, &m, v18, 0);
  CGPathRelease(v12);
  CGPathRelease(v10);
  return v13;
}

+ (BOOL)_concretePointIsOnInside:(CGPoint)inside ofAnnotation:(id)annotation
{
  y = inside.y;
  x = inside.x;
  annotationCopy = annotation;
  v8 = [self _newPathForAnnotation:annotationCopy axisAlignedForStroke:0 alignToScreenUsingPageController:0 orAlignToContext:0];
  memset(&m, 0, sizeof(m));
  [AKGeometryHelper rotationTransformForRectangularAnnotation:annotationCopy hasRotation:0];

  v10 = m;
  CGAffineTransformInvert(&v11, &v10);
  m = v11;
  v13.x = x;
  v13.y = y;
  LOBYTE(annotationCopy) = CGPathContainsPoint(v8, &m, v13, 0);
  CGPathRelease(v8);
  return annotationCopy;
}

+ (CGPath)_newPathForAnnotation:(id)annotation axisAlignedForStroke:(BOOL)stroke alignToScreenUsingPageController:(id)controller orAlignToContext:(CGContext *)context
{
  annotationCopy = annotation;
  controllerCopy = controller;
  [annotationCopy rectangle];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  if (![AKGeometryHelper annotationHasRotation:annotationCopy outAngle:0])
  {
    [AKGeometryHelper renderingStrokeAlignedRectForRect:controllerCopy withStrokeWidth:context alignToScreenUsingPageController:annotationCopy orAlignToContext:v11 usingAnnotation:v13, v15, v17, 0.0];
    v11 = v18;
    v13 = v19;
    v15 = v20;
    v17 = v21;
  }

  v24.origin.x = v11;
  v24.origin.y = v13;
  v24.size.width = v15;
  v24.size.height = v17;
  v22 = CGPathCreateWithRect(v24, 0);

  return v22;
}

@end