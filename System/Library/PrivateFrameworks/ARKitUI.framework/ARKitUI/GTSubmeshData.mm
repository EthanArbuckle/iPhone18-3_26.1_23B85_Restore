@interface GTSubmeshData
- (id).cxx_construct;
- (void)addIndex:(unsigned int)index;
@end

@implementation GTSubmeshData

- (void)addIndex:(unsigned int)index
{
  end = self->_indexVector.__end_;
  cap = self->_indexVector.__cap_;
  if (end >= cap)
  {
    begin = self->_indexVector.__begin_;
    v9 = end - begin;
    v10 = end - begin;
    v11 = v10 + 1;
    if ((v10 + 1) >> 62)
    {
      _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE20__throw_length_errorB8ne200100Ev();
    }

    v12 = cap - begin;
    if (v12 >> 1 > v11)
    {
      v11 = v12 >> 1;
    }

    v13 = v12 >= 0x7FFFFFFFFFFFFFFCLL;
    v14 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v13)
    {
      v14 = v11;
    }

    if (v14)
    {
      std::allocator<unsigned int>::allocate_at_least[abi:ne200100](&self->_indexVector, v14);
    }

    v15 = end - begin;
    v16 = (4 * v10);
    v17 = (4 * v10 - 4 * v15);
    *v16 = index;
    v7 = v16 + 1;
    memcpy(v17, begin, v9);
    v18 = self->_indexVector.__begin_;
    self->_indexVector.__begin_ = v17;
    self->_indexVector.__end_ = v7;
    self->_indexVector.__cap_ = 0;
    if (v18)
    {
      operator delete(v18);
    }
  }

  else
  {
    *end = index;
    v7 = end + 1;
  }

  self->_indexVector.__end_ = v7;
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  *(self + 3) = 0;
  return self;
}

@end