@interface ARPatchGrid
- (ARPatchGrid)initWithCoder:(id)coder;
- (ARPatchGrid)initWithPatchesVector:()vector<ARPatch pivotAngle:(std:(float)angle :allocator<ARPatch>> *)a3;
- (BOOL)isEqual:(id)equal;
- (id).cxx_construct;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ARPatchGrid

- (ARPatchGrid)initWithPatchesVector:()vector<ARPatch pivotAngle:(std:(float)angle :allocator<ARPatch>> *)a3
{
  v9.receiver = self;
  v9.super_class = ARPatchGrid;
  v6 = [(ARPatchGrid *)&v9 init];
  v7 = v6;
  if (v6)
  {
    std::vector<ARPatch>::__move_assign(&v6->_patchesVector, a3);
    v7->_angle = angle;
  }

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    v5 = equalCopy;
    v6 = [v5 size];
    if (v6 == [(ARPatchGrid *)self size])
    {
      v7 = v5[1];
      v8 = v5[2];
      if (v7 == v8)
      {
LABEL_8:
        v12 = *(v5 + 8) == self->_angle;
LABEL_11:

        goto LABEL_12;
      }

      begin = self->_patchesVector.__begin_;
      while (1)
      {
        v10 = vsub_f32(*v7, *begin);
        if (fabsf(sqrtf(vaddv_f32(vmul_f32(v10, v10)))) >= 0.00000011921)
        {
          break;
        }

        v11 = vsub_f32(v7[1], *(begin + 8));
        if (fabsf(sqrtf(vaddv_f32(vmul_f32(v11, v11)))) >= 0.00000011921)
        {
          break;
        }

        v7 += 2;
        begin = (begin + 16);
        if (v7 == v8)
        {
          goto LABEL_8;
        }
      }
    }

    v12 = 0;
    goto LABEL_11;
  }

  v12 = 0;
LABEL_12:

  return v12;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  v9 = 0;
  v10 = 0;
  __p = 0;
  std::vector<ARPatch>::__init_with_size[abi:ne200100]<ARPatch*,ARPatch*>(&__p, self->_patchesVector.__begin_, self->_patchesVector.__end_, (self->_patchesVector.__end_ - self->_patchesVector.__begin_) >> 4);
  *&v5 = self->_angle;
  v6 = [v4 initWithPatchesVector:&__p pivotAngle:v5];
  if (__p)
  {
    v9 = __p;
    operator delete(__p);
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  *&v5 = self->_angle;
  v6 = coderCopy;
  [coderCopy encodeFloat:@"angle" forKey:v5];
  [v6 encodeBytes:self->_patchesVector.__begin_ length:self->_patchesVector.__end_ - self->_patchesVector.__begin_ forKey:@"patchesVector"];
}

- (ARPatchGrid)initWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy decodeFloatForKey:@"angle"];
  v6 = v5;
  v15 = 0;
  v7 = [coderCopy decodeBytesForKey:@"patchesVector" returnedLength:&v15];
  v13[1] = 0;
  v14 = 0;
  v13[0] = 0;
  std::vector<ARPatch>::__init_with_size[abi:ne200100]<ARPatch*,ARPatch*>(v13, v7, v7 + (v15 & 0xFFFFFFFFFFFFFFF0), v15 >> 4);
  HIDWORD(v8) = HIDWORD(v13[0]);
  *__p = *v13;
  v12 = v14;
  v13[1] = 0;
  v14 = 0;
  v13[0] = 0;
  LODWORD(v8) = v6;
  v9 = [(ARPatchGrid *)self initWithPatchesVector:__p pivotAngle:v8];
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v13[0])
  {
    v13[1] = v13[0];
    operator delete(v13[0]);
  }

  return v9;
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  *(self + 3) = 0;
  return self;
}

@end