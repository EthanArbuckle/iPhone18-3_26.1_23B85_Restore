@interface CADSPBoxModel
- (BOOL)getAudioComponentDescription:(AudioComponentDescription *)description;
- (BOOL)isEqual:(id)equal;
- (NSString)className;
- (NSString)name;
- (NSString)subsetName;
- (id).cxx_construct;
- (id)mutableCopyWithZone:(_NSZone *)zone;
@end

@implementation CADSPBoxModel

- (id).cxx_construct
{
  *(self + 56) = 0;
  *(self + 64) = 0;
  *(self + 84) = 0;
  *(self + 1) = 0;
  *(self + 32) = 0;
  *(self + 1) = 0u;
  *(self + 11) = 0x100000001;
  *(self + 96) = 0;
  *(self + 120) = 0;
  return self;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && (self == equalCopy || AudioDSPGraph::IR::BoxModel::operator==(&self->_this.name.__rep_.__l.__data_, &equalCopy->_this));

  return v5;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [CADSPMutableBoxModel allocWithZone:zone];
  std::string::operator=(&v4->super._this, &self->_this);
  std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_copy_assign_base<std::string,false> const&>(&v4->super._this.var0, &self->_this.var0);
  v5 = *&self[2].super.isa;
  *(&v4[1].super._this.name.__rep_.__l + 1) = *(&self[1]._this.name.__rep_.__l + 1);
  *&v4[2].super.super.isa = v5;
  std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_copy_assign_base<std::string,false> const&>(&v4[2].super._this.name.__rep_.__l.__size_, &self[2]._this.name.__rep_.__l.__size_);
  return v4;
}

- (BOOL)getAudioComponentDescription:(AudioComponentDescription *)description
{
  v4 = BYTE4(self[2].super.isa);
  if (description && v4)
  {
    v5 = *(&self[1]._this.name.__rep_.__l + 1);
    description->componentFlagsMask = self[2].super.isa;
    *&description->componentType = v5;
  }

  return v4;
}

- (NSString)subsetName
{
  if (LOBYTE(self[3].super.isa) == 1)
  {
    v3 = objc_alloc(MEMORY[0x1E696AEC0]);
    size = self[2]._this.name.__rep_.__l.__size_;
    v5 = &self[2]._this.name.__rep_.__s.__data_[8];
    v4 = size;
    v7 = v5[23];
    if (v7 >= 0)
    {
      v8 = v5;
    }

    else
    {
      v8 = v4;
    }

    if (v7 >= 0)
    {
      v9 = v5[23];
    }

    else
    {
      v9 = *(v5 + 1);
    }

    v10 = [v3 initWithBytes:v8 length:v9 encoding:4];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (NSString)className
{
  if (self[1]._this.name.__rep_.__s.__data_[8] == 1)
  {
    v3 = objc_alloc(MEMORY[0x1E696AEC0]);
    v6 = *&self->_this.var0;
    p_var0 = &self->_this.var0;
    v4 = v6;
    v7 = *(p_var0 + 23);
    if (v7 >= 0)
    {
      v8 = p_var0;
    }

    else
    {
      v8 = v4;
    }

    if (v7 >= 0)
    {
      v9 = *(p_var0 + 23);
    }

    else
    {
      v9 = *(p_var0 + 1);
    }

    v10 = [v3 initWithBytes:v8 length:v9 encoding:4];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (NSString)name
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  data = self->_this.name.__rep_.__l.__data_;
  p_this = &self->_this;
  v4 = data;
  v7 = *(&p_this->name.__rep_.__l + 23);
  if (v7 >= 0)
  {
    v8 = p_this;
  }

  else
  {
    v8 = v4;
  }

  if (v7 >= 0)
  {
    size = *(&p_this->name.__rep_.__l + 23);
  }

  else
  {
    size = p_this->name.__rep_.__l.__size_;
  }

  v10 = [v3 initWithBytes:v8 length:size encoding:4];

  return v10;
}

@end