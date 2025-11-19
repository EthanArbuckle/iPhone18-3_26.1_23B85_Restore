@interface CADSPInjectorTapPointModel
- (BOOL)isEqual:(id)a3;
- (NSString)audioFilePath;
- (NSString)boxName;
- (id).cxx_construct;
- (id)mutableCopyWithZone:(_NSZone *)a3;
@end

@implementation CADSPInjectorTapPointModel

- (id).cxx_construct
{
  *(self + 53) = 0;
  *(self + 40) = 0u;
  *(self + 24) = 0u;
  *(self + 8) = 0u;
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
      v6 = 1;
    }

    else
    {
      v5.__data_ = v4->_this.filePath.__pn_.__rep_.__s.__data_;
      v6 = AudioDSPGraph::IR::InjectTapPointModel::operator==(&self->_this, v5);
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [CADSPMutableInjectorTapPointModel allocWithZone:a3];
  std::string::operator=(&v4->super._this, &self->_this);
  std::string::operator=(&v4->super._this.filePath.var0, &self->_this.filePath.var0);
  v5 = *self[1]._this.filePath.__pn_.__rep_.__s.__data_;
  v4[1].super._this.filePath.__pn_.__rep_.__s.__data_[4] = self[1]._this.filePath.__pn_.__rep_.__s.__data_[4];
  *v4[1].super._this.filePath.__pn_.__rep_.__s.__data_ = v5;
  return v4;
}

- (NSString)boxName
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v6 = *&self->_this.filePath.var0;
  p_var0 = &self->_this.filePath.var0;
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

  return v10;
}

- (NSString)audioFilePath
{
  if (*(&self->_this.filePath.__pn_.__rep_.__l + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, self->_this.filePath.__pn_.__rep_.__l.__data_, self->_this.filePath.__pn_.__rep_.__l.__size_);
  }

  else
  {
    __p = self->_this.filePath.__pn_;
  }

  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  if (*(&__p.__rep_.__l + 23) >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__rep_.__l.__data_;
  }

  if (*(&__p.__rep_.__l + 23) >= 0)
  {
    size = *(&__p.__rep_.__l + 23);
  }

  else
  {
    size = __p.__rep_.__l.__size_;
  }

  v5 = [v2 initWithBytes:p_p length:size encoding:{4, __p.__rep_.__l.__data_}];
  if (*(&__p.__rep_.__l + 23) < 0)
  {
    operator delete(__p.__rep_.__l.__data_);
  }

  return v5;
}

@end