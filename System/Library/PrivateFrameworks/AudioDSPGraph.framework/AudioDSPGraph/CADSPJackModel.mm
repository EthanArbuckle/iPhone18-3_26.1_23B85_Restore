@interface CADSPJackModel
- (BOOL)isEqual:(id)equal;
- (NSString)name;
- (id).cxx_construct;
- (id)mutableCopyWithZone:(_NSZone *)zone;
@end

@implementation CADSPJackModel

- (id).cxx_construct
{
  *(self + 8) = 0uLL;
  *(self + 3) = 0;
  return self;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_16;
  }

  if (self == equalCopy)
  {
    v14 = 1;
    goto LABEL_18;
  }

  v5 = *(&self->_this.name.__rep_.__l + 23);
  if (v5 >= 0)
  {
    size = *(&self->_this.name.__rep_.__l + 23);
  }

  else
  {
    size = self->_this.name.__rep_.__l.__size_;
  }

  v7 = *(&equalCopy->_this.name.__rep_.__l + 23);
  v8 = v7;
  if ((v7 & 0x80u) != 0)
  {
    v7 = equalCopy->_this.name.__rep_.__l.__size_;
  }

  if (size == v7)
  {
    data = self->_this.name.__rep_.__l.__data_;
    p_this = &self->_this;
    v9 = data;
    if (v5 >= 0)
    {
      v12 = p_this;
    }

    else
    {
      v12 = v9;
    }

    if (v8 >= 0)
    {
      v13 = &equalCopy->_this;
    }

    else
    {
      v13 = equalCopy->_this.name.__rep_.__l.__data_;
    }

    v14 = memcmp(v12, v13, size) == 0;
  }

  else
  {
LABEL_16:
    v14 = 0;
  }

LABEL_18:

  return v14;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [CADSPMutableJackModel allocWithZone:zone];
  std::string::operator=(&v4->super._this, &self->_this);
  return v4;
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