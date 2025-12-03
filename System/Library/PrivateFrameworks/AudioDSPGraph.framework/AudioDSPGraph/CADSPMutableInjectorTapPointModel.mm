@interface CADSPMutableInjectorTapPointModel
- (id)copyWithZone:(_NSZone *)zone;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (void)setAudioFilePath:(id)path;
- (void)setBoxName:(id)name;
@end

@implementation CADSPMutableInjectorTapPointModel

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4.receiver = self;
  v4.super_class = CADSPMutableInjectorTapPointModel;
  return [(CADSPInjectorTapPointModel *)&v4 mutableCopyWithZone:zone];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [CADSPInjectorTapPointModel allocWithZone:zone];
  std::string::operator=(&v4->_this, &self->super._this);
  std::string::operator=(&v4->_this.filePath.var0, &self->super._this.filePath.var0);
  v5 = *self[1].super._this.filePath.__pn_.__rep_.__s.__data_;
  v4[1]._this.filePath.__pn_.__rep_.__s.__data_[4] = self[1].super._this.filePath.__pn_.__rep_.__s.__data_[4];
  *v4[1]._this.filePath.__pn_.__rep_.__s.__data_ = v5;
  return v4;
}

- (void)setBoxName:(id)name
{
  nameCopy = name;
  std::string::__assign_external(&self->super._this.filePath.var0, [nameCopy UTF8String]);
}

- (void)setAudioFilePath:(id)path
{
  pathCopy = path;
  uTF8String = [pathCopy UTF8String];
  std::__fs::filesystem::path::assign[abi:ne200100]<char const*>(&self->super._this, &uTF8String);
}

@end