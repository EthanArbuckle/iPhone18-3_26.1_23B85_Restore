@interface AKGeometryHelper
+ (BOOL)annotationHasRotation:(id)a3 outAngle:(double *)a4;
+ (BOOL)isPoint:(CGPoint)a3 onEllipse:(CGRect)a4;
+ (BOOL)isUnpresentablePoint:(CGPoint)a3;
+ (BOOL)isUnpresentableRect:(CGRect)a3;
+ (BOOL)isUnpresentableSize:(CGSize)a3;
+ (CGAffineTransform)_rawAffineTransformForExifOrientation:(SEL)a3;
+ (CGAffineTransform)affineTransformFlatteningOriginalModelExif:(SEL)a3 withOriginalModelSize:(int64_t)a4;
+ (CGAffineTransform)affineTransformForExifOrientation:(SEL)a3 aboutCenter:(int64_t)a4;
+ (CGAffineTransform)affineTransformRecenteringAboutOriginForExifOrientation:(SEL)a3 withOriginalSize:(int64_t)a4;
+ (CGAffineTransform)centeredCircleToEllipseTransform:(SEL)a3;
+ (CGAffineTransform)ellipseToCenteredCircleTransform:(SEL)a3;
+ (CGAffineTransform)horizontalFlipTransformForRect:(SEL)a3;
+ (CGAffineTransform)rotationTransformAroundPoint:(SEL)a3 withAngle:(CGPoint)a4;
+ (CGAffineTransform)rotationTransformForRect:(SEL)a3 withAngle:(CGRect)a4;
+ (CGAffineTransform)rotationTransformForRectangularAnnotation:(SEL)a3 hasRotation:(id)a4;
+ (CGAffineTransform)verticalFlipTransformForRect:(SEL)a3;
+ (CGPoint)_alignedPointForPoint:(CGPoint)a3 alignToContent:(BOOL)a4 alignToScreenUsingPageController:(id)a5 orAlignToBitmapContext:(CGContext *)a6 usingAnnotation:(id)a7;
+ (CGPoint)_farthestPointFrom:(CGPoint)a3 inArray:(id)a4;
+ (CGPoint)adjustPoint:(CGPoint)a3 forExifOrientation:(int64_t)a4 aboutCenter:(CGPoint)a5;
+ (CGPoint)centerOfRect:(CGRect)a3;
+ (CGPoint)compareVectorDirectionsFirstVector:(CGPoint)a3 secondVector:(CGPoint)a4;
+ (CGPoint)convertModelToScreenOrientationForPoint:(CGPoint)a3 relativeToRect:(CGRect)a4 withPageController:(id)a5;
+ (CGPoint)convertScreenToModelOrientationForPoint:(CGPoint)a3 relativeToRect:(CGRect)a4 withPageController:(id)a5;
+ (CGPoint)flipPointVertically:(CGPoint)a3 inRect:(CGRect)a4;
+ (CGPoint)intersectLineSegmentStartingAt:(CGPoint)a3 ending:(CGPoint)a4 withAnotherSegmentStartingAt:(CGPoint)a5 ending:(CGPoint)a6;
+ (CGPoint)intersectLineSegmentStartingAt:(CGPoint)a3 ending:(CGPoint)a4 withCircleWithCenter:(CGPoint)a5 andRadius:(double)a6 farthestResult:(BOOL)a7;
+ (CGPoint)intersectLineSegmentStartingAt:(CGPoint)a3 ending:(CGPoint)a4 withEllipseOfRect:(CGRect)a5 farthestResult:(BOOL)a6;
+ (CGPoint)intersectLineSegmentStartingAt:(CGPoint)a3 ending:(CGPoint)a4 withRect:(CGRect)a5 andRoundedCornerRadius:(double)a6;
+ (CGPoint)intersectRayStartingAt:(CGPoint)a3 ending:(CGPoint)a4 withCircleWithCenter:(CGPoint)a5 andRadius:(double)a6 farthestResult:(BOOL)a7;
+ (CGPoint)intersectRayStartingAt:(CGPoint)a3 ending:(CGPoint)a4 withEllipseOfRect:(CGRect)a5 farthestResult:(BOOL)a6;
+ (CGPoint)pointAtAngle:(double)a3 inCircleWithCenter:(CGPoint)a4 andRadius:(double)a5;
+ (CGPoint)projectPoint:(CGPoint)a3 ontoRayWithFirstPoint:(CGPoint)a4 andSecondPoint:(CGPoint)a5;
+ (CGPoint)projectVector:(CGPoint)a3 ontoAspectVector:(CGPoint)a4;
+ (CGPoint)snapVector:(CGPoint)a3 toDiagonalForAspectRatio:(double)a4 ignoreWidth:(BOOL)a5 ignoreHeight:(BOOL)a6;
+ (CGPoint)snapVectorTo45Degrees:(CGPoint)a3;
+ (CGPoint)tangentOfEllipse:(CGRect)a3 throughRayWithFirstPoint:(CGPoint)a4 goingThrough:(CGPoint)a5;
+ (CGRect)_alignedStableRectForRect:(CGRect)a3 alignToContent:(BOOL)a4 alignToScreenUsingPageController:(id)a5 orAlignToBitmapContext:(CGContext *)a6 usingAnnotation:(id)a7;
+ (CGRect)_rectForRect:(CGRect)a3 alignToContent:(BOOL)a4 alignToScreenUsingPageController:(id)a5 orAlignToBitmapContext:(CGContext *)a6 usingAnnotation:(id)a7 withAlignmentBlock:(id)a8;
+ (CGRect)_strokeAlignedRectForRect:(CGRect)a3 withStrokeWidth:(double)a4 shouldAlignStrictlyToScreen:(BOOL)a5 alignToScreenUsingPageController:(id)a6 orAlignToBitmapContext:(CGContext *)a7 usingAnnotation:(id)a8;
+ (CGRect)adjustRect:(CGRect)a3 forExifOrientation:(int64_t)a4 aboutCenter:(CGPoint)a5;
+ (CGRect)boundsOfRotatedRectangle:(CGRect)a3 angle:(double)a4;
+ (CGRect)constrainRect:(CGRect)a3 withinRect:(CGRect)a4;
+ (CGRect)convertModelToScreenOrientationForRect:(CGRect)a3 withPageController:(id)a4;
+ (CGRect)convertRect:(CGRect)a3 fromScreenPointsToView:(id)a4;
+ (CGRect)convertRect:(CGRect)a3 fromViewToScreenPixels:(id)a4 useNativeScale:(BOOL)a5;
+ (CGRect)convertScreenToModelOrientationForRect:(CGRect)a3 withPageController:(id)a4;
+ (CGRect)effectiveDrawingBoundsForAnnotation:(id)a3 forDisplay:(BOOL)a4 pageControllerOrNil:(id)a5 outScaleFactor:(double *)a6;
+ (CGRect)expandCGRect:(CGRect)a3 toContainPoint:(CGPoint)a4;
+ (CGRect)rectForSize:(CGSize)a3 inRect:(CGRect)a4;
+ (CGRect)rectWithSize:(CGSize)a3 centeredAtPoint:(CGPoint)a4;
+ (CGRect)renderingAlignedTextRectForRect:(CGRect)a3 alignToScreenUsingPageController:(id)a4 orAlignToContext:(CGContext *)a5 usingAnnotation:(id)a6;
+ (CGRect)renderingStrokeAlignedRectForRect:(CGRect)a3 withStrokeWidth:(double)a4 alignToScreenUsingPageController:(id)a5 orAlignToContext:(CGContext *)a6 usingAnnotation:(id)a7;
+ (CGRect)stableIntegralRectForRect:(CGRect)a3;
+ (CGVector)normalizeVector:(CGVector)a3;
+ (double)angleBetweenPoint:(CGPoint)a3 andPoint:(CGPoint)a4;
+ (double)angleOfVector:(CGVector)a3;
+ (id)_cornersOfRotatedRectangle:(CGRect)a3 angle:(double)a4;
+ (id)verticesOfPolygonWithPointCount:(unint64_t)a3 inRect:(CGRect)a4 rotation:(double)a5 flippedVertically:(BOOL)a6;
+ (int64_t)exifOrientationWithConversionBlock:(id)a3;
+ (int64_t)inverseExifOrientation:(int64_t)a3;
+ (unint64_t)draggableArea:(unint64_t)a3 convertedForExif:(int64_t)a4;
+ (void)_checkIntersectionOfLineSegmentStartingAt:(CGPoint)a3 endingAt:(CGPoint)a4 withCircleAt:(CGPoint)a5 andRadius:(double)a6 results:(id)a7;
+ (void)_collectIntersectionsOfLineSegmentStartingAt:(CGPoint)a3 endingAt:(CGPoint)a4 withCornerCirclesOfRoundedRect:(CGRect)a5 withRadius:(double)a6 results:(id)a7;
+ (void)adjustOriginalExifOrientationOnAnnotation:(id)a3 flatteningOriginalModelExif:(int64_t)a4;
+ (void)intersectCircleAtPoint:(CGPoint)a3 withRadius:(double)a4 withCircleAtPoint:(CGPoint)a5 withRadius:(double)a6 firstOutPoint:(CGPoint *)a7 secondOutPoint:(CGPoint *)a8;
+ (void)tangentPointsToEllipse:(CGRect)a3 fromPoint:(CGPoint)a4 firstOutPoint:(CGPoint *)a5 secondOutPoint:(CGPoint *)a6;
- (AKGeometryHelper)initWithPageController:(id)a3;
- (AKPageController)pageController;
- (BOOL)_shouldAlignToContent;
- (BOOL)_shouldAlignToScreen;
- (CGPoint)contentAlignedPointForPoint:(CGPoint)a3;
- (CGPoint)convertPoint:(CGPoint)a3 fromModelToLayer:(id)a4;
- (CGPoint)screenPixelAlignedPointForPoint:(CGPoint)a3;
- (CGRect)_clippingFrameForView:(id)a3;
- (CGRect)_smartAlignedRectForRect:(CGRect)a3;
- (CGRect)adornmentLayerFrameForAnnotation:(id)a3;
- (CGRect)annotationLayerFrameForAnnotation:(id)a3 layerIsClipped:(BOOL *)a4;
- (CGRect)contentAlignedRectForRect:(CGRect)a3;
- (CGRect)convertRect:(CGRect)a3 fromModelToLayer:(id)a4;
- (CGRect)screenPixelAlignedRectForRect:(CGRect)a3;
- (CGRect)screenStrokeAlignedRectForRect:(CGRect)a3 withStrokeWidth:(double)a4;
- (id)_rootLayer;
@end

@implementation AKGeometryHelper

+ (BOOL)isUnpresentableRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (CGRectIsNull(a3) || ([a1 rectHasZeroSize:{x, y, width, height}] & 1) != 0)
  {
    v8 = 1;
  }

  else
  {
    v11.origin.x = x;
    v11.origin.y = y;
    v11.size.width = width;
    v11.size.height = height;
    IsInfinite = CGRectIsInfinite(v11);
    v8 = fabs(x) == INFINITY || IsInfinite;
    if (fabs(y) == INFINITY)
    {
      v8 = 1;
    }

    if (fabs(width) == INFINITY)
    {
      v8 = 1;
    }

    if (fabs(height) == INFINITY)
    {
      v8 = 1;
    }
  }

  return v8 & 1;
}

+ (BOOL)isUnpresentableSize:(CGSize)a3
{
  v3 = fmin(a3.width, a3.height);
  v4 = fabs(a3.width) == INFINITY;
  if (fabs(a3.height) == INFINITY)
  {
    v4 = 1;
  }

  if (v3 <= 0.0)
  {
    return 1;
  }

  return v4;
}

+ (BOOL)isUnpresentablePoint:(CGPoint)a3
{
  v3 = fabs(a3.x) == INFINITY;
  if (fabs(a3.y) == INFINITY)
  {
    return 1;
  }

  return v3;
}

+ (CGRect)stableIntegralRectForRect:(CGRect)a3
{
  [a1 integralRect:3840 withOptions:{a3.origin.x, a3.origin.y, a3.size.width, a3.size.height}];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

+ (CGRect)rectWithSize:(CGSize)a3 centeredAtPoint:(CGPoint)a4
{
  height = a3.height;
  width = a3.width;
  v6 = a4.x - a3.width * 0.5;
  v7 = a4.y - a3.height * 0.5;
  v8 = width;
  v9 = height;
  result.size.height = v9;
  result.size.width = v8;
  result.origin.y = v7;
  result.origin.x = v6;
  return result;
}

+ (CGRect)rectForSize:(CGSize)a3 inRect:(CGRect)a4
{
  y = a4.origin.y;
  x = a4.origin.x;
  v6 = a4.size.height / a3.height;
  if (a4.size.width / a3.width < a4.size.height / a3.height)
  {
    v6 = a4.size.width / a3.width;
  }

  v7 = a3.width * v6;
  v8 = a3.height * v6;
  v9 = x;
  v10 = y;
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v10;
  result.origin.x = v9;
  return result;
}

+ (CGPoint)centerOfRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  MidX = CGRectGetMidX(a3);
  v11.origin.x = x;
  v11.origin.y = y;
  v11.size.width = width;
  v11.size.height = height;
  MidY = CGRectGetMidY(v11);
  v9 = MidX;
  result.y = MidY;
  result.x = v9;
  return result;
}

+ (CGRect)constrainRect:(CGRect)a3 withinRect:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v8 = a3.size.width;
  v9 = a3.origin.y;
  v10 = a3.origin.x;
  rect = a3.size.height;
  v11 = CGRectGetWidth(a3);
  v27.origin.x = x;
  v27.origin.y = y;
  v27.size.width = width;
  v27.size.height = height;
  if (v11 <= CGRectGetWidth(v27))
  {
    if (v10 >= x)
    {
      v14 = v10;
    }

    else
    {
      v14 = x;
    }

    v30.origin.x = x;
    v30.origin.y = y;
    v30.size.width = width;
    v30.size.height = height;
    MaxX = CGRectGetMaxX(v30);
    v31.origin.x = v14;
    v31.origin.y = v9;
    v31.size.width = v8;
    v31.size.height = rect;
    v16 = MaxX - CGRectGetWidth(v31);
    if (v14 >= v16)
    {
      v13 = v16;
    }

    else
    {
      v13 = v14;
    }
  }

  else
  {
    v28.origin.x = x;
    v28.origin.y = y;
    v28.size.width = width;
    v28.size.height = height;
    v12 = CGRectGetWidth(v28);
    v29.origin.x = v10;
    v29.origin.y = v9;
    v29.size.width = v8;
    v29.size.height = rect;
    v13 = x + (v12 - CGRectGetWidth(v29)) * 0.5;
  }

  v32.origin.x = v13;
  v32.origin.y = v9;
  v32.size.width = v8;
  v32.size.height = rect;
  v17 = CGRectGetHeight(v32);
  v33.origin.x = x;
  v33.origin.y = y;
  v33.size.width = width;
  v33.size.height = height;
  if (v17 <= CGRectGetHeight(v33))
  {
    if (v9 >= y)
    {
      v20 = v9;
    }

    else
    {
      v20 = y;
    }

    v36.origin.x = x;
    v36.origin.y = y;
    v36.size.width = width;
    v36.size.height = height;
    MaxY = CGRectGetMaxY(v36);
    v37.origin.x = v13;
    v37.origin.y = v20;
    v37.size.width = v8;
    v37.size.height = rect;
    v22 = MaxY - CGRectGetHeight(v37);
    if (v20 >= v22)
    {
      v19 = v22;
    }

    else
    {
      v19 = v20;
    }
  }

  else
  {
    v34.origin.x = x;
    v34.origin.y = y;
    v34.size.width = width;
    v34.size.height = height;
    v18 = CGRectGetHeight(v34);
    v35.origin.x = v13;
    v35.origin.y = v9;
    v35.size.width = v8;
    v35.size.height = rect;
    v19 = y + (v18 - CGRectGetHeight(v35)) * 0.5;
  }

  v23 = v13;
  v24 = v8;
  v25 = rect;
  result.size.height = v25;
  result.size.width = v24;
  result.origin.y = v19;
  result.origin.x = v23;
  return result;
}

+ (CGPoint)snapVectorTo45Degrees:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = hypot(a3.x, a3.y);
  v6 = atan2(y, x);
  v7 = __sincos_stret(round(v6 / 0.785398163) * 0.785398163);
  v8 = v5 * v7.__sinval;
  v9 = v5 * v7.__cosval;
  result.y = v8;
  result.x = v9;
  return result;
}

+ (CGPoint)snapVector:(CGPoint)a3 toDiagonalForAspectRatio:(double)a4 ignoreWidth:(BOOL)a5 ignoreHeight:(BOOL)a6
{
  y = a3.y;
  x = a3.x;
  if (a6)
  {
    a3.y = a3.x / a4;
  }

  else
  {
    a3.x = a3.y * a4;
    if (!a5)
    {
      a3.x = x;
    }
  }

  v9 = hypot(a3.x, a3.y);
  [AKGeometryHelper compareVectorDirectionsFirstVector:x secondVector:y, a4, 1.0];
  [AKGeometryHelper normalizeVectorPoint:v10 * a4];
  v12 = v9 * v11;
  v14 = v9 * v13;
  result.y = v14;
  result.x = v12;
  return result;
}

+ (CGPoint)projectVector:(CGPoint)a3 ontoAspectVector:(CGPoint)a4
{
  v4 = (a3.y * a4.y + a3.x * a4.x) / (a4.y * a4.y + a4.x * a4.x);
  v5 = a4.x * v4;
  v6 = a4.y * v4;
  result.y = v6;
  result.x = v5;
  return result;
}

+ (CGPoint)intersectRayStartingAt:(CGPoint)a3 ending:(CGPoint)a4 withCircleWithCenter:(CGPoint)a5 andRadius:(double)a6 farthestResult:(BOOL)a7
{
  v7 = a4.x - a3.x;
  v8 = a4.y - a3.y;
  v9 = a5.x - a3.x;
  v10 = a5.y - a3.y;
  v11 = v7 * (a5.y - a3.y) - v8 * v9;
  v12 = v8 * v8 + v7 * v7;
  v13 = a6 * a6 * v12 - v11 * v11;
  if (v13 >= 0.0)
  {
    v16 = v8 * v10 + v7 * v9;
    v17 = sqrt(v13);
    v18 = (v16 + v17) / v12;
    v19 = (v16 - v17) / v12;
    if (v18 >= v19)
    {
      v20 = v18;
    }

    else
    {
      v20 = v19;
    }

    if (v18 < v19)
    {
      v19 = v18;
    }

    if (a7)
    {
      v19 = v20;
    }

    if (v19 < 0.0)
    {
      v19 = v20;
    }

    v14 = a3.x + v19 * v7;
    v15 = a3.y + v19 * v8;
  }

  else
  {
    v14 = 9.22337204e18;
    v15 = 9.22337204e18;
  }

  result.y = v15;
  result.x = v14;
  return result;
}

+ (CGPoint)intersectLineSegmentStartingAt:(CGPoint)a3 ending:(CGPoint)a4 withCircleWithCenter:(CGPoint)a5 andRadius:(double)a6 farthestResult:(BOOL)a7
{
  y = a4.y;
  x = a4.x;
  v9 = a3.y;
  v10 = a3.x;
  [AKGeometryHelper intersectRayStartingAt:a7 ending:a3.x withCircleWithCenter:a3.y andRadius:a4.x farthestResult:a4.y, a5.x, a5.y, a6];
  if (v10 >= x)
  {
    v13 = x;
  }

  else
  {
    v13 = v10;
  }

  if (v11 + 0.0005 < v13 || (v10 >= x ? (v14 = v10) : (v14 = x), v11 + -0.0005 > v14 || (v9 >= y ? (v15 = y) : (v15 = v9), v12 + 0.0005 < v15 || (v9 >= y ? (v16 = v9) : (v16 = y), v12 + -0.0005 > v16))))
  {
    v11 = 9.22337204e18;
    v12 = 9.22337204e18;
  }

  result.y = v12;
  result.x = v11;
  return result;
}

+ (CGPoint)intersectRayStartingAt:(CGPoint)a3 ending:(CGPoint)a4 withEllipseOfRect:(CGRect)a5 farthestResult:(BOOL)a6
{
  v6 = a6;
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v11 = a4.y;
  v12 = a4.x;
  v13 = a3.y;
  v14 = a3.x;
  [AKGeometryHelper radiusOfCenteredCircleFor:a5.origin.x, a5.origin.y, a5.size.width, a5.size.height];
  v21 = v15;
  [AKGeometryHelper ellipseToCenteredCircleTransform:x, y, width, height];
  [AKGeometryHelper intersectRayStartingAt:v6 ending:v13 * 0.0 + 0.0 * v14 + 0.0 withCircleWithCenter:v13 * 0.0 + 0.0 * v14 + 0.0 andRadius:v11 * 0.0 + 0.0 * v12 + 0.0 farthestResult:v11 * 0.0 + 0.0 * v12 + 0.0, *MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8), v21];
  v20 = v17;
  v22 = v16;
  [AKGeometryHelper centeredCircleToEllipseTransform:x, y, width, height];
  v18 = vaddq_f64(0, vmlaq_n_f64(vmulq_n_f64(0, v20), 0, v22));
  v19 = v18.f64[1];
  result.x = v18.f64[0];
  result.y = v19;
  return result;
}

+ (CGPoint)intersectLineSegmentStartingAt:(CGPoint)a3 ending:(CGPoint)a4 withEllipseOfRect:(CGRect)a5 farthestResult:(BOOL)a6
{
  y = a4.y;
  x = a4.x;
  v8 = a3.y;
  v9 = a3.x;
  [AKGeometryHelper intersectRayStartingAt:a6 ending:a3.x withEllipseOfRect:a3.y farthestResult:a4.x, a4.y, a5.origin.x, a5.origin.y, a5.size.width, a5.size.height];
  if (v9 >= x)
  {
    v12 = x;
  }

  else
  {
    v12 = v9;
  }

  if (v10 + 0.0005 < v12 || (v9 >= x ? (v13 = v9) : (v13 = x), v10 + -0.0005 > v13 || (v8 >= y ? (v14 = y) : (v14 = v8), v11 + 0.0005 < v14 || (v8 >= y ? (v15 = v8) : (v15 = y), v11 + -0.0005 > v15))))
  {
    v10 = 9.22337204e18;
    v11 = 9.22337204e18;
  }

  result.y = v11;
  result.x = v10;
  return result;
}

+ (CGPoint)intersectLineSegmentStartingAt:(CGPoint)a3 ending:(CGPoint)a4 withAnotherSegmentStartingAt:(CGPoint)a5 ending:(CGPoint)a6
{
  y = a3.y;
  x = a3.x;
  v8 = a4.y - y;
  v9 = a3.x - a4.x;
  v10 = a6.y - a5.y;
  v11 = a5.x - a6.x;
  v12 = (a4.y - y) * (a5.x - a6.x) - (a6.y - a5.y) * v9;
  if (v12 == 0.0)
  {
    goto LABEL_36;
  }

  v13 = a5.y * v11 + v10 * a5.x;
  v14 = y * v9 + v8 * x;
  v15 = (v11 * v14 - v9 * v13) / v12;
  v16 = v15 + 0.0005;
  v17 = x >= a4.x ? a4.x : x;
  if (v16 < v17)
  {
    goto LABEL_36;
  }

  v18 = v15 + -0.0005;
  if (x < a4.x)
  {
    x = a4.x;
  }

  if (v18 > x)
  {
    goto LABEL_36;
  }

  v19 = (v14 * -v10 + v8 * v13) / v12;
  v20 = v19 + 0.0005;
  v21 = y >= a4.y ? a4.y : y;
  if (v20 < v21)
  {
    goto LABEL_36;
  }

  v22 = v19 + -0.0005;
  if (y >= a4.y)
  {
    a4.y = y;
  }

  if (v22 > a4.y)
  {
    goto LABEL_36;
  }

  if (a5.x >= a6.x)
  {
    v23 = a6.x;
  }

  else
  {
    v23 = a5.x;
  }

  if (a5.x < a6.x)
  {
    a5.x = a6.x;
  }

  v24 = v16 < v23 || v18 > a5.x;
  if (v24 || (a5.y >= a6.y ? (v25 = a6.y) : (v25 = a5.y), a5.y >= a6.y ? (v26 = a5.y) : (v26 = a6.y), v20 >= v25 ? (v27 = v22 > v26) : (v27 = 1), v27))
  {
LABEL_36:
    v15 = 9.22337204e18;
    v19 = 9.22337204e18;
  }

  result.y = v19;
  result.x = v15;
  return result;
}

+ (void)_checkIntersectionOfLineSegmentStartingAt:(CGPoint)a3 endingAt:(CGPoint)a4 withCircleAt:(CGPoint)a5 andRadius:(double)a6 results:(id)a7
{
  y = a5.y;
  x = a5.x;
  v10 = a4.y;
  v11 = a4.x;
  v12 = a3.y;
  v13 = a3.x;
  v18 = a7;
  [AKGeometryHelper intersectLineSegmentStartingAt:1 ending:v13 withCircleWithCenter:v12 andRadius:v11 farthestResult:v10, x, y, a6];
  if (v15 != 9.22337204e18 && v14 != 9.22337204e18)
  {
    v17 = [MEMORY[0x277CCAE60] akValueWithPoint:?];
    [v18 addObject:v17];
  }
}

+ (void)_collectIntersectionsOfLineSegmentStartingAt:(CGPoint)a3 endingAt:(CGPoint)a4 withCornerCirclesOfRoundedRect:(CGRect)a5 withRadius:(double)a6 results:(id)a7
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v24 = a4.y;
  v11 = a4.x;
  v12 = a3.y;
  v13 = a3.x;
  v25 = a7;
  v27.origin.x = x;
  v27.origin.y = y;
  v27.size.width = width;
  v27.size.height = height;
  MinX = CGRectGetMinX(v27);
  v28.origin.x = x;
  v28.origin.y = y;
  v28.size.width = width;
  v28.size.height = height;
  MinY = CGRectGetMinY(v28);
  v29.origin.x = x;
  v29.origin.y = y;
  v29.size.width = width;
  v29.size.height = height;
  MaxX = CGRectGetMaxX(v29);
  v30.origin.x = x;
  v30.origin.y = y;
  v30.size.width = width;
  v30.size.height = height;
  v18 = CGRectGetMinY(v30);
  v31.origin.x = x;
  v31.origin.y = y;
  v31.size.width = width;
  v31.size.height = height;
  v21 = CGRectGetMaxX(v31);
  v32.origin.x = x;
  v32.origin.y = y;
  v32.size.width = width;
  v32.size.height = height;
  MaxY = CGRectGetMaxY(v32);
  v33.origin.x = x;
  v33.origin.y = y;
  v33.size.width = width;
  v33.size.height = height;
  v20 = CGRectGetMinX(v33);
  v34.origin.x = x;
  v34.origin.y = y;
  v34.size.width = width;
  v34.size.height = height;
  v16 = CGRectGetMaxY(v34);
  [a1 _checkIntersectionOfLineSegmentStartingAt:v25 endingAt:v13 withCircleAt:v12 andRadius:v11 results:{v24, MinX + a6, MinY + a6, a6}];
  [a1 _checkIntersectionOfLineSegmentStartingAt:v25 endingAt:v13 withCircleAt:v12 andRadius:v11 results:{v24, MaxX - a6, v18 + a6, a6}];
  [a1 _checkIntersectionOfLineSegmentStartingAt:v25 endingAt:v13 withCircleAt:v12 andRadius:v11 results:{v24, v21 - a6, MaxY - a6, a6}];
  [a1 _checkIntersectionOfLineSegmentStartingAt:v25 endingAt:v13 withCircleAt:v12 andRadius:v11 results:{v24, v20 + a6, v16 - a6, a6}];
}

+ (CGPoint)_farthestPointFrom:(CGPoint)a3 inArray:(id)a4
{
  y = a3.y;
  x = a3.x;
  v26 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v22;
    v10 = 0.0;
    v11 = y;
    v12 = x;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v21 + 1) + 8 * i) akPointValue];
        v15 = v14;
        v17 = v16;
        v18 = hypot(v14 - x, v16 - y);
        if (v18 > v10)
        {
          v10 = v18;
          v11 = v17;
          v12 = v15;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v8);
  }

  else
  {
    v11 = y;
    v12 = x;
  }

  v19 = v12;
  v20 = v11;
  result.y = v20;
  result.x = v19;
  return result;
}

+ (CGPoint)intersectLineSegmentStartingAt:(CGPoint)a3 ending:(CGPoint)a4 withRect:(CGRect)a5 andRoundedCornerRadius:(double)a6
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v10 = a4.y;
  v11 = a4.x;
  v12 = a3.y;
  v40 = a3.x;
  MinX = CGRectGetMinX(a5);
  v42.origin.x = x;
  v42.origin.y = y;
  v42.size.width = width;
  v42.size.height = height;
  MinY = CGRectGetMinY(v42);
  v43.origin.x = x;
  v43.origin.y = y;
  v43.size.width = width;
  v43.size.height = height;
  MaxX = CGRectGetMaxX(v43);
  v44.origin.x = x;
  v44.origin.y = y;
  v44.size.width = width;
  v44.size.height = height;
  v36 = CGRectGetMinY(v44);
  v45.origin.x = x;
  v45.origin.y = y;
  v45.size.width = width;
  v45.size.height = height;
  v35 = CGRectGetMaxX(v45);
  v46.origin.x = x;
  v46.origin.y = y;
  v46.size.width = width;
  v46.size.height = height;
  MaxY = CGRectGetMaxY(v46);
  v47.origin.x = x;
  v47.origin.y = y;
  v47.size.width = width;
  v47.size.height = height;
  v33 = CGRectGetMinX(v47);
  v48.origin.x = x;
  v48.origin.y = y;
  v48.size.width = width;
  v48.size.height = height;
  v32 = CGRectGetMaxY(v48);
  v13 = [MEMORY[0x277CBEB18] arrayWithCapacity:5];
  [AKGeometryHelper _collectIntersectionsOfLineSegmentStartingAt:"_collectIntersectionsOfLineSegmentStartingAt:endingAt:withCornerCirclesOfRoundedRect:withRadius:results:" endingAt:v13 withCornerCirclesOfRoundedRect:*&a6 withRadius:? results:?];
  [AKGeometryHelper intersectLineSegmentStartingAt:v40 ending:v12 withAnotherSegmentStartingAt:v11 ending:v10, MinX + a6, MinY, MaxX - a6, v36];
  v16 = v15 == 9.22337204e18 || v14 == 9.22337204e18;
  if (v16 && (([AKGeometryHelper intersectLineSegmentStartingAt:v40 ending:v12 withAnotherSegmentStartingAt:v11 ending:v10, MaxX, v36 + a6, v35, MaxY - a6], v18 != 9.22337204e18) ? (v19 = v17 == 9.22337204e18) : (v19 = 1), v19 && (([AKGeometryHelper intersectLineSegmentStartingAt:v40 ending:v12 withAnotherSegmentStartingAt:v11 ending:v10, v35 - a6, MaxY, v33 + a6, v32], v21 != 9.22337204e18) ? (v22 = v20 == 9.22337204e18) : (v22 = 1), v22 && (([AKGeometryHelper intersectLineSegmentStartingAt:v40 ending:v12 withAnotherSegmentStartingAt:v11 ending:v10, v33, v32 - a6, MinX, MinY + a6], v24 == 9.22337204e18) || v23 == 9.22337204e18))))
  {
    if (![v13 count])
    {
      *&v27 = 9.22337204e18;
      *&v29 = 9.22337204e18;
      goto LABEL_20;
    }
  }

  else
  {
    v25 = [MEMORY[0x277CCAE60] akValueWithPoint:?];
    [v13 addObject:v25];
  }

  [AKGeometryHelper _farthestPointFrom:v13 inArray:v40, v12];
  v27 = v26;
  v29 = v28;
LABEL_20:

  v30 = *&v27;
  v31 = *&v29;
  result.y = v31;
  result.x = v30;
  return result;
}

+ (CGPoint)projectPoint:(CGPoint)a3 ontoRayWithFirstPoint:(CGPoint)a4 andSecondPoint:(CGPoint)a5
{
  v5 = a5.x - a4.x;
  v6 = a5.y - a4.y;
  v7 = ((a3.y - a4.y) * v6 + (a3.x - a4.x) * v5) / (v6 * v6 + v5 * v5);
  v8 = v5 * v7;
  v9 = v6 * v7;
  v10 = a4.x + v8;
  v11 = a4.y + v9;
  result.y = v11;
  result.x = v10;
  return result;
}

+ (CGAffineTransform)ellipseToCenteredCircleTransform:(SEL)a3
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  MidX = CGRectGetMidX(a4);
  v20.origin.x = x;
  v20.origin.y = y;
  v20.size.width = width;
  v20.size.height = height;
  MidY = CGRectGetMidY(v20);
  [AKGeometryHelper radiusOfCenteredCircleFor:x, y, width, height];
  v12 = v11;
  *&retstr->a = 0u;
  *&retstr->c = 0u;
  *&retstr->tx = 0u;
  result = CGAffineTransformMakeTranslation(retstr, -MidX, -MidY);
  if (v12 > 0.0)
  {
    v21.origin.x = x;
    v21.origin.y = y;
    v21.size.width = width;
    v21.size.height = height;
    v14 = CGRectGetWidth(v21);
    CGAffineTransformMakeScale(&t2, (v12 + v12) / v14, 1.0);
    v15 = *&retstr->c;
    *&v17.a = *&retstr->a;
    *&v17.c = v15;
    *&v17.tx = *&retstr->tx;
    result = CGAffineTransformConcat(&v19, &v17, &t2);
    v16 = *&v19.c;
    *&retstr->a = *&v19.a;
    *&retstr->c = v16;
    *&retstr->tx = *&v19.tx;
  }

  return result;
}

+ (CGAffineTransform)centeredCircleToEllipseTransform:(SEL)a3
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  MidX = CGRectGetMidX(a4);
  v27.origin.x = x;
  v27.origin.y = y;
  v27.size.width = width;
  v27.size.height = height;
  MidY = CGRectGetMidY(v27);
  [AKGeometryHelper radiusOfCenteredCircleFor:x, y, width, height];
  v12 = v11;
  v13 = MEMORY[0x277CBF2C0];
  v14 = *MEMORY[0x277CBF2C0];
  v15 = *(MEMORY[0x277CBF2C0] + 16);
  *&retstr->a = *MEMORY[0x277CBF2C0];
  *&retstr->c = v15;
  v16 = *(v13 + 32);
  *&retstr->tx = v16;
  if (v12 > 0.0)
  {
    v22 = v15;
    v23 = v14;
    v28.origin.x = x;
    v28.origin.y = y;
    v21 = v16;
    v28.size.width = width;
    v28.size.height = height;
    v17 = CGRectGetWidth(v28);
    CGAffineTransformMakeScale(&t2, v17 / (v12 + v12), 1.0);
    *&t1.a = v23;
    *&t1.c = v22;
    *&t1.tx = v21;
    CGAffineTransformConcat(retstr, &t1, &t2);
  }

  CGAffineTransformMakeTranslation(&t1, MidX, MidY);
  v18 = *&retstr->c;
  *&v24.a = *&retstr->a;
  *&v24.c = v18;
  *&v24.tx = *&retstr->tx;
  result = CGAffineTransformConcat(&t2, &v24, &t1);
  v20 = *&t2.c;
  *&retstr->a = *&t2.a;
  *&retstr->c = v20;
  *&retstr->tx = *&t2.tx;
  return result;
}

+ (BOOL)isPoint:(CGPoint)a3 onEllipse:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v8 = a3.y;
  v9 = a3.x;
  [AKGeometryHelper ellipseToCenteredCircleTransform:a4.origin.x, a4.origin.y, a4.size.width, a4.size.height];
  [AKGeometryHelper radiusOfCenteredCircleFor:x, y, width, height];
  return vabdd_f64(hypot(v8 * 0.0 + 0.0 * v9 + 0.0, v8 * 0.0 + 0.0 * v9 + 0.0), v10) < 0.0005;
}

+ (void)intersectCircleAtPoint:(CGPoint)a3 withRadius:(double)a4 withCircleAtPoint:(CGPoint)a5 withRadius:(double)a6 firstOutPoint:(CGPoint *)a7 secondOutPoint:(CGPoint *)a8
{
  y = a3.y;
  x = a3.x;
  v14 = a5.x - a3.x;
  v15 = a5.y - a3.y;
  v16 = hypot(a5.x - a3.x, a5.y - a3.y);
  v17 = (a4 * a4 - a6 * a6 + v16 * v16) / (v16 + v16);
  [AKGeometryHelper normalizeVectorPoint:v14, v15];
  v19 = x + v17 * v18;
  v21 = y + v17 * v20;
  v22 = sqrt(a4 * a4 - v17 * v17);
  a7->x = v19 - v22 * v20;
  a7->y = v21 + v22 * v18;
  a8->x = v19 + v22 * v20;
  a8->y = v21 - v22 * v18;
}

+ (void)tangentPointsToEllipse:(CGRect)a3 fromPoint:(CGPoint)a4 firstOutPoint:(CGPoint *)a5 secondOutPoint:(CGPoint *)a6
{
  y = a4.y;
  x = a4.x;
  height = a3.size.height;
  width = a3.size.width;
  v12 = a3.origin.y;
  v13 = a3.origin.x;
  v33 = 0u;
  v34 = 0u;
  v32 = 0u;
  [AKGeometryHelper ellipseToCenteredCircleTransform:a3.origin.x];
  v30 = 0u;
  v31 = 0u;
  v29 = 0u;
  [AKGeometryHelper centeredCircleToEllipseTransform:v13, v12, width, height];
  v14 = *&v34 + y * *&v33 + *&v32 * x;
  v15 = *(&v34 + 1) + y * *(&v33 + 1) + *(&v32 + 1) * x;
  v16 = hypot(v14, v15) * 0.5;
  [AKGeometryHelper normalizeVectorPoint:(0.0 - v14), (0.0 - v15)];
  v18 = v14 + v16 * v17;
  v20 = v15 + v16 * v19;
  v27 = 0.0;
  v28 = 0.0;
  v25 = 0.0;
  v26 = 0.0;
  [AKGeometryHelper radiusOfCenteredCircleFor:v13, v12, width, height];
  [AKGeometryHelper intersectCircleAtPoint:&v27 withRadius:&v25 withCircleAtPoint:v18 withRadius:v20 firstOutPoint:v16 secondOutPoint:*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8), v21];
  v22 = *(&v31 + 1) + v28 * *(&v30 + 1) + *(&v29 + 1) * v27;
  v23 = *&v31 + *&v30 * v26 + *&v29 * v25;
  v24 = *(&v31 + 1) + *(&v30 + 1) * v26 + *(&v29 + 1) * v25;
  a5->x = *&v31 + v28 * *&v30 + *&v29 * v27;
  a5->y = v22;
  a6->x = v23;
  a6->y = v24;
}

+ (CGPoint)tangentOfEllipse:(CGRect)a3 throughRayWithFirstPoint:(CGPoint)a4 goingThrough:(CGPoint)a5
{
  y = a5.y;
  x = a5.x;
  v7 = a4.y;
  v8 = a4.x;
  height = a3.size.height;
  width = a3.size.width;
  v11 = a3.origin.y;
  v12 = a3.origin.x;
  [AKGeometryHelper radiusOfCenteredCircleFor:?];
  v21 = v13;
  v24 = 0u;
  v25 = 0u;
  v23 = 0u;
  [AKGeometryHelper ellipseToCenteredCircleTransform:v12, v11, width, height];
  [AKGeometryHelper intersectRayStartingAt:0 ending:v8 withEllipseOfRect:v7 farthestResult:x, y, v12, v11, width, height];
  v19 = *(&v25 + 1) + v14 * *(&v24 + 1) + *(&v23 + 1) * v15;
  v20 = *&v25 + v14 * *&v24 + *&v23 * v15;
  v27.origin.x = v12;
  v27.origin.y = v11;
  v27.size.width = width;
  v27.size.height = height;
  v16 = CGRectGetWidth(v27);
  CGAffineTransformMakeScale(&v22, v16 / (v21 + v21), 1.0);
  [AKGeometryHelper normalizeVectorPoint:vaddq_f64(*&v22.tx, vmlsq_lane_f64(vmulq_n_f64(*&v22.c, v20), *&v22.a, v19, 0))];
  result.y = v18;
  result.x = v17;
  return result;
}

+ (id)verticesOfPolygonWithPointCount:(unint64_t)a3 inRect:(CGRect)a4 rotation:(double)a5 flippedVertically:(BOOL)a6
{
  v6 = a6;
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v40 = *MEMORY[0x277D85DE8];
  v13 = [MEMORY[0x277CBEB18] array];
  v14 = [MEMORY[0x277CBEB18] array];
  v31 = height;
  [AKGeometryHelper radiusOfCenteredCircleFor:x, y, width, height];
  if (a3)
  {
    v16 = v15;
    v17 = 360.0 / a3;
    do
    {
      v18 = __sincos_stret(a5 * 3.14159265 / 180.0 + 1.57079633);
      v19 = v16 * v18.__cosval;
      v20 = v16 * v18.__sinval;
      if (v6)
      {
        [AKGeometryHelper flipPointVertically:v19 inRect:v20, -v16, -v16, v16 + v16, v16 + v16];
      }

      v21 = [MEMORY[0x277CCAE60] akValueWithPoint:{v19, v20}];
      [v13 addObject:v21];

      a5 = v17 + a5;
      --a3;
    }

    while (a3);
  }

  v37 = 0u;
  v38 = 0u;
  v36 = 0u;
  [AKGeometryHelper centeredCircleToEllipseTransform:x, y, width, v31];
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v22 = v13;
  v23 = [v22 countByEnumeratingWithState:&v32 objects:v39 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v33;
    do
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v33 != v25)
        {
          objc_enumerationMutation(v22);
        }

        [*(*(&v32 + 1) + 8 * i) akPointValue];
        v29 = [MEMORY[0x277CCAE60] akValueWithPoint:{vaddq_f64(v38, vmlaq_n_f64(vmulq_n_f64(v37, v27), v36, v28))}];
        [v14 addObject:v29];
      }

      v24 = [v22 countByEnumeratingWithState:&v32 objects:v39 count:16];
    }

    while (v24);
  }

  return v14;
}

+ (CGPoint)flipPointVertically:(CGPoint)a3 inRect:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v12 = a3.y;
  v13 = a3.x;
  MidX = CGRectGetMidX(a4);
  v19.origin.x = x;
  v19.origin.y = y;
  v19.size.width = width;
  v19.size.height = height;
  MidY = CGRectGetMidY(v19);
  memset(&v17, 0, sizeof(v17));
  CGAffineTransformMakeTranslation(&v17, -MidX, -MidY);
  CGAffineTransformMakeScale(&t2, 1.0, -1.0);
  t1 = v17;
  CGAffineTransformConcat(&v16, &t1, &t2);
  v17 = v16;
  CGAffineTransformMakeTranslation(&t2, MidX, MidY);
  t1 = v17;
  CGAffineTransformConcat(&v16, &t1, &t2);
  v10 = vaddq_f64(*&v16.tx, vmlaq_n_f64(vmulq_n_f64(*&v16.c, v12), *&v16.a, v13));
  v11 = v10.f64[1];
  result.x = v10.f64[0];
  result.y = v11;
  return result;
}

+ (int64_t)exifOrientationWithConversionBlock:(id)a3
{
  v3 = (a3 + 16);
  v4 = *(a3 + 2);
  v5 = a3;
  v6 = v4(0.0, 0.0);
  v8 = v7;
  v9 = (*v3)(v5, 1.0, 0.0);
  v11 = v10;
  v12 = (*v3)(v5, 0.0, 1.0);
  v14 = v13;

  v15 = v9 - v6 + -0.0005;
  v16 = v11 - v8 + 0.0005;
  v17 = v16 < 0.0;
  v18 = v15 > 0.0;
  v19 = v9 - v6 + 0.0005;
  v20 = v11 - v8 + -0.0005;
  v21 = 2;
  if (v15 <= 0.0)
  {
    v21 = 1;
  }

  if (v19 < 0.0)
  {
    v18 = v21;
  }

  if (v20 > 0.0)
  {
    ++v17;
  }

  v22 = v17 + v18;
  if (v22 != 1)
  {
    if (v22)
    {
      NSLog(&cfstr_SRightVectorWa_0.isa, "+[AKGeometryHelper exifOrientationWithConversionBlock:]", v15 > 0.0, v19 < 0.0, v20 > 0.0, v16 < 0.0);
    }

    else
    {
      NSLog(&cfstr_SRightVectorWa.isa, "+[AKGeometryHelper exifOrientationWithConversionBlock:]");
    }

    return 1;
  }

  v23 = v12 - v6 + -0.0005;
  v24 = v12 - v6 + 0.0005;
  v25 = v14 - v8 + -0.0005;
  v26 = v14 - v8 + 0.0005;
  v27 = v26 < 0.0;
  v28 = v23 > 0.0;
  v29 = 2;
  if (v23 <= 0.0)
  {
    v29 = 1;
  }

  if (v24 < 0.0)
  {
    v28 = v29;
  }

  if (v25 > 0.0)
  {
    ++v27;
  }

  v30 = v27 + v28;
  if (v30 != 1)
  {
    if (v30)
    {
      NSLog(&cfstr_SUpVectorWasTr.isa, "+[AKGeometryHelper exifOrientationWithConversionBlock:]", v23 > 0.0, v24 < 0.0, v25 > 0.0, v26 < 0.0);
    }

    else
    {
      NSLog(&cfstr_SUpVectorWasCo.isa, "+[AKGeometryHelper exifOrientationWithConversionBlock:]");
    }

    return 1;
  }

  v31 = v25 <= 0.0;
  v32 = v15 <= 0.0;
  v33 = v15 > 0.0 && v25 > 0.0;
  if (v33)
  {
    return 1;
  }

  if (v19 >= 0.0)
  {
    v31 = 1;
  }

  if (!v31)
  {
    return 2;
  }

  if (v26 >= 0.0)
  {
    v32 = 1;
  }

  if (!v32)
  {
    return 4;
  }

  if (v19 < 0.0 && v26 < 0.0)
  {
    return 3;
  }

  if (v16 < 0.0 && v23 > 0.0)
  {
    return 6;
  }

  if (v20 > 0.0 && v23 > 0.0)
  {
    return 7;
  }

  v35 = v20 <= 0.0;
  v36 = v24 < 0.0;
  if (v24 >= 0.0)
  {
    v35 = 1;
  }

  v37 = v16 < 0.0;
  v38 = v16 < 0.0 || v35;
  v39 = v37 && v36;
  v33 = !v37 || !v36;
  v40 = 5;
  if (v33)
  {
    v40 = 0;
  }

  if (v38)
  {
    result = v40;
  }

  else
  {
    result = 8;
  }

  if (v38 && !v39)
  {
    v41 = v24 < 0.0 || v23 > 0.0;
    if (v19 >= 0.0 && v15 <= 0.0 || !v41)
    {
      v44 = v26 < 0.0 || v25 > 0.0;
      v45 = v16 >= 0.0 && v20 <= 0.0;
      if (v45 || !v44)
      {
        NSLog(&cfstr_UpvectorAndRig_1.isa);
      }

      else
      {
        NSLog(&cfstr_UpvectorAndRig_0.isa);
      }
    }

    else
    {
      NSLog(&cfstr_UpvectorAndRig.isa);
    }

    return 1;
  }

  return result;
}

+ (int64_t)inverseExifOrientation:(int64_t)a3
{
  v3 = 6;
  if (a3 != 8)
  {
    v3 = a3;
  }

  if (a3 == 6)
  {
    return 8;
  }

  else
  {
    return v3;
  }
}

+ (CGAffineTransform)_rawAffineTransformForExifOrientation:(SEL)a3
{
  v5 = MEMORY[0x277CBF2C0];
  v6 = *MEMORY[0x277CBF2C0];
  v7 = *(MEMORY[0x277CBF2C0] + 16);
  *&retstr->a = *MEMORY[0x277CBF2C0];
  *&retstr->c = v7;
  v8 = *(v5 + 32);
  *&retstr->tx = v8;
  if (a4 > 4)
  {
    if (a4 > 6)
    {
      if (a4 != 7)
      {
        if (a4 != 8)
        {
          return result;
        }

        v9 = -4.71238898;
        goto LABEL_21;
      }

      v18 = v7;
      v20 = v6;
      v16 = v8;
      CGAffineTransformMakeScale(&t2, 1.0, -1.0);
      *&t1.a = v20;
      *&t1.c = v18;
      *&t1.tx = v16;
      CGAffineTransformConcat(retstr, &t1, &t2);
      v12 = -4.71238898;
    }

    else
    {
      if (a4 != 5)
      {
        v9 = -1.57079633;
LABEL_21:

        return CGAffineTransformMakeRotation(retstr, v9);
      }

      v17 = v7;
      v19 = v6;
      v15 = v8;
      CGAffineTransformMakeScale(&t2, 1.0, -1.0);
      *&t1.a = v19;
      *&t1.c = v17;
      *&t1.tx = v15;
      CGAffineTransformConcat(retstr, &t1, &t2);
      v12 = -1.57079633;
    }

    CGAffineTransformMakeRotation(&t1, v12);
    v13 = *&retstr->c;
    *&v21.a = *&retstr->a;
    *&v21.c = v13;
    *&v21.tx = *&retstr->tx;
    result = CGAffineTransformConcat(&t2, &v21, &t1);
    v14 = *&t2.c;
    *&retstr->a = *&t2.a;
    *&retstr->c = v14;
    *&retstr->tx = *&t2.tx;
    return result;
  }

  switch(a4)
  {
    case 2:
      v10 = -1.0;
      v11 = 1.0;
      break;
    case 3:
      v9 = -3.14159265;
      goto LABEL_21;
    case 4:
      v10 = 1.0;
      v11 = -1.0;
      break;
    default:
      return result;
  }

  return CGAffineTransformMakeScale(retstr, v10, v11);
}

+ (CGAffineTransform)affineTransformRecenteringAboutOriginForExifOrientation:(SEL)a3 withOriginalSize:(int64_t)a4
{
  height = a5.height;
  width = a5.width;
  memset(&v16, 0, sizeof(v16));
  [a2 _rawAffineTransformForExifOrientation:?];
  v9 = *(MEMORY[0x277CBF2C0] + 16);
  *&v15.a = *MEMORY[0x277CBF2C0];
  *&v15.c = v9;
  *&v15.tx = *(MEMORY[0x277CBF2C0] + 32);
  if (a4 <= 4)
  {
    if (a4 != 2)
    {
      if (a4 != 3)
      {
        if (a4 != 4)
        {
          goto LABEL_14;
        }

        goto LABEL_11;
      }

LABEL_10:
      v11 = width;
LABEL_12:
      v10 = height;
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  switch(a4)
  {
    case 5:
      goto LABEL_10;
    case 6:
LABEL_11:
      v11 = 0.0;
      goto LABEL_12;
    case 8:
LABEL_9:
      v10 = 0.0;
      v11 = width;
LABEL_13:
      CGAffineTransformMakeTranslation(&v15, v11, v10);
      break;
  }

LABEL_14:
  *&retstr->c = 0u;
  *&retstr->tx = 0u;
  *&retstr->a = 0u;
  t1 = v16;
  v13 = v15;
  return CGAffineTransformConcat(retstr, &t1, &v13);
}

+ (CGAffineTransform)affineTransformFlatteningOriginalModelExif:(SEL)a3 withOriginalModelSize:(int64_t)a4
{
  height = a5.height;
  width = a5.width;
  v9 = [AKGeometryHelper exifOrientationHasReversedAxes:?];
  if (v9)
  {
    v10 = height;
  }

  else
  {
    v10 = width;
  }

  if (v9)
  {
    v11 = width;
  }

  else
  {
    v11 = height;
  }

  *&retstr->a = 0u;
  *&retstr->c = 0u;
  *&retstr->tx = 0u;

  return [AKGeometryHelper affineTransformRecenteringAboutOriginForExifOrientation:a4 withOriginalSize:v10, v11];
}

+ (CGAffineTransform)affineTransformForExifOrientation:(SEL)a3 aboutCenter:(int64_t)a4
{
  y = a5.y;
  x = a5.x;
  memset(&v20, 0, sizeof(v20));
  [a2 _rawAffineTransformForExifOrientation:a4];
  v8 = MEMORY[0x277CBF2C0];
  v15 = *(MEMORY[0x277CBF2C0] + 16);
  v16 = *MEMORY[0x277CBF2C0];
  *&retstr->a = *MEMORY[0x277CBF2C0];
  *&retstr->c = v15;
  v14 = *(v8 + 32);
  *&retstr->tx = v14;
  CGAffineTransformMakeTranslation(&t2, -x, -y);
  *&t1.a = v16;
  *&t1.c = v15;
  *&t1.tx = v14;
  CGAffineTransformConcat(retstr, &t1, &t2);
  v9 = *&retstr->c;
  *&t1.a = *&retstr->a;
  *&t1.c = v9;
  *&t1.tx = *&retstr->tx;
  v17 = v20;
  CGAffineTransformConcat(&t2, &t1, &v17);
  v10 = *&t2.c;
  *&retstr->a = *&t2.a;
  *&retstr->c = v10;
  *&retstr->tx = *&t2.tx;
  CGAffineTransformMakeTranslation(&t1, x, y);
  v11 = *&retstr->c;
  *&v17.a = *&retstr->a;
  *&v17.c = v11;
  *&v17.tx = *&retstr->tx;
  result = CGAffineTransformConcat(&t2, &v17, &t1);
  v13 = *&t2.c;
  *&retstr->a = *&t2.a;
  *&retstr->c = v13;
  *&retstr->tx = *&t2.tx;
  return result;
}

+ (void)adjustOriginalExifOrientationOnAnnotation:(id)a3 flatteningOriginalModelExif:(int64_t)a4
{
  v6 = a3;
  v5 = +[AKGeometryHelper concatExifOrientation:withExifOrientation:](AKGeometryHelper, "concatExifOrientation:withExifOrientation:", [v6 originalExifOrientation], +[AKGeometryHelper inverseExifOrientation:](AKGeometryHelper, "inverseExifOrientation:", a4));
  [v6 setOriginalExifOrientation:0];
  [v6 setOriginalExifOrientation:v5];
}

+ (CGPoint)adjustPoint:(CGPoint)a3 forExifOrientation:(int64_t)a4 aboutCenter:(CGPoint)a5
{
  y = a3.y;
  x = a3.x;
  [a1 affineTransformForExifOrientation:a4 aboutCenter:{a5.x, a5.y}];
  v5 = vaddq_f64(0, vmlaq_n_f64(vmulq_n_f64(0, y), 0, x));
  v6 = v5.f64[1];
  result.x = v5.f64[0];
  result.y = v6;
  return result;
}

+ (CGRect)adjustRect:(CGRect)a3 forExifOrientation:(int64_t)a4 aboutCenter:(CGPoint)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [a1 affineTransformForExifOrientation:a4 aboutCenter:{a5.x, a5.y}];
  v13.origin.x = x;
  v13.origin.y = y;
  v13.size.width = width;
  v13.size.height = height;
  MinX = CGRectGetMinX(v13);
  v14.origin.x = x;
  v14.origin.y = y;
  v14.size.width = width;
  v14.size.height = height;
  MinY = CGRectGetMinY(v14);
  v15.origin.x = x;
  v15.origin.y = y;
  v15.size.width = width;
  v15.size.height = height;
  MaxX = CGRectGetMaxX(v15);
  v16.origin.x = x;
  v16.origin.y = y;
  v16.size.width = width;
  v16.size.height = height;
  MaxY = CGRectGetMaxY(v16);
  v17.origin.y = MinY * 0.0 + 0.0 * MinX + 0.0;
  v17.size.width = MaxY * 0.0 + 0.0 * MaxX + 0.0 - v17.origin.y;
  v17.size.height = v17.size.width;
  v17.origin.x = v17.origin.y;
  return CGRectStandardize(v17);
}

+ (CGPoint)convertModelToScreenOrientationForPoint:(CGPoint)a3 relativeToRect:(CGRect)a4 withPageController:(id)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v9 = a3.y;
  v10 = a3.x;
  v11 = a5;
  v19.origin.x = x;
  v19.origin.y = y;
  v19.size.width = width;
  v19.size.height = height;
  MidX = CGRectGetMidX(v19);
  v20.origin.x = x;
  v20.origin.y = y;
  v20.size.width = width;
  v20.size.height = height;
  MidY = CGRectGetMidY(v20);
  v14 = [v11 currentModelToScreenExifOrientation];

  [AKGeometryHelper adjustPoint:v14 forExifOrientation:v10 aboutCenter:v9, MidX, MidY];
  result.y = v16;
  result.x = v15;
  return result;
}

+ (CGRect)convertModelToScreenOrientationForRect:(CGRect)a3 withPageController:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = a4;
  v17.origin.x = x;
  v17.origin.y = y;
  v17.size.width = width;
  v17.size.height = height;
  MidX = CGRectGetMidX(v17);
  v18.origin.x = x;
  v18.origin.y = y;
  v18.size.width = width;
  v18.size.height = height;
  MidY = CGRectGetMidY(v18);
  v11 = [v8 currentModelToScreenExifOrientation];

  [AKGeometryHelper adjustRect:v11 forExifOrientation:x aboutCenter:y, width, height, MidX, MidY];
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

+ (CGPoint)convertScreenToModelOrientationForPoint:(CGPoint)a3 relativeToRect:(CGRect)a4 withPageController:(id)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v9 = a3.y;
  v10 = a3.x;
  v11 = a5;
  v20.origin.x = x;
  v20.origin.y = y;
  v20.size.width = width;
  v20.size.height = height;
  MidX = CGRectGetMidX(v20);
  v21.origin.x = x;
  v21.origin.y = y;
  v21.size.width = width;
  v21.size.height = height;
  MidY = CGRectGetMidY(v21);
  v14 = [v11 currentModelToScreenExifOrientation];

  v15 = [AKGeometryHelper inverseExifOrientation:v14];

  [AKGeometryHelper adjustPoint:v15 forExifOrientation:v10 aboutCenter:v9, MidX, MidY];
  result.y = v17;
  result.x = v16;
  return result;
}

+ (CGRect)convertScreenToModelOrientationForRect:(CGRect)a3 withPageController:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = a4;
  v18.origin.x = x;
  v18.origin.y = y;
  v18.size.width = width;
  v18.size.height = height;
  MidX = CGRectGetMidX(v18);
  v19.origin.x = x;
  v19.origin.y = y;
  v19.size.width = width;
  v19.size.height = height;
  MidY = CGRectGetMidY(v19);
  v11 = [v8 currentModelToScreenExifOrientation];

  v12 = [AKGeometryHelper inverseExifOrientation:v11];

  [AKGeometryHelper adjustRect:v12 forExifOrientation:x aboutCenter:y, width, height, MidX, MidY];
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

+ (unint64_t)draggableArea:(unint64_t)a3 convertedForExif:(int64_t)a4
{
  result = a3;
  if (a3 > 4)
  {
    if (a3 > 6)
    {
      if (a3 == 7)
      {
        v5 = a4 - 2;
        if ((a4 - 2) < 7)
        {
          v6 = &unk_23F4D9340;
          return v6[v5];
        }

        return 7;
      }

      else if (a3 == 8)
      {
        v5 = a4 - 2;
        if ((a4 - 2) < 7)
        {
          v6 = &unk_23F4D92D0;
          return v6[v5];
        }

        return 8;
      }
    }

    else if (a3 == 5)
    {
      v5 = a4 - 2;
      if ((a4 - 2) < 7)
      {
        v6 = &unk_23F4D93A8;
        return v6[v5];
      }

      return 5;
    }

    else
    {
      v5 = a4 - 3;
      if ((a4 - 3) < 6)
      {
        v6 = &unk_23F4D9378;
        return v6[v5];
      }

      return 6;
    }
  }

  else if (a3 > 2)
  {
    if (a3 == 3)
    {
      v5 = a4 - 2;
      if ((a4 - 2) < 7)
      {
        v6 = &unk_23F4D9298;
        return v6[v5];
      }

      return 3;
    }

    else
    {
      v5 = a4 - 2;
      if ((a4 - 2) < 7)
      {
        v6 = &unk_23F4D9308;
        return v6[v5];
      }

      return 4;
    }
  }

  else if (a3 == 1)
  {
    v5 = a4 - 2;
    if ((a4 - 2) < 7)
    {
      v6 = &unk_23F4D9230;
      return v6[v5];
    }

    return 1;
  }

  else if (a3 == 2)
  {
    v5 = a4 - 3;
    if ((a4 - 3) < 6)
    {
      v6 = &unk_23F4D9268;
      return v6[v5];
    }

    return 2;
  }

  return result;
}

+ (CGVector)normalizeVector:(CGVector)a3
{
  dy = a3.dy;
  dx = a3.dx;
  [a1 lengthOfVector:?];
  v6 = dy / v5;
  v7 = dx / v5;
  result.dy = v6;
  result.dx = v7;
  return result;
}

+ (double)angleOfVector:(CGVector)a3
{
  result = atan2(a3.dy, a3.dx);
  if (result < 0.0)
  {
    return result + 6.28318531;
  }

  return result;
}

+ (double)angleBetweenPoint:(CGPoint)a3 andPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  [a1 angleOfVector:{a3.x, a3.y}];
  memset(&v9, 0, sizeof(v9));
  CGAffineTransformMakeRotation(&v9, -v5);
  [a1 angleOfVector:{vaddq_f64(*&v9.tx, vmlaq_n_f64(vmulq_n_f64(*&v9.c, y), *&v9.a, x))}];
  return result;
}

+ (CGPoint)pointAtAngle:(double)a3 inCircleWithCenter:(CGPoint)a4 andRadius:(double)a5
{
  y = a4.y;
  x = a4.x;
  v8 = __sincos_stret(a3);
  v9 = x + v8.__cosval * a5;
  v10 = y + v8.__sinval * a5;
  result.y = v10;
  result.x = v9;
  return result;
}

+ (CGPoint)compareVectorDirectionsFirstVector:(CGPoint)a3 secondVector:(CGPoint)a4
{
  y = a3.y;
  v5 = -1.0;
  if ((y <= 0.0 || a4.y >= 0.0) && (y >= 0.0 || a4.y <= 0.0))
  {
    v5 = *(MEMORY[0x277CBF348] + 8);
    v6 = y < 0.0;
    v7 = y > 0.0;
    if (a4.y <= 0.0)
    {
      v7 = 0;
    }

    if (a4.y >= 0.0)
    {
      v6 = 0;
    }

    if (v7 || v6)
    {
      v5 = 1.0;
    }
  }

  v8 = -1.0;
  if ((a3.x <= 0.0 || a4.x >= 0.0) && (a3.x >= 0.0 || a4.x <= 0.0))
  {
    v8 = *MEMORY[0x277CBF348];
    v9 = a3.x < 0.0;
    v10 = a3.x > 0.0;
    if (a4.x <= 0.0)
    {
      v10 = 0;
    }

    if (a4.x >= 0.0)
    {
      v9 = 0;
    }

    if (v10 || v9)
    {
      v8 = 1.0;
    }
  }

  v11 = v8;
  result.y = v5;
  result.x = v11;
  return result;
}

+ (CGRect)expandCGRect:(CGRect)a3 toContainPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  height = a3.size.height;
  width = a3.size.width;
  v8 = a3.origin.y;
  v9 = a3.origin.x;
  MinX = CGRectGetMinX(a3);
  if (MinX >= x)
  {
    v11 = x;
  }

  else
  {
    v11 = MinX;
  }

  v21.origin.x = v9;
  v21.origin.y = v8;
  v21.size.width = width;
  v21.size.height = height;
  MaxX = CGRectGetMaxX(v21);
  if (MaxX >= x)
  {
    v13 = MaxX;
  }

  else
  {
    v13 = x;
  }

  v22.origin.x = v9;
  v22.origin.y = v8;
  v22.size.width = width;
  v22.size.height = height;
  MinY = CGRectGetMinY(v22);
  if (MinY >= y)
  {
    v15 = y;
  }

  else
  {
    v15 = MinY;
  }

  v23.origin.x = v9;
  v23.origin.y = v8;
  v23.size.width = width;
  v23.size.height = height;
  MaxY = CGRectGetMaxY(v23);
  if (MaxY < y)
  {
    MaxY = y;
  }

  v17 = v13 - v11;
  v18 = MaxY - v15;
  v19 = v11;
  v20 = v15;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v20;
  result.origin.x = v19;
  return result;
}

+ (CGRect)effectiveDrawingBoundsForAnnotation:(id)a3 forDisplay:(BOOL)a4 pageControllerOrNil:(id)a5 outScaleFactor:(double *)a6
{
  v8 = a4;
  v9 = a3;
  v10 = a5;
  v11 = v10;
  if (!v8)
  {
    [v9 integralDrawingBounds];
    v30 = v37;
    v24 = v38;
    v26 = v39;
    v28 = v40;
    v32 = 1.0;
    if (!a6)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v12 = [v10 geometryHelper];
  [v12 annotationLayerFrameForAnnotation:v9 layerIsClipped:0];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  [v11 convertRectFromOverlayToModel:{v14, v16, v18, v20}];
  v22 = v21;
  v41 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v43.origin.x = v14;
  v43.origin.y = v16;
  v43.size.width = v18;
  v43.size.height = v20;
  Width = CGRectGetWidth(v43);
  v44.origin.x = v22;
  v44.origin.y = v24;
  v44.size.width = v26;
  v44.size.height = v28;
  v29 = Width / CGRectGetWidth(v44);
  v45.origin.x = v14;
  v30 = v41;
  v45.origin.y = v16;
  v45.size.width = v18;
  v45.size.height = v20;
  Height = CGRectGetHeight(v45);
  v46.origin.x = v41;
  v46.origin.y = v24;
  v46.size.width = v26;
  v46.size.height = v28;
  v32 = Height / CGRectGetHeight(v46);
  if (v29 >= v32)
  {
    v32 = v29;
  }

  if (a6)
  {
LABEL_5:
    *a6 = v32;
  }

LABEL_6:

  v33 = v30;
  v34 = v24;
  v35 = v26;
  v36 = v28;
  result.size.height = v36;
  result.size.width = v35;
  result.origin.y = v34;
  result.origin.x = v33;
  return result;
}

+ (CGAffineTransform)verticalFlipTransformForRect:(SEL)a3
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  MidX = CGRectGetMidX(a4);
  v23.origin.x = x;
  v23.origin.y = y;
  v23.size.width = width;
  v23.size.height = height;
  MidY = CGRectGetMidY(v23);
  v11 = MEMORY[0x277CBF2C0];
  v18 = *(MEMORY[0x277CBF2C0] + 16);
  v19 = *MEMORY[0x277CBF2C0];
  *&retstr->a = *MEMORY[0x277CBF2C0];
  *&retstr->c = v18;
  v17 = *(v11 + 32);
  *&retstr->tx = v17;
  CGAffineTransformMakeTranslation(&t2, -MidX, -MidY);
  *&t1.a = v19;
  *&t1.c = v18;
  *&t1.tx = v17;
  CGAffineTransformConcat(retstr, &t1, &t2);
  CGAffineTransformMakeScale(&t1, 1.0, -1.0);
  v12 = *&retstr->c;
  *&v20.a = *&retstr->a;
  *&v20.c = v12;
  *&v20.tx = *&retstr->tx;
  CGAffineTransformConcat(&t2, &v20, &t1);
  v13 = *&t2.c;
  *&retstr->a = *&t2.a;
  *&retstr->c = v13;
  *&retstr->tx = *&t2.tx;
  CGAffineTransformMakeTranslation(&t1, MidX, MidY);
  v14 = *&retstr->c;
  *&v20.a = *&retstr->a;
  *&v20.c = v14;
  *&v20.tx = *&retstr->tx;
  result = CGAffineTransformConcat(&t2, &v20, &t1);
  v16 = *&t2.c;
  *&retstr->a = *&t2.a;
  *&retstr->c = v16;
  *&retstr->tx = *&t2.tx;
  return result;
}

+ (CGAffineTransform)horizontalFlipTransformForRect:(SEL)a3
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  MidX = CGRectGetMidX(a4);
  v23.origin.x = x;
  v23.origin.y = y;
  v23.size.width = width;
  v23.size.height = height;
  MidY = CGRectGetMidY(v23);
  v11 = MEMORY[0x277CBF2C0];
  v18 = *(MEMORY[0x277CBF2C0] + 16);
  v19 = *MEMORY[0x277CBF2C0];
  *&retstr->a = *MEMORY[0x277CBF2C0];
  *&retstr->c = v18;
  v17 = *(v11 + 32);
  *&retstr->tx = v17;
  CGAffineTransformMakeTranslation(&t2, -MidX, -MidY);
  *&t1.a = v19;
  *&t1.c = v18;
  *&t1.tx = v17;
  CGAffineTransformConcat(retstr, &t1, &t2);
  CGAffineTransformMakeScale(&t1, -1.0, 1.0);
  v12 = *&retstr->c;
  *&v20.a = *&retstr->a;
  *&v20.c = v12;
  *&v20.tx = *&retstr->tx;
  CGAffineTransformConcat(&t2, &v20, &t1);
  v13 = *&t2.c;
  *&retstr->a = *&t2.a;
  *&retstr->c = v13;
  *&retstr->tx = *&t2.tx;
  CGAffineTransformMakeTranslation(&t1, MidX, MidY);
  v14 = *&retstr->c;
  *&v20.a = *&retstr->a;
  *&v20.c = v14;
  *&v20.tx = *&retstr->tx;
  result = CGAffineTransformConcat(&t2, &v20, &t1);
  v16 = *&t2.c;
  *&retstr->a = *&t2.a;
  *&retstr->c = v16;
  *&retstr->tx = *&t2.tx;
  return result;
}

+ (BOOL)annotationHasRotation:(id)a3 outAngle:(double *)a4
{
  v5 = a3;
  if ([v5 conformsToAKRotatableAnnotationProtocol])
  {
    [v5 rotationAngle];
    v7 = fabs(v6) >= 0.0005;
    if (!a4)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v7 = 0;
  v6 = 0.0;
  if (a4)
  {
LABEL_5:
    *a4 = v6;
  }

LABEL_6:

  return v7;
}

+ (CGAffineTransform)rotationTransformForRectangularAnnotation:(SEL)a3 hasRotation:(id)a4
{
  v7 = a4;
  v8 = MEMORY[0x277CBF2C0];
  v9 = *(MEMORY[0x277CBF2C0] + 16);
  *&retstr->a = *MEMORY[0x277CBF2C0];
  *&retstr->c = v9;
  *&retstr->tx = *(v8 + 32);
  v13 = 0;
  v10 = [AKGeometryHelper annotationHasRotation:v7 outAngle:&v13];
  v11 = v10;
  if (v10)
  {
    [v7 rectangle];
    [AKGeometryHelper rotationTransformForRect:"rotationTransformForRect:withAngle:" withAngle:?];
  }

  if (a5)
  {
    *a5 = v11;
  }

  return result;
}

+ (CGAffineTransform)rotationTransformForRect:(SEL)a3 withAngle:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  MidX = CGRectGetMidX(a4);
  v15.origin.x = x;
  v15.origin.y = y;
  v15.size.width = width;
  v15.size.height = height;
  MidY = CGRectGetMidY(v15);

  return [a2 rotationTransformAroundPoint:MidX withAngle:{MidY, a5}];
}

+ (CGAffineTransform)rotationTransformAroundPoint:(SEL)a3 withAngle:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  *&retstr->c = 0u;
  *&retstr->tx = 0u;
  *&retstr->a = 0u;
  CGAffineTransformMakeTranslation(retstr, -a4.x, -a4.y);
  CGAffineTransformMakeRotation(&t2, a5);
  v9 = *&retstr->c;
  *&v14.a = *&retstr->a;
  *&v14.c = v9;
  *&v14.tx = *&retstr->tx;
  CGAffineTransformConcat(&v16, &v14, &t2);
  v10 = *&v16.c;
  *&retstr->a = *&v16.a;
  *&retstr->c = v10;
  *&retstr->tx = *&v16.tx;
  CGAffineTransformMakeTranslation(&t2, x, y);
  v11 = *&retstr->c;
  *&v14.a = *&retstr->a;
  *&v14.c = v11;
  *&v14.tx = *&retstr->tx;
  result = CGAffineTransformConcat(&v16, &v14, &t2);
  v13 = *&v16.c;
  *&retstr->a = *&v16.a;
  *&retstr->c = v13;
  *&retstr->tx = *&v16.tx;
  return result;
}

+ (id)_cornersOfRotatedRectangle:(CGRect)a3 angle:(double)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10 = [MEMORY[0x277CBEB18] arrayWithCapacity:4];
  [a1 rotationTransformForRect:x withAngle:{y, width, height, a4}];
  v21.origin.x = x;
  v21.origin.y = y;
  v21.size.width = width;
  v21.size.height = height;
  MinX = CGRectGetMinX(v21);
  v22.origin.x = x;
  v22.origin.y = y;
  v22.size.width = width;
  v22.size.height = height;
  v11 = [MEMORY[0x277CCAE60] akValueWithPoint:{vaddq_f64(0, vmlaq_n_f64(vmulq_n_f64(0, CGRectGetMinY(v22)), 0, MinX))}];
  [v10 addObject:v11];

  v23.origin.x = x;
  v23.origin.y = y;
  v23.size.width = width;
  v23.size.height = height;
  MaxX = CGRectGetMaxX(v23);
  v24.origin.x = x;
  v24.origin.y = y;
  v24.size.width = width;
  v24.size.height = height;
  v12 = [MEMORY[0x277CCAE60] akValueWithPoint:{vaddq_f64(0, vmlaq_n_f64(vmulq_n_f64(0, CGRectGetMinY(v24)), 0, MaxX))}];
  [v10 addObject:v12];

  v25.origin.x = x;
  v25.origin.y = y;
  v25.size.width = width;
  v25.size.height = height;
  v18 = CGRectGetMaxX(v25);
  v26.origin.x = x;
  v26.origin.y = y;
  v26.size.width = width;
  v26.size.height = height;
  v13 = [MEMORY[0x277CCAE60] akValueWithPoint:{vaddq_f64(0, vmlaq_n_f64(vmulq_n_f64(0, CGRectGetMaxY(v26)), 0, v18))}];
  [v10 addObject:v13];

  v27.origin.x = x;
  v27.origin.y = y;
  v27.size.width = width;
  v27.size.height = height;
  v19 = CGRectGetMinX(v27);
  v28.origin.x = x;
  v28.origin.y = y;
  v28.size.width = width;
  v28.size.height = height;
  v14 = [MEMORY[0x277CCAE60] akValueWithPoint:{vaddq_f64(0, vmlaq_n_f64(vmulq_n_f64(0, CGRectGetMaxY(v28)), 0, v19))}];
  [v10 addObject:v14];

  return v10;
}

+ (CGRect)boundsOfRotatedRectangle:(CGRect)a3 angle:(double)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = [a1 _cornersOfRotatedRectangle:a3.origin.x angle:{a3.origin.y, a3.size.width, a3.size.height, a4}];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v20;
    v8 = 1.79769313e308;
    v9 = 2.22507386e-308;
    v10 = 2.22507386e-308;
    v11 = 1.79769313e308;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v19 + 1) + 8 * i) akPointValue];
        if (v13 > v9)
        {
          v9 = v13;
        }

        if (v13 < v8)
        {
          v8 = v13;
        }

        if (v14 > v10)
        {
          v10 = v14;
        }

        if (v14 < v11)
        {
          v11 = v14;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v6);
  }

  else
  {
    v8 = 1.79769313e308;
    v9 = 2.22507386e-308;
    v10 = 2.22507386e-308;
    v11 = 1.79769313e308;
  }

  v15 = v9 - v8;
  v16 = v10 - v11;
  v17 = v8;
  v18 = v11;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

+ (CGRect)convertRect:(CGRect)a3 fromViewToScreenPixels:(id)a4 useNativeScale:(BOOL)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10 = a4;
  v11 = [v10 window];
  [v10 convertRect:v11 toView:{x, y, width, height}];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;

  v20 = [v11 screen];
  v21 = [v20 coordinateSpace];

  [v11 convertRect:v21 toCoordinateSpace:{v13, v15, v17, v19}];
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v30 = [v11 screen];
  v31 = v30;
  if (a5)
  {
    [v30 nativeScale];
  }

  else
  {
    [v30 scale];
  }

  v33 = v32;

  CGAffineTransformMakeScale(&v42, v33, v33);
  v43.origin.x = v23;
  v43.origin.y = v25;
  v43.size.width = v27;
  v43.size.height = v29;
  v44 = CGRectApplyAffineTransform(v43, &v42);
  v45 = CGRectStandardize(v44);
  v34 = v45.origin.x;
  v35 = v45.origin.y;
  v36 = v45.size.width;
  v37 = v45.size.height;

  v38 = v34;
  v39 = v35;
  v40 = v36;
  v41 = v37;
  result.size.height = v41;
  result.size.width = v40;
  result.origin.y = v39;
  result.origin.x = v38;
  return result;
}

+ (CGRect)convertRect:(CGRect)a3 fromScreenPointsToView:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = a4;
  v9 = [v8 window];
  v10 = [v9 screen];
  v11 = [v10 coordinateSpace];

  [v9 convertRect:v11 fromCoordinateSpace:{x, y, width, height}];
  [v8 convertRect:v9 fromView:?];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;

  v20 = v13;
  v21 = v15;
  v22 = v17;
  v23 = v19;
  result.size.height = v23;
  result.size.width = v22;
  result.origin.y = v21;
  result.origin.x = v20;
  return result;
}

- (AKGeometryHelper)initWithPageController:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = AKGeometryHelper;
  v5 = [(AKGeometryHelper *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(AKGeometryHelper *)v5 setPageController:v4];
  }

  return v6;
}

- (CGRect)annotationLayerFrameForAnnotation:(id)a3 layerIsClipped:(BOOL *)a4
{
  v6 = a3;
  v7 = [(AKGeometryHelper *)self pageController];
  [v6 drawingBounds];
  x = v40.origin.x;
  y = v40.origin.y;
  width = v40.size.width;
  height = v40.size.height;
  if (CGRectIsInfinite(v40))
  {
    v12 = [v7 overlayView];
    [v12 bounds];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;

    [v7 convertRectFromOverlayToModel:{v14, v16, v18, v20}];
    x = v21;
    y = v22;
    width = v23;
    height = v24;
  }

  else if ([AKGeometryHelper isUnpresentableRect:x, y, width, height])
  {
    v25 = objc_opt_class();
    v26 = NSStringFromClass(v25);
    v41.origin.x = x;
    v41.origin.y = y;
    v41.size.width = width;
    v41.size.height = height;
    v27 = j__NSStringFromCGRect(v41);
    NSLog(&cfstr_SReportedBogus.isa, "[AKGeometryHelper annotationLayerFrameForAnnotation:layerIsClipped:]", v26, v27);

    if ([AKGeometryHelper isUnpresentablePoint:x, y])
    {
      y = 0.0;
      x = 0.0;
    }

    height = 1.0;
    width = 1.0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(AKGeometryHelper *)self screenPixelAlignedRectForRect:x, y, width, height];
  }

  else
  {
    [(AKGeometryHelper *)self _smartAlignedRectForRect:x, y, width, height];
  }

  [v7 convertRectFromModelToOverlay:?];
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  if (a4)
  {
    *a4 = 0;
  }

  v36 = v29;
  v37 = v31;
  v38 = v33;
  v39 = v35;
  result.size.height = v39;
  result.size.width = v38;
  result.origin.y = v37;
  result.origin.x = v36;
  return result;
}

- (CGRect)_clippingFrameForView:(id)a3
{
  v3 = a3;
  v4 = [v3 window];
  [v4 bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  if ([AKGeometryHelper isUnpresentableRect:v6, v8, v10, v12])
  {
    [v3 frame];
  }

  else
  {
    [v3 convertRect:0 fromView:{v6, v8, v10, v12}];
  }

  v17 = v13;
  v18 = v14;
  v19 = v15;
  v20 = v16;

  v21 = v17;
  v22 = v18;
  v23 = v19;
  v24 = v20;

  return CGRectInset(*&v21, -v19, -v20);
}

- (CGRect)adornmentLayerFrameForAnnotation:(id)a3
{
  v4 = a3;
  v5 = [(AKGeometryHelper *)self pageController];
  [v4 drawingBounds];
  x = v30.origin.x;
  y = v30.origin.y;
  width = v30.size.width;
  height = v30.size.height;
  if (CGRectIsInfinite(v30))
  {
    v10 = [v5 overlayView];
    [v10 bounds];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
  }

  else
  {
    if ([AKGeometryHelper isUnpresentableRect:x, y, width, height])
    {
      v19 = objc_opt_class();
      v20 = NSStringFromClass(v19);
      v31.origin.x = x;
      v31.origin.y = y;
      v31.size.width = width;
      v31.size.height = height;
      v21 = j__NSStringFromCGRect(v31);
      NSLog(&cfstr_SReportedBogus.isa, "[AKGeometryHelper adornmentLayerFrameForAnnotation:]", v20, v21);

      if ([AKGeometryHelper isUnpresentablePoint:x, y])
      {
        y = 0.0;
        x = 0.0;
      }

      height = 1.0;
      width = 1.0;
    }

    [v5 convertRectFromModelToOverlay:{x, y, width, height}];
    v12 = v22;
    v14 = v23;
    v16 = v24;
    v18 = v25;
  }

  v26 = v12;
  v27 = v14;
  v28 = v16;
  v29 = v18;
  result.size.height = v29;
  result.size.width = v28;
  result.origin.y = v27;
  result.origin.x = v26;
  return result;
}

- (CGPoint)convertPoint:(CGPoint)a3 fromModelToLayer:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = [(AKGeometryHelper *)self pageController];
  v9 = [v8 overlayView];
  v10 = [v9 layer];
  [v8 convertPointFromModelToOverlay:{x, y}];
  [v10 convertPoint:v7 toLayer:?];
  v12 = v11;
  v14 = v13;

  v15 = v12;
  v16 = v14;
  result.y = v16;
  result.x = v15;
  return result;
}

- (CGRect)convertRect:(CGRect)a3 fromModelToLayer:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = a4;
  v10 = [(AKGeometryHelper *)self pageController];
  v11 = [v10 overlayView];
  v12 = [v11 layer];
  [v10 convertRectFromModelToOverlay:{x, y, width, height}];
  [v12 convertRect:v9 toLayer:?];
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

- (CGPoint)contentAlignedPointForPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  if ([(AKGeometryHelper *)self _shouldAlignToContent])
  {
    [objc_opt_class() _alignedPointForPoint:1 alignToContent:0 alignToScreenUsingPageController:0 orAlignToBitmapContext:0 usingAnnotation:{x, y}];
    x = v5;
    y = v6;
  }

  v7 = x;
  v8 = y;
  result.y = v8;
  result.x = v7;
  return result;
}

- (CGRect)contentAlignedRectForRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if ([(AKGeometryHelper *)self _shouldAlignToContent])
  {
    [objc_opt_class() _alignedStableRectForRect:1 alignToContent:0 alignToScreenUsingPageController:0 orAlignToBitmapContext:0 usingAnnotation:{x, y, width, height}];
    x = v7;
    y = v8;
    width = v9;
    height = v10;
  }

  v11 = x;
  v12 = y;
  v13 = width;
  v14 = height;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (CGPoint)screenPixelAlignedPointForPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = objc_opt_class();
  v7 = [(AKGeometryHelper *)self pageController];
  [v6 _alignedPointForPoint:0 alignToContent:v7 alignToScreenUsingPageController:0 orAlignToBitmapContext:0 usingAnnotation:{x, y}];
  v9 = v8;
  v11 = v10;

  v12 = v9;
  v13 = v11;
  result.y = v13;
  result.x = v12;
  return result;
}

- (CGRect)screenPixelAlignedRectForRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = objc_opt_class();
  v9 = [(AKGeometryHelper *)self pageController];
  [v8 _alignedStableRectForRect:0 alignToContent:v9 alignToScreenUsingPageController:0 orAlignToBitmapContext:0 usingAnnotation:{x, y, width, height}];
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

- (CGRect)_smartAlignedRectForRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = objc_opt_class();
  v9 = [(AKGeometryHelper *)self _shouldAlignToContent];
  if ([(AKGeometryHelper *)self _shouldAlignToScreen])
  {
    v10 = [(AKGeometryHelper *)self pageController];
    [v8 _alignedStableRectForRect:v9 alignToContent:v10 alignToScreenUsingPageController:0 orAlignToBitmapContext:0 usingAnnotation:{x, y, width, height}];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
  }

  else
  {
    [v8 _alignedStableRectForRect:v9 alignToContent:0 alignToScreenUsingPageController:0 orAlignToBitmapContext:0 usingAnnotation:{x, y, width, height}];
    v12 = v19;
    v14 = v20;
    v16 = v21;
    v18 = v22;
  }

  v23 = v12;
  v24 = v14;
  v25 = v16;
  v26 = v18;
  result.size.height = v26;
  result.size.width = v25;
  result.origin.y = v24;
  result.origin.x = v23;
  return result;
}

- (CGRect)screenStrokeAlignedRectForRect:(CGRect)a3 withStrokeWidth:(double)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10 = objc_opt_class();
  v11 = [(AKGeometryHelper *)self pageController];
  [v10 _strokeAlignedRectForRect:1 withStrokeWidth:v11 shouldAlignStrictlyToScreen:0 alignToScreenUsingPageController:0 orAlignToBitmapContext:x usingAnnotation:{y, width, height, a4}];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;

  v20 = v13;
  v21 = v15;
  v22 = v17;
  v23 = v19;
  result.size.height = v23;
  result.size.width = v22;
  result.origin.y = v21;
  result.origin.x = v20;
  return result;
}

+ (CGRect)renderingStrokeAlignedRectForRect:(CGRect)a3 withStrokeWidth:(double)a4 alignToScreenUsingPageController:(id)a5 orAlignToContext:(CGContext *)a6 usingAnnotation:(id)a7
{
  [a1 _strokeAlignedRectForRect:0 withStrokeWidth:a5 shouldAlignStrictlyToScreen:a6 alignToScreenUsingPageController:a7 orAlignToBitmapContext:a3.origin.x usingAnnotation:{a3.origin.y, a3.size.width, a3.size.height, a4}];
  result.size.height = v10;
  result.size.width = v9;
  result.origin.y = v8;
  result.origin.x = v7;
  return result;
}

+ (CGRect)renderingAlignedTextRectForRect:(CGRect)a3 alignToScreenUsingPageController:(id)a4 orAlignToContext:(CGContext *)a5 usingAnnotation:(id)a6
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v13 = a4;
  v14 = a6;
  if (!v14 || ![AKGeometryHelper annotationHasRotation:v14 outAngle:0])
  {
    [a1 _alignedStableRectForRect:0 alignToContent:v13 alignToScreenUsingPageController:a5 orAlignToBitmapContext:v14 usingAnnotation:{x, y, width, height}];
    x = v15;
    y = v16;
    width = v17;
    height = v18;
  }

  v19 = x;
  v20 = y;
  v21 = width;
  v22 = height;
  result.size.height = v22;
  result.size.width = v21;
  result.origin.y = v20;
  result.origin.x = v19;
  return result;
}

- (id)_rootLayer
{
  v2 = [(AKGeometryHelper *)self pageController];
  v3 = [v2 layerPresentationManager];
  v4 = [v3 rootLayer];

  return v4;
}

- (BOOL)_shouldAlignToContent
{
  v2 = [(AKGeometryHelper *)self pageController];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 shouldPixelate];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)_shouldAlignToScreen
{
  v3 = [(AKGeometryHelper *)self pageController];
  if (v3)
  {
    if ([(AKGeometryHelper *)self _shouldAlignToContent])
    {
      [v3 currentModelToScreenScaleFactor];
      v5 = v4 <= 1.0;
    }

    else
    {
      v5 = 1;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (CGRect)_alignedStableRectForRect:(CGRect)a3 alignToContent:(BOOL)a4 alignToScreenUsingPageController:(id)a5 orAlignToBitmapContext:(CGContext *)a6 usingAnnotation:(id)a7
{
  v9 = a4;
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v15 = a7;
  v16 = a5;
  v17 = objc_opt_class();
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = sub_23F47749C;
  v30[3] = &unk_278C7C0B0;
  v30[4] = a1;
  [v17 _rectForRect:v9 alignToContent:v16 alignToScreenUsingPageController:a6 orAlignToBitmapContext:v15 usingAnnotation:v30 withAlignmentBlock:{x, y, width, height}];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;

  v26 = v19;
  v27 = v21;
  v28 = v23;
  v29 = v25;
  result.size.height = v29;
  result.size.width = v28;
  result.origin.y = v27;
  result.origin.x = v26;
  return result;
}

+ (CGRect)_strokeAlignedRectForRect:(CGRect)a3 withStrokeWidth:(double)a4 shouldAlignStrictlyToScreen:(BOOL)a5 alignToScreenUsingPageController:(id)a6 orAlignToBitmapContext:(CGContext *)a7 usingAnnotation:(id)a8
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v17 = a6;
  v18 = a8;
  v19 = 0;
  if (v17 && !a5)
  {
    v20 = [v17 geometryHelper];
    if ([v20 _shouldAlignToScreen])
    {
      v19 = 0;
    }

    else
    {
      v19 = [v20 _shouldAlignToContent];
    }
  }

  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = sub_23F477650;
  v33[3] = &unk_278C7C0B0;
  *&v33[4] = a4;
  [a1 _rectForRect:v19 alignToContent:v17 alignToScreenUsingPageController:a7 orAlignToBitmapContext:v18 usingAnnotation:v33 withAlignmentBlock:{x, y, width, height}];
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;

  v29 = v22;
  v30 = v24;
  v31 = v26;
  v32 = v28;
  result.size.height = v32;
  result.size.width = v31;
  result.origin.y = v30;
  result.origin.x = v29;
  return result;
}

+ (CGPoint)_alignedPointForPoint:(CGPoint)a3 alignToContent:(BOOL)a4 alignToScreenUsingPageController:(id)a5 orAlignToBitmapContext:(CGContext *)a6 usingAnnotation:(id)a7
{
  v9 = a4;
  y = a3.y;
  x = a3.x;
  v13 = a7;
  v14 = a5;
  v15 = objc_opt_class();
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = sub_23F4777BC;
  v22[3] = &unk_278C7C0B0;
  v22[4] = a1;
  [v15 _rectForRect:v9 alignToContent:v14 alignToScreenUsingPageController:a6 orAlignToBitmapContext:v13 usingAnnotation:v22 withAlignmentBlock:{x, y, 0.0, 0.0}];
  v17 = v16;
  v19 = v18;

  v20 = v17;
  v21 = v19;
  result.y = v21;
  result.x = v20;
  return result;
}

+ (CGRect)_rectForRect:(CGRect)a3 alignToContent:(BOOL)a4 alignToScreenUsingPageController:(id)a5 orAlignToBitmapContext:(CGContext *)a6 usingAnnotation:(id)a7 withAlignmentBlock:(id)a8
{
  v11 = a4;
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v17 = a5;
  v18 = a7;
  v19 = a8;
  v20 = v19;
  if (v11)
  {
    v98.origin.x = (v19[2])(v19, x, y, width, height, 1.0);
    v99 = CGRectStandardize(v98);
    x = v99.origin.x;
    y = v99.origin.y;
    width = v99.size.width;
    height = v99.size.height;
  }

  if (v17)
  {
    v21 = [v17 overlayView];
    if (!v21)
    {
      NSLog(&cfstr_SAttemptingToA.isa, "+[AKGeometryHelper _rectForRect:alignToContent:alignToScreenUsingPageController:orAlignToBitmapContext:usingAnnotation:withAlignmentBlock:]");
      goto LABEL_18;
    }

    v22 = v21;
    v23 = *MEMORY[0x277CBF348];
    v24 = *(MEMORY[0x277CBF348] + 8);
    [v17 convertRectFromModelToOverlay:{x, y, width, height}];
    v26 = v25;
    v28 = v27;
    v30 = v29;
    v32 = v31;
    [v17 convertPointFromModelToOverlay:{v23, v24}];
    v34 = v33;
    v36 = v35;
    [v17 convertPointFromModelToOverlay:{1.0, 1.0}];
    v38 = v37;
    v40 = v39;
    v41 = [v22 superview];
    [v22 convertRect:v41 toView:{v26, v28, v30, v32}];
    v43 = v42;
    v45 = v44;
    v47 = v46;
    v49 = v48;
    [v22 convertPoint:v41 toView:{v34, v36}];
    v51 = v50;
    v53 = v52;
    [v22 convertPoint:v41 toView:{v38, v40}];
    v55 = v54;
    v57 = v56;
    v58 = [v41 window];
    v59 = [v58 screen];
    v60 = [v59 coordinateSpace];

    [v41 convertRect:v60 toCoordinateSpace:{v43, v45, v47, v49}];
    v62 = v61;
    v64 = v63;
    v66 = v65;
    v68 = v67;
    [v41 convertPoint:v60 toCoordinateSpace:{v51, v53}];
    v70 = v69;
    v72 = v71;
    [v41 convertPoint:v60 toCoordinateSpace:{v55, v57}];
    v75 = vabdd_f64(v74, v70);
    v77 = vabdd_f64(v76, v72);
    if (v75 >= v77)
    {
      v73.n128_f64[0] = v75;
    }

    else
    {
      v73.n128_f64[0] = v77;
    }

    v20[2](v20, v62, v64, v66, v68, v73);
    [v22 convertRect:v60 fromCoordinateSpace:?];
    [v17 convertRectFromOverlayToModel:?];
    x = v78;
    y = v79;
    width = v80;
    height = v81;

    goto LABEL_16;
  }

  if (!a6)
  {
LABEL_16:
    v104.origin.x = x;
    v104.origin.y = y;
    v104.size.width = width;
    v104.size.height = height;
    v105 = CGRectStandardize(v104);
    x = v105.origin.x;
    y = v105.origin.y;
    width = v105.size.width;
    height = v105.size.height;
    goto LABEL_18;
  }

  if (CGContextGetType() == 4 && CGBitmapContextGetBitsPerPixel(a6))
  {
    [a1 effectiveDrawingBoundsForAnnotation:v18 forDisplay:0 pageControllerOrNil:0 outScaleFactor:0];
    v83 = v82;
    v85 = v84;
    v100.origin.x = x - v82;
    v100.origin.y = y - v84;
    v100.size.width = width;
    v100.size.height = height;
    v101 = CGContextConvertRectToDeviceSpace(a6, v100);
    v86 = v101.origin.x;
    v87 = v101.origin.y;
    v88 = v101.size.width;
    v89 = v101.size.height;
    v101.origin.x = 1.0;
    v101.origin.y = 1.0;
    v91 = CGContextConvertSizeToDeviceSpace(a6, v101.origin);
    v92 = fabs(v91.width);
    v93 = fabs(v91.height);
    if (v92 >= v93)
    {
      v90.n128_f64[0] = v92;
    }

    else
    {
      v90.n128_f64[0] = v93;
    }

    v102.origin.x = (v20[2])(v20, v86, v87, v88, v89, v90);
    v103 = CGContextConvertRectToUserSpace(a6, v102);
    width = v103.size.width;
    height = v103.size.height;
    x = v83 + v103.origin.x;
    y = v85 + v103.origin.y;
    goto LABEL_16;
  }

LABEL_18:

  v94 = x;
  v95 = y;
  v96 = width;
  v97 = height;
  result.size.height = v97;
  result.size.width = v96;
  result.origin.y = v95;
  result.origin.x = v94;
  return result;
}

- (AKPageController)pageController
{
  WeakRetained = objc_loadWeakRetained(&self->_pageController);

  return WeakRetained;
}

@end