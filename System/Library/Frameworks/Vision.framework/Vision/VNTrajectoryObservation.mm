@interface VNTrajectoryObservation
- (BOOL)isEqual:(id)equal;
- (VNTrajectoryObservation)initWithCoder:(id)coder;
- (id)_points:(_OWORD *)_points transformedWith:;
- (id)detectedPointsInTopLeftOrigin:(BOOL)origin orientation:(unsigned int)orientation;
- (id)initWithOriginatingRequestSpecifier:(void *)specifier requestUUID:(void *)d trajectoryUUID:(void *)iD detectedPoints:(void *)points projectedPoints:(double)projectedPoints movingAverageRadius:(__n128)radius equationCoefficients:(float)coefficients confidence:;
- (id)projectedPointsInTopLeftOrigin:(BOOL)origin orientation:(unsigned int)orientation;
- (id)vn_cloneObject;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation VNTrajectoryObservation

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v15 = 1;
  }

  else
  {
    v17.receiver = self;
    v17.super_class = VNTrajectoryObservation;
    if ([(VNObservation *)&v17 isEqual:equalCopy]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v5 = equalCopy;
      if (v5)
      {
        requestUUID = v5->_requestUUID;
      }

      else
      {
        requestUUID = 0;
      }

      if (([(NSUUID *)self->_requestUUID isEqual:requestUUID]& 1) != 0 && ([(VNTrajectoryObservation *)v5 equationCoefficients], v8 = vceqq_f32(v7, *self->_equationCoefficients), v8.i32[3] = v8.i32[2], (vminvq_u32(v8) & 0x80000000) != 0) && ([(VNTrajectoryObservation *)v5 detectedPoints], v9 = objc_claimAutoreleasedReturnValue(), v10 = VisionCoreEqualOrNilObjects(), v9, v10) && ([(VNTrajectoryObservation *)v5 projectedPoints], v11 = objc_claimAutoreleasedReturnValue(), v12 = VisionCoreEqualOrNilObjects(), v11, v12))
      {
        movingAverageRadius = self->_movingAverageRadius;
        [(VNTrajectoryObservation *)v5 movingAverageRadius];
        v15 = movingAverageRadius == v14;
      }

      else
      {
        v15 = 0;
      }
    }

    else
    {
      v15 = 0;
    }
  }

  return v15;
}

- (unint64_t)hash
{
  v12.receiver = self;
  v12.super_class = VNTrajectoryObservation;
  v3 = [(NSArray *)self->_projectedPoints hash]^ __ROR8__([(NSArray *)self->_detectedPoints hash]^ __ROR8__([(NSUUID *)self->_requestUUID hash]^ __ROR8__([(VNObservation *)&v12 hash], 51), 51), 51);
  v4 = *self->_equationCoefficients;
  v5 = *&v4;
  if (*&v4 == 0.0)
  {
    v5 = 0.0;
  }

  v6 = DWORD1(v4);
  if (*(&v4 + 1) == 0.0)
  {
    v6 = 0;
  }

  v7 = v6 ^ __ROR8__(*&v5, 51);
  v8 = DWORD2(v4);
  if (*(&v4 + 2) == 0.0)
  {
    v8 = 0;
  }

  v9 = v8 ^ __ROR8__(v7, 51) ^ __ROR8__(v3, 51);
  movingAverageRadius = self->_movingAverageRadius;
  if (movingAverageRadius == 0.0)
  {
    movingAverageRadius = 0.0;
  }

  return *&movingAverageRadius ^ __ROR8__(v9, 51);
}

- (id)vn_cloneObject
{
  v11.receiver = self;
  v11.super_class = VNTrajectoryObservation;
  vn_cloneObject = [(VNObservation *)&v11 vn_cloneObject];
  if (vn_cloneObject)
  {
    v4 = [(NSUUID *)self->_requestUUID copy];
    v5 = *(vn_cloneObject + 120);
    *(vn_cloneObject + 120) = v4;

    *(vn_cloneObject + 128) = *self->_equationCoefficients;
    v6 = [(NSArray *)self->_detectedPoints copy];
    v7 = *(vn_cloneObject + 96);
    *(vn_cloneObject + 96) = v6;

    v8 = [(NSArray *)self->_projectedPoints copy];
    v9 = *(vn_cloneObject + 104);
    *(vn_cloneObject + 104) = v8;

    *(vn_cloneObject + 112) = self->_movingAverageRadius;
  }

  return vn_cloneObject;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5.receiver = self;
  v5.super_class = VNTrajectoryObservation;
  [(VNObservation *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_requestUUID forKey:@"requestUuid"];
  [coderCopy vn_encodeSimdFloat3:@"eqCoeffs" forKey:*self->_equationCoefficients];
  [coderCopy encodeObject:self->_detectedPoints forKey:@"detPts"];
  [coderCopy encodeObject:self->_projectedPoints forKey:@"projPts"];
  [coderCopy encodeDouble:@"mvAvgRad" forKey:self->_movingAverageRadius];
}

- (VNTrajectoryObservation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = VNTrajectoryObservation;
  v5 = [(VNObservation *)&v17 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"requestUuid"];
    requestUUID = v5->_requestUUID;
    v5->_requestUUID = v7;

    [coderCopy vn_decodeSimdFloat3ForKey:@"eqCoeffs"];
    *v5->_equationCoefficients = v9;
    v10 = [coderCopy decodeObjectOfClass:v6 forKey:@"detPts"];
    detectedPoints = v5->_detectedPoints;
    v5->_detectedPoints = v10;

    v12 = [coderCopy decodeObjectOfClass:v6 forKey:@"projPts"];
    projectedPoints = v5->_projectedPoints;
    v5->_projectedPoints = v12;

    if ([coderCopy containsValueForKey:@"mvAvgRad"])
    {
      [coderCopy decodeDoubleForKey:@"mvAvgRad"];
      v5->_movingAverageRadius = v14;
    }

    v15 = v5;
  }

  return v5;
}

- (id)initWithOriginatingRequestSpecifier:(void *)specifier requestUUID:(void *)d trajectoryUUID:(void *)iD detectedPoints:(void *)points projectedPoints:(double)projectedPoints movingAverageRadius:(__n128)radius equationCoefficients:(float)coefficients confidence:
{
  v16 = a2;
  specifierCopy = specifier;
  dCopy = d;
  iDCopy = iD;
  pointsCopy = points;
  if (self)
  {
    v25.receiver = self;
    v25.super_class = VNTrajectoryObservation;
    v21 = objc_msgSendSuper2(&v25, sel_initWithOriginatingRequestSpecifier_, v16);
    self = v21;
    if (v21)
    {
      [v21 setUUID:dCopy];
      *&v22 = coefficients;
      [self setConfidence:v22];
      objc_storeStrong(self + 15, specifier);
      objc_storeStrong(self + 12, iD);
      objc_storeStrong(self + 13, points);
      *(self + 14) = projectedPoints;
      *(self + 8) = radius;
    }
  }

  return self;
}

- (id)projectedPointsInTopLeftOrigin:(BOOL)origin orientation:(unsigned int)orientation
{
  memset(v8, 0, sizeof(v8));
  v5 = [(VNTrajectoryObservation *)self projectedPoints:VNAffineTransformForVisionToTopLeftOriginOrientation(origin];
  v6 = [(VNTrajectoryObservation *)self _points:v5 transformedWith:v8];

  return v6;
}

- (id)_points:(_OWORD *)_points transformedWith:
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = v5;
  if (self)
  {
    v7 = [v5 count];
    if (v7)
    {
      self = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v7];
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      v8 = v6;
      v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v9)
      {
        v10 = *v18;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v18 != v10)
            {
              objc_enumerationMutation(v8);
            }

            v12 = *(*(&v17 + 1) + 8 * i);
            v13 = _points[1];
            v16[0] = *_points;
            v16[1] = v13;
            v16[2] = _points[2];
            v14 = [v12 transformedWith:v16];
            [self addObject:v14];
          }

          v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
        }

        while (v9);
      }
    }

    else
    {
      self = MEMORY[0x1E695E0F0];
    }
  }

  return self;
}

- (id)detectedPointsInTopLeftOrigin:(BOOL)origin orientation:(unsigned int)orientation
{
  memset(v8, 0, sizeof(v8));
  v5 = [(VNTrajectoryObservation *)self detectedPoints:VNAffineTransformForVisionToTopLeftOriginOrientation(origin];
  v6 = [(VNTrajectoryObservation *)self _points:v5 transformedWith:v8];

  return v6;
}

@end