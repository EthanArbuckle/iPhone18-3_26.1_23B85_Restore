@interface CRLPKStroke
- (BOOL)isEqual:(id)equal;
- (CGAffineTransform)_transform;
- (CGPath)newPathRepresentation;
- (CGPoint)_clipNormal;
- (CGPoint)_clipOrigin;
- (CGPoint)_interpolatedPointForSplineSegment:(int64_t)segment t:(double)t;
- (CGPoint)_splineControlPoint:(int64_t)point;
- (CGPoint)clipNormal;
- (CGPoint)clipOrigin;
- (CGRect)_bounds;
- (CRLPKCompressedStrokePoint)_completedPoints;
- (CRLPKStroke)init;
- (CRLPKStroke)initWithStroke:(id)stroke hidden:(BOOL)hidden version:(_CRLPKStrokeID *)version;
- (CRLPKStroke)initWithStroke:(id)stroke hidden:(BOOL)hidden version:(_CRLPKStrokeID *)version transform:(CGAffineTransform *)transform;
- (CRLPKStroke)initWithStroke:(id)stroke points:(CRLPKCompressedStrokePoint *)points count:(unint64_t)count copy:(BOOL)copy;
- (_CRLPKInflightStrokePoint)_inflightPoints;
- (_CRLPKStrokePoint)_baseValues;
- (double)_interpolatedTimeForSplineSegment:(int64_t)segment t:(double)t;
- (double)_lengthOfSplineSegment:(unint64_t)segment;
- (double)_strokeLength;
- (id)description;
- (id)descriptionExtended;
- (id)p_points;
- (int64_t)compareToStroke:(id)stroke;
- (void)_applyTransform:(CGAffineTransform *)transform;
- (void)_insertStrokePoint:(void *)point atIndex:(unint64_t)index;
- (void)_invalidateBounds;
- (void)_removeStrokePointAtIndex:(unint64_t)index;
- (void)_replaceStrokePointAtIndex:(unint64_t)index withStrokePoint:(void *)point;
- (void)_setBaseValues:(_CRLPKStrokePoint *)values;
- (void)_setPoints:(CRLPKCompressedStrokePoint *)points count:(unint64_t)count copy:(BOOL)copy;
- (void)_setStrokeID:(_CRLPKStrokeID *)d;
- (void)_setTransform:(CGAffineTransform *)transform;
- (void)_strokePointAtIndex:(unint64_t)index;
- (void)set_version:(_CRLPKStrokeID *)set_version;
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

- (CRLPKStroke)initWithStroke:(id)stroke points:(CRLPKCompressedStrokePoint *)points count:(unint64_t)count copy:(BOOL)copy
{
  copyCopy = copy;
  strokeCopy = stroke;
  _isHidden = [strokeCopy _isHidden];
  if (strokeCopy)
  {
    [strokeCopy _version];
  }

  else
  {
    memset(v16, 0, sizeof(v16));
  }

  v12 = [(CRLPKStroke *)self initWithStroke:strokeCopy hidden:_isHidden version:v16];
  v13 = [[_CRLPKStrokeData alloc] initWithPoints:points count:count copy:copyCopy];
  strokeData = v12->_strokeData;
  v12->_strokeData = v13;

  v12->_inputType = [strokeCopy _inputType];
  return v12;
}

- (CRLPKStroke)initWithStroke:(id)stroke hidden:(BOOL)hidden version:(_CRLPKStrokeID *)version
{
  v8 = *version;
  v5 = *&CGAffineTransformIdentity.c;
  v7[0] = *&CGAffineTransformIdentity.a;
  v7[1] = v5;
  v7[2] = *&CGAffineTransformIdentity.tx;
  return [(CRLPKStroke *)self initWithStroke:stroke hidden:hidden version:&v8 transform:v7];
}

- (CRLPKStroke)initWithStroke:(id)stroke hidden:(BOOL)hidden version:(_CRLPKStrokeID *)version transform:(CGAffineTransform *)transform
{
  strokeCopy = stroke;
  v23.receiver = self;
  v23.super_class = CRLPKStroke;
  v11 = [(CRLPKStroke *)&v23 init];
  v11[225] = 0;
  *(v11 + 30) = [strokeCopy _inputType];
  v11[224] = hidden;
  v12 = *&version->clock;
  *(v11 + 33) = *&version->replicaUUID[12];
  *(v11 + 248) = v12;
  if (strokeCopy)
  {
    [strokeCopy _strokeID];
    *(v11 + 24) = v24;
    *(v11 + 5) = v25;
    [strokeCopy _baseValues];
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
  _strokeData = [strokeCopy _strokeData];
  v17 = *(v11 + 1);
  *(v11 + 1) = _strokeData;

  size = CGRectNull.size;
  *(v11 + 17) = CGRectNull.origin;
  *(v11 + 18) = size;
  [strokeCopy timestamp];
  *(v11 + 29) = v19;
  v20 = *&transform->a;
  v21 = *&transform->c;
  *(v11 + 200) = *&transform->tx;
  *(v11 + 184) = v21;
  *(v11 + 168) = v20;

  return v11;
}

- (CGPath)newPathRepresentation
{
  p_points = [(CRLPKStroke *)self p_points];
  v3 = sub_1003D6768(p_points, 0);

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

- (void)_setPoints:(CRLPKCompressedStrokePoint *)points count:(unint64_t)count copy:(BOOL)copy
{
  v6 = [[_CRLPKStrokeData alloc] initWithPoints:points count:count copy:copy];
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

- (void)_strokePointAtIndex:(unint64_t)index
{
  if (self->_strokeData->_pointsCount <= index)
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

  return &self->_strokeData->_points[index * v11];
}

- (void)_insertStrokePoint:(void *)point atIndex:(unint64_t)index
{
  strokeData = self->_strokeData;
  pointsCount = strokeData->_pointsCount;
  if (pointsCount < index)
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

  memmove(&strokeData->_points[v15 * index + v15], &strokeData->_points[v15 * index], (pointsCount - index) * v15);
  [(CRLPKStroke *)self _replaceStrokePointAtIndex:index withStrokePoint:point];
  ++self->_strokeData->_pointsCount;
}

- (void)_removeStrokePointAtIndex:(unint64_t)index
{
  strokeData = self->_strokeData;
  pointsCount = strokeData->_pointsCount;
  if (pointsCount <= index)
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

  memmove(&strokeData->_points[v13 * index], &strokeData->_points[v13 * index + v13], (pointsCount + ~index) * v13);
  --self->_strokeData->_pointsCount;
}

- (void)_replaceStrokePointAtIndex:(unint64_t)index withStrokePoint:(void *)point
{
  points = self->_strokeData->_points;
  if (self->_inflight)
  {
    v5 = &points[80 * index];
    *v5 = *point;
    v6 = *(point + 1);
    v7 = *(point + 2);
    v8 = *(point + 4);
    *(v5 + 3) = *(point + 3);
    *(v5 + 4) = v8;
    *(v5 + 1) = v6;
    *(v5 + 2) = v7;
  }

  else
  {
    v9 = *point;
    v10 = &points[24 * index];
    *(v10 + 2) = *(point + 2);
    *v10 = v9;
  }
}

- (void)_applyTransform:(CGAffineTransform *)transform
{
  _completedPoints = [(CRLPKStroke *)self _completedPoints];
  v6 = *&transform->c;
  v15[0] = *&transform->a;
  v15[1] = v6;
  v15[2] = *&transform->tx;
  v7 = sub_100139980(v15);
  _pointsCount = [(CRLPKStroke *)self _pointsCount];
  if (_pointsCount >= 1)
  {
    v9 = _pointsCount;
    do
    {
      v10 = sub_10013593C(_completedPoints);
      v12 = vaddq_f64(*&transform->tx, vmlaq_n_f64(vmulq_n_f64(*&transform->c, v11), *&transform->a, v10));
      *&v13 = sub_10013592C(_completedPoints, v12.f64[0], v12.f64[1]);
      v14 = sub_1001359D4(_completedPoints, v13);
      sub_10013598C(_completedPoints++, v7 + v14);
      --v9;
    }

    while (v9);
  }

  [(CRLPKStroke *)self _invalidateBounds];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v6 = (objc_opt_isKindOfClass() & 1) != 0 && ((v12 = *&self->_strokeID.clock, v13 = *&self->_strokeID.replicaUUID[12], !equalCopy) ? (v5 = 0, v9 = 0, v10 = 0, v11 = 0) : ([equalCopy _strokeID], v5 = v8), v12 == v5 && !sub_1004A262C(&v12 + 4, &v9)) && HIDWORD(v13) == HIDWORD(v11);

  return v6;
}

- (void)_setBaseValues:(_CRLPKStrokePoint *)values
{
  *&self->_baseValues.timestamp = *&values->timestamp;
  v3 = *&values->location.y;
  v4 = *&values->aspectRatio;
  v5 = *&values->altitude;
  *&self->_baseValues.force = *&values->force;
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

- (void)_setStrokeID:(_CRLPKStrokeID *)d
{
  v3 = *&d->clock;
  *&self->_strokeID.replicaUUID[12] = *&d->replicaUUID[12];
  *&self->_strokeID.clock = v3;
}

- (id)description
{
  v3 = [[NSUUID alloc] initWithUUIDBytes:self->_strokeID.replicaUUID];
  v4 = [[NSUUID alloc] initWithUUIDBytes:self->_version.replicaUUID];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  uUIDString = [v3 UUIDString];
  clock = self->_strokeID.clock;
  subclock = self->_strokeID.subclock;
  uUIDString2 = [v4 UUIDString];
  v11 = uUIDString2;
  if (self->_hidden)
  {
    v12 = @" hidden";
  }

  else
  {
    v12 = &stru_1018BCA28;
  }

  v13 = [NSString stringWithFormat:@"<%@: %p id=%@:%d.%d v=%@:%d.%d%@>", v6, self, uUIDString, clock, subclock, uUIDString2, self->_version.clock, self->_version.subclock, v12];

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

- (int64_t)compareToStroke:(id)stroke
{
  strokeCopy = stroke;
  [(CRLPKStroke *)self _strokeID];
  if (strokeCopy)
  {
    [strokeCopy _strokeID];
  }

  else
  {
    memset(v7, 0, sizeof(v7));
  }

  v5 = sub_1004EEFA8(v8, v7);

  return v5;
}

- (CGPoint)_splineControlPoint:(int64_t)point
{
  if (point < -1 || (strokeData = self->_strokeData, strokeData->_pointsCount < point))
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
    [CRLAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:427 isFatal:0 description:"%ld is out of bounds", point];

    strokeData = self->_strokeData;
  }

  points = strokeData->_points;
  _pointsCount = [(CRLPKStroke *)self _pointsCount];
  if (point < 0)
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

  v11 = _pointsCount;
  v12 = _pointsCount;
  if ((_pointsCount & 0x8000000000000000) != 0)
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

  if (v12 <= point)
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

  v13 = sub_10013593C(points + 24 * point);
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

- (CGPoint)_interpolatedPointForSplineSegment:(int64_t)segment t:(double)t
{
  if (segment < 0 || [(CRLPKStroke *)self _pointsCount]- 2 < segment)
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
    [CRLAssertionHandler handleFailureInFunction:v8 file:v9 lineNumber:454 isFatal:0 description:"Segment index %ld is out of bounds", segment];
  }

  x = CGPointZero.x;
  y = CGPointZero.y;
  v12 = segment - 1;
  v13 = 0.0;
  v14 = -2;
  v15 = 4;
  do
  {
    [(CRLPKStroke *)self _splineControlPoint:v12];
    v17 = v16;
    v19 = v18;
    v20 = sub_1003D605C(v14, t);
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

- (double)_interpolatedTimeForSplineSegment:(int64_t)segment t:(double)t
{
  if (segment < 0 || [(CRLPKStroke *)self _pointsCount]- 2 < segment)
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
    [CRLAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:473 isFatal:0 description:"Segment index %ld is out of bounds", segment];
  }

  points = self->_strokeData->_points;
  [(CRLPKStroke *)self timestamp];
  v10 = &points[24 * segment];
  v12 = sub_10013591C(v10, v11);
  [(CRLPKStroke *)self timestamp];
  return v12 + (sub_10013591C(v10 + 6, v13) - v12) * segment;
}

- (double)_lengthOfSplineSegment:(unint64_t)segment
{
  if ([(CRLPKStroke *)self _pointsCount]- 2 < segment)
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
    [CRLAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:484 isFatal:0 description:"Segment index %ld is out of bounds", segment];
  }

  [(CRLPKStroke *)self _splineControlPoint:segment - 1];
  v9 = v8;
  v11 = v10;
  [(CRLPKStroke *)self _splineControlPoint:segment];
  v13 = v12;
  v15 = v14;
  [(CRLPKStroke *)self _splineControlPoint:segment + 1];
  v17 = v16;
  v19 = v18;
  [(CRLPKStroke *)self _splineControlPoint:segment + 2];
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

- (void)set_version:(_CRLPKStrokeID *)set_version
{
  v3 = *&set_version->clock;
  *&self->_version.replicaUUID[12] = *&set_version->replicaUUID[12];
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

- (void)_setTransform:(CGAffineTransform *)transform
{
  v3 = *&transform->a;
  v4 = *&transform->c;
  *&self->_transform.tx = *&transform->tx;
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