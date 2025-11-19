@interface CADSPWireModel
- (BOOL)getAudioStreamConfiguration:(CADSPAudioStreamConfiguration *)a3;
- (BOOL)isEqual:(id)a3;
- (NSString)audioStreamConfigurationName;
- (id).cxx_construct;
- (id)copyBoxNameOfEndpoint:(unsigned int)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
@end

@implementation CADSPWireModel

- (id).cxx_construct
{
  *(self + 8) = 0uLL;
  *(self + 8) = 0;
  *(self + 3) = 0;
  *(self + 6) = 0;
  *(self + 7) = 0;
  *(self + 5) = 0;
  *(self + 16) = 0;
  *(self + 30) = 0;
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
      v5 = 1;
    }

    else
    {
      v5 = AudioDSPGraph::IR::WireModel::operator==(&self->_this, &v4->_this);
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [CADSPMutableWireModel allocWithZone:a3];
  std::string::operator=(&v4->super._this, &self->_this);
  v4->super._this.source.var0 = self->_this.source.var0;
  std::string::operator=(&v4->super._this.var0, &self->_this.var0);
  LODWORD(v4[1].super._this.source.boxName.__rep_.__l.__size_) = self[1]._this.source.boxName.__rep_.__l.__size_;
  std::__variant_detail::__assignment<std::__variant_detail::__traits<std::monostate,AudioDSPGraph::IR::WireConfiguration,AudioDSPGraph::IR::WireConfigurationAlias>>::__generic_assign[abi:ne200100]<std::__variant_detail::__copy_assignment<std::__variant_detail::__traits<std::monostate,AudioDSPGraph::IR::WireConfiguration,AudioDSPGraph::IR::WireConfigurationAlias>,(std::__variant_detail::_Trait)1> const&>((&v4[1].super._this.source.boxName.__rep_.__l + 1), (&self[1]._this.source.boxName.__rep_.__l + 1));
  return v4;
}

- (id)copyBoxNameOfEndpoint:(unsigned int)a3
{
  v3 = self + 32 * (a3 != 0);
  v4 = v3 + 8;
  v5 = objc_alloc(MEMORY[0x1E696AEC0]);
  v6 = v3[31];
  if (v6 < 0)
  {
    v4 = *v4;
    v6 = *(v3 + 2);
  }

  return [v5 initWithBytes:v4 length:v6 encoding:4];
}

- (BOOL)getAudioStreamConfiguration:(CADSPAudioStreamConfiguration *)a3
{
  v3 = *(&self[2]._this.source.boxName.__rep_.__l + 4);
  if (a3 && v3 == 1)
  {
    v4 = *(&self[1]._this.source.boxName.__rep_.__l + 1);
    v5 = *&self[1]._this.var0;
    *&a3->var0.mBitsPerChannel = self[2]._this.source.boxName.__rep_.__l.__data_;
    *&a3->var0.mSampleRate = v4;
    *&a3->var0.mBytesPerPacket = v5;
    a3->var1 = self[2]._this.source.boxName.__rep_.__l.__size_;
  }

  return v3 == 1;
}

- (NSString)audioStreamConfigurationName
{
  if (*(&self[2]._this.source.boxName.__rep_.__l + 4) == 2)
  {
    v12 = v2;
    v7 = objc_alloc(MEMORY[0x1E696AEC0]);
    var0_high = SHIBYTE(self[1]._this.var0);
    if (var0_high < 0)
    {
      v9 = *(&self[1]._this.source.boxName.__rep_.__l + 2);
      var0_high = *&self[1]._this.source.var0;
    }

    else
    {
      v9 = &self[1]._this.source.boxName.__rep_.__s.__data_[16];
    }

    v10 = [v7 initWithBytes:v9 length:var0_high encoding:{4, v3, v12, v4}];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end