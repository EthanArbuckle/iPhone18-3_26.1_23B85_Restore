@interface CRLPKStrokeGenerator
+ (_CRLPKStrokePoint)outputPointFromInputPoint:(SEL)point;
+ (vector<CRLPKInputPoint,)inputPointsFromPath:(id)path;
+ (void)initialize;
- (BOOL)lastPointIsMasked;
- (BOOL)shouldSnapPointToRuler:(CGPoint)ruler;
- (CGAffineTransform)rulerTransform;
- (CGPoint)getRulerSnapLineOriginAndTangent:(CGPoint *)tangent andNormal:(CGPoint *)normal;
- (CGPoint)lastPoint;
- (CGPoint)snapPointToRuler:(CGPoint)ruler;
- (CRLPKStrokeGenerator)init;
- (_CRLPKStrokePoint)outputCurrentStrokePoint:(SEL)point;
- (_CRLPKStrokePoint)outputPoint:(SEL)point baseValues:(id *)values;
- (double)distanceToRulerCenter:(CGPoint)center;
- (id).cxx_construct;
- (id)strokeFromPath:(CGPath *)path inputScale:(double)scale;
- (int64_t)fetchFilteredPointsFromIndex:(int64_t)index intoVector:(void *)vector;
- (void)_drawingAddPoint:(id *)point;
- (void)addPoint:(id *)point;
- (void)addPoints:()vector<CRLPKInputPoint;
- (void)allowSnappingToRuler:(CGAffineTransform *)ruler width:(double)width;
- (void)dealloc;
- (void)drawingBeganWithStroke:(id)stroke inputType:(int64_t)type inputScale:(double)scale start:(id)start;
- (void)drawingCancelledWithCompletion:(id)completion;
- (void)drawingEndedWithCompletion:(id)completion;
- (void)drawingUpdateAllPoints;
- (void)drawingUpdatePoint:(id *)point;
- (void)getUpdatedRangeFromIndex:(unint64_t *)index;
- (void)maskToRuler;
- (void)removePredictedTouches;
- (void)reset;
- (void)setRulerTransform:(CGAffineTransform *)transform;
- (void)snapToRuler;
- (void)updateImmutableCount;
- (void)updateRulerSnapping;
- (void)whenFinishedProcessingPointsCallCompletion:(id)completion;
@end

@implementation CRLPKStrokeGenerator

+ (void)initialize
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___CRLPKStrokeGenerator;
  objc_msgSendSuper2(&v2, "initialize");
  objc_opt_class();
}

- (CRLPKStrokeGenerator)init
{
  v9.receiver = self;
  v9.super_class = CRLPKStrokeGenerator;
  v2 = [(CRLPKStrokeGenerator *)&v9 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
    v4 = dispatch_queue_create("com.apple.freeform.pencilkit.draw-input", v3);
    inputQueue = v2->_inputQueue;
    v2->_inputQueue = v4;

    v6 = dispatch_queue_create("com.apple.freeform.pencilkit.draw-output", v3);
    outputQueue = v2->_outputQueue;
    v2->_outputQueue = v6;

    v2->_inputScale = 1.0;
    operator new();
  }

  return 0;
}

- (void)dealloc
{
  inputProvider = self->_inputProvider;
  if (inputProvider)
  {
    (*(*inputProvider + 8))(inputProvider, a2);
  }

  pixelSmoothingFilter = self->_pixelSmoothingFilter;
  if (pixelSmoothingFilter)
  {
    (*(*pixelSmoothingFilter + 8))(pixelSmoothingFilter, a2);
  }

  pointReductionFilter = self->_pointReductionFilter;
  if (pointReductionFilter)
  {
    (*(*pointReductionFilter + 8))(pointReductionFilter, a2);
  }

  noiseSmoother = self->_noiseSmoother;
  if (noiseSmoother)
  {
    (*(*noiseSmoother + 8))(noiseSmoother, a2);
  }

  startHookFilter = self->_startHookFilter;
  if (startHookFilter)
  {
    (*(*startHookFilter + 8))(startHookFilter, a2);
  }

  endHookFilter = self->_endHookFilter;
  if (endHookFilter)
  {
    (*(*endHookFilter + 8))(endHookFilter, a2);
  }

  velocityFilter = self->_velocityFilter;
  if (velocityFilter)
  {
    (*(*velocityFilter + 8))(velocityFilter, a2);
  }

  inputSmoother = self->_inputSmoother;
  if (inputSmoother)
  {
    (*(*inputSmoother + 8))(inputSmoother, a2);
  }

  inputToOutputFilter = self->_inputToOutputFilter;
  if (inputToOutputFilter)
  {
    (*(*inputToOutputFilter + 8))(inputToOutputFilter, a2);
  }

  startCapFilter = self->_startCapFilter;
  if (startCapFilter)
  {
    (*(*startCapFilter + 8))(startCapFilter, a2);
  }

  azimuthFilter = self->_azimuthFilter;
  if (azimuthFilter)
  {
    (*(*azimuthFilter + 8))(azimuthFilter, a2);
  }

  endCapFilter = self->_endCapFilter;
  if (endCapFilter)
  {
    (*(*endCapFilter + 8))(endCapFilter, a2);
  }

  compressionFilter = self->_compressionFilter;
  if (compressionFilter)
  {
    (*(*compressionFilter + 8))(compressionFilter, a2);
  }

  decompressionFilter = self->_decompressionFilter;
  if (decompressionFilter)
  {
    (*(*decompressionFilter + 8))(decompressionFilter, a2);
  }

  rulerExtremaFilter = self->_rulerExtremaFilter;
  if (rulerExtremaFilter)
  {
    (*(*rulerExtremaFilter + 8))(rulerExtremaFilter, a2);
  }

  estimatedAltitudeAndAzimuthFilter = self->_estimatedAltitudeAndAzimuthFilter;
  if (estimatedAltitudeAndAzimuthFilter)
  {
    (*(*estimatedAltitudeAndAzimuthFilter + 8))(estimatedAltitudeAndAzimuthFilter, a2);
  }

  v19.receiver = self;
  v19.super_class = CRLPKStrokeGenerator;
  [(CRLPKStrokeGenerator *)&v19 dealloc];
}

- (void)drawingBeganWithStroke:(id)stroke inputType:(int64_t)type inputScale:(double)scale start:(id)start
{
  strokeCopy = stroke;
  startCopy = start;
  inputQueue = self->_inputQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100223970;
  block[3] = &unk_10184A3C8;
  block[4] = self;
  v16 = strokeCopy;
  scaleCopy = scale;
  v17 = startCopy;
  typeCopy = type;
  v13 = startCopy;
  v14 = strokeCopy;
  dispatch_async(inputQueue, block);
}

- (void)allowSnappingToRuler:(CGAffineTransform *)ruler width:(double)width
{
  inputQueue = self->_inputQueue;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v5 = *&ruler->c;
  v7 = *&ruler->a;
  v6[2] = sub_100223BE0;
  v6[3] = &unk_10184A3F0;
  v6[4] = self;
  v8 = v5;
  v9 = *&ruler->tx;
  widthCopy = width;
  dispatch_async(inputQueue, v6);
}

- (CGPoint)getRulerSnapLineOriginAndTangent:(CGPoint *)tangent andNormal:(CGPoint *)normal
{
  v31 = 0u;
  v32 = 0u;
  v30 = 0u;
  [(CRLPKStrokeGenerator *)self rulerTransform];
  [(CRLPKStrokeGenerator *)self rulerWidth];
  v8 = v7 * 0.5;
  if ([(CRLPKStrokeGenerator *)self isSnappedToRuler])
  {
    v8 = v8 + 1.0;
  }

  isSnappedToRulerTopSide = [(CRLPKStrokeGenerator *)self isSnappedToRulerTopSide];
  v10 = -v8;
  if (isSnappedToRulerTopSide)
  {
    v10 = v8;
  }

  _Q3 = v30;
  v12 = v32;
  v13 = vmulq_n_f64(v31, v10);
  if (tangent)
  {
    *tangent = vaddq_f64(v32, vmlaq_f64(v13, vdupq_n_s64(0x4059000000000000uLL), v30));
  }

  if (normal)
  {
    v29[0] = v30;
    v29[1] = v31;
    v29[2] = v32;
    v27 = v12;
    v28 = _Q3;
    v26 = v13.f64[0];
    v14 = sub_10012119C(v29, 0.0, v10 + v10);
    v16 = sub_10011F2FC(v14, v15);
    v13.f64[0] = v26;
    v12 = v27;
    _Q3 = v28;
    normal->x = v16;
    normal->y = v17;
  }

  _D1 = 0xC059000000000000;
  v19 = v12.f64[0] + v13.f64[0] + _Q3.f64[0] * -100.0;
  __asm { FMLA            D2, D1, V3.D[1] }

  v25 = v12.f64[1] + _D2;
  result.y = v25;
  result.x = v19;
  return result;
}

- (double)distanceToRulerCenter:(CGPoint)center
{
  y = center.y;
  x = center.x;
  [(CRLPKStrokeGenerator *)self rulerTransform];
  *&v16 = *&vaddq_f64(0, vmlaq_n_f64(vmulq_n_f64(0, CGPointZero.y), 0, CGPointZero.x));
  [(CRLPKStrokeGenerator *)self rulerWidth];
  v15 = vaddq_f64(0, vmlaq_f64(vmulq_n_f64(0, v6 * 0.5), 0, 0));
  v7 = sub_10011F31C(x, y, v16);
  v9 = v8;
  v10 = sub_10011F31C(v15.f64[0], v15.f64[1], v16);
  v12 = sub_10011F2FC(v10, v11);
  return sub_10011F328(v7, v9, v12, v13);
}

- (BOOL)shouldSnapPointToRuler:(CGPoint)ruler
{
  y = ruler.y;
  x = ruler.x;
  useRuler = [(CRLPKStrokeGenerator *)self useRuler];
  if (useRuler)
  {
    if (self->_currentInputType == 1)
    {
      v7 = 25.0;
    }

    else
    {
      v7 = 45.0;
    }

    [(CRLPKStrokeGenerator *)self rulerWidth];
    v9 = v8 * 0.5 + v7;
    [(CRLPKStrokeGenerator *)self rulerTransform];
    v10 = v9 * sub_100139A00(&v13);
    [(CRLPKStrokeGenerator *)self distanceToRulerCenter:x, y];
    LOBYTE(useRuler) = fabs(v11) < v10;
  }

  return useRuler;
}

- (void)snapToRuler
{
  [(CRLPKStrokeGenerator *)self distanceToRulerCenter:*self->_drawPoints.__begin_, *(self->_drawPoints.__begin_ + 1)];
  [(CRLPKStrokeGenerator *)self setIsSnappedToRulerTopSide:v3 > 0.0];
  [(CRLPKStrokeGenerator *)self setIsSnappedToRuler:1];
  [(CRLPKStroke *)self->_currentStroke _setIsClipped:0];
  begin = self->_drawPoints.__begin_;
  end = self->_drawPoints.__end_;
  while (begin != end)
  {
    [(CRLPKStrokeGenerator *)self snapPointToRuler:*begin, *(begin + 1)];
    *begin = v6;
    *(begin + 1) = v7;
    begin = (begin + 88);
  }
}

- (void)maskToRuler
{
  [(CRLPKStrokeGenerator *)self distanceToRulerCenter:*self->_drawPoints.__begin_, *(self->_drawPoints.__begin_ + 1)];
  [(CRLPKStrokeGenerator *)self setIsSnappedToRulerTopSide:v3 > 0.0];
  [(CRLPKStrokeGenerator *)self setIsSnappedToRuler:0];
  [(CRLPKStrokeGenerator *)self getRulerSnapLineOriginAndTangent:0 andNormal:v8];
  v5 = v4;
  v7 = v6;
  [(CRLPKStroke *)self->_currentStroke _setIsClipped:1];
  [(CRLPKStroke *)self->_currentStroke _setClipOrigin:v5, v7];
  [(CRLPKStroke *)self->_currentStroke _setClipNormal:v8[0], v8[1]];
}

- (CGPoint)snapPointToRuler:(CGPoint)ruler
{
  y = ruler.y;
  x = ruler.x;
  if ([(CRLPKStrokeGenerator *)self isSnappedToRuler])
  {
    [(CRLPKStrokeGenerator *)self getRulerSnapLineOriginAndTangent:v11 andNormal:0];
    x = sub_10011F2B4(v6, v7, v11[0], v11[1], x, y);
    y = v8;
  }

  v9 = x;
  v10 = y;
  result.y = v10;
  result.x = v9;
  return result;
}

- (void)updateRulerSnapping
{
  if ([(CRLPKStrokeGenerator *)self canSnapToRuler])
  {
    begin = self->_drawPoints.__begin_;
    end = self->_drawPoints.__end_;
    if (end != begin)
    {
      if ((0x2E8BA2E8BA2E8BA3 * ((end - begin) >> 3)) >= 2)
      {
        v5 = sub_10011F31C(*(end - 11), *(end - 10), *begin);
        v7 = v6;
        [(CRLPKStrokeGenerator *)self rulerTransform];
        v8 = sub_10012119C(v17, 1.0, 0.0);
        v10 = v9;
        if (sub_100120084(v5, v7) > self->_inputScale * (self->_inputScale * 225.0))
        {
          v11 = sub_10011F2FC(v5, v7);
          v13 = v12;
          v14 = sub_10011F2FC(v8, v10);
          v16 = sub_10011F328(v11, v13, v14, v15);
          if ([(CRLPKStrokeGenerator *)self shouldSnapPointToRuler:*self->_drawPoints.__begin_, *(self->_drawPoints.__begin_ + 1)]&& fabs(v16) > 0.86)
          {
            [(CRLPKStrokeGenerator *)self snapToRuler];
          }

          else
          {
            [(CRLPKStrokeGenerator *)self maskToRuler];
          }

          [(CRLPKStrokeGenerator *)self setCanSnapToRuler:0];
        }
      }

      if ([(CRLPKStrokeGenerator *)self canSnapToRuler])
      {
        if (![(CRLPKStroke *)self->_currentStroke _isClipped])
        {
          [(CRLPKStrokeGenerator *)self maskToRuler];
        }
      }
    }
  }
}

- (BOOL)lastPointIsMasked
{
  [(CRLPKStrokeGenerator *)self lastPoint];
  v5 = v4 == INFINITY && v3 == INFINITY;
  result = 0;
  if (!v5 && [(CRLPKStrokeGenerator *)self useRuler]&& ![(CRLPKStrokeGenerator *)self isSnappedToRuler])
  {
    [(CRLPKStrokeGenerator *)self lastPoint];
    [(CRLPKStrokeGenerator *)self distanceToRulerCenter:?];
    v8 = v7;
    [(CRLPKStrokeGenerator *)self rulerWidth];
    v10 = v9 * 0.5;
    [(CRLPKStrokeGenerator *)self rulerTransform];
    v11 = v10 * sub_100139A00(&v12);
    if ([(CRLPKStrokeGenerator *)self isSnappedToRulerTopSide])
    {
      if (v8 < v11)
      {
        return 1;
      }
    }

    if (![(CRLPKStrokeGenerator *)self isSnappedToRulerTopSide]&& v11 > -v8)
    {
      return 1;
    }
  }

  return result;
}

- (void)getUpdatedRangeFromIndex:(unint64_t *)index
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  outputQueue = self->_outputQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100224560;
  block[3] = &unk_10184A418;
  block[4] = self;
  block[5] = &v7;
  block[6] = index;
  dispatch_sync(outputQueue, block);
  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (void)reset
{
  self->_drawPoints.__end_ = self->_drawPoints.__begin_;
  self->_immutableCount = 0;
  [(CRLPKStrokeGenerator *)self setIsSnappedToRuler:0];
  sub_1002246C8(&self->_outputPoints.__begin_, 0);
  self->_outputImmutableCount = 0;
  self->_inputHasChanged = 0;
}

+ (_CRLPKStrokePoint)outputPointFromInputPoint:(SEL)point
{
  v4 = *&a4->var1;
  retstr->location = a4->var0;
  var5 = a4->var5;
  *&retstr->force = v4;
  retstr->altitude = a4->var3;
  retstr->opacity = 1.0;
  retstr->edgeWidth = 0.0;
  *&retstr->radius = xmmword_101463500;
  retstr->timestamp = var5;
  return result;
}

- (_CRLPKStrokePoint)outputCurrentStrokePoint:(SEL)point
{
  v5 = *&a4->var5;
  v10[2] = *&a4->var3;
  v10[3] = v5;
  v10[4] = *&a4->var7;
  v11 = *&a4->var9;
  v6 = *&a4->var1;
  v10[0] = a4->var0;
  v10[1] = v6;
  currentStroke = self->_currentStroke;
  if (currentStroke)
  {
    [(CRLPKStroke *)currentStroke _baseValues];
  }

  else
  {
    memset(v9, 0, sizeof(v9));
  }

  return [(CRLPKStrokeGenerator *)self outputPoint:v10 baseValues:v9];
}

- (_CRLPKStrokePoint)outputPoint:(SEL)point baseValues:(id *)values
{
  strokeMaxForce = self->_strokeMaxForce;
  if (strokeMaxForce <= values->var1)
  {
    strokeMaxForce = values->var1;
  }

  self->_strokeMaxForce = strokeMaxForce;
  self->_eraserIndicatorAlpha = 1.0;
  v6 = *&values->var5;
  v9[2] = *&values->var3;
  v9[3] = v6;
  v9[4] = *&values->var7;
  v10 = *&values->var9;
  v7 = *&values->var1;
  v9[0] = values->var0;
  v9[1] = v7;
  return [CRLPKStrokeGenerator outputPointFromInputPoint:v9, a5];
}

- (int64_t)fetchFilteredPointsFromIndex:(int64_t)index intoVector:(void *)vector
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  outputQueue = self->_outputQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100224AEC;
  v7[3] = &unk_10184A480;
  v7[6] = vector;
  v7[7] = index;
  v7[4] = self;
  v7[5] = &v8;
  dispatch_sync(outputQueue, v7);
  v5 = v9[3];
  _Block_object_dispose(&v8, 8);
  return v5;
}

- (void)drawingUpdatePoint:(id *)point
{
  outputQueue = self->_outputQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v5 = *&point->var5;
  v10 = *&point->var3;
  v11 = v5;
  v12 = *&point->var7;
  v6 = *&point->var1;
  var0 = point->var0;
  v7[2] = sub_100224C8C;
  v7[3] = &unk_10184A4A8;
  v7[4] = self;
  v13 = *&point->var9;
  v9 = v6;
  dispatch_async(outputQueue, v7);
  [(CRLPKStrokeGenerator *)self drawingUpdateAllPoints];
}

- (void)drawingUpdateAllPoints
{
  outputQueue = self->_outputQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100224E60;
  block[3] = &unk_10183F960;
  block[4] = self;
  dispatch_async(outputQueue, block);
}

- (void)updateImmutableCount
{
  v3 = +[NSProcessInfo processInfo];
  [v3 systemUptime];
  v5 = v4;

  if (![(CRLPKStrokeGenerator *)self canSnapToRuler])
  {
    begin = self->_drawPoints.__begin_;
    v7 = self->_drawPoints.__end_ - begin;
    if (v7)
    {
      v8 = 0x2E8BA2E8BA2E8BA3 * (v7 >> 3);
      for (i = self->_immutableCount; i < v8; self->_immutableCount = i)
      {
        v10 = (begin + 88 * i);
        if ((v10[8] & 0x8000000000000000) == 0)
        {
          if (v10[6] >= v5 + -0.1)
          {
            return;
          }

          v10[8] = NAN;
        }

        if (v10[7])
        {
          break;
        }

        i = self->_immutableCount + 1;
      }
    }
  }
}

- (void)removePredictedTouches
{
  begin = self->_drawPoints.__begin_;
  end = self->_drawPoints.__end_;
  p_drawPoints = &self->_drawPoints;
  v5 = 0x2E8BA2E8BA2E8BA3 * ((end - begin) >> 3);
  for (i = end - 32; v5-- >= 1; i -= 88)
  {
    v8 = *i;
    if ((v8 & 1) == 0)
    {
      sub_1000C1498(p_drawPoints, v5 + 1);
      return;
    }
  }
}

- (void)addPoints:()vector<CRLPKInputPoint
{
  inputQueue = self->_inputQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3321888768;
  v4[2] = sub_100225204;
  v4[3] = &unk_10184A4D0;
  v4[4] = self;
  __p = 0;
  v6 = 0;
  v7 = 0;
  sub_10022BB30(&__p, a3->__begin_, a3->__end_, 0x2E8BA2E8BA2E8BA3 * ((a3->__end_ - a3->__begin_) >> 3));
  dispatch_async(inputQueue, v4);
  if (__p)
  {
    v6 = __p;
    operator delete(__p);
  }
}

- (void)addPoint:(id *)point
{
  inputQueue = self->_inputQueue;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v4 = *&point->var5;
  v9 = *&point->var3;
  v10 = v4;
  v11 = *&point->var7;
  v5 = *&point->var1;
  var0 = point->var0;
  v6[2] = sub_10022545C;
  v6[3] = &unk_10184A4A8;
  v6[4] = self;
  v12 = *&point->var9;
  v8 = v5;
  dispatch_async(inputQueue, v6);
}

- (void)_drawingAddPoint:(id *)point
{
  self->_inputHasChanged = 1;
  if (!point->var6)
  {
    [(CRLPKStrokeGenerator *)self removePredictedTouches];
  }

  [(CRLPKStrokeGenerator *)self snapPointToRuler:point->var0.x, point->var0.y];
  point->var0.x = v5;
  point->var0.y = v6;
  sub_100224CAC(&self->_drawPoints, point);
  [(CRLPKStrokeGenerator *)self updateRulerSnapping];
  [(CRLPKStrokeGenerator *)self drawingUpdateAllPoints];
  [(CRLPKStrokeGenerator *)self updateImmutableCount];
  x = point->var0.x;
  y = point->var0.y;

  [(CRLPKStrokeGenerator *)self setLastPoint:x, y];
}

- (void)drawingEndedWithCompletion:(id)completion
{
  completionCopy = completion;
  inputQueue = self->_inputQueue;
  v7 = _NSConcreteStackBlock;
  v8 = 3221225472;
  v9 = sub_1002256B8;
  v10 = &unk_10184A530;
  selfCopy = self;
  v12 = completionCopy;
  v6 = completionCopy;
  dispatch_async(inputQueue, &v7);
  [(CRLPKStrokeGenerator *)self setLastPoint:INFINITY, INFINITY, v7, v8, v9, v10, selfCopy];
}

- (void)drawingCancelledWithCompletion:(id)completion
{
  completionCopy = completion;
  inputQueue = self->_inputQueue;
  v7 = _NSConcreteStackBlock;
  v8 = 3221225472;
  v9 = sub_100225BDC;
  v10 = &unk_10184A558;
  selfCopy = self;
  v12 = completionCopy;
  v6 = completionCopy;
  dispatch_async(inputQueue, &v7);
  [(CRLPKStrokeGenerator *)self setLastPoint:INFINITY, INFINITY, v7, v8, v9, v10, selfCopy];
}

+ (vector<CRLPKInputPoint,)inputPointsFromPath:(id)path
{
  v54 = 0;
  v55 = 0;
  v56 = 0;
  sub_100263520(a4, &v54);
  v51 = 0;
  v52 = 0;
  v53 = 0;
  v49 = 0;
  v50 = 0;
  v48 = 0;
  sub_10022BBFC(&v48, v54, v55, (v55 - v54) >> 4);
  sub_1002635B8(&v48, &v51);
  if (v48)
  {
    v49 = v48;
    operator delete(v48);
  }

  __p = 0;
  v46 = 0;
  v47 = 0;
  sub_10022BBFC(&__p, v54, v55, (v55 - v54) >> 4);
  v5 = sub_100262F4C(&__p) * 0.01;
  v6 = fabs(sqrt(v5));
  if (v5 == -INFINITY)
  {
    v7 = INFINITY;
  }

  else
  {
    v7 = v6;
  }

  if (__p)
  {
    v46 = __p;
    operator delete(__p);
  }

  v42 = 0;
  v43 = 0;
  v44 = 0;
  v40 = 0;
  v41 = 0;
  v39 = 0;
  sub_10022BBFC(&v39, v54, v55, (v55 - v54) >> 4);
  sub_10050381C(&v39, &v42);
  if (v39)
  {
    v40 = v39;
    operator delete(v39);
  }

  __src = 0;
  v37 = 0;
  v38 = 0;
  if (v55 != v54)
  {
    v8 = 0;
    v9 = 0;
    v10 = 0.0;
    do
    {
      v10 = v10 + v51[v9] * *(v42 + v9);
      if (v8 >= v38)
      {
        v11 = __src;
        v12 = v8 - __src;
        v13 = (v8 - __src) >> 3;
        v14 = v13 + 1;
        if ((v13 + 1) >> 61)
        {
          sub_1000C1D48();
        }

        v15 = v38 - __src;
        if ((v38 - __src) >> 2 > v14)
        {
          v14 = v15 >> 2;
        }

        if (v15 >= 0x7FFFFFFFFFFFFFF8)
        {
          v16 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v16 = v14;
        }

        if (v16)
        {
          sub_1000E7D14(&__src, v16);
        }

        v17 = (v8 - __src) >> 3;
        v18 = (8 * v13);
        v19 = (8 * v13 - 8 * v17);
        *v18 = v10;
        v8 = v18 + 1;
        memcpy(v19, v11, v12);
        v20 = __src;
        __src = v19;
        v37 = v8;
        v38 = 0;
        if (v20)
        {
          operator delete(v20);
        }
      }

      else
      {
        *v8++ = v10;
      }

      v37 = v8;
      ++v9;
    }

    while (v9 < (v55 - v54) >> 4);
    v21 = __src;
    if (v8 != __src)
    {
      v22 = (v8 - __src) >> 3;
      if (v22 <= 1)
      {
        v22 = 1;
      }

      do
      {
        *v21 = *v21 / *(v8 - 1);
        ++v21;
        --v22;
      }

      while (v22);
    }
  }

  retstr->__begin_ = 0;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  +[NSDate timeIntervalSinceReferenceDate];
  v24 = v54;
  if (v55 != v54)
  {
    v25 = v23;
    v26 = 0;
    v27 = 0;
    do
    {
      v35 = 0;
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v30 = 0u;
      v28 = ((v37 - __src) >> 3) - 1;
      if (v27 < v28)
      {
        v28 = v27;
      }

      *&v33 = v25 + v7 * *(__src + v28);
      v30 = *(&v24->__begin_ + v26);
      *&v34 = -1;
      *&v31 = 0xBFF0000000000000;
      sub_100224CAC(retstr, &v30);
      ++v27;
      v24 = v54;
      v26 += 16;
    }

    while (v27 < (v55 - v54) >> 4);
  }

  if (__src)
  {
    v37 = __src;
    operator delete(__src);
  }

  if (v42)
  {
    v43 = v42;
    operator delete(v42);
  }

  if (v51)
  {
    v52 = v51;
    operator delete(v51);
  }

  result = v54;
  if (v54)
  {
    v55 = v54;
    operator delete(v54);
  }

  return result;
}

- (id)strokeFromPath:(CGPath *)path inputScale:(double)scale
{
  v7 = objc_opt_class();
  if (v7)
  {
    [v7 inputPointsFromPath:path];
  }

  else
  {
    v24 = 0;
    v25 = 0;
    v26 = 0;
  }

  v8 = dispatch_semaphore_create(0);
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = sub_100226328;
  v22 = sub_100226338;
  v23 = objc_alloc_init(CRLPKStroke);
  [(CRLPKStrokeGenerator *)self drawingBeganWithStroke:v19[5] inputType:0 inputScale:0 start:scale];
  __p = 0;
  v16 = 0;
  v17 = 0;
  sub_10022BB30(&__p, v24, v25, 0x2E8BA2E8BA2E8BA3 * ((v25 - v24) >> 3));
  [(CRLPKStrokeGenerator *)self addPoints:&__p];
  if (__p)
  {
    v16 = __p;
    operator delete(__p);
  }

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100226340;
  v12[3] = &unk_10184A580;
  v14 = &v18;
  v9 = v8;
  v13 = v9;
  [(CRLPKStrokeGenerator *)self drawingEndedWithCompletion:v12];
  dispatch_semaphore_wait(v9, 0xFFFFFFFFFFFFFFFFLL);
  v10 = v19[5];

  _Block_object_dispose(&v18, 8);
  if (v24)
  {
    v25 = v24;
    operator delete(v24);
  }

  return v10;
}

- (void)whenFinishedProcessingPointsCallCompletion:(id)completion
{
  completionCopy = completion;
  inputQueue = self->_inputQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100226438;
  v7[3] = &unk_10184A530;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(inputQueue, v7);
}

- (CGAffineTransform)rulerTransform
{
  v3 = *&self[7].d;
  *&retstr->a = *&self[7].b;
  *&retstr->c = v3;
  *&retstr->tx = *&self[7].ty;
  return self;
}

- (void)setRulerTransform:(CGAffineTransform *)transform
{
  v3 = *&transform->a;
  v4 = *&transform->tx;
  *&self->_rulerTransform.c = *&transform->c;
  *&self->_rulerTransform.tx = v4;
  *&self->_rulerTransform.a = v3;
}

- (CGPoint)lastPoint
{
  objc_copyStruct(v4, &self->_lastPoint, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.y = v3;
  result.x = v2;
  return result;
}

- (id).cxx_construct
{
  *(self + 13) = 0;
  *(self + 14) = 0;
  *(self + 15) = 0;
  *(self + 8) = 0u;
  *(self + 24) = 0u;
  *(self + 40) = 0u;
  return self;
}

@end