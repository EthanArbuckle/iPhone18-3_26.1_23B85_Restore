@interface TUIMutableAttributeUnresolvedValueMap
- (id)copyWithZone:(_NSZone *)a3;
- (void)setValue:(id)a3 forAttribute:(unsigned __int16)a4;
@end

@implementation TUIMutableAttributeUnresolvedValueMap

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [TUIAttributeUnresolvedValueMap alloc];

  return [(TUIAttributeUnresolvedValueMap *)v4 initWithOther:self];
}

- (void)setValue:(id)a3 forAttribute:(unsigned __int16)a4
{
  v6 = a4;
  if (TUIValueIsNil(a3.var0))
  {
    sub_345F8(&self->super._map.__table_.__bucket_list_.__ptr_, &v6);
  }

  else
  {
    v7 = &v6;
    *(sub_347B0(&self->super._map.__table_.__bucket_list_.__ptr_, &v6) + 5) = a3;
  }
}

@end