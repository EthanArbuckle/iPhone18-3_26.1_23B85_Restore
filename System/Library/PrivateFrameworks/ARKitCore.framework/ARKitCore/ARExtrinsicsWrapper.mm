@interface ARExtrinsicsWrapper
- (ARExtrinsicsWrapper)initWithCoder:(id)coder;
- (BOOL)isEqual:(id)equal;
- (__n128)initWithMatrix:(__n128)matrix;
- (id)description;
@end

@implementation ARExtrinsicsWrapper

- (__n128)initWithMatrix:(__n128)matrix
{
  v11.receiver = self;
  v11.super_class = ARExtrinsicsWrapper;
  v5 = [(ARExtrinsicsWrapper *)&v11 init];
  if (v5)
  {
    v5[1] = a2;
    v5[2] = matrix;
    result = a5;
    v5[3] = a4;
    v5[4] = a5;
  }

  return result;
}

- (ARExtrinsicsWrapper)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(ARExtrinsicsWrapper *)self init];
  if (v5)
  {
    [coderCopy ar_decodeMatrix4x4ForKey:@"matrix"];
    v5[1] = v6;
    v5[2] = v7;
    v5[3] = v8;
    v5[4] = v9;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5.i64[0] = 0x3400000034000000;
    v5.i64[1] = 0x3400000034000000;
    v6 = vminvq_u32(vandq_s8(vandq_s8(vcgeq_f32(v5, vabdq_f32(self[2], equalCopy[2])), vcgeq_f32(v5, vabdq_f32(self[1], equalCopy[1]))), vandq_s8(vcgeq_f32(v5, vabdq_f32(self[3], equalCopy[3])), vcgeq_f32(v5, vabdq_f32(self[4], equalCopy[4]))))) >> 31;
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p", v5, self];

  v7 = ARMatrix4x4Description(1, self[1], self[2], self[3], self[4]);
  [v6 appendString:v7];

  [v6 appendString:@">"];

  return v6;
}

@end