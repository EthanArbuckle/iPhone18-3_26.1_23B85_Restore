@interface CADSPMutableWireModel
- (id)copyWithZone:(_NSZone *)zone;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (void)setAudioStreamConfiguration:(const CADSPAudioStreamConfiguration *)configuration;
- (void)setAudioStreamConfigurationName:(id)name;
- (void)setBoxName:(id)name ofEndpoint:(unsigned int)endpoint;
@end

@implementation CADSPMutableWireModel

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4.receiver = self;
  v4.super_class = CADSPMutableWireModel;
  return [(CADSPWireModel *)&v4 mutableCopyWithZone:zone];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [CADSPWireModel allocWithZone:zone];
  std::string::operator=(&v4->_this, &self->super._this);
  v4->_this.source.var0 = self->super._this.source.var0;
  std::string::operator=(&v4->_this.var0, &self->super._this.var0);
  LODWORD(v4[1]._this.source.boxName.__rep_.__l.__size_) = self[1].super._this.source.boxName.__rep_.__l.__size_;
  std::__variant_detail::__assignment<std::__variant_detail::__traits<std::monostate,AudioDSPGraph::IR::WireConfiguration,AudioDSPGraph::IR::WireConfigurationAlias>>::__generic_assign[abi:ne200100]<std::__variant_detail::__copy_assignment<std::__variant_detail::__traits<std::monostate,AudioDSPGraph::IR::WireConfiguration,AudioDSPGraph::IR::WireConfigurationAlias>,(std::__variant_detail::_Trait)1> const&>((&v4[1]._this.source.boxName.__rep_.__l + 1), (&self[1].super._this.source.boxName.__rep_.__l + 1));
  return v4;
}

- (void)setBoxName:(id)name ofEndpoint:(unsigned int)endpoint
{
  nameCopy = name;
  std::string::__assign_external((&self->super._this.source + (endpoint != 0)), [nameCopy UTF8String]);
}

- (void)setAudioStreamConfiguration:(const CADSPAudioStreamConfiguration *)configuration
{
  v9 = *MEMORY[0x1E69E9840];
  if (configuration)
  {
    v3 = *&configuration->var0.mBytesPerPacket;
    v5[0] = *&configuration->var0.mSampleRate;
    v5[1] = v3;
    v6 = *&configuration->var0.mBitsPerChannel;
    var1 = configuration->var1;
    v8 = 1;
  }

  else
  {
    v8 = 0;
  }

  std::__variant_detail::__assignment<std::__variant_detail::__traits<std::monostate,AudioDSPGraph::IR::WireConfiguration,AudioDSPGraph::IR::WireConfigurationAlias>>::__generic_assign[abi:ne200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<std::monostate,AudioDSPGraph::IR::WireConfiguration,AudioDSPGraph::IR::WireConfigurationAlias>,(std::__variant_detail::_Trait)1>>((&self[1].super._this.source.boxName.__rep_.__l + 1), v5);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,AudioDSPGraph::IR::WireConfiguration,AudioDSPGraph::IR::WireConfigurationAlias>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v5);
  v4 = *MEMORY[0x1E69E9840];
}

- (void)setAudioStreamConfigurationName:(id)name
{
  v15 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  v5 = nameCopy;
  if (nameCopy)
  {
    uTF8String = [nameCopy UTF8String];
    v7 = strlen(uTF8String);
    if (v7 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v8 = v7;
    if (v7 >= 0x17)
    {
      operator new();
    }

    HIBYTE(v11) = v7;
    if (v7)
    {
      memmove(&__dst, uTF8String, v7);
    }

    *(&__dst + v8) = 0;
    v12 = __dst;
    v13 = v11;
    v11 = 0;
    __dst = 0uLL;
    v14 = 2;
    std::__variant_detail::__assignment<std::__variant_detail::__traits<std::monostate,AudioDSPGraph::IR::WireConfiguration,AudioDSPGraph::IR::WireConfigurationAlias>>::__generic_assign[abi:ne200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<std::monostate,AudioDSPGraph::IR::WireConfiguration,AudioDSPGraph::IR::WireConfigurationAlias>,(std::__variant_detail::_Trait)1>>((&self[1].super._this.source.boxName.__rep_.__l + 1), &v12);
  }

  else
  {
    v14 = 0;
    std::__variant_detail::__assignment<std::__variant_detail::__traits<std::monostate,AudioDSPGraph::IR::WireConfiguration,AudioDSPGraph::IR::WireConfigurationAlias>>::__generic_assign[abi:ne200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<std::monostate,AudioDSPGraph::IR::WireConfiguration,AudioDSPGraph::IR::WireConfigurationAlias>,(std::__variant_detail::_Trait)1>>((&self[1].super._this.source.boxName.__rep_.__l + 1), &v12);
  }

  std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,AudioDSPGraph::IR::WireConfiguration,AudioDSPGraph::IR::WireConfigurationAlias>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v12);

  v9 = *MEMORY[0x1E69E9840];
}

@end