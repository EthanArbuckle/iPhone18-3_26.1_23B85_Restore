@interface AGXG18PFamilyObjectProgram
- (id).cxx_construct;
@end

@implementation AGXG18PFamilyObjectProgram

- (id).cxx_construct
{
  p_impl = &self->_impl;
  AGX::ObjectProgramKey::ObjectProgramKey(&self->_impl, 0, 0, 0, 0, 0);
  AGX::ObjectProgramKey::ObjectProgramKey(&self->_impl.variants.initial_chunk.keys[0].dynamic_libraries, 0, 0, 0, 0, 0);
  AGX::ObjectProgramKey::ObjectProgramKey(&self->_impl.variants.initial_chunk.keys[1].cs.remap, 0, 0, 0, 0, 0);
  AGX::ObjectProgramKey::ObjectProgramKey(&self->_impl.variants.initial_chunk.keys[2].cs.colorMaskState, 0, 0, 0, 0, 0);
  *(&self->_impl.variants.initial_chunk.keys[3].stream.__begin_ + 2) = 0u;
  *&self->_impl.variants.initial_chunk.keys[2].non_reflection_pipeline_options = 0u;
  *&self->_impl.variants.initial_chunk.keys[3].streamType = 0u;
  *&self->_impl.variants.initial_chunk.keys[3].cs.fragmentState.var0 = 0u;
  *&self->_impl.variants.initial_chunk.keys[3].cs.mutableBuffers = 0u;
  *(&self->_impl.variants.initial_chunk.keys[3].cs.blendState[0].key + 2) = 0u;
  *&self->_impl.variants.initial_chunk.keys[3].cs.blendState[6].var0 = 0u;
  *&self->_impl.variants.initial_chunk.keys[3].cs.remap.var0.var0 = 0u;
  *(&self->_impl.variants.initial_chunk.keys[3].ds.encoded.__elems_[0].representation.key + 2) = 0u;
  *&self->_impl.variants.initial_chunk.keys[3].ds.encoded.__elems_[6].representation.var0 = 0u;
  *&self->_impl.variants.initial_chunk.keys[3].ts.maxTotalThreadsPerThreadgroup = 0u;
  *(&self->_impl.variants.initial_chunk.keys[3].dynamic_libraries.dynamic_libraries_hash.__begin_ + 2) = 0u;
  self->_impl.variants.initial_chunk.keys[3].visible_functions.visible_functions_hash.__end_ = p_impl;
  LODWORD(self->_impl.variants.initial_chunk.keys[3].visible_functions.visible_functions_hash.__cap_) = 0;
  *&self->_impl.variants.initial_chunk.keys[3].non_reflection_pipeline_options = 0u;
  *&self->_impl.variants.initial_chunk.values[0].variant = 0u;
  *(&self->_impl.variants.initial_chunk.values[0].error + 2) = 0u;
  self->_impl.variants.initial_chunk.keys[3].visible_functions.visible_functions_hash.__begin_ = 0;
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
  *&self[1].super.isa = 0u;
  *&self[1]._impl.variants.initial_chunk.keys[0].streamType = 0u;
  *&self[1]._impl.variants.initial_chunk.keys[0].stream.__end_ = 0u;
  *&self[1]._impl.variants.initial_chunk.keys[0].cs.fragmentState.var0 = 0u;
  *&self[1]._impl.variants.initial_chunk.keys[0].cs.blendState[0].var0 = &self->_impl.variants.initial_chunk.values[0].needsReattempt;
  self[1]._impl.variants.initial_chunk.keys[0].cs.blendState[2].key = 0;
  self[1]._impl.variants.initial_chunk.keys[0].cs.mutableBuffers = 0;
  self[1]._impl.variants.initial_chunk.keys[0].cs.remap.var0.key = 0;
  *&self[1]._impl.variants.initial_chunk.keys[0].cs.pcf.var0 = 0;
  *&self[1]._impl.variants.initial_chunk.keys[0].cs.blendState[4].var0 = 0u;
  *&self[1]._impl.variants.initial_chunk.keys[0].ds.encoded.__elems_[6].representation.var0 = 0;
  *&self[1]._impl.variants.initial_chunk.keys[0].ds.encoded.__elems_[4].representation.var0 = 0;
  *&self[1]._impl.variants.initial_chunk.keys[0].ds.encoded.__elems_[0].representation.var0 = 0u;
  return self;
}

@end