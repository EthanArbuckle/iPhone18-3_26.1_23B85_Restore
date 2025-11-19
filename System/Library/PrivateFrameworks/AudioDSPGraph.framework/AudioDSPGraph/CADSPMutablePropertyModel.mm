@interface CADSPMutablePropertyModel
- (id)copyWithZone:(_NSZone *)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (void)removeDefaultValue;
- (void)setDefaultValueBytes:(const char *)a3 size:(unint64_t)a4;
@end

@implementation CADSPMutablePropertyModel

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4.receiver = self;
  v4.super_class = CADSPMutablePropertyModel;
  return [(CADSPPropertyModel *)&v4 mutableCopyWithZone:a3];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [CADSPPropertyModel allocWithZone:a3];
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

- (void)setDefaultValueBytes:(const char *)a3 size:(unint64_t)a4
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
  if (a4)
  {
    std::vector<unsigned char>::__vallocate[abi:ne200100](&self->super._this.defaultValue, a4);
  }

  self->super._this.defaultValue.__engaged_ = 1;
}

@end