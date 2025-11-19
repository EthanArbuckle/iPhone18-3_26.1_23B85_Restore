@interface AKTSDBezierPath
+ (id)bezierPath;
+ (id)bezierPathWithCGPath:(CGPath *)a3;
+ (id)bezierPathWithOvalInRect:(CGRect)a3;
+ (id)bezierPathWithRect:(CGRect)a3;
+ (id)bezierPathWithStart:(CGPoint)a3 end:(CGPoint)a4;
+ (void)clipRect:(CGRect)a3;
+ (void)fillRect:(CGRect)a3;
+ (void)initialize;
+ (void)strokeLineFromPoint:(CGPoint)a3 toPoint:(CGPoint)a4;
+ (void)strokeRect:(CGRect)a3;
- (AKTSDBezierPath)init;
- (AKTSDBezierPath)initWithCString:(const char *)a3;
- (AKTSDBezierPath)initWithCoder:(id)a3;
- (BOOL)containsPoint:(CGPoint)a3;
- (BOOL)isClockwise;
- (BOOL)isFlat;
- (CGPoint)currentPoint;
- (CGPoint)gradientAt:(double)a3 fromElement:(int64_t)a4;
- (CGPoint)gradientAt:(float)a3;
- (CGPoint)myGradientAt:(float)a3;
- (CGPoint)myGradientAt:(float)a3 fromElement:(int64_t)a4;
- (CGPoint)nearestAngleOnPathToLine:(CGPoint)a3[2];
- (CGPoint)nearestPointOnPathToLine:(CGPoint)a3[2];
- (CGPoint)pointAt:(double)a3 fromElement:(int64_t)a4;
- (CGPoint)rawGradientAt:(float)a3 fromElement:(int64_t)a4;
- (CGPoint)transformedCoordinate:(CGPoint)a3 withPressure:(id)a4;
- (CGPoint)transformedTotalCoordinate:(CGPoint)a3 betweenElement:(int64_t)a4 andElement:(int64_t)a5 withPressure:(id)a6 getElement:(int64_t *)a7 getPercentage:(float *)a8;
- (CGPoint)transformedTotalCoordinate:(CGPoint)a3 inElement:(int64_t)a4 withPressure:(id)a5;
- (CGRect)bounds;
- (CGRect)controlPointBounds;
- (const)cString;
- (double)calculateLengthOfElement:(int64_t)a3;
- (double)curvatureAt:(double)a3 fromElement:(int)a4;
- (double)length;
- (double)lengthOfElement:(int64_t)a3;
- (double)lengthToElement:(int64_t)a3;
- (float)curvatureAt:(float)a3;
- (float)elementPercentageFromElement:(int)a3 forOverallPercentage:(float)a4;
- (id)_copyFlattenedPath;
- (id)bezierPathByFlatteningPath;
- (id)bezierPathByReversingPath;
- (id)chisel;
- (id)copyFromSegment:(int)a3 t:(float)a4 toSegment:(int)a5 t:(float)a6;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (int64_t)elementPercentage:(float *)a3 forOverallPercentage:(float)a4;
- (unint64_t)elementAtIndex:(int64_t)a3 allPoints:(CGPoint *)a4;
- (unint64_t)elementAtIndex:(int64_t)a3 associatedPoints:(CGPoint *)a4;
- (void)_addPathSegment:(int64_t)a3 point:(CGPoint)a4;
- (void)_appendArcSegmentWithCenter:(CGPoint)a3 radius:(double)a4 angle1:(double)a5 angle2:(double)a6;
- (void)_appendToPath:(id)a3;
- (void)_deviceClosePath;
- (void)_deviceCurveToPoint:(CGPoint)a3 controlPoint1:(CGPoint)a4 controlPoint2:(CGPoint)a5;
- (void)_deviceMoveToPoint:(CGPoint)a3;
- (void)_doPath;
- (void)addClip;
- (void)addIntersectionsWithLine:(CGPoint)a3[2] to:(id)a4;
- (void)addIntersectionsWithPath:(id)a3 to:(id)a4 allIntersections:(BOOL)a5 reversed:(BOOL)a6;
- (void)appendBezierPath:(id)a3;
- (void)appendBezierPath:(id)a3 fromSegment:(int64_t)a4 t:(double)a5 toSegment:(int64_t)a6 t:(double)a7 withoutMove:(BOOL)a8;
- (void)appendBezierPath:(id)a3 fromSegment:(int64_t)a4 toSegment:(int64_t)a5;
- (void)appendBezierPathWithArcFromPoint:(CGPoint)a3 toPoint:(CGPoint)a4 radius:(double)a5;
- (void)appendBezierPathWithArcWithCenter:(CGPoint)a3 radius:(double)a4 startAngle:(double)a5 endAngle:(double)a6 clockwise:(BOOL)a7;
- (void)appendBezierPathWithOvalInRect:(CGRect)a3;
- (void)appendBezierPathWithPoints:(CGPoint *)a3 count:(int64_t)a4;
- (void)appendBezierPathWithRect:(CGRect)a3;
- (void)calculateLengths;
- (void)curveToPoint:(CGPoint)a3 controlPoint1:(CGPoint)a4 controlPoint2:(CGPoint)a5;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)fill;
- (void)flattenIntoPath:(id)a3;
- (void)getLineDash:(double *)a3 count:(int64_t *)a4 phase:(double *)a5;
- (void)getStartPoint:(CGPoint *)a3 andEndPoint:(CGPoint *)a4;
- (void)lineToPoint:(CGPoint)a3;
- (void)recursiveSubdivideOntoPath:(id)a3 into:(id)a4;
- (void)recursiveSubdivideOntoPath:(id)a3 withScaling:(id)a4 inElementRange:(_NSRange)a5 into:(id)a6;
- (void)recursiveSubdivideOntoPath:(id)a3 withScaling:(id)a4 into:(id)a5;
- (void)relativeCurveToPoint:(CGPoint)a3 controlPoint1:(CGPoint)a4 controlPoint2:(CGPoint)a5;
- (void)relativeLineToPoint:(CGPoint)a3;
- (void)relativeMoveToPoint:(CGPoint)a3;
- (void)removeAllPoints;
- (void)setAssociatedPoints:(CGPoint *)a3 atIndex:(int64_t)a4;
- (void)setLineDash:(const double *)a3 count:(int64_t)a4 phase:(double)a5;
- (void)stroke;
- (void)subdivideBezierWithFlatness:(double)a3 startPoint:(CGPoint)a4 controlPoint1:(CGPoint)a5 controlPoint2:(CGPoint)a6 endPoint:(CGPoint)a7;
- (void)transformUsingAffineTransform:(CGAffineTransform *)a3;
@end

@implementation AKTSDBezierPath

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {

    MEMORY[0x2821F9670](AKTSDBezierPath, sel_setVersion_);
  }
}

+ (id)bezierPath
{
  v2 = objc_alloc_init(a1);

  return v2;
}

+ (id)bezierPathWithStart:(CGPoint)a3 end:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v6 = a3.y;
  v7 = a3.x;
  v8 = [a1 bezierPath];
  [v8 moveToPoint:{v7, v6}];
  [v8 lineToPoint:{x, y}];

  return v8;
}

+ (id)bezierPathWithRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = [a1 bezierPath];
  [v7 appendBezierPathWithRect:{x, y, width, height}];

  return v7;
}

+ (id)bezierPathWithOvalInRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = [a1 bezierPath];
  [v7 appendBezierPathWithOvalInRect:{x, y, width, height}];

  return v7;
}

+ (id)bezierPathWithCGPath:(CGPath *)a3
{
  v4 = [a1 bezierPath];
  CGPathApply(a3, v4, sub_23F425B4C);

  return v4;
}

+ (void)fillRect:(CGRect)a3
{
  if (a3.size.width >= 0.0)
  {
    height = a3.size.height;
    if (a3.size.height >= 0.0)
    {
      width = a3.size.width;
      y = a3.origin.y;
      x = a3.origin.x;
      CurrentContext = UIGraphicsGetCurrentContext();
      v8 = x;
      v9 = y;
      v10 = width;
      v11 = height;

      CGContextFillRect(CurrentContext, *&v8);
    }
  }
}

+ (void)strokeRect:(CGRect)a3
{
  if (a3.size.width >= 0.0)
  {
    height = a3.size.height;
    if (a3.size.height >= 0.0)
    {
      width = a3.size.width;
      y = a3.origin.y;
      x = a3.origin.x;
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

+ (void)clipRect:(CGRect)a3
{
  if (a3.size.width >= 0.0)
  {
    height = a3.size.height;
    if (a3.size.height >= 0.0)
    {
      width = a3.size.width;
      y = a3.origin.y;
      x = a3.origin.x;
      CurrentContext = UIGraphicsGetCurrentContext();
      v8 = x;
      v9 = y;
      v10 = width;
      v11 = height;

      CGContextClipToRect(CurrentContext, *&v8);
    }
  }
}

+ (void)strokeLineFromPoint:(CGPoint)a3 toPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v6 = a3.y;
  v7 = a3.x;
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

- (id)copyWithZone:(_NSZone *)a3
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

- (void)lineToPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  if ([(AKTSDBezierPath *)self isEmpty])
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE648] format:@"No current point for line"];
  }

  [(AKTSDBezierPath *)self _deviceLineToPoint:x, y];
}

- (void)curveToPoint:(CGPoint)a3 controlPoint1:(CGPoint)a4 controlPoint2:(CGPoint)a5
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

- (void)relativeMoveToPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  [(AKTSDBezierPath *)self currentPoint];
  v7 = x + v6;
  v9 = y + v8;

  [(AKTSDBezierPath *)self _deviceMoveToPoint:v7, v9];
}

- (void)relativeLineToPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  [(AKTSDBezierPath *)self currentPoint];
  v7 = x + v6;
  v9 = y + v8;

  [(AKTSDBezierPath *)self _deviceLineToPoint:v7, v9];
}

- (void)relativeCurveToPoint:(CGPoint)a3 controlPoint1:(CGPoint)a4 controlPoint2:(CGPoint)a5
{
  [(AKTSDBezierPath *)self currentPoint];

  MEMORY[0x2821F9670](self, sel__deviceCurveToPoint_controlPoint1_controlPoint2_);
}

- (void)setLineDash:(const double *)a3 count:(int64_t)a4 phase:(double)a5
{
  if (!a3)
  {
    goto LABEL_14;
  }

  v6 = a4;
  v7 = a4 < 0;
  if (a4 >= 0)
  {
    v8 = a4;
  }

  else
  {
    v8 = -a4;
  }

  if (a4 >= 0)
  {
    v9 = 8 * v8;
  }

  else
  {
    v9 = -8 * v8;
  }

  if (!(8 * v8))
  {
    v7 = 0;
  }

  if (v8 >> 61 || v7)
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
    v11 = a3;
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
    self->sfr_dashedLineCount = v6;
    self->sfr_dashedLinePhase = a5;
    if (v6 >= 1)
    {
      do
      {
        v16 = *v11++;
        *v13++ = v16;
        --v6;
      }

      while (v6);
    }
  }
}

- (void)getLineDash:(double *)a3 count:(int64_t *)a4 phase:(double *)a5
{
  if (a4)
  {
    *a4 = self->sfr_dashedLineCount;
  }

  if (a5)
  {
    *a5 = self->sfr_dashedLinePhase;
  }

  if (a3)
  {
    sfr_dashedLinePattern = self->sfr_dashedLinePattern;
    if (sfr_dashedLinePattern)
    {
      for (i = self->sfr_dashedLineCount; i; --i)
      {
        v7 = *sfr_dashedLinePattern++;
        *a3++ = v7;
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

- (void)subdivideBezierWithFlatness:(double)a3 startPoint:(CGPoint)a4 controlPoint1:(CGPoint)a5 controlPoint2:(CGPoint)a6 endPoint:(CGPoint)a7
{
  v8 = a4;
  a4.x = a7.x;
  *&v7 = a7.y;
  y = a5.y;
  v11 = vsubq_f64(a5, v8);
  v12 = a6.y;
  v38 = a4;
  v39 = v7;
  v13 = a7.y;
  v14 = vsubq_f64(a6, a5);
  v15 = vsubq_f64(v14, v11);
  v16 = vsubq_f64(vsubq_f64(a4, a6), v14);
  v17 = vzip2q_s64(v15, v16);
  v18 = vzip1q_s64(v15, v16);
  v19 = vmlaq_f64(vmulq_f64(v17, v17), v18, v18);
  if (v19.f64[0] <= v19.f64[1])
  {
    v19.f64[0] = v19.f64[1];
  }

  v20 = a3 * a3;
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
        v43 = vaddq_f64(v8, v30);
        v40 = vaddq_f64(v29, v31);
        v41 = vaddq_f64(v30, v31);
        [(AKTSDBezierPath *)self lineToPoint:*&v43, v38, v39];
        v31 = v40;
        v30 = v41;
        v29 = v42;
        v8 = v43;
        --v37;
      }

      while (v37 > 2);
    }
  }

  [(AKTSDBezierPath *)self lineToPoint:v38.x, *&v39];
}

- (void)flattenIntoPath:(id)a3
{
  v9 = a3;
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
          [v9 subdivideBezierWithFlatness:*&qword_27E3998E8 startPoint:*&sfr_head[-4] controlPoint1:*&sfr_head[-2] controlPoint2:*sfr_extraSegments endPoint:{sfr_extraSegments[1], sfr_extraSegments[2], sfr_extraSegments[3], *&sfr_head[2], *&sfr_head[4]}];
          sfr_extraSegments += 4;
        }

        else if (v8 == 3)
        {
          [v9 closePath];
        }
      }

      else if (v8)
      {
        if (v8 == 1)
        {
          [v9 lineToPoint:{*&sfr_head[2], *&sfr_head[4]}];
        }
      }

      else
      {
        [v9 moveToPoint:{*&sfr_head[2], *&sfr_head[4]}];
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

- (void)transformUsingAffineTransform:(CGAffineTransform *)a3
{
  sfr_elementCount = self->sfr_elementCount;
  if (sfr_elementCount >= 1)
  {
    sfr_head = self->sfr_head;
    v6 = &sfr_head[6 * sfr_elementCount];
    do
    {
      *&sfr_head[2] = vaddq_f64(*&a3->tx, vmlaq_n_f64(vmulq_n_f64(*&a3->c, *&sfr_head[4]), *&a3->a, *&sfr_head[2]));
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
        *sfr_extraSegments = vaddq_f64(*&a3->tx, vmlaq_n_f64(vmulq_n_f64(*&a3->c, sfr_extraSegments[1]), *&a3->a, *sfr_extraSegments));
        *(sfr_extraSegments + 1) = vaddq_f64(*&a3->tx, vmlaq_n_f64(vmulq_n_f64(*&a3->c, sfr_extraSegments[3]), *&a3->a, sfr_extraSegments[2]));
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
  v3 = [(AKTSDBezierPath *)self elementCount];
  if (!v3)
  {
    return 1;
  }

  v4 = v3;
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
  v3 = [(AKTSDBezierPath *)self elementCount];
  if (v3 < 1)
  {
    v9 = 0.0;
  }

  else
  {
    v4 = v3;
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

- (double)calculateLengthOfElement:(int64_t)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = 0.0;
  if (a3)
  {
    v4 = [(AKTSDBezierPath *)self elementAtIndex:a3 allPoints:&v9];
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
  v3 = [(AKTSDBezierPath *)self elementCount];
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
    v7 = v3;
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

- (double)lengthOfElement:(int64_t)a3
{
  if ((*(&self->sfr_bpFlags + 1) & 4) == 0)
  {
    [(AKTSDBezierPath *)self calculateLengths];
  }

  return self->sfr_elementLength[a3];
}

- (double)lengthToElement:(int64_t)a3
{
  if ((*(&self->sfr_bpFlags + 1) & 4) == 0)
  {
    [(AKTSDBezierPath *)self calculateLengths];
  }

  if (a3 < 1)
  {
    return 0.0;
  }

  sfr_elementLength = self->sfr_elementLength;
  result = 0.0;
  do
  {
    v7 = *sfr_elementLength++;
    result = result + v7;
    --a3;
  }

  while (a3);
  return result;
}

- (unint64_t)elementAtIndex:(int64_t)a3 associatedPoints:(CGPoint *)a4
{
  if (a3 < 0 || self->sfr_elementCount <= a3)
  {
    v7 = MEMORY[0x277CBEAD8];
    v8 = *MEMORY[0x277CBE730];
    v9 = NSStringFromSelector(a2);
    [v7 raise:v8 format:{@"%@: index (%ld) beyond bounds (%ld)", v9, a3, self->sfr_elementCount}];
  }

  v10 = &self->sfr_head[6 * a3];
  if (a4)
  {
    if ((*v10 & 0xFLL) == 2)
    {
      v11 = (self->sfr_extraSegments + 32 * (*v10 >> 4));
      *a4 = *v11;
      a4[1] = v11[1];
      a4 += 2;
    }

    *a4 = *&v10[2];
  }

  return *v10 & 0xFLL;
}

- (unint64_t)elementAtIndex:(int64_t)a3 allPoints:(CGPoint *)a4
{
  if (a3 < 0 || self->sfr_elementCount <= a3)
  {
    v7 = MEMORY[0x277CBEAD8];
    v8 = *MEMORY[0x277CBE730];
    v9 = NSStringFromSelector(a2);
    [v7 raise:v8 format:{@"%@: index (%ld) beyond bounds (%ld)", v9, a3, self->sfr_elementCount}];
  }

  v10 = &self->sfr_head[6 * a3];
  if (a4)
  {
    v11 = *v10;
    if ((*v10 & 0xFLL) != 0)
    {
      *a4 = *&v10[-4];
      v11 = *v10;
    }

    if ((v11 & 0xF) != 0)
    {
      if ((v11 & 0xF) == 2)
      {
        v12 = (self->sfr_extraSegments + 32 * (v11 >> 4));
        a4[1] = *v12;
        a4[2] = v12[1];
        a4 += 3;
      }

      else
      {
        ++a4;
      }
    }

    *a4 = *&v10[2];
  }

  return *v10 & 0xFLL;
}

- (void)setAssociatedPoints:(CGPoint *)a3 atIndex:(int64_t)a4
{
  if (a4 < 0 || self->sfr_elementCount <= a4)
  {
    v7 = MEMORY[0x277CBEAD8];
    v8 = *MEMORY[0x277CBE730];
    v9 = NSStringFromSelector(a2);
    [v7 raise:v8 format:{@"%@: index (%ld) beyond bounds (%ld)", v9, a4, self->sfr_elementCount}];
  }

  v10 = &self->sfr_head[6 * a4];
  if ((*v10 & 0xFLL) == 2)
  {
    v11 = (self->sfr_extraSegments + 32 * (*v10 >> 4));
    *v11 = *a3;
    v12 = a3[1];
    a3 += 2;
    v11[1] = v12;
  }

  *&v10[2] = *a3;
  sfr_path = self->sfr_path;
  if (sfr_path)
  {
    CFRelease(sfr_path);
    self->sfr_path = 0;
  }

  *&self->sfr_bpFlags |= 1u;
}

- (void)_appendToPath:(id)a3
{
  v9 = a3;
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
          [v9 curveToPoint:*&sfr_head[2] controlPoint1:*&sfr_head[4] controlPoint2:{*sfr_extraSegments, sfr_extraSegments[1], sfr_extraSegments[2], sfr_extraSegments[3]}];
          sfr_extraSegments += 4;
        }

        else if (v8 == 3)
        {
          [v9 closePath];
        }
      }

      else if (v8)
      {
        if (v8 == 1)
        {
          [v9 lineToPoint:{*&sfr_head[2], *&sfr_head[4]}];
        }
      }

      else
      {
        [v9 moveToPoint:{*&sfr_head[2], *&sfr_head[4]}];
      }

      sfr_head += 6;
    }

    while (sfr_head < v6);
  }
}

- (void)appendBezierPath:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_opt_class();
  if (v5 == objc_opt_class())
  {
    [v4 _appendToPath:self];
  }

  else
  {
    v6 = [v4 elementCount];
    if (v6 >= 1)
    {
      v7 = v6;
      for (i = 0; i != v7; ++i)
      {
        v9 = [v4 elementAtIndex:i associatedPoints:&v10];
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

- (void)appendBezierPathWithRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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

- (void)appendBezierPathWithPoints:(CGPoint *)a3 count:(int64_t)a4
{
  if (a4 >= 1)
  {
    if ([(AKTSDBezierPath *)self isEmpty]|| (*&self->sfr_bpFlags & 0x300) == 0x100)
    {
      [(AKTSDBezierPath *)self moveToPoint:a3->x, a3->y];
    }

    else
    {
      [(AKTSDBezierPath *)self lineToPoint:a3->x, a3->y];
    }

    v7 = a4 - 1;
    if (v7)
    {
      p_y = &a3[1].y;
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

- (void)appendBezierPathWithOvalInRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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

- (void)_appendArcSegmentWithCenter:(CGPoint)a3 radius:(double)a4 angle1:(double)a5 angle2:(double)a6
{
  __sincos_stret((a6 - a5) * 0.5);
  __sincos_stret(a5);
  __sincos_stret(a6);

  MEMORY[0x2821F9670](self, sel__deviceCurveToPoint_controlPoint1_controlPoint2_);
}

- (void)appendBezierPathWithArcWithCenter:(CGPoint)a3 radius:(double)a4 startAngle:(double)a5 endAngle:(double)a6 clockwise:(BOOL)a7
{
  y = a3.y;
  x = a3.x;
  if (__fpclassifyd(a5) < 3 || __fpclassifyd(a6) <= 2)
  {
    v15 = MEMORY[0x277CBEAD8];
    v16 = *MEMORY[0x277CBE660];
    v17 = NSStringFromSelector(a2);
    [v15 raise:v16 format:{@"%@: illegal angle argument", v17}];
  }

  v18 = a5 * 3.14159265 / 180.0;
  v19 = a6 * 3.14159265;
  v20 = __sincos_stret(v18);
  v21 = x + a4 * v20.__cosval;
  v22 = y + a4 * v20.__sinval;
  if ([(AKTSDBezierPath *)self isEmpty])
  {
    [(AKTSDBezierPath *)self _deviceMoveToPoint:v21, v22];
  }

  else
  {
    [(AKTSDBezierPath *)self _deviceLineToPoint:v21, v22];
  }

  v23 = v19 / 180.0;
  if (a7)
  {
      ;
    }

    v24 = v18 - v23;
    if (v18 - v23 > 1.57079633)
    {
      do
      {
        v25 = v18 + -1.57079633;
        [(AKTSDBezierPath *)self _appendArcSegmentWithCenter:x radius:y angle1:a4 angle2:v18, v18 + -1.57079633];
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
    [(AKTSDBezierPath *)self _appendArcSegmentWithCenter:x radius:y angle1:a4 angle2:v18, v18 + 1.57079633];
    v24 = v23 - v25;
    v18 = v18 + 1.57079633;
  }

  while (v23 - v25 > 1.57079633);
LABEL_19:
  if (v24 > 0.0)
  {

    [(AKTSDBezierPath *)self _appendArcSegmentWithCenter:x radius:y angle1:a4 angle2:v25, v23];
  }
}

- (void)appendBezierPathWithArcFromPoint:(CGPoint)a3 toPoint:(CGPoint)a4 radius:(double)a5
{
  y = a4.y;
  x = a4.x;
  v8 = a3.y;
  v9 = a3.x;
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
    a5 = 0.0;
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
    v26 = v36.f64[1];
    v25 = v36.f64[0];
    a5 = 0.0;
  }

  else
  {
    v25 = v36.f64[0] - a5 * fabs(cos(v20 * 0.5) / v22);
    if (vmovn_s64(vcgtq_f64(v29, v36)).i32[1])
    {
      v19 = 1.57079633 - v20;
      v23 = -1.57079633;
      v26 = a5;
    }

    else
    {
      v26 = -a5;
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
  [(AKTSDBezierPath *)self appendBezierPathWithArcWithCenter:vmovn_s64(vmvnq_s8(vcgtq_f64(v29 radius:v36))).i8[4] & 1 startAngle:vaddq_f64(v24 endAngle:vaddq_f64(*&v38.tx clockwise:vmlaq_n_f64(vmulq_n_f64(*&v38.c, v26), *&v38.a, v25))), a5, (v17 + v23) * 180.0 / 3.14159265, (v17 + v19) * 180.0 / 3.14159265];
}

- (BOOL)containsPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
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

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  if ([v4 allowsKeyedCoding])
  {
    v5 = [(AKTSDBezierPath *)self windingRule];
    v6 = [(AKTSDBezierPath *)self lineCapStyle];
    v7 = [(AKTSDBezierPath *)self lineJoinStyle];
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
      [v4 encodeBytes:v14 length:v13 forKey:@"TSDSegments"];
      free(v14);
    }

    if (v5)
    {
      *&v8 = v5;
      [v4 encodeFloat:@"TSDWindingRule" forKey:v8];
    }

    if (v6)
    {
      *&v8 = v6;
      [v4 encodeFloat:@"TSDCapStyle" forKey:v8];
    }

    if (v7)
    {
      *&v8 = v7;
      [v4 encodeFloat:@"TSDJoinStyle" forKey:v8];
    }

    if (self->sfr_lineWidth != 1.0)
    {
      [v4 encodeDouble:@"TSDLineWidth" forKey:?];
    }

    if (self->sfr_miterLimit != 10.0)
    {
      [v4 encodeDouble:@"TSDMiterLimit" forKey:?];
    }

    if (self->sfr_flatness != 0.6)
    {
      [v4 encodeDouble:@"TSDFlatness" forKey:?];
    }

    if (self->sfr_dashedLineCount)
    {
      [v4 encodeDouble:@"TSDDashPhase" forKey:self->sfr_dashedLinePhase];
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

      [v4 encodeBytes:v18 length:v17 forKey:@"TSDDashPatterns"];
      free(v19);
    }
  }

  else
  {
    v52 = (self->sfr_elementCount + 2 * self->sfr_extraSegmentCount);
    v51 = [(AKTSDBezierPath *)self windingRule];
    v50 = [(AKTSDBezierPath *)self lineCapStyle];
    v49 = [(AKTSDBezierPath *)self lineJoinStyle];
    sfr_lineWidth = self->sfr_lineWidth;
    sfr_flatness = self->sfr_flatness;
    sfr_miterLimit = self->sfr_miterLimit;
    v47 = sfr_miterLimit;
    v48 = sfr_lineWidth;
    v28 = sfr_flatness;
    v45 = self->sfr_dashedLineCount;
    v46 = v28;
    [v4 encodeValueOfObjCType:"i" at:&v52];
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
          [v4 encodeValuesOfObjCTypes:{"cff", &v44, &v43, &v42}];
          v35 = v32[2];
          v36 = v32[3];
          v42 = v36;
          v43 = v35;
          [v4 encodeValuesOfObjCTypes:{"cff", &v44, &v43, &v42}];
          v32 += 4;
        }

        v37 = *&v30[2];
        v38 = *&v30[4];
        v42 = v38;
        v43 = v37;
        [v4 encodeValuesOfObjCTypes:{"cff", &v44, &v43, &v42}];
        v30 += 6;
      }

      while (v30 < v31);
    }

    [v4 encodeValuesOfObjCTypes:{"iiifffi", &v51, &v50, &v49, &v48, &v47, &v46, &v45}];
    if (self->sfr_dashedLineCount)
    {
      sfr_dashedLinePhase = self->sfr_dashedLinePhase;
      v43 = sfr_dashedLinePhase;
      [v4 encodeValueOfObjCType:"f" at:&v43];
      if (self->sfr_dashedLineCount >= 1)
      {
        v40 = 0;
        do
        {
          v41 = self->sfr_dashedLinePattern[v40];
          v43 = v41;
          [v4 encodeValueOfObjCType:"f" at:&v43];
          ++v40;
        }

        while (v40 < self->sfr_dashedLineCount);
      }
    }
  }
}

- (AKTSDBezierPath)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(AKTSDBezierPath *)self init];
  if (v5)
  {
    if ([v4 allowsKeyedCoding])
    {
      v47 = 0;
      v6 = [v4 decodeBytesForKey:@"TSDSegments" returnedLength:&v47];
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

      -[AKTSDBezierPath setWindingRule:](v5, "setWindingRule:", [v4 decodeInt32ForKey:@"TSDWindingRule"]);
      -[AKTSDBezierPath setLineCapStyle:](v5, "setLineCapStyle:", [v4 decodeInt32ForKey:@"TSDCapStyle"]);
      -[AKTSDBezierPath setLineJoinStyle:](v5, "setLineJoinStyle:", [v4 decodeInt32ForKey:@"TSDJoinStyle"]);
      v11 = [v4 containsValueForKey:@"TSDLineWidth"];
      v12 = 1.0;
      if (v11)
      {
        [v4 decodeDoubleForKey:{@"TSDLineWidth", 1.0}];
      }

      v5->sfr_lineWidth = v12;
      v13 = [v4 containsValueForKey:@"TSDMiterLimit"];
      v14 = 10.0;
      if (v13)
      {
        [v4 decodeDoubleForKey:{@"TSDMiterLimit", 10.0}];
      }

      v5->sfr_miterLimit = v14;
      if ([v4 containsValueForKey:@"TSDFlatness"])
      {
        [v4 decodeDoubleForKey:@"TSDFlatness"];
      }

      else
      {
        v15 = 0x3FE3333333333333;
      }

      *&v5->sfr_flatness = v15;
      v22 = [v4 decodeBytesForKey:@"TSDDashPatterns" returnedLength:&v47];
      if (v22)
      {
        v23 = v47;
        if (v47)
        {
          v24 = v22;
          v5->sfr_dashedLineCount = v47 >> 2;
          [v4 decodeDoubleForKey:@"TSDDashPhase"];
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
      v16 = [v4 versionForClassName:@"AKTSDBezierPath"];
      [v4 decodeValueOfObjCType:"i" at:&v47 size:4];
      if (v47)
      {
        v17 = 0;
        do
        {
          [v4 decodeValuesOfObjCTypes:{"cff", &v46, &v45, &v44 + 4}];
          v18 = v45;
          v19 = *(&v44 + 1);
          if (v46 > 1u)
          {
            if (v46 == 2)
            {
              [v4 decodeValuesOfObjCTypes:{"cff", &v46, &v45, &v44 + 4}];
              v20 = v45;
              v21 = *(&v44 + 1);
              [v4 decodeValuesOfObjCTypes:{"cff", &v46, &v45, &v44 + 4}];
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
        [v4 decodeValuesOfObjCTypes:{"iiifffi", &v44, &v43, &v43 + 4, &v42, &v41, &v40, &sfr_dashedLineCount}];
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
          [v4 decodeValueOfObjCType:"f" at:&v38 size:4];
          v5->sfr_dashedLinePhase = v38;
          v5->sfr_dashedLinePattern = malloc_type_malloc(8 * v5->sfr_dashedLineCount, 0x100004000313F17uLL);
          if (v5->sfr_dashedLineCount)
          {
            v35 = 0;
            do
            {
              [v4 decodeValueOfObjCType:"f" at:&v38 size:4];
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
        [v4 decodeValuesOfObjCTypes:{"iiifc", &v44, &v43, &v43 + 4, &v42, &v41}];
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
  v3 = [MEMORY[0x277CBEB28] data];
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

      [v3 appendBytes:&v14 length:&v8[v11] - &v14];
      sfr_head += 6;
    }

    while (sfr_head < v6);
  }

  v14 = 0;
  [v3 appendBytes:&v14 length:1];
  v12 = [v3 bytes];

  return v12;
}

- (AKTSDBezierPath)initWithCString:(const char *)a3
{
  v4 = [(AKTSDBezierPath *)self init];
  v5 = v4;
  if (a3)
  {
    if (v4)
    {
      if (*a3)
      {
        v12 = 0;
        v11 = 0;
        if (sscanf(a3, " %c%n", &v12, &v11) >= 1)
        {
          do
          {
            v6 = &a3[v11];
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
            a3 = &v6[v11];
          }

          while (sscanf(a3, " %c%n", &v12, &v11) > 0);
        }
      }
    }
  }

  return v5;
}

- (void)_addPathSegment:(int64_t)a3 point:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
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
    *&sfr_head[6 * self->sfr_elementCount] = *&sfr_head[6 * self->sfr_elementCount] & 0xFFFFFFFFFFFFFFF0 | a3 & 0xF;
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
    if (a3 != 2 && (*&sfr_bpFlags & 0x400) != 0)
    {
      [(AKTSDBezierPath *)self lengthOfElement:self->sfr_elementCount - 1];
      self->sfr_elementLength[self->sfr_elementCount - 1] = v29;
      self->sfr_totalLength = v29 + self->sfr_totalLength;
    }
  }
}

- (void)_deviceMoveToPoint:(CGPoint)a3
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
    *&sfr_head[6 * sfr_elementCount - 4] = a3;
    goto LABEL_7;
  }

  [(AKTSDBezierPath *)self _addPathSegment:0 point:a3.x, a3.y];
  sfr_elementCount = self->sfr_elementCount;
LABEL_7:
  self->sfr_bpFlags = (*&self->sfr_bpFlags & 0xFFFFFCFF | 0x200);
  self->sfr_lastSubpathIndex = sfr_elementCount - 1;
}

- (void)_deviceCurveToPoint:(CGPoint)a3 controlPoint1:(CGPoint)a4 controlPoint2:(CGPoint)a5
{
  y = a5.y;
  x = a5.x;
  v7 = a4.y;
  v8 = a4.x;
  [(AKTSDBezierPath *)self _addPathSegment:2 point:a3.x, a3.y];
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
  v3 = [MEMORY[0x277CCAB68] string];
  [v3 appendFormat:@"AKTSDBezierPath <%p>", self];
  if (![(AKTSDBezierPath *)self isEmpty])
  {
    [(AKTSDBezierPath *)self bounds];
    v4 = NSStringFromCGRect(v20);
    [(AKTSDBezierPath *)self controlPointBounds];
    v5 = NSStringFromCGRect(v21);
    [v3 appendFormat:@"\n  Bounds: %@", v4];
    [v3 appendFormat:@"\n  Control point bounds: %@", v5];
    v6 = [(AKTSDBezierPath *)self elementCount];
    if (v6 >= 1)
    {
      v7 = v6;
      for (i = 0; i != v7; ++i)
      {
        v9 = [(AKTSDBezierPath *)self elementAtIndex:i associatedPoints:v15];
        if (v9 > 1)
        {
          if (v9 == 2)
          {
            [v3 appendFormat:@"\n    %f %f %f %f %f %f curveto", v15[0], v15[1], v16, v17];
          }

          else if (v9 == 3)
          {
            [v3 appendString:@"\n    closepath"];
          }
        }

        else if (v9)
        {
          if (v9 == 1)
          {
            [v3 appendFormat:@"\n    %f %f lineto", v15[0], v11, v12, v13, v14];
          }
        }

        else
        {
          [v3 appendFormat:@"\n    %f %f moveto", v15[0], v11, v12, v13, v14];
        }
      }
    }
  }

  return v3;
}

- (void)getStartPoint:(CGPoint *)a3 andEndPoint:(CGPoint *)a4
{
  v10[2] = *MEMORY[0x277D85DE8];
  [(AKTSDBezierPath *)self elementAtIndex:0 associatedPoints:a3];
  v7 = [(AKTSDBezierPath *)self elementAtIndex:[(AKTSDBezierPath *)self elementCount]- 1 associatedPoints:v9];
  v8 = v9;
  if (v7 == 2)
  {
    v8 = v10;
  }

  if (v7 == 3)
  {
    v8 = a3;
  }

  *a4 = *v8;
}

- (void)addIntersectionsWithPath:(id)a3 to:(id)a4 allIntersections:(BOOL)a5 reversed:(BOOL)a6
{
  v6 = a6;
  v41 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v32 = [v10 count];
  v36 = self;
  v11 = [(AKTSDBezierPath *)self elementCount];
  v12 = [v9 elementCount];
  if (v11 < 2)
  {
    goto LABEL_30;
  }

  v13 = v12;
  if (v12 < 2)
  {
    goto LABEL_30;
  }

  if (v6)
  {
    v14 = v11 - 1;
  }

  else
  {
    v14 = 0;
  }

  if (v6)
  {
    v15 = -1;
  }

  else
  {
    v15 = v11;
  }

  v16 = -1;
  if (!v6)
  {
    v16 = 1;
  }

  v34 = v16;
  v35 = v15;
  while (2)
  {
    v17 = [(AKTSDBezierPath *)v36 elementAtIndex:v14 allPoints:v38];
    if (!v17)
    {
      goto LABEL_29;
    }

    v18 = v17;
    v19 = 0;
    do
    {
      v20 = [v9 elementAtIndex:v19 allPoints:v37];
      if (!v20)
      {
        goto LABEL_26;
      }

      if (v18 != 2)
      {
        if (v20 != 2)
        {
          sub_23F4A0650(v38[0].f64, v37, v14, v19, v10);
          goto LABEL_26;
        }

        v27 = v37;
        v28 = v38;
        v29 = v19;
        v30 = v14;
        v31 = 1;
LABEL_24:
        sub_23F4A0330(v27->f64, v28->f64, v29, v30, v31, v10);
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

      v21 = v10;
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
    if (a5 || v32 >= [v10 count])
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

- (void)addIntersectionsWithLine:(CGPoint)a3[2] to:(id)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v12 = *MEMORY[0x277CBF348];
  v7 = [(AKTSDBezierPath *)self elementCount];
  if (v7)
  {
    v8 = v7;
    for (i = 0; v8 != i; ++i)
    {
      v10 = [(AKTSDBezierPath *)self elementAtIndex:i associatedPoints:v14, v12, v13];
      if (v10 > 1)
      {
        if (v10 == 2)
        {
          sub_23F4A0330(&v13, &a3->x, i, -1, 0, v6);
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
          sub_23F4A0650(&v13, &a3->x, i, -1, v6);
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

- (void)appendBezierPath:(id)a3 fromSegment:(int64_t)a4 toSegment:(int64_t)a5
{
  v16 = *MEMORY[0x277D85DE8];
  if (a4 < a5)
  {
    v6 = a4;
    do
    {
      v9 = [a3 elementAtIndex:v6 associatedPoints:&v10];
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

      ++v6;
    }

    while (a5 != v6);
  }
}

- (void)appendBezierPath:(id)a3 fromSegment:(int64_t)a4 t:(double)a5 toSegment:(int64_t)a6 t:(double)a7 withoutMove:(BOOL)a8
{
  v26 = a5;
  v40 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = [v12 elementCount];
  v14 = v13;
  v16 = a4 < 1 || v13 <= a4;
  if (v16)
  {
    v17 = -1;
  }

  else
  {
    v17 = a4;
  }

  if (a6 <= 0)
  {
    a6 = v13 + 1;
  }

  if (v17 != a6)
  {
    if (v16)
    {
      goto LABEL_41;
    }

    v20 = [v12 elementAtIndex:a4 allPoints:&v36];
    if (v20 > 1)
    {
      if (v20 == 2)
      {
        sub_23F49FC10(&v36, &v28, v26, 1.0);
        if (!a8)
        {
          [(AKTSDBezierPath *)self moveToPoint:v28, v29];
        }

        [(AKTSDBezierPath *)self curveToPoint:v34 controlPoint1:v35 controlPoint2:v30, v31, v32, v33, *&v26];
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
        if (!a8)
        {
          [(AKTSDBezierPath *)self moveToPoint:*&v36];
        }

        goto LABEL_41;
      }

      if (v20 != 1)
      {
LABEL_41:
        if (a6 >= v14)
        {
          v21 = v14;
        }

        else
        {
          v21 = a6;
        }

        v22 = v17 + 1;
        if (v22 >= v21)
        {
LABEL_59:
          if (a6 < 1 || a6 >= v14)
          {
            goto LABEL_67;
          }

          v25 = [v12 elementAtIndex:a6 allPoints:&v36];
          if (v25 != 3)
          {
            if (v25 == 2)
            {
              sub_23F49FC10(&v36, &v28, 0.0, a7);
LABEL_66:
              [(AKTSDBezierPath *)self curveToPoint:v34 controlPoint1:v35 controlPoint2:v30, v31, v32, v33, *&v26];
              goto LABEL_67;
            }

            if (v25 != 1)
            {
              goto LABEL_67;
            }
          }

LABEL_64:
          [(AKTSDBezierPath *)self lineToPoint:vmlaq_n_f64(vmulq_n_f64(v37, a7), v36, 1.0 - a7), *&v26];
          goto LABEL_67;
        }

        v23 = 0;
        while (1)
        {
          v24 = [v12 elementAtIndex:v22 associatedPoints:{&v36, *&v26}];
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
          if (v21 == ++v22)
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

    if (!a8)
    {
      [(AKTSDBezierPath *)self moveToPoint:vmlaq_n_f64(vmulq_n_f64(v37, v26), v36, 1.0 - v26)];
    }

    [(AKTSDBezierPath *)self lineToPoint:*&v37, *&v26];
    goto LABEL_41;
  }

  if (a7 < v26 || v17 >= v13)
  {
    LOBYTE(v16) = 1;
  }

  if (v16)
  {
    goto LABEL_67;
  }

  v19 = [v12 elementAtIndex:v17 allPoints:{&v36, v26, a7}];
  switch(v19)
  {
    case 3:
      goto LABEL_22;
    case 2:
      sub_23F49FC10(&v36, &v28, v26, a7);
      if (!a8)
      {
        [(AKTSDBezierPath *)self moveToPoint:v28, v29];
      }

      goto LABEL_66;
    case 1:
LABEL_22:
      if (!a8)
      {
        [(AKTSDBezierPath *)self moveToPoint:vmlaq_n_f64(vmulq_n_f64(v37, v26), v36, 1.0 - v26)];
      }

      goto LABEL_64;
  }

LABEL_67:
}

- (id)copyFromSegment:(int)a3 t:(float)a4 toSegment:(int)a5 t:(float)a6
{
  v11 = objc_alloc_init(objc_opt_class());
  [v11 appendBezierPath:self fromSegment:a3 t:a5 toSegment:0 t:a4 withoutMove:a6];
  [v11 setWindingRule:{-[AKTSDBezierPath windingRule](self, "windingRule")}];
  [v11 setLineCapStyle:{-[AKTSDBezierPath lineCapStyle](self, "lineCapStyle")}];
  [v11 setLineJoinStyle:{-[AKTSDBezierPath lineJoinStyle](self, "lineJoinStyle")}];
  [(AKTSDBezierPath *)self lineWidth];
  [v11 setLineWidth:?];
  return v11;
}

- (CGPoint)nearestPointOnPathToLine:(CGPoint)a3[2]
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277CBF348];
  v6 = *(MEMORY[0x277CBF348] + 8);
  v25 = *MEMORY[0x277CBF348];
  v7 = [(AKTSDBezierPath *)self elementCount];
  if (v7)
  {
    v8 = v7;
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

      x = a3[1].x;
      y = a3[1].y;
      v16 = y - a3->y;
      v17 = x - a3->x;
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
    sub_23F49FD90(&v26, &a3->x, &v23);
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

- (CGPoint)nearestAngleOnPathToLine:(CGPoint)a3[2]
{
  v90 = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277CBF348];
  v6 = *(MEMORY[0x277CBF348] + 8);
  x = a3[1].x;
  y = a3[1].y;
  v9 = a3->x;
  v77 = *MEMORY[0x277CBF348];
  v10 = [(AKTSDBezierPath *)self elementCount];
  if (v10)
  {
    v11 = v10;
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
        v21 = a3->x;
        v22 = sub_23F4659D0(a3[1].x, a3[1].y, a3->x);
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
      v66 = sub_23F4659D0(v79.f64[0], v79.f64[1], a3->x);
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

- (int64_t)elementPercentage:(float *)a3 forOverallPercentage:(float)a4
{
  [(AKTSDBezierPath *)self length];
  v8 = v7;
  if (a4 < 0.0)
  {
    v9 = 0;
    do
    {
      [(AKTSDBezierPath *)self lengthOfElement:++v9];
    }

    while (v10 == 0.0);
    [(AKTSDBezierPath *)self lengthOfElement:v9];
    v12 = (v8 * a4) / v11;
LABEL_12:
    v19 = v12;
    goto LABEL_13;
  }

  v13 = v8 * a4;
  v14 = [(AKTSDBezierPath *)self elementCount];
  if (v14 < 2)
  {
LABEL_9:
    v9 = v14;
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

    if (v14 == ++v9)
    {
      goto LABEL_9;
    }
  }

  v19 = (v13 + v16) / v16;
LABEL_13:
  *a3 = v19;
  return v9;
}

- (CGPoint)pointAt:(double)a3 fromElement:(int64_t)a4
{
  v33 = *MEMORY[0x277D85DE8];
  v27 = *MEMORY[0x277CBF348];
  v6 = [(AKTSDBezierPath *)self elementAtIndex:a4 allPoints:&v29];
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

    v10 = 1.0 - a3;
    v11 = v29;
    v12 = vmulq_n_f64(v30, a3);
    goto LABEL_9;
  }

  v10 = a3;
  if (a3 < 0.0)
  {
    *&v7 = a3;
    [(AKTSDBezierPath *)self rawGradientAt:a4 fromElement:v7];
    v15 = sub_23F4659DC(v13, v14, a3);
    v17 = v29.f64[1];
    v16 = v29.f64[0];
LABEL_15:
    v9.f64[0] = sub_23F4659C4(v16, v17, v15);
    v9.f64[1] = v21;
    goto LABEL_16;
  }

  v18 = 1.0;
  if (a3 > 1.0)
  {
    *&v18 = a3;
    [(AKTSDBezierPath *)self rawGradientAt:a4 fromElement:v18];
    v15 = sub_23F4659DC(v19, v20, a3 + -1.0);
    v17 = v32.f64[1];
    v16 = v32.f64[0];
    goto LABEL_15;
  }

  __asm { FMOV            V3.2D, #3.0 }

  v12 = vmlaq_n_f64(vmlaq_n_f64(vmulq_n_f64(vmulq_n_f64(vmulq_n_f64(vmulq_f64(v30, _Q3), a3), 1.0 - a3), 1.0 - a3), vmulq_n_f64(vmulq_n_f64(v29, 1.0 - a3), 1.0 - a3), 1.0 - a3), vmulq_n_f64(vmulq_n_f64(vmulq_f64(v31, _Q3), a3), a3), 1.0 - a3);
  v11 = vmulq_n_f64(vmulq_n_f64(v32, a3), a3);
LABEL_9:
  v9 = vmlaq_n_f64(v12, v11, v10);
LABEL_16:
  v22 = v9.f64[1];
  result.x = v9.f64[0];
  result.y = v22;
  return result;
}

- (CGPoint)gradientAt:(double)a3 fromElement:(int64_t)a4
{
  *&a3 = a3;
  [(AKTSDBezierPath *)self rawGradientAt:a4 fromElement:a3];
  v6 = v4 * v4 + v5 * v5;
  v7 = (1.0 / sqrtf(v6));
  v8 = v5 * v7;
  v9 = v4 * v7;
  result.y = v9;
  result.x = v8;
  return result;
}

- (CGPoint)gradientAt:(float)a3
{
  v7 = 0.0;
  v4 = [(AKTSDBezierPath *)self elementPercentage:&v7 forOverallPercentage:?];
  [(AKTSDBezierPath *)self gradientAt:v4 fromElement:v7];
  result.y = v6;
  result.x = v5;
  return result;
}

- (CGPoint)transformedCoordinate:(CGPoint)a3 withPressure:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
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
  if (v7)
  {
    [v7 pressureAt:x];
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

- (CGPoint)transformedTotalCoordinate:(CGPoint)a3 inElement:(int64_t)a4 withPressure:(id)a5
{
  y = a3.y;
  x = a3.x;
  v9 = a5;
  *&v10 = x;
  [(AKTSDBezierPath *)self elementPercentageFromElement:a4 forOverallPercentage:v10];
  v12 = v11;
  [(AKTSDBezierPath *)self pointAt:a4 fromElement:v11];
  v14 = v13;
  v16 = v15;
  [(AKTSDBezierPath *)self gradientAt:a4 fromElement:v12];
  v18 = v17;
  v20 = v19;
  [(AKTSDBezierPath *)self lineWidth];
  v22 = v21;
  if (v9)
  {
    [v9 pressureAt:x];
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

- (CGPoint)transformedTotalCoordinate:(CGPoint)a3 betweenElement:(int64_t)a4 andElement:(int64_t)a5 withPressure:(id)a6 getElement:(int64_t *)a7 getPercentage:(float *)a8
{
  y = a3.y;
  x = a3.x;
  v15 = a6;
  v37 = 0.0;
  v16 = x;
  *&v17 = v16;
  v18 = [(AKTSDBezierPath *)self elementPercentage:&v37 forOverallPercentage:v17];
  if (v18 >= a4)
  {
    if (v18 <= a5)
    {
      v20 = v37;
      a4 = v18;
    }

    else
    {
      *&v19 = x;
      [(AKTSDBezierPath *)self elementPercentageFromElement:a5 forOverallPercentage:v19];
      v37 = v20;
      a4 = a5;
    }
  }

  else
  {
    *&v19 = x;
    [(AKTSDBezierPath *)self elementPercentageFromElement:a4 forOverallPercentage:v19];
    v37 = v20;
  }

  [(AKTSDBezierPath *)self pointAt:a4 fromElement:v20];
  v22 = v21;
  v24 = v23;
  [(AKTSDBezierPath *)self gradientAt:a4 fromElement:v37];
  v26 = v25;
  v28 = v27;
  [(AKTSDBezierPath *)self lineWidth];
  v30 = v29;
  if (v15)
  {
    [v15 pressureAt:x];
  }

  else
  {
    v31 = 1.0;
  }

  v32 = y * (v30 * v31);
  v33 = v22 - v28 * v32;
  v34 = v24 + v26 * v32;
  *a7 = a4;
  *a8 = v37;

  v35 = v33;
  v36 = v34;
  result.y = v36;
  result.x = v35;
  return result;
}

- (float)elementPercentageFromElement:(int)a3 forOverallPercentage:(float)a4
{
  [(AKTSDBezierPath *)self length];
  v8 = v7;
  if (a3 < 1)
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

    while (a3 != v9);
  }

  v12 = v8 * a4;
  v13 = (v12 - v10);
  [(AKTSDBezierPath *)self lengthOfElement:a3];
  return v13 / v14;
}

- (CGPoint)rawGradientAt:(float)a3 fromElement:(int64_t)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = *MEMORY[0x277CBF348];
  v5 = [(AKTSDBezierPath *)self elementAtIndex:a4 allPoints:&v16];
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

  v8 = 0.01;
  if (a3 >= 0.01)
  {
    v8 = a3;
  }

  if (v8 > 0.99)
  {
    v8 = 0.99;
  }

  __asm
  {
    FMOV            V4.2D, #-3.0
    FMOV            V5.2D, #3.0
  }

  v7 = vmlaq_n_f64(vmlaq_n_f64(vmlaq_n_f64(vmulq_n_f64(vmulq_f64(v17, _Q5), (((v8 * -4.0) + 1.0) + ((v8 * 3.0) * v8))), vmulq_n_f64(vmulq_f64(v16, _Q4), (v8 + -1.0)), (v8 + -1.0)), vmulq_n_f64(vmulq_f64(v18, _Q5), v8), ((v8 * -3.0) + 2.0)), vmulq_n_f64(vmulq_f64(v19, _Q5), v8), v8);
LABEL_15:
  v14 = v7.f64[1];
  result.x = v7.f64[0];
  result.y = v14;
  return result;
}

- (CGPoint)myGradientAt:(float)a3
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

- (CGPoint)myGradientAt:(float)a3 fromElement:(int64_t)a4
{
  [AKTSDBezierPath rawGradientAt:"rawGradientAt:fromElement:" fromElement:?];
  v7 = v6;
  v9 = v8;
  [(AKTSDBezierPath *)self length];
  v11 = v10;
  [(AKTSDBezierPath *)self lengthOfElement:a4];

  v13 = sub_23F4659DC(v7, v9, v11 / v12);
  result.y = v14;
  result.x = v13;
  return result;
}

- (float)curvatureAt:(float)a3
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

- (double)curvatureAt:(double)a3 fromElement:(int)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = [(AKTSDBezierPath *)self elementAtIndex:a4 allPoints:&v13];
  if (v5 == 2)
  {
    v7 = 0.01;
    if (a3 >= 0.01)
    {
      v7 = a3;
    }

    if (v7 > 0.99)
    {
      v7 = 0.99;
    }

    v8 = (v7 * (v7 * (v19 - v17) + (1.0 - v7) * (v17 - v15)) + (1.0 - v7) * (v7 * (v17 - v15) + (1.0 - v7) * (v15 - v13))) * 3.0;
    v9 = (v7 * (v7 * (v20 - v18) + (1.0 - v7) * (v18 - v16)) + (1.0 - v7) * (v7 * (v18 - v16) + (1.0 - v7) * (v16 - v14))) * 3.0;
    v10 = v8 * ((v7 * (v20 - v18 - (v18 - v16)) + (1.0 - v7) * (v18 - v16 - (v16 - v14))) * 6.0) - v9 * ((v7 * (v19 - v17 - (v17 - v15)) + (1.0 - v7) * (v17 - v15 - (v15 - v13))) * 6.0);
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

- (void)recursiveSubdivideOntoPath:(id)a3 into:(id)a4
{
  v6 = a4;
  v7 = a3;
  -[AKTSDBezierPath recursiveSubdivideOntoPath:withScaling:inElementRange:into:](self, "recursiveSubdivideOntoPath:withScaling:inElementRange:into:", v7, 0, [v7 elementCount] - 1, v6, 0.0, 1.0);
}

- (void)recursiveSubdivideOntoPath:(id)a3 withScaling:(id)a4 into:(id)a5
{
  var1 = a4.var1;
  var0 = a4.var0;
  v9 = a5;
  v10 = a3;
  -[AKTSDBezierPath recursiveSubdivideOntoPath:withScaling:inElementRange:into:](self, "recursiveSubdivideOntoPath:withScaling:inElementRange:into:", v10, 0, [v10 elementCount] - 1, v9, var0, var1);
}

- (void)recursiveSubdivideOntoPath:(id)a3 withScaling:(id)a4 inElementRange:(_NSRange)a5 into:(id)a6
{
  length = a5.length;
  location = a5.location;
  var1 = a4.var1;
  var0 = a4.var0;
  v87 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a6;
  v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v14 = [AKTSDPathCut alloc];
  [v11 lengthToElement:location];
  v16 = v15;
  [v11 length];
  v18 = [(AKTSDPathCut *)v14 initWithSegment:location atT:v16 / v17 withSkew:0.0];
  [v13 addObject:v18];
  [v11 miterLimit];
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
      [v11 lengthOfElement:v21 + 1];
      if (v19 >= 0.1)
      {
        [v11 lengthOfElement:v21];
        if (v19 >= 0.1)
        {
          [v11 gradientAt:v21 fromElement:1.0];
          v26 = sub_23F465A1C(v24, v25);
          v28 = v27;
          [v11 gradientAt:v21 + 1 fromElement:0.0];
          v31 = sub_23F465A1C(v29, v30);
          v33 = v32;
          v34 = sub_23F465A3C(v26, v28, v31, v32);
          v19 = v34;
          if (v34 < 0.99)
          {
            [v11 lengthToElement:{v21 + 1, v19}];
            v76 = v35;
            [v11 length];
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
    [v11 lengthOfElement:{v20, v19}];
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
  [v11 lengthToElement:v20 + 1];
  v54 = v53;
  [v11 length];
  v56 = [(AKTSDPathCut *)v52 initWithSegment:v20 atT:v54 / v55 withSkew:0.0];

  [v13 addObject:v56];
  if (!v51)
  {
    v77 = v56;
    v81 = *MEMORY[0x277CBF348];
    v57 = [(AKTSDBezierPath *)self elementCount];
    v58 = var0;
    if (v57)
    {
      v59 = v57;
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
            sub_23F4A2368(&v82, v11, 0, v12, v61, v13);
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
            sub_23F4A2368(&v82, v11, 0, v12, v61, v13);
            v82 = v80;
            if (v64 == 3)
            {
              [v12 closePath];
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
  v6 = [(AKTSDBezierPath *)self elementCount];
  if (!v6)
  {
    v9 = 1;
    v51 = -1;
    goto LABEL_58;
  }

  v7 = v6;
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