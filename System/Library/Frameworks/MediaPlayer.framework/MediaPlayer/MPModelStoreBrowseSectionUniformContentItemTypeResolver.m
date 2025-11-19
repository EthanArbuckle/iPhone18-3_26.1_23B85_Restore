@interface MPModelStoreBrowseSectionUniformContentItemTypeResolver
- (id).cxx_construct;
- (int64_t)uniformContentItemType;
- (void)addContentItemType:(int64_t)a3;
@end

@implementation MPModelStoreBrowseSectionUniformContentItemTypeResolver

- (id).cxx_construct
{
  *(self + 4) = 0;
  *(self + 3) = 0;
  *(self + 2) = self + 24;
  return self;
}

- (int64_t)uniformContentItemType
{
  if (self->_hasValidUniformContentItemType)
  {
    return self->_uniformContentItemType;
  }

  totalNumberOfOccurrences = self->_totalNumberOfOccurrences;
  if (!totalNumberOfOccurrences)
  {
    goto LABEL_23;
  }

  begin_node = self->_contentItemTypeOccurrences.__tree_.__begin_node_;
  if (begin_node == &self->_contentItemTypeOccurrences.__tree_.__end_node_)
  {
    left = 0;
    v9 = 0.0;
  }

  else
  {
    v5 = 0;
    left = 0;
    do
    {
      if (begin_node[5].__left_ > v5)
      {
        left = begin_node[4].__left_;
        v5 = begin_node[5].__left_;
      }

      isa = begin_node[1].__left_;
      if (isa)
      {
        do
        {
          v7 = isa;
          isa = isa->super.isa;
        }

        while (isa);
      }

      else
      {
        do
        {
          v7 = begin_node[2].__left_;
          v8 = v7->super.isa == begin_node;
          begin_node = v7;
        }

        while (!v8);
      }

      begin_node = v7;
    }

    while (v7 != &self->_contentItemTypeOccurrences.__tree_.__end_node_);
    v9 = v5;
  }

  v10 = 1.0;
  if ((left - 3) < 3)
  {
    v10 = 0.75;
  }

  v11 = v9 / totalNumberOfOccurrences;
  v13 = v11 <= v10;
  v12 = vabds_f32(v11, v10);
  v13 = v13 && v12 > 0.00000011921;
  if (v13)
  {
LABEL_23:
    left = 0;
  }

  self->_uniformContentItemType = left;
  self->_hasValidUniformContentItemType = 1;
  return left;
}

- (void)addContentItemType:(int64_t)a3
{
  v11 = a3;
  p_end_node = &self->_contentItemTypeOccurrences.__tree_.__end_node_;
  left = self->_contentItemTypeOccurrences.__tree_.__end_node_.__left_;
  p_contentItemTypeOccurrences = &self->_contentItemTypeOccurrences;
  if (!left)
  {
    goto LABEL_8;
  }

  v7 = p_end_node;
  do
  {
    if (left[4].__left_ >= a3)
    {
      v7 = left;
    }

    left = left[left[4].__left_ < a3].__left_;
  }

  while (left);
  if (v7 != p_end_node && v7[4].__left_ <= a3)
  {
    v10 = v7[5].__left_;
    v12 = &v11;
    v8 = std::__tree<std::__value_type<long long,unsigned long>,std::__map_value_compare<long long,std::__value_type<long long,unsigned long>,std::less<long long>,true>,std::allocator<std::__value_type<long long,unsigned long>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>(p_contentItemTypeOccurrences, a3);
    v9 = v10 + 1;
  }

  else
  {
LABEL_8:
    v12 = &v11;
    v8 = std::__tree<std::__value_type<long long,unsigned long>,std::__map_value_compare<long long,std::__value_type<long long,unsigned long>,std::less<long long>,true>,std::allocator<std::__value_type<long long,unsigned long>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>(p_contentItemTypeOccurrences, a3);
    v9 = 1;
  }

  v8[5] = v9;
  ++self->_totalNumberOfOccurrences;
  self->_hasValidUniformContentItemType = 0;
}

@end