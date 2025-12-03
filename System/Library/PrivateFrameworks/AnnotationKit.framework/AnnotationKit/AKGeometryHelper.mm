@interface AKGeometryHelper
+ (BOOL)annotationHasRotation:(id)rotation outAngle:(double *)angle;
+ (BOOL)isPoint:(CGPoint)point onEllipse:(CGRect)ellipse;
+ (BOOL)isUnpresentablePoint:(CGPoint)point;
+ (BOOL)isUnpresentableRect:(CGRect)rect;
+ (BOOL)isUnpresentableSize:(CGSize)size;
+ (CGAffineTransform)_rawAffineTransformForExifOrientation:(SEL)orientation;
+ (CGAffineTransform)affineTransformFlatteningOriginalModelExif:(SEL)exif withOriginalModelSize:(int64_t)size;
+ (CGAffineTransform)affineTransformForExifOrientation:(SEL)orientation aboutCenter:(int64_t)center;
+ (CGAffineTransform)affineTransformRecenteringAboutOriginForExifOrientation:(SEL)orientation withOriginalSize:(int64_t)size;
+ (CGAffineTransform)centeredCircleToEllipseTransform:(SEL)transform;
+ (CGAffineTransform)ellipseToCenteredCircleTransform:(SEL)transform;
+ (CGAffineTransform)horizontalFlipTransformForRect:(SEL)rect;
+ (CGAffineTransform)rotationTransformAroundPoint:(SEL)point withAngle:(CGPoint)angle;
+ (CGAffineTransform)rotationTransformForRect:(SEL)rect withAngle:(CGRect)angle;
+ (CGAffineTransform)rotationTransformForRectangularAnnotation:(SEL)annotation hasRotation:(id)rotation;
+ (CGAffineTransform)verticalFlipTransformForRect:(SEL)rect;
+ (CGPoint)_alignedPointForPoint:(CGPoint)point alignToContent:(BOOL)content alignToScreenUsingPageController:(id)controller orAlignToBitmapContext:(CGContext *)context usingAnnotation:(id)annotation;
+ (CGPoint)_farthestPointFrom:(CGPoint)from inArray:(id)array;
+ (CGPoint)adjustPoint:(CGPoint)point forExifOrientation:(int64_t)orientation aboutCenter:(CGPoint)center;
+ (CGPoint)centerOfRect:(CGRect)rect;
+ (CGPoint)compareVectorDirectionsFirstVector:(CGPoint)vector secondVector:(CGPoint)secondVector;
+ (CGPoint)convertModelToScreenOrientationForPoint:(CGPoint)point relativeToRect:(CGRect)rect withPageController:(id)controller;
+ (CGPoint)convertScreenToModelOrientationForPoint:(CGPoint)point relativeToRect:(CGRect)rect withPageController:(id)controller;
+ (CGPoint)flipPointVertically:(CGPoint)vertically inRect:(CGRect)rect;
+ (CGPoint)intersectLineSegmentStartingAt:(CGPoint)at ending:(CGPoint)ending withAnotherSegmentStartingAt:(CGPoint)startingAt ending:(CGPoint)a6;
+ (CGPoint)intersectLineSegmentStartingAt:(CGPoint)at ending:(CGPoint)ending withCircleWithCenter:(CGPoint)center andRadius:(double)radius farthestResult:(BOOL)result;
+ (CGPoint)intersectLineSegmentStartingAt:(CGPoint)at ending:(CGPoint)ending withEllipseOfRect:(CGRect)rect farthestResult:(BOOL)result;
+ (CGPoint)intersectLineSegmentStartingAt:(CGPoint)at ending:(CGPoint)ending withRect:(CGRect)rect andRoundedCornerRadius:(double)radius;
+ (CGPoint)intersectRayStartingAt:(CGPoint)at ending:(CGPoint)ending withCircleWithCenter:(CGPoint)center andRadius:(double)radius farthestResult:(BOOL)result;
+ (CGPoint)intersectRayStartingAt:(CGPoint)at ending:(CGPoint)ending withEllipseOfRect:(CGRect)rect farthestResult:(BOOL)result;
+ (CGPoint)pointAtAngle:(double)angle inCircleWithCenter:(CGPoint)center andRadius:(double)radius;
+ (CGPoint)projectPoint:(CGPoint)point ontoRayWithFirstPoint:(CGPoint)firstPoint andSecondPoint:(CGPoint)secondPoint;
+ (CGPoint)projectVector:(CGPoint)vector ontoAspectVector:(CGPoint)aspectVector;
+ (CGPoint)snapVector:(CGPoint)vector toDiagonalForAspectRatio:(double)ratio ignoreWidth:(BOOL)width ignoreHeight:(BOOL)height;
+ (CGPoint)snapVectorTo45Degrees:(CGPoint)degrees;
+ (CGPoint)tangentOfEllipse:(CGRect)ellipse throughRayWithFirstPoint:(CGPoint)point goingThrough:(CGPoint)through;
+ (CGRect)_alignedStableRectForRect:(CGRect)rect alignToContent:(BOOL)content alignToScreenUsingPageController:(id)controller orAlignToBitmapContext:(CGContext *)context usingAnnotation:(id)annotation;
+ (CGRect)_rectForRect:(CGRect)rect alignToContent:(BOOL)content alignToScreenUsingPageController:(id)controller orAlignToBitmapContext:(CGContext *)context usingAnnotation:(id)annotation withAlignmentBlock:(id)block;
+ (CGRect)_strokeAlignedRectForRect:(CGRect)rect withStrokeWidth:(double)width shouldAlignStrictlyToScreen:(BOOL)screen alignToScreenUsingPageController:(id)controller orAlignToBitmapContext:(CGContext *)context usingAnnotation:(id)annotation;
+ (CGRect)adjustRect:(CGRect)rect forExifOrientation:(int64_t)orientation aboutCenter:(CGPoint)center;
+ (CGRect)boundsOfRotatedRectangle:(CGRect)rectangle angle:(double)angle;
+ (CGRect)constrainRect:(CGRect)rect withinRect:(CGRect)withinRect;
+ (CGRect)convertModelToScreenOrientationForRect:(CGRect)rect withPageController:(id)controller;
+ (CGRect)convertRect:(CGRect)rect fromScreenPointsToView:(id)view;
+ (CGRect)convertRect:(CGRect)rect fromViewToScreenPixels:(id)pixels useNativeScale:(BOOL)scale;
+ (CGRect)convertScreenToModelOrientationForRect:(CGRect)rect withPageController:(id)controller;
+ (CGRect)effectiveDrawingBoundsForAnnotation:(id)annotation forDisplay:(BOOL)display pageControllerOrNil:(id)nil outScaleFactor:(double *)factor;
+ (CGRect)expandCGRect:(CGRect)rect toContainPoint:(CGPoint)point;
+ (CGRect)rectForSize:(CGSize)size inRect:(CGRect)rect;
+ (CGRect)rectWithSize:(CGSize)size centeredAtPoint:(CGPoint)point;
+ (CGRect)renderingAlignedTextRectForRect:(CGRect)rect alignToScreenUsingPageController:(id)controller orAlignToContext:(CGContext *)context usingAnnotation:(id)annotation;
+ (CGRect)renderingStrokeAlignedRectForRect:(CGRect)rect withStrokeWidth:(double)width alignToScreenUsingPageController:(id)controller orAlignToContext:(CGContext *)context usingAnnotation:(id)annotation;
+ (CGRect)stableIntegralRectForRect:(CGRect)rect;
+ (CGVector)normalizeVector:(CGVector)vector;
+ (double)angleBetweenPoint:(CGPoint)point andPoint:(CGPoint)andPoint;
+ (double)angleOfVector:(CGVector)vector;
+ (id)_cornersOfRotatedRectangle:(CGRect)rectangle angle:(double)angle;
+ (id)verticesOfPolygonWithPointCount:(unint64_t)count inRect:(CGRect)rect rotation:(double)rotation flippedVertically:(BOOL)vertically;
+ (int64_t)exifOrientationWithConversionBlock:(id)block;
+ (int64_t)inverseExifOrientation:(int64_t)orientation;
+ (unint64_t)draggableArea:(unint64_t)area convertedForExif:(int64_t)exif;
+ (void)_checkIntersectionOfLineSegmentStartingAt:(CGPoint)at endingAt:(CGPoint)endingAt withCircleAt:(CGPoint)circleAt andRadius:(double)radius results:(id)results;
+ (void)_collectIntersectionsOfLineSegmentStartingAt:(CGPoint)at endingAt:(CGPoint)endingAt withCornerCirclesOfRoundedRect:(CGRect)rect withRadius:(double)radius results:(id)results;
+ (void)adjustOriginalExifOrientationOnAnnotation:(id)annotation flatteningOriginalModelExif:(int64_t)exif;
+ (void)intersectCircleAtPoint:(CGPoint)point withRadius:(double)radius withCircleAtPoint:(CGPoint)atPoint withRadius:(double)withRadius firstOutPoint:(CGPoint *)outPoint secondOutPoint:(CGPoint *)secondOutPoint;
+ (void)tangentPointsToEllipse:(CGRect)ellipse fromPoint:(CGPoint)point firstOutPoint:(CGPoint *)outPoint secondOutPoint:(CGPoint *)secondOutPoint;
- (AKGeometryHelper)initWithPageController:(id)controller;
- (AKPageController)pageController;
- (BOOL)_shouldAlignToContent;
- (BOOL)_shouldAlignToScreen;
- (CGPoint)contentAlignedPointForPoint:(CGPoint)point;
- (CGPoint)convertPoint:(CGPoint)point fromModelToLayer:(id)layer;
- (CGPoint)screenPixelAlignedPointForPoint:(CGPoint)point;
- (CGRect)_clippingFrameForView:(id)view;
- (CGRect)_smartAlignedRectForRect:(CGRect)rect;
- (CGRect)adornmentLayerFrameForAnnotation:(id)annotation;
- (CGRect)annotationLayerFrameForAnnotation:(id)annotation layerIsClipped:(BOOL *)clipped;
- (CGRect)contentAlignedRectForRect:(CGRect)rect;
- (CGRect)convertRect:(CGRect)rect fromModelToLayer:(id)layer;
- (CGRect)screenPixelAlignedRectForRect:(CGRect)rect;
- (CGRect)screenStrokeAlignedRectForRect:(CGRect)rect withStrokeWidth:(double)width;
- (id)_rootLayer;
@end

@implementation AKGeometryHelper

+ (BOOL)isUnpresentableRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  if (CGRectIsNull(rect) || ([self rectHasZeroSize:{x, y, width, height}] & 1) != 0)
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

+ (BOOL)isUnpresentableSize:(CGSize)size
{
  v3 = fmin(size.width, size.height);
  v4 = fabs(size.width) == INFINITY;
  if (fabs(size.height) == INFINITY)
  {
    v4 = 1;
  }

  if (v3 <= 0.0)
  {
    return 1;
  }

  return v4;
}

+ (BOOL)isUnpresentablePoint:(CGPoint)point
{
  v3 = fabs(point.x) == INFINITY;
  if (fabs(point.y) == INFINITY)
  {
    return 1;
  }

  return v3;
}

+ (CGRect)stableIntegralRectForRect:(CGRect)rect
{
  [self integralRect:3840 withOptions:{rect.origin.x, rect.origin.y, rect.size.width, rect.size.height}];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

+ (CGRect)rectWithSize:(CGSize)size centeredAtPoint:(CGPoint)point
{
  height = size.height;
  width = size.width;
  v6 = point.x - size.width * 0.5;
  v7 = point.y - size.height * 0.5;
  v8 = width;
  v9 = height;
  result.size.height = v9;
  result.size.width = v8;
  result.origin.y = v7;
  result.origin.x = v6;
  return result;
}

+ (CGRect)rectForSize:(CGSize)size inRect:(CGRect)rect
{
  y = rect.origin.y;
  x = rect.origin.x;
  v6 = rect.size.height / size.height;
  if (rect.size.width / size.width < rect.size.height / size.height)
  {
    v6 = rect.size.width / size.width;
  }

  v7 = size.width * v6;
  v8 = size.height * v6;
  v9 = x;
  v10 = y;
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v10;
  result.origin.x = v9;
  return result;
}

+ (CGPoint)centerOfRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  MidX = CGRectGetMidX(rect);
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

+ (CGRect)constrainRect:(CGRect)rect withinRect:(CGRect)withinRect
{
  height = withinRect.size.height;
  width = withinRect.size.width;
  y = withinRect.origin.y;
  x = withinRect.origin.x;
  v8 = rect.size.width;
  v9 = rect.origin.y;
  v10 = rect.origin.x;
  rect = rect.size.height;
  v11 = CGRectGetWidth(rect);
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
  rectCopy = rect;
  result.size.height = rectCopy;
  result.size.width = v24;
  result.origin.y = v19;
  result.origin.x = v23;
  return result;
}

+ (CGPoint)snapVectorTo45Degrees:(CGPoint)degrees
{
  y = degrees.y;
  x = degrees.x;
  v5 = hypot(degrees.x, degrees.y);
  v6 = atan2(y, x);
  v7 = __sincos_stret(round(v6 / 0.785398163) * 0.785398163);
  v8 = v5 * v7.__sinval;
  v9 = v5 * v7.__cosval;
  result.y = v8;
  result.x = v9;
  return result;
}

+ (CGPoint)snapVector:(CGPoint)vector toDiagonalForAspectRatio:(double)ratio ignoreWidth:(BOOL)width ignoreHeight:(BOOL)height
{
  y = vector.y;
  x = vector.x;
  if (height)
  {
    vector.y = vector.x / ratio;
  }

  else
  {
    vector.x = vector.y * ratio;
    if (!width)
    {
      vector.x = x;
    }
  }

  v9 = hypot(vector.x, vector.y);
  [AKGeometryHelper compareVectorDirectionsFirstVector:x secondVector:y, ratio, 1.0];
  [AKGeometryHelper normalizeVectorPoint:v10 * ratio];
  v12 = v9 * v11;
  v14 = v9 * v13;
  result.y = v14;
  result.x = v12;
  return result;
}

+ (CGPoint)projectVector:(CGPoint)vector ontoAspectVector:(CGPoint)aspectVector
{
  v4 = (vector.y * aspectVector.y + vector.x * aspectVector.x) / (aspectVector.y * aspectVector.y + aspectVector.x * aspectVector.x);
  v5 = aspectVector.x * v4;
  v6 = aspectVector.y * v4;
  result.y = v6;
  result.x = v5;
  return result;
}

+ (CGPoint)intersectRayStartingAt:(CGPoint)at ending:(CGPoint)ending withCircleWithCenter:(CGPoint)center andRadius:(double)radius farthestResult:(BOOL)result
{
  v7 = ending.x - at.x;
  v8 = ending.y - at.y;
  v9 = center.x - at.x;
  v10 = center.y - at.y;
  v11 = v7 * (center.y - at.y) - v8 * v9;
  v12 = v8 * v8 + v7 * v7;
  v13 = radius * radius * v12 - v11 * v11;
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

    if (result)
    {
      v19 = v20;
    }

    if (v19 < 0.0)
    {
      v19 = v20;
    }

    v14 = at.x + v19 * v7;
    v15 = at.y + v19 * v8;
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

+ (CGPoint)intersectLineSegmentStartingAt:(CGPoint)at ending:(CGPoint)ending withCircleWithCenter:(CGPoint)center andRadius:(double)radius farthestResult:(BOOL)result
{
  y = ending.y;
  x = ending.x;
  v9 = at.y;
  v10 = at.x;
  [AKGeometryHelper intersectRayStartingAt:result ending:at.x withCircleWithCenter:at.y andRadius:ending.x farthestResult:ending.y, center.x, center.y, radius];
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

+ (CGPoint)intersectRayStartingAt:(CGPoint)at ending:(CGPoint)ending withEllipseOfRect:(CGRect)rect farthestResult:(BOOL)result
{
  resultCopy = result;
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v11 = ending.y;
  v12 = ending.x;
  v13 = at.y;
  v14 = at.x;
  [AKGeometryHelper radiusOfCenteredCircleFor:rect.origin.x, rect.origin.y, rect.size.width, rect.size.height];
  v21 = v15;
  [AKGeometryHelper ellipseToCenteredCircleTransform:x, y, width, height];
  [AKGeometryHelper intersectRayStartingAt:resultCopy ending:v13 * 0.0 + 0.0 * v14 + 0.0 withCircleWithCenter:v13 * 0.0 + 0.0 * v14 + 0.0 andRadius:v11 * 0.0 + 0.0 * v12 + 0.0 farthestResult:v11 * 0.0 + 0.0 * v12 + 0.0, *MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8), v21];
  v20 = v17;
  v22 = v16;
  [AKGeometryHelper centeredCircleToEllipseTransform:x, y, width, height];
  v18 = vaddq_f64(0, vmlaq_n_f64(vmulq_n_f64(0, v20), 0, v22));
  v19 = v18.f64[1];
  result.x = v18.f64[0];
  result.y = v19;
  return result;
}

+ (CGPoint)intersectLineSegmentStartingAt:(CGPoint)at ending:(CGPoint)ending withEllipseOfRect:(CGRect)rect farthestResult:(BOOL)result
{
  y = ending.y;
  x = ending.x;
  v8 = at.y;
  v9 = at.x;
  [AKGeometryHelper intersectRayStartingAt:result ending:at.x withEllipseOfRect:at.y farthestResult:ending.x, ending.y, rect.origin.x, rect.origin.y, rect.size.width, rect.size.height];
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

+ (CGPoint)intersectLineSegmentStartingAt:(CGPoint)at ending:(CGPoint)ending withAnotherSegmentStartingAt:(CGPoint)startingAt ending:(CGPoint)a6
{
  y = at.y;
  x = at.x;
  v8 = ending.y - y;
  v9 = at.x - ending.x;
  v10 = a6.y - startingAt.y;
  v11 = startingAt.x - a6.x;
  v12 = (ending.y - y) * (startingAt.x - a6.x) - (a6.y - startingAt.y) * v9;
  if (v12 == 0.0)
  {
    goto LABEL_36;
  }

  v13 = startingAt.y * v11 + v10 * startingAt.x;
  v14 = y * v9 + v8 * x;
  v15 = (v11 * v14 - v9 * v13) / v12;
  v16 = v15 + 0.0005;
  v17 = x >= ending.x ? ending.x : x;
  if (v16 < v17)
  {
    goto LABEL_36;
  }

  v18 = v15 + -0.0005;
  if (x < ending.x)
  {
    x = ending.x;
  }

  if (v18 > x)
  {
    goto LABEL_36;
  }

  v19 = (v14 * -v10 + v8 * v13) / v12;
  v20 = v19 + 0.0005;
  v21 = y >= ending.y ? ending.y : y;
  if (v20 < v21)
  {
    goto LABEL_36;
  }

  v22 = v19 + -0.0005;
  if (y >= ending.y)
  {
    ending.y = y;
  }

  if (v22 > ending.y)
  {
    goto LABEL_36;
  }

  if (startingAt.x >= a6.x)
  {
    v23 = a6.x;
  }

  else
  {
    v23 = startingAt.x;
  }

  if (startingAt.x < a6.x)
  {
    startingAt.x = a6.x;
  }

  v24 = v16 < v23 || v18 > startingAt.x;
  if (v24 || (startingAt.y >= a6.y ? (v25 = a6.y) : (v25 = startingAt.y), startingAt.y >= a6.y ? (v26 = startingAt.y) : (v26 = a6.y), v20 >= v25 ? (v27 = v22 > v26) : (v27 = 1), v27))
  {
LABEL_36:
    v15 = 9.22337204e18;
    v19 = 9.22337204e18;
  }

  result.y = v19;
  result.x = v15;
  return result;
}

+ (void)_checkIntersectionOfLineSegmentStartingAt:(CGPoint)at endingAt:(CGPoint)endingAt withCircleAt:(CGPoint)circleAt andRadius:(double)radius results:(id)results
{
  y = circleAt.y;
  x = circleAt.x;
  v10 = endingAt.y;
  v11 = endingAt.x;
  v12 = at.y;
  v13 = at.x;
  resultsCopy = results;
  [AKGeometryHelper intersectLineSegmentStartingAt:1 ending:v13 withCircleWithCenter:v12 andRadius:v11 farthestResult:v10, x, y, radius];
  if (v15 != 9.22337204e18 && v14 != 9.22337204e18)
  {
    v17 = [MEMORY[0x277CCAE60] akValueWithPoint:?];
    [resultsCopy addObject:v17];
  }
}

+ (void)_collectIntersectionsOfLineSegmentStartingAt:(CGPoint)at endingAt:(CGPoint)endingAt withCornerCirclesOfRoundedRect:(CGRect)rect withRadius:(double)radius results:(id)results
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v24 = endingAt.y;
  v11 = endingAt.x;
  v12 = at.y;
  v13 = at.x;
  resultsCopy = results;
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
  [self _checkIntersectionOfLineSegmentStartingAt:resultsCopy endingAt:v13 withCircleAt:v12 andRadius:v11 results:{v24, MinX + radius, MinY + radius, radius}];
  [self _checkIntersectionOfLineSegmentStartingAt:resultsCopy endingAt:v13 withCircleAt:v12 andRadius:v11 results:{v24, MaxX - radius, v18 + radius, radius}];
  [self _checkIntersectionOfLineSegmentStartingAt:resultsCopy endingAt:v13 withCircleAt:v12 andRadius:v11 results:{v24, v21 - radius, MaxY - radius, radius}];
  [self _checkIntersectionOfLineSegmentStartingAt:resultsCopy endingAt:v13 withCircleAt:v12 andRadius:v11 results:{v24, v20 + radius, v16 - radius, radius}];
}

+ (CGPoint)_farthestPointFrom:(CGPoint)from inArray:(id)array
{
  y = from.y;
  x = from.x;
  v26 = *MEMORY[0x277D85DE8];
  arrayCopy = array;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v7 = [arrayCopy countByEnumeratingWithState:&v21 objects:v25 count:16];
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
          objc_enumerationMutation(arrayCopy);
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

      v8 = [arrayCopy countByEnumeratingWithState:&v21 objects:v25 count:16];
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

+ (CGPoint)intersectLineSegmentStartingAt:(CGPoint)at ending:(CGPoint)ending withRect:(CGRect)rect andRoundedCornerRadius:(double)radius
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v10 = ending.y;
  v11 = ending.x;
  v12 = at.y;
  v40 = at.x;
  MinX = CGRectGetMinX(rect);
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
  [AKGeometryHelper _collectIntersectionsOfLineSegmentStartingAt:"_collectIntersectionsOfLineSegmentStartingAt:endingAt:withCornerCirclesOfRoundedRect:withRadius:results:" endingAt:v13 withCornerCirclesOfRoundedRect:*&radius withRadius:? results:?];
  [AKGeometryHelper intersectLineSegmentStartingAt:v40 ending:v12 withAnotherSegmentStartingAt:v11 ending:v10, MinX + radius, MinY, MaxX - radius, v36];
  v16 = v15 == 9.22337204e18 || v14 == 9.22337204e18;
  if (v16 && (([AKGeometryHelper intersectLineSegmentStartingAt:v40 ending:v12 withAnotherSegmentStartingAt:v11 ending:v10, MaxX, v36 + radius, v35, MaxY - radius], v18 != 9.22337204e18) ? (v19 = v17 == 9.22337204e18) : (v19 = 1), v19 && (([AKGeometryHelper intersectLineSegmentStartingAt:v40 ending:v12 withAnotherSegmentStartingAt:v11 ending:v10, v35 - radius, MaxY, v33 + radius, v32], v21 != 9.22337204e18) ? (v22 = v20 == 9.22337204e18) : (v22 = 1), v22 && (([AKGeometryHelper intersectLineSegmentStartingAt:v40 ending:v12 withAnotherSegmentStartingAt:v11 ending:v10, v33, v32 - radius, MinX, MinY + radius], v24 == 9.22337204e18) || v23 == 9.22337204e18))))
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

+ (CGPoint)projectPoint:(CGPoint)point ontoRayWithFirstPoint:(CGPoint)firstPoint andSecondPoint:(CGPoint)secondPoint
{
  v5 = secondPoint.x - firstPoint.x;
  v6 = secondPoint.y - firstPoint.y;
  v7 = ((point.y - firstPoint.y) * v6 + (point.x - firstPoint.x) * v5) / (v6 * v6 + v5 * v5);
  v8 = v5 * v7;
  v9 = v6 * v7;
  v10 = firstPoint.x + v8;
  v11 = firstPoint.y + v9;
  result.y = v11;
  result.x = v10;
  return result;
}

+ (CGAffineTransform)ellipseToCenteredCircleTransform:(SEL)transform
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

+ (CGAffineTransform)centeredCircleToEllipseTransform:(SEL)transform
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

+ (BOOL)isPoint:(CGPoint)point onEllipse:(CGRect)ellipse
{
  height = ellipse.size.height;
  width = ellipse.size.width;
  y = ellipse.origin.y;
  x = ellipse.origin.x;
  v8 = point.y;
  v9 = point.x;
  [AKGeometryHelper ellipseToCenteredCircleTransform:ellipse.origin.x, ellipse.origin.y, ellipse.size.width, ellipse.size.height];
  [AKGeometryHelper radiusOfCenteredCircleFor:x, y, width, height];
  return vabdd_f64(hypot(v8 * 0.0 + 0.0 * v9 + 0.0, v8 * 0.0 + 0.0 * v9 + 0.0), v10) < 0.0005;
}

+ (void)intersectCircleAtPoint:(CGPoint)point withRadius:(double)radius withCircleAtPoint:(CGPoint)atPoint withRadius:(double)withRadius firstOutPoint:(CGPoint *)outPoint secondOutPoint:(CGPoint *)secondOutPoint
{
  y = point.y;
  x = point.x;
  v14 = atPoint.x - point.x;
  v15 = atPoint.y - point.y;
  v16 = hypot(atPoint.x - point.x, atPoint.y - point.y);
  v17 = (radius * radius - withRadius * withRadius + v16 * v16) / (v16 + v16);
  [AKGeometryHelper normalizeVectorPoint:v14, v15];
  v19 = x + v17 * v18;
  v21 = y + v17 * v20;
  v22 = sqrt(radius * radius - v17 * v17);
  outPoint->x = v19 - v22 * v20;
  outPoint->y = v21 + v22 * v18;
  secondOutPoint->x = v19 + v22 * v20;
  secondOutPoint->y = v21 - v22 * v18;
}

+ (void)tangentPointsToEllipse:(CGRect)ellipse fromPoint:(CGPoint)point firstOutPoint:(CGPoint *)outPoint secondOutPoint:(CGPoint *)secondOutPoint
{
  y = point.y;
  x = point.x;
  height = ellipse.size.height;
  width = ellipse.size.width;
  v12 = ellipse.origin.y;
  v13 = ellipse.origin.x;
  v33 = 0u;
  v34 = 0u;
  v32 = 0u;
  [AKGeometryHelper ellipseToCenteredCircleTransform:ellipse.origin.x];
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
  outPoint->x = *&v31 + v28 * *&v30 + *&v29 * v27;
  outPoint->y = v22;
  secondOutPoint->x = v23;
  secondOutPoint->y = v24;
}

+ (CGPoint)tangentOfEllipse:(CGRect)ellipse throughRayWithFirstPoint:(CGPoint)point goingThrough:(CGPoint)through
{
  y = through.y;
  x = through.x;
  v7 = point.y;
  v8 = point.x;
  height = ellipse.size.height;
  width = ellipse.size.width;
  v11 = ellipse.origin.y;
  v12 = ellipse.origin.x;
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

+ (id)verticesOfPolygonWithPointCount:(unint64_t)count inRect:(CGRect)rect rotation:(double)rotation flippedVertically:(BOOL)vertically
{
  verticallyCopy = vertically;
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v40 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  v31 = height;
  [AKGeometryHelper radiusOfCenteredCircleFor:x, y, width, height];
  if (count)
  {
    v16 = v15;
    v17 = 360.0 / count;
    do
    {
      v18 = __sincos_stret(rotation * 3.14159265 / 180.0 + 1.57079633);
      v19 = v16 * v18.__cosval;
      v20 = v16 * v18.__sinval;
      if (verticallyCopy)
      {
        [AKGeometryHelper flipPointVertically:v19 inRect:v20, -v16, -v16, v16 + v16, v16 + v16];
      }

      v21 = [MEMORY[0x277CCAE60] akValueWithPoint:{v19, v20}];
      [array addObject:v21];

      rotation = v17 + rotation;
      --count;
    }

    while (count);
  }

  v37 = 0u;
  v38 = 0u;
  v36 = 0u;
  [AKGeometryHelper centeredCircleToEllipseTransform:x, y, width, v31];
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v22 = array;
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
        [array2 addObject:v29];
      }

      v24 = [v22 countByEnumeratingWithState:&v32 objects:v39 count:16];
    }

    while (v24);
  }

  return array2;
}

+ (CGPoint)flipPointVertically:(CGPoint)vertically inRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v12 = vertically.y;
  v13 = vertically.x;
  MidX = CGRectGetMidX(rect);
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

+ (int64_t)exifOrientationWithConversionBlock:(id)block
{
  v3 = (block + 16);
  v4 = *(block + 2);
  blockCopy = block;
  v6 = v4(0.0, 0.0);
  v8 = v7;
  v9 = (*v3)(blockCopy, 1.0, 0.0);
  v11 = v10;
  v12 = (*v3)(blockCopy, 0.0, 1.0);
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

+ (int64_t)inverseExifOrientation:(int64_t)orientation
{
  orientationCopy = 6;
  if (orientation != 8)
  {
    orientationCopy = orientation;
  }

  if (orientation == 6)
  {
    return 8;
  }

  else
  {
    return orientationCopy;
  }
}

+ (CGAffineTransform)_rawAffineTransformForExifOrientation:(SEL)orientation
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

+ (CGAffineTransform)affineTransformRecenteringAboutOriginForExifOrientation:(SEL)orientation withOriginalSize:(int64_t)size
{
  height = a5.height;
  width = a5.width;
  memset(&v16, 0, sizeof(v16));
  [a2 _rawAffineTransformForExifOrientation:?];
  v9 = *(MEMORY[0x277CBF2C0] + 16);
  *&v15.a = *MEMORY[0x277CBF2C0];
  *&v15.c = v9;
  *&v15.tx = *(MEMORY[0x277CBF2C0] + 32);
  if (size <= 4)
  {
    if (size != 2)
    {
      if (size != 3)
      {
        if (size != 4)
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

  switch(size)
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

+ (CGAffineTransform)affineTransformFlatteningOriginalModelExif:(SEL)exif withOriginalModelSize:(int64_t)size
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

  return [AKGeometryHelper affineTransformRecenteringAboutOriginForExifOrientation:size withOriginalSize:v10, v11];
}

+ (CGAffineTransform)affineTransformForExifOrientation:(SEL)orientation aboutCenter:(int64_t)center
{
  y = a5.y;
  x = a5.x;
  memset(&v20, 0, sizeof(v20));
  [a2 _rawAffineTransformForExifOrientation:center];
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

+ (void)adjustOriginalExifOrientationOnAnnotation:(id)annotation flatteningOriginalModelExif:(int64_t)exif
{
  annotationCopy = annotation;
  v5 = +[AKGeometryHelper concatExifOrientation:withExifOrientation:](AKGeometryHelper, "concatExifOrientation:withExifOrientation:", [annotationCopy originalExifOrientation], +[AKGeometryHelper inverseExifOrientation:](AKGeometryHelper, "inverseExifOrientation:", exif));
  [annotationCopy setOriginalExifOrientation:0];
  [annotationCopy setOriginalExifOrientation:v5];
}

+ (CGPoint)adjustPoint:(CGPoint)point forExifOrientation:(int64_t)orientation aboutCenter:(CGPoint)center
{
  y = point.y;
  x = point.x;
  [self affineTransformForExifOrientation:orientation aboutCenter:{center.x, center.y}];
  v5 = vaddq_f64(0, vmlaq_n_f64(vmulq_n_f64(0, y), 0, x));
  v6 = v5.f64[1];
  result.x = v5.f64[0];
  result.y = v6;
  return result;
}

+ (CGRect)adjustRect:(CGRect)rect forExifOrientation:(int64_t)orientation aboutCenter:(CGPoint)center
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  [self affineTransformForExifOrientation:orientation aboutCenter:{center.x, center.y}];
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

+ (CGPoint)convertModelToScreenOrientationForPoint:(CGPoint)point relativeToRect:(CGRect)rect withPageController:(id)controller
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v9 = point.y;
  v10 = point.x;
  controllerCopy = controller;
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
  currentModelToScreenExifOrientation = [controllerCopy currentModelToScreenExifOrientation];

  [AKGeometryHelper adjustPoint:currentModelToScreenExifOrientation forExifOrientation:v10 aboutCenter:v9, MidX, MidY];
  result.y = v16;
  result.x = v15;
  return result;
}

+ (CGRect)convertModelToScreenOrientationForRect:(CGRect)rect withPageController:(id)controller
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  controllerCopy = controller;
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
  currentModelToScreenExifOrientation = [controllerCopy currentModelToScreenExifOrientation];

  [AKGeometryHelper adjustRect:currentModelToScreenExifOrientation forExifOrientation:x aboutCenter:y, width, height, MidX, MidY];
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

+ (CGPoint)convertScreenToModelOrientationForPoint:(CGPoint)point relativeToRect:(CGRect)rect withPageController:(id)controller
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v9 = point.y;
  v10 = point.x;
  controllerCopy = controller;
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
  currentModelToScreenExifOrientation = [controllerCopy currentModelToScreenExifOrientation];

  v15 = [AKGeometryHelper inverseExifOrientation:currentModelToScreenExifOrientation];

  [AKGeometryHelper adjustPoint:v15 forExifOrientation:v10 aboutCenter:v9, MidX, MidY];
  result.y = v17;
  result.x = v16;
  return result;
}

+ (CGRect)convertScreenToModelOrientationForRect:(CGRect)rect withPageController:(id)controller
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  controllerCopy = controller;
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
  currentModelToScreenExifOrientation = [controllerCopy currentModelToScreenExifOrientation];

  v12 = [AKGeometryHelper inverseExifOrientation:currentModelToScreenExifOrientation];

  [AKGeometryHelper adjustRect:v12 forExifOrientation:x aboutCenter:y, width, height, MidX, MidY];
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

+ (unint64_t)draggableArea:(unint64_t)area convertedForExif:(int64_t)exif
{
  result = area;
  if (area > 4)
  {
    if (area > 6)
    {
      if (area == 7)
      {
        v5 = exif - 2;
        if ((exif - 2) < 7)
        {
          v6 = &unk_23F4D9340;
          return v6[v5];
        }

        return 7;
      }

      else if (area == 8)
      {
        v5 = exif - 2;
        if ((exif - 2) < 7)
        {
          v6 = &unk_23F4D92D0;
          return v6[v5];
        }

        return 8;
      }
    }

    else if (area == 5)
    {
      v5 = exif - 2;
      if ((exif - 2) < 7)
      {
        v6 = &unk_23F4D93A8;
        return v6[v5];
      }

      return 5;
    }

    else
    {
      v5 = exif - 3;
      if ((exif - 3) < 6)
      {
        v6 = &unk_23F4D9378;
        return v6[v5];
      }

      return 6;
    }
  }

  else if (area > 2)
  {
    if (area == 3)
    {
      v5 = exif - 2;
      if ((exif - 2) < 7)
      {
        v6 = &unk_23F4D9298;
        return v6[v5];
      }

      return 3;
    }

    else
    {
      v5 = exif - 2;
      if ((exif - 2) < 7)
      {
        v6 = &unk_23F4D9308;
        return v6[v5];
      }

      return 4;
    }
  }

  else if (area == 1)
  {
    v5 = exif - 2;
    if ((exif - 2) < 7)
    {
      v6 = &unk_23F4D9230;
      return v6[v5];
    }

    return 1;
  }

  else if (area == 2)
  {
    v5 = exif - 3;
    if ((exif - 3) < 6)
    {
      v6 = &unk_23F4D9268;
      return v6[v5];
    }

    return 2;
  }

  return result;
}

+ (CGVector)normalizeVector:(CGVector)vector
{
  dy = vector.dy;
  dx = vector.dx;
  [self lengthOfVector:?];
  v6 = dy / v5;
  v7 = dx / v5;
  result.dy = v6;
  result.dx = v7;
  return result;
}

+ (double)angleOfVector:(CGVector)vector
{
  result = atan2(vector.dy, vector.dx);
  if (result < 0.0)
  {
    return result + 6.28318531;
  }

  return result;
}

+ (double)angleBetweenPoint:(CGPoint)point andPoint:(CGPoint)andPoint
{
  y = andPoint.y;
  x = andPoint.x;
  [self angleOfVector:{point.x, point.y}];
  memset(&v9, 0, sizeof(v9));
  CGAffineTransformMakeRotation(&v9, -v5);
  [self angleOfVector:{vaddq_f64(*&v9.tx, vmlaq_n_f64(vmulq_n_f64(*&v9.c, y), *&v9.a, x))}];
  return result;
}

+ (CGPoint)pointAtAngle:(double)angle inCircleWithCenter:(CGPoint)center andRadius:(double)radius
{
  y = center.y;
  x = center.x;
  v8 = __sincos_stret(angle);
  v9 = x + v8.__cosval * radius;
  v10 = y + v8.__sinval * radius;
  result.y = v10;
  result.x = v9;
  return result;
}

+ (CGPoint)compareVectorDirectionsFirstVector:(CGPoint)vector secondVector:(CGPoint)secondVector
{
  y = vector.y;
  v5 = -1.0;
  if ((y <= 0.0 || secondVector.y >= 0.0) && (y >= 0.0 || secondVector.y <= 0.0))
  {
    v5 = *(MEMORY[0x277CBF348] + 8);
    v6 = y < 0.0;
    v7 = y > 0.0;
    if (secondVector.y <= 0.0)
    {
      v7 = 0;
    }

    if (secondVector.y >= 0.0)
    {
      v6 = 0;
    }

    if (v7 || v6)
    {
      v5 = 1.0;
    }
  }

  v8 = -1.0;
  if ((vector.x <= 0.0 || secondVector.x >= 0.0) && (vector.x >= 0.0 || secondVector.x <= 0.0))
  {
    v8 = *MEMORY[0x277CBF348];
    v9 = vector.x < 0.0;
    v10 = vector.x > 0.0;
    if (secondVector.x <= 0.0)
    {
      v10 = 0;
    }

    if (secondVector.x >= 0.0)
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

+ (CGRect)expandCGRect:(CGRect)rect toContainPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  height = rect.size.height;
  width = rect.size.width;
  v8 = rect.origin.y;
  v9 = rect.origin.x;
  MinX = CGRectGetMinX(rect);
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

+ (CGRect)effectiveDrawingBoundsForAnnotation:(id)annotation forDisplay:(BOOL)display pageControllerOrNil:(id)nil outScaleFactor:(double *)factor
{
  displayCopy = display;
  annotationCopy = annotation;
  nilCopy = nil;
  v11 = nilCopy;
  if (!displayCopy)
  {
    [annotationCopy integralDrawingBounds];
    v30 = v37;
    v24 = v38;
    v26 = v39;
    v28 = v40;
    v32 = 1.0;
    if (!factor)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  geometryHelper = [nilCopy geometryHelper];
  [geometryHelper annotationLayerFrameForAnnotation:annotationCopy layerIsClipped:0];
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

  if (factor)
  {
LABEL_5:
    *factor = v32;
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

+ (CGAffineTransform)verticalFlipTransformForRect:(SEL)rect
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

+ (CGAffineTransform)horizontalFlipTransformForRect:(SEL)rect
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

+ (BOOL)annotationHasRotation:(id)rotation outAngle:(double *)angle
{
  rotationCopy = rotation;
  if ([rotationCopy conformsToAKRotatableAnnotationProtocol])
  {
    [rotationCopy rotationAngle];
    v7 = fabs(v6) >= 0.0005;
    if (!angle)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v7 = 0;
  v6 = 0.0;
  if (angle)
  {
LABEL_5:
    *angle = v6;
  }

LABEL_6:

  return v7;
}

+ (CGAffineTransform)rotationTransformForRectangularAnnotation:(SEL)annotation hasRotation:(id)rotation
{
  rotationCopy = rotation;
  v8 = MEMORY[0x277CBF2C0];
  v9 = *(MEMORY[0x277CBF2C0] + 16);
  *&retstr->a = *MEMORY[0x277CBF2C0];
  *&retstr->c = v9;
  *&retstr->tx = *(v8 + 32);
  v13 = 0;
  v10 = [AKGeometryHelper annotationHasRotation:rotationCopy outAngle:&v13];
  v11 = v10;
  if (v10)
  {
    [rotationCopy rectangle];
    [AKGeometryHelper rotationTransformForRect:"rotationTransformForRect:withAngle:" withAngle:?];
  }

  if (a5)
  {
    *a5 = v11;
  }

  return result;
}

+ (CGAffineTransform)rotationTransformForRect:(SEL)rect withAngle:(CGRect)angle
{
  height = angle.size.height;
  width = angle.size.width;
  y = angle.origin.y;
  x = angle.origin.x;
  MidX = CGRectGetMidX(angle);
  v15.origin.x = x;
  v15.origin.y = y;
  v15.size.width = width;
  v15.size.height = height;
  MidY = CGRectGetMidY(v15);

  return [a2 rotationTransformAroundPoint:MidX withAngle:{MidY, a5}];
}

+ (CGAffineTransform)rotationTransformAroundPoint:(SEL)point withAngle:(CGPoint)angle
{
  y = angle.y;
  x = angle.x;
  *&retstr->c = 0u;
  *&retstr->tx = 0u;
  *&retstr->a = 0u;
  CGAffineTransformMakeTranslation(retstr, -angle.x, -angle.y);
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

+ (id)_cornersOfRotatedRectangle:(CGRect)rectangle angle:(double)angle
{
  height = rectangle.size.height;
  width = rectangle.size.width;
  y = rectangle.origin.y;
  x = rectangle.origin.x;
  v10 = [MEMORY[0x277CBEB18] arrayWithCapacity:4];
  [self rotationTransformForRect:x withAngle:{y, width, height, angle}];
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

+ (CGRect)boundsOfRotatedRectangle:(CGRect)rectangle angle:(double)angle
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = [self _cornersOfRotatedRectangle:rectangle.origin.x angle:{rectangle.origin.y, rectangle.size.width, rectangle.size.height, angle}];
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

+ (CGRect)convertRect:(CGRect)rect fromViewToScreenPixels:(id)pixels useNativeScale:(BOOL)scale
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  pixelsCopy = pixels;
  window = [pixelsCopy window];
  [pixelsCopy convertRect:window toView:{x, y, width, height}];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;

  screen = [window screen];
  coordinateSpace = [screen coordinateSpace];

  [window convertRect:coordinateSpace toCoordinateSpace:{v13, v15, v17, v19}];
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  screen2 = [window screen];
  v31 = screen2;
  if (scale)
  {
    [screen2 nativeScale];
  }

  else
  {
    [screen2 scale];
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

+ (CGRect)convertRect:(CGRect)rect fromScreenPointsToView:(id)view
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  viewCopy = view;
  window = [viewCopy window];
  screen = [window screen];
  coordinateSpace = [screen coordinateSpace];

  [window convertRect:coordinateSpace fromCoordinateSpace:{x, y, width, height}];
  [viewCopy convertRect:window fromView:?];
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

- (AKGeometryHelper)initWithPageController:(id)controller
{
  controllerCopy = controller;
  v8.receiver = self;
  v8.super_class = AKGeometryHelper;
  v5 = [(AKGeometryHelper *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(AKGeometryHelper *)v5 setPageController:controllerCopy];
  }

  return v6;
}

- (CGRect)annotationLayerFrameForAnnotation:(id)annotation layerIsClipped:(BOOL *)clipped
{
  annotationCopy = annotation;
  pageController = [(AKGeometryHelper *)self pageController];
  [annotationCopy drawingBounds];
  x = v40.origin.x;
  y = v40.origin.y;
  width = v40.size.width;
  height = v40.size.height;
  if (CGRectIsInfinite(v40))
  {
    overlayView = [pageController overlayView];
    [overlayView bounds];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;

    [pageController convertRectFromOverlayToModel:{v14, v16, v18, v20}];
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

  [pageController convertRectFromModelToOverlay:?];
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  if (clipped)
  {
    *clipped = 0;
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

- (CGRect)_clippingFrameForView:(id)view
{
  viewCopy = view;
  window = [viewCopy window];
  [window bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  if ([AKGeometryHelper isUnpresentableRect:v6, v8, v10, v12])
  {
    [viewCopy frame];
  }

  else
  {
    [viewCopy convertRect:0 fromView:{v6, v8, v10, v12}];
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

- (CGRect)adornmentLayerFrameForAnnotation:(id)annotation
{
  annotationCopy = annotation;
  pageController = [(AKGeometryHelper *)self pageController];
  [annotationCopy drawingBounds];
  x = v30.origin.x;
  y = v30.origin.y;
  width = v30.size.width;
  height = v30.size.height;
  if (CGRectIsInfinite(v30))
  {
    overlayView = [pageController overlayView];
    [overlayView bounds];
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

    [pageController convertRectFromModelToOverlay:{x, y, width, height}];
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

- (CGPoint)convertPoint:(CGPoint)point fromModelToLayer:(id)layer
{
  y = point.y;
  x = point.x;
  layerCopy = layer;
  pageController = [(AKGeometryHelper *)self pageController];
  overlayView = [pageController overlayView];
  layer = [overlayView layer];
  [pageController convertPointFromModelToOverlay:{x, y}];
  [layer convertPoint:layerCopy toLayer:?];
  v12 = v11;
  v14 = v13;

  v15 = v12;
  v16 = v14;
  result.y = v16;
  result.x = v15;
  return result;
}

- (CGRect)convertRect:(CGRect)rect fromModelToLayer:(id)layer
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  layerCopy = layer;
  pageController = [(AKGeometryHelper *)self pageController];
  overlayView = [pageController overlayView];
  layer = [overlayView layer];
  [pageController convertRectFromModelToOverlay:{x, y, width, height}];
  [layer convertRect:layerCopy toLayer:?];
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

- (CGPoint)contentAlignedPointForPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
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

- (CGRect)contentAlignedRectForRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
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

- (CGPoint)screenPixelAlignedPointForPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  v6 = objc_opt_class();
  pageController = [(AKGeometryHelper *)self pageController];
  [v6 _alignedPointForPoint:0 alignToContent:pageController alignToScreenUsingPageController:0 orAlignToBitmapContext:0 usingAnnotation:{x, y}];
  v9 = v8;
  v11 = v10;

  v12 = v9;
  v13 = v11;
  result.y = v13;
  result.x = v12;
  return result;
}

- (CGRect)screenPixelAlignedRectForRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v8 = objc_opt_class();
  pageController = [(AKGeometryHelper *)self pageController];
  [v8 _alignedStableRectForRect:0 alignToContent:pageController alignToScreenUsingPageController:0 orAlignToBitmapContext:0 usingAnnotation:{x, y, width, height}];
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

- (CGRect)_smartAlignedRectForRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v8 = objc_opt_class();
  _shouldAlignToContent = [(AKGeometryHelper *)self _shouldAlignToContent];
  if ([(AKGeometryHelper *)self _shouldAlignToScreen])
  {
    pageController = [(AKGeometryHelper *)self pageController];
    [v8 _alignedStableRectForRect:_shouldAlignToContent alignToContent:pageController alignToScreenUsingPageController:0 orAlignToBitmapContext:0 usingAnnotation:{x, y, width, height}];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
  }

  else
  {
    [v8 _alignedStableRectForRect:_shouldAlignToContent alignToContent:0 alignToScreenUsingPageController:0 orAlignToBitmapContext:0 usingAnnotation:{x, y, width, height}];
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

- (CGRect)screenStrokeAlignedRectForRect:(CGRect)rect withStrokeWidth:(double)width
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v10 = objc_opt_class();
  pageController = [(AKGeometryHelper *)self pageController];
  [v10 _strokeAlignedRectForRect:1 withStrokeWidth:pageController shouldAlignStrictlyToScreen:0 alignToScreenUsingPageController:0 orAlignToBitmapContext:x usingAnnotation:{y, width, height, width}];
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

+ (CGRect)renderingStrokeAlignedRectForRect:(CGRect)rect withStrokeWidth:(double)width alignToScreenUsingPageController:(id)controller orAlignToContext:(CGContext *)context usingAnnotation:(id)annotation
{
  [self _strokeAlignedRectForRect:0 withStrokeWidth:controller shouldAlignStrictlyToScreen:context alignToScreenUsingPageController:annotation orAlignToBitmapContext:rect.origin.x usingAnnotation:{rect.origin.y, rect.size.width, rect.size.height, width}];
  result.size.height = v10;
  result.size.width = v9;
  result.origin.y = v8;
  result.origin.x = v7;
  return result;
}

+ (CGRect)renderingAlignedTextRectForRect:(CGRect)rect alignToScreenUsingPageController:(id)controller orAlignToContext:(CGContext *)context usingAnnotation:(id)annotation
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  controllerCopy = controller;
  annotationCopy = annotation;
  if (!annotationCopy || ![AKGeometryHelper annotationHasRotation:annotationCopy outAngle:0])
  {
    [self _alignedStableRectForRect:0 alignToContent:controllerCopy alignToScreenUsingPageController:context orAlignToBitmapContext:annotationCopy usingAnnotation:{x, y, width, height}];
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
  pageController = [(AKGeometryHelper *)self pageController];
  layerPresentationManager = [pageController layerPresentationManager];
  rootLayer = [layerPresentationManager rootLayer];

  return rootLayer;
}

- (BOOL)_shouldAlignToContent
{
  pageController = [(AKGeometryHelper *)self pageController];
  v3 = pageController;
  if (pageController)
  {
    shouldPixelate = [pageController shouldPixelate];
  }

  else
  {
    shouldPixelate = 0;
  }

  return shouldPixelate;
}

- (BOOL)_shouldAlignToScreen
{
  pageController = [(AKGeometryHelper *)self pageController];
  if (pageController)
  {
    if ([(AKGeometryHelper *)self _shouldAlignToContent])
    {
      [pageController currentModelToScreenScaleFactor];
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

+ (CGRect)_alignedStableRectForRect:(CGRect)rect alignToContent:(BOOL)content alignToScreenUsingPageController:(id)controller orAlignToBitmapContext:(CGContext *)context usingAnnotation:(id)annotation
{
  contentCopy = content;
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  annotationCopy = annotation;
  controllerCopy = controller;
  v17 = objc_opt_class();
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = sub_23F47749C;
  v30[3] = &unk_278C7C0B0;
  v30[4] = self;
  [v17 _rectForRect:contentCopy alignToContent:controllerCopy alignToScreenUsingPageController:context orAlignToBitmapContext:annotationCopy usingAnnotation:v30 withAlignmentBlock:{x, y, width, height}];
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

+ (CGRect)_strokeAlignedRectForRect:(CGRect)rect withStrokeWidth:(double)width shouldAlignStrictlyToScreen:(BOOL)screen alignToScreenUsingPageController:(id)controller orAlignToBitmapContext:(CGContext *)context usingAnnotation:(id)annotation
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  controllerCopy = controller;
  annotationCopy = annotation;
  _shouldAlignToContent = 0;
  if (controllerCopy && !screen)
  {
    geometryHelper = [controllerCopy geometryHelper];
    if ([geometryHelper _shouldAlignToScreen])
    {
      _shouldAlignToContent = 0;
    }

    else
    {
      _shouldAlignToContent = [geometryHelper _shouldAlignToContent];
    }
  }

  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = sub_23F477650;
  v33[3] = &unk_278C7C0B0;
  *&v33[4] = width;
  [self _rectForRect:_shouldAlignToContent alignToContent:controllerCopy alignToScreenUsingPageController:context orAlignToBitmapContext:annotationCopy usingAnnotation:v33 withAlignmentBlock:{x, y, width, height}];
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

+ (CGPoint)_alignedPointForPoint:(CGPoint)point alignToContent:(BOOL)content alignToScreenUsingPageController:(id)controller orAlignToBitmapContext:(CGContext *)context usingAnnotation:(id)annotation
{
  contentCopy = content;
  y = point.y;
  x = point.x;
  annotationCopy = annotation;
  controllerCopy = controller;
  v15 = objc_opt_class();
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = sub_23F4777BC;
  v22[3] = &unk_278C7C0B0;
  v22[4] = self;
  [v15 _rectForRect:contentCopy alignToContent:controllerCopy alignToScreenUsingPageController:context orAlignToBitmapContext:annotationCopy usingAnnotation:v22 withAlignmentBlock:{x, y, 0.0, 0.0}];
  v17 = v16;
  v19 = v18;

  v20 = v17;
  v21 = v19;
  result.y = v21;
  result.x = v20;
  return result;
}

+ (CGRect)_rectForRect:(CGRect)rect alignToContent:(BOOL)content alignToScreenUsingPageController:(id)controller orAlignToBitmapContext:(CGContext *)context usingAnnotation:(id)annotation withAlignmentBlock:(id)block
{
  contentCopy = content;
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  controllerCopy = controller;
  annotationCopy = annotation;
  blockCopy = block;
  v20 = blockCopy;
  if (contentCopy)
  {
    v98.origin.x = (blockCopy[2])(blockCopy, x, y, width, height, 1.0);
    v99 = CGRectStandardize(v98);
    x = v99.origin.x;
    y = v99.origin.y;
    width = v99.size.width;
    height = v99.size.height;
  }

  if (controllerCopy)
  {
    overlayView = [controllerCopy overlayView];
    if (!overlayView)
    {
      NSLog(&cfstr_SAttemptingToA.isa, "+[AKGeometryHelper _rectForRect:alignToContent:alignToScreenUsingPageController:orAlignToBitmapContext:usingAnnotation:withAlignmentBlock:]");
      goto LABEL_18;
    }

    v22 = overlayView;
    v23 = *MEMORY[0x277CBF348];
    v24 = *(MEMORY[0x277CBF348] + 8);
    [controllerCopy convertRectFromModelToOverlay:{x, y, width, height}];
    v26 = v25;
    v28 = v27;
    v30 = v29;
    v32 = v31;
    [controllerCopy convertPointFromModelToOverlay:{v23, v24}];
    v34 = v33;
    v36 = v35;
    [controllerCopy convertPointFromModelToOverlay:{1.0, 1.0}];
    v38 = v37;
    v40 = v39;
    superview = [v22 superview];
    [v22 convertRect:superview toView:{v26, v28, v30, v32}];
    v43 = v42;
    v45 = v44;
    v47 = v46;
    v49 = v48;
    [v22 convertPoint:superview toView:{v34, v36}];
    v51 = v50;
    v53 = v52;
    [v22 convertPoint:superview toView:{v38, v40}];
    v55 = v54;
    v57 = v56;
    window = [superview window];
    screen = [window screen];
    coordinateSpace = [screen coordinateSpace];

    [superview convertRect:coordinateSpace toCoordinateSpace:{v43, v45, v47, v49}];
    v62 = v61;
    v64 = v63;
    v66 = v65;
    v68 = v67;
    [superview convertPoint:coordinateSpace toCoordinateSpace:{v51, v53}];
    v70 = v69;
    v72 = v71;
    [superview convertPoint:coordinateSpace toCoordinateSpace:{v55, v57}];
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
    [v22 convertRect:coordinateSpace fromCoordinateSpace:?];
    [controllerCopy convertRectFromOverlayToModel:?];
    x = v78;
    y = v79;
    width = v80;
    height = v81;

    goto LABEL_16;
  }

  if (!context)
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

  if (CGContextGetType() == 4 && CGBitmapContextGetBitsPerPixel(context))
  {
    [self effectiveDrawingBoundsForAnnotation:annotationCopy forDisplay:0 pageControllerOrNil:0 outScaleFactor:0];
    v83 = v82;
    v85 = v84;
    v100.origin.x = x - v82;
    v100.origin.y = y - v84;
    v100.size.width = width;
    v100.size.height = height;
    v101 = CGContextConvertRectToDeviceSpace(context, v100);
    v86 = v101.origin.x;
    v87 = v101.origin.y;
    v88 = v101.size.width;
    v89 = v101.size.height;
    v101.origin.x = 1.0;
    v101.origin.y = 1.0;
    v91 = CGContextConvertSizeToDeviceSpace(context, v101.origin);
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
    v103 = CGContextConvertRectToUserSpace(context, v102);
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