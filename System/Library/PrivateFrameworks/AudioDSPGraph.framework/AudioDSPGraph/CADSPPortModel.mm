@interface CADSPPortModel
- (BOOL)isEqual:(id)a3;
- (NSString)name;
- (id).cxx_construct;
- (id)mutableCopyWithZone:(_NSZone *)a3;
@end

@implementation CADSPPortModel

- (id).cxx_construct
{
  *(self + 8) = 0uLL;
  *(self + 3) = 0;
  return self;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (self == v4)
    {
      v11 = 1;
      goto LABEL_17;
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

    v7 = *(&v4->_this.name.__rep_.__l + 23);
    v8 = v7;
    if ((v7 & 0x80u) != 0)
    {
      v7 = v4->_this.name.__rep_.__l.__size_;
    }

    if (size == v7)
    {
      v9 = v5 >= 0 ? &self->_this : self->_this.name.__rep_.__l.__data_;
      v10 = v8 >= 0 ? &v4->_this : v4->_this.name.__rep_.__l.__data_;
      if (!memcmp(v9, v10, size))
      {
        v11 = self->_this.var0 == v4->_this.var0;
        goto LABEL_17;
      }
    }
  }

  v11 = 0;
LABEL_17:

  return v11;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [CADSPMutablePortModel allocWithZone:a3];
  std::string::operator=(&v4->super._this, &self->_this);
  v4->super._this.var0 = self->_this.var0;
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