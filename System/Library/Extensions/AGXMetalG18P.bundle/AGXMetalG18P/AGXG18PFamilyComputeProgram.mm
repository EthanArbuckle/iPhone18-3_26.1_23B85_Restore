@interface AGXG18PFamilyComputeProgram
- (id).cxx_construct;
@end

@implementation AGXG18PFamilyComputeProgram

- (id).cxx_construct
{
  p_impl = &self->_impl;
  AGX::Impl::ComputeProgramKey::ComputeProgramKey(&self->_impl);
  self->_impl.variants.initial_chunk.keys[0]._vptr$ProgramKey = &unk_2A23F7D80;
  *&self->_impl.variants.initial_chunk.keys[0].ds.state.representation.var0 = 0;
  AGX::Impl::ComputeProgramKey::ComputeProgramKey(&self->_impl.variants.initial_chunk.keys[0].ts);
  self->_impl.variants.initial_chunk.keys[0].ts = &unk_2A23F7D80;
  *&self->_impl.variants.initial_chunk.keys[1].cs.blendState[4].var0 = 0;
  AGX::Impl::ComputeProgramKey::ComputeProgramKey(&self->_impl.variants.initial_chunk.keys[1].cs.blendState[6]);
  *&self->_impl.variants.initial_chunk.keys[1].cs.blendState[6].var0 = &unk_2A23F7D80;
  self->_impl.variants.initial_chunk.keys[2].stream.__begin_ = 0;
  AGX::Impl::ComputeProgramKey::ComputeProgramKey(&self->_impl.variants.initial_chunk.keys[2].stream.__end_);
  self->_impl.variants.initial_chunk.keys[2].stream.__end_ = &unk_2A23F7D80;
  *&self->_impl.variants.initial_chunk.keys[3].streamType = 0u;
  *&self->_impl.variants.initial_chunk.keys[3].stream.__end_ = 0u;
  *(&self->_impl.variants.initial_chunk.keys[3].stream.__cap_ + 2) = 0u;
  *&self->_impl.variants.initial_chunk.keys[3].cs.mutableBuffers = 0u;
  *&self->_impl.variants.initial_chunk.keys[3].cs.blendState[2].var0 = 0u;
  *(&self->_impl.variants.initial_chunk.keys[3].cs.blendState[4].key + 2) = 0u;
  *&self->_impl.variants.initial_chunk.keys[3].cs.remap.var0.var0 = 0u;
  *&self->_impl.variants.initial_chunk.keys[3].ds.encoded.__elems_[2].representation.var0 = 0u;
  *(&self->_impl.variants.initial_chunk.keys[3].ds.encoded.__elems_[4].representation.key + 2) = 0u;
  *&self->_impl.variants.initial_chunk.keys[2].dynamic_libraries.dynamic_libraries_hash.__end_ = 0u;
  *&self->_impl.variants.initial_chunk.keys[2].visible_functions.visible_functions_hash.__begin_ = 0u;
  *&self->_impl.variants.initial_chunk.keys[2].visible_functions.visible_functions_hash.__cap_ = 0u;
  LOWORD(self->_impl.variants.initial_chunk.keys[3]._vptr$ProgramKey) = 0;
  self->_impl.variants.initial_chunk.keys[3].dynamic_libraries.dynamic_libraries_hash.__begin_ = p_impl;
  LODWORD(self->_impl.variants.initial_chunk.keys[3].dynamic_libraries.dynamic_libraries_hash.__end_) = 0;
  *&self->_impl.variants.initial_chunk.keys[3].dynamic_libraries.dynamic_libraries_hash.__cap_ = 0u;
  *&self->_impl.variants.initial_chunk.keys[3].visible_functions.visible_functions_hash.__end_ = 0u;
  *(&self->_impl.variants.initial_chunk.keys[3].visible_functions.visible_functions_hash.__cap_ + 2) = 0u;
  self->_impl.variants.initial_chunk.keys[3].ts = 0;
  *&self->_impl.variants.initial_chunk.values[0].variant = 0u;
  *&self->_impl.variants.initial_chunk.values[0].message = 0u;
  *&self->_impl.variants.initial_chunk.values[0].needsReattempt = 0u;
  *&self->_impl.variants.initial_chunk.values[1].variant = 0u;
  *&self->_impl.variants.initial_chunk.values[1].message = 0u;
  *&self->_impl.variants.initial_chunk.values[1].needsReattempt = 0u;
  *&self->_impl.variants.initial_chunk.values[2].variant = 0u;
  *&self->_impl.variants.initial_chunk.values[2].message = 0u;
  *&self->_impl.variants.initial_chunk.values[2].needsReattempt = 0u;
  *&self->_impl.variants.initial_chunk.values[3].variant = 0u;
  *&self->_impl.variants.initial_chunk.values[3].message = 0u;
  *&self->_impl.variants.initial_chunk.values[3].needsReattempt = 0u;
  *&self->_impl.b1})} = 0u;
  *&self[1]._impl.variants.initial_chunk.keys[0]._vptr$ProgramKey = 0u;
  self[1]._impl.variants.initial_chunk.keys[0].stream.__end_ = &self->_impl.variants.initial_chunk.values[0].variant;
  LODWORD(self[1]._impl.variants.initial_chunk.keys[0].stream.__cap_) = 0;
  self[1]._impl.variants.initial_chunk.keys[0].stream.__begin_ = 0;
  self[1]._impl.variants.initial_chunk.keys[0].cs.blendState[0].key = 0;
  self[1]._impl.variants.initial_chunk.keys[0].cs.mutableBuffers = 0;
  *&self[1]._impl.variants.initial_chunk.keys[0].cs.fragmentState.var0 = 0u;
  *&self[1]._impl.variants.initial_chunk.keys[0].cs.pcf.var0 = 0;
  *&self[1]._impl.variants.initial_chunk.keys[0].cs.blendState[6].var0 = 0;
  *&self[1]._impl.variants.initial_chunk.keys[0].cs.blendState[2].var0 = 0u;
  return self;
}

@end