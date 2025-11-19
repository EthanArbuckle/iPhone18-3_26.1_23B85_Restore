@interface VNHumanBodyRecognizedPoint3D
- (BOOL)isEqual:(id)a3;
- (VNHumanBodyRecognizedPoint3D)initWithCoder:(id)a3;
- (__n128)initWithModelPosition:(double)a3 localPosition:(double)a4 jointName:(double)a5 parentJoint:(__n128)a6;
- (simd_float4x4)localPosition;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation VNHumanBodyRecognizedPoint3D

- (simd_float4x4)localPosition
{
  objc_copyStruct(v6, &self[1], 64, 1, 0);
  v2 = v6[0];
  v3 = v6[1];
  v4 = v6[2];
  v5 = v6[3];
  result.columns[3] = v5;
  result.columns[2] = v4;
  result.columns[1] = v3;
  result.columns[0] = v2;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = VNHumanBodyRecognizedPoint3D;
  if ([(VNRecognizedPoint3D *)&v13 isEqual:v4]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = v4;
    v6 = [v5 parentJoint];
    if (VisionCoreEqualOrNilObjects())
    {
      [v5 localPosition];
      v11 = vminvq_u32(vandq_s8(vandq_s8(vceqq_f32(v8, *self[1].super._anon_10), vceqq_f32(v7, self[1].super.super)), vandq_s8(vceqq_f32(v9, *&self[1].super._anon_10[16]), vceqq_f32(v10, *&self[1].super._anon_10[32])))) >> 31;
    }

    else
    {
      LOBYTE(v11) = 0;
    }
  }

  else
  {
    LOBYTE(v11) = 0;
  }

  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = VNHumanBodyRecognizedPoint3D;
  v4 = a3;
  [(VNRecognizedPoint3D *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_parentJoint forKey:{@"parentJoint", v5.receiver, v5.super_class}];
  [v4 vn_encode4x4Matrix:@"localPositionMatrix" forKey:{*&self[1].super.super.super.isa, *self[1].super._anon_10, *&self[1].super._anon_10[16], *&self[1].super._anon_10[32]}];
}

- (VNHumanBodyRecognizedPoint3D)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = VNHumanBodyRecognizedPoint3D;
  v5 = [(VNRecognizedPoint3D *)&v15 initWithCoder:v4];
  v6 = v5;
  if (v5)
  {
    v7 = v5 + 1;
    [v4 vn_decode4x4MatrixForKey:@"localPositionMatrix"];
    v7->super.super = v8;
    *v6[1].super._anon_10 = v9;
    *&v6[1].super._anon_10[16] = v10;
    *&v6[1].super._anon_10[32] = v11;
    v12 = [v4 decodeObjectForKey:@"parentJoint"];
    parentJoint = v6->_parentJoint;
    v6->_parentJoint = v12;
  }

  return v6;
}

- (unint64_t)hash
{
  v5.receiver = self;
  v5.super_class = VNHumanBodyRecognizedPoint3D;
  v3 = [(NSString *)self->_parentJoint hash]^ __ROR8__([(VNRecognizedPoint3D *)&v5 hash], 51);
  return VNHashMatrixFloat4x4(self[1].super.super, *self[1].super._anon_10, *&self[1].super._anon_10[16], *&self[1].super._anon_10[32]) ^ __ROR8__(v3, 51);
}

- (__n128)initWithModelPosition:(double)a3 localPosition:(double)a4 jointName:(double)a5 parentJoint:(__n128)a6
{
  v15 = a12;
  v28.receiver = a1;
  v28.super_class = VNHumanBodyRecognizedPoint3D;
  v16 = [(VNRecognizedPoint3D *)&v28 initWithPosition:a11 identifier:a2, a3, a4, a5];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_parentJoint, a12);
    v17[6] = a6;
    v17[7] = a7;
    v17[8] = a8;
    v17[9] = a9;
    v18 = v17;
  }

  return v17;
}

@end