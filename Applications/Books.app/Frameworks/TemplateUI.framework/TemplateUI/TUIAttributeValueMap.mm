@interface TUIAttributeValueMap
- (ResolvedValue)valueForAttribute:(SEL)attribute;
- (TUIAttributeValueMap)initWithOther:(id)other;
- (id).cxx_construct;
- (id)mutableCopyWithZone:(_NSZone *)zone;
@end

@implementation TUIAttributeValueMap

- (TUIAttributeValueMap)initWithOther:(id)other
{
  otherCopy = other;
  v8.receiver = self;
  v8.super_class = TUIAttributeValueMap;
  v5 = [(TUIAttributeValueMap *)&v8 init];
  if (v5)
  {
    v6 = [otherCopy map];
    if (&v5->_map != v6)
    {
      v5->_map.__table_.__max_load_factor_ = v6->__table_.__max_load_factor_;
      sub_349EC(&v5->_map.__table_.__bucket_list_.__ptr_, v6->__table_.__first_node_.__next_, 0);
    }
  }

  return v5;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [TUIMutableAttributeValueMap allocWithZone:zone];

  return [(TUIAttributeValueMap *)v4 initWithOther:self];
}

- (ResolvedValue)valueForAttribute:(SEL)attribute
{
  v8 = a4;
  result = sub_11F88(&self->_map.__table_.__bucket_list_.__ptr_, &v8);
  if (result)
  {
    v6 = result;
    kind = result[1]._kind;
    result = result[1]._object;
    retstr->var0._integer = v6[1].var0._integer;
  }

  else
  {
    kind = 0;
  }

  retstr->_kind = kind;
  retstr->_object = result;
  return result;
}

- (id).cxx_construct
{
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  *(self + 10) = 1065353216;
  return self;
}

@end