@interface CADSPMutableInjectorTapPointModel
- (id)copyWithZone:(_NSZone *)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (void)setAudioFilePath:(id)a3;
- (void)setBoxName:(id)a3;
@end

@implementation CADSPMutableInjectorTapPointModel

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4.receiver = self;
  v4.super_class = CADSPMutableInjectorTapPointModel;
  return [(CADSPInjectorTapPointModel *)&v4 mutableCopyWithZone:a3];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [CADSPInjectorTapPointModel allocWithZone:a3];
  std::string::operator=(&v4->_this, &self->super._this);
  std::string::operator=(&v4->_this.filePath.var0, &self->super._this.filePath.var0);
  v5 = *self[1].super._this.filePath.__pn_.__rep_.__s.__data_;
  v4[1]._this.filePath.__pn_.__rep_.__s.__data_[4] = self[1].super._this.filePath.__pn_.__rep_.__s.__data_[4];
  *v4[1]._this.filePath.__pn_.__rep_.__s.__data_ = v5;
  return v4;
}

- (void)setBoxName:(id)a3
{
  v4 = a3;
  std::string::__assign_external(&self->super._this.filePath.var0, [v4 UTF8String]);
}

- (void)setAudioFilePath:(id)a3
{
  v4 = a3;
  v5 = [v4 UTF8String];
  std::__fs::filesystem::path::assign[abi:ne200100]<char const*>(&self->super._this, &v5);
}

@end