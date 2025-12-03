@interface CADSPMutablePropertyModel
- (id)copyWithZone:(_NSZone *)zone;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (void)removeDefaultValue;
- (void)setDefaultValueBytes:(const char *)bytes size:(unint64_t)size;
@end

@implementation CADSPMutablePropertyModel

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4.receiver = self;
  v4.super_class = CADSPMutablePropertyModel;
  return [(CADSPPropertyModel *)&v4 mutableCopyWithZone:zone];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [CADSPPropertyModel allocWithZone:zone];
  *&v4->_this.ID = *&self->super._this.ID;
  std::__optional_storage_base<std::vector<unsigned char>,false>::__assign_from[abi:ne200100]<std::__optional_copy_assign_base<std::vector<unsigned char>,false> const&>(&v4->_this.defaultValue, &self->super._this.defaultValue);
  return v4;
}

- (void)removeDefaultValue
{
  if (self->super._this.defaultValue.__engaged_)
  {
    begin = self->super._this.defaultValue.var0.__val_.__begin_;
    if (begin)
    {
      self->super._this.defaultValue.var0.__val_.__end_ = begin;
      operator delete(begin);
    }

    self->super._this.defaultValue.__engaged_ = 0;
  }
}

- (void)setDefaultValueBytes:(const char *)bytes size:(unint64_t)size
{
  if (self->super._this.defaultValue.__engaged_)
  {
    begin = self->super._this.defaultValue.var0.__val_.__begin_;
    if (begin)
    {
      self->super._this.defaultValue.var0.__val_.__end_ = begin;
      operator delete(begin);
    }

    self->super._this.defaultValue.__engaged_ = 0;
  }

  self->super._this.defaultValue.var0.__val_.__begin_ = 0;
  self->super._this.defaultValue.var0.__val_.__end_ = 0;
  self->super._this.defaultValue.var0.__val_.__cap_ = 0;
  if (size)
  {
    std::vector<unsigned char>::__vallocate[abi:ne200100](&self->super._this.defaultValue, size);
  }

  self->super._this.defaultValue.__engaged_ = 1;
}

@end