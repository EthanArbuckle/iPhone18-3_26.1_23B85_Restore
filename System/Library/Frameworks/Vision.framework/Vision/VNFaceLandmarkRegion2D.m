@interface VNFaceLandmarkRegion2D
- (BOOL)isEqual:(id)a3;
- (VNFaceLandmarkRegion2D)initWithCoder:(id)a3;
- (VNFaceLandmarkRegion2D)initWithOriginatingRequestSpecifier:(id)a3 faceBoundingBox:(CGRect)a4 pointCount:(unint64_t)a5;
- (VNFaceLandmarkRegion2D)initWithOriginatingRequestSpecifier:(id)a3 faceBoundingBox:(CGRect)a4 pointsClassification:(int64_t)a5 points:pointCount:precisionEstimatesPerPoint:;
- (const)normalizedPoints;
- (const)normalizedPointsInTopLeftOrigin:(BOOL)a3 orientation:(unsigned int)a4;
- (const)pointsInImageOfSize:(CGSize)imageSize;
- (double)pointAtIndex:(unint64_t)a3;
- (unint64_t)hash;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation VNFaceLandmarkRegion2D

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v12 = 1;
  }

  else
  {
    v14.receiver = self;
    v14.super_class = VNFaceLandmarkRegion2D;
    if ([(VNFaceLandmarkRegion *)&v14 isEqual:v4])
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v5 = v4;
        v6 = [(VNFaceLandmarkRegion *)self pointCount];
        if (v6 == [(VNFaceLandmarkRegion *)v5 pointCount])
        {
          v7 = [(VNFaceLandmarkRegion2D *)self normalizedPoints];
          v8 = [(VNFaceLandmarkRegion2D *)v5 normalizedPoints];
          if (!v6)
          {
LABEL_8:
            v10 = [(VNFaceLandmarkRegion2D *)self precisionEstimatesPerPoint];
            v11 = [(VNFaceLandmarkRegion2D *)v5 precisionEstimatesPerPoint];
            v12 = VisionCoreEqualOrNilObjects();

LABEL_12:
            goto LABEL_13;
          }

          while (1)
          {
            v9 = vmovn_s64(vceqq_f64(*v7, *v8));
            if ((v9.i32[0] & v9.i32[1] & 1) == 0)
            {
              break;
            }

            ++v8;
            ++v7;
            if (!--v6)
            {
              goto LABEL_8;
            }
          }
        }

        v12 = 0;
        goto LABEL_12;
      }
    }

    v12 = 0;
  }

LABEL_13:

  return v12;
}

- (unint64_t)hash
{
  v3.receiver = self;
  v3.super_class = VNFaceLandmarkRegion2D;
  return [(NSArray *)self->_precisionEstimatesPerPoint hash]^ __ROR8__([(VNFaceLandmarkRegion *)self pointCount]^ __ROR8__([(VNFaceLandmarkRegion *)&v3 hash], 51), 51);
}

- (void)dealloc
{
  free(*&self->_points[4]);
  v3.receiver = self;
  v3.super_class = VNFaceLandmarkRegion2D;
  [(VNFaceLandmarkRegion2D *)&v3 dealloc];
}

- (VNFaceLandmarkRegion2D)initWithOriginatingRequestSpecifier:(id)a3 faceBoundingBox:(CGRect)a4 pointsClassification:(int64_t)a5 points:pointCount:precisionEstimatesPerPoint:
{
  v8 = v7;
  v9 = v6;
  v10 = v5;
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v17 = a3;
  v18 = v8;
  if (v10)
  {
    v26.receiver = self;
    v26.super_class = VNFaceLandmarkRegion2D;
    v19 = [(VNFaceLandmarkRegion *)&v26 initWithOriginatingRequestSpecifier:v17 faceBoundingBox:v9 pointCount:x, y, width, height];
    v20 = v19;
    if (v19)
    {
      v19->_pointsClassification = a5;
      *&v19->_points[4] = v10;
      v21 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:4];
      sizedPointsCache = v20->_sizedPointsCache;
      v20->_sizedPointsCache = v21;

      v23 = [v18 copy];
      precisionEstimatesPerPoint = v20->_precisionEstimatesPerPoint;
      v20->_precisionEstimatesPerPoint = v23;

      [(VNFaceLandmarkRegion2D *)v20 _initLocks];
      self = v20;
      v20 = self;
    }

    else
    {
      self = 0;
    }
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (const)pointsInImageOfSize:(CGSize)imageSize
{
  v22 = imageSize;
  v4 = [MEMORY[0x1E696B098] value:&v22 withObjCType:"{CGSize=dd}"];
  os_unfair_lock_lock(&self->_pointsCalculatorLock);
  v5 = [(NSMutableDictionary *)self->_sizedPointsCache objectForKeyedSubscript:v4];
  if (!v5)
  {
    v6 = [(VNFaceLandmarkRegion *)self pointCount];
    v7 = 16 * v6;
    v8 = malloc_type_malloc(16 * v6, 0x1000040451B5BE8uLL);
    [VNError VNAssert:v8 != 0 log:@"failed to allocate internal points array"];
    v21 = v22;
    [(VNFaceLandmarkRegion *)self faceBoundingBox];
    if (v6)
    {
      v13 = *&self->_points[4];
      v9.f64[1] = v10;
      v14 = vcvtq_f64_u64(vcvtq_u64_f64(v21));
      v15 = vmulq_f64(v9, v14);
      v11.f64[1] = v12;
      v16 = vmulq_f64(v11, v14);
      v17 = v8;
      do
      {
        v18 = *v13++;
        *v17++ = vmlaq_f64(v15, v16, vcvtq_f64_f32(v18));
        --v6;
      }

      while (v6);
    }

    v5 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:v8 length:v7 freeWhenDone:1];
    [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
  }

  os_unfair_lock_unlock(&self->_pointsCalculatorLock);
  v19 = [v5 bytes];

  return v19;
}

- (const)normalizedPoints
{
  os_unfair_lock_lock(&self->_pointsCalculatorLock);
  v3 = [(NSMutableDictionary *)self->_sizedPointsCache objectForKeyedSubscript:&unk_1F19C15B8];
  if (!v3)
  {
    v4 = [(VNFaceLandmarkRegion *)self pointCount];
    v5 = 16 * v4;
    v6 = malloc_type_malloc(16 * v4, 0x1000040451B5BE8uLL);
    [VNError VNAssert:v6 != 0 log:@"failed to allocate internal points array"];
    if (v4)
    {
      v7 = (v6 + 8);
      v8 = (*&self->_points[4] + 4);
      do
      {
        *(v7 - 1) = COERCE_FLOAT(*(v8 - 1));
        v9 = *v8;
        v8 += 2;
        *v7 = v9;
        v7 += 2;
        --v4;
      }

      while (v4);
    }

    v3 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:v6 length:v5 freeWhenDone:1];
    [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
  }

  os_unfair_lock_unlock(&self->_pointsCalculatorLock);
  v10 = [v3 bytes];

  return v10;
}

- (double)pointAtIndex:(unint64_t)a3
{
  v5 = [a1 pointCount];
  result = 0.0;
  if (v5 > a3)
  {
    return *(a1[9] + 8 * a3);
  }

  return result;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6.receiver = self;
  v6.super_class = VNFaceLandmarkRegion2D;
  [(VNFaceLandmarkRegion *)&v6 encodeWithCoder:v4];
  [v4 encodeInt32:0 forKey:@"VNFaceLandmarkRegion2D"];
  [v4 encodeInteger:self->_pointsClassification forKey:@"FLMReg2D_PtsClsf"];
  v5 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:-[VNFaceLandmarkRegion2D points](self length:{"points"), 8 * -[VNFaceLandmarkRegion pointCount](self, "pointCount")}];
  [v4 encodeObject:v5 forKey:@"FLMReg2D_PtsData"];
  [v4 encodeObject:self->_precisionEstimatesPerPoint forKey:@"FLMs_PtsAE"];
}

- (VNFaceLandmarkRegion2D)initWithCoder:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = VNFaceLandmarkRegion2D;
  v5 = [(VNFaceLandmarkRegion *)&v20 initWithCoder:v4];
  if (!v5)
  {
    goto LABEL_12;
  }

  v6 = [v4 decodeInt32ForKey:@"VNFaceLandmarkRegion2D"];
  if (v6)
  {
    v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Failed to unarchive VNFaceLandmarkRegion2D object due to coding version mismatch: Currently supported: %u; encoded: %u", 0, v6];
    v8 = [VNError errorForInternalErrorWithLocalizedDescription:v7];
    [v4 failWithError:v8];
LABEL_10:

    goto LABEL_11;
  }

  if ([v4 containsValueForKey:@"FLMReg2D_PtsClsf"])
  {
    v5->_pointsClassification = [v4 decodeIntegerForKey:@"FLMReg2D_PtsClsf"];
  }

  v9 = [(VNFaceLandmarkRegion *)v5 pointCount];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"FLMReg2D_PtsData"];
  v10 = [v7 length];
  if (v10 != 8 * v9)
  {
    v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Failed to unarchive VNFaceLandmarkRegion2D object. Error: points buffer size mismatch (data size: %lu; expected: %lu)", v10, 8 * v9];
    v18 = [VNError errorForInternalErrorWithLocalizedDescription:v8];
    [v4 failWithError:v18];

    goto LABEL_10;
  }

  v11 = malloc_type_calloc(v9, 8uLL, 0x100004000313F17uLL);
  *&v5->_points[4] = v11;
  if (!v11)
  {
LABEL_11:

LABEL_12:
    v17 = 0;
    goto LABEL_13;
  }

  memcpy(v11, [v7 bytes], v10);
  v12 = MEMORY[0x1E695DFD8];
  v13 = objc_opt_class();
  v14 = [v12 setWithObjects:{v13, objc_opt_class(), 0}];
  v15 = [v4 decodeObjectOfClasses:v14 forKey:@"FLMs_PtsAE"];
  precisionEstimatesPerPoint = v5->_precisionEstimatesPerPoint;
  v5->_precisionEstimatesPerPoint = v15;

  [(VNFaceLandmarkRegion2D *)v5 _initLocks];
  v17 = v5;
LABEL_13:

  return v17;
}

- (VNFaceLandmarkRegion2D)initWithOriginatingRequestSpecifier:(id)a3 faceBoundingBox:(CGRect)a4 pointCount:(unint64_t)a5
{
  v5 = a3;
  v6 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:@"[VNFaceLandmarkRegion2D -initWithRequestRevision:faceBoundingBox:] is not available userInfo:{use class designated initializers", 0}];
  objc_exception_throw(v6);
}

- (const)normalizedPointsInTopLeftOrigin:(BOOL)a3 orientation:(unsigned int)a4
{
  v5 = a3;
  if (a4 - 2 < 7 || a3)
  {
    v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%d_%d", *&a4, a3];
    v10 = self;
    objc_sync_enter(v10);
    v11 = objc_getAssociatedObject(v10, [VNFaceLandmarkRegion2D(OrientationAdditions) normalizedPointsInTopLeftOrigin:orientation:]::kNormalizedPointsDictionaryAssociatedObjectKey);
    if (!v11)
    {
      v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
      objc_setAssociatedObject(v10, [VNFaceLandmarkRegion2D(OrientationAdditions) normalizedPointsInTopLeftOrigin:orientation:]::kNormalizedPointsDictionaryAssociatedObjectKey, v11, 1);
    }

    v12 = [v11 objectForKey:v9];
    if (!v12)
    {
      v13 = objc_autoreleasePoolPush();
      v14 = [(VNFaceLandmarkRegion *)v10 pointCount];
      v15 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:16 * v14];
      v16 = [v15 mutableBytes];
      v24 = 0u;
      v25 = 0u;
      v23 = 0u;
      VNAffineTransformForVisionToTopLeftOriginOrientation(v5, a4, &v23);
      v17 = [(VNFaceLandmarkRegion2D *)v10 normalizedPoints];
      if (v14)
      {
        v18 = v23;
        v19 = v24;
        v20 = (v17 + 8);
        v21 = v25;
        do
        {
          *v16++ = vaddq_f64(v21, vmlaq_n_f64(vmulq_n_f64(v19, *v20), v18, *(v20 - 1)));
          v20 += 2;
          --v14;
        }

        while (v14);
      }

      v12 = [v15 copy];
      [v11 setObject:v12 forKey:v9];

      objc_autoreleasePoolPop(v13);
    }

    v22 = [v12 bytes];

    objc_sync_exit(v10);
    return v22;
  }

  else
  {
    v7 = self;

    return [(VNFaceLandmarkRegion2D *)v7 normalizedPoints];
  }
}

@end