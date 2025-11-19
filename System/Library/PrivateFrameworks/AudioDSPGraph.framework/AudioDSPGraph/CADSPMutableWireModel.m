@interface CADSPMutableWireModel
- (id)copyWithZone:(_NSZone *)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (void)setAudioStreamConfiguration:(const CADSPAudioStreamConfiguration *)a3;
- (void)setAudioStreamConfigurationName:(id)a3;
- (void)setBoxName:(id)a3 ofEndpoint:(unsigned int)a4;
@end

@implementation CADSPMutableWireModel

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4.receiver = self;
  v4.super_class = CADSPMutableWireModel;
  return [(CADSPWireModel *)&v4 mutableCopyWithZone:a3];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [CADSPWireModel allocWithZone:a3];
  std::string::operator=(&v4->_this, &self->super._this);
  v4->_this.source.var0 = self->super._this.source.var0;
  std::string::operator=(&v4->_this.var0, &self->super._this.var0);
  LODWORD(v4[1]._this.source.boxName.__rep_.__l.__size_) = self[1].super._this.source.boxName.__rep_.__l.__size_;
  std::__variant_detail::__assignment<std::__variant_detail::__traits<std::monostate,AudioDSPGraph::IR::WireConfiguration,AudioDSPGraph::IR::WireConfigurationAlias>>::__generic_assign[abi:ne200100]<std::__variant_detail::__copy_assignment<std::__variant_detail::__traits<std::monostate,AudioDSPGraph::IR::WireConfiguration,AudioDSPGraph::IR::WireConfigurationAlias>,(std::__variant_detail::_Trait)1> const&>((&v4[1]._this.source.boxName.__rep_.__l + 1), (&self[1].super._this.source.boxName.__rep_.__l + 1));
  return v4;
}

- (void)setBoxName:(id)a3 ofEndpoint:(unsigned int)a4
{
  v6 = a3;
  std::string::__assign_external((&self->super._this.source + (a4 != 0)), [v6 UTF8String]);
}

- (void)setAudioStreamConfiguration:(const CADSPAudioStreamConfiguration *)a3
{
  v9 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v3 = *&a3->var0.mBytesPerPacket;
    v5[0] = *&a3->var0.mSampleRate;
    v5[1] = v3;
    v6 = *&a3->var0.mBitsPerChannel;
    var1 = a3->var1;
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

- (void)setAudioStreamConfigurationName:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 UTF8String];
    v7 = strlen(v6);
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
      memmove(&__dst, v6, v7);
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