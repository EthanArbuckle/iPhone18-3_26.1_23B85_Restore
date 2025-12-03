@interface VNFaceLandmarkRegion
- (BOOL)isEqual:(id)equal;
- (CGRect)faceBoundingBox;
- (VNFaceLandmarkRegion)initWithCoder:(id)coder;
- (VNFaceLandmarkRegion)initWithOriginatingRequestSpecifier:(id)specifier faceBoundingBox:(CGRect)box pointCount:(unint64_t)count;
- (id)description;
- (unint64_t)hash;
- (unint64_t)requestRevision;
- (void)encodeWithCoder:(id)coder;
@end

@implementation VNFaceLandmarkRegion

- (CGRect)faceBoundingBox
{
  objc_copyStruct(v6, &self->_faceBoundingBox, 32, 1, 0);
  v2 = *v6;
  v3 = *&v6[1];
  v4 = *&v6[2];
  v5 = *&v6[3];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v21 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      [(VNFaceLandmarkRegion *)self faceBoundingBox];
      v7 = v6;
      v9 = v8;
      v11 = v10;
      v13 = v12;
      [(VNFaceLandmarkRegion *)v5 faceBoundingBox];
      v24.origin.x = v14;
      v24.origin.y = v15;
      v24.size.width = v16;
      v24.size.height = v17;
      v23.origin.x = v7;
      v23.origin.y = v9;
      v23.size.width = v11;
      v23.size.height = v13;
      if (CGRectEqualToRect(v23, v24) && (v18 = [(VNFaceLandmarkRegion *)self pointCount], v18 == [(VNFaceLandmarkRegion *)v5 pointCount]))
      {
        originatingRequestSpecifier = [(VNFaceLandmarkRegion *)self originatingRequestSpecifier];
        originatingRequestSpecifier2 = [(VNFaceLandmarkRegion *)v5 originatingRequestSpecifier];
        v21 = [originatingRequestSpecifier isEqual:originatingRequestSpecifier2];
      }

      else
      {
        v21 = 0;
      }
    }

    else
    {
      v21 = 0;
    }
  }

  return v21;
}

- (unint64_t)hash
{
  pointCount = [(VNFaceLandmarkRegion *)self pointCount];
  x = self->_faceBoundingBox.origin.x;
  if (x == 0.0)
  {
    x = 0.0;
  }

  y = self->_faceBoundingBox.origin.y;
  if (y == 0.0)
  {
    y = 0.0;
  }

  v6 = *&y ^ __ROR8__(*&x, 51);
  width = self->_faceBoundingBox.size.width;
  if (width == 0.0)
  {
    width = 0.0;
  }

  v8 = *&width ^ __ROR8__(v6, 51);
  height = self->_faceBoundingBox.size.height;
  if (height == 0.0)
  {
    height = 0.0;
  }

  v10 = *&height ^ __ROR8__(v8, 51) ^ __ROR8__(pointCount, 51);
  return [(VNRequestSpecifier *)self->_originatingRequestSpecifier hash]^ __ROR8__(self->_pointCount ^ __ROR8__(v10, 51), 51);
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v12.receiver = self;
  v12.super_class = VNFaceLandmarkRegion;
  v4 = [(VNFaceLandmarkRegion *)&v12 description];
  [(VNFaceLandmarkRegion *)self faceBoundingBox];
  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[%g, %g, %g, %g]", v5, v6, v7, v8];
  v10 = [v3 initWithFormat:@"%@ faceBoundingBox=%@ pointCount=%lu requestRevision=%lu", v4, v9, -[VNFaceLandmarkRegion pointCount](self, "pointCount"), -[VNFaceLandmarkRegion requestRevision](self, "requestRevision")];

  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInt32:0 forKey:@"VNFaceLandmarkRegion"];
  [coderCopy encodeDouble:@"FLMReg_BBX" forKey:self->_faceBoundingBox.origin.x];
  [coderCopy encodeDouble:@"FLMReg_BBY" forKey:self->_faceBoundingBox.origin.y];
  [coderCopy encodeDouble:@"FLMReg_BBW" forKey:self->_faceBoundingBox.size.width];
  [coderCopy encodeDouble:@"FLMReg_BBH" forKey:self->_faceBoundingBox.size.height];
  [coderCopy encodeInteger:self->_pointCount forKey:@"FLMReg_PtCnt"];
  [coderCopy encodeObject:self->_originatingRequestSpecifier forKey:@"FLMReg_OReq"];
}

- (VNFaceLandmarkRegion)initWithCoder:(id)coder
{
  coderCopy = coder;
  v26.receiver = self;
  v26.super_class = VNFaceLandmarkRegion;
  v5 = [(VNFaceLandmarkRegion *)&v26 init];
  if (!v5)
  {
    goto LABEL_6;
  }

  v6 = [coderCopy decodeInt32ForKey:@"VNFaceLandmarkRegion"];
  if (!v6)
  {
    [coderCopy decodeDoubleForKey:@"FLMReg_BBX"];
    v5->_faceBoundingBox.origin.x = v11;
    [coderCopy decodeDoubleForKey:@"FLMReg_BBY"];
    v5->_faceBoundingBox.origin.y = v12;
    [coderCopy decodeDoubleForKey:@"FLMReg_BBW"];
    v5->_faceBoundingBox.size.width = v13;
    [coderCopy decodeDoubleForKey:@"FLMReg_BBH"];
    v5->_faceBoundingBox.size.height = v14;
    v5->_pointCount = [coderCopy decodeIntegerForKey:@"FLMReg_PtCnt"];
    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"FLMReg_OReq"];
    originatingRequestSpecifier = v5->_originatingRequestSpecifier;
    v5->_originatingRequestSpecifier = v15;

    if (!v5->_originatingRequestSpecifier)
    {
      if (([coderCopy containsValueForKey:@"FLMReg_Rev"] & 1) == 0)
      {
        v7 = [VNError errorWithCode:6 message:@"could not decode originating request"];
        [coderCopy failWithError:v7];
        goto LABEL_5;
      }

      v17 = [coderCopy decodeIntegerForKey:@"FLMReg_Rev"];
      v7 = [objc_opt_class() defaultOriginatingRequestClassNameForRequestRevision:v17];
      if (!v7)
      {
        v20 = MEMORY[0x1E696AEC0];
        v21 = objc_opt_class();
        v22 = NSStringFromClass(v21);
        v23 = [v20 stringWithFormat:@"%@ does not provide a default originating request class", v22];

        v24 = [VNError errorForInternalErrorWithLocalizedDescription:v23];
        [coderCopy failWithError:v24];

        goto LABEL_6;
      }

      v25 = 0;
      v18 = [VNRequestSpecifier specifierForRequestClassName:v7 revision:v17 error:&v25];
      v8 = v25;
      v19 = v5->_originatingRequestSpecifier;
      v5->_originatingRequestSpecifier = v18;

      if (!v5->_originatingRequestSpecifier)
      {
        [coderCopy failWithError:v8];
        goto LABEL_4;
      }
    }

    v9 = v5;
    goto LABEL_7;
  }

  v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Failed to unarchive VNFaceLandmarkRegion object due to coding version mismatch: Currently supported: %u; encoded: %u", 0, v6];
  v8 = [VNError errorForInternalErrorWithLocalizedDescription:v7];
  [coderCopy failWithError:v8];
LABEL_4:

LABEL_5:
LABEL_6:
  v9 = 0;
LABEL_7:

  return v9;
}

- (VNFaceLandmarkRegion)initWithOriginatingRequestSpecifier:(id)specifier faceBoundingBox:(CGRect)box pointCount:(unint64_t)count
{
  height = box.size.height;
  width = box.size.width;
  y = box.origin.y;
  x = box.origin.x;
  specifierCopy = specifier;
  v17.receiver = self;
  v17.super_class = VNFaceLandmarkRegion;
  v13 = [(VNFaceLandmarkRegion *)&v17 init];
  v14 = v13;
  if (v13)
  {
    v13->_faceBoundingBox.origin.x = x;
    v13->_faceBoundingBox.origin.y = y;
    v13->_faceBoundingBox.size.width = width;
    v13->_faceBoundingBox.size.height = height;
    v13->_pointCount = count;
    objc_storeStrong(&v13->_originatingRequestSpecifier, specifier);
    v15 = v14;
  }

  return v14;
}

- (unint64_t)requestRevision
{
  originatingRequestSpecifier = [(VNFaceLandmarkRegion *)self originatingRequestSpecifier];
  requestRevision = [originatingRequestSpecifier requestRevision];

  return requestRevision;
}

@end