@interface VNImageHomographicAlignmentObservation
- (BOOL)isEqual:(id)equal;
- (VNImageHomographicAlignmentObservation)init;
- (VNImageHomographicAlignmentObservation)initWithCoder:(id)coder;
- (__n128)setWarpTransform:(__n128)transform;
- (id)vn_cloneObject;
- (matrix_float3x3)warpTransform;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation VNImageHomographicAlignmentObservation

- (__n128)setWarpTransform:(__n128)transform
{
  result[7] = a2;
  result[8] = transform;
  result[9] = a4;
  return result;
}

- (matrix_float3x3)warpTransform
{
  v2 = *&self[1].super.super.super.isa;
  v3 = *&self[1].super.super._confidence;
  v4 = *&self[1].super.super._requestImageBuffers;
  result.columns[2] = v4;
  result.columns[1] = v3;
  result.columns[0] = v2;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    LOBYTE(v13) = 1;
  }

  else
  {
    v18.receiver = self;
    v18.super_class = VNImageHomographicAlignmentObservation;
    if ([(VNImageAlignmentObservation *)&v18 isEqual:equalCopy]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v5 = equalCopy;
      [(VNImageHomographicAlignmentObservation *)self warpTransform];
      v15 = v7;
      v16 = v6;
      v17 = v8;
      [(VNImageHomographicAlignmentObservation *)v5 warpTransform];
      v12 = vandq_s8(vandq_s8(vceqq_f32(v16, v9), vceqq_f32(v15, v10)), vceqq_f32(v17, v11));
      v12.i32[3] = v12.i32[2];
      v13 = vminvq_u32(v12) >> 31;
    }

    else
    {
      LOBYTE(v13) = 0;
    }
  }

  return v13;
}

- (unint64_t)hash
{
  v30.receiver = self;
  v30.super_class = VNImageHomographicAlignmentObservation;
  v3 = [(VNImageAlignmentObservation *)&v30 hash];
  [(VNImageHomographicAlignmentObservation *)self warpTransform];
  v13 = LODWORD(v12) << 13;
  if (v12 == 0.0)
  {
    v13 = 0;
  }

  v14 = LODWORD(v4);
  if (v4 == 0.0)
  {
    v14 = 0;
  }

  v15 = v13 ^ v14;
  v16 = LODWORD(v5);
  if (v5 == 0.0)
  {
    v16 = 0;
  }

  v17 = v16 ^ (v15 << 13);
  v18 = LODWORD(v6);
  if (v6 == 0.0)
  {
    v18 = 0;
  }

  v19 = v18 ^ __ROR8__(v17, 51);
  v20 = LODWORD(v7);
  if (v7 == 0.0)
  {
    v20 = 0;
  }

  v21 = v20 ^ __ROR8__(v19, 51);
  v22 = LODWORD(v8);
  if (v8 == 0.0)
  {
    v22 = 0;
  }

  v23 = v22 ^ __ROR8__(v21, 51);
  v24 = LODWORD(v9);
  if (v9 == 0.0)
  {
    v24 = 0;
  }

  v25 = v24 ^ __ROR8__(v23, 51);
  v26 = LODWORD(v10);
  if (v10 == 0.0)
  {
    v26 = 0;
  }

  v27 = v26 ^ __ROR8__(v25, 51);
  v28 = LODWORD(v11);
  if (v11 == 0.0)
  {
    v28 = 0;
  }

  return v28 ^ __ROR8__(v27, 51) ^ __ROR8__(v3, 51);
}

- (id)vn_cloneObject
{
  v7.receiver = self;
  v7.super_class = VNImageHomographicAlignmentObservation;
  vn_cloneObject = [(VNImageAlignmentObservation *)&v7 vn_cloneObject];
  if (vn_cloneObject)
  {
    v5 = *&self[1].super.super._confidence;
    v4 = *&self[1].super.super._requestImageBuffers;
    vn_cloneObject[7] = *&self[1].super.super.super.isa;
    vn_cloneObject[8] = v5;
    vn_cloneObject[9] = v4;
  }

  return vn_cloneObject;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5.receiver = self;
  v5.super_class = VNImageHomographicAlignmentObservation;
  [(VNImageAlignmentObservation *)&v5 encodeWithCoder:coderCopy];
  [coderCopy vn_encode3x3Matrix:@"warpTransform" forKey:{*&self[1].super.super.super.isa, *&self[1].super.super._confidence, *&self[1].super.super._requestImageBuffers}];
}

- (VNImageHomographicAlignmentObservation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = VNImageHomographicAlignmentObservation;
  v5 = [(VNImageAlignmentObservation *)&v14 initWithCoder:coderCopy];
  if (v5)
  {
    [coderCopy vn_decode3x3MatrixForKey:@"warpTransform"];
    v5[1].super.super.super.isa = v6;
    LODWORD(v5[1].super.super._originatingRequestSpecifier) = v7;
    *&v5[1].super.super._confidence = v8;
    LODWORD(v5[1].super.super._uuid) = v9;
    LODWORD(v5[1].super.super._requestImageBuffersCacheKeys) = v10;
    v5[1].super.super._requestImageBuffers = v11;
    v12 = v5;
  }

  return v5;
}

- (VNImageHomographicAlignmentObservation)init
{
  v8.receiver = self;
  v8.super_class = VNImageHomographicAlignmentObservation;
  v2 = [(VNObservation *)&v8 init];
  v3 = v2;
  if (v2)
  {
    v5 = *(MEMORY[0x1E69E9B10] + 16);
    v4 = *(MEMORY[0x1E69E9B10] + 32);
    *&v2[1].super.super.super.isa = *MEMORY[0x1E69E9B10];
    *&v2[1].super.super._confidence = v5;
    *&v2[1].super.super._requestImageBuffers = v4;
    v6 = v2;
  }

  return v3;
}

@end