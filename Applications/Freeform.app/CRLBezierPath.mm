@interface CRLBezierPath
+ ($C03DF7238EFD9881545AA7BAA15E5874)lineEndPositioningOnPath:(SEL)path atHead:(id)head headPoint:(BOOL)point tailPoint:(CGPoint)tailPoint headLineEnd:(CGPoint)end tailLineEnd:(id)lineEnd stroke:(id)stroke;
+ ($C03DF7238EFD9881545AA7BAA15E5874)p_makeDefaultPositioning;
+ (CGPoint)p_findPointWithGreatestSlopeFromStartPoint:(CGPoint)point toPointA:(CGPoint)a orPointB:(CGPoint)b;
+ (CRLBezierPath)bezierPathWithCGPath:(CGPath *)path;
+ (CRLBezierPath)bezierPathWithConvexHullFromWrapPath:(id)path;
+ (CRLBezierPath)bezierPathWithConvexHullOfPoints:(CGPoint *)points count:(unint64_t)count;
+ (CRLBezierPath)bezierPathWithOvalInRect:(CGRect)rect;
+ (CRLBezierPath)bezierPathWithRect:(CGRect)rect;
+ (CRLBezierPath)bezierPathWithRoundedRect:(CGRect)rect upperRightRadius:(double)radius lowerRightRadius:(double)rightRadius lowerLeftRadius:(double)leftRadius upperLeftRadius:(double)upperLeftRadius useLegacyCorners:(BOOL)corners keepNoOpElements:(BOOL)elements;
+ (CRLBezierPath)bezierPathWithStart:(CGPoint)start end:(CGPoint)end;
+ (id)appendBezierPaths:(id)paths;
+ (id)bezierPath;
+ (id)createClippedPath:(id)path headPositioning:(id *)positioning tailPositioning:(id *)tailPositioning stroke:(id)stroke;
+ (id)excludeBezierPaths:(id)paths;
+ (id)exteriorOfBezierPath:(id)path;
+ (id)intersectBezierPaths:(id)paths;
+ (id)pathForObjectEraserWithPoint:(CGPoint)point;
+ (id)smoothBezierPath:(id)path withThreshold:(double)threshold;
+ (id)subtractBezierPaths:(id)paths;
+ (id)tracedPathForImage:(CGImage *)image alphaThreshold:(double)threshold pointSpacing:(double)spacing;
+ (id)tracedPathForInstantAlphaBinaryBitmap:(id)bitmap pointSpacing:(double)spacing;
+ (id)uniteBezierPaths:(id)paths;
+ (void)clipRect:(CGRect)rect;
+ (void)fillRect:(CGRect)rect;
+ (void)initialize;
+ (void)strokeLineFromPoint:(CGPoint)point toPoint:(CGPoint)toPoint;
+ (void)strokeRect:(CGRect)rect;
+ (void)subdivideBezierWithFlatness:(double)flatness startPoint:(CGPoint)point controlPoint1:(CGPoint)point1 controlPoint2:(CGPoint)point2 endPoint:(CGPoint)endPoint addLineBlock:(id)block;
- (BOOL)containsClosePathElement;
- (BOOL)containsElementsOtherThanMoveAndClose;
- (BOOL)containsPoint:(CGPoint)point;
- (BOOL)intersectsRect:(CGRect)rect hasFill:(BOOL)fill;
- (BOOL)isCircular;
- (BOOL)isClockwise;
- (BOOL)isCompound;
- (BOOL)isDiamond;
- (BOOL)isEffectivelyClosed;
- (BOOL)isEqual:(id)equal;
- (BOOL)isLineSegment;
- (BOOL)isOpen;
- (BOOL)isRectangular;
- (BOOL)isTriangular;
- (BOOL)isVisuallyEqualToPath:(id)path withThreshold:(double)threshold;
- (CGPath)CGPath;
- (CGPoint)_checkPointForValidity:(CGPoint)validity;
- (CGPoint)currentPoint;
- (CGPoint)gradientAt:(double)at;
- (CGPoint)gradientAt:(double)at fromElement:(int64_t)element;
- (CGPoint)myGradientAt:(double)at;
- (CGPoint)myGradientAt:(double)at fromElement:(int64_t)element;
- (CGPoint)nearestAngleOnPathToLine:(CGPoint)line[2];
- (CGPoint)nearestPointOnPathToLine:(CGPoint)line[2];
- (CGPoint)pointAlongPathAtPercentage:(double)percentage;
- (CGPoint)pointAlongPathAtPercentage:(double)percentage withFlattenedPath:(id)path andLength:(double *)length atStartIndex:(unint64_t *)index;
- (CGPoint)pointAt:(double)at;
- (CGPoint)pointAt:(double)at fromElement:(int64_t)element;
- (CGPoint)rawGradientAt:(double)at fromElement:(int64_t)element;
- (CGPoint)transformedTotalCoordinate:(CGPoint)coordinate betweenElement:(int64_t)element andElement:(int64_t)andElement getElement:(int64_t *)getElement getPercentage:(double *)percentage;
- (CGRect)bounds;
- (CGRect)boundsIncludingCRLStroke:(id)stroke;
- (CGRect)boundsIncludingStroke;
- (CGRect)boundsIncludingStrokeWidth:(double)width joinStyle:(unint64_t)style capStyle:(unint64_t)capStyle miterLimit:(double)limit needsToExtendJoins:(BOOL)joins;
- (CGRect)controlPointBounds;
- (CRLBezierPath)init;
- (CRLBezierPath)initWithCString:(const char *)string;
- (NSArray)rangesOfSubpaths;
- (NSString)inferredAccessibilityDescription;
- (NSString)inferredLocalizedAccessibilityDescriptionPlaceholder;
- (const)cString;
- (double)calculateLengthOfElement:(int64_t)element;
- (double)curvatureAt:(double)at;
- (double)curvatureAt:(double)at fromElement:(int64_t)element;
- (double)distanceToPoint:(CGPoint)point elementIndex:(unint64_t *)index tValue:(double *)value threshold:(double)threshold findClosestMatch:(BOOL)match;
- (double)elementPercentageFromElement:(int64_t)element forOverallPercentage:(double)percentage;
- (double)flattenedArea;
- (double)length;
- (double)lengthOfElement:(int64_t)element;
- (double)lengthToElement:(int64_t)element;
- (double)p_yValueFromXValue:(double)value elementIndex:(int64_t *)index parametricValue:(double *)parametricValue;
- (id)_copyFlattenedPath;
- (id)aliasedPathInContext:(CGContext *)context effectiveStrokeWidth:(float)width;
- (id)arrayOfSubpathsWithEffectivelyEmptySubpathsRemoved:(BOOL)removed;
- (id)bezierPathByFlatteningPathWithFlatness:(double)flatness;
- (id)bezierPathByOffsettingPath:(double)path joinStyle:(unint64_t)style;
- (id)bezierPathByReversingPath;
- (id)chisel;
- (id)copyFromSegment:(int)segment t:(double)t toSegment:(int)toSegment t:(double)a6;
- (id)copyWithPointsInRange:(_NSRange)range countingSubpaths:(unint64_t *)subpaths;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)excludeBezierPath:(id)path;
- (id)intersectBezierPath:(id)path;
- (id)labelForSize:(CGSize)size;
- (id)p_aliasedPathInContext:(CGContext *)context viewScale:(float)scale effectiveStrokeWidth:(float)width;
- (id)p_bezierPathByRemovingRedundantElementAndSubregionsSmallerThanThreshold:(double)threshold;
- (id)p_elementCountForSubpaths;
- (id)p_pathBySplittingAtPointGuaranteedToBeOnPath:(CGPoint)path controlPointDistanceEqual:(BOOL)equal elementIndex:(int64_t)index parametricValue:(double)value;
- (id)p_strokedPathByUsingBrushStroke;
- (id)p_strokedPathByUsingCG;
- (id)pathByCreatingHoleInPathAtPoint:(CGPoint)point withDiameter:(id)diameter andThreshold:(double)threshold updatingPatternOffsetsBySubpath:(id)subpath;
- (id)pathBySplittingAtPointOnPath:(CGPoint)path controlPointDistanceEqual:(BOOL)equal;
- (id)pathByWobblingByUpTo:(double)to subdivisions:(unint64_t)subdivisions;
- (id)pathSplitAtSubpathBoundariesWithSoftElementLimit:(unint64_t)limit hardElementLimit:(unint64_t)elementLimit;
- (id)strokedCopy;
- (id)subtractBezierPath:(id)path;
- (id)uniteWithBezierPath:(id)path;
- (int64_t)elementAtIndex:(int64_t)index allPoints:(CGPoint *)points;
- (int64_t)elementAtIndex:(int64_t)index associatedPoints:(CGPoint *)points;
- (int64_t)elementPercentage:(double *)percentage forOverallPercentage:(double)overallPercentage startingElementIndex:(int64_t)index lengthToStartingElement:(double)element;
- (unint64_t)totalSubpathCountIncludingEffectivelyEmptySubpaths;
- (void)_addPathSegment:(int64_t)segment point:(CGPoint)point;
- (void)_appendArcSegmentWithCenter:(CGPoint)center radius:(double)radius angle1:(double)angle1 angle2:(double)angle2;
- (void)_appendToPath:(id)path skippingInitialMoveIfPossible:(BOOL)possible;
- (void)_deviceClosePath;
- (void)_deviceCurveToPoint:(CGPoint)point controlPoint1:(CGPoint)point1 controlPoint2:(CGPoint)point2 elementLength:(double)length;
- (void)_deviceMoveToPoint:(CGPoint)point;
- (void)_doPath;
- (void)addClip;
- (void)addIntersectionsWithLine:(CGPoint)line[2] to:(id)to;
- (void)addIntersectionsWithPath:(id)path to:(id)to allIntersections:(BOOL)intersections reversed:(BOOL)reversed;
- (void)addPathToContext:(CGContext *)context;
- (void)alignBoundsToOrigin;
- (void)appendBezierPath:(id)path fromSegment:(int64_t)segment t:(double)t toSegment:(int64_t)toSegment t:(double)a7 withoutMove:(BOOL)move;
- (void)appendBezierPath:(id)path fromSegment:(int64_t)segment toSegment:(int64_t)toSegment;
- (void)appendBezierPath:(id)path skippingInitialMoveIfPossible:(BOOL)possible;
- (void)appendBezierPathWithArcFromPoint:(CGPoint)point toPoint:(CGPoint)toPoint radius:(double)radius;
- (void)appendBezierPathWithArcWithCenter:(CGPoint)center radius:(double)radius startAngle:(double)angle endAngle:(double)endAngle clockwise:(BOOL)clockwise;
- (void)appendBezierPathWithArcWithEllipseBounds:(CGRect)bounds startAngle:(double)angle swingAngle:(double)swingAngle angleType:(unint64_t)type startNewPath:(BOOL)path;
- (void)appendBezierPathWithArcWithEllipseBounds:(CGRect)bounds startRadialVector:(CGPoint)vector endRadialVector:(CGPoint)radialVector angleSign:(unint64_t)sign startNewPath:(BOOL)path;
- (void)appendBezierPathWithOvalInRect:(CGRect)rect;
- (void)appendBezierPathWithPoints:(CGPoint *)points count:(int64_t)count;
- (void)appendBezierPathWithRect:(CGRect)rect;
- (void)calculateLengths;
- (void)clearStroke:(CGContext *)stroke;
- (void)convertCloseElementsToLineElements;
- (void)copyPathAttributesTo:(id)to;
- (void)curveToPoint:(CGPoint)point controlPoint1:(CGPoint)point1 controlPoint2:(CGPoint)point2;
- (void)curveToPoint:(CGPoint)point controlPoint:(CGPoint)controlPoint;
- (void)dealloc;
- (void)fill;
- (void)flattenIntoPath:(id)path flatness:(double)flatness;
- (void)getLineDash:(double *)dash count:(int64_t *)count phase:(double *)phase;
- (void)getStartPoint:(CGPoint *)point andEndPoint:(CGPoint *)endPoint;
- (void)iterateOverPathWithPointDistancePerIteration:(double)iteration usingBlock:(id)block;
- (void)iteratePathElementsWithBlock:(id)block;
- (void)lineToPoint:(CGPoint)point;
- (void)p_appendPointsInRange:(_NSRange)range fromBezierPath:(id)path countingSubpaths:(unint64_t *)subpaths;
- (void)p_subdivideBezierWithFlatness:(double)flatness startPoint:(CGPoint)point controlPoint1:(CGPoint)point1 controlPoint2:(CGPoint)point2 endPoint:(CGPoint)endPoint;
- (void)recursiveSubdivideOntoPath:(id)path into:(id)into;
- (void)recursiveSubdivideOntoPath:(id)path withScaling:(id)scaling inElementRange:(_NSRange)range into:(id)into;
- (void)recursiveSubdivideOntoPath:(id)path withScaling:(id)scaling into:(id)into;
- (void)relativeCurveToPoint:(CGPoint)point controlPoint1:(CGPoint)point1 controlPoint2:(CGPoint)point2;
- (void)relativeCurveToPoint:(CGPoint)point controlPoint:(CGPoint)controlPoint;
- (void)relativeLineToPoint:(CGPoint)point;
- (void)relativeMoveToPoint:(CGPoint)point;
- (void)removeAllPoints;
- (void)setAssociatedPoints:(CGPoint *)points atIndex:(int64_t)index;
- (void)setLineDash:(const double *)dash count:(int64_t)count phase:(double)phase;
- (void)stroke;
- (void)takeAttributesFromStroke:(id)stroke;
- (void)transformUsingAffineTransform:(CGAffineTransform *)transform;
@end

@implementation CRLBezierPath

+ (void)initialize
{
  if (objc_opt_class() == self)
  {

    [CRLBezierPath setVersion:524];
  }
}

+ (id)bezierPath
{
  v2 = objc_alloc_init(self);

  return v2;
}

- (CRLBezierPath)init
{
  v8.receiver = self;
  v8.super_class = CRLBezierPath;
  result = [(CRLBezierPath *)&v8 init];
  sfr_bpFlags = result->sfr_bpFlags;
  *&result->sfr_elementCount = 0u;
  *&result->sfr_head = 0u;
  result->sfr_extraSegmentCount = 0;
  result->sfr_extraSegmentMax = 0;
  result->sfr_totalLength = 0.0;
  result->sfr_lastSubpathIndex = -1;
  result->sfr_extraSegments = 0;
  v4 = (((8 * qword_101A347A8) | (qword_101A34798 << 6)) | *&sfr_bpFlags & 0xFFFFF800 | (16 * (qword_101A347A0 & 0xF)) | 7);
  *&result->sfr_lineWidth = qword_1019EDEF8;
  v5 = *&qword_1019EDF08;
  *&result->sfr_miterLimit = qword_1019EDF00;
  result->sfr_flatness = v5;
  result->sfr_dashedLinePattern = 0;
  result->sfr_dashedLineCount = 0;
  result->sfr_dashedLinePhase = 0.0;
  result->sfr_bpFlags = v4;
  origin = CGRectZero.origin;
  size = CGRectZero.size;
  result->sfr_bounds.size = size;
  result->sfr_bounds.origin = origin;
  result->sfr_controlPointBounds.size = size;
  result->sfr_controlPointBounds.origin = origin;
  return result;
}

- (void)_deviceClosePath
{
  if ((*&self->sfr_bpFlags & 0x300) == 0x200)
  {
    sfr_lastSubpathIndex = self->sfr_lastSubpathIndex;
    if (sfr_lastSubpathIndex < 0)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_101329168();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10132917C();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_101327A4C();
      }

      [CRLAssertionHandler handleFailureInFunction:[NSString stringWithUTF8String:"[CRLBezierPath(CRLBezierPathDevicePrimitives) _deviceClosePath]"] file:[NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLBezierPath.m"] lineNumber:2671 isFatal:0 description:"Invalid parameter not satisfying: %{public}s", "sfr_lastSubpathIndex >= 0"];
      sfr_lastSubpathIndex = self->sfr_lastSubpathIndex;
    }

    [(CRLBezierPath *)self _addPathSegment:3 point:*&self->sfr_head[6 * sfr_lastSubpathIndex + 2], *&self->sfr_head[6 * sfr_lastSubpathIndex + 4]];
    v4 = &self->sfr_head[6 * self->sfr_lastSubpathIndex];
    [(CRLBezierPath *)self _addPathSegment:0 point:*&v4[2], *&v4[4]];
    self->sfr_lastSubpathIndex = self->sfr_elementCount - 1;
    self->sfr_bpFlags = (*&self->sfr_bpFlags & 0xFFFFFCFF | 0x100);
  }
}

- (void)dealloc
{
  v3 = [(CRLBezierPath *)self zone];
  NSZoneFree(v3, self->sfr_head);
  NSZoneFree(v3, self->sfr_elementLength);
  sfr_dashedLinePattern = self->sfr_dashedLinePattern;
  if (sfr_dashedLinePattern)
  {
    NSZoneFree(v3, sfr_dashedLinePattern);
  }

  sfr_path = self->sfr_path;
  if (sfr_path)
  {
    CFRelease(sfr_path);
  }

  sfr_extraSegments = self->sfr_extraSegments;
  if (sfr_extraSegments)
  {
    NSZoneFree(v3, sfr_extraSegments);
  }

  v7.receiver = self;
  v7.super_class = CRLBezierPath;
  [(CRLBezierPath *)&v7 dealloc];
}

+ (id)tracedPathForImage:(CGImage *)image alphaThreshold:(double)threshold pointSpacing:(double)spacing
{
  Width = CGImageGetWidth(image);
  Height = CGImageGetHeight(image);
  v9 = +[CRLBezierPath bezierPath];
  IsMask = CGImageIsMask(image);
  AlphaInfo = CGImageGetAlphaInfo(image);
  if (IsMask || AlphaInfo > kCGImageAlphaNoneSkipFirst || ((1 << AlphaInfo) & 0x61) == 0)
  {
    v12 = fminf(Width, 1024.0) / Width;
    v13 = fminf(Height, 1024.0) / Height;
    if (v13 >= v12)
    {
      v14 = v12;
    }

    else
    {
      v14 = v13;
    }

    v15 = ceil(Width * v14) + 2.0;
    v16 = ceil(Height * v14) + 2.0;
    v17 = malloc_type_calloc((v16 * v15), 1uLL, 0x100004077774924uLL);
    v18 = v15;
    v19 = CGBitmapContextCreate(v17, v15, v16, 8uLL, v15, 0, 7u);
    CGContextSetBlendMode(v19, kCGBlendModeCopy);
    v61.size.width = v15 + -2.0;
    v61.size.height = v16 + -2.0;
    v61.origin.x = 1.0;
    v61.origin.y = 1.0;
    CGContextDrawImage(v19, v61, image);
    CGContextFlush(v19);
    CGContextRelease(v19);
    v47 = v14;
    v20 = sub_1004C3240(threshold, 0.0, 1.0);
    v46 = v14;
    v21 = v16 + -1.0;
    if (v21 <= 1.0)
    {
      v59 = 0;
      v60 = 0;
      v58 = &v59;
      __p = 0;
      v56 = 0;
      v57 = 0;
    }

    else
    {
      v22 = v15 + -1.0;
      v23 = 1.0;
      do
      {
        if (v22 > 1.0)
        {
          v24 = &v17[v23 * v18 + 1];
          v25 = 2;
          do
          {
            *v24 = *v24 >= (v20 * 255.0);
            ++v24;
            v26 = v25++;
          }

          while (v22 > v26);
        }

        v23 = v23 + 1.0;
      }

      while (v23 < v21);
      v59 = 0;
      v60 = 0;
      v58 = &v59;
      v27 = 1.0;
      do
      {
        if (v22 > 1.0)
        {
          v28 = &v17[v27 * v18];
          v29 = *v28;
          v30 = 1.0;
          do
          {
            v31 = v29;
            v29 = v28[v30];
            if (v31 != 1 && v29 == 1)
            {
              v50.a = v30 + 0.5;
              v50.b = v27 + 0.5;
              sub_1001024A4(&v58, &v50.a);
            }

            v30 = v30 + 1.0;
          }

          while (v30 < v22);
        }

        v27 = v27 + 1.0;
      }

      while (v27 < v21);
      __p = 0;
      v56 = 0;
      v57 = 0;
      while (v60)
      {
        v54 = v58[2];
        sub_1001025A8(&v58, v54.f64);
        v56 = __p;
        v53 = v54;
        v33 = sub_100120068(v54.f64[0]);
        if (v17[(v32 - 1.0) * v18 + (v33 - 1.0)])
        {
          v34 = v32 + 1.0;
        }

        else
        {
          v34 = v32;
        }

        *&v50.c = 8;
        v50.a = v33 + -1.0;
        v50.b = v34 + -1.0;
        sub_100101898(&__p, &v50);
        v35 = v34;
        v36 = v33;
        do
        {
          v51 = CGPointZero;
          v52 = v51;
          sub_100101308(&v52, &v51, *&v53, *(&v53 + 1), v36, v35);
          v37 = vaddq_f64(v53, v52);
          v38 = v37.f64[1];
          v49 = v37.f64[0];
          v39 = sub_100120068(v37.f64[0]);
          if (v17[v40 * v18 + v39])
          {
            v53 = __PAIR128__(*&v38, *&v49);
            sub_1001025A8(&v58, &v53);
          }

          else
          {
            v41 = v51;
            v42 = sub_100100FA4(v51.x, v51.y);
            v36 = v36 + v41.x;
            v35 = v35 + v41.y;
            v50.a = v36 + -1.0;
            v50.b = v35 + -1.0;
            *&v50.c = v42;
            if (v56 != __p && *(v56 - 2) == v42)
            {
              v56 -= 24;
            }

            sub_100101898(&__p, &v50);
          }
        }

        while (v33 != v36 || v34 != v35);
        if (0xAAAAAAAAAAAAAAABLL * ((v56 - __p) >> 3) >= 2)
        {
          sub_1001015C8(v9, &__p, spacing);
        }
      }
    }

    free(v17);
    if (v47 != 1.0)
    {
      CGAffineTransformMakeScale(&v50, 1.0 / v46, 1.0 / v46);
      [v9 transformUsingAffineTransform:&v50];
    }

    if (__p)
    {
      v56 = __p;
      operator delete(__p);
    }

    sub_1000D87F0(&v58, v59);
  }

  else
  {
    [v9 appendBezierPathWithRect:sub_10011ECB4()];
  }

  if ([v9 elementCount] <= 0)
  {
    v43 = 0;
  }

  else
  {
    v43 = v9;
  }

  v44 = v43;

  return v43;
}

+ (id)tracedPathForInstantAlphaBinaryBitmap:(id)bitmap pointSpacing:(double)spacing
{
  bitmapCopy = bitmap;
  v6 = bitmapCopy[1];
  v7 = bitmapCopy[2];
  v8 = +[CRLBezierPath bezierPath];
  v9 = v8;
  v58 = 0;
  v59 = 0;
  v57 = &v58;
  if ((v7 + 1) <= 1)
  {
    __p = 0;
    v55 = 0;
    v56 = 0;
    goto LABEL_57;
  }

  v48 = v8;
  v10 = 1.0;
  do
  {
    if ((v6 + 1) >= 2)
    {
      v11 = 0;
      v12 = v10;
      v13 = 1.0;
      do
      {
        v14 = bitmapCopy;
        if (v13 >= 1 && v12 >= 1 && v14[1] >= v13 && v14[2] >= v12)
        {
          v15 = (0x80uLL >> ((v13 - 1) & 7)) & *(v14[4] + v14[3] * (v10 - 1) + ((v13 - 1) >> 3));

          if (v15)
          {
            v16 = 1;
          }

          else
          {
            v16 = v11;
          }

          v11 = v15 == 0;
          if (!v16)
          {
            *&v60 = v13 + 0.5;
            *(&v60 + 1) = v10 + 0.5;
            sub_1001024A4(&v57, &v60);
            v11 = 1;
          }
        }

        else
        {

          v11 = 0;
        }

        v13 = v13 + 1.0;
      }

      while (v13 < (v6 + 1));
    }

    v10 = v10 + 1.0;
  }

  while (v10 < (v7 + 1));
  __p = 0;
  v55 = 0;
  v56 = 0;
  v9 = v48;
  while (v59)
  {
    v53 = v57[2];
    sub_1001025A8(&v57, v53.f64);
    v55 = __p;
    v52 = v53;
    v17 = sub_100120068(v53.f64[0]);
    v19 = v18;
    v20 = (v17 - 1.0);
    v21 = bitmapCopy;
    v22 = v21;
    v23 = v20 - 1;
    if (v20 < 1 || ((v24 = (v19 - 1.0), v24 >= 1) ? (v25 = v21[1] < v20) : (v25 = 1), v25 || v21[2] < v24))
    {
    }

    else
    {
      v43 = *(v21[4] + v21[3] * (v24 - 1) + (v23 >> 3));
      v44 = v23 & 7;

      if (((v43 << v44) & 0x80) == 0)
      {
        v19 = v19 + 1.0;
      }
    }

    v61 = 8;
    *&v60 = v17 + -1.0;
    *(&v60 + 1) = v19 + -1.0;
    if (v55 != __p && *(v55 - 2) == 8)
    {
      v55 -= 24;
    }

    sub_100101898(&__p, &v60);
    v26 = v19;
    v27 = v17;
    do
    {
      v50 = CGPointZero;
      v51 = v50;
      sub_100101308(&v51, &v50, v52.f64[0], v52.f64[1], v27, v26);
      v28 = vaddq_f64(v52, v51);
      v29 = v28.f64[1];
      v49 = v28.f64[0];
      v30 = sub_100120068(v28.f64[0]);
      v32 = v31;
      v33 = v30;
      v34 = v22;
      v35 = v33 - 1;
      if (v33 < 1 || ((v36 = v32, v32 >= 1) ? (v37 = v34[1] < v33) : (v37 = 1), v37 || v34[2] < v36))
      {
      }

      else
      {
        v41 = *(v34[4] + v34[3] * (v36 - 1) + (v35 >> 3));
        v42 = v35 & 7;

        if (((v41 << v42) & 0x80) == 0)
        {
          v52.f64[0] = v49;
          v52.f64[1] = v29;
          sub_1001025A8(&v57, v52.f64);
          continue;
        }
      }

      v38 = v50;
      v39 = sub_100100FA4(v50.x, v50.y);
      v27 = v27 + v38.x;
      v26 = v26 + v38.y;
      *&v60 = v27 + -1.0;
      *(&v60 + 1) = v26 + -1.0;
      v61 = v39;
      if (v55 != __p && *(v55 - 2) == v39)
      {
        v55 -= 24;
      }

      sub_100101898(&__p, &v60);
    }

    while (v17 != v27 || v19 != v26);
    if (0xAAAAAAAAAAAAAAABLL * ((v55 - __p) >> 3) >= 2)
    {
      sub_1001015C8(v48, &__p, spacing);
    }
  }

LABEL_57:
  if ([v9 elementCount] <= 0)
  {
    v45 = 0;
  }

  else
  {
    v45 = v9;
  }

  v46 = v45;
  if (__p)
  {
    v55 = __p;
    operator delete(__p);
  }

  sub_1000D87F0(&v57, v58);

  return v46;
}

+ (CRLBezierPath)bezierPathWithStart:(CGPoint)start end:(CGPoint)end
{
  y = end.y;
  x = end.x;
  v6 = start.y;
  v7 = start.x;
  bezierPath = [self bezierPath];
  [(CRLBezierPath *)bezierPath moveToPoint:v7, v6];
  [(CRLBezierPath *)bezierPath lineToPoint:x, y];
  return bezierPath;
}

+ (CRLBezierPath)bezierPathWithRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  bezierPath = [self bezierPath];
  [(CRLBezierPath *)bezierPath appendBezierPathWithRect:x, y, width, height];
  return bezierPath;
}

+ (CRLBezierPath)bezierPathWithOvalInRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  bezierPath = [self bezierPath];
  [(CRLBezierPath *)bezierPath appendBezierPathWithOvalInRect:x, y, width, height];
  return bezierPath;
}

+ (CRLBezierPath)bezierPathWithCGPath:(CGPath *)path
{
  bezierPath = [self bezierPath];
  CGPathApply(path, bezierPath, sub_10007332C);
  if (bezierPath->sfr_path)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101327ACC();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101327AE0();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101327A4C();
    }

    +[CRLAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](CRLAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[CRLBezierPath bezierPathWithCGPath:]"), [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLBezierPath.m"], 303, 0, "expected nil value for '%{public}s'", "result->sfr_path");
  }

  bezierPath->sfr_path = CGPathCreateCopy(path);
  return bezierPath;
}

+ (void)fillRect:(CGRect)rect
{
  if (rect.size.width >= 0.0)
  {
    height = rect.size.height;
    if (rect.size.height >= 0.0)
    {
      width = rect.size.width;
      y = rect.origin.y;
      x = rect.origin.x;
      CurrentContext = UIGraphicsGetCurrentContext();
      v8 = x;
      v9 = y;
      v10 = width;
      v11 = height;

      CGContextFillRect(CurrentContext, *&v8);
    }
  }
}

+ (void)strokeRect:(CGRect)rect
{
  if (rect.size.width >= 0.0)
  {
    height = rect.size.height;
    if (rect.size.height >= 0.0)
    {
      width = rect.size.width;
      y = rect.origin.y;
      x = rect.origin.x;
      CurrentContext = UIGraphicsGetCurrentContext();
      CGContextSaveGState(CurrentContext);
      if (qword_101A34798 == 2)
      {
        v8 = kCGLineCapSquare;
      }

      else
      {
        v8 = qword_101A34798 == 1;
      }

      CGContextSetLineCap(CurrentContext, v8);
      if (qword_101A347A0 == 2)
      {
        v9 = kCGLineJoinBevel;
      }

      else
      {
        v9 = qword_101A347A0 == 1;
      }

      CGContextSetLineJoin(CurrentContext, v9);
      sub_10019FE94(CurrentContext, *&qword_1019EDEF8);
      CGContextSetMiterLimit(CurrentContext, *&qword_1019EDF00);
      CGContextBeginPath(CurrentContext);
      v19.origin.x = x;
      v19.origin.y = y;
      v19.size.width = width;
      v19.size.height = height;
      MinX = CGRectGetMinX(v19);
      v20.origin.x = x;
      v20.origin.y = y;
      v20.size.width = width;
      v20.size.height = height;
      MinY = CGRectGetMinY(v20);
      CGContextMoveToPoint(CurrentContext, MinX, MinY);
      v21.origin.x = x;
      v21.origin.y = y;
      v21.size.width = width;
      v21.size.height = height;
      MaxX = CGRectGetMaxX(v21);
      v22.origin.x = x;
      v22.origin.y = y;
      v22.size.width = width;
      v22.size.height = height;
      v13 = CGRectGetMinY(v22);
      CGContextAddLineToPoint(CurrentContext, MaxX, v13);
      v23.origin.x = x;
      v23.origin.y = y;
      v23.size.width = width;
      v23.size.height = height;
      v14 = CGRectGetMaxX(v23);
      v24.origin.x = x;
      v24.origin.y = y;
      v24.size.width = width;
      v24.size.height = height;
      MaxY = CGRectGetMaxY(v24);
      CGContextAddLineToPoint(CurrentContext, v14, MaxY);
      v25.origin.x = x;
      v25.origin.y = y;
      v25.size.width = width;
      v25.size.height = height;
      v16 = CGRectGetMinX(v25);
      v26.origin.x = x;
      v26.origin.y = y;
      v26.size.width = width;
      v26.size.height = height;
      v17 = CGRectGetMaxY(v26);
      CGContextAddLineToPoint(CurrentContext, v16, v17);
      CGContextClosePath(CurrentContext);
      CGContextStrokePath(CurrentContext);

      CGContextRestoreGState(CurrentContext);
    }
  }
}

+ (void)clipRect:(CGRect)rect
{
  if (rect.size.width >= 0.0)
  {
    height = rect.size.height;
    if (rect.size.height >= 0.0)
    {
      width = rect.size.width;
      y = rect.origin.y;
      x = rect.origin.x;
      CurrentContext = UIGraphicsGetCurrentContext();
      v8 = x;
      v9 = y;
      v10 = width;
      v11 = height;

      CGContextClipToRect(CurrentContext, *&v8);
    }
  }
}

+ (void)strokeLineFromPoint:(CGPoint)point toPoint:(CGPoint)toPoint
{
  y = toPoint.y;
  x = toPoint.x;
  v6 = point.y;
  v7 = point.x;
  CurrentContext = UIGraphicsGetCurrentContext();
  CGContextSaveGState(CurrentContext);
  if (qword_101A34798 == 2)
  {
    v9 = kCGLineCapSquare;
  }

  else
  {
    v9 = qword_101A34798 == 1;
  }

  CGContextSetLineCap(CurrentContext, v9);
  if (qword_101A347A0 == 2)
  {
    v10 = kCGLineJoinBevel;
  }

  else
  {
    v10 = qword_101A347A0 == 1;
  }

  CGContextSetLineJoin(CurrentContext, v10);
  sub_10019FE94(CurrentContext, *&qword_1019EDEF8);
  CGContextBeginPath(CurrentContext);
  CGContextMoveToPoint(CurrentContext, v7, v6);
  CGContextAddLineToPoint(CurrentContext, x, y);
  CGContextStrokePath(CurrentContext);

  CGContextRestoreGState(CurrentContext);
}

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
  {
LABEL_16:
    LOBYTE(v5) = 1;
    return v5;
  }

  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = sub_100013F00(v6, equal);
    elementCount = [(CRLBezierPath *)self elementCount];
    if (elementCount != [v7 elementCount])
    {
LABEL_17:
      LOBYTE(v5) = 0;
      return v5;
    }

    if (elementCount >= 1)
    {
      v9 = 0;
      while (1)
      {
        v10 = [(CRLBezierPath *)self elementAtIndex:v9 associatedPoints:&v17];
        if (v10 != [v7 elementAtIndex:v9 associatedPoints:&v15])
        {
          goto LABEL_17;
        }

        if (v10 >= 2)
        {
          if (v10 == 2)
          {
            v11 = 3;
            v12 = &v18;
            v13 = &v16;
            while (sub_10011ECC8(*(v12 - 1), *v12, *(v13 - 1), *v13))
            {
              v13 += 2;
              v12 += 2;
              if (!--v11)
              {
                goto LABEL_14;
              }
            }

            goto LABEL_17;
          }
        }

        else if (!sub_10011ECC8(v17, v18, v15, v16))
        {
          goto LABEL_17;
        }

LABEL_14:
        ++v9;
        LOBYTE(v5) = 1;
        if (v9 == elementCount)
        {
          return v5;
        }
      }
    }

    goto LABEL_16;
  }

  return v5;
}

- (void)copyPathAttributesTo:(id)to
{
  [to setWindingRule:{-[CRLBezierPath windingRule](self, "windingRule")}];
  [to setLineCapStyle:{-[CRLBezierPath lineCapStyle](self, "lineCapStyle")}];
  [to setLineJoinStyle:{-[CRLBezierPath lineJoinStyle](self, "lineJoinStyle")}];
  [(CRLBezierPath *)self lineWidth];
  [to setLineWidth:?];
  [(CRLBezierPath *)self miterLimit];
  [to setMiterLimit:?];
  [(CRLBezierPath *)self flatness];
  [to setFlatness:?];
  if (self->sfr_dashedLinePattern)
  {
    sfr_dashedLinePhase = self->sfr_dashedLinePhase;

    [to setLineDash:sfr_dashedLinePhase count:? phase:?];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  *(v5 + 1) = self->sfr_elementCount;
  *(v5 + 2) = self->sfr_elementMax;
  *(v5 + 5) = *&self->sfr_totalLength;
  *(v5 + 6) = self->sfr_lastSubpathIndex;
  *(v5 + 8) = *&self->sfr_lineWidth;
  size = self->sfr_bounds.size;
  *(v5 + 72) = self->sfr_bounds.origin;
  *(v5 + 88) = size;
  v8 = self->sfr_controlPointBounds.size;
  *(v5 + 104) = self->sfr_controlPointBounds.origin;
  *(v5 + 120) = v8;
  *(v5 + 17) = *&self->sfr_miterLimit;
  *(v5 + 18) = *&self->sfr_flatness;
  *(v5 + 23) = self->sfr_extraSegmentCount;
  *(v5 + 24) = self->sfr_extraSegmentMax;
  *(v5 + 50) = self->sfr_bpFlags;
  if (self->sfr_head)
  {
    if (*(v5 + 3))
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_101327BB0();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_101327BC4();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_101327A4C();
      }

      [CRLAssertionHandler handleFailureInFunction:[NSString stringWithUTF8String:"[CRLBezierPath copyWithZone:]"] file:[NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLBezierPath.m"] lineNumber:555 isFatal:0 description:"expected nil value for '%{public}s'", "copiedPath->sfr_head"];
    }

    v9 = NSZoneMalloc(zone, 24 * self->sfr_elementMax);
    v6[3] = v9;
    memcpy(v9, self->sfr_head, 24 * self->sfr_elementMax);
  }

  if (self->sfr_elementLength)
  {
    if (v6[4])
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_101327C94();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_101327CBC();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_101327A4C();
      }

      [CRLAssertionHandler handleFailureInFunction:[NSString stringWithUTF8String:"[CRLBezierPath copyWithZone:]"] file:[NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLBezierPath.m"] lineNumber:561 isFatal:0 description:"expected nil value for '%{public}s'", "copiedPath->sfr_elementLength"];
    }

    v10 = NSZoneMalloc(zone, 8 * self->sfr_elementMax);
    v6[4] = v10;
    memcpy(v10, self->sfr_elementLength, 8 * self->sfr_elementMax);
  }

  if (self->sfr_extraSegments)
  {
    if (v6[7])
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_101327D8C();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_101327DB4();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_101327A4C();
      }

      [CRLAssertionHandler handleFailureInFunction:[NSString stringWithUTF8String:"[CRLBezierPath copyWithZone:]"] file:[NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLBezierPath.m"] lineNumber:567 isFatal:0 description:"expected nil value for '%{public}s'", "copiedPath->sfr_extraSegments"];
    }

    v11 = NSZoneMalloc(zone, 32 * self->sfr_extraSegmentMax);
    v6[7] = v11;
    memcpy(v11, self->sfr_extraSegments, 32 * self->sfr_extraSegmentMax);
  }

  if (v6[22])
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101327E84();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101327EAC();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101327A4C();
    }

    [CRLAssertionHandler handleFailureInFunction:[NSString stringWithUTF8String:"[CRLBezierPath copyWithZone:]"] file:[NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLBezierPath.m"] lineNumber:572 isFatal:0 description:"expected nil value for '%{public}s'", "copiedPath->sfr_path"];
  }

  v6[22] = CGPathCreateCopy(self->sfr_path);
  [v6 setLineDash:self->sfr_dashedLinePattern count:self->sfr_dashedLineCount phase:self->sfr_dashedLinePhase];
  return v6;
}

- (void)lineToPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  if ([(CRLBezierPath *)self isEmpty])
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101327F7C();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101327F90();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101327A4C();
    }

    sub_10028E070("Fatal Assertion failure: %{public}s %{public}s:%d Unable to add a line when there is no current point.", v6, v7, v8, v9, v10, v11, v12, "[CRLBezierPath lineToPoint:]");
    v13 = [CRLAssertionHandler handleFailureInFunction:[NSString stringWithUTF8String:"[CRLBezierPath lineToPoint:]"] file:[NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLBezierPath.m"] lineNumber:587 isFatal:1 description:"Unable to add a line when there is no current point."];
    SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v13, v14);
    abort();
  }

  [(CRLBezierPath *)self _deviceLineToPoint:x, y];
}

- (void)curveToPoint:(CGPoint)point controlPoint:(CGPoint)controlPoint
{
  y = controlPoint.y;
  x = controlPoint.x;
  v6 = point.y;
  v7 = point.x;
  if ([(CRLBezierPath *)self isEmpty])
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101328054();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101328068();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101327A4C();
    }

    sub_10028E070("Fatal Assertion failure: %{public}s %{public}s:%d Unable to add a curve when there is no current point.", v11, v12, v13, v14, v15, v16, v17, "[CRLBezierPath curveToPoint:controlPoint:]");
    v18 = [CRLAssertionHandler handleFailureInFunction:[NSString stringWithUTF8String:"[CRLBezierPath curveToPoint:controlPoint:]"] file:[NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLBezierPath.m"] lineNumber:593 isFatal:1 description:"Unable to add a curve when there is no current point."];
    SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v18, v19);
    abort();
  }

  [(CRLBezierPath *)self currentPoint];

  [(CRLBezierPath *)self _deviceCurveToPoint:v7 controlPoint1:v6 controlPoint2:v9 * 0.333333333 + x * 0.666666667 elementLength:v10 * 0.333333333 + y * 0.666666667, v7 * 0.333333333 + x * 0.666666667, v6 * 0.333333333 + y * 0.666666667, NAN];
}

- (void)curveToPoint:(CGPoint)point controlPoint1:(CGPoint)point1 controlPoint2:(CGPoint)point2
{
  y = point2.y;
  x = point2.x;
  v7 = point1.y;
  v8 = point1.x;
  v9 = point.y;
  v10 = point.x;
  if ([(CRLBezierPath *)self isEmpty])
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10132812C();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101328140();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101327A4C();
    }

    sub_10028E070("Fatal Assertion failure: %{public}s %{public}s:%d Unable to add a curve when there is no current point.", v12, v13, v14, v15, v16, v17, v18, "[CRLBezierPath curveToPoint:controlPoint1:controlPoint2:]");
    v19 = [CRLAssertionHandler handleFailureInFunction:[NSString stringWithUTF8String:"[CRLBezierPath curveToPoint:controlPoint1:controlPoint2:]"] file:[NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLBezierPath.m"] lineNumber:607 isFatal:1 description:"Unable to add a curve when there is no current point."];
    SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v19, v20);
    abort();
  }

  [(CRLBezierPath *)self _deviceCurveToPoint:v10 controlPoint1:v9 controlPoint2:v8 elementLength:v7, x, y, NAN];
}

- (void)removeAllPoints
{
  sfr_bpFlags = (*&self->sfr_bpFlags & 0xFFFFFCFF);
  self->sfr_bpFlags = sfr_bpFlags;
  self->sfr_elementCount = 0;
  self->sfr_extraSegmentCount = 0;
  self->sfr_lastSubpathIndex = -1;
  sfr_path = self->sfr_path;
  if (sfr_path)
  {
    CFRelease(sfr_path);
    self->sfr_path = 0;
    sfr_bpFlags = self->sfr_bpFlags;
  }

  self->sfr_bpFlags = (*&sfr_bpFlags | 3);
}

- (void)relativeMoveToPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  [(CRLBezierPath *)self currentPoint];
  v7 = sub_10011F334(x, y, v6);

  [(CRLBezierPath *)self moveToPoint:v7];
}

- (void)relativeLineToPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  [(CRLBezierPath *)self currentPoint];
  v7 = sub_10011F334(x, y, v6);

  [(CRLBezierPath *)self lineToPoint:v7];
}

- (void)relativeCurveToPoint:(CGPoint)point controlPoint:(CGPoint)controlPoint
{
  y = controlPoint.y;
  x = controlPoint.x;
  v6 = point.y;
  v7 = point.x;
  [(CRLBezierPath *)self currentPoint];
  v10 = v9;
  v11 = sub_10011F334(v7, v6, v9);
  v13 = v12;
  v15 = sub_10011F334(x, y, v10);

  [(CRLBezierPath *)self curveToPoint:v11 controlPoint:v13, v15, v14];
}

- (void)relativeCurveToPoint:(CGPoint)point controlPoint1:(CGPoint)point1 controlPoint2:(CGPoint)point2
{
  y = point2.y;
  x = point2.x;
  v7 = point1.y;
  v8 = point1.x;
  v9 = point.y;
  v10 = point.x;
  [(CRLBezierPath *)self currentPoint];
  v13 = v12;
  v14 = sub_10011F334(v10, v9, v12);
  v16 = v15;
  v17 = sub_10011F334(v8, v7, v13);
  v19 = v18;
  v21 = sub_10011F334(x, y, v13);

  [(CRLBezierPath *)self curveToPoint:v14 controlPoint1:v16 controlPoint2:v17, v19, v21, v20];
}

- (void)setLineDash:(const double *)dash count:(int64_t)count phase:(double)phase
{
  p_sfr_dashedLinePattern = &self->sfr_dashedLinePattern;
  sfr_dashedLinePattern = self->sfr_dashedLinePattern;
  if (dash)
  {
    dashCopy = dash;
    v11 = [(CRLBezierPath *)self zone];
    if (sfr_dashedLinePattern)
    {
      v12 = NSZoneRealloc(v11, *p_sfr_dashedLinePattern, 8 * count);
    }

    else
    {
      v12 = NSZoneMalloc(v11, 8 * count);
    }

    self->sfr_dashedLinePattern = v12;
    self->sfr_dashedLineCount = count;
    self->sfr_dashedLinePhase = phase;
    if (count >= 1)
    {
      do
      {
        v13 = *dashCopy++;
        *v12++ = v13;
        --count;
      }

      while (count);
    }
  }

  else if (sfr_dashedLinePattern)
  {
    NSZoneFree([(CRLBezierPath *)self zone], self->sfr_dashedLinePattern);
    *p_sfr_dashedLinePattern = 0;
    p_sfr_dashedLinePattern[1] = 0;
    p_sfr_dashedLinePattern[2] = 0;
  }
}

- (void)getLineDash:(double *)dash count:(int64_t *)count phase:(double *)phase
{
  if (count)
  {
    *count = self->sfr_dashedLineCount;
  }

  if (phase)
  {
    *phase = self->sfr_dashedLinePhase;
  }

  if (dash)
  {
    sfr_dashedLinePattern = self->sfr_dashedLinePattern;
    if (sfr_dashedLinePattern)
    {
      for (i = self->sfr_dashedLineCount; i; --i)
      {
        v7 = *sfr_dashedLinePattern++;
        *dash++ = v7;
      }
    }
  }
}

- (CGPoint)_checkPointForValidity:(CGPoint)validity
{
  y = validity.y;
  x = validity.x;
  v6 = [(CRLBezierPath *)self _isValid:?];
  v7 = [(CRLBezierPath *)self _isValid:y];
  if (![(CRLBezierPath *)self _isValid:x]|| ![(CRLBezierPath *)self _isValid:y])
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101328204();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101328218();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101327A4C();
    }

    [CRLAssertionHandler handleFailureInFunction:[NSString stringWithUTF8String:"[CRLBezierPath _checkPointForValidity:]"] file:[NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLBezierPath.m"] lineNumber:752 isFatal:0 description:"CRLBezierPath received a NaN or inf value. Please investigate"];
  }

  v8 = 0.0;
  if (v7)
  {
    v9 = y;
  }

  else
  {
    v9 = 0.0;
  }

  if (v6)
  {
    v8 = x;
  }

  result.y = v9;
  result.x = v8;
  return result;
}

- (void)_doPath
{
  if (!self->sfr_path && ![(CRLBezierPath *)self isEmpty])
  {
    Mutable = CGPathCreateMutable();
    sfr_elementCount = self->sfr_elementCount;
    if (sfr_elementCount >= 1)
    {
      sfr_head = self->sfr_head;
      v6 = &sfr_head[6 * sfr_elementCount];
      sfr_extraSegments = self->sfr_extraSegments;
      do
      {
        v8 = *sfr_head & 0xFLL;
        if (v8 > 1)
        {
          if (v8 == 2)
          {
            [(CRLBezierPath *)self _checkPointForValidity:*&sfr_head[2], *&sfr_head[4]];
            v14 = v13;
            v16 = v15;
            [(CRLBezierPath *)self _checkPointForValidity:*sfr_extraSegments, sfr_extraSegments[1]];
            v18 = v17;
            v20 = v19;
            [(CRLBezierPath *)self _checkPointForValidity:sfr_extraSegments[2], sfr_extraSegments[3]];
            CGPathAddCurveToPoint(Mutable, 0, v18, v20, v21, v22, v14, v16);
            sfr_extraSegments += 4;
          }

          else if (v8 == 3)
          {
            CGPathCloseSubpath(Mutable);
          }
        }

        else if (v8)
        {
          if (v8 == 1)
          {
            [(CRLBezierPath *)self _checkPointForValidity:*&sfr_head[2], *&sfr_head[4]];
            CGPathAddLineToPoint(Mutable, 0, v9, v10);
          }
        }

        else
        {
          [(CRLBezierPath *)self _checkPointForValidity:*&sfr_head[2], *&sfr_head[4]];
          CGPathMoveToPoint(Mutable, 0, v11, v12);
        }

        sfr_head += 6;
      }

      while (sfr_head < v6);
    }

    self->sfr_path = Mutable;
  }
}

- (void)stroke
{
  CurrentContext = UIGraphicsGetCurrentContext();
  CGContextSaveGState(CurrentContext);
  lineCapStyle = [(CRLBezierPath *)self lineCapStyle];
  if (lineCapStyle == 2)
  {
    v5 = kCGLineCapSquare;
  }

  else
  {
    v5 = lineCapStyle == 1;
  }

  CGContextSetLineCap(CurrentContext, v5);
  lineJoinStyle = [(CRLBezierPath *)self lineJoinStyle];
  if (lineJoinStyle == 2)
  {
    v7 = kCGLineJoinBevel;
  }

  else
  {
    v7 = lineJoinStyle == 1;
  }

  CGContextSetLineJoin(CurrentContext, v7);
  sub_10019FE94(CurrentContext, self->sfr_lineWidth);
  CGContextSetMiterLimit(CurrentContext, self->sfr_miterLimit);
  CGContextSetFlatness(CurrentContext, self->sfr_flatness);
  sfr_dashedLinePattern = self->sfr_dashedLinePattern;
  if (sfr_dashedLinePattern)
  {
    CGContextSetLineDash(CurrentContext, self->sfr_dashedLinePhase, sfr_dashedLinePattern, self->sfr_dashedLineCount);
  }

  sfr_elementCount = self->sfr_elementCount;
  if (sfr_elementCount >= 1)
  {
    sfr_head = self->sfr_head;
    v11 = &sfr_head[6 * sfr_elementCount];
    sfr_extraSegments = self->sfr_extraSegments;
    do
    {
      v13 = *sfr_head & 0xF;
      if (v13 > 1)
      {
        if (v13 == 2)
        {
          CGContextAddCurveToPoint(CurrentContext, *sfr_extraSegments, sfr_extraSegments[1], sfr_extraSegments[2], sfr_extraSegments[3], *&sfr_head[2], *&sfr_head[4]);
          sfr_extraSegments += 4;
        }

        else if (v13 == 3)
        {
          CGContextClosePath(CurrentContext);
        }
      }

      else if (v13)
      {
        if (v13 == 1)
        {
          CGContextAddLineToPoint(CurrentContext, *&sfr_head[2], *&sfr_head[4]);
        }
      }

      else
      {
        CGContextMoveToPoint(CurrentContext, *&sfr_head[2], *&sfr_head[4]);
      }

      sfr_head += 6;
    }

    while (sfr_head < v11);
  }

  CGContextStrokePath(CurrentContext);

  CGContextRestoreGState(CurrentContext);
}

- (void)fill
{
  CurrentContext = UIGraphicsGetCurrentContext();
  CGContextSaveGState(CurrentContext);
  CGContextSetFlatness(CurrentContext, self->sfr_flatness);
  sfr_elementCount = self->sfr_elementCount;
  if (sfr_elementCount >= 1)
  {
    sfr_head = self->sfr_head;
    v6 = &sfr_head[6 * sfr_elementCount];
    sfr_extraSegments = self->sfr_extraSegments;
    do
    {
      v8 = *sfr_head & 0xF;
      if (v8 > 1)
      {
        if (v8 == 2)
        {
          CGContextAddCurveToPoint(CurrentContext, *sfr_extraSegments, sfr_extraSegments[1], sfr_extraSegments[2], sfr_extraSegments[3], *&sfr_head[2], *&sfr_head[4]);
          sfr_extraSegments += 4;
        }

        else if (v8 == 3)
        {
          CGContextClosePath(CurrentContext);
        }
      }

      else if (v8)
      {
        if (v8 == 1)
        {
          CGContextAddLineToPoint(CurrentContext, *&sfr_head[2], *&sfr_head[4]);
        }
      }

      else
      {
        CGContextMoveToPoint(CurrentContext, *&sfr_head[2], *&sfr_head[4]);
      }

      sfr_head += 6;
    }

    while (sfr_head < v6);
  }

  if ([(CRLBezierPath *)self windingRule])
  {
    CGContextEOFillPath(CurrentContext);
  }

  else
  {
    CGContextFillPath(CurrentContext);
  }

  CGContextRestoreGState(CurrentContext);
}

- (void)addClip
{
  CurrentContext = UIGraphicsGetCurrentContext();
  CGContextSetFlatness(CurrentContext, self->sfr_flatness);
  CGContextBeginPath(CurrentContext);
  sfr_elementCount = self->sfr_elementCount;
  if (sfr_elementCount >= 1)
  {
    sfr_head = self->sfr_head;
    v6 = &sfr_head[6 * sfr_elementCount];
    sfr_extraSegments = self->sfr_extraSegments;
    do
    {
      v8 = *sfr_head & 0xF;
      if (v8 > 1)
      {
        if (v8 == 2)
        {
          CGContextAddCurveToPoint(CurrentContext, *sfr_extraSegments, sfr_extraSegments[1], sfr_extraSegments[2], sfr_extraSegments[3], *&sfr_head[2], *&sfr_head[4]);
          sfr_extraSegments += 4;
        }

        else if (v8 == 3)
        {
          CGContextClosePath(CurrentContext);
        }
      }

      else if (v8)
      {
        if (v8 == 1)
        {
          CGContextAddLineToPoint(CurrentContext, *&sfr_head[2], *&sfr_head[4]);
        }
      }

      else
      {
        CGContextMoveToPoint(CurrentContext, *&sfr_head[2], *&sfr_head[4]);
      }

      sfr_head += 6;
    }

    while (sfr_head < v6);
  }

  if ([(CRLBezierPath *)self windingRule])
  {
    CGContextEOClip(CurrentContext);
  }

  else
  {
    CGContextClip(CurrentContext);
  }

  CGContextBeginPath(CurrentContext);
}

- (void)p_subdivideBezierWithFlatness:(double)flatness startPoint:(CGPoint)point controlPoint1:(CGPoint)point1 controlPoint2:(CGPoint)point2 endPoint:(CGPoint)endPoint
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001A208C;
  v7[3] = &unk_101843EC0;
  v7[4] = self;
  [CRLBezierPath subdivideBezierWithFlatness:v7 startPoint:flatness controlPoint1:point.x controlPoint2:point.y endPoint:point1.x addLineBlock:point1.y, point2.x, point2.y, *&endPoint.x, *&endPoint.y];
}

+ (void)subdivideBezierWithFlatness:(double)flatness startPoint:(CGPoint)point controlPoint1:(CGPoint)point1 controlPoint2:(CGPoint)point2 endPoint:(CGPoint)endPoint addLineBlock:(id)block
{
  pointCopy = point;
  point.x = endPoint.x;
  v8.n128_u64[0] = *&endPoint.y;
  y = point1.y;
  _Q2 = vsubq_f64(point1, pointCopy);
  v13 = point2.y;
  pointCopy2 = point;
  v39 = v8;
  v14 = endPoint.y;
  v15 = vsubq_f64(point2, point1);
  v16 = vsubq_f64(v15, _Q2);
  v17 = vsubq_f64(vsubq_f64(point, point2), v15);
  v18 = vzip2q_s64(v16, v17);
  v19 = vzip1q_s64(v16, v17);
  v20 = vmlaq_f64(vmulq_f64(v18, v18), v19, v19);
  if (v20.f64[0] <= v20.f64[1])
  {
    v20.f64[0] = v20.f64[1];
  }

  v21 = flatness * flatness;
  v22 = v20.f64[0] * 9.0 * 0.0625;
  if (v22 > v21)
  {
    v23 = vsubq_f64(v17, v16);
    __asm
    {
      FMOV            V5.2D, #3.0
      FMOV            V6.2D, #6.0
    }

    v30 = vmulq_f64(v23, _Q6);
    v31 = vmlaq_f64(v23, _Q5, vaddq_f64(_Q2, v16));
    v32 = vmulq_f64(vaddq_f64(v16, v23), _Q6);
    v33 = 1;
    __asm
    {
      FMOV            V2.2D, #0.125
      FMOV            V3.2D, #0.25
      FMOV            V4.2D, #0.5
    }

    do
    {
      v30 = vmulq_f64(v30, _Q2);
      v32 = vsubq_f64(vmulq_f64(v32, _Q3), v30);
      v31 = vsubq_f64(vmulq_f64(v31, _Q4), vmulq_f64(v32, _Q4));
      v33 *= 2;
      v22 = v22 * 0.0625;
    }

    while (v22 > v21 && v33 <= 0x10000);
    if (v33 >= 2)
    {
      for (i = 1; i != v33; ++i)
      {
        v42 = v30;
        v43 = vaddq_f64(pointCopy, v31);
        v40 = vaddq_f64(v30, v32);
        v41 = vaddq_f64(v31, v32);
        (*(block + 2))(block, a2, v43.f64[0], v43.f64[1], i / v33);
        v32 = v40;
        v31 = v41;
        v30 = v42;
        pointCopy = v43;
      }
    }
  }

  v37 = *(block + 2);
  _Q2.n128_u64[0] = 1.0;

  v37(block, pointCopy2, v39, _Q2);
}

- (void)flattenIntoPath:(id)path flatness:(double)flatness
{
  sfr_elementCount = self->sfr_elementCount;
  if (sfr_elementCount >= 1)
  {
    sfr_head = self->sfr_head;
    v8 = &sfr_head[6 * sfr_elementCount];
    sfr_extraSegments = self->sfr_extraSegments;
    do
    {
      v10 = *sfr_head & 0xF;
      if (v10 > 1)
      {
        if (v10 == 2)
        {
          [path p_subdivideBezierWithFlatness:flatness startPoint:*&sfr_head[-4] controlPoint1:*&sfr_head[-2] controlPoint2:*sfr_extraSegments endPoint:{sfr_extraSegments[1], sfr_extraSegments[2], sfr_extraSegments[3], *&sfr_head[2], *&sfr_head[4]}];
          sfr_extraSegments += 4;
        }

        else if (v10 == 3)
        {
          [path closePath];
        }
      }

      else if (v10)
      {
        if (v10 == 1)
        {
          [path lineToPoint:{*&sfr_head[2], *&sfr_head[4]}];
        }
      }

      else
      {
        [path moveToPoint:{*&sfr_head[2], *&sfr_head[4]}];
      }

      sfr_head += 6;
    }

    while (sfr_head < v8);
  }
}

- (id)bezierPathByFlatteningPathWithFlatness:(double)flatness
{
  if ([(CRLBezierPath *)self isFlat])
  {
    v5 = [(CRLBezierPath *)self copy];
  }

  else
  {
    v5 = objc_alloc_init(objc_opt_class());
    [(CRLBezierPath *)self flattenIntoPath:v5 flatness:flatness];
  }

  return v5;
}

- (id)_copyFlattenedPath
{
  v3 = objc_alloc_init(objc_opt_class());
  [(CRLBezierPath *)self flattenIntoPath:v3];
  return v3;
}

- (id)bezierPathByReversingPath
{
  if (self->sfr_elementCount <= 1)
  {
    v3 = [(CRLBezierPath *)self copy];
    goto LABEL_29;
  }

  v3 = objc_alloc_init(objc_opt_class());
  sfr_elementCount = self->sfr_elementCount;
  if (sfr_elementCount >= 2)
  {
    sfr_head = self->sfr_head;
    v6 = &sfr_head[6 * sfr_elementCount];
    sfr_extraSegments = self->sfr_extraSegments;
    v8 = sfr_head + 6;
    while (1)
    {
      v9 = sfr_head;
      sfr_head = v8;
      v10 = *&v9[6] & 0xFLL;
      if (!v10 || &v9[12] >= v6)
      {
        v12 = v10 ? sfr_head : v9;
        [v3 moveToPoint:{*&v12[2], *&v12[4]}];
        v13 = *v12;
        if ((*v12 & 0xFLL) != 0)
        {
          break;
        }
      }

LABEL_28:
      v8 = sfr_head + 6;
      if (&sfr_head[6] >= v6)
      {
        goto LABEL_29;
      }
    }

    v14 = 0;
    v15 = &v12[-2];
    while (1)
    {
      v16 = v13 & 0xF;
      if (v16 == 3)
      {
        break;
      }

      if (v16 == 2)
      {
        [v3 curveToPoint:*(v15 - 1) controlPoint1:*v15 controlPoint2:{sfr_extraSegments[4 * (v13 >> 4) + 2], sfr_extraSegments[4 * (v13 >> 4) + 3], sfr_extraSegments[4 * (v13 >> 4)], sfr_extraSegments[4 * (v13 >> 4) + 1]}];
        if ((v14 & 1) == 0)
        {
          v14 = 0;
          goto LABEL_27;
        }

        if ((*(v15 - 2) & 0xF) == 0)
        {
LABEL_23:
          [v3 closePath];
        }

LABEL_25:
        v14 = 1;
        goto LABEL_27;
      }

      if (v16 == 1)
      {
        if ((v14 & 1) != 0 && (*(v15 - 2) & 0xF) == 0)
        {
          goto LABEL_23;
        }

        [v3 lineToPoint:{*(v15 - 1), *v15}];
      }

LABEL_27:
      v13 = *(v15 - 2);
      v15 -= 3;
      if ((v13 & 0xF) == 0)
      {
        goto LABEL_28;
      }
    }

    [v3 lineToPoint:{*(v15 - 1), *v15}];
    goto LABEL_25;
  }

LABEL_29:

  return v3;
}

- (id)p_bezierPathByRemovingRedundantElementAndSubregionsSmallerThanThreshold:(double)threshold
{
  v5 = +[CRLBezierPath bezierPath];
  v6 = +[CRLBezierPath bezierPath];
  elementCount = [(CRLBezierPath *)self elementCount];
  if (elementCount >= 1)
  {
    v8 = elementCount;
    v9 = 0;
    v10 = 0;
    x = CGPointZero.x;
    y = CGPointZero.y;
    v13 = CGPointZero.x;
    v14 = y;
    v15 = CGPointZero.x;
    v16 = y;
    do
    {
      v17 = [(CRLBezierPath *)self elementAtIndex:v9 associatedPoints:&v37, *&v34, *&v35];
      if (v17 > 1)
      {
        if (v17 == 2)
        {
          [v6 curveToPoint:v41 controlPoint1:v42 controlPoint2:{v37, v38, v39, v40}];
          v10 = 0;
          v16 = v14;
          v15 = v13;
          v13 = v41;
          v14 = v42;
          goto LABEL_24;
        }

        if (v17 == 3)
        {
          [v6 closePath];
          if (threshold > 0.0)
          {
            [v6 bounds];
            v22 = v21;
            v24 = v23;
            if (fmaxf(v22, v24) > threshold)
            {
              [v5 appendBezierPath:v6];
            }

            v6 = +[CRLBezierPath bezierPath];
          }

          v10 = 0;
          goto LABEL_16;
        }
      }

      else
      {
        if (!v17)
        {
          [v6 moveToPoint:{v37, v38}];
          v10 = 0;
          x = v37;
          y = v38;
LABEL_16:
          v16 = v14;
          v15 = v13;
          v14 = y;
          v13 = x;
          goto LABEL_24;
        }

        if (v17 == 1)
        {
          v36 = y;
          thresholdCopy = threshold;
          v19 = v37;
          v20 = v38;
          if (sub_10011ECC8(v13, v14, v37, v38))
          {
            goto LABEL_7;
          }

          if ((v10 & 1) != 0 && sub_10011EFE0(v15, v16, v13, v14, v19, v20) && (v25 = sub_10011F31C(v13, v14, v15), v34 = v26, v35 = v25, v27 = sub_10011F31C(v19, v20, v15), sub_10011F328(v35, v34, v27, v28) > 0.0))
          {
            [v6 setAssociatedPoints:&v37 atIndex:{objc_msgSend(v6, "elementCount") - 1}];
            v10 = 1;
LABEL_7:
            v14 = v16;
            v13 = v15;
          }

          else
          {
            [v6 lineToPoint:{v19, v20, *&v34, *&v35}];
            v10 = 1;
          }

          threshold = thresholdCopy;
          v16 = v14;
          v15 = v13;
          y = v36;
          v13 = v37;
          v14 = v38;
        }
      }

LABEL_24:
      ++v9;
    }

    while (v8 != v9);
  }

  if ([v5 isEmpty])
  {
    return v6;
  }

  if (([v6 isEmpty] & 1) == 0)
  {
    [v6 bounds];
    v30 = v29;
    v32 = v31;
    if (fmaxf(v30, v32) > threshold)
    {
      [v5 appendBezierPath:v6];
    }
  }

  return v5;
}

- (void)convertCloseElementsToLineElements
{
  sfr_elementCount = self->sfr_elementCount;
  if (sfr_elementCount >= 1)
  {
    v4 = 0;
    sfr_head = self->sfr_head;
    v6 = &sfr_head[6 * sfr_elementCount];
    do
    {
      while ((*sfr_head & 0xFLL) == 3)
      {
        *sfr_head &= 0xFFFFFFFFFFFFFFF1;
        sfr_head += 6;
        v4 = 1;
        if (sfr_head >= v6)
        {
          goto LABEL_9;
        }
      }

      sfr_head += 6;
    }

    while (sfr_head < v6);
    if ((v4 & 1) == 0)
    {
      return;
    }

LABEL_9:
    sfr_path = self->sfr_path;
    if (sfr_path)
    {
      CFRelease(sfr_path);
      self->sfr_path = 0;
    }
  }
}

- (void)transformUsingAffineTransform:(CGAffineTransform *)transform
{
  if (sub_10026171C(transform))
  {
    v5 = *&transform->c;
    *&t1.a = *&transform->a;
    *&t1.c = v5;
    *&t1.tx = *&transform->tx;
    v6 = *&CGAffineTransformIdentity.c;
    *&v19.a = *&CGAffineTransformIdentity.a;
    *&v19.c = v6;
    *&v19.tx = *&CGAffineTransformIdentity.tx;
    if (!CGAffineTransformEqualToTransform(&t1, &v19))
    {
      sfr_elementCount = self->sfr_elementCount;
      if (sfr_elementCount >= 1)
      {
        sfr_head = self->sfr_head;
        v9 = &sfr_head[6 * sfr_elementCount];
        do
        {
          *&sfr_head[2] = vaddq_f64(*&transform->tx, vmlaq_n_f64(vmulq_n_f64(*&transform->c, *&sfr_head[4]), *&transform->a, *&sfr_head[2]));
          sfr_head += 6;
        }

        while (sfr_head < v9);
      }

      sfr_extraSegments = self->sfr_extraSegments;
      if (sfr_extraSegments)
      {
        sfr_extraSegmentCount = self->sfr_extraSegmentCount;
        if (sfr_extraSegmentCount >= 1)
        {
          v12 = &sfr_extraSegments[4 * sfr_extraSegmentCount];
          do
          {
            *sfr_extraSegments = vaddq_f64(*&transform->tx, vmlaq_n_f64(vmulq_n_f64(*&transform->c, sfr_extraSegments[1]), *&transform->a, *sfr_extraSegments));
            *(sfr_extraSegments + 1) = vaddq_f64(*&transform->tx, vmlaq_n_f64(vmulq_n_f64(*&transform->c, sfr_extraSegments[3]), *&transform->a, sfr_extraSegments[2]));
            sfr_extraSegments += 4;
          }

          while (sfr_extraSegments < v12);
        }
      }

      sfr_path = self->sfr_path;
      if (sfr_path)
      {
        self->sfr_path = CGPathCreateCopyByTransformingPath(self->sfr_path, transform);
        CFRelease(sfr_path);
      }

      v14 = *&transform->c;
      *&t1.a = *&transform->a;
      *&t1.c = v14;
      *&t1.tx = *&transform->tx;
      v15 = sub_10013A268(&t1.a);
      sfr_bpFlags = self->sfr_bpFlags;
      if (v15)
      {
        if ((*&sfr_bpFlags & 1) == 0)
        {
          sfr_controlPointBounds = self->sfr_controlPointBounds;
          v17 = *&transform->c;
          *&t1.a = *&transform->a;
          *&t1.c = v17;
          *&t1.tx = *&transform->tx;
          self->sfr_controlPointBounds = CGRectApplyAffineTransform(sfr_controlPointBounds, &t1);
        }

        if ((*&sfr_bpFlags & 2) == 0)
        {
          sfr_bounds = self->sfr_bounds;
          v18 = *&transform->c;
          *&t1.a = *&transform->a;
          *&t1.c = v18;
          *&t1.tx = *&transform->tx;
          self->sfr_bounds = CGRectApplyAffineTransform(sfr_bounds, &t1);
        }
      }

      else
      {
        self->sfr_bpFlags = (*&sfr_bpFlags | 3);
      }
    }
  }

  else
  {

    sub_1002617B0();
  }
}

- (CGPath)CGPath
{
  [(CRLBezierPath *)self _doPath];
  result = self->sfr_path;
  if (result)
  {
    v4 = CGPathRetain(result);

    return CFAutorelease(v4);
  }

  return result;
}

- (BOOL)isTriangular
{
  elementCount = [(CRLBezierPath *)self elementCount];
  if (elementCount)
  {
    v4 = elementCount;
    v5 = elementCount - 1;
    if ([(CRLBezierPath *)self elementAtIndex:elementCount - 1])
    {
      v6 = v4;
    }

    else
    {
      v6 = v5;
    }
  }

  else
  {
    v6 = 0;
  }

  isFlat = [(CRLBezierPath *)self isFlat];
  result = 0;
  if (isFlat && (v6 & 0xFFFFFFFFFFFFFFFELL) == 4)
  {
    v9 = 1;
    while ([(CRLBezierPath *)self elementAtIndex:v9]== 1)
    {
      if (v6 == ++v9)
      {
        v10 = v6 - 1;
        goto LABEL_13;
      }
    }

    v10 = v9 - 1;
LABEL_13:
    if ([(CRLBezierPath *)self elementAtIndex:v6 - 1]== 3)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = v10;
    }

    v12 = v6 != v11 + 1 || v10 > 3;
    result = 0;
    if (!v12)
    {
      if (v10 != 3)
      {
        return 1;
      }

      v16 = 0.0;
      v17 = 0.0;
      v14 = 0.0;
      v15 = 0.0;
      [(CRLBezierPath *)self elementAtIndex:0 associatedPoints:&v16];
      [(CRLBezierPath *)self elementAtIndex:3 associatedPoints:&v14];
      if (v16 == v14 && v17 == v15)
      {
        return 1;
      }
    }
  }

  return result;
}

- (BOOL)isDiamond
{
  elementCount = [(CRLBezierPath *)self elementCount];
  if (!elementCount)
  {
    [(CRLBezierPath *)self isFlat];
    return 0;
  }

  v4 = elementCount;
  v5 = elementCount - 1;
  if (![(CRLBezierPath *)self elementAtIndex:elementCount - 1])
  {
    v4 = v5;
  }

  isFlat = [(CRLBezierPath *)self isFlat];
  result = 0;
  if (isFlat && v4 == 5)
  {
    v8 = -5;
    v9 = 4;
    while ([(CRLBezierPath *)self elementAtIndex:v8 + 6]== 1)
    {
      if (++v8 == -1)
      {
        goto LABEL_13;
      }
    }

    if (v8 < 0xFFFFFFFFFFFFFFFELL)
    {
      return 0;
    }

    v9 = v8 + 5;
LABEL_13:
    v10 = [(CRLBezierPath *)self elementAtIndex:4];
    if (v9 != 3 || v10 == 3)
    {
      [(CRLBezierPath *)self bounds];
      x = v21.origin.x;
      y = v21.origin.y;
      width = v21.size.width;
      height = v21.size.height;
      MidX = CGRectGetMidX(v21);
      v22.origin.x = x;
      v22.origin.y = y;
      v22.size.width = width;
      v22.size.height = height;
      v16 = 0;
      MidY = CGRectGetMidY(v22);
      v18 = v9 + 1;
      v19 = CGPointZero;
      while (1)
      {
        v20 = v19;
        [(CRLBezierPath *)self elementAtIndex:v16 associatedPoints:&v20, v19];
        if (vabdd_f64(MidX, v20.x) > 0.01 && vabdd_f64(MidY, v20.y) > 0.01)
        {
          break;
        }

        if (v18 == ++v16)
        {
          return 1;
        }
      }
    }

    return 0;
  }

  return result;
}

- (BOOL)isRectangular
{
  LODWORD(elementCount) = [(CRLBezierPath *)self isFlat];
  if (elementCount)
  {
    elementCount = [(CRLBezierPath *)self elementCount];
    if (elementCount)
    {
      v4 = elementCount;
      v5 = elementCount - 1;
      if ([(CRLBezierPath *)self elementAtIndex:elementCount - 1])
      {
        v6 = v4;
      }

      else
      {
        v6 = v5;
      }

      if (v6 < 5)
      {
        goto LABEL_7;
      }

      if (v6 <= 6)
      {
        v9 = 1;
        while ([(CRLBezierPath *)self elementAtIndex:v9]== 1)
        {
          if (v6 == ++v9)
          {
            v10 = v6 - 1;
            goto LABEL_19;
          }
        }

        v10 = v9 - 1;
LABEL_19:
        v11 = [(CRLBezierPath *)self elementAtIndex:v6 - 1];
        LOBYTE(elementCount) = 0;
        if (v11 == 3)
        {
          v12 = v10 + 2;
        }

        else
        {
          v12 = v10 + 1;
        }

        if (v11 == 3)
        {
          v13 = v10 + 1;
        }

        else
        {
          v13 = v10;
        }

        if (v6 == v12 && v13 >= 4)
        {
          [(CRLBezierPath *)self bounds];
          x = v32.origin.x;
          y = v32.origin.y;
          width = v32.size.width;
          height = v32.size.height;
          MaxX = CGRectGetMaxX(v32);
          v33.origin.x = x;
          v33.origin.y = y;
          v33.size.width = width;
          v33.size.height = height;
          MaxY = CGRectGetMaxY(v33);
          v20 = 0;
          v21 = v29;
          while (1)
          {
            [(CRLBezierPath *)self elementAtIndex:v20 associatedPoints:v21];
            if (vabdd_f64(x, *v21) >= 0.01 && vabdd_f64(MaxX, *v21) >= 0.01)
            {
              goto LABEL_7;
            }

            v22 = v21[1];
            if (vabdd_f64(y, v22) >= 0.01 && vabdd_f64(MaxY, v22) >= 0.01)
            {
              goto LABEL_7;
            }

            ++v20;
            v21 += 2;
            if (v20 > v10)
            {
              v23 = 0;
              v24 = &v30;
              v25 = 1;
              while (1)
              {
                v26 = &v29[16 * (v25 % (v10 + 1))];
                v27 = vabdd_f64(*v26, *(v24 - 1));
                if (v27 > 0.01 != vabdd_f64(v26[1], *v24) <= 0.01 || v25 != 1 && ((v23 ^ (v27 > 0.01)) & 1) == 0)
                {
                  break;
                }

                ++v25;
                v24 += 2;
                v23 = v27 > 0.01;
                if (v25 == 5)
                {
                  LOBYTE(elementCount) = 1;
                  return elementCount;
                }
              }

              goto LABEL_7;
            }
          }
        }
      }

      else
      {
        bezierPathByRemovingRedundantElements = [(CRLBezierPath *)self bezierPathByRemovingRedundantElements];
        elementCount2 = [bezierPathByRemovingRedundantElements elementCount];
        if (elementCount2 >= [(CRLBezierPath *)self elementCount])
        {
LABEL_7:
          LOBYTE(elementCount) = 0;
          return elementCount;
        }

        LOBYTE(elementCount) = [bezierPathByRemovingRedundantElements isRectangular];
      }
    }
  }

  return elementCount;
}

- (BOOL)isCircular
{
  [(CRLBezierPath *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  elementCount = [(CRLBezierPath *)self elementCount];
  if (elementCount >= 1)
  {
    v12 = elementCount;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = v4 + v8 * 0.5;
    v17 = v6 + v10 * 0.5;
    while (1)
    {
      v18 = [(CRLBezierPath *)self elementAtIndex:v13 associatedPoints:v25, *&v24];
      if (v18 == 2)
      {
        if (fabs(sub_100120074((v26[0] - v16) / v8, (v26[1] - v17) / v10) + -0.5) > 0.0001)
        {
          return v14;
        }

        v20 = sub_10011F20C(&v24, 0.5);
        v22 = sub_100120074((v20 - v16) / v8, (v21 - v17) / v10);
        v19 = v26;
        if (fabs(v22 + -0.5) > 0.0001)
        {
          return v14;
        }
      }

      else
      {
        if (v18 == 3)
        {
          if (v15 > 0)
          {
            return v14;
          }

          v15 = 1;
          goto LABEL_12;
        }

        v19 = v25;
        if (v18 == 1)
        {
          return v14;
        }
      }

      v24 = *v19;
LABEL_12:
      v14 = v12 <= ++v13;
      if (v12 == v13)
      {
        return v14;
      }
    }
  }

  return 1;
}

- (CGPoint)currentPoint
{
  if ([(CRLBezierPath *)self isEmpty])
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_1013282DC();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_1013282F0();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101327A4C();
    }

    sub_10028E070("Fatal Assertion failure: %{public}s %{public}s:%d Can not get the current point of an empty path.", v6, v7, v8, v9, v10, v11, v12, "[CRLBezierPath currentPoint]");
    v13 = [CRLAssertionHandler handleFailureInFunction:[NSString stringWithUTF8String:"[CRLBezierPath currentPoint]"] file:[NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLBezierPath.m"] lineNumber:1520 isFatal:1 description:"Can not get the current point of an empty path."];
    SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v13, v14);
    abort();
  }

  v3 = &self->sfr_head[6 * self->sfr_elementCount];
  v4 = *&v3[-4];
  v5 = *&v3[-2];
  result.y = v5;
  result.x = v4;
  return result;
}

- (CGRect)controlPointBounds
{
  if ([(CRLBezierPath *)self isEmpty])
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_1013283B4();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_1013283C8();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101327A4C();
    }

    sub_10028E070("Fatal Assertion failure: %{public}s %{public}s:%d Can not determine control point bounds for an empty path.", v23, v24, v25, v26, v27, v28, v29, "[CRLBezierPath controlPointBounds]");
    v30 = [CRLAssertionHandler handleFailureInFunction:[NSString stringWithUTF8String:"[CRLBezierPath controlPointBounds]"] file:[NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLBezierPath.m"] lineNumber:1529 isFatal:1 description:"Can not determine control point bounds for an empty path."];
    SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v30, v31);
    abort();
  }

  sfr_bpFlags = self->sfr_bpFlags;
  if (*&sfr_bpFlags)
  {
    sfr_head = self->sfr_head;
    sfr_elementCount = self->sfr_elementCount;
    v9 = *&sfr_head[2];
    if (sfr_elementCount < 2)
    {
      v4 = *&sfr_head[2];
    }

    else
    {
      v10 = &sfr_head[6 * sfr_elementCount];
      v11 = sfr_head + 6;
      v4 = v9;
      do
      {
        v12 = *v11 & 0xFLL;
        if (v12 != 3 && (v12 || &v11[6] < v10))
        {
          v14 = *&v11[2];
          v4 = vbslq_s8(vcgtq_f64(v14, v4), v4, v14);
          v9 = vbslq_s8(vcgtq_f64(v14, v9), v14, v9);
        }

        v11 += 6;
      }

      while (v11 < v10);
    }

    sfr_extraSegments = self->sfr_extraSegments;
    if (sfr_extraSegments)
    {
      sfr_extraSegmentCount = self->sfr_extraSegmentCount;
      if (sfr_extraSegmentCount >= 1)
      {
        v17 = &sfr_extraSegments[2 * sfr_extraSegmentCount];
        do
        {
          v18 = *sfr_extraSegments;
          v19 = sfr_extraSegments[1];
          sfr_extraSegments += 2;
          v20 = vbslq_s8(vcgtq_f64(v18, v4), v4, v18);
          v21 = vbslq_s8(vcgtq_f64(v18, v9), v18, v9);
          v4 = vbslq_s8(vcgtq_f64(v19, v20), v20, v19);
          v9 = vbslq_s8(vcgtq_f64(v19, v21), v19, v21);
        }

        while (sfr_extraSegments < v17);
      }
    }

    self->sfr_controlPointBounds.origin = v4;
    size = vsubq_f64(v9, v4);
    self->sfr_controlPointBounds.size = size;
    self->sfr_bpFlags = (*&sfr_bpFlags & 0xFFFFFFFE);
    y = v4.y;
  }

  else
  {
    v4.x = self->sfr_controlPointBounds.origin.x;
    y = self->sfr_controlPointBounds.origin.y;
    size = self->sfr_controlPointBounds.size;
  }

  v22 = size.f64[1];
  result.size.width = size.f64[0];
  result.origin.x = v4.x;
  result.size.height = v22;
  result.origin.y = y;
  return result;
}

- (CGRect)bounds
{
  if ([(CRLBezierPath *)self isFlat])
  {
    [(CRLBezierPath *)self controlPointBounds];
  }

  else
  {
    if ((*&self->sfr_bpFlags & 2) != 0)
    {
      [(CRLBezierPath *)self _doPath];
      sfr_path = self->sfr_path;
      if (sfr_path)
      {
        self->sfr_bounds = CGPathGetPathBoundingBox(sfr_path);
      }

      else
      {
        size = CGRectZero.size;
        self->sfr_bounds.origin = CGRectZero.origin;
        self->sfr_bounds.size = size;
      }

      *&self->sfr_bpFlags &= ~2u;
    }

    x = self->sfr_bounds.origin.x;
    y = self->sfr_bounds.origin.y;
    width = self->sfr_bounds.size.width;
    height = self->sfr_bounds.size.height;
  }

  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (BOOL)isClockwise
{
  elementCount = [(CRLBezierPath *)self elementCount];
  if (elementCount < 1)
  {
    v10 = 0.0;
  }

  else
  {
    v5 = elementCount;
    v6 = 0;
    v7 = 0;
    x = CGPointZero.x;
    y = CGPointZero.y;
    v10 = 0.0;
    *&v4 = 67109378;
    v20 = v4;
    v11 = CGPointZero.x;
    v12 = y;
    do
    {
      v13 = [(CRLBezierPath *)self elementAtIndex:v6 associatedPoints:&v29, v20];
      if (v13 > 1)
      {
        if (v13 == 2)
        {
          v15 = +[CRLAssertionHandler _atomicIncrementAssertCount];
          if (qword_101AD5A10 != -1)
          {
            sub_10132848C();
          }

          v16 = off_1019EDA68;
          if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
          {
            *buf = 67109890;
            v22 = v15;
            v23 = 2082;
            v24 = "[CRLBezierPath isClockwise]";
            v25 = 2082;
            v26 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLBezierPath.m";
            v27 = 1024;
            v28 = 1622;
            _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Path should be flat. Illegal CRLCurveToBezierPathElement.", buf, 0x22u);
            if (qword_101AD5A10 != -1)
            {
              sub_1013284B4();
            }
          }

          v17 = off_1019EDA68;
          if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
          {
            v18 = +[CRLAssertionHandler packedBacktraceString];
            *buf = v20;
            v22 = v15;
            v23 = 2114;
            v24 = v18;
            _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
          }

          [CRLAssertionHandler handleFailureInFunction:[NSString stringWithUTF8String:"[CRLBezierPath isClockwise]"] file:[NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLBezierPath.m"] lineNumber:1622 isFatal:0 description:"Path should be flat. Illegal CRLCurveToBezierPathElement."];
        }

        else if (v13 == 3)
        {
          if (v11 == x && v12 == y)
          {
            v7 = 0;
          }

          else
          {
            v7 = 0;
            v10 = v11 * y - v12 * x + v10;
          }
        }
      }

      else if (v13)
      {
        if (v13 == 1)
        {
          if (v11 != v29 || v12 != v30)
          {
            v10 = v11 * v30 - v12 * v29 + v10;
          }

          v7 = 1;
          v12 = v30;
          v11 = v29;
        }
      }

      else
      {
        v11 = v29;
        v12 = v30;
        y = v30;
        x = v29;
      }

      ++v6;
    }

    while (v5 != v6);
    if (v7)
    {
      v10 = v11 * y - v12 * x + v10;
    }
  }

  return v10 >= 0.0;
}

- (BOOL)containsClosePathElement
{
  sfr_elementCount = self->sfr_elementCount;
  v3 = sfr_elementCount + 1;
  v4 = 24 * sfr_elementCount - 24;
  do
  {
    if (--v3 < 1)
    {
      break;
    }

    v5 = *(self->sfr_head + v4);
    v4 -= 24;
  }

  while ((v5 & 0xF) != 3);
  return v3 > 0;
}

- (double)calculateLengthOfElement:(int64_t)element
{
  if (element < 0 || self->sfr_elementCount <= element)
  {
    v7 = +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_1013284DC();
    }

    v8 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sfr_elementCount = self->sfr_elementCount;
      *buf = 67110402;
      *&buf[4] = v7;
      *&buf[8] = 2082;
      *&buf[10] = "[CRLBezierPath calculateLengthOfElement:]";
      *&buf[18] = 2082;
      *&buf[20] = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLBezierPath.m";
      *&buf[28] = 1024;
      *&buf[30] = 1722;
      *&buf[34] = 2048;
      *&buf[36] = element;
      *&buf[44] = 2048;
      *&buf[46] = sfr_elementCount;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Given index (%zd) must be within bounds [0, %zd).", buf, 0x36u);
      if (qword_101AD5A10 != -1)
      {
        sub_1013284F0();
      }
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101327A4C();
    }

    v19 = self->sfr_elementCount;
    sub_10028E070("Fatal Assertion failure: %{public}s %{public}s:%d Given index (%zd) must be within bounds [0, %zd).", v10, v11, v12, v13, v14, v15, v16, "[CRLBezierPath calculateLengthOfElement:]");
    v17 = [CRLAssertionHandler handleFailureInFunction:[NSString stringWithUTF8String:"[CRLBezierPath calculateLengthOfElement:]"] file:[NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLBezierPath.m"] lineNumber:1722 isFatal:1 description:"Given index (%zd) must be within bounds [0, %zd].", element, self->sfr_elementCount, 1722, element, v19);
    SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v17, v18);
    abort();
  }

  if (!element)
  {
    return 0.0;
  }

  *buf = xmmword_1014629F0;
  *&buf[16] = xmmword_1014629F0;
  *&buf[32] = xmmword_1014629F0;
  *&buf[48] = xmmword_1014629F0;
  v3 = [(CRLBezierPath *)self elementAtIndex:element allPoints:buf];
  if (v3 == 3)
  {
    return sub_100120090(*buf, *&buf[8], *&buf[16], *&buf[24]);
  }

  if (v3 == 2)
  {
    v20 = 0.0;
    sub_1001A7838(buf, &v20);
    return v20;
  }

  else
  {
    result = 0.0;
    if (v3 == 1)
    {
      return sub_100120090(*buf, *&buf[8], *&buf[16], *&buf[24]);
    }
  }

  return result;
}

- (void)calculateLengths
{
  self->sfr_totalLength = 0.0;
  elementCount = [(CRLBezierPath *)self elementCount];
  self->sfr_elementLength = NSZoneRealloc([(CRLBezierPath *)self zone], self->sfr_elementLength, 8 * self->sfr_elementMax);
  if (elementCount >= 1)
  {
    for (i = 0; i != elementCount; ++i)
    {
      [(CRLBezierPath *)self calculateLengthOfElement:i];
      self->sfr_elementLength[i] = v5;
      self->sfr_totalLength = v5 + self->sfr_totalLength;
    }
  }

  *&self->sfr_bpFlags |= 0x400u;
}

- (double)length
{
  if ((*(&self->sfr_bpFlags + 1) & 4) == 0)
  {
    [(CRLBezierPath *)self calculateLengths];
  }

  return self->sfr_totalLength;
}

- (double)lengthOfElement:(int64_t)element
{
  if (element < 0 || self->sfr_elementCount <= element)
  {
    v6 = +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101328518();
    }

    v7 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sfr_elementCount = self->sfr_elementCount;
      *buf = 67110402;
      v20 = v6;
      v21 = 2082;
      v22 = "[CRLBezierPath lengthOfElement:]";
      v23 = 2082;
      v24 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLBezierPath.m";
      v25 = 1024;
      v26 = 1775;
      v27 = 2048;
      elementCopy = element;
      v29 = 2048;
      v30 = sfr_elementCount;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Given index (%zd) must be within bounds [0, %zd).", buf, 0x36u);
      if (qword_101AD5A10 != -1)
      {
        sub_10132852C();
      }
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101327A4C();
    }

    v18 = self->sfr_elementCount;
    sub_10028E070("Fatal Assertion failure: %{public}s %{public}s:%d Given index (%zd) must be within bounds [0, %zd).", v9, v10, v11, v12, v13, v14, v15, "[CRLBezierPath lengthOfElement:]");
    v16 = [CRLAssertionHandler handleFailureInFunction:[NSString stringWithUTF8String:"[CRLBezierPath lengthOfElement:]"] file:[NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLBezierPath.m"] lineNumber:1775 isFatal:1 description:"Given index (%zd) must be within bounds [0, %zd].", element, self->sfr_elementCount, 1775, element, v18);
    SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v16, v17);
    abort();
  }

  if ((*(&self->sfr_bpFlags + 1) & 4) == 0)
  {
    [(CRLBezierPath *)self calculateLengths];
  }

  return self->sfr_elementLength[element];
}

- (double)lengthToElement:(int64_t)element
{
  elementCopy = element;
  if (element < 0)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101328554();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101328568();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101327A4C();
    }

    sub_10028E070("Fatal Assertion failure: %{public}s %{public}s:%d Given index (%zd) must not be negative.", v11, v12, v13, v14, v15, v16, v17, "[CRLBezierPath lengthToElement:]");
    elementCopy = [CRLAssertionHandler handleFailureInFunction:[NSString stringWithUTF8String:"[CRLBezierPath lengthToElement:]"] file:[NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLBezierPath.m"] lineNumber:1785 isFatal:1 description:"Given index (%zd) must not be negative.", elementCopy, "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLBezierPath.m", 1785, elementCopy];
    SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(elementCopy, v19);
    abort();
  }

  if (self->sfr_elementCount <= element)
  {
    v8 = +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10132863C();
    }

    v9 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sfr_elementCount = self->sfr_elementCount;
      *buf = 67110402;
      v21 = v8;
      v22 = 2082;
      v23 = "[CRLBezierPath lengthToElement:]";
      v24 = 2082;
      v25 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLBezierPath.m";
      v26 = 1024;
      v27 = 1788;
      v28 = 2048;
      v29 = elementCopy;
      v30 = 2048;
      v31 = sfr_elementCount;
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Given index (%zd) must not be greater than or equal to max element (%zd)", buf, 0x36u);
      if (qword_101AD5A10 != -1)
      {
        sub_101328650();
      }
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101327A4C();
    }

    [CRLAssertionHandler handleFailureInFunction:[NSString stringWithUTF8String:"[CRLBezierPath lengthToElement:]"] file:[NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLBezierPath.m"] lineNumber:1788 isFatal:0 description:"Given index (%zd) must not be greater than or equal to max element (%zd)", elementCopy, self->sfr_elementCount];
    [(CRLBezierPath *)self length];
  }

  else
  {
    if ((*(&self->sfr_bpFlags + 1) & 4) == 0)
    {
      [(CRLBezierPath *)self calculateLengths];
    }

    if (elementCopy)
    {
      sfr_elementLength = self->sfr_elementLength;
      result = 0.0;
      do
      {
        v7 = *sfr_elementLength++;
        result = result + v7;
        --elementCopy;
      }

      while (elementCopy);
    }

    else
    {
      return 0.0;
    }
  }

  return result;
}

- (int64_t)elementAtIndex:(int64_t)index associatedPoints:(CGPoint *)points
{
  if (index < 0 || self->sfr_elementCount <= index)
  {
    v11 = +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101328678();
    }

    v12 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sfr_elementCount = self->sfr_elementCount;
      *buf = 67110402;
      v49 = v11;
      v50 = 2082;
      v51 = "[CRLBezierPath elementAtIndex:associatedPoints:]";
      v52 = 2082;
      v53 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLBezierPath.m";
      v54 = 1024;
      v55 = 1816;
      v56 = 2048;
      indexCopy2 = index;
      v58 = 2048;
      v59 = sfr_elementCount;
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Given index (%zd) must be within bounds [0, %zd).", buf, 0x36u);
      if (qword_101AD5A10 != -1)
      {
        sub_10132868C();
      }
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101327A4C();
    }

    v46 = self->sfr_elementCount;
    sub_10028E070("Fatal Assertion failure: %{public}s %{public}s:%d Given index (%zd) must be within bounds [0, %zd).", v14, v15, v16, v17, v18, v19, v20, "[CRLBezierPath elementAtIndex:associatedPoints:]");
    v21 = [CRLAssertionHandler handleFailureInFunction:[NSString stringWithUTF8String:"[CRLBezierPath elementAtIndex:associatedPoints:]"] file:[NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLBezierPath.m"] lineNumber:1816 isFatal:1 description:"Given index (%zd) must be within bounds [0, %zd].", index, self->sfr_elementCount, 1816, index, v46);
    goto LABEL_18;
  }

  v4 = &self->sfr_head[6 * index];
  if (points)
  {
    if ((*v4 & 0xFLL) != 2)
    {
LABEL_8:
      *points = *&v4[2];
      return *v4 & 0xFLL;
    }

    v5 = *v4 >> 4;
    if (v5 >= self->sfr_extraSegmentCount)
    {
      v26 = +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_1013286B4();
      }

      v27 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sfr_extraSegmentCount = self->sfr_extraSegmentCount;
        *buf = 67110402;
        v49 = v26;
        v50 = 2082;
        v51 = "[CRLBezierPath elementAtIndex:associatedPoints:]";
        v52 = 2082;
        v53 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLBezierPath.m";
        v54 = 1024;
        v55 = 1822;
        v56 = 2048;
        indexCopy2 = index;
        v58 = 2048;
        v59 = sfr_extraSegmentCount;
        _os_log_error_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Extra index (%zd) must be within extra segment bounds [0, %zd).", buf, 0x36u);
        if (qword_101AD5A10 != -1)
        {
          sub_1013286C8();
        }
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_101327A4C();
      }

      v47 = self->sfr_extraSegmentCount;
      sub_10028E070("Fatal Assertion failure: %{public}s %{public}s:%d Extra index (%zd) must be within extra segment bounds [0, %zd).", v29, v30, v31, v32, v33, v34, v35, "[CRLBezierPath elementAtIndex:associatedPoints:]");
      v21 = [CRLAssertionHandler handleFailureInFunction:[NSString stringWithUTF8String:"[CRLBezierPath elementAtIndex:associatedPoints:]"] file:[NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLBezierPath.m"] lineNumber:1822 isFatal:1 description:"Extra index (%zd) must be within extra segment bounds [0, %zd].", index, self->sfr_extraSegmentCount, 1822, index, v47);
    }

    else
    {
      sfr_extraSegments = self->sfr_extraSegments;
      if (sfr_extraSegments)
      {
        v7 = &sfr_extraSegments[32 * v5];
        *points = *v7;
        points[1] = v7[1];
        points += 2;
        goto LABEL_8;
      }

      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_1013286F0();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_101328704();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_101327A4C();
      }

      sub_10028E070("Fatal Assertion failure: %{public}s %{public}s:%d Missing extra segments.", v36, v37, v38, v39, v40, v41, v42, "[CRLBezierPath elementAtIndex:associatedPoints:]");
      v21 = [CRLAssertionHandler handleFailureInFunction:[NSString stringWithUTF8String:"[CRLBezierPath elementAtIndex:associatedPoints:]"] file:[NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLBezierPath.m"] lineNumber:1824 isFatal:1 description:"Missing extra segments.", v43, "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLBezierPath.m", 1824, v44, v45];
    }

LABEL_18:
    SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v21, *&v22);
    abort();
  }

  return *v4 & 0xFLL;
}

- (void)iteratePathElementsWithBlock:(id)block
{
  elementCount = [(CRLBezierPath *)self elementCount];
  if (elementCount)
  {
    v6 = elementCount;
    v7 = 0;
    y = CGPointZero.y;
    do
    {
      v9 = [(CRLBezierPath *)self elementAtIndex:v7 associatedPoints:&v19];
      if (v9 > 1)
      {
        if (v9 == 2)
        {
          v16 = *(block + 2);
          v10.n128_u64[0] = v23;
          v11.n128_u64[0] = v24;
          v12.n128_u64[0] = v19;
          v13.n128_u64[0] = v20;
          v14.n128_u64[0] = v21;
          v15.n128_u64[0] = v22;
          blockCopy4 = block;
          v18 = 2;
          goto LABEL_13;
        }

        if (v9 == 3)
        {
          v16 = *(block + 2);
          blockCopy4 = block;
          v18 = 3;
          v10.n128_u64[0] = *&CGPointZero.x;
          v11.n128_f64[0] = y;
          goto LABEL_11;
        }
      }

      else
      {
        if (!v9)
        {
          v16 = *(block + 2);
          v10.n128_u64[0] = v19;
          v11.n128_u64[0] = v20;
          blockCopy4 = block;
          v18 = 0;
LABEL_11:
          v12.n128_u64[0] = *&CGPointZero.x;
          v13.n128_f64[0] = y;
          v14.n128_u64[0] = *&CGPointZero.x;
          v15.n128_f64[0] = y;
LABEL_13:
          v16(blockCopy4, v18, v10, v11, v12, v13, v14, v15);
          goto LABEL_14;
        }

        if (v9 == 1)
        {
          v16 = *(block + 2);
          v10.n128_u64[0] = v19;
          v11.n128_u64[0] = v20;
          blockCopy4 = block;
          v18 = 1;
          goto LABEL_11;
        }
      }

LABEL_14:
      ++v7;
    }

    while (v6 != v7);
  }
}

- (int64_t)elementAtIndex:(int64_t)index allPoints:(CGPoint *)points
{
  if (index < 0 || self->sfr_elementCount <= index)
  {
    v10 = +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_1013287C8();
    }

    v11 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sfr_elementCount = self->sfr_elementCount;
      *buf = 67110402;
      v24 = v10;
      v25 = 2082;
      v26 = "[CRLBezierPath elementAtIndex:allPoints:]";
      v27 = 2082;
      v28 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLBezierPath.m";
      v29 = 1024;
      v30 = 1869;
      v31 = 2048;
      indexCopy = index;
      v33 = 2048;
      v34 = sfr_elementCount;
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Given index (%zd) must be within bounds [0, %zd).", buf, 0x36u);
      if (qword_101AD5A10 != -1)
      {
        sub_1013287DC();
      }
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101327A4C();
    }

    v22 = self->sfr_elementCount;
    sub_10028E070("Fatal Assertion failure: %{public}s %{public}s:%d Given index (%zd) must be within bounds [0, %zd).", v13, v14, v15, v16, v17, v18, v19, "[CRLBezierPath elementAtIndex:allPoints:]");
    v20 = [CRLAssertionHandler handleFailureInFunction:[NSString stringWithUTF8String:"[CRLBezierPath elementAtIndex:allPoints:]"] file:[NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLBezierPath.m"] lineNumber:1869 isFatal:1 description:"Given index (%zd) must be within bounds [0, %zd].", index, self->sfr_elementCount, 1869, index, v22);
    SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v20, v21);
    abort();
  }

  v4 = &self->sfr_head[6 * index];
  if (points)
  {
    v5 = *v4;
    if ((*v4 & 0xFLL) != 0)
    {
      *points = *&v4[-4];
      v5 = *v4;
    }

    if ((v5 & 0xF) != 0)
    {
      if ((v5 & 0xF) == 2)
      {
        v6 = (self->sfr_extraSegments + 32 * (v5 >> 4));
        points[1] = *v6;
        points[2] = v6[1];
        points += 3;
      }

      else
      {
        ++points;
      }
    }

    *points = *&v4[2];
  }

  return *v4 & 0xFLL;
}

- (void)setAssociatedPoints:(CGPoint *)points atIndex:(int64_t)index
{
  if (index < 0 || self->sfr_elementCount <= index)
  {
    v10 = +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101328804();
    }

    v11 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sfr_elementCount = self->sfr_elementCount;
      *buf = 67110402;
      v24 = v10;
      v25 = 2082;
      v26 = "[CRLBezierPath setAssociatedPoints:atIndex:]";
      v27 = 2082;
      v28 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLBezierPath.m";
      v29 = 1024;
      v30 = 1895;
      v31 = 2048;
      indexCopy = index;
      v33 = 2048;
      v34 = sfr_elementCount;
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Given index (%zd) must be within bounds [0, %zd).", buf, 0x36u);
      if (qword_101AD5A10 != -1)
      {
        sub_101328818();
      }
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101327A4C();
    }

    v22 = self->sfr_elementCount;
    sub_10028E070("Fatal Assertion failure: %{public}s %{public}s:%d Given index (%zd) must be within bounds [0, %zd).", v13, v14, v15, v16, v17, v18, v19, "[CRLBezierPath setAssociatedPoints:atIndex:]");
    v20 = [CRLAssertionHandler handleFailureInFunction:[NSString stringWithUTF8String:"[CRLBezierPath setAssociatedPoints:atIndex:]"] file:[NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLBezierPath.m"] lineNumber:1895 isFatal:1 description:"Given index (%zd) must be within bounds [0, %zd].", index, self->sfr_elementCount, 1895, index, v22);
    SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v20, v21);
    abort();
  }

  v5 = &self->sfr_head[6 * index];
  if ((*v5 & 0xFLL) == 2)
  {
    v6 = (self->sfr_extraSegments + 32 * (*v5 >> 4));
    *v6 = *points;
    v7 = points[1];
    points += 2;
    v6[1] = v7;
  }

  *&v5[2] = *points;
  sfr_path = self->sfr_path;
  if (sfr_path)
  {
    CFRelease(sfr_path);
    self->sfr_path = 0;
  }

  *&self->sfr_bpFlags |= 3u;
}

- (void)_appendToPath:(id)path skippingInitialMoveIfPossible:(BOOL)possible
{
  sfr_head = self->sfr_head;
  sfr_elementCount = self->sfr_elementCount;
  sfr_extraSegments = self->sfr_extraSegments;
  v8 = possible && [path elementCount] > 0;
  if (sfr_elementCount >= 1)
  {
    v9 = &sfr_head[6 * sfr_elementCount];
    do
    {
      v10 = *sfr_head & 0xF;
      if (v10 > 1)
      {
        if (v10 == 2)
        {
          [path curveToPoint:*&sfr_head[2] controlPoint1:*&sfr_head[4] controlPoint2:{*sfr_extraSegments, sfr_extraSegments[1], sfr_extraSegments[2], sfr_extraSegments[3]}];
          sfr_extraSegments += 4;
        }

        else if (v10 == 3)
        {
          [path closePath];
        }
      }

      else if (v10)
      {
        if (v10 == 1)
        {
          [path lineToPoint:{*&sfr_head[2], *&sfr_head[4]}];
        }
      }

      else
      {
        if (!v8)
        {
          [path moveToPoint:{*&sfr_head[2], *&sfr_head[4]}];
        }

        v8 = 0;
      }

      sfr_head += 6;
    }

    while (sfr_head < v9);
  }
}

- (void)appendBezierPath:(id)path skippingInitialMoveIfPossible:(BOOL)possible
{
  possibleCopy = possible;
  v7 = objc_opt_class();
  if (v7 == objc_opt_class())
  {

    [path _appendToPath:self skippingInitialMoveIfPossible:possibleCopy];
  }

  else
  {
    v8 = possibleCopy && [(CRLBezierPath *)self elementCount]> 0;
    elementCount = [path elementCount];
    if (elementCount >= 1)
    {
      v10 = elementCount;
      for (i = 0; i != v10; ++i)
      {
        v12 = [path elementAtIndex:i associatedPoints:&v13];
        if (v12 > 1)
        {
          if (v12 == 2)
          {
            [(CRLBezierPath *)self curveToPoint:v17 controlPoint1:v18 controlPoint2:v13, v14, v15, v16];
          }

          else if (v12 == 3)
          {
            [(CRLBezierPath *)self closePath];
          }
        }

        else if (v12)
        {
          if (v12 == 1)
          {
            [(CRLBezierPath *)self lineToPoint:v13, v14];
          }
        }

        else
        {
          if (!v8)
          {
            [(CRLBezierPath *)self moveToPoint:v13, v14];
          }

          v8 = 0;
        }
      }
    }
  }
}

- (void)p_appendPointsInRange:(_NSRange)range fromBezierPath:(id)path countingSubpaths:(unint64_t *)subpaths
{
  length = range.length;
  location = range.location;
  v10 = range.location + range.length;
  if (range.location + range.length > [path elementCount])
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101328840();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101328854();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101327A4C();
    }

    [CRLAssertionHandler handleFailureInFunction:[NSString stringWithUTF8String:"[CRLBezierPath p_appendPointsInRange:fromBezierPath:countingSubpaths:]"] file:[NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLBezierPath.m"] lineNumber:2004 isFatal:0 description:"Point append range is out of range of available points."];
  }

  if ((*(&self->sfr_bpFlags + 1) & 4) != 0)
  {
    v11 = (*(path + 201) >> 2) & 1;
  }

  else
  {
    v11 = 0;
  }

  if (location < v10)
  {
    v12 = location;
    do
    {
      v25 = xmmword_1014629F0;
      v26 = xmmword_1014629F0;
      v27 = xmmword_1014629F0;
      v13 = [path elementAtIndex:v12 associatedPoints:&v25];
      if (v13 > 1)
      {
        if (v13 == 2)
        {
          if ([(CRLBezierPath *)self isEmpty])
          {
            +[CRLAssertionHandler _atomicIncrementAssertCount];
            if (qword_101AD5A10 != -1)
            {
              sub_101328918();
            }

            if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
            {
              sub_101328940();
            }

            if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
            {
              sub_101327A4C();
            }

            sub_10028E070("Fatal Assertion failure: %{public}s %{public}s:%d Unable to add a curve when there is no current point.", v16, v17, v18, v19, v20, v21, v22, "[CRLBezierPath p_appendPointsInRange:fromBezierPath:countingSubpaths:]");
            v23 = [CRLAssertionHandler handleFailureInFunction:[NSString stringWithUTF8String:"[CRLBezierPath p_appendPointsInRange:fromBezierPath:countingSubpaths:]"] file:[NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLBezierPath.m"] lineNumber:2019 isFatal:1 description:"Unable to add a curve when there is no current point."];
            SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v23, v24);
            abort();
          }

          if (v12 > location)
          {
            v14 = v11;
          }

          else
          {
            v14 = 0;
          }

          if (v14 == 1)
          {
            v15 = *(*(path + 4) + 8 * v12);
          }

          else
          {
            v15 = NAN;
          }

          [(CRLBezierPath *)self _deviceCurveToPoint:v27 controlPoint1:v25 controlPoint2:v26 elementLength:v15];
        }

        else if (v13 == 3)
        {
          [(CRLBezierPath *)self closePath];
        }
      }

      else if (v13)
      {
        if (v13 == 1)
        {
          [(CRLBezierPath *)self lineToPoint:v25];
        }
      }

      else
      {
        ++*subpaths;
        [(CRLBezierPath *)self moveToPoint:v25];
      }

      ++v12;
      --length;
    }

    while (length);
  }
}

- (id)copyWithPointsInRange:(_NSRange)range countingSubpaths:(unint64_t *)subpaths
{
  length = range.length;
  location = range.location;
  v8 = objc_alloc_init(CRLBezierPath);
  v9 = v8;
  if ((*(&self->sfr_bpFlags + 1) & 4) != 0)
  {
    [(CRLBezierPath *)v8 calculateLengths];
  }

  if (length)
  {
    v12[0] = xmmword_1014629F0;
    v12[1] = xmmword_1014629F0;
    v12[2] = xmmword_1014629F0;
    v12[3] = xmmword_1014629F0;
    v10 = [(CRLBezierPath *)self elementAtIndex:location allPoints:v12];
    if (v10)
    {
      ++*subpaths;
      if (v10 <= 3)
      {
        [(CRLBezierPath *)v9 moveToPoint:v12[0]];
      }
    }

    [(CRLBezierPath *)v9 p_appendPointsInRange:location fromBezierPath:length countingSubpaths:self, subpaths];
  }

  return v9;
}

- (void)appendBezierPathWithRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  [(CRLBezierPath *)self moveToPoint:?];
  v12.origin.x = x;
  v12.origin.y = y;
  v12.size.width = width;
  v12.size.height = height;
  MaxX = CGRectGetMaxX(v12);
  v13.origin.x = x;
  v13.origin.y = y;
  v13.size.width = width;
  v13.size.height = height;
  [(CRLBezierPath *)self lineToPoint:MaxX, CGRectGetMinY(v13)];
  v14.origin.x = x;
  v14.origin.y = y;
  v14.size.width = width;
  v14.size.height = height;
  v9 = CGRectGetMaxX(v14);
  v15.origin.x = x;
  v15.origin.y = y;
  v15.size.width = width;
  v15.size.height = height;
  [(CRLBezierPath *)self lineToPoint:v9, CGRectGetMaxY(v15)];
  v16.origin.x = x;
  v16.origin.y = y;
  v16.size.width = width;
  v16.size.height = height;
  MinX = CGRectGetMinX(v16);
  v17.origin.x = x;
  v17.origin.y = y;
  v17.size.width = width;
  v17.size.height = height;
  [(CRLBezierPath *)self lineToPoint:MinX, CGRectGetMaxY(v17)];

  [(CRLBezierPath *)self closePath];
}

- (void)appendBezierPathWithPoints:(CGPoint *)points count:(int64_t)count
{
  if (count >= 1)
  {
    if ([(CRLBezierPath *)self isEmpty]|| (*&self->sfr_bpFlags & 0x300) == 0x100)
    {
      [(CRLBezierPath *)self moveToPoint:points->x, points->y];
    }

    else
    {
      [(CRLBezierPath *)self lineToPoint:points->x, points->y];
    }

    v7 = count - 1;
    if (v7)
    {
      p_y = &points[1].y;
      do
      {
        [(CRLBezierPath *)self lineToPoint:*(p_y - 1), *p_y];
        p_y += 2;
        --v7;
      }

      while (v7);
    }
  }
}

- (void)appendBezierPathWithOvalInRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v13 = *&CGAffineTransformIdentity.c;
  *&v16.a = *&CGAffineTransformIdentity.a;
  *&v16.c = v13;
  *&v16.tx = *&CGAffineTransformIdentity.tx;
  v8 = objc_alloc_init(CRLBezierPath);
  [(CRLBezierPath *)v8 appendBezierPathWithArcWithCenter:CGPointZero.x radius:CGPointZero.y startAngle:1.0 endAngle:-45.0, 315.0];
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
  *&v15.a = *&v16.a;
  *&v15.c = v13;
  *&v15.tx = *&v16.tx;
  CGAffineTransformTranslate(&v16, &v15, MidX, MidY);
  v19.origin.x = x;
  v19.origin.y = y;
  v19.size.width = width;
  v19.size.height = height;
  v11 = CGRectGetWidth(v19) * 0.5;
  v20.origin.x = x;
  v20.origin.y = y;
  v20.size.width = width;
  v20.size.height = height;
  v12 = CGRectGetHeight(v20);
  v14 = v16;
  CGAffineTransformScale(&v15, &v14, v11, v12 * 0.5);
  v16 = v15;
  [(CRLBezierPath *)v8 transformUsingAffineTransform:&v15];
  [(CRLBezierPath *)self appendBezierPath:v8];
}

- (void)_appendArcSegmentWithCenter:(CGPoint)center radius:(double)radius angle1:(double)angle1 angle2:(double)angle2
{
  y = center.y;
  x = center.x;
  v12 = __sincos_stret((angle2 - angle1) * 0.5);
  v13 = (1.0 - v12.__cosval) * 4.0 / (v12.__sinval * 3.0);
  v14 = __sincos_stret(angle1);
  v15 = v13 * radius;
  v16 = x + radius * v14.__cosval - v13 * radius * v14.__sinval;
  v17 = y + radius * v14.__sinval + v13 * radius * v14.__cosval;
  v18 = __sincos_stret(angle2);

  [(CRLBezierPath *)self _deviceCurveToPoint:x + radius * v18.__cosval controlPoint1:y + radius * v18.__sinval controlPoint2:v16 elementLength:v17, x + radius * v18.__cosval + v15 * v18.__sinval, y + radius * v18.__sinval - v15 * v18.__cosval, NAN];
}

- (void)appendBezierPathWithArcWithCenter:(CGPoint)center radius:(double)radius startAngle:(double)angle endAngle:(double)endAngle clockwise:(BOOL)clockwise
{
  y = center.y;
  x = center.x;
  if (__fpclassifyd(angle) <= 2)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101328A04();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101328A18();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101327A4C();
    }

    sub_10028E070("Fatal Assertion failure: %{public}s %{public}s:%d angle1 should not be infinte or NaN (%f)", v22, v23, v24, v25, v26, v27, v28, "[CRLBezierPath appendBezierPathWithArcWithCenter:radius:startAngle:endAngle:clockwise:]");
    v29 = [CRLAssertionHandler handleFailureInFunction:[NSString stringWithUTF8String:"[CRLBezierPath appendBezierPathWithArcWithCenter:radius:startAngle:endAngle:clockwise:]"] file:[NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLBezierPath.m"] lineNumber:2175 isFatal:1 description:"angle1 should not be infinte or NaN (%f)", *&angle, "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLBezierPath.m", 2175, *&angle];
LABEL_37:
    SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v29, *&v30);
    abort();
  }

  if (__fpclassifyd(endAngle) <= 2)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101328AE8();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101328AFC();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101327A4C();
    }

    sub_10028E070("Fatal Assertion failure: %{public}s %{public}s:%d angle2 should not be infinte or NaN (%f)", v32, v33, v34, v35, v36, v37, v38, "[CRLBezierPath appendBezierPathWithArcWithCenter:radius:startAngle:endAngle:clockwise:]");
    v29 = [CRLAssertionHandler handleFailureInFunction:[NSString stringWithUTF8String:"[CRLBezierPath appendBezierPathWithArcWithCenter:radius:startAngle:endAngle:clockwise:]"] file:[NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLBezierPath.m"] lineNumber:2176 isFatal:1 description:"angle2 should not be infinte or NaN (%f)", *&endAngle, "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLBezierPath.m", 2176, *&endAngle];
    goto LABEL_37;
  }

  v14 = angle * 3.14159265 / 180.0;
  v15 = endAngle * 3.14159265;
  v16 = __sincos_stret(v14);
  v17 = x + radius * v16.__cosval;
  v18 = y + radius * v16.__sinval;
  if ([(CRLBezierPath *)self isEmpty])
  {
    [(CRLBezierPath *)self _deviceMoveToPoint:v17, v18];
  }

  else
  {
    [(CRLBezierPath *)self _deviceLineToPoint:v17, v18];
  }

  v19 = v15 / 180.0;
  if (clockwise)
  {
      ;
    }

    v20 = v14 - v19;
    if (v14 - v19 > 1.57079633)
    {
      do
      {
        v21 = v14 + -1.57079633;
        [(CRLBezierPath *)self _appendArcSegmentWithCenter:x radius:y angle1:radius angle2:v14, v14 + -1.57079633];
        v20 = v21 - v19;
        v14 = v14 + -1.57079633;
      }

      while (v21 - v19 > 1.57079633);
      goto LABEL_18;
    }

LABEL_17:
    v21 = v14;
    goto LABEL_18;
  }

    ;
  }

  v20 = v19 - v14;
  if (v19 - v14 <= 1.57079633)
  {
    goto LABEL_17;
  }

  do
  {
    v21 = v14 + 1.57079633;
    [(CRLBezierPath *)self _appendArcSegmentWithCenter:x radius:y angle1:radius angle2:v14, v14 + 1.57079633];
    v20 = v19 - v21;
    v14 = v14 + 1.57079633;
  }

  while (v19 - v21 > 1.57079633);
LABEL_18:
  if (v20 > 0.0)
  {

    [(CRLBezierPath *)self _appendArcSegmentWithCenter:x radius:y angle1:radius angle2:v21, v19];
  }
}

- (void)appendBezierPathWithArcFromPoint:(CGPoint)point toPoint:(CGPoint)toPoint radius:(double)radius
{
  y = toPoint.y;
  x = toPoint.x;
  v8 = point.y;
  v9 = point.x;
  b = CGAffineTransformIdentity.b;
  c = CGAffineTransformIdentity.c;
  tx = CGAffineTransformIdentity.tx;
  d = CGAffineTransformIdentity.d;
  ty = CGAffineTransformIdentity.ty;
  [(CRLBezierPath *)self currentPoint];
  v15 = v13 == v9 && v14 == v8;
  v31 = v14;
  v32 = v13;
  if (v15)
  {
    v33 = v9 - v13;
    v26 = v8 - v14;
    v16 = 0.0;
    radius = 0.0;
  }

  else
  {
    v26 = v8 - v14;
    v33 = v9 - v13;
    v16 = atan2(v8 - v14, v9 - v13);
  }

  v35.a = CGAffineTransformIdentity.a;
  v35.b = b;
  v35.c = c;
  v35.d = d;
  v35.tx = tx;
  v35.ty = ty;
  CGAffineTransformRotate(&v36, &v35, -v16);
  v34 = vaddq_f64(*&v36.tx, vmlaq_n_f64(vmulq_n_f64(*&v36.c, v26), *&v36.a, v33));
  v27 = vaddq_f64(*&v36.tx, vmlaq_n_f64(vmulq_n_f64(*&v36.c, y - v31), *&v36.a, x - v32));
  v17 = vmovn_s64(vceqq_f64(v34, v27));
  v18 = 0.0;
  v19 = 0.0;
  if ((v17.i32[0] & v17.i32[1] & 1) == 0)
  {
    v20 = vsubq_f64(v27, v34);
    v19 = 3.14159265 - fabs(atan2(v20.f64[1], v20.f64[0]));
  }

  v21 = sin(v19 * 0.5);
  if (v21 == 0.0)
  {
    v22 = 0.0;
    radiusCopy = v34.f64[1];
    v24 = v34.f64[0];
    radius = 0.0;
  }

  else
  {
    v24 = v34.f64[0] - radius * fabs(cos(v19 * 0.5) / v21);
    if (vmovn_s64(vcgtq_f64(v27, v34)).i32[1])
    {
      v18 = 1.57079633 - v19;
      v22 = -1.57079633;
      radiusCopy = radius;
    }

    else
    {
      radiusCopy = -radius;
      v18 = v19 + -1.57079633;
      v22 = 1.57079633;
    }
  }

  v35.a = CGAffineTransformIdentity.a;
  v35.b = b;
  v35.c = c;
  v35.d = d;
  v35.tx = tx;
  v35.ty = ty;
  CGAffineTransformRotate(&v36, &v35, v16);
  v23.f64[0] = v32;
  v23.f64[1] = v31;
  [(CRLBezierPath *)self appendBezierPathWithArcWithCenter:vmovn_s64(vmvnq_s8(vcgtq_f64(v27 radius:v34))).i8[4] & 1 startAngle:vaddq_f64(v23 endAngle:vaddq_f64(*&v36.tx clockwise:vmlaq_n_f64(vmulq_n_f64(*&v36.c, radiusCopy), *&v36.a, v24))), radius, (v16 + v22) * 180.0 / 3.14159265, (v16 + v18) * 180.0 / 3.14159265];
}

- (BOOL)containsPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  if ((byte_101A347B0 & 1) == 0)
  {
    byte_101A347B0 = 1;
  }

  [(CRLBezierPath *)self _doPath];
  sfr_path = self->sfr_path;
  if (!sfr_path)
  {
    return 0;
  }

  v7 = [(CRLBezierPath *)self windingRule]== 1;
  v8 = x;
  v9 = y;

  return CGPathContainsPoint(sfr_path, 0, *&v8, v7);
}

- (const)cString
{
  v3 = +[NSMutableData data];
  sfr_elementCount = self->sfr_elementCount;
  if (sfr_elementCount < 1)
  {
    goto LABEL_32;
  }

  sfr_head = self->sfr_head;
  v6 = &sfr_head[6 * sfr_elementCount];
  sfr_extraSegments = self->sfr_extraSegments;
  while (1)
  {
    if (sfr_head == self->sfr_head)
    {
      v9 = &v13;
      v8 = 256;
    }

    else
    {
      v13 = 32;
      v8 = 255;
      v9 = v14;
    }

    v10 = *sfr_head & 0xF;
    if (v10 > 1)
    {
      break;
    }

    if (v10)
    {
      v11 = __snprintf_chk(v9, v8, 0, 0x100uLL, "L %f %f");
    }

    else
    {
      v11 = __snprintf_chk(v9, v8, 0, 0x100uLL, "M %f %f");
    }

LABEL_14:
    if (v11 < 1 || v11 >= v8)
    {
      goto LABEL_25;
    }

    [v3 appendBytes:&v13 length:&v9[v11] - &v13];
    sfr_head += 6;
    if (sfr_head >= v6)
    {
      goto LABEL_32;
    }
  }

  if (v10 == 2)
  {
    v11 = __snprintf_chk(v9, v8, 0, 0x100uLL, "C %f %f %f %f %f %f", *sfr_extraSegments, sfr_extraSegments[1], sfr_extraSegments[2], sfr_extraSegments[3], *&sfr_head[2], *&sfr_head[4]);
    sfr_extraSegments += 4;
    goto LABEL_14;
  }

  if (v10 == 3)
  {
    *v9 = 90;
    v11 = 1;
    goto LABEL_14;
  }

  +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    sub_101328BCC();
  }

  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_101328BF4();
  }

  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_101327A4C();
  }

  [CRLAssertionHandler handleFailureInFunction:[NSString stringWithUTF8String:"[CRLBezierPath cString]"] file:[NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLBezierPath.m"] lineNumber:2405 isFatal:0 description:"Unhandled path element type"];
LABEL_25:
  +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    sub_101328CB8();
  }

  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_101328CE0();
  }

  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_101327A4C();
  }

  [CRLAssertionHandler handleFailureInFunction:[NSString stringWithUTF8String:"[CRLBezierPath cString]"] file:[NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLBezierPath.m"] lineNumber:2413 isFatal:0 description:"buffer too small for path element string"];
LABEL_32:
  v13 = 0;
  [v3 appendBytes:&v13 length:1];
  return [v3 bytes];
}

- (CRLBezierPath)initWithCString:(const char *)string
{
  v4 = [(CRLBezierPath *)self init];
  v6 = v4;
  if (!string || !v4 || !*string)
  {
    return v6;
  }

  v42 = 0;
  v41 = 0;
  *&v5 = 67109378;
  v40 = v5;
  do
  {
    v7 = v42;
    v8 = string[v42];
    if (v8 == 32)
    {
      v9 = &string[v42 + 1];
      do
      {
        ++v7;
        v10 = *v9++;
        v8 = v10;
      }

      while (v10 == 32);
    }

    v42 = v7 + 1;
    if (v8 > 98)
    {
      if (v8 > 108)
      {
        switch(v8)
        {
          case 'z':
            goto LABEL_28;
          case 'q':
            goto LABEL_27;
          case 'm':
LABEL_26:
            sub_1001A6DB4(string, &v42, &v41);
            v15 = v14;
            sub_1001A6DB4(string, &v42, &v41);
            [(CRLBezierPath *)v6 moveToPoint:v15, v16];
            continue;
        }
      }

      else
      {
        switch(v8)
        {
          case 'c':
            goto LABEL_30;
          case 'e':
            continue;
          case 'l':
LABEL_18:
            sub_1001A6DB4(string, &v42, &v41);
            v12 = v11;
            sub_1001A6DB4(string, &v42, &v41);
            [(CRLBezierPath *)v6 lineToPoint:v12, v13];
            continue;
        }
      }
    }

    else if (v8 > 76)
    {
      switch(v8)
      {
        case 'M':
          goto LABEL_26;
        case 'Q':
LABEL_27:
          sub_1001A6DB4(string, &v42, &v41);
          v18 = v17;
          sub_1001A6DB4(string, &v42, &v41);
          v20 = v19;
          sub_1001A6DB4(string, &v42, &v41);
          v22 = v21;
          sub_1001A6DB4(string, &v42, &v41);
          [(CRLBezierPath *)v6 curveToPoint:v22 controlPoint:v23, v18, v20];
          continue;
        case 'Z':
LABEL_28:
          [(CRLBezierPath *)v6 closePath];
          continue;
      }
    }

    else if (v8 <= 68)
    {
      if (v8 == 67)
      {
LABEL_30:
        sub_1001A6DB4(string, &v42, &v41);
        v25 = v24;
        sub_1001A6DB4(string, &v42, &v41);
        v27 = v26;
        sub_1001A6DB4(string, &v42, &v41);
        v29 = v28;
        sub_1001A6DB4(string, &v42, &v41);
        v31 = v30;
        sub_1001A6DB4(string, &v42, &v41);
        v33 = v32;
        sub_1001A6DB4(string, &v42, &v41);
        [(CRLBezierPath *)v6 curveToPoint:v33 controlPoint1:v34 controlPoint2:v25, v27, v29, v31];
        continue;
      }

      if (!v8)
      {
        return v6;
      }
    }

    else
    {
      if (v8 == 69)
      {
        continue;
      }

      if (v8 == 76)
      {
        goto LABEL_18;
      }
    }

    v35 = +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101328DA4();
    }

    v36 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109890;
      v44 = v35;
      v45 = 2082;
      v46 = "[CRLBezierPath initWithCString:]";
      v47 = 2082;
      v48 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLBezierPath.m";
      v49 = 1024;
      v50 = 2485;
      _os_log_error_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Bezier path string contained unknown elmt.", buf, 0x22u);
      if (qword_101AD5A10 != -1)
      {
        sub_101328DCC();
      }
    }

    v37 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      v38 = +[CRLAssertionHandler packedBacktraceString];
      *buf = v40;
      v44 = v35;
      v45 = 2114;
      v46 = v38;
      _os_log_error_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
    }

    [CRLAssertionHandler handleFailureInFunction:[NSString stringWithUTF8String:"[CRLBezierPath initWithCString:]"] file:[NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLBezierPath.m"] lineNumber:2485 isFatal:0 description:"Bezier path string contained unknown elmt."];
    v41 = 1;
  }

  while (v41 != 1);
  +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    sub_101328DF4();
  }

  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_101328E1C();
  }

  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_101327A4C();
  }

  [CRLAssertionHandler handleFailureInFunction:[NSString stringWithUTF8String:"[CRLBezierPath initWithCString:]" file:v40] lineNumber:[NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLBezierPath.m"] isFatal:2491 description:0, "Something is wrong with this bezier path!"];
  return v6;
}

- (void)_addPathSegment:(int64_t)segment point:(CGPoint)point
{
  y = point.y;
  x = point.x;
  sfr_elementCount = self->sfr_elementCount;
  if (sfr_elementCount == self->sfr_elementMax)
  {
    self->sfr_elementMax = 2 * sfr_elementCount + 10;
    v9 = NSZoneRealloc([(CRLBezierPath *)self zone], self->sfr_head, 24 * self->sfr_elementMax);
    if (v9)
    {
      self->sfr_head = v9;
      if ((*(&self->sfr_bpFlags + 1) & 4) == 0)
      {
        goto LABEL_6;
      }

      v10 = NSZoneRealloc([(CRLBezierPath *)self zone], self->sfr_elementLength, 8 * self->sfr_elementMax);
      if (v10)
      {
        self->sfr_elementLength = v10;
        goto LABEL_6;
      }

      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_101328EE0();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_101328EF4();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_101327A4C();
      }

      sub_10028E070("Fatal Assertion failure: %{public}s %{public}s:%d sfr_head could not NSZoneRealloc. No memory (when reallocing sfr_elementLength)", v28, v29, v30, v31, v32, v33, v34, "[CRLBezierPath(CRLBezierPathDevicePrimitives) _addPathSegment:point:]");
      v35 = [NSString stringWithUTF8String:"[CRLBezierPath(CRLBezierPathDevicePrimitives) _addPathSegment:point:]"];
      v24 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLBezierPath.m"];
      v25 = "sfr_head could not NSZoneRealloc. No memory (when reallocing sfr_elementLength)";
      v26 = v35;
      v27 = 2577;
    }

    else
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_101328FB8();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_101328FCC();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_101327A4C();
      }

      sub_10028E070("Fatal Assertion failure: %{public}s %{public}s:%d sfr_head could not NSZoneRealloc. No memory (when reallocing sfr_head)", v16, v17, v18, v19, v20, v21, v22, "[CRLBezierPath(CRLBezierPathDevicePrimitives) _addPathSegment:point:]");
      v23 = [NSString stringWithUTF8String:"[CRLBezierPath(CRLBezierPathDevicePrimitives) _addPathSegment:point:]"];
      v24 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLBezierPath.m"];
      v25 = "sfr_head could not NSZoneRealloc. No memory (when reallocing sfr_head)";
      v26 = v23;
      v27 = 2568;
    }

    v36 = [CRLAssertionHandler handleFailureInFunction:v26 file:v24 lineNumber:v27 isFatal:1 description:v25];
    SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v36, v37);
    abort();
  }

LABEL_6:
  *&self->sfr_head[6 * self->sfr_elementCount] = *&self->sfr_head[6 * self->sfr_elementCount] & 0xFFFFFFFFFFFFFFF0 | segment & 0xF;
  *&self->sfr_head[6 * self->sfr_elementCount] &= 0xFuLL;
  v11 = self->sfr_elementCount;
  v12 = &self->sfr_head[6 * v11];
  *&v12[2] = x;
  *&v12[4] = y;
  self->sfr_elementCount = v11 + 1;
  sfr_path = self->sfr_path;
  if (sfr_path)
  {
    CFRelease(sfr_path);
    self->sfr_path = 0;
  }

  sfr_bpFlags = self->sfr_bpFlags;
  self->sfr_bpFlags = (*&sfr_bpFlags | 3);
  if (segment != 2 && (*&sfr_bpFlags & 0x400) != 0)
  {
    [(CRLBezierPath *)self calculateLengthOfElement:self->sfr_elementCount - 1];
    self->sfr_elementLength[self->sfr_elementCount - 1] = v15;
    self->sfr_totalLength = v15 + self->sfr_totalLength;
  }
}

- (void)_deviceMoveToPoint:(CGPoint)point
{
  v4 = (*&self->sfr_bpFlags >> 8) & 3;
  if (v4 == 2)
  {
    sfr_head = self->sfr_head;
    sfr_elementCount = self->sfr_elementCount;
    if ((*&sfr_head[6 * sfr_elementCount - 6] & 0xF) == 0)
    {
      goto LABEL_6;
    }
  }

  else if (v4 == 1)
  {
    sfr_head = self->sfr_head;
    sfr_elementCount = self->sfr_elementCount;
LABEL_6:
    *&sfr_head[6 * sfr_elementCount - 4] = point;
    goto LABEL_7;
  }

  [(CRLBezierPath *)self _addPathSegment:0 point:point.x, point.y];
  sfr_elementCount = self->sfr_elementCount;
LABEL_7:
  self->sfr_bpFlags = (*&self->sfr_bpFlags & 0xFFFFFCFF | 0x200);
  self->sfr_lastSubpathIndex = sfr_elementCount - 1;
}

- (void)_deviceCurveToPoint:(CGPoint)point controlPoint1:(CGPoint)point1 controlPoint2:(CGPoint)point2 elementLength:(double)length
{
  y = point2.y;
  x = point2.x;
  v9 = point1.y;
  v10 = point1.x;
  [(CRLBezierPath *)self _addPathSegment:2 point:point.x, point.y];
  sfr_extraSegmentCount = self->sfr_extraSegmentCount;
  if (sfr_extraSegmentCount == self->sfr_extraSegmentMax)
  {
    self->sfr_extraSegmentMax = 2 * sfr_extraSegmentCount + 10;
    sfr_extraSegments = NSZoneRealloc([(CRLBezierPath *)self zone], self->sfr_extraSegments, 32 * self->sfr_extraSegmentMax);
    if (!sfr_extraSegments)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_101329090();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_1013290A4();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_101327A4C();
      }

      sub_10028E070("Fatal Assertion failure: %{public}s %{public}s:%d sfr_extraSegments could not NSZoneRealloc. No memory", v18, v19, v20, v21, v22, v23, v24, "[CRLBezierPath(CRLBezierPathDevicePrimitives) _deviceCurveToPoint:controlPoint1:controlPoint2:elementLength:]");
      v25 = [CRLAssertionHandler handleFailureInFunction:[NSString stringWithUTF8String:"[CRLBezierPath(CRLBezierPathDevicePrimitives) _deviceCurveToPoint:controlPoint1:controlPoint2:elementLength:]"] file:[NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLBezierPath.m"] lineNumber:2642 isFatal:1 description:"sfr_extraSegments could not NSZoneRealloc. No memory"];
      SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v25, v26);
      abort();
    }

    self->sfr_extraSegments = sfr_extraSegments;
    sfr_extraSegmentCount = self->sfr_extraSegmentCount;
  }

  else
  {
    sfr_extraSegments = self->sfr_extraSegments;
  }

  v14 = &sfr_extraSegments[32 * sfr_extraSegmentCount];
  *v14 = v10;
  v14[1] = v9;
  v14[2] = x;
  v14[3] = y;
  self->sfr_extraSegmentCount = sfr_extraSegmentCount + 1;
  v15 = &self->sfr_head[6 * self->sfr_elementCount];
  *&v15[-6] = *&v15[-6] & 0xFLL | (16 * sfr_extraSegmentCount);
  sfr_bpFlags = self->sfr_bpFlags;
  self->sfr_bpFlags = (*&sfr_bpFlags & 0xFFFFFCFB | 0x200);
  if ((*&sfr_bpFlags & 0x400) != 0)
  {
    if ((*&length & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
    {
      [(CRLBezierPath *)self calculateLengthOfElement:self->sfr_elementCount - 1];
      length = v17;
    }

    self->sfr_elementLength[self->sfr_elementCount - 1] = length;
    self->sfr_totalLength = length + self->sfr_totalLength;
  }
}

- (id)description
{
  v3 = +[NSMutableString string];
  [v3 appendFormat:@"CRLBezierPath <%p>", self];
  if (![(CRLBezierPath *)self isEmpty])
  {
    [(CRLBezierPath *)self bounds];
    [v3 appendFormat:@"\n  Bounds: %@", NSStringFromCGRect(v16)];
    [(CRLBezierPath *)self controlPointBounds];
    [v3 appendFormat:@"\n  Control point bounds: %@", NSStringFromCGRect(v17)];
    elementCount = [(CRLBezierPath *)self elementCount];
    if (elementCount >= 1)
    {
      v5 = elementCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(CRLBezierPath *)self elementAtIndex:i associatedPoints:v13];
        if (v7 > 1)
        {
          if (v7 == 2)
          {
            [v3 appendFormat:@"\n    %f %f %f %f %f %f curveto", v13[0], v13[1], v14, v15];
          }

          else if (v7 == 3)
          {
            [v3 appendString:@"\n    closepath"];
          }
        }

        else if (v7)
        {
          if (v7 == 1)
          {
            [v3 appendFormat:@"\n    %f %f lineto", v13[0], v9, v10, v11, v12];
          }
        }

        else
        {
          [v3 appendFormat:@"\n    %f %f moveto", v13[0], v9, v10, v11, v12];
        }
      }
    }
  }

  return v3;
}

- (BOOL)isCompound
{
  elementCount = [(CRLBezierPath *)self elementCount];
  if (elementCount < 1)
  {
    v7 = 0;
  }

  else
  {
    v4 = elementCount;
    v5 = 0;
    v6 = 0;
    do
    {
      if (![(CRLBezierPath *)self elementAtIndex:v5])
      {
        ++v6;
      }

      ++v5;
    }

    while (v4 != v5);
    v7 = v6 - ([(CRLBezierPath *)self elementAtIndex:v4 - 1]== 0);
  }

  return v7 > 1;
}

- (BOOL)isOpen
{
  elementCount = [(CRLBezierPath *)self elementCount];
  x = CGPointZero.x;
  y = CGPointZero.y;
  if (elementCount < 1)
  {
    v9 = CGPointZero.x;
    v10 = CGPointZero.y;
    return !sub_10011ECC8(x, y, v9, v10);
  }

  else
  {
    v6 = elementCount;
    v7 = 0;
    v8 = 0;
    v9 = CGPointZero.x;
    v10 = CGPointZero.y;
    do
    {
      v11 = [(CRLBezierPath *)self elementAtIndex:v7 associatedPoints:&v13];
      if (v11 > 1)
      {
        if (v11 == 2)
        {
          v9 = v15;
          v10 = v16;
        }

        else if (v11 == 3)
        {
          return 0;
        }
      }

      else if (v11)
      {
        if (v11 == 1)
        {
          v9 = v13;
          v10 = v14;
        }
      }

      else
      {
        v9 = v13;
        v10 = v14;
        if (!v8)
        {
          x = v13;
          y = v14;
        }

        ++v8;
      }

      ++v7;
    }

    while (v6 != v7);
    if (v8 <= 1)
    {
      return !sub_10011ECC8(x, y, v9, v10);
    }

    return 0;
  }
}

- (BOOL)isLineSegment
{
  if ([(CRLBezierPath *)self elementCount]== 2 && ![(CRLBezierPath *)self elementAtIndex:0])
  {
    v3 = 1;
    v5 = [(CRLBezierPath *)self elementAtIndex:1];
    if (v5 == 1)
    {
      return v3;
    }

    if (v5 == 2)
    {
      [(CRLBezierPath *)self elementAtIndex:0 associatedPoints:&v10];
      [(CRLBezierPath *)self elementAtIndex:1 associatedPoints:v12];
      v6 = v10;
      v7 = v11;
      v8 = v13;
      v9 = v14;
      if (sub_1001B0978(v12[0], v12[1], v10, v11, v13, v14))
      {
        return sub_1001B0978(v12[2], v12[3], v6, v7, v8, v9);
      }
    }
  }

  return 0;
}

- (BOOL)isEffectivelyClosed
{
  if ([(CRLBezierPath *)self containsClosePathElement])
  {
    return 1;
  }

  if ([(CRLBezierPath *)self elementCount]< 2 || [(CRLBezierPath *)self elementAtIndex:0 associatedPoints:&v10])
  {
    return 0;
  }

  v4 = [(CRLBezierPath *)self elementAtIndex:[(CRLBezierPath *)self elementCount]- 1 associatedPoints:v9];
  if (v4 < 2)
  {
    v5 = v10;
    v6 = v11;
    v7 = *v9;
    v8 = *&v9[1];
  }

  else
  {
    if (v4 != 2)
    {
      return v4 == 3;
    }

    v5 = v10;
    v6 = v11;
    v7 = *&v9[4];
    v8 = *&v9[5];
  }

  return v6 == v8 && v5 == v7;
}

- (BOOL)containsElementsOtherThanMoveAndClose
{
  elementCount = [(CRLBezierPath *)self elementCount];
  if (elementCount < 2)
  {
    return 0;
  }

  v4 = elementCount;
  v5 = 1;
  while (![(CRLBezierPath *)self elementAtIndex:v5]|| [(CRLBezierPath *)self elementAtIndex:v5]== 3)
  {
    if (v4 == ++v5)
    {
      return 0;
    }
  }

  return 1;
}

- (unint64_t)totalSubpathCountIncludingEffectivelyEmptySubpaths
{
  elementCount = [(CRLBezierPath *)self elementCount];
  if (elementCount < 1)
  {
    return 0;
  }

  v4 = elementCount;
  v5 = 0;
  v6 = 0;
  do
  {
    if (![(CRLBezierPath *)self elementAtIndex:v5])
    {
      ++v6;
    }

    ++v5;
  }

  while (v4 != v5);
  return v6;
}

- (NSArray)rangesOfSubpaths
{
  v3 = +[NSMutableArray array];
  elementCount = [(CRLBezierPath *)self elementCount];
  if (elementCount >= 1)
  {
    v5 = 0;
    v6 = 0;
    for (i = 0; i != elementCount; ++i)
    {
      if ([(CRLBezierPath *)self elementAtIndex:i])
      {
        v8 = v6;
      }

      else
      {
        if (v6 >= 1)
        {
          v9 = [NSValue valueWithRange:v5, v6];
          [v3 addObject:v9];
        }

        v8 = 0;
        v5 = i;
      }

      v6 = v8 + 1;
    }

    if ((v8 & 0x8000000000000000) == 0)
    {
      v10 = [NSValue valueWithRange:v5, v8 + 1];
      [v3 addObject:v10];
    }
  }

  return v3;
}

- (double)flattenedArea
{
  selfCopy = self;
  if (![(CRLBezierPath *)selfCopy isFlat])
  {
    bezierPathByFlatteningPath = [(CRLBezierPath *)selfCopy bezierPathByFlatteningPath];

    selfCopy = bezierPathByFlatteningPath;
  }

  elementCount = [(CRLBezierPath *)selfCopy elementCount];
  v5 = 0.0;
  if (elementCount >= 3)
  {
    v6 = elementCount - 1;
    [(CRLBezierPath *)selfCopy elementAtIndex:elementCount - 1 associatedPoints:&v12];
    v7 = 0;
    v9 = v12;
    v8 = v13;
    do
    {
      [(CRLBezierPath *)selfCopy elementAtIndex:v7 associatedPoints:&v12];
      v10 = -(v13 * v9);
      v9 = v12;
      v5 = v5 + v10 + v12 * v8;
      ++v7;
      v8 = v13;
    }

    while (v6 != v7);
    v5 = v5 * 0.5;
  }

  return fabs(v5);
}

- (CGRect)boundsIncludingStroke
{
  [(CRLBezierPath *)self lineWidth];
  v4 = v3;
  lineJoinStyle = [(CRLBezierPath *)self lineJoinStyle];
  lineCapStyle = [(CRLBezierPath *)self lineCapStyle];
  [(CRLBezierPath *)self miterLimit];

  [(CRLBezierPath *)self boundsIncludingStrokeWidth:lineJoinStyle joinStyle:lineCapStyle capStyle:0 miterLimit:v4 needsToExtendJoins:v7];
  result.size.height = v11;
  result.size.width = v10;
  result.origin.y = v9;
  result.origin.x = v8;
  return result;
}

- (NSString)inferredAccessibilityDescription
{
  [(CRLBezierPath *)self bounds];
  v4 = v3;
  v6 = v5;
  if ([(CRLBezierPath *)self isLineSegment])
  {
    v7 = +[NSBundle mainBundle];
    v8 = [v7 localizedStringForKey:@"Line" value:0 table:0];
  }

  else if ([(CRLBezierPath *)self isRectangular])
  {
    v11 = +[NSBundle mainBundle];
    v7 = v11;
    if (v6 == v4 || vabdd_f64(v6, v4) < 0.00999999978)
    {
      v8 = [v11 localizedStringForKey:@"Square" value:0 table:0];
    }

    else
    {
      v8 = [v11 localizedStringForKey:@"Rectangle" value:0 table:0];
    }
  }

  else if ([(CRLBezierPath *)self isCircular])
  {
    v12 = +[NSBundle mainBundle];
    v7 = v12;
    if (v6 == v4 || vabdd_f64(v6, v4) < 0.00999999978)
    {
      v8 = [v12 localizedStringForKey:@"Circle" value:0 table:0];
    }

    else
    {
      v8 = [v12 localizedStringForKey:@"Oval" value:0 table:0];
    }
  }

  else if ([(CRLBezierPath *)self isTriangular])
  {
    v7 = +[NSBundle mainBundle];
    v8 = [v7 localizedStringForKey:@"Triangle" value:0 table:0];
  }

  else
  {
    isDiamond = [(CRLBezierPath *)self isDiamond];
    v14 = +[NSBundle mainBundle];
    v7 = v14;
    if (isDiamond)
    {
      [v14 localizedStringForKey:@"Diamond" value:0 table:0];
    }

    else
    {
      [v14 localizedStringForKey:@"Shape" value:0 table:0];
    }
    v8 = ;
  }

  v9 = v8;

  return v9;
}

- (NSString)inferredLocalizedAccessibilityDescriptionPlaceholder
{
  [(CRLBezierPath *)self bounds];
  v4 = v3;
  v6 = v5;
  if ([(CRLBezierPath *)self isLineSegment])
  {
    v7 = +[NSBundle mainBundle];
    v8 = [v7 localizedStringForKey:@"Describe the selected line." value:0 table:0];
  }

  else if ([(CRLBezierPath *)self isRectangular])
  {
    v11 = +[NSBundle mainBundle];
    v7 = v11;
    if (v6 == v4 || vabdd_f64(v6, v4) < 0.00999999978)
    {
      v8 = [v11 localizedStringForKey:@"Describe the selected square." value:0 table:0];
    }

    else
    {
      v8 = [v11 localizedStringForKey:@"Describe the selected rectangle." value:0 table:0];
    }
  }

  else if ([(CRLBezierPath *)self isCircular])
  {
    v12 = +[NSBundle mainBundle];
    v7 = v12;
    if (v6 == v4 || vabdd_f64(v6, v4) < 0.00999999978)
    {
      v8 = [v12 localizedStringForKey:@"Describe the selected circle." value:0 table:0];
    }

    else
    {
      v8 = [v12 localizedStringForKey:@"Describe the selected oval." value:0 table:0];
    }
  }

  else if ([(CRLBezierPath *)self isTriangular])
  {
    v7 = +[NSBundle mainBundle];
    v8 = [v7 localizedStringForKey:@"Describe the selected triangle." value:0 table:0];
  }

  else
  {
    isDiamond = [(CRLBezierPath *)self isDiamond];
    v14 = +[NSBundle mainBundle];
    v7 = v14;
    if (isDiamond)
    {
      [v14 localizedStringForKey:@"Describe the selected diamond." value:0 table:0];
    }

    else
    {
      [v14 localizedStringForKey:@"Describe the selected shape." value:0 table:0];
    }
    v8 = ;
  }

  v9 = v8;

  return v9;
}

- (id)strokedCopy
{
  if (![(CRLBezierPath *)self containsElementsOtherThanMoveAndClose])
  {
    v5 = +[CRLBezierPath bezierPath];
    goto LABEL_19;
  }

  p_strokedPathByUsingCG = [(CRLBezierPath *)self p_strokedPathByUsingCG];
  v4 = p_strokedPathByUsingCG;
  if (!p_strokedPathByUsingCG || ([p_strokedPathByUsingCG containsElementsOtherThanMoveAndClose] & 1) == 0)
  {
    v5 = 0;
LABEL_8:
    p_strokedPathByUsingBrushStroke = [(CRLBezierPath *)self p_strokedPathByUsingBrushStroke];

    v5 = p_strokedPathByUsingBrushStroke;
    if (!p_strokedPathByUsingBrushStroke)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_10132A7CC();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10132A7E0();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_10132A868();
      }

      v7 = off_1019EDA68;
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        +[CRLAssertionHandler packedBacktraceString];
        objc_claimAutoreleasedReturnValue();
        sub_10130E89C();
      }

      v8 = [NSString stringWithUTF8String:"[CRLBezierPath(CRLAdditions) strokedCopy]"];
      v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLBezierPath_CRLAdditions.mm"];
      [CRLAssertionHandler handleFailureInFunction:v8 file:v9 lineNumber:325 isFatal:0 description:"Unable to recover from CoreGraphics and CRLBrushStroke failing to stroke."];

      v5 = 0;
    }

    goto LABEL_18;
  }

  v5 = v4;
  if (([v5 containsElementsOtherThanMoveAndClose] & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_18:

LABEL_19:

  return v5;
}

- (id)p_strokedPathByUsingCG
{
  v3 = sub_10019FE64([(CRLBezierPath *)self lineCapStyle]);
  v4 = sub_10019FE64([(CRLBezierPath *)self lineJoinStyle]);
  cGPath = [(CRLBezierPath *)self CGPath];
  [(CRLBezierPath *)self lineWidth];
  v7 = v6;
  [(CRLBezierPath *)self miterLimit];
  CopyByStrokingPath = CGPathCreateCopyByStrokingPath(cGPath, 0, v7, v3, v4, v8);
  v10 = [CRLBezierPath bezierPathWithCGPath:CopyByStrokingPath];
  CGPathRelease(CopyByStrokingPath);

  return v10;
}

- (id)p_strokedPathByUsingBrushStroke
{
  lineCapStyle = [(CRLBezierPath *)self lineCapStyle];
  if (lineCapStyle > 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = *off_101845368[lineCapStyle];
  }

  v5 = [CRLBrushStroke alloc];
  v6 = +[CRLColor blackColor];
  [(CRLBezierPath *)self lineWidth];
  v8 = v7;
  lineCapStyle2 = [(CRLBezierPath *)self lineCapStyle];
  lineJoinStyle = [(CRLBezierPath *)self lineJoinStyle];
  v11 = +[CRLStrokePattern solidPattern];
  [(CRLBezierPath *)self miterLimit];
  v13 = [(CRLBrushStroke *)v5 initWithName:v4 color:v6 width:lineCapStyle2 cap:lineJoinStyle join:v11 pattern:v8 miterLimit:v12];

  v14 = [(CRLBrushStroke *)v13 strokedCopyOfPath:self];

  return v14;
}

- (id)uniteWithBezierPath:(id)path
{
  v3 = [NSArray arrayWithObjects:self, path, 0];
  v4 = [CRLBezierPath uniteBezierPaths:v3];

  return v4;
}

+ (id)uniteBezierPaths:(id)paths
{
  v3 = [CRLBezierPathBooleanOperationHelper pathByPerformingBooleanOperation:0 onPaths:paths];

  return v3;
}

- (id)intersectBezierPath:(id)path
{
  v3 = [NSArray arrayWithObjects:self, path, 0];
  v4 = [CRLBezierPath intersectBezierPaths:v3];

  return v4;
}

+ (id)intersectBezierPaths:(id)paths
{
  v3 = [CRLBezierPathBooleanOperationHelper pathByPerformingBooleanOperation:1 onPaths:paths];

  return v3;
}

- (id)subtractBezierPath:(id)path
{
  v3 = [NSArray arrayWithObjects:self, path, 0];
  v4 = [CRLBezierPath subtractBezierPaths:v3];

  return v4;
}

+ (id)subtractBezierPaths:(id)paths
{
  v3 = [CRLBezierPathBooleanOperationHelper pathByPerformingBooleanOperation:2 onPaths:paths];

  return v3;
}

- (id)excludeBezierPath:(id)path
{
  v3 = [NSArray arrayWithObjects:self, path, 0];
  v4 = [CRLBezierPath excludeBezierPaths:v3];

  return v4;
}

+ (id)excludeBezierPaths:(id)paths
{
  v3 = [CRLBezierPathBooleanOperationHelper pathByPerformingBooleanOperation:3 onPaths:paths];

  return v3;
}

+ (id)exteriorOfBezierPath:(id)path
{
  pathCopy = path;
  elementCount = [pathCopy elementCount];
  v5 = elementCount - 1;
  if (elementCount < 1)
  {
LABEL_22:
    v6 = pathCopy;
    goto LABEL_23;
  }

  v6 = 0;
  v7 = 0;
  v8 = -elementCount;
  v9 = 1;
  v10 = 1;
  do
  {
    if (!(v8 + v9) || ![pathCopy elementAtIndex:v9])
    {
      if (v10)
      {
        if (!v6)
        {
          v6 = +[CRLBezierPath bezierPath];
        }

        [v6 appendBezierPath:pathCopy fromSegment:v7 toSegment:v9];
      }

      if (v9 >= v5)
      {
        v10 = 0;
        goto LABEL_20;
      }

      [pathCopy elementAtIndex:v9 associatedPoints:v14];
      if ([v6 containsPoint:{v14[0], v14[1]}])
      {
        v11 = [pathCopy elementAtIndex:v9 + 1 associatedPoints:v15];
        if (v11 == 2)
        {
          v12 = [v6 containsPoint:{v15[4], v15[5]}];
        }

        else
        {
          if (v11 != 1)
          {
            v10 = 0;
            goto LABEL_19;
          }

          v12 = [v6 containsPoint:{v15[0], v15[1]}];
        }

        v10 = v12 ^ 1;
      }

      else
      {
        v10 = 1;
      }

LABEL_19:
      v7 = v9;
    }

LABEL_20:
    ++v9;
  }

  while (v8 + v9 != 1);
  if (!v6)
  {
    goto LABEL_22;
  }

LABEL_23:

  return v6;
}

+ (id)smoothBezierPath:(id)path withThreshold:(double)threshold
{
  v4 = [CRLBezierPathSimplifier simplifiedPathWithRawPath:path threshold:threshold];

  return v4;
}

- (id)bezierPathByOffsettingPath:(double)path joinStyle:(unint64_t)style
{
  if (path == 0.0)
  {
LABEL_2:
    selfCopy = self;
    goto LABEL_3;
  }

  isEmpty = [(CRLBezierPath *)self isEmpty];
  if (path < 0.0 && (isEmpty & 1) == 0)
  {
    [(CRLBezierPath *)self bounds];
    if (v11 <= path * -2.0)
    {
      [(CRLBezierPath *)self bounds];
      if (v12 <= path * -2.0)
      {
        +[CRLAssertionHandler _atomicIncrementAssertCount];
        if (qword_101AD5A10 != -1)
        {
          sub_10132A890();
        }

        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_10132A8A4();
        }

        if (qword_101AD5A10 != -1)
        {
          sub_10132A92C();
        }

        v15 = off_1019EDA68;
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          +[CRLAssertionHandler packedBacktraceString];
          objc_claimAutoreleasedReturnValue();
          sub_10130E89C();
        }

        v16 = [NSString stringWithUTF8String:"[CRLBezierPath(CRLAdditions) bezierPathByOffsettingPath:joinStyle:]"];
        v17 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLBezierPath_CRLAdditions.mm"];
        [CRLAssertionHandler handleFailureInFunction:v16 file:v17 lineNumber:464 isFatal:0 description:"Cannot offset path that is already smaller than the offset amount!"];

        goto LABEL_2;
      }
    }
  }

  if (![(CRLBezierPath *)self isRectangular])
  {
    v13 = [(CRLBezierPath *)self copy];
    [v13 setLineWidth:fabs(path + path)];
    [v13 setLineJoinStyle:style];
    strokedCopy = [v13 strokedCopy];
    if (path <= 0.0)
    {
      [v13 subtractBezierPath:strokedCopy];
    }

    else
    {
      [v13 uniteWithBezierPath:strokedCopy];
    }
    v6 = ;

    goto LABEL_4;
  }

  [(CRLBezierPath *)self bounds];
  v20 = CGRectInset(v19, -path, -path);
  if (path > 0.0 && style == 1)
  {
    selfCopy = [CRLBezierPath bezierPathWithLegacyRoundedRect:v20.origin.x cornerRadius:v20.origin.y, v20.size.width, v20.size.height, path];
  }

  else
  {
    selfCopy = [CRLBezierPath bezierPathWithRect:v20.origin.x, v20.origin.y, v20.size.width, v20.size.height];
  }

LABEL_3:
  v6 = selfCopy;
LABEL_4:

  return v6;
}

+ (CRLBezierPath)bezierPathWithConvexHullOfPoints:(CGPoint *)points count:(unint64_t)count
{
  v7 = +[CRLBezierPath bezierPath];
  v8 = v7;
  x = points->x;
  y = points->y;
  if (count)
  {
    p_y = &points->y;
    countCopy = count;
    do
    {
      v13 = *(p_y - 1);
      if (v13 >= x)
      {
        if (v13 == x && *p_y > y)
        {
          x = *(p_y - 1);
          y = *p_y;
        }
      }

      else
      {
        y = *p_y;
        x = *(p_y - 1);
      }

      p_y += 2;
      --countCopy;
    }

    while (countCopy);
  }

  [v7 moveToPoint:{x, y}];
  v14 = CGPointZero.x;
  v15 = CGPointZero.y;
  v16 = x;
  for (i = y; ; i = v15)
  {
    if (!count)
    {
      v27 = points->x;
      v28 = points->y;
      goto LABEL_26;
    }

    v18 = 0;
    v19 = &points->y;
    countCopy2 = count;
    do
    {
      v21 = v18;
      v22 = v14;
      v23 = v15;
      v24 = *(v19 - 1);
      v18 |= v16 < v24;
      if (v16 < v24)
      {
        v14 = *(v19 - 1);
        v15 = *v19;
        if (v21)
        {
          [self p_findPointWithGreatestSlopeFromStartPoint:v16 toPointA:i orPointB:{v22, v23}];
          v14 = v25;
          v15 = v26;
          v18 = 1;
        }
      }

      v19 += 2;
      --countCopy2;
    }

    while (countCopy2);
    if ((v18 & 1) == 0)
    {
      break;
    }

    [v8 lineToPoint:{v14, v15, v22, v23}];
    v16 = v14;
  }

  v27 = points->x;
  v29 = &points->y;
  v28 = points->y;
  countCopy3 = count;
  do
  {
    v31 = *(v29 - 1);
    if (v31 <= v27)
    {
      if (v31 == v27 && *v29 < v28)
      {
        v27 = *(v29 - 1);
        v28 = *v29;
      }
    }

    else
    {
      v28 = *v29;
      v27 = *(v29 - 1);
    }

    v29 += 2;
    --countCopy3;
  }

  while (countCopy3);
LABEL_26:
  [v8 lineToPoint:{v27, v28}];
  v32 = CGPointZero.x;
  v33 = CGPointZero.y;
  v34 = &points->y;
  while (count)
  {
    v35 = 0;
    v36 = v34;
    countCopy4 = count;
    do
    {
      v38 = v35;
      v39 = v32;
      v40 = v33;
      v41 = *(v36 - 1);
      v35 |= v27 > v41;
      if (v27 > v41)
      {
        v32 = *(v36 - 1);
        v33 = *v36;
        if (v38)
        {
          [self p_findPointWithGreatestSlopeFromStartPoint:v27 toPointA:v28 orPointB:{v39, v40}];
          v32 = v42;
          v33 = v43;
          v35 = 1;
        }
      }

      v36 += 2;
      --countCopy4;
    }

    while (countCopy4);
    if ((v35 & 1) == 0)
    {
      break;
    }

    [v8 lineToPoint:{v32, v33, v39, v40}];
    v27 = v32;
    v28 = v33;
  }

  [v8 lineToPoint:{x, y}];
  [v8 closePath];

  return v8;
}

+ (CGPoint)p_findPointWithGreatestSlopeFromStartPoint:(CGPoint)point toPointA:(CGPoint)a orPointB:(CGPoint)b
{
  y = b.y;
  x = b.x;
  v7 = a.y;
  v8 = a.x;
  v9 = point.y;
  v10 = a.x - point.x;
  v11 = b.x - point.x;
  if (a.x - point.x == 0.0 || v11 == 0.0)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10132A954();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10132A968();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10132A9F0();
    }

    v12 = off_1019EDA68;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_10130E89C();
    }

    v13 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[CRLBezierPath(CRLAdditions) p_findPointWithGreatestSlopeFromStartPoint:toPointA:orPointB:]");
    v14 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLBezierPath_CRLAdditions.mm"];
    [CRLAssertionHandler handleFailureInFunction:v13 file:v14 lineNumber:600 isFatal:0 description:"If delta X is 0, we would divide by zero."];
  }

  v15 = (v7 - v9) / v10;
  if (v10 == 0.0)
  {
    v15 = 1.79769313e308;
  }

  v16 = (y - v9) / v11;
  if (v11 == 0.0)
  {
    v16 = 1.79769313e308;
  }

  if (v15 <= v16)
  {
    if (v16 <= v15)
    {
      if (fabs(v11) > fabs(v10))
      {
        v8 = x;
        v7 = y;
      }
    }

    else
    {
      v8 = x;
      v7 = y;
    }
  }

  v17 = v8;
  v18 = v7;
  result.y = v18;
  result.x = v17;
  return result;
}

+ (CRLBezierPath)bezierPathWithConvexHullFromWrapPath:(id)path
{
  pathCopy = path;
  if ([pathCopy isEmpty])
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10132AA18();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10132AA2C();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10132AAB4();
    }

    v4 = off_1019EDA68;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_10130E89C();
    }

    v5 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[CRLBezierPath(CRLAdditions) bezierPathWithConvexHullFromWrapPath:]");
    v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLBezierPath_CRLAdditions.mm"];
    [CRLAssertionHandler handleFailureInFunction:v5 file:v6 lineNumber:629 isFatal:0 description:"The wrap path cannot be empty when calculating the convex hull."];
  }

  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x4812000000;
  v11[3] = sub_1001B2A34;
  v11[4] = sub_1001B2A58;
  v11[5] = &unk_1016A8115;
  v13 = 0;
  v14 = 0;
  __p = 0;
  v7 = [pathCopy bezierPathByFlatteningPathWithFlatness:1.0];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1001B2A70;
  v10[3] = &unk_101844D80;
  v10[4] = v11;
  [v7 iteratePathElementsWithBlock:v10];
  v8 = [CRLBezierPath bezierPathWithConvexHullOfPoints:"bezierPathWithConvexHullOfPoints:count:" count:?];

  _Block_object_dispose(v11, 8);
  if (__p)
  {
    v13 = __p;
    operator delete(__p);
  }

  return v8;
}

- (id)pathBySplittingAtPointOnPath:(CGPoint)path controlPointDistanceEqual:(BOOL)equal
{
  equalCopy = equal;
  x = path.x;
  v10 = 0.0;
  v11 = 0;
  [(CRLBezierPath *)self p_yValueFromXValue:&v11 elementIndex:&v10 parametricValue:path.x, path.y];
  v8 = [(CRLBezierPath *)self p_pathBySplittingAtPointGuaranteedToBeOnPath:equalCopy controlPointDistanceEqual:v11 elementIndex:x parametricValue:v7, v10];

  return v8;
}

- (id)p_pathBySplittingAtPointGuaranteedToBeOnPath:(CGPoint)path controlPointDistanceEqual:(BOOL)equal elementIndex:(int64_t)index parametricValue:(double)value
{
  equalCopy = equal;
  x = CGPointZero.x;
  y = CGPointZero.y;
  v11 = [CRLBezierPath bezierPath:path.x];
  for (i = 0; i < [(CRLBezierPath *)self elementCount]; ++i)
  {
    v13 = [(CRLBezierPath *)self elementAtIndex:i associatedPoints:&v78];
    if (index == i)
    {
      v14 = v78;
      v15 = v79;
      v16 = v80;
      v17 = v81;
      v18 = v83;
      v77 = v82;
      v19 = sub_10011F31C(v78, v79, x);
      v21 = sub_10011F340(v19, v20, value);
      v22 = sub_10011F334(x, y, v21);
      v24 = v23;
      v25 = sub_10011F31C(v16, v17, v14);
      v27 = sub_10011F340(v25, v26, value);
      v28 = sub_10011F334(v14, v15, v27);
      v30 = v29;
      v76 = v18;
      v31 = sub_10011F31C(v77, v18, v16);
      v33 = sub_10011F340(v31, v32, value);
      v34 = sub_10011F334(v16, v17, v33);
      v36 = v35;
      v37 = sub_10011F31C(v28, v30, v22);
      v39 = sub_10011F340(v37, v38, value);
      v75 = v22;
      v40 = v22;
      v41 = v24;
      v42 = sub_10011F334(v40, v24, v39);
      v44 = v43;
      v73 = v36;
      v74 = v34;
      v45 = sub_10011F31C(v34, v36, v28);
      v47 = sub_10011F340(v45, v46, value);
      v48 = sub_10011F334(v28, v30, v47);
      v50 = v49;
      v51 = sub_10011F31C(v48, v49, v42);
      v53 = sub_10011F340(v51, v52, value);
      v54 = sub_10011F334(v42, v44, v53);
      v56 = v55;
      if (equalCopy)
      {
        v57 = sub_10011F31C(v42, v44, v54);
        v59 = v58;
        v60 = sub_10011F31C(v48, v50, v54);
        v62 = sub_10011F340(v60, v61, -1.0);
        v63 = sub_10011F334(v57, v59, v62);
        v65 = sub_10011F340(v63, v64, 0.5);
        v67 = v66;
        v42 = sub_10011F334(v54, v56, v65);
        v44 = v68;
        v69 = sub_10011F340(v65, v67, -1.0);
        v48 = sub_10011F334(v54, v56, v69);
        v50 = v70;
      }

      [v11 curveToPoint:v54 controlPoint1:v56 controlPoint2:{v75, v41, v42, v44}];
      y = v76;
      x = v77;
      [v11 curveToPoint:v77 controlPoint1:v76 controlPoint2:{v48, v50, v74, v73}];
    }

    else if (v13 > 1)
    {
      if (v13 == 2)
      {
        [v11 curveToPoint:v82 controlPoint1:v83 controlPoint2:{v78, v79, v80, v81}];
        x = v82;
        y = v83;
      }

      else if (v13 == 3)
      {
        [v11 closePath];
      }
    }

    else
    {
      if (v13)
      {
        if (v13 != 1)
        {
          continue;
        }

        [v11 lineToPoint:{v78, v79}];
      }

      else
      {
        [v11 moveToPoint:{v78, v79}];
      }

      x = v78;
      y = v79;
    }
  }

  return v11;
}

- (id)pathByCreatingHoleInPathAtPoint:(CGPoint)point withDiameter:(id)diameter andThreshold:(double)threshold updatingPatternOffsetsBySubpath:(id)subpath
{
  y = point.y;
  x = point.x;
  diameterCopy = diameter;
  subpathCopy = subpath;
  v99 = 0.0;
  v100 = 0;
  [(CRLBezierPath *)self distanceToPoint:&v100 elementIndex:&v99 tValue:1 threshold:x findClosestMatch:y, threshold];
  v13 = v12;
  if (v12 > threshold || ([(CRLBezierPath *)self pointAt:v100 fromElement:v99], v15 = v14, v17 = v16, [(CRLBezierPath *)self gradientAt:v100 fromElement:v99], v20 = diameterCopy[2](v13, v15, v17, v18, v19), v20 <= 0.0))
  {
    v101 = 0;
    goto LABEL_6;
  }

  v21 = +[CRLBezierPath bezierPath];
  v22 = v100;
  if (v100)
  {
    v23 = v100 - 1;
  }

  else
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10132AADC();
    }

    v26 = off_1019EDA68;
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      sub_10132AB04();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10132AB8C();
    }

    v27 = off_1019EDA68;
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_10130E89C();
    }

    v28 = [NSString stringWithUTF8String:"[CRLBezierPath(CRLAdditions) pathByCreatingHoleInPathAtPoint:withDiameter:andThreshold:updatingPatternOffsetsBySubpath:]"];
    v29 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLBezierPath_CRLAdditions.mm"];
    [CRLAssertionHandler handleFailureInFunction:v28 file:v29 lineNumber:761 isFatal:0 description:"firstElementAfter should be at least 1."];

    v23 = 0;
  }

  v30 = v20 * 0.5;
  v31 = v99;
  v32 = v30;
  while (1)
  {
    v106 = xmmword_1014629F0;
    v107 = xmmword_1014629F0;
    v108 = xmmword_1014629F0;
    v109 = xmmword_1014629F0;
    v33 = [(CRLBezierPath *)self elementAtIndex:v23 + 1 allPoints:&v106];
    if (v33 == 3)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_10132ABB4();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10132ABDC();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_10132AC64();
      }

      v37 = off_1019EDA68;
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        +[CRLAssertionHandler packedBacktraceString];
        objc_claimAutoreleasedReturnValue();
        sub_10130E89C();
      }

      v38 = [NSString stringWithUTF8String:"[CRLBezierPath(CRLAdditions) pathByCreatingHoleInPathAtPoint:withDiameter:andThreshold:updatingPatternOffsetsBySubpath:]"];
      v39 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLBezierPath_CRLAdditions.mm"];
      [CRLAssertionHandler handleFailureInFunction:v38 file:v39 lineNumber:798 isFatal:0 description:"-pathByCreatingHoleInPathAtPoint doesn't know how to handle close elements."];

LABEL_34:
      v35 = 0;
      v36 = v23 + 1;
      v98 = 1;
      goto LABEL_35;
    }

    if ((v33 - 3) < 0xFFFFFFFFFFFFFFFELL)
    {
      goto LABEL_34;
    }

    [(CRLBezierPath *)self lengthOfElement:v23 + 1];
    if (v32 <= v31 * v34)
    {
      break;
    }

    if (!v23)
    {
      v98 = 0;
      v47 = 0;
      v41 = 0;
      v40 = 0.0;
      v48 = 1;
      v101 = v21;
      if (subpathCopy)
      {
        goto LABEL_55;
      }

LABEL_52:
      v49 = 0.0;
      v50 = 0.0;
      goto LABEL_62;
    }

    v32 = v32 - v31 * v34;
    --v23;
    v31 = 1.0;
    if (v32 <= 0.0)
    {
      v35 = 0;
      v98 = 0;
      v36 = v23 + 1;
LABEL_35:
      v40 = 0.0;
      goto LABEL_37;
    }
  }

  v98 = 0;
  v40 = v31 - v32 / v34;
  v36 = v23 + 1;
  v35 = 1;
LABEL_37:
  v101[0] = 0;
  v101 = [(CRLBezierPath *)self copyWithPointsInRange:0 countingSubpaths:v36, v101];

  v41 = v101[0];
  if (v35)
  {
    v106 = xmmword_1014629F0;
    v107 = xmmword_1014629F0;
    v108 = xmmword_1014629F0;
    v109 = xmmword_1014629F0;
    v42 = [(CRLBezierPath *)self elementAtIndex:v36 allPoints:&v106];
    if ((v42 - 1) >= 2)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_10132AC8C();
      }

      v43 = off_1019EDA68;
      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        sub_10132ACB4();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_10132AD3C();
      }

      v44 = off_1019EDA68;
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        +[CRLAssertionHandler packedBacktraceString];
        objc_claimAutoreleasedReturnValue();
        sub_10130E89C();
      }

      v45 = [NSString stringWithUTF8String:"[CRLBezierPath(CRLAdditions) pathByCreatingHoleInPathAtPoint:withDiameter:andThreshold:updatingPatternOffsetsBySubpath:]"];
      v46 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLBezierPath_CRLAdditions.mm"];
      [CRLAssertionHandler handleFailureInFunction:v45 file:v46 lineNumber:847 isFatal:0 description:"If we have a path before, the last element before +1 should be a curve or line."];
    }

    if (v42 == 1)
    {
      [v101 lineToPoint:{sub_100120ABC(*&v106, *(&v106 + 1), *&v107, *(&v107 + 1), v40)}];
    }

    else if (v42 == 2)
    {
      v102 = xmmword_1014629F0;
      v103 = xmmword_1014629F0;
      v104 = xmmword_1014629F0;
      v105 = xmmword_1014629F0;
      sub_100404958(&v106, &v102, 0.0, v40);
      [v101 curveToPoint:v105 controlPoint1:v103 controlPoint2:v104];
    }
  }

  v48 = (v23 + 1);
  v47 = 1;
  if (!subpathCopy)
  {
    goto LABEL_52;
  }

LABEL_55:
  elementCount = [v101 elementCount];
  if (elementCount < 1)
  {
    v50 = 0.0;
  }

  else
  {
    v52 = elementCount + 1;
    v50 = 0.0;
    do
    {
      if (![v101 elementAtIndex:v52 - 2])
      {
        break;
      }

      [v101 lengthOfElement:v52 - 2];
      v50 = v50 + v53;
      --v52;
    }

    while (v52 > 1);
  }

  v54 = [(CRLBezierPath *)self copyFromSegment:v48 t:v100 toSegment:v40 t:v99];
  [v54 length];
  v56 = v55;

  v49 = v56 + 0.0;
LABEL_62:
  v57 = INFINITY;
  v58 = INFINITY;
  v59 = v99;
  if (v22 >= [(CRLBezierPath *)self elementCount])
  {
    v64 = 0;
    v65 = 0;
LABEL_71:
    v60 = 1.0;
    if (subpathCopy)
    {
      goto LABEL_109;
    }
  }

  else
  {
    v60 = 1.0 - v59;
    while (1)
    {
      v106 = xmmword_1014629F0;
      v107 = xmmword_1014629F0;
      v108 = xmmword_1014629F0;
      v109 = xmmword_1014629F0;
      v61 = [(CRLBezierPath *)self elementAtIndex:v22 allPoints:&v106];
      if (v61 == 3)
      {
        break;
      }

      if ((v61 - 3) < 0xFFFFFFFFFFFFFFFELL)
      {
        v60 = 1.0;
        v65 = 1;
        goto LABEL_89;
      }

      [(CRLBezierPath *)self lengthOfElement:v22];
      v63 = v62;
      if (v30 <= v60 * v62)
      {
        v60 = 1.0 - v60 + v30 / v62;
        if (v61 == 2)
        {
          v69 = sub_10011F20C(&v106, v60);
        }

        else
        {
          v69 = sub_100120ABC(*&v106, *(&v106 + 1), *&v107, *(&v107 + 1), v60);
        }

        v57 = v69;
        v58 = v70;
LABEL_88:
        v65 = 0;
        goto LABEL_89;
      }

      if (v22 >= [(CRLBezierPath *)self elementCount]- 1)
      {
        v64 = 0;
        v65 = 0;
        v22 = [(CRLBezierPath *)self elementCount]- 1;
        goto LABEL_71;
      }

      v30 = v30 - v60 * v63;
      ++v22;
      v60 = 1.0;
      if (v30 <= 0.0)
      {
        goto LABEL_88;
      }
    }

    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10132AD64();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10132AD8C();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10132AE14();
    }

    v66 = off_1019EDA68;
    if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_10130E89C();
    }

    v67 = [NSString stringWithUTF8String:"[CRLBezierPath(CRLAdditions) pathByCreatingHoleInPathAtPoint:withDiameter:andThreshold:updatingPatternOffsetsBySubpath:]"];
    v68 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLBezierPath_CRLAdditions.mm"];
    [CRLAssertionHandler handleFailureInFunction:v67 file:v68 lineNumber:894 isFatal:0 description:"-pathByCreatingHoleInPathAtPoint doesn't know how to handle close elements."];

    v60 = 1.0;
    v65 = 1;
LABEL_89:
    v71 = v57 == INFINITY && v58 == INFINITY;
    v72 = v22;
    if (!v71)
    {
      [v101 moveToPoint:{v57, v58}];
      v106 = xmmword_1014629F0;
      v107 = xmmword_1014629F0;
      v108 = xmmword_1014629F0;
      v109 = xmmword_1014629F0;
      v73 = [(CRLBezierPath *)self elementAtIndex:v22 allPoints:&v106];
      if ((v73 - 1) >= 2)
      {
        +[CRLAssertionHandler _atomicIncrementAssertCount];
        if (qword_101AD5A10 != -1)
        {
          sub_10132AE3C();
        }

        v74 = off_1019EDA68;
        if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
        {
          sub_10132AE64();
        }

        if (qword_101AD5A10 != -1)
        {
          sub_10132AEEC();
        }

        v75 = off_1019EDA68;
        if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
        {
          +[CRLAssertionHandler packedBacktraceString];
          objc_claimAutoreleasedReturnValue();
          sub_10130E89C();
        }

        v96 = [NSString stringWithUTF8String:"[CRLBezierPath(CRLAdditions) pathByCreatingHoleInPathAtPoint:withDiameter:andThreshold:updatingPatternOffsetsBySubpath:]"];
        v76 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLBezierPath_CRLAdditions.mm"];
        [CRLAssertionHandler handleFailureInFunction:v96 file:v76 lineNumber:946 isFatal:0 description:"If we have a path after, the first element after should be a curve or line."];
      }

      if (v73 == 1)
      {
        [v101 lineToPoint:v107];
      }

      else if (v73 == 2)
      {
        v102 = xmmword_1014629F0;
        v103 = xmmword_1014629F0;
        v104 = xmmword_1014629F0;
        v105 = xmmword_1014629F0;
        sub_100404958(&v106, &v102, v60, 1.0);
        [v101 curveToPoint:v105 controlPoint1:v103 controlPoint2:v104];
      }

      v72 = v22 + 1;
    }

    [v101 appendPointsInRange:v72 fromBezierPath:{-[CRLBezierPath elementCount](self, "elementCount") - v72, self}];
    v64 = 1;
    if (subpathCopy)
    {
LABEL_109:
      v77 = [(CRLBezierPath *)self copyFromSegment:v100 t:v22 toSegment:v99 t:v60];
      [v77 length];
      v79 = v78;

      v80 = +[NSMutableArray array];
      v81 = 0;
      v82 = v49 + v79;
      while (v81 < [subpathCopy count])
      {
        if (v81)
        {
          v83 = 1;
        }

        else
        {
          v83 = v47;
        }

        if (v81 + 1 == v41 || (v83 & 1) == 0)
        {
          if (v47)
          {
            v85 = [subpathCopy objectAtIndexedSubscript:v81];
            [v80 addObject:v85];
          }

          if (!v64)
          {
            break;
          }

          if ((v65 & 1) == 0)
          {
            if (v98)
            {
              v86 = [subpathCopy objectAtIndexedSubscript:v81 + 1];
              [v86 crl_CGFloatValue];
              v88 = v87;

              v89 = v88 + 0.0;
            }

            else
            {
              v90 = [subpathCopy objectAtIndexedSubscript:v81];
              [v90 crl_CGFloatValue];
              v92 = v91;

              v89 = v50 + v92 + 0.0;
            }

            v93 = [NSNumber crl_numberWithCGFloat:v82 + v89];
            [v80 addObject:v93];
          }

          if (v98)
          {
            v94 = v81 + 1;
          }

          else
          {
            v94 = v81;
          }

          v81 = v94 + 1;
        }

        else
        {
          v84 = [subpathCopy objectAtIndexedSubscript:v81];
          [v80 addObject:v84];

          ++v81;
        }
      }

      [subpathCopy removeAllObjects];
      [subpathCopy addObjectsFromArray:v80];
    }
  }

  if (([v101 isEmpty] & 1) == 0 && (objc_msgSend(v101, "containsElementsOtherThanMoveAndClose") & 1) == 0)
  {
    v95 = +[CRLBezierPath bezierPath];

    v101 = v95;
    [subpathCopy removeAllObjects];
  }

LABEL_6:

  return v101;
}

- (id)pathByWobblingByUpTo:(double)to subdivisions:(unint64_t)subdivisions
{
  v7 = [(CRLBezierPath *)self copy];
  [v7 removeAllPoints];
  y = CGPointZero.y;
  x = CGPointZero.x;
  elementCount = [(CRLBezierPath *)self elementCount];
  if (elementCount >= 1)
  {
    v9 = 0;
    toCopy = to;
    v37 = toCopy;
    do
    {
      v11 = [(CRLBezierPath *)self elementAtIndex:v9 associatedPoints:&v38];
      if (v11 > 1)
      {
        if (v11 == 2)
        {
          v32 = v42;
          v31 = v43;
          v33 = sub_1004C326C();
          [v7 curveToPoint:v32 + (v33 + -0.5) * v37 controlPoint1:v31 + (sub_1004C326C() + -0.5) * v37 controlPoint2:{v38, v39, v40, v41}];
        }

        else if (v11 == 3)
        {
          v14 = y;
          v13 = x;
          v38 = x;
          v39 = y;
          v12 = 1;
LABEL_10:
          v15 = 0;
          v16 = 1;
          do
          {
            [v7 currentPoint];
            v18 = v17;
            v20 = v19;
            v21 = sub_10011F31C(v13, v14, v17);
            v23 = v22;
            v24 = 1.0;
            v25 = subdivisions - v15;
            if (v25)
            {
              v26 = sub_1004C326C() + 0.5;
              v24 = fminf((1.0 / v25) * v26, 1.0);
            }

            v27 = sub_1004C326C();
            [v7 lineToPoint:{v18 + v21 * v24 + (v27 + -0.5) * v37, v20 + v23 * v24 + (sub_1004C326C() + -0.5) * v37}];
            v15 = v16++;
          }

          while (v15 <= subdivisions);
          if (v12)
          {
            [v7 closePath];
          }
        }
      }

      else if (v11)
      {
        if (v11 == 1)
        {
          v12 = 0;
          v13 = v38;
          v14 = v39;
          goto LABEL_10;
        }
      }

      else
      {
        v29 = v38;
        v28 = v39;
        v30 = sub_1004C326C();
        y = v28 + (sub_1004C326C() + -0.5) * v37;
        x = v29 + (v30 + -0.5) * v37;
        [v7 moveToPoint:x];
      }

      ++v9;
    }

    while (v9 != elementCount);
  }

  return v7;
}

- (id)arrayOfSubpathsWithEffectivelyEmptySubpathsRemoved:(BOOL)removed
{
  removedCopy = removed;
  v5 = +[NSMutableArray array];
  v6 = +[CRLBezierPath bezierPath];
  [(CRLBezierPath *)self copyPathAttributesTo:v6];
  for (i = 0; [(CRLBezierPath *)self elementCount]> i; ++i)
  {
    v8 = [(CRLBezierPath *)self elementAtIndex:i associatedPoints:&v11];
    if (v8 > 1)
    {
      if (v8 != 2)
      {
        if (v8 == 3)
        {
          [v6 closePath];
          [v5 addObject:v6];
          v9 = +[CRLBezierPath bezierPath];

          [(CRLBezierPath *)self copyPathAttributesTo:v9];
          goto LABEL_15;
        }

        goto LABEL_10;
      }

      [v6 curveToPoint:v15 controlPoint1:v16 controlPoint2:{v11, v12, v13, v14}];
      v9 = v6;
    }

    else
    {
      if (v8)
      {
        if (v8 == 1)
        {
          [v6 lineToPoint:{v11, v12}];
          v9 = v6;
          goto LABEL_15;
        }

LABEL_10:
        v9 = v6;
        goto LABEL_15;
      }

      if (([v6 isEmpty] & 1) == 0)
      {
        [v5 addObject:v6];
      }

      v9 = +[CRLBezierPath bezierPath];

      [(CRLBezierPath *)self copyPathAttributesTo:v9];
      [v9 moveToPoint:{v11, v12}];
    }

LABEL_15:
    v6 = v9;
  }

  if (([v6 isEmpty] & 1) == 0 && (!removedCopy || objc_msgSend(v6, "containsElementsOtherThanMoveAndClose")))
  {
    [v5 addObject:v6];
  }

  return v5;
}

- (id)pathSplitAtSubpathBoundariesWithSoftElementLimit:(unint64_t)limit hardElementLimit:(unint64_t)elementLimit
{
  if ([(CRLBezierPath *)self elementCount]< 0)
  {
    v13 = +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10132B014();
    }

    v14 = off_1019EDA68;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_10132B028(buf, v13, [(CRLBezierPath *)self elementCount], v14);
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10132B0B4();
    }

    v15 = off_1019EDA68;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_10130E89C();
    }

    v16 = [NSString stringWithUTF8String:"[CRLBezierPath(CRLAdditions) pathSplitAtSubpathBoundariesWithSoftElementLimit:hardElementLimit:]"];
    v17 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLBezierPath_CRLAdditions.mm"];
    [CRLAssertionHandler handleFailureInFunction:v16 file:v17 lineNumber:1147 isFatal:0 description:"elementCount (%zd) should be positive.", [(CRLBezierPath *)self elementCount]];

    goto LABEL_50;
  }

  elementCount = [(CRLBezierPath *)self elementCount];
  if (limit > elementLimit)
  {
    v8 = +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10132AFD8();
    }

    v9 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      *buf = 67110402;
      v39 = v8;
      v40 = 2082;
      v41 = "[CRLBezierPath(CRLAdditions) pathSplitAtSubpathBoundariesWithSoftElementLimit:hardElementLimit:]";
      v42 = 2082;
      v43 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLBezierPath_CRLAdditions.mm";
      v44 = 1024;
      v45 = 1154;
      v46 = 2048;
      limitCopy = limit;
      v48 = 2048;
      elementLimitCopy = elementLimit;
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d softElementLimit (%zu) should be less than or equal to hardElementLimit (%zu).", buf, 0x36u);
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10132AFEC();
    }

    v10 = off_1019EDA68;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_10130E89C();
    }

    v11 = [NSString stringWithUTF8String:"[CRLBezierPath(CRLAdditions) pathSplitAtSubpathBoundariesWithSoftElementLimit:hardElementLimit:]"];
    v12 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLBezierPath_CRLAdditions.mm"];
    [CRLAssertionHandler handleFailureInFunction:v11 file:v12 lineNumber:1154 isFatal:0 description:"softElementLimit (%zu) should be less than or equal to hardElementLimit (%zu).", limit, elementLimit];

    goto LABEL_50;
  }

  if (limit <= 1)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10132AF14();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10132AF28();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10132AFB0();
    }

    v18 = off_1019EDA68;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_10130E89C();
    }

    v19 = [NSString stringWithUTF8String:"[CRLBezierPath(CRLAdditions) pathSplitAtSubpathBoundariesWithSoftElementLimit:hardElementLimit:]"];
    v20 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLBezierPath_CRLAdditions.mm"];
    [CRLAssertionHandler handleFailureInFunction:v19 file:v20 lineNumber:1159 isFatal:0 description:"Unable to split a path with subpaths less than 2 elements at a time."];

    goto LABEL_50;
  }

  if (!elementCount)
  {
LABEL_50:
    v21 = &__NSArray0__struct;
    goto LABEL_51;
  }

  if (elementCount > limit)
  {
    v21 = +[NSMutableArray array];
    [(CRLBezierPath *)self p_elementCountForSubpaths];
    v36 = v35 = elementLimit;
    v22 = [v36 count];
    if (!v22)
    {
LABEL_49:

      goto LABEL_51;
    }

    v23 = 0;
    v24 = 0;
    v25 = 0;
    while (1)
    {
      v26 = [v36 objectAtIndexedSubscript:v25];
      unsignedIntegerValue = [v26 unsignedIntegerValue];
      ++v25;

      if (&v24[unsignedIntegerValue] <= limit)
      {
        break;
      }

      if (v24)
      {
        v28 = [(CRLBezierPath *)self copyWithPointsInRange:v23, v24];
        [v21 addObject:v28];

        v23 += v24;
      }

      v29 = v35;
      if (unsignedIntegerValue <= v35)
      {
        goto LABEL_45;
      }

      do
      {
        if (unsignedIntegerValue >= v29)
        {
          v30 = v29;
        }

        else
        {
          v30 = unsignedIntegerValue;
        }

        v31 = [(CRLBezierPath *)self copyWithPointsInRange:v23, v30];
        [v21 addObject:v31];

        v23 += v30;
        v29 = v35 - 1;
        unsignedIntegerValue -= v30;
      }

      while (unsignedIntegerValue);
LABEL_48:
      v24 = unsignedIntegerValue;
      if (v25 == v22)
      {
        goto LABEL_49;
      }
    }

    unsignedIntegerValue = &v24[unsignedIntegerValue];
LABEL_45:
    if (v25 == v22 && unsignedIntegerValue)
    {
      v32 = [(CRLBezierPath *)self copyWithPointsInRange:v23, unsignedIntegerValue];
      [v21 addObject:v32];
    }

    goto LABEL_48;
  }

  v34 = [(CRLBezierPath *)self copy];
  v37 = v34;
  v21 = [NSArray arrayWithObjects:&v37 count:1];

LABEL_51:

  return v21;
}

- (id)p_elementCountForSubpaths
{
  v3 = +[NSMutableArray array];
  elementCount = [(CRLBezierPath *)self elementCount];
  if (elementCount >= 1)
  {
    v5 = 0;
    v6 = -elementCount;
    v7 = 1;
    do
    {
      if (!(v6 + v7) || ![(CRLBezierPath *)self elementAtIndex:v7])
      {
        v8 = [NSNumber numberWithUnsignedInteger:v7 - v5];
        [v3 addObject:v8];

        v5 = v7;
      }

      ++v7;
    }

    while (v6 + v7 != 1);
  }

  return v3;
}

- (BOOL)isVisuallyEqualToPath:(id)path withThreshold:(double)threshold
{
  pathCopy = path;
  v7 = pathCopy;
  if (pathCopy == self)
  {
    v18 = 1;
  }

  else if (pathCopy)
  {
    v25 = 0;
    v26 = &v25;
    v27 = 0x2020000000;
    v28 = 1;
    v8 = [[CRLBezierHitTester alloc] initWithBucketSize:5.0];
    v9 = v8;
    if (threshold >= 1.0)
    {
      thresholdCopy = 1.0;
    }

    else
    {
      thresholdCopy = threshold;
    }

    [(CRLBezierHitTester *)v8 addPath:self filled:0 pathID:0 crawlingDistance:thresholdCopy];
    [(CRLBezierHitTester *)v9 addPath:v7 filled:0 pathID:1 crawlingDistance:thresholdCopy];
    v11 = 0;
    v12 = 1;
    do
    {
      v13 = v12;
      v14 = v7;
      if (v12)
      {
        selfCopy = self;
      }

      else
      {
        selfCopy = v7;
      }

      v16 = selfCopy;
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_1001B50F0;
      v20[3] = &unk_101844FC8;
      v22 = &v25;
      v17 = v9;
      v21 = v17;
      thresholdCopy2 = threshold;
      v24 = v11;
      [(CRLBezierPath *)v16 iterateOverPathWithPointDistancePerIteration:v20 usingBlock:1.0];

      v12 = 0;
      v11 = 1;
      v7 = v14;
    }

    while ((v13 & 1) != 0);
    v18 = *(v26 + 24);

    _Block_object_dispose(&v25, 8);
  }

  else
  {
    v18 = 0;
  }

  return v18 & 1;
}

- (CGPoint)pointAlongPathAtPercentage:(double)percentage
{
  bezierPathByFlatteningPath = [(CRLBezierPath *)self bezierPathByFlatteningPath];
  v12 = 0;
  v13 = 0;
  [(CRLBezierPath *)self pointAlongPathAtPercentage:bezierPathByFlatteningPath withFlattenedPath:&v13 andLength:&v12 atStartIndex:percentage];
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.y = v11;
  result.x = v10;
  return result;
}

- (CGPoint)pointAlongPathAtPercentage:(double)percentage withFlattenedPath:(id)path andLength:(double *)length atStartIndex:(unint64_t *)index
{
  pathCopy = path;
  if ([pathCopy isEmpty])
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10132B0DC();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10132B0F0();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10132B178();
    }

    v7 = off_1019EDA68;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_10130E89C();
    }

    v8 = [NSString stringWithUTF8String:"[CRLBezierPath(CRLAdditions) pointAlongPathAtPercentage:withFlattenedPath:andLength:atStartIndex:]"];
    v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLBezierPath_CRLAdditions.mm"];
    [CRLAssertionHandler handleFailureInFunction:v8 file:v9 lineNumber:1289 isFatal:0 description:"It is impossible to find pointAlongPathAtPercentage at any percentage of an empty path."];
  }

  elementCount = [pathCopy elementCount];
  [pathCopy length];
  v12 = v11;
  v13 = v11 * sub_1004C3240(percentage, 0.0, 1.0);
  v14 = *length;
  v15 = *index;
  if (*index < elementCount)
  {
    while (1)
    {
      v71 = xmmword_1014629F0;
      v72 = xmmword_1014629F0;
      v73 = xmmword_1014629F0;
      v74 = xmmword_1014629F0;
      v16 = [pathCopy elementAtIndex:v15 allPoints:&v71];
      if (v16 == 2)
      {
        v17 = +[CRLAssertionHandler _atomicIncrementAssertCount];
        if (qword_101AD5A10 != -1)
        {
          sub_10132B240();
        }

        v18 = off_1019EDA68;
        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109890;
          *&buf[4] = v17;
          *&buf[8] = 2082;
          *&buf[10] = "[CRLBezierPath(CRLAdditions) pointAlongPathAtPercentage:withFlattenedPath:andLength:atStartIndex:]";
          *&buf[18] = 2082;
          *&buf[20] = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLBezierPath_CRLAdditions.mm";
          *&buf[28] = 1024;
          *&buf[30] = 1301;
          _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d We don't expect curve elements in a flattened path.", buf, 0x22u);
        }

        if (qword_101AD5A10 != -1)
        {
          sub_10132B268();
        }

        v19 = off_1019EDA68;
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          v33 = +[CRLAssertionHandler packedBacktraceString];
          *buf = 67109378;
          *&buf[4] = v17;
          *&buf[8] = 2114;
          *&buf[10] = v33;
          _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
        }

        v20 = [NSString stringWithUTF8String:"[CRLBezierPath(CRLAdditions) pointAlongPathAtPercentage:withFlattenedPath:andLength:atStartIndex:]"];
        v21 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLBezierPath_CRLAdditions.mm"];
        [CRLAssertionHandler handleFailureInFunction:v20 file:v21 lineNumber:1301 isFatal:0 description:"We don't expect curve elements in a flattened path."];

LABEL_25:
        v24 = v14;
        goto LABEL_55;
      }

      if ((v16 | 2) != 3)
      {
        goto LABEL_25;
      }

      if (v16 == 1)
      {
        break;
      }

      x = CGPointZero.x;
      y = CGPointZero.y;
      if (v15 && v16 == 3)
      {
        *buf = xmmword_1014629F0;
        *&buf[16] = xmmword_1014629F0;
        *&buf[32] = xmmword_1014629F0;
        v70 = xmmword_1014629F0;
        v27 = [pathCopy elementAtIndex:v15 - 1 allPoints:buf];
        if (v27 == 1)
        {
          y = *&buf[24];
          x = *&buf[16];
        }

        else if (v27)
        {
          v34 = +[CRLAssertionHandler _atomicIncrementAssertCount];
          if (qword_101AD5A10 != -1)
          {
            sub_10132B1F0();
          }

          v35 = off_1019EDA68;
          if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
          {
            *v61 = 67109890;
            v62 = v34;
            v63 = 2082;
            v64 = "[CRLBezierPath(CRLAdditions) pointAlongPathAtPercentage:withFlattenedPath:andLength:atStartIndex:]";
            v65 = 2082;
            v66 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLBezierPath_CRLAdditions.mm";
            v67 = 1024;
            v68 = 1323;
            _os_log_error_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d We expect the node before a close path to be either a move or lineto.", v61, 0x22u);
          }

          if (qword_101AD5A10 != -1)
          {
            sub_10132B218();
          }

          v36 = off_1019EDA68;
          if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
          {
            v41 = +[CRLAssertionHandler packedBacktraceString];
            *v61 = 67109378;
            v62 = v34;
            v63 = 2114;
            v64 = v41;
            _os_log_error_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", v61, 0x12u);
          }

          v37 = [NSString stringWithUTF8String:"[CRLBezierPath(CRLAdditions) pointAlongPathAtPercentage:withFlattenedPath:andLength:atStartIndex:]"];
          v38 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLBezierPath_CRLAdditions.mm"];
          [CRLAssertionHandler handleFailureInFunction:v37 file:v38 lineNumber:1323 isFatal:0 description:"We expect the node before a close path to be either a move or lineto."];
        }

        else
        {
          x = *buf;
          y = *&buf[8];
        }

        v23 = y;
        v22 = x;
        goto LABEL_53;
      }

      if (v16 == 3)
      {
        v28 = +[CRLAssertionHandler _atomicIncrementAssertCount];
        if (qword_101AD5A10 != -1)
        {
          sub_10132B1A0();
        }

        v29 = off_1019EDA68;
        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109890;
          *&buf[4] = v28;
          *&buf[8] = 2082;
          *&buf[10] = "[CRLBezierPath(CRLAdditions) pointAlongPathAtPercentage:withFlattenedPath:andLength:atStartIndex:]";
          *&buf[18] = 2082;
          *&buf[20] = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLBezierPath_CRLAdditions.mm";
          *&buf[28] = 1024;
          *&buf[30] = 1329;
          _os_log_error_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Can't begin a path with a close element.", buf, 0x22u);
        }

        if (qword_101AD5A10 != -1)
        {
          sub_10132B1C8();
        }

        v30 = off_1019EDA68;
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          v40 = +[CRLAssertionHandler packedBacktraceString];
          *buf = 67109378;
          *&buf[4] = v28;
          *&buf[8] = 2114;
          *&buf[10] = v40;
          _os_log_error_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
        }

        v31 = [NSString stringWithUTF8String:"[CRLBezierPath(CRLAdditions) pointAlongPathAtPercentage:withFlattenedPath:andLength:atStartIndex:]"];
        v32 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLBezierPath_CRLAdditions.mm"];
        [CRLAssertionHandler handleFailureInFunction:v31 file:v32 lineNumber:1329 isFatal:0 description:"Can't begin a path with a close element."];
      }

      v22 = CGPointZero.x;
      v23 = y;
LABEL_54:
      v39 = sub_100120090(v22, v23, x, y);
      v24 = v14 + v39;
      if (v14 + v39 >= v13)
      {
        v53 = sub_10011F31C(x, y, v22);
        if (v39 > 0.0)
        {
          v54 = (v13 - v14) / v39;
          v53 = sub_10011F340(v53, v52, v54);
        }

        v48 = sub_10011F334(v22, v23, v53);
        v47 = v55;
        *length = v14;
        *index = v15;
        goto LABEL_77;
      }

LABEL_55:
      ++v15;
      v14 = v24;
      if (elementCount == v15)
      {
        goto LABEL_58;
      }
    }

    v23 = *(&v71 + 1);
    v22 = *&v71;
LABEL_53:
    y = *(&v72 + 1);
    x = *&v72;
    goto LABEL_54;
  }

  v24 = *length;
LABEL_58:
  if (v24 == v13 || vabdd_f64(v24, v13) < 0.00999999978)
  {
    v71 = xmmword_1014629F0;
    v72 = xmmword_1014629F0;
    v73 = xmmword_1014629F0;
    v74 = xmmword_1014629F0;
    v49 = [pathCopy elementAtIndex:elementCount - 1 allPoints:&v71];
    v50 = &v72;
    v51 = &v72 + 1;
    if (v49 != 1)
    {
      v51 = &v71 + 1;
    }

    v47 = *v51;
    if (v49 != 1)
    {
      v50 = &v71;
    }

    v48 = *v50;
    *length = v12;
    *index = (elementCount - 1);
  }

  else
  {
    *length = 0.0;
    *index = 0;
    v42 = +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10132B290();
    }

    v43 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10132B2B8(v42, v43, percentage);
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10132B370();
    }

    v44 = off_1019EDA68;
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_10130E89C();
    }

    v45 = [NSString stringWithUTF8String:"[CRLBezierPath(CRLAdditions) pointAlongPathAtPercentage:withFlattenedPath:andLength:atStartIndex:]"];
    v46 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLBezierPath_CRLAdditions.mm"];
    [CRLAssertionHandler handleFailureInFunction:v45 file:v46 lineNumber:1374 isFatal:0 description:"Failed to find point at percentage: %f", *&percentage];

    v48 = CGPointZero.x;
    v47 = CGPointZero.y;
  }

LABEL_77:

  v56 = v48;
  v57 = v47;
  result.y = v57;
  result.x = v56;
  return result;
}

- (void)iterateOverPathWithPointDistancePerIteration:(double)iteration usingBlock:(id)block
{
  blockCopy = block;
  if ([(CRLBezierPath *)self elementCount]>= 1)
  {
    [(CRLBezierPath *)self length];
    v8 = v7;
    if (v7 == 0.0 || fabs(v7) < 0.00999999978)
    {
      [(CRLBezierPath *)self currentPoint];
      blockCopy[2](blockCopy);
      [(CRLBezierPath *)self currentPoint];
      blockCopy[2](blockCopy);
    }

    else
    {
      bezierPathByFlatteningPath = [(CRLBezierPath *)self bezierPathByFlatteningPath];
      v12 = 0;
      v13 = 0;
      v10 = 0.0;
      v11 = iteration / v8;
      do
      {
        [(CRLBezierPath *)self pointAlongPathAtPercentage:bezierPathByFlatteningPath withFlattenedPath:&v13 andLength:&v12 atStartIndex:v10];
        blockCopy[2](blockCopy);
        v10 = v11 + v10;
      }

      while (v10 < 1.0);
      [(CRLBezierPath *)self pointAlongPathAtPercentage:bezierPathByFlatteningPath withFlattenedPath:&v13 andLength:&v12 atStartIndex:1.0];
      blockCopy[2](blockCopy);
    }
  }
}

- (BOOL)intersectsRect:(CGRect)rect hasFill:(BOOL)fill
{
  fillCopy = fill;
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  if ([(CRLBezierPath *)self elementCount]< 2 || ([(CRLBezierPath *)self bounds], !sub_10011FF38(v10, v11, v12, v13, x, y, width, height)))
  {
    bezierPathByFlatteningPath = 0;
LABEL_19:
    v33 = 0;
    goto LABEL_20;
  }

  if (!fillCopy)
  {
LABEL_7:
    bezierPathByFlatteningPath = [(CRLBezierPath *)self bezierPathByFlatteningPath];
    v19 = CGPointZero.x;
    v20 = CGPointZero.y;
    elementCount = [bezierPathByFlatteningPath elementCount];
    if (elementCount >= 1)
    {
      v22 = 0;
      v23 = v20;
      v24 = CGPointZero.x;
      do
      {
        v25 = [bezierPathByFlatteningPath elementAtIndex:v22 associatedPoints:&v38];
        if (v25 == 3)
        {
          if (sub_10011FA20(v24, v23, v19, v20, x, y, width, height))
          {
            goto LABEL_22;
          }
        }

        else if (v25 == 1)
        {
          v35 = v20;
          v36 = v19;
          v26 = x;
          v27 = y;
          v28 = width;
          v29 = height;
          v30 = v38;
          v31 = v39;
          v32 = sub_10011FA20(v24, v23, v38, v39, v26, v27, v28, v29);
          v24 = v30;
          height = v29;
          width = v28;
          y = v27;
          x = v26;
          v23 = v31;
          v20 = v35;
          v19 = v36;
          if (v32)
          {
            goto LABEL_22;
          }
        }

        else if (!v25)
        {
          v24 = v38;
          v23 = v39;
          v19 = v38;
          v20 = v39;
        }

        ++v22;
      }

      while (elementCount != v22);
    }

    goto LABEL_19;
  }

  *v37 = x;
  *&v37[1] = y;
  v40.origin.x = x;
  v40.origin.y = y;
  v40.size.width = width;
  v40.size.height = height;
  MaxX = CGRectGetMaxX(v40);
  v41.origin.x = x;
  v41.origin.y = y;
  v41.size.width = width;
  v41.size.height = height;
  *&v37[2] = MaxX;
  v37[3] = CGRectGetMinY(v41);
  v42.origin.x = x;
  v42.origin.y = y;
  v42.size.width = width;
  v42.size.height = height;
  v15 = CGRectGetMaxX(v42);
  v43.origin.x = x;
  v43.origin.y = y;
  v43.size.width = width;
  v43.size.height = height;
  *&v37[4] = v15;
  v37[5] = CGRectGetMaxY(v43);
  v44.origin.x = x;
  v44.origin.y = y;
  v44.size.width = width;
  v44.size.height = height;
  MinX = CGRectGetMinX(v44);
  v45.origin.x = x;
  v45.origin.y = y;
  v45.size.width = width;
  v45.size.height = height;
  v17 = 0;
  *&v37[6] = MinX;
  v37[7] = CGRectGetMaxY(v45);
  while (![(CRLBezierPath *)self containsPoint:*&v37[v17], *&v37[v17 + 1]])
  {
    v17 += 2;
    if (v17 == 8)
    {
      goto LABEL_7;
    }
  }

  bezierPathByFlatteningPath = 0;
LABEL_22:
  v33 = 1;
LABEL_20:

  return v33;
}

- (CGRect)boundsIncludingStrokeWidth:(double)width joinStyle:(unint64_t)style capStyle:(unint64_t)capStyle miterLimit:(double)limit needsToExtendJoins:(BOOL)joins
{
  if (width < 0.0)
  {
    [CRLAssertionHandler _atomicIncrementAssertCount:style];
    if (qword_101AD5A10 != -1)
    {
      sub_10132B398();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10132B3AC();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10132B434();
    }

    v8 = off_1019EDA68;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_10130E89C();
    }

    v9 = [NSString stringWithUTF8String:"[CRLBezierPath(CRLAdditions) boundsIncludingStrokeWidth:joinStyle:capStyle:miterLimit:needsToExtendJoins:]"];
    v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLBezierPath_CRLAdditions.mm"];
    [CRLAssertionHandler handleFailureInFunction:v9 file:v10 lineNumber:1476 isFatal:0 description:"lineWidth should not be negative."];

    if (![(CRLBezierPath *)self isEmpty])
    {
      goto LABEL_23;
    }

    goto LABEL_13;
  }

  joinsCopy = joins;
  if ([(CRLBezierPath *)self isEmpty])
  {
LABEL_13:
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10132B45C();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10132B484();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10132B50C();
    }

    v16 = off_1019EDA68;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_10130E89C();
    }

    v17 = [NSString stringWithUTF8String:"[CRLBezierPath(CRLAdditions) boundsIncludingStrokeWidth:joinStyle:capStyle:miterLimit:needsToExtendJoins:]"];
    v18 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLBezierPath_CRLAdditions.mm"];
    [CRLAssertionHandler handleFailureInFunction:v17 file:v18 lineNumber:1481 isFatal:0 description:"Can not calculate the stroked bounds of an empty path."];

    x = CGRectNull.origin.x;
    y = CGRectNull.origin.y;
    width = CGRectNull.size.width;
    height = CGRectNull.size.height;
    goto LABEL_24;
  }

  if (width == 0.0)
  {
LABEL_23:
    [(CRLBezierPath *)self bounds];
    x = v23;
    y = v24;
    width = v25;
    height = v26;
    goto LABEL_24;
  }

  cGPath = [(CRLBezierPath *)self CGPath];
  v32 = sub_10019FE64(capStyle);
  v33 = sub_10019FE64(style);
  sub_10018F6CC(cGPath, v32, v33, width, limit);
  x = v34;
  y = v35;
  width = v36;
  height = v37;
  if (joinsCopy)
  {
    elementCount = [(CRLBezierPath *)self elementCount];
    if (elementCount >= 1)
    {
      v39 = elementCount;
      v40 = 0;
      v41 = sqrt(width * 0.5 * width);
      while (1)
      {
        v42 = [(CRLBezierPath *)self elementAtIndex:v40 associatedPoints:&v45];
        if (v42 < 2)
        {
          break;
        }

        if (v42 == 2)
        {
          v43 = *&v46[3];
          v44 = &v47;
          goto LABEL_32;
        }

LABEL_33:
        if (v39 == ++v40)
        {
          goto LABEL_24;
        }
      }

      v43 = v45;
      v44 = v46;
LABEL_32:
      v51.origin.x = v43 - v41;
      v51.origin.y = *v44 - v41;
      v48.origin.x = x;
      v48.origin.y = y;
      v48.size.width = width;
      v48.size.height = height;
      v51.size.width = v41 + v41;
      v51.size.height = v41 + v41;
      v49 = CGRectUnion(v48, v51);
      x = v49.origin.x;
      y = v49.origin.y;
      width = v49.size.width;
      height = v49.size.height;
      goto LABEL_33;
    }
  }

LABEL_24:
  v27 = x;
  v28 = y;
  widthCopy = width;
  v30 = height;
  result.size.height = v30;
  result.size.width = widthCopy;
  result.origin.y = v28;
  result.origin.x = v27;
  return result;
}

- (double)distanceToPoint:(CGPoint)point elementIndex:(unint64_t *)index tValue:(double *)value threshold:(double)threshold findClosestMatch:(BOOL)match
{
  matchCopy = match;
  y = point.y;
  x = point.x;
  if (threshold >= 1.79769313e308 && !match)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10132B534();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10132B548();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10132B5D0();
    }

    v14 = off_1019EDA68;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_10130E89C();
    }

    v15 = [NSString stringWithUTF8String:"[CRLBezierPath(CRLAdditions) distanceToPoint:elementIndex:tValue:threshold:findClosestMatch:]"];
    v16 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLBezierPath_CRLAdditions.mm"];
    [CRLAssertionHandler handleFailureInFunction:v15 file:v16 lineNumber:1543 isFatal:0 description:"Should provide a threshold if not looking for the closest match."];
  }

  if (![(CRLBezierPath *)self containsElementsOtherThanMoveAndClose])
  {
    return 1.79769313e308;
  }

  [(CRLBezierPath *)self controlPointBounds];
  v21 = x + threshold;
  if (x + threshold < v17)
  {
    return 1.79769313e308;
  }

  v22 = x - threshold;
  if (x - threshold > v17 + v19)
  {
    return 1.79769313e308;
  }

  v23 = y - threshold;
  v68 = y + threshold;
  if (y + threshold < v18 || v23 > v18 + v20)
  {
    return 1.79769313e308;
  }

  elementCount = [(CRLBezierPath *)self elementCount];
  v26 = elementCount;
  v27 = 0;
  v70 = xmmword_1014629F0;
  v71[0] = xmmword_1014629F0;
  v71[1] = xmmword_1014629F0;
  v71[2] = xmmword_1014629F0;
  v69 = CGPointZero;
  v28 = threshold * threshold;
  v29 = 1.79769313e308;
  v30 = threshold * threshold < 1.79769313e308;
  v31 = threshold * threshold < 1.79769313e308 || matchCopy;
  v67 = 0.0;
  if (elementCount && v31)
  {
    v27 = 0;
    v32 = 0;
    v67 = 0.0;
    v29 = 1.79769313e308;
    while (1)
    {
      v33 = [(CRLBezierPath *)self elementAtIndex:v32 allPoints:&v70, *&v67];
      if (v33 <= 1)
      {
        break;
      }

      if (v33 == 2)
      {
        v46 = 0;
        v47 = *(&v70 + 1);
        v49 = *(&v70 + 1);
        v48 = *&v70;
        v50 = *&v70;
        do
        {
          v52 = *&v71[v46];
          v51 = *(&v71[v46] + 1);
          if (v52 > v48)
          {
            v53 = *&v71[v46];
          }

          else
          {
            v53 = v48;
          }

          if (v52 >= v50)
          {
            v48 = v53;
          }

          else
          {
            v50 = *&v71[v46];
          }

          if (v51 >= v49)
          {
            if (v51 > v47)
            {
              v47 = *(&v71[v46] + 1);
            }
          }

          else
          {
            v49 = *(&v71[v46] + 1);
          }

          ++v46;
        }

        while (v46 != 3);
        v54 = v48 - v50;
        v55 = v47 - v49;
        v56 = v50 + v48 - v50;
        if (v21 < v50 || v22 > v56 || v68 < v49 || v23 > v49 + v55)
        {
          goto LABEL_84;
        }

        sub_1001200C4(x, y, v50, v49, v54, v55);
        if (v60 > v28 || v60 >= v29)
        {
          goto LABEL_84;
        }

        sub_100404BEC(&v70, x, y, 1.0);
        v43 = v62;
        v44 = sub_10011F20C(&v70, v62);
        goto LABEL_80;
      }

      if (v33 == 3)
      {
        v71[0] = v69;
LABEL_33:
        v37 = sub_10011EC88(*&v70, *(&v70 + 1), *v71);
        if (v21 >= v37 && v22 <= v37 + v35 && v68 >= v34 && v23 <= v34 + v36)
        {
          sub_1001200C4(x, y, v37, v34, v35, v36);
          if (v41 <= v28 && v41 < v29)
          {
            v43 = sub_100404B24(&v70, x, y);
            v44 = sub_100120ABC(*&v70, *(&v70 + 1), *v71, *(v71 + 1), v43);
LABEL_80:
            v63 = sub_10011F068(v44, v45, x, y);
            v64 = v67;
            if (v63 < v29)
            {
              v64 = v43;
            }

            v67 = v64;
            if (v63 < v29)
            {
              v27 = v32;
              v29 = v63;
            }
          }
        }
      }

LABEL_84:
      ++v32;
      v30 = v29 > v28;
      v65 = v29 > v28 || matchCopy;
      if (v32 >= v26 || (v65 & 1) == 0)
      {
        goto LABEL_89;
      }
    }

    if (!v33)
    {
      v69 = v70;
      goto LABEL_84;
    }

    if (v33 != 1)
    {
      goto LABEL_84;
    }

    goto LABEL_33;
  }

LABEL_89:
  if (v30)
  {
    return 1.79769313e308;
  }

  if (index)
  {
    *index = v27;
  }

  if (value)
  {
    *value = v67;
  }

  return sqrt(v29);
}

- (double)p_yValueFromXValue:(double)value elementIndex:(int64_t *)index parametricValue:(double *)parametricValue
{
  elementCount = [(CRLBezierPath *)self elementCount];
  x = CGPointZero.x;
  y = CGPointZero.y;
  v51 = xmmword_1014629F0;
  v52 = xmmword_1014629F0;
  v53 = xmmword_1014629F0;
  v12 = elementCount - 1;
  if (elementCount < 1)
  {
    goto LABEL_5;
  }

  v13 = elementCount;
  if (![(CRLBezierPath *)self elementAtIndex:0 associatedPoints:&v51])
  {
    x = *&v51;
    y = *(&v51 + 1);
  }

  if (v13 == 1)
  {
LABEL_5:
    v14 = 1;
    v15 = x;
    v16 = y;
  }

  else
  {
    v14 = 1;
    while (1)
    {
      v15 = x;
      v16 = y;
      v35 = [(CRLBezierPath *)self elementAtIndex:v14 associatedPoints:&v51];
      if (v35 == 2)
      {
        y = *(&v53 + 1);
        x = *&v53;
      }

      else if (v35 <= 1)
      {
        y = *(&v51 + 1);
        x = *&v51;
      }

      if (v15 <= value && x >= value)
      {
        break;
      }

      if (v13 == ++v14)
      {
        v14 = v13;
        break;
      }
    }
  }

  if (v15 == x)
  {
    return y;
  }

  if (v15 >= value)
  {
    if (index)
    {
      *index = v14 - 1;
    }

    if (parametricValue)
    {
      *parametricValue = 0.0;
    }
  }

  else
  {
    if (x <= value)
    {
      if (index)
      {
        if (v12 >= v14)
        {
          v37 = v14;
        }

        else
        {
          v37 = v12;
        }

        *index = v37;
      }

      if (parametricValue)
      {
        *parametricValue = 1.0;
      }

      return y;
    }

    if (index)
    {
      if (v12 >= v14)
      {
        v18 = v14;
      }

      else
      {
        v18 = v12;
      }

      *index = v18;
    }

    v19 = *(&v51 + 1);
    v50 = *(&v52 + 1);
    v20 = x + *&v51 * 3.0 - v15 + *&v52 * -3.0;
    v21 = (*&v51 * -6.0 + v15 * 3.0 + *&v52 * 3.0) / v20;
    v22 = (*&v51 * 3.0 + v15 * -3.0) / v20;
    v23 = (v15 - value) / v20;
    v24 = v23 + v21 * (v21 * (v21 + v21)) / 27.0 + v21 * v22 / -3.0;
    v25 = v24 * v24 * 0.25;
    v26 = (v22 + v21 * v21 / -3.0) * ((v22 + v21 * v21 / -3.0) * (v22 + v21 * v21 / -3.0)) / 27.0 + v25;
    if (v26 == 0.0 || fabs(v26) < 1.0e-12)
    {
      if (v23 >= 0.0)
      {
        v34 = -pow(v23, 0.333333333);
      }

      else
      {
        v34 = pow(fabs(v23), 0.333333333);
      }
    }

    else if (v26 <= 0.0)
    {
      v38 = sqrt(v25 - v26);
      v39 = pow(v38, 0.333333333);
      v40 = acos(-v24 / (v38 + v38));
      v41 = __sincos_stret(v40 / 3.0);
      v42 = v21 / -3.0;
      v34 = v21 / -3.0 + (v39 + v39) * v41.__cosval;
      if (v34 < 0.0 && vabdd_f64(0.0, v34) >= 1.0e-12 || (v34 >= 1.0 ? (v43 = v34 == 1.0) : (v43 = 1), !v43 && fabs(v34 + -1.0) >= 1.0e-12))
      {
        if ((v34 = v42 - v39 * (v41.__cosval + v41.__sinval * 1.73205081), v34 < 0.0) && vabdd_f64(0.0, v34) >= 1.0e-12 || (v34 >= 1.0 ? (v44 = v34 == 1.0) : (v44 = 1), !v44 && fabs(v34 + -1.0) >= 1.0e-12))
        {
          if ((v34 = v42 - v39 * (v41.__cosval - v41.__sinval * 1.73205081), v34 < 0.0) && vabdd_f64(0.0, v34) >= 1.0e-12 || (v34 >= 1.0 ? (v45 = v34 == 1.0) : (v45 = 1), !v45 && fabs(v34 + -1.0) >= 1.0e-12))
          {
            +[CRLAssertionHandler _atomicIncrementAssertCount];
            if (qword_101AD5A10 != -1)
            {
              sub_10132B5F8();
            }

            if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
            {
              sub_10132B620();
            }

            if (qword_101AD5A10 != -1)
            {
              sub_10132B6A8();
            }

            v46 = off_1019EDA68;
            if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
            {
              +[CRLAssertionHandler packedBacktraceString];
              objc_claimAutoreleasedReturnValue();
              sub_10130E89C();
            }

            v47 = [NSString stringWithUTF8String:"[CRLBezierPath(CRLAdditions) p_yValueFromXValue:elementIndex:parametricValue:]"];
            v48 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLBezierPath_CRLAdditions.mm"];
            [CRLAssertionHandler handleFailureInFunction:v47 file:v48 lineNumber:1789 isFatal:0 description:"No valid roots!"];

            v34 = 0.0;
          }
        }
      }
    }

    else
    {
      v27 = v24 * -0.5;
      v28 = sqrt(v26);
      v49 = *(&v51 + 1);
      v29 = v24 * -0.5 + v28;
      v30 = pow(fabs(v29), 0.333333333);
      if (v29 <= 0.0)
      {
        v31 = -v30;
      }

      else
      {
        v31 = v30;
      }

      v32 = pow(vabdd_f64(v27, v28), 0.333333333);
      if (v27 - v28 <= 0.0)
      {
        v32 = -v32;
      }

      v33 = v31 + v32;
      v19 = v49;
      v34 = v33 + v21 / -3.0;
    }

    if (parametricValue)
    {
      *parametricValue = v34;
    }

    return v16 + (v19 * -6.0 + v16 * 3.0 + v50 * 3.0) * (v34 * v34) + v34 * (v34 * v34) * (y + v19 * 3.0 - v16 + v50 * -3.0) + v34 * (v19 * 3.0 + v16 * -3.0);
  }

  return v16;
}

- (void)addPathToContext:(CGContext *)context
{
  elementCount = [(CRLBezierPath *)self elementCount];
  if (elementCount >= 1)
  {
    v6 = elementCount;
    for (i = 0; i != v6; ++i)
    {
      v8 = [(CRLBezierPath *)self elementAtIndex:i associatedPoints:&v9];
      if (v8 > 1)
      {
        if (v8 == 2)
        {
          CGContextAddCurveToPoint(context, v9, v10, v11, v12, v13, v14);
        }

        else if (v8 == 3)
        {
          CGContextClosePath(context);
        }
      }

      else if (v8)
      {
        if (v8 == 1)
        {
          CGContextAddLineToPoint(context, v9, v10);
        }
      }

      else
      {
        CGContextMoveToPoint(context, v9, v10);
      }
    }
  }
}

- (void)clearStroke:(CGContext *)stroke
{
  CGContextSaveGState(stroke);
  [(CRLBezierPath *)self flatness];
  CGContextSetFlatness(stroke, v5);
  CGContextBeginPath(stroke);
  [(CRLBezierPath *)self addPathToContext:stroke];
  [(CRLBezierPath *)self lineWidth];
  CGContextSetLineWidth(stroke, v6);
  CGContextReplacePathWithStrokedPath(stroke);
  CGContextClip(stroke);
  CGContextBeginPath(stroke);
  [(CRLBezierPath *)self lineWidth];
  v8 = v7;
  [(CRLBezierPath *)self bounds];
  v11 = CGRectInset(v10, -(v8 + 10.0), -(v8 + 10.0));
  CGContextClearRect(stroke, v11);

  CGContextRestoreGState(stroke);
}

- (id)aliasedPathInContext:(CGContext *)context effectiveStrokeWidth:(float)width
{
  *&v4 = width;
  LODWORD(v5) = 1.0;
  return [(CRLBezierPath *)self p_aliasedPathInContext:context viewScale:v5 effectiveStrokeWidth:v4];
}

- (id)p_aliasedPathInContext:(CGContext *)context viewScale:(float)scale effectiveStrokeWidth:(float)width
{
  elementCount = [(CRLBezierPath *)self elementCount];
  v10 = sub_1004C31F4(width);
  if (!elementCount)
  {
    goto LABEL_6;
  }

  v63 = v10;
  if (vabds_f32(v10, width) > 0.1)
  {
    goto LABEL_6;
  }

  if (context)
  {
    memset(&v69, 0, sizeof(v69));
    CGContextGetUserSpaceToDeviceSpaceTransform(&v69, context);
    v71 = v69;
    if (sub_100139B5C(&v71.a))
    {
      v62 = fabs(v69.a) < fabs(v69.b);
      goto LABEL_11;
    }

LABEL_6:
    selfCopy = self;
    goto LABEL_7;
  }

  v62 = 0;
LABEL_11:
  selfCopy = +[CRLBezierPath bezierPath];
  if (elementCount >= 1)
  {
    v13 = 0;
    v66 = 0;
    v67 = 0;
    v64 = 0;
    v65 = 0;
    v14 = 0;
    scaleCopy = scale;
    v15 = (1.0 / scale);
    do
    {
      v16 = [(CRLBezierPath *)self elementAtIndex:v13 associatedPoints:&v69.c];
      if (v16 > 1)
      {
        if (v16 == 2)
        {
          a = v69.a;
          b = v69.b;
          c = v69.c;
          d = v69.d;
          if (sub_10011ECC8(v69.a, v69.b, v69.c, v69.d) && sub_10011ECC8(a, b, v69.tx, v69.ty) && sub_10011ECC8(a, b, *&v70, *(&v70 + 1)))
          {
            goto LABEL_53;
          }

          [(CRLBezierPath *)selfCopy currentPoint];
          v33 = sub_10011F31C(v31, v32, v69.a);
          v69.c = sub_10011F334(c, d, v33);
          v69.d = v34;
          [(CRLBezierPath *)selfCopy curveToPoint:v70 controlPoint1:v69.c controlPoint2:v34, v69.tx, v69.ty];
          v14 = 0;
          v67 = 0;
          p_c = &v70;
          goto LABEL_52;
        }

        if (v16 == 3)
        {
          [(CRLBezierPath *)self elementAtIndex:v66 associatedPoints:&v69.c];
          v17 = 1;
LABEL_20:
          v19 = v69.a;
          v18 = v69.b;
          v21 = v69.c;
          v20 = v69.d;
          v22 = fabs(sub_10011F31C(v69.a, v69.b, v69.c));
          v24 = fabs(v23);
          v25 = v24 > v22 + v15 * -0.01 && v22 < v15;
          v26 = v22 > v24 + v15 * -0.01 && v24 < v15;
          if (v26 || v25)
          {
            if (v26 && v25)
            {
              if ((v17 & (HIDWORD(v65) | v65)) == 1)
              {
                [(CRLBezierPath *)selfCopy elementAtIndex:v64 associatedPoints:&v69.c];
              }

              else if ([(CRLBezierPath *)selfCopy elementAtIndex:[(CRLBezierPath *)selfCopy elementCount]- 1 associatedPoints:&v69.c]== 2)
              {
                *&v69.c = v70;
              }

              v68 = *&v69.c;
              y = v69.d;
              x = v69.c;
            }

            else
            {
              if (context)
              {
                v73.x = v19;
                v73.y = v18;
                *&v36 = *&CGContextConvertPointToDeviceSpace(context, v73);
                *&v37 = *&CGContextConvertPointToDeviceSpace(context, *&v69.c);
              }

              else
              {
                v36 = sub_10011F340(v19, v18, scaleCopy);
                v37 = sub_10011F340(v21, v20, scaleCopy);
              }

              v44 = v37;
              if (vabdd_f64(v36, v37) < 0.1)
              {
                v44 = v36;
              }

              if (v62)
              {
                v45 = v25;
              }

              else
              {
                v45 = v26;
              }

              if (v63)
              {
                if (v62)
                {
                  v47 = v26;
                }

                else
                {
                  v47 = v25;
                }

                v46 = v36 + 0.5;
                if (v47)
                {
                  v44 = v44 + 0.5;
                  HIDWORD(v65) |= v14;
                  LOBYTE(v67) = 1;
                }

                else
                {
                  if ((v67 & 1) == 0)
                  {
                    v46 = v36;
                  }

                  if ((v17 & HIDWORD(v65)) != 0)
                  {
                    v44 = v44 + 0.5;
                  }
                }

                if (v45)
                {
                  LODWORD(v65) = v14 | v65;
                  BYTE4(v67) = 1;
                }
              }

              else
              {
                v46 = v36;
              }

              v48 = sub_1001220E8(v46);
              v50 = v49;
              v52 = sub_1001220E8(v44);
              v53 = v51;
              v68.x = v52;
              v68.y = v51;
              if (v67)
              {
                v48 = v48 + -0.5;
                v52 = v52 + -0.5;
                v68.x = v52;
              }

              if ((v67 & 0x100000000) != 0)
              {
                v50 = v50 + -0.5;
                v53 = v51 + -0.5;
                v68.y = v51 + -0.5;
              }

              if (context)
              {
                v74.x = v48;
                v74.y = v50;
                v54 = CGContextConvertPointToUserSpace(context, v74);
                x = v54.x;
                y = v54.y;
                v57 = CGContextConvertPointToUserSpace(context, v68);
                v56 = v57.y;
                v55 = v57.x;
              }

              else
              {
                x = sub_10011F340(v48, v50, v15);
                y = v58;
                v55 = sub_10011F340(v52, v53, v15);
              }

              v68.x = v55;
              v68.y = v56;
              if (v26)
              {
                if ((v14 & 1) == 0)
                {
                  [(CRLBezierPath *)selfCopy currentPoint];
                  x = v59;
                }

                if (v13 + 1 < elementCount && [(CRLBezierPath *)self elementAtIndex:?])
                {
                  v68.x = v69.c;
                }
              }

              else if (v25)
              {
                if ((v14 & 1) == 0)
                {
                  [(CRLBezierPath *)selfCopy currentPoint];
                  y = v60;
                }

                if (v13 + 1 < elementCount && [(CRLBezierPath *)self elementAtIndex:?])
                {
                  v68.y = v69.d;
                }
              }
            }

            if ([(CRLBezierPath *)selfCopy elementAtIndex:[(CRLBezierPath *)selfCopy elementCount]- 1 associatedPoints:&v71]== 2)
            {
              v40 = *&v71.c;
              v41 = sub_10011F31C(x, y, v71.tx);
              v71.c = sub_10011F334(*&v40, *(&v40 + 1), v41);
              v71.d = v42;
              v71.tx = x;
              p_ty = &v71.ty;
            }

            else
            {
              v71.a = x;
              p_ty = &v71.b;
            }

            *p_ty = y;
            [(CRLBezierPath *)selfCopy setAssociatedPoints:&v71 atIndex:[(CRLBezierPath *)selfCopy elementCount]- 1];
            if (v17)
            {
              [(CRLBezierPath *)selfCopy setAssociatedPoints:&v68 atIndex:v64];
              [(CRLBezierPath *)selfCopy closePath];
            }

            else
            {
              [(CRLBezierPath *)selfCopy lineToPoint:v68];
            }
          }

          else if (v17)
          {
            [(CRLBezierPath *)selfCopy closePath];
          }

          else
          {
            [(CRLBezierPath *)selfCopy lineToPoint:v21, v20];
          }

          v14 = 0;
LABEL_51:
          p_c = &v69.c;
LABEL_52:
          *&v69.a = *p_c;
        }
      }

      else
      {
        if (!v16)
        {
          [(CRLBezierPath *)selfCopy moveToPoint:v69.c, v69.d];
          v66 = v13;
          v67 = 0;
          v64 = [(CRLBezierPath *)selfCopy elementCount]- 1;
          v65 = 0;
          v14 = 1;
          goto LABEL_51;
        }

        if (v16 == 1)
        {
          v17 = 0;
          goto LABEL_20;
        }
      }

LABEL_53:
      ++v13;
    }

    while (elementCount != v13);
  }

LABEL_7:

  return selfCopy;
}

- (void)alignBoundsToOrigin
{
  if ([(CRLBezierPath *)self elementCount]>= 1)
  {
    [(CRLBezierPath *)self bounds];
    v4 = v3;
    v6 = v5;
    if (!sub_10011ECC8(CGPointZero.x, CGPointZero.y, v3, v5))
    {
      CGAffineTransformMakeTranslation(&v7, -v4, -v6);
      [(CRLBezierPath *)self transformUsingAffineTransform:&v7];
    }
  }
}

+ (id)appendBezierPaths:(id)paths
{
  pathsCopy = paths;
  v4 = +[CRLBezierPath bezierPath];
  objectEnumerator = [pathsCopy objectEnumerator];
  v6 = 0;
  while (1)
  {
    nextObject = [objectEnumerator nextObject];

    if (!nextObject)
    {
      break;
    }

    v6 = nextObject;
    [v4 appendBezierPath:nextObject];
  }

  return v4;
}

- (void)appendBezierPathWithArcWithEllipseBounds:(CGRect)bounds startAngle:(double)angle swingAngle:(double)swingAngle angleType:(unint64_t)type startNewPath:(BOOL)path
{
  pathCopy = path;
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  tx = CGRectGetMidX(bounds);
  v49.origin.x = x;
  v49.origin.y = y;
  v49.size.width = width;
  v49.size.height = height;
  ty = CGRectGetMidY(v49);
  v50.origin.x = x;
  v50.origin.y = y;
  v50.size.width = width;
  v50.size.height = height;
  v14 = CGRectGetWidth(v50) * 0.5;
  v51.origin.x = x;
  v51.origin.y = y;
  v51.size.width = width;
  v51.size.height = height;
  v15 = CGRectGetHeight(v51) * 0.5;
  if (type == 1)
  {
    sub_1001212C0(angle, v14, v15);
    angleCopy = v18;
    sub_1001212C0(angle + swingAngle, v14, v15);
    v16 = v19;
  }

  else
  {
    if (type)
    {
      v16 = 0.0;
    }

    else
    {
      v16 = angle + swingAngle;
    }

    if (type)
    {
      angleCopy = 0.0;
    }

    else
    {
      angleCopy = angle;
    }
  }

  v20 = +[CRLBezierPath bezierPath];
  [v20 appendBezierPathWithArcWithCenter:angleCopy > v16 radius:CGPointZero.x startAngle:CGPointZero.y endAngle:1.0 clockwise:{angleCopy, v16}];
  memset(&v46, 0, sizeof(v46));
  CGAffineTransformMakeScale(&t1, v14, v15);
  CGAffineTransformMakeTranslation(&t2, tx, tyb);
  CGAffineTransformConcat(&v46, &t1, &t2);
  t1 = v46;
  [v20 transformUsingAffineTransform:&t1];
  elementCount = [v20 elementCount];
  if (elementCount >= 1)
  {
    v22 = 0;
    tya = 67109378;
    do
    {
      memset(&t1, 0, sizeof(t1));
      v23 = [v20 elementAtIndex:v22 associatedPoints:{&t1, tya}];
      if (v23 > 1)
      {
        if (v23 == 2)
        {
          [(CRLBezierPath *)self curveToPoint:t1.tx controlPoint1:t1.ty controlPoint2:t1.a, t1.b, t1.c, t1.d];
          goto LABEL_49;
        }

        if (v23 == 3)
        {
          v29 = +[CRLAssertionHandler _atomicIncrementAssertCount];
          if (qword_101AD5A10 != -1)
          {
            sub_10132B7A8();
          }

          v30 = off_1019EDA68;
          if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
          {
            LODWORD(t2.a) = 67109890;
            HIDWORD(t2.a) = v29;
            LOWORD(t2.b) = 2082;
            *(&t2.b + 2) = "[CRLBezierPath(CRLAdditions) appendBezierPathWithArcWithEllipseBounds:startAngle:swingAngle:angleType:startNewPath:]";
            WORD1(t2.c) = 2082;
            *(&t2.c + 4) = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLBezierPath_CRLAdditions.mm";
            WORD2(t2.d) = 1024;
            *(&t2.d + 6) = 2134;
            _os_log_error_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d The arc shouldn't contain close_subpath elements", &t2, 0x22u);
          }

          if (qword_101AD5A10 != -1)
          {
            sub_10132B7D0();
          }

          v31 = off_1019EDA68;
          if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
          {
            v38 = +[CRLAssertionHandler packedBacktraceString];
            *&t2.a = __PAIR64__(v29, tya);
            LOWORD(t2.b) = 2114;
            *(&t2.b + 2) = v38;
            _os_log_error_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", &t2, 0x12u);
          }

          v27 = [NSString stringWithUTF8String:"[CRLBezierPath(CRLAdditions) appendBezierPathWithArcWithEllipseBounds:startAngle:swingAngle:angleType:startNewPath:]"];
          v28 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLBezierPath_CRLAdditions.mm"];
          [CRLAssertionHandler handleFailureInFunction:v27 file:v28 lineNumber:2134 isFatal:0 description:"The arc shouldn't contain close_subpath elements"];
          goto LABEL_34;
        }
      }

      else
      {
        if (!v23)
        {
          if (v22)
          {
            v32 = +[CRLAssertionHandler _atomicIncrementAssertCount];
            if (qword_101AD5A10 != -1)
            {
              sub_10132B848();
            }

            v33 = off_1019EDA68;
            if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
            {
              LODWORD(t2.a) = 67109890;
              HIDWORD(t2.a) = v32;
              LOWORD(t2.b) = 2082;
              *(&t2.b + 2) = "[CRLBezierPath(CRLAdditions) appendBezierPathWithArcWithEllipseBounds:startAngle:swingAngle:angleType:startNewPath:]";
              WORD1(t2.c) = 2082;
              *(&t2.c + 4) = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLBezierPath_CRLAdditions.mm";
              WORD2(t2.d) = 1024;
              *(&t2.d + 6) = 2120;
              _os_log_error_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Only the first element of the arc should be a moveto", &t2, 0x22u);
            }

            if (qword_101AD5A10 != -1)
            {
              sub_10132B870();
            }

            v34 = off_1019EDA68;
            if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
            {
              v39 = +[CRLAssertionHandler packedBacktraceString];
              *&t2.a = __PAIR64__(v32, tya);
              LOWORD(t2.b) = 2114;
              *(&t2.b + 2) = v39;
              _os_log_error_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", &t2, 0x12u);
            }

            v35 = [NSString stringWithUTF8String:"[CRLBezierPath(CRLAdditions) appendBezierPathWithArcWithEllipseBounds:startAngle:swingAngle:angleType:startNewPath:]"];
            v36 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLBezierPath_CRLAdditions.mm"];
            [CRLAssertionHandler handleFailureInFunction:v35 file:v36 lineNumber:2120 isFatal:0 description:"Only the first element of the arc should be a moveto"];
          }

          if (pathCopy)
          {
            [(CRLBezierPath *)self moveToPoint:t1.a, t1.b];
          }

          else
          {
            [(CRLBezierPath *)self lineToPoint:t1.a, t1.b];
          }

          goto LABEL_49;
        }

        if (v23 == 1)
        {
          v24 = +[CRLAssertionHandler _atomicIncrementAssertCount];
          if (qword_101AD5A10 != -1)
          {
            sub_10132B7F8();
          }

          v25 = off_1019EDA68;
          if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
          {
            LODWORD(t2.a) = 67109890;
            HIDWORD(t2.a) = v24;
            LOWORD(t2.b) = 2082;
            *(&t2.b + 2) = "[CRLBezierPath(CRLAdditions) appendBezierPathWithArcWithEllipseBounds:startAngle:swingAngle:angleType:startNewPath:]";
            WORD1(t2.c) = 2082;
            *(&t2.c + 4) = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLBezierPath_CRLAdditions.mm";
            WORD2(t2.d) = 1024;
            *(&t2.d + 6) = 2128;
            _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d The arc shouldn't contain lineto elements", &t2, 0x22u);
          }

          if (qword_101AD5A10 != -1)
          {
            sub_10132B820();
          }

          v26 = off_1019EDA68;
          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            v37 = +[CRLAssertionHandler packedBacktraceString];
            *&t2.a = __PAIR64__(v24, tya);
            LOWORD(t2.b) = 2114;
            *(&t2.b + 2) = v37;
            _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", &t2, 0x12u);
          }

          v27 = [NSString stringWithUTF8String:"[CRLBezierPath(CRLAdditions) appendBezierPathWithArcWithEllipseBounds:startAngle:swingAngle:angleType:startNewPath:]"];
          v28 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLBezierPath_CRLAdditions.mm"];
          [CRLAssertionHandler handleFailureInFunction:v27 file:v28 lineNumber:2128 isFatal:0 description:"The arc shouldn't contain lineto elements"];
LABEL_34:
        }
      }

LABEL_49:
      ++v22;
    }

    while (elementCount != v22);
  }
}

- (void)appendBezierPathWithArcWithEllipseBounds:(CGRect)bounds startRadialVector:(CGPoint)vector endRadialVector:(CGPoint)radialVector angleSign:(unint64_t)sign startNewPath:(BOOL)path
{
  pathCopy = path;
  y = radialVector.y;
  x = radialVector.x;
  v10 = vector.y;
  v11 = vector.x;
  height = bounds.size.height;
  width = bounds.size.width;
  v14 = bounds.origin.y;
  v15 = bounds.origin.x;
  MidX = CGRectGetMidX(bounds);
  v26.origin.x = v15;
  v26.origin.y = v14;
  v24 = height;
  v26.size.width = width;
  v26.size.height = height;
  MidY = CGRectGetMidY(v26);
  v19 = atan2(v10 - MidY, v11 - MidX) * 180.0 / 3.14159265;
  v20 = atan2(y - MidY, x - MidX) * 180.0 / 3.14159265;
  if (sign)
  {
    if (sign == 1)
    {
        ;
      }
    }

    else
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_10132B898();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10132B8AC();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_10132B934();
      }

      v21 = off_1019EDA68;
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        +[CRLAssertionHandler packedBacktraceString];
        objc_claimAutoreleasedReturnValue();
        sub_10130E89C();
      }

      v22 = [NSString stringWithUTF8String:"[CRLBezierPath(CRLAdditions) appendBezierPathWithArcWithEllipseBounds:startRadialVector:endRadialVector:angleSign:startNewPath:]"];
      v23 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLBezierPath_CRLAdditions.mm"];
      [CRLAssertionHandler handleFailureInFunction:v22 file:v23 lineNumber:2157 isFatal:0 description:"Unexpected angle sign"];
    }
  }

  else
  {
      ;
    }
  }

  [(CRLBezierPath *)self appendBezierPathWithArcWithEllipseBounds:1 startAngle:pathCopy swingAngle:v15 angleType:v14 startNewPath:width, v24, v19, v20 - v19];
}

- (void)takeAttributesFromStroke:(id)stroke
{
  strokeCopy = stroke;
  supportsWidth = [strokeCopy supportsWidth];
  v5 = 0.0;
  if (supportsWidth)
  {
    [strokeCopy width];
  }

  [(CRLBezierPath *)self setLineWidth:v5];
  if ([strokeCopy supportsLineOptions])
  {
    [strokeCopy miterLimit];
    [(CRLBezierPath *)self setMiterLimit:?];
    -[CRLBezierPath setLineCapStyle:](self, "setLineCapStyle:", [strokeCopy cap]);
    join = [strokeCopy join];
  }

  else
  {
    join = 1;
  }

  [(CRLBezierPath *)self setLineJoinStyle:join];
}

- (CGRect)boundsIncludingCRLStroke:(id)stroke
{
  strokeCopy = stroke;
  if ([(CRLBezierPath *)self isEmpty])
  {
LABEL_2:
    x = CGRectZero.origin.x;
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
    goto LABEL_10;
  }

  if (!strokeCopy || ([strokeCopy shouldRender] & 1) == 0)
  {
    [(CRLBezierPath *)self bounds];
    x = v9;
    y = v10;
    width = v11;
    height = v12;
    goto LABEL_10;
  }

  if ([objc_opt_class() requiresCustomBoundsMeasurement])
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1002E445C;
    block[3] = &unk_10183B230;
    v35 = &stru_101853648;
    if (qword_101A34AB0 != -1)
    {
      dispatch_once(&qword_101A34AB0, block);
    }

    goto LABEL_2;
  }

  v17 = 0.0;
  if ([strokeCopy supportsWidth])
  {
    [strokeCopy width];
    v17 = v18;
  }

  if ([strokeCopy supportsLineOptions])
  {
    join = [strokeCopy join];
    v20 = [strokeCopy cap];
    [strokeCopy miterLimit];
  }

  else
  {
    join = +[CRLBezierPath defaultLineJoinStyle];
    v20 = +[CRLBezierPath defaultLineCapStyle];
    +[CRLBezierPath defaultMiterLimit];
  }

  v22 = v21;
  pattern = [strokeCopy pattern];
  v24 = [pattern count];

  needsToExtendJoinsForBoundsCalculation = [strokeCopy needsToExtendJoinsForBoundsCalculation];
  if (v24)
  {
    v26 = v20 == 0;
  }

  else
  {
    v26 = 1;
  }

  v27 = !v26;
  if (needsToExtendJoinsForBoundsCalculation)
  {
    v28 = 1;
  }

  else
  {
    v28 = v27;
  }

  v29 = [strokeCopy pathToStrokeFromCRLBezierPath:self];
  [v29 boundsIncludingStrokeWidth:join joinStyle:v20 capStyle:v28 miterLimit:v17 needsToExtendJoins:v22];
  x = v30;
  y = v31;
  width = v32;
  height = v33;

  v36.origin.x = x;
  v36.origin.y = y;
  v36.size.width = width;
  v36.size.height = height;
  if (CGRectIsNull(v36))
  {
    goto LABEL_2;
  }

LABEL_10:

  v13 = x;
  v14 = y;
  v15 = width;
  v16 = height;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

+ ($C03DF7238EFD9881545AA7BAA15E5874)p_makeDefaultPositioning
{
  retstr->var1 = CGPointZero;
  retstr->var0 = 1.57079633;
  retstr->var2 = -1;
  retstr->var3 = 0.0;
  return result;
}

+ (id)createClippedPath:(id)path headPositioning:(id *)positioning tailPositioning:(id *)tailPositioning stroke:(id)stroke
{
  pathCopy = path;
  v10 = pathCopy;
  x = tailPositioning->var1.x;
  y = tailPositioning->var1.y;
  var2 = positioning->var2;
  v14 = tailPositioning->var2;
  if ((var2 & 0x8000000000000000) == 0 || (v15 = pathCopy, (v14 & 0x8000000000000000) == 0))
  {
    var3 = tailPositioning->var3;
    v42 = positioning->var3;
    var0 = tailPositioning->var0;
    v17 = positioning->var1.x;
    v43 = positioning->var1.y;
    v18 = positioning->var0;
    strokeCopy = stroke;
    [strokeCopy width];
    v21 = v20;
    v15 = objc_alloc_init(CRLBezierPath);

    [strokeCopy lineEndInsetAdjustment];
    v23 = v22;

    v24 = sub_100120F98(var0 + 1.57079633);
    v39 = v23;
    v25 = v21 * v23;
    v27 = sub_10011F340(v24, v26, v21 * v23);
    v28 = sub_10011F334(x, y, v27);
    v30 = v29;
    v31 = sub_100120F98(v18 + 1.57079633);
    v33 = sub_10011F340(v31, v32, v25);
    v34 = sub_10011F334(v17, v43, v33);
    v36 = v35;
    if ((var2 < 0 || var2 >= v14) && (var2 != v14 || v42 >= var3))
    {
      if (v14 < 0)
      {
        [(CRLBezierPath *)v15 moveToPoint:x, y];
      }

      else
      {
        [(CRLBezierPath *)v15 moveToPoint:v28, v30];
        if (x != v28 || y != v30)
        {
          [(CRLBezierPath *)v15 lineToPoint:x, y];
        }
      }

      [(CRLBezierPath *)v15 appendBezierPath:v10 fromSegment:v14 t:var2 toSegment:1 t:var3 withoutMove:v42, *&v39];
      if (var2 < 0 || v40 <= 0.0)
      {
        goto LABEL_9;
      }
    }

    else
    {
      [(CRLBezierPath *)v15 moveToPoint:v28, v30, *&v39];
    }

    [(CRLBezierPath *)v15 lineToPoint:v34, v36];
LABEL_9:
  }

  return v15;
}

+ ($C03DF7238EFD9881545AA7BAA15E5874)lineEndPositioningOnPath:(SEL)path atHead:(id)head headPoint:(BOOL)point tailPoint:(CGPoint)tailPoint headLineEnd:(CGPoint)end tailLineEnd:(id)lineEnd stroke:(id)stroke
{
  y = end.y;
  x = end.x;
  v15 = tailPoint.y;
  v16 = tailPoint.x;
  pointCopy = point;
  headCopy = head;
  lineEndCopy = lineEnd;
  strokeCopy = stroke;
  v21 = a10;
  *&retstr->var0 = 0u;
  *&retstr->var1.y = 0u;
  retstr->var3 = 0.0;
  +[CRLBezierPath p_makeDefaultPositioning];
  if (pointCopy)
  {
    v22 = v15;
  }

  else
  {
    v22 = y;
  }

  if (pointCopy)
  {
    v23 = v16;
  }

  else
  {
    v23 = x;
  }

  if (pointCopy)
  {
    v24 = lineEndCopy;
    if (!lineEndCopy)
    {
LABEL_9:
      v25 = 0;
LABEL_13:
      retstr->var0 = 1.57079633;
      retstr->var1.x = v23;
      retstr->var1.y = v22;
      retstr->var2 = -1;
      retstr->var3 = 0.0;
      goto LABEL_14;
    }
  }

  else
  {
    v24 = strokeCopy;
    if (!strokeCopy)
    {
      goto LABEL_9;
    }
  }

  v26 = [v21 strokeLineEnd:v24];
  v25 = v26;
  if (!v26 || ([v26 isNone] & 1) != 0)
  {
    goto LABEL_13;
  }

  path = [v25 path];
  BoundingBox = CGPathGetBoundingBox([path CGPath]);
  MaxY = CGRectGetMaxY(BoundingBox);
  [v25 endPoint];
  v31 = MaxY - v30;

  if (![v25 isFilled])
  {
    v31 = v31 + 0.75;
  }

  [v21 width];
  [v25 scaleForStrokeWidth:?];
  v33 = v32 * v31;
  v34 = [CRLBezierPath bezierPathWithOvalInRect:v23 - v33, v22 - v33, v33 + v33, v33 + v33];
  v35 = objc_alloc_init(NSMutableArray);
  [headCopy addIntersectionsWithPath:v34 to:v35 allIntersections:0 reversed:pointCopy];
  if ([v35 count])
  {
    [v35 sortUsingSelector:"compareSegmentAndT:"];
    if (pointCopy)
    {
      [v35 lastObject];
    }

    else
    {
      [v35 objectAtIndex:0];
    }
    v36 = ;
    [v36 point];
    x = v37;
    y = v38;
  }

  else
  {
    v36 = 0;
    if (!pointCopy)
    {
      x = v16;
      y = v15;
    }
  }

  v39 = sub_10011F31C(v23, v22, x);
  retstr->var0 = sub_1001208D0(v39, v40) + -1.57079633;
  v41 = sub_10011F31C(x, y, v23);
  v43 = CGPointZero.x;
  if (v41 != CGPointZero.x || v42 != CGPointZero.y)
  {
    v44 = sub_10011F2FC(v41, v42);
    v43 = sub_10011F340(v44, v45, v33);
  }

  retstr->var1.x = sub_10011F334(v23, v22, v43);
  retstr->var1.y = v46;
  if (v36)
  {
    retstr->var2 = [v36 segment];
    [v36 t];
  }

  else
  {
    retstr->var2 = 0;
    v47 = 0.0;
  }

  retstr->var3 = v47;

LABEL_14:

  return result;
}

- (id)labelForSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  if ([(CRLBezierPath *)self isOpen]|| [(CRLBezierPath *)self elementCount]== 1)
  {
    v6 = +[NSBundle mainBundle];
    v7 = v6;
    v8 = @"Line";
LABEL_4:
    v9 = [v6 localizedStringForKey:v8 value:0 table:0];

    goto LABEL_5;
  }

  if ([(CRLBezierPath *)self isRectangular])
  {
    height = [(CRLBezierPath *)self p_equalWidthAndHeightForSize:width, height];
    v7 = +[NSBundle mainBundle];
    if (height)
    {
      v8 = @"Square";
    }

    else
    {
      v8 = @"Rectangle";
    }

LABEL_18:
    v6 = v7;
    goto LABEL_4;
  }

  if ([(CRLBezierPath *)self isCircular])
  {
    height2 = [(CRLBezierPath *)self p_equalWidthAndHeightForSize:width, height];
    v7 = +[NSBundle mainBundle];
    if (height2)
    {
      v8 = @"Circle";
    }

    else
    {
      v8 = @"Oval";
    }

    goto LABEL_18;
  }

  if ([(CRLBezierPath *)self isTriangular])
  {
    v6 = +[NSBundle mainBundle];
    v7 = v6;
    v8 = @"Triangle";
    goto LABEL_4;
  }

  if ([(CRLBezierPath *)self isDiamond])
  {
    v6 = +[NSBundle mainBundle];
    v7 = v6;
    v8 = @"Diamond";
    goto LABEL_4;
  }

  v9 = 0;
LABEL_5:

  return v9;
}

- (void)getStartPoint:(CGPoint *)point andEndPoint:(CGPoint *)endPoint
{
  [(CRLBezierPath *)self elementAtIndex:0 associatedPoints:point];
  v7 = [(CRLBezierPath *)self elementAtIndex:[(CRLBezierPath *)self elementCount]- 1 associatedPoints:v9];
  pointCopy = v9;
  if (v7 == 2)
  {
    pointCopy = &v10;
  }

  if (v7 == 3)
  {
    pointCopy = point;
  }

  *endPoint = *pointCopy;
}

- (void)addIntersectionsWithPath:(id)path to:(id)to allIntersections:(BOOL)intersections reversed:(BOOL)reversed
{
  reversedCopy = reversed;
  pathCopy = path;
  toCopy = to;
  v56 = [toCopy count];
  selfCopy = self;
  elementCount = [(CRLBezierPath *)self elementCount];
  elementCount2 = [pathCopy elementCount];
  if (elementCount < 2)
  {
    goto LABEL_46;
  }

  v13 = elementCount2;
  if (elementCount2 < 2)
  {
    goto LABEL_46;
  }

  v14 = !reversedCopy;
  if (reversedCopy)
  {
    v15 = elementCount - 1;
  }

  else
  {
    v15 = 0;
  }

  if (v14)
  {
    v16 = elementCount;
  }

  else
  {
    v16 = -1;
  }

  v17 = -1;
  if (v14)
  {
    v17 = 1;
  }

  v58 = v17;
  v59 = v16;
  while (2)
  {
    v18 = [(CRLBezierPath *)selfCopy elementAtIndex:v15 allPoints:&v65];
    if (!v18)
    {
      goto LABEL_45;
    }

    if (v18 == 2)
    {
      v19 = v65;
      v20 = v66;
      v21 = v67;
      if (sub_10011F010(v65.f64[0], v65.f64[1], v66.f64[0], v66.f64[1], v67.f64[0], v67.f64[1]) && (v22 = v68, sub_10011F010(v20.f64[0], v20.f64[1], v21.f64[0], v21.f64[1], v68.f64[0], v68.f64[1])) && (v23 = sub_10011EC88(v19.f64[0], v19.f64[1], v22.f64[0]), v25 = v24, v27 = v26, v29 = v28, sub_10011FF8C(v20.f64[0], v20.f64[1], v23, v24, v26, v28)) && sub_10011FF8C(v21.f64[0], v21.f64[1], v23, v25, v27, v29))
      {
        v30 = 0;
        v66 = v68;
      }

      else
      {
        v30 = 1;
      }
    }

    else
    {
      v30 = 0;
    }

    v31 = 0;
    do
    {
      v32 = [pathCopy elementAtIndex:v31 allPoints:&v61];
      if (!v32)
      {
        goto LABEL_42;
      }

      if (v32 == 2)
      {
        v33 = v61;
        v34 = v62;
        v35 = v63;
        if (sub_10011F010(*&v61, *(&v61 + 1), *&v62, *(&v62 + 1), *&v63, *(&v63 + 1)) && (v36 = v64, sub_10011F010(*&v34, *(&v34 + 1), *&v35, *(&v35 + 1), *&v64, *(&v64 + 1))) && (v37 = sub_10011EC88(*&v33, *(&v33 + 1), *&v36), v39 = v38, v41 = v40, v43 = v42, sub_10011FF8C(*&v34, *(&v34 + 1), v37, v38, v40, v42)) && sub_10011FF8C(*&v35, *(&v35 + 1), v37, v39, v41, v43))
        {
          v44 = 0;
          v62 = v64;
          if (!v30)
          {
            goto LABEL_37;
          }
        }

        else
        {
          v44 = 1;
          if (!v30)
          {
LABEL_37:
            if (v44)
            {
              v51 = &v61;
              v52 = &v65;
              v53 = v31;
              v54 = v15;
              v55 = 1;
LABEL_40:
              sub_1004054C0(v51->f64, v52->f64, v53, v54, v55, toCopy);
              goto LABEL_42;
            }

            sub_1004057E0(v65.f64, &v61, v15, v31, toCopy);
            goto LABEL_42;
          }
        }
      }

      else
      {
        v44 = 0;
        if (!v30)
        {
          goto LABEL_37;
        }
      }

      if (!v44)
      {
        v51 = &v65;
        v52 = &v61;
        v53 = v15;
        v54 = v31;
        v55 = 0;
        goto LABEL_40;
      }

      v45 = toCopy;
      v46 = [v45 count];
      v70[0] = v65;
      v70[1] = v66;
      v70[2] = v67;
      v70[3] = v68;
      v69[0] = v61;
      v69[1] = v62;
      v69[2] = v63;
      v69[3] = v64;
      sub_1004092E4(v70, v69, v15, v31, 0, v45, 1.0, 0.0, 1.0, 0.0);
      v47 = [v45 count];
      if (v46 < v47)
      {
        v48 = v47;
        do
        {
          v49 = [v45 objectAtIndex:v46];
          [v49 t];
          [v49 setPoint:{sub_10011F20C(&v65, v50)}];

          ++v46;
        }

        while (v48 != v46);
      }

LABEL_42:
      ++v31;
    }

    while (v31 != v13);
    if (intersections || v56 >= [toCopy count])
    {
LABEL_45:
      v15 += v58;
      if (v15 == v59)
      {
        break;
      }

      continue;
    }

    break;
  }

LABEL_46:
}

- (void)addIntersectionsWithLine:(CGPoint)line[2] to:(id)to
{
  toCopy = to;
  v12 = CGPointZero;
  elementCount = [(CRLBezierPath *)self elementCount];
  if (elementCount)
  {
    v8 = elementCount;
    for (i = 0; v8 != i; ++i)
    {
      v10 = [(CRLBezierPath *)self elementAtIndex:i associatedPoints:v14, v12, v13];
      if (v10 > 1)
      {
        if (v10 == 2)
        {
          sub_1004054C0(&v13, &line->x, i, -1, 0, toCopy);
          v11 = v14[2];
          goto LABEL_13;
        }

        if (v10 == 3)
        {
          v14[0] = v12;
          goto LABEL_10;
        }
      }

      else
      {
        if (v10)
        {
          if (v10 != 1)
          {
            continue;
          }

LABEL_10:
          sub_1004057E0(&v13, &line->x, i, -1, toCopy);
          v11 = v14[0];
LABEL_13:
          v13 = v11;
          continue;
        }

        v12 = v14[0];
        v13 = v14[0];
      }
    }
  }
}

- (void)appendBezierPath:(id)path fromSegment:(int64_t)segment toSegment:(int64_t)toSegment
{
  if (segment < toSegment)
  {
    segmentCopy = segment;
    do
    {
      v9 = [path elementAtIndex:segmentCopy associatedPoints:&v10];
      if (v9 > 1)
      {
        if (v9 == 2)
        {
          [(CRLBezierPath *)self curveToPoint:v14 controlPoint1:v15 controlPoint2:v10, v11, v12, v13];
        }

        else if (v9 == 3)
        {
          [(CRLBezierPath *)self closePath];
        }
      }

      else if (v9)
      {
        if (v9 == 1)
        {
          [(CRLBezierPath *)self lineToPoint:v10, v11];
        }
      }

      else
      {
        [(CRLBezierPath *)self moveToPoint:v10, v11];
      }

      ++segmentCopy;
    }

    while (toSegment != segmentCopy);
  }
}

- (void)appendBezierPath:(id)path fromSegment:(int64_t)segment t:(double)t toSegment:(int64_t)toSegment t:(double)a7 withoutMove:(BOOL)move
{
  tCopy = t;
  pathCopy = path;
  elementCount = [pathCopy elementCount];
  v14 = elementCount;
  v16 = segment < 1 || elementCount <= segment;
  if (v16)
  {
    segmentCopy = -1;
  }

  else
  {
    segmentCopy = segment;
  }

  if (toSegment <= 0)
  {
    toSegment = elementCount + 1;
  }

  if (segmentCopy != toSegment)
  {
    if (v16)
    {
      goto LABEL_41;
    }

    v20 = [pathCopy elementAtIndex:segment allPoints:&v36];
    if (v20 > 1)
    {
      if (v20 == 2)
      {
        sub_100404958(&v36, &v28, tCopy, 1.0);
        if (!move)
        {
          [(CRLBezierPath *)self moveToPoint:v28, v29];
        }

        [(CRLBezierPath *)self curveToPoint:v34 controlPoint1:v35 controlPoint2:v30, v31, v32, v33, *&tCopy];
        goto LABEL_41;
      }

      if (v20 != 3)
      {
        goto LABEL_41;
      }
    }

    else
    {
      if (!v20)
      {
        if (!move)
        {
          [(CRLBezierPath *)self moveToPoint:*&v36];
        }

        goto LABEL_41;
      }

      if (v20 != 1)
      {
LABEL_41:
        if (toSegment >= v14)
        {
          toSegmentCopy = v14;
        }

        else
        {
          toSegmentCopy = toSegment;
        }

        v22 = segmentCopy + 1;
        if (v22 >= toSegmentCopy)
        {
LABEL_59:
          if (toSegment < 1 || toSegment >= v14)
          {
            goto LABEL_67;
          }

          v25 = [pathCopy elementAtIndex:toSegment allPoints:&v36];
          if (v25 != 3)
          {
            if (v25 == 2)
            {
              sub_100404958(&v36, &v28, 0.0, a7);
LABEL_66:
              [(CRLBezierPath *)self curveToPoint:v34 controlPoint1:v35 controlPoint2:v30, v31, v32, v33, *&tCopy];
              goto LABEL_67;
            }

            if (v25 != 1)
            {
              goto LABEL_67;
            }
          }

LABEL_64:
          [(CRLBezierPath *)self lineToPoint:vmlaq_n_f64(vmulq_n_f64(v37, a7), v36, 1.0 - a7), *&tCopy];
          goto LABEL_67;
        }

        v23 = 0;
        while (1)
        {
          v24 = [pathCopy elementAtIndex:v22 associatedPoints:{&v36, *&tCopy}];
          if (v24 <= 1)
          {
            break;
          }

          if (v24 == 2)
          {
            [(CRLBezierPath *)self curveToPoint:v38 controlPoint1:v39 controlPoint2:*&v36, *&v37];
            goto LABEL_58;
          }

          if (v24 == 3)
          {
            if ((v23 & 1) == 0)
            {
              [(CRLBezierPath *)self lineToPoint:*&v36];
              v23 = 0;
              goto LABEL_58;
            }

            [(CRLBezierPath *)self closePath];
            goto LABEL_55;
          }

LABEL_58:
          if (toSegmentCopy == ++v22)
          {
            goto LABEL_59;
          }
        }

        if (v24)
        {
          if (v24 == 1)
          {
            [(CRLBezierPath *)self lineToPoint:*&v36];
          }

          goto LABEL_58;
        }

        [(CRLBezierPath *)self moveToPoint:*&v36];
LABEL_55:
        v23 = 1;
        goto LABEL_58;
      }
    }

    if (!move)
    {
      [(CRLBezierPath *)self moveToPoint:vmlaq_n_f64(vmulq_n_f64(v37, tCopy), v36, 1.0 - tCopy)];
    }

    [(CRLBezierPath *)self lineToPoint:*&v37, *&tCopy];
    goto LABEL_41;
  }

  if (a7 < tCopy || segmentCopy >= elementCount)
  {
    LOBYTE(v16) = 1;
  }

  if (v16)
  {
    goto LABEL_67;
  }

  v19 = [pathCopy elementAtIndex:segmentCopy allPoints:{&v36, tCopy, a7}];
  if (v19 == 3)
  {
    goto LABEL_22;
  }

  if (v19 == 2)
  {
    sub_100404958(&v36, &v28, tCopy, a7);
    if (!move)
    {
      [(CRLBezierPath *)self moveToPoint:v28, v29];
    }

    goto LABEL_66;
  }

  if (v19 == 1)
  {
LABEL_22:
    if (!move)
    {
      [(CRLBezierPath *)self moveToPoint:vmlaq_n_f64(vmulq_n_f64(v37, tCopy), v36, 1.0 - tCopy)];
    }

    goto LABEL_64;
  }

LABEL_67:
}

- (id)copyFromSegment:(int)segment t:(double)t toSegment:(int)toSegment t:(double)a6
{
  v11 = objc_alloc_init(objc_opt_class());
  [v11 appendBezierPath:self fromSegment:segment t:toSegment toSegment:0 t:t withoutMove:a6];
  [v11 setWindingRule:{-[CRLBezierPath windingRule](self, "windingRule")}];
  [v11 setLineCapStyle:{-[CRLBezierPath lineCapStyle](self, "lineCapStyle")}];
  [v11 setLineJoinStyle:{-[CRLBezierPath lineJoinStyle](self, "lineJoinStyle")}];
  [(CRLBezierPath *)self lineWidth];
  [v11 setLineWidth:?];
  return v11;
}

- (CGPoint)nearestPointOnPathToLine:(CGPoint)line[2]
{
  x = CGPointZero.x;
  y = CGPointZero.y;
  v25 = CGPointZero;
  elementCount = [(CRLBezierPath *)self elementCount];
  if (elementCount)
  {
    v8 = elementCount;
    v9 = 0;
    v10 = 3.40282347e38;
    while (1)
    {
      v11 = [(CRLBezierPath *)self elementAtIndex:v9 associatedPoints:v27];
      if (v11 == 2)
      {
        break;
      }

      if (v11 == 3)
      {
        v12 = v25;
LABEL_9:
        v27[0] = v12;
        v11 = 2;
      }

      v15 = line[1].x;
      v14 = line[1].y;
      v16 = v14 - line->y;
      v17 = v15 - line->x;
      v18 = v17 * v17 + v16 * v16;
      v19 = (1.0 / sqrtf(v18));
      v20 = vabdd_f64(*(v27 + 1) * -(v17 * v19) + v16 * v19 * *v27, v14 * -(v17 * v19) + v16 * v19 * v15);
      if (v20 < v10)
      {
        v10 = v20;
        y = *(v27 + 1);
        x = *v27;
      }

      v26 = v27[0];
      if (!v11)
      {
        v25 = v27[0];
      }

      if (v8 == ++v9)
      {
        goto LABEL_15;
      }
    }

    v23 = 0.0;
    v24 = 0.0;
    v13 = sub_100404D1C(&v26, &line->x, &v23);
    if (v13 < v10)
    {
      v10 = v13;
      y = v24;
      x = v23;
    }

    v12 = v27[2];
    goto LABEL_9;
  }

LABEL_15:
  v21 = x;
  v22 = y;
  result.y = v22;
  result.x = v21;
  return result;
}

- (CGPoint)nearestAngleOnPathToLine:(CGPoint)line[2]
{
  x = CGPointZero.x;
  y = CGPointZero.y;
  v7 = line[1].x;
  v8 = line[1].y;
  v9 = line->x;
  v32 = CGPointZero;
  elementCount = [(CRLBezierPath *)self elementCount];
  if (elementCount)
  {
    v11 = elementCount;
    v12 = sub_10011F31C(v7, v8, v9);
    v14 = sub_10011F2FC(v12, v13);
    v16 = v15;
    v17 = 0;
    v18 = -2.0;
    do
    {
      v19 = [(CRLBezierPath *)self elementAtIndex:v17 associatedPoints:v34];
      v20 = v19;
      if (v19 == 2)
      {
        v30 = 0.0;
        v31 = 0.0;
        v21 = sub_100406200(&v33, &line->x, &v30);
        if (v21 > v18)
        {
          v18 = v21;
          y = v31;
          x = v30;
        }

        v34[0] = v34[2];
      }

      else if (v19 == 3)
      {
        v34[0] = v32;
        v20 = 2;
      }

      v22 = v34[0];
      v23 = sub_10011F31C(*v34, *(v34 + 1), line->x);
      v25 = sub_10011F2FC(v23, v24);
      v27 = sub_10011F328(v14, v16, v25, v26);
      if (v27 > v18)
      {
        v18 = v27;
        y = *(&v22 + 1);
        x = *&v22;
      }

      v33 = v34[0];
      if (!v20)
      {
        v32 = v34[0];
      }

      ++v17;
    }

    while (v11 != v17);
  }

  v28 = x;
  v29 = y;
  result.y = v29;
  result.x = v28;
  return result;
}

- (int64_t)elementPercentage:(double *)percentage forOverallPercentage:(double)overallPercentage startingElementIndex:(int64_t)index lengthToStartingElement:(double)element
{
  [(CRLBezierPath *)self length];
  if (v11 <= 0.0 || (v12 = v11, [(CRLBezierPath *)self elementCount]<= 0))
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10136D080();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10136D094();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10136D11C();
    }

    v20 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v20);
    }

    v21 = [NSString stringWithUTF8String:"[CRLBezierPath(Distortion) elementPercentage:forOverallPercentage:startingElementIndex:lengthToStartingElement:]"];
    v22 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLPathDistortion.m"];
    [CRLAssertionHandler handleFailureInFunction:v21 file:v22 lineNumber:1259 isFatal:0 description:"Can't calculate a percentage of a path with no length or elements."];

    index = 0;
    v23 = 0.0;
  }

  else
  {
    v13 = v12 * overallPercentage;
    if (overallPercentage <= 0.0)
    {
      if ([(CRLBezierPath *)self elementCount]< 1)
      {
        index = 0;
      }

      else
      {
        index = 0;
        do
        {
          [(CRLBezierPath *)self lengthOfElement:index];
          if (v25 > 0.0)
          {
            break;
          }

          ++index;
        }

        while (index < [(CRLBezierPath *)self elementCount]);
      }

      [(CRLBezierPath *)self lengthOfElement:index];
      v23 = v13 / v26;
    }

    else
    {
      v14 = v13 - element;
      elementCount = [(CRLBezierPath *)self elementCount];
      if (elementCount <= index)
      {
        do
        {
LABEL_7:
          if (elementCount-- < 1)
          {
            break;
          }

          [(CRLBezierPath *)self lengthOfElement:elementCount];
        }

        while (v18 <= 0.0);
        [(CRLBezierPath *)self lengthOfElement:elementCount];
        v19 = v14 + v16;
        index = elementCount;
      }

      else
      {
        while (1)
        {
          [(CRLBezierPath *)self lengthOfElement:index];
          v14 = v14 - v16;
          if (v14 < 0.0)
          {
            break;
          }

          if (elementCount == ++index)
          {
            goto LABEL_7;
          }
        }

        v19 = v16 + v14;
      }

      v23 = v19 / v16;
    }
  }

  *percentage = v23;
  return index;
}

- (CGPoint)pointAt:(double)at fromElement:(int64_t)element
{
  v26 = CGPointZero;
  v6 = [(CRLBezierPath *)self elementAtIndex:element allPoints:&v28];
  if (v6 <= 1)
  {
    if (!v6)
    {
      v8 = v28;
      goto LABEL_16;
    }

    _ZF = v6 == 1;
    goto LABEL_6;
  }

  if (v6 != 2)
  {
    _ZF = v6 == 3;
LABEL_6:
    v8 = v26;
    if (!_ZF)
    {
      goto LABEL_16;
    }

    atCopy = 1.0 - at;
    v10 = v28;
    v11 = vmulq_n_f64(v29, at);
    goto LABEL_9;
  }

  atCopy = at;
  if (at < 0.0)
  {
    [(CRLBezierPath *)self rawGradientAt:element fromElement:at];
    v14 = sub_10011F340(v12, v13, at);
    v16 = v28.f64[1];
    v15 = v28.f64[0];
LABEL_15:
    v8.f64[0] = sub_10011F334(v15, v16, v14);
    v8.f64[1] = v19;
    goto LABEL_16;
  }

  if (at > 1.0)
  {
    [(CRLBezierPath *)self rawGradientAt:element fromElement:at];
    v14 = sub_10011F340(v17, v18, at + -1.0);
    v16 = v31.f64[1];
    v15 = v31.f64[0];
    goto LABEL_15;
  }

  __asm { FMOV            V3.2D, #3.0 }

  v11 = vmlaq_n_f64(vmlaq_n_f64(vmulq_n_f64(vmulq_n_f64(vmulq_n_f64(vmulq_f64(v29, _Q3), at), 1.0 - at), 1.0 - at), vmulq_n_f64(vmulq_n_f64(v28, 1.0 - at), 1.0 - at), 1.0 - at), vmulq_n_f64(vmulq_n_f64(vmulq_f64(v30, _Q3), at), at), 1.0 - at);
  v10 = vmulq_n_f64(vmulq_n_f64(v31, at), at);
LABEL_9:
  v8 = vmlaq_n_f64(v11, v10, atCopy);
LABEL_16:
  v20 = v8.f64[1];
  v21 = v8.f64[0];
  result.y = v20;
  result.x = v21;
  return result;
}

- (CGPoint)pointAt:(double)at
{
  [(CRLBezierPath *)self length];
  if (v5 <= 0.0)
  {
    if ([(CRLBezierPath *)self isEmpty])
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_10136D144();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10136D158();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_10136D1E0();
      }

      v9 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v9);
      }

      v10 = [NSString stringWithUTF8String:"[CRLBezierPath(Distortion) pointAt:]"];
      v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLPathDistortion.m"];
      [CRLAssertionHandler handleFailureInFunction:v10 file:v11 lineNumber:1348 isFatal:0 description:"Can't get a point on an empty path."];

      v7 = INFINITY;
      v8 = INFINITY;
    }

    else
    {
      [(CRLBezierPath *)self currentPoint];
    }
  }

  else
  {
    v12 = 0.0;
    v6 = [(CRLBezierPath *)self elementPercentage:&v12 forOverallPercentage:at];
    [(CRLBezierPath *)self pointAt:v6 fromElement:v12];
  }

  result.y = v8;
  result.x = v7;
  return result;
}

- (CGPoint)gradientAt:(double)at fromElement:(int64_t)element
{
  [(CRLBezierPath *)self rawGradientAt:element fromElement:at];

  v6 = sub_10011F2FC(v4, v5);
  result.y = v7;
  result.x = v6;
  return result;
}

- (CGPoint)gradientAt:(double)at
{
  v7 = 0.0;
  v4 = [(CRLBezierPath *)self elementPercentage:&v7 forOverallPercentage:at];
  [(CRLBezierPath *)self gradientAt:v4 fromElement:v7];
  result.y = v6;
  result.x = v5;
  return result;
}

- (CGPoint)transformedTotalCoordinate:(CGPoint)coordinate betweenElement:(int64_t)element andElement:(int64_t)andElement getElement:(int64_t *)getElement getPercentage:(double *)percentage
{
  y = coordinate.y;
  x = coordinate.x;
  v29 = 0.0;
  v14 = [(CRLBezierPath *)self elementPercentage:&v29 forOverallPercentage:?];
  if (v14 >= element)
  {
    if (v14 <= andElement)
    {
      element = v14;
    }

    else
    {
      [(CRLBezierPath *)self elementPercentageFromElement:andElement forOverallPercentage:x];
      v29 = v16;
      element = andElement;
    }
  }

  else
  {
    [(CRLBezierPath *)self elementPercentageFromElement:element forOverallPercentage:x];
    v29 = v15;
  }

  [(CRLBezierPath *)self pointAt:element fromElement:?];
  v18 = v17;
  v20 = v19;
  [(CRLBezierPath *)self gradientAt:element fromElement:v29];
  v22 = v21;
  v24 = v23;
  [(CRLBezierPath *)self lineWidth];
  v26 = y * v25;
  v27 = v18 - v24 * (y * v25);
  v28 = v20 + v22 * v26;
  *getElement = element;
  *percentage = v29;
  result.y = v28;
  result.x = v27;
  return result;
}

- (double)elementPercentageFromElement:(int64_t)element forOverallPercentage:(double)percentage
{
  [(CRLBezierPath *)self length];
  v8 = v7;
  if (element < 1)
  {
    v10 = 0.0;
  }

  else
  {
    v9 = 0;
    v10 = 0.0;
    do
    {
      [(CRLBezierPath *)self lengthOfElement:v9];
      v10 = v10 + v11;
      ++v9;
    }

    while (element != v9);
  }

  [(CRLBezierPath *)self lengthOfElement:element];
  return (v8 * percentage - v10) / v12;
}

- (CGPoint)rawGradientAt:(double)at fromElement:(int64_t)element
{
  v19 = CGPointZero;
  v5 = [(CRLBezierPath *)self elementAtIndex:element allPoints:&v20];
  if (v5 > 1)
  {
    if (v5 != 2)
    {
      _ZF = v5 == 3;
LABEL_6:
      v7 = v19;
      if (_ZF)
      {
        v7 = vsubq_f64(v21, v20);
      }

      goto LABEL_24;
    }

    atCopy = 0.0001;
    if (at >= 0.0001)
    {
      atCopy = at;
    }

    if (atCopy <= 0.9999)
    {
      v12 = atCopy;
    }

    else
    {
      v12 = 0.9999;
    }

    __asm
    {
      FMOV            V4.2D, #-3.0
      FMOV            V5.2D, #3.0
    }

    v7 = vmlaq_n_f64(vmlaq_n_f64(vmlaq_n_f64(vmulq_n_f64(vmulq_f64(v21, _Q5), v12 * -4.0 + 1.0 + v12 * 3.0 * v12), vmulq_n_f64(vmulq_f64(v20, _Q4), v12 + -1.0), v12 + -1.0), vmulq_n_f64(vmulq_f64(v22, _Q5), v12), v12 * -3.0 + 2.0), vmulq_n_f64(vmulq_f64(v23, _Q5), v12), v12);
  }

  else
  {
    if (v5)
    {
      _ZF = v5 == 1;
      goto LABEL_6;
    }

    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10136D208();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10136D230();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10136D2B8();
    }

    v8 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v8);
    }

    v9 = [NSString stringWithUTF8String:"[CRLBezierPath(Distortion) rawGradientAt:fromElement:]"];
    v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLPathDistortion.m"];
    [CRLAssertionHandler handleFailureInFunction:v9 file:v10 lineNumber:1433 isFatal:0 description:"-rawGradientAt:fromElement: can't handle move to."];

    v7 = v19;
  }

LABEL_24:
  v18 = v7.f64[1];
  result.x = v7.f64[0];
  result.y = v18;
  return result;
}

- (CGPoint)myGradientAt:(double)at
{
  v14 = 0.0;
  v4 = [(CRLBezierPath *)self elementPercentage:&v14 forOverallPercentage:at];
  [(CRLBezierPath *)self rawGradientAt:v4 fromElement:v14];
  v6 = v5;
  v8 = v7;
  [(CRLBezierPath *)self length];
  v10 = v9;
  [(CRLBezierPath *)self lengthOfElement:v4];
  v12 = sub_10011F340(v6, v8, v10 / v11);
  result.y = v13;
  result.x = v12;
  return result;
}

- (CGPoint)myGradientAt:(double)at fromElement:(int64_t)element
{
  [(CRLBezierPath *)self rawGradientAt:at fromElement:?];
  v7 = v6;
  v9 = v8;
  [(CRLBezierPath *)self length];
  v11 = v10;
  [(CRLBezierPath *)self lengthOfElement:element];

  v13 = sub_10011F340(v7, v9, v11 / v12);
  result.y = v14;
  result.x = v13;
  return result;
}

- (double)curvatureAt:(double)at
{
  v8 = 0.0;
  v4 = [(CRLBezierPath *)self elementPercentage:&v8 forOverallPercentage:at];
  [(CRLBezierPath *)self curvatureAt:v4 fromElement:v8];
  v6 = -0.5;
  if (v5 >= -0.5)
  {
    v6 = v5;
  }

  if (v5 <= 0.5)
  {
    return v6;
  }

  else
  {
    return 0.5;
  }
}

- (double)curvatureAt:(double)at fromElement:(int64_t)element
{
  v5 = [(CRLBezierPath *)self elementAtIndex:element allPoints:&v15];
  if (v5 == 2)
  {
    atCopy = 0.01;
    if (at >= 0.01)
    {
      atCopy = at;
    }

    if (atCopy > 0.99)
    {
      atCopy = 0.99;
    }

    v11 = (atCopy * (atCopy * (v21 - v19) + (1.0 - atCopy) * (v19 - v17)) + (1.0 - atCopy) * (atCopy * (v19 - v17) + (1.0 - atCopy) * (v17 - v15))) * 3.0;
    v12 = (atCopy * (atCopy * (v22 - v20) + (1.0 - atCopy) * (v20 - v18)) + (1.0 - atCopy) * (atCopy * (v20 - v18) + (1.0 - atCopy) * (v18 - v16))) * 3.0;
    v13 = v11 * ((atCopy * (v22 - v20 - (v20 - v18)) + (1.0 - atCopy) * (v20 - v18 - (v18 - v16))) * 6.0) - v12 * ((atCopy * (v21 - v19 - (v19 - v17)) + (1.0 - atCopy) * (v19 - v17 - (v17 - v15))) * 6.0);
    return v13 / pow(v12 * v12 + v11 * v11, 1.5);
  }

  else
  {
    v6 = 0.0;
    if (!v5)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_10136D2E0();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10136D308();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_10136D390();
      }

      v7 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v7);
      }

      v8 = [NSString stringWithUTF8String:"[CRLBezierPath(Distortion) curvatureAt:fromElement:]"];
      v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLPathDistortion.m"];
      [CRLAssertionHandler handleFailureInFunction:v8 file:v9 lineNumber:1484 isFatal:0 description:"-curvatureAt:fromElement: can't handle move to."];
    }
  }

  return v6;
}

- (void)recursiveSubdivideOntoPath:(id)path into:(id)into
{
  intoCopy = into;
  pathCopy = path;
  -[CRLBezierPath recursiveSubdivideOntoPath:withScaling:inElementRange:into:](self, "recursiveSubdivideOntoPath:withScaling:inElementRange:into:", pathCopy, 0, [pathCopy elementCount] - 1, intoCopy, 0.0, 1.0);
}

- (void)recursiveSubdivideOntoPath:(id)path withScaling:(id)scaling into:(id)into
{
  var1 = scaling.var1;
  var0 = scaling.var0;
  intoCopy = into;
  pathCopy = path;
  -[CRLBezierPath recursiveSubdivideOntoPath:withScaling:inElementRange:into:](self, "recursiveSubdivideOntoPath:withScaling:inElementRange:into:", pathCopy, 0, [pathCopy elementCount] - 1, intoCopy, var0, var1);
}

- (void)recursiveSubdivideOntoPath:(id)path withScaling:(id)scaling inElementRange:(_NSRange)range into:(id)into
{
  length = range.length;
  location = range.location;
  var1 = scaling.var1;
  var0 = scaling.var0;
  pathCopy = path;
  intoCopy = into;
  if (([pathCopy isEmpty] & 1) == 0 && length)
  {
    v14 = location + length;
    if (location + length <= [pathCopy elementCount])
    {
      v90 = var0;
      v91 = var1;
      v18 = objc_alloc_init(NSMutableArray);
      v21 = [CRLPathCut alloc];
      [pathCopy lengthToElement:location];
      v23 = v22;
      [pathCopy length];
      v25 = [(CRLPathCut *)v21 initWithSegment:location atT:v23 / v24 withSkew:0.0];
      [v18 addObject:v25];

      [pathCopy miterLimit];
      v27 = location + 1;
      if (v27 < v14)
      {
        v89 = v26 * 0.995;
        v28 = length - 1;
        do
        {
          v29 = v27 + 1;
          [pathCopy lengthOfElement:v27 + 1];
          if (v30 >= 0.1)
          {
            [pathCopy lengthOfElement:v27];
            if (v31 >= 0.1)
            {
              [pathCopy gradientAt:v27 fromElement:1.0];
              v34 = sub_10011F2FC(v32, v33);
              v36 = v35;
              [pathCopy gradientAt:v27 + 1 fromElement:0.0];
              v39 = sub_10011F2FC(v37, v38);
              v41 = v40;
              v42 = sub_10011F328(v34, v36, v39, v40);
              if (v42 < 0.99)
              {
                v43 = v42;
                [pathCopy lengthToElement:v27 + 1];
                v92 = v44;
                [pathCopy length];
                v46 = v45;
                v47 = 0.0;
                if (v29 < v14)
                {
                  v48 = sub_10011F340(v39, v41, -1.0);
                  v49 = sub_10011F334(v34, v36, v48);
                  v51 = v50;
                  v52 = -sub_10011F328(v34, v36, v49, v50);
                  v53 = sub_10012104C(0, v34, v36);
                  v55 = v52 / sub_10011F328(v49, v51, v53, v54);
                  v56 = acos(fmin(fmax(-v43, -1.0), 1.0));
                  if (1.0 / sin(v56 * 0.5) <= v89)
                  {
                    v47 = v55;
                  }

                  else
                  {
                    v47 = 0.0;
                  }
                }

                v57 = [[CRLPathCut alloc] initWithSegment:v27 atT:v92 / v46 withSkew:v47];
                [v18 addObject:v57];
              }
            }
          }

          v27 = v29;
          --v28;
        }

        while (v28);
      }

      if (v14 < 1)
      {
LABEL_29:
        [pathCopy lengthToElement:v14];
        v61 = v60;
        [pathCopy lengthOfElement:v14];
        v63 = v61 + v62;
        [pathCopy length];
        v65 = [[CRLPathCut alloc] initWithSegment:v14 atT:v63 / v64 withSkew:0.0];
        [v18 addObject:v65];
      }

      else
      {
        while (1)
        {
          [pathCopy lengthOfElement:v14];
          if (v58 >= 0.1)
          {
            break;
          }

          if (v14-- <= 1)
          {
            v14 = 0;
            goto LABEL_29;
          }
        }

        [pathCopy lengthToElement:v14];
        v67 = v66;
        [pathCopy lengthOfElement:v14];
        v69 = v67 + v68;
        [pathCopy length];
        v71 = [[CRLPathCut alloc] initWithSegment:v14 atT:v69 / v70 withSkew:0.0];
        [v18 addObject:v71];

        *buf = xmmword_1014629F0;
        *&buf[16] = xmmword_1014629F0;
        *&buf[32] = xmmword_1014629F0;
        *&buf[48] = xmmword_1014629F0;
        v95 = CGPointZero;
        if ([(CRLBezierPath *)self elementCount]>= 1)
        {
          v72 = 0;
          v73 = 0;
          do
          {
            v74 = [(CRLBezierPath *)self elementAtIndex:v72 associatedPoints:&buf[16]];
            v75 = v74 == 0;
            if (v74)
            {
              v76 = v74;
              if (v74 == 2)
              {
                *&buf[16] = v90 + *&buf[16] * v91;
                *&buf[32] = v90 + *&buf[32] * v91;
                *&buf[48] = v90 + *&buf[48] * v91;
                v93 = *&buf[48];
                sub_1004079FC(buf, pathCopy, intoCopy, v73, v18);
                *buf = v93;
              }

              else
              {
                if (v74 == 3)
                {
                  *&buf[16] = v95;
                  v77 = v95;
                }

                else
                {
                  v77.x = v90 + *&buf[16] * v91;
                  *&buf[16] = v77.x;
                }

                v78 = *buf;
                v79 = *&buf[8];
                v80 = sub_10011F31C(v77.x, *&buf[24], *buf);
                v82 = v81;
                *&buf[48] = *&buf[16];
                v83 = sub_10011F340(v80, v81, 0.33);
                *&buf[16] = sub_10011F334(v78, v79, v83);
                *&buf[24] = v84;
                v85 = sub_10011F340(v80, v82, 0.66);
                *&buf[32] = sub_10011F334(v78, v79, v85);
                *&buf[40] = v86;
                v94 = *&buf[48];
                sub_1004079FC(buf, pathCopy, intoCopy, v73, v18);
                *buf = v94;
                if (v76 == 3)
                {
                  [intoCopy closePath];
                }
              }
            }

            else
            {
              *&buf[16] = v90 + *&buf[16] * v91;
              v95 = *&buf[16];
              *buf = *&buf[16];
            }

            ++v72;
            v73 = v75;
          }

          while (v72 < [(CRLBezierPath *)self elementCount]);
        }
      }
    }

    else
    {
      v15 = +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_10136D3B8();
      }

      v16 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        v87 = v16;
        v98.location = location;
        v98.length = length;
        v88 = NSStringFromRange(v98);
        *buf = 67110402;
        *&buf[4] = v15;
        *&buf[8] = 2082;
        *&buf[10] = "[CRLBezierPath(Distortion) recursiveSubdivideOntoPath:withScaling:inElementRange:into:]";
        *&buf[18] = 2082;
        *&buf[20] = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLPathDistortion.m";
        *&buf[28] = 1024;
        *&buf[30] = 1722;
        *&buf[34] = 2112;
        *&buf[36] = v88;
        *&buf[44] = 2048;
        *&buf[46] = [pathCopy elementCount];
        _os_log_error_impl(&_mh_execute_header, v87, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Asked to recursively subdivide using a range (%@) beyond the end of a path with element count %zd", buf, 0x36u);
      }

      if (qword_101AD5A10 != -1)
      {
        sub_10136D3CC();
      }

      v17 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v17);
      }

      v18 = [NSString stringWithUTF8String:"[CRLBezierPath(Distortion) recursiveSubdivideOntoPath:withScaling:inElementRange:into:]"];
      v19 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLPathDistortion.m"];
      v97.location = location;
      v97.length = length;
      v20 = NSStringFromRange(v97);
      +[CRLAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](CRLAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v18, v19, 1722, 0, "Asked to recursively subdivide using a range (%@) beyond the end of a path with element count %zd", v20, [pathCopy elementCount]);
    }
  }
}

- (id)chisel
{
  v3 = +[CRLBezierPath bezierPath];
  [(CRLBezierPath *)self lineWidth];
  v5 = v4 * 0.5;
  elementCount = [(CRLBezierPath *)self elementCount];
  if (!elementCount)
  {
    v9 = 1;
    v43 = -1;
    goto LABEL_60;
  }

  v7 = elementCount;
  v8 = 0;
  v9 = 1;
  v10 = 9.0;
  v11 = -9.0;
  do
  {
    v12 = v9;
    v13 = [(CRLBezierPath *)self elementAtIndex:v8 allPoints:&v89];
    v9 = v13 == 0;
    if (!v13)
    {
      goto LABEL_56;
    }

    v14 = v13;
    [(CRLBezierPath *)self rawGradientAt:v8 fromElement:0.0];
    if (v15 <= 0.0)
    {
      v16 = -v5;
    }

    else
    {
      v16 = v5;
    }

    if (v14 == 2)
    {
      v17 = v90 * v10 + v89.f64[0] * -3.0 + v92 * v11 + v94 * 3.0;
      v18 = v90 * -12.0 + v89.f64[0] * 6.0 + v92 * 6.0;
      v19 = v90 * 3.0 + v89.f64[0] * -3.0;
      v20 = v19 * (v17 * -4.0) + v18 * v18;
      if (v20 <= 0.0)
      {
        v31 = v16 + v89.f64[1];
        if (v12)
        {
          [v3 moveToPoint:{v89.f64[0], v31}];
        }

        else
        {
          [v3 lineToPoint:{v89.f64[0], v31}];
        }

        v33 = v94;
        v34 = v16 + v95;
        v35 = v90;
        v36 = v16 + v91;
        v37 = v92;
        v38 = v93;
        goto LABEL_55;
      }

      v21 = v20;
      v22 = sqrtf(v21);
      v23 = (-v18 - v22) / (v17 + v17);
      v24 = (v22 - v18) / (v17 + v17);
      if (v24 >= v23)
      {
        v25 = v24;
      }

      else
      {
        v25 = v23;
      }

      if (v24 < v23)
      {
        v23 = v24;
      }

      v26 = fabs(v17);
      if (v26 <= 0.001)
      {
        v27 = 10.0;
      }

      else
      {
        v27 = v25;
      }

      if (v26 <= 0.001)
      {
        v28 = -v19 / v18;
      }

      else
      {
        v28 = v23;
      }

      if (v28 > 0.0 && v28 < 1.0)
      {
        sub_100404958(&v89, &v81, 0.0, v28);
        v32 = v16 + v82;
        if (v12)
        {
          [v3 moveToPoint:{v81, v32}];
        }

        else
        {
          [v3 lineToPoint:{v81, v32}];
        }

        [v3 curveToPoint:v87 controlPoint1:v16 + v88 controlPoint2:{v83, v16 + v84, v85, v16 + v86}];
        [(CRLBezierPath *)self rawGradientAt:v8 fromElement:v28 + 0.01];
        v12 = 0;
        if (v39 <= 0.0)
        {
          v16 = -v5;
        }

        else
        {
          v16 = v5;
        }
      }

      else
      {
        v28 = 0.0;
      }

      if (v27 > 0.0 && v27 < 1.0)
      {
        sub_100404958(&v89, &v81, v28, v27);
        v41 = v16 + v82;
        if (v12)
        {
          [v3 moveToPoint:{v81, v41}];
        }

        else
        {
          [v3 lineToPoint:{v81, v41}];
        }

        v10 = 9.0;
        [v3 curveToPoint:v87 controlPoint1:v16 + v88 controlPoint2:{v83, v16 + v84, v85, v16 + v86}];
        [(CRLBezierPath *)self rawGradientAt:v8 fromElement:v27 + 0.01];
        if (v42 <= 0.0)
        {
          v16 = -v5;
        }

        else
        {
          v16 = v5;
        }

        sub_100404958(&v89, &v81, v27, 1.0);
      }

      else
      {
        sub_100404958(&v89, &v81, v28, 1.0);
        if (v12)
        {
          [v3 moveToPoint:{v81, v16 + v82}];
          v10 = 9.0;
          v11 = -9.0;
LABEL_54:
          v33 = v87;
          v34 = v16 + v88;
          v35 = v83;
          v36 = v16 + v84;
          v37 = v85;
          v38 = v86;
LABEL_55:
          [v3 curveToPoint:v33 controlPoint1:v34 controlPoint2:{v35, v36, v37, v16 + v38}];
          goto LABEL_56;
        }

        v10 = 9.0;
      }

      v11 = -9.0;
      [v3 lineToPoint:{v81, v16 + v82}];
      goto LABEL_54;
    }

    v30 = v16 + v89.f64[1];
    if (v12)
    {
      [v3 moveToPoint:{v89.f64[0], v30}];
    }

    else
    {
      [v3 lineToPoint:{v89.f64[0], v30}];
    }

    [v3 lineToPoint:{v90, v16 + v91}];
LABEL_56:
    ++v8;
  }

  while (v7 != v8);
  v43 = v7 - 1;
  if (v43)
  {
LABEL_60:
    if (CGPointZero.x >= 0.0)
    {
      v44 = -v5;
    }

    else
    {
      v44 = v5;
    }

    v45 = 9.0;
    v46 = -3.0;
    do
    {
      v47 = [(CRLBezierPath *)self elementAtIndex:v43 allPoints:&v89];
      v48 = v47 == 0;
      if (v47)
      {
        v49 = v47;
        [(CRLBezierPath *)self rawGradientAt:v43 fromElement:1.0];
        if (v50 >= 0.0)
        {
          v51 = -v5;
        }

        else
        {
          v51 = v5;
        }

        if (v49 == 2)
        {
          v52 = v90 * v45 + v89.f64[0] * v46 + v92 * -9.0 + v94 * 3.0;
          v53 = v90 * -12.0 + v89.f64[0] * 6.0 + v92 * 6.0;
          v54 = v90 * 3.0 + v89.f64[0] * v46;
          v55 = v54 * (v52 * -4.0) + v53 * v53;
          if (v55 <= 0.0)
          {
            v68 = v51 + v95;
            if (v9)
            {
              [v3 moveToPoint:{v94, v68}];
            }

            else
            {
              [v3 lineToPoint:{v94, v68}];
            }

            v70 = v89.f64[0];
            v71 = v51 + v89.f64[1];
            v72 = v92;
            v73 = v51 + v93;
            v74 = v90;
            v75 = v91;
          }

          else
          {
            v56 = v55;
            v57 = sqrtf(v56);
            v58 = (-v53 - v57) / (v52 + v52);
            v59 = (v57 - v53) / (v52 + v52);
            if (v59 <= v58)
            {
              v60 = v59;
            }

            else
            {
              v60 = v58;
            }

            if (v59 > v58)
            {
              v58 = v59;
            }

            v61 = fabs(v52);
            if (v61 <= 0.001)
            {
              v62 = 10.0;
            }

            else
            {
              v62 = v60;
            }

            if (v61 <= 0.001)
            {
              v63 = -v54 / v53;
            }

            else
            {
              v63 = v58;
            }

            if (v63 > 0.0 && v63 < 1.0)
            {
              sub_100404958(&v89, &v81, v63, 1.0);
              v69 = v51 + v88;
              if (v9)
              {
                [v3 moveToPoint:{v87, v69}];
              }

              else
              {
                [v3 lineToPoint:{v87, v69}];
              }

              [v3 curveToPoint:v81 controlPoint1:v51 + v82 controlPoint2:{v85, v51 + v86, v83, v51 + v84}];
              [(CRLBezierPath *)self rawGradientAt:v43 fromElement:v63 + -0.01];
              v9 = 0;
              if (v76 >= 0.0)
              {
                v51 = -v5;
              }

              else
              {
                v51 = v5;
              }
            }

            else
            {
              v63 = 1.0;
            }

            if (v62 > 0.0 && v62 < 1.0)
            {
              sub_100404958(&v89, &v81, v62, v63);
              v78 = v51 + v88;
              if (v9)
              {
                [v3 moveToPoint:{v87, v78}];
              }

              else
              {
                [v3 lineToPoint:{v87, v78}];
              }

              v46 = -3.0;
              [v3 curveToPoint:v81 controlPoint1:v51 + v82 controlPoint2:{v85, v51 + v86, v83, v51 + v84}];
              [(CRLBezierPath *)self rawGradientAt:v43 fromElement:v62 + -0.01];
              if (v79 >= 0.0)
              {
                v51 = -v5;
              }

              else
              {
                v51 = v5;
              }

              sub_100404958(&v89, &v81, 0.0, v62);
              v45 = 9.0;
            }

            else
            {
              sub_100404958(&v89, &v81, 0.0, v63);
              if (v9)
              {
                [v3 moveToPoint:{v87, v51 + v88}];
                v45 = 9.0;
                v46 = -3.0;
                goto LABEL_117;
              }

              v45 = 9.0;
              v46 = -3.0;
            }

            [v3 lineToPoint:{v87, v51 + v88}];
LABEL_117:
            v70 = v81;
            v71 = v51 + v82;
            v72 = v85;
            v73 = v51 + v86;
            v74 = v83;
            v75 = v84;
          }

          [v3 curveToPoint:v70 controlPoint1:v71 controlPoint2:{v72, v73, v74, v51 + v75}];
          goto LABEL_119;
        }

        v67 = v51 + v91;
        if (v9)
        {
          [v3 moveToPoint:{v90, v67}];
        }

        else
        {
          [v3 lineToPoint:{v90, v67}];
        }

        v65 = v89.f64[0];
        v66 = v51 + v89.f64[1];
      }

      else
      {
        v65 = v89.f64[0];
        v66 = v89.f64[1] - v44;
      }

      [v3 lineToPoint:{v65, v66}];
LABEL_119:
      v9 = v48;
      --v43;
    }

    while (v43);
  }

  return v3;
}

+ (CRLBezierPath)bezierPathWithRoundedRect:(CGRect)rect upperRightRadius:(double)radius lowerRightRadius:(double)rightRadius lowerLeftRadius:(double)leftRadius upperLeftRadius:(double)upperLeftRadius useLegacyCorners:(BOOL)corners keepNoOpElements:(BOOL)elements
{
  cornersCopy = corners;
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v19 = +[CRLBezierPath bezierPath];
  if (cornersCopy)
  {
    v30 = sub_100464944(radius, x, y, width, height, upperLeftRadius, rightRadius);
    v32 = sub_100464944(rightRadius, x, y, width, height, leftRadius, radius);
    v34 = sub_100464944(leftRadius, x, y, width, height, rightRadius, upperLeftRadius);
    v20 = sub_100464944(upperLeftRadius, x, y, width, height, radius, leftRadius);
    v37.origin.x = x;
    v37.origin.y = y;
    v37.size.width = width;
    v37.size.height = height;
    MinX = CGRectGetMinX(v37);
    v38.origin.x = x;
    v38.origin.y = y;
    v38.size.width = width;
    v38.size.height = height;
    [v19 moveToPoint:{v20 + MinX, CGRectGetMinY(v38)}];
    sub_1004650F0(v19, 0, elements, x, y, width, height, v30);
    sub_1004650F0(v19, 1, elements, x, y, width, height, v32);
    sub_1004650F0(v19, 2, elements, x, y, width, height, v34);
    sub_1004650F0(v19, 3, elements, x, y, width, height, v20);
  }

  else
  {
    v31 = sub_100464944(radius, x, y, width, height, upperLeftRadius * 1.528665, rightRadius * 1.528665);
    v22 = radius * 1.528665;
    v33 = sub_100464944(rightRadius, x, y, width, height, leftRadius * 1.528665, v22);
    v35 = sub_100464944(leftRadius, x, y, width, height, rightRadius * 1.528665, upperLeftRadius * 1.528665);
    v23 = sub_100464944(upperLeftRadius, x, y, width, height, v22, leftRadius * 1.528665);
    v39.origin.x = x;
    v39.origin.y = y;
    v39.size.width = width;
    v39.size.height = height;
    v24 = CGRectGetWidth(v39);
    v25 = v24 * 0.5;
    v26 = v24 - v31 * 1.528665;
    if (v25 >= v26)
    {
      v26 = v25;
    }

    if (v26 >= v23 * 1.528665)
    {
      v27 = v23 * 1.528665;
    }

    else
    {
      v27 = v26;
    }

    v40.origin.x = x;
    v40.origin.y = y;
    v40.size.width = width;
    v40.size.height = height;
    v28 = CGRectGetMinX(v40);
    v41.origin.x = x;
    v41.origin.y = y;
    v41.size.width = width;
    v41.size.height = height;
    [v19 moveToPoint:{v28 + v27, CGRectGetMinY(v41)}];
    sub_100464AAC(v19, 0, elements, x, y, width, height, v31, v23, v33);
    sub_100464AAC(v19, 1, elements, x, y, width, height, v33, v35, v31);
    sub_100464AAC(v19, 2, elements, x, y, width, height, v35, v33, v23);
    sub_100464AAC(v19, 3, elements, x, y, width, height, v23, v31, v35);
  }

  [v19 closePath];

  return v19;
}

+ (id)pathForObjectEraserWithPoint:(CGPoint)point
{
  sub_100D1C7BC(point.x, point.y);

  return v3;
}

@end