@interface AGXG18PFamilyVertexProgram
- (id).cxx_construct;
@end

@implementation AGXG18PFamilyVertexProgram

- (id).cxx_construct
{
  self->_impl.variants.initial_chunk.values[3].message = VectorMap<AGX::VertexProgramKey,AGX::ProgramVariantEntry<AGX::HAL300::VertexProgramVariant>,4u>::Chunk::Chunk(&self->_impl);
  LODWORD(self->_impl.variants.initial_chunk.values[3].pipeline_archiver_id) = 0;
  *&self->_impl.variants.initial_chunk.values[3].needsReattempt = 0u;
  *&self[1].super.isa = 0u;
  *(&self[1]._impl.variants.initial_chunk.keys[0]._vptr$ProgramKey + 2) = 0u;
  self->_impl.variants.initial_chunk.values[3].error = 0;
  *&self[1]._impl.variants.initial_chunk.keys[0].stream.__end_ = 0u;
  *&self[1]._impl.variants.initial_chunk.keys[0].cs.fragmentState.var0 = 0u;
  *&self[1]._impl.variants.initial_chunk.keys[0].cs.mutableBuffers = 0u;
  *&self[1]._impl.variants.initial_chunk.keys[0].cs.blendState[2].var0 = 0u;
  *&self[1]._impl.variants.initial_chunk.keys[0].cs.blendState[6].var0 = 0u;
  *&self[1]._impl.variants.initial_chunk.keys[0].cs.remap.var0.var0 = 0u;
  *&self[1]._impl.variants.initial_chunk.keys[0].ds.encoded.__elems_[2].representation.var0 = 0u;
  *&self[1]._impl.variants.initial_chunk.keys[0].ds.encoded.__elems_[6].representation.var0 = 0u;
  *&self[1]._impl.variants.initial_chunk.keys[0].ts.maxTotalThreadsPerThreadgroup = 0u;
  *&self[1]._impl.variants.initial_chunk.keys[0].dynamic_libraries.dynamic_libraries_hash.__end_ = 0u;
  *&self[1]._impl.variants.initial_chunk.keys[0].visible_functions.visible_functions_hash.__begin_ = 0u;
  *&self[1]._impl.variants.initial_chunk.keys[0].visible_functions.visible_functions_hash.__cap_ = 0u;
  *&self[1]._impl.variants.initial_chunk.keys[1]._vptr$ProgramKey = 0u;
  *&self[1]._impl.variants.initial_chunk.keys[1].stream.__begin_ = 0u;
  *&self[1]._impl.variants.initial_chunk.keys[1].cs.fragmentState.var0 = self + 1104;
  *&self[1]._impl.variants.initial_chunk.keys[1].cs.colorMaskState.var0.var0 = 0;
  self[1]._impl.variants.initial_chunk.keys[1].stream.__cap_ = 0;
  *&self[1]._impl.variants.initial_chunk.keys[1].cs.blendState[2].var0 = 0;
  self[1]._impl.variants.initial_chunk.keys[1].cs.blendState[4].key = 0;
  *&self[1]._impl.variants.initial_chunk.keys[1].cs.mutableBuffers = 0u;
  *&self[1]._impl.variants.initial_chunk.keys[1].cs.remap.var0.var0 = 0;
  *&self[1]._impl.variants.initial_chunk.keys[1].cs.blendState[6].var0 = 0u;
  *&self[1]._impl.variants.initial_chunk.keys[1].ds.encoded.__elems_[0].representation.var0 = 0;
  return self;
}

@end