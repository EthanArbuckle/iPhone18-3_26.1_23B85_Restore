@interface CRLPKStroke
- (BOOL)isEqual:(id)a3;
- (CGAffineTransform)_transform;
- (CGPath)newPathRepresentation;
- (CGPoint)_clipNormal;
- (CGPoint)_clipOrigin;
- (CGPoint)_interpolatedPointForSplineSegment:(int64_t)a3 t:(double)a4;
- (CGPoint)_splineControlPoint:(int64_t)a3;
- (CGPoint)clipNormal;
- (CGPoint)clipOrigin;
- (CGRect)_bounds;
- (CRLPKCompressedStrokePoint)_completedPoints;
- (CRLPKStroke)init;
- (CRLPKStroke)initWithStroke:(id)a3 hidden:(BOOL)a4 version:(_CRLPKStrokeID *)a5;
- (CRLPKStroke)initWithStroke:(id)a3 hidden:(BOOL)a4 version:(_CRLPKStrokeID *)a5 transform:(CGAffineTransform *)a6;
- (CRLPKStroke)initWithStroke:(id)a3 points:(CRLPKCompressedStrokePoint *)a4 count:(unint64_t)a5 copy:(BOOL)a6;
- (_CRLPKInflightStrokePoint)_inflightPoints;
- (_CRLPKStrokePoint)_baseValues;
- (double)_interpolatedTimeForSplineSegment:(int64_t)a3 t:(double)a4;
- (double)_lengthOfSplineSegment:(unint64_t)a3;
- (double)_strokeLength;
- (id)description;
- (id)descriptionExtended;
- (id)p_points;
- (int64_t)compareToStroke:(id)a3;
- (void)_applyTransform:(CGAffineTransform *)a3;
- (void)_insertStrokePoint:(void *)a3 atIndex:(unint64_t)a4;
- (void)_invalidateBounds;
- (void)_removeStrokePointAtIndex:(unint64_t)a3;
- (void)_replaceStrokePointAtIndex:(unint64_t)a3 withStrokePoint:(void *)a4;
- (void)_setBaseValues:(_CRLPKStrokePoint *)a3;
- (void)_setPoints:(CRLPKCompressedStrokePoint *)a3 count:(unint64_t)a4 copy:(BOOL)a5;
- (void)_setStrokeID:(_CRLPKStrokeID *)a3;
- (void)_setTransform:(CGAffineTransform *)a3;
- (void)_strokePointAtIndex:(unint64_t)a3;
- (void)set_version:(_CRLPKStrokeID *)a3;
@end

@implementation CRLPKStroke

- (CRLPKStroke)init
{
  v8.receiver = self;
  v8.super_class = CRLPKStroke;
  v2 = [(CRLPKStroke *)&v8 init];
  v2[225] = 1;
  *(v2 + 30) = 1;
  v3 = objc_alloc_init(_CRLPKStrokeData);
  v4 = *(v2 + 1);
  *(v2 + 1) = v3;

  size = CGRectNull.size;
  *(v2 + 17) = CGRectNull.origin;
  *(v2 + 18) = size;
  v6 = *&CGAffineTransformIdentity.c;
  *(v2 + 168) = *&CGAffineTransformIdentity.a;
  *(v2 + 184) = v6;
  *(v2 + 200) = *&CGAffineTransformIdentity.tx;
  return v2;
}

- (CRLPKStroke)initWithStroke:(id)a3 points:(CRLPKCompressedStrokePoint *)a4 count:(unint64_t)a5 copy:(BOOL)a6
{
  v6 = a6;
  v10 = a3;
  v11 = [v10 _isHidden];
  if (v10)
  {
    [v10 _version];
  }

  else
  {
    memset(v16, 0, sizeof(v16));
  }

  v12 = [(CRLPKStroke *)self initWithStroke:v10 hidden:v11 version:v16];
  v13 = [[_CRLPKStrokeData alloc] initWithPoints:a4 count:a5 copy:v6];
  strokeData = v12->_strokeData;
  v12->_strokeData = v13;

  v12->_inputType = [v10 _inputType];
  return v12;
}

- (CRLPKStroke)initWithStroke:(id)a3 hidden:(BOOL)a4 version:(_CRLPKStrokeID *)a5
{
  v8 = *a5;
  v5 = *&CGAffineTransformIdentity.c;
  v7[0] = *&CGAffineTransformIdentity.a;
  v7[1] = v5;
  v7[2] = *&CGAffineTransformIdentity.tx;
  return [(CRLPKStroke *)self initWithStroke:a3 hidden:a4 version:&v8 transform:v7];
}

- (CRLPKStroke)initWithStroke:(id)a3 hidden:(BOOL)a4 version:(_CRLPKStrokeID *)a5 transform:(CGAffineTransform *)a6
{
  v10 = a3;
  v23.receiver = self;
  v23.super_class = CRLPKStroke;
  v11 = [(CRLPKStroke *)&v23 init];
  v11[225] = 0;
  *(v11 + 30) = [v10 _inputType];
  v11[224] = a4;
  v12 = *&a5->clock;
  *(v11 + 33) = *&a5->replicaUUID[12];
  *(v11 + 248) = v12;
  if (v10)
  {
    [v10 _strokeID];
    *(v11 + 24) = v24;
    *(v11 + 5) = v25;
    [v10 _baseValues];
  }

  else
  {
    *(v11 + 3) = 0;
    *(v11 + 4) = 0;
    *(v11 + 5) = 0;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v24 = 0u;
  }

  v14 = v27;
  v13 = v28;
  *(v11 + 5) = v26;
  *(v11 + 6) = v14;
  *(v11 + 7) = v13;
  v15 = v25;
  *(v11 + 3) = v24;
  *(v11 + 4) = v15;
  v16 = [v10 _strokeData];
  v17 = *(v11 + 1);
  *(v11 + 1) = v16;

  size = CGRectNull.size;
  *(v11 + 17) = CGRectNull.origin;
  *(v11 + 18) = size;
  [v10 timestamp];
  *(v11 + 29) = v19;
  v20 = *&a6->a;
  v21 = *&a6->c;
  *(v11 + 200) = *&a6->tx;
  *(v11 + 184) = v21;
  *(v11 + 168) = v20;

  return v11;
}

- (CGPath)newPathRepresentation
{
  v2 = [(CRLPKStroke *)self p_points];
  v3 = sub_1003D6768(v2, 0);

  return v3;
}

- (id)p_points
{
  pointsArray = self->_pointsArray;
  if (!pointsArray)
  {
    v4 = [[CRLPKCompressedStrokePointArray alloc] initWithStroke:self];
    v5 = self->_pointsArray;
    self->_pointsArray = &v4->super;

    pointsArray = self->_pointsArray;
  }

  return pointsArray;
}

- (void)_setPoints:(CRLPKCompressedStrokePoint *)a3 count:(unint64_t)a4 copy:(BOOL)a5
{
  v6 = [[_CRLPKStrokeData alloc] initWithPoints:a3 count:a4 copy:a5];
  strokeData = self->_strokeData;
  self->_strokeData = v6;
}

- (_CRLPKInflightStrokePoint)_inflightPoints
{
  if (self->_inflight)
  {
    return self->_strokeData->_points;
  }

  else
  {
    return 0;
  }
}

- (CRLPKCompressedStrokePoint)_completedPoints
{
  if (self->_inflight)
  {
    return 0;
  }

  else
  {
    return self->_strokeData->_points;
  }
}

- (void)_strokePointAtIndex:(unint64_t)a3
{
  if (self->_strokeData->_pointsCount <= a3)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101386600();
    }

    v6 = off_1019EDA68;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      sub_101386614();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10138667C();
    }

    v7 = off_1019EDA68;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_10130E89C();
    }

    v8 = [NSString stringWithUTF8String:"[CRLPKStroke _strokePointAtIndex:]"];
    v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/PencilKit/CRLPKStroke.mm"];
    v10 = NSStringFromSelector(a2);
    [CRLAssertionHandler handleFailureInFunction:v8 file:v9 lineNumber:241 isFatal:0 description:"Invalid index in %@", v10];
  }

  v11 = 24;
  if (self->_inflight)
  {
    v11 = 80;
  }

  return &self->_strokeData->_points[a3 * v11];
}

- (void)_insertStrokePoint:(void *)a3 atIndex:(unint64_t)a4
{
  strokeData = self->_strokeData;
  pointsCount = strokeData->_pointsCount;
  if (pointsCount < a4)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_1013866A4();
    }

    v10 = off_1019EDA68;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      sub_1013866B8();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101386720();
    }

    v11 = off_1019EDA68;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_10130E89C();
    }

    v12 = [NSString stringWithUTF8String:"[CRLPKStroke _insertStrokePoint:atIndex:]"];
    v13 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/PencilKit/CRLPKStroke.mm"];
    v14 = NSStringFromSelector(a2);
    [CRLAssertionHandler handleFailureInFunction:v12 file:v13 lineNumber:255 isFatal:0 description:"Invalid index in %@", v14];

    strokeData = self->_strokeData;
    pointsCount = strokeData->_pointsCount;
  }

  if (self->_inflight)
  {
    v15 = 80;
  }

  else
  {
    v15 = 24;
  }

  pointsMaxCount = strokeData->_pointsMaxCount;
  if (pointsCount + 1 >= pointsMaxCount)
  {
    strokeData->_pointsMaxCount = 2 * pointsMaxCount;
    self->_strokeData->_points = malloc_type_realloc(self->_strokeData->_points, self->_strokeData->_pointsMaxCount * v15, 0x100004077774924uLL);
    strokeData = self->_strokeData;
    pointsCount = strokeData->_pointsCount;
  }

  memmove(&strokeData->_points[v15 * a4 + v15], &strokeData->_points[v15 * a4], (pointsCount - a4) * v15);
  [(CRLPKStroke *)self _replaceStrokePointAtIndex:a4 withStrokePoint:a3];
  ++self->_strokeData->_pointsCount;
}

- (void)_removeStrokePointAtIndex:(unint64_t)a3
{
  strokeData = self->_strokeData;
  pointsCount = strokeData->_pointsCount;
  if (pointsCount <= a3)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101386748();
    }

    v8 = off_1019EDA68;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      sub_10138675C();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_1013867C4();
    }

    v9 = off_1019EDA68;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_10130E89C();
    }

    v10 = [NSString stringWithUTF8String:"[CRLPKStroke _removeStrokePointAtIndex:]"];
    v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/PencilKit/CRLPKStroke.mm"];
    v12 = NSStringFromSelector(a2);
    [CRLAssertionHandler handleFailureInFunction:v10 file:v11 lineNumber:274 isFatal:0 description:"Invalid index in %@", v12];

    strokeData = self->_strokeData;
    pointsCount = strokeData->_pointsCount;
  }

  v13 = 24;
  if (self->_inflight)
  {
    v13 = 80;
  }

  memmove(&strokeData->_points[v13 * a3], &strokeData->_points[v13 * a3 + v13], (pointsCount + ~a3) * v13);
  --self->_strokeData->_pointsCount;
}

- (void)_replaceStrokePointAtIndex:(unint64_t)a3 withStrokePoint:(void *)a4
{
  points = self->_strokeData->_points;
  if (self->_inflight)
  {
    v5 = &points[80 * a3];
    *v5 = *a4;
    v6 = *(a4 + 1);
    v7 = *(a4 + 2);
    v8 = *(a4 + 4);
    *(v5 + 3) = *(a4 + 3);
    *(v5 + 4) = v8;
    *(v5 + 1) = v6;
    *(v5 + 2) = v7;
  }

  else
  {
    v9 = *a4;
    v10 = &points[24 * a3];
    *(v10 + 2) = *(a4 + 2);
    *v10 = v9;
  }
}

- (void)_applyTransform:(CGAffineTransform *)a3
{
  v5 = [(CRLPKStroke *)self _completedPoints];
  v6 = *&a3->c;
  v15[0] = *&a3->a;
  v15[1] = v6;
  v15[2] = *&a3->tx;
  v7 = sub_100139980(v15);
  v8 = [(CRLPKStroke *)self _pointsCount];
  if (v8 >= 1)
  {
    v9 = v8;
    do
    {
      v10 = sub_10013593C(v5);
      v12 = vaddq_f64(*&a3->tx, vmlaq_n_f64(vmulq_n_f64(*&a3->c, v11), *&a3->a, v10));
      *&v13 = sub_10013592C(v5, v12.f64[0], v12.f64[1]);
      v14 = sub_1001359D4(v5, v13);
      sub_10013598C(v5++, v7 + v14);
      --v9;
    }

    while (v9);
  }

  [(CRLPKStroke *)self _invalidateBounds];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v6 = (objc_opt_isKindOfClass() & 1) != 0 && ((v12 = *&self->_strokeID.clock, v13 = *&self->_strokeID.replicaUUID[12], !v4) ? (v5 = 0, v9 = 0, v10 = 0, v11 = 0) : ([v4 _strokeID], v5 = v8), v12 == v5 && !sub_1004A262C(&v12 + 4, &v9)) && HIDWORD(v13) == HIDWORD(v11);

  return v6;
}

- (void)_setBaseValues:(_CRLPKStrokePoint *)a3
{
  *&self->_baseValues.timestamp = *&a3->timestamp;
  v3 = *&a3->location.y;
  v4 = *&a3->aspectRatio;
  v5 = *&a3->altitude;
  *&self->_baseValues.force = *&a3->force;
  *&self->_baseValues.altitude = v5;
  *&self->_baseValues.location.y = v3;
  *&self->_baseValues.aspectRatio = v4;
}

- (_CRLPKStrokePoint)_baseValues
{
  v3 = *&self[1].location.y;
  *&retstr->aspectRatio = *&self[1].timestamp;
  *&retstr->force = v3;
  *&retstr->altitude = *&self[1].aspectRatio;
  v4 = *&self->altitude;
  *&retstr->timestamp = *&self->force;
  *&retstr->location.y = v4;
  return self;
}

- (CGPoint)_clipOrigin
{
  x = self->_clipOrigin.x;
  y = self->_clipOrigin.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)_clipNormal
{
  x = self->_clipNormal.x;
  y = self->_clipNormal.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGRect)_bounds
{
  if (!self->_inflight && CGRectIsNull(self->_bounds))
  {
    x = CGRectNull.origin.x;
    y = CGRectNull.origin.y;
    width = CGRectNull.size.width;
    height = CGRectNull.size.height;
    strokeData = self->_strokeData;
    if (strokeData->_pointsCount)
    {
      v8 = 0;
      points = strokeData->_points;
      do
      {
        v10 = *points;
        v23 = *(points + 2);
        v22 = v10;
        v11 = sub_10013594C(&v22, *&v10);
        v12 = sub_100135978(&v22, v11);
        v13 = sub_100135960(&v22, v12);
        v14 = 1.0;
        if (v13 > 1.0)
        {
          v14 = sub_100135960(&v22, 1.0);
        }

        v15 = (v11 + v12) * v14 + 2.0;
        v16 = sub_10013593C(&v22);
        v28.origin.x = self->_transform.tx + v17 * self->_transform.c + self->_transform.a * v16 - v15;
        v28.origin.y = self->_transform.ty + v17 * self->_transform.d + self->_transform.b * v16 - v15;
        v28.size.width = v15 + v15;
        v24.origin.x = x;
        v24.origin.y = y;
        v24.size.width = width;
        v24.size.height = height;
        v28.size.height = v15 + v15;
        v25 = CGRectUnion(v24, v28);
        x = v25.origin.x;
        y = v25.origin.y;
        width = v25.size.width;
        height = v25.size.height;
        ++v8;
        points += 24;
      }

      while (v8 < self->_strokeData->_pointsCount);
    }

    v26.origin.x = x;
    v26.origin.y = y;
    v26.size.width = width;
    v26.size.height = height;
    self->_bounds = CGRectIntegral(v26);
  }

  v18 = self->_bounds.origin.x;
  v19 = self->_bounds.origin.y;
  v20 = self->_bounds.size.width;
  v21 = self->_bounds.size.height;
  result.size.height = v21;
  result.size.width = v20;
  result.origin.y = v19;
  result.origin.x = v18;
  return result;
}

- (void)_invalidateBounds
{
  size = CGRectNull.size;
  self->_bounds.origin = CGRectNull.origin;
  self->_bounds.size = size;
}

- (void)_setStrokeID:(_CRLPKStrokeID *)a3
{
  v3 = *&a3->clock;
  *&self->_strokeID.replicaUUID[12] = *&a3->replicaUUID[12];
  *&self->_strokeID.clock = v3;
}

- (id)description
{
  v3 = [[NSUUID alloc] initWithUUIDBytes:self->_strokeID.replicaUUID];
  v4 = [[NSUUID alloc] initWithUUIDBytes:self->_version.replicaUUID];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [v3 UUIDString];
  clock = self->_strokeID.clock;
  subclock = self->_strokeID.subclock;
  v10 = [v4 UUIDString];
  v11 = v10;
  if (self->_hidden)
  {
    v12 = @" hidden";
  }

  else
  {
    v12 = &stru_1018BCA28;
  }

  v13 = [NSString stringWithFormat:@"<%@: %p id=%@:%d.%d v=%@:%d.%d%@>", v6, self, v7, clock, subclock, v10, self->_version.clock, self->_version.subclock, v12];

  return v13;
}

- (id)descriptionExtended
{
  v31 = [[NSUUID alloc] initWithUUIDBytes:self->_strokeID.replicaUUID];
  v30 = [[NSUUID alloc] initWithUUIDBytes:self->_version.replicaUUID];
  v29 = [[CRLPKStrokePoint alloc] initWithStroke:self strokePoint:&self->_baseValues inflight:1];
  v3 = [(CRLPKStrokePoint *)v29 description];
  v28 = [v3 stringByReplacingOccurrencesOfString:@"\t" withString:@"\t\t"];

  v4 = objc_opt_class();
  v27 = NSStringFromClass(v4);
  clock = self->_strokeID.clock;
  subclock = self->_strokeID.subclock;
  v7 = self->_version.clock;
  v8 = self->_version.subclock;
  timestamp = self->_timestamp;
  if (self->_inflight)
  {
    v10 = @"YES";
  }

  else
  {
    v10 = @"NO";
  }

  if (self->_hidden)
  {
    v11 = @"YES";
  }

  else
  {
    v11 = @"NO";
  }

  pointsCount = self->_strokeData->_pointsCount;
  v24 = v11;
  [(CRLPKStroke *)self _bounds];
  v26 = NSStringFromCGRect(v34);
  v21 = v10;
  v22 = v8;
  NSStringFromCGPoint(self->_clipOrigin);
  v25 = v12 = v7;
  v13 = NSStringFromCGPoint(self->_clipNormal);
  clipped = self->_clipped;
  v15 = *&self->_transform.c;
  *&transform.a = *&self->_transform.a;
  *&transform.c = v15;
  *&transform.tx = *&self->_transform.tx;
  v16 = NSStringFromCGAffineTransform(&transform);
  v17 = v16;
  if (clipped)
  {
    v18 = @"YES";
  }

  else
  {
    v18 = @"NO";
  }

  v19 = [NSString stringWithFormat:@"%@: %p (id: %@ %d.%d, version: %@ %d.%d)\n\ttimestamp: %g\n\tinflight: %@\n\thidden: %@\n\t%lu points\n\tbounds: %@\n\tclip origin: %@\n\tclip normal: %@\n\tclipped: %@\n\tbase values:%@\n \ttransform:%@\n", v27, self, v31, clock, subclock, v30, v12, v22, *&timestamp, v21, v24, pointsCount, v26, v25, v13, v18, v28, v16];

  return v19;
}

- (int64_t)compareToStroke:(id)a3
{
  v4 = a3;
  [(CRLPKStroke *)self _strokeID];
  if (v4)
  {
    [v4 _strokeID];
  }

  else
  {
    memset(v7, 0, sizeof(v7));
  }

  v5 = sub_1004EEFA8(v8, v7);

  return v5;
}

- (CGPoint)_splineControlPoint:(int64_t)a3
{
  if (a3 < -1 || (strokeData = self->_strokeData, strokeData->_pointsCount < a3))
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_1013867EC();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101386800();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101386888();
    }

    v6 = off_1019EDA68;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_10130E89C();
    }

    v7 = [NSString stringWithUTF8String:"[CRLPKStroke _splineControlPoint:]"];
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/PencilKit/CRLPKStroke.mm"];
    [CRLAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:427 isFatal:0 description:"%ld is out of bounds", a3];

    strokeData = self->_strokeData;
  }

  points = strokeData->_points;
  v10 = [(CRLPKStroke *)self _pointsCount];
  if (a3 < 0)
  {
    v16 = sub_10013593C(points);
    v41 = v17;
    v43 = v16;
    [(CRLPKStroke *)self _transform];
    v35 = v45;
    v36 = v46;
    v37 = v44;
    v18 = sub_10013593C(points + 24);
    v38 = v19;
    v39 = v18;
    [(CRLPKStroke *)self _transform];
LABEL_18:
    __asm { FMOV            V2.2D, #2.0 }

    v15 = vmlaq_f64(vnegq_f64(vaddq_f64(v46, vmlaq_n_f64(vmulq_n_f64(v45, v38), v44, v39))), _Q2, vaddq_f64(v36, vmlaq_n_f64(vmulq_n_f64(v35, v41), v37, v43)));
    goto LABEL_19;
  }

  v11 = v10;
  v12 = v10;
  if ((v10 & 0x8000000000000000) != 0)
  {
    v31 = sub_1013868B0(v47, &v44);
    v32 = v44.f64[0];
    if (v31)
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_10130E89C();
    }

    v33 = [NSString stringWithUTF8String:"[CRLPKStroke _splineControlPoint:]"];
    v34 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/PencilKit/CRLPKStroke.mm"];
    [CRLAssertionHandler handleFailureInFunction:v33 file:v34 lineNumber:439 isFatal:0 description:"Out-of-bounds type assignment was clamped to max"];

    v12 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if (v12 <= a3)
  {
    v20 = points + 24 * v11;
    v21 = sub_10013593C(v20 - 24);
    v41 = v22;
    v43 = v21;
    [(CRLPKStroke *)self _transform];
    v35 = v45;
    v36 = v46;
    v37 = v44;
    v23 = sub_10013593C(v20 - 48);
    v38 = v24;
    v39 = v23;
    [(CRLPKStroke *)self _transform];
    goto LABEL_18;
  }

  v13 = sub_10013593C(points + 24 * a3);
  v40 = v14;
  v42 = v13;
  [(CRLPKStroke *)self _transform];
  v15 = vaddq_f64(v46, vmlaq_n_f64(vmulq_n_f64(v45, v40), v44, v42));
LABEL_19:
  v30 = v15.f64[1];
  result.x = v15.f64[0];
  result.y = v30;
  return result;
}

- (CGPoint)_interpolatedPointForSplineSegment:(int64_t)a3 t:(double)a4
{
  if (a3 < 0 || [(CRLPKStroke *)self _pointsCount]- 2 < a3)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101386A10();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101386A24();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101386AAC();
    }

    v7 = off_1019EDA68;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_10130E89C();
    }

    v8 = [NSString stringWithUTF8String:"[CRLPKStroke _interpolatedPointForSplineSegment:t:]"];
    v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/PencilKit/CRLPKStroke.mm"];
    [CRLAssertionHandler handleFailureInFunction:v8 file:v9 lineNumber:454 isFatal:0 description:"Segment index %ld is out of bounds", a3];
  }

  x = CGPointZero.x;
  y = CGPointZero.y;
  v12 = a3 - 1;
  v13 = 0.0;
  v14 = -2;
  v15 = 4;
  do
  {
    [(CRLPKStroke *)self _splineControlPoint:v12];
    v17 = v16;
    v19 = v18;
    v20 = sub_1003D605C(v14, a4);
    x = x + v20 * v17;
    y = y + v20 * v19;
    v13 = v13 + v20;
    ++v14;
    ++v12;
    --v15;
  }

  while (v15);
  v21 = x / v13;
  v22 = y / v13;
  result.y = v22;
  result.x = v21;
  return result;
}

- (double)_interpolatedTimeForSplineSegment:(int64_t)a3 t:(double)a4
{
  if (a3 < 0 || [(CRLPKStroke *)self _pointsCount]- 2 < a3)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101386AD4();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101386AE8();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101386B70();
    }

    v6 = off_1019EDA68;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_10130E89C();
    }

    v7 = [NSString stringWithUTF8String:"[CRLPKStroke _interpolatedTimeForSplineSegment:t:]"];
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/PencilKit/CRLPKStroke.mm"];
    [CRLAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:473 isFatal:0 description:"Segment index %ld is out of bounds", a3];
  }

  points = self->_strokeData->_points;
  [(CRLPKStroke *)self timestamp];
  v10 = &points[24 * a3];
  v12 = sub_10013591C(v10, v11);
  [(CRLPKStroke *)self timestamp];
  return v12 + (sub_10013591C(v10 + 6, v13) - v12) * a3;
}

- (double)_lengthOfSplineSegment:(unint64_t)a3
{
  if ([(CRLPKStroke *)self _pointsCount]- 2 < a3)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101386B98();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101386BAC();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101386C34();
    }

    v5 = off_1019EDA68;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_10130E89C();
    }

    v6 = [NSString stringWithUTF8String:"[CRLPKStroke _lengthOfSplineSegment:]"];
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/PencilKit/CRLPKStroke.mm"];
    [CRLAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:484 isFatal:0 description:"Segment index %ld is out of bounds", a3];
  }

  [(CRLPKStroke *)self _splineControlPoint:a3 - 1];
  v9 = v8;
  v11 = v10;
  [(CRLPKStroke *)self _splineControlPoint:a3];
  v13 = v12;
  v15 = v14;
  [(CRLPKStroke *)self _splineControlPoint:a3 + 1];
  v17 = v16;
  v19 = v18;
  [(CRLPKStroke *)self _splineControlPoint:a3 + 2];
  return sub_1003D61F8(v9, v11, v13, v15, v17, v19, v20, v21);
}

- (double)_strokeLength
{
  v3 = 0.0;
  if ([(CRLPKStroke *)self _pointsCount]!= 1)
  {
    [(CRLPKStroke *)self _pointsCount];
    v4 = 0;
    do
    {
      [(CRLPKStroke *)self _lengthOfSplineSegment:v4];
      v3 = v3 + v5;
      ++v4;
    }

    while (v4 <= [(CRLPKStroke *)self _pointsCount]- 2);
  }

  return v3;
}

- (void)set_version:(_CRLPKStrokeID *)a3
{
  v3 = *&a3->clock;
  *&self->_version.replicaUUID[12] = *&a3->replicaUUID[12];
  *&self->_version.clock = v3;
}

- (CGAffineTransform)_transform
{
  v3 = *&self[3].ty;
  *&retstr->a = *&self[3].d;
  *&retstr->c = v3;
  *&retstr->tx = *&self[4].b;
  return self;
}

- (void)_setTransform:(CGAffineTransform *)a3
{
  v3 = *&a3->a;
  v4 = *&a3->c;
  *&self->_transform.tx = *&a3->tx;
  *&self->_transform.c = v4;
  *&self->_transform.a = v3;
}

- (CGPoint)clipOrigin
{
  [(CRLPKStroke *)self _clipOrigin];
  result.y = v3;
  result.x = v2;
  return result;
}

- (CGPoint)clipNormal
{
  [(CRLPKStroke *)self _clipNormal];
  result.y = v3;
  result.x = v2;
  return result;
}

@end