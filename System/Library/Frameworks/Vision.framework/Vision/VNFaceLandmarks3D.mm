@interface VNFaceLandmarks3D
- (VNFaceLandmarkRegion3D)allPoints;
- (VNFaceLandmarkRegion3D)faceContour;
- (VNFaceLandmarkRegion3D)innerLips;
- (VNFaceLandmarkRegion3D)leftEye;
- (VNFaceLandmarkRegion3D)leftEyebrow;
- (VNFaceLandmarkRegion3D)medianLine;
- (VNFaceLandmarkRegion3D)nose;
- (VNFaceLandmarkRegion3D)noseCrest;
- (VNFaceLandmarkRegion3D)outerLips;
- (VNFaceLandmarkRegion3D)rightEye;
- (VNFaceLandmarkRegion3D)rightEyebrow;
- (VNFaceLandmarks3D)initWithCoder:(id)coder;
- (VNFaceLandmarks3D)initWithOriginatingRequestSpecifier:(id)specifier pointsData:(id)data pointCount:(unint64_t)count userFacingBBox:(CGRect)box alignedBBox:(_Geometry2D_rect2D_)bBox landmarkScore:(float)score;
- (void)_createPointArray:(const int *)array count:(unint64_t)count;
- (void)_initLocks;
- (void)encodeWithCoder:(id)coder;
@end

@implementation VNFaceLandmarks3D

- (VNFaceLandmarkRegion3D)innerLips
{
  os_unfair_lock_lock(&self->_innerLipsLock);
  if (!self->_innerLips)
  {
    v3 = [(VNFaceLandmarks3D *)self _createPointArray:&unk_1A6051290 count:6];
    v4 = [VNFaceLandmarkRegion3D alloc];
    originatingRequestSpecifier = [(VNFaceLandmarks *)self originatingRequestSpecifier];
    [(VNFaceLandmarks *)self userFacingBBox];
    v6 = [(VNFaceLandmarkRegion3D *)v4 initWithOriginatingRequestSpecifier:originatingRequestSpecifier faceBoundingBox:v3 points:6 pointCount:?];
    innerLips = self->_innerLips;
    self->_innerLips = v6;
  }

  os_unfair_lock_unlock(&self->_innerLipsLock);
  v8 = self->_innerLips;

  return v8;
}

- (VNFaceLandmarkRegion3D)outerLips
{
  os_unfair_lock_lock(&self->_outerLipsLock);
  if (!self->_outerLips)
  {
    v3 = [(VNFaceLandmarks3D *)self _createPointArray:&unk_1A6051230 count:10];
    v4 = [VNFaceLandmarkRegion3D alloc];
    originatingRequestSpecifier = [(VNFaceLandmarks *)self originatingRequestSpecifier];
    [(VNFaceLandmarks *)self userFacingBBox];
    v6 = [(VNFaceLandmarkRegion3D *)v4 initWithOriginatingRequestSpecifier:originatingRequestSpecifier faceBoundingBox:v3 points:10 pointCount:?];
    outerLips = self->_outerLips;
    self->_outerLips = v6;
  }

  os_unfair_lock_unlock(&self->_outerLipsLock);
  v8 = self->_outerLips;

  return v8;
}

- (VNFaceLandmarkRegion3D)medianLine
{
  os_unfair_lock_lock(&self->_medianLineLock);
  if (!self->_medianLine)
  {
    v3 = [(VNFaceLandmarks3D *)self _createPointArray:&unk_1A60512F0 count:9];
    v4 = [VNFaceLandmarkRegion3D alloc];
    originatingRequestSpecifier = [(VNFaceLandmarks *)self originatingRequestSpecifier];
    [(VNFaceLandmarks *)self userFacingBBox];
    v6 = [(VNFaceLandmarkRegion3D *)v4 initWithOriginatingRequestSpecifier:originatingRequestSpecifier faceBoundingBox:v3 points:9 pointCount:?];
    medianLine = self->_medianLine;
    self->_medianLine = v6;
  }

  os_unfair_lock_unlock(&self->_medianLineLock);
  v8 = self->_medianLine;

  return v8;
}

- (VNFaceLandmarkRegion3D)noseCrest
{
  os_unfair_lock_lock(&self->_noseCrestLock);
  if (!self->_noseCrest)
  {
    v3 = [(VNFaceLandmarks3D *)self _createPointArray:&unk_1A6050E10 count:3];
    v4 = [VNFaceLandmarkRegion3D alloc];
    originatingRequestSpecifier = [(VNFaceLandmarks *)self originatingRequestSpecifier];
    [(VNFaceLandmarks *)self userFacingBBox];
    v6 = [(VNFaceLandmarkRegion3D *)v4 initWithOriginatingRequestSpecifier:originatingRequestSpecifier faceBoundingBox:v3 points:3 pointCount:?];
    noseCrest = self->_noseCrest;
    self->_noseCrest = v6;
  }

  os_unfair_lock_unlock(&self->_noseCrestLock);
  v8 = self->_noseCrest;

  return v8;
}

- (VNFaceLandmarkRegion3D)nose
{
  os_unfair_lock_lock(&self->_noseLock);
  if (!self->_nose)
  {
    v3 = [(VNFaceLandmarks3D *)self _createPointArray:&unk_1A6050E70 count:9];
    v4 = [VNFaceLandmarkRegion3D alloc];
    originatingRequestSpecifier = [(VNFaceLandmarks *)self originatingRequestSpecifier];
    [(VNFaceLandmarks *)self userFacingBBox];
    v6 = [(VNFaceLandmarkRegion3D *)v4 initWithOriginatingRequestSpecifier:originatingRequestSpecifier faceBoundingBox:v3 points:9 pointCount:?];
    nose = self->_nose;
    self->_nose = v6;
  }

  os_unfair_lock_unlock(&self->_noseLock);
  v8 = self->_nose;

  return v8;
}

- (VNFaceLandmarkRegion3D)rightEyebrow
{
  os_unfair_lock_lock(&self->_rightEyebrowLock);
  if (!self->_rightEyebrow)
  {
    v3 = [(VNFaceLandmarks3D *)self _createPointArray:&unk_1A60510B0 count:4];
    v4 = [VNFaceLandmarkRegion3D alloc];
    originatingRequestSpecifier = [(VNFaceLandmarks *)self originatingRequestSpecifier];
    [(VNFaceLandmarks *)self userFacingBBox];
    v6 = [(VNFaceLandmarkRegion3D *)v4 initWithOriginatingRequestSpecifier:originatingRequestSpecifier faceBoundingBox:v3 points:4 pointCount:?];
    rightEyebrow = self->_rightEyebrow;
    self->_rightEyebrow = v6;
  }

  os_unfair_lock_unlock(&self->_rightEyebrowLock);
  v8 = self->_rightEyebrow;

  return v8;
}

- (VNFaceLandmarkRegion3D)leftEyebrow
{
  os_unfair_lock_lock(&self->_leftEyebrowLock);
  if (!self->_leftEyebrow)
  {
    v3 = [(VNFaceLandmarks3D *)self _createPointArray:&unk_1A6050F30 count:4];
    v4 = [VNFaceLandmarkRegion3D alloc];
    originatingRequestSpecifier = [(VNFaceLandmarks *)self originatingRequestSpecifier];
    [(VNFaceLandmarks *)self userFacingBBox];
    v6 = [(VNFaceLandmarkRegion3D *)v4 initWithOriginatingRequestSpecifier:originatingRequestSpecifier faceBoundingBox:v3 points:4 pointCount:?];
    leftEyebrow = self->_leftEyebrow;
    self->_leftEyebrow = v6;
  }

  os_unfair_lock_unlock(&self->_leftEyebrowLock);
  v8 = self->_leftEyebrow;

  return v8;
}

- (VNFaceLandmarkRegion3D)rightEye
{
  os_unfair_lock_lock(&self->_rightEyeLock);
  if (!self->_rightEye)
  {
    v3 = [(VNFaceLandmarks3D *)self _createPointArray:&unk_1A6051110 count:8];
    v4 = [VNFaceLandmarkRegion3D alloc];
    originatingRequestSpecifier = [(VNFaceLandmarks *)self originatingRequestSpecifier];
    [(VNFaceLandmarks *)self userFacingBBox];
    v6 = [(VNFaceLandmarkRegion3D *)v4 initWithOriginatingRequestSpecifier:originatingRequestSpecifier faceBoundingBox:v3 points:8 pointCount:?];
    rightEye = self->_rightEye;
    self->_rightEye = v6;
  }

  os_unfair_lock_unlock(&self->_rightEyeLock);
  v8 = self->_rightEye;

  return v8;
}

- (VNFaceLandmarkRegion3D)leftEye
{
  os_unfair_lock_lock(&self->_leftEyeLock);
  if (!self->_leftEye)
  {
    v3 = [(VNFaceLandmarks3D *)self _createPointArray:&unk_1A6050F90 count:8];
    v4 = [VNFaceLandmarkRegion3D alloc];
    originatingRequestSpecifier = [(VNFaceLandmarks *)self originatingRequestSpecifier];
    [(VNFaceLandmarks *)self userFacingBBox];
    v6 = [(VNFaceLandmarkRegion3D *)v4 initWithOriginatingRequestSpecifier:originatingRequestSpecifier faceBoundingBox:v3 points:8 pointCount:?];
    leftEye = self->_leftEye;
    self->_leftEye = v6;
  }

  os_unfair_lock_unlock(&self->_leftEyeLock);
  v8 = self->_leftEye;

  return v8;
}

- (VNFaceLandmarkRegion3D)faceContour
{
  os_unfair_lock_lock(&self->_faceContourLock);
  if (!self->_faceContour)
  {
    v3 = [(VNFaceLandmarks3D *)self _createPointArray:&unk_1A6050D50 count:11];
    v4 = [VNFaceLandmarkRegion3D alloc];
    originatingRequestSpecifier = [(VNFaceLandmarks *)self originatingRequestSpecifier];
    [(VNFaceLandmarks *)self userFacingBBox];
    v6 = [(VNFaceLandmarkRegion3D *)v4 initWithOriginatingRequestSpecifier:originatingRequestSpecifier faceBoundingBox:v3 points:11 pointCount:?];
    faceContour = self->_faceContour;
    self->_faceContour = v6;
  }

  os_unfair_lock_unlock(&self->_faceContourLock);
  v8 = self->_faceContour;

  return v8;
}

- (VNFaceLandmarkRegion3D)allPoints
{
  os_unfair_lock_lock(&self->_allPointsLock);
  if (self->_allPoints)
  {
LABEL_2:
    os_unfair_lock_unlock(&self->_allPointsLock);
    v3 = self->_allPoints;
    goto LABEL_3;
  }

  pointCount = [(VNFaceLandmarks *)self pointCount];
  v6 = +[VNFaceGeometryEstimator allLandmarksPointsIndexes];
  v13 = 0;
  v14 = 0;
  v15 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v13, *v6, v6[1], (v6[1] - *v6) >> 2);
  v7 = v13;
  if (pointCount == (v14 - v13) >> 2)
  {
    v8 = [(VNFaceLandmarks3D *)self _createPointArray:v13 count:pointCount];
    v9 = [VNFaceLandmarkRegion3D alloc];
    originatingRequestSpecifier = [(VNFaceLandmarks *)self originatingRequestSpecifier];
    [(VNFaceLandmarks *)self userFacingBBox];
    v11 = [(VNFaceLandmarkRegion3D *)v9 initWithOriginatingRequestSpecifier:originatingRequestSpecifier faceBoundingBox:v8 points:pointCount pointCount:?];
    allPoints = self->_allPoints;
    self->_allPoints = v11;

    if (v7)
    {
      operator delete(v7);
    }

    goto LABEL_2;
  }

  if (v13)
  {
    operator delete(v13);
  }

  os_unfair_lock_unlock(&self->_allPointsLock);
  v3 = 0;
LABEL_3:

  return v3;
}

- (void)_createPointArray:(const int *)array count:(unint64_t)count
{
  arrayCopy = array;
  [VNError VNAssert:array != 0 log:@"pointIndices must not be nullptr"];
  v7 = malloc_type_calloc(0x10uLL, count, 0x75B554B0uLL);
  pointsData = [(VNFaceLandmarks *)self pointsData];
  bytes = [pointsData bytes];

  pointCount = [(VNFaceLandmarks *)self pointCount];
  if (count)
  {
    for (i = v7; ; i += 2)
    {
      v13 = *arrayCopy++;
      v12 = v13;
      if (pointCount <= v13)
      {
        break;
      }

      v14 = (bytes + 12 * v12);
      v15 = i[1];
      LODWORD(v16) = *v14;
      *i = *v14;
      HIDWORD(v16) = v14[1];
      *(i + 2) = v15;
      *i = v16;
      *(i + 2) = v14[2];
      *i = v16;
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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5.receiver = self;
  v5.super_class = VNFaceLandmarks3D;
  [(VNFaceLandmarks *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInt32:0 forKey:@"VNFaceLandmarks3D"];
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
}

- (VNFaceLandmarks3D)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = VNFaceLandmarks3D;
  v5 = [(VNFaceLandmarks *)&v10 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeInt32ForKey:@"VNFaceLandmarks3D"];
    if (v6)
    {
      v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Failed to unarchive VNFaceLandmarks3D object due to coding version mismatch: Currently supported: %u; encoded: %u", 0, v6];
      v8 = [VNError errorForInternalErrorWithLocalizedDescription:v7];
      [coderCopy failWithError:v8];

      v5 = 0;
    }

    else
    {
      [(VNFaceLandmarks3D *)v5 _initLocks];
    }
  }

  return v5;
}

- (VNFaceLandmarks3D)initWithOriginatingRequestSpecifier:(id)specifier pointsData:(id)data pointCount:(unint64_t)count userFacingBBox:(CGRect)box alignedBBox:(_Geometry2D_rect2D_)bBox landmarkScore:(float)score
{
  width = bBox.size.width;
  height = bBox.size.height;
  y = bBox.origin.y;
  x = bBox.origin.x;
  v11 = box.size.height;
  v12 = box.size.width;
  v13 = box.origin.y;
  v14 = box.origin.x;
  specifierCopy = specifier;
  dataCopy = data;
  v30.receiver = self;
  v30.super_class = VNFaceLandmarks3D;
  *&v20 = x;
  *&v21 = y;
  *&v22 = height;
  *&v23 = width;
  v24 = [(VNFaceLandmarks *)&v30 initWithOriginatingRequestSpecifier:specifierCopy pointsData:dataCopy pointCount:count userFacingBBox:v14 alignedBBox:v13 landmarkScore:v12, v11, v20, v21, v22, v23, LODWORD(score)];
  v25 = v24;
  if (v24)
  {
    [(VNFaceLandmarks3D *)v24 _initLocks];
    v26 = v25;
  }

  return v25;
}

@end