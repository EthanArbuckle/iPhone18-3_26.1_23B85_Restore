@interface CADSPMutableBoxModel
- (id)copyWithZone:(_NSZone *)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (void)setAudioComponentDescription:(const AudioComponentDescription *)a3;
- (void)setClassName:(id)a3;
- (void)setName:(id)a3;
- (void)setNumberOfInputs:(unint64_t)a3;
- (void)setNumberOfOutputs:(unint64_t)a3;
- (void)setSubsetName:(id)a3;
@end

@implementation CADSPMutableBoxModel

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4.receiver = self;
  v4.super_class = CADSPMutableBoxModel;
  return [(CADSPBoxModel *)&v4 mutableCopyWithZone:a3];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [CADSPBoxModel allocWithZone:a3];
  std::string::operator=(&v4->_this, &self->super._this);
  std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_copy_assign_base<std::string,false> const&>(&v4->_this.var0, &self->super._this.var0);
  v5 = *&self[2].super.super.isa;
  *(&v4[1]._this.name.__rep_.__l + 1) = *(&self[1].super._this.name.__rep_.__l + 1);
  *&v4[2].super.isa = v5;
  std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_copy_assign_base<std::string,false> const&>(&v4[2]._this.name.__rep_.__l.__size_, &self[2].super._this.name.__rep_.__l.__size_);
  return v4;
}

- (void)setAudioComponentDescription:(const AudioComponentDescription *)a3
{
  if (a3)
  {
    if (BYTE4(self[2].super.super.isa) == 1)
    {
      BYTE4(self[2].super.super.isa) = 0;
    }

    v3 = *&a3->componentType;
    LODWORD(self[2].super.super.isa) = a3->componentFlagsMask;
    *(&self[1].super._this.name.__rep_.__l + 1) = v3;
    BYTE4(self[2].super.super.isa) = 1;
  }

  else if (BYTE4(self[2].super.super.isa) == 1)
  {
    BYTE4(self[2].super.super.isa) = 0;
  }
}

- (void)setSubsetName:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    std::optional<std::string>::operator=[abi:ne200100]<char const*,void>(&self[2].super._this.name.__rep_.__l.__size_, [v4 UTF8String]);
  }

  else if (LOBYTE(self[3].super.super.isa) == 1)
  {
    if (*(&self[2].super._this.var1 + 3) < 0)
    {
      operator delete(self[2].super._this.name.__rep_.__l.__size_);
    }

    LOBYTE(self[3].super.super.isa) = 0;
  }
}

- (void)setClassName:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    std::optional<std::string>::operator=[abi:ne200100]<char const*,void>(&self->super._this.var0, [v4 UTF8String]);
  }

  else if (self[1].super._this.name.__rep_.__s.__data_[8] == 1)
  {
    if (self[1].super._this.name.__rep_.__s.__data_[7] < 0)
    {
      operator delete(*&self->super._this.var0);
    }

    self[1].super._this.name.__rep_.__s.__data_[8] = 0;
  }
}

- (void)setNumberOfOutputs:(unint64_t)a3
{
  v4 = *MEMORY[0x1E69E9840];
  if (HIDWORD(a3))
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  HIDWORD(self[2].super._this.name.__rep_.__l.__data_) = a3;
  v3 = *MEMORY[0x1E69E9840];
}

- (void)setNumberOfInputs:(unint64_t)a3
{
  v4 = *MEMORY[0x1E69E9840];
  if (HIDWORD(a3))
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  *self[2].super._this.name.__rep_.__s.__data_ = a3;
  v3 = *MEMORY[0x1E69E9840];
}

- (void)setName:(id)a3
{
  v4 = a3;
  std::string::__assign_external(&self->super._this, [v4 UTF8String]);
}

@end