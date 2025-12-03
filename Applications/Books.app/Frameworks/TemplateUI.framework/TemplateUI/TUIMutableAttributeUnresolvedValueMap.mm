@interface TUIMutableAttributeUnresolvedValueMap
- (id)copyWithZone:(_NSZone *)zone;
- (void)setValue:(id)value forAttribute:(unsigned __int16)attribute;
@end

@implementation TUIMutableAttributeUnresolvedValueMap

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [TUIAttributeUnresolvedValueMap alloc];

  return [(TUIAttributeUnresolvedValueMap *)v4 initWithOther:self];
}

- (void)setValue:(id)value forAttribute:(unsigned __int16)attribute
{
  attributeCopy = attribute;
  if (TUIValueIsNil(value.var0))
  {
    sub_345F8(&self->super._map.__table_.__bucket_list_.__ptr_, &attributeCopy);
  }

  else
  {
    v7 = &attributeCopy;
    *(sub_347B0(&self->super._map.__table_.__bucket_list_.__ptr_, &attributeCopy) + 5) = value;
  }
}

@end