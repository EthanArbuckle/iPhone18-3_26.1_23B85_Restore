@interface AKRedactionRectAnnotationRenderer
+ (BOOL)_concretePointIsOnBorder:(CGPoint)a3 ofAnnotation:(id)a4 minimumBorderThickness:(double)a5;
+ (BOOL)_concretePointIsOnInside:(CGPoint)a3 ofAnnotation:(id)a4;
+ (CGPath)_newConcreteTextExclusionPathForAnnotation:(id)a3 withOptionalAnnotationRect:(CGRect)a4;
+ (CGPath)_newPathForAnnotation:(id)a3 axisAlignedForStroke:(BOOL)a4 alignToScreenUsingPageController:(id)a5 orAlignToContext:(CGContext *)a6;
+ (CGRect)_concreteDrawingBoundsOfAnnotation:(id)a3;
+ (CGRect)_concreteRectangleForAnnotation:(id)a3 withTextBounds:(CGRect)a4;
+ (CGRect)_concreteTextBoundsOfAnnotation:(id)a3 withOptionalAnnotationRect:(CGRect)a4 optionalText:(id)a5;
+ (CGSize)_concreteDraggingBoundsInsetsForAnnotation:(id)a3;
+ (void)_concreteRenderAnnotation:(id)a3 intoContext:(CGContext *)a4 options:(id)a5 pageControllerOrNil:(id)a6;
@end

@implementation AKRedactionRectAnnotationRenderer

+ (CGRect)_concreteDrawingBoundsOfAnnotation:(id)a3
{
  v3 = a3;
  [v3 rectangle];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [v3 rotationAngle];
  v13 = v12;

  [AKGeometryHelper boundsOfRotatedRectangle:v5 angle:v7, v9, v11, v13];

  return CGRectInset(*&v14, -1.0, -1.0);
}

+ (CGSize)_concreteDraggingBoundsInsetsForAnnotation:(id)a3
{
  v3 = *MEMORY[0x277CBF3A8];
  v4 = *(MEMORY[0x277CBF3A8] + 8);
  result.height = v4;
  result.width = v3;
  return result;
}

+ (CGRect)_concreteTextBoundsOfAnnotation:(id)a3 withOptionalAnnotationRect:(CGRect)a4 optionalText:(id)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v9 = a3;
  [v9 strokeWidth];
  v11 = v10;
  [v9 originalModelBaseScaleFactor];
  v13 = v12;
  v26.origin.x = x;
  v26.origin.y = y;
  v26.size.width = width;
  v26.size.height = height;
  if (CGRectIsEmpty(v26))
  {
    [v9 rectangle];
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

+ (CGRect)_concreteRectangleForAnnotation:(id)a3 withTextBounds:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v8 = a3;
  [v8 strokeWidth];
  v10 = v9 * 0.5;
  [v8 originalModelBaseScaleFactor];
  v12 = v11;

  v13 = x;
  v14 = y;
  v15 = width;
  v16 = height;

  return CGRectInset(*&v13, -(v10 + v12 * 2.0), -(v10 + v12 * 2.0));
}

+ (CGPath)_newConcreteTextExclusionPathForAnnotation:(id)a3 withOptionalAnnotationRect:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v9 = a3;
  [v9 strokeWidth];
  v11 = v10 * 0.5;
  [v9 originalModelBaseScaleFactor];
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
    v19 = [v9 copy];
    [v19 setRectangle:{v14, v15, v16, v17}];
    v20 = [a1 _newPathForAnnotation:v19 axisAlignedForStroke:0 alignToScreenUsingPageController:0 orAlignToContext:0];
    CGPathAddPath(Mutable, 0, v20);
    CGPathRelease(v20);
  }

  MutableCopy = CGPathCreateMutableCopy(Mutable);
  CGPathRelease(Mutable);

  return MutableCopy;
}

+ (void)_concreteRenderAnnotation:(id)a3 intoContext:(CGContext *)a4 options:(id)a5 pageControllerOrNil:(id)a6
{
  v36 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a6;
  v12 = a5;
  CGContextSaveGState(a4);
  v13 = [v12 forDisplay];

  [a1 _transformContextToModelCoordinates:a4 forAnnotation:v10 forDisplay:v13 pageControllerOrNil:v11];
  [AKGeometryHelper rotationTransformForRectangularAnnotation:v10 hasRotation:0];
  memset(&transform, 0, sizeof(transform));
  CGContextConcatCTM(a4, &transform);
  v14 = [a1 _newPathForAnnotation:v10 axisAlignedForStroke:0 alignToScreenUsingPageController:v11 orAlignToContext:a4];

  BoundingBox = CGPathGetBoundingBox(v14);
  x = BoundingBox.origin.x;
  y = BoundingBox.origin.y;
  width = BoundingBox.size.width;
  height = BoundingBox.size.height;
  if ([v10 isHighlighted])
  {
    CGContextSetRGBStrokeColor(a4, 0.0, 0.0, 0.0, 1.0);
    CGContextSetLineWidth(a4, 1.0);
    v38.origin.x = x;
    v38.origin.y = y;
    v38.size.width = width;
    v38.size.height = height;
    CGContextStrokeRect(a4, v38);
  }

  else
  {
    if ([v10 isOpaque])
    {
      v19 = 1.0;
    }

    else
    {
      v19 = 0.65;
    }

    v20 = [MEMORY[0x277D75348] blackColor];
    v21 = [v20 colorWithAlphaComponent:v19];

    CGContextSetFillColorWithColor(a4, [v21 CGColor]);
    CGContextAddPath(a4, v14);
    CGContextFillPath(a4);
    v39.origin.x = x;
    v39.origin.y = y;
    v39.size.width = width;
    v39.size.height = height;
    CGContextClipToRect(a4, v39);
    v22 = [MEMORY[0x277D75348] darkGrayColor];
    v23 = [v22 colorWithAlphaComponent:v19];

    ColorSpace = CGColorGetColorSpace([v23 CGColor]);
    if (ColorSpace)
    {
      CGContextSetStrokeColorSpace(a4, ColorSpace);
      CGContextSetStrokeColorWithColor(a4, [v23 CGColor]);
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
      CGContextSetLineWidth(a4, 1.0);
      CGContextStrokeLineSegments(a4, &transform, 4uLL);
    }
  }

  CGPathRelease(v14);
  CGContextRestoreGState(a4);
}

+ (BOOL)_concretePointIsOnBorder:(CGPoint)a3 ofAnnotation:(id)a4 minimumBorderThickness:(double)a5
{
  y = a3.y;
  x = a3.x;
  v9 = a4;
  v10 = [a1 _newPathForAnnotation:v9 axisAlignedForStroke:0 alignToScreenUsingPageController:0 orAlignToContext:0];
  v11 = 0.0;
  if (a5 >= 0.0)
  {
    v11 = a5;
  }

  v12 = [AKAnnotationRendererUtilities newStandardStrokedBorderPathWithPath:v10 withStrokeWidth:v11];
  memset(&m, 0, sizeof(m));
  [AKGeometryHelper rotationTransformForRectangularAnnotation:v9 hasRotation:0];

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

+ (BOOL)_concretePointIsOnInside:(CGPoint)a3 ofAnnotation:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = [a1 _newPathForAnnotation:v7 axisAlignedForStroke:0 alignToScreenUsingPageController:0 orAlignToContext:0];
  memset(&m, 0, sizeof(m));
  [AKGeometryHelper rotationTransformForRectangularAnnotation:v7 hasRotation:0];

  v10 = m;
  CGAffineTransformInvert(&v11, &v10);
  m = v11;
  v13.x = x;
  v13.y = y;
  LOBYTE(v7) = CGPathContainsPoint(v8, &m, v13, 0);
  CGPathRelease(v8);
  return v7;
}

+ (CGPath)_newPathForAnnotation:(id)a3 axisAlignedForStroke:(BOOL)a4 alignToScreenUsingPageController:(id)a5 orAlignToContext:(CGContext *)a6
{
  v8 = a3;
  v9 = a5;
  [v8 rectangle];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  if (![AKGeometryHelper annotationHasRotation:v8 outAngle:0])
  {
    [AKGeometryHelper renderingStrokeAlignedRectForRect:v9 withStrokeWidth:a6 alignToScreenUsingPageController:v8 orAlignToContext:v11 usingAnnotation:v13, v15, v17, 0.0];
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