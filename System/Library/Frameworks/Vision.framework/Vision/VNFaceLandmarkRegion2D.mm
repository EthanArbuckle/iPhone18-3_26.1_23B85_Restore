@interface VNFaceLandmarkRegion2D
- (BOOL)isEqual:(id)equal;
- (VNFaceLandmarkRegion2D)initWithCoder:(id)coder;
- (VNFaceLandmarkRegion2D)initWithOriginatingRequestSpecifier:(id)specifier faceBoundingBox:(CGRect)box pointCount:(unint64_t)count;
- (VNFaceLandmarkRegion2D)initWithOriginatingRequestSpecifier:(id)specifier faceBoundingBox:(CGRect)box pointsClassification:(int64_t)classification points:pointCount:precisionEstimatesPerPoint:;
- (const)normalizedPoints;
- (const)normalizedPointsInTopLeftOrigin:(BOOL)origin orientation:(unsigned int)orientation;
- (const)pointsInImageOfSize:(CGSize)imageSize;
- (double)pointAtIndex:(unint64_t)index;
- (unint64_t)hash;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation VNFaceLandmarkRegion2D

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v12 = 1;
  }

  else
  {
    v14.receiver = self;
    v14.super_class = VNFaceLandmarkRegion2D;
    if ([(VNFaceLandmarkRegion *)&v14 isEqual:equalCopy])
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v5 = equalCopy;
        pointCount = [(VNFaceLandmarkRegion *)self pointCount];
        if (pointCount == [(VNFaceLandmarkRegion *)v5 pointCount])
        {
          normalizedPoints = [(VNFaceLandmarkRegion2D *)self normalizedPoints];
          normalizedPoints2 = [(VNFaceLandmarkRegion2D *)v5 normalizedPoints];
          if (!pointCount)
          {
LABEL_8:
            precisionEstimatesPerPoint = [(VNFaceLandmarkRegion2D *)self precisionEstimatesPerPoint];
            precisionEstimatesPerPoint2 = [(VNFaceLandmarkRegion2D *)v5 precisionEstimatesPerPoint];
            v12 = VisionCoreEqualOrNilObjects();

LABEL_12:
            goto LABEL_13;
          }

          while (1)
          {
            v9 = vmovn_s64(vceqq_f64(*normalizedPoints, *normalizedPoints2));
            if ((v9.i32[0] & v9.i32[1] & 1) == 0)
            {
              break;
            }

            ++normalizedPoints2;
            ++normalizedPoints;
            if (!--pointCount)
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

- (VNFaceLandmarkRegion2D)initWithOriginatingRequestSpecifier:(id)specifier faceBoundingBox:(CGRect)box pointsClassification:(int64_t)classification points:pointCount:precisionEstimatesPerPoint:
{
  v8 = v7;
  v9 = v6;
  v10 = v5;
  height = box.size.height;
  width = box.size.width;
  y = box.origin.y;
  x = box.origin.x;
  specifierCopy = specifier;
  v18 = v8;
  if (v10)
  {
    v26.receiver = self;
    v26.super_class = VNFaceLandmarkRegion2D;
    height = [(VNFaceLandmarkRegion *)&v26 initWithOriginatingRequestSpecifier:specifierCopy faceBoundingBox:v9 pointCount:x, y, width, height];
    selfCopy = height;
    if (height)
    {
      height->_pointsClassification = classification;
      *&height->_points[4] = v10;
      v21 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:4];
      sizedPointsCache = selfCopy->_sizedPointsCache;
      selfCopy->_sizedPointsCache = v21;

      v23 = [v18 copy];
      precisionEstimatesPerPoint = selfCopy->_precisionEstimatesPerPoint;
      selfCopy->_precisionEstimatesPerPoint = v23;

      [(VNFaceLandmarkRegion2D *)selfCopy _initLocks];
      self = selfCopy;
      selfCopy = self;
    }

    else
    {
      self = 0;
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (const)pointsInImageOfSize:(CGSize)imageSize
{
  v22 = imageSize;
  v4 = [MEMORY[0x1E696B098] value:&v22 withObjCType:"{CGSize=dd}"];
  os_unfair_lock_lock(&self->_pointsCalculatorLock);
  v5 = [(NSMutableDictionary *)self->_sizedPointsCache objectForKeyedSubscript:v4];
  if (!v5)
  {
    pointCount = [(VNFaceLandmarkRegion *)self pointCount];
    v7 = 16 * pointCount;
    v8 = malloc_type_malloc(16 * pointCount, 0x1000040451B5BE8uLL);
    [VNError VNAssert:v8 != 0 log:@"failed to allocate internal points array"];
    v21 = v22;
    [(VNFaceLandmarkRegion *)self faceBoundingBox];
    if (pointCount)
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
        --pointCount;
      }

      while (pointCount);
    }

    v5 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:v8 length:v7 freeWhenDone:1];
    [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
  }

  os_unfair_lock_unlock(&self->_pointsCalculatorLock);
  bytes = [v5 bytes];

  return bytes;
}

- (const)normalizedPoints
{
  os_unfair_lock_lock(&self->_pointsCalculatorLock);
  v3 = [(NSMutableDictionary *)self->_sizedPointsCache objectForKeyedSubscript:&unk_1F19C15B8];
  if (!v3)
  {
    pointCount = [(VNFaceLandmarkRegion *)self pointCount];
    v5 = 16 * pointCount;
    v6 = malloc_type_malloc(16 * pointCount, 0x1000040451B5BE8uLL);
    [VNError VNAssert:v6 != 0 log:@"failed to allocate internal points array"];
    if (pointCount)
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
        --pointCount;
      }

      while (pointCount);
    }

    v3 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:v6 length:v5 freeWhenDone:1];
    [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
  }

  os_unfair_lock_unlock(&self->_pointsCalculatorLock);
  bytes = [v3 bytes];

  return bytes;
}

- (double)pointAtIndex:(unint64_t)index
{
  pointCount = [self pointCount];
  result = 0.0;
  if (pointCount > index)
  {
    return *(self[9] + 8 * index);
  }

  return result;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6.receiver = self;
  v6.super_class = VNFaceLandmarkRegion2D;
  [(VNFaceLandmarkRegion *)&v6 encodeWithCoder:coderCopy];
  [coderCopy encodeInt32:0 forKey:@"VNFaceLandmarkRegion2D"];
  [coderCopy encodeInteger:self->_pointsClassification forKey:@"FLMReg2D_PtsClsf"];
  v5 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:-[VNFaceLandmarkRegion2D points](self length:{"points"), 8 * -[VNFaceLandmarkRegion pointCount](self, "pointCount")}];
  [coderCopy encodeObject:v5 forKey:@"FLMReg2D_PtsData"];
  [coderCopy encodeObject:self->_precisionEstimatesPerPoint forKey:@"FLMs_PtsAE"];
}

- (VNFaceLandmarkRegion2D)initWithCoder:(id)coder
{
  coderCopy = coder;
  v20.receiver = self;
  v20.super_class = VNFaceLandmarkRegion2D;
  v5 = [(VNFaceLandmarkRegion *)&v20 initWithCoder:coderCopy];
  if (!v5)
  {
    goto LABEL_12;
  }

  v6 = [coderCopy decodeInt32ForKey:@"VNFaceLandmarkRegion2D"];
  if (v6)
  {
    v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Failed to unarchive VNFaceLandmarkRegion2D object due to coding version mismatch: Currently supported: %u; encoded: %u", 0, v6];
    v8 = [VNError errorForInternalErrorWithLocalizedDescription:v7];
    [coderCopy failWithError:v8];
LABEL_10:

    goto LABEL_11;
  }

  if ([coderCopy containsValueForKey:@"FLMReg2D_PtsClsf"])
  {
    v5->_pointsClassification = [coderCopy decodeIntegerForKey:@"FLMReg2D_PtsClsf"];
  }

  pointCount = [(VNFaceLandmarkRegion *)v5 pointCount];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"FLMReg2D_PtsData"];
  v10 = [v7 length];
  if (v10 != 8 * pointCount)
  {
    v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Failed to unarchive VNFaceLandmarkRegion2D object. Error: points buffer size mismatch (data size: %lu; expected: %lu)", v10, 8 * pointCount];
    v18 = [VNError errorForInternalErrorWithLocalizedDescription:v8];
    [coderCopy failWithError:v18];

    goto LABEL_10;
  }

  v11 = malloc_type_calloc(pointCount, 8uLL, 0x100004000313F17uLL);
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
  v15 = [coderCopy decodeObjectOfClasses:v14 forKey:@"FLMs_PtsAE"];
  precisionEstimatesPerPoint = v5->_precisionEstimatesPerPoint;
  v5->_precisionEstimatesPerPoint = v15;

  [(VNFaceLandmarkRegion2D *)v5 _initLocks];
  v17 = v5;
LABEL_13:

  return v17;
}

- (VNFaceLandmarkRegion2D)initWithOriginatingRequestSpecifier:(id)specifier faceBoundingBox:(CGRect)box pointCount:(unint64_t)count
{
  specifierCopy = specifier;
  v6 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:@"[VNFaceLandmarkRegion2D -initWithRequestRevision:faceBoundingBox:] is not available userInfo:{use class designated initializers", 0}];
  objc_exception_throw(v6);
}

- (const)normalizedPointsInTopLeftOrigin:(BOOL)origin orientation:(unsigned int)orientation
{
  originCopy = origin;
  if (orientation - 2 < 7 || origin)
  {
    origin = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%d_%d", *&orientation, origin];
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v11 = objc_getAssociatedObject(selfCopy, [VNFaceLandmarkRegion2D(OrientationAdditions) normalizedPointsInTopLeftOrigin:orientation:]::kNormalizedPointsDictionaryAssociatedObjectKey);
    if (!v11)
    {
      v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
      objc_setAssociatedObject(selfCopy, [VNFaceLandmarkRegion2D(OrientationAdditions) normalizedPointsInTopLeftOrigin:orientation:]::kNormalizedPointsDictionaryAssociatedObjectKey, v11, 1);
    }

    v12 = [v11 objectForKey:origin];
    if (!v12)
    {
      v13 = objc_autoreleasePoolPush();
      pointCount = [(VNFaceLandmarkRegion *)selfCopy pointCount];
      v15 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:16 * pointCount];
      mutableBytes = [v15 mutableBytes];
      v24 = 0u;
      v25 = 0u;
      v23 = 0u;
      VNAffineTransformForVisionToTopLeftOriginOrientation(originCopy, orientation, &v23);
      normalizedPoints = [(VNFaceLandmarkRegion2D *)selfCopy normalizedPoints];
      if (pointCount)
      {
        v18 = v23;
        v19 = v24;
        v20 = (normalizedPoints + 8);
        v21 = v25;
        do
        {
          *mutableBytes++ = vaddq_f64(v21, vmlaq_n_f64(vmulq_n_f64(v19, *v20), v18, *(v20 - 1)));
          v20 += 2;
          --pointCount;
        }

        while (pointCount);
      }

      v12 = [v15 copy];
      [v11 setObject:v12 forKey:origin];

      objc_autoreleasePoolPop(v13);
    }

    bytes = [v12 bytes];

    objc_sync_exit(selfCopy);
    return bytes;
  }

  else
  {
    selfCopy2 = self;

    return [(VNFaceLandmarkRegion2D *)selfCopy2 normalizedPoints];
  }
}

@end