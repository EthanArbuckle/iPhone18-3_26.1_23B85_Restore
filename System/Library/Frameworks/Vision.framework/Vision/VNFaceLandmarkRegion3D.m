@interface VNFaceLandmarkRegion3D
- (VNFaceLandmarkRegion3D)initWithCoder:(id)a3;
- (VNFaceLandmarkRegion3D)initWithOriginatingRequestSpecifier:(VNFaceLandmarkRegion3D *)self faceBoundingBox:(SEL)a2 points:(id)a3 pointCount:(CGRect)a4;
- (VNFaceLandmarkRegion3D)initWithOriginatingRequestSpecifier:(id)a3 faceBoundingBox:(CGRect)a4;
- (__n128)pointAtIndex:(unint64_t)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation VNFaceLandmarkRegion3D

- (void)dealloc
{
  free(*self->_points);
  v3.receiver = self;
  v3.super_class = VNFaceLandmarkRegion3D;
  [(VNFaceLandmarkRegion3D *)&v3 dealloc];
}

- (__n128)pointAtIndex:(unint64_t)a3
{
  v5 = [a1 pointCount];
  result.n128_u64[0] = 0;
  if (v5 <= a3)
  {
    return *(a1[7] + 16 * a3);
  }

  return result;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6.receiver = self;
  v6.super_class = VNFaceLandmarkRegion3D;
  [(VNFaceLandmarkRegion *)&v6 encodeWithCoder:v4];
  [v4 encodeInt32:0 forKey:@"VNFaceLandmarkRegion3D"];
  v5 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytesNoCopy:-[VNFaceLandmarkRegion3D points](self length:"points") freeWhenDone:{16 * -[VNFaceLandmarkRegion pointCount](self, "pointCount"), 0}];
  [v4 encodeObject:v5 forKey:@"FLMReg3D_PtsData"];
}

- (VNFaceLandmarkRegion3D)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = VNFaceLandmarkRegion3D;
  v5 = [(VNFaceLandmarkRegion *)&v15 initWithCoder:v4];
  if (!v5)
  {
    goto LABEL_8;
  }

  v6 = [v4 decodeInt32ForKey:@"VNFaceLandmarkRegion3D"];
  if (v6)
  {
    v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Failed to unarchive VNFaceLandmarkRegion3D object due to coding version mismatch: Currently supported: %u; encoded: %u", 0, v6];
    v8 = [VNError errorForInternalErrorWithLocalizedDescription:v7];
    [v4 failWithError:v8];
LABEL_7:

LABEL_8:
    v12 = 0;
    goto LABEL_9;
  }

  v9 = [(VNFaceLandmarkRegion *)v5 pointCount];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"FLMReg3D_PtsData"];
  v10 = [v7 length];
  if (v10 != 16 * v9)
  {
    v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Failed to unarchive VNFaceLandmarkRegion3D object. Error: points buffer size mismatch (data size: %lu; expected: %lu)", v10, 16 * v9];
    v13 = [VNError errorForInternalErrorWithLocalizedDescription:v8];
    [v4 failWithError:v13];

    goto LABEL_7;
  }

  v11 = malloc_type_calloc(v9, 0x10uLL, 0x1000040451B5BE8uLL);
  *v5->_points = v11;
  memcpy(v11, [v7 bytes], v10);

  v12 = v5;
LABEL_9:

  return v12;
}

- (VNFaceLandmarkRegion3D)initWithOriginatingRequestSpecifier:(VNFaceLandmarkRegion3D *)self faceBoundingBox:(SEL)a2 points:(id)a3 pointCount:(CGRect)a4
{
  v6 = v4;
  v11.receiver = self;
  v11.super_class = VNFaceLandmarkRegion3D;
  v7 = [(VNFaceLandmarkRegion *)&v11 initWithOriginatingRequestSpecifier:a3 faceBoundingBox:v5 pointCount:a4.origin.x, a4.origin.y, a4.size.width, a4.size.height];
  v8 = v7;
  if (v7)
  {
    *v7->_points = v6;
    v9 = v7;
  }

  return v8;
}

- (VNFaceLandmarkRegion3D)initWithOriginatingRequestSpecifier:(id)a3 faceBoundingBox:(CGRect)a4
{
  v4 = a3;
  v5 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:@"[VNFaceLandmarkRegion3D -initWithRequestRevision:faceBoundingBox:] is not available userInfo:{use class designated initializers", 0}];
  objc_exception_throw(v5);
}

@end