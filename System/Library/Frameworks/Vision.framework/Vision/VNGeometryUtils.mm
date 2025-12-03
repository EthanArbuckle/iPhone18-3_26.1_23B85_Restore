@interface VNGeometryUtils
+ (BOOL)calculateArea:(double *)area forContour:(VNContour *)contour orientedArea:(BOOL)orientedArea error:(NSError *)error;
+ (BOOL)calculatePerimeter:(double *)perimeter forContour:(VNContour *)contour error:(NSError *)error;
+ (VNCircle)boundingCircleForContour:(VNContour *)contour error:(NSError *)error;
+ (VNCircle)boundingCircleForPoints:(NSArray *)points error:(NSError *)error;
+ (VNCircle)boundingCircleForSIMDPoints:(const simd_float2 *)points pointCount:(NSInteger)pointCount error:(NSError *)error;
+ (double)boundingBoxForContour:(uint64_t)contour;
@end

@implementation VNGeometryUtils

+ (BOOL)calculatePerimeter:(double *)perimeter forContour:(VNContour *)contour error:(NSError *)error
{
  v7 = contour;
  objc_opt_self();
  createNormalizedPointsCorrectedForAspectRatio = [(VNContour *)v7 createNormalizedPointsCorrectedForAspectRatio];
  if (createNormalizedPointsCorrectedForAspectRatio)
  {
    normalizedPoints = [(VNContour *)v7 normalizedPoints];
    pointCount = [(VNContour *)v7 pointCount];
    objc_opt_self();
    if (perimeter)
    {
      if (normalizedPoints)
      {
        if (pointCount > 0)
        {
          if (pointCount == 1)
          {
            *perimeter = 0.0;
          }

          else
          {
            v14 = *normalizedPoints;
            v15 = [[VNPoint alloc] initWithX:v14.f32[0] y:v14.f32[1]];
            v16 = 0.0;
            for (i = 1; i != pointCount; ++i)
            {
              v18 = normalizedPoints[i];
              v19 = [[VNPoint alloc] initWithX:v18.f32[0] y:v18.f32[1]];
              [(VNPoint *)v15 distanceToPoint:v19];
              v16 = v16 + v20;

              v15 = v19;
            }

            v21 = [[VNPoint alloc] initWithX:COERCE_FLOAT(*normalizedPoints) y:COERCE_FLOAT(HIDWORD(*normalizedPoints))];
            v22 = normalizedPoints[pointCount - 1];
            v23 = [[VNPoint alloc] initWithX:v22.f32[0] y:v22.f32[1]];
            [(VNPoint *)v21 distanceToPoint:v23];
            v25 = v24;

            *perimeter = v16 + v25;
          }

          v11 = 1;
          goto LABEL_22;
        }

        if (error)
        {
          v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid points count %ld", pointCount];
          *error = [VNError errorForInvalidArgumentWithLocalizedDescription:v13];
        }

        goto LABEL_17;
      }

      if (error)
      {
        v12 = [VNError errorForInvalidArgumentWithLocalizedDescription:@"null points array"];
        goto LABEL_13;
      }
    }

    else if (error)
    {
      v12 = [VNError errorForInvalidArgumentWithLocalizedDescription:@"null perimeter pointer"];
LABEL_13:
      v11 = 0;
      *error = v12;
LABEL_22:
      free(createNormalizedPointsCorrectedForAspectRatio);
      goto LABEL_23;
    }

LABEL_17:
    v11 = 0;
    goto LABEL_22;
  }

  if (error)
  {
    [VNError errorForInvalidArgumentWithLocalizedDescription:@"Invalid contour passed in"];
    *error = v11 = 0;
  }

  else
  {
    v11 = 0;
  }

LABEL_23:

  return v11;
}

+ (BOOL)calculateArea:(double *)area forContour:(VNContour *)contour orientedArea:(BOOL)orientedArea error:(NSError *)error
{
  v7 = orientedArea;
  v9 = contour;
  objc_opt_self();
  createNormalizedPointsCorrectedForAspectRatio = [(VNContour *)v9 createNormalizedPointsCorrectedForAspectRatio];
  if (createNormalizedPointsCorrectedForAspectRatio)
  {
    pointCount = [(VNContour *)v9 pointCount];
    objc_opt_self();
    if (area)
    {
      if (pointCount > 0)
      {
        v12 = createNormalizedPointsCorrectedForAspectRatio[pointCount - 1];
        v13 = 0.0;
        v14 = createNormalizedPointsCorrectedForAspectRatio;
        do
        {
          v15 = *v14++;
          v13 = v13 + ((-*(&v12 + 1) * *&v15) + (*&v12 * *(&v15 + 1)));
          v12 = v15;
          --pointCount;
        }

        while (pointCount);
        v16 = v13 * 0.5;
        v17 = fabs(v16);
        if (!v7)
        {
          v16 = v17;
        }

        *area = v16;
        v18 = 1;
        goto LABEL_16;
      }

      if (error)
      {
        v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid points count %ld", pointCount];
        *error = [VNError errorForInvalidArgumentWithLocalizedDescription:v19];
      }
    }

    else if (error)
    {
      [VNError errorForInvalidArgumentWithLocalizedDescription:@"null area pointer"];
      *error = v18 = 0;
LABEL_16:
      free(createNormalizedPointsCorrectedForAspectRatio);
      goto LABEL_17;
    }

    v18 = 0;
    goto LABEL_16;
  }

  if (error)
  {
    [VNError errorForInvalidArgumentWithLocalizedDescription:@"Invalid contour passed in"];
    *error = v18 = 0;
  }

  else
  {
    v18 = 0;
  }

LABEL_17:

  return v18;
}

+ (VNCircle)boundingCircleForSIMDPoints:(const simd_float2 *)points pointCount:(NSInteger)pointCount error:(NSError *)error
{
  objc_opt_self();

  return [(VNBoundingCircleAlgorithm *)1.0 boundingCircleForSIMDPoints:points pointCount:pointCount aspectRatioForCentroid:error error:?];
}

+ (VNCircle)boundingCircleForPoints:(NSArray *)points error:(NSError *)error
{
  v5 = points;
  objc_opt_self();
  if ([(NSArray *)v5 count])
  {
    v6 = v5;
    objc_opt_self();
    v7 = [(NSArray *)v6 count];
    v22[0] = 0;
    v22[1] = 0;
    std::vector<CGPoint>::vector[abi:ne200100](&__p, v7);
    if (v7)
    {
      v8 = 0;
      for (i = 0; i != v7; ++i)
      {
        v10 = [(NSArray *)v6 objectAtIndexedSubscript:i];
        [v10 location];
        v11 = __p + v8;
        *v11 = v12;
        v11[1] = v13;

        v8 += 16;
      }
    }

    rep = std::chrono::system_clock::now().__d_.__rep_;
    v15 = rep + ((rep / 0x7FFFFFFF) | ((rep / 0x7FFFFFFF) << 31));
    if (v15 <= 1)
    {
      v15 = 1;
    }

    LODWORD(v22[0]) = v15;
    std::__shuffle[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<CGPoint *>,std::__wrap_iter<CGPoint *>,std::linear_congruential_engine<unsigned int,48271u,0u,2147483647u>>(__p, v21, v22);

    v16 = [(VNBoundingCircleAlgorithm *)1.0 _boundingCircleForPoints:&__p aspectRatioForCentroid:?];
    v17 = v16;
    if (v16)
    {
      v18 = v16;
    }

    else if (error)
    {
      *error = [VNError errorForInternalErrorWithLocalizedDescription:@"Cannot calculate minimum enclosing circle for the given set of points"];
    }

    if (__p)
    {
      v21 = __p;
      operator delete(__p);
    }
  }

  else if (error)
  {
    [VNError errorForInvalidArgumentWithLocalizedDescription:@"Invalid number of points passed for minimum enclosing circle calculation"];
    *error = v17 = 0;
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

+ (VNCircle)boundingCircleForContour:(VNContour *)contour error:(NSError *)error
{
  v5 = contour;
  createNormalizedPointsCorrectedForAspectRatio = [(VNContour *)v5 createNormalizedPointsCorrectedForAspectRatio];
  if (createNormalizedPointsCorrectedForAspectRatio)
  {
    pointCount = [(VNContour *)v5 pointCount];
    [(VNContour *)v5 aspectRatio];
    v9 = v8;
    objc_opt_self();
    v10 = [(VNBoundingCircleAlgorithm *)v9 boundingCircleForSIMDPoints:createNormalizedPointsCorrectedForAspectRatio pointCount:pointCount aspectRatioForCentroid:error error:?];
    free(createNormalizedPointsCorrectedForAspectRatio);
  }

  else if (error)
  {
    [VNError errorForInvalidArgumentWithLocalizedDescription:@"Invalid contour passed in"];
    *error = v10 = 0;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (double)boundingBoxForContour:(uint64_t)contour
{
  v2 = a2;
  objc_opt_self();
  normalizedPoints = [v2 normalizedPoints];
  v4 = 0;
  v5 = 1.0;
  v6 = 0.0;
  v7 = 0.0;
  v8 = 1.0;
  while (v4 < [v2 pointCount])
  {
    v9 = *(normalizedPoints + 8 * v4);
    if (v8 >= *&v9)
    {
      LODWORD(v8) = *(normalizedPoints + 8 * v4);
    }

    if (v5 >= *(&v9 + 1))
    {
      LODWORD(v5) = HIDWORD(*(normalizedPoints + 8 * v4));
    }

    if (v7 < *&v9)
    {
      LODWORD(v7) = *(normalizedPoints + 8 * v4);
    }

    if (v6 < *(&v9 + 1))
    {
      LODWORD(v6) = HIDWORD(*(normalizedPoints + 8 * v4));
    }

    ++v4;
  }

  return v8;
}

@end