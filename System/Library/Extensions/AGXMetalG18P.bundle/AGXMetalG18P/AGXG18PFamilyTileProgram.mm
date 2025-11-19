@interface AGXG18PFamilyTileProgram
- (id).cxx_construct;
@end

@implementation AGXG18PFamilyTileProgram

- (id).cxx_construct
{
  p_impl = &self->_impl;
  AGX::TileProgramKey::TileProgramKey(&self->_impl, 0, 0);
  AGX::TileProgramKey::TileProgramKey(&self->_impl.variants.initial_chunk.keys[1], 0, 0);
  AGX::TileProgramKey::TileProgramKey(&self->_impl.variants.initial_chunk.keys[2], 0, 0);
  AGX::TileProgramKey::TileProgramKey(&self->_impl.variants.initial_chunk.keys[3], 0, 0);
  *(&self->_impl.variants.initial_chunk.values[0].message + 2) = 0u;
  *&self->_impl.variants.initial_chunk.values[0].ve_group = 0u;
  *&self->_impl.variants.initial_chunk.values[0].error = 0u;
  *&self->_impl.variants.initial_chunk.values[1].ve_group = 0u;
  *&self->_impl.variants.initial_chunk.values[1].error = 0u;
  *(&self->_impl.variants.initial_chunk.values[1].message + 2) = 0u;
  *&self->_impl.variants.initial_chunk.values[2].ve_group = 0u;
  *&self->_impl.variants.initial_chunk.values[2].error = 0u;
  *(&self->_impl.variants.initial_chunk.values[2].message + 2) = 0u;
  *&self->_impl.variants.initial_chunk.values[3].ve_group = 0u;
  *&self->_impl.variants.initial_chunk.values[3].error = 0u;
  *(&self->_impl.variants.initial_chunk.values[3].message + 2) = 0u;
  self->_impl.variants.head = &p_impl->variants.initial_chunk;
  self->_impl.variants.count = 0;
  *&self->_impl.variants.default_value.ve_group = 0u;
  *&self->_impl.variants.default_value.error = 0u;
  *(&self->_impl.variants.default_value.message + 2) = 0u;
  self->_impl.variants.initial_chunk.next = 0;
  *&self->_impl.reflections.initial_chunk.keys[0]._vptr$ProgramKey = 0u;
  *&self->_impl.reflections.initial_chunk.keys[0].stream.__begin_ = 0u;
  *&self->_impl.reflections.initial_chunk.keys[0].stream.__cap_ = 0u;
  *&self->_impl.reflections.initial_chunk.keys[0].cs.colorMaskState.var0.var0 = 0u;
  *&self->_impl.reflections.initial_chunk.keys[0].cs.blendState[0].var0 = 0u;
  *&self->_impl.reflections.initial_chunk.keys[0].cs.blendState[4].var0 = 0u;
  *&self->_impl.reflections.initial_chunk.keys[0].cs.pcf.var0 = 0u;
  *&self->_impl.reflections.initial_chunk.keys[0].ds.encoded.__elems_[0].representation.var0 = 0u;
  *&self->_impl.reflections.initial_chunk.keys[0].ds.encoded.__elems_[4].representation.var0 = 0u;
  *&self->_impl.reflections.initial_chunk.keys[0].ds.state.representation.var0 = 0u;
  *&self->_impl.reflections.initial_chunk.keys[0].dynamic_libraries.dynamic_libraries_hash.__begin_ = 0u;
  *&self->_impl.reflections.initial_chunk.keys[0].dynamic_libraries.dynamic_libraries_hash.__cap_ = 0u;
  *&self->_impl.reflections.initial_chunk.keys[0].visible_functions.visible_functions_hash.__end_ = 0u;
  *&self->_impl.reflections.initial_chunk.keys[0].non_reflection_pipeline_options = 0u;
  self->_impl.reflections.initial_chunk.keys[1].stream.__begin_ = &self->_impl.reflections;
  LODWORD(self->_impl.reflections.initial_chunk.keys[1].stream.__end_) = 0;
  *&self->_impl.reflections.initial_chunk.keys[1].streamType = 0;
  LODWORD(self->_impl.reflections.initial_chunk.keys[1].cs.mutableBuffers) = 0;
  self->_impl.reflections.initial_chunk.keys[1].cs.colorMaskState.var0.key = 0;
  *&self->_impl.reflections.initial_chunk.keys[1].stream.__cap_ = 0u;
  *&self->_impl.reflections.initial_chunk.keys[1].cs.blendState[6].var0 = 0;
  *&self->_impl.reflections.initial_chunk.keys[1].cs.blendState[4].var0 = 0;
  *&self->_impl.reflections.initial_chunk.keys[1].cs.blendState[0].var0 = 0u;
  return self;
}

@end