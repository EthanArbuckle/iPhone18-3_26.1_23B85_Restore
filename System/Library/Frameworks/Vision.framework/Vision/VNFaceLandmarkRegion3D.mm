@interface VNFaceLandmarkRegion3D
- (VNFaceLandmarkRegion3D)initWithCoder:(id)coder;
- (VNFaceLandmarkRegion3D)initWithOriginatingRequestSpecifier:(VNFaceLandmarkRegion3D *)self faceBoundingBox:(SEL)box points:(id)points pointCount:(CGRect)count;
- (VNFaceLandmarkRegion3D)initWithOriginatingRequestSpecifier:(id)specifier faceBoundingBox:(CGRect)box;
- (__n128)pointAtIndex:(unint64_t)index;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation VNFaceLandmarkRegion3D

- (void)dealloc
{
  free(*self->_points);
  v3.receiver = self;
  v3.super_class = VNFaceLandmarkRegion3D;
  [(VNFaceLandmarkRegion3D *)&v3 dealloc];
}

- (__n128)pointAtIndex:(unint64_t)index
{
  pointCount = [self pointCount];
  result.n128_u64[0] = 0;
  if (pointCount <= index)
  {
    return *(self[7] + 16 * index);
  }

  return result;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6.receiver = self;
  v6.super_class = VNFaceLandmarkRegion3D;
  [(VNFaceLandmarkRegion *)&v6 encodeWithCoder:coderCopy];
  [coderCopy encodeInt32:0 forKey:@"VNFaceLandmarkRegion3D"];
  v5 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytesNoCopy:-[VNFaceLandmarkRegion3D points](self length:"points") freeWhenDone:{16 * -[VNFaceLandmarkRegion pointCount](self, "pointCount"), 0}];
  [coderCopy encodeObject:v5 forKey:@"FLMReg3D_PtsData"];
}

- (VNFaceLandmarkRegion3D)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = VNFaceLandmarkRegion3D;
  v5 = [(VNFaceLandmarkRegion *)&v15 initWithCoder:coderCopy];
  if (!v5)
  {
    goto LABEL_8;
  }

  v6 = [coderCopy decodeInt32ForKey:@"VNFaceLandmarkRegion3D"];
  if (v6)
  {
    v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Failed to unarchive VNFaceLandmarkRegion3D object due to coding version mismatch: Currently supported: %u; encoded: %u", 0, v6];
    v8 = [VNError errorForInternalErrorWithLocalizedDescription:v7];
    [coderCopy failWithError:v8];
LABEL_7:

LABEL_8:
    v12 = 0;
    goto LABEL_9;
  }

  pointCount = [(VNFaceLandmarkRegion *)v5 pointCount];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"FLMReg3D_PtsData"];
  v10 = [v7 length];
  if (v10 != 16 * pointCount)
  {
    v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Failed to unarchive VNFaceLandmarkRegion3D object. Error: points buffer size mismatch (data size: %lu; expected: %lu)", v10, 16 * pointCount];
    v13 = [VNError errorForInternalErrorWithLocalizedDescription:v8];
    [coderCopy failWithError:v13];

    goto LABEL_7;
  }

  v11 = malloc_type_calloc(pointCount, 0x10uLL, 0x1000040451B5BE8uLL);
  *v5->_points = v11;
  memcpy(v11, [v7 bytes], v10);

  v12 = v5;
LABEL_9:

  return v12;
}

- (VNFaceLandmarkRegion3D)initWithOriginatingRequestSpecifier:(VNFaceLandmarkRegion3D *)self faceBoundingBox:(SEL)box points:(id)points pointCount:(CGRect)count
{
  v6 = v4;
  v11.receiver = self;
  v11.super_class = VNFaceLandmarkRegion3D;
  v7 = [(VNFaceLandmarkRegion *)&v11 initWithOriginatingRequestSpecifier:points faceBoundingBox:v5 pointCount:count.origin.x, count.origin.y, count.size.width, count.size.height];
  v8 = v7;
  if (v7)
  {
    *v7->_points = v6;
    v9 = v7;
  }

  return v8;
}

- (VNFaceLandmarkRegion3D)initWithOriginatingRequestSpecifier:(id)specifier faceBoundingBox:(CGRect)box
{
  specifierCopy = specifier;
  v5 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:@"[VNFaceLandmarkRegion3D -initWithRequestRevision:faceBoundingBox:] is not available userInfo:{use class designated initializers", 0}];
  objc_exception_throw(v5);
}

@end