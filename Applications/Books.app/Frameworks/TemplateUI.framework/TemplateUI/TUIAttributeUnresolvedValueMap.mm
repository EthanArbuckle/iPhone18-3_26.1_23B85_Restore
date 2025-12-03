@interface TUIAttributeUnresolvedValueMap
- ($738B17BD11CC339B30296C0EA03CEC2B)valueForAttribute:(unsigned __int16)attribute;
- (TUIAttributeUnresolvedValueMap)initWithOther:(id)other;
- (id).cxx_construct;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (void)enumerateAttributesAndValuesUsingBlock:(id)block;
@end

@implementation TUIAttributeUnresolvedValueMap

- (TUIAttributeUnresolvedValueMap)initWithOther:(id)other
{
  otherCopy = other;
  v9.receiver = self;
  v9.super_class = TUIAttributeUnresolvedValueMap;
  v5 = [(TUIAttributeUnresolvedValueMap *)&v9 init];
  v6 = v5;
  if (otherCopy)
  {
    if (v5)
    {
      v7 = v5 == otherCopy;
    }

    else
    {
      v7 = 1;
    }

    if (!v7)
    {
      v5->_map.__table_.__max_load_factor_ = otherCopy->_map.__table_.__max_load_factor_;
      sub_33FA4(&v5->_map.__table_.__bucket_list_.__ptr_, otherCopy->_map.__table_.__first_node_.__next_, 0);
    }
  }

  return v6;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [TUIMutableAttributeUnresolvedValueMap allocWithZone:zone];

  return [(TUIAttributeUnresolvedValueMap *)v4 initWithOther:self];
}

- ($738B17BD11CC339B30296C0EA03CEC2B)valueForAttribute:(unsigned __int16)attribute
{
  attributeCopy = attribute;
  v3 = sub_11F88(&self->_map.__table_.__bucket_list_.__ptr_, &attributeCopy);
  v4 = v3 + 5;
  if (!v3)
  {
    v4 = &TUIValueNil;
  }

  return v4->var0;
}

- (void)enumerateAttributesAndValuesUsingBlock:(id)block
{
  blockCopy = block;
  v6 = 0;
  p_first_node = &self->_map.__table_.__first_node_;
  do
  {
    p_first_node = p_first_node->__next_;
    if (!p_first_node)
    {
      break;
    }

    (*(blockCopy + 2))(blockCopy, LOWORD(p_first_node[2].__next_), HIDWORD(p_first_node[2].__next_), &v6);
  }

  while ((v6 & 1) == 0);
}

- (id).cxx_construct
{
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  *(self + 10) = 1065353216;
  return self;
}

@end