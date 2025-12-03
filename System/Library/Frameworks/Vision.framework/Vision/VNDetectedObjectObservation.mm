@interface VNDetectedObjectObservation
+ (VNDetectedObjectObservation)observationWithRequestRevision:(NSUInteger)requestRevision boundingBox:(CGRect)boundingBox;
- (BOOL)isEqual:(id)equal;
- (BOOL)providesBoundsNormalizedToROI;
- (CGRect)boundingBox;
- (CGRect)boundingBoxInTopLeftOrigin:(BOOL)origin orientation:(unsigned int)orientation;
- (VNDetectedObjectObservation)initWithCoder:(id)coder;
- (VNDetectedObjectObservation)initWithOriginatingRequestSpecifier:(id)specifier boundingBox:(CGRect)box groupId:(id)id;
- (VNDetectedObjectObservation)initWithRequestRevision:(unint64_t)revision boundingBox:(CGRect)box;
- (id)debugQuickLookObject;
- (id)description;
- (id)vn_cloneObject;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setGroupId:(uint64_t)id;
- (void)setInstanceSegmentationMask:(uint64_t)mask;
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
  originatingRequestSpecifier = [(VNObservation *)self originatingRequestSpecifier];
  observationProvidesBoundsNormalizedToROI = [originatingRequestSpecifier observationProvidesBoundsNormalizedToROI];

  return observationProvidesBoundsNormalizedToROI;
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
    debugQuickLookObject = [(VNObservation *)&v9 debugQuickLookObject];
    if (debugQuickLookObject)
    {
      v10[0] = xmmword_1A6052440;
      v10[1] = unk_1A6052450;
      v6 = VNDebugColorFromValues(v10);
      VNDebugImageRenderNormalizedCGPathOnImage(v4, debugQuickLookObject, v6);
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v8 = 1;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = VNDetectedObjectObservation;
    if ([(VNObservation *)&v10 isEqual:equalCopy]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v5 = equalCopy;
      if (([objc_opt_class() boundingBoxIsCalculatedProperty] & 1) != 0 || CGRectEqualToRect(self->_boundingBox, v5[3]))
      {
        groupId = [(VNDetectedObjectObservation *)self groupId];
        groupId2 = [(CGRect *)v5 groupId];
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
  groupId = [(VNDetectedObjectObservation *)self groupId];
  v9 = [groupId hash];
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
  vn_cloneObject = [(VNObservation *)&v9 vn_cloneObject];
  v4 = vn_cloneObject;
  if (vn_cloneObject)
  {
    size = self->_boundingBox.size;
    *(vn_cloneObject + 96) = self->_boundingBox.origin;
    *(vn_cloneObject + 112) = size;
    v6 = [(NSUUID *)self->_groupId copy];
    v7 = v4[16];
    v4[16] = v6;
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5.receiver = self;
  v5.super_class = VNDetectedObjectObservation;
  [(VNObservation *)&v5 encodeWithCoder:coderCopy];
  [coderCopy vn_encodeCodingVersion:0 forKey:@"VNDetectedObjectObservation"];
  if (([objc_opt_class() boundingBoxIsCalculatedProperty] & 1) == 0)
  {
    [coderCopy encodeDouble:@"BBX" forKey:self->_boundingBox.origin.x];
    [coderCopy encodeDouble:@"BBY" forKey:self->_boundingBox.origin.y];
    [coderCopy encodeDouble:@"BBW" forKey:self->_boundingBox.size.width];
    [coderCopy encodeDouble:@"BBH" forKey:self->_boundingBox.size.height];
  }

  [coderCopy encodeObject:self->_groupId forKey:@"groupId"];
}

- (VNDetectedObjectObservation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = VNDetectedObjectObservation;
  v5 = [(VNObservation *)&v15 initWithCoder:coderCopy];
  if (v5 && ![coderCopy vn_decodeCodingVersionForKey:@"VNDetectedObjectObservation"])
  {
    if ([objc_opt_class() boundingBoxIsCalculatedProperty])
    {
      v7 = *(MEMORY[0x1E695F050] + 16);
      v5->_boundingBox.origin = *MEMORY[0x1E695F050];
      v5->_boundingBox.size = v7;
    }

    else
    {
      [coderCopy decodeDoubleForKey:@"BBX"];
      v5->_boundingBox.origin.x = v8;
      [coderCopy decodeDoubleForKey:@"BBY"];
      v5->_boundingBox.origin.y = v9;
      [coderCopy decodeDoubleForKey:@"BBW"];
      v5->_boundingBox.size.width = v10;
      [coderCopy decodeDoubleForKey:@"BBH"];
      v5->_boundingBox.size.height = v11;
    }

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"groupId"];
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

- (VNDetectedObjectObservation)initWithRequestRevision:(unint64_t)revision boundingBox:(CGRect)box
{
  height = box.size.height;
  width = box.size.width;
  y = box.origin.y;
  x = box.origin.x;
  v8 = [(VNObservation *)self initWithRequestRevision:revision];
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

- (VNDetectedObjectObservation)initWithOriginatingRequestSpecifier:(id)specifier boundingBox:(CGRect)box groupId:(id)id
{
  height = box.size.height;
  width = box.size.width;
  y = box.origin.y;
  x = box.origin.x;
  idCopy = id;
  v17.receiver = self;
  v17.super_class = VNDetectedObjectObservation;
  v13 = [(VNObservation *)&v17 initWithOriginatingRequestSpecifier:specifier];
  v14 = v13;
  if (v13)
  {
    v13->_boundingBox.origin.x = x;
    v13->_boundingBox.origin.y = y;
    v13->_boundingBox.size.width = width;
    v13->_boundingBox.size.height = height;
    objc_storeStrong(&v13->_groupId, id);
    v15 = v14;
  }

  return v14;
}

+ (VNDetectedObjectObservation)observationWithRequestRevision:(NSUInteger)requestRevision boundingBox:(CGRect)boundingBox
{
  v4 = [[self alloc] initWithRequestRevision:requestRevision boundingBox:{boundingBox.origin.x, boundingBox.origin.y, boundingBox.size.width, boundingBox.size.height}];

  return v4;
}

- (void)setInstanceSegmentationMask:(uint64_t)mask
{
  v4 = a2;
  if (mask)
  {
    objc_storeStrong((mask + 152), a2);
  }
}

- (void)setGroupId:(uint64_t)id
{
  v4 = a2;
  if (id)
  {
    objc_storeStrong((id + 128), a2);
  }
}

- (CGRect)boundingBoxInTopLeftOrigin:(BOOL)origin orientation:(unsigned int)orientation
{
  originCopy = origin;
  [(VNDetectedObjectObservation *)self boundingBox];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  memset(&v15, 0, sizeof(v15));
  VNAffineTransformForVisionToTopLeftOriginOrientation(originCopy, orientation, &v15);
  v14 = v15;
  v16.origin.x = v7;
  v16.origin.y = v9;
  v16.size.width = v11;
  v16.size.height = v13;
  return CGRectApplyAffineTransform(v16, &v14);
}

@end