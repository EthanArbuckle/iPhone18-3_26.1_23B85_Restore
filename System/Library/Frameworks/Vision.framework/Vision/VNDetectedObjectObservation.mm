@interface VNDetectedObjectObservation
+ (VNDetectedObjectObservation)observationWithRequestRevision:(NSUInteger)requestRevision boundingBox:(CGRect)boundingBox;
- (BOOL)isEqual:(id)a3;
- (BOOL)providesBoundsNormalizedToROI;
- (CGRect)boundingBox;
- (CGRect)boundingBoxInTopLeftOrigin:(BOOL)a3 orientation:(unsigned int)a4;
- (VNDetectedObjectObservation)initWithCoder:(id)a3;
- (VNDetectedObjectObservation)initWithOriginatingRequestSpecifier:(id)a3 boundingBox:(CGRect)a4 groupId:(id)a5;
- (VNDetectedObjectObservation)initWithRequestRevision:(unint64_t)a3 boundingBox:(CGRect)a4;
- (id)debugQuickLookObject;
- (id)description;
- (id)vn_cloneObject;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setGroupId:(uint64_t)a1;
- (void)setInstanceSegmentationMask:(uint64_t)a1;
@end

@implementation VNDetectedObjectObservation

- (CGRect)boundingBox
{
  x = self->_boundingBox.origin.x;
  y = self->_boundingBox.origin.y;
  width = self->_boundingBox.size.width;
  height = self->_boundingBox.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (BOOL)providesBoundsNormalizedToROI
{
  v2 = [(VNObservation *)self originatingRequestSpecifier];
  v3 = [v2 observationProvidesBoundsNormalizedToROI];

  return v3;
}

- (id)debugQuickLookObject
{
  v11 = *MEMORY[0x1E69E9840];
  [(VNDetectedObjectObservation *)self boundingBox];
  v3 = CGPathCreateWithRect(v13, MEMORY[0x1E695EFD0]);
  if (v3)
  {
    v4 = v3;
    v9.receiver = self;
    v9.super_class = VNDetectedObjectObservation;
    v5 = [(VNObservation *)&v9 debugQuickLookObject];
    if (v5)
    {
      v10[0] = xmmword_1A6052440;
      v10[1] = unk_1A6052450;
      v6 = VNDebugColorFromValues(v10);
      VNDebugImageRenderNormalizedCGPathOnImage(v4, v5, v6);
    }

    else
    {
      VNDebugPathFromNormalizedCGPath(v4, 512.0, 512.0);
    }
    v7 = ;

    CGPathRelease(v4);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v8 = 1;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = VNDetectedObjectObservation;
    if ([(VNObservation *)&v10 isEqual:v4]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v5 = v4;
      if (([objc_opt_class() boundingBoxIsCalculatedProperty] & 1) != 0 || CGRectEqualToRect(self->_boundingBox, v5[3]))
      {
        v6 = [(VNDetectedObjectObservation *)self groupId];
        v7 = [(CGRect *)v5 groupId];
        v8 = VisionCoreEqualOrNilObjects();
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (unint64_t)hash
{
  v18.receiver = self;
  v18.super_class = VNDetectedObjectObservation;
  v3 = [(VNObservation *)&v18 hash];
  x = self->_boundingBox.origin.x;
  y = self->_boundingBox.origin.y;
  width = self->_boundingBox.size.width;
  height = self->_boundingBox.size.height;
  v8 = [(VNDetectedObjectObservation *)self groupId];
  v9 = [v8 hash];
  v10 = x;
  if (x == 0.0)
  {
    v10 = 0.0;
  }

  v11 = y;
  if (y == 0.0)
  {
    v11 = 0.0;
  }

  v12 = *&v11 ^ __ROR8__(*&v10, 51);
  v13 = width;
  if (width == 0.0)
  {
    v13 = 0.0;
  }

  v14 = *&v13 ^ __ROR8__(v12, 51);
  v15 = height;
  if (height == 0.0)
  {
    v15 = 0.0;
  }

  v16 = v9 ^ __ROR8__(*&v15 ^ __ROR8__(v14, 51) ^ __ROR8__(v3, 51), 51);

  return v16;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v12.receiver = self;
  v12.super_class = VNDetectedObjectObservation;
  v4 = [(VNObservation *)&v12 description];
  [(VNDetectedObjectObservation *)self boundingBox];
  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[%g, %g, %g, %g]", v5, v6, v7, v8];
  v10 = [v3 initWithFormat:@"%@ boundingBox=%@", v4, v9];

  return v10;
}

- (id)vn_cloneObject
{
  v9.receiver = self;
  v9.super_class = VNDetectedObjectObservation;
  v3 = [(VNObservation *)&v9 vn_cloneObject];
  v4 = v3;
  if (v3)
  {
    size = self->_boundingBox.size;
    *(v3 + 96) = self->_boundingBox.origin;
    *(v3 + 112) = size;
    v6 = [(NSUUID *)self->_groupId copy];
    v7 = v4[16];
    v4[16] = v6;
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5.receiver = self;
  v5.super_class = VNDetectedObjectObservation;
  [(VNObservation *)&v5 encodeWithCoder:v4];
  [v4 vn_encodeCodingVersion:0 forKey:@"VNDetectedObjectObservation"];
  if (([objc_opt_class() boundingBoxIsCalculatedProperty] & 1) == 0)
  {
    [v4 encodeDouble:@"BBX" forKey:self->_boundingBox.origin.x];
    [v4 encodeDouble:@"BBY" forKey:self->_boundingBox.origin.y];
    [v4 encodeDouble:@"BBW" forKey:self->_boundingBox.size.width];
    [v4 encodeDouble:@"BBH" forKey:self->_boundingBox.size.height];
  }

  [v4 encodeObject:self->_groupId forKey:@"groupId"];
}

- (VNDetectedObjectObservation)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = VNDetectedObjectObservation;
  v5 = [(VNObservation *)&v15 initWithCoder:v4];
  if (v5 && ![v4 vn_decodeCodingVersionForKey:@"VNDetectedObjectObservation"])
  {
    if ([objc_opt_class() boundingBoxIsCalculatedProperty])
    {
      v7 = *(MEMORY[0x1E695F050] + 16);
      v5->_boundingBox.origin = *MEMORY[0x1E695F050];
      v5->_boundingBox.size = v7;
    }

    else
    {
      [v4 decodeDoubleForKey:@"BBX"];
      v5->_boundingBox.origin.x = v8;
      [v4 decodeDoubleForKey:@"BBY"];
      v5->_boundingBox.origin.y = v9;
      [v4 decodeDoubleForKey:@"BBW"];
      v5->_boundingBox.size.width = v10;
      [v4 decodeDoubleForKey:@"BBH"];
      v5->_boundingBox.size.height = v11;
    }

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"groupId"];
    groupId = v5->_groupId;
    v5->_groupId = v12;

    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (VNDetectedObjectObservation)initWithRequestRevision:(unint64_t)a3 boundingBox:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v8 = [(VNObservation *)self initWithRequestRevision:a3];
  v9 = v8;
  if (v8)
  {
    v8->_boundingBox.origin.x = x;
    v8->_boundingBox.origin.y = y;
    v8->_boundingBox.size.width = width;
    v8->_boundingBox.size.height = height;
    groupId = v8->_groupId;
    v8->_groupId = 0;

    v11 = v9;
  }

  return v9;
}

- (VNDetectedObjectObservation)initWithOriginatingRequestSpecifier:(id)a3 boundingBox:(CGRect)a4 groupId:(id)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v12 = a5;
  v17.receiver = self;
  v17.super_class = VNDetectedObjectObservation;
  v13 = [(VNObservation *)&v17 initWithOriginatingRequestSpecifier:a3];
  v14 = v13;
  if (v13)
  {
    v13->_boundingBox.origin.x = x;
    v13->_boundingBox.origin.y = y;
    v13->_boundingBox.size.width = width;
    v13->_boundingBox.size.height = height;
    objc_storeStrong(&v13->_groupId, a5);
    v15 = v14;
  }

  return v14;
}

+ (VNDetectedObjectObservation)observationWithRequestRevision:(NSUInteger)requestRevision boundingBox:(CGRect)boundingBox
{
  v4 = [[a1 alloc] initWithRequestRevision:requestRevision boundingBox:{boundingBox.origin.x, boundingBox.origin.y, boundingBox.size.width, boundingBox.size.height}];

  return v4;
}

- (void)setInstanceSegmentationMask:(uint64_t)a1
{
  v4 = a2;
  if (a1)
  {
    objc_storeStrong((a1 + 152), a2);
  }
}

- (void)setGroupId:(uint64_t)a1
{
  v4 = a2;
  if (a1)
  {
    objc_storeStrong((a1 + 128), a2);
  }
}

- (CGRect)boundingBoxInTopLeftOrigin:(BOOL)a3 orientation:(unsigned int)a4
{
  v5 = a3;
  [(VNDetectedObjectObservation *)self boundingBox];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  memset(&v15, 0, sizeof(v15));
  VNAffineTransformForVisionToTopLeftOriginOrientation(v5, a4, &v15);
  v14 = v15;
  v16.origin.x = v7;
  v16.origin.y = v9;
  v16.size.width = v11;
  v16.size.height = v13;
  return CGRectApplyAffineTransform(v16, &v14);
}

@end