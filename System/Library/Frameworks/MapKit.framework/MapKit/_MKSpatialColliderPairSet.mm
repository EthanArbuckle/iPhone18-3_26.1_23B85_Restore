@interface _MKSpatialColliderPairSet
- (_MKSpatialColliderPairSet)initWithCapacity:(unint64_t)capacity;
- (id).cxx_construct;
@end

@implementation _MKSpatialColliderPairSet

- (id).cxx_construct
{
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  *(self + 10) = 1065353216;
  return self;
}

- (_MKSpatialColliderPairSet)initWithCapacity:(unint64_t)capacity
{
  v7.receiver = self;
  v7.super_class = _MKSpatialColliderPairSet;
  v4 = [(_MKSpatialColliderPairSet *)&v7 init];
  v5 = v4;
  if (v4)
  {
    std::__hash_table<_MKAnnotationViewPair,std::hash<_MKAnnotationViewPair>,std::equal_to<_MKAnnotationViewPair>,std::allocator<_MKAnnotationViewPair>>::__rehash<true>(&v4->_pairs, vcvtps_u32_f32(capacity / v4->_pairs.__table_.__max_load_factor_));
  }

  return v5;
}

@end