@interface TUIMutableAttributeValueMap
- (id)copyWithZone:(_NSZone *)zone;
- (void)setValue:(const ResolvedValue *)value forAttribute:(unsigned __int16)attribute;
@end

@implementation TUIMutableAttributeValueMap

- (id)copyWithZone:(_NSZone *)zone
{
  v3 = [TUIAttributeValueMap allocWithZone:zone];

  return [(TUIAttributeValueMap *)v3 init];
}

- (void)setValue:(const ResolvedValue *)value forAttribute:(unsigned __int16)attribute
{
  attributeCopy = attribute;
  v7 = &attributeCopy;
  v5 = sub_34D38(&self->super._map.__table_.__bucket_list_.__ptr_, &attributeCopy);
  *(v5 + 6) = value->_kind;
  objc_storeStrong(v5 + 4, value->_object);
  v5[5] = value->var0._integer;
}

@end