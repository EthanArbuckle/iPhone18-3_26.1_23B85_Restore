@interface VNContour
- (BOOL)isEqual:(id)a3;
- (CGPath)normalizedPathInTopLeftOrigin:(BOOL)a3 orientation:(unsigned int)a4;
- (CGPathRef)normalizedPath;
- (NSArray)childContours;
- (NSInteger)childContourCount;
- (NSInteger)pointCount;
- (VNContour)childContourAtIndex:(NSUInteger)childContourIndex error:(NSError *)error;
- (VNContour)initWithPoints:(VNContour *)self pointCount:(SEL)a2 aspectRatio:;
- (VNContour)initWithPoints:(const void *)a3 topLevelIndex:(unint64_t)a4 indexPath:(id)a5 aspectRatio:(float)a6;
- (VNContour)polygonApproximationWithEpsilon:(float)epsilon error:(NSError *)error;
- (const)normalizedPoints;
- (float)aspectRatioInOrientation:(unsigned int)a3;
- (id).cxx_construct;
- (id)debugQuickLookObject;
- (id)initWithObservation:(void *)a3 topLevelIndex:(void *)a4 indexPath:(float)a5 aspectRatio:;
- (uint64_t)normalizedPointsInTopLeftOrigin:(uint64_t)a3 orientation:(uint64_t)a4;
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
  v5 = [(VNContour *)self normalizedPath];

  return VNDebugPathFromNormalizedCGPath(v5, 1000.0, v4);
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v20 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(VNContour *)self requestRevision];
      if (v6 == [(VNContour *)v5 requestRevision])
      {
        v7 = [(VNContour *)self indexPath];
        v8 = [(VNContour *)v5 indexPath];
        v9 = [v7 isEqual:v8];

        if (v9)
        {
          v10 = [(VNContour *)self pointCount];
          if (v10 == [(VNContour *)v5 pointCount])
          {
            v11 = [(VNContour *)self normalizedPoints];
            v12 = [(VNContour *)v5 normalizedPoints];
            if (v10)
            {
              v13 = 8 * v10;
              v14 = vdup_n_s32(0x358637BDu);
              while (1)
              {
                v15 = vmvn_s8(vcge_f32(v14, vabd_f32(*v11, *v12)));
                if ((v15.i32[0] | v15.i32[1]))
                {
                  break;
                }

                ++v11;
                ++v12;
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
              v16 = [(VNContour *)self childContourCount];
              if (v16 == [(VNContour *)v5 childContourCount])
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
  v4 = [(VNContour *)self requestRevision];
  v5 = [(VNContour *)self indexPath];
  v6 = [v5 hash] ^ __ROR8__(v4 ^ __ROR8__(v3, 51), 51);

  v7 = [(VNContour *)self topLevelIndex]^ __ROR8__(v6, 51);
  v8 = [(VNContour *)self normalizedPoints];
  v9 = [(VNContour *)self pointCount];
  if (v9)
  {
    v10 = 2 * v9;
    if ((2 * v9) <= 1)
    {
      v10 = 1;
    }

    do
    {
      v11 = v8->i32[0];
      v8 = (v8 + 4);
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
    v6 = [(VNContour *)self pointCount];
    if (v6)
    {
      v7 = [(VNContour *)self normalizedPoints];
      v8 = v7;
      if (v7)
      {
        CGPathMoveToPoint(Mutable, 0, COERCE_FLOAT(*v7), COERCE_FLOAT(HIDWORD(*v7)));
        v9 = v6 - 1;
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
  v7 = [(VNContour *)self pointCount];
  if (v7 <= 1)
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
      v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"The value for epsilon is invalid. It needs to be bigger than zero but it is %f", epsilon];
      *error = [VNError errorForInvalidArgumentWithLocalizedDescription:v18];
    }

LABEL_10:
    v8 = 0;
    goto LABEL_16;
  }

  v9 = v7;
  [(VNContour *)self aspectRatio];
  v11 = v10;
  v12 = [(VNContour *)self createNormalizedPointsCorrectedForAspectRatio];
  memset(v26, 0, sizeof(v26));
  _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE16__init_with_sizeB8ne200100IPKS1_S7_EEvT_T0_m(v26, v12, &v12[v9], v9);
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

  free(v12);
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
  if (!a1)
  {
    return 0;
  }

  v2 = [a1 pointCount];
  v3 = malloc_type_malloc(8 * v2, 0x100004000313F17uLL);
  v4 = [a1 normalizedPoints];
  [a1 aspectRatio];
  if (v3 && v2 >= 1)
  {
    for (i = 0; i != v2; ++i)
    {
      LODWORD(v7) = HIDWORD(*(v4 + 8 * i));
      [a1 aspectRatio];
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
    v9 = [(VNContour *)self indexPath];
    v10 = [v9 indexPathByAddingIndex:childContourIndex];

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

- (id)initWithObservation:(void *)a3 topLevelIndex:(void *)a4 indexPath:(float)a5 aspectRatio:
{
  v10 = a2;
  v11 = a4;
  if (a1)
  {
    v14.receiver = a1;
    v14.super_class = VNContour;
    v12 = objc_msgSendSuper2(&v14, sel_init);
    a1 = v12;
    if (v12)
    {
      objc_storeStrong(v12 + 1, a2);
      a1[5] = a3;
      objc_storeStrong(a1 + 9, a4);
      *(a1 + 12) = 0;
      *(a1 + 16) = a5;
    }
  }

  return a1;
}

- (NSArray)childContours
{
  if (self->_observation)
  {
    v3 = objc_autoreleasePoolPush();
    v4 = [(VNContoursObservation *)self->_observation childContourIndicesAtIndex:self->_topLevelIndex];
    v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:(v4[1] - *v4) >> 2];
    v6 = [(VNContour *)self indexPath];
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
        v11 = [v6 indexPathByAddingIndex:v8];
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

- (VNContour)initWithPoints:(VNContour *)self pointCount:(SEL)a2 aspectRatio:
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

- (VNContour)initWithPoints:(const void *)a3 topLevelIndex:(unint64_t)a4 indexPath:(id)a5 aspectRatio:(float)a6
{
  v11 = a5;
  v28.receiver = self;
  v28.super_class = VNContour;
  v12 = [(VNContour *)&v28 init];
  v13 = v12;
  if (v12)
  {
    v14 = v12 + 16;
    if (v12 + 16 != a3)
    {
      v15 = *a3;
      v16 = *(a3 + 1);
      v17 = &v16[-*a3];
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

    v13->_topLevelIndex = a4;
    objc_storeStrong(&v13->_indexPath, a5);
    v13->_pathLock._os_unfair_lock_opaque = 0;
    v13->_aspectRatio = a6;
  }

  return v13;
}

- (float)aspectRatioInOrientation:(unsigned int)a3
{
  [(VNContour *)self aspectRatio];
  if (result != 0.0 && a3 <= 7 && ((1 << a3) & 0xB4) != 0)
  {
    return 1.0 / result;
  }

  return result;
}

- (CGPath)normalizedPathInTopLeftOrigin:(BOOL)a3 orientation:(unsigned int)a4
{
  memset(v7, 0, sizeof(v7));
  VNAffineTransformForVisionToTopLeftOriginOrientation(a3, a4, v7);
  v5 = MEMORY[0x1AC555C10]([(VNContour *)self normalizedPath], v7);
  CFAutorelease(v5);
  return v5;
}

- (uint64_t)normalizedPointsInTopLeftOrigin:(uint64_t)a3 orientation:(uint64_t)a4
{
  v4 = a4;
  v5 = a3;
  if (a4 - 2) < 7 || (a3)
  {
    v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%d_%d", a4, a3];
    v10 = a1;
    objc_sync_enter(v10);
    v11 = objc_getAssociatedObject(v10, [VNContour(OrientationAdditions) normalizedPointsInTopLeftOrigin:orientation:]::kNormalizedPointsDictionaryAssociatedObjectKey);
    if (!v11)
    {
      v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
      objc_setAssociatedObject(v10, [VNContour(OrientationAdditions) normalizedPointsInTopLeftOrigin:orientation:]::kNormalizedPointsDictionaryAssociatedObjectKey, v11, 1);
    }

    v12 = [v11 objectForKey:v9];
    if (!v12)
    {
      v13 = objc_autoreleasePoolPush();
      v14 = [v10 pointCount];
      v15 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:8 * v14];
      v16 = [v15 mutableBytes];
      v24 = 0u;
      v25 = 0u;
      v23 = 0u;
      VNAffineTransformForVisionToTopLeftOriginOrientation(v5, v4, &v23);
      v17 = [v10 normalizedPoints];
      if (v14)
      {
        v18 = v23;
        v19 = v24;
        v20 = v25;
        do
        {
          v21 = *v17++;
          *v16++ = vcvt_f32_f64(vaddq_f64(v20, vmlaq_n_f64(vmulq_n_f64(v19, *&v21), v18, *&v21)));
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
    v7 = a1;

    return [v7 normalizedPoints];
  }
}

@end