@interface VNFaceLandmarks
- (BOOL)isEqual:(id)a3;
- (BOOL)isUserFacingBBoxEquivalentToAlignedBBox;
- (CGRect)userFacingBBox;
- (VNFaceLandmarks)initWithCoder:(id)a3;
- (VNFaceLandmarks)initWithOriginatingRequestSpecifier:(id)a3 pointsData:(id)a4 pointCount:(unint64_t)a5 userFacingBBox:(CGRect)a6 alignedBBox:(_Geometry2D_rect2D_)a7 landmarkScore:(float)a8;
- (_Geometry2D_rect2D_)alignedBBox;
- (id)description;
- (unint64_t)hash;
- (unint64_t)requestRevision;
- (void)encodeWithCoder:(id)a3;
@end

@implementation VNFaceLandmarks

- (CGRect)userFacingBBox
{
  objc_copyStruct(v6, &self->_userFacingBBox, 32, 1, 0);
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

- (_Geometry2D_rect2D_)alignedBBox
{
  objc_copyStruct(v6, &self->_alignedBBox, 16, 1, 0);
  v2 = *v6;
  v3 = *&v6[1];
  v4 = *&v6[2];
  v5 = *&v6[3];
  result.size.width = v5;
  result.size.height = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v7.receiver = self;
  v7.super_class = VNFaceLandmarks;
  v4 = [(VNFaceLandmarks *)&v7 description];
  v5 = [v3 initWithFormat:@"%@ pointCount=%lu requestRevision=%lu", v4, -[VNFaceLandmarks pointCount](self, "pointCount"), -[VNFaceLandmarks requestRevision](self, "requestRevision")];

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v32 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      [(VNFaceLandmarks *)self confidence];
      v7 = v6;
      [(VNFaceLandmarks *)v5 confidence];
      if (v7 != v8)
      {
        goto LABEL_15;
      }

      [(VNFaceLandmarks *)self userFacingBBox];
      v10 = v9;
      v12 = v11;
      v14 = v13;
      v16 = v15;
      [(VNFaceLandmarks *)v5 userFacingBBox];
      v42.origin.x = v17;
      v42.origin.y = v18;
      v42.size.width = v19;
      v42.size.height = v20;
      v41.origin.x = v10;
      v41.origin.y = v12;
      v41.size.width = v14;
      v41.size.height = v16;
      if (!CGRectEqualToRect(v41, v42))
      {
        goto LABEL_15;
      }

      [(VNFaceLandmarks *)self alignedBBox];
      v22 = v21;
      v24 = v23;
      v26 = v25;
      v28 = v27;
      [(VNFaceLandmarks *)v5 alignedBBox];
      v32 = 0;
      if (v22 != v33)
      {
        goto LABEL_16;
      }

      if (v24 != v29)
      {
        goto LABEL_16;
      }

      v32 = 0;
      if (v28 != v31 || v26 != v30)
      {
        goto LABEL_16;
      }

      v34 = [(VNFaceLandmarks *)self pointCount];
      if (v34 == [(VNFaceLandmarks *)v5 pointCount]&& ([(VNFaceLandmarks *)self pointsData], v35 = objc_claimAutoreleasedReturnValue(), [(VNFaceLandmarks *)v5 pointsData], v36 = objc_claimAutoreleasedReturnValue(), v37 = VisionCoreEqualOrNilObjects(), v36, v35, (v37 & 1) != 0))
      {
        v38 = [(VNFaceLandmarks *)self originatingRequestSpecifier];
        v39 = [(VNFaceLandmarks *)v5 originatingRequestSpecifier];
        v32 = [v38 isEqual:v39];
      }

      else
      {
LABEL_15:
        v32 = 0;
      }

LABEL_16:

      goto LABEL_17;
    }

    v32 = 0;
  }

LABEL_17:

  return v32;
}

- (unint64_t)hash
{
  v3 = [(NSData *)self->_pointsData hash]^ __ROR8__(self->_pointCount, 51);
  confidence = self->_confidence;
  v5 = LODWORD(confidence);
  if (confidence == 0.0)
  {
    v5 = 0;
  }

  v6 = v5 ^ __ROR8__(v3, 51);
  x = self->_userFacingBBox.origin.x;
  if (x == 0.0)
  {
    x = 0.0;
  }

  y = self->_userFacingBBox.origin.y;
  if (y == 0.0)
  {
    y = 0.0;
  }

  v9 = *&y ^ __ROR8__(*&x, 51);
  width = self->_userFacingBBox.size.width;
  if (width == 0.0)
  {
    width = 0.0;
  }

  v11 = *&width ^ __ROR8__(v9, 51);
  height = self->_userFacingBBox.size.height;
  if (height == 0.0)
  {
    height = 0.0;
  }

  v13 = *&height ^ __ROR8__(v11, 51) ^ __ROR8__(v6, 51);
  v14 = self->_alignedBBox.origin.y;
  v15 = self->_alignedBBox.size.height;
  v16 = self->_alignedBBox.size.width;
  v17 = LODWORD(self->_alignedBBox.origin.x) << 13;
  if (self->_alignedBBox.origin.x == 0.0)
  {
    v17 = 0;
  }

  v18 = LODWORD(v14);
  if (v14 == 0.0)
  {
    v18 = 0;
  }

  v19 = v17 ^ v18;
  v20 = LODWORD(v16);
  if (v16 == 0.0)
  {
    v20 = 0;
  }

  v21 = v20 ^ (v19 << 13);
  v22 = LODWORD(v15);
  if (v15 == 0.0)
  {
    v22 = 0;
  }

  return [(VNRequestSpecifier *)self->_originatingRequestSpecifier hash]^ __ROR8__(v22 ^ __ROR8__(v21, 51) ^ __ROR8__(v13, 51), 51);
}

- (VNFaceLandmarks)initWithOriginatingRequestSpecifier:(id)a3 pointsData:(id)a4 pointCount:(unint64_t)a5 userFacingBBox:(CGRect)a6 alignedBBox:(_Geometry2D_rect2D_)a7 landmarkScore:(float)a8
{
  width = a7.size.width;
  height = a7.size.height;
  y = a7.origin.y;
  x = a7.origin.x;
  v12 = a6.size.height;
  v13 = a6.size.width;
  v14 = a6.origin.y;
  v15 = a6.origin.x;
  v20 = a3;
  v21 = a4;
  if (v21 && (v27.receiver = self, v27.super_class = VNFaceLandmarks, (self = -[VNFaceLandmarks init](&v27, sel_init)) != 0) && (v22 = [v21 length], v22 == objc_msgSend(objc_opt_class(), "landmarkPointSizeInBytes") * a5))
  {
    self->_pointCount = a5;
    v23 = [v21 copy];
    pointsData = self->_pointsData;
    self->_pointsData = v23;

    self->_userFacingBBox.origin.x = v15;
    self->_userFacingBBox.origin.y = v14;
    self->_userFacingBBox.size.width = v13;
    self->_userFacingBBox.size.height = v12;
    self->_alignedBBox.origin.x = x;
    self->_alignedBBox.origin.y = y;
    self->_alignedBBox.size.height = height;
    self->_alignedBBox.size.width = width;
    self->_confidence = a8;
    objc_storeStrong(&self->_originatingRequestSpecifier, a3);
    self = self;
    v25 = self;
  }

  else
  {
    v25 = 0;
  }

  return v25;
}

- (BOOL)isUserFacingBBoxEquivalentToAlignedBBox
{
  [(VNFaceLandmarks *)self userFacingBBox];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(VNFaceLandmarks *)self alignedBBox];
  return vabdd_f64(v14, v4) < 0.0000999999975 && vabdd_f64(v11, v6) < 0.0000999999975 && vabdd_f64(v13, v8) < 0.0000999999975 && vabdd_f64(v12, v10) < 0.0000999999975;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  [v5 encodeInt32:0 forKey:@"VNFaceLandmarks"];
  *&v4 = self->_confidence;
  [v5 encodeFloat:@"FLMs_Conf" forKey:v4];
  [v5 encodeInteger:self->_pointCount forKey:@"FLMs_PtsCnt"];
  [v5 encodeObject:self->_pointsData forKey:@"FLMs_PtsData"];
  [v5 encodeDouble:@"FLMs_AlgnBBoxX" forKey:self->_alignedBBox.origin.x];
  [v5 encodeDouble:@"FLMs_AlgnBBoxY" forKey:self->_alignedBBox.origin.y];
  [v5 encodeDouble:@"FLMs_AlgnBBoxW" forKey:self->_alignedBBox.size.width];
  [v5 encodeDouble:@"FLMs_AlgnBBoxH" forKey:self->_alignedBBox.size.height];
  [v5 encodeDouble:@"FLMs_UsrFacingBBoxX" forKey:self->_userFacingBBox.origin.x];
  [v5 encodeDouble:@"FLMs_UsrFacingBBoxY" forKey:self->_userFacingBBox.origin.y];
  [v5 encodeDouble:@"FLMs_UsrFacingBBoxW" forKey:self->_userFacingBBox.size.width];
  [v5 encodeDouble:@"FLMs_UsrFacingBBoxH" forKey:self->_userFacingBBox.size.height];
  [v5 encodeObject:self->_originatingRequestSpecifier forKey:@"FLMs_OReq"];
}

- (VNFaceLandmarks)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeInt32ForKey:@"VNFaceLandmarks"];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Failed to unarchive VNFaceLandmarks object due to coding version mismatch: Currently supported: %u; encoded: %u", 0, v5];
    v7 = [VNError errorForInternalErrorWithLocalizedDescription:v6];
    [v4 failWithError:v7];
LABEL_8:

LABEL_9:
    v33 = 0;
    goto LABEL_10;
  }

  [v4 decodeFloatForKey:@"FLMs_Conf"];
  v9 = v8;
  v10 = [v4 decodeIntegerForKey:@"FLMs_PtsCnt"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"FLMs_PtsData"];
  v11 = objc_opt_class();
  v12 = [v6 length];
  if (v12 != [v11 landmarkPointSizeInBytes] * v10)
  {
    v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Data integrity check failed when unarchiving an object of type: %@", v11];
    v34 = [VNError errorForInternalErrorWithLocalizedDescription:v7];
    [v4 failWithError:v34];
    goto LABEL_7;
  }

  [v4 decodeDoubleForKey:@"FLMs_AlgnBBoxX"];
  v44 = v13;
  [v4 decodeDoubleForKey:@"FLMs_AlgnBBoxY"];
  v15 = v14;
  [v4 decodeDoubleForKey:@"FLMs_AlgnBBoxW"];
  v17 = v16;
  [v4 decodeDoubleForKey:@"FLMs_AlgnBBoxH"];
  v19 = v18;
  [v4 decodeDoubleForKey:@"FLMs_UsrFacingBBoxX"];
  v21 = v20;
  [v4 decodeDoubleForKey:@"FLMs_UsrFacingBBoxY"];
  v23 = v22;
  [v4 decodeDoubleForKey:@"FLMs_UsrFacingBBoxW"];
  v25 = v24;
  [v4 decodeDoubleForKey:@"FLMs_UsrFacingBBoxH"];
  v27 = v26;
  v28 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"FLMs_OReq"];
  if (!v28)
  {
    if (([v4 containsValueForKey:@"FLMs_Rev"] & 1) == 0)
    {
      v7 = [VNError errorWithCode:6 message:@"could not decode originating request"];
      [v4 failWithError:v7];
      goto LABEL_8;
    }

    v36 = [v4 decodeIntegerForKey:@"FLMs_Rev"];
    v7 = [objc_opt_class() defaultOriginatingRequestClassNameForRequestRevision:v36];
    if (!v7)
    {
      v38 = MEMORY[0x1E696AEC0];
      v39 = objc_opt_class();
      v40 = NSStringFromClass(v39);
      v41 = [v38 stringWithFormat:@"%@ does not provide a default originating request class", v40];

      v42 = [VNError errorForInternalErrorWithLocalizedDescription:v41];
      [v4 failWithError:v42];

      goto LABEL_9;
    }

    v45 = 0;
    v28 = [VNRequestSpecifier specifierForRequestClassName:v7 revision:v36 error:&v45];
    v37 = v45;
    v34 = v37;
    if (v28)
    {

      goto LABEL_5;
    }

    [v4 failWithError:v37];
LABEL_7:

    goto LABEL_8;
  }

LABEL_5:
  *&v29 = v44;
  *&v30 = v15;
  *&v32 = v17;
  *&v31 = v19;
  LODWORD(v43) = v9;
  self = [(VNFaceLandmarks *)self initWithOriginatingRequestSpecifier:v28 pointsData:v6 pointCount:v10 userFacingBBox:v21 alignedBBox:v23 landmarkScore:v25, v27, v29, v30, v31, v32, v43];

  v33 = self;
LABEL_10:

  return v33;
}

- (unint64_t)requestRevision
{
  v2 = [(VNFaceLandmarks *)self originatingRequestSpecifier];
  v3 = [v2 requestRevision];

  return v3;
}

@end