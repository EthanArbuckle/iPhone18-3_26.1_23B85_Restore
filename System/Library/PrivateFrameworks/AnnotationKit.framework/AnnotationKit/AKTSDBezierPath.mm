@interface AKTSDBezierPath
+ (id)bezierPath;
+ (id)bezierPathWithCGPath:(CGPath *)path;
+ (id)bezierPathWithOvalInRect:(CGRect)rect;
+ (id)bezierPathWithRect:(CGRect)rect;
+ (id)bezierPathWithStart:(CGPoint)start end:(CGPoint)end;
+ (void)clipRect:(CGRect)rect;
+ (void)fillRect:(CGRect)rect;
+ (void)initialize;
+ (void)strokeLineFromPoint:(CGPoint)point toPoint:(CGPoint)toPoint;
+ (void)strokeRect:(CGRect)rect;
- (AKTSDBezierPath)init;
- (AKTSDBezierPath)initWithCString:(const char *)string;
- (AKTSDBezierPath)initWithCoder:(id)coder;
- (BOOL)containsPoint:(CGPoint)point;
- (BOOL)isClockwise;
- (BOOL)isFlat;
- (CGPoint)currentPoint;
- (CGPoint)gradientAt:(double)at fromElement:(int64_t)element;
- (CGPoint)gradientAt:(float)at;
- (CGPoint)myGradientAt:(float)at;
- (CGPoint)myGradientAt:(float)at fromElement:(int64_t)element;
- (CGPoint)nearestAngleOnPathToLine:(CGPoint)line[2];
- (CGPoint)nearestPointOnPathToLine:(CGPoint)line[2];
- (CGPoint)pointAt:(double)at fromElement:(int64_t)element;
- (CGPoint)rawGradientAt:(float)at fromElement:(int64_t)element;
- (CGPoint)transformedCoordinate:(CGPoint)coordinate withPressure:(id)pressure;
- (CGPoint)transformedTotalCoordinate:(CGPoint)coordinate betweenElement:(int64_t)element andElement:(int64_t)andElement withPressure:(id)pressure getElement:(int64_t *)getElement getPercentage:(float *)percentage;
- (CGPoint)transformedTotalCoordinate:(CGPoint)coordinate inElement:(int64_t)element withPressure:(id)pressure;
- (CGRect)bounds;
- (CGRect)controlPointBounds;
- (const)cString;
- (double)calculateLengthOfElement:(int64_t)element;
- (double)curvatureAt:(double)at fromElement:(int)element;
- (double)length;
- (double)lengthOfElement:(int64_t)element;
- (double)lengthToElement:(int64_t)element;
- (float)curvatureAt:(float)at;
- (float)elementPercentageFromElement:(int)element forOverallPercentage:(float)percentage;
- (id)_copyFlattenedPath;
- (id)bezierPathByFlatteningPath;
- (id)bezierPathByReversingPath;
- (id)chisel;
- (id)copyFromSegment:(int)segment t:(float)t toSegment:(int)toSegment t:(float)a6;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (int64_t)elementPercentage:(float *)percentage forOverallPercentage:(float)overallPercentage;
- (unint64_t)elementAtIndex:(int64_t)index allPoints:(CGPoint *)points;
- (unint64_t)elementAtIndex:(int64_t)index associatedPoints:(CGPoint *)points;
- (void)_addPathSegment:(int64_t)segment point:(CGPoint)point;
- (void)_appendArcSegmentWithCenter:(CGPoint)center radius:(double)radius angle1:(double)angle1 angle2:(double)angle2;
- (void)_appendToPath:(id)path;
- (void)_deviceClosePath;
- (void)_deviceCurveToPoint:(CGPoint)point controlPoint1:(CGPoint)point1 controlPoint2:(CGPoint)point2;
- (void)_deviceMoveToPoint:(CGPoint)point;
- (void)_doPath;
- (void)addClip;
- (void)addIntersectionsWithLine:(CGPoint)line[2] to:(id)to;
- (void)addIntersectionsWithPath:(id)path to:(id)to allIntersections:(BOOL)intersections reversed:(BOOL)reversed;
- (void)appendBezierPath:(id)path;
- (void)appendBezierPath:(id)path fromSegment:(int64_t)segment t:(double)t toSegment:(int64_t)toSegment t:(double)a7 withoutMove:(BOOL)move;
- (void)appendBezierPath:(id)path fromSegment:(int64_t)segment toSegment:(int64_t)toSegment;
- (void)appendBezierPathWithArcFromPoint:(CGPoint)point toPoint:(CGPoint)toPoint radius:(double)radius;
- (void)appendBezierPathWithArcWithCenter:(CGPoint)center radius:(double)radius startAngle:(double)angle endAngle:(double)endAngle clockwise:(BOOL)clockwise;
- (void)appendBezierPathWithOvalInRect:(CGRect)rect;
- (void)appendBezierPathWithPoints:(CGPoint *)points count:(int64_t)count;
- (void)appendBezierPathWithRect:(CGRect)rect;
- (void)calculateLengths;
- (void)curveToPoint:(CGPoint)point controlPoint1:(CGPoint)point1 controlPoint2:(CGPoint)point2;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)fill;
- (void)flattenIntoPath:(id)path;
- (void)getLineDash:(double *)dash count:(int64_t *)count phase:(double *)phase;
- (void)getStartPoint:(CGPoint *)point andEndPoint:(CGPoint *)endPoint;
- (void)lineToPoint:(CGPoint)point;
- (void)recursiveSubdivideOntoPath:(id)path into:(id)into;
- (void)recursiveSubdivideOntoPath:(id)path withScaling:(id)scaling inElementRange:(_NSRange)range into:(id)into;
- (void)recursiveSubdivideOntoPath:(id)path withScaling:(id)scaling into:(id)into;
- (void)relativeCurveToPoint:(CGPoint)point controlPoint1:(CGPoint)point1 controlPoint2:(CGPoint)point2;
- (void)relativeLineToPoint:(CGPoint)point;
- (void)relativeMoveToPoint:(CGPoint)point;
- (void)removeAllPoints;
- (void)setAssociatedPoints:(CGPoint *)points atIndex:(int64_t)index;
- (void)setLineDash:(const double *)dash count:(int64_t)count phase:(double)phase;
- (void)stroke;
- (void)subdivideBezierWithFlatness:(double)flatness startPoint:(CGPoint)point controlPoint1:(CGPoint)point1 controlPoint2:(CGPoint)point2 endPoint:(CGPoint)endPoint;
- (void)transformUsingAffineTransform:(CGAffineTransform *)transform;
@end

@implementation AKTSDBezierPath

+ (void)initialize
{
  if (objc_opt_class() == self)
  {

    MEMORY[0x2821F9670](AKTSDBezierPath, sel_setVersion_);
  }
}

+ (id)bezierPath
{
  v2 = objc_alloc_init(self);

  return v2;
}

+ (id)bezierPathWithStart:(CGPoint)start end:(CGPoint)end
{
  y = end.y;
  x = end.x;
  v6 = start.y;
  v7 = start.x;
  bezierPath = [self bezierPath];
  [bezierPath moveToPoint:{v7, v6}];
  [bezierPath lineToPoint:{x, y}];

  return bezierPath;
}

+ (id)bezierPathWithRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  bezierPath = [self bezierPath];
  [bezierPath appendBezierPathWithRect:{x, y, width, height}];

  return bezierPath;
}

+ (id)bezierPathWithOvalInRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  bezierPath = [self bezierPath];
  [bezierPath appendBezierPathWithOvalInRect:{x, y, width, height}];

  return bezierPath;
}

+ (id)bezierPathWithCGPath:(CGPath *)path
{
  bezierPath = [self bezierPath];
  CGPathApply(path, bezierPath, sub_23F425B4C);

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
      CGContextSetLineCap(CurrentContext, qword_27E39B598);
      CGContextSetLineJoin(CurrentContext, qword_27E39B5A0);
      sub_23F4258A8(CurrentContext, *&qword_27E3998D8);
      CGContextSetMiterLimit(CurrentContext, *&qword_27E3998E0);
      CGContextBeginPath(CurrentContext);
      v17.origin.x = x;
      v17.origin.y = y;
      v17.size.width = width;
      v17.size.height = height;
      MinX = CGRectGetMinX(v17);
      v18.origin.x = x;
      v18.origin.y = y;
      v18.size.width = width;
      v18.size.height = height;
      MinY = CGRectGetMinY(v18);
      CGContextMoveToPoint(CurrentContext, MinX, MinY);
      v19.origin.x = x;
      v19.origin.y = y;
      v19.size.width = width;
      v19.size.height = height;
      MaxX = CGRectGetMaxX(v19);
      v20.origin.x = x;
      v20.origin.y = y;
      v20.size.width = width;
      v20.size.height = height;
      v11 = CGRectGetMinY(v20);
      CGContextAddLineToPoint(CurrentContext, MaxX, v11);
      v21.origin.x = x;
      v21.origin.y = y;
      v21.size.width = width;
      v21.size.height = height;
      v12 = CGRectGetMaxX(v21);
      v22.origin.x = x;
      v22.origin.y = y;
      v22.size.width = width;
      v22.size.height = height;
      MaxY = CGRectGetMaxY(v22);
      CGContextAddLineToPoint(CurrentContext, v12, MaxY);
      v23.origin.x = x;
      v23.origin.y = y;
      v23.size.width = width;
      v23.size.height = height;
      v14 = CGRectGetMinX(v23);
      v24.origin.x = x;
      v24.origin.y = y;
      v24.size.width = width;
      v24.size.height = height;
      v15 = CGRectGetMaxY(v24);
      CGContextAddLineToPoint(CurrentContext, v14, v15);
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
  CGContextSetLineCap(CurrentContext, qword_27E39B598);
  CGContextSetLineJoin(CurrentContext, qword_27E39B5A0);
  sub_23F4258A8(CurrentContext, *&qword_27E3998D8);
  CGContextBeginPath(CurrentContext);
  CGContextMoveToPoint(CurrentContext, v7, v6);
  CGContextAddLineToPoint(CurrentContext, x, y);
  CGContextStrokePath(CurrentContext);

  CGContextRestoreGState(CurrentContext);
}

- (AKTSDBezierPath)init
{
  v9.receiver = self;
  v9.super_class = AKTSDBezierPath;
  v2 = [(AKTSDBezierPath *)&v9 init];
  v3 = v2;
  if (v2)
  {
    v4 = *(v2 + 42);
    *(v2 + 8) = 0u;
    *(v2 + 24) = 0u;
    *(v2 + 19) = 0;
    *(v2 + 20) = 0;
    *(v2 + 5) = 0;
    *(v2 + 6) = -1;
    *(v2 + 7) = 0;
    v5 = ((8 * qword_27E39B5A8) | (qword_27E39B598 << 6)) | 5 | v4 & 0xFFFFF800 | (16 * (qword_27E39B5A0 & 0xF));
    *(v2 + 8) = qword_27E3998D8;
    v6 = qword_27E3998E8;
    *(v2 + 13) = qword_27E3998E0;
    *(v2 + 14) = v6;
    *(v2 + 15) = 0;
    *(v2 + 16) = 0;
    *(v2 + 17) = 0;
    *(v2 + 42) = v5;
    v7 = v2;
  }

  return v3;
}

- (void)dealloc
{
  free(self->sfr_head);
  free(self->sfr_elementLength);
  sfr_dashedLinePattern = self->sfr_dashedLinePattern;
  if (sfr_dashedLinePattern)
  {
    free(sfr_dashedLinePattern);
  }

  sfr_path = self->sfr_path;
  if (sfr_path)
  {
    CFRelease(sfr_path);
  }

  sfr_extraSegments = self->sfr_extraSegments;
  if (sfr_extraSegments)
  {
    free(sfr_extraSegments);
  }

  v6.receiver = self;
  v6.super_class = AKTSDBezierPath;
  [(AKTSDBezierPath *)&v6 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  [v4 appendBezierPath:self];
  [v4 setWindingRule:{-[AKTSDBezierPath windingRule](self, "windingRule")}];
  [v4 setLineCapStyle:{-[AKTSDBezierPath lineCapStyle](self, "lineCapStyle")}];
  [v4 setLineJoinStyle:{-[AKTSDBezierPath lineJoinStyle](self, "lineJoinStyle")}];
  [(AKTSDBezierPath *)self lineWidth];
  [v4 setLineWidth:?];
  [(AKTSDBezierPath *)self miterLimit];
  [v4 setMiterLimit:?];
  [(AKTSDBezierPath *)self flatness];
  [v4 setFlatness:?];
  sfr_dashedLinePattern = self->sfr_dashedLinePattern;
  if (sfr_dashedLinePattern)
  {
    [v4 setLineDash:sfr_dashedLinePattern count:self->sfr_dashedLineCount phase:self->sfr_dashedLinePhase];
  }

  return v4;
}

- (void)lineToPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  if ([(AKTSDBezierPath *)self isEmpty])
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE648] format:@"No current point for line"];
  }

  [(AKTSDBezierPath *)self _deviceLineToPoint:x, y];
}

- (void)curveToPoint:(CGPoint)point controlPoint1:(CGPoint)point1 controlPoint2:(CGPoint)point2
{
  if ([(AKTSDBezierPath *)self isEmpty])
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE648] format:@"No current point for curve"];
  }

  MEMORY[0x2821F9670](self, sel__deviceCurveToPoint_controlPoint1_controlPoint2_);
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

  self->sfr_bpFlags = (*&sfr_bpFlags | 1);
}

- (void)relativeMoveToPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  [(AKTSDBezierPath *)self currentPoint];
  v7 = x + v6;
  v9 = y + v8;

  [(AKTSDBezierPath *)self _deviceMoveToPoint:v7, v9];
}

- (void)relativeLineToPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  [(AKTSDBezierPath *)self currentPoint];
  v7 = x + v6;
  v9 = y + v8;

  [(AKTSDBezierPath *)self _deviceLineToPoint:v7, v9];
}

- (void)relativeCurveToPoint:(CGPoint)point controlPoint1:(CGPoint)point1 controlPoint2:(CGPoint)point2
{
  [(AKTSDBezierPath *)self currentPoint];

  MEMORY[0x2821F9670](self, sel__deviceCurveToPoint_controlPoint1_controlPoint2_);
}

- (void)setLineDash:(const double *)dash count:(int64_t)count phase:(double)phase
{
  if (!dash)
  {
    goto LABEL_14;
  }

  countCopy = count;
  v7 = count < 0;
  if (count >= 0)
  {
    countCopy2 = count;
  }

  else
  {
    countCopy2 = -count;
  }

  if (count >= 0)
  {
    v9 = 8 * countCopy2;
  }

  else
  {
    v9 = -8 * countCopy2;
  }

  if (!(8 * countCopy2))
  {
    v7 = 0;
  }

  if (countCopy2 >> 61 || v7)
  {
LABEL_14:
    p_sfr_dashedLinePattern = &self->sfr_dashedLinePattern;
    sfr_dashedLinePattern = self->sfr_dashedLinePattern;
    if (sfr_dashedLinePattern)
    {
      free(sfr_dashedLinePattern);
      *p_sfr_dashedLinePattern = 0;
      p_sfr_dashedLinePattern[1] = 0;
      p_sfr_dashedLinePattern[2] = 0;
    }
  }

  else
  {
    dashCopy = dash;
    v12 = self->sfr_dashedLinePattern;
    if (v12)
    {
      v13 = malloc_type_realloc(v12, v9, 0x5EFC6593uLL);
    }

    else
    {
      v13 = malloc_type_malloc(v9, 0xDB3E5442uLL);
    }

    self->sfr_dashedLinePattern = v13;
    self->sfr_dashedLineCount = countCopy;
    self->sfr_dashedLinePhase = phase;
    if (countCopy >= 1)
    {
      do
      {
        v16 = *dashCopy++;
        *v13++ = v16;
        --countCopy;
      }

      while (countCopy);
    }
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

- (void)_doPath
{
  if (!self->sfr_path && ![(AKTSDBezierPath *)self isEmpty])
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
        v8 = *sfr_head & 0xF;
        if (v8 > 1)
        {
          if (v8 == 2)
          {
            CGPathAddCurveToPoint(Mutable, 0, *sfr_extraSegments, sfr_extraSegments[1], sfr_extraSegments[2], sfr_extraSegments[3], *&sfr_head[2], *&sfr_head[4]);
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
            CGPathAddLineToPoint(Mutable, 0, *&sfr_head[2], *&sfr_head[4]);
          }
        }

        else
        {
          CGPathMoveToPoint(Mutable, 0, *&sfr_head[2], *&sfr_head[4]);
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
  CGContextSetLineCap(CurrentContext, [(AKTSDBezierPath *)self lineCapStyle]);
  CGContextSetLineJoin(CurrentContext, [(AKTSDBezierPath *)self lineJoinStyle]);
  sub_23F4258A8(CurrentContext, self->sfr_lineWidth);
  CGContextSetMiterLimit(CurrentContext, self->sfr_miterLimit);
  CGContextSetFlatness(CurrentContext, self->sfr_flatness);
  sfr_dashedLinePattern = self->sfr_dashedLinePattern;
  if (sfr_dashedLinePattern)
  {
    CGContextSetLineDash(CurrentContext, self->sfr_dashedLinePhase, sfr_dashedLinePattern, self->sfr_dashedLineCount);
  }

  sub_23F42685C(self, CurrentContext);
  CGContextStrokePath(CurrentContext);

  CGContextRestoreGState(CurrentContext);
}

- (void)fill
{
  CurrentContext = UIGraphicsGetCurrentContext();
  CGContextSaveGState(CurrentContext);
  CGContextSetFlatness(CurrentContext, self->sfr_flatness);
  sub_23F42685C(self, CurrentContext);
  if ([(AKTSDBezierPath *)self windingRule])
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
  sub_23F42685C(self, CurrentContext);
  if ([(AKTSDBezierPath *)self windingRule])
  {
    CGContextEOClip(CurrentContext);
  }

  else
  {
    CGContextClip(CurrentContext);
  }

  CGContextBeginPath(CurrentContext);
}

- (void)subdivideBezierWithFlatness:(double)flatness startPoint:(CGPoint)point controlPoint1:(CGPoint)point1 controlPoint2:(CGPoint)point2 endPoint:(CGPoint)endPoint
{
  pointCopy = point;
  point.x = endPoint.x;
  *&v7 = endPoint.y;
  y = point1.y;
  v11 = vsubq_f64(point1, pointCopy);
  v12 = point2.y;
  pointCopy2 = point;
  v39 = v7;
  v13 = endPoint.y;
  v14 = vsubq_f64(point2, point1);
  v15 = vsubq_f64(v14, v11);
  v16 = vsubq_f64(vsubq_f64(point, point2), v14);
  v17 = vzip2q_s64(v15, v16);
  v18 = vzip1q_s64(v15, v16);
  v19 = vmlaq_f64(vmulq_f64(v17, v17), v18, v18);
  if (v19.f64[0] <= v19.f64[1])
  {
    v19.f64[0] = v19.f64[1];
  }

  v20 = flatness * flatness;
  v21 = v19.f64[0] * 9.0 * 0.0625;
  if (v21 > v20)
  {
    v22 = vsubq_f64(v16, v15);
    __asm
    {
      FMOV            V5.2D, #3.0
      FMOV            V6.2D, #6.0
    }

    v29 = vmulq_f64(v22, _Q6);
    v30 = vmlaq_f64(v22, _Q5, vaddq_f64(v11, v15));
    v31 = vmulq_f64(vaddq_f64(v15, v22), _Q6);
    v32 = 1;
    __asm
    {
      FMOV            V2.2D, #0.125
      FMOV            V3.2D, #0.25
      FMOV            V4.2D, #0.5
    }

    do
    {
      v36 = v32;
      v29 = vmulq_f64(v29, _Q2);
      v31 = vsubq_f64(vmulq_f64(v31, _Q3), v29);
      v30 = vsubq_f64(vmulq_f64(v30, _Q4), vmulq_f64(v31, _Q4));
      v32 *= 2;
      v21 = v21 * 0.0625;
    }

    while (v21 > v20 && v32 <= 0x10000);
    if (v32 >= 2)
    {
      v37 = (2 * v36) | 1;
      do
      {
        v42 = v29;
        v43 = vaddq_f64(pointCopy, v30);
        v40 = vaddq_f64(v29, v31);
        v41 = vaddq_f64(v30, v31);
        [(AKTSDBezierPath *)self lineToPoint:*&v43, pointCopy2, v39];
        v31 = v40;
        v30 = v41;
        v29 = v42;
        pointCopy = v43;
        --v37;
      }

      while (v37 > 2);
    }
  }

  [(AKTSDBezierPath *)self lineToPoint:pointCopy2.x, *&v39];
}

- (void)flattenIntoPath:(id)path
{
  pathCopy = path;
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
          [pathCopy subdivideBezierWithFlatness:*&qword_27E3998E8 startPoint:*&sfr_head[-4] controlPoint1:*&sfr_head[-2] controlPoint2:*sfr_extraSegments endPoint:{sfr_extraSegments[1], sfr_extraSegments[2], sfr_extraSegments[3], *&sfr_head[2], *&sfr_head[4]}];
          sfr_extraSegments += 4;
        }

        else if (v8 == 3)
        {
          [pathCopy closePath];
        }
      }

      else if (v8)
      {
        if (v8 == 1)
        {
          [pathCopy lineToPoint:{*&sfr_head[2], *&sfr_head[4]}];
        }
      }

      else
      {
        [pathCopy moveToPoint:{*&sfr_head[2], *&sfr_head[4]}];
      }

      sfr_head += 6;
    }

    while (sfr_head < v6);
  }
}

- (id)bezierPathByFlatteningPath
{
  if ((*&self->sfr_bpFlags & 4) != 0)
  {
    v3 = [(AKTSDBezierPath *)self copy];
  }

  else
  {
    v3 = objc_alloc_init(objc_opt_class());
    [(AKTSDBezierPath *)self flattenIntoPath:v3];
  }

  return v3;
}

- (id)_copyFlattenedPath
{
  v3 = objc_alloc_init(objc_opt_class());
  [(AKTSDBezierPath *)self flattenIntoPath:v3];
  return v3;
}

- (id)bezierPathByReversingPath
{
  if (self->sfr_elementCount <= 1)
  {
    v3 = [(AKTSDBezierPath *)self copy];
    goto LABEL_31;
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
      v9 = v8;
      v10 = *&sfr_head[6] & 0xFLL;
      if (!v10 || &sfr_head[12] >= v6)
      {
        break;
      }

LABEL_30:
      v8 = v9 + 6;
      sfr_head = v9;
      if (&v9[6] >= v6)
      {
        goto LABEL_31;
      }
    }

    if (v10)
    {
      v12 = v9;
    }

    else
    {
      v12 = sfr_head;
    }

    [v3 moveToPoint:{*&v12[2], *&v12[4]}];
    v13 = 0;
    for (i = &v12[-2]; ; i -= 3)
    {
      v15 = i[1] & 0xFLL;
      if ((i[1] & 0xFu) <= 1)
      {
        if (v15 == 1)
        {
          if ((v13 & 1) == 0 || (*(i - 2) & 0xF) != 0)
          {
            [v3 lineToPoint:{*(i - 1), *i}];
            continue;
          }

LABEL_24:
          [v3 closePath];
LABEL_25:
          v13 = 1;
          continue;
        }

        if (!v15)
        {
          goto LABEL_30;
        }
      }

      else
      {
        if (v15 != 2)
        {
          if (v15 != 3)
          {
            continue;
          }

          [v3 lineToPoint:{*(i - 1), *i}];
          goto LABEL_25;
        }

        v16 = &sfr_extraSegments[32 * (*(i + 1) >> 4)];
        [v3 curveToPoint:*(i - 1) controlPoint1:*i controlPoint2:{v16[2], v16[3], *v16, v16[1]}];
        if (v13)
        {
          if ((*(i - 2) & 0xF) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_25;
        }

        v13 = 0;
      }
    }
  }

LABEL_31:

  return v3;
}

- (void)transformUsingAffineTransform:(CGAffineTransform *)transform
{
  sfr_elementCount = self->sfr_elementCount;
  if (sfr_elementCount >= 1)
  {
    sfr_head = self->sfr_head;
    v6 = &sfr_head[6 * sfr_elementCount];
    do
    {
      *&sfr_head[2] = vaddq_f64(*&transform->tx, vmlaq_n_f64(vmulq_n_f64(*&transform->c, *&sfr_head[4]), *&transform->a, *&sfr_head[2]));
      sfr_head += 6;
    }

    while (sfr_head < v6);
  }

  sfr_extraSegments = self->sfr_extraSegments;
  if (sfr_extraSegments)
  {
    sfr_extraSegmentCount = self->sfr_extraSegmentCount;
    if (sfr_extraSegmentCount >= 1)
    {
      v9 = &sfr_extraSegments[4 * sfr_extraSegmentCount];
      do
      {
        *sfr_extraSegments = vaddq_f64(*&transform->tx, vmlaq_n_f64(vmulq_n_f64(*&transform->c, sfr_extraSegments[1]), *&transform->a, *sfr_extraSegments));
        *(sfr_extraSegments + 1) = vaddq_f64(*&transform->tx, vmlaq_n_f64(vmulq_n_f64(*&transform->c, sfr_extraSegments[3]), *&transform->a, sfr_extraSegments[2]));
        sfr_extraSegments += 4;
      }

      while (sfr_extraSegments < v9);
    }
  }

  sfr_path = self->sfr_path;
  if (sfr_path)
  {
    CFRelease(sfr_path);
    self->sfr_path = 0;
  }

  *&self->sfr_bpFlags |= 1u;
}

- (CGPoint)currentPoint
{
  if ([(AKTSDBezierPath *)self isEmpty])
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE648] format:@"No current point for line"];
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
  if ([(AKTSDBezierPath *)self isEmpty])
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE648] format:@"No current point for control point bounds"];
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
        if ((*v11 & 0xF) != 3 && ((*v11 & 0xF) != 0 || &v11[6] < v10))
        {
          v13 = *&v11[2];
          v4 = vbslq_s8(vcgtq_f64(v13, v4), v4, v13);
          v9 = vbslq_s8(vcgtq_f64(v13, v9), v13, v9);
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
        v16 = &sfr_extraSegments[2 * sfr_extraSegmentCount];
        do
        {
          v17 = *sfr_extraSegments;
          v18 = sfr_extraSegments[1];
          sfr_extraSegments += 2;
          v19 = vbslq_s8(vcgtq_f64(v17, v4), v4, v17);
          v20 = vbslq_s8(vcgtq_f64(v17, v9), v17, v9);
          v4 = vbslq_s8(vcgtq_f64(v18, v19), v19, v18);
          v9 = vbslq_s8(vcgtq_f64(v18, v20), v18, v20);
        }

        while (sfr_extraSegments < v16);
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

  v21 = size.f64[1];
  result.size.width = size.f64[0];
  result.origin.x = v4.x;
  result.size.height = v21;
  result.origin.y = y;
  return result;
}

- (CGRect)bounds
{
  if ((*&self->sfr_bpFlags & 4) != 0)
  {
    [(AKTSDBezierPath *)self controlPointBounds];
  }

  else
  {
    [(AKTSDBezierPath *)self _doPath];
    sfr_path = self->sfr_path;
    if (sfr_path)
    {
      return CGPathGetPathBoundingBox(sfr_path);
    }

    else
    {
      return **&MEMORY[0x277CBF3A0];
    }
  }

  return result;
}

- (BOOL)isFlat
{
  elementCount = [(AKTSDBezierPath *)self elementCount];
  if (!elementCount)
  {
    return 1;
  }

  v4 = elementCount;
  if ([(AKTSDBezierPath *)self elementAtIndex:0]== 2)
  {
    return 0;
  }

  v6 = 1;
  do
  {
    v7 = v6;
    if (v4 == v6)
    {
      break;
    }

    v8 = [(AKTSDBezierPath *)self elementAtIndex:v6];
    v6 = v7 + 1;
  }

  while (v8 != 2);
  return v7 >= v4;
}

- (BOOL)isClockwise
{
  v17 = *MEMORY[0x277D85DE8];
  elementCount = [(AKTSDBezierPath *)self elementCount];
  if (elementCount < 1)
  {
    v9 = 0.0;
  }

  else
  {
    v4 = elementCount;
    v5 = 0;
    v6 = 0;
    v7 = *MEMORY[0x277CBF348];
    v8 = *(MEMORY[0x277CBF348] + 8);
    v9 = 0.0;
    v10 = v8;
    v11 = *MEMORY[0x277CBF348];
    do
    {
      v12 = [(AKTSDBezierPath *)self elementAtIndex:v5 associatedPoints:&v15];
      if (v12 > 1)
      {
        if (v12 == 2)
        {
          NSLog(&cfstr_WarningPathSho.isa);
        }

        else if (v12 == 3)
        {
          if (v7 == v11 && v8 == v10)
          {
            v6 = 0;
          }

          else
          {
            v6 = 0;
            v9 = v7 * v10 - v8 * v11 + v9;
          }
        }
      }

      else if (v12)
      {
        if (v12 == 1)
        {
          if (v7 != v15 || v8 != v16)
          {
            v9 = v7 * v16 - v8 * v15 + v9;
          }

          v6 = 1;
          v7 = v15;
          v8 = v16;
        }
      }

      else
      {
        v11 = v15;
        v10 = v16;
        v7 = v15;
        v8 = v16;
      }

      ++v5;
    }

    while (v4 != v5);
    if (v6)
    {
      v9 = v7 * v10 - v8 * v11 + v9;
    }
  }

  return v9 >= 0.0;
}

- (double)calculateLengthOfElement:(int64_t)element
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = 0.0;
  if (element)
  {
    v4 = [(AKTSDBezierPath *)self elementAtIndex:element allPoints:&v9];
    switch(v4)
    {
      case 3uLL:
        goto LABEL_5;
      case 2uLL:
        v8 = 0.0;
        sub_23F4299A8(&v9, &v8);
        return v8;
      case 1uLL:
LABEL_5:
        v5 = (v10 - v12) * (v10 - v12) + (v9 - v11) * (v9 - v11);
        return sqrtf(v5);
    }
  }

  return v3;
}

- (void)calculateLengths
{
  self->sfr_totalLength = 0.0;
  elementCount = [(AKTSDBezierPath *)self elementCount];
  sfr_elementMax = self->sfr_elementMax;
  v5 = sfr_elementMax < 0;
  if (sfr_elementMax >= 0)
  {
    v6 = self->sfr_elementMax;
  }

  else
  {
    v6 = -sfr_elementMax;
  }

  if (!(8 * v6))
  {
    v5 = 0;
  }

  if (!(v6 >> 61) && !v5)
  {
    v7 = elementCount;
    if (sfr_elementMax >= 0)
    {
      v8 = 8 * v6;
    }

    else
    {
      v8 = -8 * v6;
    }

    self->sfr_elementLength = malloc_type_realloc(self->sfr_elementLength, v8, 0x17171B2CuLL);
    if (v7 >= 1)
    {
      for (i = 0; i != v7; ++i)
      {
        [(AKTSDBezierPath *)self calculateLengthOfElement:i];
        self->sfr_elementLength[i] = v10;
        self->sfr_totalLength = v10 + self->sfr_totalLength;
      }
    }
  }

  *&self->sfr_bpFlags |= 0x400u;
}

- (double)length
{
  if ((*(&self->sfr_bpFlags + 1) & 4) == 0)
  {
    [(AKTSDBezierPath *)self calculateLengths];
  }

  return self->sfr_totalLength;
}

- (double)lengthOfElement:(int64_t)element
{
  if ((*(&self->sfr_bpFlags + 1) & 4) == 0)
  {
    [(AKTSDBezierPath *)self calculateLengths];
  }

  return self->sfr_elementLength[element];
}

- (double)lengthToElement:(int64_t)element
{
  if ((*(&self->sfr_bpFlags + 1) & 4) == 0)
  {
    [(AKTSDBezierPath *)self calculateLengths];
  }

  if (element < 1)
  {
    return 0.0;
  }

  sfr_elementLength = self->sfr_elementLength;
  result = 0.0;
  do
  {
    v7 = *sfr_elementLength++;
    result = result + v7;
    --element;
  }

  while (element);
  return result;
}

- (unint64_t)elementAtIndex:(int64_t)index associatedPoints:(CGPoint *)points
{
  if (index < 0 || self->sfr_elementCount <= index)
  {
    v7 = MEMORY[0x277CBEAD8];
    v8 = *MEMORY[0x277CBE730];
    v9 = NSStringFromSelector(a2);
    [v7 raise:v8 format:{@"%@: index (%ld) beyond bounds (%ld)", v9, index, self->sfr_elementCount}];
  }

  v10 = &self->sfr_head[6 * index];
  if (points)
  {
    if ((*v10 & 0xFLL) == 2)
    {
      v11 = (self->sfr_extraSegments + 32 * (*v10 >> 4));
      *points = *v11;
      points[1] = v11[1];
      points += 2;
    }

    *points = *&v10[2];
  }

  return *v10 & 0xFLL;
}

- (unint64_t)elementAtIndex:(int64_t)index allPoints:(CGPoint *)points
{
  if (index < 0 || self->sfr_elementCount <= index)
  {
    v7 = MEMORY[0x277CBEAD8];
    v8 = *MEMORY[0x277CBE730];
    v9 = NSStringFromSelector(a2);
    [v7 raise:v8 format:{@"%@: index (%ld) beyond bounds (%ld)", v9, index, self->sfr_elementCount}];
  }

  v10 = &self->sfr_head[6 * index];
  if (points)
  {
    v11 = *v10;
    if ((*v10 & 0xFLL) != 0)
    {
      *points = *&v10[-4];
      v11 = *v10;
    }

    if ((v11 & 0xF) != 0)
    {
      if ((v11 & 0xF) == 2)
      {
        v12 = (self->sfr_extraSegments + 32 * (v11 >> 4));
        points[1] = *v12;
        points[2] = v12[1];
        points += 3;
      }

      else
      {
        ++points;
      }
    }

    *points = *&v10[2];
  }

  return *v10 & 0xFLL;
}

- (void)setAssociatedPoints:(CGPoint *)points atIndex:(int64_t)index
{
  if (index < 0 || self->sfr_elementCount <= index)
  {
    v7 = MEMORY[0x277CBEAD8];
    v8 = *MEMORY[0x277CBE730];
    v9 = NSStringFromSelector(a2);
    [v7 raise:v8 format:{@"%@: index (%ld) beyond bounds (%ld)", v9, index, self->sfr_elementCount}];
  }

  v10 = &self->sfr_head[6 * index];
  if ((*v10 & 0xFLL) == 2)
  {
    v11 = (self->sfr_extraSegments + 32 * (*v10 >> 4));
    *v11 = *points;
    v12 = points[1];
    points += 2;
    v11[1] = v12;
  }

  *&v10[2] = *points;
  sfr_path = self->sfr_path;
  if (sfr_path)
  {
    CFRelease(sfr_path);
    self->sfr_path = 0;
  }

  *&self->sfr_bpFlags |= 1u;
}

- (void)_appendToPath:(id)path
{
  pathCopy = path;
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
          [pathCopy curveToPoint:*&sfr_head[2] controlPoint1:*&sfr_head[4] controlPoint2:{*sfr_extraSegments, sfr_extraSegments[1], sfr_extraSegments[2], sfr_extraSegments[3]}];
          sfr_extraSegments += 4;
        }

        else if (v8 == 3)
        {
          [pathCopy closePath];
        }
      }

      else if (v8)
      {
        if (v8 == 1)
        {
          [pathCopy lineToPoint:{*&sfr_head[2], *&sfr_head[4]}];
        }
      }

      else
      {
        [pathCopy moveToPoint:{*&sfr_head[2], *&sfr_head[4]}];
      }

      sfr_head += 6;
    }

    while (sfr_head < v6);
  }
}

- (void)appendBezierPath:(id)path
{
  v16 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  v5 = objc_opt_class();
  if (v5 == objc_opt_class())
  {
    [pathCopy _appendToPath:self];
  }

  else
  {
    elementCount = [pathCopy elementCount];
    if (elementCount >= 1)
    {
      v7 = elementCount;
      for (i = 0; i != v7; ++i)
      {
        v9 = [pathCopy elementAtIndex:i associatedPoints:&v10];
        if (v9 > 1)
        {
          if (v9 == 2)
          {
            [(AKTSDBezierPath *)self curveToPoint:v14 controlPoint1:v15 controlPoint2:v10, v11, v12, v13];
          }

          else if (v9 == 3)
          {
            [(AKTSDBezierPath *)self closePath];
          }
        }

        else if (v9)
        {
          if (v9 == 1)
          {
            [(AKTSDBezierPath *)self lineToPoint:v10, v11];
          }
        }

        else
        {
          [(AKTSDBezierPath *)self moveToPoint:v10, v11];
        }
      }
    }
  }
}

- (void)appendBezierPathWithRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  [(AKTSDBezierPath *)self moveToPoint:?];
  v12.origin.x = x;
  v12.origin.y = y;
  v12.size.width = width;
  v12.size.height = height;
  MaxX = CGRectGetMaxX(v12);
  v13.origin.x = x;
  v13.origin.y = y;
  v13.size.width = width;
  v13.size.height = height;
  [(AKTSDBezierPath *)self lineToPoint:MaxX, CGRectGetMinY(v13)];
  v14.origin.x = x;
  v14.origin.y = y;
  v14.size.width = width;
  v14.size.height = height;
  v9 = CGRectGetMaxX(v14);
  v15.origin.x = x;
  v15.origin.y = y;
  v15.size.width = width;
  v15.size.height = height;
  [(AKTSDBezierPath *)self lineToPoint:v9, CGRectGetMaxY(v15)];
  v16.origin.x = x;
  v16.origin.y = y;
  v16.size.width = width;
  v16.size.height = height;
  MinX = CGRectGetMinX(v16);
  v17.origin.x = x;
  v17.origin.y = y;
  v17.size.width = width;
  v17.size.height = height;
  [(AKTSDBezierPath *)self lineToPoint:MinX, CGRectGetMaxY(v17)];

  [(AKTSDBezierPath *)self closePath];
}

- (void)appendBezierPathWithPoints:(CGPoint *)points count:(int64_t)count
{
  if (count >= 1)
  {
    if ([(AKTSDBezierPath *)self isEmpty]|| (*&self->sfr_bpFlags & 0x300) == 0x100)
    {
      [(AKTSDBezierPath *)self moveToPoint:points->x, points->y];
    }

    else
    {
      [(AKTSDBezierPath *)self lineToPoint:points->x, points->y];
    }

    v7 = count - 1;
    if (v7)
    {
      p_y = &points[1].y;
      do
      {
        [(AKTSDBezierPath *)self lineToPoint:*(p_y - 1), *p_y];
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
  v13 = *(MEMORY[0x277CBF2C0] + 16);
  *&v16.a = *MEMORY[0x277CBF2C0];
  *&v16.c = v13;
  *&v16.tx = *(MEMORY[0x277CBF2C0] + 32);
  v8 = objc_alloc_init(AKTSDBezierPath);
  [(AKTSDBezierPath *)v8 appendBezierPathWithArcWithCenter:*MEMORY[0x277CBF348] radius:*(MEMORY[0x277CBF348] + 8) startAngle:1.0 endAngle:-45.0, 315.0];
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
  [(AKTSDBezierPath *)v8 transformUsingAffineTransform:&v15];
  [(AKTSDBezierPath *)self appendBezierPath:v8];
}

- (void)_appendArcSegmentWithCenter:(CGPoint)center radius:(double)radius angle1:(double)angle1 angle2:(double)angle2
{
  __sincos_stret((angle2 - angle1) * 0.5);
  __sincos_stret(angle1);
  __sincos_stret(angle2);

  MEMORY[0x2821F9670](self, sel__deviceCurveToPoint_controlPoint1_controlPoint2_);
}

- (void)appendBezierPathWithArcWithCenter:(CGPoint)center radius:(double)radius startAngle:(double)angle endAngle:(double)endAngle clockwise:(BOOL)clockwise
{
  y = center.y;
  x = center.x;
  if (__fpclassifyd(angle) < 3 || __fpclassifyd(endAngle) <= 2)
  {
    v15 = MEMORY[0x277CBEAD8];
    v16 = *MEMORY[0x277CBE660];
    v17 = NSStringFromSelector(a2);
    [v15 raise:v16 format:{@"%@: illegal angle argument", v17}];
  }

  v18 = angle * 3.14159265 / 180.0;
  v19 = endAngle * 3.14159265;
  v20 = __sincos_stret(v18);
  v21 = x + radius * v20.__cosval;
  v22 = y + radius * v20.__sinval;
  if ([(AKTSDBezierPath *)self isEmpty])
  {
    [(AKTSDBezierPath *)self _deviceMoveToPoint:v21, v22];
  }

  else
  {
    [(AKTSDBezierPath *)self _deviceLineToPoint:v21, v22];
  }

  v23 = v19 / 180.0;
  if (clockwise)
  {
      ;
    }

    v24 = v18 - v23;
    if (v18 - v23 > 1.57079633)
    {
      do
      {
        v25 = v18 + -1.57079633;
        [(AKTSDBezierPath *)self _appendArcSegmentWithCenter:x radius:y angle1:radius angle2:v18, v18 + -1.57079633];
        v24 = v25 - v23;
        v18 = v18 + -1.57079633;
      }

      while (v25 - v23 > 1.57079633);
      goto LABEL_19;
    }

LABEL_18:
    v25 = v18;
    goto LABEL_19;
  }

    ;
  }

  v24 = v23 - v18;
  if (v23 - v18 <= 1.57079633)
  {
    goto LABEL_18;
  }

  do
  {
    v25 = v18 + 1.57079633;
    [(AKTSDBezierPath *)self _appendArcSegmentWithCenter:x radius:y angle1:radius angle2:v18, v18 + 1.57079633];
    v24 = v23 - v25;
    v18 = v18 + 1.57079633;
  }

  while (v23 - v25 > 1.57079633);
LABEL_19:
  if (v24 > 0.0)
  {

    [(AKTSDBezierPath *)self _appendArcSegmentWithCenter:x radius:y angle1:radius angle2:v25, v23];
  }
}

- (void)appendBezierPathWithArcFromPoint:(CGPoint)point toPoint:(CGPoint)toPoint radius:(double)radius
{
  y = toPoint.y;
  x = toPoint.x;
  v8 = point.y;
  v9 = point.x;
  v11 = *MEMORY[0x277CBF2C0];
  v12 = *(MEMORY[0x277CBF2C0] + 8);
  v13 = *(MEMORY[0x277CBF2C0] + 16);
  v31 = *(MEMORY[0x277CBF2C0] + 32);
  v32 = *(MEMORY[0x277CBF2C0] + 24);
  v30 = *(MEMORY[0x277CBF2C0] + 40);
  [(AKTSDBezierPath *)self currentPoint];
  v16 = v14 == v9 && v15 == v8;
  v33 = v15;
  v34 = v14;
  if (v16)
  {
    v35 = v9 - v14;
    v28 = v8 - v15;
    v17 = 0.0;
    radius = 0.0;
  }

  else
  {
    v28 = v8 - v15;
    v35 = v9 - v14;
    v17 = atan2(v8 - v15, v9 - v14);
  }

  v27 = v11;
  v37.a = v11;
  v37.b = v12;
  v37.c = v13;
  v37.d = v32;
  v37.tx = v31;
  v37.ty = v30;
  CGAffineTransformRotate(&v38, &v37, -v17);
  v36 = vaddq_f64(*&v38.tx, vmlaq_n_f64(vmulq_n_f64(*&v38.c, v28), *&v38.a, v35));
  v29 = vaddq_f64(*&v38.tx, vmlaq_n_f64(vmulq_n_f64(*&v38.c, y - v33), *&v38.a, x - v34));
  v18 = vmovn_s64(vceqq_f64(v36, v29));
  v19 = 0.0;
  v20 = 0.0;
  if ((v18.i32[0] & v18.i32[1] & 1) == 0)
  {
    v21 = vsubq_f64(v29, v36);
    v20 = 3.14159265 - fabs(atan2(v21.f64[1], v21.f64[0]));
  }

  v22 = sin(v20 * 0.5);
  if (v22 == 0.0)
  {
    v23 = 0.0;
    radiusCopy = v36.f64[1];
    v25 = v36.f64[0];
    radius = 0.0;
  }

  else
  {
    v25 = v36.f64[0] - radius * fabs(cos(v20 * 0.5) / v22);
    if (vmovn_s64(vcgtq_f64(v29, v36)).i32[1])
    {
      v19 = 1.57079633 - v20;
      v23 = -1.57079633;
      radiusCopy = radius;
    }

    else
    {
      radiusCopy = -radius;
      v19 = v20 + -1.57079633;
      v23 = 1.57079633;
    }
  }

  v37.a = v27;
  v37.b = v12;
  v37.c = v13;
  v37.d = v32;
  v37.tx = v31;
  v37.ty = v30;
  CGAffineTransformRotate(&v38, &v37, v17);
  v24.f64[0] = v34;
  v24.f64[1] = v33;
  [(AKTSDBezierPath *)self appendBezierPathWithArcWithCenter:vmovn_s64(vmvnq_s8(vcgtq_f64(v29 radius:v36))).i8[4] & 1 startAngle:vaddq_f64(v24 endAngle:vaddq_f64(*&v38.tx clockwise:vmlaq_n_f64(vmulq_n_f64(*&v38.c, radiusCopy), *&v38.a, v25))), radius, (v17 + v23) * 180.0 / 3.14159265, (v17 + v19) * 180.0 / 3.14159265];
}

- (BOOL)containsPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  if ((byte_27E39B5B0 & 1) == 0)
  {
    byte_27E39B5B0 = 1;
  }

  [(AKTSDBezierPath *)self _doPath];
  sfr_path = self->sfr_path;
  if (!sfr_path)
  {
    return 0;
  }

  v7 = [(AKTSDBezierPath *)self windingRule]== 1;
  v8 = x;
  v9 = y;

  return CGPathContainsPoint(sfr_path, 0, *&v8, v7);
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  if ([coderCopy allowsKeyedCoding])
  {
    windingRule = [(AKTSDBezierPath *)self windingRule];
    lineCapStyle = [(AKTSDBezierPath *)self lineCapStyle];
    lineJoinStyle = [(AKTSDBezierPath *)self lineJoinStyle];
    sfr_elementCount = self->sfr_elementCount;
    if (sfr_elementCount >= 1)
    {
      sfr_head = self->sfr_head;
      v11 = &sfr_head[6 * sfr_elementCount];
      sfr_extraSegments = self->sfr_extraSegments;
      v13 = 9 * (sfr_elementCount + 2 * self->sfr_extraSegmentCount);
      v14 = malloc_type_malloc(v13, 0xFE0A2C55uLL);
      v15 = v14;
      do
      {
        v16 = *sfr_head;
        if ((*sfr_head & 0xFLL) == 2)
        {
          *v15 = 2;
          *(v15 + 1) = vrev32_s8(vcvt_f32_f64(*sfr_extraSegments));
          v15[9] = 2;
          *(v15 + 10) = vrev32_s8(vcvt_f32_f64(sfr_extraSegments[1]));
          v15 += 18;
          sfr_extraSegments += 2;
          v16 = *sfr_head;
        }

        *v15 = v16 & 0xF;
        *(v15 + 1) = vrev32_s8(vcvt_f32_f64(*&sfr_head[2]));
        v15 += 9;
        sfr_head += 6;
      }

      while (sfr_head < v11);
      [coderCopy encodeBytes:v14 length:v13 forKey:@"TSDSegments"];
      free(v14);
    }

    if (windingRule)
    {
      *&v8 = windingRule;
      [coderCopy encodeFloat:@"TSDWindingRule" forKey:v8];
    }

    if (lineCapStyle)
    {
      *&v8 = lineCapStyle;
      [coderCopy encodeFloat:@"TSDCapStyle" forKey:v8];
    }

    if (lineJoinStyle)
    {
      *&v8 = lineJoinStyle;
      [coderCopy encodeFloat:@"TSDJoinStyle" forKey:v8];
    }

    if (self->sfr_lineWidth != 1.0)
    {
      [coderCopy encodeDouble:@"TSDLineWidth" forKey:?];
    }

    if (self->sfr_miterLimit != 10.0)
    {
      [coderCopy encodeDouble:@"TSDMiterLimit" forKey:?];
    }

    if (self->sfr_flatness != 0.6)
    {
      [coderCopy encodeDouble:@"TSDFlatness" forKey:?];
    }

    if (self->sfr_dashedLineCount)
    {
      [coderCopy encodeDouble:@"TSDDashPhase" forKey:self->sfr_dashedLinePhase];
      v17 = 4 * self->sfr_dashedLineCount;
      v18 = malloc_type_malloc(v17, 0xDB0EF197uLL);
      v19 = v18;
      sfr_dashedLineCount = self->sfr_dashedLineCount;
      if (sfr_dashedLineCount >= 1)
      {
        sfr_dashedLinePattern = self->sfr_dashedLinePattern;
        v22 = v18;
        do
        {
          v23 = *sfr_dashedLinePattern++;
          *&v24 = v23;
          *v22++ = bswap32(v24);
          --sfr_dashedLineCount;
        }

        while (sfr_dashedLineCount);
      }

      [coderCopy encodeBytes:v18 length:v17 forKey:@"TSDDashPatterns"];
      free(v19);
    }
  }

  else
  {
    v52 = (self->sfr_elementCount + 2 * self->sfr_extraSegmentCount);
    windingRule2 = [(AKTSDBezierPath *)self windingRule];
    lineCapStyle2 = [(AKTSDBezierPath *)self lineCapStyle];
    lineJoinStyle2 = [(AKTSDBezierPath *)self lineJoinStyle];
    sfr_lineWidth = self->sfr_lineWidth;
    sfr_flatness = self->sfr_flatness;
    sfr_miterLimit = self->sfr_miterLimit;
    v47 = sfr_miterLimit;
    v48 = sfr_lineWidth;
    v28 = sfr_flatness;
    v45 = self->sfr_dashedLineCount;
    v46 = v28;
    [coderCopy encodeValueOfObjCType:"i" at:&v52];
    v29 = self->sfr_elementCount;
    if (v29 >= 1)
    {
      v30 = self->sfr_head;
      v31 = &v30[6 * v29];
      v32 = self->sfr_extraSegments;
      do
      {
        v44 = *v30 & 0xF;
        if (v44 == 2)
        {
          v33 = *v32;
          v34 = v32[1];
          v42 = v34;
          v43 = v33;
          [coderCopy encodeValuesOfObjCTypes:{"cff", &v44, &v43, &v42}];
          v35 = v32[2];
          v36 = v32[3];
          v42 = v36;
          v43 = v35;
          [coderCopy encodeValuesOfObjCTypes:{"cff", &v44, &v43, &v42}];
          v32 += 4;
        }

        v37 = *&v30[2];
        v38 = *&v30[4];
        v42 = v38;
        v43 = v37;
        [coderCopy encodeValuesOfObjCTypes:{"cff", &v44, &v43, &v42}];
        v30 += 6;
      }

      while (v30 < v31);
    }

    [coderCopy encodeValuesOfObjCTypes:{"iiifffi", &windingRule2, &lineCapStyle2, &lineJoinStyle2, &v48, &v47, &v46, &v45}];
    if (self->sfr_dashedLineCount)
    {
      sfr_dashedLinePhase = self->sfr_dashedLinePhase;
      v43 = sfr_dashedLinePhase;
      [coderCopy encodeValueOfObjCType:"f" at:&v43];
      if (self->sfr_dashedLineCount >= 1)
      {
        v40 = 0;
        do
        {
          v41 = self->sfr_dashedLinePattern[v40];
          v43 = v41;
          [coderCopy encodeValueOfObjCType:"f" at:&v43];
          ++v40;
        }

        while (v40 < self->sfr_dashedLineCount);
      }
    }
  }
}

- (AKTSDBezierPath)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(AKTSDBezierPath *)self init];
  if (v5)
  {
    if ([coderCopy allowsKeyedCoding])
    {
      v47 = 0;
      v6 = [coderCopy decodeBytesForKey:@"TSDSegments" returnedLength:&v47];
      if (v6 && v47 > 0)
      {
        v7 = &v6[v47];
        do
        {
          v8 = *v6;
          v9 = vcvtq_f64_f32(vrev32_s8(*(v6 + 1)));
          v10 = v6 + 9;
          if (v8 > 1)
          {
            if (v8 == 2)
            {
              v10 = v6 + 27;
              [(AKTSDBezierPath *)v5 curveToPoint:vcvtq_f64_f32(vrev32_s8(*(v6 + 19))) controlPoint1:*&v9 controlPoint2:vcvtq_f64_f32(vrev32_s8(*(v6 + 10)))];
            }

            else if (v8 == 3)
            {
              [(AKTSDBezierPath *)v5 closePath];
            }
          }

          else if (*v6)
          {
            if (v8 == 1)
            {
              [(AKTSDBezierPath *)v5 lineToPoint:*&v9];
            }
          }

          else
          {
            [(AKTSDBezierPath *)v5 moveToPoint:*&v9];
          }

          v6 = v10;
        }

        while (v10 < v7);
      }

      -[AKTSDBezierPath setWindingRule:](v5, "setWindingRule:", [coderCopy decodeInt32ForKey:@"TSDWindingRule"]);
      -[AKTSDBezierPath setLineCapStyle:](v5, "setLineCapStyle:", [coderCopy decodeInt32ForKey:@"TSDCapStyle"]);
      -[AKTSDBezierPath setLineJoinStyle:](v5, "setLineJoinStyle:", [coderCopy decodeInt32ForKey:@"TSDJoinStyle"]);
      v11 = [coderCopy containsValueForKey:@"TSDLineWidth"];
      v12 = 1.0;
      if (v11)
      {
        [coderCopy decodeDoubleForKey:{@"TSDLineWidth", 1.0}];
      }

      v5->sfr_lineWidth = v12;
      v13 = [coderCopy containsValueForKey:@"TSDMiterLimit"];
      v14 = 10.0;
      if (v13)
      {
        [coderCopy decodeDoubleForKey:{@"TSDMiterLimit", 10.0}];
      }

      v5->sfr_miterLimit = v14;
      if ([coderCopy containsValueForKey:@"TSDFlatness"])
      {
        [coderCopy decodeDoubleForKey:@"TSDFlatness"];
      }

      else
      {
        v15 = 0x3FE3333333333333;
      }

      *&v5->sfr_flatness = v15;
      v22 = [coderCopy decodeBytesForKey:@"TSDDashPatterns" returnedLength:&v47];
      if (v22)
      {
        v23 = v47;
        if (v47)
        {
          v24 = v22;
          v5->sfr_dashedLineCount = v47 >> 2;
          [coderCopy decodeDoubleForKey:@"TSDDashPhase"];
          v5->sfr_dashedLinePhase = v25;
          v26 = malloc_type_malloc(8 * v5->sfr_dashedLineCount, 0x100004000313F17uLL);
          v5->sfr_dashedLinePattern = v26;
          if (v23 >= 1)
          {
            v27 = (v24 + v23);
            do
            {
              v28 = *v24++;
              *v26++ = COERCE_FLOAT(bswap32(v28));
            }

            while (v24 < v27);
          }
        }
      }
    }

    else
    {
      LODWORD(v47) = 0;
      v46 = 0;
      v45 = 0.0;
      v43 = 0;
      v44 = 0;
      v16 = [coderCopy versionForClassName:@"AKTSDBezierPath"];
      [coderCopy decodeValueOfObjCType:"i" at:&v47 size:4];
      if (v47)
      {
        v17 = 0;
        do
        {
          [coderCopy decodeValuesOfObjCTypes:{"cff", &v46, &v45, &v44 + 4}];
          v18 = v45;
          v19 = *(&v44 + 1);
          if (v46 > 1u)
          {
            if (v46 == 2)
            {
              [coderCopy decodeValuesOfObjCTypes:{"cff", &v46, &v45, &v44 + 4}];
              v20 = v45;
              v21 = *(&v44 + 1);
              [coderCopy decodeValuesOfObjCTypes:{"cff", &v46, &v45, &v44 + 4}];
              v17 += 2;
              [(AKTSDBezierPath *)v5 curveToPoint:v45 controlPoint1:*(&v44 + 1) controlPoint2:v18, v19, v20, v21];
            }

            else if (v46 == 3)
            {
              [(AKTSDBezierPath *)v5 closePath];
            }
          }

          else if (v46)
          {
            if (v46 == 1)
            {
              [(AKTSDBezierPath *)v5 lineToPoint:v45, *(&v44 + 1)];
            }
          }

          else
          {
            [(AKTSDBezierPath *)v5 moveToPoint:v45, *(&v44 + 1)];
          }

          ++v17;
        }

        while (v17 < v47);
      }

      if (v16 > 523)
      {
        sfr_lineWidth = v5->sfr_lineWidth;
        sfr_flatness = v5->sfr_flatness;
        sfr_miterLimit = v5->sfr_miterLimit;
        v41 = sfr_miterLimit;
        v42 = sfr_lineWidth;
        v32 = sfr_flatness;
        sfr_dashedLineCount = v5->sfr_dashedLineCount;
        v40 = v32;
        [coderCopy decodeValuesOfObjCTypes:{"iiifffi", &v44, &v43, &v43 + 4, &v42, &v41, &v40, &sfr_dashedLineCount}];
        [(AKTSDBezierPath *)v5 setWindingRule:v44];
        [(AKTSDBezierPath *)v5 setLineCapStyle:v43];
        [(AKTSDBezierPath *)v5 setLineJoinStyle:HIDWORD(v43)];
        v5->sfr_lineWidth = v42;
        v33 = v40;
        v5->sfr_miterLimit = v41;
        v5->sfr_flatness = v33;
        v34 = sfr_dashedLineCount;
        v5->sfr_dashedLineCount = sfr_dashedLineCount;
        if (v34)
        {
          v38 = 0.0;
          [coderCopy decodeValueOfObjCType:"f" at:&v38 size:4];
          v5->sfr_dashedLinePhase = v38;
          v5->sfr_dashedLinePattern = malloc_type_malloc(8 * v5->sfr_dashedLineCount, 0x100004000313F17uLL);
          if (v5->sfr_dashedLineCount)
          {
            v35 = 0;
            do
            {
              [coderCopy decodeValueOfObjCType:"f" at:&v38 size:4];
              v5->sfr_dashedLinePattern[v35++] = v38;
            }

            while (v35 < v5->sfr_dashedLineCount);
          }
        }
      }

      else
      {
        v42 = 0.0;
        LOBYTE(v41) = 0;
        [coderCopy decodeValuesOfObjCTypes:{"iiifc", &v44, &v43, &v43 + 4, &v42, &v41}];
        v5->sfr_lineWidth = v42;
        [(AKTSDBezierPath *)v5 setWindingRule:v44];
        [(AKTSDBezierPath *)v5 setLineCapStyle:v43];
        [(AKTSDBezierPath *)v5 setLineJoinStyle:HIDWORD(v43)];
      }
    }

    v36 = v5;
  }

  return v5;
}

- (const)cString
{
  *&v15[255] = *MEMORY[0x277D85DE8];
  data = [MEMORY[0x277CBEB28] data];
  sfr_elementCount = self->sfr_elementCount;
  if (sfr_elementCount >= 1)
  {
    sfr_head = self->sfr_head;
    v6 = &sfr_head[6 * sfr_elementCount];
    sfr_extraSegments = self->sfr_extraSegments;
    do
    {
      if (sfr_head == self->sfr_head)
      {
        v8 = &v14;
        v9 = 256;
      }

      else
      {
        v14 = 32;
        v8 = v15;
        v9 = 255;
      }

      v10 = *sfr_head & 0xF;
      if (v10 > 1)
      {
        if (v10 == 2)
        {
          v11 = __snprintf_chk(v8, v9, 0, 0x100uLL, "C %f %f %f %f %f %f", *sfr_extraSegments, sfr_extraSegments[1], sfr_extraSegments[2], sfr_extraSegments[3], *&sfr_head[2], *&sfr_head[4]);
          sfr_extraSegments += 4;
        }

        else
        {
          if (v10 != 3)
          {
            break;
          }

          *v8 = 90;
          v11 = 1;
        }
      }

      else if (v10)
      {
        if (v10 != 1)
        {
          break;
        }

        v11 = __snprintf_chk(v8, v9, 0, 0x100uLL, "L %f %f");
      }

      else
      {
        v11 = __snprintf_chk(v8, v9, 0, 0x100uLL, "M %f %f");
      }

      if (v11 < 1)
      {
        break;
      }

      if (v11 >= v9)
      {
        break;
      }

      [data appendBytes:&v14 length:&v8[v11] - &v14];
      sfr_head += 6;
    }

    while (sfr_head < v6);
  }

  v14 = 0;
  [data appendBytes:&v14 length:1];
  bytes = [data bytes];

  return bytes;
}

- (AKTSDBezierPath)initWithCString:(const char *)string
{
  v4 = [(AKTSDBezierPath *)self init];
  v5 = v4;
  if (string)
  {
    if (v4)
    {
      if (*string)
      {
        v12 = 0;
        v11 = 0;
        if (sscanf(string, " %c%n", &v12, &v11) >= 1)
        {
          do
          {
            v6 = &string[v11];
            v11 = 0;
            v9 = 0;
            v10 = 0;
            v8 = 0;
            if (v12 > 0x62u)
            {
              if (v12 > 0x6Cu)
              {
                if (v12 == 122)
                {
                  goto LABEL_26;
                }

                if (v12 != 113)
                {
                  if (v12 == 109)
                  {
LABEL_15:
                    if (sscanf(v6, " %g %g%n", &v10 + 4, &v10, &v11) == 2)
                    {
                      [(AKTSDBezierPath *)v5 moveToPoint:*(&v10 + 1), *&v10];
                    }

                    goto LABEL_29;
                  }

                  goto LABEL_29;
                }

                goto LABEL_27;
              }

              if (v12 == 99)
              {
LABEL_24:
                if (sscanf(v6, " %g %g %g %g %g %g%n", &v9 + 4, &v9, &v8 + 4, &v8, &v10 + 4, &v10, &v11) == 6)
                {
                  [(AKTSDBezierPath *)v5 curveToPoint:*(&v10 + 1) controlPoint1:*&v10 controlPoint2:*(&v9 + 1), *&v9, *(&v8 + 1), *&v8];
                }

                goto LABEL_29;
              }

              if (v12 == 108)
              {
LABEL_22:
                if (sscanf(v6, " %g %g%n", &v10 + 4, &v10, &v11) != 2)
                {
                  goto LABEL_29;
                }

LABEL_28:
                [(AKTSDBezierPath *)v5 lineToPoint:*(&v10 + 1), *&v10];
              }
            }

            else
            {
              if (v12 > 0x4Cu)
              {
                if (v12 == 77)
                {
                  goto LABEL_15;
                }

                if (v12 != 81)
                {
                  if (v12 != 90)
                  {
                    goto LABEL_29;
                  }

LABEL_26:
                  [(AKTSDBezierPath *)v5 closePath];
                  goto LABEL_29;
                }

LABEL_27:
                if (sscanf(v6, " %g %g %g %g%n", &v10 + 4, &v10, &v9 + 4, &v9, &v11) == 4)
                {
                  goto LABEL_28;
                }

                goto LABEL_29;
              }

              if (v12 == 67)
              {
                goto LABEL_24;
              }

              if (v12 == 76)
              {
                goto LABEL_22;
              }
            }

LABEL_29:
            string = &v6[v11];
          }

          while (sscanf(string, " %c%n", &v12, &v11) > 0);
        }
      }
    }
  }

  return v5;
}

- (void)_addPathSegment:(int64_t)segment point:(CGPoint)point
{
  y = point.y;
  x = point.x;
  sfr_elementCount = self->sfr_elementCount;
  if (sfr_elementCount == self->sfr_elementMax)
  {
    v9 = sfr_elementCount + 0x4000000000000000;
    v10 = 2 * sfr_elementCount;
    v11 = v10 + 10;
    v12 = __OFADD__(v10, 10);
    if ((v9 & 0x8000000000000000) == 0 && !v12)
    {
      v13 = v11 < 0;
      if (v11 >= 0)
      {
        v14 = v11;
      }

      else
      {
        v14 = -v11;
      }

      v15 = !is_mul_ok(v14, 0x18uLL);
      v16 = 24 * v14;
      if (!v16)
      {
        v13 = 0;
      }

      if (v15 || v13 || (v11 >= 0 ? (v17 = v16) : (v17 = -v16), (v18 = malloc_type_realloc(self->sfr_head, v17, 0x3F1F8EBuLL)) == 0))
      {
        NSLog(&cfstr_ErrorAktsdbezi.isa, a2);
      }

      else
      {
        self->sfr_elementMax = v11;
        self->sfr_head = v18;
      }

      if ((*(&self->sfr_bpFlags + 1) & 4) != 0)
      {
        sfr_elementMax = self->sfr_elementMax;
        v20 = sfr_elementMax < 0;
        if (sfr_elementMax >= 0)
        {
          v21 = self->sfr_elementMax;
        }

        else
        {
          v21 = -sfr_elementMax;
        }

        if (!(8 * v21))
        {
          v20 = 0;
        }

        if (v21 >> 61 || v20 || (sfr_elementMax >= 0 ? (v22 = 8 * v21) : (v22 = -8 * v21), (v23 = malloc_type_realloc(self->sfr_elementLength, v22, 0xEA94FF6uLL)) == 0))
        {
          NSLog(&cfstr_ErrorAktsdbezi_0.isa);
        }

        else
        {
          self->sfr_elementLength = v23;
        }
      }
    }
  }

  sfr_head = self->sfr_head;
  if (sfr_head)
  {
    *&sfr_head[6 * self->sfr_elementCount] = *&sfr_head[6 * self->sfr_elementCount] & 0xFFFFFFFFFFFFFFF0 | segment & 0xF;
    *&self->sfr_head[6 * self->sfr_elementCount] &= 0xFuLL;
    v25 = self->sfr_elementCount;
    v26 = &self->sfr_head[6 * v25];
    *&v26[2] = x;
    *&v26[4] = y;
    self->sfr_elementCount = v25 + 1;
    sfr_path = self->sfr_path;
    if (sfr_path)
    {
      CFRelease(sfr_path);
      self->sfr_path = 0;
    }

    sfr_bpFlags = self->sfr_bpFlags;
    self->sfr_bpFlags = (*&sfr_bpFlags | 1);
    if (segment != 2 && (*&sfr_bpFlags & 0x400) != 0)
    {
      [(AKTSDBezierPath *)self lengthOfElement:self->sfr_elementCount - 1];
      self->sfr_elementLength[self->sfr_elementCount - 1] = v29;
      self->sfr_totalLength = v29 + self->sfr_totalLength;
    }
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

  [(AKTSDBezierPath *)self _addPathSegment:0 point:point.x, point.y];
  sfr_elementCount = self->sfr_elementCount;
LABEL_7:
  self->sfr_bpFlags = (*&self->sfr_bpFlags & 0xFFFFFCFF | 0x200);
  self->sfr_lastSubpathIndex = sfr_elementCount - 1;
}

- (void)_deviceCurveToPoint:(CGPoint)point controlPoint1:(CGPoint)point1 controlPoint2:(CGPoint)point2
{
  y = point2.y;
  x = point2.x;
  v7 = point1.y;
  v8 = point1.x;
  [(AKTSDBezierPath *)self _addPathSegment:2 point:point.x, point.y];
  sfr_extraSegmentCount = self->sfr_extraSegmentCount;
  if (sfr_extraSegmentCount == self->sfr_extraSegmentMax)
  {
    v11 = sfr_extraSegmentCount + 0x4000000000000000;
    v12 = 2 * sfr_extraSegmentCount;
    v13 = v12 + 10;
    v14 = __OFADD__(v12, 10);
    if ((v11 & 0x8000000000000000) == 0 && !v14)
    {
      v15 = v13 < 0;
      if (v13 >= 0)
      {
        v16 = v13;
      }

      else
      {
        v16 = -v13;
      }

      if (!(32 * v16))
      {
        v15 = 0;
      }

      if (v16 >> 59 || v15 || (v13 >= 0 ? (v17 = 32 * v16) : (v17 = -32 * v16), (v18 = malloc_type_realloc(self->sfr_extraSegments, v17, 0xF0278BB8uLL)) == 0))
      {
        NSLog(&cfstr_ErrorAktsdbezi_1.isa);
      }

      else
      {
        self->sfr_extraSegments = v18;
        self->sfr_extraSegmentMax = v13;
      }
    }
  }

  v19 = self->sfr_extraSegmentCount;
  v20 = (self->sfr_extraSegments + 32 * v19);
  *v20 = v8;
  v20[1] = v7;
  v20[2] = x;
  v20[3] = y;
  self->sfr_extraSegmentCount = v19 + 1;
  v21 = &self->sfr_head[6 * self->sfr_elementCount];
  *&v21[-6] = *&v21[-6] & 0xFLL | (16 * v19);
  LODWORD(v21) = self->sfr_bpFlags;
  self->sfr_bpFlags = (v21 & 0xFFFFFCFB | 0x200);
  if ((v21 & 0x400) != 0)
  {
    [(AKTSDBezierPath *)self lengthOfElement:self->sfr_elementCount - 1];
    self->sfr_elementLength[self->sfr_elementCount - 1] = v22;
    self->sfr_totalLength = v22 + self->sfr_totalLength;
  }
}

- (void)_deviceClosePath
{
  if ((*&self->sfr_bpFlags & 0x300) == 0x200)
  {
    v3 = &self->sfr_head[6 * self->sfr_lastSubpathIndex];
    [(AKTSDBezierPath *)self _addPathSegment:3 point:*&v3[2], *&v3[4]];
    v4 = &self->sfr_head[6 * self->sfr_lastSubpathIndex];
    [(AKTSDBezierPath *)self _addPathSegment:0 point:*&v4[2], *&v4[4]];
    self->sfr_lastSubpathIndex = self->sfr_elementCount - 1;
    self->sfr_bpFlags = (*&self->sfr_bpFlags & 0xFFFFFCFF | 0x100);
  }
}

- (id)description
{
  v18 = *MEMORY[0x277D85DE8];
  string = [MEMORY[0x277CCAB68] string];
  [string appendFormat:@"AKTSDBezierPath <%p>", self];
  if (![(AKTSDBezierPath *)self isEmpty])
  {
    [(AKTSDBezierPath *)self bounds];
    v4 = NSStringFromCGRect(v20);
    [(AKTSDBezierPath *)self controlPointBounds];
    v5 = NSStringFromCGRect(v21);
    [string appendFormat:@"\n  Bounds: %@", v4];
    [string appendFormat:@"\n  Control point bounds: %@", v5];
    elementCount = [(AKTSDBezierPath *)self elementCount];
    if (elementCount >= 1)
    {
      v7 = elementCount;
      for (i = 0; i != v7; ++i)
      {
        v9 = [(AKTSDBezierPath *)self elementAtIndex:i associatedPoints:v15];
        if (v9 > 1)
        {
          if (v9 == 2)
          {
            [string appendFormat:@"\n    %f %f %f %f %f %f curveto", v15[0], v15[1], v16, v17];
          }

          else if (v9 == 3)
          {
            [string appendString:@"\n    closepath"];
          }
        }

        else if (v9)
        {
          if (v9 == 1)
          {
            [string appendFormat:@"\n    %f %f lineto", v15[0], v11, v12, v13, v14];
          }
        }

        else
        {
          [string appendFormat:@"\n    %f %f moveto", v15[0], v11, v12, v13, v14];
        }
      }
    }
  }

  return string;
}

- (void)getStartPoint:(CGPoint *)point andEndPoint:(CGPoint *)endPoint
{
  v10[2] = *MEMORY[0x277D85DE8];
  [(AKTSDBezierPath *)self elementAtIndex:0 associatedPoints:point];
  v7 = [(AKTSDBezierPath *)self elementAtIndex:[(AKTSDBezierPath *)self elementCount]- 1 associatedPoints:v9];
  pointCopy = v9;
  if (v7 == 2)
  {
    pointCopy = v10;
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
  v41 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  toCopy = to;
  v32 = [toCopy count];
  selfCopy = self;
  elementCount = [(AKTSDBezierPath *)self elementCount];
  elementCount2 = [pathCopy elementCount];
  if (elementCount < 2)
  {
    goto LABEL_30;
  }

  v13 = elementCount2;
  if (elementCount2 < 2)
  {
    goto LABEL_30;
  }

  if (reversedCopy)
  {
    v14 = elementCount - 1;
  }

  else
  {
    v14 = 0;
  }

  if (reversedCopy)
  {
    v15 = -1;
  }

  else
  {
    v15 = elementCount;
  }

  v16 = -1;
  if (!reversedCopy)
  {
    v16 = 1;
  }

  v34 = v16;
  v35 = v15;
  while (2)
  {
    v17 = [(AKTSDBezierPath *)selfCopy elementAtIndex:v14 allPoints:v38];
    if (!v17)
    {
      goto LABEL_29;
    }

    v18 = v17;
    v19 = 0;
    do
    {
      v20 = [pathCopy elementAtIndex:v19 allPoints:v37];
      if (!v20)
      {
        goto LABEL_26;
      }

      if (v18 != 2)
      {
        if (v20 != 2)
        {
          sub_23F4A0650(v38[0].f64, v37, v14, v19, toCopy);
          goto LABEL_26;
        }

        v27 = v37;
        v28 = v38;
        v29 = v19;
        v30 = v14;
        v31 = 1;
LABEL_24:
        sub_23F4A0330(v27->f64, v28->f64, v29, v30, v31, toCopy);
        goto LABEL_26;
      }

      if (v20 != 2)
      {
        v27 = v38;
        v28 = v37;
        v29 = v14;
        v30 = v19;
        v31 = 0;
        goto LABEL_24;
      }

      v21 = toCopy;
      v22 = [v21 count];
      v40[0] = v38[0];
      v40[1] = v38[1];
      v40[2] = v38[2];
      v40[3] = v38[3];
      v39[0] = v37[0];
      v39[1] = v37[1];
      v39[2] = v37[2];
      v39[3] = v37[3];
      sub_23F4A4858(v40, v39, v14, v19, 0, v21, 1.0, 0.0, 1.0, 0.0);
      v23 = [v21 count];
      if (v22 < v23)
      {
        v24 = v23;
        do
        {
          v25 = [v21 objectAtIndex:v22];
          [v25 t];
          [v25 setPoint:{sub_23F49FBB8(v38, v26)}];

          ++v22;
        }

        while (v24 != v22);
      }

LABEL_26:
      ++v19;
    }

    while (v19 != v13);
    if (intersections || v32 >= [toCopy count])
    {
LABEL_29:
      v14 += v34;
      if (v14 == v35)
      {
        break;
      }

      continue;
    }

    break;
  }

LABEL_30:
}

- (void)addIntersectionsWithLine:(CGPoint)line[2] to:(id)to
{
  v15 = *MEMORY[0x277D85DE8];
  toCopy = to;
  v12 = *MEMORY[0x277CBF348];
  elementCount = [(AKTSDBezierPath *)self elementCount];
  if (elementCount)
  {
    v8 = elementCount;
    for (i = 0; v8 != i; ++i)
    {
      v10 = [(AKTSDBezierPath *)self elementAtIndex:i associatedPoints:v14, v12, v13];
      if (v10 > 1)
      {
        if (v10 == 2)
        {
          sub_23F4A0330(&v13, &line->x, i, -1, 0, toCopy);
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
          sub_23F4A0650(&v13, &line->x, i, -1, toCopy);
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
  v16 = *MEMORY[0x277D85DE8];
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
          [(AKTSDBezierPath *)self curveToPoint:v14 controlPoint1:v15 controlPoint2:v10, v11, v12, v13];
        }

        else if (v9 == 3)
        {
          [(AKTSDBezierPath *)self closePath];
        }
      }

      else if (v9)
      {
        if (v9 == 1)
        {
          [(AKTSDBezierPath *)self lineToPoint:v10, v11];
        }
      }

      else
      {
        [(AKTSDBezierPath *)self moveToPoint:v10, v11];
      }

      ++segmentCopy;
    }

    while (toSegment != segmentCopy);
  }
}

- (void)appendBezierPath:(id)path fromSegment:(int64_t)segment t:(double)t toSegment:(int64_t)toSegment t:(double)a7 withoutMove:(BOOL)move
{
  tCopy = t;
  v40 = *MEMORY[0x277D85DE8];
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
        sub_23F49FC10(&v36, &v28, tCopy, 1.0);
        if (!move)
        {
          [(AKTSDBezierPath *)self moveToPoint:v28, v29];
        }

        [(AKTSDBezierPath *)self curveToPoint:v34 controlPoint1:v35 controlPoint2:v30, v31, v32, v33, *&tCopy];
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
          [(AKTSDBezierPath *)self moveToPoint:*&v36];
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
              sub_23F49FC10(&v36, &v28, 0.0, a7);
LABEL_66:
              [(AKTSDBezierPath *)self curveToPoint:v34 controlPoint1:v35 controlPoint2:v30, v31, v32, v33, *&tCopy];
              goto LABEL_67;
            }

            if (v25 != 1)
            {
              goto LABEL_67;
            }
          }

LABEL_64:
          [(AKTSDBezierPath *)self lineToPoint:vmlaq_n_f64(vmulq_n_f64(v37, a7), v36, 1.0 - a7), *&tCopy];
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
            [(AKTSDBezierPath *)self curveToPoint:v38 controlPoint1:v39 controlPoint2:*&v36, *&v37];
            goto LABEL_58;
          }

          if (v24 == 3)
          {
            if ((v23 & 1) == 0)
            {
              [(AKTSDBezierPath *)self lineToPoint:*&v36];
              v23 = 0;
              goto LABEL_58;
            }

            [(AKTSDBezierPath *)self closePath];
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
            [(AKTSDBezierPath *)self lineToPoint:*&v36];
          }

          goto LABEL_58;
        }

        [(AKTSDBezierPath *)self moveToPoint:*&v36];
LABEL_55:
        v23 = 1;
        goto LABEL_58;
      }
    }

    if (!move)
    {
      [(AKTSDBezierPath *)self moveToPoint:vmlaq_n_f64(vmulq_n_f64(v37, tCopy), v36, 1.0 - tCopy)];
    }

    [(AKTSDBezierPath *)self lineToPoint:*&v37, *&tCopy];
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
  switch(v19)
  {
    case 3:
      goto LABEL_22;
    case 2:
      sub_23F49FC10(&v36, &v28, tCopy, a7);
      if (!move)
      {
        [(AKTSDBezierPath *)self moveToPoint:v28, v29];
      }

      goto LABEL_66;
    case 1:
LABEL_22:
      if (!move)
      {
        [(AKTSDBezierPath *)self moveToPoint:vmlaq_n_f64(vmulq_n_f64(v37, tCopy), v36, 1.0 - tCopy)];
      }

      goto LABEL_64;
  }

LABEL_67:
}

- (id)copyFromSegment:(int)segment t:(float)t toSegment:(int)toSegment t:(float)a6
{
  v11 = objc_alloc_init(objc_opt_class());
  [v11 appendBezierPath:self fromSegment:segment t:toSegment toSegment:0 t:t withoutMove:a6];
  [v11 setWindingRule:{-[AKTSDBezierPath windingRule](self, "windingRule")}];
  [v11 setLineCapStyle:{-[AKTSDBezierPath lineCapStyle](self, "lineCapStyle")}];
  [v11 setLineJoinStyle:{-[AKTSDBezierPath lineJoinStyle](self, "lineJoinStyle")}];
  [(AKTSDBezierPath *)self lineWidth];
  [v11 setLineWidth:?];
  return v11;
}

- (CGPoint)nearestPointOnPathToLine:(CGPoint)line[2]
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277CBF348];
  v6 = *(MEMORY[0x277CBF348] + 8);
  v25 = *MEMORY[0x277CBF348];
  elementCount = [(AKTSDBezierPath *)self elementCount];
  if (elementCount)
  {
    v8 = elementCount;
    v9 = 0;
    v10 = 3.4028e38;
    while (1)
    {
      v11 = [(AKTSDBezierPath *)self elementAtIndex:v9 associatedPoints:v27];
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

      x = line[1].x;
      y = line[1].y;
      v16 = y - line->y;
      v17 = x - line->x;
      v18 = v17 * v17 + v16 * v16;
      v19 = (1.0 / sqrtf(v18));
      *&y = *(v27 + 1) * -(v17 * v19) + v16 * v19 * *v27 - (y * -(v17 * v19) + v16 * v19 * x);
      v20 = fabsf(*&y);
      if (v10 > v20)
      {
        v10 = v20;
        v6 = *(v27 + 1);
        v5 = *v27;
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
    sub_23F49FD90(&v26, &line->x, &v23);
    if (v13 < v10)
    {
      v10 = v13;
      v6 = v24;
      v5 = v23;
    }

    v12 = v27[2];
    goto LABEL_9;
  }

LABEL_15:
  v21 = v5;
  v22 = v6;
  result.y = v22;
  result.x = v21;
  return result;
}

- (CGPoint)nearestAngleOnPathToLine:(CGPoint)line[2]
{
  v90 = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277CBF348];
  v6 = *(MEMORY[0x277CBF348] + 8);
  x = line[1].x;
  y = line[1].y;
  v9 = line->x;
  v77 = *MEMORY[0x277CBF348];
  elementCount = [(AKTSDBezierPath *)self elementCount];
  if (elementCount)
  {
    v11 = elementCount;
    v12 = sub_23F4659D0(x, y, v9);
    v14 = sub_23F465A1C(v12, v13);
    v16 = v15;
    v17 = 0;
    v18 = -2.0;
    v73 = v15;
    v74 = v14;
    while (1)
    {
      v19 = [(AKTSDBezierPath *)self elementAtIndex:v17 associatedPoints:&v79, *&v73, *&v74];
      if (v19 == 3)
      {
        break;
      }

      v20 = v19;
      if (v19 == 2)
      {
        v75 = v6;
        v76 = v5;
        v21 = line->x;
        v22 = sub_23F4659D0(line[1].x, line[1].y, line->x);
        v24 = sub_23F465A1C(v22, v23);
        v26 = v25;
        v27 = sub_23F4659D0(v78.f64[0], v78.f64[1], v21);
        v29 = sub_23F465A1C(v27, v28);
        v31 = sub_23F465A3C(v24, v26, v29, v30);
        v83.f64[0] = 0.0;
        v83.f64[1] = v31;
        v32 = sub_23F4659D0(v79.f64[0], v79.f64[1], v21);
        v34 = sub_23F465A1C(v32, v33);
        v36 = sub_23F465A3C(v24, v26, v34, v35);
        v84 = 0x3FD5555555555555;
        v85 = v36;
        v37 = sub_23F4659D0(v80, v81, v21);
        v39 = sub_23F465A1C(v37, v38);
        v41 = sub_23F465A3C(v24, v26, v39, v40);
        v86 = 0x3FE5555555555555;
        v87 = v41;
        v42 = sub_23F4659D0(v82[0], v82[1], v21);
        v44 = sub_23F465A1C(v42, v43);
        v46 = sub_23F465A3C(v24, v26, v44, v45);
        v88 = 0x3FF0000000000000;
        v89 = v46;
        v47 = v36 * 9.0 + v31 * -3.0 + v41 * -9.0 + v46 * 3.0;
        v48 = v36 * -12.0 + v31 * 6.0 + v41 * 6.0;
        v49 = sqrt((v36 * 3.0 + v31 * -3.0) * (v47 * -4.0) + v48 * v48);
        v50 = (-v48 - v49) / (v47 + v47);
        v51 = sub_23F49FBB8(&v83, (v49 - v48) / (v47 + v47));
        v53 = v52;
        v54 = sub_23F49FBB8(&v83, v50);
        if ((v54 < 0.0 || v53 > v55 || v54 > 1.0) && v51 >= 0.0 && v51 <= 1.0)
        {
          v6 = v75;
          v5 = v76;
          goto LABEL_24;
        }

        v60 = v54 < 0.0 || v54 > 1.0;
        v6 = v75;
        v5 = v76;
        if (v60)
        {
          v61 = -2.0;
          v62 = 0.0;
          v63 = 0.0;
          v16 = v73;
          v14 = v74;
        }

        else
        {
          v51 = v54;
          v53 = v55;
LABEL_24:
          v16 = v73;
          v14 = v74;
          v62 = sub_23F49FBB8(&v78, v51);
          v64 = v53;
          v61 = fabsf(v64);
        }

        if (v18 < v61)
        {
          v18 = v61;
          v6 = v63;
          v5 = v62;
        }

        v59 = v82;
LABEL_28:
        v79 = *v59;
        v20 = 2;
      }

      v65 = v79;
      v66 = sub_23F4659D0(v79.f64[0], v79.f64[1], line->x);
      v68 = sub_23F465A1C(v66, v67);
      v70 = sub_23F465A3C(v14, v16, v68, v69);
      if (v18 < v70)
      {
        v18 = v70;
        v6 = v65.f64[1];
        v5 = v65.f64[0];
      }

      v78 = v79;
      if (!v20)
      {
        v77 = v79;
      }

      if (v11 == ++v17)
      {
        goto LABEL_34;
      }
    }

    v59 = &v77;
    goto LABEL_28;
  }

LABEL_34:
  v71 = v5;
  v72 = v6;
  result.y = v72;
  result.x = v71;
  return result;
}

- (int64_t)elementPercentage:(float *)percentage forOverallPercentage:(float)overallPercentage
{
  [(AKTSDBezierPath *)self length];
  v8 = v7;
  if (overallPercentage < 0.0)
  {
    v9 = 0;
    do
    {
      [(AKTSDBezierPath *)self lengthOfElement:++v9];
    }

    while (v10 == 0.0);
    [(AKTSDBezierPath *)self lengthOfElement:v9];
    v12 = (v8 * overallPercentage) / v11;
LABEL_12:
    v19 = v12;
    goto LABEL_13;
  }

  v13 = v8 * overallPercentage;
  elementCount = [(AKTSDBezierPath *)self elementCount];
  if (elementCount < 2)
  {
LABEL_9:
    v9 = elementCount;
    do
    {
      [(AKTSDBezierPath *)self lengthOfElement:--v9];
    }

    while (v17 == 0.0);
    [(AKTSDBezierPath *)self lengthOfElement:v9];
    v12 = v13 / v18 + 1.0;
    goto LABEL_12;
  }

  v9 = 1;
  while (1)
  {
    [(AKTSDBezierPath *)self lengthOfElement:v9];
    v16 = v15;
    v13 = v13 - v16;
    if (v13 < 0.0)
    {
      break;
    }

    if (elementCount == ++v9)
    {
      goto LABEL_9;
    }
  }

  v19 = (v13 + v16) / v16;
LABEL_13:
  *percentage = v19;
  return v9;
}

- (CGPoint)pointAt:(double)at fromElement:(int64_t)element
{
  v33 = *MEMORY[0x277D85DE8];
  v27 = *MEMORY[0x277CBF348];
  v6 = [(AKTSDBezierPath *)self elementAtIndex:element allPoints:&v29];
  if (v6 <= 1)
  {
    if (!v6)
    {
      v9 = v29;
      goto LABEL_16;
    }

    _ZF = v6 == 1;
    goto LABEL_6;
  }

  if (v6 != 2)
  {
    _ZF = v6 == 3;
LABEL_6:
    v9 = v27;
    if (!_ZF)
    {
      goto LABEL_16;
    }

    atCopy = 1.0 - at;
    v11 = v29;
    v12 = vmulq_n_f64(v30, at);
    goto LABEL_9;
  }

  atCopy = at;
  if (at < 0.0)
  {
    *&v7 = at;
    [(AKTSDBezierPath *)self rawGradientAt:element fromElement:v7];
    v15 = sub_23F4659DC(v13, v14, at);
    v17 = v29.f64[1];
    v16 = v29.f64[0];
LABEL_15:
    v9.f64[0] = sub_23F4659C4(v16, v17, v15);
    v9.f64[1] = v21;
    goto LABEL_16;
  }

  v18 = 1.0;
  if (at > 1.0)
  {
    *&v18 = at;
    [(AKTSDBezierPath *)self rawGradientAt:element fromElement:v18];
    v15 = sub_23F4659DC(v19, v20, at + -1.0);
    v17 = v32.f64[1];
    v16 = v32.f64[0];
    goto LABEL_15;
  }

  __asm { FMOV            V3.2D, #3.0 }

  v12 = vmlaq_n_f64(vmlaq_n_f64(vmulq_n_f64(vmulq_n_f64(vmulq_n_f64(vmulq_f64(v30, _Q3), at), 1.0 - at), 1.0 - at), vmulq_n_f64(vmulq_n_f64(v29, 1.0 - at), 1.0 - at), 1.0 - at), vmulq_n_f64(vmulq_n_f64(vmulq_f64(v31, _Q3), at), at), 1.0 - at);
  v11 = vmulq_n_f64(vmulq_n_f64(v32, at), at);
LABEL_9:
  v9 = vmlaq_n_f64(v12, v11, atCopy);
LABEL_16:
  v22 = v9.f64[1];
  result.x = v9.f64[0];
  result.y = v22;
  return result;
}

- (CGPoint)gradientAt:(double)at fromElement:(int64_t)element
{
  *&at = at;
  [(AKTSDBezierPath *)self rawGradientAt:element fromElement:at];
  v6 = v4 * v4 + v5 * v5;
  v7 = (1.0 / sqrtf(v6));
  v8 = v5 * v7;
  v9 = v4 * v7;
  result.y = v9;
  result.x = v8;
  return result;
}

- (CGPoint)gradientAt:(float)at
{
  v7 = 0.0;
  v4 = [(AKTSDBezierPath *)self elementPercentage:&v7 forOverallPercentage:?];
  [(AKTSDBezierPath *)self gradientAt:v4 fromElement:v7];
  result.y = v6;
  result.x = v5;
  return result;
}

- (CGPoint)transformedCoordinate:(CGPoint)coordinate withPressure:(id)pressure
{
  y = coordinate.y;
  x = coordinate.x;
  pressureCopy = pressure;
  v26 = 0.0;
  *&v8 = x;
  v9 = [(AKTSDBezierPath *)self elementPercentage:&v26 forOverallPercentage:v8];
  [(AKTSDBezierPath *)self pointAt:v9 fromElement:v26];
  v11 = v10;
  v13 = v12;
  [(AKTSDBezierPath *)self gradientAt:v9 fromElement:v26];
  v15 = v14;
  v17 = v16;
  [(AKTSDBezierPath *)self lineWidth];
  v19 = v18;
  if (pressureCopy)
  {
    [pressureCopy pressureAt:x];
  }

  else
  {
    v20 = 1.0;
  }

  v21 = y * (v19 * v20);
  v22 = v11 - v17 * v21;
  v23 = v13 + v15 * v21;

  v24 = v22;
  v25 = v23;
  result.y = v25;
  result.x = v24;
  return result;
}

- (CGPoint)transformedTotalCoordinate:(CGPoint)coordinate inElement:(int64_t)element withPressure:(id)pressure
{
  y = coordinate.y;
  x = coordinate.x;
  pressureCopy = pressure;
  *&v10 = x;
  [(AKTSDBezierPath *)self elementPercentageFromElement:element forOverallPercentage:v10];
  v12 = v11;
  [(AKTSDBezierPath *)self pointAt:element fromElement:v11];
  v14 = v13;
  v16 = v15;
  [(AKTSDBezierPath *)self gradientAt:element fromElement:v12];
  v18 = v17;
  v20 = v19;
  [(AKTSDBezierPath *)self lineWidth];
  v22 = v21;
  if (pressureCopy)
  {
    [pressureCopy pressureAt:x];
  }

  else
  {
    v23 = 1.0;
  }

  v24 = y * (v22 * v23);
  v25 = v14 - v20 * v24;
  v26 = v16 + v18 * v24;

  v27 = v25;
  v28 = v26;
  result.y = v28;
  result.x = v27;
  return result;
}

- (CGPoint)transformedTotalCoordinate:(CGPoint)coordinate betweenElement:(int64_t)element andElement:(int64_t)andElement withPressure:(id)pressure getElement:(int64_t *)getElement getPercentage:(float *)percentage
{
  y = coordinate.y;
  x = coordinate.x;
  pressureCopy = pressure;
  v37 = 0.0;
  v16 = x;
  *&v17 = v16;
  v18 = [(AKTSDBezierPath *)self elementPercentage:&v37 forOverallPercentage:v17];
  if (v18 >= element)
  {
    if (v18 <= andElement)
    {
      v20 = v37;
      element = v18;
    }

    else
    {
      *&v19 = x;
      [(AKTSDBezierPath *)self elementPercentageFromElement:andElement forOverallPercentage:v19];
      v37 = v20;
      element = andElement;
    }
  }

  else
  {
    *&v19 = x;
    [(AKTSDBezierPath *)self elementPercentageFromElement:element forOverallPercentage:v19];
    v37 = v20;
  }

  [(AKTSDBezierPath *)self pointAt:element fromElement:v20];
  v22 = v21;
  v24 = v23;
  [(AKTSDBezierPath *)self gradientAt:element fromElement:v37];
  v26 = v25;
  v28 = v27;
  [(AKTSDBezierPath *)self lineWidth];
  v30 = v29;
  if (pressureCopy)
  {
    [pressureCopy pressureAt:x];
  }

  else
  {
    v31 = 1.0;
  }

  v32 = y * (v30 * v31);
  v33 = v22 - v28 * v32;
  v34 = v24 + v26 * v32;
  *getElement = element;
  *percentage = v37;

  v35 = v33;
  v36 = v34;
  result.y = v36;
  result.x = v35;
  return result;
}

- (float)elementPercentageFromElement:(int)element forOverallPercentage:(float)percentage
{
  [(AKTSDBezierPath *)self length];
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
      [(AKTSDBezierPath *)self lengthOfElement:v9];
      v10 = v11 + v10;
      ++v9;
    }

    while (element != v9);
  }

  v12 = v8 * percentage;
  v13 = (v12 - v10);
  [(AKTSDBezierPath *)self lengthOfElement:element];
  return v13 / v14;
}

- (CGPoint)rawGradientAt:(float)at fromElement:(int64_t)element
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = *MEMORY[0x277CBF348];
  v5 = [(AKTSDBezierPath *)self elementAtIndex:element allPoints:&v16];
  if (v5 <= 1)
  {
    if (!v5)
    {
      NSLog(&cfstr_GaCanTHandleMo.isa);
      v7 = v15;
      goto LABEL_15;
    }

    _ZF = v5 == 1;
    goto LABEL_6;
  }

  if (v5 != 2)
  {
    _ZF = v5 == 3;
LABEL_6:
    v7 = v15;
    if (_ZF)
    {
      v7 = vsubq_f64(v17, v16);
    }

    goto LABEL_15;
  }

  atCopy = 0.01;
  if (at >= 0.01)
  {
    atCopy = at;
  }

  if (atCopy > 0.99)
  {
    atCopy = 0.99;
  }

  __asm
  {
    FMOV            V4.2D, #-3.0
    FMOV            V5.2D, #3.0
  }

  v7 = vmlaq_n_f64(vmlaq_n_f64(vmlaq_n_f64(vmulq_n_f64(vmulq_f64(v17, _Q5), (((atCopy * -4.0) + 1.0) + ((atCopy * 3.0) * atCopy))), vmulq_n_f64(vmulq_f64(v16, _Q4), (atCopy + -1.0)), (atCopy + -1.0)), vmulq_n_f64(vmulq_f64(v18, _Q5), atCopy), ((atCopy * -3.0) + 2.0)), vmulq_n_f64(vmulq_f64(v19, _Q5), atCopy), atCopy);
LABEL_15:
  v14 = v7.f64[1];
  result.x = v7.f64[0];
  result.y = v14;
  return result;
}

- (CGPoint)myGradientAt:(float)at
{
  v15 = 0;
  v4 = [(AKTSDBezierPath *)self elementPercentage:&v15 forOverallPercentage:?];
  LODWORD(v5) = v15;
  [(AKTSDBezierPath *)self rawGradientAt:v4 fromElement:v5];
  v7 = v6;
  v9 = v8;
  [(AKTSDBezierPath *)self length];
  v11 = v10;
  [(AKTSDBezierPath *)self lengthOfElement:v4];
  v13 = sub_23F4659DC(v7, v9, v11 / v12);
  result.y = v14;
  result.x = v13;
  return result;
}

- (CGPoint)myGradientAt:(float)at fromElement:(int64_t)element
{
  [AKTSDBezierPath rawGradientAt:"rawGradientAt:fromElement:" fromElement:?];
  v7 = v6;
  v9 = v8;
  [(AKTSDBezierPath *)self length];
  v11 = v10;
  [(AKTSDBezierPath *)self lengthOfElement:element];

  v13 = sub_23F4659DC(v7, v9, v11 / v12);
  result.y = v14;
  result.x = v13;
  return result;
}

- (float)curvatureAt:(float)at
{
  v8 = 0.0;
  v4 = [(AKTSDBezierPath *)self elementPercentage:&v8 forOverallPercentage:?];
  [(AKTSDBezierPath *)self curvatureAt:v4 fromElement:v8];
  v6 = v5;
  result = 0.5;
  if (v6 <= 0.5)
  {
    result = -0.5;
    if (v6 >= -0.5)
    {
      return v6;
    }
  }

  return result;
}

- (double)curvatureAt:(double)at fromElement:(int)element
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = [(AKTSDBezierPath *)self elementAtIndex:element allPoints:&v13];
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

    v8 = (atCopy * (atCopy * (v19 - v17) + (1.0 - atCopy) * (v17 - v15)) + (1.0 - atCopy) * (atCopy * (v17 - v15) + (1.0 - atCopy) * (v15 - v13))) * 3.0;
    v9 = (atCopy * (atCopy * (v20 - v18) + (1.0 - atCopy) * (v18 - v16)) + (1.0 - atCopy) * (atCopy * (v18 - v16) + (1.0 - atCopy) * (v16 - v14))) * 3.0;
    v10 = v8 * ((atCopy * (v20 - v18 - (v18 - v16)) + (1.0 - atCopy) * (v18 - v16 - (v16 - v14))) * 6.0) - v9 * ((atCopy * (v19 - v17 - (v17 - v15)) + (1.0 - atCopy) * (v17 - v15 - (v15 - v13))) * 6.0);
    return (v10 / pow(v9 * v9 + v8 * v8, 1.5));
  }

  else
  {
    v6 = 0.0;
    if (!v5)
    {
      NSLog(&cfstr_CaCanTHandleMo.isa);
    }
  }

  return v6;
}

- (void)recursiveSubdivideOntoPath:(id)path into:(id)into
{
  intoCopy = into;
  pathCopy = path;
  -[AKTSDBezierPath recursiveSubdivideOntoPath:withScaling:inElementRange:into:](self, "recursiveSubdivideOntoPath:withScaling:inElementRange:into:", pathCopy, 0, [pathCopy elementCount] - 1, intoCopy, 0.0, 1.0);
}

- (void)recursiveSubdivideOntoPath:(id)path withScaling:(id)scaling into:(id)into
{
  var1 = scaling.var1;
  var0 = scaling.var0;
  intoCopy = into;
  pathCopy = path;
  -[AKTSDBezierPath recursiveSubdivideOntoPath:withScaling:inElementRange:into:](self, "recursiveSubdivideOntoPath:withScaling:inElementRange:into:", pathCopy, 0, [pathCopy elementCount] - 1, intoCopy, var0, var1);
}

- (void)recursiveSubdivideOntoPath:(id)path withScaling:(id)scaling inElementRange:(_NSRange)range into:(id)into
{
  length = range.length;
  location = range.location;
  var1 = scaling.var1;
  var0 = scaling.var0;
  v87 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  intoCopy = into;
  v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v14 = [AKTSDPathCut alloc];
  [pathCopy lengthToElement:location];
  v16 = v15;
  [pathCopy length];
  v18 = [(AKTSDPathCut *)v14 initWithSegment:location atT:v16 / v17 withSkew:0.0];
  [v13 addObject:v18];
  [pathCopy miterLimit];
  v20 = location + length;
  v21 = location + 1;
  if (v21 >= v20)
  {
    if (!v20)
    {
      v51 = 1;
      goto LABEL_20;
    }

    v75 = var1;
  }

  else
  {
    v75 = var1;
    v74 = v19 * 0.995;
    v22 = length - 1;
    do
    {
      v23 = v21 + 1;
      [pathCopy lengthOfElement:v21 + 1];
      if (v19 >= 0.1)
      {
        [pathCopy lengthOfElement:v21];
        if (v19 >= 0.1)
        {
          [pathCopy gradientAt:v21 fromElement:1.0];
          v26 = sub_23F465A1C(v24, v25);
          v28 = v27;
          [pathCopy gradientAt:v21 + 1 fromElement:0.0];
          v31 = sub_23F465A1C(v29, v30);
          v33 = v32;
          v34 = sub_23F465A3C(v26, v28, v31, v32);
          v19 = v34;
          if (v34 < 0.99)
          {
            [pathCopy lengthToElement:{v21 + 1, v19}];
            v76 = v35;
            [pathCopy length];
            v37 = v36;
            v38 = 0.0;
            if (v23 < v20)
            {
              v39 = sub_23F4659DC(v31, v33, -1.0);
              v40 = sub_23F4659C4(v26, v28, v39);
              v42 = v41;
              v43 = -sub_23F465A3C(v26, v28, v40, v41);
              v44 = sub_23F465A94(0, v26, v28);
              v46 = v43 / sub_23F465A3C(v40, v42, v44, v45);
              v47 = fmin(fmax(-v34, -1.0), 1.0);
              v48 = acosf(v47);
              if (1.0 / sinf(v48 * 0.5) <= v74)
              {
                v38 = v46;
              }

              else
              {
                v38 = 0.0;
              }
            }

            v49 = v76 / v37;
            v50 = [[AKTSDPathCut alloc] initWithSegment:v21 atT:v49 withSkew:v38];

            [v13 addObject:v50];
            v18 = v50;
          }
        }
      }

      v21 = v23;
      --v22;
    }

    while (v22);
  }

  var1 = v75;
  do
  {
    [pathCopy lengthOfElement:{v20, v19}];
    v51 = v19 < 0.1;
    if (v19 >= 0.1)
    {
      break;
    }

    --v20;
  }

  while (v20);
LABEL_20:
  v52 = [AKTSDPathCut alloc];
  [pathCopy lengthToElement:v20 + 1];
  v54 = v53;
  [pathCopy length];
  v56 = [(AKTSDPathCut *)v52 initWithSegment:v20 atT:v54 / v55 withSkew:0.0];

  [v13 addObject:v56];
  if (!v51)
  {
    v77 = v56;
    v81 = *MEMORY[0x277CBF348];
    elementCount = [(AKTSDBezierPath *)self elementCount];
    v58 = var0;
    if (elementCount)
    {
      v59 = elementCount;
      v60 = 0;
      v61 = 0;
      do
      {
        v62 = [(AKTSDBezierPath *)self elementAtIndex:v60 associatedPoints:&v83];
        v63 = v62 == 0;
        if (v62)
        {
          v64 = v62;
          if (v62 == 2)
          {
            v83.f64[0] = v58 + v83.f64[0] * var1;
            v84 = v58 + v84 * var1;
            v86.f64[0] = v58 + v86.f64[0] * var1;
            v79 = v86;
            sub_23F4A2368(&v82, pathCopy, 0, intoCopy, v61, v13);
            v82 = v79;
          }

          else
          {
            if (v62 == 3)
            {
              v83 = v81;
              v65 = v81;
            }

            else
            {
              v65.f64[0] = v58 + v83.f64[0] * var1;
              v83.f64[0] = v65.f64[0];
            }

            v66 = v82;
            v67 = sub_23F4659D0(v65.f64[0], v83.f64[1], v82.f64[0]);
            v69 = v68;
            v86 = v83;
            v70 = sub_23F4659DC(v67, v68, 0.33);
            v83.f64[0] = sub_23F4659C4(v66.f64[0], v66.f64[1], v70);
            v83.f64[1] = v71;
            v72 = sub_23F4659DC(v67, v69, 0.66);
            v84 = sub_23F4659C4(v66.f64[0], v66.f64[1], v72);
            v85 = v73;
            v80 = v86;
            sub_23F4A2368(&v82, pathCopy, 0, intoCopy, v61, v13);
            v82 = v80;
            if (v64 == 3)
            {
              [intoCopy closePath];
            }

            v58 = var0;
          }
        }

        else
        {
          v83.f64[0] = v58 + v83.f64[0] * var1;
          v81 = v83;
          v82 = v83;
        }

        ++v60;
        v61 = v63;
      }

      while (v59 != v60);
    }

    v56 = v77;
  }
}

- (id)chisel
{
  v113 = *MEMORY[0x277D85DE8];
  v3 = +[AKTSDBezierPath bezierPath];
  [(AKTSDBezierPath *)self lineWidth];
  v5 = v4 * 0.5;
  elementCount = [(AKTSDBezierPath *)self elementCount];
  if (!elementCount)
  {
    v9 = 1;
    v51 = -1;
    goto LABEL_58;
  }

  v7 = elementCount;
  v8 = 0;
  v9 = 1;
  v10 = 9.0;
  do
  {
    v11 = v9;
    v12 = [(AKTSDBezierPath *)self elementAtIndex:v8 allPoints:&v106];
    v9 = v12 == 0;
    if (!v12)
    {
      goto LABEL_54;
    }

    v13 = v12;
    [(AKTSDBezierPath *)self rawGradientAt:v8 fromElement:0.0];
    if (v14 <= 0.0)
    {
      v15 = -v5;
    }

    else
    {
      v15 = v5;
    }

    if (v13 == 2)
    {
      v16 = v106.f64[0];
      v17 = v107;
      v18 = v109;
      v19 = v111;
      v20 = (((v17 * v10) + (v16 * -3.0)) + (v18 * -9.0)) + (v19 * 3.0);
      v21 = ((v17 * -12.0) + (v16 * 6.0)) + (v18 * 6.0);
      v22 = (v17 * 3.0) + (v16 * -3.0);
      v23 = (v22 * (v20 * -4.0)) + (v21 * v21);
      if (v23 <= 0.0)
      {
        v36 = v15;
        v37 = v106.f64[1] + v15;
        if (v11)
        {
          [v3 moveToPoint:{v106.f64[0], v37}];
        }

        else
        {
          [v3 lineToPoint:{v106.f64[0], v37}];
        }

        v38 = v111;
        v39 = v112 + v36;
        v40 = v107;
        v41 = v108 + v36;
        v42 = v109;
        v43 = v110;
        goto LABEL_53;
      }

      v24 = sqrtf(v23);
      v25 = (-v21 - v24) / (v20 + v20);
      v26 = (v24 - v21) / (v20 + v20);
      if (v26 >= v25)
      {
        v27 = v26;
      }

      else
      {
        v27 = v25;
      }

      if (v26 < v25)
      {
        v25 = v26;
      }

      v28 = fabsf(v20);
      v29 = -v22 / v21;
      if (v28 <= 0.001)
      {
        v30 = 10.0;
      }

      else
      {
        v30 = v27;
      }

      if (v28 <= 0.001)
      {
        v25 = v29;
      }

      v31 = 0.0;
      if (v25 > 0.0 && v25 < 1.0)
      {
        v31 = v25;
        sub_23F49FC10(&v106, &v98, 0.0, v25);
        v33 = v15;
        v34 = v99 + v33;
        if (v11)
        {
          [v3 moveToPoint:{v98, v34}];
        }

        else
        {
          [v3 lineToPoint:{v98, v34}];
        }

        [v3 curveToPoint:v104 controlPoint1:v105 + v33 controlPoint2:{v100, v101 + v33, v102, v103 + v33}];
        v44 = v31 + 0.01;
        *&v44 = v31 + 0.01;
        [(AKTSDBezierPath *)self rawGradientAt:v8 fromElement:v44];
        v11 = 0;
        if (v45 <= 0.0)
        {
          v15 = -v5;
        }

        else
        {
          v15 = v5;
        }
      }

      if (v30 > 0.0 && v30 < 1.0)
      {
        v47 = v30;
        sub_23F49FC10(&v106, &v98, v31, v47);
        v48 = v99 + v15;
        if (v11)
        {
          [v3 moveToPoint:{v98, v48}];
        }

        else
        {
          [v3 lineToPoint:{v98, v48}];
        }

        [v3 curveToPoint:v104 controlPoint1:v105 + v15 controlPoint2:{v100, v101 + v15, v102, v103 + v15}];
        v49 = v47 + 0.01;
        *&v49 = v47 + 0.01;
        [(AKTSDBezierPath *)self rawGradientAt:v8 fromElement:v49];
        if (v50 <= 0.0)
        {
          v15 = -v5;
        }

        else
        {
          v15 = v5;
        }

        sub_23F49FC10(&v106, &v98, v47, 1.0);
      }

      else
      {
        sub_23F49FC10(&v106, &v98, v31, 1.0);
        if (v11)
        {
          v36 = v15;
          [v3 moveToPoint:{v98, v99 + v15}];
          v10 = 9.0;
LABEL_52:
          v38 = v104;
          v39 = v105 + v36;
          v40 = v100;
          v41 = v101 + v36;
          v42 = v102;
          v43 = v103;
LABEL_53:
          [v3 curveToPoint:v38 controlPoint1:v39 controlPoint2:{v40, v41, v42, v43 + v36}];
          goto LABEL_54;
        }
      }

      v10 = 9.0;
      v36 = v15;
      [v3 lineToPoint:{v98, v99 + v15}];
      goto LABEL_52;
    }

    v35 = v106.f64[1] + v15;
    if (v11)
    {
      [v3 moveToPoint:{v106.f64[0], v35}];
    }

    else
    {
      [v3 lineToPoint:{v106.f64[0], v35}];
    }

    [v3 lineToPoint:{v107, v108 + v15}];
LABEL_54:
    ++v8;
  }

  while (v7 != v8);
  v51 = v7 - 1;
  if (v51)
  {
LABEL_58:
    if (*MEMORY[0x277CBF348] >= 0.0)
    {
      v52 = -v5;
    }

    else
    {
      v52 = v5;
    }

    v53 = v52;
    v54 = 9.0;
    do
    {
      v55 = [(AKTSDBezierPath *)self elementAtIndex:v51 allPoints:&v106];
      v57 = v55 == 0;
      if (v55)
      {
        v58 = v55;
        LODWORD(v56) = 1.0;
        [(AKTSDBezierPath *)self rawGradientAt:v51 fromElement:v56];
        if (v59 >= 0.0)
        {
          v60 = -v5;
        }

        else
        {
          v60 = v5;
        }

        if (v58 == 2)
        {
          v61 = v106.f64[0];
          v62 = v107;
          v63 = v109;
          v64 = v111;
          v65 = (((v62 * v54) + (v61 * -3.0)) + (v63 * -9.0)) + (v64 * 3.0);
          v66 = ((v62 * -12.0) + (v61 * 6.0)) + (v63 * 6.0);
          v67 = (v62 * 3.0) + (v61 * -3.0);
          v68 = (v67 * (v65 * -4.0)) + (v66 * v66);
          if (v68 <= 0.0)
          {
            v83 = v60;
            if (v9)
            {
              [v3 moveToPoint:?];
            }

            else
            {
              [v3 lineToPoint:?];
            }

            v84 = v106.f64[0];
            v85 = v106.f64[1] + v83;
            v86 = v109;
            v87 = v110 + v83;
            v88 = v107;
            v89 = v108;
          }

          else
          {
            v69 = sqrtf(v68);
            v70 = (-v66 - v69) / (v65 + v65);
            v71 = (v69 - v66) / (v65 + v65);
            if (v71 <= v70)
            {
              v72 = v71;
            }

            else
            {
              v72 = v70;
            }

            if (v71 > v70)
            {
              v70 = v71;
            }

            v73 = fabsf(v65);
            v74 = -v67 / v66;
            if (v73 <= 0.001)
            {
              v75 = 10.0;
            }

            else
            {
              v75 = v72;
            }

            if (v73 <= 0.001)
            {
              v70 = v74;
            }

            v76 = 1.0;
            if (v70 > 0.0 && v70 < 1.0)
            {
              v76 = v70;
              sub_23F49FC10(&v106, &v98, v70, 1.0);
              v78 = v60;
              v79 = v105 + v78;
              if (v9)
              {
                [v3 moveToPoint:{v104, v79}];
              }

              else
              {
                [v3 lineToPoint:{v104, v79}];
              }

              [v3 curveToPoint:v98 controlPoint1:v99 + v78 controlPoint2:{v102, v103 + v78, v100, v101 + v78}];
              v90 = v76 + -0.01;
              *&v90 = v76 + -0.01;
              [(AKTSDBezierPath *)self rawGradientAt:v51 fromElement:v90];
              v9 = 0;
              if (v91 >= 0.0)
              {
                v60 = -v5;
              }

              else
              {
                v60 = v5;
              }
            }

            if (v75 > 0.0 && v75 < 1.0)
            {
              v93 = v75;
              sub_23F49FC10(&v106, &v98, v93, v76);
              v94 = v105 + v60;
              if (v9)
              {
                [v3 moveToPoint:{v104, v94}];
              }

              else
              {
                [v3 lineToPoint:{v104, v94}];
              }

              [v3 curveToPoint:v98 controlPoint1:v99 + v60 controlPoint2:{v102, v103 + v60, v100, v101 + v60}];
              v95 = v93 + -0.01;
              *&v95 = v93 + -0.01;
              [(AKTSDBezierPath *)self rawGradientAt:v51 fromElement:v95];
              if (v96 >= 0.0)
              {
                v60 = -v5;
              }

              else
              {
                v60 = v5;
              }

              sub_23F49FC10(&v106, &v98, 0.0, v93);
            }

            else
            {
              sub_23F49FC10(&v106, &v98, 0.0, v76);
              if (v9)
              {
                v83 = v60;
                [v3 moveToPoint:{v104, v105 + v60}];
                v54 = 9.0;
                goto LABEL_113;
              }
            }

            v54 = 9.0;
            v83 = v60;
            [v3 lineToPoint:{v104, v105 + v60}];
LABEL_113:
            v84 = v98;
            v85 = v99 + v83;
            v86 = v102;
            v87 = v103 + v83;
            v88 = v100;
            v89 = v101;
          }

          [v3 curveToPoint:v84 controlPoint1:v85 controlPoint2:{v86, v87, v88, v89 + v83}];
          goto LABEL_115;
        }

        v82 = v108 + v60;
        if (v9)
        {
          [v3 moveToPoint:{v107, v82}];
        }

        else
        {
          [v3 lineToPoint:{v107, v82}];
        }

        v80 = v106.f64[0];
        v81 = v106.f64[1] + v60;
      }

      else
      {
        v80 = v106.f64[0];
        v81 = v106.f64[1] - v53;
      }

      [v3 lineToPoint:{v80, v81}];
LABEL_115:
      v9 = v57;
      --v51;
    }

    while (v51);
  }

  return v3;
}

@end