@interface CRLPKStrokePoint
+ (CRLPKCompressedStrokePoint)compressStrokePoint:(SEL)point withTimestamp:(_CRLPKStrokePoint *)timestamp;
+ (_CRLPKStrokePoint)decompressStrokePoint:(SEL)point withTimestamp:(CRLPKCompressedStrokePoint *)timestamp;
- (BOOL)_hasEstimatedAzimuthAndAltitude;
- (BOOL)_hasEstimatedForce;
- (BOOL)_hasEstimatedLocation;
- (BOOL)_hasEstimatedVelocity;
- (CGPoint)location;
- (CRLPKStrokePoint)init;
- (CRLPKStrokePoint)initWithStroke:(id)stroke strokePoint:(void *)point inflight:(BOOL)inflight;
- (double)_aspectRatio;
- (double)_edgeWidth;
- (double)_length;
- (double)_opacity;
- (double)_radius;
- (double)timestamp;
- (id)_stringFromPoint:(CGPoint)point;
- (id)description;
- (int64_t)_estimationUpdateIndex;
- (void)_setAspectRatio:(double)ratio;
- (void)_setEdgeWidth:(double)width;
- (void)_setEstimationUpdateIndex:(int64_t)index;
- (void)_setHasEstimatedAzimuthAndAltitude:(BOOL)altitude;
- (void)_setHasEstimatedForce:(BOOL)force;
- (void)_setHasEstimatedLocation:(BOOL)location;
- (void)_setHasEstimatedVelocity:(BOOL)velocity;
- (void)_setLength:(double)length;
- (void)_setOpacity:(double)opacity;
- (void)_setRadius:(double)radius;
- (void)dealloc;
- (void)setLocation:(CGPoint)location;
- (void)setTimestamp:(double)timestamp;
@end

@implementation CRLPKStrokePoint

+ (CRLPKCompressedStrokePoint)compressStrokePoint:(SEL)point withTimestamp:(_CRLPKStrokePoint *)timestamp
{
  v7 = timestamp->timestamp - a5;
  retstr->var0 = v7;
  retstr->var1 = vcvt_f32_f64(timestamp->location);
  retstr->var2 = sub_1004C3240(timestamp->radius * 10.0, 0.0, 65535.0);
  retstr->var3 = sub_1004C3240(timestamp->aspectRatio * 1000.0, 0.0, 65535.0);
  retstr->var4 = sub_1004C3240(timestamp->edgeWidth * 10.0, 0.0, 65535.0);
  retstr->var5 = sub_1004C3240(timestamp->force * 1000.0, 0.0, 65535.0);
  sub_10013598C(retstr, timestamp->azimuth);
  retstr->var7 = sub_1004C3240(timestamp->altitude * 162.338042, 0.0, 255.0);
  retstr->var8 = sub_1004C3240(timestamp->opacity * 255.0, 0.0, 255.0);
  return result;
}

+ (_CRLPKStrokePoint)decompressStrokePoint:(SEL)point withTimestamp:(CRLPKCompressedStrokePoint *)timestamp
{
  retstr->timestamp = timestamp->var0 + a5;
  retstr->location = vcvtq_f64_f32(timestamp->var1);
  v5 = vmovl_u16(*&timestamp->var2);
  v6.i64[0] = v5.u32[2];
  v6.i64[1] = v5.u32[3];
  v7 = vcvtq_f64_u64(v6);
  v6.i64[0] = v5.u32[0];
  v6.i64[1] = v5.u32[1];
  v8 = vdivq_f64(vcvtq_f64_u64(v6), xmmword_101462A90);
  v9 = vdivq_f64(v7, xmmword_101462A90);
  *&retstr->edgeWidth = v9;
  *&retstr->radius = v8;
  LOWORD(v8.f64[0]) = timestamp->var6;
  v8.f64[0] = *&v8.f64[0];
  LOBYTE(v9.f64[0]) = timestamp->var7;
  v8.f64[1] = *&v9.f64[0];
  v10 = vdivq_f64(v8, xmmword_101462AA0);
  *&retstr->azimuth = v10;
  LOBYTE(v10.f64[0]) = timestamp->var8;
  retstr->opacity = *&v10.f64[0] / 255.0;
  return result;
}

- (CRLPKStrokePoint)init
{
  v4.receiver = self;
  v4.super_class = CRLPKStrokePoint;
  v2 = [(CRLPKStrokePoint *)&v4 init];
  v2->_inflight = 1;
  v2->_pointOwned = 1;
  v2->_point = malloc_type_calloc(1uLL, 0x50uLL, 0x1000040BF3E2410uLL);
  return v2;
}

- (CRLPKStrokePoint)initWithStroke:(id)stroke strokePoint:(void *)point inflight:(BOOL)inflight
{
  strokeCopy = stroke;
  v12.receiver = self;
  v12.super_class = CRLPKStrokePoint;
  v9 = [(CRLPKStrokePoint *)&v12 init];
  v9->_inflight = inflight;
  stroke = v9->_stroke;
  v9->_stroke = strokeCopy;

  v9->_pointOwned = 0;
  v9->_point = point;
  return v9;
}

- (void)setTimestamp:(double)timestamp
{
  point = self->_point;
  [(CRLPKStroke *)self->_stroke timestamp];
  *&v5 = timestamp - v5;
  *point = LODWORD(v5);
}

- (double)timestamp
{
  point = self->_point;
  [(CRLPKStroke *)self->_stroke timestamp];
  return v3 + *point;
}

- (void)setLocation:(CGPoint)location
{
  point = self->_point;
  x = location.x;
  y = location.y;
  point[1] = x;
  point[2] = y;
}

- (CGPoint)location
{
  point = self->_point;
  v3 = point[1];
  v4 = point[2];
  result.y = v4;
  result.x = v3;
  return result;
}

- (void)_setHasEstimatedLocation:(BOOL)location
{
  if (self->_inflight)
  {
    *(self->_point + 56) = location;
  }
}

- (BOOL)_hasEstimatedLocation
{
  if (self->_inflight)
  {
    v2 = *(self->_point + 56);
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

- (void)_setHasEstimatedForce:(BOOL)force
{
  if (self->_inflight)
  {
    *(self->_point + 57) = force;
  }
}

- (BOOL)_hasEstimatedForce
{
  if (self->_inflight)
  {
    v2 = *(self->_point + 57);
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

- (void)_setHasEstimatedAzimuthAndAltitude:(BOOL)altitude
{
  if (self->_inflight)
  {
    *(self->_point + 58) = altitude;
  }
}

- (BOOL)_hasEstimatedAzimuthAndAltitude
{
  if (self->_inflight)
  {
    v2 = *(self->_point + 58);
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

- (void)_setHasEstimatedVelocity:(BOOL)velocity
{
  if (self->_inflight)
  {
    *(self->_point + 59) = velocity;
  }
}

- (BOOL)_hasEstimatedVelocity
{
  if (self->_inflight)
  {
    v2 = *(self->_point + 59);
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

- (void)_setEstimationUpdateIndex:(int64_t)index
{
  if (self->_inflight)
  {
    *(self->_point + 8) = index;
  }
}

- (int64_t)_estimationUpdateIndex
{
  if (self->_inflight)
  {
    return *(self->_point + 8);
  }

  else
  {
    return -1;
  }
}

- (void)_setLength:(double)length
{
  if (self->_inflight)
  {
    *(self->_point + 9) = length;
  }
}

- (double)_length
{
  result = 0.0;
  if (self->_inflight)
  {
    return *(self->_point + 9);
  }

  return result;
}

- (void)_setRadius:(double)radius
{
  if (!self->_inflight)
  {
    point = self->_point;
    point[6] = sub_1004C3240(radius * 10.0, 0.0, 65535.0);
  }
}

- (double)_radius
{
  result = 0.0;
  if (!self->_inflight)
  {
    LOWORD(result) = *(self->_point + 6);
    return *&result / 10.0;
  }

  return result;
}

- (void)_setOpacity:(double)opacity
{
  if (!self->_inflight)
  {
    point = self->_point;
    point[23] = sub_1004C3240(opacity * 255.0, 0.0, 255.0);
  }
}

- (double)_opacity
{
  result = 0.0;
  if (!self->_inflight)
  {
    LOBYTE(result) = *(self->_point + 23);
    return *&result / 255.0;
  }

  return result;
}

- (void)_setEdgeWidth:(double)width
{
  if (!self->_inflight)
  {
    point = self->_point;
    point[8] = sub_1004C3240(width * 10.0, 0.0, 65535.0);
  }
}

- (double)_edgeWidth
{
  result = 0.0;
  if (!self->_inflight)
  {
    LOWORD(result) = *(self->_point + 8);
    return *&result / 10.0;
  }

  return result;
}

- (void)_setAspectRatio:(double)ratio
{
  if (!self->_inflight)
  {
    point = self->_point;
    point[7] = sub_1004C3240(ratio * 1000.0, 0.0, 65535.0);
  }
}

- (double)_aspectRatio
{
  result = 0.0;
  if (!self->_inflight)
  {
    LOWORD(result) = *(self->_point + 7);
    return *&result / 1000.0;
  }

  return result;
}

- (id)description
{
  inflight = self->_inflight;
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  if (self->_inflight)
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  if (inflight)
  {
    [(CRLPKStrokePoint *)self location];
    v7 = [(CRLPKStrokePoint *)self _stringFromPoint:?];
    v8 = @"(estimated)";
    if ([(CRLPKStrokePoint *)self _hasEstimatedLocation])
    {
      v9 = @"(estimated)";
    }

    else
    {
      v9 = &stru_1018BCA28;
    }

    [(CRLPKStrokePoint *)self force];
    v11 = v10;
    if ([(CRLPKStrokePoint *)self _hasEstimatedForce])
    {
      v12 = @"(estimated)";
    }

    else
    {
      v12 = &stru_1018BCA28;
    }

    [(CRLPKStrokePoint *)self azimuth];
    v14 = v13;
    if ([(CRLPKStrokePoint *)self _hasEstimatedAzimuthAndAltitude])
    {
      v15 = @"(estimated)";
    }

    else
    {
      v15 = &stru_1018BCA28;
    }

    [(CRLPKStrokePoint *)self altitude];
    v17 = v16;
    if ([(CRLPKStrokePoint *)self _hasEstimatedAzimuthAndAltitude])
    {
      v18 = @"(estimated)";
    }

    else
    {
      v18 = &stru_1018BCA28;
    }

    [(CRLPKStrokePoint *)self velocity];
    v20 = v19;
    if (![(CRLPKStrokePoint *)self _hasEstimatedVelocity])
    {
      v8 = &stru_1018BCA28;
    }

    _estimationUpdateIndex = [(CRLPKStrokePoint *)self _estimationUpdateIndex];
    [(CRLPKStrokePoint *)self _length];
    v23 = [NSString stringWithFormat:@"%@: %p\n\tinflight: %@\n\tlocation: %@ %@\n\tforce: %f %@\n\tazimuth: %f %@\n\taltitude: %f %@\n\tvelocity: %f %@\n\testimationUpdateIndex: %d\n\tlength: %f\n", v5, self, v6, v7, v9, v11, v12, v14, v15, v17, v18, v20, v8, _estimationUpdateIndex, v22];
  }

  else
  {
    [(CRLPKStrokePoint *)self location];
    v7 = [(CRLPKStrokePoint *)self _stringFromPoint:?];
    [(CRLPKStrokePoint *)self force];
    v25 = v24;
    [(CRLPKStrokePoint *)self azimuth];
    v27 = v26;
    [(CRLPKStrokePoint *)self altitude];
    v29 = v28;
    [(CRLPKStrokePoint *)self velocity];
    v31 = v30;
    [(CRLPKStrokePoint *)self _radius];
    v33 = v32;
    [(CRLPKStrokePoint *)self _opacity];
    v35 = v34;
    [(CRLPKStrokePoint *)self _edgeWidth];
    v37 = v36;
    [(CRLPKStrokePoint *)self _aspectRatio];
    v23 = [NSString stringWithFormat:@"%@: %p\n\tinflight: %@\n\tlocation: %@\n\tforce: %f\n\tazimuth: %f\n\taltitude: %f\n\tvelocity: %f\n\tradius: %f\n\topacity: %f\n\tedgeWidth: %f\n\taspectRatio: %f\n", v5, self, v6, v7, v25, v27, v29, v31, v33, v35, v37, v38];
  }

  v39 = v23;

  return v39;
}

- (id)_stringFromPoint:(CGPoint)point
{
  [(CRLPKStrokePoint *)self location:point.x];

  return NSStringFromCGPoint(*&v3);
}

- (void)dealloc
{
  if (self->_pointOwned)
  {
    free(self->_point);
    self->_point = 0;
  }

  v3.receiver = self;
  v3.super_class = CRLPKStrokePoint;
  [(CRLPKStrokePoint *)&v3 dealloc];
}

@end