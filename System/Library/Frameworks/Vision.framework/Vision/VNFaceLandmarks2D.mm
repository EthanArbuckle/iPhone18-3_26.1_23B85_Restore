@interface VNFaceLandmarks2D
+ (id)_createNSArrayFrom:(id)from withPointIndices:(const int *)indices andPointCount:(unint64_t)count;
- (BOOL)isEqual:(id)equal;
- (VNFaceLandmarkRegion2D)allPoints;
- (VNFaceLandmarkRegion2D)faceContour;
- (VNFaceLandmarkRegion2D)innerLips;
- (VNFaceLandmarkRegion2D)leftEye;
- (VNFaceLandmarkRegion2D)leftEyebrow;
- (VNFaceLandmarkRegion2D)leftPupil;
- (VNFaceLandmarkRegion2D)medianLine;
- (VNFaceLandmarkRegion2D)nose;
- (VNFaceLandmarkRegion2D)noseCrest;
- (VNFaceLandmarkRegion2D)outerLips;
- (VNFaceLandmarkRegion2D)rightEye;
- (VNFaceLandmarkRegion2D)rightEyebrow;
- (VNFaceLandmarkRegion2D)rightPupil;
- (VNFaceLandmarks2D)initWithCoder:(id)coder;
- (VNFaceLandmarks2D)initWithOriginatingRequestSpecifier:(id)specifier pointsData:(id)data pointCount:(unint64_t)count constellation:(unint64_t)constellation precisionEstimatesPerPoint:(id)point userFacingBBox:(CGRect)box alignedBBox:(_Geometry2D_rect2D_)bBox landmarkScore:(float)self0;
- (id)_createFaceLandmarks2DRegionOfPoints:(int64_t)points fromPointIndexes:(const int *)indexes andPointCount:(unint64_t)count;
- (unint64_t)hash;
- (void)_createPointArray:(const int *)array count:(unint64_t)count;
- (void)_initLocks;
- (void)encodeWithCoder:(id)coder;
@end

@implementation VNFaceLandmarks2D

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v9 = 1;
  }

  else
  {
    v11.receiver = self;
    v11.super_class = VNFaceLandmarks2D;
    if ([(VNFaceLandmarks *)&v11 isEqual:equalCopy]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v5 = equalCopy;
      constellation = [(VNFaceLandmarks2D *)self constellation];
      if (constellation == [(VNFaceLandmarks2D *)v5 constellation])
      {
        precisionEstimatesPerPoint = [(VNFaceLandmarks2D *)self precisionEstimatesPerPoint];
        precisionEstimatesPerPoint2 = [(VNFaceLandmarks2D *)v5 precisionEstimatesPerPoint];
        v9 = VisionCoreEqualOrNilObjects();
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (VNFaceLandmarkRegion2D)rightPupil
{
  os_unfair_lock_lock(&self->_rightPupilLock);
  if (!self->_rightPupil)
  {
    v3 = [VNFaceLandmarkDetector landmarksMeshPartsForConstellation:[(VNFaceLandmarks2D *)self constellation]];
    v4 = [(VNFaceLandmarks2D *)self _createFaceLandmarks2DRegionOfPoints:2 fromPointIndexes:v3->var24 andPointCount:v3->var23];
    rightPupil = self->_rightPupil;
    self->_rightPupil = v4;
  }

  os_unfair_lock_unlock(&self->_rightPupilLock);
  v6 = self->_rightPupil;

  return v6;
}

- (VNFaceLandmarkRegion2D)leftPupil
{
  os_unfair_lock_lock(&self->_leftPupilLock);
  if (!self->_leftPupil)
  {
    v3 = [VNFaceLandmarkDetector landmarksMeshPartsForConstellation:[(VNFaceLandmarks2D *)self constellation]];
    v4 = [(VNFaceLandmarks2D *)self _createFaceLandmarks2DRegionOfPoints:2 fromPointIndexes:v3->var16 andPointCount:v3->var15];
    leftPupil = self->_leftPupil;
    self->_leftPupil = v4;
  }

  os_unfair_lock_unlock(&self->_leftPupilLock);
  v6 = self->_leftPupil;

  return v6;
}

- (VNFaceLandmarkRegion2D)innerLips
{
  os_unfair_lock_lock(&self->_innerLipsLock);
  if (!self->_innerLips)
  {
    v3 = [VNFaceLandmarkDetector landmarksMeshPartsForConstellation:[(VNFaceLandmarks2D *)self constellation]];
    v4 = [(VNFaceLandmarks2D *)self _createFaceLandmarks2DRegionOfPoints:2 fromPointIndexes:v3->var30 andPointCount:v3->var29];
    innerLips = self->_innerLips;
    self->_innerLips = v4;
  }

  os_unfair_lock_unlock(&self->_innerLipsLock);
  v6 = self->_innerLips;

  return v6;
}

- (VNFaceLandmarkRegion2D)outerLips
{
  os_unfair_lock_lock(&self->_outerLipsLock);
  if (!self->_outerLips)
  {
    v3 = [VNFaceLandmarkDetector landmarksMeshPartsForConstellation:[(VNFaceLandmarks2D *)self constellation]];
    v4 = [(VNFaceLandmarks2D *)self _createFaceLandmarks2DRegionOfPoints:2 fromPointIndexes:v3->var28 andPointCount:v3->var27];
    outerLips = self->_outerLips;
    self->_outerLips = v4;
  }

  os_unfair_lock_unlock(&self->_outerLipsLock);
  v6 = self->_outerLips;

  return v6;
}

- (VNFaceLandmarkRegion2D)medianLine
{
  os_unfair_lock_lock(&self->_medianLineLock);
  if (!self->_medianLine)
  {
    v3 = [VNFaceLandmarkDetector landmarksMeshPartsForConstellation:[(VNFaceLandmarks2D *)self constellation]];
    v4 = [(VNFaceLandmarks2D *)self _createFaceLandmarks2DRegionOfPoints:1 fromPointIndexes:v3->var32 andPointCount:v3->var31];
    medianLine = self->_medianLine;
    self->_medianLine = v4;
  }

  os_unfair_lock_unlock(&self->_medianLineLock);
  v6 = self->_medianLine;

  return v6;
}

- (VNFaceLandmarkRegion2D)noseCrest
{
  os_unfair_lock_lock(&self->_noseCrestLock);
  if (!self->_noseCrest)
  {
    v3 = [VNFaceLandmarkDetector landmarksMeshPartsForConstellation:[(VNFaceLandmarks2D *)self constellation]];
    v4 = [(VNFaceLandmarks2D *)self _createFaceLandmarks2DRegionOfPoints:1 fromPointIndexes:v3->var6 andPointCount:v3->var5];
    noseCrest = self->_noseCrest;
    self->_noseCrest = v4;
  }

  os_unfair_lock_unlock(&self->_noseCrestLock);
  v6 = self->_noseCrest;

  return v6;
}

- (VNFaceLandmarkRegion2D)nose
{
  os_unfair_lock_lock(&self->_noseLock);
  if (!self->_nose)
  {
    v3 = [VNFaceLandmarkDetector landmarksMeshPartsForConstellation:[(VNFaceLandmarks2D *)self constellation]];
    v4 = [(VNFaceLandmarks2D *)self _createFaceLandmarks2DRegionOfPoints:2 fromPointIndexes:v3->var8 andPointCount:v3->var7];
    nose = self->_nose;
    self->_nose = v4;
  }

  os_unfair_lock_unlock(&self->_noseLock);
  v6 = self->_nose;

  return v6;
}

- (VNFaceLandmarkRegion2D)rightEyebrow
{
  os_unfair_lock_lock(&self->_rightEyebrowLock);
  if (!self->_rightEyebrow)
  {
    v3 = [VNFaceLandmarkDetector landmarksMeshPartsForConstellation:[(VNFaceLandmarks2D *)self constellation]];
    v4 = [(VNFaceLandmarks2D *)self _createFaceLandmarks2DRegionOfPoints:1 fromPointIndexes:v3->var20 andPointCount:v3->var19];
    rightEyebrow = self->_rightEyebrow;
    self->_rightEyebrow = v4;
  }

  os_unfair_lock_unlock(&self->_rightEyebrowLock);
  v6 = self->_rightEyebrow;

  return v6;
}

- (VNFaceLandmarkRegion2D)leftEyebrow
{
  os_unfair_lock_lock(&self->_leftEyebrowLock);
  if (!self->_leftEyebrow)
  {
    v3 = [VNFaceLandmarkDetector landmarksMeshPartsForConstellation:[(VNFaceLandmarks2D *)self constellation]];
    v4 = [(VNFaceLandmarks2D *)self _createFaceLandmarks2DRegionOfPoints:1 fromPointIndexes:v3->var12 andPointCount:v3->var11];
    leftEyebrow = self->_leftEyebrow;
    self->_leftEyebrow = v4;
  }

  os_unfair_lock_unlock(&self->_leftEyebrowLock);
  v6 = self->_leftEyebrow;

  return v6;
}

- (VNFaceLandmarkRegion2D)rightEye
{
  os_unfair_lock_lock(&self->_rightEyeLock);
  if (!self->_rightEye)
  {
    v3 = [VNFaceLandmarkDetector landmarksMeshPartsForConstellation:[(VNFaceLandmarks2D *)self constellation]];
    v4 = [(VNFaceLandmarks2D *)self _createFaceLandmarks2DRegionOfPoints:2 fromPointIndexes:v3->var22 andPointCount:v3->var21];
    rightEye = self->_rightEye;
    self->_rightEye = v4;
  }

  os_unfair_lock_unlock(&self->_rightEyeLock);
  v6 = self->_rightEye;

  return v6;
}

- (VNFaceLandmarkRegion2D)leftEye
{
  os_unfair_lock_lock(&self->_leftEyeLock);
  if (!self->_leftEye)
  {
    v3 = [VNFaceLandmarkDetector landmarksMeshPartsForConstellation:[(VNFaceLandmarks2D *)self constellation]];
    v4 = [(VNFaceLandmarks2D *)self _createFaceLandmarks2DRegionOfPoints:2 fromPointIndexes:v3->var14 andPointCount:v3->var13];
    leftEye = self->_leftEye;
    self->_leftEye = v4;
  }

  os_unfair_lock_unlock(&self->_leftEyeLock);
  v6 = self->_leftEye;

  return v6;
}

- (id)_createFaceLandmarks2DRegionOfPoints:(int64_t)points fromPointIndexes:(const int *)indexes andPointCount:(unint64_t)count
{
  v9 = objc_opt_class();
  precisionEstimatesPerPoint = [(VNFaceLandmarks2D *)self precisionEstimatesPerPoint];
  v11 = [v9 _createNSArrayFrom:precisionEstimatesPerPoint withPointIndices:indexes andPointCount:count];

  v12 = [(VNFaceLandmarks2D *)self _createPointArray:indexes count:count];
  v13 = [VNFaceLandmarkRegion2D alloc];
  originatingRequestSpecifier = [(VNFaceLandmarks *)self originatingRequestSpecifier];
  [(VNFaceLandmarks *)self userFacingBBox];
  v15 = [(VNFaceLandmarkRegion2D *)v13 initWithOriginatingRequestSpecifier:originatingRequestSpecifier faceBoundingBox:points pointsClassification:v12 points:count pointCount:v11 precisionEstimatesPerPoint:?];

  return v15;
}

- (VNFaceLandmarkRegion2D)faceContour
{
  os_unfair_lock_lock(&self->_faceContourLock);
  if (!self->_faceContour)
  {
    v3 = [VNFaceLandmarkDetector landmarksMeshPartsForConstellation:[(VNFaceLandmarks2D *)self constellation]];
    v4 = [(VNFaceLandmarks2D *)self _createPointArray:v3->var2 count:v3->var1];
    v5 = objc_opt_class();
    precisionEstimatesPerPoint = [(VNFaceLandmarks2D *)self precisionEstimatesPerPoint];
    v7 = [v5 _createNSArrayFrom:precisionEstimatesPerPoint withPointIndices:v3->var2 andPointCount:v3->var1];

    v8 = [VNFaceLandmarkRegion2D alloc];
    originatingRequestSpecifier = [(VNFaceLandmarks *)self originatingRequestSpecifier];
    [(VNFaceLandmarks *)self userFacingBBox];
    v10 = [(VNFaceLandmarkRegion2D *)v8 initWithOriginatingRequestSpecifier:originatingRequestSpecifier faceBoundingBox:1 pointsClassification:v4 points:v3->var1 pointCount:v7 precisionEstimatesPerPoint:?];
    faceContour = self->_faceContour;
    self->_faceContour = v10;
  }

  os_unfair_lock_unlock(&self->_faceContourLock);
  v12 = self->_faceContour;

  return v12;
}

- (VNFaceLandmarkRegion2D)allPoints
{
  os_unfair_lock_lock(&self->_allPointsLock);
  if (self->_allPoints)
  {
    goto LABEL_4;
  }

  pointCount = [(VNFaceLandmarks *)self pointCount];
  v4 = [VNFaceLandmarkDetector allLandmarksPointsIndexesForConstellation:[(VNFaceLandmarks2D *)self constellation]];
  if (pointCount == (v4[1] - *v4) >> 2)
  {
    v5 = [VNFaceLandmarks2D _createPointArray:"_createPointArray:count:" count:?];
    v6 = [VNFaceLandmarkRegion2D alloc];
    originatingRequestSpecifier = [(VNFaceLandmarks *)self originatingRequestSpecifier];
    [(VNFaceLandmarks *)self userFacingBBox];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    precisionEstimatesPerPoint = [(VNFaceLandmarks2D *)self precisionEstimatesPerPoint];
    v17 = [(VNFaceLandmarkRegion2D *)v6 initWithOriginatingRequestSpecifier:originatingRequestSpecifier faceBoundingBox:0 pointsClassification:v5 points:pointCount pointCount:precisionEstimatesPerPoint precisionEstimatesPerPoint:v9, v11, v13, v15];
    allPoints = self->_allPoints;
    self->_allPoints = v17;

LABEL_4:
    os_unfair_lock_unlock(&self->_allPointsLock);
    v19 = self->_allPoints;
    goto LABEL_5;
  }

  os_unfair_lock_unlock(&self->_allPointsLock);
  v19 = 0;
LABEL_5:

  return v19;
}

- (void)_createPointArray:(const int *)array count:(unint64_t)count
{
  arrayCopy = array;
  [VNError VNAssert:array != 0 log:@"pointIndices must not be nullptr"];
  v7 = malloc_type_calloc(8uLL, count, 0x442A3100uLL);
  pointsData = [(VNFaceLandmarks *)self pointsData];
  bytes = [pointsData bytes];

  if ([(VNFaceLandmarks *)self isUserFacingBBoxEquivalentToAlignedBBox])
  {
    v10 = 1.0;
    v11 = 0.0;
    v12 = 1.0;
    v13 = 0.0;
  }

  else
  {
    [(VNFaceLandmarks *)self alignedBBox];
    v15 = v14;
    [(VNFaceLandmarks *)self userFacingBBox];
    v10 = v15 / v16;
    [(VNFaceLandmarks *)self alignedBBox];
    v18 = v17;
    [(VNFaceLandmarks *)self userFacingBBox];
    v12 = v18 / v19;
    [(VNFaceLandmarks *)self alignedBBox];
    v21 = v20;
    [(VNFaceLandmarks *)self userFacingBBox];
    v23 = v21 - v22;
    [(VNFaceLandmarks *)self userFacingBBox];
    v11 = v23 / v24;
    [(VNFaceLandmarks *)self alignedBBox];
    v26 = v25;
    [(VNFaceLandmarks *)self userFacingBBox];
    v28 = v26 - v27;
    [(VNFaceLandmarks *)self userFacingBBox];
    v13 = v28 / v29;
  }

  pointCount = [(VNFaceLandmarks *)self pointCount];
  if (count)
  {
    for (i = v7; ; i += 2)
    {
      v33 = *arrayCopy++;
      v32 = v33;
      if (pointCount <= v33)
      {
        break;
      }

      v34 = (bytes + 8 * v32);
      *&v35 = v11 + *v34 * v10;
      *i = v35;
      v36 = v13 + v34[1] * v12;
      *(&v35 + 1) = v36;
      *i = v35;
      if (!--count)
      {
        return v7;
      }
    }

    free(v7);
    return 0;
  }

  return v7;
}

- (unint64_t)hash
{
  v3.receiver = self;
  v3.super_class = VNFaceLandmarks2D;
  return [(NSArray *)self->_precisionEstimatesPerPoint hash]^ __ROR8__(LODWORD(self->_constellation) ^ __ROR8__([(VNFaceLandmarks *)&v3 hash], 51), 51);
}

- (void)_initLocks
{
  self->_allPointsLock._os_unfair_lock_opaque = 0;
  self->_faceContourLock._os_unfair_lock_opaque = 0;
  self->_leftEyeLock._os_unfair_lock_opaque = 0;
  self->_rightEyeLock._os_unfair_lock_opaque = 0;
  self->_leftEyebrowLock._os_unfair_lock_opaque = 0;
  self->_rightEyebrowLock._os_unfair_lock_opaque = 0;
  self->_noseLock._os_unfair_lock_opaque = 0;
  self->_noseCrestLock._os_unfair_lock_opaque = 0;
  self->_medianLineLock._os_unfair_lock_opaque = 0;
  self->_outerLipsLock._os_unfair_lock_opaque = 0;
  self->_innerLipsLock._os_unfair_lock_opaque = 0;
  self->_leftPupilLock._os_unfair_lock_opaque = 0;
  self->_rightPupilLock._os_unfair_lock_opaque = 0;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5.receiver = self;
  v5.super_class = VNFaceLandmarks2D;
  [(VNFaceLandmarks *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInt32:0 forKey:@"VNFaceLandmarks2D"];
  [coderCopy encodeInteger:self->_constellation forKey:@"FLMs2D_CType"];
  [coderCopy encodeObject:self->_precisionEstimatesPerPoint forKey:@"FLMs2D_PtsAE"];
}

- (VNFaceLandmarks2D)initWithCoder:(id)coder
{
  coderCopy = coder;
  v19.receiver = self;
  v19.super_class = VNFaceLandmarks2D;
  v5 = [(VNFaceLandmarks *)&v19 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeInt32ForKey:@"VNFaceLandmarks2D"];
    if (v6)
    {
      var0 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Failed to unarchive VNFaceLandmarks2D object due to coding version mismatch:Currently supported: %u; encoded: %u", 0, v6];
      v8 = [VNError errorForInternalErrorWithLocalizedDescription:var0];
      [coderCopy failWithError:v8];
    }

    else
    {
      if ([coderCopy containsValueForKey:@"FLMs2D_CType"])
      {
        v9 = [coderCopy decodeIntegerForKey:@"FLMs2D_CType"];
      }

      else
      {
        v9 = 1;
      }

      v5->_constellation = v9;
      v10 = [VNFaceLandmarkDetector landmarksMeshPartsForConstellation:?];
      if (v5->_constellation == 1)
      {
        var0 = v10->var0 + 2;
      }

      else
      {
        var0 = v10->var0;
      }

      pointCount = [(VNFaceLandmarks *)v5 pointCount];
      if (pointCount == var0)
      {
        v13 = MEMORY[0x1E695DFD8];
        v14 = objc_opt_class();
        v15 = [v13 setWithObjects:{v14, objc_opt_class(), 0}];
        v16 = [coderCopy decodeObjectOfClasses:v15 forKey:@"FLMs2D_PtsAE"];
        precisionEstimatesPerPoint = v5->_precisionEstimatesPerPoint;
        v5->_precisionEstimatesPerPoint = v16;

        [(VNFaceLandmarks2D *)v5 _initLocks];
LABEL_14:

        goto LABEL_15;
      }

      var0 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected number of landmark points: %lu; expected: %lu", pointCount, var0];
      v8 = [VNError errorForInternalErrorWithLocalizedDescription:var0];
      [coderCopy failWithError:v8];
    }

    v15 = v5;
    v5 = 0;
    goto LABEL_14;
  }

LABEL_15:

  return v5;
}

- (VNFaceLandmarks2D)initWithOriginatingRequestSpecifier:(id)specifier pointsData:(id)data pointCount:(unint64_t)count constellation:(unint64_t)constellation precisionEstimatesPerPoint:(id)point userFacingBBox:(CGRect)box alignedBBox:(_Geometry2D_rect2D_)bBox landmarkScore:(float)self0
{
  width = bBox.size.width;
  height = bBox.size.height;
  y = bBox.origin.y;
  x = bBox.origin.x;
  v17 = box.size.height;
  v18 = box.size.width;
  v19 = box.origin.y;
  v20 = box.origin.x;
  specifierCopy = specifier;
  dataCopy = data;
  pointCopy = point;
  v35.receiver = self;
  v35.super_class = VNFaceLandmarks2D;
  *&v25 = x;
  *&v26 = y;
  *&v27 = height;
  *&v28 = width;
  v29 = [(VNFaceLandmarks *)&v35 initWithOriginatingRequestSpecifier:specifierCopy pointsData:dataCopy pointCount:count userFacingBBox:v20 alignedBBox:v19 landmarkScore:v18, v17, v25, v26, v27, v28, LODWORD(score)];
  v30 = v29;
  if (v29)
  {
    v29->_constellation = constellation;
    objc_storeStrong(&v29->_precisionEstimatesPerPoint, point);
    [(VNFaceLandmarks2D *)v30 _initLocks];
    v31 = v30;
  }

  return v30;
}

+ (id)_createNSArrayFrom:(id)from withPointIndices:(const int *)indices andPointCount:(unint64_t)count
{
  fromCopy = from;
  if (fromCopy)
  {
    v8 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:count];
    if (count)
    {
      v9 = 0;
      do
      {
        v10 = [fromCopy objectAtIndexedSubscript:indices[v9]];
        [v8 setObject:v10 atIndexedSubscript:v9];

        ++v9;
      }

      while (count != v9);
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end