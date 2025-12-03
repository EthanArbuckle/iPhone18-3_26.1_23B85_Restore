@interface VNContour
- (BOOL)isEqual:(id)equal;
- (CGPath)normalizedPathInTopLeftOrigin:(BOOL)origin orientation:(unsigned int)orientation;
- (CGPathRef)normalizedPath;
- (NSArray)childContours;
- (NSInteger)childContourCount;
- (NSInteger)pointCount;
- (VNContour)childContourAtIndex:(NSUInteger)childContourIndex error:(NSError *)error;
- (VNContour)initWithPoints:(VNContour *)self pointCount:(SEL)count aspectRatio:;
- (VNContour)initWithPoints:(const void *)points topLevelIndex:(unint64_t)index indexPath:(id)path aspectRatio:(float)ratio;
- (VNContour)polygonApproximationWithEpsilon:(float)epsilon error:(NSError *)error;
- (const)normalizedPoints;
- (float)aspectRatioInOrientation:(unsigned int)orientation;
- (id).cxx_construct;
- (id)debugQuickLookObject;
- (id)initWithObservation:(void *)observation topLevelIndex:(void *)index indexPath:(float)path aspectRatio:;
- (uint64_t)normalizedPointsInTopLeftOrigin:(uint64_t)origin orientation:(uint64_t)orientation;
- (unint64_t)hash;
- (unint64_t)requestRevision;
- (void)createNormalizedPointsCorrectedForAspectRatio;
- (void)dealloc;
@end

@implementation VNContour

- (id).cxx_construct
{
  *(self + 2) = 0;
  *(self + 3) = 0;
  *(self + 4) = 0;
  return self;
}

- (id)debugQuickLookObject
{
  [(VNContour *)self aspectRatio];
  v4 = v3 * 1000.0;
  normalizedPath = [(VNContour *)self normalizedPath];

  return VNDebugPathFromNormalizedCGPath(normalizedPath, 1000.0, v4);
}

- (unint64_t)requestRevision
{
  result = self->_observation;
  if (result)
  {
    return [result requestRevision];
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v20 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      requestRevision = [(VNContour *)self requestRevision];
      if (requestRevision == [(VNContour *)v5 requestRevision])
      {
        indexPath = [(VNContour *)self indexPath];
        indexPath2 = [(VNContour *)v5 indexPath];
        v9 = [indexPath isEqual:indexPath2];

        if (v9)
        {
          pointCount = [(VNContour *)self pointCount];
          if (pointCount == [(VNContour *)v5 pointCount])
          {
            normalizedPoints = [(VNContour *)self normalizedPoints];
            normalizedPoints2 = [(VNContour *)v5 normalizedPoints];
            if (pointCount)
            {
              v13 = 8 * pointCount;
              v14 = vdup_n_s32(0x358637BDu);
              while (1)
              {
                v15 = vmvn_s8(vcge_f32(v14, vabd_f32(*normalizedPoints, *normalizedPoints2)));
                if ((v15.i32[0] | v15.i32[1]))
                {
                  break;
                }

                ++normalizedPoints;
                ++normalizedPoints2;
                v13 -= 8;
                if (!v13)
                {
                  goto LABEL_10;
                }
              }
            }

            else
            {
LABEL_10:
              childContourCount = [(VNContour *)self childContourCount];
              if (childContourCount == [(VNContour *)v5 childContourCount])
              {
                [(VNContour *)self aspectRatio];
                v18 = v17;
                [(VNContour *)v5 aspectRatio];
                v20 = v18 == v19;
LABEL_15:

                goto LABEL_16;
              }
            }
          }
        }
      }

      v20 = 0;
      goto LABEL_15;
    }

    v20 = 0;
  }

LABEL_16:

  return v20;
}

- (unint64_t)hash
{
  v17.receiver = self;
  v17.super_class = VNContour;
  v3 = [(VNContour *)&v17 hash];
  requestRevision = [(VNContour *)self requestRevision];
  indexPath = [(VNContour *)self indexPath];
  v6 = [indexPath hash] ^ __ROR8__(requestRevision ^ __ROR8__(v3, 51), 51);

  v7 = [(VNContour *)self topLevelIndex]^ __ROR8__(v6, 51);
  normalizedPoints = [(VNContour *)self normalizedPoints];
  pointCount = [(VNContour *)self pointCount];
  if (pointCount)
  {
    v10 = 2 * pointCount;
    if ((2 * pointCount) <= 1)
    {
      v10 = 1;
    }

    do
    {
      v11 = normalizedPoints->i32[0];
      normalizedPoints = (normalizedPoints + 4);
      v7 = v11 ^ __ROR8__(v7, 51);
      --v10;
    }

    while (v10);
  }

  observation = self->_observation;
  if (observation)
  {
    v13 = [(VNContoursObservation *)observation childContourIndicesAtIndex:self->_topLevelIndex];
    for (i = *v13; i != v13[1]; ++i)
    {
      v15 = *i;
      v7 = v15 ^ __ROR8__(v7, 51);
    }
  }

  return v7;
}

- (CGPathRef)normalizedPath
{
  os_unfair_lock_lock(&self->_pathLock);
  if (!self->_normalizedPath)
  {
    observation = self->_observation;
    if (observation)
    {
      [(VNContoursObservation *)observation polygonList];
      apple::vision::libraries::autotrace::ContourToPath::ContourToPath(v12, v4);
    }

    Mutable = CGPathCreateMutable();
    pointCount = [(VNContour *)self pointCount];
    if (pointCount)
    {
      normalizedPoints = [(VNContour *)self normalizedPoints];
      v8 = normalizedPoints;
      if (normalizedPoints)
      {
        CGPathMoveToPoint(Mutable, 0, COERCE_FLOAT(*normalizedPoints), COERCE_FLOAT(HIDWORD(*normalizedPoints)));
        v9 = pointCount - 1;
        if (v9)
        {
          v10 = v8 + 1;
          do
          {
            CGPathAddLineToPoint(Mutable, 0, COERCE_FLOAT(*v10), COERCE_FLOAT(HIDWORD(*v10)));
            ++v10;
            --v9;
          }

          while (v9);
        }
      }
    }

    CGPathCloseSubpath(Mutable);
    self->_normalizedPath = Mutable;
  }

  os_unfair_lock_unlock(&self->_pathLock);
  return self->_normalizedPath;
}

- (VNContour)polygonApproximationWithEpsilon:(float)epsilon error:(NSError *)error
{
  pointCount = [(VNContour *)self pointCount];
  if (pointCount <= 1)
  {
    if (error)
    {
      [VNError errorForInvalidArgumentWithLocalizedDescription:@"The contour is too small for polygon approximation"];
      *error = v8 = 0;
      goto LABEL_16;
    }

    goto LABEL_10;
  }

  if (epsilon <= 0.0)
  {
    if (error)
    {
      epsilon = [MEMORY[0x1E696AEC0] stringWithFormat:@"The value for epsilon is invalid. It needs to be bigger than zero but it is %f", epsilon];
      *error = [VNError errorForInvalidArgumentWithLocalizedDescription:epsilon];
    }

LABEL_10:
    v8 = 0;
    goto LABEL_16;
  }

  v9 = pointCount;
  [(VNContour *)self aspectRatio];
  v11 = v10;
  createNormalizedPointsCorrectedForAspectRatio = [(VNContour *)self createNormalizedPointsCorrectedForAspectRatio];
  memset(v26, 0, sizeof(v26));
  _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE16__init_with_sizeB8ne200100IPKS1_S7_EEvT_T0_m(v26, createNormalizedPointsCorrectedForAspectRatio, &createNormalizedPointsCorrectedForAspectRatio[v9], v9);
  __p = 0;
  v24 = 0;
  v25 = 0;
  RamerDouglasPeucker(v26, &__p, epsilon, v13, v14, v15);
  v16 = __p;
  v17 = v24;
  while (v16 != v17)
  {
    v16[1] = v11 * v16[1];
    v16 += 2;
  }

  v19 = [VNContour alloc];
  v20 = [MEMORY[0x1E696AC88] indexPathWithIndex:0];
  [(VNContour *)self aspectRatio];
  v21 = [(VNContour *)v19 initWithPoints:&__p topLevelIndex:0 indexPath:v20 aspectRatio:?];

  free(createNormalizedPointsCorrectedForAspectRatio);
  v8 = v21;
  if (__p)
  {
    v24 = __p;
    operator delete(__p);
  }

  if (v26[0])
  {
    operator delete(v26[0]);
  }

LABEL_16:

  return v8;
}

- (void)createNormalizedPointsCorrectedForAspectRatio
{
  if (!self)
  {
    return 0;
  }

  pointCount = [self pointCount];
  v3 = malloc_type_malloc(8 * pointCount, 0x100004000313F17uLL);
  normalizedPoints = [self normalizedPoints];
  [self aspectRatio];
  if (v3 && pointCount >= 1)
  {
    for (i = 0; i != pointCount; ++i)
    {
      LODWORD(v7) = HIDWORD(*(normalizedPoints + 8 * i));
      [self aspectRatio];
      LODWORD(v8) = v11;
      *(&v8 + 1) = v7 / v9;
      v3[i] = v8;
    }
  }

  return v3;
}

- (const)normalizedPoints
{
  observation = self->_observation;
  if (observation)
  {
    anon_10 = ([(VNContoursObservation *)observation polygonList][8] + 40 * self->_topLevelIndex + 8);
  }

  else
  {
    anon_10 = self->_anon_10;
  }

  return *anon_10;
}

- (NSInteger)pointCount
{
  observation = self->_observation;
  if (observation)
  {
    return *([(VNContoursObservation *)observation polygonList][8] + 40 * self->_topLevelIndex);
  }

  else
  {
    return (*&self->_anon_10[8] - *self->_anon_10) >> 3;
  }
}

- (VNContour)childContourAtIndex:(NSUInteger)childContourIndex error:(NSError *)error
{
  v7 = [(VNContoursObservation *)self->_observation childContourIndicesAtIndex:self->_topLevelIndex];
  if (childContourIndex < (v7[1] - *v7) >> 2)
  {
    v8 = v7;
    indexPath = [(VNContour *)self indexPath];
    v10 = [indexPath indexPathByAddingIndex:childContourIndex];

    v11 = [[VNContour alloc] initWithObservation:*(*v8 + 4 * childContourIndex) topLevelIndex:v10 indexPath:self->_aspectRatio aspectRatio:?];
LABEL_5:

    goto LABEL_6;
  }

  if (error)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:childContourIndex];
    [VNError errorForInvalidArgument:v10 named:@"childIndex"];
    *error = v11 = 0;
    goto LABEL_5;
  }

  v11 = 0;
LABEL_6:

  return v11;
}

- (id)initWithObservation:(void *)observation topLevelIndex:(void *)index indexPath:(float)path aspectRatio:
{
  v10 = a2;
  indexCopy = index;
  if (self)
  {
    v14.receiver = self;
    v14.super_class = VNContour;
    v12 = objc_msgSendSuper2(&v14, sel_init);
    self = v12;
    if (v12)
    {
      objc_storeStrong(v12 + 1, a2);
      self[5] = observation;
      objc_storeStrong(self + 9, index);
      *(self + 12) = 0;
      *(self + 16) = path;
    }
  }

  return self;
}

- (NSArray)childContours
{
  if (self->_observation)
  {
    v3 = objc_autoreleasePoolPush();
    v4 = [(VNContoursObservation *)self->_observation childContourIndicesAtIndex:self->_topLevelIndex];
    v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:(v4[1] - *v4) >> 2];
    indexPath = [(VNContour *)self indexPath];
    v7 = v4[1] - *v4;
    if (v7)
    {
      v8 = 0;
      v9 = v7 >> 2;
      if (v9 <= 1)
      {
        v10 = 1;
      }

      else
      {
        v10 = v9;
      }

      do
      {
        v11 = [indexPath indexPathByAddingIndex:v8];
        v12 = [[VNContour alloc] initWithObservation:*(*v4 + 4 * v8) topLevelIndex:v11 indexPath:self->_aspectRatio aspectRatio:?];
        [v5 addObject:v12];

        ++v8;
      }

      while (v10 != v8);
    }

    objc_autoreleasePoolPop(v3);
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  return v5;
}

- (NSInteger)childContourCount
{
  result = self->_observation;
  if (result)
  {
    v4 = [result childContourIndicesAtIndex:self->_topLevelIndex];
    return (v4[1] - *v4) >> 2;
  }

  return result;
}

- (void)dealloc
{
  CGPathRelease(self->_normalizedPath);
  v3.receiver = self;
  v3.super_class = VNContour;
  [(VNContour *)&v3 dealloc];
}

- (VNContour)initWithPoints:(VNContour *)self pointCount:(SEL)count aspectRatio:
{
  v5 = v4;
  v6 = v3;
  v7 = v2;
  v9 = [objc_alloc(MEMORY[0x1E696AC88]) initWithIndex:0];
  __p = 0;
  v14 = 0;
  v15 = 0;
  _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE16__init_with_sizeB8ne200100IPKS1_S7_EEvT_T0_m(&__p, v7, v7 + 8 * v6, v6);
  LODWORD(v10) = v5;
  v11 = [(VNContour *)self initWithPoints:&__p topLevelIndex:0 indexPath:v9 aspectRatio:v10];
  if (__p)
  {
    v14 = __p;
    operator delete(__p);
  }

  return v11;
}

- (VNContour)initWithPoints:(const void *)points topLevelIndex:(unint64_t)index indexPath:(id)path aspectRatio:(float)ratio
{
  pathCopy = path;
  v28.receiver = self;
  v28.super_class = VNContour;
  v12 = [(VNContour *)&v28 init];
  v13 = v12;
  if (v12)
  {
    v14 = v12 + 16;
    if (v12 + 16 != points)
    {
      v15 = *points;
      v16 = *(points + 1);
      v17 = &v16[-*points];
      v18 = *(v12 + 4);
      v19 = *(v12 + 2);
      if (v18 - v19 < v17)
      {
        v20 = v17 >> 3;
        if (v19)
        {
          *(v12 + 3) = v19;
          operator delete(v19);
          v18 = 0;
          *v14 = 0;
          *&v13->_anon_10[8] = 0;
          *&v13->_anon_10[16] = 0;
        }

        if (!(v20 >> 61))
        {
          v21 = v18 >> 2;
          if (v18 >> 2 <= v20)
          {
            v21 = v17 >> 3;
          }

          if (v18 >= 0x7FFFFFFFFFFFFFF8)
          {
            v22 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v22 = v21;
          }

          std::vector<long long>::__vallocate[abi:ne200100](v13->_anon_10, v22);
        }

        std::vector<float>::__throw_length_error[abi:ne200100]();
      }

      v23 = *(v12 + 3);
      v24 = v23 - v19;
      if (v23 - v19 >= v17)
      {
        if (v16 != v15)
        {
          memmove(*(v12 + 2), v15, v17);
        }

        v26 = &v19[v17];
      }

      else
      {
        v25 = &v15[v24];
        if (v23 != v19)
        {
          memmove(*(v12 + 2), v15, v24);
          v23 = *&v13->_anon_10[8];
        }

        if (v16 != v25)
        {
          memmove(v23, v25, v16 - v25);
        }

        v26 = &v23[v16 - v25];
      }

      *&v13->_anon_10[8] = v26;
    }

    v13->_topLevelIndex = index;
    objc_storeStrong(&v13->_indexPath, path);
    v13->_pathLock._os_unfair_lock_opaque = 0;
    v13->_aspectRatio = ratio;
  }

  return v13;
}

- (float)aspectRatioInOrientation:(unsigned int)orientation
{
  [(VNContour *)self aspectRatio];
  if (result != 0.0 && orientation <= 7 && ((1 << orientation) & 0xB4) != 0)
  {
    return 1.0 / result;
  }

  return result;
}

- (CGPath)normalizedPathInTopLeftOrigin:(BOOL)origin orientation:(unsigned int)orientation
{
  memset(v7, 0, sizeof(v7));
  VNAffineTransformForVisionToTopLeftOriginOrientation(origin, orientation, v7);
  v5 = MEMORY[0x1AC555C10]([(VNContour *)self normalizedPath], v7);
  CFAutorelease(v5);
  return v5;
}

- (uint64_t)normalizedPointsInTopLeftOrigin:(uint64_t)origin orientation:(uint64_t)orientation
{
  orientationCopy = orientation;
  originCopy = origin;
  if (orientation - 2) < 7 || (origin)
  {
    origin = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%d_%d", orientation, origin];
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v11 = objc_getAssociatedObject(selfCopy, [VNContour(OrientationAdditions) normalizedPointsInTopLeftOrigin:orientation:]::kNormalizedPointsDictionaryAssociatedObjectKey);
    if (!v11)
    {
      v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
      objc_setAssociatedObject(selfCopy, [VNContour(OrientationAdditions) normalizedPointsInTopLeftOrigin:orientation:]::kNormalizedPointsDictionaryAssociatedObjectKey, v11, 1);
    }

    v12 = [v11 objectForKey:origin];
    if (!v12)
    {
      v13 = objc_autoreleasePoolPush();
      pointCount = [selfCopy pointCount];
      v15 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:8 * pointCount];
      mutableBytes = [v15 mutableBytes];
      v24 = 0u;
      v25 = 0u;
      v23 = 0u;
      VNAffineTransformForVisionToTopLeftOriginOrientation(originCopy, orientationCopy, &v23);
      normalizedPoints = [selfCopy normalizedPoints];
      if (pointCount)
      {
        v18 = v23;
        v19 = v24;
        v20 = v25;
        do
        {
          v21 = *normalizedPoints++;
          *mutableBytes++ = vcvt_f32_f64(vaddq_f64(v20, vmlaq_n_f64(vmulq_n_f64(v19, *&v21), v18, *&v21)));
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

    return [selfCopy2 normalizedPoints];
  }
}

@end