@interface CADSPPropertyModel
- (BOOL)getDefaultValueBytes:(char *)bytes size:(unint64_t *)size;
- (BOOL)isEqual:(id)equal;
- (id).cxx_construct;
- (id)mutableCopyWithZone:(_NSZone *)zone;
@end

@implementation CADSPPropertyModel

- (id).cxx_construct
{
  *(self + 40) = 0;
  *(self + 1) = 0;
  *(self + 16) = 0;
  return self;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && (self == equalCopy || AudioDSPGraph::IR::PropertyModel::operator==(&self->_this, &equalCopy->_this));

  return v5;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [CADSPMutablePropertyModel allocWithZone:zone];
  *&v4->super._this.ID = *&self->_this.ID;
  std::__optional_storage_base<std::vector<unsigned char>,false>::__assign_from[abi:ne200100]<std::__optional_copy_assign_base<std::vector<unsigned char>,false> const&>(&v4->super._this.defaultValue, &self->_this.defaultValue);
  return v4;
}

- (BOOL)getDefaultValueBytes:(char *)bytes size:(unint64_t *)size
{
  engaged = self->_this.defaultValue.__engaged_;
  if (engaged)
  {
    begin = self->_this.defaultValue.var0.__val_.__begin_;
    if (bytes)
    {
      end = self->_this.defaultValue.var0.__val_.__end_;
      if (*size < end - begin)
      {
        bzero(bytes, *size);
        v10 = 0;
        v4 = 0;
        goto LABEL_7;
      }

      if (end != begin)
      {
        memmove(bytes, begin, end - begin);
        begin = self->_this.defaultValue.var0.__val_.__begin_;
      }
    }

    v10 = (self->_this.defaultValue.var0.__val_.__end_ - begin);
    v4 = 1;
LABEL_7:
    *size = v10;
  }

  return v4 & engaged;
}

@end