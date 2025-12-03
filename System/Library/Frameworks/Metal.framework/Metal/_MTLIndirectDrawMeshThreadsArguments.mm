@interface _MTLIndirectDrawMeshThreadsArguments
- (void)setThreadsPerGrid:(id *)grid;
- (void)setThreadsPerMeshThreadgroup:(id *)threadgroup;
- (void)setThreadsPerObjectThreadgroup:(id *)threadgroup;
@end

@implementation _MTLIndirectDrawMeshThreadsArguments

- (void)setThreadsPerGrid:(id *)grid
{
  v3 = *&grid->var0;
  self->_threadsPerGrid.depth = grid->var2;
  *&self->_threadsPerGrid.width = v3;
}

- (void)setThreadsPerObjectThreadgroup:(id *)threadgroup
{
  v3 = *&threadgroup->var0;
  self->_threadsPerObjectThreadgroup.depth = threadgroup->var2;
  *&self->_threadsPerObjectThreadgroup.width = v3;
}

- (void)setThreadsPerMeshThreadgroup:(id *)threadgroup
{
  v3 = *&threadgroup->var0;
  self->_threadsPerMeshThreadgroup.depth = threadgroup->var2;
  *&self->_threadsPerMeshThreadgroup.width = v3;
}

@end