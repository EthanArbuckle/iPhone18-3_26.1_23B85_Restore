@interface PKFloatArray
- (double)floatAtIndex:(uint64_t)index;
- (double)lastFloat;
- (id).cxx_construct;
- (id)copyWithZone:(_NSZone *)zone;
- (uint64_t)setFloat:(double)float atIndex:;
- (void)initWithCapacity:(void *)capacity;
@end

@implementation PKFloatArray

- (void)initWithCapacity:(void *)capacity
{
  if (!capacity)
  {
    return 0;
  }

  v6.receiver = capacity;
  v6.super_class = PKFloatArray;
  v3 = objc_msgSendSuper2(&v6, sel_init);
  v4 = v3;
  if (v3)
  {
    v3[4] = a2;
    std::vector<double>::resize(v3 + 1, a2);
  }

  return v4;
}

- (uint64_t)setFloat:(double)float atIndex:
{
  if (result)
  {
    if (*(result + 32) <= a2)
    {
      v5 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"index is out of bounds" userInfo:{0, v3, v4}];
      objc_exception_throw(v5);
    }

    *(*(result + 8) + 8 * a2) = float;
  }

  return result;
}

- (double)floatAtIndex:(uint64_t)index
{
  if (!index)
  {
    return 0.0;
  }

  if (*(index + 32) <= a2)
  {
    v5 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"index is out of bounds" userInfo:{0, v2, v3}];
    objc_exception_throw(v5);
  }

  return *(*(index + 8) + 8 * a2);
}

- (double)lastFloat
{
  if (!self)
  {
    return 0.0;
  }

  v3 = *(self + 32);
  if (!v3)
  {
    v5 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"container is empty" userInfo:{0, v1, v2}];
    objc_exception_throw(v5);
  }

  return [(PKFloatArray *)self floatAtIndex:?];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  v5 = [(PKFloatArray *)v4 initWithCapacity:?];
  v6 = v5;
  if (v5)
  {
    v7 = v5 == self;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    std::vector<double>::__assign_with_size[abi:ne200100]<double *,double *>(&v5->_vfloats.__begin_, self->_vfloats.__begin_, self->_vfloats.__end_, self->_vfloats.__end_ - self->_vfloats.__begin_);
  }

  return v6;
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  *(self + 3) = 0;
  return self;
}

@end