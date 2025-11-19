@interface AGXG18PFamilyFragmentProgram
- (id).cxx_construct;
@end

@implementation AGXG18PFamilyFragmentProgram

- (id).cxx_construct
{
  p_impl = &self->_impl;
  AGX::FragmentProgramKey::FragmentProgramKey(&self->_impl, 0, 0, 0);
  AGX::FragmentProgramKey::FragmentProgramKey(&self->_impl.variants.initial_chunk.keys[1].cs.blendState[2], 0, 0, 0);
  AGX::FragmentProgramKey::FragmentProgramKey(&self->_impl.variants.initial_chunk.keys[2].ds.state, 0, 0, 0);
  AGX::FragmentProgramKey::FragmentProgramKey(self->_impl.variants.initial_chunk.values, 0, 0, 0);
  *(&self[1]._impl.variants.initial_chunk.keys[0].cs.pcf.key + 2) = 0u;
  *&self[1]._impl.variants.initial_chunk.keys[0].cs.blendState[2].var0 = 0u;
  *&self[1]._impl.variants.initial_chunk.keys[0].cs.blendState[6].var0 = 0u;
  *&self[1]._impl.variants.initial_chunk.keys[0].ds.encoded.__elems_[2].representation.var0 = 0u;
  *&self[1]._impl.variants.initial_chunk.keys[0].ds.encoded.__elems_[6].representation.var0 = 0u;
  *(&self[1]._impl.variants.initial_chunk.keys[0].ds.state.representation.key + 2) = 0u;
  *&self[1]._impl.variants.initial_chunk.keys[0].dynamic_libraries.dynamic_libraries_hash.__end_ = 0u;
  *&self[1]._impl.variants.initial_chunk.keys[0].visible_functions.visible_functions_hash.__begin_ = 0u;
  *(&self[1]._impl.variants.initial_chunk.keys[0].visible_functions.visible_functions_hash.__end_ + 2) = 0u;
  *&self[1]._impl.variants.initial_chunk.keys[1]._vptr$ProgramKey = 0u;
  *&self[1]._impl.variants.initial_chunk.keys[1].stream.__begin_ = 0u;
  *(&self[1]._impl.variants.initial_chunk.keys[1].stream.__end_ + 2) = 0u;
  self[1]._impl.variants.initial_chunk.keys[1].cs.mutableBuffers = p_impl;
  self[1]._impl.variants.initial_chunk.keys[1].cs.blendState[0].key = 0;
  *&self[1]._impl.variants.initial_chunk.keys[1].cs.blendState[2].var0 = 0u;
  *&self[1]._impl.variants.initial_chunk.keys[1].cs.blendState[6].var0 = 0u;
  *(&self[1]._impl.variants.initial_chunk.keys[1].cs.pcf.key + 2) = 0u;
  self[1]._impl.variants.initial_chunk.keys[1].cs.colorMaskState.var0.key = 0;
  *&self[1]._impl.variants.initial_chunk.keys[1].ds.encoded.__elems_[2].representation.var0 = 0u;
  *&self[1]._impl.variants.initial_chunk.keys[1].ds.encoded.__elems_[6].representation.var0 = 0u;
  *&self[1]._impl.variants.initial_chunk.keys[1].ts.maxTotalThreadsPerThreadgroup = 0u;
  *&self[1]._impl.variants.initial_chunk.keys[1].dynamic_libraries.dynamic_libraries_hash.__end_ = 0u;
  *&self[1]._impl.variants.initial_chunk.keys[1].visible_functions.visible_functions_hash.__begin_ = 0u;
  *&self[1]._impl.variants.initial_chunk.keys[1].visible_functions.visible_functions_hash.__cap_ = 0u;
  *&self[1]._impl.variants.initial_chunk.keys[2]._vptr$ProgramKey = 0u;
  *&self[1]._impl.variants.initial_chunk.keys[2].stream.__begin_ = 0u;
  *&self[1]._impl.variants.initial_chunk.keys[2].stream.__cap_ = 0u;
  *&self[1]._impl.variants.initial_chunk.keys[2].cs.colorMaskState.var0.var0 = 0u;
  *&self[1]._impl.variants.initial_chunk.keys[2].cs.blendState[0].var0 = 0u;
  *&self[1]._impl.variants.initial_chunk.keys[2].cs.blendState[4].var0 = 0u;
  *&self[1]._impl.variants.initial_chunk.keys[2].cs.pcf.var0 = 0u;
  *&self[1]._impl.variants.initial_chunk.keys[2].ds.encoded.__elems_[0].representation.var0 = 0u;
  *&self[1]._impl.variants.initial_chunk.keys[2].ds.encoded.__elems_[6].representation.var0 = self + 1424;
  self[1]._impl.variants.initial_chunk.keys[2].ds.state.representation.key = 0;
  *&self[1]._impl.variants.initial_chunk.keys[2].ds.encoded.__elems_[4].representation.var0 = 0;
  LODWORD(self[1]._impl.variants.initial_chunk.keys[2].dynamic_libraries.dynamic_libraries_hash.__cap_) = 0;
  self[1]._impl.variants.initial_chunk.keys[2].dynamic_libraries.dynamic_libraries_hash.__end_ = 0;
  *&self[1]._impl.variants.initial_chunk.keys[2].ts.maxTotalThreadsPerThreadgroup = 0u;
  LOBYTE(self[1]._impl.variants.initial_chunk.keys[2].non_reflection_pipeline_options) = 0;
  self[1]._impl.variants.initial_chunk.keys[2].visible_functions.visible_functions_hash.__cap_ = 0;
  *&self[1]._impl.variants.initial_chunk.keys[2].visible_functions.visible_functions_hash.__begin_ = 0u;
  return self;
}

@end