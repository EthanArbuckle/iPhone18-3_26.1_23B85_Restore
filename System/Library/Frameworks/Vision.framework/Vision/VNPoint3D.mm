@interface VNPoint3D
- (BOOL)isEqual:(id)equal;
- (VNPoint3D)initWithCoder:(id)coder;
- (VNPoint3D)initWithPosition:(simd_float4x4)position;
- (simd_float4x4)position;
@end

@implementation VNPoint3D

- (simd_float4x4)position
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    LOBYTE(v9) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(VNPoint3D *)equalCopy position];
      v9 = vminvq_u32(vandq_s8(vandq_s8(vceqq_f32(v5, self[1]), vceqq_f32(v6, self[2])), vandq_s8(vceqq_f32(v7, self[3]), vceqq_f32(v8, self[4])))) >> 31;
    }

    else
    {
      LOBYTE(v9) = 0;
    }
  }

  return v9;
}

- (VNPoint3D)initWithCoder:(id)coder
{
  [coder vn_decode4x4MatrixForKey:@"positionMatrix"];

  return [(VNPoint3D *)self initWithPosition:?];
}

- (VNPoint3D)initWithPosition:(simd_float4x4)position
{
  v8.receiver = self;
  v8.super_class = VNPoint3D;
  v3 = [(VNPoint3D *)&v8 init];
  v4 = v3;
  if (v3)
  {
    *(v3 + 16) = position;
    v5 = v3;
  }

  return v4;
}

@end